@interface HMSoftwareUpdateV2
+ (id)shortDescription;
+ (id)softwareUpdateFromDescriptor:(id)descriptor;
- (BOOL)isEqual:(id)equal;
- (HMSoftwareUpdateV2)initWithStatus:(int64_t)status error:(id)error documentationMetadata:(id)metadata version:(id)version downloadSize:(unint64_t)size humanReadableUpdateName:(id)name rampFeatureEnabledOnServer:(BOOL)server;
- (NSArray)attributeDescriptions;
- (NSString)shortDescription;
- (unint64_t)hash;
@end

@implementation HMSoftwareUpdateV2

- (NSArray)attributeDescriptions
{
  v26[7] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69A29C8]);
  v25 = [MEMORY[0x1E696AD98] numberWithInteger:{-[HMSoftwareUpdateV2 status](self, "status")}];
  v24 = [v3 initWithName:@"status" value:v25];
  v26[0] = v24;
  v4 = objc_alloc(MEMORY[0x1E69A29C8]);
  error = [(HMSoftwareUpdateV2 *)self error];
  v22 = [v4 initWithName:@"error" value:error];
  v26[1] = v22;
  v5 = objc_alloc(MEMORY[0x1E69A29C8]);
  documentationMetadata = [(HMSoftwareUpdateV2 *)self documentationMetadata];
  v6 = [v5 initWithName:@"documentationMetadata" value:documentationMetadata];
  v26[2] = v6;
  v7 = objc_alloc(MEMORY[0x1E69A29C8]);
  version = [(HMSoftwareUpdateV2 *)self version];
  v9 = [v7 initWithName:@"version" value:version];
  v26[3] = v9;
  v10 = objc_alloc(MEMORY[0x1E69A29C8]);
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[HMSoftwareUpdateV2 downloadSize](self, "downloadSize")}];
  v12 = [v10 initWithName:@"downloadSize" value:v11];
  v26[4] = v12;
  v13 = objc_alloc(MEMORY[0x1E69A29C8]);
  humanReadableUpdateName = [(HMSoftwareUpdateV2 *)self humanReadableUpdateName];
  v15 = [v13 initWithName:@"humanReadableUpdateName" value:humanReadableUpdateName];
  v26[5] = v15;
  v16 = objc_alloc(MEMORY[0x1E69A29C8]);
  v17 = [MEMORY[0x1E696AD98] numberWithBool:{-[HMSoftwareUpdateV2 rampFeatureEnabledOnServer](self, "rampFeatureEnabledOnServer")}];
  v18 = [v16 initWithName:@"rampFeatureEnabledOnServer" value:v17];
  v26[6] = v18;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:7];

  return v19;
}

