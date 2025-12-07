@interface HUDInsightReportHeartbeat
@end

@implementation HUDInsightReportHeartbeat

__int16 *__HUDInsightReportHeartbeat_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 32) + 25) != 0;
  result = HUDGetGlobalConfig(a1, a2);
  *(result + 3) = v2;
  return result;
}

@end