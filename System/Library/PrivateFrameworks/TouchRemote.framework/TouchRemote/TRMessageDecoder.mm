@interface TRMessageDecoder
+ (id)decodeMessage:(id)message error:(id *)error;
@end

@implementation TRMessageDecoder

+ (id)decodeMessage:(id)message error:(id *)error
{
  v31[2] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCAAC8];
  messageCopy = message;
  v7 = [[v5 alloc] initForReadingFromData:messageCopy error:0];

  v8 = [v7 decodeTopLevelObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CCA308] error:0];
  [v7 finishDecoding];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v10 = v8;
  }

  else
  {
    if (error)
    {
      v11 = *MEMORY[0x277CCA450];
      v31[0] = @"Message decoding failed.";
      v12 = *MEMORY[0x277CCA470];
      v30[0] = v11;
      v30[1] = v12;
      v13 = MEMORY[0x277CCACA8];
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      v18 = [v13 stringWithFormat:@"Decoded class is not a subclass of %@: %@.", v15, v17];
      v31[1] = v18;
      v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:2];

      *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"TRNearbyDeviceErrorDomain" code:-9200 userInfo:v19];
    }

    else if (_TRLogEnabled == 1)
    {
      v20 = TRLogHandle(isKindOfClass);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = objc_opt_class();
        v22 = NSStringFromClass(v21);
        *buf = 136315650;
        v25 = "+[TRMessageDecoder decodeMessage:error:]";
        v26 = 2112;
        v27 = v22;
        v28 = 2112;
        v29 = v8;
        _os_log_impl(&dword_26F2A2000, v20, OS_LOG_TYPE_DEFAULT, "%s Decoded something other than a subclass of %@: %@", buf, 0x20u);
      }
    }

    v10 = 0;
  }

  return v10;
}

@end