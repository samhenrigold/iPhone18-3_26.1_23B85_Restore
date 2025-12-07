@interface GregorianCalendar
@end

@implementation GregorianCalendar

uint64_t ___GregorianCalendar_block_invoke()
{
  v0 = [MEMORY[0x1E695DEE8] calendarWithIdentifier:*MEMORY[0x1E695D850]];
  v1 = _GregorianCalendar___gregorianCalendar;
  _GregorianCalendar___gregorianCalendar = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end