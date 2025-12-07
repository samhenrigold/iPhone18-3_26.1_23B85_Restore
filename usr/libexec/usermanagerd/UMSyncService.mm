@interface UMSyncService
+ (id)sharedService;
- (BOOL)remoteProcessHasBooleanEntitlement:(id)entitlement;
- (BOOL)retrievePasscodeFromFileHandle:(id)handle ofLength:(unint64_t)length withbaseaddress:(char *)withbaseaddress;
- (id)externalizeUserDictionary:(id)dictionary;
- (id)remoteServiceName;
- (int)asidForClient:(id)client withAuid:(unsigned int *)auid withPid:(int)pid;
- (void)MKBUserSessionSetInternalTest:(BOOL)test withReply:(id)reply;
- (void)addSyncServiceSource:(id)source toUserSession:(int)session withReply:(id)reply;
- (void)bundleIdentifiersForPersona:(id)persona completionHandler:(id)handler;
- (void)changeBootstrapTokenWithOldSecret:(id)secret oldSize:(unint64_t)size withNewSecret:(id)newSecret newSize:(unint64_t)newSize withReply:(id)reply;
- (void)changeBootstrapTokenWithOldSecret:(id)secret withNewSecret:(id)newSecret withReply:(id)reply;
- (void)checkBootstrapTokenExistsWithReply:(id)reply;
- (void)clearSyncBubbleUserswithReply:(id)reply;
- (void)configureLoginUIWithUserSessionCount:(int)count reply:(id)reply;
- (void)createBootstrapTokenWithSecret:(id)secret secretSize:(unint64_t)size withDeviceSecretHandle:(id)handle deviceSecretSize:(unint64_t)secretSize withReply:(id)reply;
- (void)createBootstrapTokenWithSecret:(id)secret withDevicePasscode:(id)passcode withReply:(id)reply;
- (void)createUserSession:(id)session withSecret:(id)secret oldSize:(unint64_t)size withOpaqueData:(id)data reply:(id)reply;
- (void)currentSyncBubbleIDwithReply:(id)reply;
- (void)dataMigrationSetup:(id)setup withSecret:(id)secret oldSize:(unint64_t)size reply:(id)reply;
- (void)deleteBootstrapTokenWithSecret:(id)secret secretSize:(unint64_t)size withDeviceSecretHandle:(id)handle deviceSecretSize:(unint64_t)secretSize withReply:(id)reply;
- (void)deleteBootstrapTokenWithSecret:(id)secret withDevicePasscode:(id)passcode withReply:(id)reply;
- (void)deleteUserSessionBlobwithReply:(id)reply;
- (void)deleteUserSessionSecureBlobwithReply:(id)reply;
- (void)fetchAllUsersPersonaListforPid:(int)pid withCompletionHandler:(id)handler;
- (void)fetchAsidMapforPid:(int)pid withCompletionHandler:(id)handler;
- (void)fetchPersona:(id)persona forPid:(int)pid completionHandler:(id)handler;
- (void)fetchPersonaGenerationNumberWithCompletionHandler:(id)handler;
- (void)fetchPersonaListforPid:(int)pid withCompletionHandler:(id)handler;
- (void)foregroundUserSessionAttributesWithReply:(id)reply;
- (void)getUserSessionAttributes:(id)attributes reply:(id)reply;
- (void)grantSandboxExtensionForPersonaWithUniqueString:(id)string completionHandler:(id)handler;
- (void)isLoginSessionwithReply:(id)reply;
- (void)limitNumberOfUserSessions:(int)sessions withReply:(id)reply;
- (void)listAllUserSessionIDsWithAReply:(id)reply;
- (void)listSyncBubbleUserswithReply:(id)reply;
- (void)listSyncServiceSourcesForUserSession:(id)session withReply:(id)reply;
- (void)loadUserSession:(id)session withSecret:(id)secret oldSize:(unint64_t)size reply:(id)reply;
- (void)migrateGuestUserVolume:(id)volume withReply:(id)reply;
- (void)migrateSharedAndPrimaryUserVolumeWithReply:(id)reply;
- (void)mountUserSessionVolumeforID:(int)d withReply:(id)reply;
- (void)personaLoginWithPid:(int)pid WithUserODuuid:(id)duuid withUid:(unsigned int)uid completionHandler:(id)handler;
- (void)personaLogoutWithPid:(int)pid WithUserODuuid:(id)duuid withUid:(unsigned int)uid completionHandler:(id)handler;
- (void)registerUserPersonaObserverForPID:(int)d withMachServiceName:(id)name completionHandler:(id)handler;
- (void)removeSyncServiceSource:(id)source toUserSession:(int)session withReply:(id)reply;
- (void)removeUserSession:(id)session reply:(id)reply;
- (void)replacePersonaMachPortVoucher:(id)voucher withAccountID:(id)d generationSet:(BOOL)set forPid:(int)pid withReply:(id)reply;
- (void)retrieveUserSessionBlobwithReply:(id)reply;
- (void)retrieveUserSessionSecureBackupBlobwithReply:(id)reply;
- (void)setBundlesIdentifiers:(id)identifiers forPersona:(id)persona completionHandler:(id)handler;
- (void)setUserKeybagOpaqueData:(id)data keybagBlob:(id)blob withReply:(id)reply;
- (void)setUserSessionAttributes:(id)attributes reply:(id)reply;
- (void)setUserSessionSecureBackupBlob:(id)blob withReply:(id)reply;
- (void)startUserSyncBubble:(int)bubble withReply:(id)reply;
- (void)stoptUserSyncBubble:(int)bubble withReply:(id)reply;
- (void)switchBlockTasksInfoWithReply:(id)reply;
- (void)switchToLoginUIUserSessionWithReply:(id)reply;
- (void)switchToUserSession:(id)session withOpaqueData:(id)data reply:(id)reply;
- (void)unloadUserSession:(id)session reply:(id)reply;
- (void)unmountUserSessionVolumeforID:(int)d withReply:(id)reply;
- (void)userKeybagOpaqueData:(id)data KeybagBlobwithReply:(id)reply;
- (void)userSessionDeviceConfigurationInfo:(int)info withReply:(id)reply;
- (void)userSessionLRUInfoWithReply:(id)reply;
- (void)validateBootstrapTokenWithSecret:(id)secret secretSize:(unint64_t)size withReply:(id)reply;
- (void)validateBootstrapTokenWithSecret:(id)secret withReply:(id)reply;
@end

@implementation UMSyncService

+ (id)sharedService
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100057D48;
  block[3] = &unk_1000DCE88;
  block[4] = self;
  if (qword_1000EB408 != -1)
  {
    dispatch_once(&qword_1000EB408, block);
  }

  v2 = qword_1000EB400;

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

- (id)remoteServiceName
{
  v2 = +[NSXPCConnection currentConnection];
  serviceName = [v2 serviceName];

  return serviceName;
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
    if (qword_1000EB428 != -1)
    {
      sub_100095F8C();
    }

    v10 = qword_1000EB420;
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

- (id)externalizeUserDictionary:(id)dictionary
{
  v3 = [dictionary mutableCopy];
  v4 = v3;
  if (v3)
  {
    [v3 removeObjectForKey:kUMUserSessionKeybagOpaqueDataKey];
    v5 = [NSDictionary dictionaryWithDictionary:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)loadUserSession:(id)session withSecret:(id)secret oldSize:(unint64_t)size reply:(id)reply
{
  sessionCopy = session;
  secretCopy = secret;
  replyCopy = reply;
  v79 = 0;
  v80 = &v79;
  v81 = 0x3032000000;
  v82 = sub_100058864;
  v83 = sub_100058874;
  v84 = 0;
  v73 = 0;
  v74 = &v73;
  v75 = 0x3032000000;
  v76 = sub_100058864;
  v77 = sub_100058874;
  v78 = 0;
  address = 0;
  if (qword_1000EB428 != -1)
  {
    sub_100095FA0();
  }

  v13 = qword_1000EB420;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v71 = 0;
    v14 = sub_1000011A8(1);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v15 = v14;
    }

    else
    {
      v15 = v14 & 0xFFFFFFFE;
    }

    if (v15)
    {
      v70 = 0;
      v16 = _os_log_send_and_compose_impl(v15, &v71, 0, 0, &_mh_execute_header, v13, 0, "loadUserSession: Start", &v70, 2);
      v17 = v16;
      if (v16)
      {
        sub_100002A8C(v16);
      }
    }

    else
    {
      v17 = 0;
    }

    free(v17);
  }

  if (![(UMSyncService *)self remoteProcessHasBooleanEntitlement:@"com.apple.mkb.usersession.load"])
  {
    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v23 = qword_1000EB420;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v71 = 0;
      v24 = sub_1000011A8(1);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v25 = v24;
      }

      else
      {
        v25 = v24 & 0xFFFFFFFE;
      }

      if (v25)
      {
        v70 = 0;
        LODWORD(v59) = 2;
        v26 = _os_log_send_and_compose_impl(v25, &v71, 0, 0, &_mh_execute_header, v23, 0, "Entitlement failure", &v70, v59);
        v27 = v26;
        if (v26)
        {
          sub_100002A8C(v26);
        }
      }

      else
      {
        v27 = 0;
      }

      free(v27);
    }

    v34 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
LABEL_74:
    v50 = v74[5];
    v74[5] = v34;

    if (replyCopy)
    {
LABEL_88:
      replyCopy[2](replyCopy, 0, v74[5]);
      goto LABEL_89;
    }

    goto LABEL_89;
  }

  if (vm_page_size < size)
  {
    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v18 = qword_1000EB420;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v71 = 0;
      v19 = sub_1000011A8(1);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v20 = v19;
      }

      else
      {
        v20 = v19 & 0xFFFFFFFE;
      }

      if (v20)
      {
        v70 = 0;
        LODWORD(v59) = 2;
        v21 = _os_log_send_and_compose_impl(v20, &v71, 0, 0, &_mh_execute_header, v18, 0, "Long Secret, can't handle ...", &v70, v59);
        v22 = v21;
        if (v21)
        {
          sub_100002A8C(v21);
        }
      }

      else
      {
        v22 = 0;
      }

      free(v22);
    }

    v34 = [NSError errorWithDomain:NSPOSIXErrorDomain code:7 userInfo:0];
    goto LABEL_74;
  }

  if (size)
  {
    if (vm_allocate(mach_task_self_, &address, vm_page_size, -268435455))
    {
      if (qword_1000EB428 != -1)
      {
        sub_100095FA0();
      }

      v28 = qword_1000EB420;
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v71 = 0;
        v29 = sub_1000011A8(1);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          v30 = v29;
        }

        else
        {
          v30 = v29 & 0xFFFFFFFE;
        }

        if (v30)
        {
          v70 = 0;
          LODWORD(v59) = 2;
          v31 = _os_log_send_and_compose_impl(v30, &v71, 0, 0, &_mh_execute_header, v28, 0, "FAILED to allocate VM", &v70, v59);
          v32 = v31;
          if (v31)
          {
            sub_100002A8C(v31);
          }
        }

        else
        {
          v32 = 0;
        }

        free(v32);
      }

      v51 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
      v52 = v74[5];
      v74[5] = v51;

      address = 0;
      goto LABEL_88;
    }

    v33 = address;
    if ([(UMSyncService *)self retrievePasscodeFromFileHandle:secretCopy ofLength:size withbaseaddress:address])
    {
      if (qword_1000EB428 != -1)
      {
        sub_100095FA0();
      }

      v35 = qword_1000EB420;
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        v71 = 0;
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
          v70 = 0;
          LODWORD(v59) = 2;
          v38 = _os_log_send_and_compose_impl(v37, &v71, 0, 0, &_mh_execute_header, v35, 0, "Failed to retrieve Passcode", &v70, v59);
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

      v53 = [NSError errorWithDomain:NSPOSIXErrorDomain code:5 userInfo:0];
      v54 = v74[5];
      v74[5] = v53;

      v55 = mach_task_self_;
      v56 = address;
      v57 = vm_page_size;
      if (vm_page_size >= size)
      {
        sizeCopy = size;
      }

      else
      {
        sizeCopy = vm_page_size;
      }

      memset_s(address, sizeCopy, 0, sizeCopy);
      vm_deallocate(v55, v56, v57);
      goto LABEL_88;
    }
  }

  else
  {
    v33 = 0;
  }

  v40 = qword_1000EB610;
  block = _NSConcreteStackBlock;
  v61 = 3221225472;
  v62 = sub_10005887C;
  v63 = &unk_1000DD8E8;
  v68 = v33;
  sizeCopy2 = size;
  v64 = sessionCopy;
  selfCopy = self;
  v66 = &v79;
  v67 = &v73;
  dispatch_sync(v40, &block);
  v41 = address;
  if (address)
  {
    v42 = mach_task_self_;
    v43 = vm_page_size;
    if (vm_page_size >= size)
    {
      sizeCopy3 = size;
    }

    else
    {
      sizeCopy3 = vm_page_size;
    }

    memset_s(address, sizeCopy3, 0, sizeCopy3);
    vm_deallocate(v42, v41, v43);
  }

  replyCopy[2](replyCopy, v80[5], v74[5]);
  if (qword_1000EB428 != -1)
  {
    sub_100095FA0();
  }

  v45 = qword_1000EB420;
  if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
  {
    v71 = 0;
    v46 = sub_1000011A8(1);
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      v47 = v46;
    }

    else
    {
      v47 = v46 & 0xFFFFFFFE;
    }

    if (v47)
    {
      v70 = 0;
      LODWORD(v59) = 2;
      v48 = _os_log_send_and_compose_impl(v47, &v71, 0, 0, &_mh_execute_header, v45, 0, "loadUserSession: End", &v70, v59, block, v61, v62, v63);
      v49 = v48;
      if (v48)
      {
        sub_100002A8C(v48);
      }
    }

    else
    {
      v49 = 0;
    }

    free(v49);
  }

LABEL_89:
  _Block_object_dispose(&v73, 8);

  _Block_object_dispose(&v79, 8);
}

- (void)unloadUserSession:(id)session reply:(id)reply
{
  sessionCopy = session;
  replyCopy = reply;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = sub_100058864;
  v33 = sub_100058874;
  v34 = 0;
  if (qword_1000EB428 != -1)
  {
    sub_100095FA0();
  }

  v8 = qword_1000EB420;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v28 = 0;
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
      v27 = 0;
      v11 = _os_log_send_and_compose_impl(v10, &v28, 0, 0, &_mh_execute_header, v8, 0, "unloadUserSession: Start", &v27, 2);
      v12 = v11;
      if (v11)
      {
        sub_100002A8C(v11);
      }
    }

    else
    {
      v12 = 0;
    }

    free(v12);
  }

  if ([(UMSyncService *)self remoteProcessHasBooleanEntitlement:@"com.apple.mkb.usersession.load"])
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100058F30;
    block[3] = &unk_1000DD910;
    block[4] = &v29;
    dispatch_sync(qword_1000EB610, block);
    replyCopy[2](replyCopy, v30[5]);
    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v13 = qword_1000EB420;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v28 = 0;
      v14 = sub_1000011A8(1);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v15 = v14;
      }

      else
      {
        v15 = v14 & 0xFFFFFFFE;
      }

      if (v15)
      {
        v27 = 0;
        LODWORD(v25) = 2;
        v16 = _os_log_send_and_compose_impl(v15, &v28, 0, 0, &_mh_execute_header, v13, 0, "unloadUserSession: End", &v27, v25);
        v17 = v16;
        if (v16)
        {
          sub_100002A8C(v16);
        }
      }

      else
      {
        v17 = 0;
      }

      free(v17);
    }
  }

  else
  {
    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v18 = qword_1000EB420;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v28 = 0;
      v19 = sub_1000011A8(1);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v20 = v19;
      }

      else
      {
        v20 = v19 & 0xFFFFFFFE;
      }

      if (v20)
      {
        v27 = 0;
        LODWORD(v25) = 2;
        v21 = _os_log_send_and_compose_impl(v20, &v28, 0, 0, &_mh_execute_header, v18, 0, "Entitlement failure", &v27, v25);
        v22 = v21;
        if (v21)
        {
          sub_100002A8C(v21);
        }
      }

      else
      {
        v22 = 0;
      }

      free(v22);
    }

    v23 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
    v24 = v30[5];
    v30[5] = v23;

    if (replyCopy)
    {
      replyCopy[2](replyCopy, v30[5]);
    }
  }

  _Block_object_dispose(&v29, 8);
}

