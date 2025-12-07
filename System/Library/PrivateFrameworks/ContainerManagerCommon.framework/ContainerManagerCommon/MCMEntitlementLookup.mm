@interface MCMEntitlementLookup
- (BOOL)isAllowedWithContainerConfig:(id)config identifier:(id)identifier part:(unint64_t)part partDomain:(id)domain operation:(unint64_t)operation access:(unint64_t)access;
- (BOOL)isAllowedWithContainerConfig:(id)config part:(unint64_t)part partDomain:(id)domain operation:(unint64_t)operation access:(unint64_t)access;
- (MCMEntitlementLookup)init;
- (MCMEntitlementLookup)initWithEntitlementData:(id)data containerConfigMap:(id)map;
- (NSDictionary)rawData;
- (id)contributingIdentifiersForContainerConfig:(id)config;
@end

@implementation MCMEntitlementLookup

- (BOOL)isAllowedWithContainerConfig:(id)config identifier:(id)identifier part:(unint64_t)part partDomain:(id)domain operation:(unint64_t)operation access:(unint64_t)access
{
  v12 = sub_1DF3B0DCC();
  v14 = v13;
  if (domain)
  {
    sub_1DF3B0DCC();
    domain = v15;
  }

  swift_unknownObjectRetain();
  selfCopy = self;
  v17 = sub_1DF2CF904(config, v12, v14, operation);
  swift_unknownObjectRelease();

  v14, v18, v19, v20, v21, v22, v23, v24;
  domain, v25, v26, v27, v28, v29, v30, v31;
  return v17 & 1;
}

- (NSDictionary)rawData
{
  v2 = *(self + OBJC_IVAR___MCMEntitlementLookup_rawData);

  v3 = sub_1DF3B0D9C();
  v2, v4, v5, v6, v7, v8, v9, v10;

  return v3;
}

- (MCMEntitlementLookup)initWithEntitlementData:(id)data containerConfigMap:(id)map
{
  v4 = sub_1DF3B0DAC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE30CE8, &qword_1DF3BD908);
  v5 = sub_1DF3B0DAC();
  return sub_1DF2DB9E0(v4, v5);
}

- (BOOL)isAllowedWithContainerConfig:(id)config part:(unint64_t)part partDomain:(id)domain operation:(unint64_t)operation access:(unint64_t)access
{
  if (domain)
  {
    sub_1DF3B0DCC();
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  swift_unknownObjectRetain();
  selfCopy = self;
  v13 = sub_1DF2DD330(config, operation);
  swift_unknownObjectRelease();

  v11, v14, v15, v16, v17, v18, v19, v20;
  return v13 & 1;
}

- (id)contributingIdentifiersForContainerConfig:(id)config
{
  swift_unknownObjectRetain();
  selfCopy = self;
  v6 = sub_1DF2DC104(config);
  swift_unknownObjectRelease();

  v7 = sub_1DF3B0E5C();
  v6, v8, v9, v10, v11, v12, v13, v14;

  return v7;
}

- (MCMEntitlementLookup)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end