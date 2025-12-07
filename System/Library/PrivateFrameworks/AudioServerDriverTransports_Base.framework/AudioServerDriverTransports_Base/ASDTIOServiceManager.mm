@interface ASDTIOServiceManager
+ (id)dependencyForConfiguration:(id)configuration;
+ (id)dependencyForID:(id)d andConfiguration:(id)configuration;
+ (id)dependencyForIdentifier:(id)identifier andConfiguration:(id)configuration;
+ (id)forIOServiceWithClassName:(id)name withIDProperty:(id)property managerClass:(Class)class;
+ (id)get;
+ (id)matchedIOServiceForID:(id)d;
+ (void)resetAll;
- (NSArray)delegateList;
- (id)allocateMatcher;
- (id)createIOServiceForIOObject:(unsigned int)object andIDValue:(id)value;
- (id)findOrAddIOServiceForID:(id)d;
- (id)getIdentifierForIOObject:(unsigned int)object withProperties:(id)properties;
- (id)initForIOServiceWithClassName:(id)name andIDProperty:(id)property;
- (id)matchedIOServiceForID:(id)d;
- (void)addDelegate:(id)delegate forIDValues:(id)values;
- (void)ioServiceWillTerminate:(unsigned int)terminate withProperties:(id)properties;
- (void)matchedIOService:(unsigned int)service withProperties:(id)properties;
- (void)removeDelegate:(id)delegate;
- (void)reset;
@end

@implementation ASDTIOServiceManager

+ (id)forIOServiceWithClassName:(id)name withIDProperty:(id)property managerClass:(Class)class
{
  nameCopy = name;
  propertyCopy = property;
  if (forIOServiceWithClassName_withIDProperty_managerClass__predicate == -1)
  {
    if (class)
    {
LABEL_3:
      v9 = [(objc_class *)class isSubclassOfClass:objc_opt_class()];
      v10 = 0;
      if (!nameCopy || (v9 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }
  }

  else
  {
    +[ASDTIOServiceManager forIOServiceWithClassName:withIDProperty:managerClass:];
    if (class)
    {
      goto LABEL_3;
    }
  }

  if (!nameCopy)
  {
LABEL_9:
    v10 = 0;
    goto LABEL_15;
  }

LABEL_8:
  if ([nameCopy isEqualToString:&stru_28534DD28])
  {
    goto LABEL_9;
  }

  [gServiceManagerLock lock];
  v11 = [gServiceManagerDictionary objectForKey:nameCopy];
  v10 = v11;
  if (class)
  {
    if (!v11)
    {
      v10 = [[class alloc] initForIOServiceWithClassName:nameCopy andIDProperty:propertyCopy];
      if (v10)
      {
        [gServiceManagerDictionary setObject:v10 forKey:nameCopy];
      }
    }
  }

  [gServiceManagerLock unlock];
LABEL_15:

  return v10;
}

uint64_t __78__ASDTIOServiceManager_forIOServiceWithClassName_withIDProperty_managerClass___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCAAF8]);
  v1 = gServiceManagerLock;
  gServiceManagerLock = v0;

  [gServiceManagerLock setName:@"com.apple.AudioServerDriverTransports.ASDTIOServiceManager"];
  gServiceManagerDictionary = [MEMORY[0x277CBEB38] dictionary];

  return MEMORY[0x2821F96F8]();
}

+ (id)get
{
  ioServiceClassName = [self ioServiceClassName];
  ioServiceIDProperty = [self ioServiceIDProperty];
  v5 = [self forIOServiceWithClassName:ioServiceClassName withIDProperty:ioServiceIDProperty managerClass:self];

  return v5;
}

