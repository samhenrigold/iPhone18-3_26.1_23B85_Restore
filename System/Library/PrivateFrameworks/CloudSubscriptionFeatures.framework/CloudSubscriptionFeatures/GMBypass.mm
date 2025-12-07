@interface GMBypass
+ (void)setADMBypass:(BOOL)bypass;
- (_TtC25CloudSubscriptionFeatures8GMBypass)init;
@end

@implementation GMBypass

+ (void)setADMBypass:(BOOL)bypass
{
  bypassCopy = bypass;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE383B0, &qword_1DF568C10);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v12 - v5;
  ObjCClassMetadata = swift_getObjCClassMetadata();
  if (sub_1DF548FD8())
  {
    if (qword_1ED9562B0 != -1)
    {
      swift_once();
    }

    v8 = qword_1ED9562C0;
    v9 = sub_1DF564914();
    [v8 setBool:bypassCopy forKey:v9];

    v10 = sub_1DF564B44();
    (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
    v11 = swift_allocObject();
    *(v11 + 16) = 0;
    *(v11 + 24) = 0;
    *(v11 + 32) = ObjCClassMetadata;
    *(v11 + 40) = bypassCopy;
    sub_1DF515B98(0, 0, v6, &unk_1DF56DA98, v11);
  }
}

- (_TtC25CloudSubscriptionFeatures8GMBypass)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for GMBypass();
  return [(GMBypass *)&v3 init];
}

@end