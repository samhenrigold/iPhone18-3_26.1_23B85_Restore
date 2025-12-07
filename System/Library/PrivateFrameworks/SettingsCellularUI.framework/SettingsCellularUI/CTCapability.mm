@interface CTCapability
- (BOOL)getCapabilityForSlotID:(int64_t)d;
- (BOOL)getCapabilityInfo:(id)info forSlotID:(int64_t)d;
- (BOOL)getEnabledForSlotID:(int64_t)d;
- (CTCapability)initWithCapabilityName:(id)name;
- (id)getCapabilityInfoObject:(id)object forSlotID:(int64_t)d;
- (void)acceptCapabilityforSlotID:(int64_t)d status:(BOOL)status canSet:(BOOL)set info:(id)info;
- (void)reset;
- (void)setCapabilityInfo:(id)info forSlotID:(int64_t)d;
- (void)setCapabilityInfoObject:(id)object forKey:(id)key forSlotID:(int64_t)d;
- (void)setCapable:(BOOL)capable forSlotID:(int64_t)d;
- (void)setEnabled:(BOOL)enabled forSlotID:(int64_t)d;
@end

@implementation CTCapability

- (CTCapability)initWithCapabilityName:(id)name
{
  nameCopy = name;
  v13.receiver = self;
  v13.super_class = CTCapability;
  v6 = [(CTCapability *)&v13 init];
  v7 = v6;
  if (v6)
  {
    [(CTCapability *)v6 reset];
    objc_storeStrong(&v7->_capabilityName, name);
    v8 = objc_opt_new();
    capabilityFetched = v7->_capabilityFetched;
    v7->_capabilityFetched = v8;

    v10 = objc_opt_new();
    enabledFetched = v7->_enabledFetched;
    v7->_enabledFetched = v10;
  }

  return v7;
}

- (void)acceptCapabilityforSlotID:(int64_t)d status:(BOOL)status canSet:(BOOL)set info:(id)info
{
  setCopy = set;
  statusCopy = status;
  infoCopy = info;
  v19 = [(CTCapability *)self slotNum:d];
  v11 = [MEMORY[0x277CCABB0] numberWithBool:setCopy];
  capability = [(CTCapability *)self capability];
  [capability setObject:v11 forKeyedSubscript:v19];

  v13 = [MEMORY[0x277CCABB0] numberWithBool:statusCopy];
  enabledDict = [(CTCapability *)self enabledDict];
  [enabledDict setObject:v13 forKeyedSubscript:v19];

  capabilityInfo = [(CTCapability *)self capabilityInfo];
  [capabilityInfo setObject:infoCopy forKeyedSubscript:v19];

  capabilityFetched = [(CTCapability *)self capabilityFetched];
  v17 = MEMORY[0x277CBEC38];
  [capabilityFetched setObject:MEMORY[0x277CBEC38] forKeyedSubscript:v19];

  enabledFetched = [(CTCapability *)self enabledFetched];
  [enabledFetched setObject:v17 forKeyedSubscript:v19];
}

- (void)setCapable:(BOOL)capable forSlotID:(int64_t)d
{
  v8 = [MEMORY[0x277CCABB0] numberWithBool:capable];
  capability = [(CTCapability *)self capability];
  v7 = [(CTCapability *)self slotNum:d];
  [capability setObject:v8 forKeyedSubscript:v7];
}

- (BOOL)getCapabilityForSlotID:(int64_t)d
{
  capability = [(CTCapability *)self capability];
  v6 = [(CTCapability *)self slotNum:d];
  v7 = [capability objectForKeyedSubscript:v6];
  bOOLValue = [v7 BOOLValue];

  return bOOLValue;
}

- (void)setCapabilityInfo:(id)info forSlotID:(int64_t)d
{
  infoCopy = info;
  capabilityInfo = [(CTCapability *)self capabilityInfo];
  v7 = [(CTCapability *)self slotNum:d];
  [capabilityInfo setObject:infoCopy forKeyedSubscript:v7];
}

- (BOOL)getCapabilityInfo:(id)info forSlotID:(int64_t)d
{
  v4 = [(CTCapability *)self getCapabilityInfoObject:info forSlotID:d];
  bOOLValue = [v4 BOOLValue];

  return bOOLValue;
}

- (id)getCapabilityInfoObject:(id)object forSlotID:(int64_t)d
{
  objectCopy = object;
  capabilityInfo = [(CTCapability *)self capabilityInfo];
  v8 = [(CTCapability *)self slotNum:d];
  v9 = [capabilityInfo objectForKeyedSubscript:v8];
  v10 = [v9 objectForKeyedSubscript:objectCopy];

  return v10;
}

- (void)setCapabilityInfoObject:(id)object forKey:(id)key forSlotID:(int64_t)d
{
  v20 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  keyCopy = key;
  v10 = [(CTCapability *)self slotNum:d];
  enabledFetched = [(CTCapability *)self enabledFetched];
  v12 = [enabledFetched objectForKeyedSubscript:v10];
  v13 = [v12 isEqual:MEMORY[0x277CBEC38]];

  if (v13)
  {
    capabilityInfo = [(CTCapability *)self capabilityInfo];
    v15 = [capabilityInfo objectForKeyedSubscript:v10];

    v16 = [v15 mutableCopy];
    [v16 setObject:objectCopy forKeyedSubscript:keyCopy];
    capabilityInfo2 = [(CTCapability *)self capabilityInfo];
    [capabilityInfo2 setObject:v16 forKeyedSubscript:v10];
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v18 = 136315138;
    v19 = "[CTCapability setCapabilityInfoObject:forKey:forSlotID:]";
    _os_log_error_impl(&dword_2658DE000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s: DONOTHING, not fetched", &v18, 0xCu);
  }
}

- (void)setEnabled:(BOOL)enabled forSlotID:(int64_t)d
{
  v8 = [MEMORY[0x277CCABB0] numberWithBool:enabled];
  enabledDict = [(CTCapability *)self enabledDict];
  v7 = [(CTCapability *)self slotNum:d];
  [enabledDict setObject:v8 forKeyedSubscript:v7];
}

- (BOOL)getEnabledForSlotID:(int64_t)d
{
  enabledDict = [(CTCapability *)self enabledDict];
  v6 = [(CTCapability *)self slotNum:d];
  v7 = [enabledDict objectForKeyedSubscript:v6];
  bOOLValue = [v7 BOOLValue];

  return bOOLValue;
}

- (void)reset
{
  v3 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:2];
  [(CTCapability *)self setCapabilityFetched:v3];

  v4 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:2];
  [(CTCapability *)self setEnabledFetched:v4];

  v5 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:2];
  [(CTCapability *)self setCapability:v5];

  v6 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:2];
  [(CTCapability *)self setCapabilityInfo:v6];

  v7 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:2];
  [(CTCapability *)self setEnabledDict:v7];
}

@end