@interface IMUnavailabilityIndicatorChatItem
- (id)_initWithHandle:(id)handle displayNotifyAnywayButton:(BOOL)button;
- (void)_notifyDelegatesOfStateChange;
- (void)setDisplayNotifyAnywayButton:(BOOL)button;
@end

@implementation IMUnavailabilityIndicatorChatItem

- (id)_initWithHandle:(id)handle displayNotifyAnywayButton:(BOOL)button
{
  handleCopy = handle;
  v15.receiver = self;
  v15.super_class = IMUnavailabilityIndicatorChatItem;
  v8 = [(IMChatItem *)&v15 _initWithItem:0];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(v8 + 8, handle);
    *(v9 + 56) = button;
    v10 = [v9[8] ID];
    v11 = sub_1A83AC604();

    [v9 _setGUID:v11];
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v13 = v9[9];
    v9[9] = weakObjectsHashTable;
  }

  return v9;
}

- (void)setDisplayNotifyAnywayButton:(BOOL)button
{
  if (self->_displayNotifyAnywayButton != button)
  {
    self->_displayNotifyAnywayButton = button;
    MEMORY[0x1EEE66B58](self, sel__notifyDelegatesOfStateChange);
  }
}

- (void)_notifyDelegatesOfStateChange
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = self->_unavailabilityIndicatorChatItemDelegates;
  v4 = [(NSHashTable *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7++) displayNotifyAnywayButtonStateChanged:{self, v8}];
      }

      while (v5 != v7);
      v5 = [(NSHashTable *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

@end