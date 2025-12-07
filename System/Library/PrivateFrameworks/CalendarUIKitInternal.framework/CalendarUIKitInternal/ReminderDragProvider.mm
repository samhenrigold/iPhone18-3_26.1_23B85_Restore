@interface ReminderDragProvider
+ (id)itemProviderWriterFor:(id)for;
- (_TtC21CalendarUIKitInternal20ReminderDragProvider)init;
@end

@implementation ReminderDragProvider

+ (id)itemProviderWriterFor:(id)for
{
  swift_getObjCClassMetadata();
  v4 = sub_2429B7000();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECD7010, &unk_2429B8350);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v15 - v9;
  forCopy = for;
  sub_2429A1DB0(forCopy, v10);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {

    sub_2429A234C(v10, &unk_27ECD7010, &unk_2429B8350);
    v12 = 0;
  }

  else
  {
    (*(v5 + 32))(v7, v10, v4);
    v13 = sub_2429B7020();

    (*(v5 + 8))(v7, v4);
    v12 = v13;
  }

  return v12;
}

- (_TtC21CalendarUIKitInternal20ReminderDragProvider)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ReminderDragProvider();
  return [(ReminderDragProvider *)&v3 init];
}

@end