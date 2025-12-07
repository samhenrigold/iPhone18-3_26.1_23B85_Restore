@interface CoreLocationAuthorizationProvider.Observer
- (_TtCC18SmartStackSettings33CoreLocationAuthorizationProvider8Observer)init;
- (void)locationManagerDidChangeAuthorization:(id)authorization;
@end

@implementation CoreLocationAuthorizationProvider.Observer

- (void)locationManagerDidChangeAuthorization:(id)authorization
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369340, &qword_26A09F530);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  v8 = sub_26A09DFF4();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v10 = *(&self->super.isa + OBJC_IVAR____TtCC18SmartStackSettings33CoreLocationAuthorizationProvider8Observer_authorizationChangedBlock);
  v9 = *&self->authorizationChangedBlock[OBJC_IVAR____TtCC18SmartStackSettings33CoreLocationAuthorizationProvider8Observer_authorizationChangedBlock];
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v10;
  v11[5] = v9;
  v11[6] = authorization;
  authorizationCopy = authorization;

  sub_26A06B90C(0, 0, v7, &unk_26A09FB78, v11);
}

- (_TtCC18SmartStackSettings33CoreLocationAuthorizationProvider8Observer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end