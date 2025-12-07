@interface tm7a58b37c289f2d4f7dabb7e81e8e9672
- (void)updateAllThermalLoad:(BOOL)load;
@end

@implementation tm7a58b37c289f2d4f7dabb7e81e8e9672

- (void)updateAllThermalLoad:(BOOL)load
{
  [+[SensorDispatcherHelper getFloatValueFromSMCForKey:load], "getFloatValueFromSMCForKey:", @"Te3z"];
  v27 = v3;
  [+[SensorDispatcherHelper sharedInstance](SensorDispatcherHelper getFloatValueFromSMCForKey:"getFloatValueFromSMCForKey:", @"Ts5z"];
  v25 = v4;
  [+[SensorDispatcherHelper sharedInstance](SensorDispatcherHelper getFloatValueFromSMCForKey:"getFloatValueFromSMCForKey:", @"Ta1z"];
  v26 = v5;
  [+[SensorDispatcherHelper sharedInstance](SensorDispatcherHelper getFloatValueFromSMCForKey:"getFloatValueFromSMCForKey:", @"Tp2z"];
  v24 = v6;
  [+[SensorDispatcherHelper sharedInstance](SensorDispatcherHelper getFloatValueFromSMCForKey:"getFloatValueFromSMCForKey:", @"Tp3z"];
  v23 = v7;
  [+[SensorDispatcherHelper sharedInstance](SensorDispatcherHelper getFloatValueFromSMCForKey:"getFloatValueFromSMCForKey:", @"Tp4z"];
  v22 = v8;
  [+[SensorDispatcherHelper sharedInstance](SensorDispatcherHelper getFloatValueFromSMCForKey:"getFloatValueFromSMCForKey:", @"Tp5z"];
  v10 = (v9 * 100.0);
  [+[SensorDispatcherHelper sharedInstance](SensorDispatcherHelper getFloatValueFromSMCForKey:"getFloatValueFromSMCForKey:", @"Tp7z"];
  v21 = v11;
  [+[SensorDispatcherHelper sharedInstance](SensorDispatcherHelper getFloatValueFromSMCForKey:"getFloatValueFromSMCForKey:", @"Tp8z"];
  v20 = v12;
  [+[SensorDispatcherHelper sharedInstance](SensorDispatcherHelper getFloatValueFromSMCForKey:"getFloatValueFromSMCForKey:", @"Tp9z"];
  v19 = v13;
  [+[SensorDispatcherHelper sharedInstance](SensorDispatcherHelper getFloatValueFromSMCForKey:"getFloatValueFromSMCForKey:", @"tGAM"];
  v15 = vdupq_n_s32(0x42C80000u);
  qword_1000AB824 = vmax_s32(qword_1000AB824, vcvt_s32_f32(vmul_f32(__PAIR64__(v25, v27), *v15.f32)));
  qword_1000AB82C = vmax_s32(qword_1000AB82C, vcvt_s32_f32(vmul_f32(__PAIR64__(v24, v26), *v15.f32)));
  qword_1000AB834 = vmax_s32(qword_1000AB834, vcvt_s32_f32(vmul_f32(__PAIR64__(v22, v23), *v15.f32)));
  v16 = dword_1000AB83C;
  if (dword_1000AB83C <= v10)
  {
    v16 = v10;
  }

  v17.i64[0] = __PAIR64__(v20, v21);
  v17.i64[1] = __PAIR64__(v14, v19);
  dword_1000AB83C = v16;
  *&dword_1000AB840 = vmaxq_s32(*&dword_1000AB840, vcvtq_s32_f32(vmulq_f32(v17, v15)));
  v18 = qword_1000ABCB0;

  [v18 setPackageLowPowerTarget];
}

@end