- (void)createUserSession:(id)session withSecret:(id)secret oldSize:(unint64_t)size withOpaqueData:(id)data reply:(id)reply
{
  sessionCopy = session;
  secretCopy = secret;
  dataCopy = data;
  replyCopy = reply;
  v83 = 0;
  v84 = &v83;
  v85 = 0x3032000000;
  v86 = sub_100058864;
  v87 = sub_100058874;
  v88 = 0;
  v77 = 0;
  v78 = &v77;
  v79 = 0x3032000000;
  v80 = sub_100058864;
  v81 = sub_100058874;
  v82 = 0;
  address = 0;
  if (qword_1000EB428 != -1)
  {
    sub_100095FA0();
  }

  v16 = qword_1000EB420;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v75 = 0;
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
      v74 = 0;
      v19 = _os_log_send_and_compose_impl(v18, &v75, 0, 0, &_mh_execute_header, v16, 0, "createUserSession: Start", &v74, 2);
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

  if ([(UMSyncService *)self remoteProcessHasBooleanEntitlement:@"com.apple.mkb.usersession.load"])
  {
    if (vm_page_size >= size)
    {
      if (size)
      {
        if (qword_1000EB428 != -1)
        {
          sub_100095FA0();
        }

        v33 = qword_1000EB420;
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          v75 = 0;
          v34 = sub_1000011A8(1);
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            v35 = v34;
          }

          else
          {
            v35 = v34 & 0xFFFFFFFE;
          }

          if (v35)
          {
            v74 = 0;
            LODWORD(v72) = 2;
            v36 = _os_log_send_and_compose_impl(v35, &v75, 0, 0, &_mh_execute_header, v33, 0, "createUserSession with SECRET passcode", &v74, v72);
            v37 = v36;
            if (v36)
            {
              sub_100002A8C(v36);
            }
          }

          else
          {
            v37 = 0;
          }

          free(v37);
        }

        if (vm_allocate(mach_task_self_, &address, vm_page_size, -268435455))
        {
          if (qword_1000EB428 != -1)
          {
            sub_100095FA0();
          }

          v45 = qword_1000EB420;
          if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
          {
            v75 = 0;
            v46 = sub_1000011A8(1);
            if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
            {
              v47 = v46;
            }

            else
            {
              v47 = v46 & 0xFFFFFFFE;
            }

            if (v47)
            {
              v74 = 0;
              LODWORD(v72) = 2;
              v48 = _os_log_send_and_compose_impl(v47, &v75, 0, 0, &_mh_execute_header, v45, 0, "FAILED to allocate VM", &v74, v72);
              v49 = v48;
              if (v48)
              {
                sub_100002A8C(v48);
              }
            }

            else
            {
              v49 = 0;
            }

            free(v49);
          }

          v55 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
          v56 = v78[5];
          v78[5] = v55;

          address = 0;
          goto LABEL_110;
        }

        if ([(UMSyncService *)self retrievePasscodeFromFileHandle:secretCopy ofLength:size withbaseaddress:address])
        {
          if (qword_1000EB428 != -1)
          {
            sub_100095FA0();
          }

          v50 = qword_1000EB420;
          if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
          {
            v75 = 0;
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
              v74 = 0;
              LODWORD(v72) = 2;
              v53 = _os_log_send_and_compose_impl(v52, &v75, 0, 0, &_mh_execute_header, v50, 0, "Failed to retrieve Passcode", &v74, v72);
              v54 = v53;
              if (v53)
              {
                sub_100002A8C(v53);
              }
            }

            else
            {
              v54 = 0;
            }

            free(v54);
          }

          v66 = [NSError errorWithDomain:NSPOSIXErrorDomain code:5 userInfo:0];
          v67 = v78[5];
          v78[5] = v66;

          v68 = mach_task_self_;
          v69 = address;
          v70 = vm_page_size;
          if (vm_page_size >= size)
          {
            sizeCopy = size;
          }

          else
          {
            sizeCopy = vm_page_size;
          }

          memset_s(address, sizeCopy, 0, sizeCopy);
          vm_deallocate(v68, v69, v70);
          goto LABEL_110;
        }
      }

      else
      {
        if (qword_1000EB428 != -1)
        {
          sub_100095FA0();
        }

        v38 = qword_1000EB420;
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          v75 = 0;
          v39 = sub_1000011A8(1);
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
          {
            v40 = v39;
          }

          else
          {
            v40 = v39 & 0xFFFFFFFE;
          }

          if (v40)
          {
            v74 = 0;
            LODWORD(v72) = 2;
            v41 = _os_log_send_and_compose_impl(v40, &v75, 0, 0, &_mh_execute_header, v38, 0, "createUserSession with NULL passcode", &v74, v72);
            v42 = v41;
            if (v41)
            {
              sub_100002A8C(v41);
            }
          }

          else
          {
            v42 = 0;
          }

          free(v42);
        }
      }

      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100059A58;
      block[3] = &unk_1000DD458;
      block[4] = &v83;
      block[5] = &v77;
      dispatch_sync(qword_1000EB610, block);
      v57 = address;
      if (address)
      {
        v58 = mach_task_self_;
        v59 = vm_page_size;
        if (vm_page_size >= size)
        {
          sizeCopy2 = size;
        }

        else
        {
          sizeCopy2 = vm_page_size;
        }

        memset_s(address, sizeCopy2, 0, sizeCopy2);
        vm_deallocate(v58, v57, v59);
      }

      replyCopy[2](replyCopy, v84[5], v78[5]);
      if (qword_1000EB428 != -1)
      {
        sub_100095FA0();
      }

      v61 = qword_1000EB420;
      if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
      {
        v75 = 0;
        v62 = sub_1000011A8(1);
        if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
        {
          v63 = v62;
        }

        else
        {
          v63 = v62 & 0xFFFFFFFE;
        }

        if (v63)
        {
          v74 = 0;
          LODWORD(v72) = 2;
          v64 = _os_log_send_and_compose_impl(v63, &v75, 0, 0, &_mh_execute_header, v61, 0, "createUserSession: End", &v74, v72);
          v65 = v64;
          if (v64)
          {
            sub_100002A8C(v64);
          }
        }

        else
        {
          v65 = 0;
        }

        free(v65);
      }
    }

    else
    {
      if (qword_1000EB428 != -1)
      {
        sub_100095FA0();
      }

      v21 = qword_1000EB420;
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v75 = 0;
        v22 = sub_1000011A8(1);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v23 = v22;
        }

        else
        {
          v23 = v22 & 0xFFFFFFFE;
        }

        if (v23)
        {
          v74 = 0;
          LODWORD(v72) = 2;
          v24 = _os_log_send_and_compose_impl(v23, &v75, 0, 0, &_mh_execute_header, v21, 0, "Long Secret, can't handle ...", &v74, v72);
          v25 = v24;
          if (v24)
          {
            sub_100002A8C(v24);
          }
        }

        else
        {
          v25 = 0;
        }

        free(v25);
      }

      v43 = [NSError errorWithDomain:NSPOSIXErrorDomain code:7 userInfo:0];
      v44 = v78[5];
      v78[5] = v43;

      if (replyCopy)
      {
LABEL_110:
        replyCopy[2](replyCopy, 0, v78[5]);
      }
    }
  }

  else
  {
    v26 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
    v27 = v78[5];
    v78[5] = v26;

    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v28 = qword_1000EB420;
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v75 = 0;
      v29 = sub_1000011A8(1);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v30 = v29;
      }

      else
      {
        v30 = v29 & 0xFFFFFFFE;
      }

      if (v30)
      {
        v74 = 0;
        LODWORD(v72) = 2;
        v31 = _os_log_send_and_compose_impl(v30, &v75, 0, 0, &_mh_execute_header, v28, 0, "Entitlement failure", &v74, v72);
        v32 = v31;
        if (v31)
        {
          sub_100002A8C(v31);
        }
      }

      else
      {
        v32 = 0;
      }

      free(v32);
    }

    if (replyCopy)
    {
      goto LABEL_110;
    }
  }

  _Block_object_dispose(&v77, 8);

  _Block_object_dispose(&v83, 8);
}

- (void)dataMigrationSetup:(id)setup withSecret:(id)secret oldSize:(unint64_t)size reply:(id)reply
{
  setupCopy = setup;
  secretCopy = secret;
  replyCopy = reply;
  v77 = 0;
  v78 = &v77;
  v79 = 0x3032000000;
  v80 = sub_100058864;
  v81 = sub_100058874;
  v82 = 0;
  address = 0;
  if (qword_1000EB428 != -1)
  {
    sub_100095FA0();
  }

  v13 = qword_1000EB420;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v75 = 0;
    v14 = sub_1000011A8(1);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v15 = v14;
    }

    else
    {
      v15 = v14 & 0xFFFFFFFE;
    }

    if (v15)
    {
      v74 = 0;
      v16 = _os_log_send_and_compose_impl(v15, &v75, 0, 0, &_mh_execute_header, v13, 0, "dataMigrationSetup: Start", &v74, 2);
      v17 = v16;
      if (v16)
      {
        sub_100002A8C(v16);
      }
    }

    else
    {
      v17 = 0;
    }

    free(v17);
  }

  if ([(UMSyncService *)self remoteProcessHasBooleanEntitlement:@"com.apple.mkb.usersession.migration"])
  {
    if (vm_page_size >= size)
    {
      if (size)
      {
        if (qword_1000EB428 != -1)
        {
          sub_100095FA0();
        }

        v30 = qword_1000EB420;
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          v75 = 0;
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
            v74 = 0;
            LODWORD(v67) = 2;
            v33 = _os_log_send_and_compose_impl(v32, &v75, 0, 0, &_mh_execute_header, v30, 0, "dataMigrationSetup with SECRET passcode", &v74, v67);
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

        if (vm_allocate(mach_task_self_, &address, vm_page_size, -268435455))
        {
          if (qword_1000EB428 != -1)
          {
            sub_100095FA0();
          }

          v42 = qword_1000EB420;
          if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
          {
            v75 = 0;
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
              v74 = 0;
              LODWORD(v67) = 2;
              v45 = _os_log_send_and_compose_impl(v44, &v75, 0, 0, &_mh_execute_header, v42, 0, "FAILED to allocate VM", &v74, v67);
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

          v53 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
          v54 = v78[5];
          v78[5] = v53;

          address = 0;
          goto LABEL_105;
        }

        v47 = address;
        if ([(UMSyncService *)self retrievePasscodeFromFileHandle:secretCopy ofLength:size withbaseaddress:address])
        {
          if (qword_1000EB428 != -1)
          {
            sub_100095FA0();
          }

          v48 = qword_1000EB420;
          if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
          {
            v75 = 0;
            v49 = sub_1000011A8(1);
            if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
            {
              v50 = v49;
            }

            else
            {
              v50 = v49 & 0xFFFFFFFE;
            }

            if (v50)
            {
              v74 = 0;
              LODWORD(v67) = 2;
              v51 = _os_log_send_and_compose_impl(v50, &v75, 0, 0, &_mh_execute_header, v48, 0, "Failed to retrieve Passcode", &v74, v67);
              v52 = v51;
              if (v51)
              {
                sub_100002A8C(v51);
              }
            }

            else
            {
              v52 = 0;
            }

            free(v52);
          }

          v61 = [NSError errorWithDomain:NSPOSIXErrorDomain code:5 userInfo:0];
          v62 = v78[5];
          v78[5] = v61;

          v63 = mach_task_self_;
          v64 = address;
          v65 = vm_page_size;
          if (vm_page_size >= size)
          {
            sizeCopy = size;
          }

          else
          {
            sizeCopy = vm_page_size;
          }

          memset_s(address, sizeCopy, 0, sizeCopy);
          vm_deallocate(v63, v64, v65);
          goto LABEL_105;
        }
      }

      else
      {
        if (qword_1000EB428 != -1)
        {
          sub_100095FA0();
        }

        v35 = qword_1000EB420;
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          v75 = 0;
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
            v74 = 0;
            LODWORD(v67) = 2;
            v38 = _os_log_send_and_compose_impl(v37, &v75, 0, 0, &_mh_execute_header, v35, 0, "dataMigrationSetup with NULL passcode", &v74, v67);
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

        v47 = 0;
      }

      v55 = qword_1000EB610;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10005A60C;
      block[3] = &unk_1000DD938;
      v71 = v47;
      sizeCopy2 = size;
      v69 = setupCopy;
      v70 = &v77;
      v73 = address;
      dispatch_sync(v55, block);
      replyCopy[2](replyCopy, v78[5]);
      if (qword_1000EB428 != -1)
      {
        sub_100095FA0();
      }

      v56 = qword_1000EB420;
      if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
      {
        v75 = 0;
        v57 = sub_1000011A8(1);
        if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
        {
          v58 = v57;
        }

        else
        {
          v58 = v57 & 0xFFFFFFFE;
        }

        if (v58)
        {
          v74 = 0;
          LODWORD(v67) = 2;
          v59 = _os_log_send_and_compose_impl(v58, &v75, 0, 0, &_mh_execute_header, v56, 0, "dataMigrationSetup: End", &v74, v67);
          v60 = v59;
          if (v59)
          {
            sub_100002A8C(v59);
          }
        }

        else
        {
          v60 = 0;
        }

        free(v60);
      }
    }

    else
    {
      if (qword_1000EB428 != -1)
      {
        sub_100095FA0();
      }

      v18 = qword_1000EB420;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v75 = 0;
        v19 = sub_1000011A8(1);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v20 = v19;
        }

        else
        {
          v20 = v19 & 0xFFFFFFFE;
        }

        if (v20)
        {
          v74 = 0;
          LODWORD(v67) = 2;
          v21 = _os_log_send_and_compose_impl(v20, &v75, 0, 0, &_mh_execute_header, v18, 0, "Long Secret, can't handle ...", &v74, v67);
          v22 = v21;
          if (v21)
          {
            sub_100002A8C(v21);
          }
        }

        else
        {
          v22 = 0;
        }

        free(v22);
      }

      v40 = [NSError errorWithDomain:NSPOSIXErrorDomain code:7 userInfo:0];
      v41 = v78[5];
      v78[5] = v40;

      if (replyCopy)
      {
LABEL_105:
        replyCopy[2](replyCopy, v78[5]);
      }
    }
  }

  else
  {
    v23 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
    v24 = v78[5];
    v78[5] = v23;

    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v25 = qword_1000EB420;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v75 = 0;
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
        v74 = 0;
        LODWORD(v67) = 2;
        v28 = _os_log_send_and_compose_impl(v27, &v75, 0, 0, &_mh_execute_header, v25, 0, "Entitlement failure", &v74, v67);
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

    if (replyCopy)
    {
      goto LABEL_105;
    }
  }

  _Block_object_dispose(&v77, 8);
}

- (void)migrateSharedAndPrimaryUserVolumeWithReply:(id)reply
{
  replyCopy = reply;
  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = sub_100058864;
  v45 = sub_100058874;
  v46 = 0;
  if (qword_1000EB428 != -1)
  {
    sub_100095FA0();
  }

  v5 = qword_1000EB420;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v37 = 0;
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
      LOWORD(v33) = 0;
      v8 = _os_log_send_and_compose_impl(v7, &v37, 0, 0, &_mh_execute_header, v5, 0, "migrateSharedAndPrimaryUserVolume: Start", &v33, 2);
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

  if ([(UMSyncService *)self remoteProcessHasBooleanEntitlement:@"com.apple.mkb.usersession.migration"])
  {
    v37 = 0;
    v38 = &v37;
    v39 = 0x2020000000;
    v40 = 0;
    v33 = 0;
    v34 = &v33;
    v35 = 0x2020000000;
    v36 = 0;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10005AC6C;
    block[3] = &unk_1000DD960;
    block[4] = &v37;
    block[5] = &v33;
    block[6] = &v41;
    dispatch_sync(qword_1000EB610, block);
    if (v34[3])
    {
      v29[0] = _NSConcreteStackBlock;
      v29[1] = 3221225472;
      v29[2] = sub_10005B0F0;
      v29[3] = &unk_1000DD458;
      v29[4] = &v37;
      v29[5] = &v41;
      dispatch_sync(qword_1000EB628, v29);
    }

    else
    {
      if (qword_1000EB428 != -1)
      {
        sub_100095FA0();
      }

      v17 = qword_1000EB420;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v31 = 0;
        v18 = sub_1000011A8(1);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v19 = v18;
        }

        else
        {
          v19 = v18 & 0xFFFFFFFE;
        }

        if (v19)
        {
          v30[0] = 0;
          LODWORD(v28) = 2;
          v20 = _os_log_send_and_compose_impl(v19, &v31, 0, 0, &_mh_execute_header, v17, 0, "Unable to find the primary UUID string, returning error, ENOENT", v30, v28);
          v21 = v20;
          if (v20)
          {
            sub_100002A8C(v20);
          }
        }

        else
        {
          v21 = 0;
        }

        free(v21);
      }
    }

    if (*(v34 + 24) == 1)
    {
      v22 = v38[3];
      if (v22)
      {
        CFRelease(v22);
        v38[3] = 0;
      }
    }

    replyCopy[2](replyCopy, v42[5]);
    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v23 = qword_1000EB420;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v31 = 0;
      v24 = sub_1000011A8(1);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v25 = v24;
      }

      else
      {
        v25 = v24 & 0xFFFFFFFE;
      }

      if (v25)
      {
        v30[0] = 0;
        LODWORD(v28) = 2;
        v26 = _os_log_send_and_compose_impl(v25, &v31, 0, 0, &_mh_execute_header, v23, 0, "migrateSharedAndPrimaryUserVolume: End", v30, v28);
        v27 = v26;
        if (v26)
        {
          sub_100002A8C(v26);
        }
      }

      else
      {
        v27 = 0;
      }

      free(v27);
    }

    _Block_object_dispose(&v33, 8);
    _Block_object_dispose(&v37, 8);
  }

  else
  {
    v10 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
    v11 = v42[5];
    v42[5] = v10;

    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v12 = qword_1000EB420;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v37 = 0;
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
        LOWORD(v33) = 0;
        LODWORD(v28) = 2;
        v15 = _os_log_send_and_compose_impl(v14, &v37, 0, 0, &_mh_execute_header, v12, 0, "Volume Migration Entitlement failure", &v33, v28);
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

    if (replyCopy)
    {
      replyCopy[2](replyCopy, v42[5]);
    }
  }

  _Block_object_dispose(&v41, 8);
}

