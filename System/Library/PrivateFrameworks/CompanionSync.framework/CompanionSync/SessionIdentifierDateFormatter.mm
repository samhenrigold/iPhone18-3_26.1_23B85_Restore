@interface SessionIdentifierDateFormatter
@end

@implementation SessionIdentifierDateFormatter

void ___SessionIdentifierDateFormatter_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = objc_opt_new();
  v3 = _SessionIdentifierDateFormatter___formatter;
  _SessionIdentifierDateFormatter___formatter = v2;

  [_SessionIdentifierDateFormatter___formatter setDateFormat:@"'P'yyyy-MM-dd'T'HH:mm:ss.SSS"];
  v4 = [MEMORY[0x1E695DFE8] timeZoneForSecondsFromGMT:0];
  [_SessionIdentifierDateFormatter___formatter setTimeZone:v4];
}

@end