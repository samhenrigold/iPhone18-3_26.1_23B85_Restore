@interface SBDEmbeddedDisplayProfile
+ (id)createProfile;
- (SBDEmbeddedDisplayProfile)init;
@end

@implementation SBDEmbeddedDisplayProfile

+ (id)createProfile
{
  v2 = sub_26B9DFE84();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - v7;
  v9 = sub_26B9DEA0C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280434058, &qword_26B9E0AA0);
  v10 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280434060, &qword_26B9E0AA8) - 8);
  v11 = (*(*v10 + 80) + 32) & ~*(*v10 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_26B9E0A90;
  v13 = v12 + v11;
  v14 = v10[14];
  sub_26B9DFD84();
  *(v13 + v14) = v9;
  sub_26B9DF89C(v12);
  swift_setDeallocating();
  sub_26B9DEFA8(v13);
  swift_deallocClassInstance();
  sub_26B9DFE74();
  sub_26B9DFFC4();
  (*(v3 + 16))(v6, v8, v2);
  v15 = sub_26B9DFFB4();
  (*(v3 + 8))(v8, v2);

  return v15;
}

- (SBDEmbeddedDisplayProfile)init
{
  v3.receiver = self;
  v3.super_class = SBDEmbeddedDisplayProfile;
  return [(SBDEmbeddedDisplayProfile *)&v3 init];
}

@end