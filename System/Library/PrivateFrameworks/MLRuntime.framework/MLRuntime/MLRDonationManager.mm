@interface MLRDonationManager
+ (id)defaultManager;
- (BOOL)record:(id)record data:(id)data encodingSchema:(id)schema metadata:(id)metadata errorOut:(id *)out;
- (MLRDonationManager)init;
- (void)encodeAndUploadToDediscoWithIdentifier:(id)identifier measurements:(id)measurements withEncodingSchemas:(id)schemas metadata:(id)metadata completion:(id)completion;
@end

@implementation MLRDonationManager

+ (id)defaultManager
{
  if (defaultManager_onceToken != -1)
  {
    +[MLRDonationManager defaultManager];
  }

  v3 = defaultManager_donationManagerClient;

  return v3;
}

uint64_t __36__MLRDonationManager_defaultManager__block_invoke()
{
  defaultManager_donationManagerClient = objc_alloc_init(MLRDonationManager);

  return MEMORY[0x2821F96F8]();
}

- (MLRDonationManager)init
{
  v10.receiver = self;
  v10.super_class = MLRDonationManager;
  v2 = [(MLRDonationManager *)&v10 init];
  if (v2)
  {
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    uTF8String = [v4 UTF8String];
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create(uTF8String, v6);
    queue = v2->_queue;
    v2->_queue = v7;
  }

  return v2;
}

- (void)encodeAndUploadToDediscoWithIdentifier:(id)identifier measurements:(id)measurements withEncodingSchemas:(id)schemas metadata:(id)metadata completion:(id)completion
{
  v39[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  measurementsCopy = measurements;
  schemasCopy = schemas;
  metadataCopy = metadata;
  completionCopy = completion;
  if (!identifierCopy)
  {
    coreChannel = [MEMORY[0x277D05600] coreChannel];
    if (os_log_type_enabled(coreChannel, OS_LOG_TYPE_ERROR))
    {
      [MLRDonationManager encodeAndUploadToDediscoWithIdentifier:measurements:withEncodingSchemas:metadata:completion:];
    }

    v19 = MEMORY[0x277CCA9B8];
    v20 = *MEMORY[0x277D05640];
    v38 = *MEMORY[0x277CCA450];
    v39[0] = @"identifier must not be nil.";
    v21 = MEMORY[0x277CBEAC0];
    v22 = v39;
    v23 = &v38;
    goto LABEL_14;
  }

  if (!measurementsCopy)
  {
    coreChannel2 = [MEMORY[0x277D05600] coreChannel];
    if (os_log_type_enabled(coreChannel2, OS_LOG_TYPE_ERROR))
    {
      [MLRDonationManager encodeAndUploadToDediscoWithIdentifier:measurements:withEncodingSchemas:metadata:completion:];
    }

    v19 = MEMORY[0x277CCA9B8];
    v20 = *MEMORY[0x277D05640];
    v36 = *MEMORY[0x277CCA450];
    v37 = @"measurements must be not be nil.";
    v21 = MEMORY[0x277CBEAC0];
    v22 = &v37;
    v23 = &v36;
    goto LABEL_14;
  }

  if (!schemasCopy)
  {
    coreChannel3 = [MEMORY[0x277D05600] coreChannel];
    if (os_log_type_enabled(coreChannel3, OS_LOG_TYPE_ERROR))
    {
      [MLRDonationManager encodeAndUploadToDediscoWithIdentifier:measurements:withEncodingSchemas:metadata:completion:];
    }

    v19 = MEMORY[0x277CCA9B8];
    v20 = *MEMORY[0x277D05640];
    v34 = *MEMORY[0x277CCA450];
    v35 = @"encodingSchemas must be not be nil.";
    v21 = MEMORY[0x277CBEAC0];
    v22 = &v35;
    v23 = &v34;
LABEL_14:
    v26 = [v21 dictionaryWithObjects:v22 forKeys:v23 count:1];
    v27 = [v19 errorWithDomain:v20 code:1400 userInfo:v26];
    completionCopy[2](completionCopy, v27);

    goto LABEL_15;
  }

  queue = [(MLRDonationManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __114__MLRDonationManager_encodeAndUploadToDediscoWithIdentifier_measurements_withEncodingSchemas_metadata_completion___block_invoke;
  block[3] = &unk_279840A48;
  block[4] = self;
  v29 = identifierCopy;
  v30 = measurementsCopy;
  v31 = schemasCopy;
  v32 = metadataCopy;
  v33 = completionCopy;
  dispatch_async(queue, block);

LABEL_15:
}

void __114__MLRDonationManager_encodeAndUploadToDediscoWithIdentifier_measurements_withEncodingSchemas_metadata_completion___block_invoke(void *a1)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v3 = a1[5];
  v11[0] = a1[6];
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  v5 = a1[7];
  v6 = a1[8];
  v10 = 0;
  v7 = [v2 record:v3 data:v4 encodingSchema:v5 metadata:v6 errorOut:&v10];
  v8 = v10;

  if (v8 || (v7 & 1) == 0)
  {
    v9 = [MEMORY[0x277D05600] coreChannel];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __114__MLRDonationManager_encodeAndUploadToDediscoWithIdentifier_measurements_withEncodingSchemas_metadata_completion___block_invoke_cold_1();
    }
  }

  (*(a1[9] + 16))();
}

- (BOOL)record:(id)record data:(id)data encodingSchema:(id)schema metadata:(id)metadata errorOut:(id *)out
{
  v37 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  dataCopy = data;
  schemaCopy = schema;
  metadataCopy = metadata;
  coreChannel = [MEMORY[0x277D05600] coreChannel];
  if (os_log_type_enabled(coreChannel, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138413058;
    v30 = recordCopy;
    v31 = 2112;
    v32 = dataCopy;
    v33 = 2112;
    v34 = schemaCopy;
    v35 = 2112;
    v36 = metadataCopy;
    _os_log_debug_impl(&dword_2577CB000, coreChannel, OS_LOG_TYPE_DEBUG, "Recording key=%@, data=%@, encodingSchema=%@, metadata=%@", buf, 0x2Au);
  }

  v16 = [schemaCopy objectForKeyedSubscript:@"type"];
  v17 = [v16 isEqual:@"decimal"];

  if (v17 || ([schemaCopy objectForKeyedSubscript:@"type"], v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "isEqual:", @"fedstats"), v18, v19))
  {
    v20 = [schemaCopy objectForKeyedSubscript:@"encodingParameters"];
    v21 = objc_opt_new();
    v22 = [v21 record:recordCopy data:dataCopy encodingSchema:v20 metadata:metadataCopy errorOut:out];
  }

  else
  {
    coreChannel2 = [MEMORY[0x277D05600] coreChannel];
    if (os_log_type_enabled(coreChannel2, OS_LOG_TYPE_ERROR))
    {
      [MLRDonationManager record:data:encodingSchema:metadata:errorOut:];
    }

    v24 = MEMORY[0x277CCA9B8];
    v25 = *MEMORY[0x277D05640];
    v27 = *MEMORY[0x277CCA450];
    v28 = @"The encodingSchema type has to be either decimal or fedstats.";
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
    [v24 errorWithDomain:v25 code:1400 userInfo:v20];
    *out = v22 = 0;
  }

  return v22;
}

@end