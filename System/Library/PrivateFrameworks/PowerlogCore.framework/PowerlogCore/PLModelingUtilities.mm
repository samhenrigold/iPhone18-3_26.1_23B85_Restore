@interface PLModelingUtilities
+ (BOOL)carrierBuild;
+ (BOOL)hasAOD;
+ (BOOL)internalBuild;
+ (BOOL)isAppleTV;
+ (BOOL)isHeySiriAlwaysOn;
+ (BOOL)isLowPowerModeSupported;
+ (BOOL)isNarrowScreen;
+ (BOOL)isWatch;
+ (BOOL)isiPad;
+ (BOOL)isiPhone;
+ (BOOL)isiPod;
+ (BOOL)supportsPhysicalSim;
+ (BOOL)supportsSlowCharging;
+ (double)defaultBatteryEnergyCapacity;
+ (double)duetDiscretionaryBudget;
+ (id)valueForMobileGestaltCapability:(id)capability;
+ (int)criticalBatteryLevel;
@end

@implementation PLModelingUtilities

+ (double)duetDiscretionaryBudget
{
  if (+[PLModelingUtilities isiPhone])
  {
    return 280.0;
  }

  if (MGIsDeviceOneOfType())
  {
    v3 = 0x4064000000000000;
    return *&v3;
  }

  if (MGIsDeviceOneOfType())
  {
    goto LABEL_6;
  }

  if (MGIsDeviceOneOfType() & 1) != 0 || (MGIsDeviceOneOfType() & 1) != 0 || (MGIsDeviceOneOfType() & 1) != 0 || (MGIsDeviceOneOfType())
  {
    v3 = 0x4054000000000000;
    return *&v3;
  }

  if (MGIsDeviceOneOfType())
  {
LABEL_6:
    v3 = 0x404E000000000000;
    return *&v3;
  }

  if (MGIsDeviceOneOfType())
  {
    return 110.0;
  }

  v2 = 135.0;
  if ((MGIsDeviceOneOfType() & 1) == 0 && (MGIsDeviceOneOfType() & 1) == 0 && (MGIsDeviceOneOfType() & 1) == 0 && (MGIsDeviceOneOfType() & 1) == 0 && (MGIsDeviceOneOfType() & 1) == 0)
  {
    LODWORD(v9) = -1509831889;
    if ((MGIsDeviceOneOfType() & 1) == 0)
    {
      v2 = 210.0;
      if ((MGIsDeviceOneOfType() & 1) == 0 && (MGIsDeviceOneOfType() & 1) == 0)
      {
        v5 = 0.05;
        if ([PLModelingUtilities isiPad:0])
        {
          v6 = 0.01;
        }

        else
        {
          v6 = 0.05;
        }

        v7 = +[PLModelingUtilities isWatch];
        if (!+[PLModelingUtilities isMac]&& !v7)
        {
          v5 = v6;
        }

        +[PLModelingUtilities defaultBatteryEnergyCapacity];
        return v5 * v8;
      }
    }
  }

  return v2;
}

+ (id)valueForMobileGestaltCapability:(id)capability
{
  capabilityCopy = capability;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__PLModelingUtilities_valueForMobileGestaltCapability___block_invoke;
  block[3] = &unk_1E85190B8;
  v10 = capabilityCopy;
  v4 = valueForMobileGestaltCapability__once;
  v5 = capabilityCopy;
  if (v4 != -1)
  {
    dispatch_once(&valueForMobileGestaltCapability__once, block);
  }

  v6 = valueForMobileGestaltCapability__gestaltValue;
  v7 = valueForMobileGestaltCapability__gestaltValue;

  return v6;
}

void __55__PLModelingUtilities_valueForMobileGestaltCapability___block_invoke(uint64_t a1)
{
  v1 = MGCopyAnswerWithError();
  v2 = valueForMobileGestaltCapability__gestaltValue;
  valueForMobileGestaltCapability__gestaltValue = v1;
}

+ (BOOL)isiPad
{
  if (isiPad_once != -1)
  {
    +[PLModelingUtilities isiPad];
  }

  return isiPad_isiPad_0;
}

void __29__PLModelingUtilities_isiPad__block_invoke()
{
  v0 = [PLModelingUtilities valueForMobileGestaltCapability:@"DeviceClass"];
  isiPad_isiPad_0 = [v0 isEqualToString:@"iPad"];
}

