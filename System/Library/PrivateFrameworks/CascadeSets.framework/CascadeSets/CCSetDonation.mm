@interface CCSetDonation
+ (id)donationWithName:(id)name itemType:(unsigned __int16)type service:(id)service errorCode:(int64_t)code priors:(id)priors;
+ (void)_setDonationWithItemType:(unsigned __int16)type descriptors:(id)descriptors version:(unint64_t)version validity:(id)validity options:(unsigned __int16)options serviceProvider:(id)provider queue:(id)queue timeoutNanos:(unint64_t)delta completion:(id)self1;
+ (void)deleteSetWithItemType:(unsigned __int16)type descriptors:(id)descriptors completion:(id)completion;
+ (void)deleteSetWithItemType:(unsigned __int16)type descriptors:(id)descriptors serviceProvider:(id)provider completion:(id)completion;
+ (void)fullSetDonationWithItemType:(unsigned __int16)type completion:(id)completion;
+ (void)fullSetDonationWithItemType:(unsigned __int16)type descriptors:(id)descriptors completion:(id)completion;
+ (void)fullSetDonationWithItemType:(unsigned __int16)type descriptors:(id)descriptors serviceProvider:(id)provider completion:(id)completion;
+ (void)incrementalSetDonationWithItemType:(unsigned __int16)type completion:(id)completion;
+ (void)incrementalSetDonationWithItemType:(unsigned __int16)type descriptors:(id)descriptors completion:(id)completion;
+ (void)incrementalSetDonationWithItemType:(unsigned __int16)type descriptors:(id)descriptors serviceProvider:(id)provider completion:(id)completion;
+ (void)incrementalSetDonationWithItemType:(unsigned __int16)type descriptors:(id)descriptors version:(unint64_t)version validity:(id)validity completion:(id)completion;
+ (void)incrementalSetDonationWithItemType:(unsigned __int16)type descriptors:(id)descriptors version:(unint64_t)version validity:(id)validity serviceProvider:(id)provider completion:(id)completion;
+ (void)remoteCRDTSetDonationWithItemType:(unsigned __int16)type descriptors:(id)descriptors serviceProvider:(id)provider completion:(id)completion;
- (BOOL)_addItem:(id)item error:(id *)error;
- (BOOL)_finishWithOptions:(unsigned __int16)options error:(id *)error;
- (BOOL)_flushItemsWithError:(id *)error;
- (BOOL)_remoteUpdateFromDeviceUUID:(id)d withType:(unsigned __int8)type mergeableDelta:(id)delta peerDeviceSite:(id)site relayedDeviceSites:(id)sites;
- (BOOL)_removeSourceItemIdentifier:(id)identifier error:(id *)error;
- (BOOL)updateRevisionToken:(id)token error:(id *)error;
- (CCSetDonation)init;
- (CCSetDonation)initWithName:(id)name itemType:(unsigned __int16)type service:(id)service errorCode:(int64_t)code priors:(id)priors flushThreshold:(unint64_t)threshold;
- (NSString)priorRevisionToken;
- (void)cancel;
- (void)dealloc;
@end

@implementation CCSetDonation

- (void)dealloc
{
  [(CCSetDonation *)self cancel];
  v3.receiver = self;
  v3.super_class = CCSetDonation;
  [(CCSetDonation *)&v3 dealloc];
}

- (void)cancel
{
  service = self->_service;
  if (service)
  {
    [(CCDonateService *)service abortSetDonation];
    v4 = self->_service;
    self->_service = 0;
  }
}

- (CCSetDonation)init
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"init unsupported" userInfo:MEMORY[0x1E695E0F8]];
  objc_exception_throw(v2);
}

+ (id)donationWithName:(id)name itemType:(unsigned __int16)type service:(id)service errorCode:(int64_t)code priors:(id)priors
{
  typeCopy = type;
  priorsCopy = priors;
  serviceCopy = service;
  nameCopy = name;
  v14 = [objc_alloc(objc_opt_class()) initWithName:nameCopy itemType:typeCopy service:serviceCopy errorCode:code priors:priorsCopy flushThreshold:20480];

  return v14;
}

