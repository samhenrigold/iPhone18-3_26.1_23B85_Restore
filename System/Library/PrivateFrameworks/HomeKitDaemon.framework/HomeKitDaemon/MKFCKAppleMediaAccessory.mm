@interface MKFCKAppleMediaAccessory
- (BOOL)exportFromLocalModel:(id)model updatedProperties:(id)properties context:(id)context;
- (BOOL)importIntoLocalModel:(id)model updatedProperties:(id)properties context:(id)context;
@end

@implementation MKFCKAppleMediaAccessory

- (BOOL)exportFromLocalModel:(id)model updatedProperties:(id)properties context:(id)context
{
  v31 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  contextCopy = context;
  v24.receiver = self;
  v24.super_class = MKFCKAppleMediaAccessory;
  if ([(MKFCKAccessory *)&v24 exportFromLocalModel:modelCopy updatedProperties:properties context:contextCopy])
  {
    v10 = modelCopy;
    v11 = contextCopy;
    v12 = self != 0;
    if (self)
    {
      resident = [v10 resident];
      if (resident)
      {
        v14 = [(MKFCKModel *)MKFCKResident fetchWithLocalModel:resident context:v11];
        if (v14)
        {
          v15 = v14;
          resident2 = [(MKFCKAppleMediaAccessory *)self resident];

          if (resident2 != v15)
          {
            [(MKFCKAppleMediaAccessory *)self setResident:v15];
          }
        }

        else
        {
          v17 = objc_autoreleasePoolPush();
          selfCopy = self;
          v19 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            v20 = HMFGetLogIdentifier();
            [v10 objectID];
            v21 = v23 = v17;
            *buf = 138543874;
            v26 = v20;
            v27 = 2112;
            v28 = v21;
            v29 = 2112;
            v30 = resident;
            _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Cannot fulfill relationship yet: %@.resident = %@", buf, 0x20u);

            v17 = v23;
          }

          objc_autoreleasePoolPop(v17);
        }
      }
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)importIntoLocalModel:(id)model updatedProperties:(id)properties context:(id)context
{
  v33 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  contextCopy = context;
  v26.receiver = self;
  v26.super_class = MKFCKAppleMediaAccessory;
  if ([(MKFCKAccessory *)&v26 importIntoLocalModel:modelCopy updatedProperties:properties context:contextCopy])
  {
    v10 = modelCopy;
    v11 = contextCopy;
    v12 = self != 0;
    if (self)
    {
      resident = [(MKFCKAppleMediaAccessory *)self resident];
      v14 = resident;
      if (resident)
      {
        v15 = [resident fetchLocalModelWithContext:v11];
        if (v15)
        {
          resident2 = [v10 resident];

          if (resident2 != v15)
          {
            [v10 setResident:v15];
            device = [v10 device];
            if (device)
            {
              device2 = [v15 device];

              if (device2 != device)
              {
                [v15 setDevice:device];
              }
            }
          }
        }

        else
        {
          v19 = objc_autoreleasePoolPush();
          selfCopy = self;
          v21 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
          {
            v25 = HMFGetLogIdentifier();
            [(MKFCKAppleMediaAccessory *)selfCopy objectID];
            v22 = v24 = v19;
            *buf = 138543874;
            v28 = v25;
            v29 = 2112;
            v30 = v22;
            v31 = 2112;
            v32 = v14;
            _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@Cannot fulfill relationship yet: %@.resident = %@", buf, 0x20u);

            v19 = v24;
          }

          objc_autoreleasePoolPop(v19);
        }
      }
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end