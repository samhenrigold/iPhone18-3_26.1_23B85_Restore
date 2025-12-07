@interface FPCKDetachedRoot
- (NSURL)logicalLocation;
- (NSURL)physicalLocation;
- (_TtC18FileProviderDaemon16FPCKDetachedRoot)init;
- (_TtC18FileProviderDaemon16FPCKDetachedRoot)initWithPhysicalLocation:(id)location rootURL:(id)l error:(id *)error;
@end

@implementation FPCKDetachedRoot

- (NSURL)physicalLocation
{
  v3 = sub_1CF9E5A58();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, self + OBJC_IVAR____TtC18FileProviderDaemon16FPCKDetachedRoot_physicalLocation, v3, v5);
  v8 = sub_1CF9E5928();
  (*(v4 + 8))(v7, v3);

  return v8;
}

- (NSURL)logicalLocation
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v12 - v4;
  sub_1CEFCCBDC(self + OBJC_IVAR____TtC18FileProviderDaemon16FPCKDetachedRoot_logicalLocation, &v12 - v4, &unk_1EC4BE310, qword_1CF9FCBE0);
  v6 = sub_1CF9E5A58();
  v7 = *(v6 - 8);
  v8 = (*(v7 + 48))(v5, 1, v6);
  v9 = 0;
  if (v8 != 1)
  {
    v10 = sub_1CF9E5928();
    (*(v7 + 8))(v5, v6);
    v9 = v10;
  }

  return v9;
}

- (_TtC18FileProviderDaemon16FPCKDetachedRoot)initWithPhysicalLocation:(id)location rootURL:(id)l error:(id *)error
{
  v5 = sub_1CF9E5A58();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v12[-v9];
  sub_1CF9E59D8();
  sub_1CF9E59D8();
  return FPCKDetachedRoot.init(physicalLocation:rootURL:)(v10, v7);
}

- (_TtC18FileProviderDaemon16FPCKDetachedRoot)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end