- (id)initForIOServiceWithClassName:(id)name andIDProperty:(id)property
{
  nameCopy = name;
  propertyCopy = property;
  v10 = propertyCopy;
  if (!nameCopy || (propertyCopy = [nameCopy isEqualToString:&stru_28534DD28], propertyCopy))
  {
    v11 = ASDTBaseLogType(propertyCopy, v9);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [ASDTIOServiceManager initForIOServiceWithClassName:v11 andIDProperty:?];
    }

    if (!nameCopy || [nameCopy isEqualToString:&stru_28534DD28])
    {
      [ASDTIOServiceManager initForIOServiceWithClassName:a2 andIDProperty:self];
    }
  }

  v41.receiver = self;
  v41.super_class = ASDTIOServiceManager;
  v12 = [(ASDTIOServiceManager *)&v41 init];
  v13 = v12;
  if (!v12)
  {
    goto LABEL_13;
  }

  [(ASDTIOServiceManager *)v12 setIdProperty:v10];
  [(ASDTIOServiceManager *)v13 setIoServiceClassName:nameCopy];
  v14 = MEMORY[0x277CCACA8];
  v15 = objc_opt_class();
  v16 = NSStringFromClass(v15);
  ioServiceClassName = [(ASDTIOServiceManager *)v13 ioServiceClassName];
  v18 = [v14 stringWithFormat:@"%@.%@", v16, ioServiceClassName];
  [(ASDTIOServiceManager *)v13 setName:v18];

  v19 = MEMORY[0x277CCACA8];
  name = [(ASDTIOServiceManager *)v13 name];
  v21 = [v19 stringWithFormat:@"%s.%@", "com.apple.AudioServerDriverTransports", name];
  v22 = [ASDTCondition conditionWithName:v21];
  [(ASDTIOServiceManager *)v13 setCond:v22];

  array = [MEMORY[0x277CBEB18] array];
  [(ASDTIOServiceManager *)v13 setDelegates:array];

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [(ASDTIOServiceManager *)v13 setIoServices:dictionary];

  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  [(ASDTIOServiceManager *)v13 setIoServicesByIdentifier:dictionary2];

  cond = [(ASDTIOServiceManager *)v13 cond];
  if (!cond)
  {
    goto LABEL_16;
  }

  v28 = cond;
  delegates = [(ASDTIOServiceManager *)v13 delegates];
  if (!delegates)
  {
    goto LABEL_15;
  }

  v30 = delegates;
  ioServices = [(ASDTIOServiceManager *)v13 ioServices];
  if (!ioServices)
  {

LABEL_15:
LABEL_16:
    v39 = ASDTBaseLogType(cond, v27);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      [ASDTPMAction initWithConfig:v13 forSequencer:?];
    }

    goto LABEL_18;
  }

  v32 = ioServices;
  ioServicesByIdentifier = [(ASDTIOServiceManager *)v13 ioServicesByIdentifier];

  if (!ioServicesByIdentifier)
  {
    goto LABEL_16;
  }

  allocateMatcher = [(ASDTIOServiceManager *)v13 allocateMatcher];
  [(ASDTIOServiceManager *)v13 setMatcher:allocateMatcher];

  matcher = [(ASDTIOServiceManager *)v13 matcher];

  if (!matcher)
  {
    v39 = ASDTBaseLogType(v36, v37);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      [ASDTIOServiceManager initForIOServiceWithClassName:v13 andIDProperty:?];
    }

LABEL_18:

    v38 = 0;
    goto LABEL_19;
  }

LABEL_13:
  v38 = v13;
LABEL_19:

  return v38;
}

- (id)allocateMatcher
{
  v3 = objc_alloc([objc_opt_class() ioServiceMatcherClass]);
  ioServiceClassName = [(ASDTIOServiceManager *)self ioServiceClassName];
  v5 = [v3 initForIOServiceWithClassName:ioServiceClassName withDelegate:self];

  return v5;
}

- (NSArray)delegateList
{
  cond = [(ASDTIOServiceManager *)self cond];
  [cond lock];

  delegates = [(ASDTIOServiceManager *)self delegates];
  v5 = [delegates copy];

  cond2 = [(ASDTIOServiceManager *)self cond];
  [cond2 unlock];

  return v5;
}

- (id)createIOServiceForIOObject:(unsigned int)object andIDValue:(id)value
{
  v4 = *&object;
  v22 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  v7 = [(ASDTIOServiceManager *)self serviceForIOObject:v4 andIDValue:valueCopy];
  v9 = ASDTBaseLogType(v7, v8);
  v10 = v9;
  if (v7)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      name = [(ASDTIOServiceManager *)self name];
      idProperty = [(ASDTIOServiceManager *)self idProperty];
      if (idProperty)
      {
        idProperty2 = [(ASDTIOServiceManager *)self idProperty];
      }

      else
      {
        idProperty2 = @"identifier";
      }

      v18 = 138412802;
      v19 = name;
      v20 = 2112;
      *v21 = idProperty2;
      *&v21[8] = 2112;
      *&v21[10] = valueCopy;
      _os_log_impl(&dword_241659000, v10, OS_LOG_TYPE_DEFAULT, "%@: IOService with %@ '%@' is ready.", &v18, 0x20u);
      if (idProperty)
      {
      }
    }

    ioServices = [(ASDTIOServiceManager *)self ioServices];
    [ioServices setObject:v7 forKey:valueCopy];

    v15 = v7;
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      name2 = [(ASDTIOServiceManager *)self name];
      v18 = 138412802;
      v19 = name2;
      v20 = 1024;
      *v21 = v4;
      *&v21[4] = 2112;
      *&v21[6] = valueCopy;
      _os_log_error_impl(&dword_241659000, v10, OS_LOG_TYPE_ERROR, "%@: Failed creating object for IOService: %x with ID: %@", &v18, 0x1Cu);
    }
  }

  return v7;
}

