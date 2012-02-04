//
//  ManagerDatabase.m
//  witmob_office
//  管理数据库
//  Created by marcus wang on 12-2-3.
//  Copyright (c) 2012年 www.witmob.com. All rights reserved.
//

#import "ManagerDatabase.h"

#import "SQL.h"

@implementation ManagerDatabase

static ManagerDatabase *defaultManager; 
+ (ManagerDatabase *) defaultManager{
	if (!defaultManager) {
		defaultManager=[[ManagerDatabase alloc] init];
	}
	return defaultManager;
}
#pragma mark 打开数据库和关闭数据库
-(void)openDatabase
{
    //打开数据库
    NSArray *paths=NSSearchPathForDirectoriesInDomains(NSDocumentDirectory,NSUserDomainMask,YES);
    NSString *path=[paths objectAtIndex:0];
    NSString *filePath=[path stringByAppendingPathComponent:kQatDatabases];
#if DEBUG_DEBUG || DEBUG_INFO
    NSLog(@"------------------ database path=>%@",filePath);
#endif
    if (sqlite3_open([filePath UTF8String], &database)==SQLITE_OK) {
        sqlite3_exec(database, kCreateQatAlbumTable, NULL, NULL, NULL);
#if DEBUG_DEBUG || DEBUG_INFO
        NSLog(@"database db opened.");
#endif
    }
}
-(void) close
{
    sqlite3_close(database);
#if DEBUG_DEBUG || DEBUG_INFO
	NSLog(@"database db closed.");
#endif
}

@end