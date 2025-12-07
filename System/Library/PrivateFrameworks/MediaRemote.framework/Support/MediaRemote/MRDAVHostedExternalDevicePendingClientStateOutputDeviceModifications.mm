@interface MRDAVHostedExternalDevicePendingClientStateOutputDeviceModifications
- (id)description;
- (void)addOutputDevice:(id)device;
- (void)changeOutputDevice:(id)device;
- (void)removeOutputDevice:(id)device;
@end

@implementation MRDAVHostedExternalDevicePendingClientStateOutputDeviceModifications

- (id)description
{
  v3 = [[NSMutableString alloc] initWithString:@"{\n"];
  if ([(NSMutableArray *)self->_addedOutputDevices count])
  {
    v4 = MRCreateIndentedDebugDescriptionFromObject();
    [v3 appendFormat:@"   addedOutputDevices = %@\n", v4];
  }

  if ([(NSMutableArray *)self->_changedOutputDevices count])
  {
    v5 = MRCreateIndentedDebugDescriptionFromObject();
    [v3 appendFormat:@"    changedOutputDevices = %@\n", v5];
  }

  if ([(NSMutableArray *)self->_removedOutputDevices count])
  {
    v6 = MRCreateIndentedDebugDescriptionFromObject();
    [v3 appendFormat:@"    removedOutputDevices = %@\n", v6];
  }

  return v3;
}

- (void)addOutputDevice:(id)device
{
  deviceCopy = device;
  addedOutputDevices = self->_addedOutputDevices;
  v8 = deviceCopy;
  if (!addedOutputDevices)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_addedOutputDevices;
    self->_addedOutputDevices = v6;

    deviceCopy = v8;
    addedOutputDevices = self->_addedOutputDevices;
  }

  [(NSMutableArray *)addedOutputDevices addObject:deviceCopy];
  [(NSMutableArray *)self->_changedOutputDevices removeObject:v8];
  [(NSMutableArray *)self->_removedOutputDevices removeObject:v8];
}

- (void)changeOutputDevice:(id)device
{
  deviceCopy = device;
  v4 = [(NSMutableArray *)self->_addedOutputDevices indexOfObject:?];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    changedOutputDevices = self->_changedOutputDevices;
    if (!changedOutputDevices)
    {
      v6 = objc_alloc_init(NSMutableArray);
      v7 = self->_changedOutputDevices;
      self->_changedOutputDevices = v6;

      changedOutputDevices = self->_changedOutputDevices;
    }

    [(NSMutableArray *)changedOutputDevices addObject:deviceCopy];
  }

  else
  {
    [(NSMutableArray *)self->_addedOutputDevices replaceObjectAtIndex:v4 withObject:deviceCopy];
  }
}

- (void)removeOutputDevice:(id)device
{
  deviceCopy = device;
  v4 = [(NSMutableArray *)self->_addedOutputDevices indexOfObject:?];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    removedOutputDevices = self->_removedOutputDevices;
    if (!removedOutputDevices)
    {
      v6 = objc_alloc_init(NSMutableArray);
      v7 = self->_removedOutputDevices;
      self->_removedOutputDevices = v6;

      removedOutputDevices = self->_removedOutputDevices;
    }

    [(NSMutableArray *)removedOutputDevices addObject:deviceCopy];
    [(NSMutableArray *)self->_changedOutputDevices removeObject:deviceCopy];
  }

  else
  {
    [(NSMutableArray *)self->_addedOutputDevices removeObjectAtIndex:v4];
  }
}

@end