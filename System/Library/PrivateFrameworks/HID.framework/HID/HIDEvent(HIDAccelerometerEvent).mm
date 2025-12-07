@interface HIDEvent(HIDAccelerometerEvent)
+ (char)accelerometerEvent:()HIDAccelerometerEvent x:y:z:options:;
@end

@implementation HIDEvent(HIDAccelerometerEvent)

+ (char)accelerometerEvent:()HIDAccelerometerEvent x:y:z:options:
{
  v10 = _IOHIDEventCreate();
  v11 = *&v10[*MEMORY[0x277CD2870] + 88];
  v11[4] = vcvtd_n_s64_f64(self, 0x10uLL);
  v11[5] = vcvtd_n_s64_f64(a2, 0x10uLL);
  v11[6] = vcvtd_n_s64_f64(a3, 0x10uLL);

  return v10;
}

@end