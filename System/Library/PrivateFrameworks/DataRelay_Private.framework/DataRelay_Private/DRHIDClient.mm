@interface DRHIDClient
- ($ED4A0B18993299B00AEB513B70343C82)getSensorTime:(id)time;
- (DRHIDClient)initWithClientType:(int64_t)type;
- (void)activate;
- (void)dealloc;
- (void)handleEvent:(id)event withService:(id)service;
- (void)invalidate;
- (void)reset;
- (void)routedWxDeviceChanged:(id)changed;
- (void)serviceAdded:(id)added;
- (void)serviceRemoved:(id)removed resetReportInterval:(BOOL)interval;
@end

@implementation DRHIDClient

- (DRHIDClient)initWithClientType:(int64_t)type
{
  v8.receiver = self;
  v8.super_class = DRHIDClient;
  v4 = [(DRHIDClient *)&v8 init];
  if (v4)
  {
    data = [MEMORY[0x277CBEA90] data];
    wxRoute = v4->_wxRoute;
    v4->_wxRoute = data;

    v4->_clientType = type;
  }

  return v4;
}

- (void)activate
{
  v1 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(self, "serviceID")}];
  LogPrintF();
}

void __23__DRHIDClient_activate__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  [WeakRetained serviceRemoved:v2 resetReportInterval:0];
}

void __23__DRHIDClient_activate__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained HIDServices];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v3, "serviceID")}];
  v7 = [v5 objectForKey:v6];

  if (v7)
  {
    if (gLogCategory_DRHIDClient <= 90 && (gLogCategory_DRHIDClient != -1 || _LogCategory_Initialize()))
    {
      __23__DRHIDClient_activate__block_invoke_2_cold_1(v3);
    }
  }

  else
  {
    objc_initWeak(&location, v3);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __23__DRHIDClient_activate__block_invoke_3;
    v17[3] = &unk_278F4EAD0;
    objc_copyWeak(&v18, (a1 + 32));
    objc_copyWeak(&v19, &location);
    [v3 setRemovalHandler:v17];
    v8 = [v3 propertyForKey:@"BT_ADDR"];
    if (v8)
    {
      v9 = objc_loadWeakRetained((a1 + 32));
      v10 = [v9 wxRoute];
      v11 = [v10 length];

      if (v11)
      {
        v12 = [v3 propertyForKey:@"BT_ADDR"];
        v13 = objc_loadWeakRetained((a1 + 32));
        v14 = [v13 wxRoute];
        v15 = [v12 isEqual:v14];

        if (v15)
        {
          v16 = objc_loadWeakRetained((a1 + 32));
          [v16 serviceAdded:v3];
        }
      }
    }

    objc_destroyWeak(&v19);
    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }
}

void __23__DRHIDClient_activate__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  [WeakRetained serviceRemoved:v2 resetReportInterval:0];
}

- (void)invalidate
{
  v14 = *MEMORY[0x277D85DE8];
  if (self->_isActivated)
  {
    if (gLogCategory_DRHIDClient <= 50 && (gLogCategory_DRHIDClient != -1 || _LogCategory_Initialize()))
    {
      [DRHIDClient invalidate];
    }

    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    services = [(HIDEventSystemClient *)self->_HIDClient services];
    v4 = [services countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v10;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v10 != v6)
          {
            objc_enumerationMutation(services);
          }

          [(DRHIDClient *)self serviceRemoved:*(*(&v9 + 1) + 8 * i) resetReportInterval:1];
        }

        v5 = [services countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v5);
    }

    HIDClient = self->_HIDClient;
    if (HIDClient)
    {
      [(HIDEventSystemClient *)HIDClient cancel];
    }

    [(DRHIDClient *)self reset];
  }
}

- (void)dealloc
{
  if (self->_isActivated)
  {
    HIDClient = self->_HIDClient;
    if (HIDClient)
    {
      [(HIDEventSystemClient *)HIDClient cancel];
    }
  }

  v4.receiver = self;
  v4.super_class = DRHIDClient;
  [(DRHIDClient *)&v4 dealloc];
}

- (void)handleEvent:(id)event withService:(id)service
{
  eventCopy = event;
  serviceCopy = service;
  v7 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:@"subclasses must override the implementation of this" userInfo:0];
  objc_exception_throw(v7);
}