- (CCSetDonation)initWithName:(id)name itemType:(unsigned __int16)type service:(id)service errorCode:(int64_t)code priors:(id)priors flushThreshold:(unint64_t)threshold
{
  nameCopy = name;
  serviceCopy = service;
  priorsCopy = priors;
  v36.receiver = self;
  v36.super_class = CCSetDonation;
  v17 = [(CCSetDonation *)&v36 init];
  v18 = v17;
  if (!v17)
  {
    goto LABEL_10;
  }

  v35.receiver = v17;
  v35.super_class = CCSetDonation;
  v19 = [(CCSetDonation *)&v35 description];
  v20 = [v19 stringByAppendingString:nameCopy];
  v21 = *(v18 + 24);
  *(v18 + 24) = v20;

  objc_storeStrong((v18 + 8), service);
  *(v18 + 16) = type;
  *(v18 + 48) = threshold;
  *(v18 + 56) = 0;
  v22 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v23 = *(v18 + 32);
  *(v18 + 32) = v22;

  v24 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v25 = *(v18 + 40);
  *(v18 + 40) = v24;

  v26 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v27 = dispatch_queue_create("CCSetDonation.instance", v26);
  v28 = *(v18 + 96);
  *(v18 + 96) = v27;

  *(v18 + 64) = 0;
  objc_storeStrong((v18 + 80), priors);
  v29 = objc_opt_class();
  if (v29 == objc_opt_class() || (v30 = objc_opt_class(), v30 == objc_opt_class()))
  {
LABEL_9:
    *(v18 + 88) = code;
LABEL_10:
    v33 = v18;
    goto LABEL_11;
  }

  v31 = objc_opt_class();
  if (v31 == objc_opt_class())
  {
    code = 0;
    goto LABEL_9;
  }

  v32 = __biome_log_for_category();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
  {
    [CCSetDonation initWithName:v18 itemType:v32 service:? errorCode:? priors:? flushThreshold:?];
  }

  v33 = 0;
LABEL_11:

  return v33;
}

+ (void)fullSetDonationWithItemType:(unsigned __int16)type completion:(id)completion
{
  typeCopy = type;
  completionCopy = completion;
  [objc_opt_class() fullSetDonationWithItemType:typeCopy descriptors:MEMORY[0x1E695E0F0] completion:completionCopy];
}

+ (void)fullSetDonationWithItemType:(unsigned __int16)type descriptors:(id)descriptors completion:(id)completion
{
  typeCopy = type;
  completionCopy = completion;
  descriptorsCopy = descriptors;
  v9 = objc_opt_class();
  v10 = _sharedXPCClientFactory(v9);
  [v9 fullSetDonationWithItemType:typeCopy descriptors:descriptorsCopy serviceProvider:v10 completion:completionCopy];
}

+ (void)fullSetDonationWithItemType:(unsigned __int16)type descriptors:(id)descriptors serviceProvider:(id)provider completion:(id)completion
{
  typeCopy = type;
  completionCopy = completion;
  aBlock = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __84__CCSetDonation_fullSetDonationWithItemType_descriptors_serviceProvider_completion___block_invoke;
  v19 = &unk_1E7C8B4E8;
  v20 = completionCopy;
  v11 = completionCopy;
  providerCopy = provider;
  descriptorsCopy = descriptors;
  v14 = _Block_copy(&aBlock);
  v15 = _sharedQueue();
  [self _setDonationWithItemType:typeCopy descriptors:descriptorsCopy version:0 validity:0 options:4 serviceProvider:providerCopy queue:v15 timeoutNanos:120000000000 completion:{v14, aBlock, v17, v18, v19}];
}

uint64_t __84__CCSetDonation_fullSetDonationWithItemType_descriptors_serviceProvider_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

+ (void)incrementalSetDonationWithItemType:(unsigned __int16)type completion:(id)completion
{
  typeCopy = type;
  completionCopy = completion;
  [objc_opt_class() incrementalSetDonationWithItemType:typeCopy descriptors:MEMORY[0x1E695E0F0] completion:completionCopy];
}

+ (void)incrementalSetDonationWithItemType:(unsigned __int16)type descriptors:(id)descriptors completion:(id)completion
{
  typeCopy = type;
  completionCopy = completion;
  descriptorsCopy = descriptors;
  v9 = objc_opt_class();
  v10 = _sharedXPCClientFactory(v9);
  [v9 incrementalSetDonationWithItemType:typeCopy descriptors:descriptorsCopy serviceProvider:v10 completion:completionCopy];
}

+ (void)incrementalSetDonationWithItemType:(unsigned __int16)type descriptors:(id)descriptors serviceProvider:(id)provider completion:(id)completion
{
  typeCopy = type;
  completionCopy = completion;
  aBlock = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __91__CCSetDonation_incrementalSetDonationWithItemType_descriptors_serviceProvider_completion___block_invoke;
  v19 = &unk_1E7C8B4E8;
  v20 = completionCopy;
  v11 = completionCopy;
  providerCopy = provider;
  descriptorsCopy = descriptors;
  v14 = _Block_copy(&aBlock);
  v15 = _sharedQueue();
  [self _setDonationWithItemType:typeCopy descriptors:descriptorsCopy version:0 validity:0 options:0 serviceProvider:providerCopy queue:v15 timeoutNanos:120000000000 completion:{v14, aBlock, v17, v18, v19}];
}

