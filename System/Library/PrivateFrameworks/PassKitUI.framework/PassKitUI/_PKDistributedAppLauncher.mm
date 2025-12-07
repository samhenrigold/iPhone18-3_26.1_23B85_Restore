@interface _PKDistributedAppLauncher
+ (void)launchAppWithDistributorBundleID:(id)d itemID:(unint64_t)iD completion:(id)completion;
- (_TtC9PassKitUI25_PKDistributedAppLauncher)init;
@end

@implementation _PKDistributedAppLauncher

+ (void)launchAppWithDistributorBundleID:(id)d itemID:(unint64_t)iD completion:(id)completion
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580, &unk_1BE0B9000);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v25 - v8;
  v10 = _Block_copy(completion);
  v11 = sub_1BE052434();
  v13 = v12;
  if (v10)
  {
    v14 = swift_allocObject();
    *(v14 + 16) = v10;
    v10 = sub_1BD1B6B00;
  }

  else
  {
    v14 = 0;
  }

  v15 = sub_1BE0528D4();
  (*(*(v15 - 8) + 56))(v9, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = v11;
  v16[5] = v13;
  v16[6] = iD;
  v16[7] = v10;
  v16[8] = v14;
  v17 = sub_1BD122C00(0, 0, v9, &unk_1BE0F8FB0, v16);
  v17, v18, v19, v20, v21, v22, v23, v24;
}

- (_TtC9PassKitUI25_PKDistributedAppLauncher)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for _PKDistributedAppLauncher();
  return [(_PKDistributedAppLauncher *)&v3 init];
}

@end