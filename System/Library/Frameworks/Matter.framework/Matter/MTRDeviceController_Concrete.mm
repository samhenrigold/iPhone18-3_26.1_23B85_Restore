@interface MTRDeviceController_Concrete
+ (BOOL)checkForError:(ChipError)error logMsg:(id)msg error:(id *)a5;
- (BOOL)_cancelCommissioning:(id)commissioning forNodeID:(id)d error:(id *)error;
- (BOOL)_commissionNodeWithID:(id)d commissioningParams:(id)params error:(id *)error;
- (BOOL)_continueCommissioningDevice:(void *)device ignoreAttestationFailure:(BOOL)failure error:(id *)error;
- (BOOL)addServerEndpoint:(id)endpoint;
- (BOOL)cancelCommissioningForNodeID:(id)d error:(id *)error;
- (BOOL)checkForInitError:(BOOL)error logMsg:(id)msg;
- (BOOL)checkForStartError:(ChipError)error logMsg:(id)msg;
- (BOOL)checkIsRunning:(id *)running;
- (BOOL)commission:(id)commission withCommissioningID:(id)d commissioningParams:(id)params error:(id *)error;
- (BOOL)commissionNodeWithID:(id)d commissioningParams:(id)params error:(id *)error;
- (BOOL)continueCommissioning:(id)commissioning withOperationalDataset:(id)dataset error:(id *)error;
- (BOOL)continueCommissioning:(id)commissioning withWiFiSSID:(id)d credentials:(id)credentials error:(id *)error;
- (BOOL)continueCommissioningAfterAttestation:(id)attestation forOpaqueHandle:(void *)handle error:(id *)error;
- (BOOL)continueCommissioningDevice:(void *)device ignoreAttestationFailure:(BOOL)failure error:(id *)error;
- (BOOL)definitelyUsesThreadForDevice:(unint64_t)device;
- (BOOL)getBaseDevice:(unint64_t)device queue:(id)queue completionHandler:(id)handler;
- (BOOL)matchesPendingShutdownControllerWithOperationalCertificate:(id)certificate andRootCertificate:(id)rootCertificate;
- (BOOL)openPairingWindow:(unint64_t)window duration:(unint64_t)duration error:(id *)error;
- (BOOL)pairDevice:(unint64_t)device address:(id)address port:(unsigned __int16)port setupPINCode:(unsigned int)code error:(id *)error;
- (BOOL)pairDevice:(unint64_t)device discriminator:(unsigned __int16)discriminator setupPINCode:(unsigned int)code error:(id *)error;
- (BOOL)pairDevice:(unint64_t)device onboardingPayload:(id)payload error:(id *)error;
- (BOOL)setOperationalCertificateIssuer:(id)issuer queue:(id)queue;
- (BOOL)setupCommissioningSessionWithDiscoveredDevice:(id)device payload:(id)payload newNodeID:(id)d error:(id *)error;
- (BOOL)setupCommissioningSessionWithPayload:(id)payload newNodeID:(id)d error:(id *)error;
- (BOOL)startBrowseForCommissionables:(id)commissionables queue:(id)queue;
- (BOOL)startup:(id)startup;
- (BOOL)stopBrowseForCommissionables;
- (BOOL)stopCommissioning:(id)commissioning forCommissioningID:(id)d;
- (BOOL)syncRunOnWorkQueueWithBoolReturnValue:(id)value error:(id *)error;
- (ChipError)isRunningOnFabric:(void *)fabric fabricIndex:(unsigned __int8)index isRunning:(BOOL *)running;
- (ChipError)startCommissioning:(id)commissioning withCommissioningID:(id)d;
- (MTRCommissioningOperation)currentCommissioning;
- (MTRDeviceController_Concrete)initWithFactory:(id)factory queue:(id)queue storageDelegate:(id)delegate storageDelegateQueue:(id)delegateQueue otaProviderDelegate:(id)providerDelegate otaProviderDelegateQueue:(id)providerDelegateQueue uniqueIdentifier:(id)identifier concurrentSubscriptionPoolSize:(unint64_t)self0 storageBehaviorConfiguration:(id)self1 startSuspended:(BOOL)self2;
- (MTRDeviceController_Concrete)initWithParameters:(id)parameters error:(id *)error;
- (NSString)description;
- (id).cxx_construct;
- (id)_setupDeviceForNodeID:(id)d prefetchedClusterData:(id)data;
- (id)accessGrantsForClusterPath:(id)path;
- (id)attestationChallengeForDeviceID:(id)d;
- (id)baseDeviceForNodeID:(id)d;
- (id)compressedFabricID;
- (id)deviceBeingCommissionedWithNodeID:(id)d error:(id *)error;
- (id)fetchAttestationChallengeForDeviceId:(unint64_t)id;
- (id)neededReadPrivilegeForClusterID:(id)d attributeID:(id)iD;
- (id)nodesWithStoredData;
- (id)openPairingWindowWithPIN:(unint64_t)n duration:(unint64_t)duration discriminator:(unint64_t)discriminator setupPIN:(unint64_t)iN error:(id *)error;
- (id)syncRunOnWorkQueueWithReturnValue:(id)value error:(id *)error;
- (unsigned)sessionTransportTypeForDevice:(id)device;
- (void)_commissioningDone:(id)done;
- (void)_controllerResumed;
- (void)_controllerSuspended;
- (void)addRunAssertion;
- (void)asyncDispatchToMatterQueue:(id)queue errorHandler:(id)handler;
- (void)asyncGetCommissionerOnMatterQueue:(id)queue errorHandler:(id)handler;
- (void)cleanup;
- (void)cleanupAfterStartup;
- (void)clearDeviceAttestationDelegateBridge;
- (void)clearPendingShutdown;
- (void)commissioning:(id)commissioning completedDeviceAttestation:(id)attestation error:(id)error completion:(id)completion;
- (void)commissioning:(id)commissioning failedWithError:(id)error forDeviceID:(id)d metrics:(id)metrics;
- (void)commissioning:(id)commissioning paseSessionEstablishmentComplete:(id)complete;
- (void)commissioning:(id)commissioning provisionedNetworkCredentialsForDeviceID:(id)d;
- (void)commissioning:(id)commissioning readCommissioneeInfo:(id)info;
- (void)commissioning:(id)commissioning statusUpdate:(int64_t)update;
- (void)commissioning:(id)commissioning succeededForNodeID:(id)d metrics:(id)metrics;
- (void)commissioningDone:(id)done;
- (void)directlyGetSessionForNode:(unint64_t)node completion:(id)completion;
- (void)downloadLogFromNodeWithID:(id)d type:(int64_t)type timeout:(double)timeout queue:(id)queue completion:(id)completion;
- (void)finalShutdown;
- (void)forgetDeviceWithNodeID:(id)d;
- (void)getSessionForCommissioneeDevice:(unint64_t)device completion:(id)completion;
- (void)getSessionForNode:(unint64_t)node completion:(id)completion;
- (void)invalidateCASESessionForNode:(id)node;
- (void)operationalInstanceAdded:(id)added;
- (void)removeRunAssertion;
- (void)removeServerEndpointInternal:(id)internal queue:(id)queue completion:(id)completion;
- (void)removeServerEndpointOnMatterQueue:(id)queue;
- (void)setNocChainIssuer:(id)issuer queue:(id)queue;
- (void)setPairingDelegate:(id)delegate queue:(id)queue;
- (void)shutDownCppController;
- (void)shutdown;
- (void)syncRunOnWorkQueue:(id)queue error:(id *)error;
@end

@implementation MTRDeviceController_Concrete

- (MTRDeviceController_Concrete)initWithParameters:(id)parameters error:(id *)error
{
  v14 = *MEMORY[0x277D85DE8];
  parametersCopy = parameters;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = parametersCopy;
    v8 = +[MTRDeviceControllerFactory sharedInstance];
    v9 = sub_238DCBAF4(v8, self, v7, error);
  }

  else
  {
    v10 = sub_2393D9044(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v13 = parametersCopy;
      _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_ERROR, "Expected MTRDeviceControllerParameters but got: %@", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1, "Expected MTRDeviceControllerParameters but got: %@", parametersCopy);
    }

    if (error)
    {
      sub_23921C1E4(MTRError, 0xA60000002FLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDeviceController_Concrete.mm");
      *error = v9 = 0;
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (MTRDeviceController_Concrete)initWithFactory:(id)factory queue:(id)queue storageDelegate:(id)delegate storageDelegateQueue:(id)delegateQueue otaProviderDelegate:(id)providerDelegate otaProviderDelegateQueue:(id)providerDelegateQueue uniqueIdentifier:(id)identifier concurrentSubscriptionPoolSize:(unint64_t)self0 storageBehaviorConfiguration:(id)self1 startSuspended:(BOOL)self2
{
  v59 = *MEMORY[0x277D85DE8];
  factoryCopy = factory;
  queueCopy = queue;
  delegateCopy = delegate;
  delegateQueueCopy = delegateQueue;
  providerDelegateCopy = providerDelegate;
  providerDelegateQueueCopy = providerDelegateQueue;
  identifierCopy = identifier;
  configurationCopy = configuration;
  v57.receiver = self;
  v57.super_class = MTRDeviceController_Concrete;
  v19 = [(MTRDeviceController *)&v57 initForSubclasses:suspended uniqueIdentifier:identifierCopy];
  v20 = v19;
  v21 = v19;
  if (!v19)
  {
    v39 = 0;
    goto LABEL_60;
  }

  v19[188] = 0;
  *(v19 + 1512) = 0;
  *(v19 + 379) = 0;
  objc_storeWeak(v19 + 201, 0);
  v22 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v23 = dispatch_queue_create("org.csa-iot.matter.framework.commissioning.workqueue", v22);
  v24 = v21[190];
  v21[190] = v23;

  if (delegateCopy)
  {
    if (!delegateQueueCopy)
    {
      v38 = sub_2393D9044(0);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_238DAE000, v38, OS_LOG_TYPE_ERROR, "storageDelegate provided without storageDelegateQueue", buf, 2u);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393D5320(0, 1, "storageDelegate provided without storageDelegateQueue");
      }

      goto LABEL_26;
    }

    v25 = delegateCopy;
    if (+[MTRDeviceControllerLocalTestStorage localTestStorageEnabled])
    {
      v26 = [[MTRDeviceControllerLocalTestStorage alloc] initWithPassThroughStorage:v25];

      v25 = v26;
    }

    v27 = [[MTRDeviceControllerDataStore alloc] initWithController:v21 storageDelegate:v25 storageDelegateQueue:delegateQueueCopy];
    v28 = v20[193];
    v20[193] = v27;

    v29 = v20[193] == 0;
    if (v29)
    {
      goto LABEL_26;
    }
  }

  else if (+[MTRDeviceControllerLocalTestStorage localTestStorageEnabled])
  {
    v30 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v31 = dispatch_queue_create("org.csa-iot.matter.framework.devicecontroller.localteststorage", v30);

    v32 = [[MTRDeviceControllerLocalTestStorage alloc] initWithPassThroughStorage:0];
    v33 = [[MTRDeviceControllerDataStore alloc] initWithController:v21 storageDelegate:v32 storageDelegateQueue:v31];
    v34 = v20[193];
    v20[193] = v33;

    v35 = v20[193] == 0;
    if (v35)
    {
      goto LABEL_26;
    }
  }

  if (providerDelegateCopy || !providerDelegateQueueCopy)
  {
    if (!providerDelegateCopy || providerDelegateQueueCopy)
    {
      if (!providerDelegateCopy)
      {
        goto LABEL_38;
      }

      if ((objc_opt_respondsToSelector() & 1) == 0 && (objc_opt_respondsToSelector() & 1) == 0)
      {
        v43 = sub_2393D9044(0);
        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_238DAE000, v43, OS_LOG_TYPE_ERROR, "Error: MTROTAProviderDelegate does not support handleQueryImageForNodeID", buf, 2u);
        }

        if (sub_2393D5398(1u))
        {
          sub_2393D5320(0, 1, "Error: MTROTAProviderDelegate does not support handleQueryImageForNodeID");
        }

        goto LABEL_26;
      }

      if ((objc_opt_respondsToSelector() & 1) == 0 && (objc_opt_respondsToSelector() & 1) == 0)
      {
        v44 = sub_2393D9044(0);
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_238DAE000, v44, OS_LOG_TYPE_ERROR, "Error: MTROTAProviderDelegate does not support handleApplyUpdateRequestForNodeID", buf, 2u);
        }

        if (sub_2393D5398(1u))
        {
          sub_2393D5320(0, 1, "Error: MTROTAProviderDelegate does not support handleApplyUpdateRequestForNodeID");
        }

        goto LABEL_26;
      }

      if ((objc_opt_respondsToSelector() & 1) == 0 && (objc_opt_respondsToSelector() & 1) == 0)
      {
        v45 = sub_2393D9044(0);
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_238DAE000, v45, OS_LOG_TYPE_ERROR, "Error: MTROTAProviderDelegate does not support handleNotifyUpdateAppliedForNodeID", buf, 2u);
        }

        if (sub_2393D5398(1u))
        {
          sub_2393D5320(0, 1, "Error: MTROTAProviderDelegate does not support handleNotifyUpdateAppliedForNodeID");
        }

        goto LABEL_26;
      }

      if ((objc_opt_respondsToSelector() & 1) == 0 && (objc_opt_respondsToSelector() & 1) == 0)
      {
        v46 = sub_2393D9044(0);
        if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_238DAE000, v46, OS_LOG_TYPE_ERROR, "Error: MTROTAProviderDelegate does not support handleBDXTransferSessionBeginForNodeID", buf, 2u);
        }

        if (sub_2393D5398(1u))
        {
          sub_2393D5320(0, 1, "Error: MTROTAProviderDelegate does not support handleBDXTransferSessionBeginForNodeID");
        }

        goto LABEL_26;
      }

      if (objc_opt_respondsToSelector() & 1) != 0 || (objc_opt_respondsToSelector())
      {
LABEL_38:
        objc_storeStrong(v20 + 195, providerDelegate);
        objc_storeStrong(v20 + 196, providerDelegateQueue);
        objc_storeStrong(v20 + 192, queue);
        objc_storeStrong(v20 + 194, factory);
        v40 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v41 = v21[209];
        v21[209] = v40;

        v42 = v21[197];
        v21[197] = 0;

        operator new();
      }

      v47 = sub_2393D9044(0);
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_238DAE000, v47, OS_LOG_TYPE_ERROR, "Error: MTROTAProviderDelegate does not support handleBDXQueryForNodeID", buf, 2u);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393D5320(0, 1, "Error: MTROTAProviderDelegate does not support handleBDXQueryForNodeID");
      }
    }

    else
    {
      v37 = sub_2393D9044(0);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_238DAE000, v37, OS_LOG_TYPE_ERROR, "Must have otaProviderDelegateQueue when we have otaProviderDelegate", buf, 2u);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393D5320(0, 1, "Must have otaProviderDelegateQueue when we have otaProviderDelegate");
      }
    }
  }

  else
  {
    v36 = sub_2393D9044(0);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v36, OS_LOG_TYPE_ERROR, "Must have otaProviderDelegate when we have otaProviderDelegateQueue", buf, 2u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1, "Must have otaProviderDelegate when we have otaProviderDelegateQueue");
    }
  }