- (void)migrateGuestUserVolume:(id)volume withReply:(id)reply
{
  volumeCopy = volume;
  replyCopy = reply;
  if (qword_1000EB428 != -1)
  {
    sub_100095F8C();
  }

  v8 = qword_1000EB420;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v62 = 0;
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
      LOWORD(v57) = 0;
      v11 = _os_log_send_and_compose_impl(v10, &v62, 0, 0, &_mh_execute_header, v8, 0, "migrateGuestUserVolume: Start", &v57, 2);
      v12 = v11;
      if (v11)
      {
        sub_100002A8C(v11);
      }
    }

    else
    {
      v12 = 0;
    }

    free(v12);
  }

  v62 = 0;
  v63 = &v62;
  v64 = 0x3032000000;
  v65 = sub_100058864;
  v66 = sub_100058874;
  v67 = 0;
  v61 = -1;
  if ([(UMSyncService *)self remoteProcessHasBooleanEntitlement:@"com.apple.mkb.usersession.migration"])
  {
    v13 = +[NSXPCConnection currentConnection];
    processIdentifier = [v13 processIdentifier];

    v15 = [(UMSyncService *)self asidForClient:0 withAuid:&v61 withPid:processIdentifier];
    v16 = +[NSXPCConnection currentConnection];
    LODWORD(processIdentifier) = sub_1000011DC([v16 processIdentifier]);

    v57 = 0;
    v58 = &v57;
    v59 = 0x2020000000;
    v60 = 0;
    v53 = 0;
    v54 = &v53;
    v55 = 0x2020000000;
    v56 = 0;
    v17 = qword_1000EB610;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10005BA18;
    block[3] = &unk_1000DD988;
    v50 = v15;
    v51 = v61;
    v52 = processIdentifier;
    v47 = &v57;
    v18 = volumeCopy;
    v46 = v18;
    v48 = &v62;
    v49 = &v53;
    dispatch_sync(v17, block);
    if (*(v54 + 24) == 1)
    {
      v19 = qword_1000EB628;
      v41[0] = _NSConcreteStackBlock;
      v41[1] = 3221225472;
      v41[2] = sub_10005BAD4;
      v41[3] = &unk_1000DD9B0;
      v42 = v18;
      v43 = &v57;
      v44 = &v62;
      dispatch_sync(v19, v41);
      v20 = v58[3];
      if (v20)
      {
        CFRelease(v20);
        v58[3] = 0;
      }

      v21 = v42;
    }

    else
    {
      if (qword_1000EB428 != -1)
      {
        sub_100095FA0();
      }

      v21 = qword_1000EB420;
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v40 = 0;
        v29 = sub_1000011A8(1);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v30 = v29;
        }

        else
        {
          v30 = v29 & 0xFFFFFFFE;
        }

        if (v30)
        {
          v39[0] = 0;
          LODWORD(v38) = 2;
          v31 = _os_log_send_and_compose_impl(v30, &v40, 0, 0, &_mh_execute_header, v21, 0, "Unable to diskString for the persona returning error..", v39, v38);
          v32 = v31;
          if (v31)
          {
            sub_100002A8C(v31);
          }
        }

        else
        {
          v32 = 0;
        }

        free(v32);
      }
    }

    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v33 = qword_1000EB420;
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      v40 = 0;
      v34 = sub_1000011A8(1);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        v35 = v34;
      }

      else
      {
        v35 = v34 & 0xFFFFFFFE;
      }

      if (v35)
      {
        v39[0] = 0;
        LODWORD(v38) = 2;
        v36 = _os_log_send_and_compose_impl(v35, &v40, 0, 0, &_mh_execute_header, v33, 0, "migrateGuestUserVolume: End", v39, v38);
        v37 = v36;
        if (v36)
        {
          sub_100002A8C(v36);
        }
      }

      else
      {
        v37 = 0;
      }

      free(v37);
    }

    replyCopy[2](replyCopy, v63[5]);
    _Block_object_dispose(&v53, 8);
    _Block_object_dispose(&v57, 8);
  }

  else
  {
    v22 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
    v23 = v63[5];
    v63[5] = v22;

    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v24 = qword_1000EB420;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v57 = 0;
      v25 = sub_1000011A8(1);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v26 = v25;
      }

      else
      {
        v26 = v25 & 0xFFFFFFFE;
      }

      if (v26)
      {
        LOWORD(v53) = 0;
        LODWORD(v38) = 2;
        v27 = _os_log_send_and_compose_impl(v26, &v57, 0, 0, &_mh_execute_header, v24, 0, "Volume Migration Entitlement failure", &v53, v38);
        v28 = v27;
        if (v27)
        {
          sub_100002A8C(v27);
        }
      }

      else
      {
        v28 = 0;
      }

      free(v28);
    }

    if (replyCopy)
    {
      replyCopy[2](replyCopy, v63[5]);
    }
  }

  _Block_object_dispose(&v62, 8);
}

- (void)createBootstrapTokenWithSecret:(id)secret secretSize:(unint64_t)size withDeviceSecretHandle:(id)handle deviceSecretSize:(unint64_t)secretSize withReply:(id)reply
{
  secretCopy = secret;
  handleCopy = handle;
  replyCopy = reply;
  v105 = 0;
  v106 = &v105;
  v107 = 0x3032000000;
  v108 = sub_100058864;
  v109 = sub_100058874;
  v110 = 0;
  address = 0;
  if (qword_1000EB428 != -1)
  {
    sub_100095FA0();
  }

  v15 = qword_1000EB420;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v103 = 0;
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
      v102 = 0;
      v18 = _os_log_send_and_compose_impl(v17, &v103, 0, 0, &_mh_execute_header, v15, 0, "createBootstrapToken: Start", &v102, 2);
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

  if (![(UMSyncService *)self remoteProcessHasBooleanEntitlement:@"com.apple.usermanagerd.bootstrap.fullaccess"])
  {
    v25 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
    v26 = v106[5];
    v106[5] = v25;

    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v27 = qword_1000EB420;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v103 = 0;
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
        v102 = 0;
        LODWORD(v94) = 2;
        v30 = _os_log_send_and_compose_impl(v29, &v103, 0, 0, &_mh_execute_header, v27, 0, "Entitlement failure", &v102, v94);
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

    if (!replyCopy)
    {
      goto LABEL_73;
    }

LABEL_60:
    replyCopy[2](replyCopy, v106[5]);
LABEL_73:
    v51 = 0;
    goto LABEL_74;
  }

  if (size > 0x400 || secretSize >= 0x401)
  {
    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v32 = qword_1000EB420;
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v103 = 0;
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
        v102 = 0;
        LODWORD(v94) = 2;
        v35 = _os_log_send_and_compose_impl(v34, &v103, 0, 0, &_mh_execute_header, v32, 0, "Long Secret, can't handle ...", &v102, v94);
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

    v42 = [NSError errorWithDomain:NSPOSIXErrorDomain code:7 userInfo:0];
    v43 = v106[5];
    v106[5] = v42;

    if (!replyCopy)
    {
      goto LABEL_73;
    }

    goto LABEL_60;
  }

  if (vm_allocate(mach_task_self_, &address, vm_page_size, -268435455))
  {
    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v20 = qword_1000EB420;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v103 = 0;
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
        v102 = 0;
        LODWORD(v94) = 2;
        v23 = _os_log_send_and_compose_impl(v22, &v103, 0, 0, &_mh_execute_header, v20, 0, "FAILED to allocate VM", &v102, v94);
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

    v49 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
    v50 = v106[5];
    v106[5] = v49;

    address = 0;
    replyCopy[2](replyCopy, v106[5]);
    goto LABEL_73;
  }

  if (size)
  {
    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v37 = qword_1000EB420;
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      v103 = 0;
      v38 = sub_1000011A8(1);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        v39 = v38;
      }

      else
      {
        v39 = v38 & 0xFFFFFFFE;
      }

      if (v39)
      {
        v102 = 0;
        LODWORD(v94) = 2;
        v40 = _os_log_send_and_compose_impl(v39, &v103, 0, 0, &_mh_execute_header, v37, 0, "createBootstrapToken with SECRET token", &v102, v94);
        v41 = v40;
        if (v40)
        {
          sub_100002A8C(v40);
        }
      }

      else
      {
        v41 = 0;
      }

      free(v41);
    }

    v52 = address;
    if ([(UMSyncService *)self retrievePasscodeFromFileHandle:secretCopy ofLength:size withbaseaddress:address])
    {
      if (qword_1000EB428 != -1)
      {
        sub_100095FA0();
      }

      v53 = qword_1000EB420;
      if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
      {
        v103 = 0;
        v54 = sub_1000011A8(1);
        if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
        {
          v55 = v54;
        }

        else
        {
          v55 = v54 & 0xFFFFFFFE;
        }

        if (v55)
        {
          v102 = 0;
          LODWORD(v94) = 2;
          v56 = _os_log_send_and_compose_impl(v55, &v103, 0, 0, &_mh_execute_header, v53, 0, "Failed to retrieve Passcode", &v102, v94);
          v57 = v56;
          if (v56)
          {
            sub_100002A8C(v56);
          }
        }

        else
        {
          v57 = 0;
        }

        free(v57);
      }

      v75 = [NSError errorWithDomain:NSPOSIXErrorDomain code:5 userInfo:0];
      v76 = v106[5];
      v106[5] = v75;

      v77 = mach_task_self_;
      v78 = address;
      v79 = vm_page_size;
      if (vm_page_size >= size)
      {
        sizeCopy = size;
      }

      else
      {
        sizeCopy = vm_page_size;
      }

      memset_s(address, sizeCopy, 0, sizeCopy);
      vm_deallocate(v77, v78, v79);
      replyCopy[2](replyCopy, v106[5]);
      goto LABEL_73;
    }

    v51 = [NSData dataWithBytesNoCopy:v52 length:size freeWhenDone:0];
  }

  else
  {
    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v44 = qword_1000EB420;
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      v103 = 0;
      v45 = sub_1000011A8(1);
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        v46 = v45;
      }

      else
      {
        v46 = v45 & 0xFFFFFFFE;
      }

      if (v46)
      {
        v102 = 0;
        LODWORD(v94) = 2;
        v47 = _os_log_send_and_compose_impl(v46, &v103, 0, 0, &_mh_execute_header, v44, 0, "createBootstrapToken with NULL token", &v102, v94);
        v48 = v47;
        if (v47)
        {
          sub_100002A8C(v47);
        }
      }

      else
      {
        v48 = 0;
      }

      free(v48);
    }

    v51 = 0;
  }

  if (secretSize)
  {
    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v58 = qword_1000EB420;
    if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
    {
      v95 = handleCopy;
      v103 = 0;
      v59 = sub_1000011A8(1);
      if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
      {
        v60 = v59;
      }

      else
      {
        v60 = v59 & 0xFFFFFFFE;
      }

      if (v60)
      {
        v102 = 0;
        LODWORD(v94) = 2;
        v61 = _os_log_send_and_compose_impl(v60, &v103, 0, 0, &_mh_execute_header, v58, 0, "has device passcode", &v102, v94);
        v62 = v61;
        if (v61)
        {
          sub_100002A8C(v61);
        }
      }

      else
      {
        v62 = 0;
      }

      free(v62);
      handleCopy = v95;
    }

    v68 = address;
    if ([(UMSyncService *)self retrievePasscodeFromFileHandle:handleCopy ofLength:secretSize withbaseaddress:address + 1024])
    {
      if (qword_1000EB428 != -1)
      {
        sub_100095FA0();
      }

      v69 = qword_1000EB420;
      if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
      {
        v103 = 0;
        v70 = sub_1000011A8(1);
        if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
        {
          v71 = v70;
        }

        else
        {
          v71 = v70 & 0xFFFFFFFE;
        }

        if (v71)
        {
          v102 = 0;
          LODWORD(v94) = 2;
          v72 = _os_log_send_and_compose_impl(v71, &v103, 0, 0, &_mh_execute_header, v69, 0, "Failed to retrieve device Passcode", &v102, v94);
          v73 = v72;
          if (v72)
          {
            sub_100002A8C(v72);
          }
        }

        else
        {
          v73 = 0;
        }

        free(v73);
      }

      v88 = [NSError errorWithDomain:NSPOSIXErrorDomain code:5 userInfo:0];
      v89 = v106[5];
      v106[5] = v88;

      v90 = mach_task_self_;
      v91 = address;
      v92 = vm_page_size;
      if (vm_page_size >= secretSize + 1024)
      {
        v93 = secretSize + 1024;
      }

      else
      {
        v93 = vm_page_size;
      }

      memset_s(address, v93, 0, v93);
      vm_deallocate(v90, v91, v92);
      replyCopy[2](replyCopy, v106[5]);
      goto LABEL_74;
    }

    v74 = [NSData dataWithBytesNoCopy:v68 + 1024 length:size freeWhenDone:0];
  }

  else
  {
    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v63 = qword_1000EB420;
    if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
    {
      v103 = 0;
      v64 = sub_1000011A8(1);
      if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
      {
        v65 = v64;
      }

      else
      {
        v65 = v64 & 0xFFFFFFFE;
      }

      if (v65)
      {
        v102 = 0;
        LODWORD(v94) = 2;
        v66 = _os_log_send_and_compose_impl(v65, &v103, 0, 0, &_mh_execute_header, v63, 0, "createBootstrapToken with NULL device Passcode", &v102, v94);
        v67 = v66;
        if (v66)
        {
          sub_100002A8C(v66);
        }
      }

      else
      {
        v67 = 0;
      }

      free(v67);
    }

    v74 = 0;
  }

  v81 = qword_1000EB610;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005CCC0;
  block[3] = &unk_1000DD9D8;
  v51 = v51;
  v97 = v51;
  v82 = v74;
  v98 = v82;
  v99 = &v105;
  v100 = address;
  secretSizeCopy = secretSize;
  dispatch_sync(v81, block);
  replyCopy[2](replyCopy, v106[5]);
  if (qword_1000EB428 != -1)
  {
    sub_100095FA0();
  }

  v83 = qword_1000EB420;
  if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
  {
    v103 = 0;
    v84 = sub_1000011A8(1);
    if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
    {
      v85 = v84;
    }

    else
    {
      v85 = v84 & 0xFFFFFFFE;
    }

    if (v85)
    {
      v102 = 0;
      LODWORD(v94) = 2;
      v86 = _os_log_send_and_compose_impl(v85, &v103, 0, 0, &_mh_execute_header, v83, 0, "createBootstrapToken: End", &v102, v94);
      v87 = v86;
      if (v86)
      {
        sub_100002A8C(v86);
      }
    }

    else
    {
      v87 = 0;
    }

    free(v87);
  }

LABEL_74:
  _Block_object_dispose(&v105, 8);
}

- (void)createBootstrapTokenWithSecret:(id)secret withDevicePasscode:(id)passcode withReply:(id)reply
{
  secretCopy = secret;
  passcodeCopy = passcode;
  replyCopy = reply;
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = sub_100058864;
  v40 = sub_100058874;
  v41 = 0;
  if (qword_1000EB428 != -1)
  {
    sub_100095FA0();
  }

  v11 = qword_1000EB420;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v35 = 0;
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
      v34 = 0;
      v14 = _os_log_send_and_compose_impl(v13, &v35, 0, 0, &_mh_execute_header, v11, 0, "createBootstrapToken: Start", &v34, 2);
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

  if ([(UMSyncService *)self remoteProcessHasBooleanEntitlement:@"com.apple.usermanagerd.bootstrap.fullaccess"])
  {
    v16 = qword_1000EB610;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10005D1B0;
    block[3] = &unk_1000DDA00;
    v31 = secretCopy;
    v32 = passcodeCopy;
    v33 = &v36;
    dispatch_sync(v16, block);
    replyCopy[2](replyCopy, v37[5]);
    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v17 = qword_1000EB420;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v35 = 0;
      v18 = sub_1000011A8(1);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v19 = v18;
      }

      else
      {
        v19 = v18 & 0xFFFFFFFE;
      }

      if (v19)
      {
        v34 = 0;
        LODWORD(v29) = 2;
        v20 = _os_log_send_and_compose_impl(v19, &v35, 0, 0, &_mh_execute_header, v17, 0, "createBootstrapToken: End", &v34, v29);
        v21 = v20;
        if (v20)
        {
          sub_100002A8C(v20);
        }
      }

      else
      {
        v21 = 0;
      }

      free(v21);
    }
  }

  else
  {
    v22 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
    v23 = v37[5];
    v37[5] = v22;

    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v24 = qword_1000EB420;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v35 = 0;
      v25 = sub_1000011A8(1);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v26 = v25;
      }

      else
      {
        v26 = v25 & 0xFFFFFFFE;
      }

      if (v26)
      {
        v34 = 0;
        LODWORD(v29) = 2;
        v27 = _os_log_send_and_compose_impl(v26, &v35, 0, 0, &_mh_execute_header, v24, 0, "Entitlement failure", &v34, v29);
        v28 = v27;
        if (v27)
        {
          sub_100002A8C(v27);
        }
      }

      else
      {
        v28 = 0;
      }

      free(v28);
    }

    if (replyCopy)
    {
      replyCopy[2](replyCopy, v37[5]);
    }
  }

  _Block_object_dispose(&v36, 8);
}

