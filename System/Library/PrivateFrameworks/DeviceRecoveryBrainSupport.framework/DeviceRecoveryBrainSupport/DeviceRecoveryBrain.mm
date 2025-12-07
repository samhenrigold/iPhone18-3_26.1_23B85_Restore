@interface DeviceRecoveryBrain
- (BOOL)ERMContentsPresent;
- (BOOL)client:(id)client hasBooleanEntitlement:(id)entitlement;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (NSXPCConnection)xpcConnection;
- (id)filesInDirectory:(id)directory withPrefix:(id)prefix extension:(id)extension excludeSymlinks:(BOOL)symlinks;
- (id)initExternalBrain:(BOOL)brain;
- (id)modifyTestFile:(id)file contents:(id)contents;
- (id)recoverTestFiles;
- (id)removeERMContents;
- (id)scanForERMContents;
- (id)scanForTestFiles;
- (id)startService:(id)service;
- (uint64_t)removeERMContents;
- (void)ERMContentsPresent;
- (void)checkFreeSpace:(id)space;
- (void)connectionInvalidated;
- (void)reclaimFreeSpace:(id)space;
- (void)recoverDevice:(id)device;
- (void)recoverDeviceFromBootedOS:(id)s userUnlocked:(BOOL)unlocked completion:(id)completion;
- (void)resetRecovery:(id)recovery;
- (void)scanForIssues:(id)issues;
- (void)scanForTestFiles;
@end

@implementation DeviceRecoveryBrain

- (id)initExternalBrain:(BOOL)brain
{
  v6.receiver = self;
  v6.super_class = DeviceRecoveryBrain;
  v4 = [(DeviceRecoveryBrain *)&v6 init];
  if (v4)
  {
    [(DeviceRecoveryBrain *)v4 setIsInternalBuild:os_variant_allows_internal_security_policies()];
    v4->_isExternalBrain = brain;
  }

  else
  {
    [DeviceRecoveryBrain initExternalBrain:?];
  }

  return v4;
}

- (id)startService:(id)service
{
  serviceCopy = service;
  v5 = DRGetLogHandle(serviceCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    *&buf[4] = "[DeviceRecoveryBrain startService:]";
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: startService", buf, 0xCu);
  }

  v7 = DRGetLogHandle(v6);
  v8 = v7;
  if (!serviceCopy)
  {
    [(DeviceRecoveryBrain *)v7 startService:buf];
LABEL_14:
    v10 = v16;
    v14 = *buf;
    goto LABEL_9;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    *&buf[4] = "[DeviceRecoveryBrain startService:]";
    v18 = 2114;
    v19 = serviceCopy;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "%{public}s: Attempting to initialize listener for service %{public}@", buf, 0x16u);
  }

  v9 = [[NSXPCListener alloc] initWithMachServiceName:serviceCopy];
  if (!v9)
  {
    [DeviceRecoveryBrain startService:];
    goto LABEL_14;
  }

  v10 = v9;
  v11 = dispatch_workloop_create("com.apple.DeviceRecoveryBrain.MessageQueue");
  messageQueue = self->_messageQueue;
  self->_messageQueue = v11;

  if (self->_messageQueue)
  {
    [v10 _setQueue:?];
    [v10 setDelegate:self];
    freeSpaceThreshold = self->_freeSpaceThreshold;
    self->_freeSpaceThreshold = &off_33A48;

    [v10 resume];
    v14 = 0;
  }

  else
  {
    [DeviceRecoveryBrain startService:buf];
    v14 = *buf;
  }

LABEL_9:

  return v14;
}

- (void)connectionInvalidated
{
  messageQueue = [(DeviceRecoveryBrain *)self messageQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __44__DeviceRecoveryBrain_connectionInvalidated__block_invoke;
  block[3] = &unk_2C1A8;
  block[4] = self;
  dispatch_async(messageQueue, block);
}

- (BOOL)client:(id)client hasBooleanEntitlement:(id)entitlement
{
  clientCopy = client;
  entitlementCopy = entitlement;
  if (!entitlementCopy)
  {
    [DeviceRecoveryBrain client:hasBooleanEntitlement:];
LABEL_20:
    v14 = v20;
    v8 = *buf;
LABEL_21:

    v10 = 0;
    goto LABEL_7;
  }

  if (!clientCopy)
  {
    [DeviceRecoveryBrain client:hasBooleanEntitlement:];
    goto LABEL_20;
  }

  v7 = [clientCopy valueForEntitlement:entitlementCopy];
  if (!v7)
  {
    v12 = DRGetLogHandle(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [DeviceRecoveryBrain client:hasBooleanEntitlement:];
    }

    v14 = DRGetLogHandle(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [DeviceRecoveryBrain client:clientCopy hasBooleanEntitlement:?];
    }

    v8 = 0;
    goto LABEL_21;
  }

  v8 = v7;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if ((isKindOfClass & 1) == 0)
  {
    v15 = DRGetLogHandle(isKindOfClass);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [DeviceRecoveryBrain client:hasBooleanEntitlement:];
    }

    v14 = DRGetLogHandle(v16);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [clientCopy processIdentifier];
      v17 = _ProcessNameForPid();
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      *buf = 136446978;
      *&buf[4] = "[DeviceRecoveryBrain client:hasBooleanEntitlement:]";
      v22 = 2114;
      v23 = entitlementCopy;
      v24 = 2114;
      v25 = v17;
      v26 = 2114;
      v27 = v19;
      _os_log_error_impl(&dword_0, v14, OS_LOG_TYPE_ERROR, "%{public}s: entitlement '%{public}@' on client '%{public}@' is not an NSNumber: %{public}@", buf, 0x2Au);
    }

    goto LABEL_21;
  }

  if (([v8 BOOLValue] & 1) == 0)
  {
    [DeviceRecoveryBrain client:hasBooleanEntitlement:];
    goto LABEL_20;
  }

  v10 = 1;
LABEL_7:

  return v10;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  if (!connectionCopy)
  {
    [DeviceRecoveryBrain listener:shouldAcceptNewConnection:];
LABEL_25:
    v9 = *buf;
    v20 = v28;
    goto LABEL_22;
  }

  xpcConnection = [(DeviceRecoveryBrain *)self xpcConnection];

  if (xpcConnection)
  {
    [DeviceRecoveryBrain listener:shouldAcceptNewConnection:];
    goto LABEL_25;
  }

  [connectionCopy processIdentifier];
  v9 = _ProcessNameForPid();
  v10 = DRGetLogHandle(v9);
  if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_19;
  }

  v11 = qos_class_self();
  if (v11 > 20)
  {
    switch(v11)
    {
      case 0x15:
        v12 = @"DEFAULT";
        goto LABEL_18;
      case 0x21:
        v12 = @"USER_INTERACTIVE";
        goto LABEL_18;
      case 0x19:
        v12 = @"USER_INITIATED";
        goto LABEL_18;
    }

LABEL_15:
    v12 = [NSString stringWithFormat:@"UNKNOWN_QOS: 0x%x", v11];
    goto LABEL_18;
  }

  if (!v11)
  {
    v12 = @"UNSPECIFIED";
    goto LABEL_18;
  }

  if (v11 == 9)
  {
    v12 = @"BACKGROUND";
    goto LABEL_18;
  }

  if (v11 != 17)
  {
    goto LABEL_15;
  }

  v12 = @"UTILITY";
LABEL_18:
  *buf = 136446722;
  *&buf[4] = "[DeviceRecoveryBrain listener:shouldAcceptNewConnection:]";
  v30 = 2112;
  v31 = v9;
  v32 = 2112;
  v33 = v12;
  _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "%{public}s: Got connection from process %@ at qos %@", buf, 0x20u);

LABEL_19:
  v13 = [(DeviceRecoveryBrain *)self clientHasRecoveryBrainControllerEntitlement:connectionCopy];
  if ((v13 & 1) == 0)
  {
    [DeviceRecoveryBrain listener:v13 shouldAcceptNewConnection:?];
LABEL_28:
    v20 = 0;
    goto LABEL_22;
  }

  v14 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___DeviceRecoveryBrainServiceInterface];
  [connectionCopy setExportedInterface:v14];

  exportedInterface = [connectionCopy exportedInterface];

  if (!exportedInterface)
  {
    [DeviceRecoveryBrain listener:v16 shouldAcceptNewConnection:?];
    goto LABEL_28;
  }

  [connectionCopy setExportedObject:self];
  messageQueue = [(DeviceRecoveryBrain *)self messageQueue];
  [connectionCopy _setQueue:messageQueue];

  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = __58__DeviceRecoveryBrain_listener_shouldAcceptNewConnection___block_invoke;
  v25[3] = &unk_2C4C0;
  v18 = v9;
  v26 = v18;
  selfCopy = self;
  [connectionCopy setInterruptionHandler:v25];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = __58__DeviceRecoveryBrain_listener_shouldAcceptNewConnection___block_invoke_48;
  v22[3] = &unk_2C4C0;
  v23 = v18;
  selfCopy2 = self;
  v9 = v18;
  [connectionCopy setInvalidationHandler:v22];
  [(DeviceRecoveryBrain *)self setXpcConnection:connectionCopy];
  v19 = os_transaction_create();
  [(DeviceRecoveryBrain *)self setKeepAliveTransaction:v19];

  [connectionCopy resume];
  v20 = 1;
