@interface VGInfo
- (VGInfo)init;
@end

@implementation VGInfo

- (VGInfo)init
{
  v15[1] = *MEMORY[0x277D85DE8];
  v13.receiver = self;
  v13.super_class = VGInfo;
  v2 = [(VGInfo *)&v13 init];
  if (v2)
  {
    v14 = @"version";
    vg_bundle = [MEMORY[0x277CCA8D8] vg_bundle];
    infoDictionary = [vg_bundle infoDictionary];
    v5 = [infoDictionary valueForKey:@"CFBundleVersion"];
    v15[0] = v5;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    framework = v2->_framework;
    v2->_framework = v6;

    v8 = objc_opt_new();
    v9 = [v8 copy];
    models = v2->_models;
    v2->_models = v9;

    v11 = v2;
  }

  return v2;
}

@end