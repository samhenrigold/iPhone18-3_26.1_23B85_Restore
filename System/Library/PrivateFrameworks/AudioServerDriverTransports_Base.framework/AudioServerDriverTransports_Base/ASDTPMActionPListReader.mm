@interface ASDTPMActionPListReader
- (ASDTPMActionPListReader)initWithConfig:(id)config forSequencer:(id)sequencer;
- (id)convert:(id)convert;
@end

@implementation ASDTPMActionPListReader

- (ASDTPMActionPListReader)initWithConfig:(id)config forSequencer:(id)sequencer
{
  sequencerCopy = sequencer;
  v7 = [config mutableCopy];
  [v7 setObject:MEMORY[0x277CBEC38] forKey:@"IsPList"];
  v8 = [v7 objectForKey:@"BundleExt"];

  if (!v8)
  {
    [v7 setObject:@"plist" forKey:@"BundleExt"];
  }

  v11.receiver = self;
  v11.super_class = ASDTPMActionPListReader;
  v9 = [(ASDTPMActionFileReader *)&v11 initWithConfig:v7 forSequencer:sequencerCopy];

  return v9;
}

- (id)convert:(id)convert
{
  v11 = 0;
  v4 = [MEMORY[0x277CCAC58] propertyListWithData:convert options:0 format:0 error:&v11];
  v5 = v11;
  v7 = v5;
  if (v4)
  {
    v8 = [(ASDTPMActionPListReader *)self narrowPList:v4];
  }

  else
  {
    v9 = ASDTBaseLogType(v5, v6);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(ASDTPMActionPListReader *)self convert:v7, v9];
    }

    v8 = 0;
  }

  return v8;
}

- (void)convert:(NSObject *)a3 .cold.1(void *a1, void *a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = [a1 name];
  v6 = [a2 description];
  v7 = 138412546;
  v8 = v5;
  v9 = 2112;
  v10 = v6;
  _os_log_error_impl(&dword_241659000, a3, OS_LOG_TYPE_ERROR, "%@: Error converting plist data: %@", &v7, 0x16u);
}

@end