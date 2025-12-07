@interface HIDEvent(HIDTemperatureEvent)
+ (char)temperatureEvent:()HIDTemperatureEvent level:options:;
@end

@implementation HIDEvent(HIDTemperatureEvent)

+ (char)temperatureEvent:()HIDTemperatureEvent level:options:
{
  v6 = _IOHIDEventCreate();
  *(*&v6[*MEMORY[0x277CD2870] + 88] + 16) = vcvtd_n_s64_f64(self, 0x10uLL);

  return v6;
}

@end