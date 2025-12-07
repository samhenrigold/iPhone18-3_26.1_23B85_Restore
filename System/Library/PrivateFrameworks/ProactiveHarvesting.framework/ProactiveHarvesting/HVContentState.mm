@interface HVContentState
- (BOOL)isEqual:(id)equal;
- (HVContentState)initWithConsumers:(id)consumers levelOfService:(unsigned __int8)service;
- (id)_initWithConsumers:(id)consumers levelOfService:(unsigned __int8)service;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation HVContentState

- (unint64_t)hash
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = self->_consumers;
  v4 = [(NSSet *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = 0;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v5 += [*(*(&v10 + 1) + 8 * v7++) hash];
      }

      while (v4 != v7);
      v4 = [(NSSet *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
    v4 = 31 * v5;
  }

  v8 = [(NSSet *)self->_consumers count];
  return self->_levelOfService - (v8 + v4) + 32 * (v8 + v4);
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 initWithFormat:@"<%@ LoS:%hhu consumers:%@>", v5, self->_levelOfService, self->_consumers];

  return v6;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [HVMutableContentState alloc];
  consumers = self->_consumers;
  levelOfService = self->_levelOfService;

  return [(HVMutableContentState *)v4 initWithConsumers:consumers levelOfService:levelOfService];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && self->_levelOfService == equalCopy->_levelOfService)
    {
      v5 = [(NSSet *)self->_consumers isEqual:equalCopy->_consumers];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (id)_initWithConsumers:(id)consumers levelOfService:(unsigned __int8)service
{
  consumersCopy = consumers;
  v12.receiver = self;
  v12.super_class = HVContentState;
  v7 = [(HVContentState *)&v12 init];
  if (v7)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = [consumersCopy copy];
    consumers = v7->_consumers;
    v7->_consumers = v9;

    v7->_levelOfService = service;
    objc_autoreleasePoolPop(v8);
  }

  return v7;
}

- (HVContentState)initWithConsumers:(id)consumers levelOfService:(unsigned __int8)service
{
  serviceCopy = service;
  consumersCopy = consumers;
  if (initWithConsumers_levelOfService___pasOnceToken2 != -1)
  {
    dispatch_once(&initWithConsumers_levelOfService___pasOnceToken2, &__block_literal_global_1920);
  }

  v8 = initWithConsumers_levelOfService___pasExprOnceResult;
  v9 = [[HVImmutableContentState alloc] initWithConsumers:consumersCopy levelOfService:serviceCopy];
  v10 = [v8 intern:v9];

  if (!v10)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HVDataSourceContentState.m" lineNumber:68 description:{@"Invalid parameter not satisfying: %@", @"instance != nil"}];
  }

  return v10;
}

void __51__HVContentState_initWithConsumers_levelOfService___block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_opt_new();
  v2 = initWithConsumers_levelOfService___pasExprOnceResult;
  initWithConsumers_levelOfService___pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

@end