@interface StepByStepUtilities
+ (id)findSourceBaseByName:(id)name fromParamDict:(id)dict;
+ (id)findSourceBaseByRadioName:(id)name fromParamDict:(id)dict;
+ (id)findSourceConfigByName:(id)name fromParamDict:(id)dict;
+ (id)findSourceNetworkByName:(id)name fromParamDict:(id)dict;
+ (id)getProductLocalizedStringWithFormat:(id)format fromParamDict:(id)dict;
+ (id)nameForNetworkOrDevice:(id)device;
+ (id)productIDForNetworkOrDevice:(id)device;
+ (id)selectorChoiceToReplaceOption:(int)option;
+ (int)getDeviceKindFromParamDict:(id)dict;
+ (int)matrixTagToSelectorChoice:(int64_t)choice;
+ (int64_t)autoGuessRecommendationToMatrixTag:(id)tag;
+ (int64_t)selectorChoiceToMatrixTag:(int)tag;
+ (unsigned)getProductIDFromParamDict:(id)dict;
+ (void)formatRecommendation:(id)recommendation fromParamDict:(id)dict forStep:(int)step restoreString:(id *)string restoreSpecificString:(id *)specificString dontRecommendString:(id *)recommendString;
@end

@implementation StepByStepUtilities

+ (unsigned)getProductIDFromParamDict:(id)dict
{
  v5 = objc_msgSend_objectForKey_(dict, a2, @"kSBSKey_TargetBase", v3);
  if (v5)
  {

    return sub_23EB6A2C0(v5);
  }

  else
  {
    v10 = objc_msgSend_objectForKey_(dict, v6, @"kSBSKey_TargetNetwork", v7);

    return objc_msgSend_scanInfoAppleProductID_(WiFiUtils, v9, v10, v11);
  }
}

+ (int)getDeviceKindFromParamDict:(id)dict
{
  v5 = objc_msgSend_objectForKey_(dict, a2, @"kSBSKey_TargetBase", v3);
  if (v5)
  {

    return sub_23EB6A294(v5);
  }

  else
  {
    v10 = objc_msgSend_objectForKey_(dict, v6, @"kSBSKey_TargetNetwork", v7);

    return objc_msgSend_scanInfoDeviceKind_(WiFiUtils, v9, v10, v11);
  }
}

+ (id)getProductLocalizedStringWithFormat:(id)format fromParamDict:(id)dict
{
  v7 = MEMORY[0x277CCACA8];
  ProductIDFromParamDict = objc_msgSend_getProductIDFromParamDict_(self, a2, dict, dict);
  DeviceKindFromParamDict = objc_msgSend_getDeviceKindFromParamDict_(self, v9, dict, v10);
  v12 = sub_23EB6CE6C(ProductIDFromParamDict, DeviceKindFromParamDict);
  valid = objc_msgSend_stringWithValidatedFormat_validFormatSpecifiers_error_(v7, v13, format, @"%@", 0, v12);
  if (!valid)
  {
    return &stru_285145FE8;
  }

  v15 = qword_27E383800;

  return sub_23EB6CD3C(valid, v15);
}

+ (id)findSourceBaseByName:(id)name fromParamDict:(id)dict
{
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = objc_msgSend_objectForKey_(dict, a2, @"kSBSKey_BrowseRecordList", dict, 0);
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v18, v22, 16);
  if (!v7)
  {
    return 0;
  }

  v10 = v7;
  v11 = *v19;
