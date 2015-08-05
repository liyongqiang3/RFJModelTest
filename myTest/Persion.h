//
//  Persion.h
//  myTest
//
//  Created by liyongqiang on 15/8/5.
//  Copyright (c) 2015年 liyongqiang. All rights reserved.
//

#import "RFJModel.h"
#import "Book.h"
@protocol Book
@end

@interface Persion : RFJModel
JProperty(NSInteger sex  , assign, sex);
JProperty(NSString  * name, copy,name );
JProperty(Book * myBook, strong, book );
JProperty(NSArray <Book> *books, strong, books);
@end

