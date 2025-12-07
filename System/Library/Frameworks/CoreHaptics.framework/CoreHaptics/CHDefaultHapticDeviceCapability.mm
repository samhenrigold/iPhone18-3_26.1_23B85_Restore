@interface CHDefaultHapticDeviceCapability
- (float)defaultValueForDynamicParameter:(id)parameter;
- (float)defaultValueForEventParameter:(id)parameter eventType:(id)type;
- (float)maximumValueForDynamicParameter:(id)parameter;
- (float)maximumValueForEventParameter:(id)parameter;
- (float)minimumValueForDynamicParameter:(id)parameter;
- (float)minimumValueForEventParameter:(id)parameter;
- (id)attributesForDynamicParameter:(id)parameter error:(id *)error;
- (id)attributesForEventParameter:(id)parameter eventType:(id)type error:(id *)error;
- (id)initPrivate;
@end

@implementation CHDefaultHapticDeviceCapability

- (id)initPrivate
{
  setupHapticLogScopes();
  v5.receiver = self;
  v5.super_class = CHDefaultHapticDeviceCapability;
  v3 = [(CHDefaultHapticDeviceCapability *)&v5 init];
  if (v3)
  {
    v3->_supportsAudio = +[AVHapticPlayer supportsAudio];
    v3->_supportsHaptics = +[AVHapticPlayer supportsHaptics];
  }

  return v3;
}

- (float)maximumValueForEventParameter:(id)parameter
{
  v11[10] = *MEMORY[0x277D85DE8];
  parameterCopy = parameter;
  v10[0] = CHHapticEventParameterIDHapticIntensity;
  v10[1] = CHHapticEventParameterIDHapticSharpness;
  v11[0] = &unk_28279D7A0;
  v11[1] = &unk_28279D7A0;
  v10[2] = CHHapticEventParameterIDAttackTime;
  v10[3] = CHHapticEventParameterIDDecayTime;
  v11[2] = &unk_28279D7A0;
  v11[3] = &unk_28279D7A0;
  v10[4] = CHHapticEventParameterIDReleaseTime;
  v10[5] = CHHapticEventParameterIDSustained;
  v11[4] = &unk_28279D7A0;
  v11[5] = &unk_28279D7A0;
  v10[6] = CHHapticEventParameterIDAudioVolume;
  v10[7] = CHHapticEventParameterIDAudioPitch;
  v11[6] = &unk_28279D7A0;
  v11[7] = &unk_28279D7A0;
  v10[8] = CHHapticEventParameterIDAudioPan;
  v10[9] = CHHapticEventParameterIDAudioBrightness;
  v11[8] = &unk_28279D7A0;
  v11[9] = &unk_28279D7A0;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:10];
  v5 = [v4 objectForKey:parameterCopy];
  v6 = v5;
  if (v5)
  {
    [v5 floatValue];
    v8 = v7;
  }

  else
  {
    v8 = -999.0;
  }

  return v8;
}

- (float)minimumValueForEventParameter:(id)parameter
{
  v11[10] = *MEMORY[0x277D85DE8];
  parameterCopy = parameter;
  v10[0] = CHHapticEventParameterIDHapticIntensity;
  v10[1] = CHHapticEventParameterIDHapticSharpness;
  v11[0] = &unk_28279D7B0;
  v11[1] = &unk_28279D7B0;
  v10[2] = CHHapticEventParameterIDAttackTime;
  v10[3] = CHHapticEventParameterIDDecayTime;
  v11[2] = &unk_28279D7B0;
  v11[3] = &unk_28279D7B0;
  v10[4] = CHHapticEventParameterIDReleaseTime;
  v10[5] = CHHapticEventParameterIDSustained;
  v11[4] = &unk_28279D7B0;
  v11[5] = &unk_28279D7B0;
  v10[6] = CHHapticEventParameterIDAudioVolume;
  v10[7] = CHHapticEventParameterIDAudioPitch;
  v11[6] = &unk_28279D7B0;
  v11[7] = &unk_28279D7C0;
  v10[8] = CHHapticEventParameterIDAudioPan;
  v10[9] = CHHapticEventParameterIDAudioBrightness;
  v11[8] = &unk_28279D7C0;
  v11[9] = &unk_28279D7B0;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:10];
  v5 = [v4 objectForKey:parameterCopy];
  v6 = v5;
  if (v5)
  {
    [v5 floatValue];
    v8 = v7;
  }

  else
  {
    v8 = -999.0;
  }

  return v8;
}

