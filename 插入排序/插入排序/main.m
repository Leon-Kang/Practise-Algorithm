//
//  main.m
//  插入排序
//
//  Created by 康梁 on 16/1/7.
//  Copyright © 2016年 kl. All rights reserved.
//


void insertSort (int a[], int n)
{
    int i, j, k;
    for (i = 1; i < n; i++)
    {
        //为a[i]在前面的a[0...i-1]有序区间中找一个合适的位置
        for (j = i - 1; j >= 0; j--)
        {
            if (a[j] < a[i])
            {
                break;
            }
            //如找到了一个合适的位置
            if (j != i - 1)
            {
                //将比a[i]大的数据向后移
                int temp = a[i];
                
                for (k = i - 1; k > j; k--)
                {
                    a[k + 1] = a[k];
                }
                //将a[i]放到正确位置上
                a[k + 1] = temp;
            }
        }
    }
}

void insertSort2 (int a[], int n) {
    int i, j;
    for (i = 1; i < n; i++)
    {
        if (a[i] < a[i - 1])
        {
            int temp = a[i];
            for (j = i - 1; j >= 0 && a[j] > temp; j--) {
                a[j + 1] = a[j];
            }
            a[j + 1] = temp;
        }
    }
}


int main () {
    
    int a[] = {1, 4, 8, 2, 99, 55, 64, 2, 0 };
    int b[] = {1213, 123, 34, 12312, 2, 233, 444, 55345, 55};
    insertSort(a, 9);
    insertSort2(b, 9);
    
    return 0;
}
