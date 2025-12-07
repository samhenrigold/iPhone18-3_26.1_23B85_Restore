@interface SecureAssetsPreinstalledBundle
- (SecureAssetsPreinstalledBundle)init;
- (id)assetVersion:(id)version;
- (id)resourcePathURL:(id)l;
@end

@implementation SecureAssetsPreinstalledBundle

- (id)resourcePathURL:(id)l
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE59398, &qword_247996518);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v17 - v5;
  v7 = sub_247994E84();
  v9 = v8;
  selfCopy = self;
  SecureAssetsPreinstalledBundle.resourcePathURLForLocale(locale:)(v7, v9, v6);

  v11 = sub_247994C14();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v6, 1, v11);
  v14 = 0;
  if (v13 != 1)
  {
    v15 = sub_247994BB4();
    (*(v12 + 8))(v6, v11);
    v14 = v15;
  }

  return v14;
}

- (id)assetVersion:(id)version
{
  v4 = sub_247994E84();
  v6 = v5;
  selfCopy = self;
  v8._countAndFlagsBits = v4;
  v8._object = v6;
  object = SecureAssetsPreinstalledBundle.assetVersionForLocale(locale:)(v8).value._object;

  if (object)
  {
    v10 = sub_247994E74();
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (SecureAssetsPreinstalledBundle)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end