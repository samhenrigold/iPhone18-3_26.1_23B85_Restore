@interface HMDMPCSendMRCommandOperation
+ (id)logCategory;
- (HMDMPCSendMRCommandOperation)initWithCommand:(unsigned int)command destination:(id)destination options:(id)options externalObjectInterface:(id)interface;
- (HMDMPCSendMRCommandOperation)initWithCommand:(unsigned int)command options:(id)options destination:(id)destination;
- (HMDMPCSendMRCommandOperation)initWithPlaybackArchive:(id)archive destination:(id)destination options:(id)options externalObjectInterface:(id)interface;
- (HMDMPCSendMRCommandOperation)initWithPlaybackArchive:(id)archive options:(id)options destination:(id)destination;
- (NSArray)attributeDescriptions;
- (NSString)shortDescription;
- (int64_t)errorCodeForCurrentOperation;
- (void)generateMPCErrorOrFinishWithError:(void *)error statuses:;
- (void)main;
@end

@implementation HMDMPCSendMRCommandOperation

- (int64_t)errorCodeForCurrentOperation
{
  v23 = *MEMORY[0x277D85DE8];
  playbackArchive = [(HMDMPCSendMRCommandOperation *)self playbackArchive];

  if (!playbackArchive)
  {
    mediaRemoteCommand = [(HMDMPCSendMRCommandOperation *)self mediaRemoteCommand];

    if (mediaRemoteCommand)
    {
      mediaRemoteCommand2 = [(HMDMPCSendMRCommandOperation *)self mediaRemoteCommand];
      unsignedIntValue = [mediaRemoteCommand2 unsignedIntValue];

      switch(unsignedIntValue)
      {
        case 0:
          return 2959;
        case 1:
          return 2960;
        case 3:
          return 2961;
      }

      v14 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v16 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_19;
      }

      v17 = HMFGetLogIdentifier();
      mediaRemoteCommand3 = [(HMDMPCSendMRCommandOperation *)selfCopy2 mediaRemoteCommand];
      v19 = 138543618;
      v20 = v17;
      v21 = 1024;
      unsignedIntValue2 = [mediaRemoteCommand3 unsignedIntValue];
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@Unhandled MR command case %u", &v19, 0x12u);
    }

    else
    {
      v14 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v16 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
LABEL_19:

        objc_autoreleasePoolPop(v14);
        return 2957;
      }

      v17 = HMFGetLogIdentifier();
      v19 = 138543362;
      v20 = v17;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@Generic MR command error", &v19, 0xCu);
    }

    goto LABEL_19;
  }

  playbackArchive2 = [(HMDMPCSendMRCommandOperation *)self playbackArchive];
  bundleIdentifier = [playbackArchive2 bundleIdentifier];
  v6 = [bundleIdentifier hasPrefix:@"com.apple.SoundScapes"];

  if (v6)
  {
    return 2964;
  }

  playbackArchive3 = [(HMDMPCSendMRCommandOperation *)self playbackArchive];
  bundleIdentifier2 = [playbackArchive3 bundleIdentifier];
  v13 = [bundleIdentifier2 hasPrefix:@"com.apple.Music"];

  if (v13)
  {
    return 2963;
  }

  else
  {
    return 2958;
  }
}

- (NSArray)attributeDescriptions
{
  v17[4] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  mediaRemoteCommand = [(HMDMPCSendMRCommandOperation *)self mediaRemoteCommand];
  v5 = [v3 initWithName:@"Media Remote Command" value:mediaRemoteCommand];
  v17[0] = v5;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  options = [(HMDMPCSendMRCommandOperation *)self options];
  v8 = [v6 initWithName:@"Options" value:options];
  v17[1] = v8;
  v9 = objc_alloc(MEMORY[0x277D0F778]);
  playbackArchive = [(HMDMPCSendMRCommandOperation *)self playbackArchive];
  v11 = [v9 initWithName:@"Playback Archive" value:playbackArchive];
  v17[2] = v11;
  v12 = objc_alloc(MEMORY[0x277D0F778]);
  destination = [(HMDMPCSendMRCommandOperation *)self destination];
  v14 = [v12 initWithName:@"Destination" value:destination];
  v17[3] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:4];

  return v15;
}

