@interface BMCoreAnalyticsEvents
+ (id)dictionaryWithAllStreamsEventWritten:(BOOL)written size:(unsigned int)size streamIdentifier:(id)identifier;
+ (id)dictionaryWithDatavaultByUsageExecutableName:(id)name;
+ (id)dictionaryWithDeletionPolicyMetrics:(id)metrics stream:(id)stream numDeleted:(unsigned int)deleted exception:(BOOL)exception;
+ (void)sendAllStreamsEventWritten:(BOOL)written size:(unsigned int)size streamIdentifier:(id)identifier;
+ (void)sendDatavaultEntitlementUsage:(id)usage;
+ (void)sendDeletionPolicyMetrics:(id)metrics stream:(id)stream numDeleted:(unsigned int)deleted exception:(BOOL)exception;
@end

@implementation BMCoreAnalyticsEvents

+ (void)sendAllStreamsEventWritten:(BOOL)written size:(unsigned int)size streamIdentifier:(id)identifier
{
  v5 = [BMCoreAnalyticsEvents dictionaryWithAllStreamsEventWritten:written size:*&size streamIdentifier:identifier];
  [BMCoreAnalyticsEvents sendEvent:@"com.apple.biome.streamWrites" payload:v5];
}

+ (void)sendDatavaultEntitlementUsage:(id)usage
{
  v3 = [BMCoreAnalyticsEvents dictionaryWithDatavaultByUsageExecutableName:usage];
  [BMCoreAnalyticsEvents sendEvent:@"com.apple.biome.datavault-entitlement-usage" payload:v3];
}

+ (void)sendDeletionPolicyMetrics:(id)metrics stream:(id)stream numDeleted:(unsigned int)deleted exception:(BOOL)exception
{
  exceptionCopy = exception;
  v7 = *&deleted;
  metricsCopy = metrics;
  streamCopy = stream;
  if (os_variant_has_internal_content())
  {
    v10 = [BMCoreAnalyticsEvents dictionaryWithDeletionPolicyMetrics:metricsCopy stream:streamCopy numDeleted:v7 exception:exceptionCopy];
    [BMCoreAnalyticsEvents sendEvent:@"com.apple.biome.deletion-policy-metrics" payload:v10];
  }
}

+ (id)dictionaryWithAllStreamsEventWritten:(BOOL)written size:(unsigned int)size streamIdentifier:(id)identifier
{
  v5 = *&size;
  writtenCopy = written;
  v14[3] = *MEMORY[0x1E69E9840];
  v13[0] = @"isWritten";
  v7 = MEMORY[0x1E696AD98];
  identifierCopy = identifier;
  v9 = [v7 numberWithBool:writtenCopy];
  v14[0] = v9;
  v13[1] = @"size";
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v5];
  v13[2] = @"streamIdentifier";
  v14[1] = v10;
  v14[2] = identifierCopy;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:3];

  return v11;
}

+ (id)dictionaryWithDatavaultByUsageExecutableName:(id)name
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7 = @"executableName";
  v8[0] = name;
  v3 = MEMORY[0x1E695DF20];
  nameCopy = name;
  v5 = [v3 dictionaryWithObjects:v8 forKeys:&v7 count:1];

  return v5;
}

+ (id)dictionaryWithDeletionPolicyMetrics:(id)metrics stream:(id)stream numDeleted:(unsigned int)deleted exception:(BOOL)exception
{
  exceptionCopy = exception;
  v7 = *&deleted;
  v18[4] = *MEMORY[0x1E69E9840];
  v17[0] = @"policyID";
  v17[1] = @"stream";
  v18[0] = metrics;
  v18[1] = stream;
  v17[2] = @"numDeleted";
  v9 = MEMORY[0x1E696AD98];
  streamCopy = stream;
  metricsCopy = metrics;
  v12 = [v9 numberWithUnsignedInt:v7];
  v13 = v12;
  v17[3] = @"exception";
  v14 = MEMORY[0x1E695E110];
  if (exceptionCopy)
  {
    v14 = MEMORY[0x1E695E118];
  }

  v18[2] = v12;
  v18[3] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:4];

  return v15;
}

@end