- (void)changeBootstrapTokenWithOldSecret:(id)secret oldSize:(unint64_t)size withNewSecret:(id)newSecret newSize:(unint64_t)newSize withReply:(id)reply
{
  secretCopy = secret;
  newSecretCopy = newSecret;
  replyCopy = reply;
  v104 = 0;
  v105 = &v104;
  v106 = 0x3032000000;
  v107 = sub_100058864;
  v108 = sub_100058874;
  v109 = 0;
  address = 0;
  if (qword_1000EB428 != -1)
  {
    sub_100095FA0();
  }

  v15 = qword_1000EB420;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v102 = 0;
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
      v101 = 0;
      v18 = _os_log_send_and_compose_impl(v17, &v102, 0, 0, &_mh_execute_header, v15, 0, "changeBootstrapToken: Start", &v101, 2);
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

  if (![(UMSyncService *)self remoteProcessHasBooleanEntitlement:@"com.apple.usermanagerd.bootstrap.fullaccess"])
  {
    v25 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
    v26 = v105[5];
    v105[5] = v25;

    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v27 = qword_1000EB420;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v102 = 0;
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
        v101 = 0;
        LODWORD(v94) = 2;
        v30 = _os_log_send_and_compose_impl(v29, &v102, 0, 0, &_mh_execute_header, v27, 0, "Entitlement failure", &v101, v94);
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

    if (!replyCopy)
    {
      goto LABEL_73;
    }

LABEL_60:
    replyCopy[2](replyCopy, v105[5]);
LABEL_73:
    v51 = 0;
    goto LABEL_74;
  }

  if (size > 0x400 || newSize >= 0x401)
  {
    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v32 = qword_1000EB420;
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v102 = 0;
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
        v101 = 0;
        LODWORD(v94) = 2;
        v35 = _os_log_send_and_compose_impl(v34, &v102, 0, 0, &_mh_execute_header, v32, 0, "Long Secret, can't handle ...", &v101, v94);
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

    v42 = [NSError errorWithDomain:NSPOSIXErrorDomain code:7 userInfo:0];
    v43 = v105[5];
    v105[5] = v42;

    if (!replyCopy)
    {
      goto LABEL_73;
    }

    goto LABEL_60;
  }

  if (vm_allocate(mach_task_self_, &address, vm_page_size, -268435455))
  {
    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v20 = qword_1000EB420;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v102 = 0;
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
        v101 = 0;
        LODWORD(v94) = 2;
        v23 = _os_log_send_and_compose_impl(v22, &v102, 0, 0, &_mh_execute_header, v20, 0, "FAILED to allocate VM", &v101, v94);
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

    v49 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
    v50 = v105[5];
    v105[5] = v49;

    address = 0;
    replyCopy[2](replyCopy, v105[5]);
    goto LABEL_73;
  }

  if (size)
  {
    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v37 = qword_1000EB420;
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      v102 = 0;
      v38 = sub_1000011A8(1);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        v39 = v38;
      }

      else
      {
        v39 = v38 & 0xFFFFFFFE;
      }

      if (v39)
      {
        v101 = 0;
        LODWORD(v94) = 2;
        v40 = _os_log_send_and_compose_impl(v39, &v102, 0, 0, &_mh_execute_header, v37, 0, "changeBootstrapToken with SECRET oldToken", &v101, v94);
        v41 = v40;
        if (v40)
        {
          sub_100002A8C(v40);
        }
      }

      else
      {
        v41 = 0;
      }

      free(v41);
    }

    v52 = address;
    if ([(UMSyncService *)self retrievePasscodeFromFileHandle:secretCopy ofLength:size withbaseaddress:address])
    {
      if (qword_1000EB428 != -1)
      {
        sub_100095FA0();
      }

      v53 = qword_1000EB420;
      if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
      {
        v102 = 0;
        v54 = sub_1000011A8(1);
        if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
        {
          v55 = v54;
        }

        else
        {
          v55 = v54 & 0xFFFFFFFE;
        }

        if (v55)
        {
          v101 = 0;
          LODWORD(v94) = 2;
          v56 = _os_log_send_and_compose_impl(v55, &v102, 0, 0, &_mh_execute_header, v53, 0, "Failed to retrieve oldTokenData", &v101, v94);
          v57 = v56;
          if (v56)
          {
            sub_100002A8C(v56);
          }
        }

        else
        {
          v57 = 0;
        }

        free(v57);
      }

      v75 = [NSError errorWithDomain:NSPOSIXErrorDomain code:5 userInfo:0];
      v76 = v105[5];
      v105[5] = v75;

      v77 = mach_task_self_;
      v78 = address;
      v79 = vm_page_size;
      if (vm_page_size >= size)
      {
        sizeCopy = size;
      }

      else
      {
        sizeCopy = vm_page_size;
      }

      memset_s(address, sizeCopy, 0, sizeCopy);
      vm_deallocate(v77, v78, v79);
      replyCopy[2](replyCopy, v105[5]);
      goto LABEL_73;
    }

    v51 = [NSData dataWithBytesNoCopy:v52 length:size freeWhenDone:0];
  }

  else
  {
    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v44 = qword_1000EB420;
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      v102 = 0;
      v45 = sub_1000011A8(1);
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        v46 = v45;
      }

      else
      {
        v46 = v45 & 0xFFFFFFFE;
      }

      if (v46)
      {
        v101 = 0;
        LODWORD(v94) = 2;
        v47 = _os_log_send_and_compose_impl(v46, &v102, 0, 0, &_mh_execute_header, v44, 0, "NULL oldToken", &v101, v94);
        v48 = v47;
        if (v47)
        {
          sub_100002A8C(v47);
        }
      }

      else
      {
        v48 = 0;
      }

      free(v48);
    }

    v51 = 0;
  }

  if (newSize)
  {
    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v58 = qword_1000EB420;
    if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
    {
      v102 = 0;
      v59 = sub_1000011A8(1);
      if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
      {
        v60 = v59;
      }

      else
      {
        v60 = v59 & 0xFFFFFFFE;
      }

      if (v60)
      {
        v101 = 0;
        LODWORD(v94) = 2;
        v61 = _os_log_send_and_compose_impl(v60, &v102, 0, 0, &_mh_execute_header, v58, 0, "changeBootstrapToken with SECRET newToken", &v101, v94);
        v62 = v61;
        if (v61)
        {
          sub_100002A8C(v61);
        }
      }

      else
      {
        v62 = 0;
      }

      free(v62);
    }

    v68 = address;
    if ([(UMSyncService *)self retrievePasscodeFromFileHandle:newSecretCopy ofLength:newSize withbaseaddress:address + 1024])
    {
      if (qword_1000EB428 != -1)
      {
        sub_100095FA0();
      }

      v69 = qword_1000EB420;
      if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
      {
        v102 = 0;
        v70 = sub_1000011A8(1);
        if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
        {
          v71 = v70;
        }

        else
        {
          v71 = v70 & 0xFFFFFFFE;
        }

        if (v71)
        {
          v101 = 0;
          LODWORD(v94) = 2;
          v72 = _os_log_send_and_compose_impl(v71, &v102, 0, 0, &_mh_execute_header, v69, 0, "Failed to retrieve oldTokenData", &v101, v94);
          v73 = v72;
          if (v72)
          {
            sub_100002A8C(v72);
          }
        }

        else
        {
          v73 = 0;
        }

        free(v73);
      }

      v88 = [NSError errorWithDomain:NSPOSIXErrorDomain code:5 userInfo:0];
      v89 = v105[5];
      v105[5] = v88;

      v90 = mach_task_self_;
      v91 = address;
      v92 = vm_page_size;
      if (vm_page_size >= newSize + 1024)
      {
        v93 = newSize + 1024;
      }

      else
      {
        v93 = vm_page_size;
      }

      memset_s(address, v93, 0, v93);
      vm_deallocate(v90, v91, v92);
      replyCopy[2](replyCopy, v105[5]);
      goto LABEL_74;
    }

    v74 = [NSData dataWithBytesNoCopy:v68 + 1024 length:newSize freeWhenDone:0];
  }

  else
  {
    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v63 = qword_1000EB420;
    if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
    {
      v102 = 0;
      v64 = sub_1000011A8(1);
      if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
      {
        v65 = v64;
      }

      else
      {
        v65 = v64 & 0xFFFFFFFE;
      }

      if (v65)
      {
        v101 = 0;
        LODWORD(v94) = 2;
        v66 = _os_log_send_and_compose_impl(v65, &v102, 0, 0, &_mh_execute_header, v63, 0, "NULL newToken", &v101, v94);
        v67 = v66;
        if (v66)
        {
          sub_100002A8C(v66);
        }
      }

      else
      {
        v67 = 0;
      }

      free(v67);
    }

    v74 = 0;
  }

  v81 = qword_1000EB610;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005DEF8;
  block[3] = &unk_1000DD9D8;
  v51 = v51;
  v96 = v51;
  v82 = v74;
  v97 = v82;
  v98 = &v104;
  v99 = address;
  newSizeCopy = newSize;
  dispatch_sync(v81, block);
  replyCopy[2](replyCopy, v105[5]);
  if (qword_1000EB428 != -1)
  {
    sub_100095FA0();
  }

  v83 = qword_1000EB420;
  if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
  {
    v102 = 0;
    v84 = sub_1000011A8(1);
    if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
    {
      v85 = v84;
    }

    else
    {
      v85 = v84 & 0xFFFFFFFE;
    }

    if (v85)
    {
      v101 = 0;
      LODWORD(v94) = 2;
      v86 = _os_log_send_and_compose_impl(v85, &v102, 0, 0, &_mh_execute_header, v83, 0, "changeBootstrapToken: End", &v101, v94);
      v87 = v86;
      if (v86)
      {
        sub_100002A8C(v86);
      }
    }

    else
    {
      v87 = 0;
    }

    free(v87);
  }

LABEL_74:
  _Block_object_dispose(&v104, 8);
}

- (void)changeBootstrapTokenWithOldSecret:(id)secret withNewSecret:(id)newSecret withReply:(id)reply
{
  secretCopy = secret;
  newSecretCopy = newSecret;
  replyCopy = reply;
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = sub_100058864;
  v40 = sub_100058874;
  v41 = 0;
  if (qword_1000EB428 != -1)
  {
    sub_100095FA0();
  }

  v11 = qword_1000EB420;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v35 = 0;
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
      v34 = 0;
      v14 = _os_log_send_and_compose_impl(v13, &v35, 0, 0, &_mh_execute_header, v11, 0, "changeBootstrapToken: Start", &v34, 2);
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

  if ([(UMSyncService *)self remoteProcessHasBooleanEntitlement:@"com.apple.usermanagerd.bootstrap.fullaccess"])
  {
    v16 = qword_1000EB610;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10005E3E0;
    block[3] = &unk_1000DDA00;
    v31 = secretCopy;
    v32 = newSecretCopy;
    v33 = &v36;
    dispatch_sync(v16, block);
    replyCopy[2](replyCopy, v37[5]);
    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v17 = qword_1000EB420;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v35 = 0;
      v18 = sub_1000011A8(1);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v19 = v18;
      }

      else
      {
        v19 = v18 & 0xFFFFFFFE;
      }

      if (v19)
      {
        v34 = 0;
        LODWORD(v29) = 2;
        v20 = _os_log_send_and_compose_impl(v19, &v35, 0, 0, &_mh_execute_header, v17, 0, "changeBootstrapToken: End", &v34, v29);
        v21 = v20;
        if (v20)
        {
          sub_100002A8C(v20);
        }
      }

      else
      {
        v21 = 0;
      }

      free(v21);
    }
  }

  else
  {
    v22 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
    v23 = v37[5];
    v37[5] = v22;

    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v24 = qword_1000EB420;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v35 = 0;
      v25 = sub_1000011A8(1);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v26 = v25;
      }

      else
      {
        v26 = v25 & 0xFFFFFFFE;
      }

      if (v26)
      {
        v34 = 0;
        LODWORD(v29) = 2;
        v27 = _os_log_send_and_compose_impl(v26, &v35, 0, 0, &_mh_execute_header, v24, 0, "Entitlement failure", &v34, v29);
        v28 = v27;
        if (v27)
        {
          sub_100002A8C(v27);
        }
      }

      else
      {
        v28 = 0;
      }

      free(v28);
    }

    if (replyCopy)
    {
      replyCopy[2](replyCopy, v37[5]);
    }
  }

  _Block_object_dispose(&v36, 8);
}

- (void)deleteBootstrapTokenWithSecret:(id)secret secretSize:(unint64_t)size withDeviceSecretHandle:(id)handle deviceSecretSize:(unint64_t)secretSize withReply:(id)reply
{
  secretCopy = secret;
  handleCopy = handle;
  replyCopy = reply;
  v105 = 0;
  v106 = &v105;
  v107 = 0x3032000000;
  v108 = sub_100058864;
  v109 = sub_100058874;
  v110 = 0;
  address = 0;
  if (qword_1000EB428 != -1)
  {
    sub_100095FA0();
  }

  v15 = qword_1000EB420;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v103 = 0;
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
      v102 = 0;
      v18 = _os_log_send_and_compose_impl(v17, &v103, 0, 0, &_mh_execute_header, v15, 0, "deleteBootstrapToken: Start", &v102, 2);
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

  if (![(UMSyncService *)self remoteProcessHasBooleanEntitlement:@"com.apple.usermanagerd.bootstrap.fullaccess"])
  {
    v25 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
    v26 = v106[5];
    v106[5] = v25;

    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v27 = qword_1000EB420;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v103 = 0;
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
        v102 = 0;
        LODWORD(v94) = 2;
        v30 = _os_log_send_and_compose_impl(v29, &v103, 0, 0, &_mh_execute_header, v27, 0, "Entitlement failure", &v102, v94);
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

    if (!replyCopy)
    {
      goto LABEL_73;
    }

LABEL_60:
    replyCopy[2](replyCopy, v106[5]);
LABEL_73:
    v51 = 0;
    goto LABEL_74;
  }

  if (size > 0x400 || secretSize >= 0x401)
  {
    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v32 = qword_1000EB420;
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v103 = 0;
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
        v102 = 0;
        LODWORD(v94) = 2;
        v35 = _os_log_send_and_compose_impl(v34, &v103, 0, 0, &_mh_execute_header, v32, 0, "Long Secret, can't handle ...", &v102, v94);
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

    v42 = [NSError errorWithDomain:NSPOSIXErrorDomain code:7 userInfo:0];
    v43 = v106[5];
    v106[5] = v42;

    if (!replyCopy)
    {
      goto LABEL_73;
    }

    goto LABEL_60;
  }

  if (vm_allocate(mach_task_self_, &address, vm_page_size, -268435455))
  {
    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v20 = qword_1000EB420;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v103 = 0;
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
        v102 = 0;
        LODWORD(v94) = 2;
        v23 = _os_log_send_and_compose_impl(v22, &v103, 0, 0, &_mh_execute_header, v20, 0, "FAILED to allocate VM", &v102, v94);
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

    v49 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
    v50 = v106[5];
    v106[5] = v49;

    address = 0;
    replyCopy[2](replyCopy, v106[5]);
    goto LABEL_73;
  }

  if (size)
  {
    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v37 = qword_1000EB420;
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      v103 = 0;
      v38 = sub_1000011A8(1);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        v39 = v38;
      }

      else
      {
        v39 = v38 & 0xFFFFFFFE;
      }

      if (v39)
      {
        v102 = 0;
        LODWORD(v94) = 2;
        v40 = _os_log_send_and_compose_impl(v39, &v103, 0, 0, &_mh_execute_header, v37, 0, "deleteBootstrapToken with SECRET token", &v102, v94);
        v41 = v40;
        if (v40)
        {
          sub_100002A8C(v40);
        }
      }

      else
      {
        v41 = 0;
      }

      free(v41);
    }

    v52 = address;
    if ([(UMSyncService *)self retrievePasscodeFromFileHandle:secretCopy ofLength:size withbaseaddress:address])
    {
      if (qword_1000EB428 != -1)
      {
        sub_100095FA0();
      }

      v53 = qword_1000EB420;
      if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
      {
        v103 = 0;
        v54 = sub_1000011A8(1);
        if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
        {
          v55 = v54;
        }

        else
        {
          v55 = v54 & 0xFFFFFFFE;
        }

        if (v55)
        {
          v102 = 0;
          LODWORD(v94) = 2;
          v56 = _os_log_send_and_compose_impl(v55, &v103, 0, 0, &_mh_execute_header, v53, 0, "Failed to retrieve Passcode", &v102, v94);
          v57 = v56;
          if (v56)
          {
            sub_100002A8C(v56);
          }
        }

        else
        {
          v57 = 0;
        }

        free(v57);
      }

      v75 = [NSError errorWithDomain:NSPOSIXErrorDomain code:5 userInfo:0];
      v76 = v106[5];
      v106[5] = v75;

      v77 = mach_task_self_;
      v78 = address;
      v79 = vm_page_size;
      if (vm_page_size >= size)
      {
        sizeCopy = size;
      }

      else
      {
        sizeCopy = vm_page_size;
      }

      memset_s(address, sizeCopy, 0, sizeCopy);
      vm_deallocate(v77, v78, v79);
      replyCopy[2](replyCopy, v106[5]);
      goto LABEL_73;
    }

    v51 = [NSData dataWithBytesNoCopy:v52 length:size freeWhenDone:0];
  }

  else
  {
    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v44 = qword_1000EB420;
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      v103 = 0;
      v45 = sub_1000011A8(1);
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        v46 = v45;
      }

      else
      {
        v46 = v45 & 0xFFFFFFFE;
      }

      if (v46)
      {
        v102 = 0;
        LODWORD(v94) = 2;
        v47 = _os_log_send_and_compose_impl(v46, &v103, 0, 0, &_mh_execute_header, v44, 0, "deleteBootstrapToken with NULL token", &v102, v94);
        v48 = v47;
        if (v47)
        {
          sub_100002A8C(v47);
        }
      }

      else
      {
        v48 = 0;
      }

      free(v48);
    }

    v51 = 0;
  }

  if (secretSize)
  {
    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v58 = qword_1000EB420;
    if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
    {
      v95 = handleCopy;
      v103 = 0;
      v59 = sub_1000011A8(1);
      if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
      {
        v60 = v59;
      }

      else
      {
        v60 = v59 & 0xFFFFFFFE;
      }

      if (v60)
      {
        v102 = 0;
        LODWORD(v94) = 2;
        v61 = _os_log_send_and_compose_impl(v60, &v103, 0, 0, &_mh_execute_header, v58, 0, "has device passcode", &v102, v94);
        v62 = v61;
        if (v61)
        {
          sub_100002A8C(v61);
        }
      }

      else
      {
        v62 = 0;
      }

      free(v62);
      handleCopy = v95;
    }

    v68 = address;
    if ([(UMSyncService *)self retrievePasscodeFromFileHandle:handleCopy ofLength:secretSize withbaseaddress:address + 1024])
    {
      if (qword_1000EB428 != -1)
      {
        sub_100095FA0();
      }

      v69 = qword_1000EB420;
      if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
      {
        v103 = 0;
        v70 = sub_1000011A8(1);
        if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
        {
          v71 = v70;
        }

        else
        {
          v71 = v70 & 0xFFFFFFFE;
        }

        if (v71)
        {
          v102 = 0;
          LODWORD(v94) = 2;
          v72 = _os_log_send_and_compose_impl(v71, &v103, 0, 0, &_mh_execute_header, v69, 0, "Failed to retrieve device Passcode", &v102, v94);
          v73 = v72;
          if (v72)
          {
            sub_100002A8C(v72);
          }
        }

        else
        {
          v73 = 0;
        }

        free(v73);
      }

      v88 = [NSError errorWithDomain:NSPOSIXErrorDomain code:5 userInfo:0];
      v89 = v106[5];
      v106[5] = v88;

      v90 = mach_task_self_;
      v91 = address;
      v92 = vm_page_size;
      if (vm_page_size >= secretSize + 1024)
      {
        v93 = secretSize + 1024;
      }

      else
      {
        v93 = vm_page_size;
      }

      memset_s(address, v93, 0, v93);
      vm_deallocate(v90, v91, v92);
      replyCopy[2](replyCopy, v106[5]);
      goto LABEL_74;
    }

    v74 = [NSData dataWithBytesNoCopy:v68 + 1024 length:size freeWhenDone:0];
  }

  else
  {
    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v63 = qword_1000EB420;
    if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
    {
      v103 = 0;
      v64 = sub_1000011A8(1);
      if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
      {
        v65 = v64;
      }

      else
      {
        v65 = v64 & 0xFFFFFFFE;
      }

      if (v65)
      {
        v102 = 0;
        LODWORD(v94) = 2;
        v66 = _os_log_send_and_compose_impl(v65, &v103, 0, 0, &_mh_execute_header, v63, 0, "deleteBootstrapToken with no device Passcode", &v102, v94);
        v67 = v66;
        if (v66)
        {
          sub_100002A8C(v66);
        }
      }

      else
      {
        v67 = 0;
      }

      free(v67);
    }

    v74 = 0;
  }

  v81 = qword_1000EB610;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005F130;
  block[3] = &unk_1000DD9D8;
  v51 = v51;
  v97 = v51;
  v82 = v74;
  v98 = v82;
  v99 = &v105;
  v100 = address;
  secretSizeCopy = secretSize;
  dispatch_sync(v81, block);
  replyCopy[2](replyCopy, v106[5]);
  if (qword_1000EB428 != -1)
  {
    sub_100095FA0();
  }

  v83 = qword_1000EB420;
  if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
  {
    v103 = 0;
    v84 = sub_1000011A8(1);
    if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
    {
      v85 = v84;
    }

    else
    {
      v85 = v84 & 0xFFFFFFFE;
    }

    if (v85)
    {
      v102 = 0;
      LODWORD(v94) = 2;
      v86 = _os_log_send_and_compose_impl(v85, &v103, 0, 0, &_mh_execute_header, v83, 0, "deleteBootstrapToken: END", &v102, v94);
      v87 = v86;
      if (v86)
      {
        sub_100002A8C(v86);
      }
    }

    else
    {
      v87 = 0;
    }

    free(v87);
  }

