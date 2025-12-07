@interface NDOUniversalLinkConverter
+ (id)convertUrl:(id)url;
- (NDOUniversalLinkConverter)init;
@end

@implementation NDOUniversalLinkConverter

+ (id)convertUrl:(id)url
{
  v3 = sub_25BD79678();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBDBF18, &qword_25BD7C078);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v15 - v8;
  sub_25BD79658();
  static NDOUniversalLinkConverter.convertUrl(_:)(v6, v9);
  v10 = *(v4 + 8);
  v10(v6, v3);
  v11 = (*(v4 + 48))(v9, 1, v3);
  v12 = 0;
  if (v11 != 1)
  {
    v13 = sub_25BD79638();
    v10(v9, v3);
    v12 = v13;
  }

  return v12;
}

- (NDOUniversalLinkConverter)init
{
  v3.receiver = self;
  v3.super_class = NDOUniversalLinkConverter;
  return [(NDOUniversalLinkConverter *)&v3 init];
}

@end