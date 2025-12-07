@interface RDServer
+ (id)sharedBubbleXPCInterface;
+ (id)sharedServer;
+ (id)sharedXPCInterface;
- (BOOL)LogoutToUser:(id)user;
- (BOOL)anyBubblePopClients;
- (BOOL)inLoginSession;
- (BOOL)inLogoutProcess;
- (BOOL)notifyNextPersonaObserver:(id)observer withUser:(unsigned int)user;
- (BOOL)remoteProcessHasBooleanEntitlement:(id)entitlement;
- (BOOL)retrievePasscodeFromFileHandle:(id)handle ofLength:(unint64_t)length withbaseaddress:(char *)withbaseaddress;
- (RDServer)init;
- (id)_allowlistedPreferencesKeys;
- (id)_clientForPID:(int)d;
- (id)bubbleStakeHolder;
- (id)criticalStakeHolder;
- (id)fetchUserBlockTaskList;
- (id)fetchUserSyncTaskList;
- (int)asidForClient:(id)client withAuid:(unsigned int *)auid withPid:(int)pid;
- (void)StopBubbleWithPID:(int)d WithUID:(unsigned int)iD WithStatus:(unint64_t)status;
- (void)_broadcastPersonaUpdates:(id)updates withAuid:(unsigned int)auid;
- (void)_checkIfWeShouldSwitchUser:(BOOL)user;
- (void)_enumerateClientsWithBlock:(id)block;
- (void)_reallySwitchUser:(BOOL)user;
- (void)addBubbleClient:(id)client;
- (void)addClient:(id)client;
- (void)addUserSwitchBlockingTask:(id)task forPID:(int)d completionHandler:(id)handler;
- (void)addUserSyncTask:(id)task forPID:(int)d completionHandler:(id)handler;
- (void)createPersona:(id)persona withSecret:(id)secret secretSize:(unint64_t)size passcodeDataType:(unint64_t)type forPid:(int)pid completionHandler:(id)handler;
- (void)deletePersona:(id)persona forPid:(int)pid completionHandler:(id)handler;
- (void)directSwitchToUser:(id)user withSecret:(id)secret secretSize:(unint64_t)size context:(id)context preferences:(id)preferences pid:(int)pid completionHandler:(id)handler;
- (void)disablePersona:(id)persona forPid:(int)pid completionHandler:(id)handler;
- (void)fetchAllUsersPersonaListforPid:(int)pid withCompletionHandler:(id)handler;
- (void)fetchAsidMapforPid:(int)pid withCompletionHandler:(id)handler;
- (void)fetchBundleIdentifiersForPersona:(id)persona forPid:(int)pid completionHandler:(id)handler;
- (void)fetchMachServiceNameswithPID:(int)d WithUID:(unsigned int)iD WithCompletionHandler:(id)handler;
- (void)fetchMultiPersonaBundleIdentifiersforPid:(int)pid withCompletionHandler:(id)handler;
- (void)fetchPersona:(id)persona forPid:(int)pid completionHandler:(id)handler;
- (void)fetchPersonaListforPid:(int)pid withCompletionHandler:(id)handler;
- (void)fetchUserSwitchBlockingTaskListWithCompletionHandler:(id)handler;
- (void)loginComplete;
- (void)loginUICheckinForPID:(int)d completionHandler:(id)handler;
- (void)logoutToLoginSessionWithPID:(int)d completionHandler:(id)handler;
- (void)personaLoginWithPid:(int)pid WithUserODuuid:(id)duuid withUid:(unsigned int)uid completionHandler:(id)handler;
- (void)personaLogoutWithPid:(int)pid WithUserODuuid:(id)duuid withUid:(unsigned int)uid completionHandler:(id)handler;
- (void)provisionDevice:(id)device forPid:(int)pid completionHandler:(id)handler;
- (void)reengageUserQuotaForPID:(int)d completionHandler:(id)handler;
- (void)registerBubblePopStakeholderForPID:(int)d completionHandler:(id)handler;
- (void)registerCriticalUserSwitchStakeholderForPID:(int)d completionHandler:(id)handler;
- (void)registerUserPersonaObserverForPID:(int)d withMachServiceName:(id)name completionHandler:(id)handler;
- (void)registerUserPersonaStakeholderForPID:(int)d completionHandler:(id)handler;
- (void)registerUserSwitchStakeholderForPID:(int)d completionHandler:(id)handler;
- (void)registerUserSyncStakeholderForPID:(int)d machServiceName:(id)name completionHandler:(id)handler;
- (void)removeBubbleClient:(id)client;
- (void)removeClient:(id)client;
- (void)removeMachServiceName:(id)name withPID:(int)d WithUID:(unsigned int)iD;
- (void)removeUserSwitchBlockingTask:(id)task forPID:(int)d completionHandler:(id)handler;
- (void)removeUserSyncTask:(id)task forPID:(int)d completionHandler:(id)handler;
- (void)resetStateForUserSwitch;
- (void)resumeSyncBubbleForPID:(int)d completionHandler:(id)handler;
- (void)setMultiPersonaBundlesIdentifiers:(id)identifiers forPid:(int)pid WithcompletionHandler:(id)handler;
- (void)setSinglePersonaBundlesIdentifiers:(id)identifiers forPersona:(id)persona forPid:(int)pid completionHandler:(id)handler;
- (void)suspendUserQuotaForPID:(int)d completionHandler:(id)handler;
- (void)switchToLoginUserWithPID:(int)d completionHandler:(id)handler;
- (void)switchToUser:(id)user passcodeData:(id)data;
- (void)switchToUser:(id)user withSecret:(id)secret secretSize:(unint64_t)size context:(id)context preferences:(id)preferences pid:(int)pid completionHandler:(id)handler;
- (void)terminateSyncBubbleForPID:(int)d completionHandler:(id)handler;
- (void)unregisterStakeholderForPID:(int)d status:(unint64_t)status reason:(id)reason completionHandler:(id)handler;
@end

@implementation RDServer

+ (id)sharedServer
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100003034;
  block[3] = &unk_1000DCE88;
  block[4] = self;
  if (qword_1000EB230 != -1)
  {
    dispatch_once(&qword_1000EB230, block);
  }

  v2 = qword_1000EB228;

  return v2;
}

+ (id)sharedXPCInterface
{
  if (qword_1000EB240 != -1)
  {
    sub_100088CD8();
  }

  v3 = qword_1000EB238;

  return v3;
}

+ (id)sharedBubbleXPCInterface
{
  if (qword_1000EB250 != -1)
  {
    sub_100088CEC();
  }

  v3 = qword_1000EB248;

  return v3;
}