LABEL_26:
  v39 = 0;
LABEL_60:

  return v39;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  uniqueIdentifier = [(MTRDeviceController *)self uniqueIdentifier];
  isSuspended = [(MTRDeviceController *)self isSuspended];
  v8 = @"NO";
  if (isSuspended)
  {
    v8 = @"YES";
  }

  v9 = [v3 stringWithFormat:@"<%@: %p, uuid: %@, suspended: %@>", v5, self, uniqueIdentifier, v8];

  return v9;
}

- (void)_controllerSuspended
{
  v3 = self->_factory;
  chipWorkQueue = self->_chipWorkQueue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2392858F0;
  v6[3] = &unk_278A72298;
  v7 = v3;
  selfCopy = self;
  v5 = v3;
  dispatch_async(chipWorkQueue, v6);
}

- (void)_controllerResumed
{
  v3 = self->_factory;
  chipWorkQueue = self->_chipWorkQueue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_239285A1C;
  v6[3] = &unk_278A72298;
  v7 = v3;
  selfCopy = self;
  v5 = v3;
  dispatch_async(chipWorkQueue, v6);
}

- (BOOL)matchesPendingShutdownControllerWithOperationalCertificate:(id)certificate andRootCertificate:(id)rootCertificate
{
  certificateCopy = certificate;
  rootCertificateCopy = rootCertificate;
  v8 = rootCertificateCopy;
  v9 = 0;
  if (certificateCopy && rootCertificateCopy)
  {
    v10 = [MTRDeviceControllerParameters nodeIDFromNOC:certificateCopy];
    v11 = [MTRDeviceControllerParameters fabricIDFromNOC:certificateCopy];
    v12 = [MTRDeviceControllerParameters publicKeyFromCertificate:v8];
    os_unfair_lock_lock(&self->_assertionLock);
    if (self->_keepRunningAssertionCounter && self->_shutdownPending)
    {
      nodeID = [(MTRDeviceController *)self nodeID];
      if (sub_238DB32F8(v10, nodeID))
      {
        fabricID = [(MTRDeviceController *)self fabricID];
        if (sub_238DB32F8(v11, fabricID))
        {
          rootPublicKey = [(MTRDeviceController *)self rootPublicKey];
          v9 = sub_238DB32F8(v12, rootPublicKey);
        }

        else
        {
          v9 = 0;
        }
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }

    os_unfair_lock_unlock(&self->_assertionLock);
  }

  return v9;
}

- (void)addRunAssertion
{
  v9 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_assertionLock);
  if ([(MTRDeviceController_Concrete *)self isRunning])
  {
    v3 = self->_keepRunningAssertionCounter + 1;
    self->_keepRunningAssertionCounter = v3;
    v4 = sub_2393D9044(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      selfCopy = self;
      v7 = 2048;
      v8 = v3;
      _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_DEFAULT, "%@ Adding keep running assertion, total %lu", buf, 0x16u);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(0, 2, "%@ Adding keep running assertion, total %lu", self, self->_keepRunningAssertionCounter);
    }
  }

  os_unfair_lock_unlock(&self->_assertionLock);
}

- (void)removeRunAssertion
{
  v10 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_assertionLock);
  keepRunningAssertionCounter = self->_keepRunningAssertionCounter;
  if (keepRunningAssertionCounter)
  {
    v4 = keepRunningAssertionCounter - 1;
    self->_keepRunningAssertionCounter = keepRunningAssertionCounter - 1;
    v5 = sub_2393D9044(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      selfCopy2 = self;
      v8 = 2048;
      v9 = v4;
      _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_DEFAULT, "%@ Removing keep running assertion, total %lu", buf, 0x16u);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(0, 2, "%@ Removing keep running assertion, total %lu", self, self->_keepRunningAssertionCounter);
    }

    if ([(MTRDeviceController_Concrete *)self isRunning]&& !self->_keepRunningAssertionCounter && self->_shutdownPending)
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        selfCopy2 = self;
        _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_DEFAULT, "%@ All assertions removed and shutdown is pending, shutting down", buf, 0xCu);
      }

      if (sub_2393D5398(2u))
      {
        sub_2393D5320(0, 2, "%@ All assertions removed and shutdown is pending, shutting down", self);
      }

      [(MTRDeviceController_Concrete *)self finalShutdown];
    }
  }

  os_unfair_lock_unlock(&self->_assertionLock);
}

- (void)clearPendingShutdown
{
  os_unfair_lock_lock(&self->_assertionLock);
  self->_shutdownPending = 0;

  os_unfair_lock_unlock(&self->_assertionLock);
}

- (void)shutdown
{
  v10 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_assertionLock);
  keepRunningAssertionCounter = self->_keepRunningAssertionCounter;
  if (keepRunningAssertionCounter)
  {
    v4 = sub_2393D9044(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      selfCopy = self;
      v8 = 2048;
      v9 = keepRunningAssertionCounter;
      _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_DEFAULT, "%@ Pending shutdown since %lu assertions are present", buf, 0x16u);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(0, 2, "%@ Pending shutdown since %lu assertions are present", self, self->_keepRunningAssertionCounter);
    }

    self->_shutdownPending = 1;
  }

  else
  {
    [(MTRDeviceController_Concrete *)self finalShutdown];
    v5.receiver = self;
    v5.super_class = MTRDeviceController_Concrete;
    [(MTRDeviceController *)&v5 shutdown];
  }

  os_unfair_lock_unlock(&self->_assertionLock);
}

- (void)finalShutdown
{
  v12 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_owner(&self->_assertionLock);
  v3 = sub_2393D9044(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_DEFAULT, "%@ shutdown called", buf, 0xCu);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(0, 2, "%@ shutdown called", self);
  }

  if (self->_cppCommissioner)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = objc_opt_class();
      v5 = NSStringFromClass(v4);
      *buf = 138412546;
      selfCopy = v5;
      v10 = 2112;
      selfCopy2 = self;
      _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_DEFAULT, "Shutting down %@: %@", buf, 0x16u);
    }

    if (sub_2393D5398(2u))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      sub_2393D5320(0, 2, "Shutting down %@: %@", v7, self);
    }

    [(MTRDeviceController_Concrete *)self cleanupAfterStartup];
  }
}

- (void)cleanupAfterStartup
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = sub_2393D9044(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v20 = "[MTRDeviceController_Concrete cleanupAfterStartup]";
    v21 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_DEFAULT, "%s: %@", buf, 0x16u);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(0, 2, "%s: %@", "[MTRDeviceController_Concrete cleanupAfterStartup]", self);
  }

  os_unfair_lock_lock([(MTRDeviceController *)self deviceMapLock]);
  nodeIDToDeviceMap = [(MTRDeviceController *)self nodeIDToDeviceMap];
  objectEnumerator = [nodeIDToDeviceMap objectEnumerator];
  allObjects = [objectEnumerator allObjects];

  nodeIDToDeviceMap2 = [(MTRDeviceController *)self nodeIDToDeviceMap];
  [nodeIDToDeviceMap2 removeAllObjects];

  os_unfair_lock_unlock([(MTRDeviceController *)self deviceMapLock]);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = allObjects;
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v14 + 1) + 8 * v11++) invalidate];
      }

      while (v9 != v11);
      v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  controllerDataStore = [(MTRDeviceController_Concrete *)self controllerDataStore];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_23928659C;
  v13[3] = &unk_278A72320;
  v13[4] = self;
  [controllerDataStore synchronouslyPerformBlock:v13];

  [(MTRDeviceController_Concrete *)self stopBrowseForCommissionables];
  sub_238DC9404(self->_factory, self);
}

- (void)shutDownCppController
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = sub_2393D9044(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v25 = "[MTRDeviceController_Concrete shutDownCppController]";
    v26 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_DEFAULT, "%s: %p", buf, 0x16u);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(0, 2, "%s: %p", "[MTRDeviceController_Concrete shutDownCppController]", self);
  }

  sub_23947632C("/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDeviceController_Concrete.mm", 488);
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = [(NSMutableArray *)self->_serverEndpoints copy];
  v5 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v5)
  {
    v6 = *v20;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(v4);
        }

        [(MTRDeviceController_Concrete *)self removeServerEndpointOnMatterQueue:*(*(&v19 + 1) + 8 * i)];
      }

      v5 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v5);
  }

  cppCommissioner = self->_cppCommissioner;
  if (cppCommissioner)
  {
    self->_cppCommissioner = 0;
    (*(*cppCommissioner + 40))(cppCommissioner);
    _X0 = 0;
    atomic_store(0, &self->_storedFabricIndex.__a_.__a_value);
    v10 = *&self->_anon_60[7];
    do
    {
      _X5 = *&self->_anon_60[15];
      __asm { CASPAL          X4, X5, X0, X1, [X8] }

      _ZF = _X4 == v10;
      v10 = _X4;
    }

    while (!_ZF);
    [(MTRDeviceController *)self setNodeID:0];
    [(MTRDeviceController *)self setFabricID:0];
    [(MTRDeviceController *)self setRootPublicKey:0];
    (*(*cppCommissioner + 8))(cppCommissioner);
    operationalCredentialsDelegate = self->_operationalCredentialsDelegate;
    if (operationalCredentialsDelegate)
    {
      operationalCredentialsDelegate[11] = 0;
    }
  }

  if (![(MTRDeviceController *)self isSuspended])
  {
    v18 = sub_23952B998(self->_factory);
    sub_2392CA900(v18);
  }

  self->_shutdownPending = 0;
}

