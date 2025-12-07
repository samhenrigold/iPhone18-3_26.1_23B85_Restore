@interface JSARequestEncoder
- (JSARequestEncoder)initWithTokenService:(id)service bag:(id)bag;
- (JSARequestEncoder)initWithTokenService:(id)service bag:(id)bag cookiesToSuppress:(id)suppress;
- (id)requestByEncodingRequest:(id)request parameters:(id)parameters;
@end

@implementation JSARequestEncoder

- (JSARequestEncoder)initWithTokenService:(id)service bag:(id)bag cookiesToSuppress:(id)suppress
{
  *&self->AMSMediaRequestEncoder_opaque[OBJC_IVAR___JSARequestEncoder_cookiesToSuppress] = sub_845AC();
  v9.receiver = self;
  v9.super_class = type metadata accessor for RequestEncoder();
  return [(JSARequestEncoder *)&v9 initWithTokenService:service bag:bag];
}

- (id)requestByEncodingRequest:(id)request parameters:(id)parameters
{
  v6 = sub_8378C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_8377C();
  if (parameters)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_8495C();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v15, 0, sizeof(v15));
    selfCopy2 = self;
  }

  sub_472F0(v9, v15);
  v13 = v12;

  sub_438CC(v15);
  (*(v7 + 8))(v9, v6);

  return v13;
}

- (JSARequestEncoder)initWithTokenService:(id)service bag:(id)bag
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end