@interface MPVoicemailTableViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)voicemailMessageViewModelForVoicemail:(id)voicemail isExpanded:(BOOL)expanded;
@end

@implementation MPVoicemailTableViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MPVoicemailTableViewController" hasInstanceMethod:@"voicemailMessageViewModelForVoicemail:isExpanded:" withFullSignature:{"@", "@", "B", 0}];
  [validationsCopy validateClass:@"MPVoicemailTableViewController" hasInstanceMethod:@"voicemailController" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MPVoicemailController" hasInstanceMethod:@"callProviderManager" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MobilePhone.FTMessage" hasInstanceMethod:@"receiverDestinationID" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MobilePhone.FTMessage" hasInstanceMethod:@"receiverISOCountryCode" withFullSignature:{"@", 0}];
}

- (id)voicemailMessageViewModelForVoicemail:(id)voicemail isExpanded:(BOOL)expanded
{
  expandedCopy = expanded;
  voicemailCopy = voicemail;
  objc_opt_class();
  v30.receiver = self;
  v30.super_class = MPVoicemailTableViewControllerAccessibility;
  v7 = [(MPVoicemailTableViewControllerAccessibility *)&v30 voicemailMessageViewModelForVoicemail:voicemailCopy isExpanded:expandedCopy];
  v8 = __UIAccessibilityCastAsSafeCategory();

  LOBYTE(v24) = 0;
  objc_opt_class();
  v9 = [(MPVoicemailTableViewControllerAccessibility *)self safeValueForKeyPath:@"voicemailController.callProviderManager"];
  v10 = __UIAccessibilityCastAsClass();

  telephonyProvider = [v10 telephonyProvider];
  prioritizedSenderIdentities = [telephonyProvider prioritizedSenderIdentities];
  v13 = [prioritizedSenderIdentities count];

  if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    v24 = 0;
    v25 = &v24;
    v26 = 0x3032000000;
    v27 = __Block_byref_object_copy_;
    v28 = __Block_byref_object_dispose_;
    v29 = 0;
    v14 = voicemailCopy;
    AXPerformSafeBlock();
    v15 = v25[5];

    _Block_object_dispose(&v24, 8);
    if (v13 >= 2 && [v15 length])
    {
      v16 = [objc_alloc(MEMORY[0x29EDC6FA0]) initWithType:2 value:v15];
      v24 = 0;
      v25 = &v24;
      v26 = 0x3032000000;
      v27 = __Block_byref_object_copy_;
      v28 = __Block_byref_object_dispose_;
      v29 = 0;
      v22 = MEMORY[0x29EDCA5F8];
      v23 = v14;
      AXPerformSafeBlock();
      v17 = v25[5];

      _Block_object_dispose(&v24, 8);
      v18 = [v16 canonicalHandleForISOCountryCode:{v17, v22, 3221225472, __96__MPVoicemailTableViewControllerAccessibility_voicemailMessageViewModelForVoicemail_isExpanded___block_invoke_2, &unk_29F2D5B18}];

      v19 = [telephonyProvider senderIdentityForHandle:v18];
      localizedName = [v19 localizedName];

      [v8 _axSetLocalizedSenderIdentityFullName:localizedName];
    }
  }

  return v8;
}

uint64_t __96__MPVoicemailTableViewControllerAccessibility_voicemailMessageViewModelForVoicemail_isExpanded___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) receiverDestinationID];

  return MEMORY[0x2A1C71028]();
}

uint64_t __96__MPVoicemailTableViewControllerAccessibility_voicemailMessageViewModelForVoicemail_isExpanded___block_invoke_2(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) receiverISOCountryCode];

  return MEMORY[0x2A1C71028]();
}

@end