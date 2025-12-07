@interface MTRAttributeValueWaiter
- (BOOL)_attributeValue:(id)value reportedForPath:(id)path byDevice:(id)device;
- (BOOL)allValuesSatisfied;
- (MTRAttributeValueWaiter)initWithDevice:(id)device values:(id)values queue:(id)queue completion:(id)completion;
- (id)description;
- (void)_notifyCancellation;
- (void)_notifyWithError:(id)error;
- (void)_startTimerWithTimeout:(double)timeout;
- (void)cancel;
- (void)dealloc;
@end

@implementation MTRAttributeValueWaiter

- (MTRAttributeValueWaiter)initWithDevice:(id)device values:(id)values queue:(id)queue completion:(id)completion
{
  v37 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  deviceCopy2 = device;
  valuesCopy = values;
  obj = queue;
  queueCopy = queue;
  completionCopy = completion;
  v35.receiver = self;
  v35.super_class = MTRAttributeValueWaiter;
  v10 = [(MTRAttributeValueWaiter *)&v35 init];
  if (v10)
  {
    v11 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(valuesCopy, "count")}];
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v12 = valuesCopy;
    v13 = [v12 countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v13)
    {
      v14 = *v32;
      do
      {
        v15 = 0;
        do
        {
          if (*v32 != v14)
          {
            objc_enumerationMutation(v12);
          }

          v16 = *(*(&v31 + 1) + 8 * v15);
          v17 = [MTRAwaitedAttributeState alloc];
          v18 = [v12 objectForKeyedSubscript:{v16, deviceCopy, obj, deviceCopy2, queueCopy}];
          v19 = sub_23921BA0C(&v17->super.isa, v18);

          [v11 setObject:v19 forKeyedSubscript:v16];
          ++v15;
        }

        while (v13 != v15);
        v13 = [v12 countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v13);
    }

    objc_storeStrong(&v10->_valueExpectations, v11);
    objc_storeStrong(&v10->_queue, obj);
    v20 = MEMORY[0x23EE78590](completionCopy);
    completion = v10->_completion;
    v10->_completion = v20;

    objc_storeStrong(&v10->_device, deviceCopy);
    uUID = [MEMORY[0x277CCAD78] UUID];
    UUID = v10->_UUID;
    v10->_UUID = uUID;

    v10->_lock._os_unfair_lock_opaque = 0;
  }

  return v10;
}

- (void)dealloc
{
  [(MTRAttributeValueWaiter *)self cancel];
  v3.receiver = self;
  v3.super_class = MTRAttributeValueWaiter;
  [(MTRAttributeValueWaiter *)&v3 dealloc];
}

- (void)_notifyCancellation
{
  v3 = sub_23921C1E4(MTRError, 0x5700000074, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRAttributeValueWaiter.mm");
  [(MTRAttributeValueWaiter *)self _notifyWithError:?];
}

- (BOOL)allValuesSatisfied
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  if (self)
  {
    self = self->_valueExpectations;
  }

  allValues = [(MTRAttributeValueWaiter *)self allValues];
  v3 = [allValues countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = *v10;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(allValues);
        }

        v6 = *(*(&v9 + 1) + 8 * i);
        if (!v6 || (*(v6 + 8) & 1) == 0)
        {
          v7 = 0;
          goto LABEL_14;
        }
      }

      v3 = [allValues countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  v7 = 1;
LABEL_14:

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  uUID = [(MTRAttributeValueWaiter *)self UUID];
  v7 = [v3 stringWithFormat:@"<%@: %@>", v5, uUID];

  return v7;
}

- (void)cancel
{
  selfCopy = self;
  if (self)
  {
    self = self->_device;
  }

  [(MTRAttributeValueWaiter *)self _forgetAttributeWaiter:selfCopy];

  [(MTRAttributeValueWaiter *)selfCopy _notifyCancellation];
}

