@interface ASDTControlFactory
+ (id)controlForConfig:(id)config withDevice:(id)device;
@end

@implementation ASDTControlFactory

+ (id)controlForConfig:(id)config withDevice:(id)device
{
  configCopy = config;
  deviceCopy = device;
  asdtSubclass = [configCopy asdtSubclass];
  v8 = [asdtSubclass isSubclassOfClass:objc_opt_class()];
  if (v8 && (v8 = [asdtSubclass conformsToProtocol:&unk_28535C9D0], (v8 & 1) != 0))
  {
    v10 = [[asdtSubclass alloc] initWithConfig:configCopy withDevice:deviceCopy];
  }

  else
  {
    v11 = ASDTBaseLogType(v8, v9);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [ASDTControlFactory controlForConfig:asdtSubclass withDevice:v11];
    }

    v10 = 0;
  }

  return v10;
}

+ (void)controlForConfig:(uint64_t)a1 withDevice:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_241659000, a2, OS_LOG_TYPE_ERROR, "Invalid subclass of ASDControl: %@", &v2, 0xCu);
}

@end