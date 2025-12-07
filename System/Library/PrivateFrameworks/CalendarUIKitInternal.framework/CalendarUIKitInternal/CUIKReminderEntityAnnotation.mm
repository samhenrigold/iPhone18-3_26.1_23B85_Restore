@interface CUIKReminderEntityAnnotation
+ (id)annotationWithReminderIntegrationEvent:(id)event;
+ (id)entityIdentifierForReminderIntegrationEvent:(id)event;
- (CUIKReminderEntityAnnotation)init;
@end

@implementation CUIKReminderEntityAnnotation

+ (id)annotationWithReminderIntegrationEvent:(id)event
{
  swift_getObjCClassMetadata();
  eventCopy = event;
  v5 = sub_2429A5924(eventCopy);

  return v5;
}

+ (id)entityIdentifierForReminderIntegrationEvent:(id)event
{
  swift_getObjCClassMetadata();
  v4 = sub_2429B7270();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD7140, &qword_2429B84A0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v15 - v9;
  eventCopy = event;
  sub_2429A5BE4(eventCopy, v10);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {

    sub_2429A234C(v10, &qword_27ECD7140, &qword_2429B84A0);
    v12 = 0;
  }

  else
  {
    (*(v5 + 32))(v7, v10, v4);
    sub_2429B7260();

    (*(v5 + 8))(v7, v4);
    v13 = sub_2429B7310();

    v12 = v13;
  }

  return v12;
}

- (CUIKReminderEntityAnnotation)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ReminderEntityAnnotation();
  return [(CUIKReminderEntityAnnotation *)&v3 init];
}

@end