uint64_t __91__CCSetDonation_incrementalSetDonationWithItemType_descriptors_serviceProvider_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

+ (void)incrementalSetDonationWithItemType:(unsigned __int16)type descriptors:(id)descriptors version:(unint64_t)version validity:(id)validity completion:(id)completion
{
  typeCopy = type;
  completionCopy = completion;
  validityCopy = validity;
  descriptorsCopy = descriptors;
  v14 = objc_opt_class();
  v15 = _sharedXPCClientFactory(v14);
  [v14 incrementalSetDonationWithItemType:typeCopy descriptors:descriptorsCopy version:version validity:validityCopy serviceProvider:v15 completion:completionCopy];
}

+ (void)incrementalSetDonationWithItemType:(unsigned __int16)type descriptors:(id)descriptors version:(unint64_t)version validity:(id)validity serviceProvider:(id)provider completion:(id)completion
{
  typeCopy = type;
  completionCopy = completion;
  providerCopy = provider;
  validityCopy = validity;
  descriptorsCopy = descriptors;
  v18 = _sharedQueue();
  [self _setDonationWithItemType:typeCopy descriptors:descriptorsCopy version:version validity:validityCopy options:8 serviceProvider:providerCopy queue:v18 timeoutNanos:120000000000 completion:completionCopy];
}

+ (void)deleteSetWithItemType:(unsigned __int16)type descriptors:(id)descriptors completion:(id)completion
{
  typeCopy = type;
  completionCopy = completion;
  descriptorsCopy = descriptors;
  v10 = _sharedXPCClientFactory(descriptorsCopy);
  [self deleteSetWithItemType:typeCopy descriptors:descriptorsCopy serviceProvider:v10 completion:completionCopy];
}

+ (void)deleteSetWithItemType:(unsigned __int16)type descriptors:(id)descriptors serviceProvider:(id)provider completion:(id)completion
{
  typeCopy = type;
  completionCopy = completion;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __78__CCSetDonation_deleteSetWithItemType_descriptors_serviceProvider_completion___block_invoke;
  v12[3] = &unk_1E7C8B510;
  v13 = completionCopy;
  v11 = completionCopy;
  [self fullSetDonationWithItemType:typeCopy descriptors:descriptors serviceProvider:provider completion:v12];
}

void __78__CCSetDonation_deleteSetWithItemType_descriptors_serviceProvider_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    v11 = 0;
    [v5 _finishWithOptions:1 error:&v11];
    v8 = v11;
    v9 = *(a1 + 32);
    if (v8)
    {
      if (v9)
      {
        v10 = *(v9 + 16);
LABEL_9:
        v10();
      }
    }

    else if (v9)
    {
      v10 = *(v9 + 16);
      goto LABEL_9;
    }

    goto LABEL_11;
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v6);
  }

LABEL_11:
}

+ (void)remoteCRDTSetDonationWithItemType:(unsigned __int16)type descriptors:(id)descriptors serviceProvider:(id)provider completion:(id)completion
{
  typeCopy = type;
  completionCopy = completion;
  aBlock = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = __90__CCSetDonation_remoteCRDTSetDonationWithItemType_descriptors_serviceProvider_completion___block_invoke;
  v21 = &unk_1E7C8B4E8;
  v22 = completionCopy;
  v11 = completionCopy;
  providerCopy = provider;
  descriptorsCopy = descriptors;
  v14 = _Block_copy(&aBlock);
  v15 = v14;
  v16 = providerCopy;
  if (!providerCopy)
  {
    v16 = _sharedXPCClientFactory(v14);
  }

  v17 = _sharedQueue();
  [self _setDonationWithItemType:typeCopy descriptors:descriptorsCopy version:0 validity:0 options:2 serviceProvider:v16 queue:v17 timeoutNanos:120000000000 completion:{v15, aBlock, v19, v20, v21}];

  if (!providerCopy)
  {
  }
}

uint64_t __90__CCSetDonation_remoteCRDTSetDonationWithItemType_descriptors_serviceProvider_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

