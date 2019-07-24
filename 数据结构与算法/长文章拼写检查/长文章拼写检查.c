#include<stdio.h>
#include<stdlib.h>
struct lianbiao{
	long long n;
	struct lianbiao *right;
};
typedef struct lianbiao LB;
typedef struct lianbiao *LBz;
struct jiedian1{
	int ye;
	struct jiedian1 *next[30];
};
typedef struct jiedian1 JD1;
typedef struct jiedian1 *JDz1;


struct jiedian2{
	int ye;
	LBz lb;
	struct jiedian2 *next[30];
};
typedef struct jiedian2 JD2;
typedef struct jiedian2 *JDz2;
char x[100];
long long j,cc,zou;
char y[100];
void bianli1(char ch,JDz1 p){//建造第一类树 
	int i=ch-'a';
	JDz1 q;
	if(p->next[i]==NULL){
		q=(JDz1)malloc(sizeof(JD1));
		p->next[i]=q;
		for(i=0;i<=25;i++){
			q->next[i]=NULL;
		}
	}
}
int bianli2(int i,JDz1 p){//在字典树中查找单词 
	int ii=x[i]-'a';
	int ff;
	if(ii<0 || ii>25)//////新加的
	{
		return 0;
	}
	if(p->next[ii]==NULL){
		return 0;
	}
	if((x[i+1]==' '||x[i+1]=='\n')&&p->next[ii]!=NULL&&p->next[ii]->ye==1){
		return 1;
	}
	else{
		i+=1;
		ff=bianli2(i,p->next[ii]);
		if(ff==1){
			return 1;
		}
		else{
			return 0;
		}
	}
}
int bianli3(int ii,JDz2 p){//在错树中查找单词   
	int i=x[ii]-'a';
	int ff;
	LBz xx,yy;
	if(i<0 || i>25)//////新加的
	{
		return 0;
	}
	if(p->next[i]==NULL){
		return 0;
	}
	if((x[ii+1]==' '||x[ii+1]=='\n')&&p->next[i]->ye==1){
		yy=p->next[i]->lb;
		while(p->next[i]->lb->right!=NULL){
			p->next[i]->lb=p->next[i]->lb->right;
		}
		xx=(LBz)malloc(sizeof(LB));
		p->next[i]->lb->right=xx;
		xx->right=NULL;
		xx->n=cc; 
		p->next[i]->lb=yy;
		return 1;
	}
	else{
		ii+=1;
		ff=bianli3(ii,p->next[i]);
		if(ff==1){
			return 1;
		}
		else{
			return 0;
		}
	}
}
void bianli5(char ch,JDz2 p){//造错树 
	int i=ch-'a';
	JDz2 q;
	LBz hehe;
	if(i<0 || i>25)//////新加的
	{
		return;
	}
	if(p->next[i]==NULL){
		q=(JDz2)malloc(sizeof(JD2));
		p->next[i]=q;
		for(i=0;i<=25;i++){
			q->next[i]=NULL;
		}
		hehe=(LBz)malloc(sizeof(LB));
		q->lb=hehe;
		q->lb->n=-1;
		q->lb->right=NULL;
	}
}
FILE *in1,*in2,*out;
int main(){
	void bianli4(JDz2 p);
	in1=fopen("article.txt","r");
	in2=fopen("dictionary.txt","r");
	out=fopen("misspelling.txt","w");
	char ch;
	long long i=0;
	j=-1;
	JDz1 p;
	long long k;
	p=(JDz1)malloc(sizeof(JD1));
	for(k=0;k<=25;k++){
		p->next[k]=NULL;
	}
	JDz1 pp=p;
	p->ye=0;
	while((ch=fgetc(in2))!=EOF){
		if(ch=='\n'){
			p->ye=1;
			p=pp;
		}
		else if(ch>='a'&&ch<='z'){//不知道是不是只有小写字母
			bianli1(ch,p);
			p=p->next[ch-'a'];
		}
	}//构造字典树 
	p=pp;
	long long l,m,n,o;
	JDz2 r;
	r=(JDz2)malloc(sizeof(JD2));
	for(o=0;o<=25;o++){
		r->next[o]=NULL;
	}
	LBz lbz;
	lbz=(LBz)malloc(sizeof(LB));
	r->lb=lbz;
	r->ye=0;
	r->lb->n=-1;
	r->lb->right=NULL;
	JDz2 rr=r;
	int ha=1;
	i=-1;	
	while(ha==1){
		i=-1;
		while((ch=fgetc(in1))!=EOF){
			if((ch<'A'||ch>'Z'&&ch<'a'||ch>'z')&&ch!='\n'&&ch!=' '){
				ch=' ';
			}
			if(ch=='\n'||ch==' '){
				x[++i]=' ';
				j+=1;
				break;
			}
			if(ch>='A'&&ch<='Z'){
				ch+=32;
			}
			j+=1;
			x[++i]=ch;
		}
		if(x[0]==' '&&ch==EOF){
			break;
		}
		if(x[0]==' '){
			continue;
		}
		if(x[i]!=' '&&i!=0){
			x[++i]=' ';
			j+=1; 
		}
		j=j-i;//i为单词长度 
		cc=j;
		l=j;
		k=bianli2(0,pp);
		if(k==0){
			n=bianli3(0,rr);
			if(n==0){//如果不在错树里面 
				JDz2 q;
				for(m=0;x[m+1]!=' '&&x[m+1]!='\n';m++){
					bianli5(x[m],r);
					r=r->next[x[m]-'a'];
				}		
				o=x[m]-'a';
				if(r->next[o]!=NULL){
					r->next[o]->ye=1;
					r->next[o]->lb->n=cc;
					r->next[o]->lb->right=NULL;
				}
				else{
					q=(JDz2)malloc(sizeof(JD2));
					r->next[o]=q;
					q->ye=1;
					for(o=0;o<=25;o++){
						q->next[o]=NULL;
					}
					lbz=(LBz)malloc(sizeof(LB));
					lbz->n=cc;
					lbz->right=NULL;
					q->lb=lbz;
				}
			}
			r=rr;
		}
		j=j+i;
		i=-1;
		r=rr;
		if(ch==EOF){
			break;
		}	
	}
	zou=-1;
	bianli4(rr);
}
void bianli4(JDz2 p){
	long long i;
	if(p!=NULL){
		if(p->ye==1){
			for(i=0;i<=zou;i++){
				fprintf(out,"%c",y[i]);
			}
			while(p->lb!=NULL){
				fprintf(out," %lld",p->lb->n);
				p->lb=p->lb->right;
			}
			fprintf(out,"\n");
		}
		for(i=0;i<=25;i++){
			if(p->next[i]!=NULL){
				y[++zou]='a'+i;
				bianli4(p->next[i]);
				zou--;
			}
		}
	}
}