- (NSString)shortDescription
{
  v2 = objc_opt_class();

  return [v2 shortDescription];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    LOBYTE(v22) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    if (v6 && (v7 = [(HMSoftwareUpdateV2 *)self status], v7 == [(HMSoftwareUpdateV2 *)v6 status]) && ([(HMSoftwareUpdateV2 *)self error], v8 = objc_claimAutoreleasedReturnValue(), [(HMSoftwareUpdateV2 *)v6 error], v9 = objc_claimAutoreleasedReturnValue(), v10 = HMFEqualObjects(), v9, v8, v10) && ([(HMSoftwareUpdateV2 *)self documentationMetadata], v11 = objc_claimAutoreleasedReturnValue(), [(HMSoftwareUpdateV2 *)v6 documentationMetadata], v12 = objc_claimAutoreleasedReturnValue(), v13 = HMFEqualObjects(), v12, v11, v13) && ([(HMSoftwareUpdateV2 *)self version], v14 = objc_claimAutoreleasedReturnValue(), [(HMSoftwareUpdateV2 *)v6 version], v15 = objc_claimAutoreleasedReturnValue(), v16 = HMFEqualObjects(), v15, v14, v16) && (v17 = [(HMSoftwareUpdateV2 *)self downloadSize], v17 == [(HMSoftwareUpdateV2 *)v6 downloadSize]) && ([(HMSoftwareUpdateV2 *)self humanReadableUpdateName], v18 = objc_claimAutoreleasedReturnValue(), [(HMSoftwareUpdateV2 *)v6 humanReadableUpdateName], v19 = objc_claimAutoreleasedReturnValue(), v20 = HMFEqualObjects(), v19, v18, v20))
    {
      rampFeatureEnabledOnServer = [(HMSoftwareUpdateV2 *)self rampFeatureEnabledOnServer];
      v22 = rampFeatureEnabledOnServer ^ [(HMSoftwareUpdateV2 *)v6 rampFeatureEnabledOnServer]^ 1;
    }

    else
    {
      LOBYTE(v22) = 0;
    }
  }

  return v22;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:{-[HMSoftwareUpdateV2 status](self, "status")}];
  v4 = [v3 hash];
  error = [(HMSoftwareUpdateV2 *)self error];
  v6 = [error hash];
  documentationMetadata = [(HMSoftwareUpdateV2 *)self documentationMetadata];
  v8 = v6 ^ [documentationMetadata hash];
  version = [(HMSoftwareUpdateV2 *)self version];
  v10 = v8 ^ [version hash] ^ v4;
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[HMSoftwareUpdateV2 downloadSize](self, "downloadSize")}];
  v12 = [v11 hash];
  humanReadableUpdateName = [(HMSoftwareUpdateV2 *)self humanReadableUpdateName];
  v14 = v10 ^ v12 ^ [humanReadableUpdateName hash];
  v15 = [MEMORY[0x1E696AD98] numberWithBool:{-[HMSoftwareUpdateV2 rampFeatureEnabledOnServer](self, "rampFeatureEnabledOnServer")}];
  v16 = [v15 hash];

  return v14 ^ v16;
}

- (HMSoftwareUpdateV2)initWithStatus:(int64_t)status error:(id)error documentationMetadata:(id)metadata version:(id)version downloadSize:(unint64_t)size humanReadableUpdateName:(id)name rampFeatureEnabledOnServer:(BOOL)server
{
  errorCopy = error;
  metadataCopy = metadata;
  versionCopy = version;
  nameCopy = name;
  v25.receiver = self;
  v25.super_class = HMSoftwareUpdateV2;
  v20 = [(HMSoftwareUpdateV2 *)&v25 init];
  v21 = v20;
  if (v20)
  {
    v20->_status = status;
    objc_storeStrong(&v20->_error, error);
    objc_storeStrong(&v21->_documentationMetadata, metadata);
    objc_storeStrong(&v21->_version, version);
    v21->_downloadSize = size;
    v22 = [nameCopy copy];
    humanReadableUpdateName = v21->_humanReadableUpdateName;
    v21->_humanReadableUpdateName = v22;

    v21->_rampFeatureEnabledOnServer = server;
  }

  return v21;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

+ (id)softwareUpdateFromDescriptor:(id)descriptor
{
  if (descriptor)
  {
    descriptorCopy = descriptor;
    v4 = [HMSoftwareUpdateV2 alloc];
    status = [descriptorCopy status];
    error = [descriptorCopy error];
    documentationMetadata = [descriptorCopy documentationMetadata];
    version = [descriptorCopy version];
    downloadSize = [descriptorCopy downloadSize];
    unsignedIntValue = [downloadSize unsignedIntValue];
    humanReadableUpdateName = [descriptorCopy humanReadableUpdateName];
    rampFeatureEnabledOnServer = [descriptorCopy rampFeatureEnabledOnServer];

    LOBYTE(v15) = [rampFeatureEnabledOnServer BOOLValue];
    v13 = [(HMSoftwareUpdateV2 *)v4 initWithStatus:status error:error documentationMetadata:documentationMetadata version:version downloadSize:unsignedIntValue humanReadableUpdateName:humanReadableUpdateName rampFeatureEnabledOnServer:v15];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end