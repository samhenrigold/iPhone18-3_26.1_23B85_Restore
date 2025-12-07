@interface WiFiSystemHealth
- (unint64_t)getComponentStatusWithError:(id *)error;
@end

@implementation WiFiSystemHealth

- (unint64_t)getComponentStatusWithError:(id *)error
{
  v3 = WiFiManagerClientCreate();
  HardwareFailure = WiFiManagerClientGetHardwareFailure();
  if (v3)
  {
    CFRelease(v3);
  }

  if (HardwareFailure == 2)
  {
    return 2;
  }

  else
  {
    return HardwareFailure == 1;
  }
}

@end