- (void)cleanup
{
  if (self->_cppCommissioner)
  {
    sub_23952D13C();
  }

  defaultDACVerifier = self->_defaultDACVerifier;
  if (defaultDACVerifier)
  {
    (*(*defaultDACVerifier + 8))(defaultDACVerifier, a2);
    self->_defaultDACVerifier = 0;
  }

  attestationTrustStoreBridge = self->_attestationTrustStoreBridge;
  if (attestationTrustStoreBridge)
  {
    (*(attestationTrustStoreBridge->var0 + 1))(attestationTrustStoreBridge, a2);
    self->_attestationTrustStoreBridge = 0;
  }

  [(MTRDeviceController_Concrete *)self clearDeviceAttestationDelegateBridge];
  operationalCredentialsDelegate = self->_operationalCredentialsDelegate;
  if (operationalCredentialsDelegate)
  {
    (*(*operationalCredentialsDelegate + 8))(operationalCredentialsDelegate);
    self->_operationalCredentialsDelegate = 0;
  }

  partialDACVerifier = self->_partialDACVerifier;
  if (partialDACVerifier)
  {
    (*(*partialDACVerifier + 8))(partialDACVerifier);
    self->_partialDACVerifier = 0;
  }

  deviceControllerDelegateBridge = self->_deviceControllerDelegateBridge;
  if (deviceControllerDelegateBridge)
  {
    (*(*deviceControllerDelegateBridge + 8))(deviceControllerDelegateBridge);
    self->_deviceControllerDelegateBridge = 0;
  }
}

- (BOOL)startup:(id)startup
{
  v33 = *MEMORY[0x277D85DE8];
  startupCopy = startup;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  if (![(MTRDeviceController_Concrete *)self isRunning])
  {
    chipWorkQueue = self->_chipWorkQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_239286ECC;
    block[3] = &unk_278A73B40;
    block[4] = self;
    v8 = startupCopy;
    v23 = v8;
    v24 = &v25;
    dispatch_sync(chipWorkQueue, block);
    if (v26[3])
    {
      operationalCertificateIssuer = [v8 operationalCertificateIssuer];
      operationalCertificateIssuerQueue = [v8 operationalCertificateIssuerQueue];
      v11 = [(MTRDeviceController_Concrete *)self setOperationalCertificateIssuer:operationalCertificateIssuer queue:operationalCertificateIssuerQueue];

      if (v11)
      {
        controllerDataStore = self->_controllerDataStore;
        if (controllerDataStore)
        {
          v21[0] = MEMORY[0x277D85DD0];
          v21[1] = 3221225472;
          v21[2] = sub_2392880C0;
          v21[3] = &unk_278A73F40;
          v21[4] = self;
          [(MTRDeviceControllerDataStore *)controllerDataStore fetchAttributeDataForAllDevices:v21];
        }

        v13 = sub_2393D9044(0);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v14 = objc_opt_class();
          v15 = NSStringFromClass(v14);
          *buf = 138412546;
          selfCopy4 = v15;
          v31 = 2112;
          selfCopy = self;
          _os_log_impl(&dword_238DAE000, v13, OS_LOG_TYPE_DEFAULT, "%@ startup: %@", buf, 0x16u);
        }

        if (sub_2393D5398(2u))
        {
          v16 = objc_opt_class();
          v17 = NSStringFromClass(v16);
          sub_2393D5320(0, 2, "%@ startup: %@", v17, self);
        }

        v6 = 1;
        goto LABEL_25;
      }

      v19 = sub_2393D9044(0);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        selfCopy4 = self;
        _os_log_impl(&dword_238DAE000, v19, OS_LOG_TYPE_ERROR, "%@ operationalCertificateIssuer and operationalCertificateIssuerQueue must both be nil or both be non-nil", buf, 0xCu);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393D5320(0, 1, "%@ operationalCertificateIssuer and operationalCertificateIssuerQueue must both be nil or both be non-nil", self);
      }
    }

    else
    {
      v18 = sub_2393D9044(0);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        selfCopy4 = self;
        _os_log_impl(&dword_238DAE000, v18, OS_LOG_TYPE_ERROR, "%@ startup failed", buf, 0xCu);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393D5320(0, 1, "%@ startup failed", self);
      }
    }

    [(MTRDeviceController_Concrete *)self cleanupAfterStartup];
    v6 = 0;
LABEL_25:

    goto LABEL_26;
  }

  v5 = sub_2393D9044(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    selfCopy4 = self;
    _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_ERROR, "%@ Unexpected duplicate call to startup", buf, 0xCu);
  }

  if (sub_2393D5398(1u))
  {
    sub_2393D5320(0, 1, "%@ Unexpected duplicate call to startup", self);
  }

  v6 = 0;
LABEL_26:
  _Block_object_dispose(&v25, 8);

  return v6;
}

- (BOOL)setupCommissioningSessionWithPayload:(id)payload newNodeID:(id)d error:(id *)error
{
  v22 = *MEMORY[0x277D85DE8];
  payloadCopy = payload;
  dCopy = d;
  isSuspended = [(MTRDeviceController *)self isSuspended];
  v11 = sub_2393D9044(0);
  v12 = v11;
  if (isSuspended)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      *v19 = self;
      *&v19[8] = 2048;
      *&v19[10] = [dCopy unsignedLongLongValue];
      v20 = 2112;
      v21 = payloadCopy;
      _os_log_impl(&dword_238DAE000, v12, OS_LOG_TYPE_ERROR, "%@ suspended: can't set up commissioning session for device ID 0x%016llX with setup payload %@", buf, 0x20u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1, "%@ suspended: can't set up commissioning session for device ID 0x%016llX with setup payload %@", self, [dCopy unsignedLongLongValue], payloadCopy);
    }

    if (error)
    {
      sub_23921C1E4(MTRError, 0x34600000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDeviceController_Concrete.mm");
      *error = LOBYTE(self) = 0;
    }

    else
    {
      LOBYTE(self) = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      *v19 = self;
      *&v19[8] = 2048;
      *&v19[10] = [dCopy unsignedLongLongValue];
      v20 = 2112;
      v21 = payloadCopy;
      _os_log_impl(&dword_238DAE000, v12, OS_LOG_TYPE_DEFAULT, "%@ Setting up commissioning session for device ID 0x%016llX with setup payload %@", buf, 0x20u);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(0, 2, "%@ Setting up commissioning session for device ID 0x%016llX with setup payload %@", self, [dCopy unsignedLongLongValue], payloadCopy);
    }

    v13 = +[MTRMetricsCollector sharedInstance];
    [v13 resetMetrics];

    *buf = 0;
    *&v19[4] = "dwnfw_device_commissioning";
    v19[16] = 0;
    sub_23948BD20(buf);
    sub_23928893C(payloadCopy);
    v14 = [payloadCopy qrCodeString:0];
    if (v14 || ([payloadCopy manualEntryCode], (v14 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v15 = objc_alloc_init(MTRCommissioningParameters);
      v16 = [[MTRCommissioningOperation alloc] initWithParameters:v15 setupPayload:v14 commissioningID:dCopy isInternallyCreated:1 delegate:self queue:self->_commissioningQueue];
      [(MTRCommissioningOperation *)v16 startWithController:self];

      LOBYTE(self) = 1;
    }

    else
    {
      *buf = 1;
      *&v19[4] = "dwnfw_device_commissioning";
      *&v19[12] = 47;
      v19[16] = 3;
      sub_23948BD20(buf);
      LODWORD(self) = ![MTRDeviceController_Concrete checkForError:0x35A0000002FLL logMsg:"/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDeviceController_Concrete.mm" error:@"Generating Manual Pairing Code failed", error];
    }
  }

  return self;
}

- (ChipError)startCommissioning:(id)commissioning withCommissioningID:(id)d
{
  v33 = *MEMORY[0x277D85DE8];
  commissioningCopy = commissioning;
  dCopy = d;
  v8 = sub_2393D9044(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *&buf[4] = self;
    *&buf[12] = 2112;
    *&buf[14] = commissioningCopy;
    _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_DEFAULT, "%@ starting new commissioning %@", buf, 0x16u);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(0, 2, "%@ starting new commissioning %@", self, commissioningCopy);
  }

  [(MTRDeviceController_Concrete *)self setCurrentCommissioning:commissioningCopy];
  if ([commissioningCopy isInternallyCreated])
  {
    [(MTRDeviceController_Concrete *)self setCurrentInternalCommissioning:commissioningCopy];
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x4012000000;
  v28 = sub_239288CB4;
  v29 = nullsub_836;
  v30 = "";
  v31 = 0;
  v32 = 0;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = sub_239288CC4;
  v22[3] = &unk_278A73F68;
  v26 = buf;
  v9 = dCopy;
  v23 = v9;
  selfCopy = self;
  v10 = commissioningCopy;
  v25 = v10;
  v11 = MEMORY[0x23EE78590](v22);
  v21 = 0;
  v12 = [(MTRDeviceController_Concrete *)self syncRunOnWorkQueueWithBoolReturnValue:v11 error:&v21];
  v13 = v21;
  v14 = *&buf[8];
  if (!v12 && !*(*&buf[8] + 48))
  {
    v15 = sub_23921D408(MTRError, v13);
    v14 = *&buf[8];
    *(*&buf[8] + 48) = v15;
    *(v14 + 56) = v16;
  }

  v17 = *(v14 + 48);
  v18 = *(v14 + 56);

  _Block_object_dispose(buf, 8);
  v19 = v17;
  v20 = v18;
  result.mFile = v20;
  result.mError = v19;
  result.mLine = HIDWORD(v19);
  return result;
}

- (void)commissioningDone:(id)done
{
  doneCopy = done;
  if (([doneCopy isInternallyCreated] & 1) == 0)
  {
    [(MTRDeviceController_Concrete *)self _commissioningDone:doneCopy];
  }
}

- (void)_commissioningDone:(id)done
{
  v15 = *MEMORY[0x277D85DE8];
  doneCopy = done;
  currentCommissioning = [(MTRDeviceController_Concrete *)self currentCommissioning];

  if (currentCommissioning == doneCopy)
  {
    v6 = sub_2393D9044(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      selfCopy = self;
      v13 = 2112;
      v14 = doneCopy;
      _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_DEFAULT, "%@ stopping commissioning %@", buf, 0x16u);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(0, 2, "%@ stopping commissioning %@", self, doneCopy);
    }

    [(MTRDeviceController_Concrete *)self setCurrentCommissioning:0];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = sub_2392890F0;
    v10[3] = &unk_278A72320;
    v10[4] = self;
    v7 = MEMORY[0x23EE78590](v10);
    [(MTRDeviceController_Concrete *)self syncRunOnWorkQueue:v7 error:0];
  }

  currentInternalCommissioning = [(MTRDeviceController_Concrete *)self currentInternalCommissioning];
  v9 = currentInternalCommissioning == doneCopy;

  if (v9)
  {
    [(MTRDeviceController_Concrete *)self setCurrentInternalCommissioning:0];
  }
}

- (BOOL)setupCommissioningSessionWithDiscoveredDevice:(id)device payload:(id)payload newNodeID:(id)d error:(id *)error
{
  v36 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  payloadCopy = payload;
  dCopy = d;
  currentCommissioning = [(MTRDeviceController_Concrete *)self currentCommissioning];
  v14 = sub_2393D9044(0);
  v15 = v14;
  if (currentCommissioning)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      *&buf[4] = self;
      *&buf[12] = 2112;
      *&buf[14] = currentCommissioning;
      _os_log_impl(&dword_238DAE000, v15, OS_LOG_TYPE_ERROR, "%@ Can't set up commissioning session with discovered device: commissioning %@ in progress", buf, 0x16u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1, "%@ Can't set up commissioning session with discovered device: commissioning %@ in progress", self, currentCommissioning);
    }

    if (error)
    {
      sub_23921C1E4(MTRError, 0x3D000000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDeviceController_Concrete.mm");
      *error = v16 = 0;
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413058;
      *&buf[4] = self;
      *&buf[12] = 2112;
      *&buf[14] = deviceCopy;
      *&buf[22] = 2048;
      unsignedLongLongValue = [dCopy unsignedLongLongValue];
      LOWORD(v33) = 2112;
      *(&v33 + 2) = payloadCopy;
      _os_log_impl(&dword_238DAE000, v15, OS_LOG_TYPE_DEFAULT, "%@ Setting up commissioning session for already-discovered device %@ and device ID 0x%016llX with setup payload %@", buf, 0x2Au);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(0, 2, "%@ Setting up commissioning session for already-discovered device %@ and device ID 0x%016llX with setup payload %@", self, deviceCopy, [dCopy unsignedLongLongValue], payloadCopy);
    }

    v17 = +[MTRMetricsCollector sharedInstance];
    [v17 resetMetrics];

    *buf = 0;
    *&buf[8] = "dwnfw_device_commissioning";
    buf[20] = 0;
    sub_23948BD20(buf);
    sub_23928893C(payloadCopy);
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x4012000000;
    unsignedLongLongValue = sub_239288CB4;
    *&v33 = nullsub_836;
    *(&v33 + 1) = "";
    v34 = 0;
    v35 = 0;
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = sub_2392894F8;
    v24[3] = &unk_278A73F90;
    v29 = buf;
    v25 = dCopy;
    selfCopy = self;
    v27 = deviceCopy;
    v28 = payloadCopy;
    errorCopy = error;
    v18 = MEMORY[0x23EE78590](v24);
    v16 = [(MTRDeviceController_Concrete *)self syncRunOnWorkQueueWithBoolReturnValue:v18 error:error];
    if (!v16)
    {
      v20 = 1;
      v21 = "dwnfw_device_commissioning";
      v22 = *(*&buf[8] + 48);
      v23 = 3;
      sub_23948BD20(&v20);
    }

    _Block_object_dispose(buf, 8);
  }

  return v16;
}

