@interface ObjCSwiftBridge
+ (void)bootstrapWithContext:(NSString *)context completionHandler:(id)handler;
- (_TtC8SPFinder15ObjCSwiftBridge)init;
@end

@implementation ObjCSwiftBridge

+ (void)bootstrapWithContext:(NSString *)context completionHandler:(id)handler
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF6B6B0, &qword_2643CB2C8);
  MEMORY[0x28223BE20]();
  v8 = &v15 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  v10[2] = context;
  v10[3] = v9;
  v10[4] = self;
  v11 = sub_2643C92FC();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_2643CB2D8;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_2643CB2E8;
  v13[5] = v12;
  contextCopy = context;
  sub_2643C8524(0, 0, v8, &unk_2643CB2F8, v13);
}

- (_TtC8SPFinder15ObjCSwiftBridge)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ObjCSwiftBridge();
  return [(ObjCSwiftBridge *)&v3 init];
}

@end