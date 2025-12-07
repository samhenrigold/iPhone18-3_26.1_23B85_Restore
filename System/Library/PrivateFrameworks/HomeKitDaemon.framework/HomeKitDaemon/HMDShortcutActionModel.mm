@interface HMDShortcutActionModel
+ (id)properties;
- (void)loadModelWithActionInformation:(id)information;
@end

@implementation HMDShortcutActionModel

+ (id)properties
{
  v11[1] = *MEMORY[0x277D85DE8];
  v9.receiver = self;
  v9.super_class = &OBJC_METACLASS___HMDShortcutActionModel;
  v2 = objc_msgSendSuper2(&v9, sel_properties);
  v3 = [v2 mutableCopy];

  v4 = NSStringFromSelector(sel_data);
  v10 = v4;
  v5 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v11[0] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  [v3 addEntriesFromDictionary:v6];

  v7 = objc_msgSend_copy(v3);

  return v7;
}

- (void)loadModelWithActionInformation:(id)information
{
  v6.receiver = self;
  v6.super_class = HMDShortcutActionModel;
  informationCopy = information;
  [(HMDActionModel *)&v6 loadModelWithActionInformation:informationCopy];
  v5 = [informationCopy hmf_dataForKey:{*MEMORY[0x277CD1598], v6.receiver, v6.super_class}];

  [(HMDShortcutActionModel *)self setData:v5];
}

@end