LABEL_74:
  _Block_object_dispose(&v105, 8);
}

- (void)deleteBootstrapTokenWithSecret:(id)secret withDevicePasscode:(id)passcode withReply:(id)reply
{
  secretCopy = secret;
  passcodeCopy = passcode;
  replyCopy = reply;
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = sub_100058864;
  v40 = sub_100058874;
  v41 = 0;
  if (qword_1000EB428 != -1)
  {
    sub_100095FA0();
  }

  v11 = qword_1000EB420;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v35 = 0;
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
      v34 = 0;
      v14 = _os_log_send_and_compose_impl(v13, &v35, 0, 0, &_mh_execute_header, v11, 0, "deleteBootstrapToken: Start", &v34, 2);
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

  if ([(UMSyncService *)self remoteProcessHasBooleanEntitlement:@"com.apple.usermanagerd.bootstrap.fullaccess"])
  {
    v16 = qword_1000EB610;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10005F618;
    block[3] = &unk_1000DDA00;
    v31 = secretCopy;
    v32 = passcodeCopy;
    v33 = &v36;
    dispatch_sync(v16, block);
    replyCopy[2](replyCopy, v37[5]);
    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v17 = qword_1000EB420;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v35 = 0;
      v18 = sub_1000011A8(1);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v19 = v18;
      }

      else
      {
        v19 = v18 & 0xFFFFFFFE;
      }

      if (v19)
      {
        v34 = 0;
        LODWORD(v29) = 2;
        v20 = _os_log_send_and_compose_impl(v19, &v35, 0, 0, &_mh_execute_header, v17, 0, "deleteBootstrapToken: END", &v34, v29);
        v21 = v20;
        if (v20)
        {
          sub_100002A8C(v20);
        }
      }

      else
      {
        v21 = 0;
      }

      free(v21);
    }
  }

  else
  {
    v22 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
    v23 = v37[5];
    v37[5] = v22;

    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v24 = qword_1000EB420;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v35 = 0;
      v25 = sub_1000011A8(1);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v26 = v25;
      }

      else
      {
        v26 = v25 & 0xFFFFFFFE;
      }

      if (v26)
      {
        v34 = 0;
        LODWORD(v29) = 2;
        v27 = _os_log_send_and_compose_impl(v26, &v35, 0, 0, &_mh_execute_header, v24, 0, "Entitlement failure", &v34, v29);
        v28 = v27;
        if (v27)
        {
          sub_100002A8C(v27);
        }
      }

      else
      {
        v28 = 0;
      }

      free(v28);
    }

    if (replyCopy)
    {
      replyCopy[2](replyCopy, v37[5]);
    }
  }

  _Block_object_dispose(&v36, 8);
}

- (void)checkBootstrapTokenExistsWithReply:(id)reply
{
  replyCopy = reply;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = sub_100058864;
  v30 = sub_100058874;
  v31 = 0;
  if (qword_1000EB428 != -1)
  {
    sub_100095FA0();
  }

  v5 = qword_1000EB420;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v25 = 0;
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
      v24 = 0;
      v8 = _os_log_send_and_compose_impl(v7, &v25, 0, 0, &_mh_execute_header, v5, 0, "checkBootstrapToken: Start", &v24, 2);
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

  if ([(UMSyncService *)self remoteProcessHasBooleanEntitlement:@"com.apple.usermanagerd.bootstrap.fullaccess"])
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10005FA68;
    block[3] = &unk_1000DD910;
    block[4] = &v26;
    dispatch_sync(qword_1000EB610, block);
    replyCopy[2](replyCopy, v27[5]);
    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v10 = qword_1000EB420;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v25 = 0;
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
        v24 = 0;
        LODWORD(v22) = 2;
        v13 = _os_log_send_and_compose_impl(v12, &v25, 0, 0, &_mh_execute_header, v10, 0, "checkBootstrapToken: End", &v24, v22);
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
  }

  else
  {
    v15 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
    v16 = v27[5];
    v27[5] = v15;

    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v17 = qword_1000EB420;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v25 = 0;
      v18 = sub_1000011A8(1);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v19 = v18;
      }

      else
      {
        v19 = v18 & 0xFFFFFFFE;
      }

      if (v19)
      {
        v24 = 0;
        LODWORD(v22) = 2;
        v20 = _os_log_send_and_compose_impl(v19, &v25, 0, 0, &_mh_execute_header, v17, 0, "Entitlement failure", &v24, v22);
        v21 = v20;
        if (v20)
        {
          sub_100002A8C(v20);
        }
      }

      else
      {
        v21 = 0;
      }

      free(v21);
    }

    if (replyCopy)
    {
      replyCopy[2](replyCopy, v27[5]);
    }
  }

  _Block_object_dispose(&v26, 8);
}

- (void)validateBootstrapTokenWithSecret:(id)secret secretSize:(unint64_t)size withReply:(id)reply
{
  secretCopy = secret;
  replyCopy = reply;
  v74 = 0;
  v75 = &v74;
  v76 = 0x3032000000;
  v77 = sub_100058864;
  v78 = sub_100058874;
  v79 = 0;
  address = 0;
  if (qword_1000EB428 != -1)
  {
    sub_100095FA0();
  }

  v10 = qword_1000EB420;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v72 = 0;
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
      v71 = 0;
      v13 = _os_log_send_and_compose_impl(v12, &v72, 0, 0, &_mh_execute_header, v10, 0, "validateBootstrapToken: Start", &v71, 2);
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

  if ([(UMSyncService *)self remoteProcessHasBooleanEntitlement:@"com.apple.usermanagerd.bootstrap.fullaccess"])
  {
    if (size < 0x401)
    {
      if (vm_allocate(mach_task_self_, &address, vm_page_size, -268435455))
      {
        if (qword_1000EB428 != -1)
        {
          sub_100095FA0();
        }

        v27 = qword_1000EB420;
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          v72 = 0;
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
            v71 = 0;
            LODWORD(v66) = 2;
            v30 = _os_log_send_and_compose_impl(v29, &v72, 0, 0, &_mh_execute_header, v27, 0, "FAILED to allocate VM", &v71, v66);
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

        v44 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
        v45 = v75[5];
        v75[5] = v44;

        address = 0;
        replyCopy[2](replyCopy, v75[5]);
        goto LABEL_106;
      }

      if (size)
      {
        if (qword_1000EB428 != -1)
        {
          sub_100095FA0();
        }

        v32 = qword_1000EB420;
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          v72 = 0;
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
            v71 = 0;
            LODWORD(v66) = 2;
            v35 = _os_log_send_and_compose_impl(v34, &v72, 0, 0, &_mh_execute_header, v32, 0, "validateBootstrapToken with SECRET token", &v71, v66);
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

        v46 = address;
        if ([(UMSyncService *)self retrievePasscodeFromFileHandle:secretCopy ofLength:size withbaseaddress:address])
        {
          if (qword_1000EB428 != -1)
          {
            sub_100095FA0();
          }

          v47 = qword_1000EB420;
          if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
          {
            v72 = 0;
            v48 = sub_1000011A8(1);
            if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
            {
              v49 = v48;
            }

            else
            {
              v49 = v48 & 0xFFFFFFFE;
            }

            if (v49)
            {
              v71 = 0;
              LODWORD(v66) = 2;
              v50 = _os_log_send_and_compose_impl(v49, &v72, 0, 0, &_mh_execute_header, v47, 0, "Failed to retrieve Passcode", &v71, v66);
              v51 = v50;
              if (v50)
              {
                sub_100002A8C(v50);
              }
            }

            else
            {
              v51 = 0;
            }

            free(v51);
          }

          v60 = [NSError errorWithDomain:NSPOSIXErrorDomain code:5 userInfo:0];
          v61 = v75[5];
          v75[5] = v60;

          v62 = mach_task_self_;
          v63 = address;
          v64 = vm_page_size;
          if (vm_page_size >= size)
          {
            sizeCopy = size;
          }

          else
          {
            sizeCopy = vm_page_size;
          }

          memset_s(address, sizeCopy, 0, sizeCopy);
          vm_deallocate(v62, v63, v64);
          replyCopy[2](replyCopy, v75[5]);
          goto LABEL_106;
        }

        v52 = [NSData dataWithBytesNoCopy:v46 length:size freeWhenDone:0];
      }

      else
      {
        if (qword_1000EB428 != -1)
        {
          sub_100095FA0();
        }

        v39 = qword_1000EB420;
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          v72 = 0;
          v40 = sub_1000011A8(1);
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
          {
            v41 = v40;
          }

          else
          {
            v41 = v40 & 0xFFFFFFFE;
          }

          if (v41)
          {
            v71 = 0;
            LODWORD(v66) = 2;
            v42 = _os_log_send_and_compose_impl(v41, &v72, 0, 0, &_mh_execute_header, v39, 0, "validateBootstrapToken with NULL token", &v71, v66);
            v43 = v42;
            if (v42)
            {
              sub_100002A8C(v42);
            }
          }

          else
          {
            v43 = 0;
          }

          free(v43);
        }

        v52 = 0;
      }

      v53 = qword_1000EB610;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10006043C;
      block[3] = &unk_1000DDA28;
      v54 = v52;
      v68 = v54;
      v69 = &v74;
      v70 = address;
      dispatch_sync(v53, block);
      replyCopy[2](replyCopy, v75[5]);
      if (qword_1000EB428 != -1)
      {
        sub_100095FA0();
      }

      v55 = qword_1000EB420;
      if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
      {
        v72 = 0;
        v56 = sub_1000011A8(1);
        if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
        {
          v57 = v56;
        }

        else
        {
          v57 = v56 & 0xFFFFFFFE;
        }

        if (v57)
        {
          v71 = 0;
          LODWORD(v66) = 2;
          v58 = _os_log_send_and_compose_impl(v57, &v72, 0, 0, &_mh_execute_header, v55, 0, "validateBootstrapToken: End", &v71, v66);
          v59 = v58;
          if (v58)
          {
            sub_100002A8C(v58);
          }
        }

        else
        {
          v59 = 0;
        }

        free(v59);
      }
    }

    else
    {
      if (qword_1000EB428 != -1)
      {
        sub_100095FA0();
      }

      v15 = qword_1000EB420;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v72 = 0;
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
          v71 = 0;
          LODWORD(v66) = 2;
          v18 = _os_log_send_and_compose_impl(v17, &v72, 0, 0, &_mh_execute_header, v15, 0, "Long Secret, can't handle ...", &v71, v66);
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

      v37 = [NSError errorWithDomain:NSPOSIXErrorDomain code:7 userInfo:0];
      v38 = v75[5];
      v75[5] = v37;

      if (replyCopy)
      {
LABEL_59:
        replyCopy[2](replyCopy, v75[5]);
      }
    }
  }

  else
  {
    v20 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
    v21 = v75[5];
    v75[5] = v20;

    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v22 = qword_1000EB420;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v72 = 0;
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
        v71 = 0;
        LODWORD(v66) = 2;
        v25 = _os_log_send_and_compose_impl(v24, &v72, 0, 0, &_mh_execute_header, v22, 0, "Entitlement failure", &v71, v66);
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

    if (replyCopy)
    {
      goto LABEL_59;
    }
  }

LABEL_106:
  _Block_object_dispose(&v74, 8);
}

- (void)validateBootstrapTokenWithSecret:(id)secret withReply:(id)reply
{
  secretCopy = secret;
  replyCopy = reply;
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = sub_100058864;
  v39 = sub_100058874;
  v40 = 0;
  if (qword_1000EB428 != -1)
  {
    sub_100095FA0();
  }

  v8 = qword_1000EB420;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v34 = 0;
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
      v33 = 0;
      v11 = _os_log_send_and_compose_impl(v10, &v34, 0, 0, &_mh_execute_header, v8, 0, "validateBootstrapToken: Start", &v33, 2);
      v12 = v11;
      if (v11)
      {
        sub_100002A8C(v11);
      }
    }

    else
    {
      v12 = 0;
    }

    free(v12);
  }

  if ([(UMSyncService *)self remoteProcessHasBooleanEntitlement:@"com.apple.usermanagerd.bootstrap.fullaccess"])
  {
    v13 = qword_1000EB610;
    block = _NSConcreteStackBlock;
    v28 = 3221225472;
    v29 = sub_100060904;
    v30 = &unk_1000DDA50;
    v31 = secretCopy;
    v32 = &v35;
    dispatch_sync(v13, &block);
    replyCopy[2](replyCopy, v36[5]);
    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v14 = qword_1000EB420;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v34 = 0;
      v15 = sub_1000011A8(1);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v16 = v15;
      }

      else
      {
        v16 = v15 & 0xFFFFFFFE;
      }

      if (v16)
      {
        v33 = 0;
        LODWORD(v26) = 2;
        v17 = _os_log_send_and_compose_impl(v16, &v34, 0, 0, &_mh_execute_header, v14, 0, "validateBootstrapToken: End", &v33, v26, block, v28, v29, v30);
        v18 = v17;
        if (v17)
        {
          sub_100002A8C(v17);
        }
      }

      else
      {
        v18 = 0;
      }

      free(v18);
    }
  }

  else
  {
    v19 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
    v20 = v36[5];
    v36[5] = v19;

    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v21 = qword_1000EB420;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v34 = 0;
      v22 = sub_1000011A8(1);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v23 = v22;
      }

      else
      {
        v23 = v22 & 0xFFFFFFFE;
      }

      if (v23)
      {
        v33 = 0;
        LODWORD(v26) = 2;
        v24 = _os_log_send_and_compose_impl(v23, &v34, 0, 0, &_mh_execute_header, v21, 0, "Entitlement failure", &v33, v26);
        v25 = v24;
        if (v24)
        {
          sub_100002A8C(v24);
        }
      }

      else
      {
        v25 = 0;
      }

      free(v25);
    }

    if (replyCopy)
    {
      replyCopy[2](replyCopy, v36[5]);
    }
  }

  _Block_object_dispose(&v35, 8);
}

- (void)removeUserSession:(id)session reply:(id)reply
{
  sessionCopy = session;
  replyCopy = reply;
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = sub_100058864;
  v39 = sub_100058874;
  v40 = 0;
  if (qword_1000EB428 != -1)
  {
    sub_100095FA0();
  }

  v8 = qword_1000EB420;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v34 = 0;
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
      v33 = 0;
      v11 = _os_log_send_and_compose_impl(v10, &v34, 0, 0, &_mh_execute_header, v8, 0, "removeUserSession: Start", &v33, 2);
      v12 = v11;
      if (v11)
      {
        sub_100002A8C(v11);
      }
    }

    else
    {
      v12 = 0;
    }

    free(v12);
  }

  if ([(UMSyncService *)self remoteProcessHasBooleanEntitlement:@"com.apple.mkb.usersession.delete"])
  {
    v13 = qword_1000EB610;
    block = _NSConcreteStackBlock;
    v28 = 3221225472;
    v29 = sub_100060D78;
    v30 = &unk_1000DDA50;
    v31 = sessionCopy;
    v32 = &v35;
    dispatch_sync(v13, &block);
    replyCopy[2](replyCopy, v36[5]);
    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v14 = qword_1000EB420;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v34 = 0;
      v15 = sub_1000011A8(1);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v16 = v15;
      }

      else
      {
        v16 = v15 & 0xFFFFFFFE;
      }

      if (v16)
      {
        v33 = 0;
        LODWORD(v26) = 2;
        v17 = _os_log_send_and_compose_impl(v16, &v34, 0, 0, &_mh_execute_header, v14, 0, "removeUserSession: End", &v33, v26, block, v28, v29, v30);
        v18 = v17;
        if (v17)
        {
          sub_100002A8C(v17);
        }
      }

      else
      {
        v18 = 0;
      }

      free(v18);
    }
  }

  else
  {
    v19 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
    v20 = v36[5];
    v36[5] = v19;

    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v21 = qword_1000EB420;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v34 = 0;
      v22 = sub_1000011A8(1);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v23 = v22;
      }

      else
      {
        v23 = v22 & 0xFFFFFFFE;
      }

      if (v23)
      {
        v33 = 0;
        LODWORD(v26) = 2;
        v24 = _os_log_send_and_compose_impl(v23, &v34, 0, 0, &_mh_execute_header, v21, 0, "Entitlement failure", &v33, v26);
        v25 = v24;
        if (v24)
        {
          sub_100002A8C(v24);
        }
      }

      else
      {
        v25 = 0;
      }

      free(v25);
    }

    if (replyCopy)
    {
      replyCopy[2](replyCopy, v36[5]);
    }
  }

  _Block_object_dispose(&v35, 8);
}

- (void)listAllUserSessionIDsWithAReply:(id)reply
{
  replyCopy = reply;
  if (qword_1000EB428 != -1)
  {
    sub_100095F8C();
  }

  v5 = qword_1000EB420;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v24 = 0;
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
      v23 = 0;
      v8 = _os_log_send_and_compose_impl(v7, &v24, 0, 0, &_mh_execute_header, v5, 0, "listAllUserSessionIDsWithAReply: Start", &v23, 2);
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

  if ([(UMSyncService *)self remoteProcessHasBooleanEntitlement:@"com.apple.mkb.usersession.info"])
  {
    v10 = sub_10001890C();
    if (v10)
    {
      v11 = 0;
    }

    else
    {
      v11 = [NSError errorWithDomain:NSPOSIXErrorDomain code:5 userInfo:0];
    }

    replyCopy[2](replyCopy, v10, v11);
    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v17 = qword_1000EB420;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v24 = 0;
      v18 = sub_1000011A8(1);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v19 = v18;
      }

      else
      {
        v19 = v18 & 0xFFFFFFFE;
      }

      if (v19)
      {
        v23 = 0;
        LODWORD(v22) = 2;
        v20 = _os_log_send_and_compose_impl(v19, &v24, 0, 0, &_mh_execute_header, v17, 0, "listAllUserSessionIDsWithAReply: End", &v23, v22);
        v21 = v20;
        if (v20)
        {
          sub_100002A8C(v20);
        }
      }

      else
      {
        v21 = 0;
      }

      free(v21);
    }
  }

  else
  {
    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v12 = qword_1000EB420;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v24 = 0;
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
        v23 = 0;
        LODWORD(v22) = 2;
        v15 = _os_log_send_and_compose_impl(v14, &v24, 0, 0, &_mh_execute_header, v12, 0, "Entitlement failure", &v23, v22);
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

    v11 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
    if (replyCopy)
    {
      replyCopy[2](replyCopy, 0, v11);
    }
  }
}