- (NSString)shortDescription
{
  v3 = MEMORY[0x277CCACA8];
  shortDescription = [objc_opt_class() shortDescription];
  mediaRemoteCommand = [(HMDMPCSendMRCommandOperation *)self mediaRemoteCommand];
  options = [(HMDMPCSendMRCommandOperation *)self options];
  destination = [(HMDMPCSendMRCommandOperation *)self destination];
  v8 = [v3 stringWithFormat:@"%@ MR Command: %@, options: %@ destination: %@", shortDescription, mediaRemoteCommand, options, destination];

  return v8;
}

- (void)main
{
  v36 = *MEMORY[0x277D85DE8];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  dependencies = [(HMDMPCSendMRCommandOperation *)self dependencies];
  v4 = [dependencies countByEnumeratingWithState:&v25 objects:v35 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v26;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v26 != v6)
        {
          objc_enumerationMutation(dependencies);
        }

        v8 = *(*(&v25 + 1) + 8 * i);
        error = [v8 error];

        if (error)
        {
          error2 = [v8 error];
          [(HMFOperation *)self cancelWithError:error2];
          goto LABEL_18;
        }
      }

      v5 = [dependencies countByEnumeratingWithState:&v25 objects:v35 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  mediaRemoteCommand = [(HMDMPCSendMRCommandOperation *)self mediaRemoteCommand];

  if (mediaRemoteCommand)
  {
    dependencies = [(HMDMPCSendMRCommandOperation *)self mediaRemoteCommand];
    unsignedIntValue = [dependencies unsignedIntValue];
    error2 = [(HMDMPCSendMRCommandOperation *)self destination];
    options = [(HMDMPCSendMRCommandOperation *)self options];
    v14 = options;
    if (!self)
    {
      goto LABEL_17;
    }

    v15 = options;
    v16 = error2;
    externalObjectInterface = [(HMDMPCSendMRCommandOperation *)self externalObjectInterface];
    createMPCAssistantCommand = [externalObjectInterface createMPCAssistantCommand];

    v29 = MEMORY[0x277D85DD0];
    v30 = 3221225472;
    v31 = __66__HMDMPCSendMRCommandOperation_sendMRCommand_destination_options___block_invoke;
    v32 = &unk_278684218;
    selfCopy2 = self;
    v34 = createMPCAssistantCommand;
    v19 = createMPCAssistantCommand;
    [v19 sendCommand:unsignedIntValue toDestination:v16 withOptions:v15 completion:&v29];
    goto LABEL_16;
  }

  playbackArchive = [(HMDMPCSendMRCommandOperation *)self playbackArchive];

  if (!playbackArchive)
  {
    dependencies = [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:2962 description:@"No command or queue in SendCommandOperation" underlyingError:0];
    [(HMFOperation *)self cancelWithError:dependencies];
    goto LABEL_19;
  }

  dependencies = [(HMDMPCSendMRCommandOperation *)self playbackArchive];
  error2 = [(HMDMPCSendMRCommandOperation *)self destination];
  options2 = [(HMDMPCSendMRCommandOperation *)self options];
  v14 = options2;
  if (self)
  {
    v22 = options2;
    v15 = error2;
    v16 = dependencies;
    externalObjectInterface2 = [(HMDMPCSendMRCommandOperation *)self externalObjectInterface];
    createMPCAssistantCommand2 = [externalObjectInterface2 createMPCAssistantCommand];

    v29 = MEMORY[0x277D85DD0];
    v30 = 3221225472;
    v31 = __72__HMDMPCSendMRCommandOperation_sendPlaybackArchive_destination_options___block_invoke;
    v32 = &unk_278684218;
    selfCopy2 = self;
    v34 = createMPCAssistantCommand2;
    v19 = createMPCAssistantCommand2;
    [v19 sendPlaybackArchive:v16 toDestination:v15 withOptions:v22 completion:&v29];

LABEL_16:
  }

LABEL_17:

LABEL_18:
LABEL_19:
}