- (BOOL)commissionNodeWithID:(id)d commissioningParams:(id)params error:(id *)error
{
  dCopy = d;
  paramsCopy = params;
  currentCommissioning = [(MTRDeviceController_Concrete *)self currentCommissioning];
  v11 = currentCommissioning;
  if (currentCommissioning && ([currentCommissioning isInternallyCreated] & 1) == 0)
  {
    v14 = sub_2393D9044(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *v16 = 0;
      _os_log_impl(&dword_238DAE000, v14, OS_LOG_TYPE_ERROR, "Trying to commissionNodeWithID: when using MTRCommissioningOperation; call ignored", v16, 2u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1, "Trying to commissionNodeWithID: when using MTRCommissioningOperation; call ignored");
    }

    if (error)
    {
      sub_23921C1E4(MTRError, 0x42800000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDeviceController_Concrete.mm");
      *error = LOBYTE(v13) = 0;
    }

    else
    {
      LOBYTE(v13) = 0;
    }
  }

  else
  {
    v12 = [paramsCopy copy];
    [v12 setPreventNetworkScans:1];
    v13 = [(MTRDeviceController_Concrete *)self _commissionNodeWithID:dCopy commissioningParams:v12 error:error];
    if (v13)
    {
      [v11 setIsWaitingAfterPASEEstablished:0];
    }
  }

  return v13;
}

- (BOOL)commission:(id)commission withCommissioningID:(id)d commissioningParams:(id)params error:(id *)error
{
  v23 = *MEMORY[0x277D85DE8];
  commissionCopy = commission;
  dCopy = d;
  paramsCopy = params;
  currentCommissioning = [(MTRDeviceController_Concrete *)self currentCommissioning];
  if (currentCommissioning == commissionCopy)
  {
    v15 = [(MTRDeviceController_Concrete *)self _commissionNodeWithID:dCopy commissioningParams:paramsCopy error:error];
  }

  else
  {
    v14 = sub_2393D9044(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      selfCopy = self;
      v19 = 2112;
      v20 = commissionCopy;
      v21 = 2112;
      v22 = currentCommissioning;
      _os_log_impl(&dword_238DAE000, v14, OS_LOG_TYPE_ERROR, "%@ trying to start commissioning %@ but current commissioning is %@", buf, 0x20u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1, "%@ trying to start commissioning %@ but current commissioning is %@", self, commissionCopy, currentCommissioning);
    }

    if (error)
    {
      sub_23921C1E4(MTRError, 0x44500000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDeviceController_Concrete.mm");
      *error = v15 = 0;
    }

    else
    {
      v15 = 0;
    }
  }

  return v15;
}

- (BOOL)_commissionNodeWithID:(id)d commissioningParams:(id)params error:(id *)error
{
  v26 = *MEMORY[0x277D85DE8];
  dCopy = d;
  paramsCopy = params;
  v10 = sub_2393D9044(0);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    selfCopy2 = self;
    v22 = 2048;
    unsignedLongLongValue = [dCopy unsignedLongLongValue];
    v24 = 2112;
    v25 = paramsCopy;
    _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_DEFAULT, "%@ trying to commission node with ID 0x%016llX parameters %@", buf, 0x20u);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(0, 2, "%@ trying to commission node with ID 0x%016llX parameters %@", self, [dCopy unsignedLongLongValue], paramsCopy);
  }

  if ([(MTRDeviceController *)self isSuspended])
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      unsignedLongLongValue2 = [dCopy unsignedLongLongValue];
      *buf = 138412802;
      selfCopy2 = self;
      v22 = 2048;
      unsignedLongLongValue = unsignedLongLongValue2;
      v24 = 2112;
      v25 = paramsCopy;
      _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_ERROR, "%@ suspended: can't commission device ID 0x%016llX with parameters %@", buf, 0x20u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1, "%@ suspended: can't commission device ID 0x%016llX with parameters %@", self, [dCopy unsignedLongLongValue], paramsCopy);
    }

    if (error)
    {
      sub_23921C1E4(MTRError, 0x45700000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDeviceController_Concrete.mm");
      *error = v12 = 0;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = sub_23928A058;
    v15[3] = &unk_278A73FB8;
    v16 = paramsCopy;
    selfCopy3 = self;
    errorCopy = error;
    v18 = dCopy;
    v13 = MEMORY[0x23EE78590](v15);
    v12 = [(MTRDeviceController_Concrete *)self syncRunOnWorkQueueWithBoolReturnValue:v13 error:error];
  }

  return v12;
}

