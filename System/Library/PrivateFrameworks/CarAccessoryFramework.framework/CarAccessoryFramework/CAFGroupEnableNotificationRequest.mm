@interface CAFGroupEnableNotificationRequest
- (id)groupRequestValueForRequests:(id)requests;
- (id)requestForCharacteristic:(id)characteristic;
- (id)requestForControl:(id)control;
- (void)addControl:(id)control;
- (void)completedRequests:(id)requests withResponse:(id)response;
@end

@implementation CAFGroupEnableNotificationRequest

- (void)addControl:(id)control
{
  controlCopy = control;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __48__CAFGroupEnableNotificationRequest_addControl___block_invoke;
  v6[3] = &unk_27890D548;
  v6[4] = self;
  v7 = controlCopy;
  v5 = controlCopy;
  [(CAFGroupRequest *)self _lockedPerformBlock:v6];
}

uint64_t __48__CAFGroupEnableNotificationRequest_addControl___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) requestForControl:*(a1 + 40)];
  if (v2)
  {
    [*(a1 + 32) _addRequest:v2];
  }

  return MEMORY[0x2821F96F8]();
}

- (id)requestForCharacteristic:(id)characteristic
{
  characteristicCopy = characteristic;
  if ([characteristicCopy notifies])
  {
    v4 = [(CAFRequest *)CAFEnableNotificationRequest requestWithCharacteristic:characteristicCopy];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)requestForControl:(id)control
{
  controlCopy = control;
  if ([controlCopy notifies])
  {
    v4 = [(CAFRequest *)CAFEnableNotificationRequest requestWithControl:controlCopy];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)groupRequestValueForRequests:(id)requests
{
  v25 = *MEMORY[0x277D85DE8];
  requestsCopy = requests;
  objc_opt_class();
  v4 = requestsCopy;
  if (!v4 || (v5 = v4, (objc_opt_isKindOfClass() & 1) == 0))
  {

    v7 = CAFGeneralLogging(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [CAFGroupEnableNotificationRequest groupRequestValueForRequests:v7];
    }

    v5 = 0;
  }

  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v9 = v5;
  v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v21;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v20 + 1) + 8 * i);
        characteristic = [v14 characteristic];
        registrationInstanceIDs = [characteristic registrationInstanceIDs];
        [v8 addObjectsFromArray:registrationInstanceIDs];

        control = [v14 control];
        registrationInstanceIDs2 = [control registrationInstanceIDs];
        [v8 addObjectsFromArray:registrationInstanceIDs2];
      }

      v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v11);
  }

  return v8;
}

- (void)completedRequests:(id)requests withResponse:(id)response
{
  v62 = *MEMORY[0x277D85DE8];
  requestsCopy = requests;
  responseCopy = response;
  values = [responseCopy values];

  if (values)
  {
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v42 = requestsCopy;
    obj = requestsCopy;
    v45 = [obj countByEnumeratingWithState:&v55 objects:v61 count:16];
    if (!v45)
    {
      goto LABEL_37;
    }

    v44 = *v56;
    while (1)
    {
      v8 = 0;
      do
      {
        if (*v56 != v44)
        {
          objc_enumerationMutation(obj);
        }

        v46 = v8;
        v9 = *(*(&v55 + 1) + 8 * v8);
        v51 = 0u;
        v52 = 0u;
        v53 = 0u;
        v54 = 0u;
        characteristic = [v9 characteristic];
        registrationInstanceIDs = [characteristic registrationInstanceIDs];

        v12 = [registrationInstanceIDs countByEnumeratingWithState:&v51 objects:v60 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v52;
          do
          {
            v15 = 0;
            do
            {
              if (*v52 != v14)
              {
                objc_enumerationMutation(registrationInstanceIDs);
              }

              v16 = *(*(&v51 + 1) + 8 * v15);
              values2 = [responseCopy values];
              v18 = [values2 objectForKeyedSubscript:v16];

              null = [MEMORY[0x277CBEB68] null];
              v20 = [v18 isEqual:null];

              if (v20)
              {
                characteristic2 = [v9 characteristic];
                v22 = characteristic2;
                v23 = v16;
                v24 = 0;
LABEL_16:
                [characteristic2 handleRegistrationWithInstanceID:v23 value:v24 registered:1];
                goto LABEL_17;
              }

              characteristic2 = [v9 characteristic];
              v22 = characteristic2;
              v23 = v16;
              if (v18)
              {
                v24 = v18;
                goto LABEL_16;
              }

              [characteristic2 handleRegistrationWithInstanceID:v16 registered:0];
LABEL_17:

              ++v15;
            }

            while (v13 != v15);
            v25 = [registrationInstanceIDs countByEnumeratingWithState:&v51 objects:v60 count:16];
            v13 = v25;
          }

          while (v25);
        }

        v49 = 0u;
        v50 = 0u;
        v47 = 0u;
        v48 = 0u;
        control = [v9 control];
        registrationInstanceIDs2 = [control registrationInstanceIDs];

        v28 = [registrationInstanceIDs2 countByEnumeratingWithState:&v47 objects:v59 count:16];
        if (!v28)
        {
          goto LABEL_35;
        }

        v29 = v28;
        v30 = *v48;
        do
        {
          v31 = 0;
          do
          {
            if (*v48 != v30)
            {
              objc_enumerationMutation(registrationInstanceIDs2);
            }

            v32 = *(*(&v47 + 1) + 8 * v31);
            values3 = [responseCopy values];
            v34 = [values3 objectForKeyedSubscript:v32];

            null2 = [MEMORY[0x277CBEB68] null];
            v36 = [v34 isEqual:null2];

            if (v36)
            {
              control2 = [v9 control];
              v38 = control2;
              v39 = v32;
              v40 = 0;
LABEL_30:
              [control2 handleRegistrationWithInstanceID:v39 value:v40 registered:1];
              goto LABEL_31;
            }

            control2 = [v9 control];
            v38 = control2;
            v39 = v32;
            if (v34)
            {
              v40 = v34;
              goto LABEL_30;
            }

            [control2 handleRegistrationWithInstanceID:v32 registered:0];
LABEL_31:

            ++v31;
          }

          while (v29 != v31);
          v41 = [registrationInstanceIDs2 countByEnumeratingWithState:&v47 objects:v59 count:16];
          v29 = v41;
        }

        while (v41);
LABEL_35:

        v8 = v46 + 1;
      }

      while (v46 + 1 != v45);
      v45 = [obj countByEnumeratingWithState:&v55 objects:v61 count:16];
      if (!v45)
      {
LABEL_37:

        requestsCopy = v42;
        break;
      }
    }
  }
}

@end