- (RDServer)init
{
  v6.receiver = self;
  v6.super_class = RDServer;
  v2 = [(RDServer *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    pidsToClients = v2->_pidsToClients;
    v2->_pidsToClients = v3;
  }

  return v2;
}

- (BOOL)remoteProcessHasBooleanEntitlement:(id)entitlement
{
  entitlementCopy = entitlement;
  v4 = +[NSXPCConnection currentConnection];
  v5 = [v4 valueForEntitlement:entitlementCopy];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bOOLValue = [v5 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (BOOL)retrievePasscodeFromFileHandle:(id)handle ofLength:(unint64_t)length withbaseaddress:(char *)withbaseaddress
{
  handleCopy = handle;
  v8 = handleCopy;
  if (!length)
  {
LABEL_16:
    v9 = 1;
    goto LABEL_17;
  }

  if (read([handleCopy fileDescriptor], withbaseaddress, length) != length)
  {
    if (qword_1000EB270 != -1)
    {
      sub_100088D00();
    }

    v10 = qword_1000EB268;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 0;
      v11 = sub_1000011A8(1);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v12 = v11;
      }

      else
      {
        v12 = v11 & 0xFFFFFFFE;
      }

      if (v12)
      {
        v16 = 0;
        v13 = _os_log_send_and_compose_impl(v12, &v17, 0, 0, &_mh_execute_header, v10, 0, "Failed to read the retrievePasscodeFromFileHandle", &v16, 2);
        v14 = v13;
        if (v13)
        {
          sub_100002A8C(v13);
        }
      }

      else
      {
        v14 = 0;
      }

      free(v14);
    }

    goto LABEL_16;
  }

  v9 = 0;
LABEL_17:

  return v9;
}

- (void)addClient:(id)client
{
  clientCopy = client;
  v5 = qword_1000EB610;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100003460;
  v7[3] = &unk_1000DCF10;
  v8 = clientCopy;
  selfCopy = self;
  v6 = clientCopy;
  dispatch_async(v5, v7);
}

- (void)removeClient:(id)client
{
  clientCopy = client;
  v5 = qword_1000EB610;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000035C8;
  v7[3] = &unk_1000DCF10;
  v8 = clientCopy;
  selfCopy = self;
  v6 = clientCopy;
  dispatch_async(v5, v7);
}

- (void)addBubbleClient:(id)client
{
  clientCopy = client;
  v5 = qword_1000EB610;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000386C;
  v7[3] = &unk_1000DCF10;
  v8 = clientCopy;
  selfCopy = self;
  v6 = clientCopy;
  dispatch_async(v5, v7);
}

- (void)removeBubbleClient:(id)client
{
  clientCopy = client;
  v5 = qword_1000EB610;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000039D4;
  v7[3] = &unk_1000DCF10;
  v8 = clientCopy;
  selfCopy = self;
  v6 = clientCopy;
  dispatch_async(v5, v7);
}

- (id)_clientForPID:(int)d
{
  v3 = *&d;
  pidsToClients = [(RDServer *)self pidsToClients];
  v5 = [NSNumber numberWithInt:v3];
  v6 = [pidsToClients objectForKeyedSubscript:v5];

  if (!v6)
  {
    NSLog(@"We do not have a client for pid: %d", v3);
  }

  return v6;
}

- (void)_enumerateClientsWithBlock:(id)block
{
  blockCopy = block;
  [(RDServer *)self pidsToClients];
  v16 = 0;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = v15 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v13 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = [v5 objectForKeyedSubscript:{*(*(&v12 + 1) + 8 * v9), v12}];
      blockCopy[2](blockCopy, v10, &v16);
      v11 = v16;

      if (v11)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [v5 countByEnumeratingWithState:&v12 objects:v17 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (id)criticalStakeHolder
{
  [(RDServer *)self pidsToClients];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = v12 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  v4 = 0;
  if (v3)
  {
    v5 = *v10;
    while (2)
    {
      v6 = 0;
      v7 = v4;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v4 = [v2 objectForKeyedSubscript:{*(*(&v9 + 1) + 8 * v6), v9}];

        if ([v4 criticalStakeHolder])
        {
          v4 = v4;
          v3 = v4;
          goto LABEL_11;
        }

        v6 = v6 + 1;
        v7 = v4;
      }

      while (v3 != v6);
      v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (id)bubbleStakeHolder
{
  [(RDServer *)self pidsToClients];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = v12 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  v4 = 0;
  if (v3)
  {
    v5 = *v10;
    while (2)
    {
      v6 = 0;
      v7 = v4;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v4 = [v2 objectForKeyedSubscript:{*(*(&v9 + 1) + 8 * v6), v9}];

        if ([v4 bubbleStakeHolder])
        {
          v4 = v4;
          v3 = v4;
          goto LABEL_11;
        }

        v6 = v6 + 1;
        v7 = v4;
      }

      while (v3 != v6);
      v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (void)registerUserSwitchStakeholderForPID:(int)d completionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = qword_1000EB610;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100003FBC;
  block[3] = &unk_1000DCF38;
  dCopy = d;
  block[4] = self;
  v10 = handlerCopy;
  v8 = handlerCopy;
  dispatch_async(v7, block);
}

- (void)registerCriticalUserSwitchStakeholderForPID:(int)d completionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = qword_1000EB610;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100004340;
  block[3] = &unk_1000DCF38;
  dCopy = d;
  block[4] = self;
  v10 = handlerCopy;
  v8 = handlerCopy;
  dispatch_async(v7, block);
}

- (void)registerBubblePopStakeholderForPID:(int)d completionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = qword_1000EB610;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000047D0;
  block[3] = &unk_1000DCF38;
  dCopy = d;
  block[4] = self;
  v10 = handlerCopy;
  v8 = handlerCopy;
  dispatch_async(v7, block);
}

- (BOOL)anyBubblePopClients
{
  [(RDServer *)self pidsToClients];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = v14 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v12;
LABEL_3:
    v7 = 0;
    v8 = v5;
    while (1)
    {
      if (*v12 != v6)
      {
        objc_enumerationMutation(v2);
      }

      v5 = [v2 objectForKeyedSubscript:{*(*(&v11 + 1) + 8 * v7), v11}];

      bubblePopstakeholderIsRegistered = [v5 bubblePopstakeholderIsRegistered];
      if (bubblePopstakeholderIsRegistered)
      {
        break;
      }

      v7 = v7 + 1;
      v8 = v5;
      if (v4 == v7)
      {
        v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  else
  {
    bubblePopstakeholderIsRegistered = 0;
  }

  return bubblePopstakeholderIsRegistered;
}

- (BOOL)inLogoutProcess
{
  if (qword_1000EB270 != -1)
  {
    sub_100088D00();
  }

  v3 = qword_1000EB268;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 0;
    LODWORD(v4) = sub_1000011A8(1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = v4;
    }

    else
    {
      v4 = v4 & 0xFFFFFFFE;
    }

    if (v4)
    {
      v5 = v3;
      v9[0] = 67109120;
      v9[1] = [(RDServer *)self switchState];
      v6 = _os_log_send_and_compose_impl(v4, &v8, 0, 0, &_mh_execute_header, v5, 0, "SWSTATE:%d", v9);

      if (v6)
      {
        sub_100002A8C(v6);
      }
    }

    else
    {
      v6 = 0;
    }

    free(v6);
  }

  return [(RDServer *)self switchState]!= 0;
}

- (void)registerUserSyncStakeholderForPID:(int)d machServiceName:(id)name completionHandler:(id)handler
{
  nameCopy = name;
  handlerCopy = handler;
  v10 = qword_1000EB610;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100004E5C;
  v13[3] = &unk_1000DCF60;
  dCopy = d;
  v13[4] = self;
  v14 = nameCopy;
  v15 = handlerCopy;
  v11 = handlerCopy;
  v12 = nameCopy;
  dispatch_async(v10, v13);
}

- (void)unregisterStakeholderForPID:(int)d status:(unint64_t)status reason:(id)reason completionHandler:(id)handler
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100005328;
  block[3] = &unk_1000DCF88;
  dCopy = d;
  block[4] = self;
  block[5] = status;
  dispatch_async(qword_1000EB610, block);
}

- (id)_allowlistedPreferencesKeys
{
  if (qword_1000EB260 != -1)
  {
    sub_100088D50();
  }

  v3 = qword_1000EB258;

  return v3;
}

- (void)switchToUser:(id)user withSecret:(id)secret secretSize:(unint64_t)size context:(id)context preferences:(id)preferences pid:(int)pid completionHandler:(id)handler
{
  userCopy = user;
  secretCopy = secret;
  contextCopy = context;
  preferencesCopy = preferences;
  handlerCopy = handler;
  v68 = 0;
  v69 = &v68;
  v70 = 0x2020000000;
  v71 = 0;
  v64 = 0;
  v65 = &v64;
  v66 = 0x2020000000;
  v67 = 0;
  v58 = 0;
  v59 = &v58;
  v60 = 0x3032000000;
  v61 = sub_100005EAC;
  v62 = sub_100005EBC;
  v63 = 0;
  if (vm_page_size >= size)
  {
    if (size)
    {
      if (vm_allocate(mach_task_self_, &v67, vm_page_size, -268435455))
      {
        if (qword_1000EB270 != -1)
        {
          sub_100088D28();
        }

        v25 = qword_1000EB268;
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          v57 = 0;
          v26 = sub_1000011A8(1);
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            v27 = v26;
          }

          else
          {
            v27 = v26 & 0xFFFFFFFE;
          }

          if (v27)
          {
            v56[0] = 0;
            v28 = _os_log_send_and_compose_impl(v27, &v57, 0, 0, &_mh_execute_header, v25, 0, "FAILED to allocate VM", v56, 2);
            v29 = v28;
            if (v28)
            {
              sub_100002A8C(v28);
            }
          }

          else
          {
            v29 = 0;
          }

          free(v29);
        }

        v38 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
        v39 = v59[5];
        v59[5] = v38;

        v65[3] = 0;
        goto LABEL_46;
      }

      v69[3] = v65[3];
      if ([(RDServer *)self retrievePasscodeFromFileHandle:secretCopy ofLength:size withbaseaddress:?])
      {
        if (qword_1000EB270 != -1)
        {
          sub_100088D28();
        }

        v30 = qword_1000EB268;
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          v57 = 0;
          v31 = sub_1000011A8(1);
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            v32 = v31;
          }

          else
          {
            v32 = v31 & 0xFFFFFFFE;
          }

          if (v32)
          {
            v56[0] = 0;
            v33 = _os_log_send_and_compose_impl(v32, &v57, 0, 0, &_mh_execute_header, v30, 0, "Failed to retrieve Passcode", v56, 2);
            v34 = v33;
            if (v33)
            {
              sub_100002A8C(v33);
            }
          }

          else
          {
            v34 = 0;
          }

          free(v34);
        }

        v40 = [NSError errorWithDomain:NSPOSIXErrorDomain code:5 userInfo:0];
        v41 = v59[5];
        v59[5] = v40;

        v42 = mach_task_self_;
        v43 = v65[3];
        v44 = vm_page_size;
        if (vm_page_size >= size)
        {
          sizeCopy = size;
        }

        else
        {
          sizeCopy = vm_page_size;
        }

        memset_s(v65[3], sizeCopy, 0, sizeCopy);
        vm_deallocate(v42, v43, v44);
        goto LABEL_46;
      }
    }

    v35 = qword_1000EB610;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100005EC4;
    block[3] = &unk_1000DCFD0;
    pidCopy = pid;
    block[4] = self;
    v51 = &v58;
    v52 = &v64;
    sizeCopy2 = size;
    v47 = userCopy;
    v50 = handlerCopy;
    v48 = preferencesCopy;
    v53 = &v68;
    v49 = contextCopy;
    dispatch_async(v35, block);
  }

  else
  {
    if (qword_1000EB270 != -1)
    {
      sub_100088D28();
    }

    v20 = qword_1000EB268;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v57 = 0;
      v21 = sub_1000011A8(1);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v22 = v21;
      }

      else
      {
        v22 = v21 & 0xFFFFFFFE;
      }

      if (v22)
      {
        v56[0] = 0;
        v23 = _os_log_send_and_compose_impl(v22, &v57, 0, 0, &_mh_execute_header, v20, 0, "Long Secret, can't handle ...", v56, 2);
        v24 = v23;
        if (v23)
        {
          sub_100002A8C(v23);
        }
      }

      else
      {
        v24 = 0;
      }

      free(v24);
    }

    v36 = [NSError errorWithDomain:NSPOSIXErrorDomain code:7 userInfo:0];
    v37 = v59[5];
    v59[5] = v36;

    if (handlerCopy)
    {
LABEL_46:
      (*(handlerCopy + 2))(handlerCopy, v59[5]);
    }
  }

  _Block_object_dispose(&v58, 8);

  _Block_object_dispose(&v64, 8);
  _Block_object_dispose(&v68, 8);
}

- (void)switchToLoginUserWithPID:(int)d completionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = qword_1000EB610;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100006974;
  block[3] = &unk_1000DCF38;
  dCopy = d;
  block[4] = self;
  v10 = handlerCopy;
  v8 = handlerCopy;
  dispatch_async(v7, block);
}

- (void)logoutToLoginSessionWithPID:(int)d completionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = qword_1000EB610;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100006EB8;
  block[3] = &unk_1000DCF38;
  dCopy = d;
  block[4] = self;
  v10 = handlerCopy;
  v8 = handlerCopy;
  dispatch_async(v7, block);
}

- (void)directSwitchToUser:(id)user withSecret:(id)secret secretSize:(unint64_t)size context:(id)context preferences:(id)preferences pid:(int)pid completionHandler:(id)handler
{
  v9 = *&pid;
  userCopy = user;
  secretCopy = secret;
  contextCopy = context;
  preferencesCopy = preferences;
  handlerCopy = handler;
  if (qword_1000EB270 != -1)
  {
    sub_100088D00();
  }

  v20 = qword_1000EB268;
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v26 = 0;
    v21 = sub_1000011A8(1);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v22 = v21;
    }

    else
    {
      v22 = v21 & 0xFFFFFFFE;
    }

    if (v22)
    {
      v25 = 0;
      v23 = _os_log_send_and_compose_impl(v22, &v26, 0, 0, &_mh_execute_header, v20, 0, "in directSwitchToUser", &v25, 2);
      v24 = v23;
      if (v23)
      {
        sub_100002A8C(v23);
      }
    }

    else
    {
      v24 = 0;
    }

    free(v24);
  }

  [(RDServer *)self switchToUser:userCopy withSecret:secretCopy secretSize:size context:contextCopy preferences:preferencesCopy pid:v9 completionHandler:handlerCopy];
}