- (BOOL)continueCommissioningDevice:(void *)device ignoreAttestationFailure:(BOOL)failure error:(id *)error
{
  failureCopy = failure;
  currentCommissioning = [(MTRDeviceController_Concrete *)self currentCommissioning];
  v10 = currentCommissioning;
  if (currentCommissioning && ([currentCommissioning isInternallyCreated] & 1) == 0)
  {
    v12 = sub_2393D9044(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *v14 = 0;
      _os_log_impl(&dword_238DAE000, v12, OS_LOG_TYPE_ERROR, "Trying to continueCommissioningDevice: when using MTRCommissioningOperation; call ignored", v14, 2u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1, "Trying to continueCommissioningDevice: when using MTRCommissioningOperation; call ignored");
    }

    if (error)
    {
      sub_23921C1E4(MTRError, 0x4F500000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDeviceController_Concrete.mm");
      *error = v11 = 0;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = [(MTRDeviceController_Concrete *)self _continueCommissioningDevice:device ignoreAttestationFailure:failureCopy error:error];
  }

  return v11;
}

- (BOOL)continueCommissioningAfterAttestation:(id)attestation forOpaqueHandle:(void *)handle error:(id *)error
{
  v19 = *MEMORY[0x277D85DE8];
  attestationCopy = attestation;
  currentCommissioning = [(MTRDeviceController_Concrete *)self currentCommissioning];
  if (currentCommissioning == attestationCopy)
  {
    v11 = [(MTRDeviceController_Concrete *)self _continueCommissioningDevice:handle ignoreAttestationFailure:1 error:error];
  }

  else
  {
    v10 = sub_2393D9044(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      selfCopy = self;
      v15 = 2112;
      v16 = attestationCopy;
      v17 = 2112;
      v18 = currentCommissioning;
      _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_ERROR, "%@ commissioning %@ has already stopped and been replaced by %@", buf, 0x20u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1, "%@ commissioning %@ has already stopped and been replaced by %@", self, attestationCopy, currentCommissioning);
    }

    if (error)
    {
      sub_23921C1E4(MTRError, 0x50700000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDeviceController_Concrete.mm");
      *error = v11 = 0;
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (BOOL)_continueCommissioningDevice:(void *)device ignoreAttestationFailure:(BOOL)failure error:(id *)error
{
  errorCopy = error;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_23928B460;
  v9[3] = &unk_278A73FE0;
  v9[4] = self;
  v9[5] = device;
  failureCopy = failure;
  v9[6] = error;
  v7 = MEMORY[0x23EE78590](v9, a2);
  LOBYTE(errorCopy) = [(MTRDeviceController_Concrete *)self syncRunOnWorkQueueWithBoolReturnValue:v7 error:errorCopy];

  return errorCopy;
}

- (BOOL)cancelCommissioningForNodeID:(id)d error:(id *)error
{
  v16 = *MEMORY[0x277D85DE8];
  dCopy = d;
  currentCommissioning = [(MTRDeviceController_Concrete *)self currentCommissioning];
  v8 = currentCommissioning;
  if (currentCommissioning && ([currentCommissioning isInternallyCreated] & 1) == 0)
  {
    v10 = sub_2393D9044(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218242;
      unsignedLongLongValue = [dCopy unsignedLongLongValue];
      v14 = 2112;
      v15 = dCopy;
      _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_ERROR, "Trying to cancelCommissioningForNodeID 0x%016llX (%@) when using MTRCommissioningOperation; call ignored", buf, 0x16u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1, "Trying to cancelCommissioningForNodeID 0x%016llX (%@) when using MTRCommissioningOperation; call ignored", [dCopy unsignedLongLongValue], dCopy);
    }

    if (error)
    {
      sub_23921C1E4(MTRError, 0x52A00000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDeviceController_Concrete.mm");
      *error = v9 = 0;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = [(MTRDeviceController_Concrete *)self _cancelCommissioning:v8 forNodeID:dCopy error:error];
  }

  return v9;
}

- (BOOL)stopCommissioning:(id)commissioning forCommissioningID:(id)d
{
  v18 = *MEMORY[0x277D85DE8];
  commissioningCopy = commissioning;
  dCopy = d;
  currentCommissioning = [(MTRDeviceController_Concrete *)self currentCommissioning];
  if (currentCommissioning == commissioningCopy)
  {
    v10 = [(MTRDeviceController_Concrete *)self _cancelCommissioning:currentCommissioning forNodeID:dCopy error:0];
  }

  else
  {
    v9 = sub_2393D9044(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      selfCopy = self;
      v14 = 2112;
      v15 = commissioningCopy;
      v16 = 2112;
      v17 = currentCommissioning;
      _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_ERROR, "%@ commissioning %@ has already stopped and been replaced by %@", buf, 0x20u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1, "%@ commissioning %@ has already stopped and been replaced by %@", self, commissioningCopy, currentCommissioning);
    }

    v10 = 0;
  }

  return v10;
}

- (BOOL)_cancelCommissioning:(id)commissioning forNodeID:(id)d error:(id *)error
{
  commissioningCopy = commissioning;
  dCopy = d;
  isWaitingAfterPASEEstablished = [commissioningCopy isWaitingAfterPASEEstablished];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_23928B97C;
  v16[3] = &unk_278A74008;
  v16[4] = self;
  v11 = dCopy;
  v17 = v11;
  errorCopy = error;
  v20 = isWaitingAfterPASEEstablished;
  v12 = commissioningCopy;
  v18 = v12;
  v13 = MEMORY[0x23EE78590](v16);
  v14 = [(MTRDeviceController_Concrete *)self syncRunOnWorkQueueWithBoolReturnValue:v13 error:error];
  if ((v14 & isWaitingAfterPASEEstablished) == 1)
  {
    [v12 setIsWaitingAfterPASEEstablished:0];
  }

  return v14;
}

- (BOOL)startBrowseForCommissionables:(id)commissionables queue:(id)queue
{
  commissionablesCopy = commissionables;
  queueCopy = queue;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_23928BC54;
  v12[3] = &unk_278A74030;
  v12[4] = self;
  v13 = commissionablesCopy;
  v14 = queueCopy;
  v8 = queueCopy;
  v9 = commissionablesCopy;
  v10 = MEMORY[0x23EE78590](v12);
  LOBYTE(self) = [(MTRDeviceController_Concrete *)self syncRunOnWorkQueueWithBoolReturnValue:v10 error:0];

  return self;
}

- (BOOL)stopBrowseForCommissionables
{
  selfCopy = self;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_23928BDF0;
  v5[3] = &unk_278A74058;
  v5[4] = self;
  v3 = MEMORY[0x23EE78590](v5, a2);
  LOBYTE(selfCopy) = [(MTRDeviceController_Concrete *)selfCopy syncRunOnWorkQueueWithBoolReturnValue:v3 error:0];

  return selfCopy;
}

- (id)deviceBeingCommissionedWithNodeID:(id)d error:(id *)error
{
  v27 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_23928C0E0;
  v16[3] = &unk_278A74080;
  v16[4] = self;
  v7 = dCopy;
  v17 = v7;
  errorCopy = error;
  v8 = MEMORY[0x23EE78590](v16);
  v9 = [(MTRDeviceController_Concrete *)self syncRunOnWorkQueueWithReturnValue:v8 error:error];
  v10 = sub_2393D9044(0);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    unsignedLongLongValue = [v7 unsignedLongLongValue];
    if (error)
    {
      v12 = *error;
    }

    else
    {
      v12 = 0;
    }

    *buf = 138413058;
    selfCopy = self;
    v21 = 2048;
    v22 = unsignedLongLongValue;
    v23 = 2112;
    v24 = v9;
    v25 = 2112;
    v26 = v12;
    _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_DEFAULT, "%@ Getting device being commissioned with node ID 0x%016llX: %@ (error: %@)", buf, 0x2Au);
  }

  if (sub_2393D5398(2u))
  {
    unsignedLongLongValue2 = [v7 unsignedLongLongValue];
    if (error)
    {
      v14 = *error;
    }

    else
    {
      v14 = 0;
    }

    sub_2393D5320(0, 2, "%@ Getting device being commissioned with node ID 0x%016llX: %@ (error: %@)", self, unsignedLongLongValue2, v9, v14);
  }

  return v9;
}

- (id)baseDeviceForNodeID:(id)d
{
  dCopy = d;
  v5 = [[MTRBaseDevice alloc] initWithNodeID:dCopy controller:self];

  return v5;
}

- (id)_setupDeviceForNodeID:(id)d prefetchedClusterData:(id)data
{
  v22 = *MEMORY[0x277D85DE8];
  dCopy = d;
  dataCopy = data;
  os_unfair_lock_assert_owner([(MTRDeviceController *)self deviceMapLock]);
  v8 = [[MTRDevice_Concrete alloc] initWithNodeID:dCopy controller:self];
  if ([(MTRDeviceController_Concrete *)self isRunning])
  {
    nodeIDToDeviceMap = [(MTRDeviceController *)self nodeIDToDeviceMap];
    [nodeIDToDeviceMap setObject:v8 forKey:dCopy];
  }

  if (dataCopy)
  {
    if ([dataCopy count])
    {
      [(MTRDevice_Concrete *)v8 setPersistedClusterData:dataCopy];
    }
  }

  else
  {
    controllerDataStore = self->_controllerDataStore;
    if (controllerDataStore)
    {
      v11 = [(MTRDeviceControllerDataStore *)controllerDataStore getStoredClusterDataForNodeID:dCopy];
      v12 = sub_2393D9044(0);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        selfCopy = self;
        v18 = 2048;
        v19 = [v11 count];
        v20 = 2112;
        v21 = v8;
        _os_log_impl(&dword_238DAE000, v12, OS_LOG_TYPE_DEFAULT, "%@ Loaded %lu cluster data from storage for %@", buf, 0x20u);
      }

      if (sub_2393D5398(2u))
      {
        sub_2393D5320(0, 2, "%@ Loaded %lu cluster data from storage for %@", self, [v11 count], v8);
      }

      if ([v11 count])
      {
        [(MTRDevice_Concrete *)v8 setPersistedClusterData:v11];
      }
    }
  }

  v13 = self->_controllerDataStore;
  if (v13)
  {
    v14 = [(MTRDeviceControllerDataStore *)v13 getStoredDeviceDataForNodeID:dCopy];
    if ([v14 count])
    {
      [(MTRDevice_Concrete *)v8 setPersistedDeviceData:v14];
    }
  }

  [(MTRDevice_Concrete *)v8 setStorageBehaviorConfiguration:self->_storageBehaviorConfiguration];

  return v8;
}

- (void)forgetDeviceWithNodeID:(id)d
{
  v12 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = sub_2393D9044(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy = self;
    v10 = 2112;
    v11 = dCopy;
    _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_DEFAULT, "%@: Forgetting device with node ID: %@", buf, 0x16u);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(0, 2, "%@: Forgetting device with node ID: %@", self, dCopy);
  }

  v7.receiver = self;
  v7.super_class = MTRDeviceController_Concrete;
  [(MTRDeviceController *)&v7 forgetDeviceWithNodeID:dCopy];
  controllerDataStore = self->_controllerDataStore;
  if (controllerDataStore)
  {
    [(MTRDeviceControllerDataStore *)controllerDataStore clearResumptionInfoForNodeID:dCopy];
    [(MTRDeviceControllerDataStore *)self->_controllerDataStore clearDeviceDataForNodeID:dCopy];
    [(MTRDeviceControllerDataStore *)self->_controllerDataStore clearStoredClusterDataForNodeID:dCopy];
  }
}

- (BOOL)setOperationalCertificateIssuer:(id)issuer queue:(id)queue
{
  issuerCopy = issuer;
  queueCopy = queue;
  v8 = queueCopy;
  if ((!issuerCopy || queueCopy) && (issuerCopy || !queueCopy))
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = sub_23928C728;
    v12[3] = &unk_278A74030;
    v13 = issuerCopy;
    selfCopy = self;
    v15 = v8;
    v10 = MEMORY[0x23EE78590](v12);
    v9 = [(MTRDeviceController_Concrete *)self syncRunOnWorkQueueWithBoolReturnValue:v10 error:0];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)attestationChallengeForDeviceID:(id)d
{
  dCopy = d;
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = sub_23928C90C;
  v12 = &unk_278A740A8;
  selfCopy = self;
  v14 = dCopy;
  v5 = dCopy;
  v6 = MEMORY[0x23EE78590](&v9);
  selfCopy = [(MTRDeviceController_Concrete *)self syncRunOnWorkQueueWithReturnValue:v6 error:0, v9, v10, v11, v12, selfCopy];

  return selfCopy;
}

- (BOOL)addServerEndpoint:(id)endpoint
{
  v20 = *MEMORY[0x277D85DE8];
  endpointCopy = endpoint;
  if (![(MTRDeviceController_Concrete *)self checkIsRunning]|| !sub_238DCAAE4(self->_factory, endpointCopy))
  {
LABEL_10:
    v5 = 0;
    goto LABEL_11;
  }

  if (([endpointCopy associateWithController:self] & 1) == 0)
  {
    v6 = sub_2393D9044(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      *buf = 138412546;
      selfCopy = self;
      v18 = 2112;
      v19 = v8;
      _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_ERROR, "%@ Failed to associate MTRServerEndpoint with %@", buf, 0x16u);
    }

    if (sub_2393D5398(1u))
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      sub_2393D5320(0, 1, "%@ Failed to associate MTRServerEndpoint with %@", self, v10);
    }

    sub_238DCB0BC(self->_factory, endpointCopy);
    goto LABEL_10;
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_23928CD04;
  v14[3] = &unk_278A72298;
  v14[4] = self;
  v15 = endpointCopy;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_23928CEA8;
  v12[3] = &unk_278A740D0;
  v12[4] = self;
  v13 = v15;
  [(MTRDeviceController_Concrete *)self asyncDispatchToMatterQueue:v14 errorHandler:v12];

  v5 = 1;
LABEL_11:

  return v5;
}

- (void)removeServerEndpointInternal:(id)internal queue:(id)queue completion:(id)completion
{
  internalCopy = internal;
  queueCopy = queue;
  completionCopy = completion;
  if ([(MTRDeviceController_Concrete *)self checkIsRunning])
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = sub_23928D1D4;
    v15[3] = &unk_278A73DB8;
    v15[4] = self;
    v16 = internalCopy;
    v17 = queueCopy;
    v18 = completionCopy;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = sub_23928D37C;
    v11[3] = &unk_278A72FB0;
    v11[4] = self;
    v12 = v16;
    v13 = v17;
    v14 = v18;
    [(MTRDeviceController_Concrete *)self asyncDispatchToMatterQueue:v15 errorHandler:v11];
  }
}

- (void)removeServerEndpointOnMatterQueue:(id)queue
{
  queueCopy = queue;
  sub_23947632C("/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDeviceController_Concrete.mm", 1607);
  [queueCopy unregisterMatterEndpoint];
  [(NSMutableArray *)self->_serverEndpoints removeObject:queueCopy];
  [queueCopy invalidate];
  sub_238DCB0BC(self->_factory, queueCopy);
}

- (BOOL)checkForInitError:(BOOL)error logMsg:(id)msg
{
  v13 = *MEMORY[0x277D85DE8];
  msgCopy = msg;
  if (!error)
  {
    v7 = sub_2393D9044(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      selfCopy = self;
      v11 = 2112;
      v12 = msgCopy;
      _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_ERROR, "%@ Error: %@", buf, 0x16u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1, "%@ Error: %@", self, msgCopy);
    }

    [(MTRDeviceController_Concrete *)self cleanup];
  }

  return !error;
}

- (void)clearDeviceAttestationDelegateBridge
{
  deviceAttestationDelegateBridge = self->_deviceAttestationDelegateBridge;
  if (deviceAttestationDelegateBridge)
  {
    (*(*deviceAttestationDelegateBridge + 8))(deviceAttestationDelegateBridge, a2);
    self->_deviceAttestationDelegateBridge = 0;
  }
}

- (BOOL)checkForStartError:(ChipError)error logMsg:(id)msg
{
  mError = error.mError;
  v16 = *MEMORY[0x277D85DE8];
  msgCopy = msg;
  if (mError)
  {
    v7 = sub_2393D9044(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v11 = sub_2393C9138();
      v12 = 2112;
      selfCopy = self;
      v14 = 2112;
      v15 = msgCopy;
      _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_ERROR, "Error(%s): %@ %@", buf, 0x20u);
    }

    if (sub_2393D5398(1u))
    {
      v8 = sub_2393C9138();
      sub_2393D5320(0, 1, "Error(%s): %@ %@", v8, self, msgCopy);
    }
  }

  return mError != 0;
}

+ (BOOL)checkForError:(ChipError)error logMsg:(id)msg error:(id *)a5
{
  mFile = error.mFile;
  v7 = *&error.mError;
  v20 = *MEMORY[0x277D85DE8];
  msgCopy = msg;
  if (v7)
  {
    v10 = sub_2393D9044(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v15 = sub_2393C9138();
      v16 = 2112;
      selfCopy = self;
      v18 = 2080;
      uTF8String = [msgCopy UTF8String];
      _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_ERROR, "Error(%s): %@ %s", buf, 0x20u);
    }

    if (sub_2393D5398(1u))
    {
      v11 = sub_2393C9138();
      v12 = msgCopy;
      sub_2393D5320(0, 1, "Error(%s): %@ %s", v11, self, [msgCopy UTF8String]);
    }

    if (a5)
    {
      *a5 = sub_23921C1E4(MTRError, v7, mFile);
    }
  }

  return v7 != 0;
}

- (BOOL)checkIsRunning:(id *)running
{
  v18 = *MEMORY[0x277D85DE8];
  isRunning = [(MTRDeviceController_Concrete *)self isRunning];
  if (!isRunning)
  {
    v6 = sub_2393D9044(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      *buf = 138412802;
      v13 = v8;
      v14 = 2112;
      selfCopy = self;
      v16 = 2080;
      uTF8String = [@"Controller is not running. Call startup first." UTF8String];
      _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_ERROR, "%@: %@ Error: %s", buf, 0x20u);
    }

    if (sub_2393D5398(1u))
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      sub_2393D5320(0, 1, "%@: %@ Error: %s", v10, self, [@"Controller is not running. Call startup first." UTF8String]);
    }

    if (running)
    {
      *running = sub_23921C1E4(MTRError, 0x68E00000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDeviceController_Concrete.mm");
    }
  }

  return isRunning;
}