+ (void)_setDonationWithItemType:(unsigned __int16)type descriptors:(id)descriptors version:(unint64_t)version validity:(id)validity options:(unsigned __int16)options serviceProvider:(id)provider queue:(id)queue timeoutNanos:(unint64_t)delta completion:(id)self1
{
  optionsCopy = options;
  typeCopy = type;
  v75 = *MEMORY[0x1E69E9840];
  descriptorsCopy = descriptors;
  validityCopy = validity;
  providerCopy = provider;
  queueCopy = queue;
  completionCopy = completion;
  v19 = completionCopy;
  if (completionCopy)
  {
    v71[0] = 0;
    v71[1] = v71;
    v71[2] = 0x2020000000;
    v72 = 0;
    v69[0] = 0;
    v69[1] = v69;
    v69[2] = 0x3032000000;
    v69[3] = __Block_byref_object_copy__2;
    v69[4] = __Block_byref_object_dispose__2;
    v70 = _Block_copy(completionCopy);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __125__CCSetDonation__setDonationWithItemType_descriptors_version_validity_options_serviceProvider_queue_timeoutNanos_completion___block_invoke;
    aBlock[3] = &unk_1E7C8B538;
    aBlock[4] = v69;
    v20 = _Block_copy(aBlock);
    v21 = CCTypeIdentifierRegistryBridge(v20);
    v22 = [v21 isValidItemType:typeCopy];

    if (v22)
    {
      v64 = 0;
      v23 = [(BMResourceDescriptor *)CCSetDescriptor encodedStringFromDescriptors:descriptorsCopy error:&v64];
      v24 = v64;
      v40 = v24;
      v42 = v23;
      if (v23)
      {
        v41 = CCDonateServiceRequestDescription(version, validityCopy, typeCopy, v23, optionsCopy);
        v39 = [providerCopy makeConnection:?];
        if (v39)
        {
          v25 = __biome_log_for_category();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v74 = v41;
            _os_log_impl(&dword_1B6DB2000, v25, OS_LOG_TYPE_DEFAULT, "Requesting new set donation %@", buf, 0xCu);
          }

          v51[0] = MEMORY[0x1E69E9820];
          v51[1] = 3221225472;
          v51[2] = __125__CCSetDonation__setDonationWithItemType_descriptors_version_validity_options_serviceProvider_queue_timeoutNanos_completion___block_invoke_21;
          v51[3] = &unk_1E7C8B5D8;
          queue = queueCopy;
          queueCopy2 = queue;
          v56 = v71;
          v26 = v41;
          v53 = v26;
          v57 = typeCopy;
          v27 = v39;
          v54 = v27;
          v28 = v20;
          v55 = v28;
          [v27 beginSetDonationWithItemType:typeCopy encodedDescriptors:v42 sourceVersion:version sourceValidity:validityCopy options:optionsCopy completion:v51];
          objc_initWeak(buf, v27);
          v29 = dispatch_time(0, delta);
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __125__CCSetDonation__setDonationWithItemType_descriptors_version_validity_options_serviceProvider_queue_timeoutNanos_completion___block_invoke_2_28;
          block[3] = &unk_1E7C8B600;
          v49 = v71;
          objc_copyWeak(v50, buf);
          v50[1] = delta;
          v46 = v26;
          v47 = providerCopy;
          v48 = v28;
          v30 = v26;
          dispatch_after(v29, queue, block);

          objc_destroyWeak(v50);
          objc_destroyWeak(buf);

          v31 = &queueCopy2;
          v32 = &v53;
        }

        else
        {
          v58[0] = MEMORY[0x1E69E9820];
          v58[1] = 3221225472;
          v58[2] = __125__CCSetDonation__setDonationWithItemType_descriptors_version_validity_options_serviceProvider_queue_timeoutNanos_completion___block_invoke_4;
          v58[3] = &unk_1E7C8B588;
          v31 = &v60;
          v32 = &v59;
          v59 = v41;
          v60 = v20;
          v37 = v41;
          dispatch_async(queueCopy, v58);
        }

        v36 = v39;
      }

      else
      {
        v35 = v24;
        v61[0] = MEMORY[0x1E69E9820];
        v61[1] = 3221225472;
        v61[2] = __125__CCSetDonation__setDonationWithItemType_descriptors_version_validity_options_serviceProvider_queue_timeoutNanos_completion___block_invoke_3;
        v61[3] = &unk_1E7C8B588;
        v63 = v20;
        v62 = v35;
        dispatch_async(queueCopy, v61);

        v36 = v63;
      }

      v34 = v40;
    }

    else
    {
      v65[0] = MEMORY[0x1E69E9820];
      v65[1] = 3221225472;
      v65[2] = __125__CCSetDonation__setDonationWithItemType_descriptors_version_validity_options_serviceProvider_queue_timeoutNanos_completion___block_invoke_2;
      v65[3] = &unk_1E7C8B560;
      v66 = v20;
      v67 = typeCopy;
      dispatch_async(queueCopy, v65);
      v34 = v66;
    }

    _Block_object_dispose(v69, 8);
    _Block_object_dispose(v71, 8);
  }

  else
  {
    v33 = __biome_log_for_category();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      [CCSetDonation _setDonationWithItemType:v33 descriptors:? version:? validity:? options:? serviceProvider:? queue:? timeoutNanos:? completion:?];
    }
  }
}

