@interface AudioComponentMainRegConnection
- (AudioComponentMainRegConnection)initWithRegistrar:(void *)registrar connection:(id)connection;
- (id).cxx_construct;
- (void)canRegisterComponent:(id)component reply:(id)reply;
- (void)getComponentList:(id)list linkedSDKRequiresEntitlement:(BOOL)entitlement includeExtensions:(BOOL)extensions forceWaitForExtensions:(BOOL)forExtensions reply:(id)reply;
@end

@implementation AudioComponentMainRegConnection

- (id).cxx_construct
{
  *(self + 2) = 0;
  *(self + 6) = -1;
  *(self + 28) = 0;
  return self;
}

- (void)canRegisterComponent:(id)component reply:(id)reply
{
  v56 = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  memset(&v41, 0, sizeof(v41));
  v40 = 0;
  dictionaryToComponentDescription(component, &v41, &v40);
  CAFormatter::CAFormatter(&v39, &v41);
  {
    *v53.val = @"sandboxing-required";
    *&v53.val[2] = @"entitlements-required";
    *buf[0].val = MEMORY[0x1E695E110];
    *&buf[0].val[2] = &unk_1F034DEF0;
    AudioComponentRegistrarImpl::componentRequirements(AudioComponentDescription const&)::audibleAudioFileEntitlements = [MEMORY[0x1E695DF20] dictionaryWithObjects:buf forKeys:&v53 count:2];
  }

  if (v41.componentType == 1633969507)
  {
    componentSubType = v41.componentSubType;
    if (v41.componentSubType == 1633771875)
    {
LABEL_8:
      v8 = AudioComponentRegistrarImpl::componentRequirements(AudioComponentDescription const&)::audibleAudioFileEntitlements;
      goto LABEL_10;
    }

    v7 = 1096107074;
  }

  else
  {
    if (v41.componentType != 1634101612)
    {
      goto LABEL_9;
    }

    componentSubType = v41.componentSubType;
    v7 = 1635083362;
  }

  if (componentSubType == v7)
  {
    goto LABEL_8;
  }

LABEL_9:
  v8 = 0;
LABEL_10:
  v35 = [v8 valueForKey:@"entitlements-required"];
  if ([v35 count])
  {
    v9 = [v8 valueForKey:@"sandboxing-required"];
    bOOLValue = [v9 BOOLValue];

    if (!bOOLValue)
    {
      goto LABEL_22;
    }

    WeakRetained = objc_loadWeakRetained(&self->mConnInfo.mConnection);
    v12 = WeakRetained;
    if (WeakRetained)
    {
      objc_msgSend_auditToken(WeakRetained);
    }

    else
    {
      memset(&v53, 0, sizeof(v53));
    }

    buf[0] = v53;
    v15 = sandbox_check_by_audit_token() == 0;

    if (v15)
    {
      if (!gAudioComponentLogCategory)
      {
        operator new();
      }

      v33 = *gAudioComponentLogCategory;
      if (os_log_type_enabled(*gAudioComponentLogCategory, OS_LOG_TYPE_INFO))
      {
        buf[0].val[0] = 136315650;
        *&buf[0].val[1] = "AudioComponentRegistrar.mm";
        LOWORD(buf[0].val[3]) = 1024;
        *(&buf[0].val[3] + 2) = 494;
        HIWORD(buf[0].val[4]) = 2080;
        *&buf[0].val[5] = v39;
        _os_log_impl(&dword_18F5DF000, v33, OS_LOG_TYPE_INFO, "%25s:%-5d canRegisterComponent %s: NO, for a non-sandboxed process attempting to register a component that requires sandboxing", buf, 0x1Cu);
      }
    }

    else
    {
LABEL_22:
      v16 = objc_loadWeakRetained(&self->mConnInfo.mConnection);
      v17 = v16;
      if (v16)
      {
        objc_msgSend_auditToken(v16);
      }

      else
      {
        memset(buf, 0, 32);
      }

      task = SecTaskCreateWithAuditToken(0, buf);

      if (task)
      {
        v54 = 0u;
        v55 = 0u;
        memset(&v53, 0, sizeof(v53));
        v18 = v35;
        v19 = 0;
        v20 = [v18 countByEnumeratingWithState:&v53 objects:buf count:16];
        if (v20)
        {
          v37 = **&v53.val[4];
          v21 = v8;
          do
          {
            for (i = 0; i != v20; ++i)
            {
              if (**&v53.val[4] != v37)
              {
                objc_enumerationMutation(v18);
              }

              v23 = *(*&v53.val[2] + 8 * i);
              v24 = [v18 objectForKey:v23];
              v25 = SecTaskCopyValueForEntitlement(task, v23, 0);
              if (!gAudioComponentLogCategory)
              {
                operator new();
              }

              v26 = *gAudioComponentLogCategory;
              if (os_log_type_enabled(*gAudioComponentLogCategory, OS_LOG_TYPE_INFO))
              {
                *v42 = 136316162;
                v43 = "AudioComponentRegistrar.mm";
                v44 = 1024;
                v45 = 506;
                v46 = 2112;
                v47 = v23;
                v48 = 2112;
                v49 = v24;
                v50 = 2112;
                v51 = v25;
                _os_log_impl(&dword_18F5DF000, v26, OS_LOG_TYPE_INFO, "%25s:%-5d canRegisterComponent: entitlement %@ requires value %@, prospective registrant has value %@", v42, 0x30u);
              }

              if (v25)
              {
                v8 = v21;
                if (CFEqual(v24, v25))
                {
                  ++v19;
                }

                CFRelease(v25);
              }

              else
              {
                v8 = v21;
              }
            }

            v20 = [v18 countByEnumeratingWithState:&v53 objects:buf count:16];
          }

          while (v20);
        }

        v28 = [v18 count];
        v29 = v19 == v28;
        if (!gAudioComponentLogCategory)
        {
          operator new();
        }

        v30 = *gAudioComponentLogCategory;
        if (os_log_type_enabled(*gAudioComponentLogCategory, OS_LOG_TYPE_INFO))
        {
          v32 = "NO";
          *v42 = 136315906;
          if (v19 == v28)
          {
            v32 = "YES, possessing all required entitlements";
          }

          v43 = "AudioComponentRegistrar.mm";
          v44 = 1024;
          v45 = 515;
          v46 = 2080;
          v47 = v39;
          v48 = 2080;
          v49 = v32;
          _os_log_impl(&dword_18F5DF000, v30, OS_LOG_TYPE_INFO, "%25s:%-5d canRegisterComponent %s: %s", v42, 0x26u);
        }

        CFRelease(task);
        goto LABEL_57;
      }
    }

    v29 = 0;
LABEL_57:
    replyCopy[2](replyCopy, v29);
    goto LABEL_58;
  }

  if (!gAudioComponentLogCategory)
  {
    operator new();
  }

  v13 = *gAudioComponentLogCategory;
  if (os_log_type_enabled(*gAudioComponentLogCategory, OS_LOG_TYPE_DEBUG))
  {
    buf[0].val[0] = 136315650;
    *&buf[0].val[1] = "AudioComponentRegistrar.mm";
    LOWORD(buf[0].val[3]) = 1024;
    *(&buf[0].val[3] + 2) = 484;
    HIWORD(buf[0].val[4]) = 2080;
    *&buf[0].val[5] = v39;
    _os_log_impl(&dword_18F5DF000, v13, OS_LOG_TYPE_DEBUG, "%25s:%-5d canRegisterComponent %s: YES, requiring no entitlements", buf, 0x1Cu);
  }

  replyCopy[2](replyCopy, 1);
LABEL_58:

  if (v39)
  {
    free(v39);
  }
}

