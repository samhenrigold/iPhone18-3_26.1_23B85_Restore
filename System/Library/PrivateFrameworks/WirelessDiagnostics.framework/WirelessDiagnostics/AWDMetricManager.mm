@interface AWDMetricManager
+ (void)postMetricWithId:(unint64_t)id object:(id)object;
@end

@implementation AWDMetricManager

+ (void)postMetricWithId:(unint64_t)id object:(id)object
{
  v11 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    AWDPostSimpleMetricWithInteger(id, [objectCopy longLongValue]);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    AWDPostSimpleMetricWithString(id, [objectCopy UTF8String]);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v6 = [objc_opt_class() description];
    v7 = 134218242;
    idCopy = id;
    v9 = 2080;
    uTF8String = [v6 UTF8String];
    _os_log_impl(&dword_2742E7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "metric:#E In postMetricWithId:object: for mid 0x%lx: unsupported NSObject type! (Got '%s')", &v7, 0x16u);
  }
}

@end