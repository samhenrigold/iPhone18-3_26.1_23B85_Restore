@interface FUPegasusBridge
+ (id)unsubscribeWithChannelId:(id)id;
+ (void)fetchUpdateFor:(NSString *)for completionHandler:(id)handler;
+ (void)flightSearchResponseFor:(NSString *)for date:(NSDate *)date clientBundleIdentifier:(NSString *)identifier completionHandler:(id)handler;
+ (void)subscribeTo:(NSString *)to date:(NSDate *)date clientBundleIdentifier:(NSString *)identifier completionHandler:(id)handler;
+ (void)subscribeTo:(NSString *)to date:(NSDate *)date clientBundleIdentifier:(NSString *)identifier pushMessagesHandler:(id)handler completionHandler:;
- (_TtC19FlightUtilitiesCore15FUPegasusBridge)init;
@end

@implementation FUPegasusBridge

+ (void)flightSearchResponseFor:(NSString *)for date:(NSDate *)date clientBundleIdentifier:(NSString *)identifier completionHandler:(id)handler
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0615F0, &qword_24B8572F8);
  MEMORY[0x28223BE20]();
  v12 = &v21 - v11;
  v13 = _Block_copy(handler);
  v14 = swift_allocObject();
  v14[2] = for;
  v14[3] = date;
  v14[4] = identifier;
  v14[5] = v13;
  v14[6] = self;
  v15 = sub_24B855C2C();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_24B857398;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_24B8573A0;
  v17[5] = v16;
  forCopy = for;
  dateCopy = date;
  identifierCopy = identifier;
  sub_24B852528(0, 0, v12, &unk_24B8573A8, v17);
}

+ (void)subscribeTo:(NSString *)to date:(NSDate *)date clientBundleIdentifier:(NSString *)identifier pushMessagesHandler:(id)handler completionHandler:
{
  v7 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0615F0, &qword_24B8572F8);
  MEMORY[0x28223BE20]();
  v14 = &v24 - v13;
  v15 = _Block_copy(handler);
  v16 = _Block_copy(v7);
  v17 = swift_allocObject();
  v17[2] = to;
  v17[3] = date;
  v17[4] = identifier;
  v17[5] = v15;
  v17[6] = v16;
  v17[7] = self;
  v18 = sub_24B855C2C();
  (*(*(v18 - 8) + 56))(v14, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_24B857378;
  v19[5] = v17;
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = &unk_24B857380;
  v20[5] = v19;
  toCopy = to;
  dateCopy = date;
  identifierCopy = identifier;
  sub_24B852528(0, 0, v14, &unk_24B857388, v20);
}

+ (void)subscribeTo:(NSString *)to date:(NSDate *)date clientBundleIdentifier:(NSString *)identifier completionHandler:(id)handler
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0615F0, &qword_24B8572F8);
  MEMORY[0x28223BE20]();
  v12 = &v21 - v11;
  v13 = _Block_copy(handler);
  v14 = swift_allocObject();
  v14[2] = to;
  v14[3] = date;
  v14[4] = identifier;
  v14[5] = v13;
  v14[6] = self;
  v15 = sub_24B855C2C();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_24B857350;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_24B857358;
  v17[5] = v16;
  toCopy = to;
  dateCopy = date;
  identifierCopy = identifier;
  sub_24B852528(0, 0, v12, &unk_24B857360, v17);
}

+ (void)fetchUpdateFor:(NSString *)for completionHandler:(id)handler
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0615F0, &qword_24B8572F8);
  MEMORY[0x28223BE20]();
  v8 = &v15 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  v10[2] = for;
  v10[3] = v9;
  v10[4] = self;
  v11 = sub_24B855C2C();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_24B857308;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_24B857318;
  v13[5] = v12;
  forCopy = for;
  sub_24B852528(0, 0, v8, &unk_24B857328, v13);
}

+ (id)unsubscribeWithChannelId:(id)id
{
  sub_24B855B7C();
  v3 = _s19FlightUtilitiesCore15FUPegasusBridgeC11unsubscribe9channelIds5Error_pSgSS_tFZ_0();

  if (v3)
  {
    v4 = sub_24B8558FC();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (_TtC19FlightUtilitiesCore15FUPegasusBridge)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for FUPegasusBridge();
  return [(FUPegasusBridge *)&v3 init];
}

@end