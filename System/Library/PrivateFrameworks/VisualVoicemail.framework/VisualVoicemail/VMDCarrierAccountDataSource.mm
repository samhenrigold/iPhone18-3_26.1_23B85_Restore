@interface VMDCarrierAccountDataSource
- (NSArray)accounts;
- (NSOperationQueue)delegateQueue;
- (VMAccountDataSourceDelegate)delegate;
- (VMDCarrierAccountDataSource)init;
- (VMDCarrierAccountDataSource)initWithServicesController:(id)controller queue:(id)queue telephonyClient:(id)client;
- (id)findValidContextForSubscription:(id)subscription;
- (void)checkUpdateAccounts;
- (void)dataMigration_legacy:(id)migration_legacy context:(id)context isoCountryCode:(id)code phone:(id)phone accountDir:(id)dir;
- (void)dealloc;
- (void)handleVMCarrierIMAPParametersChangedNotification:(id)notification;
- (void)local_voicemailInfoAvailableNotification:(id)notification voicemailInfo:(id)info;
- (void)notifyDelegateAccountsDidChange;
- (void)performAtomicAccessorBlock:(id)block;
- (void)performSynchronousBlock:(id)block;
- (void)setAccount:(id)account forUUID:(id)d;
- (void)setAccounts:(id)accounts;
- (void)setDelegate:(id)delegate;
- (void)setDelegateQueue:(id)queue;
- (void)updateAccount:(id)account withDictionary:(id)dictionary;
@end

@implementation VMDCarrierAccountDataSource

