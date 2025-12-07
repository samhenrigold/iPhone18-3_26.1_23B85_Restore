@interface ArtworkLoadingProtocol
+ (BOOL)canInitWithRequest:(id)request;
+ (id)canonicalRequestForRequest:(id)request;
- (_TtC8MusicKit22ArtworkLoadingProtocol)initWithRequest:(id)request cachedResponse:(id)response client:(id)client;
- (void)startLoading;
@end

@implementation ArtworkLoadingProtocol

+ (BOOL)canInitWithRequest:(id)request
{
  v3 = sub_2177512F8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2177512A8();
  swift_getObjCClassMetadata();
  v7 = sub_217575A40();
  (*(v4 + 8))(v6, v3);
  return v7 & 1;
}

+ (id)canonicalRequestForRequest:(id)request
{
  v3 = sub_2177512F8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  sub_2177512A8();
  sub_217575D74(v6, v9);
  v10 = *(v4 + 8);
  v10(v6, v3);
  v11 = sub_217751288();
  v10(v9, v3);

  return v11;
}

- (void)startLoading
{
  selfCopy = self;
  sub_217575F08();
}

- (_TtC8MusicKit22ArtworkLoadingProtocol)initWithRequest:(id)request cachedResponse:(id)response client:(id)client
{
  v7 = sub_2177512F8();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2177512A8();
  responseCopy = response;
  swift_unknownObjectRetain();
  return sub_217576FF4(v9, response, client);
}

@end