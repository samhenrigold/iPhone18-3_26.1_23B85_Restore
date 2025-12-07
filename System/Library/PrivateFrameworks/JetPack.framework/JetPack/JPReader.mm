@interface JPReader
- (BOOL)processStream:(id)stream signatureVerifier:(id)verifier options:(unint64_t)options error:(id *)error;
- (JPReader)init;
- (id)convertError;
- (void)dealloc;
@end

@implementation JPReader

- (JPReader)init
{
  v5.receiver = self;
  v5.super_class = JPReader;
  v2 = [(JPReader *)&v5 init];
  if (v2)
  {
    v3 = JetPackReaderCreate();
    *(v2 + 4) = v3;
    JetPackReaderSetProperty(v3, 0, v2);
    JetPackReaderSetFileEntryFoundCallback(*(v2 + 4), fileEntryFound);
    JetPackReaderSetDataSegmentFoundCallback(*(v2 + 4), dataSegmentFound);
    JetPackReaderSetKeyForIdentifierCallback(*(v2 + 4), keyForIdentifier);
  }

  return v2;
}

- (void)dealloc
{
  JetPackReaderDestroy([(JPReader *)self backing]);
  v3.receiver = self;
  v3.super_class = JPReader;
  [(JPReader *)&v3 dealloc];
}

- (BOOL)processStream:(id)stream signatureVerifier:(id)verifier options:(unint64_t)options error:(id *)error
{
  optionsCopy = options;
  verifierCopy = verifier;
  streamCopy = stream;
  backing = [(JPReader *)self backing];
  backing2 = [streamCopy backing];

  backing3 = [verifierCopy backing];
  JetPackReaderProcess(backing, backing2, backing3, optionsCopy);
}

- (id)convertError
{
  v13[1] = *MEMORY[0x277D85DE8];
  ErrorMessage = JetPackReaderGetErrorMessage([(JPReader *)self backing]);
  if (ErrorMessage && (v3 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:ErrorMessage]) != 0)
  {
    v4 = v3;
    v5 = MEMORY[0x277CCA9B8];
    v12 = *MEMORY[0x277CCA450];
    v13[0] = v3;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    v7 = [v5 errorWithDomain:@"JPErrorDomain" code:0 userInfo:v6];
  }

  else
  {
    v8 = MEMORY[0x277CCA9B8];
    v10 = *MEMORY[0x277CCA450];
    v11 = @"An unknown error occurred";
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
    v7 = [v8 errorWithDomain:@"JPErrorDomain" code:0 userInfo:v4];
  }

  return v7;
}

@end