- (id)findOrAddIOServiceForID:(id)d
{
  dCopy = d;
  ioServices = [(ASDTIOServiceManager *)self ioServices];
  v6 = [ioServices objectForKey:dCopy];

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    ioServicesByIdentifier = [(ASDTIOServiceManager *)self ioServicesByIdentifier];
    identifier = [dCopy identifier];
    v10 = [ioServicesByIdentifier objectForKey:identifier];

    if (v10)
    {
      v7 = -[ASDTIOServiceManager createIOServiceForIOObject:andIDValue:](self, "createIOServiceForIOObject:andIDValue:", [v10 ioObject], dCopy);
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (void)addDelegate:(id)delegate forIDValues:(id)values
{
  v82 = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  valuesCopy = values;
  cond = [(ASDTIOServiceManager *)self cond];
  [cond lock];

  matcher = [(ASDTIOServiceManager *)self matcher];

  if (!matcher)
  {
    v13 = ASDTBaseLogType(v11, v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [ASDTIOServiceManager addDelegate:? forIDValues:?];
    }

    matcher2 = [(ASDTIOServiceManager *)self matcher];

    if (!matcher2)
    {
      [ASDTIOServiceManager addDelegate:a2 forIDValues:?];
    }
  }

  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  delegates = [(ASDTIOServiceManager *)self delegates];
  v16 = [delegates countByEnumeratingWithState:&v73 objects:v81 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v74;
    while (2)
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v74 != v18)
        {
          objc_enumerationMutation(delegates);
        }

        v20 = *(*(&v73 + 1) + 8 * i);
        delegate = [v20 delegate];

        if (delegate == delegateCopy)
        {
          if (valuesCopy)
          {
            v25 = [MEMORY[0x277CBEB58] set];
            idValues = [v20 idValues];
            v27 = [idValues count];

            if (v27)
            {
              idValues2 = [v20 idValues];
              allObjects = [idValues2 allObjects];
              [v25 addObjectsFromArray:allObjects];
            }

            [v25 addObjectsFromArray:valuesCopy];
            v30 = [v25 copy];
            [v20 setIdValues:v30];
          }

          else
          {
            [v20 setIdValues:0];
          }

          goto LABEL_21;
        }
      }

      v17 = [delegates countByEnumeratingWithState:&v73 objects:v81 count:16];
      if (v17)
      {
        continue;
      }

      break;
    }
  }

  v22 = [ASDTIOServiceManagerDelegateProxy forDelegate:delegateCopy andIDValues:valuesCopy];
  if (v22)
  {
    delegates = v22;
    delegates2 = [(ASDTIOServiceManager *)self delegates];
    [delegates2 addObject:delegates];

LABEL_21:
    v33 = ASDTBaseLogType(v31, v32);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
    {
      [ASDTIOServiceManager addDelegate:forIDValues:];
    }

    array = [MEMORY[0x277CBEB18] array];
    array2 = [MEMORY[0x277CBEB18] array];
    v36 = array2;
    if (valuesCopy)
    {
      [array2 addObjectsFromArray:valuesCopy];
    }

    else
    {
      v60 = delegateCopy;
      v71 = 0u;
      v72 = 0u;
      v69 = 0u;
      v70 = 0u;
      ioServicesByIdentifier = [(ASDTIOServiceManager *)self ioServicesByIdentifier];
      allKeys = [ioServicesByIdentifier allKeys];

      v39 = allKeys;
      v40 = [allKeys countByEnumeratingWithState:&v69 objects:v80 count:16];
      if (v40)
      {
        v41 = v40;
        v42 = *v70;
        do
        {
          for (j = 0; j != v41; ++j)
          {
            if (*v70 != v42)
            {
              objc_enumerationMutation(v39);
            }

            v45 = [ASDTIOServiceID forIdentifier:*(*(&v69 + 1) + 8 * j) andClientType:0];
            if (v45)
            {
              [v36 addObject:v45];
            }

            else
            {
              v46 = ASDTBaseLogType(0, v44);
              if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
              {
                [ASDTIOServiceManager addDelegate:v79 forIDValues:self];
              }
            }
          }

          v41 = [v39 countByEnumeratingWithState:&v69 objects:v80 count:16];
        }

        while (v41);
      }

      delegateCopy = v60;
      valuesCopy = 0;
    }

    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v47 = v36;
    v48 = [v47 countByEnumeratingWithState:&v65 objects:v78 count:16];
    if (v48)
    {
      v49 = v48;
      v50 = *v66;
      do
      {
        for (k = 0; k != v49; ++k)
        {
          if (*v66 != v50)
          {
            objc_enumerationMutation(v47);
          }

          v52 = [(ASDTIOServiceManager *)self findOrAddIOServiceForID:*(*(&v65 + 1) + 8 * k)];
          if (v52)
          {
            [array addObject:v52];
          }
        }

        v49 = [v47 countByEnumeratingWithState:&v65 objects:v78 count:16];
      }

      while (v49);
    }

    cond2 = [(ASDTIOServiceManager *)self cond];
    [cond2 unlock];

    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    cond3 = array;
    v55 = [cond3 countByEnumeratingWithState:&v61 objects:v77 count:16];
    if (v55)
    {
      v56 = v55;
      v57 = *v62;
      do
      {
        for (m = 0; m != v56; ++m)
        {
          if (*v62 != v57)
          {
            objc_enumerationMutation(cond3);
          }

          [delegateCopy ioServiceAvailable:*(*(&v61 + 1) + 8 * m) withManager:self];
        }

        v56 = [cond3 countByEnumeratingWithState:&v61 objects:v77 count:16];
      }

      while (v56);
    }
  }

  else
  {
    v59 = ASDTBaseLogType(0, v23);
    if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
    {
      [ASDTPMAction initWithConfig:? forSequencer:?];
    }

    cond3 = [(ASDTIOServiceManager *)self cond];
    [cond3 unlock];
  }
}

