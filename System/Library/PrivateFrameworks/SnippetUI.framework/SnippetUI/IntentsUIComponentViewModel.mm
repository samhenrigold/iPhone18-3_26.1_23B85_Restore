@interface IntentsUIComponentViewModel
- (id)maximumSizesBySystemVersionForRemoteViewController:(id)controller;
@end

@implementation IntentsUIComponentViewModel

- (id)maximumSizesBySystemVersionForRemoteViewController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  sub_26A72A3EC();

  sub_26A4EC5B0(0, &qword_28157D7D0, 0x277CCABB0);
  sub_26A4EC5B0(0, &qword_2803B60A8, 0x277CCAE60);
  sub_26A72A820(&qword_2803B60B0, &qword_28157D7D0, 0x277CCABB0);
  v6 = sub_26A851688();

  return v6;
}

@end