- (BOOL)inLoginSession
{
  v2 = dword_1000EB5B8;
  if (qword_1000EB270 != -1)
  {
    sub_100088D00();
  }

  v3 = qword_1000EB268;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 0;
    v4 = sub_1000011A8(1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = v4;
    }

    else
    {
      v5 = v4 & 0xFFFFFFFE;
    }

    if (v5)
    {
      v17 = 67109120;
      v18 = v2;
      v6 = _os_log_send_and_compose_impl(v5, &v16, 0, 0, &_mh_execute_header, v3, 0, "SessionType is :%d", &v17);
      v7 = v6;
      if (v6)
      {
        sub_100002A8C(v6);
      }
    }

    else
    {
      v7 = 0;
    }

    free(v7);
  }

  if (v2 == 1)
  {
    if (qword_1000EB270 != -1)
    {
      sub_100088D28();
    }

    v8 = qword_1000EB268;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 0;
      v9 = sub_1000011A8(1);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v10 = v9;
      }

      else
      {
        v10 = v9 & 0xFFFFFFFE;
      }

      if (v10)
      {
        v17 = 67109120;
        v18 = 1;
        v11 = _os_log_send_and_compose_impl(v10, &v16, 0, 0, &_mh_execute_header, v8, 0, "In LoginUI Session:%d", &v17);
        goto LABEL_29;
      }

      goto LABEL_31;
    }
  }

  else
  {
    if (qword_1000EB270 != -1)
    {
      sub_100088D28();
    }

    v8 = qword_1000EB268;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 0;
      v12 = sub_1000011A8(1);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v13 = v12;
      }

      else
      {
        v13 = v12 & 0xFFFFFFFE;
      }

      if (v13)
      {
        v17 = 67109120;
        v18 = v2;
        v11 = _os_log_send_and_compose_impl(v13, &v16, 0, 0, &_mh_execute_header, v8, 0, "Session Type not Login:%d", &v17);
LABEL_29:
        v14 = v11;
        if (v11)
        {
          sub_100002A8C(v11);
        }

        goto LABEL_32;
      }

LABEL_31:
      v14 = 0;
LABEL_32:
      free(v14);
    }
  }

  return v2 == 1;
}

- (void)loginComplete
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000798C;
  block[3] = &unk_1000DCFF8;
  block[4] = self;
  dispatch_async(qword_1000EB610, block);
}

- (void)loginUICheckinForPID:(int)d completionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = qword_1000EB610;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100007C28;
  block[3] = &unk_1000DCF38;
  dCopy = d;
  block[4] = self;
  v10 = handlerCopy;
  v8 = handlerCopy;
  dispatch_async(v7, block);
}

- (void)terminateSyncBubbleForPID:(int)d completionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = qword_1000EB610;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000083C0;
  block[3] = &unk_1000DCF38;
  dCopy = d;
  block[4] = self;
  v10 = handlerCopy;
  v8 = handlerCopy;
  dispatch_async(v7, block);
}

- (void)resumeSyncBubbleForPID:(int)d completionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = qword_1000EB610;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100008794;
  block[3] = &unk_1000DCF38;
  dCopy = d;
  block[4] = self;
  v10 = handlerCopy;
  v8 = handlerCopy;
  dispatch_async(v7, block);
}

- (void)fetchMachServiceNameswithPID:(int)d WithUID:(unsigned int)iD WithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v9 = qword_1000EB610;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000089FC;
  block[3] = &unk_1000DD020;
  dCopy = d;
  iDCopy = iD;
  block[4] = self;
  v12 = handlerCopy;
  v10 = handlerCopy;
  dispatch_async(v9, block);
}

- (void)removeMachServiceName:(id)name withPID:(int)d WithUID:(unsigned int)iD
{
  nameCopy = name;
  v9 = qword_1000EB610;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100008CF0;
  block[3] = &unk_1000DD048;
  dCopy = d;
  iDCopy = iD;
  block[4] = self;
  v12 = nameCopy;
  v10 = nameCopy;
  dispatch_async(v9, block);
}

- (void)StopBubbleWithPID:(int)d WithUID:(unsigned int)iD WithStatus:(unint64_t)status
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100008E8C;
  block[3] = &unk_1000DCF88;
  iDCopy = iD;
  block[4] = self;
  block[5] = status;
  dispatch_async(qword_1000EB610, block);
}

- (void)switchToUser:(id)user passcodeData:(id)data
{
  userCopy = user;
  dataCopy = data;
  [(RDServer *)self setUserToSwitchTo:userCopy];
  [(RDServer *)self setSwitchState:1];
  if (qword_1000EB270 != -1)
  {
    sub_100088D00();
  }

  v8 = &off_1000EB000;
  v9 = qword_1000EB268;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *v77 = 0;
    v10 = sub_1000011A8(1);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v10;
    }

    else
    {
      v11 = v10 & 0xFFFFFFFE;
    }

    if (v11)
    {
      LOWORD(v76[0]) = 0;
      v12 = _os_log_send_and_compose_impl(v11, v77, 0, 0, &_mh_execute_header, v9, 0, "in SwitchtoUser Internal", v76, 2);
      v13 = v12;
      if (v12)
      {
        sub_100002A8C(v12);
      }
    }

    else
    {
      v13 = 0;
    }

    free(v13);
  }

  fastLogoutTimer = [(RDServer *)self fastLogoutTimer];

  if (fastLogoutTimer)
  {
    if (qword_1000EB280 != -1)
    {
      sub_100088D64();
    }

    v15 = qword_1000EB278;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v76[0] = 0;
      LODWORD(v16) = sub_1000011A8(0);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = v16;
      }

      else
      {
        v16 = v16 & 0xFFFFFFFE;
      }

      if (v16)
      {
        v17 = v15;
        fastLogoutTimer2 = [(RDServer *)self fastLogoutTimer];
        *v77 = 134217984;
        *&v77[4] = fastLogoutTimer2;
        v19 = _os_log_send_and_compose_impl(v16, v76, 0, 0, &_mh_execute_header, v17, 0, "Canceling fast logout timer (%p)", v77);

        if (v19)
        {
          sub_100002A8C(v19);
        }

        v8 = &off_1000EB000;
      }

      else
      {
        v19 = 0;
      }

      free(v19);
    }

    fastLogoutTimer3 = [(RDServer *)self fastLogoutTimer];
    dispatch_source_cancel(fastLogoutTimer3);

    [(RDServer *)self setFastLogoutTimer:0];
  }

  pidsToClients = [(RDServer *)self pidsToClients];
  if ([pidsToClients count])
  {
    v22 = _os_feature_enabled_impl();

    if ((v22 & 1) == 0)
    {
      goto LABEL_92;
    }
  }

  else
  {
  }

  [(RDServer *)self setSwitchState:2];
  if (CFDictionaryContainsKey(userCopy, @"UserSwitchTaskOpqueData"))
  {
    Value = CFDictionaryGetValue(userCopy, @"UserSwitchTaskOpqueData");
    v24 = CFRetain(Value);
    CFDictionaryRemoveValue(userCopy, @"UserSwitchTaskOpqueData");
    if (qword_1000EB270 != -1)
    {
      sub_100088D28();
    }

    v25 = v8[77];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v76[0] = 0;
      LODWORD(v26) = sub_1000011A8(1);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = v26;
      }

      else
      {
        v26 = v26 & 0xFFFFFFFE;
      }

      if (v26)
      {
        v27 = v25;
        Length = CFDataGetLength(v24);
        *v77 = 134217984;
        *&v77[4] = Length;
        v29 = _os_log_send_and_compose_impl(v26, v76, 0, 0, &_mh_execute_header, v27, 0, "switchToUser: with BLOB of size %ld", v77);

        if (v29)
        {
          sub_100002A8C(v29);
        }

        v8 = &off_1000EB000;
      }

      else
      {
        v29 = 0;
      }

      free(v29);
    }
  }

  else
  {
    v24 = 0;
  }

  if (byte_1000EB602 == 1)
  {
    if (qword_1000EB270 != -1)
    {
      sub_100088D28();
    }

    v30 = v8[77];
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *v77 = 0;
      v31 = sub_1000011A8(1);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v32 = v31;
      }

      else
      {
        v32 = v31 & 0xFFFFFFFE;
      }

      if (v32)
      {
        LOWORD(v76[0]) = 0;
        LODWORD(v71) = 2;
        v33 = _os_log_send_and_compose_impl(v32, v77, 0, 0, &_mh_execute_header, v30, 0, "AKSIdentity Login setup", v76, v71);
        v34 = v33;
        if (v33)
        {
          sub_100002A8C(v33);
        }
      }

      else
      {
        v34 = 0;
      }

      free(v34);
    }

    if (sub_100028D8C(userCopy, dataCopy))
    {
      if (qword_1000EB270 != -1)
      {
        sub_100088D28();
      }

      v35 = v8[77];
      if (!os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_78;
      }

      *v77 = 0;
      v36 = sub_1000011A8(1);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        v37 = v36;
      }

      else
      {
        v37 = v36 & 0xFFFFFFFE;
      }

      if (v37)
      {
        LOWORD(v76[0]) = 0;
        LODWORD(v71) = 2;
        v38 = _os_log_send_and_compose_impl(v37, v77, 0, 0, &_mh_execute_header, v35, 0, "AKSIdentity Login success, all set for switch", v76, v71);
        goto LABEL_74;
      }
    }

    else
    {
      if (qword_1000EB270 != -1)
      {
        sub_100088D28();
      }

      v35 = v8[77];
      if (!os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_78;
      }

      *v77 = 0;
      v39 = sub_1000011A8(1);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        v40 = v39;
      }

      else
      {
        v40 = v39 & 0xFFFFFFFE;
      }

      if (v40)
      {
        LOWORD(v76[0]) = 0;
        LODWORD(v71) = 2;
        v38 = _os_log_send_and_compose_impl(v40, v77, 0, 0, &_mh_execute_header, v35, 0, "AKSIdentity Login failed, user switch will need passcode to unlock", v76, v71);
LABEL_74:
        v41 = v38;
        if (v38)
        {
          sub_100002A8C(v38);
        }

        goto LABEL_77;
      }
    }

    v41 = 0;
LABEL_77:
    free(v41);
LABEL_78:

    if (dataCopy)
    {
      [dataCopy resetBytesInRange:{0, objc_msgSend(dataCopy, "length")}];
    }
  }

  if (qword_1000EB270 != -1)
  {
    sub_100088D28();
  }

  v42 = v8[77];
  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
  {
    *v77 = 0;
    v43 = sub_1000011A8(1);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      v44 = v43;
    }

    else
    {
      v44 = v43 & 0xFFFFFFFE;
    }

    if (v44)
    {
      LOWORD(v76[0]) = 0;
      LODWORD(v71) = 2;
      v45 = _os_log_send_and_compose_impl(v44, v77, 0, 0, &_mh_execute_header, v42, 0, "calling USR", v76, v71);
      v46 = v45;
      if (v45)
      {
        sub_100002A8C(v45);
      }
    }

    else
    {
      v46 = 0;
    }

    free(v46);
  }

  sub_10002E9D8(userCopy, v24);
