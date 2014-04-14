#include <stdio.h>
#include <unistd.h>

int main(int argc, char **argv){
	if(argc != 2){
		printf("Usages: ./genre_parse [filename]\n");
		return -1;
	}
	FILE *genre;
	if(!(genre = fopen(*(argv+1),"r"))){
		printf("Can't open file\n");
		return -1;
	}
	
	FILE *out;
	if(!(out = fopen("result.txt", "w"))){
		printf("Can't open file\n");
		return -1;
	}
	fprintf(out, "('");
	char c;
	while((c=fgetc(genre))!= EOF){
		switch(c){
			case ',':
				fprintf(out, "'),('");
				c = fgetc(genre);
				if(c == ' '){ break; }
				else{ fprintf(out, "%c", c); }
				break;
			default:
				fprintf(out, "%c", c);
		}
	}
	fprintf(out, "')");
	fclose(genre);
	fclose(out);
}
