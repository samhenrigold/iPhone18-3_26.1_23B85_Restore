@interface HMMRTCSessionManager
+ (id)sharedManager;
- (id)sessionWithUUID:(id)d serviceName:(id)name uploadImmediately:(BOOL)immediately;
- (void)addCommonField:(id)field withValue:(id)value;
- (void)removeCommonField:(id)field;
- (void)setSessionFactory:(id)factory;
- (void)submitEventWithName:(id)name serviceName:(id)serviceName uploadImmediately:(BOOL)immediately payload:(id)payload;
@end

@implementation HMMRTCSessionManager

- (void)submitEventWithName:(id)name serviceName:(id)serviceName uploadImmediately:(BOOL)immediately payload:(id)payload
{
  immediatelyCopy = immediately;
  v10 = MEMORY[0x277CCAD78];
  payloadCopy = payload;
  serviceNameCopy = serviceName;
  nameCopy = name;
  uUID = [v10 UUID];
  v15 = [(HMMRTCSessionManager *)self sessionWithUUID:uUID serviceName:serviceNameCopy uploadImmediately:immediatelyCopy];

  [v15 submitEventWithName:nameCopy payload:payloadCopy];
}

- (void)removeCommonField:(id)field
{
  fieldCopy = field;
  os_unfair_lock_lock_with_options();
  v4 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:self->_commonFields];
  [v4 removeObjectForKey:fieldCopy];
  v5 = [v4 copy];
  commonFields = self->_commonFields;
  self->_commonFields = v5;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)addCommonField:(id)field withValue:(id)value
{
  fieldCopy = field;
  valueCopy = value;
  os_unfair_lock_lock_with_options();
  if (self->_commonFields)
  {
    [MEMORY[0x277CBEB38] dictionaryWithDictionary:?];
  }

  else
  {
    [MEMORY[0x277CBEB38] dictionary];
  }
  v7 = ;
  [v7 setObject:valueCopy forKey:fieldCopy];
  v8 = [v7 copy];
  commonFields = self->_commonFields;
  self->_commonFields = v8;

  os_unfair_lock_unlock(&self->_lock);
}

- (id)sessionWithUUID:(id)d serviceName:(id)name uploadImmediately:(BOOL)immediately
{
  immediatelyCopy = immediately;
  dCopy = d;
  nameCopy = name;
  os_unfair_lock_lock_with_options();
  sessionFactory = self->_sessionFactory;
  if (!sessionFactory)
  {
    v11 = objc_alloc_init(HMMRTCSessionFactory);
    v12 = self->_sessionFactory;
    self->_sessionFactory = v11;

    sessionFactory = self->_sessionFactory;
  }

  v13 = self->_commonFields;
  v14 = sessionFactory;
  os_unfair_lock_unlock(&self->_lock);
  v15 = [(HMMRTCSessionFactory *)v14 sessionWithUUID:dCopy serviceName:nameCopy uploadImmediately:immediatelyCopy commonFields:v13];

  return v15;
}

- (void)setSessionFactory:(id)factory
{
  factoryCopy = factory;
  os_unfair_lock_lock_with_options();
  sessionFactory = self->_sessionFactory;
  self->_sessionFactory = factoryCopy;

  os_unfair_lock_unlock(&self->_lock);
}

+ (id)sharedManager
{
  if (sharedManager__hmf_once_t0 != -1)
  {
    dispatch_once(&sharedManager__hmf_once_t0, &__block_literal_global_591);
  }

  v3 = sharedManager__hmf_once_v1;

  return v3;
}

uint64_t __37__HMMRTCSessionManager_sharedManager__block_invoke()
{
  sharedManager__hmf_once_v1 = objc_alloc_init(HMMRTCSessionManager);

  return MEMORY[0x2821F96F8]();
}

@end