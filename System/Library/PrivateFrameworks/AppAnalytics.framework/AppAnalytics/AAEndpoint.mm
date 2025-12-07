@interface AAEndpoint
- (AAEndpoint)init;
- (AAEndpoint)initWithURL:(id)l name:(id)name sharedContainerIdentifier:(id)identifier;
- (NSString)name;
- (NSString)sharedContainerIdentifier;
- (NSURL)url;
@end

@implementation AAEndpoint

- (NSString)name
{

  v2 = sub_1B6AB92B0();

  return v2;
}

- (NSURL)url
{
  v3 = sub_1B6AB8BB0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, self + OBJC_IVAR___AAEndpoint_url, v3);
  v7 = sub_1B6AB8B20();
  (*(v4 + 8))(v6, v3);

  return v7;
}

- (NSString)sharedContainerIdentifier
{
  if (*(self + OBJC_IVAR___AAEndpoint_sharedContainerIdentifier + 8))
  {

    v2 = sub_1B6AB92B0();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (AAEndpoint)initWithURL:(id)l name:(id)name sharedContainerIdentifier:(id)identifier
{
  ObjectType = swift_getObjectType();
  v8 = sub_1B6AB8BB0();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B6AB8B60();
  v12 = sub_1B6AB92E0();
  v14 = v13;
  if (identifier)
  {
    identifier = sub_1B6AB92E0();
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  (*(v9 + 16))(self + OBJC_IVAR___AAEndpoint_url, v11, v8);
  v17 = (self + OBJC_IVAR___AAEndpoint_name);
  *v17 = v12;
  v17[1] = v14;
  v18 = (self + OBJC_IVAR___AAEndpoint_sharedContainerIdentifier);
  *v18 = identifier;
  v18[1] = v16;
  v21.receiver = self;
  v21.super_class = ObjectType;
  v19 = [(AAEndpoint *)&v21 init];
  (*(v9 + 8))(v11, v8);
  return v19;
}

- (AAEndpoint)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end