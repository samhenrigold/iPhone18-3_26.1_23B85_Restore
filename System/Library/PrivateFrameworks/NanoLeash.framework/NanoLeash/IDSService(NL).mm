@interface IDSService(NL)
- (id)nl_defaultPairedDeviceIDIncludingTinkerDevices;
- (id)nl_mineTinkerDevices;
@end

@implementation IDSService(NL)

- (id)nl_mineTinkerDevices
{
  v2 = [self linkedDevicesWithRelationship:1];
  v3 = [self linkedDevicesWithRelationship:2];
  if (v2 | v3)
  {
    v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v3, "count") + objc_msgSend(v2, "count")}];
    v5 = v4;
    if (v2)
    {
      [v4 addObjectsFromArray:v2];
    }

    if (v3)
    {
      [v5 addObjectsFromArray:v3];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)nl_defaultPairedDeviceIDIncludingTinkerDevices
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  nl_mineTinkerDevices = [self nl_mineTinkerDevices];
  v2 = [nl_mineTinkerDevices countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = *v7;
    while (2)
    {
      for (i = 0; i != v2; i = i + 1)
      {
        if (*v7 != v3)
        {
          objc_enumerationMutation(nl_mineTinkerDevices);
        }

        if ([*(*(&v6 + 1) + 8 * i) isDefaultPairedDevice])
        {
          v2 = IDSCopyIDForDevice();
          goto LABEL_11;
        }
      }

      v2 = [nl_mineTinkerDevices countByEnumeratingWithState:&v6 objects:v10 count:16];
      if (v2)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v2;
}

@end