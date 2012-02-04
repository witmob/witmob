//
//  ManagerDatabase.h
//  witmob_office
//
//  Created by marcus wang on 12-2-3.
//  Copyright (c) 2012年 www.witmob.com. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "OfficeConfig.h"

#import "/usr/include/sqlite3.h"

@interface ManagerDatabase : NSObject{
    sqlite3 *database;
}
+(ManagerDatabase *) defaultManager;

-(void)openDatabase;
@end
