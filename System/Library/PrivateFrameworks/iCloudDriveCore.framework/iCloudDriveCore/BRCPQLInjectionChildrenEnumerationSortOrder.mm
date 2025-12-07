@interface BRCPQLInjectionChildrenEnumerationSortOrder
+ (id)_createInjectionSortOrder:(unsigned __int8)order;
- (BRCPQLInjectionChildrenEnumerationSortOrder)initWithSortOrder:(unsigned __int8)order;
@end

@implementation BRCPQLInjectionChildrenEnumerationSortOrder

- (BRCPQLInjectionChildrenEnumerationSortOrder)initWithSortOrder:(unsigned __int8)order
{
  v4 = [objc_opt_class() _createInjectionSortOrder:order];
  v7.receiver = self;
  v7.super_class = BRCPQLInjectionChildrenEnumerationSortOrder;
  v5 = [(BRCPQLInjectionBase *)&v7 initWithActualInjection:v4];

  return v5;
}

+ (id)_createInjectionSortOrder:(unsigned __int8)order
{
  if (order == 1)
  {
    v3 = " ORDER BY version_mtime DESC";
    v4 = 28;
  }

  else if (order)
  {
    v3 = "";
    v4 = 0;
  }

  else
  {
    v3 = " ORDER BY item_filename";
    v4 = 23;
  }

  v5 = [MEMORY[0x277D82C18] rawInjection:v3 length:v4];

  return v5;
}

@end