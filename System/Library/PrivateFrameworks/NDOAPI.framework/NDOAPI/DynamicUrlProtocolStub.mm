@interface DynamicUrlProtocolStub
+ (BOOL)canInitWithRequest:(id)request;
+ (id)canonicalRequestForRequest:(id)request;
- (_TtC6NDOAPI22DynamicUrlProtocolStub)initWithRequest:(id)request cachedResponse:(id)response client:(id)client;
- (void)startLoading;
@end

@implementation DynamicUrlProtocolStub

- (_TtC6NDOAPI22DynamicUrlProtocolStub)initWithRequest:(id)request cachedResponse:(id)response client:(id)client
{
  v7 = sub_22DEC4694();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22DEC4674();
  responseCopy = response;
  swift_unknownObjectRetain();
  v11 = sub_22DDFC870(v9, response, client);

  swift_unknownObjectRelease();
  return v11;
}

+ (BOOL)canInitWithRequest:(id)request
{
  v3 = sub_22DEC4694();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22DEC4674();
  v7 = sub_22DDFCB48();
  (*(v4 + 8))(v6, v3);
  return v7 & 1;
}

+ (id)canonicalRequestForRequest:(id)request
{
  v3 = sub_22DEC4694();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22DEC4674();
  v7 = sub_22DEC4664();
  (*(v4 + 8))(v6, v3);

  return v7;
}

- (void)startLoading
{
  selfCopy = self;
  sub_22DDFBE10();
}

@end