LABEL_92:
  if (dataCopy)
  {
    [dataCopy resetBytesInRange:{0, objc_msgSend(dataCopy, "length")}];
  }

  logoutTimer = [(RDServer *)self logoutTimer];

  if (logoutTimer)
  {
    if (qword_1000EB280 != -1)
    {
      sub_100088D64();
    }

    logoutTimer6 = qword_1000EB278;
    if (os_log_type_enabled(logoutTimer6, OS_LOG_TYPE_DEFAULT))
    {
      v76[0] = 0;
      LODWORD(v49) = sub_1000011A8(0);
      if (os_log_type_enabled(logoutTimer6, OS_LOG_TYPE_DEFAULT))
      {
        v49 = v49;
      }

      else
      {
        v49 = v49 & 0xFFFFFFFE;
      }

      if (v49)
      {
        v50 = logoutTimer6;
        logoutTimer2 = [(RDServer *)self logoutTimer];
        *v77 = 134217984;
        *&v77[4] = logoutTimer2;
        v52 = _os_log_send_and_compose_impl(v49, v76, 0, 0, &_mh_execute_header, v50, 0, "Logout timer (%p) already running, not starting a new one.", v77);

        if (v52)
        {
          sub_100002A8C(v52);
        }
      }

      else
      {
        v52 = 0;
      }

      free(v52);
    }
  }

  else
  {
    v53 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, qword_1000EB610);
    [(RDServer *)self setLogoutTimer:v53];

    if (qword_1000EB280 != -1)
    {
      sub_100088D64();
    }

    v54 = qword_1000EB278;
    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
    {
      v76[0] = 0;
      LODWORD(v55) = sub_1000011A8(0);
      if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
      {
        v55 = v55;
      }

      else
      {
        v55 = v55 & 0xFFFFFFFE;
      }

      if (v55)
      {
        v56 = v54;
        logoutTimer3 = [(RDServer *)self logoutTimer];
        *v77 = 134217984;
        *&v77[4] = logoutTimer3;
        v58 = _os_log_send_and_compose_impl(v55, v76, 0, 0, &_mh_execute_header, v56, 0, "Starting 6 minute logout timer [switchToUser] (%p)", v77);

        if (v58)
        {
          sub_100002A8C(v58);
        }
      }

      else
      {
        v58 = 0;
      }

      free(v58);
    }

    logoutTimer4 = [(RDServer *)self logoutTimer];
    v60 = dispatch_time(0, 360000000000);
    dispatch_source_set_timer(logoutTimer4, v60, 0xFFFFFFFFFFFFFFFFLL, 0);

    logoutTimer5 = [(RDServer *)self logoutTimer];
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100009C1C;
    handler[3] = &unk_1000DCFF8;
    handler[4] = self;
    dispatch_source_set_event_handler(logoutTimer5, handler);

    logoutTimer6 = [(RDServer *)self logoutTimer];
    dispatch_activate(logoutTimer6);
  }

  v62 = sub_100088F2C(qword_1000EB608);
  if (sub_100089A48(v62))
  {
    v63 = sub_100088F2C(qword_1000EB608);
    if (sub_100089AC4(v63) == 502)
    {

LABEL_132:
      v72[0] = _NSConcreteStackBlock;
      v72[1] = 3221225472;
      v72[2] = sub_100009F70;
      v72[3] = &unk_1000DD0B0;
      v73 = userCopy;
      selfCopy = self;
      [(RDServer *)self _enumerateClientsWithBlock:v72];

      goto LABEL_136;
    }

    v70 = dword_1000EB5B8;

    if (v70 != 1)
    {
      goto LABEL_132;
    }
  }

  else
  {
    v64 = dword_1000EB5B8;

    if (v64 != 1)
    {
      goto LABEL_132;
    }
  }

  if (qword_1000EB270 != -1)
  {
    sub_100088D28();
  }

  v65 = v8[77];
  if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
  {
    *v77 = 0;
    v66 = sub_1000011A8(1);
    if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
    {
      v67 = v66;
    }

    else
    {
      v67 = v66 & 0xFFFFFFFE;
    }

    if (v67)
    {
      LOWORD(v76[0]) = 0;
      LODWORD(v71) = 2;
      v68 = _os_log_send_and_compose_impl(v67, v77, 0, 0, &_mh_execute_header, v65, 0, "IN SWITCH IN LOGIN SESSION, SO SKIP SHOULDSWITCH: move to ReallySW", v76, v71);
      v69 = v68;
      if (v68)
      {
        sub_100002A8C(v68);
      }
    }

    else
    {
      v69 = 0;
    }

    free(v69);
  }

  [(RDServer *)self _reallySwitchUser:0];
LABEL_136:
}

- (BOOL)LogoutToUser:(id)user
{
  userCopy = user;
  [(RDServer *)self setUserToSwitchTo:0];
  [(RDServer *)self setSwitchState:1];
  if (qword_1000EB270 != -1)
  {
    sub_100088D00();
  }

  v5 = qword_1000EB268;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v51 = 0;
    v6 = sub_1000011A8(1);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v6;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFE;
    }

    if (v7)
    {
      LOWORD(v50[0]) = 0;
      v8 = _os_log_send_and_compose_impl(v7, v51, 0, 0, &_mh_execute_header, v5, 0, "in LogoutToUser, setting type to usertypesw to login", v50, 2);
      v9 = v8;
      if (v8)
      {
        sub_100002A8C(v8);
      }
    }

    else
    {
      v9 = 0;
    }

    free(v9);
  }

  dword_1000EB5B8 = 3;
  fastLogoutTimer = [(RDServer *)self fastLogoutTimer];

  if (fastLogoutTimer)
  {
    if (qword_1000EB280 != -1)
    {
      sub_100088D64();
    }

    v11 = qword_1000EB278;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v50[0] = 0;
      LODWORD(v12) = sub_1000011A8(0);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = v12;
      }

      else
      {
        v12 = v12 & 0xFFFFFFFE;
      }

      if (v12)
      {
        v13 = v11;
        fastLogoutTimer2 = [(RDServer *)self fastLogoutTimer];
        *v51 = 134217984;
        *&v51[4] = fastLogoutTimer2;
        v15 = _os_log_send_and_compose_impl(v12, v50, 0, 0, &_mh_execute_header, v13, 0, "Canceling fast logout timer (%p)", v51);

        if (v15)
        {
          sub_100002A8C(v15);
        }
      }

      else
      {
        v15 = 0;
      }

      free(v15);
    }

    fastLogoutTimer3 = [(RDServer *)self fastLogoutTimer];
    dispatch_source_cancel(fastLogoutTimer3);

    [(RDServer *)self setFastLogoutTimer:0];
  }

  pidsToClients = [(RDServer *)self pidsToClients];
  v18 = [pidsToClients count];

  if (v18)
  {
    logoutTimer = [(RDServer *)self logoutTimer];

    if (logoutTimer)
    {
      if (qword_1000EB280 != -1)
      {
        sub_100088D64();
      }

      logoutTimer6 = qword_1000EB278;
      if (os_log_type_enabled(logoutTimer6, OS_LOG_TYPE_DEFAULT))
      {
        v50[0] = 0;
        LODWORD(v21) = sub_1000011A8(0);
        if (os_log_type_enabled(logoutTimer6, OS_LOG_TYPE_DEFAULT))
        {
          v21 = v21;
        }

        else
        {
          v21 = v21 & 0xFFFFFFFE;
        }

        if (v21)
        {
          v22 = logoutTimer6;
          logoutTimer2 = [(RDServer *)self logoutTimer];
          *v51 = 134217984;
          *&v51[4] = logoutTimer2;
          v24 = _os_log_send_and_compose_impl(v21, v50, 0, 0, &_mh_execute_header, v22, 0, "Logout timer (%p) already running, not starting a new one.", v51);

          if (v24)
          {
            sub_100002A8C(v24);
          }
        }

        else
        {
          v24 = 0;
        }

        free(v24);
      }
    }

    else
    {
      v30 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, qword_1000EB610);
      [(RDServer *)self setLogoutTimer:v30];

      if (qword_1000EB280 != -1)
      {
        sub_100088D64();
      }

      v31 = qword_1000EB278;
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        v50[0] = 0;
        LODWORD(v32) = sub_1000011A8(0);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          v32 = v32;
        }

        else
        {
          v32 = v32 & 0xFFFFFFFE;
        }

        if (v32)
        {
          v33 = v31;
          logoutTimer3 = [(RDServer *)self logoutTimer];
          *v51 = 134217984;
          *&v51[4] = logoutTimer3;
          v35 = _os_log_send_and_compose_impl(v32, v50, 0, 0, &_mh_execute_header, v33, 0, "Starting 6 minute logout timer [LogoutToUser] (%p)", v51);

          if (v35)
          {
            sub_100002A8C(v35);
          }
        }

        else
        {
          v35 = 0;
        }

        free(v35);
      }

      logoutTimer4 = [(RDServer *)self logoutTimer];
      v42 = dispatch_time(0, 360000000000);
      dispatch_source_set_timer(logoutTimer4, v42, 0xFFFFFFFFFFFFFFFFLL, 0);

      logoutTimer5 = [(RDServer *)self logoutTimer];
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_10000A8F8;
      handler[3] = &unk_1000DCFF8;
      handler[4] = self;
      dispatch_source_set_event_handler(logoutTimer5, handler);

      logoutTimer6 = [(RDServer *)self logoutTimer];
      dispatch_activate(logoutTimer6);
    }

    v46[0] = _NSConcreteStackBlock;
    v46[1] = 3221225472;
    v46[2] = sub_10000AC0C;
    v46[3] = &unk_1000DD0B0;
    v47 = userCopy;
    selfCopy = self;
    [(RDServer *)self _enumerateClientsWithBlock:v46];
  }

  else
  {
    [(RDServer *)self setSwitchState:2];
    if (qword_1000EB270 != -1)
    {
      sub_100088D28();
    }

    v25 = qword_1000EB268;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *v51 = 0;
      v26 = sub_1000011A8(1);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v27 = v26;
      }

      else
      {
        v27 = v26 & 0xFFFFFFFE;
      }

      if (v27)
      {
        LOWORD(v50[0]) = 0;
        LODWORD(v45) = 2;
        v28 = _os_log_send_and_compose_impl(v27, v51, 0, 0, &_mh_execute_header, v25, 0, "NO Clients to willSwitchUser, moving to ReadytoSwitchUserWithRestart", v50, v45);
        v29 = v28;
        if (v28)
        {
          sub_100002A8C(v28);
        }
      }

      else
      {
        v29 = 0;
      }

      free(v29);
    }

    if (qword_1000EB270 != -1)
    {
      sub_100088D28();
    }

    v36 = qword_1000EB268;
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      *v51 = 0;
      v37 = sub_1000011A8(1);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        v38 = v37;
      }

      else
      {
        v38 = v37 & 0xFFFFFFFE;
      }

      if (v38)
      {
        LOWORD(v50[0]) = 0;
        LODWORD(v45) = 2;
        v39 = _os_log_send_and_compose_impl(v38, v51, 0, 0, &_mh_execute_header, v36, 0, "LogoutToUser moving ON to _reallySwitchUser as NO CLIENTS", v50, v45);
        v40 = v39;
        if (v39)
        {
          sub_100002A8C(v39);
        }
      }

      else
      {
        v40 = 0;
      }

      free(v40);
    }

    [(RDServer *)self _reallySwitchUser:1];
  }

  return 1;
}