LABEL_22:

  return v20;
}

id __58__DeviceRecoveryBrain_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  v2 = DRGetLogHandle(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 136446466;
    v6 = "[DeviceRecoveryBrain listener:shouldAcceptNewConnection:]_block_invoke";
    v7 = 2114;
    v8 = v3;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "%{public}s: Connection interrupted [%{public}@]", &v5, 0x16u);
  }

  return [*(a1 + 40) connectionInterrupted];
}

id __58__DeviceRecoveryBrain_listener_shouldAcceptNewConnection___block_invoke_48(uint64_t a1)
{
  v2 = DRGetLogHandle(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 136446466;
    v6 = "[DeviceRecoveryBrain listener:shouldAcceptNewConnection:]_block_invoke";
    v7 = 2114;
    v8 = v3;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "%{public}s: Connection invalidated [%{public}@]", &v5, 0x16u);
  }

  [*(a1 + 40) connectionInvalidated];
  return [*(a1 + 40) setXpcConnection:0];
}

- (void)resetRecovery:(id)recovery
{
  recoveryCopy = recovery;
  v4 = DRGetLogHandle(recoveryCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136446210;
    v6 = "[DeviceRecoveryBrain resetRecovery:]";
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "%{public}s: ", &v5, 0xCu);
  }

  (*(recoveryCopy + 2))(recoveryCopy, 0, 0);
}

- (void)checkFreeSpace:(id)space
{
  spaceCopy = space;
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy__0;
  v41 = __Block_byref_object_dispose__0;
  v42 = 0;
  v5 = DRGetLogHandle(spaceCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v49 = "[DeviceRecoveryBrain checkFreeSpace:]";
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: ", buf, 0xCu);
  }

  if (!spaceCopy)
  {
    v8 = DRGetLogHandle(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [DeviceRecoveryBrain checkFreeSpace:];
    }

    goto LABEL_8;
  }

  if ([(DeviceRecoveryBrain *)self isInternalBuild])
  {
    issuesScanResultOverride = [(DeviceRecoveryBrain *)self issuesScanResultOverride];
    if (issuesScanResultOverride == 2)
    {
      v8 = DRGetLogHandle(issuesScanResultOverride);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        v49 = "[DeviceRecoveryBrain checkFreeSpace:]";
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "%{public}s: Issues scan / free space forced to return no results", buf, 0xCu);
      }

LABEL_8:
      v9 = 0;
      v10 = 0;
LABEL_24:

      spaceCopy[2](spaceCopy, v9, v38[5]);
      goto LABEL_25;
    }
  }

  testModeEnabled = [(DeviceRecoveryBrain *)self testModeEnabled];
  if ((testModeEnabled & 1) == 0)
  {
    v15 = DRGetLogHandle(testModeEnabled);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v49 = "[DeviceRecoveryBrain checkFreeSpace:]";
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "%{public}s: Determining free space on device for user", buf, 0xCu);
    }

    v16 = [DeviceRecoveryBrainSpaceManager alloc];
    systemDataVolumeMountPath = [(DeviceRecoveryBrain *)self systemDataVolumeMountPath];
    userDataVolumeMountPath = [(DeviceRecoveryBrain *)self userDataVolumeMountPath];
    updateVolumeMountPath = [(DeviceRecoveryBrain *)self updateVolumeMountPath];
    v8 = [(DeviceRecoveryBrainSpaceManager *)v16 initWithMounts:systemDataVolumeMountPath userDataVolumeMountPath:userDataVolumeMountPath updateVolumeMountPath:updateVolumeMountPath];

    v36 = 0;
    v20 = [v8 getFreeSpaceOnDeviceForUser:&v36];
    v21 = v36;
    v10 = v21;
    if (v21)
    {
      v32 = DRGetLogHandle(v21);
      [DeviceRecoveryBrain checkFreeSpace:v32];

      v25 = [NSString stringWithFormat:@"Unable to determine free space on device"];
      v9 = DRCreateError(@"DeviceRecoveryError", 18, v25, @"Unable to determine free space on device", v10, "[DeviceRecoveryBrain checkFreeSpace:]", "/Library/Caches/com.apple.xbs/Sources/DeviceRecovery/DeviceRecoveryBrainSupport_Framework/DeviceRecoveryBrain.m", 0x179u);
    }

    else
    {
      unsignedLongLongValue = [v20 unsignedLongLongValue];
      freeSpaceThreshold = [(DeviceRecoveryBrain *)self freeSpaceThreshold];
      LODWORD(unsignedLongLongValue) = unsignedLongLongValue > [freeSpaceThreshold unsignedLongLongValue];

      if (unsignedLongLongValue)
      {
        v25 = DRGetLogHandle(v24);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          freeSpaceThreshold2 = [(DeviceRecoveryBrain *)self freeSpaceThreshold];
          *buf = 136446722;
          v49 = "[DeviceRecoveryBrain checkFreeSpace:]";
          v50 = 2114;
          v51 = v20;
          v52 = 2114;
          v53 = freeSpaceThreshold2;
          _os_log_impl(&dword_0, v25, OS_LOG_TYPE_DEFAULT, "%{public}s: Free space on device(%{public}@) is greater than threshold(%{public}@). Sufficient space present", buf, 0x20u);
        }
      }

      else
      {
        v27 = DRGetLogHandle(v24);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          freeSpaceThreshold3 = [(DeviceRecoveryBrain *)self freeSpaceThreshold];
          *buf = 136446722;
          v49 = "[DeviceRecoveryBrain checkFreeSpace:]";
          v50 = 2114;
          v51 = v20;
          v52 = 2114;
          v53 = freeSpaceThreshold3;
          _os_log_impl(&dword_0, v27, OS_LOG_TYPE_DEFAULT, "%{public}s: Free space on device(%{public}@) is less than threshold(%{public}@). Space cleanup required", buf, 0x20u);
        }

        v46 = @"RepairableIssues";
        v43 = @"RepairableIssueDescription";
        v44 = @"Disk space too low and needs to be reclaimed";
        v25 = [NSDictionary dictionaryWithObjects:&v44 forKeys:&v43 count:1];
        v45 = v25;
        v29 = [NSArray arrayWithObjects:&v45 count:1];
        v47 = v29;
        v30 = [NSDictionary dictionaryWithObjects:&v47 forKeys:&v46 count:1];
        v31 = v38[5];
        v38[5] = v30;
      }

      v9 = 0;
    }

    goto LABEL_24;
  }

  v12 = DRGetLogHandle(testModeEnabled);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v49 = "[DeviceRecoveryBrain checkFreeSpace:]";
    _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "%{public}s: [TEST MODE] simulating free space check", buf, 0xCu);
  }

  v13 = dispatch_time(0, 1000000000);
  messageQueue = [(DeviceRecoveryBrain *)self messageQueue];
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = __38__DeviceRecoveryBrain_checkFreeSpace___block_invoke;
  v33[3] = &unk_2C4E8;
  v35 = &v37;
  v34 = spaceCopy;
  dispatch_after(v13, messageQueue, v33);

  v9 = 0;
  v10 = 0;
LABEL_25:
  _Block_object_dispose(&v37, 8);
}

uint64_t __38__DeviceRecoveryBrain_checkFreeSpace___block_invoke(uint64_t a1)
{
  v2 = DRGetLogHandle(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v15 = "[DeviceRecoveryBrain checkFreeSpace:]_block_invoke";
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "%{public}s: [TEST MODE] simulated free space check complete", buf, 0xCu);
  }

  v12 = @"RepairableIssues";
  v9 = @"RepairableIssueDescription";
  v10 = @"Found simulated free space to reclaim";
  v3 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  v11 = v3;
  v4 = [NSArray arrayWithObjects:&v11 count:1];
  v13 = v4;
  v5 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  return (*(*(a1 + 32) + 16))();
}

