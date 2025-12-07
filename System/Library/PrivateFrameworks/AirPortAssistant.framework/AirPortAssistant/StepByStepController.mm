@interface StepByStepController
+ (id)stepByStepController;
- (StepByStepController)init;
- (int)cancelStepByStep;
- (int)resume;
- (int)setupFromAutoguessRecommendation:(id)recommendation withOptions:(id)options;
- (int)subclassAssistantCallback:(AssistantCallbackContext *)callback;
- (void)dealloc;
- (void)stepByStepNextStepResult:(int)result withOptions:(id)options;
@end

@implementation StepByStepController

- (StepByStepController)init
{
  v10.receiver = self;
  v10.super_class = StepByStepController;
  v2 = [(AssistantCallbackController *)&v10 init];
  v3 = v2;
  if (v2)
  {
    sub_23EBD5950(v2 + 4);
    sub_23EBD879C(*(v3 + 32), sub_23EB8891C, v3);
    v4 = *(v3 + 32);
    v8 = objc_msgSend_assistantCallback(v3, v5, v6, v7);
    sub_23EBD884C(v4, v8, v3);
  }

  return v3;
}

- (void)dealloc
{
  objc_msgSend_setRestoreRecommendation_(self, a2, 0, v2);
  sub_23EBD5A9C(self->_stepByStepContext);
  v4.receiver = self;
  v4.super_class = StepByStepController;
  [(AssistantCallbackController *)&v4 dealloc];
}

- (int)subclassAssistantCallback:(AssistantCallbackContext *)callback
{
  v15 = 0;
  v16 = 0;
  if (!callback)
  {
    goto LABEL_18;
  }

  sub_23EBEB494(callback, @"kBSAssistantCallbackKey_SBS_SBSStep", &v16);
  if (v5)
  {
LABEL_3:
    v9 = v5;
LABEL_19:
    sub_23EBEB6CC(callback, v9);
    return v9;
  }

  if (!v16)
  {
    goto LABEL_21;
  }

  v10 = objc_msgSend_integerValue(v16, v6, v7, v8);
  v11 = v10;
  if (v10 != 117)
  {
    if ((v10 - 1) <= 0xF)
    {
      sub_23EBEB494(callback, @"kBSAssistantCallbackKey_SBS_SBSParamDict", &v15);
      if (v5)
      {
        goto LABEL_3;
      }

      v12 = v15;
      if (v15)
      {
        if (dword_27E381A10 > 100)
        {
          goto LABEL_16;
        }

        if (dword_27E381A10 == -1)
        {
          if (!sub_23EB74AC8(&dword_27E381A10, 0x64u))
          {
            goto LABEL_16;
          }

          v12 = v15;
        }

        sub_23EB75374(&dword_27E381A10, "[StepByStepController subclassAssistantCallback:]", 100, "step: %d paramDict: %@\n", v11, v12);
LABEL_16:
        if (self->super._callbackContext)
        {
          v9 = -6721;
        }

        else
        {
          if (self->_delegate && (objc_opt_respondsToSelector() & 1) != 0)
          {
            self->super._callbackContext = callback;
            objc_msgSend_stepByStepNextStep_paramDict_(self->_delegate, v14, v11, v15);
            return 0;
          }

          v9 = -6718;
        }

        goto LABEL_19;
      }

LABEL_21:
      v9 = -6728;
      goto LABEL_19;
    }

LABEL_18:
    v9 = -6705;
    goto LABEL_19;
  }

  if (!self->super._callbackContext)
  {
    v9 = -6709;
    goto LABEL_19;
  }

  v9 = 0;
  self->super._callbackContext = 0;
  return v9;
}

+ (id)stepByStepController
{
  v2 = objc_alloc_init(StepByStepController);

  return v2;
}

- (int)cancelStepByStep
{
  stepByStepContext = self->_stepByStepContext;
  if (!stepByStepContext)
  {
    return -6705;
  }

  result = sub_23EBD5BC8(stepByStepContext);
  if (result == -6771)
  {
    v5 = 0;
  }

  else
  {
    v5 = result;
  }

  if (v5 == -6720)
  {
    return -6720;
  }

  if (!v5)
  {
    result = 0;
    self->super._callbackContext = 0;
  }

  return result;
}

- (int)resume
{
  stepByStepContext = self->_stepByStepContext;
  if (stepByStepContext)
  {
    return sub_23EBD5C5C(stepByStepContext);
  }

  else
  {
    return -6705;
  }
}

- (void)stepByStepNextStepResult:(int)result withOptions:(id)options
{
  callbackContext = self->super._callbackContext;
  if (callbackContext)
  {
    if (!options || (resultCopy = sub_23EBEB5E8(callbackContext, @"kBSAssistantCallbackKey_SBS_SBSOptionsDict", options, options, v4, v5, v6, v7)) == 0)
    {
      resultCopy = result;
    }

    v12 = self->super._callbackContext;
    if (v12)
    {
      sub_23EBEB6CC(v12, resultCopy);
    }
  }

  self->super._callbackContext = 0;
}

- (int)setupFromAutoguessRecommendation:(id)recommendation withOptions:(id)options
{
  if (dword_27E381A10 <= 100 && (dword_27E381A10 != -1 || sub_23EB74AC8(&dword_27E381A10, 0x64u)))
  {
    sub_23EB75374(&dword_27E381A10, "[StepByStepController setupFromAutoguessRecommendation:withOptions:]", 100, "\n");
  }

  if (!self->_stepByStepContext)
  {
    return -6718;
  }

  if (!recommendation)
  {
    return -6705;
  }

  v6 = objc_msgSend_objectForKey_(recommendation, a2, @"BSAutoGuess_UnconfiguredBase", options);
  if (!v6)
  {
    return -6727;
  }

  v9 = v6;
  v10 = objc_msgSend_objectForKey_(recommendation, v7, @"BSAutoGuess_UnconfiguredBaseSettings", v8);
  if (!v10)
  {
    return -6727;
  }

  v13 = v10;
  v14 = objc_msgSend_objectForKey_(recommendation, v11, @"BSAutoGuess_Recommendation", v12);
  if (!v14)
  {
    return -6727;
  }

  result = sub_23EBD88FC(self->_stepByStepContext, v14);
  if (!result)
  {
    restoreRecommendation = self->_restoreRecommendation;
    if (!restoreRecommendation || (result = sub_23EBD8954(self->_stepByStepContext, restoreRecommendation)) == 0)
    {
      v19 = objc_msgSend_sharedInstance(WiFiUtils, restoreRecommendation, v16, v17);
      v23 = objc_msgSend_mergedScanInfoArray(v19, v20, v21, v22);
      if (!v23 || (result = sub_23EBD89AC(self->_stepByStepContext, v23, 1)) == 0)
      {
        result = sub_23EBD8BAC(self->_stepByStepContext, v9, v13);
        if (!result)
        {
          stepByStepContext = self->_stepByStepContext;

          return sub_23EBD8D8C(stepByStepContext);
        }
      }
    }
  }

  return result;
}

@end