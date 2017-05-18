#define _CRT_SECURE_NO_WARNINGS
#include <stdio.h>
#include <stdlib.h>
#define N 5

extern "C" void get_rank(int *,int *,int);//score,memory to store rank,size of stu
extern "C" short  get_average(int *,int size); //Returning Average

struct student{
	char name[15];
	int score[3];
	int aver;
	int rank;
}stu[N];

void input_info()
{
	for(int i=0;i<N;i++){
		printf("Info of student %d:\n",i+1);
		printf("Please input name:");
		scanf("%s",stu[i].name);
		printf("Please input grade of Chinese Math and English\n");
		scanf("%d%d%d",stu[i].score,stu[i].score+1,stu[i].score+2);
	}
}

void output_info()
{
	printf("Grade:\n");
	printf("name      \tChinese\tMath\tEnglish\tAverage\tRank\n");
	for(int i=0;i<N;i++){
		printf("%-10s\t",stu[i].name);
		printf("%d\t%d\t%d\t",stu[i].score[0],stu[i].score[1],stu[i].score[2]);
		printf("%d\t%d\n",stu[i].aver,stu[i].rank);
	}
}

void cal_average()
{
	for(int i=0;i<N;i++){
		stu[i].aver = get_average(stu[i].score,3);
	}
}

void cal_rank()
{
	int *s = (int *)malloc(N*sizeof(int));
	int *r = (int *)malloc(N*sizeof(int));
	//printf("%x  ", (unsigned long)s);
	//printf("%x", (unsigned long)r);
	for(int i=0;i<N;i++){
		s[i] = stu[i].aver;
	}
	get_rank(s,r,N);
	for(int i=0;i<N;i++){
		stu[i].rank = r[i];
	}
}

int main()
{
	//printf("%d",sizeof(short));
	while(1){
		int choice;
		printf("Select from following:\n");
		printf("1. Input name and grades\n");
		printf("2. Calculate average grade\n");
		printf("3. Calculate rank\n");
		printf("4. Output report\n");
		printf("5. Exit\n");
		scanf("%d",&choice);
		switch(choice){
			case 1:
				input_info();
				break;
			case 2:
				cal_average();
				break;
			case 3:
				cal_rank();
				break;
			case 4:
				output_info();
				break;
			case 5:
				return 0;
			default:
				printf("Input not valid!\n");
				continue;
				break;
		}
		
	}
}