- (void)removeDelegate:(id)delegate
{
  v23 = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  cond = [(ASDTIOServiceManager *)self cond];
  [cond lock];

  v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:1];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  delegates = [(ASDTIOServiceManager *)self delegates];
  v8 = [delegates countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(delegates);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        delegate = [v12 delegate];
        if (delegate)
        {
          v14 = delegate;
          delegate2 = [v12 delegate];

          if (delegate2 != delegateCopy)
          {
            continue;
          }
        }

        [v6 addObject:v12];
      }

      v9 = [delegates countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  delegates2 = [(ASDTIOServiceManager *)self delegates];
  [delegates2 removeObjectsInArray:v6];

  cond2 = [(ASDTIOServiceManager *)self cond];
  [cond2 unlock];
}

- (id)matchedIOServiceForID:(id)d
{
  if (d)
  {
    dCopy = d;
    cond = [(ASDTIOServiceManager *)self cond];
    [cond lock];

    v6 = [(ASDTIOServiceManager *)self findOrAddIOServiceForID:dCopy];

    cond2 = [(ASDTIOServiceManager *)self cond];
    [cond2 unlock];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)matchedIOServiceForID:(id)d
{
  dCopy = d;
  v5 = [self get];
  v6 = [v5 matchedIOServiceForID:dCopy];

  return v6;
}

- (id)getIdentifierForIOObject:(unsigned int)object withProperties:(id)properties
{
  v4 = *&object;
  propertiesCopy = properties;
  idProperty = [(ASDTIOServiceManager *)self idProperty];

  if (idProperty)
  {
    idProperty2 = [(ASDTIOServiceManager *)self idProperty];
    v9 = [propertiesCopy objectForKey:idProperty2];

    if (!v9)
    {
      v12 = ASDTBaseLogType(v10, v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [ASDTIOServiceManager getIdentifierForIOObject:? withProperties:?];
      }

      v9 = 0;
    }
  }

  else
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"0x%08x", v4];
  }

  return v9;
}

