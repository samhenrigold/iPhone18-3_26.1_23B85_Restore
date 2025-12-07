@interface DynamicEndpoint
- (NSString)name;
- (NSURL)url;
- (id)endpointURLWithContentType:(int64_t)type;
@end

@implementation DynamicEndpoint

- (NSURL)url
{
  v3 = sub_25BE14C88();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20]();
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *self->appConfigurationManager;

  v8 = [objc_msgSend(v7 appConfiguration)];
  swift_unknownObjectRelease();
  sub_25BE14C78();

  v9 = sub_25BE14C68();
  (*(v4 + 8))(v6, v3);

  return v9;
}

- (NSString)name
{
  sub_25BE03AA0();
  v2 = sub_25BE15138();

  return v2;
}

- (id)endpointURLWithContentType:(int64_t)type
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDEBC8, &unk_25BE167A0);
  MEMORY[0x28223BE20]();
  v5 = &v12 - v4;

  sub_25BE03BE4(type, v5);

  v6 = sub_25BE14C88();
  v7 = *(v6 - 8);
  v8 = (*(v7 + 48))(v5, 1, v6);
  v9 = 0;
  if (v8 != 1)
  {
    v10 = sub_25BE14C68();
    (*(v7 + 8))(v5, v6);
    v9 = v10;
  }

  return v9;
}

@end