- (BOOL)definitelyUsesThreadForDevice:(unint64_t)device
{
  v18 = *MEMORY[0x277D85DE8];
  if (device - 1 > 0xFFFFFFEFFFFFFFFELL)
  {
    return 0;
  }

  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
  v6 = [(MTRDeviceController *)self deviceForNodeID:v5];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    deviceUsesThread = [v6 deviceUsesThread];
  }

  else
  {
    v8 = sub_2393D9044(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138413058;
      selfCopy = self;
      v12 = 2112;
      v13 = v6;
      v14 = 2048;
      deviceCopy = device;
      v16 = 2048;
      deviceCopy2 = device;
      _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_ERROR, "%@ somehow has %@ instead of MTRDevice_Concrete for node ID 0x%016llX (%llu)", buf, 0x2Au);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1, "%@ somehow has %@ instead of MTRDevice_Concrete for node ID 0x%016llX (%llu)", self, v6, device, device);
    }

    deviceUsesThread = 0;
  }

  return deviceUsesThread;
}

- (void)getSessionForNode:(unint64_t)node completion:(id)completion
{
  v23 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  if ([(MTRDeviceController *)self isSuspended])
  {
    v7 = sub_2393D9044(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      compressedFabricID = [(MTRDeviceController_Concrete *)self compressedFabricID];
      *buf = 138413058;
      *v18 = self;
      *&v18[8] = 2048;
      *&v18[10] = [compressedFabricID unsignedLongLongValue];
      v19 = 2048;
      nodeCopy = node;
      v21 = 2048;
      nodeCopy2 = node;
      _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_ERROR, "%@ suspended: can't get session for node %016llX-%016llx (%llu)", buf, 0x2Au);
    }

    if (sub_2393D5398(1u))
    {
      compressedFabricID2 = [(MTRDeviceController_Concrete *)self compressedFabricID];
      sub_2393D5320(0, 1, "%@ suspended: can't get session for node %016llX-%016llx (%llu)", self, [compressedFabricID2 unsignedLongLongValue], node, node);
    }

    buf[0] = 0;
    v10 = sub_23921C1E4(MTRError, 0x6B100000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDeviceController_Concrete.mm");
    (*(completionCopy + 2))(completionCopy, 0, buf, v10, 0);

    if (buf[0] == 1)
    {
      (*(**&v18[4] + 32))(*&v18[4]);
    }
  }

  else if ([(MTRDeviceController_Concrete *)self definitelyUsesThreadForDevice:node])
  {
    v11 = [MTRAsyncWorkItem alloc];
    v12 = dispatch_get_global_queue(21, 0);
    v13 = [(MTRAsyncWorkItem *)v11 initWithQueue:v12];

    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = sub_23928E058;
    v14[3] = &unk_278A74120;
    v14[4] = self;
    v15 = completionCopy;
    nodeCopy3 = node;
    [(MTRAsyncWorkItem *)v13 setReadyHandler:v14];
    [(MTRAsyncWorkQueue *)self->_concurrentSubscriptionPool enqueueWorkItem:v13 descriptionWithFormat:@"device controller getSessionForNode nodeID: 0x%016llX", node];
  }

  else
  {
    [(MTRDeviceController_Concrete *)self directlyGetSessionForNode:node completion:completionCopy];
  }
}

- (void)directlyGetSessionForNode:(unint64_t)node completion:(id)completion
{
  v22 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  if ([(MTRDeviceController *)self isSuspended])
  {
    v7 = sub_2393D9044(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      compressedFabricID = [(MTRDeviceController_Concrete *)self compressedFabricID];
      *buf = 138413058;
      *v17 = self;
      *&v17[8] = 2048;
      *&v17[10] = [compressedFabricID unsignedLongLongValue];
      v18 = 2048;
      nodeCopy = node;
      v20 = 2048;
      nodeCopy2 = node;
      _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_ERROR, "%@ suspended: can't get session for node %016llX-%016llx (%llu)", buf, 0x2Au);
    }

    if (sub_2393D5398(1u))
    {
      compressedFabricID2 = [(MTRDeviceController_Concrete *)self compressedFabricID];
      sub_2393D5320(0, 1, "%@ suspended: can't get session for node %016llX-%016llx (%llu)", self, [compressedFabricID2 unsignedLongLongValue], node, node);
    }

    buf[0] = 0;
    v10 = sub_23921C1E4(MTRError, 0x6CF00000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDeviceController_Concrete.mm");
    (*(completionCopy + 2))(completionCopy, 0, buf, v10, 0);

    if (buf[0] == 1)
    {
      (*(**&v17[4] + 32))(*&v17[4]);
    }
  }

  else
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = sub_23928E4E8;
    v13[3] = &unk_278A74148;
    v14 = completionCopy;
    nodeCopy3 = node;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = sub_23928E594;
    v11[3] = &unk_278A74170;
    v12 = v14;
    [(MTRDeviceController_Concrete *)self asyncGetCommissionerOnMatterQueue:v13 errorHandler:v11];
  }
}

- (void)getSessionForCommissioneeDevice:(unint64_t)device completion:(id)completion
{
  completionCopy = completion;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_23928E750;
  v10[3] = &unk_278A74148;
  deviceCopy = device;
  v11 = completionCopy;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_23928E9C4;
  v8[3] = &unk_278A74170;
  v9 = v11;
  v7 = v11;
  [(MTRDeviceController_Concrete *)self asyncGetCommissionerOnMatterQueue:v10 errorHandler:v8];
}

- (unsigned)sessionTransportTypeForDevice:(id)device
{
  deviceCopy = device;
  if ([(MTRDeviceController_Concrete *)self checkIsRunning])
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v14 = 0;
    chipWorkQueue = self->_chipWorkQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_23928EB6C;
    block[3] = &unk_278A73B40;
    block[4] = self;
    v9 = deviceCopy;
    v10 = &v11;
    dispatch_sync(chipWorkQueue, block);
    v6 = *(v12 + 24);

    _Block_object_dispose(&v11, 8);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)asyncGetCommissionerOnMatterQueue:(id)queue errorHandler:(id)handler
{
  queueCopy = queue;
  handlerCopy = handler;
  v15 = 0;
  v8 = [(MTRDeviceController_Concrete *)self checkIsRunning:&v15];
  v9 = v15;
  v10 = v9;
  if (v8)
  {

    chipWorkQueue = self->_chipWorkQueue;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = sub_23928EDEC;
    v12[3] = &unk_278A74198;
    v12[4] = self;
    v13 = handlerCopy;
    v14 = queueCopy;
    dispatch_async(chipWorkQueue, v12);
  }

  else
  {
    if (handlerCopy)
    {
      (*(handlerCopy + 2))(handlerCopy, v9);
    }
  }
}

- (void)asyncDispatchToMatterQueue:(id)queue errorHandler:(id)handler
{
  queueCopy = queue;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_23928EF68;
  v10[3] = &unk_278A741C0;
  v11 = queueCopy;
  v7 = queueCopy;
  handlerCopy = handler;
  v9 = MEMORY[0x23EE78590](v10);
  [(MTRDeviceController_Concrete *)self asyncGetCommissionerOnMatterQueue:v9 errorHandler:handlerCopy];
}

- (void)syncRunOnWorkQueue:(id)queue error:(id *)error
{
  v18 = *MEMORY[0x277D85DE8];
  queueCopy = queue;
  if (qword_27DF7BD08 != -1)
  {
    sub_23952D264();
  }

  if (sub_239479DB0(&byte_27DF7BCA8))
  {
    v8 = sub_2393D9044(0x1Bu);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v13 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDeviceController_Concrete.mm";
      v14 = 1024;
      v15 = 1842;
      v16 = 2080;
      v17 = "!chip::DeviceLayer::PlatformMgrImpl().IsWorkQueueCurrentQueue()";
      _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_ERROR, "VerifyOrDie failure at %s:%d: %s", buf, 0x1Cu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(27, 1, "VerifyOrDie failure at %s:%d: %s", "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDeviceController_Concrete.mm", 1842, "!chip::DeviceLayer::PlatformMgrImpl().IsWorkQueueCurrentQueue()");
    }

    abort();
  }

  if ([(MTRDeviceController_Concrete *)self checkIsRunning:error])
  {
    chipWorkQueue = self->_chipWorkQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_23928F164;
    block[3] = &unk_278A741E8;
    block[4] = self;
    errorCopy = error;
    v10 = queueCopy;
    dispatch_sync(chipWorkQueue, block);
  }
}

- (id)syncRunOnWorkQueueWithReturnValue:(id)value error:(id *)error
{
  valueCopy = value;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_23928F314;
  v21 = sub_23928F324;
  v22 = 0;
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = sub_23928F32C;
  v14 = &unk_278A74210;
  v15 = valueCopy;
  v16 = &v17;
  v7 = valueCopy;
  v8 = MEMORY[0x23EE78590](&v11);
  [(MTRDeviceController_Concrete *)self syncRunOnWorkQueue:v8 error:error, v11, v12, v13, v14];
  v9 = v18[5];

  _Block_object_dispose(&v17, 8);

  return v9;
}

- (BOOL)syncRunOnWorkQueueWithBoolReturnValue:(id)value error:(id *)error
{
  valueCopy = value;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = sub_23928F48C;
  v13 = &unk_278A74210;
  v14 = valueCopy;
  v15 = &v16;
  v7 = valueCopy;
  v8 = MEMORY[0x23EE78590](&v10);
  [(MTRDeviceController_Concrete *)self syncRunOnWorkQueue:v8 error:error, v10, v11, v12, v13];
  LOBYTE(error) = *(v17 + 24);

  _Block_object_dispose(&v16, 8);
  return error;
}

- (id)compressedFabricID
{
  _X2 = 0;
  _X3 = 0;
  __asm { CASPAL          X2, X3, X2, X3, [X8] }

  return 0;
}

- (ChipError)isRunningOnFabric:(void *)fabric fabricIndex:(unsigned __int8)index isRunning:(BOOL *)running
{
  indexCopy = index;
  v20[10] = *MEMORY[0x277D85DE8];
  sub_23947632C("/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDeviceController_Concrete.mm", 1889);
  if (![(MTRDeviceController_Concrete *)self isRunning])
  {
    goto LABEL_12;
  }

  v9 = sub_2394A7FC0(fabric, indexCopy);
  if (!v9)
  {
    v13 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDeviceController_Concrete.mm";
    v14 = 0x76B00000000;
    v15 = 3;
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_239293160(self->_cppCommissioner);
  v12 = v11 ? *(v11 + 8) : 0;
  if (v12 != *(v10 + 8))
  {
LABEL_12:
    v15 = 0;
    v14 = 0;
    v13 = 0;
    *running = 0;
    goto LABEL_13;
  }

  v20[0] = &unk_284BB9138;
  v19[0] = &unk_284BB9138;
  v16 = sub_23950EDF0(self->_cppCommissioner, v20);
  if (v16 || (v16 = sub_2394A8620(fabric, *(v10 + 137), v19), v16))
  {
    v14 = v16 & 0xFFFFFFFF00000000;
  }

  else
  {
    v18 = sub_23928F6C0(v20, v19);
    LODWORD(v16) = 0;
    v14 = 0;
    v13 = 0;
    *running = v18;
  }

  v15 = v16;
LABEL_13:
  v17 = v14 | v15;
  result.mFile = v13;
  result.mError = v17;
  result.mLine = HIDWORD(v17);
  return result;
}

- (void)invalidateCASESessionForNode:(id)node
{
  nodeCopy = node;
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = sub_23928F8C0;
  v10 = &unk_278A72298;
  selfCopy = self;
  v12 = nodeCopy;
  v5 = nodeCopy;
  v6 = MEMORY[0x23EE78590](&v7);
  [(MTRDeviceController_Concrete *)self syncRunOnWorkQueue:v6 error:0, v7, v8, v9, v10, selfCopy];
}

- (void)operationalInstanceAdded:(id)added
{
  v14 = *MEMORY[0x277D85DE8];
  addedCopy = added;
  v5 = sub_2393D9044(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    selfCopy3 = self;
    v12 = 1024;
    *v13 = objc_msgSend_fabricIndex(self);
    *&v13[4] = 2048;
    *&v13[6] = [addedCopy unsignedLongLongValue];
    *&v13[14] = 2048;
    *&v13[16] = [addedCopy unsignedLongLongValue];
    _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_DEFAULT, "%@ at fabric index %u notified about new operational node 0x%016llx (%llu)", buf, 0x26u);
  }

  if (sub_2393D5398(2u))
  {
    v6 = objc_msgSend_fabricIndex(self);
    sub_2393D5320(0, 2, "%@ at fabric index %u notified about new operational node 0x%016llx (%llu)", self, v6, [addedCopy unsignedLongLongValue], objc_msgSend(addedCopy, "unsignedLongLongValue"));
  }

  v7 = [(MTRDeviceController *)self _deviceForNodeID:addedCopy createIfNeeded:0];
  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        selfCopy3 = self;
        v12 = 2112;
        *v13 = v7;
        _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_DEFAULT, "%@ Notifying %@ about its node advertising", buf, 0x16u);
      }

      if (sub_2393D5398(2u))
      {
        sub_2393D5320(0, 2, "%@ Notifying %@ about its node advertising", self, v7);
      }

      [v7 nodeMayBeAdvertisingOperational];
    }

    else
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        unsignedLongLongValue = [addedCopy unsignedLongLongValue];
        unsignedLongLongValue2 = [addedCopy unsignedLongLongValue];
        *buf = 138413058;
        selfCopy3 = self;
        v12 = 2112;
        *v13 = v7;
        *&v13[8] = 2048;
        *&v13[10] = unsignedLongLongValue;
        *&v13[18] = 2048;
        *&v13[20] = unsignedLongLongValue2;
        _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_ERROR, "%@ somehow has %@ instead of MTRDevice_Concrete for node ID 0x%016llX (%llu)", buf, 0x2Au);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393D5320(0, 1, "%@ somehow has %@ instead of MTRDevice_Concrete for node ID 0x%016llX (%llu)", self, v7, [addedCopy unsignedLongLongValue], objc_msgSend(addedCopy, "unsignedLongLongValue"));
      }
    }
  }
}

