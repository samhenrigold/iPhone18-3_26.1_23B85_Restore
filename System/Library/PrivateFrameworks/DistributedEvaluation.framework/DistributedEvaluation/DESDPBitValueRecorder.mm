@interface DESDPBitValueRecorder
- (BOOL)record:(id)record data:(id)data metadata:(id)metadata;
@end

@implementation DESDPBitValueRecorder

- (BOOL)record:(id)record data:(id)data metadata:(id)metadata
{
  v14[1] = *MEMORY[0x277D85DE8];
  v7 = MEMORY[0x277D052E8];
  metadataCopy = metadata;
  dataCopy = data;
  recordCopy = record;
  v11 = [[v7 alloc] initWithKey:recordCopy];

  v14[0] = dataCopy;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];

  LOBYTE(dataCopy) = [v11 recordBitVectors:v12 metadata:metadataCopy];
  return dataCopy;
}

@end