- (NSArray)accounts
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_100043C30;
  v9 = sub_100043C40;
  v10 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100003E0C;
  v4[3] = &unk_1000ED428;
  v4[4] = self;
  v4[5] = &v5;
  [(VMDCarrierAccountDataSource *)self performSynchronousBlock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (VMDCarrierAccountDataSource)init
{
  [(VMDCarrierAccountDataSource *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (VMDCarrierAccountDataSource)initWithServicesController:(id)controller queue:(id)queue telephonyClient:(id)client
{
  controllerCopy = controller;
  queueCopy = queue;
  clientCopy = client;
  v19.receiver = self;
  v19.super_class = VMDCarrierAccountDataSource;
  v12 = [(VMDCarrierAccountDataSource *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_queue, queue);
    dispatch_queue_set_specific(v13->_queue, off_10010D130, v13, 0);
    v13->_accessorLock._os_unfair_lock_opaque = 0;
    v14 = objc_opt_new();
    accounts = v13->_accounts;
    v13->_accounts = v14;

    objc_storeStrong(&v13->_carrierServicesController, controller);
    [controllerCopy setCarrierAccountDataSource:v13];
    [(VMDCarrierAccountDataSource *)v13 setTelephonyClient:clientCopy];
    queue = [(VMDCarrierAccountDataSource *)v13 queue];
    [clientCopy addDelegate:v13 queue:queue];

    v17 = +[NSNotificationCenter defaultCenter];
    [v17 addObserver:v13 selector:"handleVMCarrierIMAPParametersChangedNotification:" name:@"VMCarrierIMAPParametersChangedNotification" object:0];
  }

  return v13;
}

- (void)dealloc
{
  telephonyClient = [(VMDCarrierAccountDataSource *)self telephonyClient];
  [telephonyClient removeDelegate:self];

  v4.receiver = self;
  v4.super_class = VMDCarrierAccountDataSource;
  [(VMDCarrierAccountDataSource *)&v4 dealloc];
}

- (VMAccountDataSourceDelegate)delegate
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_100043C30;
  v9 = sub_100043C40;
  v10 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100043D48;
  v4[3] = &unk_1000ED428;
  v4[4] = self;
  v4[5] = &v5;
  [(VMDCarrierAccountDataSource *)self performAtomicAccessorBlock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (void)setDelegate:(id)delegate
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100043E28;
  v4[3] = &unk_1000ED450;
  selfCopy = self;
  delegateCopy = delegate;
  v3 = delegateCopy;
  [(VMDCarrierAccountDataSource *)selfCopy performAtomicAccessorBlock:v4];
}

- (NSOperationQueue)delegateQueue
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_100043C30;
  v9 = sub_100043C40;
  v10 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100043F98;
  v4[3] = &unk_1000ED428;
  v4[4] = self;
  v4[5] = &v5;
  [(VMDCarrierAccountDataSource *)self performAtomicAccessorBlock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (void)setDelegateQueue:(id)queue
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100044078;
  v4[3] = &unk_1000ED450;
  selfCopy = self;
  queueCopy = queue;
  v3 = queueCopy;
  [(VMDCarrierAccountDataSource *)selfCopy performAtomicAccessorBlock:v4];
}

- (void)setAccounts:(id)accounts
{
  accountsCopy = accounts;
  queue = [(VMDCarrierAccountDataSource *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = vm_vmd_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    accounts = self->_accounts;
    v12 = 138412546;
    v13 = accountsCopy;
    v14 = 2112;
    accountsCopy2 = accounts;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Set accounts to %@ from %@", &v12, 0x16u);
  }

  if (![(NSArray *)self->_accounts isEqualToArray:accountsCopy])
  {
    v8 = [(NSArray *)accountsCopy copy];
    v9 = self->_accounts;
    self->_accounts = v8;

    v10 = vm_vmd_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = self->_accounts;
      v12 = 138412290;
      v13 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Notifying delegate the list of accounts was set to %@", &v12, 0xCu);
    }

    [(VMDCarrierAccountDataSource *)self notifyDelegateAccountsDidChange];
  }
}

- (void)setAccount:(id)account forUUID:(id)d
{
  accountCopy = account;
  dCopy = d;
  queue = [(VMDCarrierAccountDataSource *)self queue];
  dispatch_assert_queue_V2(queue);

  v9 = [(NSArray *)self->_accounts mutableCopy];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100044478;
  v22[3] = &unk_1000EE7B0;
  v10 = dCopy;
  v23 = v10;
  v11 = [v9 indexOfObjectPassingTest:v22];
  if (v11 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000444CC;
    v15[3] = &unk_1000ED450;
    v16 = v9;
    v17 = accountCopy;
    v12 = objc_retainBlock(v15);

    v13 = v16;
  }

  else
  {
    v14 = v11;
    v13 = [v9 objectAtIndexedSubscript:v11];
    if ([v13 isEqualToAccount:accountCopy])
    {
      v12 = 0;
    }

    else
    {
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_1000444BC;
      v18[3] = &unk_1000EE7D8;
      v19 = v9;
      v21 = v14;
      v20 = accountCopy;
      v12 = objc_retainBlock(v18);
    }
  }

  if (v12)
  {
    (v12[2])(v12);
    objc_storeStrong(&self->_accounts, v9);
    [(VMDCarrierAccountDataSource *)self notifyDelegateAccountsDidChange];
  }
}

- (void)dataMigration_legacy:(id)migration_legacy context:(id)context isoCountryCode:(id)code phone:(id)phone accountDir:(id)dir
{
  dirCopy = dir;
  phoneCopy = phone;
  codeCopy = code;
  migration_legacyCopy = migration_legacy;
  v15 = objc_alloc_init(VVDataMigrator);
  [(VVDataMigrator *)v15 setLabel:migration_legacyCopy];

  [(VVDataMigrator *)v15 setAccountDir:dirCopy];
  [(VVDataMigrator *)v15 setIsoCountryCode:codeCopy];
  v14 = sub_100025188(phoneCopy, codeCopy);

  [(VVDataMigrator *)v15 setNormalizedPhoneNumber:v14];
  [(VVDataMigrator *)v15 createFoldersIfNecessary];
  [(VVDataMigrator *)v15 performMigrationIfNecessary];
}

- (id)findValidContextForSubscription:(id)subscription
{
  subscriptionCopy = subscription;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  telephonyClient = [(VMDCarrierAccountDataSource *)self telephonyClient];
  subscriptions = [telephonyClient subscriptions];

  v7 = [subscriptions countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(subscriptions);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        uuid = [v10 uuid];
        uuid2 = [subscriptionCopy uuid];
        v13 = [uuid isEqual:uuid2];

        if (v13)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [subscriptions countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

- (void)checkUpdateAccounts
{
  selfCopy = self;
  queue = [(VMDCarrierAccountDataSource *)self queue];
  dispatch_assert_queue_V2(queue);

  v93 = +[NSMutableArray array];
  telephonyClient = [(VMDCarrierAccountDataSource *)selfCopy telephonyClient];
  contexts = [telephonyClient contexts];

  v6 = vm_vmd_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v112 = contexts;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Update accounts for active contexts %@", buf, 0xCu);
  }

  v109 = 0u;
  v110 = 0u;
  v107 = 0u;
  v108 = 0u;
  v88 = contexts;
  subscriptions = [contexts subscriptions];
  v8 = [subscriptions countByEnumeratingWithState:&v107 objects:v117 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v108;
    v96 = selfCopy;
    v92 = subscriptions;
    v100 = *v108;
    do
    {
      v11 = 0;
      v98 = v9;
      do
      {
        if (*v108 != v10)
        {
          objc_enumerationMutation(subscriptions);
        }

        v12 = *(*(&v107 + 1) + 8 * v11);
        if (![v12 slotID])
        {
          v13 = vm_vmd_log();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v112 = v12;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Current context is not supported; cancelling account creation for subscription %@", buf, 0xCu);
          }
        }

        context = [v12 context];
        telephonyClient2 = [(VMDCarrierAccountDataSource *)selfCopy telephonyClient];
        v16 = [telephonyClient2 carrierBundle:v12];

        v103 = context;
        if ([v16 isServiceSupportedForSubscription])
        {
          v17 = [(VMDCarrierAccountDataSource *)selfCopy findValidContextForSubscription:context];
          if (!v17)
          {
            v18 = vm_vmd_log();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v112 = v103;
              _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Could not find valid context for subscription %@", buf, 0xCu);
            }
          }

          isSimDataOnly = [v17 isSimDataOnly];
          v20 = vm_vmd_log();
          v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
          if (isSimDataOnly)
          {
            if (v21)
            {
              *buf = 138412290;
              v112 = v12;
              _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Current context does not support voice service; cancelling account creation for subscription %@", buf, 0xCu);
            }

            goto LABEL_78;
          }

          if (v21)
          {
            *buf = 138412290;
            v112 = v12;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Carrier supports voicemail; creating account for subscription %@", buf, 0xCu);
          }

          telephonyClient3 = [(VMDCarrierAccountDataSource *)selfCopy telephonyClient];
          v20 = [telephonyClient3 voicemailPhoneNumber:v12];

          v23 = vm_vmd_log();
          v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
          if (v20)
          {
            if (v24)
            {
              *buf = 138412546;
              v112 = v20;
              v113 = 2112;
              v114 = v12;
              v25 = v23;
              v26 = "Call voicemail with phoneNumber '%@' is supported for subscription %@";
              v27 = 22;
              goto LABEL_29;
            }
          }

          else if (v24)
          {
            *buf = 138412290;
            v112 = v12;
            v25 = v23;
            v26 = "Call voicemail is not supported for subscription %@, invalid voicemail phoneNumber";
            v27 = 12;
LABEL_29:
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, v26, buf, v27);
          }

          v28 = [NSUUID alloc];
          labelID = [v12 labelID];
          v30 = [v28 initWithUUIDString:labelID];

          telephonyClient4 = [(VMDCarrierAccountDataSource *)selfCopy telephonyClient];
          v32 = [telephonyClient4 isoCountryCode:v12];

          v101 = v32;
          if (!v30 || !v32)
          {
            v38 = vm_vmd_log();
            if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412802;
              v112 = v30;
              v113 = 2112;
              v114 = v32;
              v115 = 2112;
              v116 = v12;
              _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Invalid label UUID %@ or ISO country code %@; unable to create account for subscription %@", buf, 0x20u);
            }

            goto LABEL_77;
          }

          accountID = [v12 accountID];
          v102 = sub_1000855D4(accountID);

          v34 = VMMap_copyAccountForLabel(v30);
          if (v34)
          {
            v35 = v34;
            accountID2 = [v12 accountID];
            v37 = [accountID2 isEqualToString:v35];

            if (v37)
            {
              v95 = v35;
LABEL_53:
              v97 = v30;
              v50 = [[VMMutableAccount alloc] initWithUUID:v30];
              telephonyClient5 = [(VMDCarrierAccountDataSource *)selfCopy telephonyClient];
              context2 = [v12 context];
              v106 = 0;
              [telephonyClient5 getShortLabel:context2 error:&v106];
              v54 = v53 = selfCopy;
              v94 = v106;
              [v50 setAbbreviatedAccountDescription:v54];

              label = [v12 label];
              [v50 setAccountDescription:label];

              telephonyClient6 = [(VMDCarrierAccountDataSource *)v53 telephonyClient];
              v57 = [telephonyClient6 isoCountryCode:v12];
              v99 = v50;
              [v50 setIsoCountryCode:v57];

              v58 = +[NSFileManager defaultManager];
              path = [v102 path];
              LOBYTE(v54) = [v58 fileExistsAtPath:path];

              subscriptions = v92;
              if (v54)
              {
                goto LABEL_68;
              }

              phoneNumber = [v12 phoneNumber];
              if (!phoneNumber)
              {
                goto LABEL_68;
              }

              v61 = phoneNumber;
              phoneNumber2 = [v12 phoneNumber];
              v63 = [phoneNumber2 length];

              if (!v63)
              {
                goto LABEL_68;
              }

              phoneNumber3 = [v12 phoneNumber];
              v65 = v101;
              v66 = sub_10002532C(phoneNumber3, v101);

              v91 = v66;
              if (v66)
              {
                uUIDString = [v66 UUIDString];
                v68 = sub_1000856C8(uUIDString);

                v70 = v96;
                v69 = v97;
                if (v68)
                {
                  v71 = +[NSFileManager defaultManager];
                  v105 = 0;
                  v90 = v68;
                  v72 = [v71 moveItemAtURL:v68 toURL:v102 error:&v105];
                  v89 = v105;

                  if (v72)
                  {
                    v73 = vm_vmd_log();
                    if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
                    {
                      path2 = [v68 path];
                      path3 = [v102 path];
                      *buf = 138412546;
                      v112 = path2;
                      v113 = 2112;
                      v114 = path3;
                      _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_DEFAULT, "successfully moved old storage from %@ to %@", buf, 0x16u);

                      v76 = v91;
                      goto LABEL_67;
                    }

LABEL_66:
                    v68 = v90;
                    v76 = v91;
LABEL_67:

LABEL_68:
                    v79 = [v102 URLByAppendingPathComponent:@"com.apple.voicemail.imap.parameters.plist" isDirectory:0];
                    v80 = +[NSFileManager defaultManager];
                    path4 = [v79 path];
                    v82 = [v80 fileExistsAtPath:path4];

                    v30 = v97;
                    if (v82)
                    {
                      v83 = [NSDictionary alloc];
                      v104 = 0;
                      v84 = [v83 initWithContentsOfURL:v79 error:&v104];
                      v85 = v104;
                      v86 = v85;
                      if (v84)
                      {
                        [(VMDCarrierAccountDataSource *)v96 updateAccount:v99 withDictionary:v84];
                      }

                      else if (v85)
                      {
                        v87 = vm_vmd_log();
                        if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
                        {
                          *buf = 138412546;
                          v112 = v79;
                          v113 = 2112;
                          v114 = v86;
                          _os_log_error_impl(&_mh_execute_header, v87, OS_LOG_TYPE_ERROR, "Could not open account file at %@ due to error %@", buf, 0x16u);
                        }
                      }
                    }

                    [v93 addObject:v99];

                    selfCopy = v96;
                    v38 = v102;
LABEL_77:

                    v9 = v98;
LABEL_78:

                    v10 = v100;
                    goto LABEL_79;
                  }

                  v65 = v101;
LABEL_64:
                  v69 = v97;
                }

                else
                {
                  v89 = 0;
                  v90 = 0;
                }

                phoneNumber4 = [v12 phoneNumber];
                v78 = v65;
                v73 = phoneNumber4;
                [(VMDCarrierAccountDataSource *)v70 dataMigration_legacy:v69 context:v12 isoCountryCode:v78 phone:phoneNumber4 accountDir:v102];
                goto LABEL_66;
              }

              v89 = 0;
              v90 = 0;
              v70 = v96;
              goto LABEL_64;
            }

            v39 = vm_vmd_log();
            if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
            {
              uUIDString2 = [v30 UUIDString];
              *buf = 138412546;
              v112 = v35;
              v113 = 2112;
              v114 = uUIDString2;
              _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "found old mapping %@ <> %@ - unmapping", buf, 0x16u);
            }

            while (1)
            {
              v41 = VMMap_copyRecordWithLabel(v30);
              v42 = v41;
              if (!v41)
              {
                break;
              }

              VMMap_removeRecord(v41);
              CFRelease(v42);
              sub_100093258(v35);
            }

            while (1)
            {
              v43 = VMMap_copyRecordWithAccount([v12 accountID]);
              v44 = v43;
              if (!v43)
              {
                break;
              }

              VMMap_removeRecord(v43);
              CFRelease(v44);
            }
          }

          v45 = VMMap_addRecord([v12 accountID], v30);
          if (v45)
          {
            CFRelease(v45);
            v46 = vm_vmd_log();
            if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
            {
              accountID3 = [v12 accountID];
              *buf = 138412546;
              v112 = accountID3;
              v113 = 2112;
              v114 = v30;
              v48 = v46;
              v49 = "created new account map record: %@ <=> %@";
              goto LABEL_51;
            }
          }

          else
          {
            v46 = vm_vmd_log();
            if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
            {
              accountID3 = [v12 accountID];
              *buf = 138412546;
              v112 = accountID3;
              v113 = 2112;
              v114 = v30;
              v48 = v46;
              v49 = "FAILED to create new account map record: %@ <=> %@";
LABEL_51:
              _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, v49, buf, 0x16u);
            }
          }

          VMStoreSave();
          v95 = 0;
          selfCopy = v96;
          goto LABEL_53;
        }

        v17 = vm_vmd_log();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v112 = v12;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Carrier does not support voicemail; cancelling account creation for subscription %@", buf, 0xCu);
        }

LABEL_79:

        v11 = v11 + 1;
      }

      while (v11 != v9);
      v9 = [subscriptions countByEnumeratingWithState:&v107 objects:v117 count:16];
    }

    while (v9);
  }

  [(VMDCarrierAccountDataSource *)selfCopy setAccounts:v93];
}

