@interface NEURLFilterManagerPrivate
+ (void)enableConfig:(BOOL)config serviceID:(NSUUID *)d completion:(id)completion;
- (NEURLFilterManagerPrivate)init;
@end

@implementation NEURLFilterManagerPrivate

+ (void)enableConfig:(BOOL)config serviceID:(NSUUID *)d completion:(id)completion
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EAC0, &qword_1BAA4CD50);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v18 - v10;
  v12 = _Block_copy(completion);
  v13 = swift_allocObject();
  *(v13 + 16) = config;
  *(v13 + 24) = d;
  *(v13 + 32) = v12;
  *(v13 + 40) = self;
  v14 = sub_1BAA39EFC();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1BAA4D8E0;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1BAA4D100;
  v16[5] = v15;
  dCopy = d;
  sub_1BA8737D8(0, 0, v11, &unk_1BAA4CD70, v16);
}

- (NEURLFilterManagerPrivate)init
{
  v3.receiver = self;
  v3.super_class = NEURLFilterManagerPrivate;
  return [(NEURLFilterManagerPrivate *)&v3 init];
}

@end