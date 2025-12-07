@interface BRCPQLInjectionServerClientTableBase
+ (id)_createInjectionWithServerTruth:(BOOL)truth;
+ (id)clientTable;
+ (id)serverTable;
- (BRCPQLInjectionServerClientTableBase)initWithServerTruth:(BOOL)truth;
@end

@implementation BRCPQLInjectionServerClientTableBase

- (BRCPQLInjectionServerClientTableBase)initWithServerTruth:(BOOL)truth
{
  v4 = [objc_opt_class() _createInjectionWithServerTruth:truth];
  v7.receiver = self;
  v7.super_class = BRCPQLInjectionServerClientTableBase;
  v5 = [(BRCPQLInjectionBase *)&v7 initWithActualInjection:v4];

  return v5;
}

+ (id)_createInjectionWithServerTruth:(BOOL)truth
{
  v3 = MEMORY[0x277D82C10];
  if (truth)
  {
    [self serverTable];
  }

  else
  {
    [self clientTable];
  }
  v4 = ;
  v5 = [v3 nameWithString:v4];

  return v5;
}

+ (id)serverTable
{
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    +[BRCPQLInjectionServerClientTableBase serverTable];
  }

  return &stru_2837504F0;
}

+ (id)clientTable
{
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    +[BRCPQLInjectionServerClientTableBase serverTable];
  }

  return &stru_2837504F0;
}

@end