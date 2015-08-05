//
//  Book.h
//  myTest
//
//  Created by liyongqiang on 15/8/5.
//  Copyright (c) 2015年 liyongqiang. All rights reserved.
//

#import "RFJModel.h"

@interface Book : RFJModel
JProperty(NSString * name, copy, bookname);
JProperty(NSString * bookId, copy, bookid);

@end