- (void)matchedIOService:(unsigned int)service withProperties:(id)properties
{
  v4 = *&service;
  v113 = *MEMORY[0x277D85DE8];
  propertiesCopy = properties;
  v78 = v4;
  v7 = [(ASDTIOServiceManager *)self getIdentifierForIOObject:v4 withProperties:propertiesCopy];
  if (v7 && [(ASDTIOServiceManager *)self ioServiceCanBeAdded:propertiesCopy])
  {
    cond = [(ASDTIOServiceManager *)self cond];
    [cond lock];

    selfCopy = self;
    ioServicesByIdentifier = [(ASDTIOServiceManager *)self ioServicesByIdentifier];
    v10 = [ioServicesByIdentifier objectForKey:v7];

    v79 = v7;
    if (v10)
    {
      v13 = ASDTBaseLogType(v11, v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [ASDTIOServiceManager matchedIOService:withProperties:];
      }

      cond2 = [(ASDTIOServiceManager *)self cond];
      [cond2 unlock];
      goto LABEL_78;
    }

    v72 = [ASDTIOServiceID forIdentifier:v7 andClientType:0];
    v15 = [ASDTIOService forIOObject:v78 andIDValue:?];
    if (v15)
    {
      v10 = v15;
      selfCopy2 = self;
      ioServicesByIdentifier2 = [(ASDTIOServiceManager *)self ioServicesByIdentifier];
      [ioServicesByIdentifier2 setObject:v10 forKey:v7];

      v21 = ASDTBaseLogType(v19, v20);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        name = [(ASDTIOServiceManager *)self name];
        idProperty = [(ASDTIOServiceManager *)selfCopy idProperty];
        if (idProperty)
        {
          idProperty2 = [(ASDTIOServiceManager *)selfCopy idProperty];
        }

        else
        {
          idProperty2 = @"identifier";
        }

        *buf = 138412802;
        v108 = name;
        v109 = 2112;
        v110 = idProperty2;
        v111 = 2112;
        v112 = v7;
        _os_log_impl(&dword_241659000, v21, OS_LOG_TYPE_DEFAULT, "%@: IOServices with %@ '%@' ready to match.", buf, 0x20u);
        if (idProperty)
        {
        }

        selfCopy2 = selfCopy;
      }

      v100 = 0u;
      v101 = 0u;
      v98 = 0u;
      v99 = 0u;
      obj = [(ASDTIOServiceManager *)selfCopy2 delegates];
      v76 = [obj countByEnumeratingWithState:&v98 objects:v106 count:16];
      v71 = propertiesCopy;
      if (v76)
      {
        v81 = 0;
        v74 = 0;
        v75 = *v99;
        while (1)
        {
          for (i = 0; i != v76; ++i)
          {
            if (*v99 != v75)
            {
              objc_enumerationMutation(obj);
            }

            v28 = *(*(&v98 + 1) + 8 * i);
            delegate = [v28 delegate];

            if (delegate)
            {
              v77 = i;
              v30 = [MEMORY[0x277CBEB18] arrayWithCapacity:2];
              idValues = [v28 idValues];
              v32 = [idValues count];

              if (v32)
              {
                v96 = 0u;
                v97 = 0u;
                v94 = 0u;
                v95 = 0u;
                idValues2 = [v28 idValues];
                v34 = [idValues2 countByEnumeratingWithState:&v94 objects:v105 count:16];
                if (v34)
                {
                  v35 = v34;
                  v36 = *v95;
                  do
                  {
                    for (j = 0; j != v35; ++j)
                    {
                      if (*v95 != v36)
                      {
                        objc_enumerationMutation(idValues2);
                      }

                      v38 = *(*(&v94 + 1) + 8 * j);
                      identifier = [v38 identifier];
                      v40 = [identifier isEqual:v79];

                      if (v40)
                      {
                        [v30 addObject:v38];
                      }
                    }

                    v35 = [idValues2 countByEnumeratingWithState:&v94 objects:v105 count:16];
                  }

                  while (v35);
                }

                selfCopy2 = selfCopy;
              }

              else
              {
                [v30 addObject:v72];
              }

              v92 = 0u;
              v93 = 0u;
              v90 = 0u;
              v91 = 0u;
              v42 = v30;
              v43 = [v42 countByEnumeratingWithState:&v90 objects:v104 count:16];
              if (v43)
              {
                v44 = v43;
                v45 = *v91;
                do
                {
                  for (k = 0; k != v44; ++k)
                  {
                    if (*v91 != v45)
                    {
                      objc_enumerationMutation(v42);
                    }

                    v47 = *(*(&v90 + 1) + 8 * k);
                    ioServices = [(ASDTIOServiceManager *)selfCopy2 ioServices];
                    v49 = [ioServices objectForKey:v47];

                    if (v49)
                    {
                      v10 = v49;
                    }

                    else
                    {
                      v10 = [(ASDTIOServiceManager *)selfCopy2 createIOServiceForIOObject:v78 andIDValue:v47];
                      if (!v10)
                      {
                        continue;
                      }
                    }

                    delegate2 = [v28 delegate];
                    v51 = [ASDTIOServiceManagerDelegatePair forDelegate:delegate2 andIOService:v10];

                    if (v51)
                    {
                      v54 = v81;
                      if (!v81)
                      {
                        v54 = [MEMORY[0x277CBEB18] arrayWithCapacity:2];
                      }

                      v81 = v54;
                      [v54 addObject:v51];
                      selfCopy2 = selfCopy;
                    }

                    else
                    {
                      v55 = ASDTBaseLogType(v52, v53);
                      selfCopy2 = selfCopy;
                      if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
                      {
                        [ASDTIOServiceManager matchedIOService:buf withProperties:selfCopy];
                      }
                    }
                  }

                  v44 = [v42 countByEnumeratingWithState:&v90 objects:v104 count:16];
                }

                while (v44);
              }

              i = v77;
            }

            else
            {
              v41 = v74;
              if (!v74)
              {
                v41 = [MEMORY[0x277CBEB18] arrayWithCapacity:2];
              }

              v74 = v41;
              [v41 addObject:v28];
            }
          }

          v76 = [obj countByEnumeratingWithState:&v98 objects:v106 count:16];
          if (!v76)
          {
            goto LABEL_62;
          }
        }
      }

      v74 = 0;
      v81 = 0;
LABEL_62:

      v88 = 0u;
      v89 = 0u;
      v86 = 0u;
      v87 = 0u;
      v56 = v74;
      v57 = [v56 countByEnumeratingWithState:&v86 objects:v103 count:16];
      if (v57)
      {
        v58 = v57;
        v59 = *v87;
        do
        {
          for (m = 0; m != v58; ++m)
          {
            if (*v87 != v59)
            {
              objc_enumerationMutation(v56);
            }

            v61 = *(*(&v86 + 1) + 8 * m);
            delegates = [(ASDTIOServiceManager *)selfCopy delegates];
            [delegates removeObject:v61];
          }

          v58 = [v56 countByEnumeratingWithState:&v86 objects:v103 count:16];
        }

        while (v58);
      }

      cond3 = [(ASDTIOServiceManager *)selfCopy cond];
      [cond3 unlock];

      v84 = 0u;
      v85 = 0u;
      v82 = 0u;
      v83 = 0u;
      cond4 = v81;
      v64 = [cond4 countByEnumeratingWithState:&v82 objects:v102 count:16];
      if (v64)
      {
        v65 = v64;
        v66 = *v83;
        do
        {
          for (n = 0; n != v65; ++n)
          {
            if (*v83 != v66)
            {
              objc_enumerationMutation(cond4);
            }

            v68 = *(*(&v82 + 1) + 8 * n);
            delegate3 = [v68 delegate];
            ioService = [v68 ioService];
            [delegate3 ioServiceAvailable:ioService withManager:selfCopy];
          }

          v65 = [cond4 countByEnumeratingWithState:&v82 objects:v102 count:16];
        }

        while (v65);
      }

      propertiesCopy = v71;
    }

    else
    {
      v25 = ASDTBaseLogType(0, v16);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        [ASDTIOServiceManager matchedIOService:withProperties:];
      }

      cond4 = [(ASDTIOServiceManager *)self cond];
      [cond4 unlock];
      v10 = 0;
    }

    cond2 = v72;
