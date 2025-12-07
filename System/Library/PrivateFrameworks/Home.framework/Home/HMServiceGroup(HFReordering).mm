@interface HMServiceGroup(HFReordering)
- (HFServiceNameComponents)hf_serviceNameComponents;
- (id)hf_displayName;
@end

@implementation HMServiceGroup(HFReordering)

- (id)hf_displayName
{
  hf_serviceNameComponents = [self hf_serviceNameComponents];
  composedString = [hf_serviceNameComponents composedString];

  return composedString;
}

- (HFServiceNameComponents)hf_serviceNameComponents
{
  v19 = *MEMORY[0x277D85DE8];
  name = [self name];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  services = [self services];
  v4 = [services countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v15;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(services);
        }

        accessory = [*(*(&v14 + 1) + 8 * i) accessory];
        room = [accessory room];

        if (room)
        {
          if (v6)
          {
            if (([v6 isEqual:room] & 1) == 0)
            {

              goto LABEL_14;
            }
          }

          else
          {
            v6 = room;
          }
        }
      }

      v5 = [services countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  else
  {
LABEL_14:
    v6 = 0;
  }

  name2 = [v6 name];
  v12 = [[HFServiceNameComponents alloc] initWithRawServiceName:name rawRoomName:name2];

  return v12;
}

@end