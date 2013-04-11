//
//  mainSettingViewController.m
//  cellopark
//
//  Created by Noa and Asaf on 11/4/12.
//
//

#import "mainSettingViewController.h"

@interface mainSettingViewController ()

@end

@implementation mainSettingViewController
@synthesize tableData;


- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    

    if (!self.tableData)
    {
        self.tableData = [NSArray arrayWithContentsOfFile: [[NSBundle mainBundle] pathForResource: @"settingTable" ofType: @"plist"]];
    }
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




#pragma mark - Table view data source


- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    return [[self.tableData objectAtIndex:section] objectForKey: @"Title"];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return [self.tableData count];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return [[[self.tableData objectAtIndex:section] objectForKey: @"Rows" ] count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    
    settingCell *cell = (settingCell *)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[settingCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    
    cell.lblCellTitle.text = [[[[tableData objectAtIndex: indexPath.section] objectForKey: @"Rows"] objectAtIndex: indexPath.row] objectForKey: @"Title"];
    cell.txtCell.text = [[[[tableData objectAtIndex: indexPath.section] objectForKey: @"Rows"] objectAtIndex: indexPath.row] objectForKey: @"value"];
    [cell.txtCell setTag:indexPath.row];
    
    
    
//    cell.textLabel.text = [[[[tableData objectAtIndex: indexPath.section] objectForKey: @"Rows"] objectAtIndex: indexPath.row] objectForKey: @"Title"];
    
    
//    NSString *imageName = [[[[tableData objectAtIndex: indexPath.section] objectForKey: @"Rows"] objectAtIndex: indexPath.row] objectForKey: @"imageName"];
//    
//    cell.imageView.image = [UIImage imageNamed:imageName];
//    [cell.imageView setAlpha:0.7];
    
//    [cell setAccessoryType:UITableViewCellAccessoryDisclosureIndicator];
    
    return cell;

}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{

    [tableView deselectRowAtIndexPath:indexPath animated:YES];

}

- (void)dealloc {
//    [super dealloc];
}
- (void)viewDidUnload {
    [super viewDidUnload];
}


- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return NO;
}


- (void)textFieldDidEndEditing:(UITextField *)textField{
    AppDelegate *app = [[UIApplication sharedApplication] delegate];

    NSLog(@"textField %@", textField.text);
    
    switch (textField.tag) {
        case 0:{
            [app.tapticaAdManager setTapticaAdUserGender:[textField.text intValue]];
        }
            break;
        case 1:{
            [app.tapticaAdManager setTapticaAdUserBirthdate:textField.text];
        }
            break;
        case 2:{
            [app.tapticaAdManager setTapticaAdUserAreaCode:[textField.text intValue]];
        }
            break;
        case 3:{
//            [app.tapticaAdManager setTapticaAdMartialStatus:[textField.text intValue]];
        }
            break;
        case 4:{
            [app.tapticaAdManager setTapticaAdUserKeywords:textField.text];
        }
            break;
        case 5:{
            [app.tapticaAdManager setTapticaAdUserInterests:textField.text];
        }
            break;
        case 6:{
            [app.tapticaAdManager setTapticaAdUserIncome:[textField.text intValue]];
        }
            break;
        case 7:{
            [app.tapticaAdManager setTapticaAdUserEthnicity:textField.text];
        }
            break;
        case 8:{
            [app.tapticaAdManager setTapticaAdUserEducation:[textField.text intValue]];
        }
            break;
        case 9:{
//            settingCell *cell1 = (settingCell *)[self.tableView cellForRowAtIndexPath:[NSIndexPath indexPathForRow:i inSection:0]];
//            NSString *value1 = cell1.txtCell.text;
//            settingCell *cell2 = (settingCell *)[self.tableView cellForRowAtIndexPath:[NSIndexPath indexPathForRow:i inSection:0]];
//            NSString *value2 = cell2.txtCell.text;
//            
//            [app.tapticaAdManager setTapticaAdGeoLocation:[value1 doubleValue] longitude:[value2 doubleValue]];
        }
            
            break;
        case 10:
            //do nothing
            break;
            
        default:
            break;
    }

    
}

@end
