@interface EPStaticServiceRegistry
- (EPStaticServiceRegistry)init;
- (EPStaticServiceRegistry)initWithQueue:(id)queue;
- (id)instantiateServiceByClass:(Class)class;
- (id)optionalServiceFromClass:(Class)class;
- (id)optionalServiceFromProtocol:(id)protocol;
- (void)_removeService:(id)service;
- (void)addService:(id)service;
- (void)removeService:(id)service;
@end

@implementation EPStaticServiceRegistry

- (EPStaticServiceRegistry)init
{
  v9.receiver = self;
  v9.super_class = EPStaticServiceRegistry;
  v2 = [(EPStaticServiceRegistry *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = +[NSMutableDictionary dictionary];
    servicesByProtocol = v3->_servicesByProtocol;
    v3->_servicesByProtocol = v4;

    v6 = +[NSMutableDictionary dictionary];
    servicesByClass = v3->_servicesByClass;
    v3->_servicesByClass = v6;
  }

  return v3;
}

- (EPStaticServiceRegistry)initWithQueue:(id)queue
{
  queueCopy = queue;
  v6 = [(EPStaticServiceRegistry *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, queue);
  }

  return v7;
}

- (id)optionalServiceFromClass:(Class)class
{
  v4 = [NSValue valueWithNonretainedObject:?];
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_servicesByClass objectForKeyedSubscript:v4];
  if (!v5)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    allValues = [(NSMutableDictionary *)self->_servicesByClass allValues];
    v7 = [allValues copy];

    v5 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v5)
    {
      v8 = *v13;
      while (2)
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v7);
          }

          v10 = *(*(&v12 + 1) + 8 * i);
          if (objc_opt_isKindOfClass())
          {
            v5 = v10;
            [(NSMutableDictionary *)self->_servicesByClass setObject:v5 forKeyedSubscript:v4];
            goto LABEL_12;
          }
        }

        v5 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (id)optionalServiceFromProtocol:(id)protocol
{
  protocolCopy = protocol;
  v5 = [NSValue valueWithNonretainedObject:protocolCopy];
  os_unfair_lock_lock(&self->_lock);
  v6 = [(NSMutableDictionary *)self->_servicesByProtocol objectForKeyedSubscript:v5];
  if (!v6)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    allValues = [(NSMutableDictionary *)self->_servicesByClass allValues];
    v6 = [allValues countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v8 = *v13;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(allValues);
          }

          v10 = *(*(&v12 + 1) + 8 * i);
          if ([v10 conformsToProtocol:protocolCopy])
          {
            v6 = v10;
            [(NSMutableDictionary *)self->_servicesByProtocol setObject:v6 forKeyedSubscript:v5];
            goto LABEL_12;
          }
        }

        v6 = [allValues countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  os_unfair_lock_unlock(&self->_lock);

  return v6;
}

- (void)addService:(id)service
{
  serviceCopy = service;
  v5 = sub_1000034AC(serviceCopy);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v8 = sub_1000034AC(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v19 = 136315650;
      v20 = "[EPStaticServiceRegistry addService:]";
      v21 = 2112;
      v22 = v10;
      v23 = 2048;
      v24 = serviceCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s: Request to add class %@[%p] to service registry", &v19, 0x20u);
    }
  }

  os_unfair_lock_lock(&self->_lock);
  v11 = [NSValue valueWithNonretainedObject:objc_opt_class()];
  v12 = [(NSMutableDictionary *)self->_servicesByClass objectForKeyedSubscript:v11];
  if (v12 != serviceCopy)
  {
    v13 = sub_1000034AC([(EPStaticServiceRegistry *)self _removeService:v12]);
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);

    if (v14)
    {
      v16 = sub_1000034AC(v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = objc_opt_class();
        v18 = NSStringFromClass(v17);
        v19 = 138412546;
        v20 = v18;
        v21 = 2048;
        v22 = serviceCopy;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Adding class %@[%p] to service registry", &v19, 0x16u);
      }
    }

    [(NSMutableDictionary *)self->_servicesByClass setObject:serviceCopy forKeyedSubscript:v11];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)removeService:(id)service
{
  serviceCopy = service;
  os_unfair_lock_lock(&self->_lock);
  [(EPStaticServiceRegistry *)self _removeService:serviceCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_removeService:(id)service
{
  serviceCopy = service;
  v5 = sub_1000034AC(serviceCopy);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v8 = sub_1000034AC(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      *buf = 136315650;
      v43 = "[EPStaticServiceRegistry _removeService:]";
      v44 = 2112;
      v45 = v10;
      v46 = 2048;
      v47 = serviceCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s: Request to remove class %@[%p] to service registry", buf, 0x20u);
    }
  }

  if (serviceCopy)
  {
    v11 = sub_1000034AC(v7);
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

    if (v12)
    {
      v14 = sub_1000034AC(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = objc_opt_class();
        v16 = NSStringFromClass(v15);
        *buf = 138412546;
        v43 = v16;
        v44 = 2048;
        v45 = serviceCopy;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Removing class %@[%p] from service registry", buf, 0x16u);
      }
    }

    v17 = [NSValue valueWithNonretainedObject:objc_opt_class()];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v18 = [(NSMutableDictionary *)self->_servicesByClass copy];
    v19 = [v18 countByEnumeratingWithState:&v36 objects:v41 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v37;
      do
      {
        v22 = 0;
        v23 = v17;
        do
        {
          if (*v37 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v17 = *(*(&v36 + 1) + 8 * v22);

          v24 = [(NSMutableDictionary *)self->_servicesByClass objectForKeyedSubscript:v17];
          if (v24 == serviceCopy)
          {
            [(NSMutableDictionary *)self->_servicesByClass removeObjectForKey:v17];
          }

          v22 = v22 + 1;
          v23 = v17;
        }

        while (v20 != v22);
        v20 = [v18 countByEnumeratingWithState:&v36 objects:v41 count:16];
      }

      while (v20);
    }

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v25 = [(NSMutableDictionary *)self->_servicesByProtocol copy];
    v26 = [v25 countByEnumeratingWithState:&v32 objects:v40 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v33;
      do
      {
        for (i = 0; i != v27; i = i + 1)
        {
          if (*v33 != v28)
          {
            objc_enumerationMutation(v25);
          }

          v30 = *(*(&v32 + 1) + 8 * i);
          v31 = [(NSMutableDictionary *)self->_servicesByProtocol objectForKeyedSubscript:v30];
          if (v31 == serviceCopy)
          {
            [(NSMutableDictionary *)self->_servicesByProtocol removeObjectForKey:v30];
          }
        }

        v27 = [v25 countByEnumeratingWithState:&v32 objects:v40 count:16];
      }

      while (v27);
    }
  }
}

- (id)instantiateServiceByClass:(Class)class
{
  if ([(objc_class *)class conformsToProtocol:&OBJC_PROTOCOL___EPService]&& (objc_opt_respondsToSelector() & 1) != 0)
  {
    v5 = [(objc_class *)class newService:self];
    [(EPStaticServiceRegistry *)self addService:v5];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end