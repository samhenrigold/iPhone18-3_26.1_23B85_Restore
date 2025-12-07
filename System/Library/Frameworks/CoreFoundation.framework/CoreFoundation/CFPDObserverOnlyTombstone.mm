@interface CFPDObserverOnlyTombstone
+ (uint64_t)replaceObserved:(uint64_t)observed withObserved:(_xpc_connection_s *)withObserved forConnection:;
- (BOOL)isEqual:(id)equal;
- (id)description;
- (id)initMatchingSource:(id)source;
- (unint64_t)hash;
- (void)_operateOnObservingConnectionsAsMultiple:(uint64_t)multiple asSingle:;
- (void)_sendNotificationToConnection:(uint64_t)connection;
- (void)alreadyLocked_transferObservingConnectionsFromSource:(id)source;
- (void)dealloc;
- (void)notifyObservers;
- (void)removeObservingConnection:(id)connection daemon:(id)daemon;
- (void)transferObservingConnectionsToSource:(id)source;
@end

@implementation CFPDObserverOnlyTombstone

- (unint64_t)hash
{
  domain = self->_domain;
  if (domain)
  {
    v4 = CFHash(domain);
  }

  else
  {
    v4 = 0;
  }

  userOrContainer = self->_userOrContainer;
  if (userOrContainer)
  {
    userOrContainer = CFHash(userOrContainer);
  }

  return userOrContainer ^ v4 ^ self->_shmemIndex;
}

- (void)dealloc
{
  v6 = *MEMORY[0x1E69E9840];
  domain = self->_domain;
  if (domain)
  {
    CFRelease(domain);
  }

  userOrContainer = self->_userOrContainer;
  if (userOrContainer)
  {
    CFRelease(userOrContainer);
  }

  [(CFPDObserverOnlyTombstone *)self _operateOnObservingConnectionsAsMultiple:&__block_literal_global_288 asSingle:?];
  v5.receiver = self;
  v5.super_class = CFPDObserverOnlyTombstone;
  [(CFPDObserverOnlyTombstone *)&v5 dealloc];
}

- (id)initMatchingSource:(id)source
{
  v9 = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = CFPDObserverOnlyTombstone;
  v4 = [(CFPDObserverOnlyTombstone *)&v8 init];
  if (v4)
  {
    domain = [source domain];
    if (domain)
    {
      v4->_domain = CFRetain(domain);
    }

    container = [source container];
    if (container || (container = [source user]) != 0)
    {
      v4->_userOrContainer = CFRetain(container);
    }

    v4->_shmemIndex = [source shmemIndex];
    v4->_lock._os_unfair_lock_opaque = 0;
    *(v4 + 38) = *(v4 + 38) & 0xFE | [source managed];
  }

  return v4;
}

- (void)alreadyLocked_transferObservingConnectionsFromSource:(id)source
{
  v18 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_owner(source + 25);
  v5 = *(source + 9);
  if (v5)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x3052000000;
    v15 = __Block_byref_object_copy__4;
    v16 = __Block_byref_object_dispose__4;
    v17 = 0;
    v8 = 0;
    v9 = &v8;
    v10 = 0x2020000000;
    v11 = 0;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __82__CFPDObserverOnlyTombstone_alreadyLocked_transferObservingConnectionsFromSource___block_invoke;
    v7[3] = &unk_1E6DD1B58;
    v7[4] = source;
    v7[5] = self;
    v7[6] = &v12;
    v7[7] = &v8;
    CFSetApply(v5, v7);
    v6 = v13[5];
    if (!v6)
    {
      v6 = v9[3];
    }

    self->_observers._single = v6;
    CFRelease(v5);
    *(source + 9) = 0;
    _Block_object_dispose(&v8, 8);
    _Block_object_dispose(&v12, 8);
  }
}