- (float)defaultValueForEventParameter:(id)parameter eventType:(id)type
{
  v14[10] = *MEMORY[0x277D85DE8];
  parameterCopy = parameter;
  typeCopy = type;
  if (![parameterCopy isEqualToString:CHHapticEventParameterIDHapticIntensity] || (v7 = 0.75, (objc_msgSend(typeCopy, "isEqualToString:", CHHapticEventTypeHapticTransient) & 1) == 0))
  {
    if (![parameterCopy isEqualToString:CHHapticEventParameterIDHapticSharpness] || (v7 = 0.5, (objc_msgSend(typeCopy, "isEqualToString:", CHHapticEventTypeHapticTransient) & 1) == 0))
    {
      v13[0] = CHHapticEventParameterIDHapticIntensity;
      v13[1] = CHHapticEventParameterIDHapticSharpness;
      v14[0] = &unk_28279D7D0;
      v14[1] = &unk_28279D7E0;
      v13[2] = CHHapticEventParameterIDAttackTime;
      v13[3] = CHHapticEventParameterIDDecayTime;
      v14[2] = &unk_28279D7B0;
      v14[3] = &unk_28279D7B0;
      v13[4] = CHHapticEventParameterIDReleaseTime;
      v13[5] = CHHapticEventParameterIDSustained;
      v14[4] = &unk_28279D7B0;
      v14[5] = &unk_28279D7B0;
      v13[6] = CHHapticEventParameterIDAudioVolume;
      v13[7] = CHHapticEventParameterIDAudioPitch;
      v14[6] = &unk_28279D7A0;
      v14[7] = &unk_28279D7B0;
      v13[8] = CHHapticEventParameterIDAudioPan;
      v13[9] = CHHapticEventParameterIDAudioBrightness;
      v14[8] = &unk_28279D7B0;
      v14[9] = &unk_28279D7A0;
      v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:10];
      v9 = [v8 objectForKey:parameterCopy];
      v10 = v9;
      if (v9)
      {
        [v9 floatValue];
        v7 = v11;
      }

      else
      {
        v7 = -999.0;
      }
    }
  }

  return v7;
}

- (float)maximumValueForDynamicParameter:(id)parameter
{
  v11[12] = *MEMORY[0x277D85DE8];
  parameterCopy = parameter;
  v10[0] = CHHapticDynamicParameterIDHapticIntensityControl;
  v10[1] = CHHapticDynamicParameterIDHapticSharpnessControl;
  v11[0] = &unk_28279D7A0;
  v11[1] = &unk_28279D7A0;
  v10[2] = CHHapticDynamicParameterIDHapticAttackTimeControl;
  v10[3] = CHHapticDynamicParameterIDHapticDecayTimeControl;
  v11[2] = &unk_28279D7A0;
  v11[3] = &unk_28279D7A0;
  v10[4] = CHHapticDynamicParameterIDHapticReleaseTimeControl;
  v10[5] = CHHapticDynamicParameterIDAudioVolumeControl;
  v11[4] = &unk_28279D7A0;
  v11[5] = &unk_28279D7A0;
  v10[6] = CHHapticDynamicParameterIDAudioPanControl;
  v10[7] = CHHapticDynamicParameterIDAudioBrightnessControl;
  v11[6] = &unk_28279D7A0;
  v11[7] = &unk_28279D7A0;
  v10[8] = CHHapticDynamicParameterIDAudioPitchControl;
  v10[9] = CHHapticDynamicParameterIDAudioAttackTimeControl;
  v11[8] = &unk_28279D7A0;
  v11[9] = &unk_28279D7A0;
  v10[10] = CHHapticDynamicParameterIDAudioDecayTimeControl;
  v10[11] = CHHapticDynamicParameterIDAudioReleaseTimeControl;
  v11[10] = &unk_28279D7A0;
  v11[11] = &unk_28279D7A0;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:12];
  v5 = [v4 objectForKey:parameterCopy];
  v6 = v5;
  if (v5)
  {
    [v5 floatValue];
    v8 = v7;
  }

  else
  {
    v8 = -999.0;
  }

  return v8;
}

