@interface AXBuddySettingsSwitchItem
- (AXBuddySettingsSwitchItem)initWithName:(id)name delegate:(id)delegate;
- (id)representativeCellForIndexPath:(id)path inTableView:(id)view;
- (void)buddyBundleSwitchCell:(id)cell switchChangedTo:(BOOL)to;
- (void)registerCellClassWithTableView:(id)view;
- (void)setExtantSwitchesOn:(BOOL)on;
@end

@implementation AXBuddySettingsSwitchItem

- (AXBuddySettingsSwitchItem)initWithName:(id)name delegate:(id)delegate
{
  nameCopy = name;
  delegateCopy = delegate;
  v14.receiver = self;
  v14.super_class = AXBuddySettingsSwitchItem;
  v8 = [(AXBuddySettingsSwitchItem *)&v14 init];
  if (v8)
  {
    v9 = [nameCopy copy];
    name = v8->_name;
    v8->_name = v9;

    v11 = +[NSHashTable weakObjectsHashTable];
    extantCells = v8->_extantCells;
    v8->_extantCells = v11;

    objc_storeWeak(&v8->_delegate, delegateCopy);
  }

  return v8;
}

- (id)representativeCellForIndexPath:(id)path inTableView:(id)view
{
  viewCopy = view;
  pathCopy = path;
  reuseIdentifier = [(AXBuddySettingsSwitchItem *)self reuseIdentifier];
  v9 = [viewCopy dequeueReusableCellWithIdentifier:reuseIdentifier forIndexPath:pathCopy];

  name = self->_name;
  textLabel = [v9 textLabel];
  [textLabel setText:name];

  [v9 setDelegate:self];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [v9 setSwitchValue:{objc_msgSend(WeakRetained, "currentSwitchValueForItem:", self)}];

  [(NSHashTable *)self->_extantCells addObject:v9];

  return v9;
}

- (void)registerCellClassWithTableView:(id)view
{
  viewCopy = view;
  cellClass = [(AXBuddySettingsSwitchItem *)self cellClass];
  reuseIdentifier = [(AXBuddySettingsSwitchItem *)self reuseIdentifier];
  [viewCopy registerClass:cellClass forCellReuseIdentifier:reuseIdentifier];
}

- (void)buddyBundleSwitchCell:(id)cell switchChangedTo:(BOOL)to
{
  toCopy = to;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained switchItem:self switchChangedTo:toCopy];
}

- (void)setExtantSwitchesOn:(BOOL)on
{
  onCopy = on;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = self->_extantCells;
  v5 = [(NSHashTable *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v8) setSwitchValue:{onCopy, v9}];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [(NSHashTable *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

@end