+ (BOOL)isiPhone
{
  if (isiPhone_once != -1)
  {
    +[PLModelingUtilities isiPhone];
  }

  return isiPhone_isiPhone_0;
}

void __31__PLModelingUtilities_isiPhone__block_invoke()
{
  v0 = [PLModelingUtilities valueForMobileGestaltCapability:@"DeviceClass"];
  isiPhone_isiPhone_0 = [v0 isEqualToString:@"iPhone"];
}

+ (BOOL)isiPod
{
  if (isiPod_once != -1)
  {
    +[PLModelingUtilities isiPod];
  }

  return isiPod_isiPod_0;
}

void __29__PLModelingUtilities_isiPod__block_invoke()
{
  v0 = [PLModelingUtilities valueForMobileGestaltCapability:@"DeviceClass"];
  isiPod_isiPod_0 = [v0 isEqualToString:@"iPod"];
}

+ (BOOL)isWatch
{
  if (isWatch_once != -1)
  {
    +[PLModelingUtilities isWatch];
  }

  return isWatch_isWatch_0;
}

void __30__PLModelingUtilities_isWatch__block_invoke()
{
  v0 = [PLModelingUtilities valueForMobileGestaltCapability:@"DeviceClass"];
  isWatch_isWatch_0 = [v0 isEqualToString:@"Watch"];
}

+ (BOOL)isAppleTV
{
  if (isAppleTV_once != -1)
  {
    +[PLModelingUtilities isAppleTV];
  }

  return isAppleTV_isAppleTV_0;
}

void __32__PLModelingUtilities_isAppleTV__block_invoke()
{
  v0 = [PLModelingUtilities valueForMobileGestaltCapability:@"DeviceClass"];
  isAppleTV_isAppleTV_0 = [v0 isEqualToString:@"AppleTV"];
}