- (BOOL)ERMContentsPresent
{
  v11 = 0;
  v2 = +[NSFileManager defaultManager];
  v3 = [v2 fileExistsAtPath:@"/private/preboot/supplemental/" isDirectory:&v11];

  if ((v11 & 1) == 0)
  {
    v5 = DRGetLogHandle(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [DeviceRecoveryBrain ERMContentsPresent];
    }

    v3 = 0;
  }

  v11 = 0;
  v6 = +[NSFileManager defaultManager];
  v7 = [v6 fileExistsAtPath:@"/private/var/mnt/erm" isDirectory:&v11];

  if ((v11 & 1) == 0)
  {
    v9 = DRGetLogHandle(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [DeviceRecoveryBrain ERMContentsPresent];
    }

    v7 = 0;
  }

  return (v3 | v7) & 1;
}

- (id)scanForERMContents
{
  eRMContentsPresent = [(DeviceRecoveryBrain *)self ERMContentsPresent];
  if (eRMContentsPresent)
  {
    v3 = DRGetLogHandle(eRMContentsPresent);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v12 = "[DeviceRecoveryBrain scanForERMContents]";
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "%{public}s: Found ERM content to remove", buf, 0xCu);
    }

    v8 = @"RepairableIssueDescription";
    v4 = [NSString stringWithFormat:@"Found Extended Research content to remove"];
    v9 = v4;
    v5 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
    v10 = v5;
    v6 = [NSArray arrayWithObjects:&v10 count:1];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)removeERMContents
{
  v2 = +[NSFileManager defaultManager];
  v3 = [v2 fileExistsAtPath:@"/private/preboot/supplemental/"];

  if (!v3 || ((+[NSFileManager defaultManager](NSFileManager, "defaultManager"), v4 = objc_claimAutoreleasedReturnValue(), v16 = 0, v5 = [v4 removeItemAtPath:@"/private/preboot/supplemental/" error:&v16], v6 = v16, v4, v5) ? (v7 = v6 == 0) : (v7 = 0), v7))
  {
    v8 = +[NSFileManager defaultManager];
    v9 = [v8 fileExistsAtPath:@"/private/var/mnt/erm"];

    if (!v9 || (+[NSFileManager defaultManager](NSFileManager, "defaultManager"), v10 = objc_claimAutoreleasedReturnValue(), v15 = 0, v11 = [v10 removeItemAtPath:@"/private/var/mnt/erm" error:&v15], v6 = v15, v10, v11) && !v6)
    {
      v12 = 0;
      goto LABEL_11;
    }

    [(DeviceRecoveryBrain *)v6 removeERMContents];
  }

  else
  {
    [(DeviceRecoveryBrain *)v6 removeERMContents];
  }

  v14 = v17;
  v12 = v18;

LABEL_11:

  return v12;
}

- (id)filesInDirectory:(id)directory withPrefix:(id)prefix extension:(id)extension excludeSymlinks:(BOOL)symlinks
{
  symlinksCopy = symlinks;
  directoryCopy = directory;
  prefixCopy = prefix;
  extensionCopy = extension;
  v12 = extensionCopy;
  if (!directoryCopy)
  {
    v17 = DRGetLogHandle(extensionCopy);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [DeviceRecoveryBrain filesInDirectory:withPrefix:extension:excludeSymlinks:];
    }

    v15 = 0;
    v14 = 0;
    goto LABEL_34;
  }

  v13 = +[NSFileManager defaultManager];
  v45 = 0;
  v14 = [v13 contentsOfDirectoryAtPath:directoryCopy error:&v45];
  v15 = v45;

  if (v15)
  {
    v36 = DRGetLogHandle(v16);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      [DeviceRecoveryBrain filesInDirectory:withPrefix:extension:excludeSymlinks:];
    }

    v17 = DRGetLogHandle(v37);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [DeviceRecoveryBrain filesInDirectory:withPrefix:extension:excludeSymlinks:];
    }

LABEL_34:
    v18 = 0;
    goto LABEL_26;
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v17 = v14;
  v18 = [v17 countByEnumeratingWithState:&v41 objects:v50 count:16];
  if (v18)
  {
    v19 = 0;
    v20 = *v42;
    v38 = *v42;
    do
    {
      v21 = 0;
      v40 = v18;
      do
      {
        if (*v42 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v41 + 1) + 8 * v21);
        if ((!prefixCopy || [*(*(&v41 + 1) + 8 * v21) hasPrefix:prefixCopy]) && (!v12 || objc_msgSend(v22, "hasSuffix:", v12)))
        {
          if (symlinksCopy && (+[NSFileManager defaultManager](NSFileManager, "defaultManager"), v23 = objc_claimAutoreleasedReturnValue(), [directoryCopy stringByAppendingPathComponent:v22], v39 = v19, v24 = symlinksCopy, v25 = prefixCopy, v26 = v12, v27 = v17, v28 = directoryCopy, v29 = objc_claimAutoreleasedReturnValue(), v30 = objc_msgSend(v23, "fileAtPathIsSymlink:", v29), v29, directoryCopy = v28, v17 = v27, v12 = v26, prefixCopy = v25, symlinksCopy = v24, v19 = v39, v23, v20 = v38, v30))
          {
            v32 = DRGetLogHandle(v31);
            if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
            {
              v33 = [directoryCopy stringByAppendingPathComponent:v22];
              *buf = 136446466;
              v47 = "[DeviceRecoveryBrain filesInDirectory:withPrefix:extension:excludeSymlinks:]";
              v48 = 2114;
              v49 = v33;
              _os_log_error_impl(&dword_0, v32, OS_LOG_TYPE_ERROR, "%{public}s: Test file '%{public}@' is a symlink - skipping", buf, 0x16u);
            }

            v20 = v38;
          }

          else if (v19)
          {
            [v19 addObject:v22];
          }

          else
          {
            v19 = [NSMutableArray arrayWithObject:v22];
          }

          v18 = v40;
        }

        v21 = v21 + 1;
      }

      while (v18 != v21);
      v18 = [v17 countByEnumeratingWithState:&v41 objects:v50 count:16];
    }

    while (v18);
    v15 = 0;
    v18 = v19;
  }

  else
  {
    v15 = 0;
  }

  v14 = v17;
LABEL_26:

  v34 = v18;
  return v18;
}

- (id)scanForTestFiles
{
  userHomeDirectory = [(DeviceRecoveryBrain *)self userHomeDirectory];
  v3 = [userHomeDirectory stringByAppendingPathComponent:@".TestDeviceRecovery-remove"];

  v4 = +[NSFileManager defaultManager];
  v5 = [v4 fileExistsAtPath:v3];

  if (v5)
  {
    v7 = DRGetLogHandle(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v40 = "[DeviceRecoveryBrain scanForTestFiles]";
      v41 = 2114;
      v42 = v3;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "%{public}s: Found test recovery file to remove: %{public}@", buf, 0x16u);
    }

    v8 = [NSMutableArray arrayWithCapacity:1];
    if (!v8)
    {
      [(DeviceRecoveryBrain *)0 scanForTestFiles];
      v12 = 0;
      goto LABEL_28;
    }

    v52 = @"RepairableIssueDescription";
    v9 = [NSString stringWithFormat:@"Found test recovery file to remove: %@", v3];
    v53 = v9;
    v10 = [NSDictionary dictionaryWithObjects:&v53 forKeys:&v52 count:1];
    [v8 addObject:v10];
  }

  else
  {
    v8 = 0;
  }

  userHomeDirectory2 = [(DeviceRecoveryBrain *)self userHomeDirectory];
  v12 = [(DeviceRecoveryBrain *)self filesInDirectory:userHomeDirectory2 withPrefix:@".TestDeviceRecovery-modify" extension:@".plist" excludeSymlinks:1];

  if (v12 && [v12 count])
  {
    v30 = v3;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    obj = v12;
    v13 = [obj countByEnumeratingWithState:&v33 objects:v51 count:16];
    if (!v13)
    {
      goto LABEL_27;
    }

    v14 = v13;
    v15 = *v34;
    while (1)
    {
      v16 = 0;
      do
      {
        if (*v34 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v33 + 1) + 8 * v16);
        userHomeDirectory3 = [(DeviceRecoveryBrain *)self userHomeDirectory];
        v19 = [userHomeDirectory3 stringByAppendingPathComponent:v17];

        v20 = [NSDictionary dictionaryWithContentsOfFile:v19];
        v21 = v20;
        if (v20)
        {
          v22 = [v20 objectForKeyedSubscript:@"RemoveThisProperty"];

          if (!v22)
          {
            goto LABEL_22;
          }

          v24 = DRGetLogHandle(v23);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136446722;
            v40 = "[DeviceRecoveryBrain scanForTestFiles]";
            v41 = 2114;
            v42 = @"RemoveThisProperty";
            v43 = 2114;
            v44 = v19;
            _os_log_impl(&dword_0, v24, OS_LOG_TYPE_DEFAULT, "%{public}s: Found property to remove '%{public}@' in test file: %{public}@", buf, 0x20u);
          }

          if (!v8)
          {
            v8 = [NSMutableArray arrayWithCapacity:1];
            if (!v8)
            {
              [DeviceRecoveryBrain scanForTestFiles];
              goto LABEL_27;
            }
          }

          v37 = @"RepairableIssueDescription";
          v25 = [NSString stringWithFormat:@"Found test recovery file to modify: %@", v19];
          v38 = v25;
          v26 = [NSDictionary dictionaryWithObjects:&v38 forKeys:&v37 count:1];
          [v8 addObject:v26];
        }

        else
        {
          v25 = DRGetLogHandle(0);
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            *buf = 136447490;
            v40 = "[DeviceRecoveryBrain scanForTestFiles]";
            v41 = 2082;
            v42 = "[DeviceRecoveryBrain scanForTestFiles]";
            v43 = 2082;
            v44 = "propertyList != nil";
            v45 = 2082;
            v46 = "";
            v47 = 2082;
            v48 = "/Library/Caches/com.apple.xbs/Sources/DeviceRecovery/DeviceRecoveryBrainSupport_Framework/DeviceRecoveryBrain.m";
            v49 = 1026;
            v50 = 542;
            _os_log_error_impl(&dword_0, v25, OS_LOG_TYPE_ERROR, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", buf, 0x3Au);
          }
        }

LABEL_22:
        v16 = v16 + 1;
      }

      while (v14 != v16);
      v27 = [obj countByEnumeratingWithState:&v33 objects:v51 count:16];
      v14 = v27;
      if (!v27)
      {
LABEL_27:
        v12 = obj;

        v3 = v30;
        break;
      }
    }
  }

