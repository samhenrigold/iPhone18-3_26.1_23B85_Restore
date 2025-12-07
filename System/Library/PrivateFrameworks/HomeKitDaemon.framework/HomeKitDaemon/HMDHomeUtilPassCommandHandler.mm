@interface HMDHomeUtilPassCommandHandler
+ (void)handlePassCommandForData:(NSData *)data completionHandler:(id)handler;
- (HMDHomeUtilPassCommandHandler)init;
@end

@implementation HMDHomeUtilPassCommandHandler

+ (void)handlePassCommandForData:(NSData *)data completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = data;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_22A4DD9DC();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_22A583350;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_22A57B590;
  v14[5] = v13;
  dataCopy = data;
  sub_229859F70(0, 0, v9, &unk_22A581CC0, v14);
}

- (HMDHomeUtilPassCommandHandler)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for HomeUtilPassCommandHandler();
  return [(HMDHomeUtilPassCommandHandler *)&v3 init];
}

@end