- (void)retrieveUserSessionBlobwithReply:(id)reply
{
  replyCopy = reply;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_100058864;
  v19 = sub_100058874;
  v20 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_100058864;
  v13 = sub_100058874;
  v14 = 0;
  if ([(UMSyncService *)self remoteProcessHasBooleanEntitlement:@"com.apple.mkb.usersession.retrieve"])
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000613A0;
    v8[3] = &unk_1000DD458;
    v8[4] = &v9;
    v8[5] = &v15;
    dispatch_sync(qword_1000EB610, v8);
    v5 = v10[5];
LABEL_5:
    replyCopy[2](replyCopy, v5, v16[5]);
    goto LABEL_6;
  }

  v6 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
  v7 = v16[5];
  v16[5] = v6;

  if (replyCopy)
  {
    v5 = 0;
    goto LABEL_5;
  }

LABEL_6:
  _Block_object_dispose(&v9, 8);

  _Block_object_dispose(&v15, 8);
}

- (void)deleteUserSessionBlobwithReply:(id)reply
{
  replyCopy = reply;
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x2020000000;
  v15 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_100058864;
  v12 = sub_100058874;
  v13 = 0;
  if ([(UMSyncService *)self remoteProcessHasBooleanEntitlement:@"com.apple.mkb.usersession.retrieve"])
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100061798;
    v7[3] = &unk_1000DD458;
    v7[4] = v14;
    v7[5] = &v8;
    dispatch_sync(qword_1000EB610, v7);
LABEL_4:
    replyCopy[2](replyCopy, v9[5]);
    goto LABEL_5;
  }

  v5 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
  v6 = v9[5];
  v9[5] = v5;

  if (replyCopy)
  {
    goto LABEL_4;
  }

LABEL_5:
  _Block_object_dispose(&v8, 8);

  _Block_object_dispose(v14, 8);
}

- (void)switchToUserSession:(id)session withOpaqueData:(id)data reply:(id)reply
{
  sessionCopy = session;
  dataCopy = data;
  replyCopy = reply;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_100058864;
  v22 = sub_100058874;
  v23 = 0;
  if ([(UMSyncService *)self remoteProcessHasBooleanEntitlement:@"com.apple.mkb.usersession.switch"])
  {
    v11 = qword_1000EB610;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100061C7C;
    block[3] = &unk_1000DDA78;
    v17 = &v18;
    v15 = sessionCopy;
    v16 = dataCopy;
    dispatch_sync(v11, block);
    replyCopy[2](replyCopy, v19[5]);
  }

  else
  {
    v12 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
    v13 = v19[5];
    v19[5] = v12;

    if (replyCopy)
    {
      replyCopy[2](replyCopy, v19[5]);
    }
  }

  _Block_object_dispose(&v18, 8);
}

- (void)setUserSessionSecureBackupBlob:(id)blob withReply:(id)reply
{
  blobCopy = blob;
  replyCopy = reply;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_100058864;
  v25 = sub_100058874;
  v26 = 0;
  if ([(UMSyncService *)self remoteProcessHasBooleanEntitlement:@"com.apple.mkb.usersession.securebackup"])
  {
    v8 = qword_1000EB610;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100062278;
    block[3] = &unk_1000DDA50;
    v17 = blobCopy;
    v18 = &v21;
    dispatch_sync(v8, block);
    replyCopy[2](replyCopy, v22[5]);
  }

  else
  {
    v9 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
    v10 = v22[5];
    v22[5] = v9;

    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v11 = qword_1000EB420;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 0;
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
        v19 = 0;
        v14 = _os_log_send_and_compose_impl(v13, &v20, 0, 0, &_mh_execute_header, v11, 0, "Entitlement error for setUserSessionSecureBackupBlob", &v19, 2);
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

    if (replyCopy)
    {
      replyCopy[2](replyCopy, v22[5]);
    }
  }

  _Block_object_dispose(&v21, 8);
}

- (void)setUserKeybagOpaqueData:(id)data keybagBlob:(id)blob withReply:(id)reply
{
  dataCopy = data;
  blobCopy = blob;
  replyCopy = reply;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_100058864;
  v25 = sub_100058874;
  v26 = 0;
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x2020000000;
  v20 = 0;
  if ([(UMSyncService *)self remoteProcessHasBooleanEntitlement:@"com.apple.mkb.usersession.keybagopaquedata"])
  {
    v11 = qword_1000EB610;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000626F8;
    v14[3] = &unk_1000DDAA0;
    v17 = v19;
    v15 = dataCopy;
    v16 = blobCopy;
    v18 = &v21;
    dispatch_sync(v11, v14);
    replyCopy[2](replyCopy, v22[5]);
  }

  else
  {
    v12 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
    v13 = v22[5];
    v22[5] = v12;

    if (replyCopy)
    {
      replyCopy[2](replyCopy, v22[5]);
    }
  }

  _Block_object_dispose(v19, 8);
  _Block_object_dispose(&v21, 8);
}

- (void)userKeybagOpaqueData:(id)data KeybagBlobwithReply:(id)reply
{
  dataCopy = data;
  replyCopy = reply;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_100058864;
  v25 = sub_100058874;
  v26 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_100058864;
  v19 = sub_100058874;
  v20 = 0;
  if ([(UMSyncService *)self remoteProcessHasBooleanEntitlement:@"com.apple.mkb.usersession.keybagopaquedata"]|| [(UMSyncService *)self remoteProcessHasBooleanEntitlement:@"com.apple.keystore.device"])
  {
    v8 = qword_1000EB610;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100062B68;
    block[3] = &unk_1000DDAC8;
    v13 = &v15;
    v12 = dataCopy;
    v14 = &v21;
    dispatch_sync(v8, block);
    replyCopy[2](replyCopy, v16[5], v22[5]);
  }

  else
  {
    v9 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
    v10 = v22[5];
    v22[5] = v9;

    if (replyCopy)
    {
      replyCopy[2](replyCopy, v16[5], v22[5]);
    }
  }

  _Block_object_dispose(&v15, 8);

  _Block_object_dispose(&v21, 8);
}

- (void)retrieveUserSessionSecureBackupBlobwithReply:(id)reply
{
  replyCopy = reply;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_100058864;
  v19 = sub_100058874;
  v20 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_100058864;
  v13 = sub_100058874;
  v14 = 0;
  if ([(UMSyncService *)self remoteProcessHasBooleanEntitlement:@"com.apple.mkb.usersession.securebackup"])
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100062F8C;
    v8[3] = &unk_1000DD458;
    v8[4] = &v9;
    v8[5] = &v15;
    dispatch_sync(qword_1000EB610, v8);
    v5 = v10[5];
LABEL_5:
    replyCopy[2](replyCopy, v5, v16[5]);
    goto LABEL_6;
  }

  v6 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
  v7 = v16[5];
  v16[5] = v6;

  if (replyCopy)
  {
    v5 = 0;
    goto LABEL_5;
  }

LABEL_6:
  _Block_object_dispose(&v9, 8);

  _Block_object_dispose(&v15, 8);
}

- (void)deleteUserSessionSecureBlobwithReply:(id)reply
{
  replyCopy = reply;
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x2020000000;
  v15 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_100058864;
  v12 = sub_100058874;
  v13 = 0;
  if ([(UMSyncService *)self remoteProcessHasBooleanEntitlement:@"com.apple.mkb.usersession.securebackup"])
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100063384;
    v7[3] = &unk_1000DD458;
    v7[4] = v14;
    v7[5] = &v8;
    dispatch_sync(qword_1000EB610, v7);
LABEL_4:
    replyCopy[2](replyCopy, v9[5]);
    goto LABEL_5;
  }

  v5 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
  v6 = v9[5];
  v9[5] = v5;

  if (replyCopy)
  {
    goto LABEL_4;
  }

LABEL_5:
  _Block_object_dispose(&v8, 8);

  _Block_object_dispose(v14, 8);
}

- (void)getUserSessionAttributes:(id)attributes reply:(id)reply
{
  attributesCopy = attributes;
  replyCopy = reply;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_100058864;
  v26 = sub_100058874;
  v27 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_100058864;
  v20 = sub_100058874;
  v21 = 0;
  if ([(UMSyncService *)self remoteProcessHasBooleanEntitlement:@"com.apple.mkb.usersession.info"])
  {
    v8 = qword_1000EB610;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000638AC;
    v11[3] = &unk_1000DDAF0;
    v12 = attributesCopy;
    selfCopy = self;
    v14 = &v22;
    v15 = &v16;
    dispatch_sync(v8, v11);
    replyCopy[2](replyCopy, v23[5], v17[5]);
  }

  else
  {
    v9 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
    v10 = v17[5];
    v17[5] = v9;

    if (replyCopy)
    {
      replyCopy[2](replyCopy, 0, v17[5]);
    }
  }

  _Block_object_dispose(&v16, 8);

  _Block_object_dispose(&v22, 8);
}

- (void)setUserSessionAttributes:(id)attributes reply:(id)reply
{
  attributesCopy = attributes;
  replyCopy = reply;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = sub_100058864;
  v35 = sub_100058874;
  v36 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = sub_100058864;
  v29 = sub_100058874;
  v30 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_100058864;
  v23 = sub_100058874;
  v24 = 0;
  if ([(UMSyncService *)self remoteProcessHasBooleanEntitlement:@"com.apple.mkb.usersession.info"])
  {
    if (attributesCopy)
    {
      v8 = [attributesCopy objectForKey:kUMUserSessionIDKey];
      v9 = v20[5];
      v20[5] = v8;
    }

    v10 = qword_1000EB610;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100063CB8;
    block[3] = &unk_1000DDB18;
    v14 = attributesCopy;
    selfCopy = self;
    v16 = &v31;
    v17 = &v25;
    v18 = &v19;
    dispatch_sync(v10, block);
    replyCopy[2](replyCopy, v32[5], v26[5]);
  }

  else
  {
    v11 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
    v12 = v26[5];
    v26[5] = v11;

    if (replyCopy)
    {
      replyCopy[2](replyCopy, 0, v26[5]);
    }
  }

  _Block_object_dispose(&v19, 8);

  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v31, 8);
}

- (void)foregroundUserSessionAttributesWithReply:(id)reply
{
  replyCopy = reply;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_100058864;
  v16 = sub_100058874;
  v17 = 0;
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_100058864;
  v10 = sub_100058874;
  v11 = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000640AC;
  block[3] = &unk_1000DDAC8;
  block[4] = self;
  block[5] = &v6;
  block[6] = &v12;
  dispatch_sync(qword_1000EB610, block);
  replyCopy[2](replyCopy, v7[5], v13[5]);
  _Block_object_dispose(&v6, 8);

  _Block_object_dispose(&v12, 8);
}

- (void)configureLoginUIWithUserSessionCount:(int)count reply:(id)reply
{
  replyCopy = reply;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = sub_100058864;
  v34 = sub_100058874;
  v35 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = sub_100058864;
  v28 = sub_100058874;
  v29 = 0;
  if ([(UMSyncService *)self remoteProcessHasBooleanEntitlement:@"com.apple.mkb.usersession.loginwindow"])
  {
    if (!_os_feature_enabled_impl())
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10006468C;
      block[3] = &unk_1000DDB40;
      countCopy = count;
      block[5] = &v30;
      block[6] = &v24;
      block[4] = self;
      dispatch_sync(qword_1000EB610, block);
      replyCopy[2](replyCopy, v25[5], v31[5]);
      goto LABEL_30;
    }

    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v7 = qword_1000EB420;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 0;
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
        v22 = 0;
        v10 = _os_log_send_and_compose_impl(v9, &v23, 0, 0, &_mh_execute_header, v7, 0, "LOCAL USER ENROLLMENT FEATURE ENABLED, WILL NOT BE ABLE TO PROVISION THE DEVICE; REMOVE FEATURE FLAG AND TRY AGAIN", &v22, 2);
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

    if (qword_1000EB438 != -1)
    {
      sub_100095FDC();
    }

    v13 = qword_1000EB430;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v23 = 0;
      v14 = sub_1000011A8(0);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v15 = v14;
      }

      else
      {
        v15 = v14 & 0xFFFFFFFE;
      }

      if (v15)
      {
        v22 = 0;
        LODWORD(v19) = 2;
        v16 = _os_log_send_and_compose_impl(v15, &v23, 0, 0, &_mh_execute_header, v13, 16, "LOCAL USER ENROLLMENT FEATURE ENABLED, WILL NOT BE ABLE TO PROVISION DEVICE; REMOVE FEATURE FLAG AND TRY AGAIN - NOT SUPPORTED", &v22, v19);
        v17 = v16;
        if (v16)
        {
          sub_100002A8C(v16);
        }
      }

      else
      {
        v17 = 0;
      }

      free(v17);
    }

    v12 = [NSError errorWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
  }

  else
  {
    v12 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
  }

  v18 = v31[5];
  v31[5] = v12;

  if (replyCopy)
  {
    replyCopy[2](replyCopy, 0, v31[5]);
  }

LABEL_30:
  _Block_object_dispose(&v24, 8);

  _Block_object_dispose(&v30, 8);
}

- (void)switchToLoginUIUserSessionWithReply:(id)reply
{
  replyCopy = reply;
  if ([(UMSyncService *)self remoteProcessHasBooleanEntitlement:@"com.apple.mkb.usersession.loginwindow"])
  {
    v4 = sub_100029CC8();
    if (v4)
    {
      v5 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v4 userInfo:0];
    }

    else
    {
      v5 = 0;
    }

    v6 = replyCopy;
    goto LABEL_8;
  }

  v5 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
  v6 = replyCopy;
  if (replyCopy)
  {
LABEL_8:
    v6[2](v6, v5);
  }
}

- (void)addSyncServiceSource:(id)source toUserSession:(int)session withReply:(id)reply
{
  sourceCopy = source;
  replyCopy = reply;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = -1;
  if ([(UMSyncService *)self remoteProcessHasBooleanEntitlement:@"com.apple.mkb.usersession.synctest"])
  {
    v10 = qword_1000EB610;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100064D4C;
    block[3] = &unk_1000DDB68;
    sessionCopy = session;
    v14 = sourceCopy;
    v15 = &v17;
    dispatch_sync(v10, block);
    v11 = *(v18 + 6);
    if (v11)
    {
      v12 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v11 userInfo:0];
    }

    else
    {
      v12 = 0;
    }

    replyCopy[2](replyCopy, v12);
  }

  else
  {
    v12 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
    if (replyCopy)
    {
      replyCopy[2](replyCopy, v12);
    }
  }

  _Block_object_dispose(&v17, 8);
}

- (void)removeSyncServiceSource:(id)source toUserSession:(int)session withReply:(id)reply
{
  sourceCopy = source;
  replyCopy = reply;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = -1;
  if ([(UMSyncService *)self remoteProcessHasBooleanEntitlement:@"com.apple.mkb.usersession.synctest"])
  {
    v10 = qword_1000EB610;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100065154;
    block[3] = &unk_1000DDB68;
    sessionCopy = session;
    v14 = sourceCopy;
    v15 = &v17;
    dispatch_sync(v10, block);
    v11 = *(v18 + 6);
    if (v11)
    {
      v12 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v11 userInfo:0];
    }

    else
    {
      v12 = 0;
    }

    replyCopy[2](replyCopy, v12);
  }

  else
  {
    v12 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
    if (replyCopy)
    {
      replyCopy[2](replyCopy, v12);
    }
  }

  _Block_object_dispose(&v17, 8);
}

- (void)startUserSyncBubble:(int)bubble withReply:(id)reply
{
  replyCopy = reply;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = -1;
  if ([(UMSyncService *)self remoteProcessHasBooleanEntitlement:@"com.apple.mkb.usersession.synctest"])
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10006553C;
    v9[3] = &unk_1000DD550;
    bubbleCopy = bubble;
    v9[4] = &v11;
    dispatch_sync(qword_1000EB610, v9);
    v7 = *(v12 + 6);
    if (v7)
    {
      v8 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v7 userInfo:0];
    }

    else
    {
      v8 = 0;
    }

    replyCopy[2](replyCopy, v8);
  }

  else
  {
    v8 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
    if (replyCopy)
    {
      replyCopy[2](replyCopy, v8);
    }
  }

  _Block_object_dispose(&v11, 8);
}

- (void)stoptUserSyncBubble:(int)bubble withReply:(id)reply
{
  replyCopy = reply;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = -1;
  if ([(UMSyncService *)self remoteProcessHasBooleanEntitlement:@"com.apple.mkb.usersession.synctest"])
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10006596C;
    v9[3] = &unk_1000DD550;
    bubbleCopy = bubble;
    v9[4] = &v11;
    dispatch_sync(qword_1000EB610, v9);
    v7 = *(v12 + 6);
    if (v7)
    {
      v8 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v7 userInfo:0];
    }

    else
    {
      v8 = 0;
    }

    replyCopy[2](replyCopy, v8);
  }

  else
  {
    v8 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
    if (replyCopy)
    {
      replyCopy[2](replyCopy, v8);
    }
  }

  _Block_object_dispose(&v11, 8);
}

- (void)MKBUserSessionSetInternalTest:(BOOL)test withReply:(id)reply
{
  replyCopy = reply;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = -1;
  if ([(UMSyncService *)self remoteProcessHasBooleanEntitlement:@"com.apple.mkb.usersession.synctest"])
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100065DA0;
    v9[3] = &unk_1000DDB90;
    testCopy = test;
    v9[4] = &v11;
    dispatch_sync(qword_1000EB610, v9);
    v7 = *(v12 + 6);
    if (v7)
    {
      v8 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v7 userInfo:0];
    }

    else
    {
      v8 = 0;
    }

    replyCopy[2](replyCopy, v8);
  }

  else
  {
    v8 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
    if (replyCopy)
    {
      replyCopy[2](replyCopy, v8);
    }
  }

  _Block_object_dispose(&v11, 8);
}

