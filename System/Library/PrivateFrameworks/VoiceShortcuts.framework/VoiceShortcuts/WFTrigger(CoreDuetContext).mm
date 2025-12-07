@interface WFTrigger(CoreDuetContext)
- (void)contextStoreKeyPathForCurrentState;
- (void)contextStorePredicate;
@end

@implementation WFTrigger(CoreDuetContext)

- (void)contextStorePredicate
{
  v1 = getWFTriggersLogObject();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    v2 = objc_opt_class();
    v3 = NSStringFromClass(v2);
    v4 = 136315394;
    v5 = "[WFTrigger(CoreDuetContext) contextStorePredicate]";
    v6 = 2112;
    v7 = v3;
    _os_log_impl(&dword_23103C000, v1, OS_LOG_TYPE_ERROR, "%s Subclass MUST override, but %@ didn't", &v4, 0x16u);
  }

  __break(1u);
}

- (void)contextStoreKeyPathForCurrentState
{
  v1 = getWFTriggersLogObject();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    v2 = objc_opt_class();
    v3 = NSStringFromClass(v2);
    v4 = 136315394;
    v5 = "[WFTrigger(CoreDuetContext) contextStoreKeyPathForCurrentState]";
    v6 = 2112;
    v7 = v3;
    _os_log_impl(&dword_23103C000, v1, OS_LOG_TYPE_ERROR, "%s Subclass MUST override, but %@ didn't", &v4, 0x16u);
  }

  __break(1u);
}

@end