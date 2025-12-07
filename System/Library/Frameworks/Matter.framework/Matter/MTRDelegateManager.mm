@interface MTRDelegateManager
- (BOOL)_callDelegatesWithBlock:(id)block logString:(const char *)string;
- (MTRDelegateManager)initWithOwner:(id)owner;
- (unint64_t)iterateDelegatesWithBlock:(id)block;
- (void)addDelegateInfo:(id)info;
- (void)removeDelegate:(id)delegate;
@end

@implementation MTRDelegateManager

- (MTRDelegateManager)initWithOwner:(id)owner
{
  ownerCopy = owner;
  v10.receiver = self;
  v10.super_class = MTRDelegateManager;
  v5 = [(MTRDelegateManager *)&v10 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB58] set];
    delegates = v5->_delegates;
    v5->_delegates = v6;

    objc_storeWeak(&v5->_owner, ownerCopy);
    v8 = v5;
  }

  return v5;
}

- (void)addDelegateInfo:(id)info
{
  v38 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  WeakRetained = objc_loadWeakRetained(&self->_owner);
  v6 = [MEMORY[0x277CBEB58] set];
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  selfCopy = self;
  v7 = self->_delegates;
  v8 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v27 objects:v37 count:16];
  if (v8)
  {
    v9 = *v28;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v28 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v27 + 1) + 8 * i);
        delegate = [v11 delegate];
        if (delegate)
        {
          delegate2 = [infoCopy delegate];
          v14 = delegate == delegate2;

          if (v14)
          {
            [v6 addObject:v11];
            v15 = sub_2393D9044(0);
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              delegate3 = [infoCopy delegate];
              *buf = 138412546;
              v32 = WeakRetained;
              v33 = 2048;
              v34 = delegate3;
              _os_log_impl(&dword_238DAE000, v15, OS_LOG_TYPE_DEFAULT, "%@ replacing delegate info for %p", buf, 0x16u);
            }

            if (sub_2393D5398(2u))
            {
              delegate4 = [infoCopy delegate];
              sub_2393D5320(0, 2, "%@ replacing delegate info for %p", WeakRetained, delegate4);
            }
          }
        }

        else
        {
          [v6 addObject:v11];
          v18 = sub_2393D9044(0);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            delegatePointerValue = [v11 delegatePointerValue];
            *buf = 138412546;
            v32 = WeakRetained;
            v33 = 2048;
            v34 = delegatePointerValue;
            _os_log_impl(&dword_238DAE000, v18, OS_LOG_TYPE_DEFAULT, "%@ removing delegate info for nil delegate %p", buf, 0x16u);
          }

          if (sub_2393D5398(2u))
          {
            sub_2393D5320(0, 2, "%@ removing delegate info for nil delegate %p", WeakRetained, [v11 delegatePointerValue]);
          }
        }
      }

      v8 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v27 objects:v37 count:16];
    }

    while (v8);
  }

  if ([v6 count])
  {
    v20 = [(NSMutableSet *)selfCopy->_delegates count];
    [(NSMutableSet *)selfCopy->_delegates minusSet:v6];
    v21 = sub_2393D9044(0);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = [(NSMutableSet *)selfCopy->_delegates count];
      *buf = 138412546;
      v32 = WeakRetained;
      v33 = 2048;
      v34 = v20 - v22;
      _os_log_impl(&dword_238DAE000, v21, OS_LOG_TYPE_DEFAULT, "%@ addDelegate: removed %lu", buf, 0x16u);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(0, 2, "%@ addDelegate: removed %lu", WeakRetained, v20 - [(NSMutableSet *)selfCopy->_delegates count]);
    }
  }

  [(NSMutableSet *)selfCopy->_delegates addObject:infoCopy];
  v23 = sub_2393D9044(0);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    delegatePointerValue2 = [infoCopy delegatePointerValue];
    v25 = [(NSMutableSet *)selfCopy->_delegates count];
    *buf = 138412802;
    v32 = WeakRetained;
    v33 = 2048;
    v34 = delegatePointerValue2;
    v35 = 2048;
    v36 = v25;
    _os_log_impl(&dword_238DAE000, v23, OS_LOG_TYPE_DEFAULT, "%@ added delegate %p total %lu", buf, 0x20u);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(0, 2, "%@ added delegate %p total %lu", WeakRetained, [infoCopy delegatePointerValue], -[NSMutableSet count](selfCopy->_delegates, "count"));
  }
}