void __82__CFPDObserverOnlyTombstone_alreadyLocked_transferObservingConnectionsFromSource___block_invoke(void *a1, void *a2)
{
  if ([CFPDObserverOnlyTombstone replaceObserved:a1[5] withObserved:a2 forConnection:?])
  {
    v4 = *(*(a1[7] + 8) + 24);
    if (*(*(a1[6] + 8) + 40))
    {
      if (v4)
      {
        __82__CFPDObserverOnlyTombstone_alreadyLocked_transferObservingConnectionsFromSource___block_invoke_cold_1();
      }

      *(*(a1[7] + 8) + 24) = CFSetCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFTypeSetCallBacks);
      CFSetAddValue(*(*(a1[7] + 8) + 24), *(*(a1[6] + 8) + 40));
      xpc_release(*(*(a1[6] + 8) + 40));
      *(*(a1[6] + 8) + 40) = 0;
      v4 = *(*(a1[7] + 8) + 24);
    }

    else if (!v4)
    {
      *(*(a1[6] + 8) + 40) = xpc_retain(a2);
      return;
    }

    CFSetAddValue(v4, a2);
  }
}

+ (uint64_t)replaceObserved:(uint64_t)observed withObserved:(_xpc_connection_s *)withObserved forConnection:
{
  v8[6] = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __72__CFPDObserverOnlyTombstone_replaceObserved_withObserved_forConnection___block_invoke;
  v8[3] = &unk_1E6DD1CB0;
  v8[4] = a2;
  v8[5] = observed;
  return withClientContext(withObserved, v8);
}

- (void)_operateOnObservingConnectionsAsMultiple:(uint64_t)multiple asSingle:
{
  v18 = *MEMORY[0x1E69E9840];
  if (self)
  {
    os_unfair_lock_lock((self + 32));
    v7 = (self + 24);
    v6 = *(self + 24);
    if (v6)
    {
      v8 = CFGetTypeID(v6);
      if (v8 == CFSetGetTypeID())
      {
        (*(a2 + 16))(a2, *v7);
        Count = CFSetGetCount(*v7);
        if (Count)
        {
          if (Count == 1)
          {
            v12 = 0;
            v13 = &v12;
            v14 = 0x3052000000;
            v15 = __Block_byref_object_copy__4;
            v16 = __Block_byref_object_dispose__4;
            v17 = 0;
            v10 = *v7;
            v11[0] = MEMORY[0x1E69E9820];
            v11[1] = 3221225472;
            v11[2] = __79__CFPDObserverOnlyTombstone__operateOnObservingConnectionsAsMultiple_asSingle___block_invoke;
            v11[3] = &unk_1E6D7D4A0;
            v11[4] = &v12;
            CFSetApply(v10, v11);
            CFRelease(*v7);
            *v7 = v13[5];
            _Block_object_dispose(&v12, 8);
          }
        }

        else
        {
          CFRelease(*v7);
          *v7 = 0;
        }
      }

      else if (*v7)
      {
        (*(multiple + 16))(multiple, self + 24);
      }
    }

    os_unfair_lock_unlock((self + 32));
  }
}

xpc_object_t __79__CFPDObserverOnlyTombstone__operateOnObservingConnectionsAsMultiple_asSingle___block_invoke(uint64_t a1, xpc_object_t object, _BYTE *a3)
{
  result = xpc_retain(object);
  *(*(*(a1 + 32) + 8) + 40) = result;
  *a3 = 1;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  if (!equal)
  {
    LOBYTE(v7) = 0;
    return v7;
  }

  if (self == equal)
  {
    goto LABEL_15;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || self->_shmemIndex != *(equal + 18))
  {
    LOBYTE(v7) = 0;
    return v7;
  }

  domain = self->_domain;
  v6 = *(equal + 1);
  if (domain == v6 || (LOBYTE(v7) = 0, domain) && v6 && (v7 = CFEqual(self->_domain, v6)) != 0)
  {
    userOrContainer = self->_userOrContainer;
    v9 = *(equal + 2);
    if (userOrContainer != v9)
    {
      LOBYTE(v7) = 0;
      if (userOrContainer && v9)
      {
        LOBYTE(v7) = CFEqual(self->_userOrContainer, v9) != 0;
      }

      return v7;
    }

LABEL_15:
    LOBYTE(v7) = 1;
  }

  return v7;
}

