@interface LACUIDTOUtilities
+ (NSURL)dtoLearnMoreLinkURL;
+ (NSURL)dtoUnexpectedSecurityDelayRadarURL;
- (LACUIDTOUtilities)init;
@end

@implementation LACUIDTOUtilities

+ (NSURL)dtoLearnMoreLinkURL
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v13 - v3;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  URL.init(string:)();
  result = (*(v6 + 48))(v4, 1, v5);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    URL._bridgeToObjectiveC()(v10);
    v12 = v11;
    (*(v6 + 8))(v8, v5);

    return v12;
  }

  return result;
}

+ (NSURL)dtoUnexpectedSecurityDelayRadarURL
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static LACUIDTOUtilities.dtoUnexpectedSecurityDelayRadarURL.getter(v5);
  URL._bridgeToObjectiveC()(v6);
  v8 = v7;
  (*(v3 + 8))(v5, v2);

  return v8;
}

- (LACUIDTOUtilities)init
{
  v3.receiver = self;
  v3.super_class = LACUIDTOUtilities;
  return [(LACUIDTOUtilities *)&v3 init];
}

@end