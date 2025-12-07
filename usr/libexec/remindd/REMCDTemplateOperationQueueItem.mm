@interface REMCDTemplateOperationQueueItem
- (NSString)description;
- (REMCDTemplateOperationQueueItem)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context;
@end

@implementation REMCDTemplateOperationQueueItem

- (NSString)description
{
  selfCopy = self;
  sub_100237ED4();
  v4 = v3;

  v5 = String._bridgeToObjectiveC()();
  v4, v6, v7, v8, v9, v10, v11, v12;

  return v5;
}

- (REMCDTemplateOperationQueueItem)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  return [(REMCDTemplateOperationQueueItem *)&v7 initWithEntity:entity insertIntoManagedObjectContext:context];
}

@end