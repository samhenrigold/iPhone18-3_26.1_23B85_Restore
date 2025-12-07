@interface BRCPQLInjectionBasedOnConditionBase
+ (id)_createInjectionWithCondition:(BOOL)condition;
- (BRCPQLInjectionBasedOnConditionBase)initWithCondition:(BOOL)condition;
@end

@implementation BRCPQLInjectionBasedOnConditionBase

- (BRCPQLInjectionBasedOnConditionBase)initWithCondition:(BOOL)condition
{
  v4 = [objc_opt_class() _createInjectionWithCondition:condition];
  v7.receiver = self;
  v7.super_class = BRCPQLInjectionBasedOnConditionBase;
  v5 = [(BRCPQLInjectionBase *)&v7 initWithActualInjection:v4];

  return v5;
}

+ (id)_createInjectionWithCondition:(BOOL)condition
{
  v3 = brc_bread_crumbs();
  v4 = brc_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    +[BRCPQLInjectionServerClientTableBase serverTable];
  }

  v5 = [MEMORY[0x277D82C18] rawInjection:"" length:0];

  return v5;
}

@end