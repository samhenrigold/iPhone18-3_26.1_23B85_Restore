@interface BRCPQLInjectionAllocateRankWhenCaughtUp
+ (id)_createInjectionWithCaughtUp:(BOOL)up fullSync:(BOOL)sync;
- (BRCPQLInjectionAllocateRankWhenCaughtUp)initWithCaughtUp:(BOOL)up fullSync:(BOOL)sync;
@end

@implementation BRCPQLInjectionAllocateRankWhenCaughtUp

- (BRCPQLInjectionAllocateRankWhenCaughtUp)initWithCaughtUp:(BOOL)up fullSync:(BOOL)sync
{
  v5 = [objc_opt_class() _createInjectionWithCaughtUp:up fullSync:sync];
  v8.receiver = self;
  v8.super_class = BRCPQLInjectionAllocateRankWhenCaughtUp;
  v6 = [(BRCPQLInjectionBase *)&v8 initWithActualInjection:v5];

  return v6;
}

+ (id)_createInjectionWithCaughtUp:(BOOL)up fullSync:(BOOL)sync
{
  if (sync)
  {
    v4 = "";
    v5 = 0;
  }

  else if (up)
  {
    v4 = " AND item_depth >= -1";
    v5 = 21;
  }

  else
  {
    v4 = " AND item_depth >= 0";
    v5 = 20;
  }

  v6 = [MEMORY[0x277D82C18] rawInjection:v4 length:v5];

  return v6;
}

@end