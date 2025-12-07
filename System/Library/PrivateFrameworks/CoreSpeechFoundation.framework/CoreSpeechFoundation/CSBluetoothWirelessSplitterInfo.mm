@interface CSBluetoothWirelessSplitterInfo
- (BOOL)_hasDeviceTemporaryPairedNotInContacts;
- (BOOL)shouldDisableSpeakerVerificationInSplitterMode;
- (CSBluetoothWirelessSplitterInfo)init;
- (id)description;
- (id)splitterDeviceList;
- (unint64_t)splitterState;
- (void)addDeviceIntoSplitterDeviceList:(id)list;
@end

@implementation CSBluetoothWirelessSplitterInfo

- (BOOL)_hasDeviceTemporaryPairedNotInContacts
{
  v13 = *MEMORY[0x1E69E9840];
  if (self->_splitterEnabled)
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v2 = self->_splitterDeviceList;
    v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v3)
    {
      v4 = *v9;
      while (2)
      {
        for (i = 0; i != v3; ++i)
        {
          if (*v9 != v4)
          {
            objc_enumerationMutation(v2);
          }

          v6 = *(*(&v8 + 1) + 8 * i);
          if ([v6 supportDoAP] & 1) == 0 && (objc_msgSend(v6, "isTemporaryPairedNotInContacts"))
          {
            LOBYTE(v3) = 1;
            goto LABEL_14;
          }
        }

        v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
        if (v3)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

- (BOOL)shouldDisableSpeakerVerificationInSplitterMode
{
  if (([(CSBluetoothWirelessSplitterInfo *)self splitterState]& 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    return ![(CSBluetoothWirelessSplitterInfo *)self _hasDeviceTemporaryPairedNotInContacts];
  }

  else
  {
    return 0;
  }
}

- (unint64_t)splitterState
{
  v14 = *MEMORY[0x1E69E9840];
  if (!self->_splitterEnabled)
  {
    return 1;
  }

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = self->_splitterDeviceList;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (!v3)
  {

    return 2;
  }

  v4 = v3;
  v5 = 0;
  v6 = *v10;
  do
  {
    for (i = 0; i != v4; ++i)
    {
      if (*v10 != v6)
      {
        objc_enumerationMutation(v2);
      }

      v5 += [*(*(&v9 + 1) + 8 * i) supportDoAP] & 1;
    }

    v4 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  }

  while (v4);

  if (v5 == 1)
  {
    result = 3;
  }

  else
  {
    result = 4;
  }

  if (!v5)
  {
    return 2;
  }

  return result;
}

- (void)addDeviceIntoSplitterDeviceList:(id)list
{
  if (list)
  {
    [(NSMutableArray *)self->_splitterDeviceList addObject:?];
  }
}

- (id)splitterDeviceList
{
  v2 = [(NSMutableArray *)self->_splitterDeviceList copy];

  return v2;
}

- (id)description
{
  v18 = *MEMORY[0x1E69E9840];
  string = [MEMORY[0x1E696AD60] string];
  [string appendFormat:@"[SplitterEnabled(%d)]", self->_splitterEnabled];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = self->_splitterDeviceList;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    v8 = 1;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        address = [v10 address];
        [string appendFormat:@"[Device%d(%@) DoAP(%d)]", v8, address, objc_msgSend(v10, "supportDoAP")];

        v8 = (v8 + 1);
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  [string appendFormat:@"[SplitterState:%d]", -[CSBluetoothWirelessSplitterInfo splitterState](self, "splitterState")];

  return string;
}

- (CSBluetoothWirelessSplitterInfo)init
{
  v6.receiver = self;
  v6.super_class = CSBluetoothWirelessSplitterInfo;
  v2 = [(CSBluetoothWirelessSplitterInfo *)&v6 init];
  if (v2)
  {
    array = [MEMORY[0x1E695DF70] array];
    splitterDeviceList = v2->_splitterDeviceList;
    v2->_splitterDeviceList = array;
  }

  return v2;
}

@end