@interface TSTConfiguration
+ (TSTConfiguration)sharedTableConfiguration;
+ (void)resetSharedTableConfiguration;
- (TSTConfiguration)init;
@end

@implementation TSTConfiguration

+ (TSTConfiguration)sharedTableConfiguration
{
  if (qword_27CFB6BA0 != -1)
  {
    sub_22170B234();
  }

  v3 = qword_27CFB6B98;

  return v3;
}

+ (void)resetSharedTableConfiguration
{
  if (qword_27CFB6B98)
  {
    v2 = objc_opt_new();
    v3 = qword_27CFB6B98;
    qword_27CFB6B98 = v2;
  }
}

- (TSTConfiguration)init
{
  v8.receiver = self;
  v8.super_class = TSTConfiguration;
  v2 = [(TSTConfiguration *)&v8 init];
  v6 = v2;
  if (v2)
  {
    *(v2 + 11) = 0x3E8000F4240;
    *(v2 + 24) = 0x7FFFFFFF;
    *(v2 + 1) = 0x1000001000000;
    *(v2 + 13) = 256;
    *(v2 + 22) = 256;
    *(v2 + 30) = 0x10000010000;
    *(v2 + 38) = 65537;
    v2[44] = objc_msgSend_tsk_phoneUI(MEMORY[0x277D75418], v3, v4, v5) ^ 1;
    *(v6 + 21) = 256;
    *(v6 + 45) = 1;
    *(v6 + 10) = 1;
    *(v6 + 4) = 16777473;
    v6[49] = 1;
    *(v6 + 32) = 256;
    *(v6 + 50) = 0;
    *(v6 + 27) = 0;
    *(v6 + 7) = 0x1000000000100;
    *(v6 + 67) = 0x1000000;
    *(v6 + 14) = 0;
    *(v6 + 18) = 0x10000;
    *(v6 + 38) = 256;
    *(v6 + 79) = 0;
    *(v6 + 104) = xmmword_2218039D0;
    *(v6 + 15) = 52428800;
    v6[87] = 0;
    *(v6 + 83) = 0;
  }

  return v6;
}

@end