- (BOOL)_attributeValue:(id)value reportedForPath:(id)path byDevice:(id)device
{
  valueCopy = value;
  pathCopy = path;
  deviceCopy = device;
  if (self)
  {
    valueExpectations = self->_valueExpectations;
  }

  else
  {
    valueExpectations = 0;
  }

  v12 = valueExpectations;
  v13 = [(NSDictionary *)v12 objectForKeyedSubscript:pathCopy];

  if (v13)
  {
    v14 = *(v13 + 16);
    v15 = [deviceCopy _attributeDataValue:valueCopy satisfiesValueExpectation:v14];
    *(v13 + 8) = v15;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)_notifyWithError:(id)error
{
  v44 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  os_unfair_lock_lock(&self->_lock);
  if (self && self->_completion)
  {
    v5 = self->_completion;
    v6 = self->_queue;
    objc_setProperty_nonatomic_copy(self, v7, 0, 40);
    sub_23952CD74(self, 0);
    if (self->_expirationTimer)
    {
      dispatch_source_cancel(self->_expirationTimer);
      sub_23952CD90(self, 0);
    }

    os_unfair_lock_unlock(&self->_lock);
    if (!errorCopy)
    {
      v10 = sub_2393D9044(0);
      if (sub_23921C1B0(v10))
      {
        sub_23921C188();
        sub_23921C1A0();
        _os_log_impl(v11, v12, v13, v14, v15, 0x16u);
      }

      if (sub_2393D5398(2u))
      {
        sub_2393D5320(0, 2, "%@ %p wait for attribute values completed", self, self);
      }

      goto LABEL_31;
    }

    domain = [errorCopy domain];
    v9 = domain;
    if (domain == @"MTRErrorDomain")
    {
      code = [errorCopy code];

      if (code == 9)
      {
        v17 = sub_2393D9044(0);
        if (sub_23921C1B0(v17))
        {
          sub_23921C188();
          sub_23921C1A0();
          _os_log_impl(v18, v19, v20, v21, v22, 0x16u);
        }

        if (sub_2393D5398(2u))
        {
          sub_2393D5320(0, 2, "%@ %p wait for attribute values timed out", self, self);
        }

        goto LABEL_31;
      }
    }

    else
    {
    }

    domain2 = [errorCopy domain];
    v24 = domain2;
    if (domain2 == @"MTRErrorDomain")
    {
      code2 = [errorCopy code];

      if (code2 == 16)
      {
        v26 = sub_2393D9044(0);
        if (sub_23921C1B0(v26))
        {
          sub_23921C188();
          sub_23921C1A0();
          _os_log_impl(v27, v28, v29, v30, v31, 0x16u);
        }

        if (sub_2393D5398(2u))
        {
          sub_2393D5320(0, 2, "%@ %p wait for attribute values canceled", self, self);
        }

        goto LABEL_31;
      }
    }

    else
    {
    }

    v32 = sub_2393D9044(0);
    if (sub_23921C1B0(v32))
    {
      sub_23921C188();
      v42 = 2112;
      v43 = errorCopy;
      sub_23921C1A0();
      _os_log_impl(v33, v34, v35, v36, v37, 0x20u);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(0, 2, "%@ %p wait for attribute values unknown error: %@", self, self, errorCopy);
    }

LABEL_31:
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_23921BF8C;
    block[3] = &unk_278A71698;
    v41 = v5;
    v40 = errorCopy;
    v38 = v5;
    dispatch_async(v6, block);

    goto LABEL_4;
  }

  os_unfair_lock_unlock(&self->_lock);
LABEL_4:
}

- (void)_startTimerWithTimeout:(double)timeout
{
  selfCopy = self;
  if (self)
  {
    self = self->_device;
  }

  queue = [(MTRAttributeValueWaiter *)self queue];
  v6 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, queue);

  v7 = dispatch_time(0, (timeout * 1000000000.0));
  dispatch_source_set_timer(v6, v7, 0xFFFFFFFFFFFFFFFFLL, 0x1DCD6500uLL);
  objc_initWeak(&location, selfCopy);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = sub_23921BFA0;
  handler[3] = &unk_278A73D80;
  v10 = v6;
  v8 = v6;
  objc_copyWeak(&v11, &location);
  dispatch_source_set_event_handler(v8, handler);
  os_unfair_lock_lock(&selfCopy->_lock);
  sub_23952CD90(selfCopy, v8);
  os_unfair_lock_unlock(&selfCopy->_lock);
  dispatch_resume(v8);
  objc_destroyWeak(&v11);

  objc_destroyWeak(&location);
}

@end