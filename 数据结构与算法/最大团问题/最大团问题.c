#include<stdio.h>
#include<time.h> 
#include<stdlib.h> 
#define MXN 4005 


struct pot{
	int num,id;
}p[MXN],t;
long long n,m;
int mt[MXN][MXN];
long long f1[MXN];
int i,j;
int sel[MXN],w[MXN],ans;

void search(int now,int las,int hjk){
	int i,j,k,random;
	if(las==n){
		if(now>ans) ans=now;
		return;
	}
	for( i=las+1;i<=n;i++){
		int flag=1;
		for(j=1;j<=now;j++){
			if(mt[p[i].id][w[j]]){
				flag=0;
				break;
			}
		}
		srand(time(NULL));
		
		for(k=0;k<=10;k++){
			random =rand()%10;
		}
		if(random>hjk){
			flag=0;
		}
		if(flag==0) continue;
		w[now+1]=p[i].id;
		sel[p[i].id]=1;
		search(now+1,i,hjk);
		if(ans) return;
		w[now+1]=0;
		sel[p[i].id]=0;
	}
	if(now>ans) ans=now;
}

int main(){
	freopen("a.in","r",stdin);
	scanf("p edge %ld %ld\n",&n,&m);
	for(i=0;i<m;i++){
		int x,y;
		scanf("e %d %d\n",&x,&y);
		if(mt[x][y]) continue;
		if(x==y) continue;
		mt[x][y]=1;
		mt[y][x]=1;
		f1[x]++;
		f1[y]++;
	}
	for(i=1;i<=n;i++){
		p[i].num=f1[i];
		p[i].id=i;
	}
	for(i=1;i<=n;i++){
		for(j=1;j<=n;j++){
			if(p[i].num < p[j].num){
				t=p[i];
				p[i]=p[j];
				p[j]=t;
			}
		}
	}
	long long pgd;
	for(i=0;i<=10000;i++){
		for(j=0;j<=n;j++){
			sel[j]=0;
			w[j]=0;
		}
		ans=0;
		pgd=0;
		for(i=0;i<=100;i++){
			search(0,i,9);
			if(ans>pgd){
				pgd=ans;
				printf("%ld\n",pgd);
			}
			search(0,i,8);
			if(ans>pgd){
				pgd=ans;
				printf("%ld\n",pgd);
			}
			search(0,i,7);
			if(ans>pgd){
				pgd=ans;
				printf("%ld\n",pgd);
			}
			search(0,i,6);
			if(ans>pgd){
				pgd=ans;
				printf("%ld\n",pgd);
			}
			search(0,i,5);
			if(ans>pgd){
				pgd=ans;
				printf("%ld\n",pgd);
			}
			search(0,i,4);
			if(ans>pgd){
				pgd=ans;
				printf("%ld\n",pgd);
			}
			search(0,i,3);
			if(ans>pgd){
				pgd=ans;
				printf("%ld\n",pgd);
			}
			search(0,i,2);
			if(ans>pgd){
				pgd=ans;
				printf("%ld\n",pgd);
			}
			search(0,i,1);
			if(ans>pgd){
				pgd=ans;
				printf("%ld\n",pgd);
			}
			search(0,i,0);
			if(ans>pgd){
				pgd=ans;
				printf("%ld\n",pgd);
			}
		}
	}
} 