- (void)_checkIfWeShouldSwitchUser:(BOOL)user
{
  userCopy = user;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 1;
  if (qword_1000EB270 != -1)
  {
    sub_100088D28();
  }

  v5 = qword_1000EB268;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v22[0] = 0;
    v6 = sub_1000011A8(1);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v6;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFE;
    }

    if (v7)
    {
      v8 = "FALSE";
      if (userCopy)
      {
        v8 = "TRUE";
      }

      *v27 = 136315138;
      *&v27[4] = v8;
      v9 = _os_log_send_and_compose_impl(v7, v22, 0, 0, &_mh_execute_header, v5, 0, "IN _checkIfWeShouldSwitchUser logout:%s", v27);
      v10 = v9;
      if (v9)
      {
        sub_100002A8C(v9);
      }
    }

    else
    {
      v10 = 0;
    }

    free(v10);
  }

  if ([(RDServer *)self switchState]== 1)
  {
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_10000B1C0;
    v21[3] = &unk_1000DD0D8;
    v21[4] = &v23;
    [(RDServer *)self _enumerateClientsWithBlock:v21];
    if (*(v24 + 24) == 1)
    {
      if (qword_1000EB270 != -1)
      {
        sub_100088D28();
      }

      v11 = qword_1000EB268;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *v27 = 0;
        v12 = sub_1000011A8(1);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v13 = v12;
        }

        else
        {
          v13 = v12 & 0xFFFFFFFE;
        }

        if (v13)
        {
          LOWORD(v22[0]) = 0;
          v14 = _os_log_send_and_compose_impl(v13, v27, 0, 0, &_mh_execute_header, v11, 0, "_checkIfWeShouldSwitchUser should switch", v22, 2);
          v15 = v14;
          if (v14)
          {
            sub_100002A8C(v14);
          }
        }

        else
        {
          v15 = 0;
        }

        free(v15);
      }

      [(RDServer *)self _reallySwitchUser:userCopy];
    }
  }

  else
  {
    if (qword_1000EB270 != -1)
    {
      sub_100088D28();
    }

    v16 = qword_1000EB268;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *v27 = 0;
      v17 = sub_1000011A8(1);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v18 = v17;
      }

      else
      {
        v18 = v17 & 0xFFFFFFFE;
      }

      if (v18)
      {
        LOWORD(v22[0]) = 0;
        v19 = _os_log_send_and_compose_impl(v18, v27, 0, 0, &_mh_execute_header, v16, 0, "_checkIfWeShouldSwitchUser returns as device not in userswitch yet", v22, 2);
        v20 = v19;
        if (v19)
        {
          sub_100002A8C(v19);
        }
      }

      else
      {
        v20 = 0;
      }

      free(v20);
    }
  }

  _Block_object_dispose(&v23, 8);
}

- (void)_reallySwitchUser:(BOOL)user
{
  userCopy = user;
  userToSwitchTo = [(RDServer *)self userToSwitchTo];
  if (qword_1000EB270 != -1)
  {
    sub_100088D00();
  }

  v6 = qword_1000EB268;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v90 = 0;
    v7 = sub_1000011A8(1);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v7;
    }

    else
    {
      v8 = v7 & 0xFFFFFFFE;
    }

    if (v8)
    {
      v9 = "FALSE";
      if (userCopy)
      {
        v9 = "TRUE";
      }

      *v89 = 136315138;
      *&v89[4] = v9;
      v10 = _os_log_send_and_compose_impl(v8, &v90, 0, 0, &_mh_execute_header, v6, 0, "in _reallySwitchUser: logoutPath:%s", v89);
      v11 = v10;
      if (v10)
      {
        sub_100002A8C(v10);
      }
    }

    else
    {
      v11 = 0;
    }

    free(v11);
  }

  [(RDServer *)self setSwitchState:2];
  logoutTimer = [(RDServer *)self logoutTimer];

  if (logoutTimer)
  {
    if (qword_1000EB280 != -1)
    {
      sub_100088D64();
    }

    v13 = qword_1000EB278;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v90 = 0;
      LODWORD(v14) = sub_1000011A8(0);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = v14;
      }

      else
      {
        v14 = v14 & 0xFFFFFFFE;
      }

      if (v14)
      {
        v15 = v13;
        logoutTimer2 = [(RDServer *)self logoutTimer];
        *v89 = 134217984;
        *&v89[4] = logoutTimer2;
        v17 = _os_log_send_and_compose_impl(v14, &v90, 0, 0, &_mh_execute_header, v15, 0, "Canceling logout timer (%p)", v89);

        if (v17)
        {
          sub_100002A8C(v17);
        }
      }

      else
      {
        v17 = 0;
      }

      free(v17);
    }

    logoutTimer3 = [(RDServer *)self logoutTimer];
    dispatch_source_cancel(logoutTimer3);

    [(RDServer *)self setLogoutTimer:0];
  }

  v19 = sub_100088F2C(qword_1000EB608);
  if (sub_100089A48(v19))
  {
    v20 = sub_100088F2C(qword_1000EB608);
    v21 = sub_100089AC4(v20);

    if (v21 == 502)
    {
      if (qword_1000EB270 != -1)
      {
        sub_100088D28();
      }

      v22 = qword_1000EB268;
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *v89 = 0;
        v23 = sub_1000011A8(1);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v24 = v23;
        }

        else
        {
          v24 = v23 & 0xFFFFFFFE;
        }

        if (v24)
        {
          LOWORD(v90) = 0;
          v25 = _os_log_send_and_compose_impl(v24, v89, 0, 0, &_mh_execute_header, v22, 0, "LoginUI should not have any sync bubble content, remove if any is left out..", &v90, 2);
          v26 = v25;
          if (v25)
          {
            sub_100002A8C(v25);
          }
        }

        else
        {
          v26 = 0;
        }

        free(v26);
      }

      sub_10001C0D0(0, 502);
      goto LABEL_67;
    }
  }

  else
  {
  }

  if ((dword_1000EB5B8 & 0xFFFFFFFE) == 2)
  {
    if (qword_1000EB270 != -1)
    {
      sub_100088D28();
    }

    v27 = qword_1000EB268;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *v89 = 0;
      v28 = sub_1000011A8(1);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v29 = v28;
      }

      else
      {
        v29 = v28 & 0xFFFFFFFE;
      }

      if (v29)
      {
        LOWORD(v90) = 0;
        v30 = _os_log_send_and_compose_impl(v29, v89, 0, 0, &_mh_execute_header, v27, 0, "ENUMERATING SYNCTASKS", &v90, 2);
        v31 = v30;
        if (v30)
        {
          sub_100002A8C(v30);
        }
      }

      else
      {
        v31 = 0;
      }

      free(v31);
    }

    [(RDServer *)self _enumerateClientsWithBlock:&stru_1000DD0F8];
    sub_100034214();
  }

  else
  {
    if (qword_1000EB270 != -1)
    {
      sub_100088D28();
    }

    v32 = qword_1000EB268;
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *v89 = 0;
      v33 = sub_1000011A8(1);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        v34 = v33;
      }

      else
      {
        v34 = v33 & 0xFFFFFFFE;
      }

      if (v34)
      {
        LODWORD(v90) = 67109120;
        HIDWORD(v90) = dword_1000EB5B8;
        v35 = _os_log_send_and_compose_impl(v34, v89, 0, 0, &_mh_execute_header, v32, 0, "NOT IN UserSession to collect SyncBubble service, _gUserSessionType:%d", &v90);
        v36 = v35;
        if (v35)
        {
          sub_100002A8C(v35);
        }
      }

      else
      {
        v36 = 0;
      }

      free(v36);
    }
  }