LABEL_28:
  v28 = v8;

  return v8;
}

- (id)modifyTestFile:(id)file contents:(id)contents
{
  fileCopy = file;
  contentsCopy = contents;
  v7 = contentsCopy;
  if (contentsCopy)
  {
    v8 = [contentsCopy objectForKeyedSubscript:@"RemoveThisProperty"];

    if (v8)
    {
      v10 = DRGetLogHandle(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = [v7 objectForKeyedSubscript:@"RemoveThisProperty"];
        *v17 = 136446978;
        *&v17[4] = "[DeviceRecoveryBrain modifyTestFile:contents:]";
        v18 = 2114;
        v19 = @"RemoveThisProperty";
        v20 = 2114;
        v21 = v11;
        v22 = 2114;
        v23 = fileCopy;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "%{public}s: Removing property from test file ('%{public}@' = '%{public}@'): %{public}@", v17, 0x2Au);
      }

      [v7 removeObjectForKey:@"RemoveThisProperty"];
    }

    v12 = [v7 objectForKeyedSubscript:@"AddedProperty"];

    if (!v12)
    {
      v14 = DRGetLogHandle(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *v17 = 136446978;
        *&v17[4] = "[DeviceRecoveryBrain modifyTestFile:contents:]";
        v18 = 2114;
        v19 = @"AddedProperty";
        v20 = 2114;
        v21 = @"Added by recovery brain!";
        v22 = 2114;
        v23 = fileCopy;
        _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "%{public}s: Adding property to test file ('%{public}@' = '%{public}@'): %{public}@", v17, 0x2Au);
      }

      [v7 setObject:@"Added by recovery brain!" forKeyedSubscript:@"AddedProperty"];
    }

    v15 = 0;
  }

  else
  {
    [DeviceRecoveryBrain modifyTestFile:v17 contents:?];
    v15 = *v17;
  }

  return v15;
}

- (id)recoverTestFiles
{
  userHomeDirectory = [(DeviceRecoveryBrain *)self userHomeDirectory];
  v4 = [userHomeDirectory stringByAppendingPathComponent:@".TestDeviceRecovery-remove"];

  v5 = OBJC_CLASS___DeviceRecoveryBrainSpaceManager_ptr;
  v6 = +[NSFileManager defaultManager];
  v7 = [v6 fileExistsAtPath:v4];

  if (v7)
  {
    v9 = DRGetLogHandle(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      *&buf[4] = "[DeviceRecoveryBrain recoverTestFiles]";
      *&buf[12] = 2114;
      *&buf[14] = v4;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "%{public}s: Deleting test recovery file: %{public}@", buf, 0x16u);
    }

    v10 = +[NSFileManager defaultManager];
    v69 = 0;
    v11 = [v10 removeItemAtPath:v4 error:&v69];
    v12 = v69;

    if (!v11 || v12)
    {
      [(DeviceRecoveryBrain *)v4 recoverTestFiles:v12];
      v19 = 0;
      v45 = *buf;
      goto LABEL_44;
    }
  }

  userHomeDirectory2 = [(DeviceRecoveryBrain *)self userHomeDirectory];
  v19 = [(DeviceRecoveryBrain *)self filesInDirectory:userHomeDirectory2 withPrefix:@".TestDeviceRecovery-modify" extension:@".plist" excludeSymlinks:1];

  if (!v19 || ![v19 count])
  {
    v45 = 0;
    goto LABEL_44;
  }

  *v66 = 0u;
  v67 = 0u;
  *v64 = 0u;
  v65 = 0u;
  v19 = v19;
  v20 = [v19 countByEnumeratingWithState:v64 objects:v79 count:16];
  if (!v20)
  {
    v45 = 0;
    goto LABEL_43;
  }

  v21 = v20;
  v57 = v4;
  obja = v19;
  v61 = *v65;
