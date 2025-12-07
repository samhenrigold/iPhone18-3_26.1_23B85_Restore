@interface WFSpotlightSearchResultTypePickerParameter
- (id)accessoryImageForPossibleState:(id)state;
- (id)defaultSerializedRepresentationForEnumeration:(id)enumeration;
- (id)enumeration:(id)enumeration localizedLabelForPossibleState:(id)state;
- (id)loadPossibleStatesForEnumeration:(id)enumeration;
@end

@implementation WFSpotlightSearchResultTypePickerParameter

- (id)accessoryImageForPossibleState:(id)state
{
  stateCopy = state;
  selfCopy = self;
  v6 = sub_23DE62B70(stateCopy);

  return v6;
}

- (id)enumeration:(id)enumeration localizedLabelForPossibleState:(id)state
{
  enumerationCopy = enumeration;
  stateCopy = state;
  selfCopy = self;
  sub_23DE63198(selfCopy, stateCopy);
  v10 = v9;

  if (v10)
  {
    v11 = sub_23E1FDBDC();
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)loadPossibleStatesForEnumeration:(id)enumeration
{
  enumerationCopy = enumeration;
  selfCopy = self;
  v6 = sub_23DE633B0();

  return v6;
}

- (id)defaultSerializedRepresentationForEnumeration:(id)enumeration
{
  enumerationCopy = enumeration;
  selfCopy = self;
  sub_23DE637D8(v13);

  v6 = v14;
  if (v14)
  {
    v7 = __swift_project_boxed_opaque_existential_0(v13, v14);
    v8 = *(v6 - 8);
    MEMORY[0x28223BE20](v7);
    v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 16))(v10);
    v11 = sub_23E1FE73C();
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