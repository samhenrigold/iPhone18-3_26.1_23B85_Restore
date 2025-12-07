@interface _DASGroupManagedObject
- (void)willSave;
@end

@implementation _DASGroupManagedObject

- (void)willSave
{
  activities = [(_DASGroupManagedObject *)self activities];
  v4 = objc_msgSend_count(activities);

  if (v4)
  {
    managedObjectContext = [(_DASGroupManagedObject *)self managedObjectContext];
    [managedObjectContext deleteObject:self];
  }
}

@end