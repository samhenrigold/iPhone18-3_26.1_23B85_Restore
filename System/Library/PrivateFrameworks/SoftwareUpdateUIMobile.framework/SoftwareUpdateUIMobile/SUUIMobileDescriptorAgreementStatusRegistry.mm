@interface SUUIMobileDescriptorAgreementStatusRegistry
- (SUUIMobileDescriptorAgreementStatusRegistry)init;
- (SUUIMobileDescriptorAgreementStatusRegistry)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (int)agreementStatusForType:(unint64_t)type descriptor:(id)descriptor;
- (void)encodeWithCoder:(id)coder;
- (void)setAgreementStatus:(int)status type:(unint64_t)type forDescriptor:(id)descriptor;
@end

@implementation SUUIMobileDescriptorAgreementStatusRegistry

- (SUUIMobileDescriptorAgreementStatusRegistry)init
{
  v8 = a2;
  v9 = 0;
  v7.receiver = self;
  v7.super_class = SUUIMobileDescriptorAgreementStatusRegistry;
  v6 = [(SUUIMobileDescriptorAgreementStatusRegistry *)&v7 init];
  v9 = v6;
  objc_storeStrong(&v9, v6);
  if (v6)
  {
    v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
    statusMap = v9->_statusMap;
    v9->_statusMap = v2;
    MEMORY[0x277D82BD8](statusMap);
    v9->_lock._os_unfair_lock_opaque = 0;
  }

  v5 = MEMORY[0x277D82BE0](v9);
  objc_storeStrong(&v9, 0);
  return v5;
}

- (int)agreementStatusForType:(unint64_t)type descriptor:(id)descriptor
{
  v31 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v20 = a2;
  typeCopy = type;
  location = 0;
  objc_storeStrong(&location, descriptor);
  if (location && typeCopy)
  {
    v16[0] = 2;
    p_lock = &selfCopy->_lock;
    v23 = 0;
    os_unfair_lock_lock_with_options();
    v16[1] = p_lock;
    v15 = [(NSMutableDictionary *)selfCopy->_statusMap objectForKeyedSubscript:location];
    v14 = 0;
    if (v15)
    {
      v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:typeCopy];
      v8 = [v15 objectForKeyedSubscript:?];
      v28 = 0;
      objc_storeStrong(&v28, v8);
      if (v28)
      {
        integerValue = [v28 integerValue];
        if (integerValue > 2)
        {
          v29 = 0;
        }

        else
        {
          v29 = integerValue;
        }

        v27 = 1;
      }

      else
      {
        v29 = 0;
        v27 = 1;
      }

      objc_storeStrong(&v28, 0);
      v14 = v29;
      MEMORY[0x277D82BD8](v8);
      MEMORY[0x277D82BD8](v9);
    }

    statefulUILogger = [MEMORY[0x277D64B58] statefulUILogger];
    oslog = [statefulUILogger oslog];
    MEMORY[0x277D82BD8](statefulUILogger);
    v12 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      humanReadableUpdateName = [location humanReadableUpdateName];
      v11 = MEMORY[0x277D82BE0](humanReadableUpdateName);
      v5 = SUStringFromAgreementStatus();
      v10 = MEMORY[0x277D82BE0](v5);
      __os_log_helper_16_2_3_8_34_8_66_8_66(v30, "[SUUIMobileDescriptorAgreementStatusRegistry agreementStatusForType:descriptor:]", v11, v10);
      _os_log_impl(&dword_26B0B9000, oslog, v12, "%{public}s: Retrieving agreement status to descriptor %{public}@: %{public}@", v30, 0x20u);
      MEMORY[0x277D82BD8](v5);
      MEMORY[0x277D82BD8](humanReadableUpdateName);
      objc_storeStrong(&v10, 0);
      objc_storeStrong(&v11, 0);
    }

    objc_storeStrong(&oslog, 0);
    v22 = v14;
    v17 = 1;
    objc_storeStrong(&v15, 0);
    v25 = v16;
    switch(v16[0])
    {
      case 1:
        [v25[1] unlock];
        break;
      case 2:
        os_unfair_lock_unlock(v25[1]);
        break;
      case 3:
        os_unfair_recursive_lock_unlock();
        break;
    }

    if (v17 == 2)
    {
      v17 = 0;
    }
  }

  else
  {
    v22 = 0;
    v17 = 1;
  }

  objc_storeStrong(&location, 0);
  return v22;
}

