@interface WRReplyStoreInfo
+ (id)infoForCategory:(unint64_t)category;
@end

@implementation WRReplyStoreInfo

+ (id)infoForCategory:(unint64_t)category
{
  if (category - 1 <= 7 && ((0x8Fu >> (category - 1)) & 1) != 0)
  {
    v3 = objc_opt_class();
  }

  else
  {
    v3 = 0;
  }

  v4 = objc_alloc_init(v3);

  return v4;
}

@end