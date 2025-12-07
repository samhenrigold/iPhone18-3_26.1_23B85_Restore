@interface SRSensorWriterKeyboardDelegate
- (id)classNameForSensorIdentifier:(id)identifier;
@end

@implementation SRSensorWriterKeyboardDelegate

- (id)classNameForSensorIdentifier:(id)identifier
{
  if (objc_msgSend_isEqualToString_(identifier, a2, @"com.apple.SensorKit.keyboardMetrics"))
  {
    return @"SRKeyboardMetrics";
  }

  else
  {
    return 0;
  }
}

@end