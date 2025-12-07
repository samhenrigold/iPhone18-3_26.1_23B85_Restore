@interface SBProximityBacklightPolicyFactory
+ (id)createNewProximityBacklightPolicyWithBacklightController:(id)controller sensorModeController:(id)modeController;
@end

@implementation SBProximityBacklightPolicyFactory

+ (id)createNewProximityBacklightPolicyWithBacklightController:(id)controller sensorModeController:(id)modeController
{
  modeControllerCopy = modeController;
  controllerCopy = controller;
  v7 = objc_alloc_init(SBProximityBacklightPolicyConfiguration);
  [(SBProximityBacklightPolicyConfiguration *)v7 setBacklightController:controllerCopy];

  [(SBProximityBacklightPolicyConfiguration *)v7 setSensorModeController:modeControllerCopy];
  v8 = +[SBProximityDomain rootSettings];
  [(SBProximityBacklightPolicyConfiguration *)v7 setProximitySettings:v8];

  v9 = SBUIIsSystemApertureEnabled();
  if (v9)
  {
    v10 = SBLogProximitySensor(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEFAULT, "Using SBSystemApertureProximityBacklightPolicy.", buf, 2u);
    }

    v11 = off_2783A2488;
    goto LABEL_19;
  }

  if (!__sb__runningInSpringBoard())
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice userInterfaceIdiom])
    {
    }

    else
    {
      v14 = SBFEffectiveHomeButtonType();

      if (v14 == 2)
      {
        goto LABEL_13;
      }
    }

LABEL_16:
    v10 = SBLogProximitySensor(v12);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v17 = 0;
      _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEFAULT, "Using SBDefaultProximityBacklightPolicy.", v17, 2u);
    }

    v11 = off_27839F8B8;
    goto LABEL_19;
  }

  if (SBFEffectiveDeviceClass())
  {
    v12 = SBFEffectiveDeviceClass();
    if (v12 != 1)
    {
      goto LABEL_16;
    }
  }

  v12 = SBFEffectiveHomeButtonType();
  if (v12 != 2)
  {
    goto LABEL_16;
  }

LABEL_13:
  v10 = SBLogProximitySensor(v12);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *v18 = 0;
    _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEFAULT, "Using SBNotchedStatusBarProximityBacklightPolicy.", v18, 2u);
  }

  v11 = off_2783A0F38;
LABEL_19:

  v15 = [objc_alloc(*v11) initWithConfiguration:v7];

  return v15;
}

@end