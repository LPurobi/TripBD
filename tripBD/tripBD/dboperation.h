//
//  dboperation.h
//  tripBD
//
//  Created by Purobi Rahman Lira on 20/11/18.
//  Copyright © 2018 MCC. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AppDelegate.h"
#import <sqlite3.h>

NS_ASSUME_NONNULL_BEGIN

@interface dboperation : NSObject
{
    AppDelegate *appdel;
    sqlite3 *database;
}
@property (strong,nonatomic)NSMutableArray *arrdata;
@property(strong,nonatomic)NSString *strmain;

-(NSMutableArray *)getalluser:(NSString *)query;

@end

NS_ASSUME_NONNULL_END
