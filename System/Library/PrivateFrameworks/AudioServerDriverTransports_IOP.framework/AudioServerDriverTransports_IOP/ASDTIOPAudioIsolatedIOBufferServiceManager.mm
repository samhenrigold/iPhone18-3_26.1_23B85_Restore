@interface ASDTIOPAudioIsolatedIOBufferServiceManager
- (id)serviceForIOObject:(unsigned int)object andIDValue:(id)value;
@end

@implementation ASDTIOPAudioIsolatedIOBufferServiceManager

- (id)serviceForIOObject:(unsigned int)object andIDValue:(id)value
{
  v4 = [ASDTIOPAudioIsolatedIOBufferDevice forIOObject:*&object andIDValue:value];

  return v4;
}

@end