LABEL_78:

    v7 = v79;
  }
}

- (void)ioServiceWillTerminate:(unsigned int)terminate withProperties:(id)properties
{
  v5 = *&terminate;
  v139 = *MEMORY[0x277D85DE8];
  propertiesCopy = properties;
  v8 = [(ASDTIOServiceManager *)self getIdentifierForIOObject:v5 withProperties:propertiesCopy];
  if (v8)
  {
    cond = [(ASDTIOServiceManager *)self cond];
    [cond lock];

    ioServicesByIdentifier = [(ASDTIOServiceManager *)self ioServicesByIdentifier];
    v11 = [ioServicesByIdentifier objectForKey:v8];

    if (v11)
    {
      v84 = v11;
      v85 = propertiesCopy;
      v86 = [MEMORY[0x277CBEB58] setWithCapacity:2];
      v120 = 0u;
      v121 = 0u;
      v122 = 0u;
      v123 = 0u;
      selfCopy = self;
      ioServices = [(ASDTIOServiceManager *)self ioServices];
      allKeys = [ioServices allKeys];

      v17 = [allKeys countByEnumeratingWithState:&v120 objects:v138 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v121;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v121 != v19)
            {
              objc_enumerationMutation(allKeys);
            }

            v21 = *(*(&v120 + 1) + 8 * i);
            identifier = [v21 identifier];
            v23 = [identifier isEqualToString:v8];

            if (v23)
            {
              [v86 addObject:v21];
            }
          }

          v18 = [allKeys countByEnumeratingWithState:&v120 objects:v138 count:16];
        }

        while (v18);
      }

      v118 = 0u;
      v119 = 0u;
      v116 = 0u;
      v117 = 0u;
      v24 = selfCopy;
      obj = [(ASDTIOServiceManager *)selfCopy delegates];
      v95 = v8;
      v90 = [obj countByEnumeratingWithState:&v116 objects:v137 count:16];
      v25 = 0;
      v26 = 0;
      if (v90)
      {
        v89 = *v117;
        do
        {
          v27 = 0;
          do
          {
            if (*v117 != v89)
            {
              objc_enumerationMutation(obj);
            }

            v28 = *(*(&v116 + 1) + 8 * v27);
            delegate = [v28 delegate];

            if (delegate)
            {
              v92 = v27;
              delegate2 = [v28 delegate];
              v31 = objc_opt_respondsToSelector();

              if (v31)
              {
                v88 = v25;
                v93 = [MEMORY[0x277CBEB18] arrayWithCapacity:2];
                idValues = [v28 idValues];
                v33 = [idValues count];

                if (v33)
                {
                  v114 = 0u;
                  v115 = 0u;
                  v112 = 0u;
                  v113 = 0u;
                  idValues2 = [v28 idValues];
                  v35 = [idValues2 countByEnumeratingWithState:&v112 objects:v135 count:16];
                  if (v35)
                  {
                    v36 = v35;
                    v37 = *v113;
                    do
                    {
                      for (j = 0; j != v36; ++j)
                      {
                        if (*v113 != v37)
                        {
                          objc_enumerationMutation(idValues2);
                        }

                        v39 = *(*(&v112 + 1) + 8 * j);
                        identifier2 = [v39 identifier];
                        v40 = [identifier2 isEqualToString:v8];

                        if (v40)
                        {
                          [v93 addObject:v39];
                        }

                        v8 = v95;
                      }

                      v36 = [idValues2 countByEnumeratingWithState:&v112 objects:v135 count:16];
                    }

                    while (v36);
                    v24 = selfCopy;
                  }

LABEL_35:

                  v110 = 0u;
                  v111 = 0u;
                  v108 = 0u;
                  v109 = 0u;
                  v43 = v93;
                  v44 = [v43 countByEnumeratingWithState:&v108 objects:v134 count:16];
                  if (v44)
                  {
                    v45 = v44;
                    v46 = *v109;
                    do
                    {
                      for (k = 0; k != v45; ++k)
                      {
                        if (*v109 != v46)
                        {
                          objc_enumerationMutation(v43);
                        }

                        v48 = *(*(&v108 + 1) + 8 * k);
                        identifier2 = [(ASDTIOServiceManager *)selfCopy ioServices];
                        v49 = [identifier2 objectForKey:v48];

                        if (v49)
                        {
                          identifier2 = [v28 delegate];
                          v50 = [ASDTIOServiceManagerDelegatePair forDelegate:identifier2 andIOService:v49];

                          if (v50)
                          {
                            if (!v26)
                            {
                              v26 = [MEMORY[0x277CBEB18] arrayWithCapacity:2];
                            }

                            [v26 addObject:v50];
                          }

                          else
                          {
                            identifier2 = ASDTBaseLogType(v51, v52);
                            if (os_log_type_enabled(identifier2, OS_LOG_TYPE_ERROR))
                            {
                              [ASDTIOServiceManager matchedIOService:v133 withProperties:selfCopy];
                            }
                          }
                        }
                      }

                      v45 = [v43 countByEnumeratingWithState:&v108 objects:v134 count:16];
                    }

                    while (v45);
                    v8 = v95;
                    v24 = selfCopy;
                  }
                }

                else
                {
                  v41 = [ASDTIOServiceID forIdentifier:v8 andClientType:0];
                  if (v41)
                  {
                    idValues2 = v41;
                    [v93 addObject:v41];
                    goto LABEL_35;
                  }

                  v43 = ASDTBaseLogType(0, v42);
                  if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
                  {
                    [ASDTIOServiceManager matchedIOService:v136 withProperties:v24];
                  }
                }

                v25 = v88;
              }

              v27 = v92;
              goto LABEL_54;
            }

            if (!v25)
            {
              v25 = [MEMORY[0x277CBEB18] arrayWithCapacity:2];
            }

            [v25 addObject:v28];
LABEL_54:
            ++v27;
          }

          while (v27 != v90);
          v53 = [obj countByEnumeratingWithState:&v116 objects:v137 count:16];
          v90 = v53;
        }

        while (v53);
      }

      v106 = 0u;
      v107 = 0u;
      v104 = 0u;
      v105 = 0u;
      v54 = v25;
      v55 = [v54 countByEnumeratingWithState:&v104 objects:v132 count:16];
      if (v55)
      {
        v56 = v55;
        v57 = *v105;
        do
        {
          for (m = 0; m != v56; ++m)
          {
            if (*v105 != v57)
            {
              objc_enumerationMutation(v54);
            }

            v59 = *(*(&v104 + 1) + 8 * m);
            delegates = [(ASDTIOServiceManager *)selfCopy delegates];
            [delegates removeObject:v59];
          }

          v56 = [v54 countByEnumeratingWithState:&v104 objects:v132 count:16];
        }

        while (v56);
      }

      v91 = v54;

      v61 = selfCopy;
      ioServicesByIdentifier2 = [(ASDTIOServiceManager *)selfCopy ioServicesByIdentifier];
      [ioServicesByIdentifier2 removeObjectForKey:v8];

      v102 = 0u;
      v103 = 0u;
      v100 = 0u;
      v101 = 0u;
      v94 = v86;
      v63 = [v94 countByEnumeratingWithState:&v100 objects:v131 count:16];
      if (v63)
      {
        v65 = v63;
        v66 = *v101;
        do
        {
          v67 = 0;
          do
          {
            if (*v101 != v66)
            {
              objc_enumerationMutation(v94);
            }

            v68 = *(*(&v100 + 1) + 8 * v67);
            v69 = ASDTBaseLogType(v63, v64);
            if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
            {
              name = [(ASDTIOServiceManager *)v61 name];
              idProperty = [(ASDTIOServiceManager *)v61 idProperty];
              if (idProperty)
              {
                identifier2 = [(ASDTIOServiceManager *)v61 idProperty];
                v72 = identifier2;
              }

              else
              {
                v72 = @"identifier";
              }

              *buf = 138412802;
              v126 = name;
              v127 = 2112;
              v128 = v72;
              v129 = 2112;
              v130 = v68;
              _os_log_impl(&dword_241659000, v69, OS_LOG_TYPE_DEFAULT, "%@: IOService with %@ value '%@' will terminate.", buf, 0x20u);
              if (idProperty)
              {
              }
            }

            ioServices2 = [(ASDTIOServiceManager *)v61 ioServices];
            [ioServices2 removeObjectForKey:v68];

            ++v67;
          }

          while (v65 != v67);
          v63 = [v94 countByEnumeratingWithState:&v100 objects:v131 count:16];
          v65 = v63;
        }

        while (v63);
      }

      cond2 = [(ASDTIOServiceManager *)v61 cond];
      [cond2 unlock];

      v98 = 0u;
      v99 = 0u;
      v96 = 0u;
      v97 = 0u;
      cond3 = v26;
      v76 = [cond3 countByEnumeratingWithState:&v96 objects:v124 count:16];
      v8 = v95;
      if (v76)
      {
        v77 = v76;
        v78 = *v97;
        do
        {
          for (n = 0; n != v77; ++n)
          {
            if (*v97 != v78)
            {
              objc_enumerationMutation(cond3);
            }

            v80 = *(*(&v96 + 1) + 8 * n);
            delegate3 = [v80 delegate];
            ioService = [v80 ioService];
            [delegate3 ioServiceWillTerminate:ioService withManager:v61];
          }

          v77 = [cond3 countByEnumeratingWithState:&v96 objects:v124 count:16];
        }

        while (v77);
      }

      v11 = v84;
      propertiesCopy = v85;
    }

    else
    {
      v83 = ASDTBaseLogType(v12, v13);
      if (os_log_type_enabled(v83, OS_LOG_TYPE_DEBUG))
      {
        [ASDTIOServiceManager ioServiceWillTerminate:withProperties:];
      }

      cond3 = [(ASDTIOServiceManager *)self cond];
      [cond3 unlock];
    }
  }
}

