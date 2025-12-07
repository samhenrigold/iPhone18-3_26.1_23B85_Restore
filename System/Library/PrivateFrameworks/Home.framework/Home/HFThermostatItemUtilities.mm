@interface HFThermostatItemUtilities
+ (void)getDescription:(id *)description controlDescription:(id *)controlDescription optionalDescriptions:(id *)descriptions forResponse:(id)response primaryService:(id)service temperatureFormatter:(id)formatter;
@end

@implementation HFThermostatItemUtilities

+ (void)getDescription:(id *)description controlDescription:(id *)controlDescription optionalDescriptions:(id *)descriptions forResponse:(id)response primaryService:(id)service temperatureFormatter:(id)formatter
{
  v120[2] = *MEMORY[0x277D85DE8];
  responseCopy = response;
  serviceCopy = service;
  formatterCopy = formatter;
  v113 = 0;
  v114 = &v113;
  v115 = 0x3032000000;
  v116 = __Block_byref_object_copy__15;
  v117 = __Block_byref_object_dispose__15;
  v118 = 0;
  v107 = 0;
  v108 = &v107;
  v109 = 0x3032000000;
  v110 = __Block_byref_object_copy__15;
  v111 = __Block_byref_object_dispose__15;
  v112 = 0;
  v101 = 0;
  v102 = &v101;
  v103 = 0x3032000000;
  v104 = __Block_byref_object_copy__15;
  v105 = __Block_byref_object_dispose__15;
  v106 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __132__HFThermostatItemUtilities_getDescription_controlDescription_optionalDescriptions_forResponse_primaryService_temperatureFormatter___block_invoke;
  aBlock[3] = &unk_277DFBEE0;
  aBlock[4] = &v113;
  aBlock[5] = &v107;
  aBlock[8] = controlDescription;
  aBlock[9] = descriptions;
  aBlock[6] = &v101;
  aBlock[7] = description;
  v16 = _Block_copy(aBlock);
  v17 = [objc_opt_class() currentHeatingCoolingModeValueInResponse:responseCopy];
  v18 = [objc_opt_class() targetHeatingCoolingModeValueInResponse:responseCopy];
  v19 = v18;
  if (v17 && v18)
  {
    v20 = [responseCopy responseForCharacteristicType:*MEMORY[0x277CCF7F0]];
    v98 = [v20 valueWithExpectedClass:objc_opt_class()];

    v21 = [responseCopy responseForCharacteristicType:*MEMORY[0x277CCF8C8]];
    v22 = [v21 valueWithExpectedClass:objc_opt_class()];

    [v22 doubleValue];
    v24 = v23;
    [v98 doubleValue];
    if (v24 > v25)
    {
      v26 = v98;

      v22 = v26;
    }

    hf_childServices = [serviceCopy hf_childServices];
    v97 = [hf_childServices na_firstObjectPassingTest:&__block_literal_global_116];

    if (v97)
    {
      v28 = [responseCopy responseForCharacteristicType:*MEMORY[0x277CCF748] inService:?];
      v95 = [v28 valueWithExpectedClass:objc_opt_class()];
    }

    else
    {
      v95 = 0;
    }

    v29 = [@"HFServiceDescriptionThermostat" mutableCopy];
    if ([v19 integerValue] == 3)
    {
      [v29 appendString:@"Auto"];
      v30 = 2;
      goto LABEL_17;
    }

    integerValue = [v17 integerValue];
    if (integerValue)
    {
      if (integerValue == 1)
      {
        v32 = @"Heating";
        goto LABEL_15;
      }

      if (integerValue == 2)
      {
        v32 = @"Cooling";
LABEL_15:
        [v29 appendString:v32];
LABEL_16:
        v30 = 1;
        goto LABEL_17;
      }

      NSLog(&cfstr_UnexpectedCurr.isa, v17);
    }

    else
    {
      integerValue2 = [v19 integerValue];
      if (integerValue2 > 1)
      {
        if (integerValue2 == 2)
        {
          v32 = @"TargetCooling";
          goto LABEL_15;
        }

        if (integerValue2 == 3)
        {
          goto LABEL_16;
        }
      }

      else
      {
        if (!integerValue2)
        {
          if ([v95 BOOLValue])
          {
            v91 = @"FanOnly";
          }

          else
          {
            v91 = @"Off";
          }

          [v29 appendString:v91];
          v30 = 0;
LABEL_17:
          v33 = [self targetTemperatureValueInResponse:responseCopy];
          v96 = [formatterCopy stringForObjectValue:v33];
          if (v30)
          {
            if (v30 != 1 && v22 && v98)
            {
              [v29 appendString:@"WithTemperatureRange"];
              v56 = [formatterCopy stringForObjectValue:v22];
              v57 = [formatterCopy stringForObjectValue:v98];
              v64 = HFLocalizedStringWithFormat(v29, @"%@%@", v58, v59, v60, v61, v62, v63, v56);
              v65 = v114[5];
              v114[5] = v64;

              v66 = [formatterCopy stringForObjectValue:v22];
              v92 = [formatterCopy stringForObjectValue:v98];
              v73 = HFLocalizedStringWithFormat(@"HFServiceControlDescriptionThermostatAutoWithTemperatureRange", @"%@%@", v67, v68, v69, v70, v71, v72, v66);
              v74 = v108[5];
              v108[5] = v73;

              v119[0] = @"heatingThresholdDescription";
              v44 = [formatterCopy stringForObjectValue:v22];
              v94 = HFLocalizedStringWithFormat(@"HFServiceControlDescriptionThermostatAutoHeatingWithTemperature", @"%@", v75, v76, v77, v78, v79, v80, v44);
              v120[0] = v94;
              v119[1] = @"coolingThresholdDescription";
              v93 = [formatterCopy stringForObjectValue:v98];
              v87 = HFLocalizedStringWithFormat(@"HFServiceControlDescriptionThermostatAutoCoolingWithTemperature", @"%@", v81, v82, v83, v84, v85, v86, v93);
              v120[1] = v87;
              v88 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v120 forKeys:v119 count:2];
              v89 = v102[5];
              v102[5] = v88;
            }

            else
            {
              [v29 appendString:@"WithTemperature"];
              v40 = HFLocalizedStringWithFormat(v29, @"%@", v34, v35, v36, v37, v38, v39, v96);
              v41 = v114[5];
              v114[5] = v40;

              v42 = v108;
              v43 = v114[5];
              v44 = v42[5];
              v42[5] = v43;
            }
          }

          else
          {
            v45 = _HFLocalizedStringWithDefaultValue(v29, v29, 1);
            v46 = v114[5];
            v114[5] = v45;

            v47 = _HFLocalizedStringWithDefaultValue(v29, v29, 1);
            v48 = v108[5];
            v108[5] = v47;

            if (v108[5])
            {
LABEL_38:

              goto LABEL_39;
            }

            if (v33 && v96)
            {
              v55 = HFLocalizedStringWithFormat(@"HFServiceControlDescriptionThermostatOff", @"%@", v49, v50, v51, v52, v53, v54, v96);
            }

            else
            {
              v55 = _HFLocalizedStringWithDefaultValue(@"HFServiceControlDescriptionThermostatOffNoTargetTemperature", @"HFServiceControlDescriptionThermostatOffNoTargetTemperature", 1);
            }

            v44 = v108[5];
            v108[5] = v55;
          }

          goto LABEL_38;
        }

        if (integerValue2 == 1)
        {
          v32 = @"TargetHeating";
          goto LABEL_15;
        }
      }

      NSLog(&cfstr_UnexpectedTarg.isa, v19);
    }

LABEL_39:
  }

  if (v16)
  {
    v16[2](v16);
  }

  _Block_object_dispose(&v101, 8);
  _Block_object_dispose(&v107, 8);

  _Block_object_dispose(&v113, 8);
}

void __132__HFThermostatItemUtilities_getDescription_controlDescription_optionalDescriptions_forResponse_primaryService_temperatureFormatter___block_invoke(uint64_t a1)
{
  if (*(a1 + 56))
  {
    **(a1 + 56) = *(*(*(a1 + 32) + 8) + 40);
  }

  if (*(a1 + 64))
  {
    v2 = *(*(*(a1 + 40) + 8) + 40);
    if (!v2)
    {
      v2 = *(*(*(a1 + 32) + 8) + 40);
    }

    **(a1 + 64) = v2;
  }

  if (*(a1 + 72))
  {
    v3 = *(*(*(a1 + 48) + 8) + 40);
    if (v3)
    {
      **(a1 + 72) = v3;
    }

    else
    {
      v4 = [MEMORY[0x277CBEAC0] dictionary];
      **(a1 + 72) = v4;
    }
  }
}

uint64_t __132__HFThermostatItemUtilities_getDescription_controlDescription_optionalDescriptions_forResponse_primaryService_temperatureFormatter___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 serviceType];
  v3 = [v2 isEqualToString:*MEMORY[0x277CD0F40]];

  return v3;
}

@end