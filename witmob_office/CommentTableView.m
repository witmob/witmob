//
//  CommentTableView.m
//  witmob_office
//
//  Created by marcus wang on 12-2-4.
//  Copyright (c) 2012年 www.witmob.com. All rights reserved.
//

#import "CommentTableView.h"
#import "ActivityContentTableViewCell.h"
@implementation CommentTableView
#pragma tableView
-(UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
	static NSString *tableIdentifier = @"ActivityContentTableViewCell";
	ActivityContentTableViewCell *cell = (ActivityContentTableViewCell *)[tableView dequeueReusableCellWithIdentifier:tableIdentifier];
	if (cell == nil) {
        NSArray *array = [[NSBundle mainBundle] loadNibNamed:@"ActivityContentTableViewCell" owner:self options:nil];
        cell = [array objectAtIndex:0];
	}
    return cell;
	
}
//定义有多少行
-(NSInteger) tableView:(UITableView *)table numberOfRowsInSection:(NSInteger)section 
{
    return 2;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 62;
}

@end