- (void)setAgreementStatus:(int)status type:(unint64_t)type forDescriptor:(id)descriptor
{
  v27 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v21 = a2;
  statusCopy = status;
  typeCopy = type;
  location = 0;
  objc_storeStrong(&location, descriptor);
  if (location && typeCopy)
  {
    v16[0] = 2;
    p_lock = &selfCopy->_lock;
    v23 = 0;
    os_unfair_lock_lock_with_options();
    v16[1] = p_lock;
    v15 = [(NSMutableDictionary *)selfCopy->_statusMap objectForKeyedSubscript:location];
    if (!v15)
    {
      v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
      MEMORY[0x277D82BD8](0);
      [(NSMutableDictionary *)selfCopy->_statusMap setObject:v15 forKeyedSubscript:location];
    }

    statefulUILogger = [MEMORY[0x277D64B58] statefulUILogger];
    oslog = [statefulUILogger oslog];
    MEMORY[0x277D82BD8](statefulUILogger);
    v13 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      humanReadableUpdateName = [location humanReadableUpdateName];
      v12 = MEMORY[0x277D82BE0](humanReadableUpdateName);
      v8 = SUStringFromAgreementStatus();
      v11 = MEMORY[0x277D82BE0](v8);
      __os_log_helper_16_2_3_8_34_8_66_8_66(v26, "[SUUIMobileDescriptorAgreementStatusRegistry setAgreementStatus:type:forDescriptor:]", v12, v11);
      _os_log_impl(&dword_26B0B9000, oslog, v13, "%{public}s: Assigning agreement status to descriptor %{public}@: %{public}@", v26, 0x20u);
      MEMORY[0x277D82BD8](v8);
      MEMORY[0x277D82BD8](humanReadableUpdateName);
      objc_storeStrong(&v11, 0);
      objc_storeStrong(&v12, 0);
    }

    objc_storeStrong(&oslog, 0);
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:statusCopy];
    v7 = v15;
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:typeCopy];
    [v7 setObject:v6 forKeyedSubscript:?];
    MEMORY[0x277D82BD8](v5);
    MEMORY[0x277D82BD8](v6);
    objc_storeStrong(&v15, 0);
    v17 = 2;
    v25 = v16;
    switch(v16[0])
    {
      case 1:
        [v25[1] unlock];
        break;
      case 2:
        os_unfair_lock_unlock(v25[1]);
        break;
      case 3:
        os_unfair_recursive_lock_unlock();
        break;
    }

    v17 = 0;
  }

  else
  {
    v17 = 1;
  }

  objc_storeStrong(&location, 0);
}

