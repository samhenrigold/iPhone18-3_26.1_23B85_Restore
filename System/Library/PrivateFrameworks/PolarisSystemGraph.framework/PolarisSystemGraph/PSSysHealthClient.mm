@interface PSSysHealthClient
- (PSSysHealthClient)initWithName:(id)name;
- (void)dealloc;
- (void)updateSystemHealth:(pssh_health_state_s *)health;
- (void)updateSystemHealthWithProfile:(unint64_t)profile missesAllowed:(id)allowed poll_interval_secs:(unsigned int)poll_interval_secs;
@end

@implementation PSSysHealthClient

- (PSSysHealthClient)initWithName:(id)name
{
  nameCopy = name;
  v10.receiver = self;
  v10.super_class = PSSysHealthClient;
  v5 = [(PSSysHealthClient *)&v10 init];
  v6 = v5;
  if (v5)
  {
    [(PSSysHealthClient *)v5 setName:nameCopy];
    v7 = [[PSSGClient alloc] initWithSessionName:nameCopy delegate:0];
    [(PSSysHealthClient *)v6 setSystemGraphClient:v7];

    systemGraphClient = [(PSSysHealthClient *)v6 systemGraphClient];
    [systemGraphClient registerClient];
  }

  return v6;
}

- (void)updateSystemHealth:(pssh_health_state_s *)health
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = __PSSysHealthLogSharedInstance(self, a2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    uTF8String = [(NSString *)self->_name UTF8String];
    v7 = [(PSSysHealthClient *)self stringifyHealthData:health];
    v10 = 136315394;
    v11 = uTF8String;
    v12 = 2080;
    uTF8String2 = [v7 UTF8String];
    _os_log_impl(&dword_25ECD8000, v5, OS_LOG_TYPE_INFO, "SysHealth req: %s->%s", &v10, 0x16u);
  }

  systemGraphClient = self->_systemGraphClient;
  v9 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:health length:16 freeWhenDone:1];
  [(PSSGClient *)systemGraphClient updateSystemHealth:v9];
}

- (void)updateSystemHealthWithProfile:(unint64_t)profile missesAllowed:(id)allowed poll_interval_secs:(unsigned int)poll_interval_secs
{
  v26 = *MEMORY[0x277D85DE8];
  allowedCopy = allowed;
  v9 = malloc_type_malloc(0x10uLL, 0x1000040451B5BE8uLL);
  v9[1] = 0;
  *v9 = profile;
  if (allowedCopy)
  {
    poll_interval_secsCopy = poll_interval_secs;
    selfCopy = self;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v10 = allowedCopy;
    v11 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v22;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v22 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v21 + 1) + 8 * i);
          v16 = [v10 objectForKeyedSubscript:v15];
          intValue = [v16 intValue];
          *(v9 + [v15 intValue] + 8) = intValue;
        }

        v12 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v12);
    }

    self = selfCopy;
    v18 = poll_interval_secsCopy;
  }

  else
  {
    v18 = 0;
  }

  *(v9 + 3) = v18;
  [(PSSysHealthClient *)self updateSystemHealth:v9];
}

- (void)dealloc
{
  systemGraphClient = [(PSSysHealthClient *)self systemGraphClient];
  [systemGraphClient deregisterClient];

  v4.receiver = self;
  v4.super_class = PSSysHealthClient;
  [(PSSysHealthClient *)&v4 dealloc];
}

@end