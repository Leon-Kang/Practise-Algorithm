//
//  main.c
//  TEST-C
//
//  Created by 康梁 on 16/1/17.
//  Copyright © 2016年 LeonKang. All rights reserved.
//

#include <stdio.h>
#include <math.h>
#include <stdlib.h>

enum test {
    kl_start,
    kl1,
    kl2,
    kl_end,
};

int main(int argc, const char * argv[]) {
    
    for (int i = kl_start; i <= kl_end; i++) {
        printf("%d \n", i);
    }
    
    return 0;
}