LABEL_10:
  v22 = 0;
  while (1)
  {
    if (*v65 != v61)
    {
      objc_enumerationMutation(obja);
    }

    v23 = *(*&v64[2] + 8 * v22);
    userHomeDirectory3 = [(DeviceRecoveryBrain *)self userHomeDirectory];
    v25 = [userHomeDirectory3 stringByAppendingPathComponent:v23];

    v26 = [NSMutableDictionary dictionaryWithContentsOfFile:v25];
    if (!v26)
    {
      [(DeviceRecoveryBrain *)v25 recoverTestFiles:buf];
      v45 = *buf;
LABEL_29:
      v4 = v57;
      v19 = obja;
      goto LABEL_43;
    }

    v32 = v26;
    defaultManager = [(__objc2_class *)v5[25] defaultManager];
    v63 = 0;
    v34 = [defaultManager attributesOfItemAtPath:v25 error:&v63];
    v35 = v63;

    if (!v34 || v35 != 0)
    {
      break;
    }

    v38 = [(DeviceRecoveryBrain *)self modifyTestFile:v25 contents:v32];
    if (v38)
    {
      v45 = v38;
      v48 = DRGetLogHandle(v38);
      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        *buf = 136447490;
        *&buf[4] = "[DeviceRecoveryBrain recoverTestFiles]";
        *&buf[12] = 2082;
        *&buf[14] = "[DeviceRecoveryBrain recoverTestFiles]";
        v71 = 2082;
        v72 = "error == nil";
        v73 = 2082;
        v74 = "";
        v75 = 2082;
        v76 = "/Library/Caches/com.apple.xbs/Sources/DeviceRecovery/DeviceRecoveryBrainSupport_Framework/DeviceRecoveryBrain.m";
        v77 = 1026;
        v78 = 621;
        _os_log_error_impl(&dword_0, v48, OS_LOG_TYPE_ERROR, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", buf, 0x3Au);
      }

      goto LABEL_41;
    }

    v39 = [v32 writeToFile:v25 atomically:1];
    if ((v39 & 1) == 0)
    {
      v49 = DRGetLogHandle(v39);
      if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
      {
        *buf = 136447490;
        *&buf[4] = "[DeviceRecoveryBrain recoverTestFiles]";
        *&buf[12] = 2082;
        *&buf[14] = "[DeviceRecoveryBrain recoverTestFiles]";
        v71 = 2082;
        v72 = "success";
        v73 = 2082;
        v74 = "";
        v75 = 2082;
        v76 = "/Library/Caches/com.apple.xbs/Sources/DeviceRecovery/DeviceRecoveryBrainSupport_Framework/DeviceRecoveryBrain.m";
        v77 = 1026;
        v78 = 624;
        _os_log_error_impl(&dword_0, v49, OS_LOG_TYPE_ERROR, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", buf, 0x3Au);
      }

      v48 = [NSString stringWithFormat:@"failed to write modified test file: %@", v25];
      v45 = DRCreateError(@"DeviceRecoveryError", 4, v48, @"failed to write modified test file: %@", 0, "[DeviceRecoveryBrain recoverTestFiles]", "/Library/Caches/com.apple.xbs/Sources/DeviceRecovery/DeviceRecoveryBrainSupport_Framework/DeviceRecoveryBrain.m", 0x270u);
      goto LABEL_41;
    }

    v40 = v5;
    defaultManager2 = [(__objc2_class *)v5[25] defaultManager];
    v62 = 0;
    v42 = [defaultManager2 setAttributes:v34 ofItemAtPath:v25 error:&v62];
    v43 = v62;

    if (!v42 || v43)
    {
      v50 = DRGetLogHandle(v44);
      if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
      {
        *buf = 136447490;
        *&buf[4] = "[DeviceRecoveryBrain recoverTestFiles]";
        *&buf[12] = 2082;
        *&buf[14] = "[DeviceRecoveryBrain recoverTestFiles]";
        v71 = 2082;
        v72 = "success && (error == nil)";
        v73 = 2082;
        v74 = "";
        v75 = 2082;
        v76 = "/Library/Caches/com.apple.xbs/Sources/DeviceRecovery/DeviceRecoveryBrainSupport_Framework/DeviceRecoveryBrain.m";
        v77 = 1026;
        v78 = 627;
        _os_log_error_impl(&dword_0, v50, OS_LOG_TYPE_ERROR, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", buf, 0x3Au);
      }

      v48 = [NSString stringWithFormat:@"failed to set attributes on modified test file: %@", v25];
      v45 = DRCreateError(@"DeviceRecoveryError", 4, v48, @"failed to set attributes on modified test file: %@", v43, "[DeviceRecoveryBrain recoverTestFiles]", "/Library/Caches/com.apple.xbs/Sources/DeviceRecovery/DeviceRecoveryBrainSupport_Framework/DeviceRecoveryBrain.m", 0x273u);

LABEL_41:
      v4 = v57;
      v19 = obja;
      goto LABEL_42;
    }

    v22 = v22 + 1;
    v5 = v40;
    if (v21 == v22)
    {
      v21 = [obja countByEnumeratingWithState:v64 objects:v79 count:16];
      if (v21)
      {
        goto LABEL_10;
      }

      v45 = 0;
      goto LABEL_29;
    }
  }

  v46 = DRGetLogHandle(v36);
  v47 = os_log_type_enabled(v46, OS_LOG_TYPE_ERROR);
  v4 = v57;
  v19 = obja;
  if (v47)
  {
    *buf = 136447490;
    *&buf[4] = "[DeviceRecoveryBrain recoverTestFiles]";
    *&buf[12] = 2082;
    *&buf[14] = "[DeviceRecoveryBrain recoverTestFiles]";
    v71 = 2082;
    v72 = "(recoveryFileAttributes != nil) && (error == nil)";
    v73 = 2082;
    v74 = "";
    v75 = 2082;
    v76 = "/Library/Caches/com.apple.xbs/Sources/DeviceRecovery/DeviceRecoveryBrainSupport_Framework/DeviceRecoveryBrain.m";
    v77 = 1026;
    v78 = 618;
    _os_log_error_impl(&dword_0, v46, OS_LOG_TYPE_ERROR, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", buf, 0x3Au);
  }

  v48 = [NSString stringWithFormat:@"unable to get attributes for existing file to modify: %@", v25];
  v45 = DRCreateError(@"DeviceRecoveryError", 4, v48, @"unable to get attributes for existing file to modify: %@", v35, "[DeviceRecoveryBrain recoverTestFiles]", "/Library/Caches/com.apple.xbs/Sources/DeviceRecovery/DeviceRecoveryBrainSupport_Framework/DeviceRecoveryBrain.m", 0x26Au);

LABEL_42:
LABEL_43:

LABEL_44:
  v51 = v45;

  return v45;
}

- (void)scanForIssues:(id)issues
{
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = __37__DeviceRecoveryBrain_scanForIssues___block_invoke;
  v28[3] = &unk_2C510;
  issuesCopy = issues;
  v29 = issuesCopy;
  v5 = objc_retainBlock(v28);
  v6 = DRGetLogHandle(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v31 = "[DeviceRecoveryBrain scanForIssues:]";
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "%{public}s: ", buf, 0xCu);
  }

  if (!issuesCopy)
  {
    [DeviceRecoveryBrain scanForIssues:v7];
LABEL_11:
    v10 = 0;
LABEL_37:
    v11 = 0;
    goto LABEL_38;
  }

  if ([(DeviceRecoveryBrain *)self isInternalBuild])
  {
    issuesScanResultOverride = [(DeviceRecoveryBrain *)self issuesScanResultOverride];
    switch(issuesScanResultOverride)
    {
      case 1:
        v24 = [NSString stringWithFormat:@"issues scan operation forced to fail"];
        v10 = DRCreateError(@"DeviceRecoveryError", 4, v24, @"issues scan operation forced to fail", 0, "[DeviceRecoveryBrain scanForIssues:]", "/Library/Caches/com.apple.xbs/Sources/DeviceRecovery/DeviceRecoveryBrainSupport_Framework/DeviceRecoveryBrain.m", 0x2A1u);

        if (v10)
        {
          (*(issuesCopy + 2))(issuesCopy, v10, 0);
        }

        goto LABEL_37;
      case 3:
        v23 = DRGetLogHandle(issuesScanResultOverride);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446210;
          v31 = "[DeviceRecoveryBrain scanForIssues:]";
          _os_log_impl(&dword_0, v23, OS_LOG_TYPE_DEFAULT, "%{public}s: issues scan operation forced to require user approval", buf, 0xCu);
        }

        v34[0] = @"RequiredUserApprovalIconSymbolName";
        v34[1] = @"RequiredUserApprovalTitle";
        v35[0] = @"exclamationmark.triangle";
        v35[1] = @"User Approval Required";
        v34[2] = @"RequiredUserApprovalDescription";
        v34[3] = @"RequiredUserApprovalContinue";
        v35[2] = @"In order to recover this device, something needs to be done that has consequences.  Do you approve of this recovery operation?";
        v35[3] = @"Start Recovery";
        v34[4] = @"RequiredUserApprovalBack";
        v35[4] = @"Back";
        v11 = [NSDictionary dictionaryWithObjects:v35 forKeys:v34 count:5];
        goto LABEL_13;
      case 2:
        v9 = DRGetLogHandle(issuesScanResultOverride);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446210;
          v31 = "[DeviceRecoveryBrain scanForIssues:]";
          _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "%{public}s: issues scan operation forced to return no results", buf, 0xCu);
        }

        (*(issuesCopy + 2))(issuesCopy, 0, 0);
        goto LABEL_11;
    }
  }

  v11 = 0;
LABEL_13:
  testModeEnabled = [(DeviceRecoveryBrain *)self testModeEnabled];
  if (testModeEnabled)
  {
    v13 = DRGetLogHandle(testModeEnabled);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v31 = "[DeviceRecoveryBrain scanForIssues:]";
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "%{public}s: [TEST MODE] simulating issues scan", buf, 0xCu);
    }

    v14 = dispatch_time(0, 2000000000);
    messageQueue = [(DeviceRecoveryBrain *)self messageQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __37__DeviceRecoveryBrain_scanForIssues___block_invoke_164;
    block[3] = &unk_2C538;
    v27 = v5;
    v11 = v11;
    v26 = v11;
    dispatch_after(v14, messageQueue, block);
  }

  else
  {
    v16 = +[NSMutableArray array];
    if ([(DeviceRecoveryBrain *)self isInternalBuild]|| [(DeviceRecoveryBrain *)self isExternalBrain])
    {
      scanForTestFiles = [(DeviceRecoveryBrain *)self scanForTestFiles];
      v18 = scanForTestFiles;
      if (scanForTestFiles && [scanForTestFiles count])
      {
        [v16 addObjectsFromArray:v18];
      }
    }

    scanForERMContents = [(DeviceRecoveryBrain *)self scanForERMContents];
    v20 = scanForERMContents;
    if (scanForERMContents && [scanForERMContents count])
    {
      [v16 addObjectsFromArray:v20];
    }

    v21 = [v16 count];
    if (v21)
    {
      v22 = DRGetLogHandle(v21);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v31 = "[DeviceRecoveryBrain scanForIssues:]";
        v32 = 2114;
        v33 = v16;
        _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEFAULT, "%{public}s: Found repairable issues: %{public}@", buf, 0x16u);
      }
    }

    (v5[2])(v5, 0, v16, v11);
  }

  v10 = 0;
LABEL_38:
}

void __37__DeviceRecoveryBrain_scanForIssues___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v11 = a2;
  v7 = a3;
  v8 = a4;
  if (v11)
  {
    goto LABEL_2;
  }

  if (![v7 count])
  {
    if (!v8)
    {
LABEL_2:
      v9 = 0;
      goto LABEL_10;
    }

LABEL_8:
    v9 = +[NSMutableDictionary dictionary];
    goto LABEL_9;
  }

  v10 = [NSMutableDictionary dictionaryWithObject:v7 forKey:@"RepairableIssues"];
  v9 = v10;
  if (!v8)
  {
    goto LABEL_10;
  }

  if (!v10)
  {
    goto LABEL_8;
  }