- (void)removeObservingConnection:(id)connection daemon:(id)daemon
{
  v5[6] = *MEMORY[0x1E69E9840];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __62__CFPDObserverOnlyTombstone_removeObservingConnection_daemon___block_invoke;
  v5[3] = &unk_1E6DD1C10;
  v5[4] = self;
  v5[5] = connection;
  os_unfair_lock_lock(daemon + 12);
  (__62__CFPDObserverOnlyTombstone_removeObservingConnection_daemon___block_invoke)(v5, *(daemon + 4), *(daemon + 5));
  os_unfair_lock_unlock(daemon + 12);
}

void __62__CFPDObserverOnlyTombstone_removeObservingConnection_daemon___block_invoke(uint64_t a1, __CFSet *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v4 = *(a1 + 32);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __62__CFPDObserverOnlyTombstone_removeObservingConnection_daemon___block_invoke_2;
  v7[3] = &unk_1E6DD1BC0;
  v8 = *(a1 + 40);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __62__CFPDObserverOnlyTombstone_removeObservingConnection_daemon___block_invoke_3;
  v6[3] = &unk_1E6DD1BE8;
  v6[4] = v8;
  v6[5] = &v9;
  [(CFPDObserverOnlyTombstone *)v4 _operateOnObservingConnectionsAsMultiple:v7 asSingle:v6];
  if (*(v10 + 24) == 1)
  {
    v5 = *(a1 + 32);
    CFSetRemoveValue(a2, *(a1 + 32));
  }

  _Block_object_dispose(&v9, 8);
}

void __62__CFPDObserverOnlyTombstone_removeObservingConnection_daemon___block_invoke_3(uint64_t a1, xpc_object_t *a2)
{
  if (*a2 == *(a1 + 32))
  {
    xpc_release(*a2);
    *a2 = 0;
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

- (void)transferObservingConnectionsToSource:(id)source
{
  v7[6] = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(source + 27);
  os_unfair_lock_lock(source + 25);
  if (*(source + 9))
  {
    [CFPDObserverOnlyTombstone transferObservingConnectionsToSource:];
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __66__CFPDObserverOnlyTombstone_transferObservingConnectionsToSource___block_invoke;
  v7[3] = &unk_1E6DD1C38;
  v7[4] = self;
  v7[5] = source;
  v5[4] = v7;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __66__CFPDObserverOnlyTombstone_transferObservingConnectionsToSource___block_invoke_2;
  v6[3] = &unk_1E6DD1C60;
  v6[4] = v7;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __66__CFPDObserverOnlyTombstone_transferObservingConnectionsToSource___block_invoke_3;
  v5[3] = &unk_1E6DD1C88;
  [(CFPDObserverOnlyTombstone *)self _operateOnObservingConnectionsAsMultiple:v6 asSingle:v5];
  os_unfair_lock_unlock(source + 25);
  os_unfair_lock_unlock(source + 27);
}

void __66__CFPDObserverOnlyTombstone_transferObservingConnectionsToSource___block_invoke(uint64_t a1, void *a2)
{
  if ([CFPDObserverOnlyTombstone replaceObserved:*(a1 + 40) withObserved:a2 forConnection:?])
  {
    v4 = *(*(a1 + 40) + 72);
    if (!v4)
    {
      *(*(a1 + 40) + 72) = CFSetCreateMutable(0, 0, &kCFTypeSetCallBacks);
      v4 = *(*(a1 + 40) + 72);
    }

    CFSetAddValue(v4, a2);
  }
}

void __66__CFPDObserverOnlyTombstone_transferObservingConnectionsToSource___block_invoke_2(uint64_t a1, __CFSet *a2)
{
  CFSetApply(a2, *(a1 + 32));

  CFSetRemoveAllValues(a2);
}

void __66__CFPDObserverOnlyTombstone_transferObservingConnectionsToSource___block_invoke_3(uint64_t a1, xpc_object_t *a2)
{
  (*(*(a1 + 32) + 16))();
  xpc_release(*a2);
  *a2 = 0;
}

void __72__CFPDObserverOnlyTombstone_replaceObserved_withObserved_forConnection___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    v5 = *(a1 + 32);
    if (v5 != *(a1 + 40))
    {
      CFSetRemoveValue(v3, v5);
      v6 = *(a2 + 24);
      v7 = *(a1 + 40);

      CFSetAddValue(v6, v7);
    }
  }
}

- (id)description
{
  v3 = objc_msgSend(MEMORY[0x1E696AD60], "stringWithFormat:", @"Tombstone for CFPDSource (domain: %@, "), self->_domain;
  if (CFStringHasPrefix(self->_userOrContainer, @"/"))
  {
    v4 = @"container: %@, ";
  }

  else
  {
    v4 = @"user: %@, ";
  }

  [v3 appendFormat:v4, self->_userOrContainer];
  [v3 appendFormat:@"shmemIndex: %d"], self->_shmemIndex);
  return v3;
}

