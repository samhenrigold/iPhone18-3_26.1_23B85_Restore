@interface ASManagedConfiguration
+ (id)loadFromDiskWithPlistURL:(id)l error:(id *)error;
- (BOOL)isConfiguredForEnterpriseAttestationForRelyingParty:(id)party;
- (_TtC26AuthenticationServicesCore22ASManagedConfiguration)init;
- (id)entepriseAttestationIdentityPersistentReferenceForRelyingParty:(id)party;
@end

@implementation ASManagedConfiguration

+ (id)loadFromDiskWithPlistURL:(id)l error:(id *)error
{
  v5 = sub_1C2170024();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF251D0, &qword_1C2176940);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v14[-v10];
  if (l)
  {
    sub_1C216FFD4();
    (*(v6 + 32))(v11, v8, v5);
    (*(v6 + 56))(v11, 0, 1, v5);
  }

  else
  {
    (*(v6 + 56))(v11, 1, 1, v5);
  }

  swift_getObjCClassMetadata();
  v12 = static ASManagedConfiguration.loadFromDisk(plistURL:)(v11);
  sub_1C20EB498(v11, &qword_1EBF251D0, &qword_1C2176940);

  return v12;
}

- (BOOL)isConfiguredForEnterpriseAttestationForRelyingParty:(id)party
{
  v4 = sub_1C2170914();
  v6 = v5;
  selfCopy = self;
  LOBYTE(v4) = sub_1C214A868(v4, v6);

  return v4 & 1;
}

- (id)entepriseAttestationIdentityPersistentReferenceForRelyingParty:(id)party
{
  v4 = sub_1C2170914();
  v6 = v5;
  selfCopy = self;
  v8 = sub_1C214ABEC(v4, v6);
  v10 = v9;

  if (v10 >> 60 == 15)
  {
    v11 = 0;
  }

  else
  {
    v12 = sub_1C2170154();
    sub_1C20B23C8(v8, v10);
    v11 = v12;
  }

  return v11;
}

- (_TtC26AuthenticationServicesCore22ASManagedConfiguration)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end