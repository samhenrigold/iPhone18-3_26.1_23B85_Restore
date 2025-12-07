@interface SlowNetworkVeryBadNetwork
- (SlowNetworkVeryBadNetwork)init;
@end

@implementation SlowNetworkVeryBadNetwork

- (SlowNetworkVeryBadNetwork)init
{
  v9 = *MEMORY[0x277D85DE8];
  v6.receiver = self;
  v6.super_class = SlowNetworkVeryBadNetwork;
  v2 = [(SlowNetworkCondition *)&v6 initWithProfile:@"Very Bad Network"];
  if (v2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v3 = objc_opt_class();
    *buf = 138412290;
    v8 = v3;
    v4 = v3;
    _os_log_impl(&dword_243E0F000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%@ Init passed", buf, 0xCu);
  }

  return v2;
}

@end