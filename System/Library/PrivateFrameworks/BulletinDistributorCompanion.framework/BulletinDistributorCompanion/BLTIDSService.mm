@interface BLTIDSService
- (BLTAbstractIDSDevice)defaultPairedDevice;
- (BLTIDSService)initWithService:(id)service;
@end

@implementation BLTIDSService

- (BLTIDSService)initWithService:(id)service
{
  serviceCopy = service;
  v9.receiver = self;
  v9.super_class = BLTIDSService;
  v5 = [(BLTIDSService *)&v9 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277D18778]) initWithService:serviceCopy];
    service = v5->_service;
    v5->_service = v6;
  }

  return v5;
}

- (BLTAbstractIDSDevice)defaultPairedDevice
{
  v13 = *MEMORY[0x277D85DE8];
  [(IDSService *)self->_service devices];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = v11 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; i = (i + 1))
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v8 + 1) + 8 * i);
        if ([v6 isDefaultPairedDevice])
        {
          v3 = [[BLTIDSDevice alloc] initWithIDSDevice:v6];
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

@end