- (void)downloadLogFromNodeWithID:(id)d type:(int64_t)type timeout:(double)timeout queue:(id)queue completion:(id)completion
{
  dCopy = d;
  queueCopy = queue;
  completionCopy = completion;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = sub_23928FDA8;
  v20[3] = &unk_278A74238;
  v20[4] = self;
  v21 = dCopy;
  timeoutCopy = timeout;
  typeCopy = type;
  v22 = queueCopy;
  v23 = completionCopy;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = sub_23928FDCC;
  v18[3] = &unk_278A74170;
  v19 = v23;
  v15 = v23;
  v16 = queueCopy;
  v17 = dCopy;
  [(MTRDeviceController_Concrete *)self asyncDispatchToMatterQueue:v20 errorHandler:v18];
}

- (id)accessGrantsForClusterPath:(id)path
{
  v21 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  sub_23947632C("/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDeviceController_Concrete.mm", 1973);
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_serverEndpoints;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = *v17;
    v8 = MEMORY[0x277CBEBF8];
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        endpoint = [pathCopy endpoint];
        endpointID = [v10 endpointID];
        v13 = [endpoint isEqual:endpointID];

        if (v13)
        {
          cluster = [pathCopy cluster];
          v8 = [v10 matterAccessGrantsForCluster:cluster];

          goto LABEL_12;
        }
      }

      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v8 = MEMORY[0x277CBEBF8];
  }

LABEL_12:

  return v8;
}

- (id)neededReadPrivilegeForClusterID:(id)d attributeID:(id)iD
{
  v44 = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  sub_23947632C("/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDeviceController_Concrete.mm", 1987);
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = self->_serverEndpoints;
  v22 = [(NSMutableArray *)obj countByEnumeratingWithState:&v37 objects:v43 count:16];
  if (v22)
  {
    v23 = *v38;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v38 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v37 + 1) + 8 * i);
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        serverClusters = [v7 serverClusters];
        v8 = [serverClusters countByEnumeratingWithState:&v33 objects:v42 count:16];
        if (v8)
        {
          v26 = *v34;
          do
          {
            for (j = 0; j != v8; ++j)
            {
              if (*v34 != v26)
              {
                objc_enumerationMutation(serverClusters);
              }

              v10 = *(*(&v33 + 1) + 8 * j);
              clusterID = [v10 clusterID];
              v12 = [clusterID isEqual:dCopy];

              if (v12)
              {
                v31 = 0u;
                v32 = 0u;
                v29 = 0u;
                v30 = 0u;
                attributes = [v10 attributes];
                v14 = [attributes countByEnumeratingWithState:&v29 objects:v41 count:16];
                if (v14)
                {
                  v15 = *v30;
                  while (2)
                  {
                    for (k = 0; k != v14; ++k)
                    {
                      if (*v30 != v15)
                      {
                        objc_enumerationMutation(attributes);
                      }

                      v17 = *(*(&v29 + 1) + 8 * k);
                      attributeID = [v17 attributeID];
                      v19 = [attributeID isEqual:iDCopy];

                      if (v19)
                      {
                        v20 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{objc_msgSend(v17, "requiredReadPrivilege")}];

                        goto LABEL_28;
                      }
                    }

                    v14 = [attributes countByEnumeratingWithState:&v29 objects:v41 count:16];
                    if (v14)
                    {
                      continue;
                    }

                    break;
                  }
                }
              }
            }

            v8 = [serverClusters countByEnumeratingWithState:&v33 objects:v42 count:16];
          }

          while (v8);
        }
      }

      v20 = 0;
      v22 = [(NSMutableArray *)obj countByEnumeratingWithState:&v37 objects:v43 count:16];
    }

    while (v22);
  }

  else
  {
    v20 = 0;
  }

LABEL_28:

  return v20;
}

- (id)nodesWithStoredData
{
  controllerDataStore = [(MTRDeviceController_Concrete *)self controllerDataStore];

  if (controllerDataStore)
  {
    controllerDataStore2 = [(MTRDeviceController_Concrete *)self controllerDataStore];
    nodesWithStoredData = [controllerDataStore2 nodesWithStoredData];
  }

  else
  {
    nodesWithStoredData = MEMORY[0x277CBEBF8];
  }

  return nodesWithStoredData;
}

- (BOOL)continueCommissioning:(id)commissioning withWiFiSSID:(id)d credentials:(id)credentials error:(id *)error
{
  v28 = *MEMORY[0x277D85DE8];
  commissioningCopy = commissioning;
  dCopy = d;
  credentialsCopy = credentials;
  currentCommissioning = [(MTRDeviceController_Concrete *)self currentCommissioning];
  if (currentCommissioning == commissioningCopy)
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = sub_239290654;
    v18[3] = &unk_278A73FB8;
    v18[4] = self;
    errorCopy = error;
    v19 = dCopy;
    v20 = credentialsCopy;
    v16 = MEMORY[0x23EE78590](v18);
    v15 = [(MTRDeviceController_Concrete *)self syncRunOnWorkQueueWithBoolReturnValue:v16 error:error];
  }

  else
  {
    v14 = sub_2393D9044(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      selfCopy = self;
      v24 = 2112;
      v25 = commissioningCopy;
      v26 = 2112;
      v27 = currentCommissioning;
      _os_log_impl(&dword_238DAE000, v14, OS_LOG_TYPE_ERROR, "%@ commissioning %@ has already stopped and been replaced by %@", buf, 0x20u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1, "%@ commissioning %@ has already stopped and been replaced by %@", self, commissioningCopy, currentCommissioning);
    }

    if (error)
    {
      sub_23921C1E4(MTRError, 0x7EB00000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDeviceController_Concrete.mm");
      *error = v15 = 0;
    }

    else
    {
      v15 = 0;
    }
  }

  return v15;
}

- (BOOL)continueCommissioning:(id)commissioning withOperationalDataset:(id)dataset error:(id *)error
{
  v24 = *MEMORY[0x277D85DE8];
  commissioningCopy = commissioning;
  datasetCopy = dataset;
  currentCommissioning = [(MTRDeviceController_Concrete *)self currentCommissioning];
  if (currentCommissioning == commissioningCopy)
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = sub_239290BD4;
    v15[3] = &unk_278A74260;
    v15[4] = self;
    errorCopy = error;
    v16 = datasetCopy;
    v13 = MEMORY[0x23EE78590](v15);
    v12 = [(MTRDeviceController_Concrete *)self syncRunOnWorkQueueWithBoolReturnValue:v13 error:error];
  }

  else
  {
    v11 = sub_2393D9044(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      selfCopy = self;
      v20 = 2112;
      v21 = commissioningCopy;
      v22 = 2112;
      v23 = currentCommissioning;
      _os_log_impl(&dword_238DAE000, v11, OS_LOG_TYPE_ERROR, "%@ commissioning %@ has already stopped and been replaced by %@", buf, 0x20u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1, "%@ commissioning %@ has already stopped and been replaced by %@", self, commissioningCopy, currentCommissioning);
    }

    if (error)
    {
      sub_23921C1E4(MTRError, 0x81500000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDeviceController_Concrete.mm");
      *error = v12 = 0;
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (void)commissioning:(id)commissioning readCommissioneeInfo:(id)info
{
  v14 = *MEMORY[0x277D85DE8];
  commissioningCopy = commissioning;
  infoCopy = info;
  currentCommissioning = [(MTRDeviceController_Concrete *)self currentCommissioning];
  if (currentCommissioning == commissioningCopy)
  {
    [(MTRDeviceController *)self controller:self readCommissioneeInfo:infoCopy];
  }

  else
  {
    v9 = sub_2393D9044(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v11 = commissioningCopy;
      v12 = 2112;
      v13 = currentCommissioning;
      _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_ERROR, "readCommissioneeInfo: notification for %@ but current commissioning is %@", buf, 0x16u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1, "readCommissioneeInfo: notification for %@ but current commissioning is %@", commissioningCopy, currentCommissioning);
    }
  }
}

- (void)commissioning:(id)commissioning completedDeviceAttestation:(id)attestation error:(id)error completion:(id)completion
{
  v23 = *MEMORY[0x277D85DE8];
  commissioningCopy = commissioning;
  attestationCopy = attestation;
  errorCopy = error;
  completionCopy = completion;
  v14 = sub_2393D9044(0);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v15 = objc_opt_class();
    v16 = NSStringFromSelector(a2);
    *buf = 138412546;
    v20 = v15;
    v21 = 2112;
    v22 = v16;
    _os_log_impl(&dword_238DAE000, v14, OS_LOG_TYPE_ERROR, "%@ or some ancestor must implement %@", buf, 0x16u);
  }

  if (sub_2393D5398(1u))
  {
    v17 = objc_opt_class();
    v18 = NSStringFromSelector(a2);
    sub_2393D5320(0, 1, "%@ or some ancestor must implement %@", v17, v18);
  }
}

- (void)commissioning:(id)commissioning succeededForNodeID:(id)d metrics:(id)metrics
{
  v17 = *MEMORY[0x277D85DE8];
  commissioningCopy = commissioning;
  dCopy = d;
  metricsCopy = metrics;
  currentCommissioning = [(MTRDeviceController_Concrete *)self currentCommissioning];
  if (currentCommissioning == commissioningCopy)
  {
    if ([commissioningCopy isInternallyCreated])
    {
      [(MTRDeviceController_Concrete *)self _commissioningDone:commissioningCopy];
    }

    [(MTRDeviceController *)self controller:self commissioningComplete:0 nodeID:dCopy metrics:metricsCopy];
  }

  else
  {
    v12 = sub_2393D9044(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v14 = commissioningCopy;
      v15 = 2112;
      v16 = currentCommissioning;
      _os_log_impl(&dword_238DAE000, v12, OS_LOG_TYPE_ERROR, "commissioning:succeededForNodeID: notification for %@ but current commissioning is %@", buf, 0x16u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1, "commissioning:succeededForNodeID: notification for %@ but current commissioning is %@", commissioningCopy, currentCommissioning);
    }
  }
}

- (void)commissioning:(id)commissioning paseSessionEstablishmentComplete:(id)complete
{
  v14 = *MEMORY[0x277D85DE8];
  commissioningCopy = commissioning;
  completeCopy = complete;
  currentCommissioning = [(MTRDeviceController_Concrete *)self currentCommissioning];
  if (currentCommissioning == commissioningCopy)
  {
    [(MTRDeviceController *)self controller:self commissioningSessionEstablishmentDone:completeCopy];
  }

  else
  {
    v9 = sub_2393D9044(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v11 = commissioningCopy;
      v12 = 2112;
      v13 = currentCommissioning;
      _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_ERROR, "commissioning:paseSessionEstablishmentComplete: notification for %@ but current commissioning is %@", buf, 0x16u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1, "commissioning:paseSessionEstablishmentComplete: notification for %@ but current commissioning is %@", commissioningCopy, currentCommissioning);
    }
  }
}