- (void)reset
{
  cond = [(ASDTIOServiceManager *)self cond];
  [cond lock];

  ioServices = [(ASDTIOServiceManager *)self ioServices];
  [ioServices removeAllObjects];

  ioServicesByIdentifier = [(ASDTIOServiceManager *)self ioServicesByIdentifier];
  [ioServicesByIdentifier removeAllObjects];

  delegates = [(ASDTIOServiceManager *)self delegates];
  [delegates removeAllObjects];

  allocateMatcher = [(ASDTIOServiceManager *)self allocateMatcher];
  [(ASDTIOServiceManager *)self setMatcher:allocateMatcher];

  cond2 = [(ASDTIOServiceManager *)self cond];
  [cond2 unlock];
}

+ (void)resetAll
{
  v13 = *MEMORY[0x277D85DE8];
  [gServiceManagerLock lock];
  allValues = [gServiceManagerDictionary allValues];
  [gServiceManagerLock unlock];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v3 = allValues;
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7++) reset];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

+ (id)dependencyForID:(id)d andConfiguration:(id)configuration
{
  configurationCopy = configuration;
  dCopy = d;
  v8 = [self get];
  ioServiceClassName = [v8 ioServiceClassName];
  v10 = [ASDTIOServiceDependency forClassName:ioServiceClassName idValue:dCopy andConfiguration:configurationCopy];

  return v10;
}