- (id)description
{
  v40 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v32[2] = a2;
  v32[0] = 2;
  p_lock = &self->_lock;
  v35 = 0;
  os_unfair_lock_lock_with_options();
  v32[1] = p_lock;
  v30 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{-[NSMutableDictionary count](selfCopy->_statusMap, "count")}];
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x277D82BE0](selfCopy->_statusMap);
  v23 = [obj countByEnumeratingWithState:__b objects:v39 count:16];
  if (v23)
  {
    v19 = *__b[2];
    v20 = 0;
    v21 = v23;
    while (1)
    {
      v18 = v20;
      if (*__b[2] != v19)
      {
        objc_enumerationMutation(obj);
      }

      v29 = *(__b[1] + 8 * v20);
      v27 = [(NSMutableDictionary *)selfCopy->_statusMap objectForKeyedSubscript:v29];
      location = objc_opt_new();
      memset(v24, 0, sizeof(v24));
      v16 = MEMORY[0x277D82BE0](v27);
      v17 = [v16 countByEnumeratingWithState:v24 objects:v38 count:16];
      if (v17)
      {
        v13 = *v24[2];
        v14 = 0;
        v15 = v17;
        while (1)
        {
          v12 = v14;
          if (*v24[2] != v13)
          {
            objc_enumerationMutation(v16);
          }

          v25 = *(v24[1] + 8 * v14);
          v10 = location;
          v11 = MEMORY[0x277CCACA8];
          v9 = SUUIMobileDescriptorAgreementTypeToString([v25 intValue]);
          [v25 intValue];
          v8 = SUStringFromAgreementStatus();
          v7 = [v11 stringWithFormat:@"%@: %@", v9, v8];
          [v10 addObject:?];
          MEMORY[0x277D82BD8](v7);
          MEMORY[0x277D82BD8](v8);
          MEMORY[0x277D82BD8](v9);
          ++v14;
          if (v12 + 1 >= v15)
          {
            v14 = 0;
            v15 = [v16 countByEnumeratingWithState:v24 objects:v38 count:16];
            if (!v15)
            {
              break;
            }
          }
        }
      }

      MEMORY[0x277D82BD8](v16);
      v6 = v30;
      v5 = [location componentsJoinedByString:{@", "}];
      humanReadableUpdateName = [v29 humanReadableUpdateName];
      [v6 setObject:v5 forKey:?];
      MEMORY[0x277D82BD8](humanReadableUpdateName);
      MEMORY[0x277D82BD8](v5);
      objc_storeStrong(&location, 0);
      objc_storeStrong(&v27, 0);
      ++v20;
      if (v18 + 1 >= v21)
      {
        v20 = 0;
        v21 = [obj countByEnumeratingWithState:__b objects:v39 count:16];
        if (!v21)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](obj);
  v34 = [MEMORY[0x277D64B68] descriptionForObject:selfCopy properties:v30];
  v31 = 1;
  objc_storeStrong(&v30, 0);
  v37 = v32;
  switch(v32[0])
  {
    case 1:
      [v37[1] unlock];
      break;
    case 2:
      os_unfair_lock_unlock(v37[1]);
      break;
    case 3:
      os_unfair_recursive_lock_unlock();
      break;
  }

  v2 = v34;

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  selfCopy = self;
  v15[2] = a2;
  v15[1] = zone;
  v15[0] = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v14[0] = 2;
  p_lock = &selfCopy->_lock;
  v17 = 0;
  os_unfair_lock_lock_with_options();
  v14[1] = &selfCopy->_lock;
  v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
  statusMap = selfCopy->_statusMap;
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __60__SUUIMobileDescriptorAgreementStatusRegistry_copyWithZone___block_invoke;
  v10 = &unk_279CCBA28;
  v11 = MEMORY[0x277D82BE0](v12);
  [(NSMutableDictionary *)statusMap enumerateKeysAndObjectsUsingBlock:&v6];
  objc_storeStrong(v15[0] + 2, v12);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  v13 = 2;
  v19 = v14;
  switch(v14[0])
  {
    case 1:
      [v19[1] unlock];
      break;
    case 2:
      os_unfair_lock_unlock(v19[1]);
      break;
    case 3:
      os_unfair_recursive_lock_unlock();
      break;
  }

  v4 = MEMORY[0x277D82BE0](v15[0]);
  v13 = 1;
  objc_storeStrong(v15, 0);
  return v4;
}

void __60__SUUIMobileDescriptorAgreementStatusRegistry_copyWithZone___block_invoke(id *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v6 = 0;
  objc_storeStrong(&v6, a3);
  v5 = [v6 mutableCopy];
  [a1[4] setObject:? forKeyedSubscript:?];
  MEMORY[0x277D82BD8](v5);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (void)encodeWithCoder:(id)coder
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  v3 = 2;
  p_lock = &selfCopy->_lock;
  v7 = 0;
  os_unfair_lock_lock_with_options();
  v4 = p_lock;
  [location[0] encodeObject:selfCopy->_statusMap forKey:@"statusMap"];
  v9 = &v3;
  os_unfair_lock_unlock(v4);
  objc_storeStrong(location, 0);
}

- (SUUIMobileDescriptorAgreementStatusRegistry)initWithCoder:(id)coder
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  v3 = selfCopy;
  selfCopy = 0;
  v16 = [(SUUIMobileDescriptorAgreementStatusRegistry *)v3 init];
  selfCopy = v16;
  objc_storeStrong(&selfCopy, v16);
  if (v16)
  {
    v17[0] = 2;
    p_lock = &selfCopy->_lock;
    v20 = 0;
    os_unfair_lock_lock_with_options();
    v17[1] = p_lock;
    v13 = location[0];
    v14 = MEMORY[0x277CBEB98];
    v15 = objc_opt_class();
    v12 = objc_opt_class();
    v11 = [v14 setWithObjects:{v15, v12, objc_opt_class(), 0}];
    v9 = [v13 decodeObjectOfClasses:? forKey:?];
    v10 = [v9 mutableCopy];
    statusMap = selfCopy->_statusMap;
    selfCopy->_statusMap = v10;
    MEMORY[0x277D82BD8](statusMap);
    MEMORY[0x277D82BD8](v9);
    MEMORY[0x277D82BD8](v11);
    if (!selfCopy->_statusMap)
    {
      v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v5 = selfCopy->_statusMap;
      selfCopy->_statusMap = v8;
      MEMORY[0x277D82BD8](v5);
    }

    v22 = v17;
    switch(v17[0])
    {
      case 1:
        [v22[1] unlock];
        break;
      case 2:
        os_unfair_lock_unlock(v22[1]);
        break;
      case 3:
        os_unfair_recursive_lock_unlock();
        break;
    }
  }

  v7 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v7;
}

@end