void __125__CCSetDonation__setDonationWithItemType_descriptors_version_validity_options_serviceProvider_queue_timeoutNanos_completion___block_invoke(uint64_t a1)
{
  (*(*(*(*(a1 + 32) + 8) + 40) + 16))();
  v2 = *(*(a1 + 32) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
}

void __125__CCSetDonation__setDonationWithItemType_descriptors_version_validity_options_serviceProvider_queue_timeoutNanos_completion___block_invoke_2(uint64_t a1)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = MEMORY[0x1E696ABC0];
  v10 = *MEMORY[0x1E696A578];
  v4 = MEMORY[0x1E696AEC0];
  v5 = CCTypeIdentifierRegistryBridge(a1);
  v6 = [v5 descriptionForTypeIdentifier:*(a1 + 40)];
  v7 = [v4 stringWithFormat:@"Invalid itemType: %@", v6, v10];
  v11[0] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v9 = [v3 errorWithDomain:@"com.apple.CascadeSets.Set" code:1 userInfo:v8];
  (*(v2 + 16))(v2, 0, v9);
}

void __125__CCSetDonation__setDonationWithItemType_descriptors_version_validity_options_serviceProvider_queue_timeoutNanos_completion___block_invoke_4(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v1 = MEMORY[0x1E696ABC0];
  v2 = *(a1 + 40);
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to establish connection to donate service for set donation %@", *(a1 + 32), *MEMORY[0x1E696A578]];
  v7[0] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v5 = [v1 errorWithDomain:@"com.apple.CascadeSets.Donate" code:6 userInfo:v4];
  (*(v2 + 16))(v2, 0, v5);
}

void __125__CCSetDonation__setDonationWithItemType_descriptors_version_validity_options_serviceProvider_queue_timeoutNanos_completion___block_invoke_21(uint64_t a1, __int16 a2, uint64_t a3, void *a4)
{
  v7 = a4;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __125__CCSetDonation__setDonationWithItemType_descriptors_version_validity_options_serviceProvider_queue_timeoutNanos_completion___block_invoke_2_22;
  block[3] = &unk_1E7C8B5B0;
  v18 = a2;
  v16 = *(a1 + 64);
  v8 = *(a1 + 32);
  v12 = *(a1 + 40);
  v19 = *(a1 + 72);
  v9 = *(a1 + 48);
  v17 = a3;
  v13 = v9;
  v14 = v7;
  v15 = *(a1 + 56);
  v10 = v7;
  dispatch_async(v8, block);
}

void __125__CCSetDonation__setDonationWithItemType_descriptors_version_validity_options_serviceProvider_queue_timeoutNanos_completion___block_invoke_2_22(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = CCDonateServiceResponseDescription(*(a1 + 80));
  v3 = *(*(a1 + 64) + 8);
  if (*(v3 + 24) == 1)
  {
    v4 = __biome_log_for_category();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __125__CCSetDonation__setDonationWithItemType_descriptors_version_validity_options_serviceProvider_queue_timeoutNanos_completion___block_invoke_2_22_cold_1(v2, a1, v4);
    }
  }

  else
  {
    *(v3 + 24) = 1;
    v5 = __biome_log_for_category();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      *buf = 138412546;
      v22 = v6;
      v23 = 2112;
      v24 = v2;
      _os_log_impl(&dword_1B6DB2000, v5, OS_LOG_TYPE_DEFAULT, "Service responded to request for new donation %@ with %@", buf, 0x16u);
    }

    v7 = *(a1 + 80);
    if (v7 == 3 || v7 == 2 || v7 == 1)
    {
      v8 = objc_opt_class();
      v9 = 0;
    }

    else
    {
      v10 = MEMORY[0x1E696ABC0];
      v11 = CCDonateErrorCodeFromServiceResponse(v7);
      v19 = *MEMORY[0x1E696A578];
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to open set donation %@ - %@", *(a1 + 32), v2];
      v20 = v12;
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
      v9 = [v10 errorWithDomain:@"com.apple.CascadeSets.Donate" code:v11 userInfo:v13];

      v8 = 0;
    }

    v14 = [v8 donationWithName:*(a1 + 32) itemType:*(a1 + 82) service:*(a1 + 40) errorCode:*(a1 + 72) priors:*(a1 + 48)];
    v4 = v14;
    if (v14)
    {
      v15 = [v14 queue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __125__CCSetDonation__setDonationWithItemType_descriptors_version_validity_options_serviceProvider_queue_timeoutNanos_completion___block_invoke_26;
      block[3] = &unk_1E7C8B588;
      v18 = *(a1 + 56);
      v17 = v4;
      dispatch_async(v15, block);
    }

    else
    {
      (*(*(a1 + 56) + 16))();
    }
  }
}