- (void)commissioning:(id)commissioning statusUpdate:(int64_t)update
{
  v13 = *MEMORY[0x277D85DE8];
  commissioningCopy = commissioning;
  currentCommissioning = [(MTRDeviceController_Concrete *)self currentCommissioning];
  if (currentCommissioning == commissioningCopy)
  {
    [(MTRDeviceController *)self controller:self statusUpdate:update];
  }

  else
  {
    v8 = sub_2393D9044(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v10 = commissioningCopy;
      v11 = 2112;
      v12 = currentCommissioning;
      _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_ERROR, "commissioning:statusUpdate: notification for %@ but current commissioning is %@", buf, 0x16u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1, "commissioning:statusUpdate: notification for %@ but current commissioning is %@", commissioningCopy, currentCommissioning);
    }
  }
}

- (void)commissioning:(id)commissioning provisionedNetworkCredentialsForDeviceID:(id)d
{
  v14 = *MEMORY[0x277D85DE8];
  commissioningCopy = commissioning;
  dCopy = d;
  currentCommissioning = [(MTRDeviceController_Concrete *)self currentCommissioning];
  if (currentCommissioning == commissioningCopy)
  {
    [(MTRDeviceController *)self controller:self commissioneeHasReceivedNetworkCredentials:dCopy];
  }

  else
  {
    v9 = sub_2393D9044(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v11 = commissioningCopy;
      v12 = 2112;
      v13 = currentCommissioning;
      _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_ERROR, "commissioningProvisionedNetworkCredentials: notification for %@ but current commissioning is %@", buf, 0x16u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1, "commissioningProvisionedNetworkCredentials: notification for %@ but current commissioning is %@", commissioningCopy, currentCommissioning);
    }
  }
}

- (void)commissioning:(id)commissioning failedWithError:(id)error forDeviceID:(id)d metrics:(id)metrics
{
  commissioningCopy = commissioning;
  errorCopy = error;
  dCopy = d;
  metricsCopy = metrics;
  if ([commissioningCopy isInternallyCreated])
  {
    [(MTRDeviceController_Concrete *)self _commissioningDone:commissioningCopy];
  }

  [(MTRDeviceController *)self controller:self commissioningComplete:errorCopy nodeID:dCopy metrics:metricsCopy];
}

- (MTRCommissioningOperation)currentCommissioning
{
  WeakRetained = objc_loadWeakRetained(&self->_currentCommissioning);

  return WeakRetained;
}

- (id).cxx_construct
{
  *(self + 15) = &unk_284BB9138;
  *(self + 712) = 0;
  *(self + 14) = &unk_284BA8C20;
  *(self + 90) = 0;
  *(self + 91) = &unk_284BB9138;
  *(self + 102) = &unk_284BB9138;
  *(self + 1408) = 0;
  *(self + 101) = &unk_284BA8C20;
  *(self + 177) = 0;
  *(self + 178) = &unk_284BB9138;
  return self;
}

- (id)fetchAttestationChallengeForDeviceId:(unint64_t)id
{
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:id];
  v5 = [(MTRDeviceController_Concrete *)self attestationChallengeForDeviceID:v4];

  return v5;
}

- (BOOL)getBaseDevice:(unint64_t)device queue:(id)queue completionHandler:(id)handler
{
  queueCopy = queue;
  handlerCopy = handler;
  v22 = 0;
  v10 = [(MTRDeviceController_Concrete *)self checkIsRunning:&v22];
  v11 = v22;
  if (v10)
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = sub_239291D6C;
    v15[3] = &unk_278A742B0;
    deviceCopy = device;
    v16[0] = queueCopy;
    v16[1] = self;
    v17 = handlerCopy;
    [(MTRDeviceController_Concrete *)self getSessionForNode:device completion:v15];
    v12 = v16;
    v13 = v17;
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_239291D54;
    block[3] = &unk_278A71698;
    v12 = &v21;
    v21 = handlerCopy;
    v20 = v11;
    dispatch_async(queueCopy, block);
    v13 = v20;
  }

  return v10;
}

- (BOOL)pairDevice:(unint64_t)device discriminator:(unsigned __int16)discriminator setupPINCode:(unsigned int)code error:(id *)error
{
  v7 = *&code;
  discriminatorCopy = discriminator;
  v11 = [MTRSetupPayload alloc];
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v7];
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:discriminatorCopy];
  v14 = [(MTRSetupPayload *)v11 initWithSetupPasscode:v12 discriminator:v13];

  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:device];
  LOBYTE(error) = [(MTRDeviceController_Concrete *)self setupCommissioningSessionWithPayload:v14 newNodeID:v15 error:error];

  return error;
}

- (BOOL)pairDevice:(unint64_t)device address:(id)address port:(unsigned __int16)port setupPINCode:(unsigned int)code error:(id *)error
{
  v37 = *MEMORY[0x277D85DE8];
  addressCopy = address;
  currentCommissioning = [(MTRDeviceController_Concrete *)self currentCommissioning];
  if (currentCommissioning)
  {
    v14 = sub_2393D9044(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      *&buf[4] = self;
      *&buf[12] = 2112;
      *&buf[14] = currentCommissioning;
      _os_log_impl(&dword_238DAE000, v14, OS_LOG_TYPE_ERROR, "%@ Can't set up commissioning session with address/port: commissioning %@ in progress", buf, 0x16u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1, "%@ Can't set up commissioning session with address/port: commissioning %@ in progress", self, currentCommissioning);
    }

    if (error)
    {
      sub_23921C1E4(MTRError, 0x8F400000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDeviceController_Concrete.mm");
      *error = v15 = 0;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v16 = +[MTRMetricsCollector sharedInstance];
    [v16 resetMetrics];

    *buf = 0;
    *&buf[8] = "dwnfw_device_commissioning";
    buf[20] = 0;
    sub_23948BD20(buf);
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x4012000000;
    v32 = sub_239288CB4;
    v33 = nullsub_836;
    v34 = "";
    v35 = 0;
    v36 = 0;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = sub_239292304;
    v23[3] = &unk_278A742D8;
    v26 = buf;
    portCopy = port;
    v24 = addressCopy;
    selfCopy = self;
    codeCopy = code;
    deviceCopy = device;
    errorCopy = error;
    v17 = MEMORY[0x23EE78590](v23);
    v15 = [(MTRDeviceController_Concrete *)self syncRunOnWorkQueueWithBoolReturnValue:v17 error:error];
    if (!v15)
    {
      v19 = 1;
      v20 = "dwnfw_device_commissioning";
      v21 = *(*&buf[8] + 48);
      v22 = 3;
      sub_23948BD20(&v19);
    }

    _Block_object_dispose(buf, 8);
  }

  return v15;
}

- (BOOL)pairDevice:(unint64_t)device onboardingPayload:(id)payload error:(id *)error
{
  payloadCopy = payload;
  v9 = [[MTRSetupPayload alloc] initWithPayload:payloadCopy];
  if (v9)
  {
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:device];
    v11 = [(MTRDeviceController_Concrete *)self setupCommissioningSessionWithPayload:v9 newNodeID:v10 error:error];
  }

  else if (error)
  {
    sub_23921C1E4(MTRError, 0x9280000002FLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDeviceController_Concrete.mm");
    *error = v11 = 0;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)openPairingWindow:(unint64_t)window duration:(unint64_t)duration error:(id *)error
{
  v19 = *MEMORY[0x277D85DE8];
  if (duration < 0x10000)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = sub_2392927C8;
    v12[3] = &unk_278A74300;
    v12[4] = self;
    v12[5] = window;
    v12[6] = duration;
    v12[7] = error;
    v10 = MEMORY[0x23EE78590](v12, a2);
    v9 = [(MTRDeviceController_Concrete *)self syncRunOnWorkQueueWithBoolReturnValue:v10 error:error];
  }

  else
  {
    v8 = sub_2393D9044(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      selfCopy = self;
      v15 = 2048;
      durationCopy = duration;
      v17 = 1024;
      v18 = 0xFFFF;
      _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_ERROR, "%@ Error: Duration %lu is too large. Max value %d", buf, 0x1Cu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1, "%@ Error: Duration %lu is too large. Max value %d", self, duration, 0xFFFFLL);
    }

    if (error)
    {
      sub_23921C1E4(MTRError, 0x9350000008FLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDeviceController_Concrete.mm");
      *error = v9 = 0;
    }

    else
    {
      return 0;
    }
  }

  return v9;
}

- (id)openPairingWindowWithPIN:(unint64_t)n duration:(unint64_t)duration discriminator:(unint64_t)discriminator setupPIN:(unint64_t)iN error:(id *)error
{
  v30 = *MEMORY[0x277D85DE8];
  if (duration >= 0x10000)
  {
    v10 = sub_2393D9044(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      *&buf[4] = self;
      *&buf[12] = 2048;
      *&buf[14] = duration;
      *&buf[22] = 1024;
      LODWORD(v24) = 0xFFFF;
      _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_ERROR, "%@ Error: Duration %lu is too large. Max value %d", buf, 0x1Cu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1, "%@ Error: Duration %lu is too large. Max value %d", self, duration, 0xFFFFLL);
    }

    if (error)
    {
      v11 = sub_23921C1E4(MTRError, 0x94F0000008FLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDeviceController_Concrete.mm");
LABEL_15:
      v14 = 0;
      *error = v11;
      goto LABEL_28;
    }

LABEL_16:
    v14 = 0;
    goto LABEL_28;
  }

  if (discriminator >= 0x1000)
  {
    v13 = sub_2393D9044(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      *&buf[4] = self;
      *&buf[12] = 2048;
      *&buf[14] = discriminator;
      *&buf[22] = 1024;
      LODWORD(v24) = 4095;
      _os_log_impl(&dword_238DAE000, v13, OS_LOG_TYPE_ERROR, "%@ Error: Discriminator %lu is too large. Max value %d", buf, 0x1Cu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1, "%@ Error: Discriminator %lu is too large. Max value %d", self, discriminator, 4095);
    }

    if (error)
    {
      v11 = sub_23921C1E4(MTRError, 0x9570000008FLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDeviceController_Concrete.mm");
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x4012000000;
  v24 = sub_239288CB4;
  v25 = nullsub_836;
  v26 = "";
  v27[0] = 0;
  v27[1] = 0;
  v22[0] = "dwnfw_open_pairing_window";
  v22[1] = v27;
  *v28 = 0;
  *&v29[4] = "dwnfw_open_pairing_window";
  v29[16] = 0;
  sub_23948BD20(v28);
  if (HIDWORD(iN) || (sub_23948FB60(iN) & 1) == 0)
  {
    v18 = sub_2393D9044(0);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *v28 = 138412546;
      *v29 = self;
      *&v29[8] = 2048;
      *&v29[10] = iN;
      _os_log_impl(&dword_238DAE000, v18, OS_LOG_TYPE_ERROR, "%@ Error: Setup pin %lu is not valid", v28, 0x16u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1, "%@ Error: Setup pin %lu is not valid", self, iN);
    }

    v19 = *&buf[8];
    *(*&buf[8] + 48) = 0x9610000008FLL;
    *(v19 + 56) = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDeviceController_Concrete.mm";
    if (error)
    {
      sub_23921C1E4(MTRError, *(v19 + 48), "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRDeviceController_Concrete.mm");
      *error = v14 = 0;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = sub_239292CD4;
    v21[3] = &unk_278A74328;
    v21[4] = self;
    v21[5] = buf;
    v21[6] = n;
    v21[7] = duration;
    v21[8] = discriminator;
    v21[9] = iN;
    v21[10] = error;
    v17 = MEMORY[0x23EE78590](v21);
    v14 = [(MTRDeviceController_Concrete *)self syncRunOnWorkQueueWithReturnValue:v17 error:error];
  }

  sub_238F3F7E4(v22);
  _Block_object_dispose(buf, 8);
LABEL_28:

  return v14;
}

- (void)setPairingDelegate:(id)delegate queue:(id)queue
{
  delegateCopy = delegate;
  queueCopy = queue;
  v7 = [[MTRDevicePairingDelegateShim alloc] initWithDelegate:delegateCopy];
  [(MTRDeviceController *)self setDeviceControllerDelegate:v7 queue:queueCopy];
}

- (void)setNocChainIssuer:(id)issuer queue:(id)queue
{
  issuerCopy = issuer;
  queueCopy = queue;
  v7 = [[MTROperationalCertificateChainIssuerShim alloc] initWithIssuer:issuerCopy];
  [(MTRDeviceController_Concrete *)self setOperationalCertificateIssuer:v7 queue:queueCopy];
}

@end