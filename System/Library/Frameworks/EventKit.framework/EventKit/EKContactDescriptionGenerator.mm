@interface EKContactDescriptionGenerator
+ (id)EKLabeledDisplayStringForContact:(id)contact label:(id)label;
+ (id)EKLabeledDisplayStringForContact:(id)contact label:(id)label isMe:(BOOL)me;
@end

@implementation EKContactDescriptionGenerator

+ (id)EKLabeledDisplayStringForContact:(id)contact label:(id)label
{
  v6 = MEMORY[0x1E6992F50];
  labelCopy = label;
  contactCopy = contact;
  defaultProvider = [v6 defaultProvider];
  identifier = [contactCopy identifier];
  v11 = [defaultProvider contactIdentifierIsMe:identifier];

  v12 = [self EKLabeledDisplayStringForContact:contactCopy label:labelCopy isMe:v11];

  return v12;
}

+ (id)EKLabeledDisplayStringForContact:(id)contact label:(id)label isMe:(BOOL)me
{
  meCopy = me;
  contactCopy = contact;
  labelCopy = label;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2050000000;
  v9 = getCNLabeledValueClass_softClass;
  v30 = getCNLabeledValueClass_softClass;
  if (!getCNLabeledValueClass_softClass)
  {
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __getCNLabeledValueClass_block_invoke;
    v26[3] = &unk_1E77FCFD8;
    v26[4] = &v27;
    __getCNLabeledValueClass_block_invoke(v26);
    v9 = v28[3];
  }

  v10 = v9;
  _Block_object_dispose(&v27, 8);
  v11 = [v9 localizedStringForLabel:labelCopy];
  localizedCapitalizedString = [v11 localizedCapitalizedString];

  if (meCopy)
  {
    if (localizedCapitalizedString)
    {
      v17 = localizedCapitalizedString;
      goto LABEL_15;
    }

    v18 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v19 = [v18 localizedStringForKey:@"My Address" value:&stru_1F1B49D68 table:0];
  }

  else
  {
    v18 = [getCNContactFormatterClass(v13 v14];
    if ([contactCopy contactType] != 1)
    {
      v20 = MEMORY[0x1E696AEC0];
      v21 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v22 = v21;
      if (localizedCapitalizedString)
      {
        v23 = [v21 localizedStringForKey:@"%@’s %@" value:&stru_1F1B49D68 table:0];
        [v20 localizedStringWithFormat:v23, v18, localizedCapitalizedString];
      }

      else
      {
        v23 = [v21 localizedStringForKey:@"%@’s address" value:&stru_1F1B49D68 table:0];
        [v20 localizedStringWithFormat:v23, v18, v25];
      }
      v17 = ;

      goto LABEL_14;
    }

    v19 = v18;
  }

  v17 = v19;
LABEL_14:

LABEL_15:

  return v17;
}

@end