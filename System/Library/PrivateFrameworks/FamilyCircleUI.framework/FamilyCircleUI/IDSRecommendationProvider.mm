@interface IDSRecommendationProvider
- (IDSRecommendationProvider)init;
- (id)getIDForPhoneNumberWithPhoneNumber:(id)number;
- (void)validateHandlesWithIdsDestinations:(NSArray *)destinations completionHandler:(id)handler;
@end

@implementation IDSRecommendationProvider

- (id)getIDForPhoneNumberWithPhoneNumber:(id)number
{
  if (number)
  {
    sub_21BE28A0C();
    selfCopy = self;
    v5 = sub_21BE289CC();
  }

  else
  {
    selfCopy2 = self;
    v5 = 0;
  }

  v7 = _IDSCopyIDForPhoneNumberWithOptions();

  if (v7)
  {
    sub_21BE28A0C();

    v8 = sub_21BE289CC();
  }

  else
  {

    v8 = 0;
  }

  return v8;
}

- (void)validateHandlesWithIdsDestinations:(NSArray *)destinations completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = destinations;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_21BE28DAC();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_21BE48830;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_21BE32A10;
  v14[5] = v13;
  destinationsCopy = destinations;
  selfCopy = self;
  sub_21BDC4F90(0, 0, v9, &unk_21BE391F0, v14);
}

- (IDSRecommendationProvider)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for IDSRecommendationProvider();
  return [(IDSRecommendationProvider *)&v3 init];
}

@end