- (float)minimumValueForDynamicParameter:(id)parameter
{
  v11[12] = *MEMORY[0x277D85DE8];
  parameterCopy = parameter;
  v10[0] = CHHapticDynamicParameterIDHapticIntensityControl;
  v10[1] = CHHapticDynamicParameterIDHapticSharpnessControl;
  v11[0] = &unk_28279D7B0;
  v11[1] = &unk_28279D7C0;
  v10[2] = CHHapticDynamicParameterIDHapticAttackTimeControl;
  v10[3] = CHHapticDynamicParameterIDHapticDecayTimeControl;
  v11[2] = &unk_28279D7C0;
  v11[3] = &unk_28279D7C0;
  v10[4] = CHHapticDynamicParameterIDHapticReleaseTimeControl;
  v10[5] = CHHapticDynamicParameterIDAudioVolumeControl;
  v11[4] = &unk_28279D7C0;
  v11[5] = &unk_28279D7B0;
  v10[6] = CHHapticDynamicParameterIDAudioPanControl;
  v10[7] = CHHapticDynamicParameterIDAudioBrightnessControl;
  v11[6] = &unk_28279D7C0;
  v11[7] = &unk_28279D7C0;
  v10[8] = CHHapticDynamicParameterIDAudioPitchControl;
  v10[9] = CHHapticDynamicParameterIDAudioAttackTimeControl;
  v11[8] = &unk_28279D7C0;
  v11[9] = &unk_28279D7C0;
  v10[10] = CHHapticDynamicParameterIDAudioDecayTimeControl;
  v10[11] = CHHapticDynamicParameterIDAudioReleaseTimeControl;
  v11[10] = &unk_28279D7C0;
  v11[11] = &unk_28279D7C0;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:12];
  v5 = [v4 objectForKey:parameterCopy];
  v6 = v5;
  if (v5)
  {
    [v5 floatValue];
    v8 = v7;
  }

  else
  {
    v8 = -999.0;
  }

  return v8;
}

- (float)defaultValueForDynamicParameter:(id)parameter
{
  v11[12] = *MEMORY[0x277D85DE8];
  parameterCopy = parameter;
  v10[0] = CHHapticDynamicParameterIDHapticIntensityControl;
  v10[1] = CHHapticDynamicParameterIDHapticSharpnessControl;
  v11[0] = &unk_28279D7A0;
  v11[1] = &unk_28279D7B0;
  v10[2] = CHHapticDynamicParameterIDHapticAttackTimeControl;
  v10[3] = CHHapticDynamicParameterIDHapticDecayTimeControl;
  v11[2] = &unk_28279D7B0;
  v11[3] = &unk_28279D7B0;
  v10[4] = CHHapticDynamicParameterIDHapticReleaseTimeControl;
  v10[5] = CHHapticDynamicParameterIDAudioVolumeControl;
  v11[4] = &unk_28279D7B0;
  v11[5] = &unk_28279D7A0;
  v10[6] = CHHapticDynamicParameterIDAudioPanControl;
  v10[7] = CHHapticDynamicParameterIDAudioBrightnessControl;
  v11[6] = &unk_28279D7B0;
  v11[7] = &unk_28279D7B0;
  v10[8] = CHHapticDynamicParameterIDAudioPitchControl;
  v10[9] = CHHapticDynamicParameterIDAudioAttackTimeControl;
  v11[8] = &unk_28279D7B0;
  v11[9] = &unk_28279D7B0;
  v10[10] = CHHapticDynamicParameterIDAudioDecayTimeControl;
  v10[11] = CHHapticDynamicParameterIDAudioReleaseTimeControl;
  v11[10] = &unk_28279D7B0;
  v11[11] = &unk_28279D7B0;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:12];
  v5 = [v4 objectForKey:parameterCopy];
  v6 = v5;
  if (v5)
  {
    [v5 floatValue];
    v8 = v7;
  }

  else
  {
    v8 = -999.0;
  }

  return v8;
}