- (void)currentSyncBubbleIDwithReply:(id)reply
{
  replyCopy = reply;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = -1;
  if ([(UMSyncService *)self remoteProcessHasBooleanEntitlement:@"com.apple.mkb.usersession.synctest"])
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100066314;
    block[3] = &unk_1000DD910;
    block[4] = &v8;
    dispatch_sync(qword_1000EB610, block);
    v5 = *(v9 + 6);
    if (v5 == -1)
    {
      v6 = [NSError errorWithDomain:NSPOSIXErrorDomain code:5 userInfo:0];
      v5 = *(v9 + 6);
    }

    else
    {
      v6 = 0;
    }

    replyCopy[2](replyCopy, v5, v6);
  }

  else
  {
    v6 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
    if (replyCopy)
    {
      replyCopy[2](replyCopy, *(v9 + 6), v6);
    }
  }

  _Block_object_dispose(&v8, 8);
}

- (void)listSyncServiceSourcesForUserSession:(id)session withReply:(id)reply
{
  sessionCopy = session;
  replyCopy = reply;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = -1;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_100058864;
  v19 = sub_100058874;
  v20 = 0;
  if ([(UMSyncService *)self remoteProcessHasBooleanEntitlement:@"com.apple.mkb.usersession.synctest"])
  {
    if (sessionCopy)
    {
      v8 = qword_1000EB610;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000666A8;
      block[3] = &unk_1000DD9B0;
      v12 = sessionCopy;
      v13 = &v15;
      v14 = &v21;
      dispatch_sync(v8, block);
      v9 = *(v22 + 6);
      if (v9)
      {
        v10 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v9 userInfo:0];
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
    }

    replyCopy[2](replyCopy, v16[5], v10);
  }

  else
  {
    v10 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
    if (replyCopy)
    {
      replyCopy[2](replyCopy, v16[5], v10);
    }
  }

  _Block_object_dispose(&v15, 8);

  _Block_object_dispose(&v21, 8);
}

- (void)listSyncBubbleUserswithReply:(id)reply
{
  replyCopy = reply;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_100058864;
  v12 = sub_100058874;
  v13 = 0;
  if ([(UMSyncService *)self remoteProcessHasBooleanEntitlement:@"com.apple.mkb.usersession.synctest"])
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100066B64;
    block[3] = &unk_1000DD910;
    block[4] = &v8;
    dispatch_sync(qword_1000EB610, block);
    v5 = v9[5];
    if (v5)
    {
      v6 = 0;
    }

    else
    {
      v6 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      v5 = v9[5];
    }

    replyCopy[2](replyCopy, v5, v6);
  }

  else
  {
    v6 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
    if (replyCopy)
    {
      replyCopy[2](replyCopy, 0, v6);
    }
  }

  _Block_object_dispose(&v8, 8);
}

- (void)clearSyncBubbleUserswithReply:(id)reply
{
  replyCopy = reply;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = -1;
  if ([(UMSyncService *)self remoteProcessHasBooleanEntitlement:@"com.apple.mkb.usersession.synctest"])
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100066D44;
    block[3] = &unk_1000DD910;
    block[4] = &v8;
    dispatch_sync(qword_1000EB610, block);
    v5 = *(v9 + 6);
    if (v5)
    {
      v6 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v5 userInfo:0];
    }

    else
    {
      v6 = 0;
    }

    replyCopy[2](replyCopy, v6);
  }

  else
  {
    v6 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
    if (replyCopy)
    {
      replyCopy[2](replyCopy, v6);
    }
  }

  _Block_object_dispose(&v8, 8);
}

- (void)limitNumberOfUserSessions:(int)sessions withReply:(id)reply
{
  replyCopy = reply;
  if ([(UMSyncService *)self remoteProcessHasBooleanEntitlement:@"com.apple.mkb.usersession.synctest"])
  {
    if (sub_1000310B4(sessions) == -1)
    {
      v6 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
    }

    else
    {
      v6 = 0;
    }

    v7 = replyCopy[2];
  }

  else
  {
    v6 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
    if (!replyCopy)
    {
      goto LABEL_9;
    }

    v7 = replyCopy[2];
  }

  v7();
LABEL_9:
}

- (void)switchBlockTasksInfoWithReply:(id)reply
{
  replyCopy = reply;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_100058864;
  v16 = sub_100058874;
  v17 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = -1;
  if ([(UMSyncService *)self remoteProcessHasBooleanEntitlement:@"com.apple.mkb.usersession.synctest"])
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10006721C;
    v7[3] = &unk_1000DD458;
    v7[4] = &v12;
    v7[5] = &v8;
    dispatch_sync(qword_1000EB610, v7);
    v5 = *(v9 + 6);
    if (v5)
    {
      v6 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v5 userInfo:0];
    }

    else
    {
      v6 = 0;
    }

    replyCopy[2](replyCopy, v13[5], v6);
  }

  else
  {
    v6 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
    if (replyCopy)
    {
      replyCopy[2](replyCopy, 0, v6);
    }
  }

  _Block_object_dispose(&v8, 8);
  _Block_object_dispose(&v12, 8);
}

- (void)userSessionLRUInfoWithReply:(id)reply
{
  replyCopy = reply;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_100058864;
  v12 = sub_100058874;
  v13 = 0;
  if ([(UMSyncService *)self remoteProcessHasBooleanEntitlement:@"com.apple.mkb.usersession.synctest"])
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100067510;
    block[3] = &unk_1000DD910;
    block[4] = &v8;
    dispatch_sync(qword_1000EB610, block);
    v5 = v9[5];
    if (v5)
    {
      v6 = 0;
    }

    else
    {
      v6 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      v5 = v9[5];
    }

    replyCopy[2](replyCopy, v5, v6);
  }

  else
  {
    v6 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
    if (replyCopy)
    {
      replyCopy[2](replyCopy, 0, v6);
    }
  }

  _Block_object_dispose(&v8, 8);
}

- (void)mountUserSessionVolumeforID:(int)d withReply:(id)reply
{
  replyCopy = reply;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = -1;
  if ([(UMSyncService *)self remoteProcessHasBooleanEntitlement:@"com.apple.mkb.usersession.synctest"])
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100067700;
    v9[3] = &unk_1000DD550;
    dCopy = d;
    v9[4] = &v11;
    dispatch_sync(qword_1000EB610, v9);
    v7 = *(v12 + 6);
    if (v7)
    {
      v8 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v7 userInfo:0];
    }

    else
    {
      v8 = 0;
    }

    replyCopy[2](replyCopy, v8);
  }

  else
  {
    v8 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
    if (replyCopy)
    {
      replyCopy[2](replyCopy, v8);
    }
  }

  _Block_object_dispose(&v11, 8);
}

- (void)unmountUserSessionVolumeforID:(int)d withReply:(id)reply
{
  replyCopy = reply;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = -1;
  if ([(UMSyncService *)self remoteProcessHasBooleanEntitlement:@"com.apple.mkb.usersession.synctest"])
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100067A08;
    v9[3] = &unk_1000DD550;
    dCopy = d;
    v9[4] = &v11;
    dispatch_sync(qword_1000EB610, v9);
    v7 = *(v12 + 6);
    if (v7)
    {
      v8 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v7 userInfo:0];
    }

    else
    {
      v8 = 0;
    }

    replyCopy[2](replyCopy, v8);
  }

  else
  {
    v8 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
    if (replyCopy)
    {
      replyCopy[2](replyCopy, v8);
    }
  }

  _Block_object_dispose(&v11, 8);
}

- (void)isLoginSessionwithReply:(id)reply
{
  replyCopy = reply;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_100058864;
  v24 = sub_100058874;
  v25 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = -1;
  if ([(UMSyncService *)self remoteProcessHasBooleanEntitlement:@"com.apple.mkb.usersession.loginwindow"])
  {
    v5 = qword_1000EB610;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100067D94;
    block[3] = &unk_1000DDBB8;
    v14 = &v16;
    v15 = &v20;
    v6 = replyCopy;
    v13 = v6;
    dispatch_sync(v5, block);
    v7 = *(v17 + 6);
    if (v7)
    {
      v8 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v7 userInfo:0];
      v9 = v21[5];
      v21[5] = v8;
    }

    (*(v6 + 2))(v6, v21[5]);
  }

  else
  {
    v10 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
    v11 = v21[5];
    v21[5] = v10;

    if (replyCopy)
    {
      (*(replyCopy + 2))(replyCopy, v21[5]);
    }
  }

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v20, 8);
}

- (void)userSessionDeviceConfigurationInfo:(int)info withReply:(id)reply
{
  replyCopy = reply;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = -1;
  if ([(UMSyncService *)self remoteProcessHasBooleanEntitlement:@"com.apple.mkb.usersession.deviceconfig"])
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100067FC8;
    v9[3] = &unk_1000DD550;
    infoCopy = info;
    v9[4] = &v11;
    dispatch_sync(qword_1000EB610, v9);
    v7 = *(v12 + 6);
    if (v7)
    {
      v8 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v7 userInfo:0];
    }

    else
    {
      v8 = 0;
    }

    replyCopy[2](replyCopy, v8);
  }

  else
  {
    v8 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
    if (replyCopy)
    {
      replyCopy[2](replyCopy, v8);
    }
  }

  _Block_object_dispose(&v11, 8);
}

- (void)replacePersonaMachPortVoucher:(id)voucher withAccountID:(id)d generationSet:(BOOL)set forPid:(int)pid withReply:(id)reply
{
  setCopy = set;
  voucherCopy = voucher;
  dCopy = d;
  replyCopy = reply;
  v68 = 0;
  v69 = &v68;
  v70 = 0x3032000000;
  v71 = sub_100058864;
  v72 = sub_100058874;
  v73 = 0;
  v62 = 0;
  v63 = &v62;
  v64 = 0x3032000000;
  v65 = sub_100058864;
  v66 = sub_100058874;
  v67 = 0;
  v60[0] = 0;
  v60[1] = v60;
  v60[2] = 0x2020000000;
  v61 = 22;
  v58[0] = 0;
  v58[1] = v58;
  v58[2] = 0x2020000000;
  v59 = 0;
  v56[0] = 0;
  v56[1] = v56;
  v56[2] = 0x2020000000;
  v57 = 0;
  if (setCopy)
  {
    if (qword_1000EB448 != -1)
    {
      sub_100096004();
    }

    v15 = qword_1000EB440;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v78 = 0;
      LODWORD(v16) = sub_1000011A8(0);
      v17 = v15;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        v16 = v16;
      }

      else
      {
        v16 = v16 & 0xFFFFFFFE;
      }

      if (v16)
      {
        remoteServiceName = [(UMSyncService *)self remoteServiceName];
        *v74 = 138543618;
        *&v74[4] = remoteServiceName;
        *&v74[12] = 1024;
        *v75 = pid;
        v19 = _os_log_send_and_compose_impl(v16, &v78, 0, 0, &_mh_execute_header, v17, 2, "Remote Service replacePersonaMachPortVoucher requested by %{public}@ (%d)", v74, 18);

        if (v19)
        {
          sub_100002A8C(v19);
        }
      }

      else
      {

        v19 = 0;
      }

      free(v19);
    }
  }

  else if (![(UMSyncService *)self remoteProcessHasBooleanEntitlement:@"com.apple.usermanagerd.persona.background"])
  {
    if (qword_1000EB448 != -1)
    {
      sub_100096004();
    }

    v20 = qword_1000EB440;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *v74 = 0;
      v21 = sub_1000011A8(0);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v22 = v21;
      }

      else
      {
        v22 = v21 & 0xFFFFFFFE;
      }

      if (v22)
      {
        LODWORD(v78) = 67109120;
        HIDWORD(v78) = pid;
        v23 = _os_log_send_and_compose_impl(v22, v74, 0, 0, &_mh_execute_header, v20, 16, "replacePersonaMachPortVoucher with no entitlement from pid:%d", &v78);
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

    if (replyCopy)
    {
      v34 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
      replyCopy[2](replyCopy, 0, v34);
      goto LABEL_68;
    }

    goto LABEL_69;
  }

  current_persona = voucher_get_current_persona();
  if (qword_1000EB448 != -1)
  {
    sub_100096004();
  }

  v26 = qword_1000EB440;
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v78 = 0;
    v27 = sub_1000011A8(0);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v28 = v27;
    }

    else
    {
      v28 = v27 & 0xFFFFFFFE;
    }

    if (v28)
    {
      *v74 = 67109890;
      *&v74[4] = pid;
      *&v74[8] = 1024;
      *&v74[10] = current_persona;
      *v75 = 2114;
      *&v75[2] = dCopy;
      v76 = 1024;
      v77 = setCopy;
      LODWORD(v45) = 30;
      v29 = _os_log_send_and_compose_impl(v28, &v78, 0, 0, &_mh_execute_header, v26, 0, "replacePersonaMachPortVoucher from pid %d, voucher persona %u, requested persona %{public}@, generationSet: %{BOOL}d", v74, v45);
      v30 = v29;
      if (v29)
      {
        sub_100002A8C(v29);
      }
    }

    else
    {
      v30 = 0;
    }

    free(v30);
  }

  if (voucherCopy)
  {
    if (dCopy)
    {
      v31 = +[NSXPCConnection currentConnection];
      v32 = sub_1000011DC([v31 processIdentifier]);

      v33 = qword_1000EB610;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100068B80;
      block[3] = &unk_1000DDBE0;
      v49 = v58;
      v54 = v32;
      v47 = voucherCopy;
      v50 = v60;
      pidCopy = pid;
      v48 = dCopy;
      v51 = v56;
      v52 = &v68;
      v53 = &v62;
      dispatch_sync(v33, block);
      replyCopy[2](replyCopy, v63[5], v69[5]);

      v34 = v47;
LABEL_68:

      goto LABEL_69;
    }

    if (qword_1000EB448 != -1)
    {
      sub_100096004();
    }

    v40 = qword_1000EB440;
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      *v74 = 0;
      v41 = sub_1000011A8(0);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        v42 = v41;
      }

      else
      {
        v42 = v41 & 0xFFFFFFFE;
      }

      if (v42)
      {
        LODWORD(v78) = 67109120;
        HIDWORD(v78) = pid;
        v43 = _os_log_send_and_compose_impl(v42, v74, 0, 0, &_mh_execute_header, v40, 16, "replacePersonaMachPortVoucher: no Account ID from pid:%d", &v78);
        v44 = v43;
        if (v43)
        {
          sub_100002A8C(v43);
        }
      }

      else
      {
        v44 = 0;
      }

      free(v44);
    }

    if (replyCopy)
    {
LABEL_67:
      v34 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      replyCopy[2](replyCopy, 0, v34);
      goto LABEL_68;
    }
  }

  else
  {
    if (qword_1000EB448 != -1)
    {
      sub_100096004();
    }

    v35 = qword_1000EB440;
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      *v74 = 0;
      v36 = sub_1000011A8(0);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        v37 = v36;
      }

      else
      {
        v37 = v36 & 0xFFFFFFFE;
      }

      if (v37)
      {
        LODWORD(v78) = 67109120;
        HIDWORD(v78) = pid;
        v38 = _os_log_send_and_compose_impl(v37, v74, 0, 0, &_mh_execute_header, v35, 16, "replacePersonaMachPortVoucher: no Source Voucher Port from pid:%d", &v78);
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

    if (replyCopy)
    {
      goto LABEL_67;
    }
  }

LABEL_69:
  _Block_object_dispose(v56, 8);
  _Block_object_dispose(v58, 8);
  _Block_object_dispose(v60, 8);
  _Block_object_dispose(&v62, 8);

  _Block_object_dispose(&v68, 8);
}

- (void)fetchPersonaListforPid:(int)pid withCompletionHandler:(id)handler
{
  v4 = *&pid;
  handlerCopy = handler;
  v38 = -1;
  if (qword_1000EB448 != -1)
  {
    sub_10009602C();
  }

  v7 = qword_1000EB440;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v37 = 0;
    v8 = sub_1000011A8(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v9 = v8;
    }

    else
    {
      v9 = v8 & 0xFFFFFFFE;
    }

    if (v9)
    {
      v39 = 67109120;
      v40 = v4;
      v10 = _os_log_send_and_compose_impl(v9, &v37, 0, 0, &_mh_execute_header, v7, 2, "Received fetchPersonaListforPid (sync, pid: %d)", &v39);
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

  if (handlerCopy)
  {
    if ([(UMSyncService *)self remoteProcessHasBooleanEntitlement:@"com.apple.usermanagerd.persona.fetch"])
    {
      if (qword_1000EB448 != -1)
      {
        sub_100096004();
      }

      v12 = qword_1000EB440;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v37 = 0;
        v13 = sub_1000011A8(0);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          v14 = v13;
        }

        else
        {
          v14 = v13 & 0xFFFFFFFE;
        }

        if (v14)
        {
          v39 = 67109120;
          v40 = v4;
          v15 = _os_log_send_and_compose_impl(v14, &v37, 0, 0, &_mh_execute_header, v12, 2, "fetchPersonaListforPid (sync, pid: %d): entitlement OK", &v39);
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

      v27 = [(UMSyncService *)self asidForClient:0 withAuid:&v38 withPid:v4];
      v28 = +[NSXPCConnection currentConnection];
      v29 = sub_1000011DC([v28 processIdentifier]);

      v30 = qword_1000EB610;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10006968C;
      block[3] = &unk_1000DDC08;
      v33 = v4;
      v34 = v27;
      v35 = v38;
      v36 = v29;
      v32 = handlerCopy;
      dispatch_sync(v30, block);
      v17 = v32;
    }

    else
    {
      if (qword_1000EB448 != -1)
      {
        sub_100096004();
      }

      v22 = qword_1000EB440;
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v37 = 0;
        v23 = sub_1000011A8(0);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          v24 = v23;
        }

        else
        {
          v24 = v23 & 0xFFFFFFFE;
        }

        if (v24)
        {
          v39 = 67109120;
          v40 = v4;
          v25 = _os_log_send_and_compose_impl(v24, &v37, 0, 0, &_mh_execute_header, v22, 16, "fetchPersonaListforPid (sync, pid: %d): entitlement failure", &v39);
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

      v17 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
      (*(handlerCopy + 2))(handlerCopy, 0, v17);
    }
  }

  else
  {
    if (qword_1000EB448 != -1)
    {
      sub_100096004();
    }

    v17 = qword_1000EB440;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v37 = 0;
      v18 = sub_1000011A8(0);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v19 = v18;
      }

      else
      {
        v19 = v18 & 0xFFFFFFFE;
      }

      if (v19)
      {
        v39 = 67109120;
        v40 = v4;
        v20 = _os_log_send_and_compose_impl(v19, &v37, 0, 0, &_mh_execute_header, v17, 16, "fetchPersonaListforPid (sync, pid: %d): no completion handler", &v39);
        v21 = v20;
        if (v20)
        {
          sub_100002A8C(v20);
        }
      }

      else
      {
        v21 = 0;
      }

      free(v21);
    }
  }
}