LABEL_9:
  [v9 setObject:v8 forKeyedSubscript:@"RequiredUserApproval"];
LABEL_10:
  (*(*(a1 + 32) + 16))();
}

void __37__DeviceRecoveryBrain_scanForIssues___block_invoke_164(uint64_t a1)
{
  v2 = DRGetLogHandle(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v10 = "[DeviceRecoveryBrain scanForIssues:]_block_invoke";
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "%{public}s: [TEST MODE] simulated issues scan complete", buf, 0xCu);
  }

  v3 = *(a1 + 40);
  v6 = @"RepairableIssueDescription";
  v7 = @"Simulated issue found";
  v4 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];
  v8 = v4;
  v5 = [NSArray arrayWithObjects:&v8 count:1];
  (*(v3 + 16))(v3, 0, v5, *(a1 + 32));
}

- (void)reclaimFreeSpace:(id)space
{
  spaceCopy = space;
  v5 = DRGetLogHandle(spaceCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 136446210;
    *(&buf + 4) = "[DeviceRecoveryBrain reclaimFreeSpace:]";
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: ", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v38 = 0x3032000000;
  v39 = __Block_byref_object_copy__0;
  v40 = __Block_byref_object_dispose__0;
  v41 = 0;
  if (spaceCopy)
  {
    if ([(DeviceRecoveryBrain *)self testModeEnabled])
    {
      freeSpaceThresholdOverridden = [(DeviceRecoveryBrain *)self freeSpaceThresholdOverridden];
      if (freeSpaceThresholdOverridden)
      {
        v8 = DRGetLogHandle(freeSpaceThresholdOverridden);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          freeSpaceThreshold = [(DeviceRecoveryBrain *)self freeSpaceThreshold];
          *v34 = 136446466;
          *&v34[4] = "[DeviceRecoveryBrain reclaimFreeSpace:]";
          v35 = 2114;
          v36 = freeSpaceThreshold;
          _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "%{public}s: [TEST MODE] Attempting to free %{public}@ bytes as specified by override", v34, 0x16u);
        }

        v10 = [DeviceRecoveryBrainSpaceManager alloc];
        systemDataVolumeMountPath = [(DeviceRecoveryBrain *)self systemDataVolumeMountPath];
        userDataVolumeMountPath = [(DeviceRecoveryBrain *)self userDataVolumeMountPath];
        updateVolumeMountPath = [(DeviceRecoveryBrain *)self updateVolumeMountPath];
        v14 = [(DeviceRecoveryBrainSpaceManager *)v10 initWithMounts:systemDataVolumeMountPath userDataVolumeMountPath:userDataVolumeMountPath updateVolumeMountPath:updateVolumeMountPath];

        freeSpaceThreshold2 = [(DeviceRecoveryBrain *)self freeSpaceThreshold];
        v16 = [v14 freeSpaceOnMainContainerTillThreshold:freeSpaceThreshold2];
        v17 = *(*(&buf + 1) + 40);
        *(*(&buf + 1) + 40) = v16;
      }

      else
      {
        v14 = DRGetLogHandle(freeSpaceThresholdOverridden);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *v34 = 136446210;
          *&v34[4] = "[DeviceRecoveryBrain reclaimFreeSpace:]";
          _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "%{public}s: [TEST MODE]: Returning success for step", v34, 0xCu);
        }
      }

      messageQueue = [(DeviceRecoveryBrain *)self messageQueue];
      v29 = v32;
      v32[0] = _NSConcreteStackBlock;
      v32[1] = 3221225472;
      v32[2] = __40__DeviceRecoveryBrain_reclaimFreeSpace___block_invoke_168;
      v32[3] = &unk_2C560;
      v32[4] = spaceCopy;
      v32[5] = &buf;
      dispatch_async(messageQueue, v32);
    }

    else
    {
      isRunningInDeviceRecoveryEnvironment = [(DeviceRecoveryBrain *)self isRunningInDeviceRecoveryEnvironment];
      if (isRunningInDeviceRecoveryEnvironment)
      {
        v19 = DRGetLogHandle(isRunningInDeviceRecoveryEnvironment);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          [DeviceRecoveryBrain reclaimFreeSpace:];
        }

        v20 = [DeviceRecoveryBrainSpaceManager alloc];
        systemDataVolumeMountPath2 = [(DeviceRecoveryBrain *)self systemDataVolumeMountPath];
        userDataVolumeMountPath2 = [(DeviceRecoveryBrain *)self userDataVolumeMountPath];
        updateVolumeMountPath2 = [(DeviceRecoveryBrain *)self updateVolumeMountPath];
        v24 = [(DeviceRecoveryBrainSpaceManager *)v20 initWithMounts:systemDataVolumeMountPath2 userDataVolumeMountPath:userDataVolumeMountPath2 updateVolumeMountPath:updateVolumeMountPath2];

        freeSpaceThreshold3 = [(DeviceRecoveryBrain *)self freeSpaceThreshold];
        v26 = [v24 freeSpaceOnMainContainerTillThreshold:freeSpaceThreshold3];
        v27 = *(*(&buf + 1) + 40);
        *(*(&buf + 1) + 40) = v26;
      }

      else
      {
        v24 = DRGetLogHandle(isRunningInDeviceRecoveryEnvironment);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *v34 = 136446210;
          *&v34[4] = "[DeviceRecoveryBrain reclaimFreeSpace:]";
          _os_log_impl(&dword_0, v24, OS_LOG_TYPE_DEFAULT, "%{public}s: Operation not supported in this environment", v34, 0xCu);
        }
      }

      messageQueue2 = [(DeviceRecoveryBrain *)self messageQueue];
      v29 = block;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = __40__DeviceRecoveryBrain_reclaimFreeSpace___block_invoke;
      block[3] = &unk_2C560;
      block[4] = spaceCopy;
      block[5] = &buf;
      dispatch_async(messageQueue2, block);
    }

    v31 = v29[4];
  }

  else
  {
    DRGetLogHandle(v6);
    objc_claimAutoreleasedReturnValue();
    [DeviceRecoveryBrain reclaimFreeSpace:];
    v31 = *v34;
  }

  _Block_object_dispose(&buf, 8);
}

- (void)recoverDevice:(id)device
{
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = __37__DeviceRecoveryBrain_recoverDevice___block_invoke;
  v19[3] = &unk_2C588;
  v19[4] = self;
  deviceCopy = device;
  v20 = deviceCopy;
  v5 = objc_retainBlock(v19);
  v6 = DRGetLogHandle(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    *&buf[4] = "[DeviceRecoveryBrain recoverDevice:]";
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "%{public}s: ", buf, 0xCu);
  }

  v8 = DRGetLogHandle(v7);
  v9 = v8;
  if (!deviceCopy)
  {
    [DeviceRecoveryBrain recoverDevice:v8];
    goto LABEL_20;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    recoveryResultOverride = [(DeviceRecoveryBrain *)self recoveryResultOverride];
    *buf = 136446466;
    *&buf[4] = "[DeviceRecoveryBrain recoverDevice:]";
    v23 = 1024;
    v24 = recoveryResultOverride;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "%{public}s: recoveryResultOverride = %d", buf, 0x12u);
  }

  if ([(DeviceRecoveryBrain *)self isInternalBuild]&& [(DeviceRecoveryBrain *)self recoveryResultOverride]== 1)
  {
    v11 = [NSString stringWithFormat:@"recovery operation forced to fail"];
    v12 = DRCreateError(@"DeviceRecoveryError", 4, v11, @"recovery operation forced to fail", 0, "[DeviceRecoveryBrain recoverDevice:]", "/Library/Caches/com.apple.xbs/Sources/DeviceRecovery/DeviceRecoveryBrainSupport_Framework/DeviceRecoveryBrain.m", 0x341u);

    if (v12)
    {
LABEL_9:
      (*(deviceCopy + 2))(deviceCopy, v12, 0);
    }
  }

  else
  {
    testModeEnabled = [(DeviceRecoveryBrain *)self testModeEnabled];
    if ((testModeEnabled & 1) == 0)
    {
      if (([(DeviceRecoveryBrain *)self isInternalBuild]|| [(DeviceRecoveryBrain *)self isExternalBrain]) && ([(DeviceRecoveryBrain *)self recoverTestFiles], objc_claimAutoreleasedReturnValue()))
      {
        [DeviceRecoveryBrain recoverDevice:];
      }

      else
      {
        if (![(DeviceRecoveryBrain *)self ERMContentsPresent]|| ([(DeviceRecoveryBrain *)self removeERMContents], !objc_claimAutoreleasedReturnValue()))
        {
          (v5[2])(v5, 0);
          goto LABEL_20;
        }

        [DeviceRecoveryBrain recoverDevice:];
      }

      v12 = *buf;

      goto LABEL_9;
    }

    v14 = DRGetLogHandle(testModeEnabled);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      *&buf[4] = "[DeviceRecoveryBrain recoverDevice:]";
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "%{public}s: [TEST MODE] simulating device recovery", buf, 0xCu);
    }

    v15 = dispatch_time(0, 5000000000);
    messageQueue = [(DeviceRecoveryBrain *)self messageQueue];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = __37__DeviceRecoveryBrain_recoverDevice___block_invoke_196;
    v17[3] = &unk_2C5B0;
    v18 = v5;
    dispatch_after(v15, messageQueue, v17);
  }

