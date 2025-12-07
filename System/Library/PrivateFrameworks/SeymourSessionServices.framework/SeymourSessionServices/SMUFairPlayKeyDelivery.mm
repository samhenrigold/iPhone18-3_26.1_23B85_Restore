@interface SMUFairPlayKeyDelivery
- (id)remoteServerPlaybackContextForCertificate:(id)certificate error:(id *)error;
- (id)serverPlaybackContextForPlaybackContext:(id)context remoteContextIdentifier:(unsigned int)identifier error:(id *)error;
@end

@implementation SMUFairPlayKeyDelivery

- (id)remoteServerPlaybackContextForCertificate:(id)certificate error:(id *)error
{
  v22[1] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CBEB38];
  certificateCopy = certificate;
  v7 = [v5 dictionaryWithCapacity:2];
  v8 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:1];
  v9 = [MEMORY[0x277CCACA8] stringWithCString:"gaX8gT7e" encoding:4];
  [v7 setObject:&unk_287791EF8 forKey:v9];

  v10 = [MEMORY[0x277CCACA8] stringWithCString:"Y7bdIsnh7" encoding:4];
  [v7 setObject:certificateCopy forKey:v10];

  v11 = nS1Q9ljw9esy9(v7, v8);
  if (v11)
  {
    v12 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:v11 userInfo:0];
    v13 = MEMORY[0x277CCA9B8];
    v21 = *MEMORY[0x277CCA7E8];
    v22[0] = v12;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];
    v15 = [v13 errorWithDomain:@"SMUFairPlayKeyDeliveryErrorDomain" code:0 userInfo:v14];
  }

  else
  {
    v18 = [MEMORY[0x277CCACA8] stringWithCString:"xNJu5eepP" encoding:4];
    v12 = [v8 objectForKey:v18];

    if (v12)
    {
      v19 = [MEMORY[0x277CCACA8] stringWithCString:"rGLU5bt2" encoding:4];
      v15 = [v8 objectForKey:v19];

      if (v15)
      {
        v17 = -[SMUFairPlayRemoteServerPlaybackContext initWithBlob:identifier:]([SMUFairPlayRemoteServerPlaybackContext alloc], "initWithBlob:identifier:", v12, [v15 unsignedIntValue]);

        v15 = 0;
        goto LABEL_9;
      }
    }

    else
    {
      v15 = [MEMORY[0x277CCA9B8] errorWithDomain:@"SMUFairPlayKeyDeliveryErrorDomain" code:1 userInfo:0];
    }
  }

  if (error)
  {
    v16 = v15;
    v17 = 0;
    *error = v15;
  }

  else
  {
    v17 = 0;
  }

LABEL_9:

  return v17;
}

- (id)serverPlaybackContextForPlaybackContext:(id)context remoteContextIdentifier:(unsigned int)identifier error:(id *)error
{
  v19[1] = *MEMORY[0x277D85DE8];
  v17 = 0;
  v16 = 0;
  contextCopy = context;
  BytePtr = CFDataGetBytePtr(contextCopy);
  Length = CFDataGetLength(contextCopy);

  v10 = f5zGmdURga6BZ(identifier, BytePtr, Length, &v17, &v16);
  if (v10)
  {
    v11 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:v10 userInfo:0];
    v12 = v11;
    if (error)
    {
      v13 = MEMORY[0x277CCA9B8];
      v18 = *MEMORY[0x277CCA7E8];
      v19[0] = v11;
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
      *error = [v13 errorWithDomain:@"SMUFairPlayKeyDeliveryErrorDomain" code:0 userInfo:v14];

      error = 0;
    }
  }

  else
  {
    error = [MEMORY[0x277CBEA90] dataWithBytes:v17 length:v16];
    v12 = 0;
  }

  return error;
}

@end