LABEL_67:
  criticalStakeHolder = [(RDServer *)self criticalStakeHolder];
  if (!criticalStakeHolder)
  {
    if (qword_1000EB270 != -1)
    {
      sub_100088D28();
    }

    v43 = qword_1000EB268;
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      *v89 = 0;
      v44 = sub_1000011A8(1);
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        v45 = v44;
      }

      else
      {
        v45 = v44 & 0xFFFFFFFE;
      }

      if (v45)
      {
        LOWORD(v90) = 0;
        LODWORD(v85) = 2;
        v46 = _os_log_send_and_compose_impl(v45, v89, 0, 0, &_mh_execute_header, v43, 0, "No critical Client, wait for 10 secs and retry", &v90, v85);
        v47 = v46;
        if (v46)
        {
          sub_100002A8C(v46);
        }
      }

      else
      {
        v47 = 0;
      }

      free(v47);
    }

    goto LABEL_111;
  }

  if (qword_1000EB270 != -1)
  {
    sub_100088D28();
  }

  v38 = qword_1000EB268;
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
  {
    *v89 = 0;
    LODWORD(v39) = sub_1000011A8(1);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      v39 = v39;
    }

    else
    {
      v39 = v39 & 0xFFFFFFFE;
    }

    if (v39)
    {
      v40 = v38;
      stakeholderIsRegistered = [criticalStakeHolder stakeholderIsRegistered];
      LODWORD(v90) = 67109120;
      HIDWORD(v90) = stakeholderIsRegistered;
      v42 = _os_log_send_and_compose_impl(v39, v89, 0, 0, &_mh_execute_header, v40, 0, "Have A critical Client, and %d", &v90);

      if (v42)
      {
        sub_100002A8C(v42);
      }
    }

    else
    {
      v42 = 0;
    }

    free(v42);
  }

  if (![criticalStakeHolder stakeholderIsRegistered])
  {
LABEL_111:
    if (qword_1000EB270 != -1)
    {
      sub_100088D28();
    }

    v59 = qword_1000EB268;
    if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
    {
      *v89 = 0;
      v60 = sub_1000011A8(1);
      if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
      {
        v61 = v60;
      }

      else
      {
        v61 = v60 & 0xFFFFFFFE;
      }

      if (v61)
      {
        LOWORD(v90) = 0;
        LODWORD(v85) = 2;
        v62 = _os_log_send_and_compose_impl(v61, v89, 0, 0, &_mh_execute_header, v59, 0, "NO Critical Stake holder, USR anyway", &v90, v85);
        v63 = v62;
        if (v62)
        {
          sub_100002A8C(v62);
        }
      }

      else
      {
        v63 = 0;
      }

      free(v63);
    }

    v64 = userToSwitchTo;
    if (userCopy)
    {
      v64 = sub_100018084(502);
      if (qword_1000EB270 != -1)
      {
        sub_100088D28();
      }

      v65 = qword_1000EB268;
      if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
      {
        *v89 = 0;
        v66 = sub_1000011A8(1);
        if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
        {
          v67 = v66;
        }

        else
        {
          v67 = v66 & 0xFFFFFFFE;
        }

        if (v67)
        {
          LOWORD(v90) = 0;
          LODWORD(v85) = 2;
          v68 = _os_log_send_and_compose_impl(v67, v89, 0, 0, &_mh_execute_header, v65, 0, "in LogoutPath, SWITCHING TO LOGINUSER as there is no Critical Stake Holder..", &v90, v85);
          v69 = v68;
          if (v68)
          {
            sub_100002A8C(v68);
          }
        }

        else
        {
          v69 = 0;
        }

        free(v69);
      }
    }

    if (v64 && CFDictionaryContainsKey(v64, @"UserSwitchTaskOpqueData"))
    {
      Value = CFDictionaryGetValue(v64, @"UserSwitchTaskOpqueData");
      v71 = CFRetain(Value);
      CFDictionaryRemoveValue(v64, @"UserSwitchTaskOpqueData");
    }

    else
    {
      v71 = 0;
    }

    if (qword_1000EB270 != -1)
    {
      sub_100088D28();
    }

    v72 = qword_1000EB268;
    if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
    {
      *v89 = 0;
      v73 = sub_1000011A8(1);
      if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
      {
        v74 = v73;
      }

      else
      {
        v74 = v73 & 0xFFFFFFFE;
      }

      if (v74)
      {
        LOWORD(v90) = 0;
        LODWORD(v85) = 2;
        v75 = _os_log_send_and_compose_impl(v74, v89, 0, 0, &_mh_execute_header, v72, 0, "calling USR", &v90, v85);
        v76 = v75;
        if (v75)
        {
          sub_100002A8C(v75);
        }
      }

      else
      {
        v76 = 0;
      }

      free(v76);
    }

    sub_10002E9D8(v64, v71);
    goto LABEL_151;
  }

  if (userCopy)
  {
    v48 = MKBLockDeviceNow();
    if (v48)
    {
      v49 = v48;
      if (qword_1000EB270 != -1)
      {
        sub_100088D28();
      }

      v50 = qword_1000EB268;
      if (!os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_167;
      }

      *v89 = 0;
      v51 = sub_1000011A8(1);
      if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
      {
        v52 = v51;
      }

      else
      {
        v52 = v51 & 0xFFFFFFFE;
      }

      if (v52)
      {
        LODWORD(v90) = 67109120;
        HIDWORD(v90) = v49;
        v53 = _os_log_send_and_compose_impl(v52, v89, 0, 0, &_mh_execute_header, v50, 0, "LOCKDEVICENOW failed with error 0x%x", &v90);
        goto LABEL_160;
      }
    }

    else
    {
      if (qword_1000EB270 != -1)
      {
        sub_100088D28();
      }

      v50 = qword_1000EB268;
      if (!os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_167;
      }

      *v89 = 0;
      v77 = sub_1000011A8(1);
      if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
      {
        v78 = v77;
      }

      else
      {
        v78 = v77 & 0xFFFFFFFE;
      }

      if (v78)
      {
        LOWORD(v90) = 0;
        v53 = _os_log_send_and_compose_impl(v78, v89, 0, 0, &_mh_execute_header, v50, 0, "AKS LOCKDEVICENOW COMPLETED");
LABEL_160:
        v79 = v53;
        if (v53)
        {
          sub_100002A8C(v53);
        }

        goto LABEL_166;
      }
    }

    v79 = 0;
LABEL_166:
    free(v79);
LABEL_167:

    if (qword_1000EB270 != -1)
    {
      sub_100088D28();
    }

    v80 = qword_1000EB268;
    if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
    {
      *v89 = 0;
      v81 = sub_1000011A8(1);
      if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
      {
        v82 = v81;
      }

      else
      {
        v82 = v81 & 0xFFFFFFFE;
      }

      if (v82)
      {
        LOWORD(v90) = 0;
        LODWORD(v85) = 2;
        v83 = _os_log_send_and_compose_impl(v82, v89, 0, 0, &_mh_execute_header, v80, 0, "INLogout Path, calling readyToSwitchToLoginSession", &v90, v85);
        v84 = v83;
        if (v83)
        {
          sub_100002A8C(v83);
        }
      }

      else
      {
        v84 = 0;
      }

      free(v84);
    }

    v88[0] = _NSConcreteStackBlock;
    v88[1] = 3221225472;
    v88[2] = sub_10000C678;
    v88[3] = &unk_1000DCFF8;
    v88[4] = self;
    [criticalStakeHolder readyToSwitchToLoginSession:0 completionHandler:v88];
    goto LABEL_151;
  }

  if (qword_1000EB270 != -1)
  {
    sub_100088D28();
  }

  v54 = qword_1000EB268;
  if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
  {
    *v89 = 0;
    v55 = sub_1000011A8(1);
    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
    {
      v56 = v55;
    }

    else
    {
      v56 = v55 & 0xFFFFFFFE;
    }

    if (v56)
    {
      LOWORD(v90) = 0;
      LODWORD(v85) = 2;
      v57 = _os_log_send_and_compose_impl(v56, v89, 0, 0, &_mh_execute_header, v54, 0, "Calling readyToSwitchToUser", &v90, v85);
      v58 = v57;
      if (v57)
      {
        sub_100002A8C(v57);
      }
    }

    else
    {
      v58 = 0;
    }

    free(v58);
  }

  v86[0] = _NSConcreteStackBlock;
  v86[1] = 3221225472;
  v86[2] = sub_10000D074;
  v86[3] = &unk_1000DCFF8;
  v87 = userToSwitchTo;
  [criticalStakeHolder readyToSwitchToUser:v87 completionHandler:v86];

LABEL_151:
}

- (void)addUserSwitchBlockingTask:(id)task forPID:(int)d completionHandler:(id)handler
{
  taskCopy = task;
  handlerCopy = handler;
  v10 = qword_1000EB610;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10000D35C;
  v13[3] = &unk_1000DCF60;
  dCopy = d;
  v13[4] = self;
  v14 = taskCopy;
  v15 = handlerCopy;
  v11 = handlerCopy;
  v12 = taskCopy;
  dispatch_async(v10, v13);
}

- (void)removeUserSwitchBlockingTask:(id)task forPID:(int)d completionHandler:(id)handler
{
  taskCopy = task;
  handlerCopy = handler;
  v10 = qword_1000EB610;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10000D6D4;
  v13[3] = &unk_1000DCF60;
  dCopy = d;
  v13[4] = self;
  v14 = taskCopy;
  v15 = handlerCopy;
  v11 = handlerCopy;
  v12 = taskCopy;
  dispatch_async(v10, v13);
}

- (void)fetchUserSwitchBlockingTaskListWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = qword_1000EB610;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000DBBC;
  v7[3] = &unk_1000DD188;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(v5, v7);
}

- (id)fetchUserSyncTaskList
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000DD7C;
  v5[3] = &unk_1000DD160;
  v3 = objc_opt_new();
  v6 = v3;
  [(RDServer *)self _enumerateClientsWithBlock:v5];

  return v3;
}

- (id)fetchUserBlockTaskList
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000DE80;
  v5[3] = &unk_1000DD160;
  v3 = objc_opt_new();
  v6 = v3;
  [(RDServer *)self _enumerateClientsWithBlock:v5];

  return v3;
}

- (void)addUserSyncTask:(id)task forPID:(int)d completionHandler:(id)handler
{
  taskCopy = task;
  handlerCopy = handler;
  v10 = qword_1000EB610;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10000DFBC;
  v13[3] = &unk_1000DCF60;
  dCopy = d;
  v13[4] = self;
  v14 = taskCopy;
  v15 = handlerCopy;
  v11 = handlerCopy;
  v12 = taskCopy;
  dispatch_async(v10, v13);
}

- (void)removeUserSyncTask:(id)task forPID:(int)d completionHandler:(id)handler
{
  taskCopy = task;
  handlerCopy = handler;
  v10 = qword_1000EB610;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10000E364;
  v13[3] = &unk_1000DCF60;
  dCopy = d;
  v13[4] = self;
  v14 = taskCopy;
  v15 = handlerCopy;
  v11 = handlerCopy;
  v12 = taskCopy;
  dispatch_async(v10, v13);
}

- (void)suspendUserQuotaForPID:(int)d completionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = qword_1000EB610;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000E6B8;
  block[3] = &unk_1000DD1B0;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(v5, block);
}

- (void)reengageUserQuotaForPID:(int)d completionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = qword_1000EB610;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000E7D0;
  block[3] = &unk_1000DD1B0;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(v5, block);
}

- (void)createPersona:(id)persona withSecret:(id)secret secretSize:(unint64_t)size passcodeDataType:(unint64_t)type forPid:(int)pid completionHandler:(id)handler
{
  personaCopy = persona;
  secretCopy = secret;
  handlerCopy = handler;
  v16 = +[NSXPCConnection currentConnection];
  processIdentifier = [v16 processIdentifier];

  v64 = 0;
  v65 = &v64;
  v66 = 0x2020000000;
  v67 = 0;
  v60 = 0;
  v61 = &v60;
  v62 = 0x2020000000;
  v63 = 0;
  if (processIdentifier == pid)
  {
    goto LABEL_15;
  }

  if (qword_1000EB270 != -1)
  {
    sub_100088D28();
  }

  v18 = qword_1000EB268;
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = personaCopy;
    v20 = secretCopy;
    v59[0] = 0;
    v21 = sub_1000011A8(1);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v22 = v21;
    }

    else
    {
      v22 = v21 & 0xFFFFFFFE;
    }

    if (v22)
    {
      LODWORD(v68) = 67109376;
      HIDWORD(v68) = processIdentifier;
      v69 = 1024;
      pidCopy = pid;
      v23 = _os_log_send_and_compose_impl(v22, v59, 0, 0, &_mh_execute_header, v18, 0, " RDSERVER: DIFFERING PID: createPersona PID from connection: %d, passed in pid: %d", &v68, 14);
      v24 = v23;
      secretCopy = v20;
      if (v23)
      {
        sub_100002A8C(v23);
        personaCopy = v19;
LABEL_13:
        free(v24);
        goto LABEL_14;
      }
    }

    else
    {
      v24 = 0;
      secretCopy = v20;
    }

    personaCopy = v19;
    goto LABEL_13;
  }

LABEL_14:

LABEL_15:
  if (vm_page_size < size)
  {
    if (qword_1000EB270 != -1)
    {
      sub_100088D28();
    }

    v25 = qword_1000EB268;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v68 = 0;
      v26 = sub_1000011A8(1);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v27 = v26;
      }

      else
      {
        v27 = v26 & 0xFFFFFFFE;
      }

      if (v27)
      {
        LOWORD(v59[0]) = 0;
        LODWORD(v48) = 2;
        v28 = _os_log_send_and_compose_impl(v27, &v68, 0, 0, &_mh_execute_header, v25, 0, "Long Secret, can't handle ...", v59, v48);
        v29 = v28;
        if (v28)
        {
          sub_100002A8C(v28);
        }
      }

      else
      {
        v29 = 0;
      }

      free(v29);
    }

    v43 = [NSError errorWithDomain:NSPOSIXErrorDomain code:7 userInfo:0];
    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, 0, v43);
    }

    goto LABEL_60;
  }

  if (!size)
  {
    goto LABEL_46;
  }

  if (vm_allocate(mach_task_self_, v61 + 3, vm_page_size, -268435455))
  {
    if (qword_1000EB270 != -1)
    {
      sub_100088D28();
    }

    v30 = qword_1000EB268;
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v68 = 0;
      v31 = sub_1000011A8(1);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v32 = v31;
      }

      else
      {
        v32 = v31 & 0xFFFFFFFE;
      }

      if (v32)
      {
        LOWORD(v59[0]) = 0;
        LODWORD(v48) = 2;
        v33 = _os_log_send_and_compose_impl(v32, &v68, 0, 0, &_mh_execute_header, v30, 0, "FAILED to allocate VM", v59, v48);
        v34 = v33;
        if (v33)
        {
          sub_100002A8C(v33);
        }
      }

      else
      {
        v34 = 0;
      }

      free(v34);
    }

    v43 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
    v61[3] = 0;
    handlerCopy[2](handlerCopy, 0, v43);
    goto LABEL_60;
  }

  v65[3] = v61[3];
  if (![(RDServer *)self retrievePasscodeFromFileHandle:secretCopy ofLength:size withbaseaddress:?])
  {
LABEL_46:
    v40 = +[NSXPCConnection currentConnection];
    v41 = sub_1000011DC([v40 processIdentifier]);

    v42 = qword_1000EB610;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000EF28;
    block[3] = &unk_1000DD200;
    v57 = processIdentifier;
    block[4] = self;
    v52 = handlerCopy;
    v53 = &v60;
    sizeCopy = size;
    typeCopy = type;
    v51 = personaCopy;
    v54 = &v64;
    v58 = v41;
    dispatch_async(v42, block);

    v43 = 0;
    goto LABEL_60;
  }

  if (qword_1000EB270 != -1)
  {
    sub_100088D28();
  }

  v35 = qword_1000EB268;
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
    v68 = 0;
    v36 = sub_1000011A8(1);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      v37 = v36;
    }

    else
    {
      v37 = v36 & 0xFFFFFFFE;
    }

    if (v37)
    {
      LOWORD(v59[0]) = 0;
      LODWORD(v48) = 2;
      v38 = _os_log_send_and_compose_impl(v37, &v68, 0, 0, &_mh_execute_header, v35, 0, "Failed to retrieve Passcode", v59, v48);
      v39 = v38;
      if (v38)
      {
        sub_100002A8C(v38);
      }
    }

    else
    {
      v39 = 0;
    }

    free(v39);
  }

  v43 = [NSError errorWithDomain:NSPOSIXErrorDomain code:5 userInfo:0];
  v44 = mach_task_self_;
  v45 = v61[3];
  v46 = vm_page_size;
  if (vm_page_size >= size)
  {
    sizeCopy2 = size;
  }

  else
  {
    sizeCopy2 = vm_page_size;
  }

  memset_s(v61[3], sizeCopy2, 0, sizeCopy2);
  vm_deallocate(v44, v45, v46);
  handlerCopy[2](handlerCopy, 0, v43);
LABEL_60:

  _Block_object_dispose(&v60, 8);
  _Block_object_dispose(&v64, 8);
}

- (void)deletePersona:(id)persona forPid:(int)pid completionHandler:(id)handler
{
  personaCopy = persona;
  handlerCopy = handler;
  v10 = +[NSXPCConnection currentConnection];
  processIdentifier = [v10 processIdentifier];

  if (processIdentifier != pid)
  {
    if (qword_1000EB270 != -1)
    {
      sub_100088D00();
    }

    v12 = qword_1000EB268;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v27 = 0;
      v13 = sub_1000011A8(1);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v14 = v13;
      }

      else
      {
        v14 = v13 & 0xFFFFFFFE;
      }

      if (v14)
      {
        v28[0] = 67109376;
        v28[1] = processIdentifier;
        v29 = 1024;
        pidCopy = pid;
        v15 = _os_log_send_and_compose_impl(v14, &v27, 0, 0, &_mh_execute_header, v12, 0, " RDSERVER: DIFFERING PID: deletePersona PID from connection: %d, passed in pid: %d", v28, 14);
        v16 = v15;
        if (v15)
        {
          sub_100002A8C(v15);
        }
      }

      else
      {
        v16 = 0;
      }

      free(v16);
    }
  }

  v17 = +[NSXPCConnection currentConnection];
  v18 = sub_1000011DC([v17 processIdentifier]);

  v19 = qword_1000EB610;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100010194;
  block[3] = &unk_1000DD228;
  block[4] = self;
  v23 = personaCopy;
  v25 = processIdentifier;
  v26 = v18;
  v24 = handlerCopy;
  v20 = handlerCopy;
  v21 = personaCopy;
  dispatch_async(v19, block);
}

- (void)disablePersona:(id)persona forPid:(int)pid completionHandler:(id)handler
{
  personaCopy = persona;
  handlerCopy = handler;
  v10 = +[NSXPCConnection currentConnection];
  processIdentifier = [v10 processIdentifier];

  if (processIdentifier != pid)
  {
    if (qword_1000EB270 != -1)
    {
      sub_100088D00();
    }

    v12 = qword_1000EB268;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v27 = 0;
      v13 = sub_1000011A8(1);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v14 = v13;
      }

      else
      {
        v14 = v13 & 0xFFFFFFFE;
      }

      if (v14)
      {
        v28[0] = 67109376;
        v28[1] = processIdentifier;
        v29 = 1024;
        pidCopy = pid;
        v15 = _os_log_send_and_compose_impl(v14, &v27, 0, 0, &_mh_execute_header, v12, 0, " RDSERVER: DIFFERING PID: disablePersona PID from connection: %d, passed in pid: %d", v28, 14);
        v16 = v15;
        if (v15)
        {
          sub_100002A8C(v15);
        }
      }

      else
      {
        v16 = 0;
      }

      free(v16);
    }
  }

  v17 = +[NSXPCConnection currentConnection];
  v18 = sub_1000011DC([v17 processIdentifier]);

  v19 = qword_1000EB610;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100010930;
  block[3] = &unk_1000DD228;
  block[4] = self;
  v23 = personaCopy;
  v25 = processIdentifier;
  v26 = v18;
  v24 = handlerCopy;
  v20 = handlerCopy;
  v21 = personaCopy;
  dispatch_async(v19, block);
}

- (void)fetchPersonaListforPid:(int)pid withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = +[NSXPCConnection currentConnection];
  v8 = sub_1000011DC([v7 processIdentifier]);

  v9 = qword_1000EB610;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100010F78;
  block[3] = &unk_1000DD020;
  block[4] = self;
  v12 = handlerCopy;
  pidCopy = pid;
  v14 = v8;
  v10 = handlerCopy;
  dispatch_async(v9, block);
}

- (void)fetchAllUsersPersonaListforPid:(int)pid withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = qword_1000EB610;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100011600;
  block[3] = &unk_1000DCF38;
  pidCopy = pid;
  block[4] = self;
  v10 = handlerCopy;
  v8 = handlerCopy;
  dispatch_async(v7, block);
}

- (void)fetchAsidMapforPid:(int)pid withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = qword_1000EB610;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100011C10;
  block[3] = &unk_1000DCF38;
  pidCopy = pid;
  block[4] = self;
  v10 = handlerCopy;
  v8 = handlerCopy;
  dispatch_async(v7, block);
}

- (void)fetchPersona:(id)persona forPid:(int)pid completionHandler:(id)handler
{
  personaCopy = persona;
  handlerCopy = handler;
  v10 = +[NSXPCConnection currentConnection];
  v11 = sub_1000011DC([v10 processIdentifier]);

  v12 = qword_1000EB610;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10001205C;
  v15[3] = &unk_1000DD228;
  v15[4] = self;
  v16 = personaCopy;
  pidCopy = pid;
  v19 = v11;
  v17 = handlerCopy;
  v13 = handlerCopy;
  v14 = personaCopy;
  dispatch_async(v12, v15);
}

- (void)setSinglePersonaBundlesIdentifiers:(id)identifiers forPersona:(id)persona forPid:(int)pid completionHandler:(id)handler
{
  identifiersCopy = identifiers;
  personaCopy = persona;
  handlerCopy = handler;
  v13 = +[NSXPCConnection currentConnection];
  processIdentifier = [v13 processIdentifier];

  if (processIdentifier != pid)
  {
    if (qword_1000EB270 != -1)
    {
      sub_100088D00();
    }

    v15 = qword_1000EB268;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v32 = 0;
      v16 = sub_1000011A8(1);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v17 = v16;
      }

      else
      {
        v17 = v16 & 0xFFFFFFFE;
      }

      if (v17)
      {
        v33[0] = 67109376;
        v33[1] = processIdentifier;
        v34 = 1024;
        pidCopy = pid;
        v18 = _os_log_send_and_compose_impl(v17, &v32, 0, 0, &_mh_execute_header, v15, 0, " RDSERVER: DIFFERING PID: setSinglePersonaBundlesIdentifiers PID from connection: %d, passed in pid: %d", v33, 14);
        v19 = v18;
        if (v18)
        {
          sub_100002A8C(v18);
        }
      }

      else
      {
        v19 = 0;
      }

      free(v19);
    }
  }

  v20 = +[NSXPCConnection currentConnection];
  v21 = sub_1000011DC([v20 processIdentifier]);

  v22 = qword_1000EB610;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100012938;
  block[3] = &unk_1000DD250;
  block[4] = self;
  v27 = personaCopy;
  v30 = processIdentifier;
  v31 = v21;
  v28 = identifiersCopy;
  v29 = handlerCopy;
  v23 = handlerCopy;
  v24 = identifiersCopy;
  v25 = personaCopy;
  dispatch_async(v22, block);
}

- (void)fetchBundleIdentifiersForPersona:(id)persona forPid:(int)pid completionHandler:(id)handler
{
  personaCopy = persona;
  handlerCopy = handler;
  v10 = +[NSXPCConnection currentConnection];
  v11 = sub_1000011DC([v10 processIdentifier]);

  v12 = qword_1000EB610;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100013094;
  v15[3] = &unk_1000DD228;
  v15[4] = self;
  v16 = personaCopy;
  pidCopy = pid;
  v19 = v11;
  v17 = handlerCopy;
  v13 = handlerCopy;
  v14 = personaCopy;
  dispatch_async(v12, v15);
}

