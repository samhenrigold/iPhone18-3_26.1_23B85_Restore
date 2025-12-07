@interface TPSUserGuide
+ (NSString)topicIdentifierKey;
+ (id)getUserGuideFromURL:(id)l;
+ (id)privateURLWithBookIdentifier:(id)identifier topicIdentifier:(id)topicIdentifier version:(id)version referrer:(id)referrer;
+ (id)urlWithBook:(id)book topic:(id)topic anchor:(id)anchor version:(id)version referrer:(id)referrer;
- (BOOL)isEqual:(id)equal;
- (NSArray)gradientColorStrings;
- (NSString)platform;
- (NSString)topicIdentifier;
- (TPSUserGuide)init;
- (TPSUserGuide)initWithIdentifier:(id)identifier version:(id)version text:(id)text symbol:(id)symbol platform:(id)platform platformIndependent:(BOOL)independent gradientColorStrings:(id)strings;
- (id)copyWithZone:(void *)zone;
- (int64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setTopicIdentifier:(id)identifier;
@end

@implementation TPSUserGuide

+ (NSString)topicIdentifierKey
{
  v2 = sub_1C014C200();

  return v2;
}

+ (id)getUserGuideFromURL:(id)l
{
  v3 = sub_1C014BC50();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C014BBC0();
  v7 = _s8TipsCore9UserGuideC03getcD7FromURL0G0ACSg10FoundationAEV_tFZ_0(v6);
  (*(v4 + 8))(v6, v3);

  return v7;
}

+ (id)privateURLWithBookIdentifier:(id)identifier topicIdentifier:(id)topicIdentifier version:(id)version referrer:(id)referrer
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06970, &qword_1C0156340);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v29 - v11;
  if (identifier)
  {
    sub_1C014C230();
    identifier = v13;
    if (topicIdentifier)
    {
      goto LABEL_3;
    }
  }

  else if (topicIdentifier)
  {
LABEL_3:
    v14 = sub_1C014C230();
    topicIdentifier = v15;
    if (version)
    {
      goto LABEL_4;
    }

LABEL_8:
    v16 = 0;
    referrerCopy2 = referrer;
    if (referrerCopy2)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

  v14 = 0;
  if (!version)
  {
    goto LABEL_8;
  }

LABEL_4:
  v16 = sub_1C014C230();
  version = v17;
  referrerCopy2 = referrer;
  if (referrerCopy2)
  {
LABEL_5:
    v19 = referrerCopy2;
    v20 = sub_1C014C230();
    v22 = v21;

    goto LABEL_10;
  }

LABEL_9:
  v20 = 0;
  v22 = 0;
LABEL_10:
  static UserGuide.privateURL(bookIdentifier:topicIdentifier:version:referrer:)(identifier, v14, topicIdentifier, v16, version, v20, v22, v12);

  v23 = sub_1C014BC50();
  v24 = *(v23 - 8);
  v25 = (*(v24 + 48))(v12, 1, v23);
  v26 = 0;
  if (v25 != 1)
  {
    v27 = sub_1C014BBB0();
    (*(v24 + 8))(v12, v23);
    v26 = v27;
  }

  return v26;
}

