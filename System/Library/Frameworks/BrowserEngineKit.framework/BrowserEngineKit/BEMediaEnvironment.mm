@interface BEMediaEnvironment
- (BEMediaEnvironment)init;
- (BEMediaEnvironment)initWithWebPageURL:(id)l;
- (BEMediaEnvironment)initWithXPCRepresentation:(id)representation error:(id *)error;
- (id)createXPCRepresentation;
- (id)makeCaptureSessionWithError:(id *)error;
@end

@implementation BEMediaEnvironment

- (BEMediaEnvironment)initWithWebPageURL:(id)l
{
  v4 = type metadata accessor for MediaEnvironment(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = (&v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_19D51DF6C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v17 - v12;
  sub_19D51DF3C();
  (*(v8 + 16))(v11, v13, v7);
  MediaEnvironment.init(webPage:)(v11, v6);
  sub_19D51C494(v6, self + OBJC_IVAR___BEMediaEnvironment_inner);
  v14 = type metadata accessor for BEMediaEnvironment(0);
  v17.receiver = self;
  v17.super_class = v14;
  v15 = [(BEMediaEnvironment *)&v17 init];
  (*(v8 + 8))(v13, v7);
  return v15;
}

- (BEMediaEnvironment)initWithXPCRepresentation:(id)representation error:(id *)error
{
  v5 = type metadata accessor for MediaEnvironment(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = (&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = swift_unknownObjectRetain_n();
  MediaEnvironment.init(xpcRepresentation:)(v8, v7);
  sub_19D51C494(v7, self + OBJC_IVAR___BEMediaEnvironment_inner);
  v9 = type metadata accessor for BEMediaEnvironment(0);
  v13.receiver = self;
  v13.super_class = v9;
  v10 = [(BEMediaEnvironment *)&v13 init];
  swift_unknownObjectRelease();
  return v10;
}

- (id)createXPCRepresentation
{
  selfCopy = self;
  empty = xpc_dictionary_create_empty();
  v4 = sub_19D51E2DC();
  xpc_dictionary_set_string(empty, "identifier", (v4 + 32));

  type metadata accessor for MediaEnvironment(0);
  sub_19D51DEEC();
  v5 = sub_19D51E2DC();

  xpc_dictionary_set_string(empty, "url", (v5 + 32));

  return empty;
}

- (id)makeCaptureSessionWithError:(id *)error
{
  v4 = objc_allocWithZone(MEMORY[0x1E6987110]);
  selfCopy = self;
  v6 = sub_19D51E27C();
  initWithMediaEnvironment_ = [v4 initWithMediaEnvironment_];

  return initWithMediaEnvironment_;
}

- (BEMediaEnvironment)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end