@interface SRResearchDaysViewController
- (SRResearchDaysViewController)init;
- (id)dateForRow:(int64_t)row;
- (id)datesFrom:(double)from to:(double)to;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)dealloc;
- (void)viewDidLoad;
@end

@implementation SRResearchDaysViewController

- (SRResearchDaysViewController)init
{
  v3.receiver = self;
  v3.super_class = SRResearchDaysViewController;
  return [(SRResearchDaysViewController *)&v3 initWithStyle:2];
}

- (void)viewDidLoad
{
  v19 = *MEMORY[0x277D85DE8];
  v17.receiver = self;
  v17.super_class = SRResearchDaysViewController;
  [(SRResearchDaysViewController *)&v17 viewDidLoad];
  -[SRResearchDaysViewController setDeletedDays:](self, "setDeletedDays:", [MEMORY[0x277CBEB58] set]);
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  tombstones = [(SRResearchDaysViewController *)self tombstones];
  v4 = [(NSArray *)tombstones countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(tombstones);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        if (![v8 reason])
        {
          deletedDays = [(SRResearchDaysViewController *)self deletedDays];
          [v8 startTime];
          v11 = v10;
          [v8 endTime];
          [(NSMutableSet *)deletedDays addObjectsFromArray:[(SRResearchDaysViewController *)self datesFrom:v11 to:v12]];
        }
      }

      v5 = [(NSArray *)tombstones countByEnumeratingWithState:&v13 objects:v18 count:16];
    }

    while (v5);
  }
}

- (void)dealloc
{
  [(SRResearchDaysViewController *)self setTombstones:0];
  [(SRResearchDaysViewController *)self setDeletedDays:0];
  v3.receiver = self;
  v3.super_class = SRResearchDaysViewController;
  [(SRResearchDaysViewController *)&v3 dealloc];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  tableView = [-[SRResearchDaysViewController tableView](self tableView];
  if (!tableView)
  {
    tableView = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:1 reuseIdentifier:@"SRDataDayRowReuseIdentifier"];
    [tableView setSelectionStyle:0];
  }

  v7 = -[SRResearchDaysViewController dateForRow:](self, "dateForRow:", [path row]);
  [objc_msgSend(tableView "textLabel")];
  if ([(NSMutableSet *)[(SRResearchDaysViewController *)self deletedDays] containsObject:v7])
  {
    v8 = 3;
  }

  else
  {
    v8 = 4;
  }

  [objc_msgSend(tableView "detailTextLabel")];
  return tableView;
}

- (id)dateForRow:(int64_t)row
{
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v6 = MEMORY[0x277CBEAA8];
  [(SRResearchDaysViewController *)self end];
  v7 = [currentCalendar startOfDayForDate:{objc_msgSend(v6, "dateWithSRAbsoluteTime:")}];
  v8 = objc_opt_new();
  [v8 setDay:-row];

  return [currentCalendar dateByAddingComponents:v8 toDate:v7 options:0];
}

- (id)datesFrom:(double)from to:(double)to
{
  array = [MEMORY[0x277CBEB18] array];
  if (from <= to)
  {
    currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
    v9 = [currentCalendar startOfDayForDate:{objc_msgSend(MEMORY[0x277CBEAA8], "dateWithSRAbsoluteTime:", from)}];
    v10 = [currentCalendar startOfDayForDate:{objc_msgSend(MEMORY[0x277CBEAA8], "dateWithSRAbsoluteTime:", to)}];
    v11 = objc_opt_new();
    [v11 setDay:-1];
    for (i = v10; [i compare:v9] != -1; v10 = i)
    {
      [array addObject:v10];
      i = [currentCalendar dateByAddingComponents:v11 toDate:v10 options:0];
    }
  }

  return array;
}

@end