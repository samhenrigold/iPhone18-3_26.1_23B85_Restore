@interface IORegistryEmbeddedDeviceTreeAudioInfo
- (void)createCFTypeRefForKey:(id)key atPath:(id)path error:(id *)error;
@end

@implementation IORegistryEmbeddedDeviceTreeAudioInfo

- (void)createCFTypeRefForKey:(id)key atPath:(id)path error:(id *)error
{
  v21[1] = *MEMORY[0x277D85DE8];
  keyCopy = key;
  pathCopy = path;
  GetEntryForPath([pathCopy UTF8String], &entry);
  if (!entry)
  {
    if (!error)
    {
LABEL_8:
      v10 = 0;
      goto LABEL_9;
    }

    v15 = MEMORY[0x277CCA9B8];
    v20 = *MEMORY[0x277CCA450];
    v12 = [@"path not found: " stringByAppendingString:pathCopy];
    v21[0] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    v14 = [v15 errorWithDomain:@"EDTReadingErrorDomain" code:1 userInfo:v13];
LABEL_7:
    *error = v14;

    goto LABEL_8;
  }

  CFProperty = IORegistryEntryCreateCFProperty(entry, keyCopy, *MEMORY[0x277CBECE8], 0);
  v10 = CFProperty;
  if (error && !CFProperty)
  {
    v11 = MEMORY[0x277CCA9B8];
    v18 = *MEMORY[0x277CCA450];
    v12 = [@"key not found: " stringByAppendingString:keyCopy];
    v19 = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    v14 = [v11 errorWithDomain:@"EDTReadingErrorDomain" code:2 userInfo:v13];
    goto LABEL_7;
  }

LABEL_9:
  RegistryEntry::~RegistryEntry(&entry);

  return v10;
}

@end