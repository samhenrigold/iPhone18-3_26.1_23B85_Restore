@interface JSLegacyLocObject
- (NSString)identifier;
- (_TtC27AppStoreComponentsDaemonKit17JSLegacyLocObject)init;
- (id)decimal:(id)decimal :(int64_t)a4;
- (id)fileSize:(id)size;
- (id)formatDate:(id)date :(id)a4;
- (id)formattedCount:(id)count;
- (id)stringWithCount:(id)count :(int64_t)a4;
- (id)stringWithCounts:(id)counts :(id)a4;
@end

@implementation JSLegacyLocObject

- (NSString)identifier
{
  sub_22273740C();
  v2 = sub_22273916C();

  return v2;
}

- (id)stringWithCount:(id)count :(int64_t)a4
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013C58, &qword_222743620);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v18 - v7;
  sub_22273919C();
  __swift_project_boxed_opaque_existential_1((&self->super.isa + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit17JSLegacyLocObject_localizer), *&self->localizer[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit17JSLegacyLocObject_localizer + 16]);
  selfCopy = self;
  sub_2227390BC();

  v10 = OBJC_IVAR____TtC27AppStoreComponentsDaemonKit17JSLegacyLocObject_localeWithCalendarWithBagFixUp;
  v11 = sub_22273743C();
  v12 = *(v11 - 8);
  (*(v12 + 16))(v8, selfCopy + v10, v11);
  (*(v12 + 56))(v8, 0, 1, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013AF0, &unk_222743630);
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D83B88];
  *(v13 + 16) = xmmword_2227412F0;
  v15 = MEMORY[0x277D83C10];
  *(v13 + 56) = v14;
  *(v13 + 64) = v15;
  *(v13 + 32) = a4;
  sub_2227391BC();

  sub_222660468(v8, &qword_27D013C58, &qword_222743620);
  v16 = sub_22273916C();

  return v16;
}

- (id)stringWithCounts:(id)counts :(id)a4
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013C58, &qword_222743620);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v15 - v6;
  sub_22273919C();
  v8 = sub_22273937C();
  __swift_project_boxed_opaque_existential_1((&self->super.isa + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit17JSLegacyLocObject_localizer), *&self->localizer[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit17JSLegacyLocObject_localizer + 16]);
  selfCopy = self;
  sub_2227390BC();

  v10 = OBJC_IVAR____TtC27AppStoreComponentsDaemonKit17JSLegacyLocObject_localeWithCalendarWithBagFixUp;
  v11 = sub_22273743C();
  v12 = *(v11 - 8);
  (*(v12 + 16))(v7, selfCopy + v10, v11);
  (*(v12 + 56))(v7, 0, 1, v11);
  sub_2226B9C1C(v8);

  sub_2227391BC();

  sub_222660468(v7, &qword_27D013C58, &qword_222743620);
  v13 = sub_22273916C();

  return v13;
}

- (id)decimal:(id)decimal :(int64_t)a4
{
  selfCopy = self;
  decimalCopy = decimal;
  sub_2226B9F18(decimal, a4);
  v9 = v8;

  if (v9)
  {
    v10 = sub_22273916C();
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)fileSize:(id)size
{
  if (size)
  {
    sizeCopy = size;
    v4 = [objc_opt_self() stringFromByteCount:objc_msgSend(sizeCopy countStyle:{sel_longLongValue), 0}];
    sub_22273919C();

    v5 = sub_22273916C();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)formattedCount:(id)count
{
  selfCopy = self;
  countCopy = count;
  sub_2226BA180(count);
  v7 = v6;

  if (v7)
  {
    v8 = sub_22273916C();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)formatDate:(id)date :(id)a4
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0146D0, qword_222743270);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v19 - v7;
  v9 = sub_22273919C();
  v11 = v10;
  if (a4)
  {
    sub_22273739C();
    v12 = sub_2227373BC();
    (*(*(v12 - 8) + 56))(v8, 0, 1, v12);
  }

  else
  {
    v13 = sub_2227373BC();
    (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
  }

  selfCopy = self;
  sub_2226BAAFC(v9, v11, v8);
  v16 = v15;

  sub_222660468(v8, &unk_27D0146D0, qword_222743270);
  if (v16)
  {
    v17 = sub_22273916C();
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (_TtC27AppStoreComponentsDaemonKit17JSLegacyLocObject)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end