- (void)setMultiPersonaBundlesIdentifiers:(id)identifiers forPid:(int)pid WithcompletionHandler:(id)handler
{
  identifiersCopy = identifiers;
  handlerCopy = handler;
  v10 = +[NSXPCConnection currentConnection];
  processIdentifier = [v10 processIdentifier];

  if (processIdentifier != pid)
  {
    if (qword_1000EB270 != -1)
    {
      sub_100088D00();
    }

    v12 = qword_1000EB268;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v27 = 0;
      v13 = sub_1000011A8(1);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v14 = v13;
      }

      else
      {
        v14 = v13 & 0xFFFFFFFE;
      }

      if (v14)
      {
        v28[0] = 67109376;
        v28[1] = processIdentifier;
        v29 = 1024;
        pidCopy = pid;
        v15 = _os_log_send_and_compose_impl(v14, &v27, 0, 0, &_mh_execute_header, v12, 0, " RDSERVER: DIFFERING PID: setMultiPersonaBundlesIdentifiers PID from connection: %d, passed in pid: %d", v28, 14);
        v16 = v15;
        if (v15)
        {
          sub_100002A8C(v15);
        }
      }

      else
      {
        v16 = 0;
      }

      free(v16);
    }
  }

  v17 = +[NSXPCConnection currentConnection];
  v18 = sub_1000011DC([v17 processIdentifier]);

  v19 = qword_1000EB610;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100013934;
  block[3] = &unk_1000DD228;
  block[4] = self;
  v23 = identifiersCopy;
  v25 = processIdentifier;
  v26 = v18;
  v24 = handlerCopy;
  v20 = handlerCopy;
  v21 = identifiersCopy;
  dispatch_async(v19, block);
}

- (void)fetchMultiPersonaBundleIdentifiersforPid:(int)pid withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = +[NSXPCConnection currentConnection];
  v8 = sub_1000011DC([v7 processIdentifier]);

  v9 = qword_1000EB610;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100013F90;
  block[3] = &unk_1000DD020;
  pidCopy = pid;
  v14 = v8;
  block[4] = self;
  v12 = handlerCopy;
  v10 = handlerCopy;
  dispatch_async(v9, block);
}

- (void)personaLoginWithPid:(int)pid WithUserODuuid:(id)duuid withUid:(unsigned int)uid completionHandler:(id)handler
{
  if (handler)
  {
    handlerCopy = handler;
    v8 = [NSError errorWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
    (*(handler + 2))(handlerCopy, v8);
  }
}

- (void)personaLogoutWithPid:(int)pid WithUserODuuid:(id)duuid withUid:(unsigned int)uid completionHandler:(id)handler
{
  if (handler)
  {
    handlerCopy = handler;
    v8 = [NSError errorWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
    (*(handler + 2))(handlerCopy, v8);
  }
}

- (void)_broadcastPersonaUpdates:(id)updates withAuid:(unsigned int)auid
{
  updatesCopy = updates;
  if (qword_1000EB270 != -1)
  {
    sub_100088D00();
  }

  v7 = qword_1000EB268;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 0;
    v8 = sub_1000011A8(1);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v8;
    }

    else
    {
      v9 = v8 & 0xFFFFFFFE;
    }

    if (v9)
    {
      v16 = 0;
      v10 = _os_log_send_and_compose_impl(v9, &v17, 0, 0, &_mh_execute_header, v7, 0, "Persona Update broadcast for registered machService", &v16, 2);
      v11 = v10;
      if (v10)
      {
        sub_100002A8C(v10);
      }
    }

    else
    {
      v11 = 0;
    }

    free(v11);
  }

  v12 = sub_1000449E8(updatesCopy);
  v13 = v12;
  if (v12)
  {
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000147B4;
    v14[3] = &unk_1000DD278;
    v14[4] = self;
    auidCopy = auid;
    [(__CFArray *)v12 enumerateObjectsUsingBlock:v14];
  }
}

- (BOOL)notifyNextPersonaObserver:(id)observer withUser:(unsigned int)user
{
  observerCopy = observer;
  if (observerCopy)
  {
    if (qword_1000EB270 != -1)
    {
      sub_100088D00();
    }

    v6 = qword_1000EB268;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v30[0] = 0;
      v7 = sub_1000011A8(1);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v8 = v7;
      }

      else
      {
        v8 = v7 & 0xFFFFFFFE;
      }

      if (v8)
      {
        *v31 = 138412290;
        *&v31[4] = observerCopy;
        v9 = _os_log_send_and_compose_impl(v8, v30, 0, 0, &_mh_execute_header, v6, 0, "setting up connection to mach service %@", v31, 12);
        v10 = v9;
        if (v9)
        {
          sub_100002A8C(v9);
        }
      }

      else
      {
        v10 = 0;
      }

      free(v10);
    }

    v16 = [[NSXPCConnection alloc] initWithMachServiceName:observerCopy options:0];
    v17 = +[RDClient sharedXPCInterface];
    [v16 setRemoteObjectInterface:v17];

    v18 = +[RDServer sharedXPCInterface];
    [v16 setExportedInterface:v18];

    [v16 setExportedObject:self];
    [v16 setInterruptionHandler:&stru_1000DD298];
    [v16 setInvalidationHandler:&stru_1000DD2B8];
    [v16 resume];
    v11 = [RDClient clientWithXPCConnection:v16];
    if (!v11)
    {
      if (qword_1000EB270 != -1)
      {
        sub_100088D28();
      }

      v19 = qword_1000EB268;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *v31 = 0;
        v20 = sub_1000011A8(1);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v21 = v20;
        }

        else
        {
          v21 = v20 & 0xFFFFFFFE;
        }

        if (v21)
        {
          LOWORD(v30[0]) = 0;
          LODWORD(v26) = 2;
          v22 = _os_log_send_and_compose_impl(v21, v31, 0, 0, &_mh_execute_header, v19, 0, "No personaOberverClient", v30, v26);
          v23 = v22;
          if (v22)
          {
            sub_100002A8C(v22);
          }
        }

        else
        {
          v23 = 0;
        }

        free(v23);
      }
    }

    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_100014F34;
    v27[3] = &unk_1000DCF10;
    v28 = observerCopy;
    v29 = v16;
    v24 = v16;
    [v11 personaUpdateCallbackForMachServiceCompletionHandler:v27];
  }

  else
  {
    if (qword_1000EB270 != -1)
    {
      sub_100088D00();
    }

    v11 = qword_1000EB268;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v31 = 0;
      v12 = sub_1000011A8(1);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v13 = v12;
      }

      else
      {
        v13 = v12 & 0xFFFFFFFE;
      }

      if (v13)
      {
        LOWORD(v30[0]) = 0;
        v14 = _os_log_send_and_compose_impl(v13, v31, 0, 0, &_mh_execute_header, v11, 0, "No machService called in", v30, 2);
        v15 = v14;
        if (v14)
        {
          sub_100002A8C(v14);
        }
      }

      else
      {
        v15 = 0;
      }

      free(v15);
    }
  }

  return observerCopy != 0;
}

- (void)registerUserPersonaStakeholderForPID:(int)d completionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = qword_1000EB610;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100015118;
  block[3] = &unk_1000DCF38;
  dCopy = d;
  block[4] = self;
  v10 = handlerCopy;
  v8 = handlerCopy;
  dispatch_async(v7, block);
}

- (void)registerUserPersonaObserverForPID:(int)d withMachServiceName:(id)name completionHandler:(id)handler
{
  nameCopy = name;
  handlerCopy = handler;
  v10 = +[NSXPCConnection currentConnection];
  v11 = sub_1000011DC([v10 processIdentifier]);

  v12 = qword_1000EB610;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100015640;
  v15[3] = &unk_1000DD228;
  v15[4] = self;
  v16 = nameCopy;
  dCopy = d;
  v19 = v11;
  v17 = handlerCopy;
  v13 = handlerCopy;
  v14 = nameCopy;
  dispatch_async(v12, v15);
}

- (int)asidForClient:(id)client withAuid:(unsigned int *)auid withPid:(int)pid
{
  if (auid)
  {
    *auid = -1;
  }

  return -1;
}

- (void)provisionDevice:(id)device forPid:(int)pid completionHandler:(id)handler
{
  deviceCopy = device;
  handlerCopy = handler;
  v10 = qword_1000EB610;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100015C78;
  v13[3] = &unk_1000DCF60;
  pidCopy = pid;
  v13[4] = self;
  v14 = deviceCopy;
  v15 = handlerCopy;
  v11 = handlerCopy;
  v12 = deviceCopy;
  dispatch_async(v10, v13);
}

- (void)resetStateForUserSwitch
{
  dispatch_assert_queue_V2(qword_1000EB610);
  [(RDServer *)self setSwitchState:0];
  [(RDServer *)self setUserToSwitchTo:0];
  logoutTimer = [(RDServer *)self logoutTimer];

  if (logoutTimer)
  {
    if (qword_1000EB280 != -1)
    {
      sub_100088D14();
    }

    v4 = qword_1000EB278;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 0;
      LODWORD(v5) = sub_1000011A8(0);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = v5;
      }

      else
      {
        v5 = v5 & 0xFFFFFFFE;
      }

      if (v5)
      {
        v6 = v4;
        logoutTimer2 = [(RDServer *)self logoutTimer];
        v18 = 134217984;
        v19 = logoutTimer2;
        v8 = _os_log_send_and_compose_impl(v5, &v17, 0, 0, &_mh_execute_header, v6, 0, "Canceling logout timer (%p)", &v18);

        if (v8)
        {
          sub_100002A8C(v8);
        }
      }

      else
      {
        v8 = 0;
      }

      free(v8);
    }

    logoutTimer3 = [(RDServer *)self logoutTimer];
    dispatch_source_cancel(logoutTimer3);

    [(RDServer *)self setLogoutTimer:0];
  }

  fastLogoutTimer = [(RDServer *)self fastLogoutTimer];

  if (fastLogoutTimer)
  {
    if (qword_1000EB280 != -1)
    {
      sub_100088D64();
    }

    v11 = qword_1000EB278;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 0;
      LODWORD(v12) = sub_1000011A8(0);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = v12;
      }

      else
      {
        v12 = v12 & 0xFFFFFFFE;
      }

      if (v12)
      {
        v13 = v11;
        fastLogoutTimer2 = [(RDServer *)self fastLogoutTimer];
        v18 = 134217984;
        v19 = fastLogoutTimer2;
        v15 = _os_log_send_and_compose_impl(v12, &v17, 0, 0, &_mh_execute_header, v13, 0, "Canceling fast logout timer (%p)", &v18);

        if (v15)
        {
          sub_100002A8C(v15);
        }
      }

      else
      {
        v15 = 0;
      }

      free(v15);
    }

    fastLogoutTimer3 = [(RDServer *)self fastLogoutTimer];
    dispatch_source_cancel(fastLogoutTimer3);

    [(RDServer *)self setFastLogoutTimer:0];
  }
}

@end