void __125__CCSetDonation__setDonationWithItemType_descriptors_version_validity_options_serviceProvider_queue_timeoutNanos_completion___block_invoke_2_28(uint64_t a1)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v1 = *(*(a1 + 56) + 8);
  if ((*(v1 + 24) & 1) == 0)
  {
    *(v1 + 24) = 1;
    WeakRetained = objc_loadWeakRetained((a1 + 64));
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Client timed out waiting %lf seconds for donate service to accept a new donation %@", *(a1 + 72) / 1000000000.0, *(a1 + 32)];
    v5 = __biome_log_for_category();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __125__CCSetDonation__setDonationWithItemType_descriptors_version_validity_options_serviceProvider_queue_timeoutNanos_completion___block_invoke_2_28_cold_1(v4, v5);
    }

    [*(a1 + 40) terminateConnection:WeakRetained];
    v6 = *(a1 + 48);
    v7 = MEMORY[0x1E696ABC0];
    v10 = *MEMORY[0x1E696A578];
    v11[0] = v4;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    v9 = [v7 errorWithDomain:@"com.apple.CascadeSets.Donate" code:5 userInfo:v8];
    (*(v6 + 16))(v6, 0, v9);
  }
}

- (NSString)priorRevisionToken
{
  priors = [(CCSetDonation *)self priors];
  revisionToken = [priors revisionToken];

  return revisionToken;
}

- (BOOL)_addItem:(id)item error:(id *)error
{
  v56[1] = *MEMORY[0x1E69E9840];
  itemCopy = item;
  if (CCValidateNonNilField(@"item", itemCopy, error))
  {
    v7 = objc_opt_class();
    if (CCValidateIsInstanceOfExpectedClass(@"item", itemCopy, v7, error))
    {
      content = [itemCopy content];
      itemType = [objc_opt_class() itemType];
      itemType = self->_itemType;

      if (itemType == itemType)
      {
        metaContent = [itemCopy metaContent];
        itemType2 = [objc_opt_class() itemType];
        v13 = self->_itemType;

        if (itemType2 == v13)
        {
          content2 = [itemCopy content];
          data = [content2 data];

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v27 = MEMORY[0x1E696ABC0];
            v51 = *MEMORY[0x1E696A578];
            itemCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Donation %@ item has invalid content buffer: %@", self, itemCopy];
            v52 = itemCopy;
            itemCopy2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v52 forKeys:&v51 count:1];
            v20 = v27;
            goto LABEL_17;
          }

          v16 = [data length];
          if (v16 >= 0xC801)
          {
            v17 = MEMORY[0x1E696ABC0];
            v49 = *MEMORY[0x1E696A578];
            itemCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Donation %@ item content must be less than %lu bytes, received %lu: %@", self, 51200, v16, itemCopy];
            v50 = itemCopy;
            itemCopy2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v50 forKeys:&v49 count:1];
            v20 = v17;
LABEL_17:
            v28 = [v20 errorWithDomain:@"com.apple.CascadeSets.Item" code:4 userInfo:itemCopy2];
            CCSetError(error, v28);

            goto LABEL_12;
          }

          metaContent2 = [itemCopy metaContent];
          itemCopy = [metaContent2 data];

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && [itemCopy length])
          {
            v30 = [itemCopy length];
            if (v30 < 0xC801)
            {
              if (self->_service)
              {
                [(NSMutableArray *)self->_contentBuffers addObject:data];
                [(NSMutableArray *)self->_metaContentBuffers addObject:itemCopy];
                flushThreshold = self->_flushThreshold;
                v38 = v30 + v16 + self->_bufferSize;
                self->_bufferSize = v38;
                v21 = v38 < flushThreshold || [(CCSetDonation *)self _flushItemsWithError:error];
                goto LABEL_14;
              }

              name = self->_name;
              v40 = MEMORY[0x1E696AEC0];
              metaContent3 = [itemCopy metaContent];
              sourceItemIdentifier = [metaContent3 sourceItemIdentifier];
              v43 = [v40 stringWithFormat:@"add item with sourceItemIdentifier: %@", sourceItemIdentifier];
              v44 = _donationInactiveError(name, v43);
              CCSetError(error, v44);

LABEL_13:
              v21 = 0;
LABEL_14:

              goto LABEL_15;
            }

            v31 = MEMORY[0x1E696ABC0];
            v45 = *MEMORY[0x1E696A578];
            itemCopy2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Donation %@ item meta content must be less than %lu bytes, received %lu: %@", self, 51200, v30, itemCopy];
            v46 = itemCopy2;
            v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
            v33 = [v31 errorWithDomain:@"com.apple.CascadeSets.Item" code:4 userInfo:v32];
            CCSetError(error, v33);
          }

          else
          {
            v34 = MEMORY[0x1E696ABC0];
            v47 = *MEMORY[0x1E696A578];
            itemCopy2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Donation %@ item has invalid meta content buffer: %@", self, itemCopy];
            v48 = itemCopy2;
            v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
            v36 = [v34 errorWithDomain:@"com.apple.CascadeSets.Item" code:4 userInfo:v35];
            CCSetError(error, v36);
          }

LABEL_12:

          goto LABEL_13;
        }

        v22 = MEMORY[0x1E696ABC0];
        v53 = *MEMORY[0x1E696A578];
        data = [MEMORY[0x1E696AEC0] stringWithFormat:@"Donation %@ item metaContent must have itemType: %hu. Received: %@", self, self->_itemType, itemCopy];
        v54 = data;
        v23 = MEMORY[0x1E695DF20];
        v24 = &v54;
        v25 = &v53;
      }

      else
      {
        v22 = MEMORY[0x1E696ABC0];
        v55 = *MEMORY[0x1E696A578];
        data = [MEMORY[0x1E696AEC0] stringWithFormat:@"Donation %@ item content must have itemType: %hu. Received: %@", self, self->_itemType, itemCopy];
        v56[0] = data;
        v23 = MEMORY[0x1E695DF20];
        v24 = v56;
        v25 = &v55;
      }

      itemCopy = [v23 dictionaryWithObjects:v24 forKeys:v25 count:1];
      itemCopy2 = [v22 errorWithDomain:@"com.apple.CascadeSets.Set" code:1 userInfo:itemCopy];
      CCSetError(error, itemCopy2);
      goto LABEL_12;
    }
  }

  v21 = 0;
