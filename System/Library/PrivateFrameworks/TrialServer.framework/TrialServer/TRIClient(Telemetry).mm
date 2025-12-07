@interface TRIClient(Telemetry)
- (uint64_t)shouldLogAtLevel:()Telemetry withPrivacyRadar:;
@end

@implementation TRIClient(Telemetry)

- (uint64_t)shouldLogAtLevel:()Telemetry withPrivacyRadar:
{
  LODWORD(result) = [self shouldLogAtLevel:a3];
  if (a4 == 54260918)
  {
    return result;
  }

  else
  {
    return 0;
  }
}

@end