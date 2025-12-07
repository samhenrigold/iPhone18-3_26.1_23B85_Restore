@interface CalendarLinkSpotlightEntityAnnotator
+ (void)associateEventEntityWithIdentifier:(id)identifier occurrenceDate:(id)date with:(id)with;
- (CalendarLinkSpotlightEntityAnnotator)init;
@end

@implementation CalendarLinkSpotlightEntityAnnotator

+ (void)associateEventEntityWithIdentifier:(id)identifier occurrenceDate:(id)date with:(id)with
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC26F0, &unk_2428B7960);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = sub_2428B4618();
  v12 = v11;
  if (date)
  {
    sub_2428B3678();
    v13 = sub_2428B3688();
    (*(*(v13 - 8) + 56))(v9, 0, 1, v13);
  }

  else
  {
    v14 = sub_2428B3688();
    (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
  }

  withCopy = with;
  sub_242857420(v10, v12, v9, withCopy);

  sub_242830FC0(v9);
}

- (CalendarLinkSpotlightEntityAnnotator)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for CalendarLinkSpotlightEntityAnnotator();
  return [(CalendarLinkSpotlightEntityAnnotator *)&v3 init];
}

@end