LABEL_20:
}

void __37__DeviceRecoveryBrain_recoverDevice___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v3 = 0;
  }

  else if ([*(a1 + 32) isInternalBuild])
  {
    if ([*(a1 + 32) recoveryResultOverride] == 2 || objc_msgSend(*(a1 + 32), "recoveryResultOverride") == 4)
    {
      v3 = [NSMutableDictionary dictionaryWithCapacity:1];
      [v3 setObject:&__kCFBooleanTrue forKeyedSubscript:@"OSBootRecoveryPhaseRequired"];
      [v3 setObject:&off_33AD8 forKeyedSubscript:@"OSRecoveryState"];
    }

    else
    {
      v3 = 0;
    }

    if ([*(a1 + 32) recoveryResultOverride] == 3 || objc_msgSend(*(a1 + 32), "recoveryResultOverride") == 4)
    {
      if (!v3)
      {
        v3 = [NSMutableDictionary dictionaryWithCapacity:1];
      }

      [v3 setObject:&__kCFBooleanTrue forKeyedSubscript:@"PostUnlockRecoveryPhaseRequired"];
      [v3 setObject:&off_33B00 forKeyedSubscript:@"OSRecoveryState"];
    }
  }

  else
  {
    v3 = 0;
  }

  (*(*(a1 + 40) + 16))();
}

uint64_t __37__DeviceRecoveryBrain_recoverDevice___block_invoke_196(uint64_t a1)
{
  v2 = DRGetLogHandle(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136446210;
    v5 = "[DeviceRecoveryBrain recoverDevice:]_block_invoke";
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "%{public}s: [TEST MODE] simulated device recovery complete", &v4, 0xCu);
  }

  return (*(*(a1 + 32) + 16))();
}

- (void)recoverDeviceFromBootedOS:(id)s userUnlocked:(BOOL)unlocked completion:(id)completion
{
  unlockedCopy = unlocked;
  completionCopy = completion;
  v8 = DRGetLogHandle(completionCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v17 = "[DeviceRecoveryBrain recoverDeviceFromBootedOS:userUnlocked:completion:]";
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "%{public}s: ", buf, 0xCu);
  }

  testModeEnabled = [(DeviceRecoveryBrain *)self testModeEnabled];
  if (testModeEnabled)
  {
    v10 = DRGetLogHandle(testModeEnabled);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v17 = "[DeviceRecoveryBrain recoverDeviceFromBootedOS:userUnlocked:completion:]";
      v18 = 1024;
      v19 = unlockedCopy;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "%{public}s: [TEST MODE] simulating bootedOS device recovery phase - userUnlocked: %d", buf, 0x12u);
    }

    v11 = dispatch_time(0, 5000000000);
    messageQueue = [(DeviceRecoveryBrain *)self messageQueue];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = __73__DeviceRecoveryBrain_recoverDeviceFromBootedOS_userUnlocked_completion___block_invoke;
    v13[3] = &unk_2C5D8;
    v15 = unlockedCopy;
    v14 = completionCopy;
    dispatch_after(v11, messageQueue, v13);
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0, 0);
  }
}

uint64_t __73__DeviceRecoveryBrain_recoverDeviceFromBootedOS_userUnlocked_completion___block_invoke(uint64_t a1)
{
  v2 = DRGetLogHandle(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v5 = 136446466;
    v6 = "[DeviceRecoveryBrain recoverDeviceFromBootedOS:userUnlocked:completion:]_block_invoke";
    v7 = 1024;
    v8 = v3;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "%{public}s: [TEST MODE] simulated bootedOS device recovery phase complete - userUnlocked: %d", &v5, 0x12u);
  }

  return (*(*(a1 + 32) + 16))();
}

- (NSXPCConnection)xpcConnection
{
  WeakRetained = objc_loadWeakRetained(&self->_xpcConnection);

  return WeakRetained;
}

- (void)initExternalBrain:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v2 = DRGetLogHandle(a1);
  if (OUTLINED_FUNCTION_17(v2))
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_3_0();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0x3Au);
  }
}

- (void)startService:(uint64_t *)a1 .cold.1(uint64_t *a1)
{
  v3 = DRGetLogHandle(a1);
  if (OUTLINED_FUNCTION_5_0(v3))
  {
    v18 = 136447490;
    OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_11_0(&dword_0, v12, v13, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v14, v15, v16, v17, v18);
  }

  v4 = [NSString stringWithFormat:@"Unable to create message dispatch_queue"];
  v5 = OUTLINED_FUNCTION_27();
  *a1 = DRCreateError(v5, v6, v7, v8, v9, v10, v11, 0x84u);
}

- (uint64_t)startService:.cold.2()
{
  OUTLINED_FUNCTION_13();
  v4 = DRGetLogHandle(v3);
  if (OUTLINED_FUNCTION_15(v4))
  {
    v15[0] = 136447490;
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_1();
    *(&v15[13] + 2) = 129;
    OUTLINED_FUNCTION_10(&dword_0, v13, v14, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v15);
  }

  *v1 = [NSString stringWithFormat:@"Unable to create NSXPCListener for service: %@", @"com.apple.DeviceRecoveryBuiltinBrain"];
  v5 = OUTLINED_FUNCTION_32();
  result = DRCreateError(v5, v6, v7, v8, v9, v10, v11, 0x81u);
  *v0 = result;
  return result;
}

- (uint64_t)startService:(uint64_t *)a3 .cold.3(NSObject *a1, uint64_t *a2, uint64_t *a3)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    v20 = 136447490;
    OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_10_0(&dword_0, v14, v15, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v16, v17, v18, v19, v20);
  }

  *a2 = [NSString stringWithFormat:@"missing service name in brain"];
  v6 = OUTLINED_FUNCTION_32();
  result = DRCreateError(v6, v7, v8, v9, v10, v11, v12, 0x7Du);
  *a3 = result;
  return result;
}

- (void)client:hasBooleanEntitlement:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x3Au);
}

- (void)client:hasBooleanEntitlement:.cold.2()
{
  OUTLINED_FUNCTION_21();
  v1 = DRGetLogHandle(v0);
  if (OUTLINED_FUNCTION_25(v1))
  {
    v4[0] = 136447490;
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_12();
    v5 = "";
    OUTLINED_FUNCTION_4();
    v6 = 184;
    OUTLINED_FUNCTION_15_0(&dword_0, v2, v3, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v4);
  }

  OUTLINED_FUNCTION_26();
}

- (void)client:hasBooleanEntitlement:.cold.3()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x3Au);
}

- (void)client:(void *)a1 hasBooleanEntitlement:.cold.4(void *a1)
{
  [a1 processIdentifier];
  v1 = _ProcessNameForPid();
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);
}

- (void)client:hasBooleanEntitlement:.cold.5()
{
  OUTLINED_FUNCTION_23();
  v4 = DRGetLogHandle(v3);
  if (OUTLINED_FUNCTION_15(v4))
  {
    v11 = 136447490;
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_10_0(&dword_0, v5, v6, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v7, v8, v9, v10, v11);
  }

  *v1 = 0;
  *v0 = v2;
}

- (void)client:hasBooleanEntitlement:.cold.6()
{
  OUTLINED_FUNCTION_23();
  v4 = DRGetLogHandle(v3);
  if (OUTLINED_FUNCTION_15(v4))
  {
    v11 = 136447490;
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_10_0(&dword_0, v5, v6, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v7, v8, v9, v10, v11);
  }

  *v1 = 0;
  *v0 = v2;
}

- (void)listener:shouldAcceptNewConnection:.cold.1()
{
  OUTLINED_FUNCTION_23();
  v1 = DRGetLogHandle(v0);
  if (OUTLINED_FUNCTION_15(v1))
  {
    v8 = 136447490;
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_10_0(&dword_0, v2, v3, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v4, v5, v6, v7, v8);
  }

  OUTLINED_FUNCTION_19_0();
}