+ (double)defaultBatteryEnergyCapacity
{
  if (MGIsDeviceOneOfType())
  {
    return 7449.0;
  }

  if (MGIsDeviceOneOfType())
  {
    return 11080.0;
  }

  if (MGIsDeviceOneOfType())
  {
    return 6176.0;
  }

  if (MGIsDeviceOneOfType())
  {
    return 10480.0;
  }

  if (MGIsDeviceOneOfType())
  {
    return 6484.0;
  }

  if (MGIsDeviceOneOfType())
  {
    return 11100.0;
  }

  if (MGIsDeviceOneOfType())
  {
    return 6870.0;
  }

  if (MGIsDeviceOneOfType())
  {
    return 5608.6;
  }

  if (MGIsDeviceOneOfType())
  {
    return 5427.2;
  }

  if (MGIsDeviceOneOfType())
  {
    return 5173.9;
  }

  if (MGIsDeviceOneOfType())
  {
    return 26700.0;
  }

  if (MGIsDeviceOneOfType())
  {
    return 38500.0;
  }

  if (MGIsDeviceOneOfType())
  {
    return 19120.0;
  }

  if (MGIsDeviceOneOfType())
  {
    return 23120.0;
  }

  if (MGIsDeviceOneOfType())
  {
    return 27900.0;
  }

  if (MGIsDeviceOneOfType())
  {
    return 31590.0;
  }

  if (MGIsDeviceOneOfType())
  {
    return 42500.0;
  }

  if (MGIsDeviceOneOfType())
  {
    return 31590.0;
  }

  v3 = 28570.0;
  if (MGIsDeviceOneOfType())
  {
    return v3;
  }

  if (MGIsDeviceOneOfType())
  {
    return 36210.0;
  }

  if (MGIsDeviceOneOfType())
  {
    return 28370.0;
  }

  if (MGIsDeviceOneOfType())
  {
    return 36636.0;
  }

  v4 = 19020.0;
  if (MGIsDeviceOneOfType())
  {
    return v4;
  }

  if (MGIsDeviceOneOfType())
  {
    return 29620.0;
  }

  v5 = MGIsDeviceOneOfType();
  result = 31590.0;
  if ((v5 & 1) == 0)
  {
    v6 = MGIsDeviceOneOfType();
    result = 28570.0;
    if ((v6 & 1) == 0)
    {
      v3 = 28650.0;
      if (MGIsDeviceOneOfType())
      {
        return v3;
      }

      if (MGIsDeviceOneOfType())
      {
        return 28760.0;
      }

      if (MGIsDeviceOneOfType())
      {
        return 41160.0;
      }

      v7 = MGIsDeviceOneOfType();
      result = 28650.0;
      if ((v7 & 1) == 0)
      {
        v8 = MGIsDeviceOneOfType();
        result = 19020.0;
        if ((v8 & 1) == 0)
        {
          if (MGIsDeviceOneOfType())
          {
            return 28990.0;
          }

          if (MGIsDeviceOneOfType())
          {
            return 36730.0;
          }

          if (MGIsDeviceOneOfType())
          {
            return 31290.0;
          }

          if (MGIsDeviceOneOfType())
          {
            return 38990.0;
          }

          if (MGIsDeviceOneOfType())
          {
            return 3975.0;
          }

          if (MGIsDeviceOneOfType())
          {
            return 10030.0;
          }

          if (MGIsDeviceOneOfType())
          {
            return 12060.0;
          }

          if (MGIsDeviceOneOfType())
          {
            return 11160.0;
          }

          if (MGIsDeviceOneOfType())
          {
            return 11920.0;
          }

          if (MGIsDeviceOneOfType())
          {
            return 11750.0;
          }

          if (MGIsDeviceOneOfType())
          {
            return 15100.0;
          }

          if (MGIsDeviceOneOfType())
          {
            return 6960.0;
          }

          if (MGIsDeviceOneOfType())
          {
            return 8670.0;
          }

          v4 = 10960.0;
          if (MGIsDeviceOneOfType())
          {
            return v4;
          }

          v9 = MGIsDeviceOneOfType();
          result = 10960.0;
          if (v9)
          {
            return result;
          }

          if (MGIsDeviceOneOfType())
          {
            return 14620.0;
          }

          if (MGIsDeviceOneOfType())
          {
            return 12129.0;
          }

          if (MGIsDeviceOneOfType())
          {
            return 17024.0;
          }

          if (MGIsDeviceOneOfType())
          {
            return 9467.0;
          }

          if (MGIsDeviceOneOfType())
          {
            return 12563.0;
          }

          if (MGIsDeviceOneOfType())
          {
            return 7909.0;
          }

          if (MGIsDeviceOneOfType())
          {
            return 12823.0;
          }

          if (MGIsDeviceOneOfType())
          {
            return 16872.0;
          }

          if (MGIsDeviceOneOfType())
          {
            return 12449.0;
          }

          if (MGIsDeviceOneOfType())
          {
            return 17070.0;
          }

          if (MGIsDeviceOneOfType())
          {
            return 12872.0;
          }

          if (MGIsDeviceOneOfType())
          {
            return 17305.0;
          }

          if (MGIsDeviceOneOfType())
          {
            return 13162.0;
          }

          if (MGIsDeviceOneOfType())
          {
            return 17181.0;
          }

          v4 = 14052.0;
          if (MGIsDeviceOneOfType())
          {
            return v4;
          }

          if (MGIsDeviceOneOfType())
          {
            return 18260.0;
          }

          if (MGIsDeviceOneOfType())
          {
            return 14006.0;
          }

          if (MGIsDeviceOneOfType())
          {
            return 18089.0;
          }

          v3 = 15752.0;
          if ((MGIsDeviceOneOfType() & 1) == 0)
          {
            v10 = MGIsDeviceOneOfType();
            result = 15752.0;
            if ((v10 & 1) == 0)
            {
              v11 = MGIsDeviceOneOfType();
              result = 14052.0;
              if ((v11 & 1) == 0)
              {
                if (MGIsDeviceOneOfType())
                {
                  v12 = ![PLModelingUtilities supportsPhysicalSim:0];
                  result = 16773.0;
                  v13 = 15735.0;
                }

                else if (MGIsDeviceOneOfType())
                {
                  v12 = ![PLModelingUtilities supportsPhysicalSim:0];
                  result = 20032.0;
                  v13 = 18994.0;
                }

                else
                {
                  v12 = ![PLModelingUtilities isiPad:0];
                  result = 7000.0;
                  v13 = 19120.0;
                }

                if (!v12)
                {
                  return v13;
                }
              }
            }

            return result;
          }

          return v3;
        }
      }
    }
  }

  return result;
}