LABEL_15:

  return v21;
}

- (BOOL)_flushItemsWithError:(id *)error
{
  if (![(NSMutableArray *)self->_contentBuffers count])
  {
    return 1;
  }

  v5 = [(NSMutableArray *)self->_contentBuffers copy];
  v6 = [(NSMutableArray *)self->_metaContentBuffers copy];
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  service = self->_service;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __38__CCSetDonation__flushItemsWithError___block_invoke;
  v15[3] = &unk_1E7C8B628;
  v15[4] = &v16;
  [(CCDonateService *)service addItemsWithContents:v5 metaContents:v6 completion:v15];
  [(NSMutableArray *)self->_contentBuffers removeAllObjects];
  [(NSMutableArray *)self->_metaContentBuffers removeAllObjects];
  self->_bufferSize = 0;
  v8 = *(v17 + 12);
  v9 = v8 == 7;
  if (v8 != 7)
  {
    name = self->_name;
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"add %u item(s)", -[NSMutableArray count](self->_contentBuffers, "count")];
    v12 = _donationResponseError(name, v11, *(v17 + 12));
    CCSetError(error, v12);

    v13 = self->_service;
    self->_service = 0;
  }

  _Block_object_dispose(&v16, 8);

  return v9;
}

- (BOOL)_removeSourceItemIdentifier:(id)identifier error:(id *)error
{
  v30[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v7 = objc_opt_class();
  if (CCValidateIsInstanceOfExpectedClass(@"sourceItemIdentifier", identifierCopy, v7, error))
  {
    v8 = [identifierCopy copy];
    if ([v8 length])
    {
      service = self->_service;
      if (service)
      {
        v25 = 0;
        v26 = &v25;
        v27 = 0x2020000000;
        v28 = 0;
        v24[0] = MEMORY[0x1E69E9820];
        v24[1] = 3221225472;
        v24[2] = __51__CCSetDonation__removeSourceItemIdentifier_error___block_invoke;
        v24[3] = &unk_1E7C8B628;
        v24[4] = &v25;
        [(CCDonateService *)service removeSourceItemIdentifier:v8 completion:v24];
        v10 = *(v26 + 12);
        v11 = v10 == 7;
        if (v10 != 7)
        {
          name = self->_name;
          v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"remove sourceItemIdentifier: %@", v8];
          v14 = _donationResponseError(name, v13, *(v26 + 12));
          CCSetError(error, v14);

          v15 = self->_service;
          self->_service = 0;
        }

        _Block_object_dispose(&v25, 8);
        goto LABEL_11;
      }

      v20 = self->_name;
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"remove sourceItemIdentifier: %@", v8];
      v22 = _donationInactiveError(v20, v21);
      CCSetError(error, v22);
    }

    else
    {
      v16 = MEMORY[0x1E696ABC0];
      v29 = *MEMORY[0x1E696A578];
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Donation %@ sourceItemIdentifier is invalid: %@", self, v8];
      v30[0] = v17;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:&v29 count:1];
      v19 = [v16 errorWithDomain:@"com.apple.CascadeSets.Item" code:7 userInfo:v18];
      CCSetError(error, v19);
    }

    v11 = 0;