- ($ED4A0B18993299B00AEB513B70343C82)getSensorTime:(id)time
{
  v16 = *MEMORY[0x277D85DE8];
  children = [time children];
  v4 = children;
  if (children)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = children;
    v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = *v12;
      while (2)
      {
        for (i = 0; i != v6; i = (i + 1))
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v11 + 1) + 8 * i);
          if ([v9 type] == 1 && objc_msgSend(v9, "integerValueForField:", 0x10000) == 65301 && objc_msgSend(v9, "integerValueForField:", 65537) == 290)
          {
            if ([v9 integerValueForField:65539] == 20)
            {
              v6 = [v9 dataValueForField:65540];
            }

            else
            {
              v6 = 0;
            }

            goto LABEL_17;
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_17:
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)serviceAdded:(id)added
{
  addedCopy = added;
  hIDServices = [(DRHIDClient *)self HIDServices];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(addedCopy, "serviceID")}];
  v6 = [hIDServices objectForKeyedSubscript:v5];

  if (v6)
  {
    if (gLogCategory_DRHIDClient <= 90 && (gLogCategory_DRHIDClient != -1 || _LogCategory_Initialize()))
    {
      [DRHIDClient serviceAdded:];
    }
  }

  else
  {
    hIDServices2 = [(DRHIDClient *)self HIDServices];
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(addedCopy, "serviceID")}];
    [hIDServices2 setObject:addedCopy forKey:v8];
  }
}

- (void)serviceRemoved:(id)removed resetReportInterval:(BOOL)interval
{
  removedCopy = removed;
  hIDServices = [(DRHIDClient *)self HIDServices];
  v6 = MEMORY[0x277CCABB0];
  serviceID = [removedCopy serviceID];

  v8 = [v6 numberWithUnsignedLongLong:serviceID];
  [hIDServices removeObjectForKey:v8];
}

- (void)reset
{
  v3 = [objc_alloc(MEMORY[0x277D0EEF0]) initWithType:self->_clientType];
  HIDClient = self->_HIDClient;
  self->_HIDClient = v3;

  objc_initWeak(&location, self);
  v5 = self->_HIDClient;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __20__DRHIDClient_reset__block_invoke;
  v11[3] = &unk_278F4EB20;
  objc_copyWeak(&v12, &location);
  [(HIDEventSystemClient *)v5 setEventHandler:v11];
  v6 = self->_HIDClient;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __20__DRHIDClient_reset__block_invoke_2;
  v9[3] = &unk_278F4E780;
  objc_copyWeak(&v10, &location);
  [(HIDEventSystemClient *)v6 setCancelHandler:v9];
  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  HIDServices = self->_HIDServices;
  self->_HIDServices = v7;

  self->_isActivated = 0;
  objc_destroyWeak(&v10);
  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __20__DRHIDClient_reset__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleEvent:v5 withService:v6];
}

void __20__DRHIDClient_reset__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setHIDClient:0];
}

- (void)routedWxDeviceChanged:(id)changed
{
  v22 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  if (gLogCategory_DRHIDClient <= 50 && (gLogCategory_DRHIDClient != -1 || _LogCategory_Initialize()))
  {
    [DRHIDClient routedWxDeviceChanged:];
  }

  objc_storeStrong(&self->_wxRoute, changed);
  HIDServices = self->_HIDServices;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __37__DRHIDClient_routedWxDeviceChanged___block_invoke;
  v20[3] = &unk_278F4E958;
  v20[4] = self;
  [(NSMutableDictionary *)HIDServices enumerateKeysAndObjectsUsingBlock:v20];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  services = [(HIDEventSystemClient *)self->_HIDClient services];
  v8 = [services countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
LABEL_6:
    v11 = 0;
    while (1)
    {
      if (*v17 != v10)
      {
        objc_enumerationMutation(services);
      }

      v12 = *(*(&v16 + 1) + 8 * v11);
      if (![(NSData *)self->_wxRoute length])
      {
        break;
      }

      v13 = [v12 propertyForKey:@"BT_ADDR"];

      if (v13)
      {
        v14 = [v12 propertyForKey:@"BT_ADDR"];
        v15 = [v14 isEqual:self->_wxRoute];

        if (v15)
        {
          [(DRHIDClient *)self serviceAdded:v12];
        }
      }

      if (v9 == ++v11)
      {
        v9 = [services countByEnumeratingWithState:&v16 objects:v21 count:16];
        if (v9)
        {
          goto LABEL_6;
        }

        break;
      }
    }
  }
}

uint64_t __37__DRHIDClient_routedWxDeviceChanged___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = a3;
  v4 = [v12 propertyForKey:@"BT_ADDR"];

  v5 = *(a1 + 32);
  if (!v4)
  {
    v10 = v12;
    goto LABEL_6;
  }

  v6 = [v5[5] length];
  v7 = v12;
  if (!v6 || ([v12 propertyForKey:@"BT_ADDR"], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "isEqual:", *(*(a1 + 32) + 40)), v8, v7 = v12, (v9 & 1) == 0))
  {
    v5 = *(a1 + 32);
    v10 = v7;
LABEL_6:
    [v5 serviceRemoved:v10 resetReportInterval:1];
  }

  return MEMORY[0x2821F96F8]();
}

void __23__DRHIDClient_activate__block_invoke_2_cold_1(void *a1)
{
  v1 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(a1, "serviceID")}];
  LogPrintF();
}

@end