LABEL_3:
  v12 = 0;
  while (1)
  {
    if (*v19 != v11)
    {
      objc_enumerationMutation(v5);
    }

    v13 = *(*(&v18 + 1) + 8 * v12);
    v14 = objc_msgSend_objectForKey_(v13, v8, @"name", v9);
    if (objc_msgSend_isEqualToString_(v14, v15, name, v16))
    {
      return v13;
    }

    if (v10 == ++v12)
    {
      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v8, &v18, v22, 16);
      if (v10)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

+ (id)findSourceBaseByRadioName:(id)name fromParamDict:(id)dict
{
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = objc_msgSend_objectForKey_(dict, a2, @"kSBSKey_BrowseRecordList", dict, 0);
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v18, v22, 16);
  if (!v7)
  {
    return 0;
  }

  v10 = v7;
  v11 = *v19;
LABEL_3:
  v12 = 0;
  while (1)
  {
    if (*v19 != v11)
    {
      objc_enumerationMutation(v5);
    }

    v13 = *(*(&v18 + 1) + 8 * v12);
    v14 = objc_msgSend_objectForKey_(v13, v8, @"name", v9);
    if (objc_msgSend_isEqualToString_(v14, v15, name, v16))
    {
      return v13;
    }

    if (v10 == ++v12)
    {
      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v8, &v18, v22, 16);
      if (v10)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

+ (id)findSourceNetworkByName:(id)name fromParamDict:(id)dict
{
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = objc_msgSend_objectForKey_(dict, a2, @"kSBSKey_NetworkScanRecordList", dict, 0);
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v18, v22, 16);
  if (!v7)
  {
    return 0;
  }

  v10 = v7;
  v11 = *v19;
LABEL_3:
  v12 = 0;
  while (1)
  {
    if (*v19 != v11)
    {
      objc_enumerationMutation(v5);
    }

    v13 = *(*(&v18 + 1) + 8 * v12);
    v14 = objc_msgSend_objectForKey_(v13, v8, @"SSID_STR", v9);
    if (objc_msgSend_isEqualToString_(v14, v15, name, v16))
    {
      return v13;
    }

    if (v10 == ++v12)
    {
      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v8, &v18, v22, 16);
      if (v10)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

+ (id)findSourceConfigByName:(id)name fromParamDict:(id)dict
{
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = objc_msgSend_objectForKey_(dict, a2, @"kSBSKey_PreviousConfigurationList", dict, 0);
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v18, v22, 16);
  if (!v7)
  {
    return 0;
  }

  v10 = v7;
  v11 = *v19;
LABEL_3:
  v12 = 0;
  while (1)
  {
    if (*v19 != v11)
    {
      objc_enumerationMutation(v5);
    }

    v13 = *(*(&v18 + 1) + 8 * v12);
    v14 = objc_msgSend_objectForKey_(v13, v8, @"device", v9);
    if (objc_msgSend_isEqualToString_(v14, v15, name, v16))
    {
      return v13;
    }

    if (v10 == ++v12)
    {
      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v8, &v18, v22, 16);
      if (v10)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

+ (id)selectorChoiceToReplaceOption:(int)option
{
  if ((option - 311) > 3)
  {
    return @"Restore";
  }

  else
  {
    return off_278C692D8[option - 311];
  }
}

+ (int64_t)selectorChoiceToMatrixTag:(int)tag
{
  v3 = 1131570529;
  if (tag == 200)
  {
    v3 = 1165522021;
  }

  if (tag == 300)
  {
    v3 = 1382379628;
  }

  if (tag == 400)
  {
    return 1382380404;
  }

  else
  {
    return v3;
  }
}

+ (int)matrixTagToSelectorChoice:(int64_t)choice
{
  if (choice == 1165522021)
  {
    v3 = 200;
  }

  else
  {
    v3 = 100;
  }

  if (choice == 1382379628)
  {
    v3 = 300;
  }

  if (choice == 1382380404)
  {
    return 400;
  }

  else
  {
    return v3;
  }
}

+ (int64_t)autoGuessRecommendationToMatrixTag:(id)tag
{
  if (objc_msgSend_isEqualToString_(tag, a2, @"BSSetupRecommend_OfferCreate", v3))
  {
    return 1131570529;
  }

  v7 = 1165522021;
  if ((objc_msgSend_isEqualToString_(tag, v5, @"BSSetupRecommend_OfferExtendOverEthernet", v6) & 1) == 0 && (objc_msgSend_isEqualToString_(tag, v8, @"BSSetupRecommend_OfferExtendWirelessly", v9) & 1) == 0 && (objc_msgSend_isEqualToString_(tag, v10, @"BSSetupRecommend_OfferJoinNetwork", v11) & 1) == 0 && (objc_msgSend_isEqualToString_(tag, v12, @"BSSetupRecommend_AskUserChooseBaseWired", v13) & 1) == 0 && (objc_msgSend_isEqualToString_(tag, v14, @"BSSetupRecommend_AskUserChooseBaseWireless", v15) & 1) == 0 && (objc_msgSend_isEqualToString_(tag, v16, @"BSSetupRecommend_AskUserChooseNetworkToJoin", v17) & 1) == 0)
  {
    if (objc_msgSend_isEqualToString_(tag, v18, @"BSSetupRecommend_OfferReplace", v19))
    {
      return 1382379628;
    }

    v7 = 1131570529;
    if (objc_msgSend_isEqualToString_(tag, v20, @"BSSetupRecommend_OfferReplaceConfiguration", v21))
    {
      return 1382379628;
    }
  }

  return v7;
}

+ (void)formatRecommendation:(id)recommendation fromParamDict:(id)dict forStep:(int)step restoreString:(id *)string restoreSpecificString:(id *)specificString dontRecommendString:(id *)recommendString
{
  recommendationCopy = recommendation;
  if (recommendation || (v14 = objc_msgSend_objectForKey_(dict, a2, @"kSBSKey_RestoreRecommendation", dict), (recommendationCopy = v14) != 0))
  {
    recommendStringCopy = recommendString;
    v15 = objc_msgSend_objectForKey_(recommendationCopy, a2, @"BSAutoGuess_Recommendation", dict);
    v18 = objc_msgSend_objectForKey_(recommendationCopy, v16, @"BSAutoGuess_RestoreData", v17);
    v21 = objc_msgSend_objectForKey_(recommendationCopy, v19, @"BSAutoGuess_RestoreNetworkMode", v20);
    v25 = objc_msgSend_integerValue(v21, v22, v23, v24);
    isEqualToString = objc_msgSend_isEqualToString_(v15, v26, @"BSSetupRecommend_OfferRestore", v27);
    valid = 0;
    if (v25 <= 2)
    {
      if (!v25)
      {
        if (objc_msgSend_length(v18, v28, v29, v30))
        {
          if (step == 16)
          {
            ProductLocalizedStringWithFormat_fromParamDict = objc_msgSend_getProductLocalizedStringWithFormat_fromParamDict_(StepByStepUtilities, v48, @"WillRestoreToCreateNetworkSpecific%@", dict);
          }

          else
          {
            ProductLocalizedStringWithFormat_fromParamDict = objc_msgSend_getProductLocalizedStringWithFormat_fromParamDict_(StepByStepUtilities, v48, @"CanRestoreToCreateNetworkSpecific%@", dict);
          }

          v50 = sub_23EB6CD3C(ProductLocalizedStringWithFormat_fromParamDict, qword_27E383800);
          valid = objc_msgSend_stringWithValidatedFormat_validFormatSpecifiers_error_(MEMORY[0x277CCACA8], v51, v50, @"%@", 0, v18);
        }

        else
        {
          valid = 0;
        }

        v54 = objc_msgSend_getProductLocalizedStringWithFormat_fromParamDict_(StepByStepUtilities, v48, @"CanRestoreToCreateNetwork%@", dict);
        goto LABEL_49;
      }

      v33 = 0;
      if (v25 != 1)
      {
        goto LABEL_50;
      }

      if (objc_msgSend_length(v18, v28, v29, v30))
      {
        if (step == 16)
        {
          v38 = objc_msgSend_getProductLocalizedStringWithFormat_fromParamDict_(StepByStepUtilities, v34, @"WillRestoreToJoinNetworkSpecific%@", dict);
        }

        else
        {
          v38 = objc_msgSend_getProductLocalizedStringWithFormat_fromParamDict_(StepByStepUtilities, v34, @"CanRestoreToJoinNetworkSpecific%@", dict);
        }

        v39 = sub_23EB6CD3C(v38, qword_27E383800);
        valid = objc_msgSend_stringWithValidatedFormat_validFormatSpecifiers_error_(MEMORY[0x277CCACA8], v40, v39, @"%@", 0, v18);
      }

      else
      {
        valid = 0;
      }

      v52 = @"CanRestoreToJoinNetwork%@";
      v53 = @"WillRestoreToJoinNetwork%@";
    }

    else if (v25 == 3)
    {
      if (objc_msgSend_length(v18, v28, v29, v30))
      {
        if (step == 16)
        {
          v41 = objc_msgSend_getProductLocalizedStringWithFormat_fromParamDict_(StepByStepUtilities, v34, @"WillRestoreToWirelessDisabledSpecific%@", dict);
        }

        else
        {
          v41 = objc_msgSend_getProductLocalizedStringWithFormat_fromParamDict_(StepByStepUtilities, v34, @"CanRestoreToWirelessDisabledSpecific%@", dict);
        }

        v42 = sub_23EB6CD3C(v41, qword_27E383800);
        valid = objc_msgSend_stringWithValidatedFormat_validFormatSpecifiers_error_(MEMORY[0x277CCACA8], v43, v42, @"%@", 0, v18);
      }

      else
      {
        valid = 0;
      }

      v52 = @"CanRestoreToWirelessDisabled%@";
      v53 = @"WillRestoreToWirelessDisabled%@";
    }

    else
    {
      if (v25 == 10)
      {
        if (objc_msgSend_length(v18, v28, v29, v30))
        {
          if (step == 16)
          {
            v45 = objc_msgSend_getProductLocalizedStringWithFormat_fromParamDict_(StepByStepUtilities, v44, @"WillRestoreToExtendNetworkSpecific%@", dict);
          }

          else
          {
            v45 = objc_msgSend_getProductLocalizedStringWithFormat_fromParamDict_(StepByStepUtilities, v44, @"CanRestoreToExtendNetworkSpecific%@", dict);
          }

          v46 = sub_23EB6CD3C(v45, qword_27E383800);
          valid = objc_msgSend_stringWithValidatedFormat_validFormatSpecifiers_error_(MEMORY[0x277CCACA8], v47, v46, @"%@", 0, v18);
        }

        else
        {
          valid = 0;
        }

        v54 = objc_msgSend_getProductLocalizedStringWithFormat_fromParamDict_(StepByStepUtilities, v44, @"CanRestoreToExtendNetwork%@", dict);
        goto LABEL_49;
      }

      v33 = 0;
      if (v25 != 20)
      {
        goto LABEL_50;
      }

      if (objc_msgSend_length(v18, v28, v29, v30))
      {
        if (step == 16)
        {
          v35 = objc_msgSend_getProductLocalizedStringWithFormat_fromParamDict_(StepByStepUtilities, v34, @"WillRestoreToExtendNetworkSpecific%@", dict);
        }

        else
        {
          v35 = objc_msgSend_getProductLocalizedStringWithFormat_fromParamDict_(StepByStepUtilities, v34, @"CanRestoreToExtendNetworkSpecific%@", dict);
        }

        v36 = sub_23EB6CD3C(v35, qword_27E383800);
        valid = objc_msgSend_stringWithValidatedFormat_validFormatSpecifiers_error_(MEMORY[0x277CCACA8], v37, v36, @"%@", 0, v18);
      }

      else
      {
        valid = 0;
      }

      v52 = @"CanRestoreToExtendNetwork%@";
      v53 = @"WillRestoreToExtendNetwork%@";
    }

    if (step == 16)
    {
      v54 = objc_msgSend_getProductLocalizedStringWithFormat_fromParamDict_(StepByStepUtilities, v34, v53, dict);
    }

    else
    {
      v54 = objc_msgSend_getProductLocalizedStringWithFormat_fromParamDict_(StepByStepUtilities, v34, v52, dict);
    }

LABEL_49:
    v33 = sub_23EB6CD3C(v54, qword_27E383800);
LABEL_50:
    if (isEqualToString)
    {
LABEL_51:
      v14 = 0;
      goto LABEL_61;
    }

    v55 = objc_msgSend_objectForKey_(recommendationCopy, v28, @"BSAutoGuess_NoRestoreReason", v30);
    v59 = objc_msgSend_integerValue(v55, v56, v57, v58);
    switch(v59)
    {
      case 4:
        v64 = objc_msgSend_getProductLocalizedStringWithFormat_fromParamDict_(StepByStepUtilities, v60, @"CannotRecommendRestoreDHCPRangeConflict%@", dict);
        break;
      case 3:
        v64 = objc_msgSend_getProductLocalizedStringWithFormat_fromParamDict_(StepByStepUtilities, v60, @"CannotRecommendRestoreDisabledNoWanLink%@", dict);
        break;
      case 2:
        v14 = 0;
        if (v25 <= 0x14 && ((1 << v25) & 0x100402) != 0)
        {
          v61 = sub_23EB6CD3C(@"CannotRecommendRestoreCantFindWiFi", qword_27E383800);
          v62 = sub_23EB6CD3C(@"TextualSentenceConcatenator", qword_27E383800);
          v14 = objc_msgSend_stringWithValidatedFormat_validFormatSpecifiers_error_(MEMORY[0x277CCACA8], v63, v62, @"%@", 0, v61);
        }

LABEL_61:
        recommendString = recommendStringCopy;
        if (!string)
        {
          goto LABEL_63;
        }

        goto LABEL_62;
      default:
        goto LABEL_51;
    }

    v14 = sub_23EB6CD3C(v64, qword_27E383800);
    goto LABEL_61;
  }

  valid = 0;
  v33 = 0;
  if (string)
  {
LABEL_62:
    *string = v33;
  }

LABEL_63:
  if (specificString)
  {
    *specificString = valid;
  }

  if (recommendString)
  {
    *recommendString = v14;
  }
}

+ (id)nameForNetworkOrDevice:(id)device
{
  v5 = objc_msgSend_valueForKey_(device, a2, @"SSID_STR", v3);
  if (objc_msgSend_length(v5, v6, v7, v8))
  {
    return v5;
  }

  return objc_msgSend_valueForKey_(device, v9, @"name", v10);
}

+ (id)productIDForNetworkOrDevice:(id)device
{
  v4 = MEMORY[0x277CCABB0];
  v6 = objc_msgSend_scanInfoAppleProductID_(WiFiUtils, a2, device, v3);

  return objc_msgSend_numberWithInteger_(v4, v5, v6, v7);
}

@end