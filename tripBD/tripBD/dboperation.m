//
//  dboperation.m
//  tripBD
//
//  Created by Purobi Rahman Lira on 20/11/18.
//  Copyright © 2018 MCC. All rights reserved.
//

#import "dboperation.h"

@implementation dboperation
@synthesize arrdata,strmain;

-(id)init
{
    appdel=(AppDelegate *)[[UIApplication sharedApplication]delegate]; //Appdelegate Method used
    strmain=appdel.strpath;
    return self;
}

-(NSMutableArray *)getalluser:(NSString *)query
{
    arrdata =[[NSMutableArray alloc]init];
    if (sqlite3_open([strmain UTF8String], &database)==SQLITE_OK)
    {
        sqlite3_stmt *connection;
        if (sqlite3_prepare_v2(database, [query UTF8String], -1, &connection, nil)==SQLITE_OK)
        {
            while (sqlite3_step(connection)==SQLITE_ROW) {
                NSMutableDictionary *dic =[[NSMutableDictionary alloc]init];
                
                NSString *str12=[[NSString alloc]initWithUTF8String:(char *)sqlite3_column_text(connection, 0)]; //image in first column
                NSString *str13=[[NSString alloc]initWithUTF8String:(char *)sqlite3_column_text(connection, 1)]; //title in second column
                NSString *str14=[[NSString alloc]initWithUTF8String:(char *)sqlite3_column_text(connection, 2)]; //subtitle in third column
                [dic setObject:str12 forKey:@"image"];
                [dic setObject:str13 forKey:@"Title"];
                [dic setObject:str14 forKey:@"Subtitle"];
                [arrdata addObject:dic];
                
            }
        }
        sqlite3_finalize(connection);
    }
    sqlite3_close(database);
    return arrdata;
}

@end