- (void)removeDelegate:(id)delegate
{
  v23 = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_owner);
  v6 = sub_2393D9044(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *&buf[4] = WeakRetained;
    *&buf[12] = 2048;
    *&buf[14] = delegateCopy;
    _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_DEFAULT, "%@ removeDelegate %p", buf, 0x16u);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(0, 2, "%@ removeDelegate %p", WeakRetained, delegateCopy);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v20 = sub_238DB7464;
  v21 = sub_238DB7474;
  v22 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_238DB747C;
  v10[3] = &unk_278A716C0;
  v7 = delegateCopy;
  v11 = v7;
  v12 = buf;
  [(MTRDelegateManager *)self iterateDelegatesWithBlock:v10];
  if (*(*&buf[8] + 40))
  {
    [(NSMutableSet *)self->_delegates removeObject:?];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [(NSMutableSet *)self->_delegates count];
      *v13 = 138412802;
      v14 = WeakRetained;
      v15 = 2048;
      v16 = v7;
      v17 = 2048;
      v18 = v8;
      _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_DEFAULT, "%@ removed %p remaining %lu", v13, 0x20u);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(0, 2, "%@ removed %p remaining %lu", WeakRetained, v7, [(NSMutableSet *)self->_delegates count]);
    }
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [(NSMutableSet *)self->_delegates count];
      *v13 = 138412802;
      v14 = WeakRetained;
      v15 = 2048;
      v16 = v7;
      v17 = 2048;
      v18 = v9;
      _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_DEFAULT, "%@ delegate %p not found in %lu", v13, 0x20u);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(0, 2, "%@ delegate %p not found in %lu", WeakRetained, v7, [(NSMutableSet *)self->_delegates count]);
    }
  }

  _Block_object_dispose(buf, 8);
}

- (unint64_t)iterateDelegatesWithBlock:(id)block
{
  v31 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  WeakRetained = objc_loadWeakRetained(&self->_owner);
  if ([(NSMutableSet *)self->_delegates count])
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v5 = self->_delegates;
    v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v20 objects:v30 count:16];
    v7 = 0;
    if (v6)
    {
      v8 = *v21;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v21 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v20 + 1) + 8 * i);
          delegate = [v10 delegate];
          if (delegate)
          {
            if (blockCopy)
            {
              v12 = objc_autoreleasePoolPush();
              blockCopy[2](blockCopy, v10);
              objc_autoreleasePoolPop(v12);
            }
          }

          else
          {
            if (!v7)
            {
              v7 = [MEMORY[0x277CBEB58] set];
            }

            [v7 addObject:v10];
          }
        }

        v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v20 objects:v30 count:16];
      }

      while (v6);
    }

    if ([v7 count])
    {
      [(NSMutableSet *)self->_delegates minusSet:v7];
      v13 = sub_2393D9044(0);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [v7 count];
        v15 = [(NSMutableSet *)self->_delegates count];
        *buf = 138412802;
        v25 = WeakRetained;
        v26 = 2048;
        v27 = v14;
        v28 = 2048;
        v29 = v15;
        _os_log_impl(&dword_238DAE000, v13, OS_LOG_TYPE_DEFAULT, "%@ iterateDelegatesWithBlock: removed %lu remaining %lu", buf, 0x20u);
      }

      if (sub_2393D5398(2u))
      {
        sub_2393D5320(0, 2, "%@ iterateDelegatesWithBlock: removed %lu remaining %lu", WeakRetained, [v7 count], -[NSMutableSet count](self->_delegates, "count"));
      }
    }

    v16 = [(NSMutableSet *)self->_delegates count];
  }

  else
  {
    v17 = sub_2393D9044(0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v25 = WeakRetained;
      _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_INFO, "%@ no delegates to iterate", buf, 0xCu);
    }

    if (sub_2393D5398(3u))
    {
      sub_2393D5320(0, 3, "%@ no delegates to iterate", WeakRetained);
    }

    v16 = 0;
  }

  return v16;
}

- (BOOL)_callDelegatesWithBlock:(id)block logString:(const char *)string
{
  v26 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  WeakRetained = objc_loadWeakRetained(&self->_owner);
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_238DB7A7C;
  v13[3] = &unk_278A716E8;
  v8 = blockCopy;
  v14 = v8;
  v15 = &v16;
  [(MTRDelegateManager *)self iterateDelegatesWithBlock:v13];
  if (string)
  {
    v9 = sub_2393D9044(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v17[3];
      *buf = 138412802;
      v21 = WeakRetained;
      v22 = 2048;
      v23 = v10;
      v24 = 2080;
      stringCopy = string;
      _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_DEFAULT, "%@ %lu delegates called for %s", buf, 0x20u);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(0, 2, "%@ %lu delegates called for %s", WeakRetained, v17[3], string);
    }
  }

  v11 = v17[3] != 0;

  _Block_object_dispose(&v16, 8);
  return v11;
}

@end