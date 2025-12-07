@interface ASDTIOPAudioVTServiceManager
- (id)serviceForIOObject:(unsigned int)object andIDValue:(id)value;
@end

@implementation ASDTIOPAudioVTServiceManager

- (id)serviceForIOObject:(unsigned int)object andIDValue:(id)value
{
  v4 = [ASDTIOPAudioVTDevice forIOObject:*&object andIDValue:value];

  return v4;
}

@end