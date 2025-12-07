@interface REMXPCStorageClasses
+ (id)remStorageClasses;
@end

@implementation REMXPCStorageClasses

+ (id)remStorageClasses
{
  if (remStorageClasses_onceToken != -1)
  {
    +[REMXPCStorageClasses remStorageClasses];
  }

  v3 = remStorageClasses___sResult;

  return v3;
}

uint64_t __41__REMXPCStorageClasses_remStorageClasses__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  remStorageClasses___sResult = [v2 setWithObjects:{v3, v4, v5, v6, v7, v8, objc_opt_class(), 0}];

  return MEMORY[0x1EEE66BB8]();
}

@end