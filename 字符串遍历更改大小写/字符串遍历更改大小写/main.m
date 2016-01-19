//
//  main.m
//  字符串遍历更改大小写
//
//  Created by 康梁 on 16/1/16.
//  Copyright © 2016年 LeonKang. All rights reserved.
//

#import <Foundation/Foundation.h>

void strChange(char s[]) {
    
    for (int i = 0; s[i] != '\0'; i++) {
        if (s[0] > 'a' && s[0] < 'z') {
            s[0] -= ('a' - 'A');
        }
        if (s[i] == '_') {
            s[i + 1] -= ('a' - 'A');
            for (int j = i; s[j] != '\0'; j++) {
                s[j] = s[j + 1];
            }
        }
        
    }
    
}


int main(int argc, const char * argv[]) {
    
    char str[] = "the_net_circle";
    strChange(str);
    NSLog(@"%s", str);
    
    return 0;
}
