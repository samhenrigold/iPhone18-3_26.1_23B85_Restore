@interface CBWHBAggregateDevice
- (id)description;
@end

@implementation CBWHBAggregateDevice

- (id)description
{
  v3 = self->_deviceControllerMap;
  v4 = self->_latestDevice;
  v23 = 0;
  v5 = [objc_opt_class() description];
  NSAppendPrintF_safe(&v23, "%@: %@, Hosts %d", v5, v4, [(NSMutableDictionary *)v3 count]);
  v6 = v23;

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  allKeys = [(NSMutableDictionary *)v3 allKeys];
  v8 = [allKeys countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    v11 = " [";
    do
    {
      v12 = 0;
      v13 = v6;
      do
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(allKeys);
        }

        v14 = *(*(&v19 + 1) + 8 * v12);
        v18 = v13;
        NSAppendPrintF_safe(&v18, "%s%@", v11, v14);
        v6 = v18;

        v12 = v12 + 1;
        v11 = ", ";
        v13 = v6;
      }

      while (v9 != v12);
      v9 = [allKeys countByEnumeratingWithState:&v19 objects:v24 count:16];
      v11 = ", ";
    }

    while (v9);

    v17 = v6;
    NSAppendPrintF_safe(&v17, "]");
    allKeys = v6;
    v6 = v17;
  }

  v15 = v6;
  return v6;
}

@end