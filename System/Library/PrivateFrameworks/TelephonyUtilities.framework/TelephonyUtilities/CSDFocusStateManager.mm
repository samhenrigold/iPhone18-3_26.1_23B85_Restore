@interface CSDFocusStateManager
+ (CSDFocusStateManager)sharedManager;
- (BOOL)contactInDeniedContactsList:(id)list;
- (CSDFocusStateManager)init;
- (DNDConfiguration)dndConfiguration;
- (DNDStateService)dndStateService;
- (id)dndContactHandleForAddress:(id)address;
- (void)dealloc;
@end

@implementation CSDFocusStateManager

+ (CSDFocusStateManager)sharedManager
{
  if (qword_1006ACAD8 != -1)
  {
    sub_10047167C();
  }

  v3 = qword_1006ACAD0;

  return v3;
}

- (CSDFocusStateManager)init
{
  v6.receiver = self;
  v6.super_class = CSDFocusStateManager;
  v2 = [(CSDFocusStateManager *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v4 = sub_100004778(v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v8 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "CSDFocusStateManager init: %p", buf, 0xCu);
    }
  }

  return v3;
}

- (void)dealloc
{
  v3 = sub_100004778(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "CSDFocusStateManager dealloc: %p", buf, 0xCu);
  }

  v4.receiver = self;
  v4.super_class = CSDFocusStateManager;
  [(CSDFocusStateManager *)&v4 dealloc];
}

- (DNDStateService)dndStateService
{
  dndStateService = self->_dndStateService;
  if (!dndStateService)
  {
    v4 = [CUTWeakLinkClass() serviceForClientIdentifier:@"com.apple.TelephonyUtilities"];
    v5 = self->_dndStateService;
    self->_dndStateService = v4;

    dndStateService = self->_dndStateService;
  }

  return dndStateService;
}

- (DNDConfiguration)dndConfiguration
{
  dndStateService = [(CSDFocusStateManager *)self dndStateService];
  v13 = 0;
  v4 = [dndStateService queryCurrentStateWithError:&v13];
  v5 = v13;

  dndState = sub_100004778(v6);
  v8 = os_log_type_enabled(dndState, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    v9 = 1;
  }

  else
  {
    v9 = v4 == 0;
  }

  if (v9)
  {
    if (v8)
    {
      *buf = 138412290;
      v15 = v5;
      _os_log_impl(&_mh_execute_header, dndState, OS_LOG_TYPE_DEFAULT, "simFocus: Error querying DND state: %@", buf, 0xCu);
    }

    configuration = 0;
  }

  else
  {
    if (v8)
    {
      *buf = 138412290;
      v15 = v4;
      _os_log_impl(&_mh_execute_header, dndState, OS_LOG_TYPE_DEFAULT, "simFocus: DND state is: %@", buf, 0xCu);
    }

    [(CSDFocusStateManager *)self setDndState:v4];
    dndState = [(CSDFocusStateManager *)self dndState];
    activeModeConfiguration = [dndState activeModeConfiguration];
    configuration = [activeModeConfiguration configuration];
  }

  return configuration;
}

- (BOOL)contactInDeniedContactsList:(id)list
{
  listCopy = list;
  dndConfiguration = [(CSDFocusStateManager *)self dndConfiguration];
  v6 = dndConfiguration;
  if (dndConfiguration && ([dndConfiguration senderConfiguration], v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
  {
    senderConfiguration = [v6 senderConfiguration];
    deniedContacts = [senderConfiguration deniedContacts];

    v10 = [deniedContacts count];
    v11 = sub_100004778(v10);
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (v10)
    {
      if (v12)
      {
        *buf = 138412290;
        v26 = listCopy;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "simFocus: check if contact (%@) is in denied list", buf, 0xCu);
      }

      v11 = [(CSDFocusStateManager *)self dndContactHandleForAddress:listCopy];
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v13 = deniedContacts;
      v14 = [v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v14)
      {
        v15 = *v21;
        while (2)
        {
          for (i = 0; i != v14; i = i + 1)
          {
            if (*v21 != v15)
            {
              objc_enumerationMutation(v13);
            }

            if ([*(*(&v20 + 1) + 8 * i) matchesContactHandle:{v11, v20}])
            {
              LODWORD(v14) = 1;
              goto LABEL_19;
            }
          }

          v14 = [v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
          if (v14)
          {
            continue;
          }

          break;
        }
      }

LABEL_19:

      v18 = sub_100004778(v17);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(v26) = v14;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "simFocus: contactInDeniedList : %d", buf, 8u);
      }
    }

    else
    {
      if (v12)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "simFocus: no contacts in denied list", buf, 2u);
      }

      LOBYTE(v14) = 0;
    }
  }

  else
  {
    deniedContacts = sub_100004778(dndConfiguration);
    if (os_log_type_enabled(deniedContacts, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, deniedContacts, OS_LOG_TYPE_DEFAULT, "simFocus: dndConfiguration is nil", buf, 2u);
    }

    LOBYTE(v14) = 0;
  }

  return v14;
}

- (id)dndContactHandleForAddress:(id)address
{
  addressCopy = address;
  v4 = objc_alloc_init(DNDMutableContactHandle);
  [v4 setValue:addressCopy];

  [v4 setType:2];
  v5 = [v4 copy];

  return v5;
}

@end