- (void)fetchAllUsersPersonaListforPid:(int)pid withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if (qword_1000EB448 != -1)
  {
    sub_10009602C();
  }

  v7 = qword_1000EB440;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v31 = 0;
    v8 = sub_1000011A8(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v9 = v8;
    }

    else
    {
      v9 = v8 & 0xFFFFFFFE;
    }

    if (v9)
    {
      v32 = 67109120;
      pidCopy5 = pid;
      v10 = _os_log_send_and_compose_impl(v9, &v31, 0, 0, &_mh_execute_header, v7, 2, "Received fetchAllUsersPersonaListforPid (sync, pid: %d)", &v32);
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

  if (handlerCopy)
  {
    if ([(UMSyncService *)self remoteProcessHasBooleanEntitlement:@"com.apple.usermanagerd.persona.fetch"])
    {
      if (qword_1000EB448 != -1)
      {
        sub_100096004();
      }

      v12 = qword_1000EB440;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v31 = 0;
        v13 = sub_1000011A8(0);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          v14 = v13;
        }

        else
        {
          v14 = v13 & 0xFFFFFFFE;
        }

        if (v14)
        {
          v32 = 67109120;
          pidCopy5 = pid;
          v15 = _os_log_send_and_compose_impl(v14, &v31, 0, 0, &_mh_execute_header, v12, 2, "fetchAllUsersPersonaListforPid (sync, pid: %d): entitlement OK", &v32);
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

      v27 = qword_1000EB610;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100069CB8;
      block[3] = &unk_1000DDC30;
      pidCopy3 = pid;
      v29 = handlerCopy;
      dispatch_sync(v27, block);
      v17 = v29;
    }

    else
    {
      if (qword_1000EB448 != -1)
      {
        sub_100096004();
      }

      v22 = qword_1000EB440;
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v31 = 0;
        v23 = sub_1000011A8(0);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          v24 = v23;
        }

        else
        {
          v24 = v23 & 0xFFFFFFFE;
        }

        if (v24)
        {
          v32 = 67109120;
          pidCopy5 = pid;
          v25 = _os_log_send_and_compose_impl(v24, &v31, 0, 0, &_mh_execute_header, v22, 16, "fetchAllUsersPersonaListforPid (sync, pid: %d): entitlement failure", &v32);
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

      v17 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
      (*(handlerCopy + 2))(handlerCopy, 0, v17);
    }
  }

  else
  {
    if (qword_1000EB448 != -1)
    {
      sub_100096004();
    }

    v17 = qword_1000EB440;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v31 = 0;
      v18 = sub_1000011A8(0);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v19 = v18;
      }

      else
      {
        v19 = v18 & 0xFFFFFFFE;
      }

      if (v19)
      {
        v32 = 67109120;
        pidCopy5 = pid;
        v20 = _os_log_send_and_compose_impl(v19, &v31, 0, 0, &_mh_execute_header, v17, 16, "fetchAllUsersPersonaListforPid (sync, pid: %d): no completion handler", &v32);
        v21 = v20;
        if (v20)
        {
          sub_100002A8C(v20);
        }
      }

      else
      {
        v21 = 0;
      }

      free(v21);
    }
  }
}

- (void)fetchAsidMapforPid:(int)pid withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if ([(UMSyncService *)self remoteProcessHasBooleanEntitlement:@"com.apple.usermanagerd.persona.fetch"])
  {
    if (qword_1000EB428 != -1)
    {
      sub_100095F8C();
    }

    v7 = qword_1000EB420;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v18 = 0;
      v8 = sub_1000011A8(1);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        v9 = v8;
      }

      else
      {
        v9 = v8 & 0xFFFFFFFE;
      }

      if (v9)
      {
        LOWORD(v19[0]) = 0;
        v10 = _os_log_send_and_compose_impl(v9, &v18, 0, 0, &_mh_execute_header, v7, 2, "In UMSyncServer: ASID Map not supported on this platform", v19, 2);
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

    if (handlerCopy)
    {
      v17 = [NSError errorWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
LABEL_28:
      handlerCopy[2](handlerCopy, 0, v17);
      goto LABEL_29;
    }

    v17 = 0;
  }

  else
  {
    if (qword_1000EB428 != -1)
    {
      sub_100095F8C();
    }

    v12 = qword_1000EB420;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 0;
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
        v19[0] = 67109120;
        v19[1] = pid;
        v15 = _os_log_send_and_compose_impl(v14, &v18, 0, 0, &_mh_execute_header, v12, 0, "In UMSyncServer: fetchAsidMapforPid entitlement failure:%d", v19);
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

    v17 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
    if (handlerCopy)
    {
      goto LABEL_28;
    }
  }

LABEL_29:
}

- (void)fetchPersona:(id)persona forPid:(int)pid completionHandler:(id)handler
{
  v6 = *&pid;
  personaCopy = persona;
  handlerCopy = handler;
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = sub_100058864;
  v41 = sub_100058874;
  v42 = 0;
  v36 = -1;
  if ([(UMSyncService *)self remoteProcessHasBooleanEntitlement:@"com.apple.usermanagerd.persona.fetch"])
  {
    if (personaCopy)
    {
      goto LABEL_28;
    }

    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v10 = qword_1000EB420;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v35 = 0;
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
        LOWORD(v43[0]) = 0;
        v13 = _os_log_send_and_compose_impl(v12, &v35, 0, 0, &_mh_execute_header, v10, 0, "In UMSyncServer: entitlement OK, but invalid profileInfo", v43, 2);
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

    v19 = 22;
  }

  else
  {
    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v10 = qword_1000EB420;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v35 = 0;
      v15 = sub_1000011A8(1);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v16 = v15;
      }

      else
      {
        v16 = v15 & 0xFFFFFFFE;
      }

      if (v16)
      {
        v43[0] = 67109120;
        v43[1] = v6;
        v17 = _os_log_send_and_compose_impl(v16, &v35, 0, 0, &_mh_execute_header, v10, 0, "In UMSyncServer: fetchPersona entitlement failure:%d", v43);
        v18 = v17;
        if (v17)
        {
          sub_100002A8C(v17);
        }
      }

      else
      {
        v18 = 0;
      }

      free(v18);
    }

    v19 = 1;
  }

  v20 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v19 userInfo:0];
  v21 = v38[5];
  v38[5] = v20;

LABEL_28:
  if (v38[5])
  {
    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, 0);
    }
  }

  else
  {
    v22 = [(UMSyncService *)self asidForClient:0 withAuid:&v36 withPid:v6];
    v23 = +[NSXPCConnection currentConnection];
    v24 = sub_1000011DC([v23 processIdentifier]);

    v25 = qword_1000EB610;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10006A4DC;
    block[3] = &unk_1000DDC58;
    v26 = personaCopy;
    v31 = v6;
    v32 = v22;
    v33 = v36;
    v34 = v24;
    v28 = v26;
    v30 = &v37;
    v29 = handlerCopy;
    dispatch_sync(v25, block);
  }

  _Block_object_dispose(&v37, 8);
}

- (void)fetchPersonaGenerationNumberWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = +[NSXPCConnection currentConnection];
  processIdentifier = [v5 processIdentifier];

  if ([(UMSyncService *)self remoteProcessHasBooleanEntitlement:@"com.apple.usermanagerd.persona.fetch"])
  {
    v7 = qword_1000EB610;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10006AA34;
    block[3] = &unk_1000DD1B0;
    v15 = handlerCopy;
    dispatch_sync(v7, block);
    v8 = v15;
  }

  else
  {
    if (qword_1000EB448 != -1)
    {
      sub_10009602C();
    }

    v9 = qword_1000EB440;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v16 = 0;
      v10 = sub_1000011A8(0);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v11 = v10;
      }

      else
      {
        v11 = v10 & 0xFFFFFFFE;
      }

      if (v11)
      {
        v17[0] = 67109120;
        v17[1] = processIdentifier;
        v12 = _os_log_send_and_compose_impl(v11, &v16, 0, 0, &_mh_execute_header, v9, 16, "Failed to fetch persona generation number: pid is missing entitlement: %d", v17);
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

    v8 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
    (*(handlerCopy + 2))(handlerCopy, 0, v8);
  }
}

- (void)bundleIdentifiersForPersona:(id)persona completionHandler:(id)handler
{
  personaCopy = persona;
  handlerCopy = handler;
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = sub_100058864;
  v41 = sub_100058874;
  v42 = 0;
  v36 = -1;
  v8 = +[NSXPCConnection currentConnection];
  processIdentifier = [v8 processIdentifier];

  if ([(UMSyncService *)self remoteProcessHasBooleanEntitlement:@"com.apple.usermanagerd.persona.fetchbundle"])
  {
    if (personaCopy)
    {
      goto LABEL_28;
    }

    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v10 = qword_1000EB420;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v35 = 0;
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
        LOWORD(v43[0]) = 0;
        v13 = _os_log_send_and_compose_impl(v12, &v35, 0, 0, &_mh_execute_header, v10, 0, "In UMSyncServer: entitlement OK, but invalid profileInfo", v43, 2);
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

    v19 = 22;
  }

  else
  {
    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v10 = qword_1000EB420;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v35 = 0;
      v15 = sub_1000011A8(1);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v16 = v15;
      }

      else
      {
        v16 = v15 & 0xFFFFFFFE;
      }

      if (v16)
      {
        v43[0] = 67109120;
        v43[1] = processIdentifier;
        v17 = _os_log_send_and_compose_impl(v16, &v35, 0, 0, &_mh_execute_header, v10, 0, "In UMSyncServer: bundleIdentifiersForPersona entitlement failure:%d", v43);
        v18 = v17;
        if (v17)
        {
          sub_100002A8C(v17);
        }
      }

      else
      {
        v18 = 0;
      }

      free(v18);
    }

    v19 = 1;
  }

  v20 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v19 userInfo:0];
  v21 = v38[5];
  v38[5] = v20;

LABEL_28:
  if (v38[5])
  {
    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, 0);
    }
  }

  else
  {
    v22 = [(UMSyncService *)self asidForClient:0 withAuid:&v36 withPid:processIdentifier];
    v23 = +[NSXPCConnection currentConnection];
    v24 = sub_1000011DC([v23 processIdentifier]);

    v25 = qword_1000EB610;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10006AE80;
    block[3] = &unk_1000DDC58;
    v26 = personaCopy;
    v31 = processIdentifier;
    v32 = v22;
    v33 = v36;
    v34 = v24;
    v28 = v26;
    v30 = &v37;
    v29 = handlerCopy;
    dispatch_sync(v25, block);
  }

  _Block_object_dispose(&v37, 8);
}

- (void)setBundlesIdentifiers:(id)identifiers forPersona:(id)persona completionHandler:(id)handler
{
  identifiersCopy = identifiers;
  personaCopy = persona;
  handlerCopy = handler;
  v48 = 0;
  v49 = &v48;
  v50 = 0x3032000000;
  v51 = sub_100058864;
  v52 = sub_100058874;
  v53 = 0;
  v47 = -1;
  v11 = +[NSXPCConnection currentConnection];
  processIdentifier = [v11 processIdentifier];

  if (![(UMSyncService *)self remoteProcessHasBooleanEntitlement:@"com.apple.usermanagerd.persona.setbundle"])
  {
    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v18 = qword_1000EB420;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v46 = 0;
      v19 = sub_1000011A8(1);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v20 = v19;
      }

      else
      {
        v20 = v19 & 0xFFFFFFFE;
      }

      if (v20)
      {
        v54[0] = 67109120;
        v54[1] = processIdentifier;
        v21 = _os_log_send_and_compose_impl(v20, &v46, 0, 0, &_mh_execute_header, v18, 0, "In UMSyncServer: bundleIdentifiersForPersona entitlement failure:%d", v54);
        v22 = v21;
        if (v21)
        {
          sub_100002A8C(v21);
        }
      }

      else
      {
        v22 = 0;
      }

      free(v22);
    }

    v23 = 1;
    goto LABEL_40;
  }

  if (!personaCopy)
  {
    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v13 = qword_1000EB420;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v46 = 0;
      v14 = sub_1000011A8(1);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v15 = v14;
      }

      else
      {
        v15 = v14 & 0xFFFFFFFE;
      }

      if (v15)
      {
        LOWORD(v54[0]) = 0;
        v16 = _os_log_send_and_compose_impl(v15, &v46, 0, 0, &_mh_execute_header, v13, 0, "In UMSyncServer: entitlement OK, but invalid profileInfo", v54, 2);
        v17 = v16;
        if (v16)
        {
          sub_100002A8C(v16);
        }
      }

      else
      {
        v17 = 0;
      }

      free(v17);
    }

    v24 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
    v25 = v49[5];
    v49[5] = v24;
  }

  if (!identifiersCopy)
  {
    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v18 = qword_1000EB420;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v46 = 0;
      v26 = sub_1000011A8(1);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v27 = v26;
      }

      else
      {
        v27 = v26 & 0xFFFFFFFE;
      }

      if (v27)
      {
        LOWORD(v54[0]) = 0;
        LODWORD(v36) = 2;
        v28 = _os_log_send_and_compose_impl(v27, &v46, 0, 0, &_mh_execute_header, v18, 0, "In UMSyncServer: entitlement OK, but invalid bundleArray", v54, v36);
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

    v23 = 22;
LABEL_40:

    v30 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v23 userInfo:0];
    v31 = v49[5];
    v49[5] = v30;
  }

  if (v49[5])
  {
    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy);
    }
  }

  else
  {
    v32 = [(UMSyncService *)self asidForClient:0 withAuid:&v47 withPid:processIdentifier];
    v33 = +[NSXPCConnection currentConnection];
    v34 = sub_1000011DC([v33 processIdentifier]);

    v35 = qword_1000EB610;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10006B6F4;
    block[3] = &unk_1000DDC80;
    v38 = personaCopy;
    v42 = processIdentifier;
    v43 = v32;
    v44 = v47;
    v45 = v34;
    v39 = identifiersCopy;
    v41 = &v48;
    v40 = handlerCopy;
    dispatch_sync(v35, block);
  }

  _Block_object_dispose(&v48, 8);
}

- (void)registerUserPersonaObserverForPID:(int)d withMachServiceName:(id)name completionHandler:(id)handler
{
  v6 = *&d;
  nameCopy = name;
  handlerCopy = handler;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = sub_100058864;
  v35 = sub_100058874;
  v36 = 0;
  v30 = -1;
  if ([(UMSyncService *)self remoteProcessHasBooleanEntitlement:@"com.apple.usermanagerd.persona.observer"])
  {
    v10 = [(UMSyncService *)self asidForClient:0 withAuid:&v30 withPid:v6];
    v11 = +[NSXPCConnection currentConnection];
    v12 = sub_1000011DC([v11 processIdentifier]);

    v13 = qword_1000EB610;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10006BD30;
    block[3] = &unk_1000DDCA8;
    v14 = nameCopy;
    v26 = v10;
    v27 = v30;
    v28 = v12;
    v23 = v14;
    v25 = &v31;
    v24 = handlerCopy;
    dispatch_sync(v13, block);
  }

  else
  {
    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v15 = qword_1000EB420;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v29 = 0;
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
        v37[0] = 67109120;
        v37[1] = v6;
        v18 = _os_log_send_and_compose_impl(v17, &v29, 0, 0, &_mh_execute_header, v15, 0, "Entitlement Failure for pid:%d", v37);
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

    v20 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
    v21 = v32[5];
    v32[5] = v20;

    if (handlerCopy)
    {
      (*(handlerCopy + 2))(handlerCopy, v32[5]);
    }
  }

  _Block_object_dispose(&v31, 8);
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

- (void)grantSandboxExtensionForPersonaWithUniqueString:(id)string completionHandler:(id)handler
{
  stringCopy = string;
  handlerCopy = handler;
  v43 = 0;
  v44 = &v43;
  v45 = 0x3032000000;
  v46 = sub_100058864;
  v47 = sub_100058874;
  v48 = 0;
  v8 = +[NSXPCConnection currentConnection];
  processIdentifier = [v8 processIdentifier];

  if ([(UMSyncService *)self remoteProcessHasBooleanEntitlement:@"com.apple.usermanagerd.persona.grantSandboxExtension"])
  {
    v42 = 0u;
    v41 = 0u;
    v10 = +[NSXPCConnection currentConnection];
    v11 = v10;
    if (v10)
    {
      objc_msgSend_auditToken(v10);
    }

    else
    {
      v42 = 0u;
      v41 = 0u;
    }

    v40 = -1;
    v17 = [(UMSyncService *)self asidForClient:0 withAuid:&v40 withPid:processIdentifier];
    v18 = +[NSXPCConnection currentConnection];
    v19 = sub_1000011DC([v18 processIdentifier]);

    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v20 = qword_1000EB420;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v39 = 0;
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
        v49 = 138413058;
        v50 = stringCopy;
        v51 = 1024;
        v52 = processIdentifier;
        v53 = 1024;
        v54 = v17;
        v55 = 1024;
        v56 = v40;
        v23 = _os_log_send_and_compose_impl(v22, &v39, 0, 0, &_mh_execute_header, v20, 0, "In RDServer: grantSandboxExtensionForPersona:persona:%@, pid:%d, asid:%d, auid:%d", &v49, 30);
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

    v27 = qword_1000EB610;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10006C624;
    block[3] = &unk_1000DDCD0;
    v33 = v17;
    v34 = v40;
    v35 = v19;
    v28 = stringCopy;
    v36 = v41;
    v37 = v42;
    v38 = processIdentifier;
    v30 = v28;
    v32 = &v43;
    v31 = handlerCopy;
    dispatch_sync(v27, block);
  }

  else
  {
    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v12 = qword_1000EB420;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *&v41 = 0;
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
        v49 = 67109120;
        LODWORD(v50) = processIdentifier;
        v15 = _os_log_send_and_compose_impl(v14, &v41, 0, 0, &_mh_execute_header, v12, 0, "In RDServer: grantSandboxExtensionForPersona entitlement failure:%d", &v49);
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

    v25 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
    v26 = v44[5];
    v44[5] = v25;

    if (handlerCopy)
    {
      (*(handlerCopy + 2))(handlerCopy, 0, v44[5]);
    }
  }

  _Block_object_dispose(&v43, 8);
}

- (int)asidForClient:(id)client withAuid:(unsigned int *)auid withPid:(int)pid
{
  if (auid)
  {
    *auid = -1;
  }

  return -1;
}

@end