void __72__HMDMPCSendMRCommandOperation_sendPlaybackArchive_destination_options___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = 138543618;
    v12 = v10;
    v13 = 2080;
    v14 = "[HMDMPCSendMRCommandOperation sendPlaybackArchive:destination:options:]_block_invoke";
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@[HMDMPCSendMRCommandOperation] %s", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  [(HMDMPCSendMRCommandOperation *)*(a1 + 32) generateMPCErrorOrFinishWithError:v5 statuses:v6];
}

- (void)generateMPCErrorOrFinishWithError:(void *)error statuses:
{
  v45 = *MEMORY[0x277D85DE8];
  v5 = a2;
  errorCopy = error;
  if (!self)
  {
    goto LABEL_35;
  }

  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = HMFGetLogIdentifier();
    *buf = 138543874;
    v40 = v10;
    v41 = 2112;
    v42 = v5;
    v43 = 2112;
    v44 = errorCopy;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@[HMDMPCSendMRCommandOperation] error %@ statuses %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  mediaRemoteCommand = [selfCopy mediaRemoteCommand];
  if (mediaRemoteCommand)
  {
    mediaRemoteCommand2 = [selfCopy mediaRemoteCommand];
    v13 = [mediaRemoteCommand2 unsignedIntValue] == 1;
  }

  else
  {
    v13 = 0;
  }

  if (!v5)
  {
    goto LABEL_16;
  }

  if (MRMediaRemoteErrorIsInformational())
  {
    v14 = objc_autoreleasePoolPush();
    v15 = selfCopy;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543362;
      v40 = v17;
      v18 = "%{public}@[HMDMPCSendMRCommandOperation] discarding informational media remote error";
      v19 = v16;
      v20 = 12;
LABEL_14:
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_DEFAULT, v18, buf, v20);

      goto LABEL_15;
    }

    goto LABEL_15;
  }

  if (MPCAssistantErrorIsInformational())
  {
    v14 = objc_autoreleasePoolPush();
    v21 = selfCopy;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543618;
      v40 = v17;
      v41 = 2112;
      v42 = v5;
      v18 = "%{public}@[HMDMPCSendMRCommandOperation] discarding informational media playback core assistant error: %@";
      v19 = v16;
      v20 = 22;
      goto LABEL_14;
    }

LABEL_15:

    objc_autoreleasePoolPop(v14);
LABEL_16:
    if (v13 & [errorCopy containsObject:&unk_283E74CF0])
    {
      v5 = 0;
      goto LABEL_18;
    }

    if ([errorCopy containsObject:&unk_283E74D08])
    {
      v5 = 0;
LABEL_24:
      [selfCopy finish];
      goto LABEL_35;
    }

    v26 = MEMORY[0x277CCA9B8];
    v37 = *MEMORY[0x277CCA068];
    errorCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"statuses %@", errorCopy];
    v38 = errorCopy;
    v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
    v29 = [v26 hmErrorWithCode:2005 userInfo:v28];

    v5 = 0;
    if (!v29)
    {
      goto LABEL_24;
    }

    goto LABEL_32;
  }

  domain = [v5 domain];
  if ([domain isEqualToString:*MEMORY[0x277D277F8]])
  {
    v31 = [v5 code] == 1 || objc_msgSend(v5, "code") == 18;
  }

  else
  {
    v31 = 0;
  }

  if ((v13 & ([errorCopy containsObject:&unk_283E74CF0] | v31)) == 1)
  {
LABEL_18:
    v22 = objc_autoreleasePoolPush();
    v23 = selfCopy;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = HMFGetLogIdentifier();
      *buf = 138543618;
      v40 = v25;
      v41 = 2112;
      v42 = v5;
      _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_DEFAULT, "%{public}@[HMDMPCSendMRCommandOperation] discarding pause media remote error and assuming success as there is no now playing application (%@)", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v22);
    goto LABEL_24;
  }

  v29 = v5;
  v5 = v29;