+ (BOOL)internalBuild
{
  if (internalBuild_onceToken_0 != -1)
  {
    +[PLModelingUtilities internalBuild];
  }

  return internalBuild_result_0;
}

uint64_t __36__PLModelingUtilities_internalBuild__block_invoke()
{
  result = os_variant_has_internal_diagnostics();
  internalBuild_result_0 = result;
  return result;
}

+ (BOOL)carrierBuild
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__PLModelingUtilities_carrierBuild__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (carrierBuild_onceToken_0 != -1)
  {
    dispatch_once(&carrierBuild_onceToken_0, block);
  }

  return carrierBuild_carrierBuild_0;
}

void __35__PLModelingUtilities_carrierBuild__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) internalBuild])
  {
    carrierBuild_carrierBuild_0 = 0;
  }

  else
  {
    v1 = MGCopyAnswer();
    carrierBuild_carrierBuild_0 = CFBooleanGetValue(v1) != 0;

    CFRelease(v1);
  }
}

+ (int)criticalBatteryLevel
{
  if (+[PLModelingUtilities isiPad])
  {
    return 10;
  }

  else
  {
    return 20;
  }
}

+ (BOOL)isLowPowerModeSupported
{
  if (isLowPowerModeSupported_onceToken != -1)
  {
    +[PLModelingUtilities isLowPowerModeSupported];
  }

  return isLowPowerModeSupported__retValue;
}

void __46__PLModelingUtilities_isLowPowerModeSupported__block_invoke()
{
  v0 = MGCopyAnswer();
  v1 = v0;
  if (!v0)
  {
    isLowPowerModeSupported__retValue = 0;
  }

  isLowPowerModeSupported__retValue = CFStringCompare(v0, @"iPhone", 0) == kCFCompareEqualTo;
  if (_os_feature_enabled_impl())
  {
    v2 = +[PLModelingUtilities isiPad](PLModelingUtilities, "isiPad") || +[PLModelingUtilities isiPod];
    isLowPowerModeSupported__retValue |= v2;
  }

  CFRelease(v1);
}

+ (BOOL)isNarrowScreen
{
  if (isNarrowScreen_onceToken != -1)
  {
    +[PLModelingUtilities isNarrowScreen];
  }

  return isNarrowScreen__retValue;
}

uint64_t __37__PLModelingUtilities_isNarrowScreen__block_invoke()
{
  result = MGIsDeviceOneOfType();
  if (result)
  {
    isNarrowScreen__retValue = 1;
  }

  return result;
}

+ (BOOL)isHeySiriAlwaysOn
{
  if (isHeySiriAlwaysOn_onceToken != -1)
  {
    +[PLModelingUtilities isHeySiriAlwaysOn];
  }

  return isHeySiriAlwaysOn__retValue;
}

uint64_t __40__PLModelingUtilities_isHeySiriAlwaysOn__block_invoke()
{
  result = MGGetBoolAnswer();
  isHeySiriAlwaysOn__retValue = result;
  return result;
}

+ (BOOL)hasAOD
{
  if (hasAOD_onceToken_0 != -1)
  {
    +[PLModelingUtilities hasAOD];
  }

  return hasAOD_result_0;
}

uint64_t __29__PLModelingUtilities_hasAOD__block_invoke()
{
  result = +[PLModelingUtilities isiPhone];
  if (result)
  {
    result = MGGetBoolAnswer();
  }

  hasAOD_result_0 = result;
  return result;
}

+ (BOOL)supportsSlowCharging
{
  if (_os_feature_enabled_impl())
  {
    +[PLModelingUtilities isWatch];
  }

  return 1;
}

+ (BOOL)supportsPhysicalSim
{
  if (supportsPhysicalSim_onceToken != -1)
  {
    +[PLModelingUtilities supportsPhysicalSim];
  }

  return supportsPhysicalSim_ret;
}

void __42__PLModelingUtilities_supportsPhysicalSim__block_invoke()
{
  v0 = MGCopyAnswer();
  supportsPhysicalSim_ret = [v0 BOOLValue] ^ 1;
}

@end