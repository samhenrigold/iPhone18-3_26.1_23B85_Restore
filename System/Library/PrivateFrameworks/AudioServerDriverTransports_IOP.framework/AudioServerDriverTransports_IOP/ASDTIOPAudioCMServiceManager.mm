@interface ASDTIOPAudioCMServiceManager
- (id)serviceForIOObject:(unsigned int)object andIDValue:(id)value;
@end

@implementation ASDTIOPAudioCMServiceManager

- (id)serviceForIOObject:(unsigned int)object andIDValue:(id)value
{
  v4 = [ASDTIOPAudioCMDevice forIOObject:*&object andIDValue:value];

  return v4;
}

@end