- (id)attributesForEventParameter:(id)parameter eventType:(id)type error:(id *)error
{
  v32 = *MEMORY[0x277D85DE8];
  parameterCopy = parameter;
  typeCopy = type;
  [(CHDefaultHapticDeviceCapability *)self minimumValueForEventParameter:parameterCopy];
  v11 = v10;
  [(CHDefaultHapticDeviceCapability *)self maximumValueForEventParameter:parameterCopy];
  v13 = v12;
  [(CHDefaultHapticDeviceCapability *)self defaultValueForEventParameter:parameterCopy eventType:typeCopy];
  v15 = v14;
  if (v11 != -999.0 && v13 != -999.0 && v14 != -999.0)
  {
    v16 = [CHHapticParameterAttributesImpl alloc];
    *&v17 = v11;
    *&v18 = v13;
    *&v19 = v15;
    v20 = [(CHHapticParameterAttributesImpl *)v16 initWithMinValue:v17 maxValue:v18 defaultValue:v19];
    goto LABEL_15;
  }

  if (!kHAPIScope)
  {
    v21 = MEMORY[0x277D86220];
    v22 = MEMORY[0x277D86220];
    goto LABEL_9;
  }

  v21 = *kHAPIScope;
  if (v21)
  {
LABEL_9:
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v24 = 136315906;
      v25 = "CHDeviceCapability.mm";
      v26 = 1024;
      v27 = 355;
      v28 = 2080;
      v29 = "[CHDefaultHapticDeviceCapability attributesForEventParameter:eventType:error:]";
      v30 = 2112;
      v31 = parameterCopy;
      _os_log_impl(&dword_21569A000, v21, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: In parameter %@ is not a valid CHHapticEventParameter", &v24, 0x26u);
    }
  }

  if (error)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.CoreHaptics" code:-4820 userInfo:0];
    *error = v20 = 0;
  }

  else
  {
    v20 = 0;
  }

LABEL_15:

  return v20;
}

- (id)attributesForDynamicParameter:(id)parameter error:(id *)error
{
  v29 = *MEMORY[0x277D85DE8];
  parameterCopy = parameter;
  [(CHDefaultHapticDeviceCapability *)self minimumValueForDynamicParameter:parameterCopy];
  v8 = v7;
  [(CHDefaultHapticDeviceCapability *)self maximumValueForDynamicParameter:parameterCopy];
  v10 = v9;
  [(CHDefaultHapticDeviceCapability *)self defaultValueForDynamicParameter:parameterCopy];
  v12 = v11;
  if (v8 != -999.0 && v10 != -999.0 && v11 != -999.0)
  {
    v13 = [CHHapticParameterAttributesImpl alloc];
    *&v14 = v8;
    *&v15 = v10;
    *&v16 = v12;
    v17 = [(CHHapticParameterAttributesImpl *)v13 initWithMinValue:v14 maxValue:v15 defaultValue:v16];
    goto LABEL_15;
  }

  if (!kHAPIScope)
  {
    v18 = MEMORY[0x277D86220];
    v19 = MEMORY[0x277D86220];
    goto LABEL_9;
  }

  v18 = *kHAPIScope;
  if (v18)
  {
LABEL_9:
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v21 = 136315906;
      v22 = "CHDeviceCapability.mm";
      v23 = 1024;
      v24 = 370;
      v25 = 2080;
      v26 = "[CHDefaultHapticDeviceCapability attributesForDynamicParameter:error:]";
      v27 = 2112;
      v28 = parameterCopy;
      _os_log_impl(&dword_21569A000, v18, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: In parameter %@ is not a valid CHHapticDynamicParameter", &v21, 0x26u);
    }
  }

  if (error)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.CoreHaptics" code:-4820 userInfo:0];
    *error = v17 = 0;
  }

  else
  {
    v17 = 0;
  }

LABEL_15:

  return v17;
}

@end