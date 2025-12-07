@interface HIDEvent(HIDDigitizerEvent)
+ (char)digitizerEvent:()HIDDigitizerEvent transducerType:x:y:z:options:;
+ (char)polarDigitizerEvent:()HIDDigitizerEvent altitude:azimuth:quality:density:majorRadius:minorRadius:options:;
+ (char)qualityDigitizerEvent:()HIDDigitizerEvent quality:density:irregularity:majorRadius:minorRadius:accuracy:options:;
+ (char)tiltDigitizerEvent:()HIDDigitizerEvent x:y:options:;
@end

@implementation HIDEvent(HIDDigitizerEvent)

+ (char)digitizerEvent:()HIDDigitizerEvent transducerType:x:y:z:options:
{
  v12 = _IOHIDEventCreate();
  v13 = *&v12[*MEMORY[0x277CD2870] + 88];
  *(v13 + 44) = a7;
  *(v13 + 16) = self;
  *(v13 + 24) = a2;
  *(v13 + 32) = a3;

  return v12;
}

+ (char)tiltDigitizerEvent:()HIDDigitizerEvent x:y:options:
{
  v8 = _IOHIDEventCreate();
  v9 = *&v8[*MEMORY[0x277CD2870] + 88];
  *(v9 + 88) = 0;
  *(v9 + 96) = self;
  *(v9 + 104) = a2;

  return v8;
}

+ (char)polarDigitizerEvent:()HIDDigitizerEvent altitude:azimuth:quality:density:majorRadius:minorRadius:options:
{
  v16 = _IOHIDEventCreate();
  v17 = *&v16[*MEMORY[0x277CD2870] + 88];
  *(v17 + 88) = 1;
  *(v17 + 96) = self;
  *(v17 + 104) = a2;
  *(v17 + 112) = a3;
  *(v17 + 120) = a4;
  *(v17 + 128) = a5;
  *(v17 + 136) = a6;

  return v16;
}

+ (char)qualityDigitizerEvent:()HIDDigitizerEvent quality:density:irregularity:majorRadius:minorRadius:accuracy:options:
{
  v16 = _IOHIDEventCreate();
  v17 = *&v16[*MEMORY[0x277CD2870] + 88];
  *(v17 + 88) = 2;
  *(v17 + 96) = self;
  *(v17 + 104) = a2;
  *(v17 + 112) = a3;
  *(v17 + 120) = a4;
  *(v17 + 128) = a5;
  *(v17 + 136) = a6;

  return v16;
}

@end