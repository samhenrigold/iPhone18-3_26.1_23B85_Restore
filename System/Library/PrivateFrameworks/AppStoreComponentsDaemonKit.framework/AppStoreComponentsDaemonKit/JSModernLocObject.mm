@interface JSModernLocObject
- (NSString)identifier;
- (_TtC27AppStoreComponentsDaemonKit17JSModernLocObject)init;
- (id)arcadeWordmarkAssetName;
- (id)decimal:(id)decimal :(int64_t)a4;
- (id)fileSize:(id)size;
- (id)formatDate:(id)date :(id)a4;
- (id)formattedCount:(id)count;
- (id)relativeDate:(id)date;
- (id)stringWithCount:(id)count :(int64_t)a4;
- (id)stringWithCounts:(id)counts :(id)a4;
- (id)timeAgo:(id)ago;
@end

@implementation JSModernLocObject

- (id)arcadeWordmarkAssetName
{
  v0 = sub_22273916C();

  return v0;
}

- (NSString)identifier
{
  v3 = sub_22273743C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((&self->super.isa + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit17JSModernLocObject_localizer), *&self->localizer[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit17JSModernLocObject_localizer + 16]);
  selfCopy = self;
  sub_22273906C();
  sub_22273740C();

  (*(v4 + 8))(v6, v3);
  v8 = sub_22273916C();

  return v8;
}

- (id)stringWithCount:(id)count :(int64_t)a4
{
  sub_22273919C();
  __swift_project_boxed_opaque_existential_1((&self->super.isa + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit17JSModernLocObject_localizer), *&self->localizer[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit17JSModernLocObject_localizer + 16]);
  selfCopy = self;
  sub_2227390CC();

  v6 = sub_22273916C();

  return v6;
}

- (id)stringWithCounts:(id)counts :(id)a4
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013C58, &qword_222743620);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  sub_22273919C();
  v8 = sub_22273937C();
  v9 = (&self->super.isa + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit17JSModernLocObject_localizer);
  __swift_project_boxed_opaque_existential_1((&self->super.isa + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit17JSModernLocObject_localizer), *&self->localizer[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit17JSModernLocObject_localizer + 16]);
  selfCopy = self;
  sub_2227390BC();

  __swift_project_boxed_opaque_existential_1(v9, v9[3]);
  sub_22273906C();
  v11 = sub_22273743C();
  (*(*(v11 - 8) + 56))(v7, 0, 1, v11);
  sub_2226B9C1C(v8);

  sub_2227391BC();

  sub_222660468(v7, &qword_27D013C58, &qword_222743620);
  v12 = sub_22273916C();

  return v12;
}

- (id)decimal:(id)decimal :(int64_t)a4
{
  v6 = sub_22273866C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (decimal)
  {
    __swift_project_boxed_opaque_existential_1((&self->super.isa + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit17JSModernLocObject_localizer), *&self->localizer[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit17JSModernLocObject_localizer + 16]);
    (*(v7 + 104))(v9, *MEMORY[0x277D21E80], v6);
    selfCopy = self;
    decimalCopy = decimal;
    sub_22273907C();

    (*(v7 + 8))(v9, v6);
    v12 = sub_22273916C();
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)fileSize:(id)size
{
  sizeCopy = size;
  if (size)
  {
    selfCopy = self;
    v5 = sizeCopy;
    [v5 doubleValue];
    __swift_project_boxed_opaque_existential_1((&selfCopy->super.isa + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit17JSModernLocObject_localizer), *&selfCopy->localizer[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit17JSModernLocObject_localizer + 16]);
    sub_22273908C();

    sizeCopy = sub_22273916C();
  }

  return sizeCopy;
}

- (id)formattedCount:(id)count
{
  countCopy = count;
  if (count)
  {
    selfCopy = self;
    v5 = countCopy;
    [v5 integerValue];
    __swift_project_boxed_opaque_existential_1((&selfCopy->super.isa + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit17JSModernLocObject_localizer), *&selfCopy->localizer[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit17JSModernLocObject_localizer + 16]);
    sub_22273905C();

    countCopy = sub_22273916C();
  }

  return countCopy;
}

- (id)timeAgo:(id)ago
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0146D0, qword_222743270);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  if (ago)
  {
    sub_22273739C();
    v7 = sub_2227373BC();
    (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  }

  else
  {
    v8 = sub_2227373BC();
    (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  }

  sub_2226B7C58();
  v9 = sub_2227396EC();
  v10 = sub_2227396FC();

  sub_22273968C();
  v12 = v11;

  sub_222660468(v6, &unk_27D0146D0, qword_222743270);
  if (v12)
  {
    v13 = sub_22273916C();
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)formatDate:(id)date :(id)a4
{
  v6 = sub_2227373BC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0146D0, qword_222743270);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v20 - v14;
  sub_22273919C();
  if (a4)
  {
    sub_22273739C();
    (*(v7 + 56))(v15, 0, 1, v6);
  }

  else
  {
    (*(v7 + 56))(v15, 1, 1, v6);
  }

  sub_2226BD5F4(v15, v12);
  if ((*(v7 + 48))(v12, 1, v6) == 1)
  {

    sub_222660468(v15, &unk_27D0146D0, qword_222743270);
    sub_222660468(v12, &unk_27D0146D0, qword_222743270);
    v16 = 0;
  }

  else
  {
    (*(v7 + 32))(v9, v12, v6);
    __swift_project_boxed_opaque_existential_1((&self->super.isa + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit17JSModernLocObject_localizer), *&self->localizer[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit17JSModernLocObject_localizer + 16]);
    selfCopy = self;
    sub_2227390AC();

    (*(v7 + 8))(v9, v6);
    sub_222660468(v15, &unk_27D0146D0, qword_222743270);
    v18 = sub_22273916C();

    v16 = v18;
  }

  return v16;
}

- (id)relativeDate:(id)date
{
  v5 = sub_2227373BC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0146D0, qword_222743270);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v19 - v13;
  if (date)
  {
    sub_22273739C();
    (*(v6 + 56))(v14, 0, 1, v5);
  }

  else
  {
    (*(v6 + 56))(&v19 - v13, 1, 1, v5);
  }

  sub_2226BD5F4(v14, v11);
  if ((*(v6 + 48))(v11, 1, v5) == 1)
  {
    sub_222660468(v14, &unk_27D0146D0, qword_222743270);
    sub_222660468(v11, &unk_27D0146D0, qword_222743270);
    v15 = 0;
  }

  else
  {
    (*(v6 + 32))(v8, v11, v5);
    __swift_project_boxed_opaque_existential_1((&self->super.isa + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit17JSModernLocObject_localizer), *&self->localizer[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit17JSModernLocObject_localizer + 16]);
    selfCopy = self;
    sub_22273909C();

    (*(v6 + 8))(v8, v5);
    sub_222660468(v14, &unk_27D0146D0, qword_222743270);
    v17 = sub_22273916C();

    v15 = v17;
  }

  return v15;
}

- (_TtC27AppStoreComponentsDaemonKit17JSModernLocObject)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end