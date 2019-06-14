//
//  main.m
//  myTest
//
//  Created by Smile on 2018/12/19.
//

#import <Foundation/Foundation.h>
#import <objc/runtime.h>
#import <malloc/malloc.h>
#import "test_c.hpp"



int sum(int num, ...)
{
    va_list valist;
    
    int sum = 0;
    
    va_start(valist, num);
    
    for (int i = 0; i < num; i ++) {
        
        sum += va_arg(valist, int);
    }
    
    va_end(valist);
    
    return sum;
    
    
    
}


void bubble_sort(int arr[],int len)
{
    int i, j, temp;
    for (i = 0; i < len -1; i ++) {
        for (j = 0; j < len - 1 -i; j ++) {
            if (arr[j] < arr[j + 1]) {
                temp = arr[j];
                arr[j] = arr[j + 1];
                arr[j+1] = temp;
            }
        }
    }
}


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        run();
        
        printf("\n");
        printf("\n");
        printf("\n");

        return 0;
//        NSObject *obj = [[NSObject alloc] init];
        //获得NSObject实例对象的成员变量所占用的大小 >> 8
//        NSLog(@"%zd", class_getInstanceSize([NSObject class]));
//
//        //获得obj指针所指向内存的大小 >> 16
//        //malloc_size(const void *ptr):Returns size of given ptr
//        NSLog(@"%zd", malloc_size((__bridge const void *)obj));
        
        
//        NSLog(@"%s",__TIME__);
//
//        while (1) {
//            printf("%s\n",__TIME__);
////            sleep(1);
//        }
        
//        char *des = (char *)malloc(5 * sizeof(char));
////        char *des = (char *)calloc(5, sizeof(char));
//
//        
////        NSLog(@"%p--%lu",des,sizeof(des));
//        
//        
//        if (des == NULL) {
//            printf("malloc failure");
//        } else {
//
//            strcpy(des, "hello world !,how are you ");
//            
////            printf("%s",des);
//            
//            printf("\n");
//            for (int i = 0; i < 2000; ++i) {
////                printf("%c", (char)*(des + i));
//            }
//            
//        }
//        
//        
//        free(des);
//
//        
//        
//        int arr[] = {14,36,2,7,1,29};
//        
//        bubble_sort(arr, sizeof(arr) / sizeof(*arr));
//        
//        int len = sizeof(arr) / sizeof(*arr);
//        
//        
//        for (int i = 0 ; i < len; i ++) {
//            
//            printf("%i--",arr[i]);
//        }
//        

        
//        NSLog(@"%i",func());
        
        
        
    }
    return 0;
}
