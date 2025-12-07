@interface _REContextRegistration
- (_REContextRegistration)initWithQuery:(id)query;
- (void)_evaluateQueryWithRegistration:(BOOL)registration;
- (void)dealloc;
- (void)deregisterWithContext;
- (void)registerWithContext;
@end

@implementation _REContextRegistration

- (_REContextRegistration)initWithQuery:(id)query
{
  queryCopy = query;
  v10.receiver = self;
  v10.super_class = _REContextRegistration;
  v6 = [(_REContextRegistration *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_query, query);
    registrations = v7->_registrations;
    v7->_registrations = MEMORY[0x277CBEBF8];

    v7->_registered = 0;
  }

  return v7;
}

- (void)dealloc
{
  [(_REContextRegistration *)self deregisterWithContext];
  v3.receiver = self;
  v3.super_class = _REContextRegistration;
  [(_REContextRegistration *)&v3 dealloc];
}

- (void)registerWithContext
{
  v18 = *MEMORY[0x277D85DE8];
  if (self->_context)
  {
    os_unfair_lock_lock(&REContextRegistrationLock);
    if (!self->_registered)
    {
      self->_registered = 1;
      objc_initWeak(&location, self);
      query = self->_query;
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __45___REContextRegistration_registerWithContext__block_invoke;
      v14[3] = &unk_2785F9A90;
      objc_copyWeak(&v15, &location);
      v4 = [(REDuetContextQuery *)query createRegistrationsWithCallback:v14];
      registrations = self->_registrations;
      self->_registrations = v4;

      v12 = 0u;
      v13 = 0u;
      v10 = 0u;
      v11 = 0u;
      v6 = self->_registrations;
      v7 = [(NSArray *)v6 countByEnumeratingWithState:&v10 objects:v17 count:16];
      if (v7)
      {
        v8 = *v11;
        do
        {
          v9 = 0;
          do
          {
            if (*v11 != v8)
            {
              objc_enumerationMutation(v6);
            }

            [(_CDUserContext *)self->_context registerCallback:*(*(&v10 + 1) + 8 * v9++), v10];
          }

          while (v7 != v9);
          v7 = [(NSArray *)v6 countByEnumeratingWithState:&v10 objects:v17 count:16];
        }

        while (v7);
      }

      objc_destroyWeak(&v15);
      objc_destroyWeak(&location);
    }

    os_unfair_lock_unlock(&REContextRegistrationLock);
  }
}

- (void)deregisterWithContext
{
  v14 = *MEMORY[0x277D85DE8];
  if (self->_context)
  {
    os_unfair_lock_lock(&REContextRegistrationLock);
    if (self->_registered)
    {
      self->_registered = 0;
      v9 = 0u;
      v10 = 0u;
      v11 = 0u;
      v12 = 0u;
      v3 = self->_registrations;
      v4 = [(NSArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        v5 = v4;
        v6 = *v10;
        do
        {
          v7 = 0;
          do
          {
            if (*v10 != v6)
            {
              objc_enumerationMutation(v3);
            }

            [(_CDUserContext *)self->_context deregisterCallback:*(*(&v9 + 1) + 8 * v7++), v9];
          }

          while (v5 != v7);
          v5 = [(NSArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
        }

        while (v5);
      }

      registrations = self->_registrations;
      self->_registrations = MEMORY[0x277CBEBF8];
    }

    os_unfair_lock_unlock(&REContextRegistrationLock);
  }
}

- (void)_evaluateQueryWithRegistration:(BOOL)registration
{
  if (self->_callback)
  {
    registrationCopy = registration;
    if (self->_context)
    {
      v5 = [(REDuetContextQuery *)self->_query valueFromUserContext:?];
      (*(self->_callback + 2))();
      if (registrationCopy)
      {
        [(_REContextRegistration *)self deregisterWithContext];
        [(_REContextRegistration *)self registerWithContext];
      }
    }
  }
}

@end