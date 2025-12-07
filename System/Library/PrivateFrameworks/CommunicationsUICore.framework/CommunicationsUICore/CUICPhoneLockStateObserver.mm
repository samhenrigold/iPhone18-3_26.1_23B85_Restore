@interface CUICPhoneLockStateObserver
- (id)listenWith:(id)with;
- (void)dealloc;
@end

@implementation CUICPhoneLockStateObserver

- (id)listenWith:(id)with
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076AB0, &qword_1C2F78C20);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v18 - v6;
  v8 = _Block_copy(with);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = sub_1C2F768AC();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  sub_1C2F7688C();
  selfCopy = self;

  v12 = sub_1C2F7687C();
  v13 = swift_allocObject();
  v14 = MEMORY[0x1E69E85E0];
  v13[2] = v12;
  v13[3] = v14;
  v13[4] = selfCopy;
  v13[5] = sub_1C2F458F4;
  v13[6] = v9;
  v15 = sub_1C2F06F8C(0, 0, v7, &unk_1C2F7C458, v13);

  v18[1] = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076C58, &qword_1C2F7C3F8);
  v16 = sub_1C2F76F0C();

  return v16;
}

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR___CUICPhoneLockStateObserver_token;
  swift_beginAccess();
  LODWORD(v4) = *(&self->super.isa + v4);
  selfCopy = self;
  notify_cancel(v4);
  v6.receiver = selfCopy;
  v6.super_class = ObjectType;
  [(CUICPhoneLockStateObserver *)&v6 dealloc];
}

@end