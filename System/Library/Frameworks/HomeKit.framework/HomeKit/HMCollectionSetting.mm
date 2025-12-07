@interface HMCollectionSetting
+ (id)defaultItemValueClasses;
- (BOOL)isKindOfClass:(Class)class;
- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count;
@end

@implementation HMCollectionSetting

- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count
{
  value = [(HMSetting *)self value];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = value;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  v11 = [v10 countByEnumeratingWithState:state objects:objects count:count];
  return v11;
}

- (BOOL)isKindOfClass:(Class)class
{
  v5.receiver = self;
  v5.super_class = HMCollectionSetting;
  return [(HMCollectionSetting *)&v5 isKindOfClass:?]|| objc_opt_class() == class;
}

+ (id)defaultItemValueClasses
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v6 count:3];
  v4 = [v2 setWithArray:{v3, v6, v7}];

  return v4;
}

@end