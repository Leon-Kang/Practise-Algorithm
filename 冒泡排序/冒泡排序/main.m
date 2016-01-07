//
//  main.m
//  冒泡排序
//
//  Created by 康梁 on 16/1/7.
//  Copyright © 2016年 kl. All rights reserved.
//

#import <Foundation/Foundation.h>

void swap(int *a,int *b)
{
    int temp;
    temp = *a;
    *a = *b;
    *b = temp;
}


void bubbleSort (int a[], int n) {
    int i, j;
    for (i = 0; i < n; i++) {
        for (j = 1; j < n - 1; j++) {
            if (a[j - 1] > a[j]) {
                swap(&a[j - 1],&a[j]);
            }
        }
    }
    
}

void bubbleSort2 (int a[], int n) {
    int j, k;
    bool flag = true;
    k = n;
    
    while (flag) {
        flag = false;
        for (j = 1; j < k; j++) {
            if (a[j - 1] > a[j]) {
                swap(&a[j - 1], &a[j]);
                flag = true;
            }
        }
    }

}

void bubbleSort3 (int a[], int n) {
    int j, k;
    int flag;
    
    flag = n;
    while (flag > 0) {
        k = flag;
        flag = 0;
        for (j = 1; j < n; j++) {
            if (a[j - 1] > a[j]) {
                swap(&a[j - 1], &a[j]);
                flag = j;
            }
        }
    }
}

int main(int argc, const char * argv[]) {
    
    int a[] = {4, 6, 1, 2, 3, 4, 7, 8, 8};
    int b[] = {9, 2, 44, 11, 33, 11, 33, 66, 11};
    int c[] = {9, 2, 44, 11, 33, 11, 33, 66, 11};
    bubbleSort(a, 9);
    bubbleSort2(b, 9);
    bubbleSort3(c, 9);
    
    
    return 0;
}