+ (id)dependencyForIdentifier:(id)identifier andConfiguration:(id)configuration
{
  configurationCopy = configuration;
  identifierCopy = identifier;
  v8 = [self get];
  ioServiceClassName = [v8 ioServiceClassName];
  v10 = [ASDTIOServiceID forIdentifier:identifierCopy andClientType:0];

  v11 = [ASDTIOServiceDependency forClassName:ioServiceClassName idValue:v10 andConfiguration:configurationCopy];

  return v11;
}

+ (id)dependencyForConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v5 = [self get];
  ioServiceClassName = [v5 ioServiceClassName];
  v7 = [ASDTIOServiceDependency forAnyInstanceOfClassName:ioServiceClassName andConfiguration:configurationCopy];

  return v7;
}

- (void)initForIOServiceWithClassName:(uint64_t)a1 andIDProperty:(uint64_t)a2 .cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ASDTIOServiceManager.m" lineNumber:190 description:@"Bad argument."];
}

- (void)initForIOServiceWithClassName:(void *)a1 andIDProperty:.cold.3(void *a1)
{
  v1 = [a1 name];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)addDelegate:(void *)a1 forIDValues:.cold.1(void *a1)
{
  v1 = [a1 name];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)addDelegate:(void *)a1 forIDValues:(uint64_t)a2 .cold.2(void *a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = [a1 name];
  [v4 handleFailureInMethod:a2 object:a1 file:@"ASDTIOServiceManager.m" lineNumber:275 description:{@"%@: Failed to allocate ASDTIOServiceMatcher.", v5}];
}

- (void)addDelegate:forIDValues:.cold.3()
{
  OUTLINED_FUNCTION_6_0();
  v1 = [v0 name];
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_7(&dword_241659000, v2, v3, "%@: Adding delegate for IDs: %@", v4, v5, v6, v7);
}

- (void)addDelegate:(uint64_t)a1 forIDValues:(uint64_t)a2 .cold.4(uint64_t a1, uint64_t a2)
{
  v2 = [OUTLINED_FUNCTION_2_1(a1 a2)];
  OUTLINED_FUNCTION_5_0(v2, 5.7779e-34);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_8(v3, v4, v5, v6);
}

- (void)getIdentifierForIOObject:(void *)a1 withProperties:.cold.1(void *a1)
{
  v2 = [a1 name];
  v8 = [a1 idProperty];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

- (void)matchedIOService:withProperties:.cold.1()
{
  OUTLINED_FUNCTION_6_0();
  v1 = [v0 name];
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)matchedIOService:(uint64_t)a1 withProperties:(uint64_t)a2 .cold.2(uint64_t a1, uint64_t a2)
{
  v2 = [OUTLINED_FUNCTION_2_1(a1 a2)];
  OUTLINED_FUNCTION_5_0(v2, 5.7779e-34);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_8(v3, v4, v5, v6);
}

- (void)matchedIOService:withProperties:.cold.3()
{
  OUTLINED_FUNCTION_6_0();
  v1 = [v0 name];
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)ioServiceWillTerminate:withProperties:.cold.3()
{
  OUTLINED_FUNCTION_6_0();
  v1 = [v0 name];
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_7(&dword_241659000, v2, v3, "%@: Not managing IOService with identifier: %@", v4, v5, v6, v7);
}

@end