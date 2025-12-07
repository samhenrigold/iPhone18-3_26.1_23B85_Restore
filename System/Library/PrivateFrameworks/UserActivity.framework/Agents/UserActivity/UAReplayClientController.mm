@interface UAReplayClientController
- (UAReplayClientController)initWithManager:(id)manager;
- (id)eligibleAdvertiseableItemsInOrder;
- (id)items;
- (id)statusString;
- (id)userActivityInfoForUUID:(id)d;
- (void)addItem:(id)item;
- (void)dealloc;
- (void)removeItem:(id)item;
@end

@implementation UAReplayClientController

- (UAReplayClientController)initWithManager:(id)manager
{
  v4.receiver = self;
  v4.super_class = UAReplayClientController;
  return [(UAClientController *)&v4 initWithManager:manager name:@"ReplayCreator"];
}

- (void)dealloc
{
  manager = [(UACornerActionManagerHandler *)self manager];
  [manager scheduleUpdatingAdvertisableItems:0.0];

  v4.receiver = self;
  v4.super_class = UAReplayClientController;
  [(UAReplayClientController *)&v4 dealloc];
}

- (void)addItem:(id)item
{
  [(UAReplayClientController *)self setItem:item];
  manager = [(UACornerActionManagerHandler *)self manager];
  [manager scheduleUpdatingAdvertisableItems];
}

- (void)removeItem:(id)item
{
  itemCopy = item;
  item = [(UAReplayClientController *)self item];
  if (item != itemCopy)
  {
    uuid = [itemCopy uuid];
    item2 = [(UAReplayClientController *)self item];
    uuid2 = [item2 uuid];
    v8 = [uuid isEqual:uuid2];

    if (v8)
    {
      goto LABEL_5;
    }

    [(UAReplayClientController *)self setItem:itemCopy];
    item = [(UACornerActionManagerHandler *)self manager];
    [item scheduleUpdatingAdvertisableItems:0.0];
  }

LABEL_5:

  _objc_release_x2();
}

- (id)items
{
  item = [(UAReplayClientController *)self item];
  if (item)
  {
    item2 = [(UAReplayClientController *)self item];
    v5 = [NSSet setWithObject:item2];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)eligibleAdvertiseableItemsInOrder
{
  item = [(UAReplayClientController *)self item];
  if (item)
  {
    item2 = [(UAReplayClientController *)self item];
    v5 = [NSArray arrayWithObject:item2];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)userActivityInfoForUUID:(id)d
{
  dCopy = d;
  if (dCopy && (-[UAReplayClientController item](self, "item"), (v5 = objc_claimAutoreleasedReturnValue()) != 0) && (v6 = v5, -[UAReplayClientController item](self, "item"), v7 = objc_claimAutoreleasedReturnValue(), [v7 uuid], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(dCopy, "isEqual:", v8), v8, v7, v6, v9))
  {
    item = [(UAReplayClientController *)self item];
  }

  else
  {
    item = 0;
  }

  return item;
}

- (id)statusString
{
  item = [(UAReplayClientController *)self item];
  v3 = [NSString stringWithFormat:@"ReplayController: ITEM=%@\n", item];

  return v3;
}

@end