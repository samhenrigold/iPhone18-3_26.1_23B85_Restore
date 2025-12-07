@interface TPSUserGuideTopic
+ (BOOL)isValidIdentifier:(id)identifier;
+ (NSString)uti;
- (NSString)identifier;
- (NSString)productId;
- (NSURL)supportSiteURL;
- (TPSUserGuideTopic)init;
- (TPSUserGuideTopic)initWithProductIdentifier:(id)identifier topicIdentifier:(id)topicIdentifier version:(id)version;
- (id)searchableItemUniqueIdentifierWith:(id)with;
- (void)setProductId:(id)id;
@end

@implementation TPSUserGuideTopic

- (NSString)productId
{
  swift_beginAccess();

  v2 = sub_1C014C200();

  return v2;
}

- (void)setProductId:(id)id
{
  v4 = sub_1C014C230();
  v6 = v5;
  v7 = (self + OBJC_IVAR___TPSUserGuideTopic_productId);
  swift_beginAccess();
  *v7 = v4;
  v7[1] = v6;
}

+ (NSString)uti
{
  v2 = sub_1C014C200();

  return v2;
}

- (NSString)identifier
{
  v3 = sub_1C014BD80();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = self + OBJC_IVAR___TPSUserGuideTopic_topicId;
  swift_beginAccess();
  if (!*(v7 + 1))
  {
    selfCopy = self;
    sub_1C014BD70();
    sub_1C014BD50();

    (*(v4 + 8))(v6, v3);
  }

  v9 = sub_1C014C200();

  return v9;
}

+ (BOOL)isValidIdentifier:(id)identifier
{
  v3 = sub_1C014C230();
  v5 = v4;
  v6 = objc_allocWithZone(type metadata accessor for UserGuideTopic());
  v7 = UserGuideTopic.init(searchableItemUniqueIdentifier:)(v3, v5);
  v8 = v7;
  if (v7)
  {
  }

  return v8 != 0;
}

- (id)searchableItemUniqueIdentifierWith:(id)with
{
  v4 = sub_1C014C230();
  v6 = v5;
  selfCopy = self;
  sub_1C0133FEC(v4, v6);
  v9 = v8;

  if (v9)
  {
    v10 = sub_1C014C200();
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (TPSUserGuideTopic)initWithProductIdentifier:(id)identifier topicIdentifier:(id)topicIdentifier version:(id)version
{
  v7 = sub_1C014C230();
  v9 = v8;
  if (!topicIdentifier)
  {
    v11 = 0;
    if (version)
    {
      goto LABEL_3;
    }

LABEL_5:
    v12 = 0;
    v14 = 0;
    return UserGuideTopic.init(productIdentifier:topicIdentifier:version:)(v7, v9, topicIdentifier, v11, v12, v14);
  }

  topicIdentifier = sub_1C014C230();
  v11 = v10;
  if (!version)
  {
    goto LABEL_5;
  }

LABEL_3:
  v12 = sub_1C014C230();
  v14 = v13;
  return UserGuideTopic.init(productIdentifier:topicIdentifier:version:)(v7, v9, topicIdentifier, v11, v12, v14);
}

- (TPSUserGuideTopic)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (NSURL)supportSiteURL
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06970, &qword_1C0156340);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v13 - v4;
  selfCopy = self;
  UserGuideTopic.supportSiteURL.getter(v5);

  v7 = sub_1C014BC50();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 48))(v5, 1, v7);
  v10 = 0;
  if (v9 != 1)
  {
    v11 = sub_1C014BBB0();
    (*(v8 + 8))(v5, v7);
    v10 = v11;
  }

  return v10;
}

@end