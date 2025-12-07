@interface BLSHCacheFlipbookOnDisplayWakeAttributeHandler
+ (id)attributeClasses;
- (void)activateForSceneEnvironment:(id)environment;
- (void)deactivateForSceneEnvironment:(id)environment;
@end

@implementation BLSHCacheFlipbookOnDisplayWakeAttributeHandler

+ (id)attributeClasses
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = objc_opt_class();
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];

  return v2;
}

- (void)activateForSceneEnvironment:(id)environment
{
  environmentCopy = environment;
  v3 = environmentCopy;
  BSDispatchMain();
}

uint64_t __78__BLSHCacheFlipbookOnDisplayWakeAttributeHandler_activateForSceneEnvironment___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    __78__BLSHCacheFlipbookOnDisplayWakeAttributeHandler_activateForSceneEnvironment___block_invoke_cold_1(v2, a1);
  }

  v3 = *v2;

  return [v3 setCacheFlipbookOnDisplayWake:1];
}

- (void)deactivateForSceneEnvironment:(id)environment
{
  environmentCopy = environment;
  v3 = environmentCopy;
  BSDispatchMain();
}

void __78__BLSHCacheFlipbookOnDisplayWakeAttributeHandler_activateForSceneEnvironment___block_invoke_cold_1(id *a1, uint64_t a2)
{
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [*a1 debugDescription];
  v8 = [v4 stringWithFormat:@"class %@ must respond to selector setCacheFlipbookOnDisplayWake: in order to acquire assertion with BLSCacheFlipbookOnDisplayWakeAttribute : %@", v6, v7];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v9 = NSStringFromSelector(*(a2 + 48));
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = *(a2 + 40);
    *buf = 138544642;
    v14 = v9;
    v15 = 2114;
    v16 = v11;
    v17 = 2048;
    v18 = v12;
    v19 = 2114;
    v20 = @"BLSHCacheFlipbookOnDisplayWakeAttributeHandler.m";
    v21 = 1024;
    v22 = 31;
    v23 = 2114;
    v24 = v8;
    _os_log_error_impl(&dword_21FD11000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v8 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end