- (void)listener:(uint64_t)a1 shouldAcceptNewConnection:.cold.2(uint64_t a1)
{
  v2 = DRGetLogHandle(a1);
  if (OUTLINED_FUNCTION_17(v2))
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_3_0();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0x3Au);
  }
}

- (void)listener:(uint64_t)a1 shouldAcceptNewConnection:.cold.3(uint64_t a1)
{
  v2 = DRGetLogHandle(a1);
  if (OUTLINED_FUNCTION_17(v2))
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_3_0();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0x3Au);
  }
}

- (void)listener:shouldAcceptNewConnection:.cold.4()
{
  OUTLINED_FUNCTION_23();
  v1 = DRGetLogHandle(v0);
  if (OUTLINED_FUNCTION_15(v1))
  {
    v8 = 136447490;
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_10_0(&dword_0, v2, v3, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v4, v5, v6, v7, v8);
  }

  OUTLINED_FUNCTION_19_0();
}

- (void)configureBrain:(void *)a1 completion:.cold.6(void *a1)
{
  v3 = DRGetLogHandle(a1);
  if (OUTLINED_FUNCTION_5_0(v3))
  {
    v10 = 136447490;
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_11_0(&dword_0, v4, v5, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v6, v7, v8, v9, v10);
  }
}

- (void)configureBrain:(void *)a1 completion:.cold.7(void *a1)
{
  v3 = DRGetLogHandle(a1);
  if (OUTLINED_FUNCTION_5_0(v3))
  {
    v10 = 136447490;
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_11_0(&dword_0, v4, v5, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v6, v7, v8, v9, v10);
  }
}

- (void)configureBrain:(void *)a1 completion:.cold.8(void *a1)
{
  v3 = DRGetLogHandle(a1);
  if (OUTLINED_FUNCTION_5_0(v3))
  {
    v10 = 136447490;
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_11_0(&dword_0, v4, v5, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v6, v7, v8, v9, v10);
  }
}

- (void)configureBrain:completion:.cold.9()
{
  OUTLINED_FUNCTION_13();
  v4 = DRGetLogHandle(v3);
  if (OUTLINED_FUNCTION_15(v4))
  {
    v15[0] = 136447490;
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_1();
    *(&v15[13] + 2) = 300;
    OUTLINED_FUNCTION_10(&dword_0, v13, v14, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v15);
  }

  v5 = [NSString stringWithFormat:@"brain config dict missing '%@' attribute", v1];
  v6 = OUTLINED_FUNCTION_8_1();
  *v0 = DRCreateError(v6, v7, v8, v9, v10, v11, v12, 0x12Cu);
}

- (void)configureBrain:completion:.cold.10()
{
  OUTLINED_FUNCTION_13();
  v4 = DRGetLogHandle(v3);
  if (OUTLINED_FUNCTION_15(v4))
  {
    v15[0] = 136447490;
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_1();
    *(&v15[13] + 2) = 286;
    OUTLINED_FUNCTION_10(&dword_0, v13, v14, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v15);
  }

  v5 = [NSString stringWithFormat:@"brain config dict missing '%@' attribute", v1];
  v6 = OUTLINED_FUNCTION_8_1();
  *v0 = DRCreateError(v6, v7, v8, v9, v10, v11, v12, 0x11Eu);
}

- (void)configureBrain:completion:.cold.11()
{
  OUTLINED_FUNCTION_13();
  v4 = DRGetLogHandle(v3);
  if (OUTLINED_FUNCTION_15(v4))
  {
    v15[0] = 136447490;
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_1();
    *(&v15[13] + 2) = 280;
    OUTLINED_FUNCTION_10(&dword_0, v13, v14, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v15);
  }

  v5 = [NSString stringWithFormat:@"brain config dict missing '%@' attribute", v1];
  v6 = OUTLINED_FUNCTION_8_1();
  *v0 = DRCreateError(v6, v7, v8, v9, v10, v11, v12, 0x118u);
}

- (void)configureBrain:completion:.cold.12()
{
  OUTLINED_FUNCTION_13();
  v4 = DRGetLogHandle(v3);
  if (OUTLINED_FUNCTION_15(v4))
  {
    v15[0] = 136447490;
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_1();
    *(&v15[13] + 2) = 274;
    OUTLINED_FUNCTION_10(&dword_0, v13, v14, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v15);
  }

  v5 = [NSString stringWithFormat:@"brain config dict missing '%@' attribute", v1];
  v6 = OUTLINED_FUNCTION_8_1();
  *v0 = DRCreateError(v6, v7, v8, v9, v10, v11, v12, 0x112u);
}

- (void)configureBrain:(void *)a1 completion:.cold.13(void *a1)
{
  v3 = DRGetLogHandle(a1);
  if (OUTLINED_FUNCTION_5_0(v3))
  {
    v10 = 136447490;
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_11_0(&dword_0, v4, v5, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v6, v7, v8, v9, v10);
  }

  *a1 = v1;
}

- (void)checkFreeSpace:(NSObject *)a1 .cold.1(NSObject *a1)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_3_0();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0x3Au);
  }
}

- (void)checkFreeSpace:.cold.2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x3Au);
}

- (void)ERMContentsPresent
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (uint64_t)removeERMContents
{
  v6 = DRGetLogHandle(self);
  if (OUTLINED_FUNCTION_25(v6))
  {
    v17[0] = 136447490;
    OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_4_1();
    *(&v17[13] + 2) = 463;
    OUTLINED_FUNCTION_15_0(&dword_0, v15, v16, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v17);
  }

  *a2 = [NSString stringWithFormat:@"failed to remove Extended Research data"];
  v7 = OUTLINED_FUNCTION_30();
  result = DRCreateError(v7, v8, v9, v10, v11, v12, v13, 0x1CFu);
  *a3 = result;
  return result;
}

- (void)filesInDirectory:withPrefix:extension:excludeSymlinks:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x3Au);
}

- (void)filesInDirectory:withPrefix:extension:excludeSymlinks:.cold.2()
{
  v4[0] = 136446722;
  OUTLINED_FUNCTION_20();
  v5 = v0;
  v6 = v1;
  v7 = v2;
  _os_log_error_impl(&dword_0, v3, OS_LOG_TYPE_ERROR, "%{public}s: error getting contents of directory '%{public}@' - %{public}@", v4, 0x20u);
}

- (void)filesInDirectory:withPrefix:extension:excludeSymlinks:.cold.3()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x3Au);
}

- (void)scanForTestFiles
{
  v2 = DRGetLogHandle(self);
  if (OUTLINED_FUNCTION_17(v2))
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_3_0();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0x3Au);
  }
}

- (void)modifyTestFile:(uint64_t *)a1 contents:.cold.1(uint64_t *a1)
{
  v3 = DRGetLogHandle(a1);
  if (OUTLINED_FUNCTION_5_0(v3))
  {
    v18 = 136447490;
    OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_11_0(&dword_0, v12, v13, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v14, v15, v16, v17, v18);
  }

  v4 = [NSString stringWithFormat:@"nil testFileContents"];
  v5 = OUTLINED_FUNCTION_27();
  *a1 = DRCreateError(v5, v6, v7, v8, v9, v10, v11, 0x238u);
}

- (void)scanForIssues:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v2 = DRGetLogHandle(a1);
  if (OUTLINED_FUNCTION_17(v2))
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_3_0();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0x3Au);
  }
}

- (void)reclaimFreeSpace:.cold.2()
{
  OUTLINED_FUNCTION_13();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v9 = 136447490;
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_11_0(&dword_0, v3, v4, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v5, v6, v7, v8, v9);
  }

  *v0 = v1;
}

- (void)recoverDevice:.cold.1()
{
  OUTLINED_FUNCTION_21();
  v1 = DRGetLogHandle(v0);
  if (OUTLINED_FUNCTION_25(v1))
  {
    v4[0] = 136447490;
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_12();
    v5 = "";
    OUTLINED_FUNCTION_4();
    v6 = 837;
    OUTLINED_FUNCTION_15_0(&dword_0, v2, v3, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v4);
  }

  OUTLINED_FUNCTION_26();
}

- (void)recoverDevice:.cold.2()
{
  OUTLINED_FUNCTION_21();
  v1 = DRGetLogHandle(v0);
  if (OUTLINED_FUNCTION_25(v1))
  {
    v4[0] = 136447490;
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_12();
    v5 = "";
    OUTLINED_FUNCTION_4();
    v6 = 843;
    OUTLINED_FUNCTION_15_0(&dword_0, v2, v3, "%{public}s: %{public}s: AssertMacros: %{public}s, %{public}s file: %{public}s, line: %{public}d\n", v4);
  }

  OUTLINED_FUNCTION_26();
}

- (void)recoverDevice:(NSObject *)a1 .cold.3(NSObject *a1)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_3_0();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0x3Au);
  }
}

@end