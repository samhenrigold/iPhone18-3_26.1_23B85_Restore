@interface ASDTNonSecurePathEnableProperty
+ (id)createForInput;
- (ASDTNonSecurePathEnableProperty)initWithConfig:(id)config;
@end

@implementation ASDTNonSecurePathEnableProperty

- (ASDTNonSecurePathEnableProperty)initWithConfig:(id)config
{
  v10[2] = *MEMORY[0x277D85DE8];
  v4 = [config mutableCopy];
  [v4 setObject:&unk_285354858 forKey:@"Selector"];
  v9[0] = @"Scope";
  v9[1] = @"Value";
  v10[0] = &unk_285354870;
  v10[1] = &unk_285354888;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:2];
  [v4 asdtAddMissingEntriesFromDictionary:v5];

  v8.receiver = self;
  v8.super_class = ASDTNonSecurePathEnableProperty;
  v6 = [(ASDTUInt32Property *)&v8 initWithConfig:v4];

  return v6;
}

+ (id)createForInput
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"Subclass";
  v6[0] = @"ASDTNonSecurePathEnableProperty";
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  v3 = [ASDTCustomProperty customPropertyForConfig:v2];

  return v3;
}

@end