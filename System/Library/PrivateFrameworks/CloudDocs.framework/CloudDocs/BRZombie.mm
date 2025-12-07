@interface BRZombie
+ (void)turnObjectIntoZombie:(id)zombie;
- (id)methodSignatureForSelector:(SEL)selector;
- (void)dealloc;
@end

@implementation BRZombie

- (void)dealloc
{
  AssociatedObject = objc_getAssociatedObject(self, "BRZombieFormerClass");
  objc_setAssociatedObject(self, "BRZombieDescription", 0, 0x301);
  objc_setAssociatedObject(self, "BRZombieFormerClass", 0, 0);

  object_setClass(self, AssociatedObject);
}

- (id)methodSignatureForSelector:(SEL)selector
{
  v18 = *MEMORY[0x1E69E9840];
  AssociatedObject = objc_getAssociatedObject(self, "BRZombieDescription");
  v6 = objc_getAssociatedObject(self, "BRZombieFormerClass");
  v7 = brc_bread_crumbs("[BRZombie methodSignatureForSelector:]", 46);
  v8 = brc_default_log(0, 0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
  {
    v10 = 136315906;
    ClassName = object_getClassName(v6);
    v12 = 2080;
    uTF8String = [NSStringFromSelector(selector) UTF8String];
    v14 = 2080;
    uTF8String2 = [AssociatedObject UTF8String];
    v16 = 2112;
    v17 = v7;
    _os_log_fault_impl(&dword_1AE2A9000, v8, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: *** [%s %s]: message sent to deallocated instance %s%@", &v10, 0x2Au);
  }

  return [v6 instanceMethodSignatureForSelector:selector];
}

+ (void)turnObjectIntoZombie:(id)zombie
{
  if (zombie)
  {
    v4 = objc_opt_class();
    zombie = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@:%p (old description: %@)>", v4, zombie, zombie];
    objc_setAssociatedObject(zombie, "BRZombieDescription", zombie, 0x301);
    objc_setAssociatedObject(zombie, "BRZombieFormerClass", v4, 0);
    v6 = objc_opt_class();
    object_setClass(zombie, v6);
    v7 = brc_bread_crumbs("+[BRZombie turnObjectIntoZombie:]", 72);
    v8 = brc_default_log(1, 0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [(BRZombie *)zombie turnObjectIntoZombie:v7, v8];
    }
  }
}

+ (void)turnObjectIntoZombie:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_debug_impl(&dword_1AE2A9000, log, OS_LOG_TYPE_DEBUG, "[DEBUG] Turned object into a zombie - %@\n%@", &v3, 0x16u);
}

@end