LABEL_32:
  v32 = [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:objc_msgSend(selfCopy description:"errorCodeForCurrentOperation") underlyingError:{@"Media remote MPC command failure", v29}];
  v33 = objc_autoreleasePoolPush();
  v34 = selfCopy;
  v35 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
  {
    v36 = HMFGetLogIdentifier();
    *buf = 138543874;
    v40 = v36;
    v41 = 2112;
    v42 = v32;
    v43 = 2112;
    v44 = v29;
    _os_log_impl(&dword_229538000, v35, OS_LOG_TYPE_ERROR, "%{public}@[HMDMPCSendMRCommandOperation] Cancel with error %@, underlying error: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v33);
  [v34 cancelWithError:v32];

LABEL_35:
}

void __66__HMDMPCSendMRCommandOperation_sendMRCommand_destination_options___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = 138543618;
    v12 = v10;
    v13 = 2080;
    v14 = "[HMDMPCSendMRCommandOperation sendMRCommand:destination:options:]_block_invoke";
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@[HMDMPCSendMRCommandOperation] %s", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  [(HMDMPCSendMRCommandOperation *)*(a1 + 32) generateMPCErrorOrFinishWithError:v5 statuses:v6];
}

- (HMDMPCSendMRCommandOperation)initWithPlaybackArchive:(id)archive destination:(id)destination options:(id)options externalObjectInterface:(id)interface
{
  archiveCopy = archive;
  destinationCopy = destination;
  optionsCopy = options;
  interfaceCopy = interface;
  v20.receiver = self;
  v20.super_class = HMDMPCSendMRCommandOperation;
  v15 = [(HMFOperation *)&v20 initWithTimeout:0.0];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_playbackArchive, archive);
    objc_storeStrong(&v16->_destination, destination);
    v17 = objc_msgSend_copy(optionsCopy);
    options = v16->_options;
    v16->_options = v17;

    objc_storeStrong(&v16->_externalObjectInterface, interface);
  }

  return v16;
}

- (HMDMPCSendMRCommandOperation)initWithPlaybackArchive:(id)archive options:(id)options destination:(id)destination
{
  destinationCopy = destination;
  optionsCopy = options;
  archiveCopy = archive;
  v11 = objc_alloc_init(HMDMPCSendMRCommandOperationDefaultExternalObjectInterface);
  v12 = [(HMDMPCSendMRCommandOperation *)self initWithPlaybackArchive:archiveCopy destination:destinationCopy options:optionsCopy externalObjectInterface:v11];

  return v12;
}

- (HMDMPCSendMRCommandOperation)initWithCommand:(unsigned int)command destination:(id)destination options:(id)options externalObjectInterface:(id)interface
{
  v9 = *&command;
  destinationCopy = destination;
  optionsCopy = options;
  interfaceCopy = interface;
  v20.receiver = self;
  v20.super_class = HMDMPCSendMRCommandOperation;
  v14 = [(HMFOperation *)&v20 initWithTimeout:0.0];
  if (v14)
  {
    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v9];
    mediaRemoteCommand = v14->_mediaRemoteCommand;
    v14->_mediaRemoteCommand = v15;

    v17 = objc_msgSend_copy(optionsCopy);
    options = v14->_options;
    v14->_options = v17;

    objc_storeStrong(&v14->_destination, destination);
    objc_storeStrong(&v14->_externalObjectInterface, interface);
  }

  return v14;
}

- (HMDMPCSendMRCommandOperation)initWithCommand:(unsigned int)command options:(id)options destination:(id)destination
{
  v6 = *&command;
  destinationCopy = destination;
  optionsCopy = options;
  v10 = objc_alloc_init(HMDMPCSendMRCommandOperationDefaultExternalObjectInterface);
  v11 = [(HMDMPCSendMRCommandOperation *)self initWithCommand:v6 destination:destinationCopy options:optionsCopy externalObjectInterface:v10];

  return v11;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t9_241673 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t9_241673, &__block_literal_global_241674);
  }

  v3 = logCategory__hmf_once_v10_241675;

  return v3;
}

void __43__HMDMPCSendMRCommandOperation_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v10_241675;
  logCategory__hmf_once_v10_241675 = v0;
}

@end