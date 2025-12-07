@interface _HMAccessoryProfile
- (BOOL)isEqual:(id)equal;
- (HMAccessory)accessory;
- (HMHome)home;
- (NSString)description;
- (NSUUID)uniqueIdentifier;
- (_HMAccessoryProfile)initWithCoder:(id)coder;
- (_HMAccessoryProfile)initWithUUID:(id)d services:(id)services;
- (id)assistantIdentifier;
- (unint64_t)hash;
- (void)__configureWithContext:(id)context accessory:(id)accessory;
- (void)_unconfigureContext;
@end

@implementation _HMAccessoryProfile

- (HMHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

- (HMAccessory)accessory
{
  WeakRetained = objc_loadWeakRetained(&self->_accessory);

  return WeakRetained;
}

- (_HMAccessoryProfile)initWithCoder:(id)coder
{
  v25[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.accessoryProfileUUID"];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v5];
  v7 = MEMORY[0x1E695DFD8];
  v25[0] = objc_opt_class();
  v25[1] = objc_opt_class();
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];
  v9 = [v7 setWithArray:v8];
  v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"services"];

  if (v6 && v10)
  {
    v11 = [(_HMAccessoryProfile *)self initWithUUID:v6 services:v10];
    if (v11)
    {
      v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accessory"];
      objc_storeWeak(&v11->_accessory, v12);
    }

    selfCopy = v11;
    v14 = selfCopy;
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    selfCopy = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      v19 = 138543874;
      v20 = v17;
      v21 = 2112;
      v22 = v6;
      v23 = 2112;
      v24 = v10;
      _os_log_impl(&dword_19BB39000, v16, OS_LOG_TYPE_ERROR, "%{public}@Could not initialize from decoded profileUniqueIdentifier: %@ services: %@", &v19, 0x20u);
    }

    objc_autoreleasePoolPop(v15);
    v14 = 0;
  }

  return v14;
}

- (unint64_t)hash
{
  profileUniqueIdentifier = [(_HMAccessoryProfile *)self profileUniqueIdentifier];
  v3 = [profileUniqueIdentifier hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      profileUniqueIdentifier = [(_HMAccessoryProfile *)self profileUniqueIdentifier];
      profileUniqueIdentifier2 = [(_HMAccessoryProfile *)v5 profileUniqueIdentifier];

      v8 = [profileUniqueIdentifier isEqual:profileUniqueIdentifier2];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)assistantIdentifier
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSArray count](self->_services, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = self->_services;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = MEMORY[0x1E696AEC0];
        instanceID = [*(*(&v15 + 1) + 8 * i) instanceID];
        v11 = [v9 stringWithFormat:@"%@", instanceID];
        [v3 addObject:v11];
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  profileUniqueIdentifier = [(_HMAccessoryProfile *)self profileUniqueIdentifier];
  v13 = hm_assistantIdentifierWithSalts(@"SV", profileUniqueIdentifier, v3);

  return v13;
}

- (NSUUID)uniqueIdentifier
{
  os_unfair_lock_lock_with_options();
  uniqueIdentifier = self->_uniqueIdentifier;
  if (!uniqueIdentifier)
  {
    v4 = [MEMORY[0x1E696AFB0] hm_deriveUUIDFromBaseUUID:self->_profileUniqueIdentifier];
    v5 = self->_uniqueIdentifier;
    self->_uniqueIdentifier = v4;

    uniqueIdentifier = self->_uniqueIdentifier;
  }

  v6 = uniqueIdentifier;
  os_unfair_lock_unlock(&self->_lock);

  return v6;
}

- (void)_unconfigureContext
{
  messageDispatcher = [(_HMContext *)self->_context messageDispatcher];
  [messageDispatcher deregisterReceiver:self];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  context = self->_context;
  self->_context = 0;
}

- (void)__configureWithContext:(id)context accessory:(id)accessory
{
  objc_storeStrong(&self->_context, context);
  accessoryCopy = accessory;
  objc_storeWeak(&self->_accessory, accessoryCopy);
  home = [accessoryCopy home];

  objc_storeWeak(&self->_home, home);

  [(_HMAccessoryProfile *)self _registerNotificationHandlers];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  accessory = [(_HMAccessoryProfile *)self accessory];
  profileUniqueIdentifier = [(_HMAccessoryProfile *)self profileUniqueIdentifier];
  uUIDString = [profileUniqueIdentifier UUIDString];
  v7 = [v3 stringWithFormat:@"_HMAccessoryProfile %@: %@", accessory, uUIDString];

  return v7;
}

- (_HMAccessoryProfile)initWithUUID:(id)d services:(id)services
{
  dCopy = d;
  servicesCopy = services;
  v12.receiver = self;
  v12.super_class = _HMAccessoryProfile;
  v8 = [(_HMAccessoryProfile *)&v12 init];
  if (v8)
  {
    v9 = [MEMORY[0x1E69A2A28] hmf_cachedInstanceForNSUUID:dCopy];
    profileUniqueIdentifier = v8->_profileUniqueIdentifier;
    v8->_profileUniqueIdentifier = v9;

    objc_storeStrong(&v8->_services, services);
  }

  return v8;
}

@end