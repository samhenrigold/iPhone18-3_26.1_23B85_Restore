@interface HIDEvent(HIDOrientationEvent)
+ (char)polarOrientationEvent:()HIDOrientationEvent radius:azimuth:altitude:options:;
+ (char)quaternionOrientationEvent:()HIDOrientationEvent w:x:y:z:options:;
+ (char)tiltOrientationEvent:()HIDOrientationEvent x:y:z:options:;
@end

@implementation HIDEvent(HIDOrientationEvent)

+ (char)polarOrientationEvent:()HIDOrientationEvent radius:azimuth:altitude:options:
{
  v10 = _IOHIDEventCreate();
  v11 = *&v10[*MEMORY[0x277CD2870] + 88];
  v11[8] = 0;
  v11[4] = vcvtd_n_s64_f64(self, 0x10uLL);
  v11[5] = vcvtd_n_s64_f64(a2, 0x10uLL);
  v11[6] = vcvtd_n_s64_f64(a3, 0x10uLL);

  return v10;
}

+ (char)quaternionOrientationEvent:()HIDOrientationEvent w:x:y:z:options:
{
  v12 = _IOHIDEventCreate();
  v13 = *&v12[*MEMORY[0x277CD2870] + 88];
  v13[8] = 3;
  v13[4] = vcvtd_n_s64_f64(self, 0x10uLL);
  v13[5] = vcvtd_n_s64_f64(a2, 0x10uLL);
  v13[6] = vcvtd_n_s64_f64(a3, 0x10uLL);
  v13[7] = vcvtd_n_s64_f64(a4, 0x10uLL);

  return v12;
}

+ (char)tiltOrientationEvent:()HIDOrientationEvent x:y:z:options:
{
  v10 = _IOHIDEventCreate();
  v11 = *&v10[*MEMORY[0x277CD2870] + 88];
  v11[8] = 2;
  v11[4] = vcvtd_n_s64_f64(self, 0x10uLL);
  v11[5] = vcvtd_n_s64_f64(a2, 0x10uLL);
  v11[6] = vcvtd_n_s64_f64(a3, 0x10uLL);

  return v10;
}

@end