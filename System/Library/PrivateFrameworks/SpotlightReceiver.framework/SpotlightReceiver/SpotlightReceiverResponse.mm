@interface SpotlightReceiverResponse
- (BOOL)setUpdate:(id)update forItem:(id)item;
- (SpotlightReceiverResponse)initWithDonation:(id)donation;
- (void)enumerateUpdatesUsingBlock:(id)block;
@end

@implementation SpotlightReceiverResponse

- (SpotlightReceiverResponse)initWithDonation:(id)donation
{
  donationCopy = donation;
  v9.receiver = self;
  v9.super_class = SpotlightReceiverResponse;
  v6 = [(SpotlightReceiverResponse *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_donation, donation);
    v7->_status = 0;
  }

  return v7;
}

- (BOOL)setUpdate:(id)update forItem:(id)item
{
  updateCopy = update;
  itemCopy = item;
  donation = [(SpotlightReceiverResponse(Internal) *)self donation];
  items = [donation items];
  if (![items count])
  {

    goto LABEL_7;
  }

  donation2 = [(SpotlightReceiverResponse(Internal) *)self donation];
  items2 = [donation2 items];
  v12 = [items2 containsObject:itemCopy];

  if (!v12)
  {
LABEL_7:
    v16 = 0;
    goto LABEL_8;
  }

  updates = self->_updates;
  if (!updates)
  {
    v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v15 = self->_updates;
    self->_updates = v14;

    updates = self->_updates;
  }

  [(NSMutableDictionary *)updates setObject:updateCopy forKey:itemCopy];
  v16 = 1;
LABEL_8:

  return v16;
}

- (void)enumerateUpdatesUsingBlock:(id)block
{
  v47 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  context = objc_autoreleasePoolPush();
  v45 = 0;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = self->_updates;
  v39 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v41 objects:v46 count:16];
  if (v39)
  {
    v38 = *v42;
    do
    {
      for (i = 0; i != v39; ++i)
      {
        if (*v42 != v38)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v41 + 1) + 8 * i);
        context = [(NSMutableDictionary *)self->_updates objectForKeyedSubscript:v5, context];
        attributes = [context attributes];
        if ([attributes count])
        {
          attributes2 = [context attributes];
          v9 = [attributes2 mutableCopy];
        }

        else
        {
          v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
        }

        v10 = [objc_alloc(MEMORY[0x277CC34B8]) initWithAttributes:v9];
        status = [context status];
        donation = [(SpotlightReceiverResponse(Internal) *)self donation];
        donation3 = donation;
        if (status == 2)
        {
          versionName = [donation versionName];
          if (versionName)
          {
            v15 = versionName;
            donation2 = [(SpotlightReceiverResponse(Internal) *)self donation];
            versionValue = [donation2 versionValue];

            if (!versionValue)
            {
              goto LABEL_22;
            }

            donation3 = [(SpotlightReceiverResponse(Internal) *)self donation];
            versionValue2 = [donation3 versionValue];
            donation4 = [(SpotlightReceiverResponse(Internal) *)self donation];
            versionName2 = [donation4 versionName];
            [v9 setObject:versionValue2 forKey:versionName2];

LABEL_20:
          }

          goto LABEL_22;
        }

        errorCodeAttributeName = [donation errorCodeAttributeName];

        if (errorCodeAttributeName)
        {
          info = [context info];
          if (info)
          {
            v23 = info;
            info2 = [context info];
            code = [info2 code];

            if (code != 0x7FFFFFFFFFFFFFFFLL)
            {
              v26 = [MEMORY[0x277CCABB0] numberWithInteger:code];
              donation5 = [(SpotlightReceiverResponse(Internal) *)self donation];
              errorCodeAttributeName2 = [donation5 errorCodeAttributeName];
              [v9 setObject:v26 forKey:errorCodeAttributeName2];
            }
          }
        }

        if ([context status] == 4)
        {
          donation6 = [(SpotlightReceiverResponse(Internal) *)self donation];
          errorAttributeName = [donation6 errorAttributeName];

          if (errorAttributeName)
          {
            donation3 = [(SpotlightReceiverResponse(Internal) *)self donation];
            versionValue2 = [donation3 errorAttributeName];
            [v10 incrementAttributeValue:&unk_284823078 forKey:versionValue2];
            goto LABEL_20;
          }
        }

LABEL_22:
        v31 = objc_alloc(MEMORY[0x277CC34B0]);
        uniqueIdentifier = [v5 uniqueIdentifier];
        v33 = [v31 initWithUniqueIdentifier:uniqueIdentifier domainIdentifier:0 attributeSet:v10];

        donation7 = [(SpotlightReceiverResponse(Internal) *)self donation];
        bundleIdentifier = [donation7 bundleIdentifier];
        [v33 setBundleID:bundleIdentifier];

        [v33 setIsUpdate:1];
        blockCopy[2](blockCopy, v33, &v45);
        LOBYTE(donation7) = v45;

        if (donation7)
        {
          goto LABEL_25;
        }
      }

      v39 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v41 objects:v46 count:16];
    }

    while (v39);
  }

LABEL_25:

  objc_autoreleasePoolPop(context);
}

@end