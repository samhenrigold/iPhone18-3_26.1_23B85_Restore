@interface ReminderColorDeserializer
+ (id)deserializeFrom:(id)from error:(id *)error;
- (_TtC21CalendarUIKitInternal25ReminderColorDeserializer)init;
@end

@implementation ReminderColorDeserializer

+ (id)deserializeFrom:(id)from error:(id *)error
{
  fromCopy = from;
  v5 = sub_2429B6E40();
  v7 = v6;

  v8 = sub_2429B71F0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2429A24D4(v5, v7);
  sub_2429B71D0();
  v12 = sub_2429B71B0();
  sub_2429A27AC(v5, v7);
  (*(v9 + 8))(v11, v8);

  return v12;
}

- (_TtC21CalendarUIKitInternal25ReminderColorDeserializer)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ReminderColorDeserializer();
  return [(ReminderColorDeserializer *)&v3 init];
}

@end