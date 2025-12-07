@interface SettingsServiceScene.RemoteObject
- (void)updateAvailabilityWithAvailable:(BOOL)available;
- (void)updateSidebarWithItems:(id)items;
@end

@implementation SettingsServiceScene.RemoteObject

- (void)updateAvailabilityWithAvailable:(BOOL)available
{
  availableCopy = available;

  v4 = sub_21CE282BC();
  if (v4)
  {
    [v4 updateAvailabilityWithAvailable_];
    swift_unknownObjectRelease();
  }
}

- (void)updateSidebarWithItems:(id)items
{
  itemsCopy = items;

  v4 = sub_21CE282BC();
  if (v4)
  {
    [v4 updateSidebarWithItems_];

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

@end