@interface WFContentItemFilterEnumerationParameter
- (id)localizedLabelForPossibleState:(id)state;
@end

@implementation WFContentItemFilterEnumerationParameter

- (id)localizedLabelForPossibleState:(id)state
{
  stateCopy = state;
  value = [stateCopy value];
  isEqualToString = objc_msgSend_isEqualToString_(value);

  if (isEqualToString)
  {
    localizedPluralFilterDescription = [(objc_class *)[(WFContentItemFilterEnumerationParameter *)self contentItemClass] localizedPluralFilterDescription];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = WFContentItemFilterEnumerationParameter;
    localizedPluralFilterDescription = [(WFEnumerationParameter *)&v10 localizedLabelForPossibleState:stateCopy];
  }

  v8 = localizedPluralFilterDescription;

  return v8;
}

@end