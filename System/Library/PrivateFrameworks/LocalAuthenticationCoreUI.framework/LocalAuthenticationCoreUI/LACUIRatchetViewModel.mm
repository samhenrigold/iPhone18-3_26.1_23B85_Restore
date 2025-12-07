@interface LACUIRatchetViewModel
+ (id)mapError:(id)error;
- (BOOL)isInvalidated;
- (_TtC25LocalAuthenticationCoreUI21LACUIRatchetViewModel)init;
- (void)ratchetStateDidChange:(id)change;
- (void)setIsInvalidated:(BOOL)invalidated;
- (void)start;
- (void)stopWithReason:(id)reason invalidate:(BOOL)invalidate;
@end

@implementation LACUIRatchetViewModel

- (BOOL)isInvalidated
{
  v3 = OBJC_IVAR____TtC25LocalAuthenticationCoreUI21LACUIRatchetViewModel_isInvalidated;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setIsInvalidated:(BOOL)invalidated
{
  v5 = OBJC_IVAR____TtC25LocalAuthenticationCoreUI21LACUIRatchetViewModel_isInvalidated;
  swift_beginAccess();
  *(&self->super.isa + v5) = invalidated;
}

- (void)start
{
  selfCopy = self;
  LACUIRatchetViewModel.start()();
}

- (void)stopWithReason:(id)reason invalidate:(BOOL)invalidate
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15 - v7;
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  *(v13 + 32) = self;
  *(v13 + 40) = v9;
  *(v13 + 48) = v11;
  *(v13 + 56) = invalidate;
  selfCopy = self;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v8, &closure #1 in LACUIRatchetViewModel.stop(withReason:invalidate:)partial apply, v13);
}

+ (id)mapError:(id)error
{
  errorCopy = error;
  v5 = specialized static LACUIRatchetViewModel.mapError(_:)(error);

  if (v5)
  {
    v6 = _convertErrorToNSError(_:)();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (_TtC25LocalAuthenticationCoreUI21LACUIRatchetViewModel)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)ratchetStateDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  LACUIRatchetViewModel.ratchetStateDidChange(_:)(changeCopy);
}

@end