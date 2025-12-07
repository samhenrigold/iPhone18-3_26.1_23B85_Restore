@interface AsyncListenerDelegate
- (_TtC15PreviewShellKit21AsyncListenerDelegate)init;
- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context;
@end

@implementation AsyncListenerDelegate

- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46BB0, &qword_25F17AF30);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v15 - v9;
  v11 = sub_25F17932C();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = self;
  v12[5] = connection;
  v12[6] = context;
  connectionCopy = connection;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_25F0CD9E8(0, 0, v10, &unk_25F17C928, v12);
}

- (_TtC15PreviewShellKit21AsyncListenerDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end