@interface EntryMapEntriesViewController
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)appearing;
@end

@implementation EntryMapEntriesViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1004CE198();
}

- (void)viewIsAppearing:(BOOL)appearing
{
  selfCopy = self;
  sub_1004CE410(appearing, v4);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_1004CE4FC(disappear, v4);
}

@end