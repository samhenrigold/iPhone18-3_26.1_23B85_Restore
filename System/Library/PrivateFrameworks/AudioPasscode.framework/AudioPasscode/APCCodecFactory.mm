@interface APCCodecFactory
+ (float)evaluateCarrierWithConfig:(id)config carrier:(id)carrier embeddingResult:(id *)result;
+ (id)createBestConfigForCapability:(id)capability;
+ (unique_ptr<APCDecoderBase,)createDecoderWithConfig:(id)config apcConfig:(void *)apcConfig error:(id *)error;
+ (unique_ptr<APCEncoderBase,)createEncoderWithConfig:(id)config apcConfig:(void *)apcConfig payloadData:(id)data;
@end

@implementation APCCodecFactory

+ (unique_ptr<APCDecoderBase,)createDecoderWithConfig:(id)config apcConfig:(void *)apcConfig error:(id *)error
{
  v6 = v5;
  configCopy = config;
  *v6 = 0;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    operator new();
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      operator new();
    }
  }

  return v8;
}

+ (unique_ptr<APCEncoderBase,)createEncoderWithConfig:(id)config apcConfig:(void *)apcConfig payloadData:(id)data
{
  v7 = v5;
  configCopy = config;
  dataCopy = data;
  *v7 = 0;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = configCopy;
    operator new();
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      operator new();
    }
  }

  return v11;
}

+ (float)evaluateCarrierWithConfig:(id)config carrier:(id)carrier embeddingResult:(id *)result
{
  configCopy = config;
  carrierCopy = carrier;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = configCopy;
    operator new();
  }

  return 1.0;
}

+ (id)createBestConfigForCapability:(id)capability
{
  v12 = *MEMORY[0x277D85DE8];
  capabilityCopy = capability;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v5 = APCLogObject(isKindOfClass);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&dword_24158E000, v5, OS_LOG_TYPE_INFO, "Find an EchoCodec Capabiltity data", &v10, 2u);
    }

    v6 = [[EchoCodecConfiguration alloc] initWithCapabilityData:capabilityCopy];
    v7 = APCLogObject(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      algorithmVersionNumber = [(EchoCodecConfiguration *)v6 algorithmVersionNumber];
      v10 = 134217984;
      v11 = (algorithmVersionNumber / 100.0);
      _os_log_impl(&dword_24158E000, v7, OS_LOG_TYPE_INFO, "EchoCodec algorithm version: %3.2f", &v10, 0xCu);
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end