LABEL_11:

    goto LABEL_12;
  }

  v11 = 0;
LABEL_12:

  return v11;
}

- (BOOL)updateRevisionToken:(id)token error:(id *)error
{
  tokenCopy = token;
  v7 = objc_opt_class();
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass(@"revisionToken", tokenCopy, v7, error);
  if (IsInstanceOfExpectedClass)
  {
    v9 = [tokenCopy copy];
    v10 = 72;
  }

  else
  {
    v9 = 0;
    v10 = 8;
  }

  v11 = *(&self->super.isa + v10);
  *(&self->super.isa + v10) = v9;

  return IsInstanceOfExpectedClass;
}

- (BOOL)_finishWithOptions:(unsigned __int16)options error:(id *)error
{
  if (!self->_service)
  {
    v13 = _donationInactiveError(self->_name, @"finish");
    CCSetError(error, v13);

    return 0;
  }

  optionsCopy = options;
  if (![(CCSetDonation *)self _flushItemsWithError:error])
  {
    [(CCSetDonation *)self cancel];
    return 0;
  }

  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  service = self->_service;
  revisionToken = self->_revisionToken;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __42__CCSetDonation__finishWithOptions_error___block_invoke;
  v15[3] = &unk_1E7C8B628;
  v15[4] = &v16;
  [(CCDonateService *)service endSetDonationWithOptions:optionsCopy revisionToken:revisionToken completion:v15];
  v9 = self->_service;
  self->_service = 0;

  v10 = *(v17 + 12);
  v11 = v10 == 7;
  if (v10 != 7)
  {
    v12 = _donationResponseError(self->_name, @"finish", v10);
    CCSetError(error, v12);
  }

  _Block_object_dispose(&v16, 8);
  return v11;
}

- (BOOL)_remoteUpdateFromDeviceUUID:(id)d withType:(unsigned __int8)type mergeableDelta:(id)delta peerDeviceSite:(id)site relayedDeviceSites:(id)sites
{
  typeCopy = type;
  dCopy = d;
  deltaCopy = delta;
  siteCopy = site;
  sitesCopy = sites;
  if ((typeCopy - 1) >= 3)
  {
    v18 = __biome_log_for_category();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [CCSetDonation _remoteUpdateFromDeviceUUID:typeCopy withType:v18 mergeableDelta:? peerDeviceSite:? relayedDeviceSites:?];
    }

    v17 = 0;
  }

  else
  {
    v21 = 0;
    v22 = &v21;
    v23 = 0x2020000000;
    v24 = 0;
    service = self->_service;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __103__CCSetDonation__remoteUpdateFromDeviceUUID_withType_mergeableDelta_peerDeviceSite_relayedDeviceSites___block_invoke;
    v20[3] = &unk_1E7C8B628;
    v20[4] = &v21;
    [(CCDonateService *)service remoteUpdateFromDeviceUUID:dCopy options:(0x10000800040uLL >> (16 * ((typeCopy - 1) & 0xFu))) & 0x1C0 mergeableDelta:deltaCopy peerDeviceSite:siteCopy relayedDeviceSites:sitesCopy completion:v20];
    v17 = *(v22 + 12) == 7;
    _Block_object_dispose(&v21, 8);
  }

  return v17;
}

- (void)initWithName:(uint64_t)a1 itemType:(NSObject *)a2 service:errorCode:priors:flushThreshold:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = objc_opt_class();
  _os_log_error_impl(&dword_1B6DB2000, a2, OS_LOG_TYPE_ERROR, "Invalid donation subclass: %@", &v3, 0xCu);
}

void __125__CCSetDonation__setDonationWithItemType_descriptors_version_validity_options_serviceProvider_queue_timeoutNanos_completion___block_invoke_2_22_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 32);
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = v3;
  _os_log_debug_impl(&dword_1B6DB2000, log, OS_LOG_TYPE_DEBUG, "Ignoring service response (%@) for timed out request %@", &v4, 0x16u);
}

void __125__CCSetDonation__setDonationWithItemType_descriptors_version_validity_options_serviceProvider_queue_timeoutNanos_completion___block_invoke_2_28_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1B6DB2000, a2, OS_LOG_TYPE_ERROR, "%@ - invalidating connection", &v2, 0xCu);
}

- (void)_remoteUpdateFromDeviceUUID:(int)a1 withType:(NSObject *)a2 mergeableDelta:peerDeviceSite:relayedDeviceSites:.cold.1(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_1B6DB2000, a2, OS_LOG_TYPE_ERROR, "Unsupported remote update type: %u", v2, 8u);
}

@end