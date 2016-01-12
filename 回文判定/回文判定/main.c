//
//  main.c
//  回文判定
//
//  Created by 康梁 on 15/7/23.
//  Copyright (c) 2015年 kl. All rights reserved.
//

#include <stdio.h>
#include <string.h>
#include <stdlib.h>
int isHuiWen (char *str);//声明
int main(int argc, const char * argv[]) {
    char word = 0;

    scanf("%s",&word);
    
    printf("%d",isHuiWen(&word));
    return 0;
}

int isHuiWen (char *str){
    char *left = str;//指向字符串开头
    char *right = str + strlen(str) - 1;//指向字符串结尾，原理：利用stelen计算出指向的字符串的长度，然后开头加上长度减去1便是结尾的长度（不算‘\0’的长度）。
    while (left < right) {//持续对比
        if (*left++ != *right--) {//如果有一个不一样，退出
            return 0;
        }
    }
    return 1;
}