- (void)_sendNotificationToConnection:(uint64_t)connection
{
  location[1] = *MEMORY[0x1E69E9840];
  if (connection)
  {
    os_unfair_lock_assert_owner((connection + 32));
    v4 = *(connection + 38);
    if ((v4 & 2) != 0)
    {
      *(connection + 38) = v4 | 4;
    }

    else
    {
      *(connection + 38) = v4 & 0xF9 | 2;
      objc_initWeak(location, connection);
      keys = "CFPreferencesDomain";
      values = _CFXPCCreateXPCObjectFromCFObject(*(connection + 8));
      v5 = xpc_dictionary_create(&keys, &values, 1uLL);
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = __59__CFPDObserverOnlyTombstone__sendNotificationToConnection___block_invoke;
      handler[3] = &unk_1E6DD1CD8;
      objc_copyWeak(&v7, location);
      handler[4] = connection;
      handler[5] = a2;
      xpc_connection_send_message_with_reply(a2, v5, 0, handler);
      xpc_release(values);
      xpc_release(v5);
      objc_destroyWeak(&v7);
      objc_destroyWeak(location);
    }
  }
}

void __59__CFPDObserverOnlyTombstone__sendNotificationToConnection___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    os_unfair_lock_lock(WeakRetained + 8);
    *(*(a1 + 32) + 38) &= ~2u;
    v3 = *(a1 + 32);
    if ((*(v3 + 38) & 4) != 0)
    {
      [(CFPDObserverOnlyTombstone *)v3 _sendNotificationToConnection:?];
    }

    os_unfair_lock_unlock(v4 + 8);
  }
}

- (void)notifyObservers
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = *(self + 8);
  v3 = *(self + 38) & 1;
  v4 = 138543618;
  v5 = v2;
  v6 = 1024;
  v7 = v3;
  _os_log_debug_impl(&dword_1830E6000, a2, OS_LOG_TYPE_DEBUG, "Notifying observers of { %{public}@, managed: %d }", &v4, 0x12u);
}

void *__44__CFPDObserverOnlyTombstone_notifyObservers__block_invoke_2(uint64_t a1, void *a2)
{
  v3[5] = *MEMORY[0x1E69E9840];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __44__CFPDObserverOnlyTombstone_notifyObservers__block_invoke_3;
  v3[3] = &unk_1E6DD1D28;
  v3[4] = *(a1 + 32);
  return CFSetApply(a2, v3);
}

@end