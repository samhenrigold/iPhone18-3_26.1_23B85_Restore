@interface DynamicEndpoint
- (NSString)name;
- (NSURL)url;
- (id)endpointURLWithContentType:(int64_t)type;
@end

@implementation DynamicEndpoint

- (NSString)name
{
  DynamicEndpoint.name.getter();
  v2 = sub_217D8951C();

  return v2;
}

- (NSURL)url
{
  v3 = sub_217D87BAC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *self->appConfigurationManager;

  v8 = [objc_msgSend(v7 appConfiguration)];
  swift_unknownObjectRelease();
  sub_217D87B8C();

  v9 = sub_217D87B7C();
  (*(v4 + 8))(v6, v3);

  return v9;
}

- (id)endpointURLWithContentType:(int64_t)type
{
  sub_217CE93AC(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);

  DynamicEndpoint.endpointURL(contentType:)(type, v6);

  v7 = sub_217D87BAC();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 48))(v6, 1, v7);
  v10 = 0;
  if (v9 != 1)
  {
    v11 = sub_217D87B7C();
    (*(v8 + 8))(v6, v7);
    v10 = v11;
  }

  return v10;
}

@end