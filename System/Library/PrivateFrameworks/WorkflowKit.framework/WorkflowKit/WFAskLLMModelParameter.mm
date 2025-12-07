@interface WFAskLLMModelParameter
- (id)defaultSerializedRepresentationForEnumeration:(id)enumeration;
- (id)enumeration:(id)enumeration accessoryIconForPossibleState:(id)state;
- (id)loadPossibleStatesForEnumeration:(id)enumeration;
- (id)localizedTitleForButtonWithState:(id)state;
@end

@implementation WFAskLLMModelParameter

- (id)enumeration:(id)enumeration accessoryIconForPossibleState:(id)state
{
  enumerationCopy = enumeration;
  stateCopy = state;
  selfCopy = self;
  v9 = WFAskLLMModelParameter.enumeration(_:accessoryIconForPossibleState:)(selfCopy, stateCopy);

  return v9;
}

- (id)localizedTitleForButtonWithState:(id)state
{
  stateCopy = state;
  selfCopy = self;
  WFAskLLMModelParameter.localizedTitleForButton(with:)();
  v7 = v6;

  if (v7)
  {
    v8 = sub_1CA94C368();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)loadPossibleStatesForEnumeration:(id)enumeration
{
  enumerationCopy = enumeration;
  selfCopy = self;
  WFAskLLMModelParameter.loadPossibleStates(forEnumeration:)();
  v7 = v6;

  return v7;
}

- (id)defaultSerializedRepresentationForEnumeration:(id)enumeration
{
  enumerationCopy = enumeration;
  selfCopy = self;
  WFAskLLMModelParameter.defaultSerializedRepresentation(forEnumeration:)(v13);

  v6 = v14;
  if (v14)
  {
    v7 = __swift_project_boxed_opaque_existential_1(v13, v14);
    v8 = *(v6 - 8);
    MEMORY[0x1EEE9AC00](v7);
    v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 16))(v10);
    v11 = sub_1CA94D7D8();
    (*(v8 + 8))(v10, v6);
    __swift_destroy_boxed_opaque_existential_0(v13);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end