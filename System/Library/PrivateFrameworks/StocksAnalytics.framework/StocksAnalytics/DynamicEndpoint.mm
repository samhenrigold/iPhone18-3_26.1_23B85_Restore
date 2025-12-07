@interface DynamicEndpoint
- (NSString)name;
- (NSString)sharedContainerIdentifier;
- (NSURL)url;
@end

@implementation DynamicEndpoint

- (NSString)name
{
  v3 = sub_22036E868();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22036E8D8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(self->appConfigurationManager, *&self->appConfigurationManager[24]);

  sub_22036E958();
  sub_22036E7B8();
  (*(v4 + 8))(v6, v3);
  sub_22036E8C8();

  (*(v8 + 8))(v10, v7);
  v11 = sub_22036FAC8();

  return v11;
}

- (NSURL)url
{
  v2 = sub_22036E508();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);

  DynamicEndpoint.url.getter(v5);

  v6 = sub_22036E4E8();
  (*(v3 + 8))(v5, v2);

  return v6;
}

- (NSString)sharedContainerIdentifier
{
  sub_22036EA58();
  sub_22036EA48();
  sub_22036EA38();

  v2 = sub_22036FAC8();

  return v2;
}

@end