- (void)getComponentList:(id)list linkedSDKRequiresEntitlement:(BOOL)entitlement includeExtensions:(BOOL)extensions forceWaitForExtensions:(BOOL)forExtensions reply:(id)reply
{
  forExtensionsCopy = forExtensions;
  extensionsCopy = extensions;
  v39 = *MEMORY[0x1E69E9840];
  self->mConnInfo.mLinkedSDKRequiresEntitlement = entitlement;
  mImpl = self->mImpl;
  listCopy = list;
  replyCopy = reply;
  if (!gAudioComponentLogCategory)
  {
    operator new();
  }

  v14 = *gAudioComponentLogCategory;
  if (os_log_type_enabled(*gAudioComponentLogCategory, OS_LOG_TYPE_DEFAULT))
  {
    *v29 = 136315906;
    *&v29[4] = "AudioComponentRegistrar.mm";
    *&v29[12] = 1024;
    *&v29[14] = 332;
    *&v29[18] = 1024;
    *&v29[20] = extensionsCopy;
    LOWORD(v30) = 1024;
    *(&v30 + 2) = forExtensionsCopy;
    _os_log_impl(&dword_18F5DF000, v14, OS_LOG_TYPE_DEFAULT, "%25s:%-5d getComponentList includeExtensions: %d waitForExtensions: %d", v29, 0x1Eu);
  }

  v16 = *(mImpl + 31);
  if (v16)
  {
    v17 = *(*v16 + 96);
  }

  else
  {
    v17 = 0;
  }

  mExtUsePermission = self->mConnInfo.mExtUsePermission;
  if (mExtUsePermission == -1)
  {
    mExtUsePermission = ConnectionInfo::_canUseExtensions(&self->mConnInfo);
    self->mConnInfo.mExtUsePermission = mExtUsePermission;
  }

  if (!extensionsCopy)
  {
    goto LABEL_25;
  }

  if (*mImpl)
  {
    goto LABEL_25;
  }

  v19 = atomic_load(mImpl + 2);
  if (v19)
  {
    goto LABEL_25;
  }

  *v29 = 0;
  v20 = MGCopyAnswerWithError();
  v21 = v20;
  if (*v29)
  {
    if (!v20)
    {
      goto LABEL_20;
    }

    v22 = 0;
    v23 = 0;
  }

  else
  {
    if (!v20)
    {
      goto LABEL_20;
    }

    v23 = applesauce::CF::convert_as<BOOL,0>(v20);
    v22 = v23 > 0xFFu;
  }

  CFRelease(v21);
  if (v22 & v23)
  {
LABEL_25:
    if (mExtUsePermission == 1)
    {
      v28 = atomic_load(mImpl + 2);
    }

    else
    {
      v28 = 0;
    }

    AudioComponentRegistrarImpl::replyWithComponentList(mImpl, v28 & 1, listCopy, v17, replyCopy);
    goto LABEL_29;
  }

LABEL_20:
  v24 = *(mImpl + 9);
  if (!v24)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  if (!(*(*v24 + 48))(v24))
  {
    goto LABEL_25;
  }

  *v29 = MEMORY[0x1E69E9820];
  *&v29[8] = 3221225472;
  *&v29[16] = ___ZN27AudioComponentRegistrarImpl16getComponentListER14ConnectionInfoP8NSStringbbU13block_pointerFvP6NSDatabS5_P7NSArrayE_block_invoke;
  v30 = &unk_1E72C2B40;
  v34 = mImpl;
  v35 = mExtUsePermission == 1;
  v31 = listCopy;
  v32 = v17;
  v33 = replyCopy;
  v25 = v29;
  if (!*(mImpl + 32))
  {
    operator new();
  }

  v26 = *(mImpl + 1);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___ZN27AudioComponentRegistrarImpl21_initialExtensionScanEU13block_pointerFvvE_block_invoke;
  block[3] = &unk_1E72C2B18;
  v37 = v25;
  v38 = mImpl;
  v27 = v25;
  dispatch_async(v26, block);

LABEL_29:
}

- (AudioComponentMainRegConnection)initWithRegistrar:(void *)registrar connection:(id)connection
{
  connectionCopy = connection;
  v10.receiver = self;
  v10.super_class = AudioComponentMainRegConnection;
  v7 = [(AudioComponentMainRegConnection *)&v10 init];
  v8 = v7;
  if (v7)
  {
    v7->mImpl = registrar;
    objc_storeWeak(&v7->mConnInfo.mConnection, connectionCopy);
  }

  return v8;
}

@end