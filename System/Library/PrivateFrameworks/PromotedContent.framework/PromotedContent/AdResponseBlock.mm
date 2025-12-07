@interface AdResponseBlock
- (_TtC15PromotedContentP33_E3331A4917F70526BBCA8EA71ED6884515AdResponseBlock)init;
- (id)requesterID;
- (void)connectionSeveredWithError:(id)error;
- (void)contentResponses:(id)responses;
@end

@implementation AdResponseBlock

- (id)requesterID
{
  v3 = sub_1C1B945F8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, self + OBJC_IVAR____TtC15PromotedContentP33_E3331A4917F70526BBCA8EA71ED6884515AdResponseBlock_requestIdentifier, v3);
  v7 = sub_1C1B945B8();
  (*(v4 + 8))(v6, v3);

  return v7;
}

- (void)contentResponses:(id)responses
{
  if (responses)
  {
    sub_1C1AA576C(0, qword_1EDE6CA20, 0x1E698A028);
    v4 = sub_1C1B94EC8();
  }

  else
  {
    v4 = 0;
  }

  selfCopy = self;
  sub_1C1B47368(v4);
}

- (void)connectionSeveredWithError:(id)error
{
  errorCopy = error;
  selfCopy = self;
  sub_1C1B47D40();
}

- (_TtC15PromotedContentP33_E3331A4917F70526BBCA8EA71ED6884515AdResponseBlock)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end