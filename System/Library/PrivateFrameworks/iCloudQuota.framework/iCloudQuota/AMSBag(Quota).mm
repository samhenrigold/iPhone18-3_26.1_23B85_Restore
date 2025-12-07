@interface AMSBag(Quota)
+ (id)quotaBag;
@end

@implementation AMSBag(Quota)

+ (id)quotaBag
{
  if (quotaBag_onceToken != -1)
  {
    +[AMSBag(Quota) quotaBag];
  }

  v2 = quotaBag_quotaBag;

  return v2;
}

@end