+ (id)urlWithBook:(id)book topic:(id)topic anchor:(id)anchor version:(id)version referrer:(id)referrer
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06970, &qword_1C0156340);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v34 - v13;
  if (book)
  {
    v35 = sub_1C014C230();
    book = v15;
    if (topic)
    {
      goto LABEL_3;
    }

LABEL_6:
    v34 = 0;
    if (anchor)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v35 = 0;
  if (!topic)
  {
    goto LABEL_6;
  }

LABEL_3:
  v34 = sub_1C014C230();
  topic = v16;
  if (anchor)
  {
LABEL_4:
    v17 = sub_1C014C230();
    anchor = v18;
    goto LABEL_8;
  }

LABEL_7:
  v17 = 0;
LABEL_8:
  versionCopy = version;
  referrerCopy = referrer;
  v21 = referrerCopy;
  if (versionCopy)
  {
    v22 = sub_1C014C230();
    v24 = v23;

    if (v21)
    {
LABEL_10:
      v25 = sub_1C014C230();
      v27 = v26;

      goto LABEL_13;
    }
  }

  else
  {
    v22 = 0;
    v24 = 0;
    if (referrerCopy)
    {
      goto LABEL_10;
    }
  }

  v25 = 0;
  v27 = 0;
LABEL_13:
  static UserGuide.url(book:topic:anchor:version:referrer:)(book, v34, topic, v17, anchor, v22, v24, v14, v25, v27);

  v28 = sub_1C014BC50();
  v29 = *(v28 - 8);
  v30 = (*(v29 + 48))(v14, 1, v28);
  v31 = 0;
  if (v30 != 1)
  {
    v32 = sub_1C014BBB0();
    (*(v29 + 8))(v14, v28);
    v31 = v32;
  }

  return v31;
}

- (NSArray)gradientColorStrings
{

  v2 = sub_1C014C3B0();

  return v2;
}

- (NSString)platform
{
  if (*(self + OBJC_IVAR___TPSUserGuide_platform + 8))
  {

    v2 = sub_1C014C200();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (NSString)topicIdentifier
{
  swift_getKeyPath();
  sub_1C011A644();
  selfCopy = self;
  sub_1C014BF00();

  v4 = selfCopy + OBJC_IVAR___TPSUserGuide__topicIdentifier;
  swift_beginAccess();
  v5 = *(v4 + 1);

  if (v5)
  {
    v6 = sub_1C014C200();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setTopicIdentifier:(id)identifier
{
  if (identifier)
  {
    v4 = sub_1C014C230();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  selfCopy = self;
  UserGuide.topicIdentifier.setter(v4, v6);
}

- (TPSUserGuide)initWithIdentifier:(id)identifier version:(id)version text:(id)text symbol:(id)symbol platform:(id)platform platformIndependent:(BOOL)independent gradientColorStrings:(id)strings
{
  v27 = sub_1C014C230();
  v13 = v12;
  if (version)
  {
    v14 = sub_1C014C230();
    v16 = v15;
    if (text)
    {
LABEL_3:
      v17 = sub_1C014C230();
      v19 = v18;
      goto LABEL_6;
    }
  }

  else
  {
    v14 = 0;
    v16 = 0;
    if (text)
    {
      goto LABEL_3;
    }
  }

  v17 = 0;
  v19 = 0;
LABEL_6:
  v20 = sub_1C014C230();
  v22 = v21;
  if (platform)
  {
    platform = sub_1C014C230();
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  v25 = sub_1C014C3C0();
  return UserGuide.init(identifier:version:text:symbol:platform:platformIndependent:gradientColorStrings:)(v27, v13, v14, v16, v17, v19, v20, v22, platform, v24, independent, v25);
}

- (TPSUserGuide)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)copyWithZone:(void *)zone
{
  selfCopy = self;
  UserGuide.copy(with:)(v6);

  __swift_project_boxed_opaque_existential_0(v6, v6[3]);
  v4 = sub_1C014C9E0();
  __swift_destroy_boxed_opaque_existential_1Tm(v6);
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  UserGuide.encode(with:)(coderCopy);
}

- (int64_t)hash
{
  v2 = *(self + OBJC_IVAR___TPSUserGuide_identifier);
  v3 = *(self + OBJC_IVAR___TPSUserGuide_identifier + 8);
  selfCopy = self;
  v5 = MEMORY[0x1C68D6B80](v2, v3);

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_1C014C6E0();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = UserGuide.isEqual(_:)(v8);

  sub_1C00F98F4(v8, &qword_1EBE06490, &qword_1C0155FA0);
  return v6 & 1;
}

@end