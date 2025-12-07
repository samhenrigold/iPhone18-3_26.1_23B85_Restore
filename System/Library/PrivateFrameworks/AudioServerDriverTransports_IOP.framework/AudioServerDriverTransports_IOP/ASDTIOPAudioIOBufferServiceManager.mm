@interface ASDTIOPAudioIOBufferServiceManager
- (id)serviceForIOObject:(unsigned int)object andIDValue:(id)value;
@end

@implementation ASDTIOPAudioIOBufferServiceManager

- (id)serviceForIOObject:(unsigned int)object andIDValue:(id)value
{
  v4 = [ASDTIOPAudioIOBufferDevice forIOObject:*&object andIDValue:value];

  return v4;
}

@end