- (void)updateAccount:(id)account withDictionary:(id)dictionary
{
  accountCopy = account;
  dictionaryCopy = dictionary;
  queue = [(VMDCarrierAccountDataSource *)self queue];
  dispatch_assert_queue_V2(queue);

  v8 = [dictionaryCopy objectForKeyedSubscript:@"AccountState"];
  v9 = [dictionaryCopy objectForKeyedSubscript:@"AccountSettings"];

  v10 = sub_10006B7C4();
  v11 = [v9 objectForKeyedSubscript:v10];

  if (v8)
  {
    [accountCopy setProvisioned:{objc_msgSend(v8, "isEqualToString:", @"NewAccount"}];
  }

  if (v11)
  {
    v12 = [[VMHandle alloc] initWithType:1 value:v11];
    [accountCopy setHandle:v12];
  }
}

- (void)performAtomicAccessorBlock:(id)block
{
  blockCopy = block;
  if (blockCopy)
  {
    os_unfair_lock_lock_with_options();
    blockCopy[2]();
    os_unfair_lock_unlock(&self->_accessorLock);
  }

  else
  {
    sub_10009CF54(a2, self);
  }
}

- (void)performSynchronousBlock:(id)block
{
  if (dispatch_get_specific(off_10010D130) == self)
  {
    v6 = *(block + 2);
    blockCopy = block;
    v6();
  }

  else
  {
    blockCopy2 = block;
    blockCopy = [(VMDCarrierAccountDataSource *)self queue];
    dispatch_sync(blockCopy, blockCopy2);
  }
}

- (void)notifyDelegateAccountsDidChange
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_loadWeakRetained(&self->_delegateQueue);
  underlyingQueue = [v4 underlyingQueue];

  if (!underlyingQueue)
  {
    underlyingQueue = &_dispatch_main_q;
    v6 = &_dispatch_main_q;
  }

  if (objc_opt_respondsToSelector())
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100045614;
    v7[3] = &unk_1000ED450;
    v8 = WeakRetained;
    selfCopy = self;
    dispatch_async(underlyingQueue, v7);
  }
}

- (void)local_voicemailInfoAvailableNotification:(id)notification voicemailInfo:(id)info
{
  notificationCopy = notification;
  infoCopy = info;
  queue = [(VMDCarrierAccountDataSource *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000456F8;
  block[3] = &unk_1000ED478;
  block[4] = self;
  v12 = infoCopy;
  v13 = notificationCopy;
  v9 = notificationCopy;
  v10 = infoCopy;
  dispatch_async(queue, block);
}

- (void)handleVMCarrierIMAPParametersChangedNotification:(id)notification
{
  notificationCopy = notification;
  v5 = vm_vmd_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v13 = objc_opt_class();
    v14 = 2112;
    v15 = notificationCopy;
    v6 = v13;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ is handling %@ ", buf, 0x16u);
  }

  queue = [(VMDCarrierAccountDataSource *)self queue];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100045D44;
  v9[3] = &unk_1000ED450;
  v10 = notificationCopy;
  selfCopy = self;
  v8 = notificationCopy;
  dispatch_async(queue, v9);
}

@end