@interface _PKJPKIInternalClientWrapper
+ (void)instantiateWithPass:(PKPass *)pass completionHandler:(id)handler;
- (_PKJPKIInternalClientWrapper)init;
@end

@implementation _PKJPKIInternalClientWrapper

+ (void)instantiateWithPass:(PKPass *)pass completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580, &unk_1BE0B9000);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v24 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = pass;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_1BE0528D4();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1BE0FEDA0;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1BE107FA0;
  v14[5] = v13;
  passCopy = pass;
  v16 = sub_1BD992D04(0, 0, v9, &unk_1BE0C7F30, v14);
  v16, v17, v18, v19, v20, v21, v22, v23;
}

- (_PKJPKIInternalClientWrapper)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end