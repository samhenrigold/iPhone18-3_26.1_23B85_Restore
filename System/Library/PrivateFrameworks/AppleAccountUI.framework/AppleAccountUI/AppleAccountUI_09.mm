uint64_t sub_1C5520974@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for PendingBirthdayModel(0);
  result = sub_1C5594E34();
  *a2 = result;
  return result;
}

uint64_t sub_1C55209B0(uint64_t a1)
{
  v26 = a1;
  v22 = MEMORY[0x1E69E85E0];
  v25 = &unk_1C55B5E80;
  v28 = 0;
  v27 = 0;
  v19 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E860, &qword_1C55AE2A0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v26, v2, v3, v4);
  v24 = &v19 - v19;
  v28 = v5;
  v27 = v1;
  v23 = 0;
  v6 = sub_1C5596814();
  (*(*(v6 - 8) + 56))(v24, 1);
  MEMORY[0x1E69E5928](v20, v7);
  MEMORY[0x1E69E5928](v26, v8);
  sub_1C55967E4();
  v9 = sub_1C55967D4();
  v10 = v20;
  v21 = v9;
  v11 = swift_allocObject();
  v12 = v22;
  v13 = v23;
  v14 = v24;
  v15 = v25;
  v16 = v11;
  v17 = v26;
  v16[2] = v21;
  v16[3] = v12;
  v16[4] = v10;
  v16[5] = v17;
  sub_1C54061EC(v13, v13, v14, v15, v16, MEMORY[0x1E69E7CA8] + 8);
}

uint64_t sub_1C5520B54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a5;
  v5[5] = a4;
  v5[2] = v5;
  v5[3] = 0;
  v5[4] = 0;
  v5[3] = a4;
  v5[4] = a5;
  sub_1C55967E4();
  v5[7] = sub_1C55967D4();
  sub_1C55967A4();

  return MEMORY[0x1EEE6DFA0](sub_1C5520C1C);
}

uint64_t sub_1C5520C1C()
{
  v1 = v0[6];
  v2 = v0[5];
  v0[2] = v0;
  (*((*v2 & *MEMORY[0x1E69E7D40]) + 0xD0))(v1);

  v3 = *(v0[2] + 8);

  return v3();
}

id sub_1C5520D6C(uint64_t a1)
{
  v3 = sub_1C5596864();
  v4 = [v2 initWithAccountTypes_delegate_];
  swift_unknownObjectRelease();
  MEMORY[0x1E69E5920](v3);

  return v4;
}

uint64_t sub_1C5520E30(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_1C5405B1C;

  return sub_1C5520B54(a1, v6, v7, v8, v9);
}

unint64_t sub_1C5520F30(uint64_t a1)
{
  updated = sub_1C5521020(319);
  if (v1 <= 0x3F)
  {
    updated = swift_updateClassMetadata2();
    if (!updated)
    {
      return 0;
    }
  }

  return updated;
}

unint64_t sub_1C5521020(uint64_t a1)
{
  v5 = qword_1EC15E488;
  if (!qword_1EC15E488)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15E370, &qword_1C55AE070);
    v4 = sub_1C5594EA4();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_1EC15E488);
      return v2;
    }
  }

  return v5;
}

uint64_t sub_1C55210C4()
{
  swift_beginAccess();
  v2 = *(v0 + 16);
  swift_endAccess();
  return v2 & 1;
}

uint64_t sub_1C5521114(char a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
  return swift_endAccess();
}

uint64_t sub_1C55211BC()
{
  swift_getKeyPath();
  (*(*v0 + 240))();

  swift_beginAccess();
  v3 = *(v2 + 16);
  swift_endAccess();
  return v3 & 1;
}

uint64_t sub_1C5521268(int a1)
{
  v19 = a1;
  v15 = a1;
  v24 = 0;
  v16 = 0;
  v25 = a1;
  v17 = &v23;
  swift_beginAccess();
  v18 = *(v1 + 16);
  swift_endAccess();
  v22 = v18;
  v21 = v19;
  if (sub_1C542908C(&v22, &v21))
  {
    v2 = v14;
    v3 = v16;
    KeyPath = swift_getKeyPath();
    v10 = KeyPath;

    v12 = v8;
    v6 = MEMORY[0x1EEE9AC00](KeyPath, v8, v4, v5);
    (*(*v2 + 248))(v6);
    v13 = v3;

    return v13;
  }

  else
  {
    v8[1] = v20;
    swift_beginAccess();
    *(v14 + 16) = v15 & 1;
    swift_endAccess();
    return v16;
  }
}

uint64_t sub_1C5521454(uint64_t a1, char a2)
{
  swift_beginAccess();
  *(a1 + 16) = a2;
  return swift_endAccess();
}

void (*sub_1C55214CC(void *a1))(uint64_t *a1, char a2)
{
  v7 = __swift_coroFrameAllocStub(0x40uLL, 13268);
  *a1 = v7;
  v7[5] = v1;
  v6 = sub_1C5594B24();
  v4 = *(v6 - 8);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64), 13268);
  v7[6] = v5;
  swift_getKeyPath();
  (*(*v1 + 240))();

  (*(v4 + 16))(v5, v3 + OBJC_IVAR____TtC14AppleAccountUI33BirthdayUpdatePendingTipViewModel___observationRegistrar, v6);
  v7[4] = v3;
  swift_getKeyPath();
  sub_1C552281C();
  sub_1C5594B04();

  (*(v4 + 8))(v5, v6);
  v7[7] = sub_1C5521160();
  return sub_1C55216A4;
}

void sub_1C55216A4(uint64_t *a1, char a2)
{
  v6 = *a1;
  if (a2)
  {
    v3 = *(v6 + 48);
    v2 = *(v6 + 40);
    (*(v6 + 56))(v6, 0);
    sub_1C5521760(v2);
    free(v3);
  }

  else
  {
    v5 = *(v6 + 48);
    v4 = *(v6 + 40);
    (*(v6 + 56))(v6, 0);
    sub_1C5521760(v4);
    free(v5);
  }

  free(v6);
}

uint64_t sub_1C5521760(uint64_t a1)
{
  v7 = a1;
  v15 = 0;
  v13 = sub_1C5594B24();
  v10 = *(v13 - 8);
  v11 = v13 - 8;
  v6 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v13, v1, v13, v2);
  v12 = &v5 - v6;
  v15 = v7;
  (*(v10 + 16))(&v5 - v6, v7 + OBJC_IVAR____TtC14AppleAccountUI33BirthdayUpdatePendingTipViewModel___observationRegistrar, v3);
  v8 = &v14;
  v14 = v7;
  KeyPath = swift_getKeyPath();
  sub_1C552281C();
  sub_1C5594AF4();

  return (*(v10 + 8))(v12, v13);
}

double sub_1C55218EC()
{
  swift_beginAccess();

  swift_endAccess();
  sub_1C5594ED4();

  return v1;
}

uint64_t sub_1C5521960(double a1)
{
  swift_beginAccess();

  swift_endAccess();
  sub_1C5594EE4();
}

uint64_t (*sub_1C55219D4(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x38uLL, 23575);
  *a1 = v3;
  swift_beginAccess();
  v3[6] = *(v1 + 24);

  swift_endAccess();
  sub_1C5594ED4();
  return sub_1C5521A88;
}

void sub_1C5521A88(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v2[4] = v2[3];
  }

  else
  {
    v2[5] = v2[3];
  }

  sub_1C5594EE4();

  free(v2);
}

double sub_1C5521B24()
{
  swift_beginAccess();

  swift_endAccess();
  sub_1C5594EF4();

  return v1;
}

uint64_t sub_1C5521BB0()
{
  swift_beginAccess();
  v2 = *(v0 + 24);

  swift_endAccess();
  return v2;
}

uint64_t sub_1C5521C00(uint64_t a1)
{

  swift_beginAccess();
  *(v1 + 24) = a1;

  swift_endAccess();
}

BOOL sub_1C5521C78()
{
  v33 = 0;
  v32 = 0.0;
  v29 = 0.0;
  v14 = sub_1C5594924();
  v11 = *(v14 - 8);
  v12 = v14 - 8;
  v10 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v14, v0, v1, v2);
  v13 = &v7 - v10;
  v33 = v3;
  sub_1C5594914();
  sub_1C55948F4();
  v4 = v25;
  v18 = v5;
  v32 = v5;
  (*(v11 + 8))(v13, v14);
  v15 = &v31;
  v19 = 32;
  v20 = 0;
  swift_beginAccess();
  v16 = *(v4 + 24);

  swift_endAccess();
  v23 = MEMORY[0x1E69E63B0];
  sub_1C5594ED4();
  v17 = v30;

  v21 = v18 - v17;
  v29 = v18 - v17;
  v22 = &v28;
  swift_beginAccess();
  v24 = *(v4 + 24);

  swift_endAccess();
  sub_1C5594ED4();
  v26 = v27;

  v9 = v26 == 0.0 || *(v25 + 32) < v21;
  v8 = v9;

  return v8;
}

double sub_1C5521E74()
{
  v17 = 0;
  v11 = sub_1C5594924();
  v8 = *(v11 - 8);
  v9 = v11 - 8;
  v7[0] = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v11, v0, v1, v2);
  v10 = v7 - v7[0];
  v17 = v3;
  sub_1C5594914();
  sub_1C55948F4();
  v4 = v7[1];
  v13 = v5;
  (*(v8 + 8))(v10, v11);
  v12 = &v16;
  swift_beginAccess();
  v14 = *(v4 + 24);

  swift_endAccess();
  v15 = v13;
  sub_1C5594EE4();

  return sub_1C5522074();
}

double sub_1C5522074()
{
  v2 = [objc_opt_self() standardUserDefaults];
  swift_beginAccess();

  swift_endAccess();
  sub_1C5594ED4();

  sub_1C55965F4("birthdayTipLastPopDate", 22, 1);
  v1 = sub_1C5596554();

  [v2 setDouble:v1 forKey:v3];
  MEMORY[0x1E69E5920](v1);
  *&result = MEMORY[0x1E69E5920](v2).n128_u64[0];
  return result;
}

uint64_t sub_1C5522180()
{
  v12 = &unk_1C55B5F58;
  v14 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E860, &qword_1C55AE2A0);
  v9 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1, v2, v3, v4);
  v11 = &v9 - v9;
  v14 = v0;
  v10 = 0;
  v5 = sub_1C5596814();
  (*(*(v5 - 8) + 56))(v11, 1);
  v6 = swift_allocObject();
  v13 = v6;
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E500, &qword_1C55B5F60);
  sub_1C54061EC(v10, v10, v11, v12, v13, v7);
}

uint64_t sub_1C55222BC(uint64_t a1)
{
  *(v1 + 24) = a1;
  *(v1 + 16) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1C55222E8);
}

uint64_t sub_1C55222E8()
{
  *(v0 + 16) = v0;
  sub_1C54C3530();
  sub_1C5594E04();
  v3 = *(v0 + 24);

  *v3 = 0;
  v1 = *(*(v0 + 16) + 8);

  return v1();
}

uint64_t sub_1C55223F8@<X0>(uint64_t a1@<X8>)
{
  v4 = OBJC_IVAR____TtC14AppleAccountUI33BirthdayUpdatePendingTipViewModel___observationRegistrar;
  v2 = sub_1C5594B24();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_1C5522464(void *a1)
{
  v9 = a1;
  v18 = 0;
  v16 = 0;
  v7 = *a1;
  v14 = sub_1C5594B24();
  v11 = *(v14 - 8);
  v12 = v14 - 8;
  v3 = MEMORY[0x1EEE9AC00](v9, v1, v14, v2);
  v13 = &v7 - v4;
  v18 = v5;
  v17 = *(v7 + *MEMORY[0x1E69E77B0] + 8);
  v16 = v8;
  (*(v11 + 16))(&v7 - v4, v8 + OBJC_IVAR____TtC14AppleAccountUI33BirthdayUpdatePendingTipViewModel___observationRegistrar, v3);
  v10 = &v15;
  v15 = v8;
  sub_1C552281C();
  sub_1C5594AE4();
  return (*(v11 + 8))(v13, v14);
}

uint64_t sub_1C55225D4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v19 = a5;
  v20 = a1;
  v21 = a2;
  v22 = a3;
  v23 = a4;
  v33 = 0;
  v30 = 0;
  v31 = 0;
  v29 = 0;
  v34 = a4;
  v15 = *a1;
  v13 = sub_1C5594B24();
  v16 = *(v13 - 8);
  v14 = v13 - 8;
  v6 = MEMORY[0x1EEE9AC00](v20, v21, v13, v5);
  v17 = v12 - v7;
  v33 = v8;
  v32 = *(v15 + *MEMORY[0x1E69E77B0] + 8);
  v30 = v9;
  v31 = v22;
  v29 = v18;
  (*(v16 + 16))(v12 - v7, v18 + OBJC_IVAR____TtC14AppleAccountUI33BirthdayUpdatePendingTipViewModel___observationRegistrar, v6);
  v25 = &v28;
  v28 = v18;
  sub_1C552281C();
  v10 = v24;
  sub_1C5594AD4();
  v26 = v10;
  v27 = v10;
  if (v10)
  {
    v12[1] = v27;
  }

  return (*(v16 + 8))(v17, v13);
}

unint64_t sub_1C552281C()
{
  v2 = qword_1EC15E4F8;
  if (!qword_1EC15E4F8)
  {
    type metadata accessor for BirthdayUpdatePendingTipViewModel(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15E4F8);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for BirthdayUpdatePendingTipViewModel(uint64_t a1)
{
  v2 = qword_1EC1682D0;
  if (!qword_1EC1682D0)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t sub_1C5522910(uint64_t a1)
{
  v4 = v1;
  *(v1 + 16) = v1;
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = sub_1C5405B1C;

  return sub_1C55222BC(a1);
}

uint64_t sub_1C55229DC()
{
  sub_1C5410D10((v0 + 24));
  v3 = OBJC_IVAR____TtC14AppleAccountUI33BirthdayUpdatePendingTipViewModel___observationRegistrar;
  v1 = sub_1C5594B24();
  (*(*(v1 - 8) + 8))(v0 + v3);
  return v4;
}

uint64_t sub_1C5522AFC()
{
  sub_1C541E120(0, (v0 + 16));
  *(v0 + 24) = sub_1C552189C(0.0);
  *(v0 + 32) = 0x408C200000000000;
  sub_1C5594B14();
  return v2;
}

uint64_t sub_1C5522BAC(uint64_t a1)
{
  updated = sub_1C5594B24();
  if (v1 <= 0x3F)
  {
    updated = swift_updateClassMetadata2();
    if (!updated)
    {
      return 0;
    }
  }

  return updated;
}

unint64_t sub_1C5522CD8()
{
  v2 = qword_1EC159F38;
  if (!qword_1EC159F38)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EC159F38);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1C5522D3C()
{
  swift_beginAccess();
  v3 = *(v0 + 16);
  MEMORY[0x1E69E5928](v3, v1);
  swift_endAccess();
  return v3;
}

double sub_1C5522D94(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1E69E5928](a1, a2);
  swift_beginAccess();
  v3 = *(v2 + 16);
  *(v2 + 16) = a1;
  MEMORY[0x1E69E5920](v3);
  swift_endAccess();
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

uint64_t sub_1C5522E0C()
{
  swift_getKeyPath();
  (*(*v0 + 192))();

  swift_beginAccess();
  v4 = *(v3 + 16);
  MEMORY[0x1E69E5928](v4, v1);
  swift_endAccess();
  return v4;
}

uint64_t sub_1C5522EC0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 144))(v2);
}

uint64_t sub_1C5522F40(void *a1, uint64_t *a2)
{
  v3 = *a1;
  MEMORY[0x1E69E5928](*a1, a2);
  v5 = *a2;

  (*(*v5 + 152))(v3);
}

void sub_1C5522FE0(void *a1)
{
  v22 = a1;
  v21 = 0;
  v28 = 0;
  v19 = 0;
  v29 = a1;
  v20 = &v27;
  swift_beginAccess();
  v24 = *(v1 + 16);
  v2 = v24;
  swift_endAccess();
  v23 = sub_1C5522CD8();
  sub_1C5526888();
  v25 = sub_1C5429BE8(v24, v22, v23);

  if (v25)
  {
    v3 = v18;
    v4 = v19;
    KeyPath = swift_getKeyPath();
    v14 = KeyPath;

    v5 = v22;
    v16 = v12;
    v8 = MEMORY[0x1EEE9AC00](KeyPath, v12, v6, v7);
    (*(*v3 + 200))(v8);
    v17 = v4;

    v13 = v17;
  }

  else
  {
    v9 = v22;
    v10 = v22;
    v12[1] = &v26;
    swift_beginAccess();
    v11 = *(v18 + 16);
    *(v18 + 16) = v22;

    swift_endAccess();
    v13 = v19;
  }
}

double sub_1C5523208(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1E69E5928](a2, a2);
  MEMORY[0x1E69E5928](a2, v2);
  swift_beginAccess();
  v3 = *(a1 + 16);
  *(a1 + 16) = a2;
  MEMORY[0x1E69E5920](v3);
  swift_endAccess();
  *&result = MEMORY[0x1E69E5920](a2).n128_u64[0];
  return result;
}

void (*sub_1C55232C0(void *a1))(uint64_t *a1, char a2)
{
  v7 = __swift_coroFrameAllocStub(0x40uLL, 25389);
  *a1 = v7;
  v7[5] = v1;
  v6 = sub_1C5594B24();
  v4 = *(v6 - 8);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64), 25389);
  v7[6] = v5;
  swift_getKeyPath();
  (*(*v1 + 192))();

  (*(v4 + 16))(v5, v3 + OBJC_IVAR____TtC14AppleAccountUI30ProfilePictureElementViewModel___observationRegistrar, v6);
  v7[4] = v3;
  swift_getKeyPath();
  sub_1C5526934();
  sub_1C5594B04();

  (*(v4 + 8))(v5, v6);
  v7[7] = sub_1C5521160();
  return sub_1C5523498;
}

void sub_1C5523498(uint64_t *a1, char a2)
{
  v6 = *a1;
  if (a2)
  {
    v3 = *(v6 + 48);
    v2 = *(v6 + 40);
    (*(v6 + 56))(v6, 0);
    sub_1C5523554(v2);
    free(v3);
  }

  else
  {
    v5 = *(v6 + 48);
    v4 = *(v6 + 40);
    (*(v6 + 56))(v6, 0);
    sub_1C5523554(v4);
    free(v5);
  }

  free(v6);
}

uint64_t sub_1C5523554(uint64_t a1)
{
  v7 = a1;
  v15 = 0;
  v13 = sub_1C5594B24();
  v10 = *(v13 - 8);
  v11 = v13 - 8;
  v6 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v13, v1, v13, v2);
  v12 = &v5 - v6;
  v15 = v7;
  (*(v10 + 16))(&v5 - v6, v7 + OBJC_IVAR____TtC14AppleAccountUI30ProfilePictureElementViewModel___observationRegistrar, v3);
  v8 = &v14;
  v14 = v7;
  KeyPath = swift_getKeyPath();
  sub_1C5526934();
  sub_1C5594AF4();

  return (*(v10 + 8))(v12, v13);
}

uint64_t sub_1C5523690(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 24);
  MEMORY[0x1E69E5928](v4, a2);
  return v4;
}

uint64_t sub_1C55236C4(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 32);
  MEMORY[0x1E69E5928](v4, a2);
  return v4;
}

uint64_t sub_1C55236F8(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 40);
  MEMORY[0x1E69E5928](v4, a2);
  return v4;
}

id sub_1C552372C()
{
  v1 = [objc_opt_self() defaultStore];
  if (v1)
  {
    return v1;
  }

  sub_1C54888D0();
  return sub_1C5404B48();
}

uint64_t *sub_1C552381C(uint64_t a1, void *a2, uint64_t a3)
{
  v19 = a1;
  v18 = a2;
  v17 = a3;
  v16 = v3;
  sub_1C5522CD8();
  v4 = sub_1C5404B48();
  sub_1C5421A5C(v4, *v10, v10 + 2);
  sub_1C5594B14();
  MEMORY[0x1E69E5928](a1, v5);
  v10[3] = a1;
  MEMORY[0x1E69E5928](a2, v6);
  v10[4] = a2;
  MEMORY[0x1E69E5928](a3, a2);
  v14 = a3;
  MEMORY[0x1E69E5928](a1, v7);
  MEMORY[0x1E69E5928](a2, v8);
  if (a3)
  {
    v15 = v14;
  }

  else
  {
    v15 = sub_1C5523A00(a1, a2);
  }

  MEMORY[0x1E69E5920](a1);
  MEMORY[0x1E69E5920](a2);
  v10[5] = v15;
  MEMORY[0x1E69E5920](a3);
  MEMORY[0x1E69E5920](a2);
  MEMORY[0x1E69E5920](a1);
  return v10;
}

id sub_1C5523A00(uint64_t a1, void *a2)
{
  v87 = a2;
  v86 = a1;
  v84 = 0;
  v109 = 0;
  v108 = 0;
  v107 = 0;
  v85 = 0;
  v102 = 0;
  v101 = 0;
  v96 = 0;
  v88 = sub_1C5594C74();
  v89 = *(v88 - 8);
  v90 = v89;
  v91 = *(v89 + 64);
  MEMORY[0x1EEE9AC00](v87, v88, v86, v3);
  v93 = (v91 + 15) & 0xFFFFFFFFFFFFFFF0;
  v92 = &v31 - v93;
  v7 = MEMORY[0x1EEE9AC00](v4, &v31 - v93, v5, v6);
  v94 = &v31 - v93;
  v109 = v8;
  v108 = v9;
  v107 = v2;
  v95 = [v9 aida:v7 accountForiCloudAccount:?];
  if (v95)
  {
    v83 = v95;
    v77 = v95;
    v102 = v95;
    v80 = 0;
    sub_1C5500480();
    v10 = v87;
    v11 = v77;
    v78 = *MEMORY[0x1E698B7C0];
    v12 = v78;
    v13 = sub_1C5596574();
    v81 = sub_1C54FEA68(v87, v77, v13, v14);
    v79 = v81;

    v101 = v81;
    sub_1C54118E0();
    v15 = v81;
    v82 = sub_1C54FEAC0(v81);
    if (v82)
    {
      v76 = v82;
      v96 = v82;
      v73 = v82;

      v74 = v73;
      v75 = v85;
    }

    else
    {
      v16 = v94;
      v17 = sub_1C54B05F8();
      (*(v90 + 16))(v16, v17, v88);
      v71 = sub_1C5594C54();
      v68 = v71;
      v70 = sub_1C5596954();
      v69 = v70;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0, &qword_1C55ADF60);
      v72 = sub_1C5596E04();
      if (os_log_type_enabled(v71, v70))
      {
        v18 = v85;
        v59 = sub_1C5596A74();
        v55 = v59;
        v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940, qword_1C55ADF70);
        v57 = 0;
        v60 = sub_1C5419DC0(0, v56, v56);
        v58 = v60;
        v61 = sub_1C5419DC0(v57, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
        v100 = v59;
        v99 = v60;
        v98 = v61;
        v62 = 0;
        v63 = &v100;
        sub_1C5419E14(0, &v100);
        sub_1C5419E14(v62, v63);
        v97 = v72;
        v64 = &v31;
        MEMORY[0x1EEE9AC00](&v31, v19, v20, v21);
        v65 = &v31 - 6;
        *(&v31 - 4) = v22;
        *(&v31 - 3) = &v99;
        *(&v31 - 2) = &v98;
        v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0, &unk_1C55AE2C0);
        sub_1C5419F0C();
        sub_1C55966B4();
        v67 = v18;
        if (v18)
        {
          __break(1u);
        }

        else
        {
          _os_log_impl(&dword_1C5355000, v68, v69, "Failed to create profile picture store.", v55, 2u);
          v53 = 0;
          sub_1C5419E74(v58, 0, v56);
          sub_1C5419E74(v61, v53, MEMORY[0x1E69E7CA0] + 8);
          sub_1C5596A54();

          v54 = v67;
        }
      }

      else
      {

        v54 = v85;
      }

      v52 = v54;

      (*(v90 + 8))(v94, v88);
      v74 = 0;
      v75 = v52;
    }
  }

  else
  {
    v23 = v92;
    v24 = sub_1C54B05F8();
    (*(v90 + 16))(v23, v24, v88);
    v50 = sub_1C5594C54();
    v47 = v50;
    v49 = sub_1C5596954();
    v48 = v49;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0, &qword_1C55ADF60);
    v51 = sub_1C5596E04();
    if (os_log_type_enabled(v50, v49))
    {
      v25 = v85;
      v38 = sub_1C5596A74();
      v34 = v38;
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940, qword_1C55ADF70);
      v36 = 0;
      v39 = sub_1C5419DC0(0, v35, v35);
      v37 = v39;
      v40 = sub_1C5419DC0(v36, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v106 = v38;
      v105 = v39;
      v104 = v40;
      v41 = 0;
      v42 = &v106;
      sub_1C5419E14(0, &v106);
      sub_1C5419E14(v41, v42);
      v103 = v51;
      v43 = &v31;
      MEMORY[0x1EEE9AC00](&v31, v26, v27, v28);
      v44 = &v31 - 6;
      *(&v31 - 4) = v29;
      *(&v31 - 3) = &v105;
      *(&v31 - 2) = &v104;
      v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0, &unk_1C55AE2C0);
      sub_1C5419F0C();
      sub_1C55966B4();
      v46 = v25;
      if (v25)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_1C5355000, v47, v48, "Unable to get GrandSlam account for iCloud account.", v34, 2u);
        v32 = 0;
        sub_1C5419E74(v37, 0, v35);
        sub_1C5419E74(v40, v32, MEMORY[0x1E69E7CA0] + 8);
        sub_1C5596A54();

        v33 = v46;
      }
    }

    else
    {

      v33 = v85;
    }

    v31 = v33;

    (*(v90 + 8))(v92, v88);
    v74 = 0;
    v75 = v31;
  }

  return v74;
}

uint64_t sub_1C55243A4()
{
  v1[9] = v0;
  v1[2] = v1;
  v1[3] = 0;
  v1[4] = 0;
  v2 = sub_1C5594C74();
  v1[10] = v2;
  v1[11] = *(v2 - 8);
  v1[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E860, &qword_1C55AE2A0);
  v1[13] = swift_task_alloc();
  v1[3] = v0;

  return MEMORY[0x1EEE6DFA0](sub_1C55244D8);
}

uint64_t sub_1C55244D8()
{
  v8 = v0[13];
  v6 = v0[9];
  v0[2] = v0;
  sub_1C5522CD8();
  v7 = sub_1C5404B48();
  v0[14] = v7;
  v0[4] = v7;
  v1 = sub_1C5596814();
  (*(*(v1 - 8) + 56))(v8, 1);

  MEMORY[0x1E69E5928](v7, v2);
  v3 = swift_allocObject();
  v3[2] = 0;
  v3[3] = 0;
  v3[4] = v6;
  v3[5] = v7;
  v11 = MEMORY[0x1E69E7CA8] + 8;
  v10 = sub_1C5524CAC(0, 0, v8, &unk_1C55B6058, v3, MEMORY[0x1E69E7CA8] + 8);
  v0[15] = v10;
  sub_1C5408CA0(v8);
  v4 = swift_task_alloc();
  *(v9 + 128) = v4;
  *v4 = *(v9 + 16);
  v4[1] = sub_1C55246A8;

  return MEMORY[0x1EEE6DA40](v12, v10, v11);
}

uint64_t sub_1C55246A8()
{
  *(*v0 + 16) = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1C55247C0);
}

uint64_t sub_1C55247C0()
{
  v18 = v0[14];
  v19 = v0[12];
  v20 = v0[11];
  v21 = v0[10];
  v1 = v0[9];
  v0[2] = v0;

  v3 = MEMORY[0x1E69E5928](v18, v2);
  (*(*v1 + 152))(v18, v3);
  v4 = sub_1C54B05F8();
  (*(v20 + 16))(v19, v4, v21);
  v23 = sub_1C5594C54();
  v22 = sub_1C5596944();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0, &qword_1C55ADF60);
  v24 = sub_1C5596E04();
  if (os_log_type_enabled(v23, v22))
  {
    buf = sub_1C5596A74();
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940, qword_1C55ADF70);
    v14 = sub_1C5419DC0(0, v12, v12);
    v15 = sub_1C5419DC0(0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    *(v17 + 40) = buf;
    *(v17 + 48) = v14;
    *(v17 + 56) = v15;
    sub_1C5419E14(0, (v17 + 40));
    sub_1C5419E14(0, (v17 + 40));
    *(v17 + 64) = v24;
    v16 = swift_task_alloc();
    v16[2] = v17 + 40;
    v16[3] = v17 + 48;
    v16[4] = v17 + 56;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0, &unk_1C55AE2C0);
    sub_1C5419F0C();
    sub_1C55966B4();

    _os_log_impl(&dword_1C5355000, v23, v22, "Contact data loaded successfully", buf, 2u);
    sub_1C5419E74(v14, 0, v12);
    sub_1C5419E74(v15, 0, MEMORY[0x1E69E7CA0] + 8);
    sub_1C5596A54();
  }

  v10 = *(v17 + 112);
  v11 = *(v17 + 96);
  v9 = *(v17 + 80);
  v8 = *(v17 + 88);
  v5 = MEMORY[0x1E69E5920](v23);
  (*(v8 + 8))(v11, v9, v5);
  MEMORY[0x1E69E5920](v10);

  v6 = *(*(v17 + 16) + 8);

  return v6();
}

uint64_t sub_1C5524BC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a5;
  v5[5] = a4;
  v5[2] = v5;
  v5[3] = 0;
  v5[4] = 0;
  v5[3] = a4;
  v5[4] = a5;
  return MEMORY[0x1EEE6DFA0](sub_1C5524C18);
}

uint64_t sub_1C5524C18()
{
  v1 = *(v0 + 48);
  *(v0 + 16) = v0;
  sub_1C552523C(v1);
  v2 = *(*(v0 + 16) + 8);

  return v2();
}

uint64_t sub_1C5524CAC(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v47 = a1;
  v48 = a2;
  v56 = a3;
  v57 = a4;
  v58 = a5;
  v49 = a6;
  v50 = "Fatal error";
  v51 = "Unexpectedly found nil while unwrapping an Optional value";
  v52 = "_Concurrency/arm64e-apple-ios.private.swiftinterface";
  v53 = &unk_1C55B60F0;
  v54 = 0;
  v67 = a6;
  v55 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E860, &qword_1C55AE2A0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v58, v6, v7, v8);
  v59 = &v18 - v55;

  v65 = v57;
  v66 = v58;
  sub_1C5408B78(v56, v59);
  v60 = sub_1C5596814();
  v61 = *(v60 - 8);
  v62 = v60 - 8;
  if ((*(v61 + 48))(v59, 1) == 1)
  {
    sub_1C5408CA0(v59);
    v46 = 0;
  }

  else
  {
    v45 = sub_1C5596804();
    (*(v61 + 8))(v59, v60);
    v46 = v45;
  }

  v42 = v46 | 0x1000;
  v44 = *(v58 + 16);
  v43 = *(v58 + 24);
  swift_unknownObjectRetain();

  if (v44)
  {
    v40 = v44;
    v41 = v43;
    v34 = v43;
    v35 = v44;
    swift_getObjectType();
    v36 = sub_1C55967A4();
    v37 = v9;
    swift_unknownObjectRelease();
    v38 = v36;
    v39 = v37;
  }

  else
  {
    v38 = 0;
    v39 = 0;
  }

  v32 = v39;
  v33 = v38;
  if (v48)
  {
    v30 = v47;
    v31 = v48;
    v10 = v54;
    v28 = sub_1C55965C4();
    sub_1C5526B3C(v28 + 32, &v65, v49, &v63);
    if (v10)
    {
      __break(1u);
    }

    v27 = v63;

    v29 = v27;
  }

  else
  {
    v29 = 0;
  }

  v26 = v29;
  if (v29)
  {
    v20 = v26;
    v21 = v26;
  }

  else
  {

    v22 = v65;
    v23 = v66;

    v11 = swift_allocObject();
    v12 = v22;
    v13 = v23;
    v14 = v33;
    v15 = v32;
    v24 = v11;
    v11[2] = v49;
    v11[3] = v12;
    v11[4] = v13;
    v25 = 0;
    if (v14 != 0 || v15 != 0)
    {
      v64[0] = 0;
      v64[1] = 0;
      v64[2] = v33;
      v64[3] = v32;
      v25 = v64;
    }

    v21 = swift_task_create();
  }

  sub_1C5526CFC();
  v19 = v16;

  return v19;
}

uint64_t sub_1C552523C(void *a1)
{
  v161 = a1;
  v192 = 0;
  v191 = 0;
  v160 = 0;
  v186 = 0;
  v185 = 0;
  v180 = 0;
  v162 = sub_1C5594C74();
  v163 = *(v162 - 8);
  v164 = v163;
  v167 = *(v163 + 64);
  MEMORY[0x1EEE9AC00](v161, v162, v2, v3);
  v169 = (v167 + 15) & 0xFFFFFFFFFFFFFFF0;
  v165 = &v46 - v169;
  MEMORY[0x1EEE9AC00](v4, &v46 - v169, v5, v6);
  v166 = &v46 - v169;
  MEMORY[0x1EEE9AC00](v7, &v46 - v169, v8, v9);
  v168 = &v46 - v169;
  MEMORY[0x1EEE9AC00](v10, &v46 - v169, v11, v12);
  v170 = &v46 - v169;
  v192 = v13;
  v191 = v1;
  v172 = *(v1 + 40);
  v171 = v172;
  v14 = v172;
  if (v172)
  {
    v159 = v171;
    v15 = v170;
    v150 = v171;
    v186 = v171;
    v16 = sub_1C54B05F8();
    v151 = *(v164 + 16);
    v152 = (v164 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v151(v15, v16, v162);
    v157 = sub_1C5594C54();
    v153 = v157;
    v156 = sub_1C5596944();
    v154 = v156;
    v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0, &qword_1C55ADF60);
    v158 = sub_1C5596E04();
    if (os_log_type_enabled(v157, v156))
    {
      v17 = v160;
      v141 = sub_1C5596A74();
      v137 = v141;
      v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940, qword_1C55ADF70);
      v139 = 0;
      v142 = sub_1C5419DC0(0, v138, v138);
      v140 = v142;
      v143 = sub_1C5419DC0(v139, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v176[0] = v141;
      v175 = v142;
      v174 = v143;
      v144 = 0;
      v145 = v176;
      sub_1C5419E14(0, v176);
      sub_1C5419E14(v144, v145);
      v173 = v158;
      v146 = &v46;
      MEMORY[0x1EEE9AC00](&v46, v18, v19, v20);
      v147 = &v46 - 6;
      *(&v46 - 4) = v21;
      *(&v46 - 3) = &v175;
      *(&v46 - 2) = &v174;
      v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0, &unk_1C55AE2C0);
      sub_1C5419F0C();
      sub_1C55966B4();
      v149 = v17;
      if (v17)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_1C5355000, v153, v154, "Loading profile picture for contact", v137, 2u);
        v135 = 0;
        sub_1C5419E74(v140, 0, v138);
        sub_1C5419E74(v143, v135, MEMORY[0x1E69E7CA0] + 8);
        sub_1C5596A54();

        v136 = v149;
      }
    }

    else
    {

      v136 = v160;
    }

    v130 = v136;

    v131 = *(v164 + 8);
    v132 = (v164 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v131(v170, v162);
    v134 = [v150 profilePictureForAccountOwner];
    v133 = v134;
    v185 = v134;
    v22 = v134;
    if (v134)
    {
      v129 = v133;
      v127 = v133;
      v180 = v133;
      v128 = UIImagePNGRepresentation(v133);
      if (v128)
      {
        v126 = v128;
        v121 = v128;
        v122 = sub_1C55948D4();
        v123 = v23;

        v124 = v122;
        v125 = v123;
      }

      else
      {
        v124 = 0;
        v125 = 0xF000000000000000;
      }

      v119 = v125;
      v120 = v124;
      if (v125 >> 60 == 15)
      {
        v116 = 0;
      }

      else
      {
        v117 = v120;
        v118 = v119;
        v113 = v119;
        v114 = v120;
        v115 = sub_1C55948C4();
        sub_1C544DEAC(v114, v113);
        v116 = v115;
      }

      v24 = v168;
      v107 = v116;
      [v161 setImageData_];

      v25 = sub_1C54B05F8();
      v151(v24, v25, v162);
      v111 = sub_1C5594C54();
      v108 = v111;
      v110 = sub_1C5596944();
      v109 = v110;
      v112 = sub_1C5596E04();
      if (os_log_type_enabled(v111, v110))
      {
        v26 = v130;
        v98 = sub_1C5596A74();
        v94 = v98;
        v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940, qword_1C55ADF70);
        v96 = 0;
        v99 = sub_1C5419DC0(0, v95, v95);
        v97 = v99;
        v100 = sub_1C5419DC0(v96, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
        v179 = v98;
        v178 = v99;
        v177 = v100;
        v101 = 0;
        v102 = &v179;
        sub_1C5419E14(0, &v179);
        sub_1C5419E14(v101, v102);
        v176[1] = v112;
        v103 = &v46;
        MEMORY[0x1EEE9AC00](&v46, v27, v28, v29);
        v104 = &v46 - 6;
        *(&v46 - 4) = v30;
        *(&v46 - 3) = &v178;
        *(&v46 - 2) = &v177;
        v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0, &unk_1C55AE2C0);
        sub_1C5419F0C();
        sub_1C55966B4();
        v106 = v26;
        if (v26)
        {
          __break(1u);
        }

        else
        {
          _os_log_impl(&dword_1C5355000, v108, v109, "Profile picture loaded and set on contact", v94, 2u);
          v92 = 0;
          sub_1C5419E74(v97, 0, v95);
          sub_1C5419E74(v100, v92, MEMORY[0x1E69E7CA0] + 8);
          sub_1C5596A54();

          v93 = v106;
        }
      }

      else
      {

        v93 = v130;
      }

      v90 = v93;

      v131(v168, v162);
      v91 = v90;
    }

    else
    {
      v31 = v166;
      v32 = sub_1C54B05F8();
      v151(v31, v32, v162);
      v88 = sub_1C5594C54();
      v85 = v88;
      v87 = sub_1C5596934();
      v86 = v87;
      v89 = sub_1C5596E04();
      if (os_log_type_enabled(v88, v87))
      {
        v33 = v130;
        v76 = sub_1C5596A74();
        v72 = v76;
        v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940, qword_1C55ADF70);
        v74 = 0;
        v77 = sub_1C5419DC0(0, v73, v73);
        v75 = v77;
        v78 = sub_1C5419DC0(v74, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
        v184 = v76;
        v183 = v77;
        v182 = v78;
        v79 = 0;
        v80 = &v184;
        sub_1C5419E14(0, &v184);
        sub_1C5419E14(v79, v80);
        v181 = v89;
        v81 = &v46;
        MEMORY[0x1EEE9AC00](&v46, v34, v35, v36);
        v82 = &v46 - 6;
        *(&v46 - 4) = v37;
        *(&v46 - 3) = &v183;
        *(&v46 - 2) = &v182;
        v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0, &unk_1C55AE2C0);
        sub_1C5419F0C();
        sub_1C55966B4();
        v84 = v33;
        if (v33)
        {
          __break(1u);
        }

        else
        {
          _os_log_impl(&dword_1C5355000, v85, v86, "No profile picture available for account owner", v72, 2u);
          v70 = 0;
          sub_1C5419E74(v75, 0, v73);
          sub_1C5419E74(v78, v70, MEMORY[0x1E69E7CA0] + 8);
          sub_1C5596A54();

          v71 = v84;
        }
      }

      else
      {

        v71 = v130;
      }

      v69 = v71;

      v131(v166, v162);
      [v161 setImageData_];
      v91 = v69;
    }

    v67 = v91;

    return v67;
  }

  else
  {
    v38 = v165;
    v39 = sub_1C54B05F8();
    (*(v164 + 16))(v38, v39, v162);
    v65 = sub_1C5594C54();
    v62 = v65;
    v64 = sub_1C5596954();
    v63 = v64;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0, &qword_1C55ADF60);
    v66 = sub_1C5596E04();
    if (os_log_type_enabled(v65, v64))
    {
      v40 = v160;
      v53 = sub_1C5596A74();
      v49 = v53;
      v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940, qword_1C55ADF70);
      v51 = 0;
      v54 = sub_1C5419DC0(0, v50, v50);
      v52 = v54;
      v55 = sub_1C5419DC0(v51, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v190 = v53;
      v189 = v54;
      v188 = v55;
      v56 = 0;
      v57 = &v190;
      sub_1C5419E14(0, &v190);
      sub_1C5419E14(v56, v57);
      v187 = v66;
      v58 = &v46;
      MEMORY[0x1EEE9AC00](&v46, v41, v42, v43);
      v59 = &v46 - 6;
      *(&v46 - 4) = v44;
      *(&v46 - 3) = &v189;
      *(&v46 - 2) = &v188;
      v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0, &unk_1C55AE2C0);
      sub_1C5419F0C();
      sub_1C55966B4();
      v61 = v40;
      if (v40)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_1C5355000, v62, v63, "No profile picture store available", v49, 2u);
        v47 = 0;
        sub_1C5419E74(v52, 0, v50);
        sub_1C5419E74(v55, v47, MEMORY[0x1E69E7CA0] + 8);
        sub_1C5596A54();

        v48 = v61;
      }
    }

    else
    {

      v48 = v160;
    }

    v46 = v48;

    (*(v164 + 8))(v165, v162);
    return v46;
  }
}

uint64_t sub_1C5526494@<X0>(uint64_t a1@<X8>)
{
  v4 = OBJC_IVAR____TtC14AppleAccountUI30ProfilePictureElementViewModel___observationRegistrar;
  v2 = sub_1C5594B24();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_1C5526500(void *a1)
{
  v9 = a1;
  v18 = 0;
  v16 = 0;
  v7 = *a1;
  v14 = sub_1C5594B24();
  v11 = *(v14 - 8);
  v12 = v14 - 8;
  v3 = MEMORY[0x1EEE9AC00](v9, v1, v14, v2);
  v13 = &v7 - v4;
  v18 = v5;
  v17 = *(v7 + *MEMORY[0x1E69E77B0] + 8);
  v16 = v8;
  (*(v11 + 16))(&v7 - v4, v8 + OBJC_IVAR____TtC14AppleAccountUI30ProfilePictureElementViewModel___observationRegistrar, v3);
  v10 = &v15;
  v15 = v8;
  sub_1C5526934();
  sub_1C5594AE4();
  return (*(v11 + 8))(v13, v14);
}

uint64_t sub_1C5526670@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v19 = a5;
  v20 = a1;
  v21 = a2;
  v22 = a3;
  v23 = a4;
  v33 = 0;
  v30 = 0;
  v31 = 0;
  v29 = 0;
  v34 = a4;
  v15 = *a1;
  v13 = sub_1C5594B24();
  v16 = *(v13 - 8);
  v14 = v13 - 8;
  v6 = MEMORY[0x1EEE9AC00](v20, v21, v13, v5);
  v17 = v12 - v7;
  v33 = v8;
  v32 = *(v15 + *MEMORY[0x1E69E77B0] + 8);
  v30 = v9;
  v31 = v22;
  v29 = v18;
  (*(v16 + 16))(v12 - v7, v18 + OBJC_IVAR____TtC14AppleAccountUI30ProfilePictureElementViewModel___observationRegistrar, v6);
  v25 = &v28;
  v28 = v18;
  sub_1C5526934();
  v10 = v24;
  sub_1C5594AD4();
  v26 = v10;
  v27 = v10;
  if (v10)
  {
    v12[1] = v27;
  }

  return (*(v16 + 8))(v17, v13);
}

unint64_t sub_1C5526888()
{
  v2 = qword_1EC15E508;
  if (!qword_1EC15E508)
  {
    sub_1C5522CD8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15E508);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5526934()
{
  v2 = qword_1EC15E510;
  if (!qword_1EC15E510)
  {
    type metadata accessor for ProfilePictureElementViewModel(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15E510);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for ProfilePictureElementViewModel(uint64_t a1)
{
  v2 = qword_1EC168370;
  if (!qword_1EC168370)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t sub_1C5526A28()
{
  MEMORY[0x1E69E5920](*(v0 + 2));
  MEMORY[0x1E69E5920](*(v0 + 3));
  MEMORY[0x1E69E5920](*(v0 + 4));
  sub_1C5401EF8(v0 + 5);
  v3 = OBJC_IVAR____TtC14AppleAccountUI30ProfilePictureElementViewModel___observationRegistrar;
  v1 = sub_1C5594B24();
  (*(*(v1 - 8) + 8))(&v0[v3]);
  return v4;
}

uint64_t sub_1C5526B3C@<X0>(uint64_t a1@<X0>, uint64_t *a5@<X5>, uint64_t a6@<X6>, uint64_t *a7@<X8>)
{
  if (!a1)
  {
    sub_1C5596C94();
    __break(1u);
  }

  v8 = *a5;
  v9 = a5[1];

  v10 = swift_allocObject();
  v10[2] = a6;
  v10[3] = v8;
  v10[4] = v9;
  result = swift_task_create();
  *a7 = result;
  return result;
}

uint64_t sub_1C5526D10(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_1C5405B1C;

  return sub_1C5524BC8(a1, v6, v7, v8, v9);
}

uint64_t sub_1C5526E10(uint64_t a1)
{
  updated = sub_1C5594B24();
  if (v1 <= 0x3F)
  {
    updated = swift_updateClassMetadata2();
    if (!updated)
    {
      return 0;
    }
  }

  return updated;
}

id static AppleAccountHeaderViewFactory.createAppleAccountHeaderView(contact:account:showAccountDetails:showChangeButton:)(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4)
{
  v27 = a1;
  v23 = a2;
  v24 = a3;
  v25 = a4;
  v18 = "Fatal error";
  v19 = "Unexpectedly found nil while implicitly unwrapping an Optional value";
  v20 = "AppleAccountUI/AppleAccountHeaderViewFactory.swift";
  v39 = 0;
  v38 = 0;
  v37 = 0;
  v36 = 0;
  v35 = 0;
  v32 = 0;
  v26 = 0;
  v21 = (*(*(sub_1C5595774() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v27, v23, v24, v25);
  v22 = &v14 - v21;
  v39 = v5;
  v38 = v6;
  v37 = v7 & 1;
  v36 = v8 & 1;
  v35 = v4;
  MEMORY[0x1E69E5928](v5, v6);
  MEMORY[0x1E69E5928](v23, v9);
  v10 = sub_1C542ABC0();
  v28 = v40;
  sub_1C5566B44(v27, v23, v24 & 1, v25 & 1, v10 & 1, v26, v40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E518, qword_1C55B6100);
  sub_1C55271EC(v28, &v34);
  v29 = v33;
  memcpy(v33, v28, sizeof(v33));
  v30 = sub_1C5595484();
  v32 = v30;
  *&v12 = MEMORY[0x1E69E5928](v30, v11).n128_u64[0];
  v31 = [v30 view];
  MEMORY[0x1E69E5920](v30);
  if (v31)
  {
    v17 = v31;
  }

  else
  {
    sub_1C5596C94();
    __break(1u);
  }

  v16 = v17;
  v15 = [objc_opt_self() clearColor];
  [v16 setBackgroundColor_];
  MEMORY[0x1E69E5920](v15);
  MEMORY[0x1E69E5920](v16);
  sub_1C5595764();
  sub_1C5595474();
  sub_1C545EC80(v40);
  return v30;
}

uint64_t sub_1C55271EC(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;

  *a2 = v3;
  v4 = a1[1];

  *(a2 + 8) = v4;
  *(a2 + 16) = a1[2];
  v5 = a1[3];
  sub_1C5594CF4();
  *(a2 + 24) = v5;
  v6 = a1[4];

  *(a2 + 32) = v6;
  *(a2 + 40) = a1[5];
  v7 = a1[6];
  sub_1C5594CF4();
  *(a2 + 48) = v7;
  v8 = a1[7];

  *(a2 + 56) = v8;
  *(a2 + 64) = *(a1 + 64);
  v9 = a1[9];

  *(a2 + 72) = v9;
  *(a2 + 80) = *(a1 + 80);
  v10 = a1[11];

  *(a2 + 88) = v10;
  *(a2 + 96) = *(a1 + 96);
  v11 = a1[13];

  *(a2 + 104) = v11;
  v12 = a1[14];
  MEMORY[0x1E69E5928](v12, a2);
  *(a2 + 112) = v12;
  v13 = a1[15];

  *(a2 + 120) = v13;
  v14 = a1[16];

  *(a2 + 128) = v14;
  v15 = a1[17];

  *(a2 + 136) = v15;
  v16 = a1[18];
  MEMORY[0x1E69E5928](v16, a2);
  *(a2 + 144) = v16;
  *(a2 + 152) = *(a1 + 152);
  v18 = a1[20];
  MEMORY[0x1E69E5928](v18, a2);
  result = a2;
  *(a2 + 160) = v18;
  return result;
}

id AppleAccountHeaderViewFactory.init()()
{
  v4 = 0;
  v3.receiver = 0;
  v3.super_class = type metadata accessor for AppleAccountHeaderViewFactory();
  v2 = objc_msgSendSuper2(&v3, sel_init);
  MEMORY[0x1E69E5928](v2, v0);
  v4 = v2;
  MEMORY[0x1E69E5920](v2);
  return v2;
}

id AppleAccountHeaderViewFactory.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppleAccountHeaderViewFactory();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C5527618(char a1)
{
  if (a1)
  {
    return 1;
  }

  else
  {
    return 4;
  }
}

uint64_t sub_1C5527658(char a1)
{
  if (a1)
  {
    return 2;
  }

  else
  {
    return 8;
  }
}

uint64_t sub_1C5527698(char a1, uint64_t a2)
{
  if (a1)
  {
    v3 = *MEMORY[0x1E698B7D8];
    MEMORY[0x1E69E5928](*MEMORY[0x1E698B7D8], a2);
    return v3;
  }

  else
  {
    v4 = *MEMORY[0x1E698B7C8];
    MEMORY[0x1E69E5928](*MEMORY[0x1E698B7C8], a2);
    return v4;
  }
}

uint64_t sub_1C5527720(uint64_t a1, uint64_t a2)
{
  sub_1C5596E04();
  *v2 = "legacy";
  *(v2 + 8) = 6;
  *(v2 + 16) = 2;
  *(v2 + 24) = "recovery";
  *(v2 + 32) = 8;
  *(v2 + 40) = 2;
  sub_1C540FCD8();
  v6 = sub_1C5596D64();

  if (!v6)
  {
    v5 = 0;
LABEL_6:

    return v5;
  }

  if (v6 == 1)
  {
    v5 = 1;
    goto LABEL_6;
  }

  return 2;
}

uint64_t sub_1C5527854(char a1)
{
  if (a1)
  {
    return sub_1C55965F4("recovery", 8, 1);
  }

  else
  {
    return sub_1C55965F4("legacy", 6, 1);
  }
}

uint64_t sub_1C55279FC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C5527720(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1C5527A34@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C5527854(*v1 & 1);
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1C5527A84()
{
  v2 = qword_1EC15E520;
  if (!qword_1EC15E520)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15E520);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C5527B64()
{
  v3 = (v0 + OBJC_IVAR____TtC14AppleAccountUI24IconBubbleViewController_contentView);
  swift_beginAccess();
  v4 = *v3;
  MEMORY[0x1E69E5928](*v3, v1);
  swift_endAccess();
  return v4;
}

double sub_1C5527BD4(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1E69E5928](a1, a2);
  v5 = (v2 + OBJC_IVAR____TtC14AppleAccountUI24IconBubbleViewController_contentView);
  swift_beginAccess();
  v3 = *v5;
  *v5 = a1;
  MEMORY[0x1E69E5920](v3);
  swift_endAccess();
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

uint64_t sub_1C5527CD8()
{
  v3 = (v0 + OBJC_IVAR____TtC14AppleAccountUI24IconBubbleViewController_player);
  swift_beginAccess();
  v4 = *v3;
  MEMORY[0x1E69E5928](*v3, v1);
  swift_endAccess();
  return v4;
}

double sub_1C5527D48(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1E69E5928](a1, a2);
  v5 = (v2 + OBJC_IVAR____TtC14AppleAccountUI24IconBubbleViewController_player);
  swift_beginAccess();
  v3 = *v5;
  *v5 = a1;
  MEMORY[0x1E69E5920](v3);
  swift_endAccess();
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

uint64_t sub_1C5527E4C()
{
  v3 = (v0 + OBJC_IVAR____TtC14AppleAccountUI24IconBubbleViewController_memojiWrapperLayer);
  swift_beginAccess();
  v4 = *v3;
  MEMORY[0x1E69E5928](*v3, v1);
  swift_endAccess();
  return v4;
}

double sub_1C5527EBC(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1E69E5928](a1, a2);
  v5 = (v2 + OBJC_IVAR____TtC14AppleAccountUI24IconBubbleViewController_memojiWrapperLayer);
  swift_beginAccess();
  v3 = *v5;
  *v5 = a1;
  MEMORY[0x1E69E5920](v3);
  swift_endAccess();
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

uint64_t sub_1C5527FC0()
{
  v3 = (v0 + OBJC_IVAR____TtC14AppleAccountUI24IconBubbleViewController_memojiContainerLayer);
  swift_beginAccess();
  v4 = *v3;
  MEMORY[0x1E69E5928](*v3, v1);
  swift_endAccess();
  return v4;
}

double sub_1C5528030(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1E69E5928](a1, a2);
  v5 = (v2 + OBJC_IVAR____TtC14AppleAccountUI24IconBubbleViewController_memojiContainerLayer);
  swift_beginAccess();
  v3 = *v5;
  *v5 = a1;
  MEMORY[0x1E69E5920](v3);
  swift_endAccess();
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

uint64_t sub_1C5528134()
{
  v3 = (v0 + OBJC_IVAR____TtC14AppleAccountUI24IconBubbleViewController_memojiLayer);
  swift_beginAccess();
  v4 = *v3;
  MEMORY[0x1E69E5928](*v3, v1);
  swift_endAccess();
  return v4;
}

double sub_1C55281A4(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1E69E5928](a1, a2);
  v5 = (v2 + OBJC_IVAR____TtC14AppleAccountUI24IconBubbleViewController_memojiLayer);
  swift_beginAccess();
  v3 = *v5;
  *v5 = a1;
  MEMORY[0x1E69E5920](v3);
  swift_endAccess();
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

uint64_t sub_1C55282A8()
{
  v3 = (v0 + OBJC_IVAR____TtC14AppleAccountUI24IconBubbleViewController_logoLayer);
  swift_beginAccess();
  v4 = *v3;
  MEMORY[0x1E69E5928](*v3, v1);
  swift_endAccess();
  return v4;
}

double sub_1C5528318(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1E69E5928](a1, a2);
  v5 = (v2 + OBJC_IVAR____TtC14AppleAccountUI24IconBubbleViewController_logoLayer);
  swift_beginAccess();
  v3 = *v5;
  *v5 = a1;
  MEMORY[0x1E69E5920](v3);
  swift_endAccess();
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

uint64_t sub_1C552841C()
{
  v3 = (v0 + OBJC_IVAR____TtC14AppleAccountUI24IconBubbleViewController_logoFillLayer);
  swift_beginAccess();
  v4 = *v3;
  MEMORY[0x1E69E5928](*v3, v1);
  swift_endAccess();
  return v4;
}

double sub_1C552848C(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1E69E5928](a1, a2);
  v5 = (v2 + OBJC_IVAR____TtC14AppleAccountUI24IconBubbleViewController_logoFillLayer);
  swift_beginAccess();
  v3 = *v5;
  *v5 = a1;
  MEMORY[0x1E69E5920](v3);
  swift_endAccess();
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

uint64_t sub_1C5528590()
{
  v2 = (v0 + OBJC_IVAR____TtC14AppleAccountUI24IconBubbleViewController_iconLayers);
  swift_beginAccess();
  v3 = *v2;
  sub_1C5594CF4();
  swift_endAccess();
  return v3;
}

uint64_t sub_1C55285F8(uint64_t a1)
{
  sub_1C5594CF4();
  v3 = (v1 + OBJC_IVAR____TtC14AppleAccountUI24IconBubbleViewController_iconLayers);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

uint64_t sub_1C55286E4()
{
  v2 = (v0 + OBJC_IVAR____TtC14AppleAccountUI24IconBubbleViewController_iconImages);
  swift_beginAccess();
  v3 = *v2;
  sub_1C5594CF4();
  swift_endAccess();
  return v3;
}

uint64_t sub_1C552874C(uint64_t a1)
{
  sub_1C5594CF4();
  v3 = (v1 + OBJC_IVAR____TtC14AppleAccountUI24IconBubbleViewController_iconImages);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

uint64_t sub_1C5528838()
{
  v2 = (v0 + OBJC_IVAR____TtC14AppleAccountUI24IconBubbleViewController_isShowingAsset);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3 & 1;
}

uint64_t sub_1C55288A0(char a1)
{
  v3 = (v1 + OBJC_IVAR____TtC14AppleAccountUI24IconBubbleViewController_isShowingAsset);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t sub_1C5528980()
{
  v10[11] = 0;
  v3 = (v0 + OBJC_IVAR____TtC14AppleAccountUI24IconBubbleViewController__timingModel);
  swift_beginAccess();
  v7 = *v3;
  v8 = v3[1];
  v4 = v3[2];
  v5 = v3[3];
  v6 = v3[4];

  swift_endAccess();
  v10[3] = v7;
  v10[4] = v8;
  v10[5] = v4;
  v10[6] = v5;
  v10[7] = v6;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E588, &qword_1C55B6298);
  MEMORY[0x1C6946C30](v10, v1);
  v9 = v10[1];

  return v9;
}

uint64_t sub_1C5528A90(uint64_t a1, double a2, double a3)
{
  v11[8] = 0;
  *&v11[9] = a2;
  v11[10] = a1;
  *&v11[11] = a3;
  v5 = (v3 + OBJC_IVAR____TtC14AppleAccountUI24IconBubbleViewController__timingModel);
  swift_beginAccess();
  v9 = *v5;
  v10 = v5[1];
  v6 = v5[2];
  v7 = v5[3];
  v8 = v5[4];

  swift_endAccess();

  v11[0] = v9;
  v11[1] = v10;
  v11[2] = v6;
  v11[3] = v7;
  v11[4] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E588, &qword_1C55B6298);
  sub_1C55960A4();
  sub_1C5436F54(v11);
}

uint64_t (*sub_1C5528BE0(void *a1))()
{
  v1 = __swift_coroFrameAllocStub(0x108uLL, 12338);
  *a1 = v1;
  v4 = (v3 + OBJC_IVAR____TtC14AppleAccountUI24IconBubbleViewController__timingModel);
  swift_beginAccess();
  v5 = *v4;
  v1[27] = *v4;
  v6 = v4[1];
  v1[28] = v6;
  v7 = v4[2];
  v1[29] = v7;
  v8 = v4[3];
  v1[30] = v8;
  v9 = v4[4];
  v1[31] = v9;

  swift_endAccess();
  *v1 = v5;
  v1[1] = v6;
  v1[2] = v7;
  v1[3] = v8;
  v1[4] = v9;
  v1[32] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E588, &qword_1C55B6298);
  MEMORY[0x1C6946C30]();
  return sub_1C5528D28;
}

void sub_1C5528D28(void **a1, char a2)
{
  v18 = *a1;
  if (a2)
  {
    v4 = v18[31];
    v3 = v18[30];
    v2 = v18[29];
    v9 = v18[28];
    v8 = v18[27];
    v5 = v18[18];
    v6 = v18[19];
    v7 = v18[20];

    v18[5] = v8;
    v18[6] = v9;
    v18[7] = v2;
    v18[8] = v3;
    v18[9] = v4;
    v18[21] = v5;
    v18[22] = v6;
    v18[23] = v7;
    sub_1C55960A4();
    sub_1C5436F54(v18 + 5);
  }

  else
  {
    v12 = v18[31];
    v11 = v18[30];
    v10 = v18[29];
    v17 = v18[28];
    v16 = v18[27];
    v13 = v18[18];
    v14 = v18[19];
    v15 = v18[20];

    v18[10] = v16;
    v18[11] = v17;
    v18[12] = v10;
    v18[13] = v11;
    v18[14] = v12;
    v18[24] = v13;
    v18[25] = v14;
    v18[26] = v15;
    sub_1C55960A4();
    sub_1C5436F54(v18 + 10);
  }

  free(v18);
}

double sub_1C5528EFC@<D0>(double *a1@<X8>)
{
  swift_beginAccess();

  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E588, &qword_1C55B6298);
  sub_1C55960C4();

  result = v7;
  *a1 = v3;
  *(a1 + 1) = v4;
  *(a1 + 2) = v5;
  *(a1 + 3) = v6;
  a1[4] = v7;
  return result;
}

double sub_1C5529040@<D0>(double *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC14AppleAccountUI24IconBubbleViewController__timingModel);
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 1);
  v6 = *(v3 + 2);
  v7 = *(v3 + 3);
  v9 = v3[4];

  swift_endAccess();
  result = v9;
  *a1 = v4;
  *(a1 + 1) = v5;
  *(a1 + 2) = v6;
  *(a1 + 3) = v7;
  a1[4] = v9;
  return result;
}

__n128 *sub_1C55290FC(__n128 *a1)
{
  v6 = 0;
  v7 = a1;
  sub_1C552917C(a1, v5);
  v3 = (v1 + OBJC_IVAR____TtC14AppleAccountUI24IconBubbleViewController__timingModel);
  swift_beginAccess();
  sub_1C55291E8(a1->n128_f64, v3);
  swift_endAccess();
  result = a1;
  sub_1C5436F54(a1);
  return result;
}

__n128 sub_1C552917C(__n128 *a1, __n128 *a2)
{
  v3 = a1->n128_u64[0];

  a2->n128_u64[0] = v3;
  v5 = a1->n128_u64[1];

  a2->n128_u64[1] = v5;
  result = a1[1];
  a2[1] = result;
  a2[2].n128_u64[0] = a1[2].n128_u64[0];
  return result;
}

double sub_1C55291E8(double *a1, double *a2)
{
  *a2 = *a1;

  a2[1] = a1[1];

  a2[2] = a1[2];
  a2[3] = a1[3];
  result = a1[4];
  a2[4] = result;
  return result;
}

__n128 *sub_1C5529294(__n128 *a1)
{
  v9 = 0;
  v8 = a1;
  *OBJC_IVAR____TtC14AppleAccountUI24IconBubbleViewController_contentView = 0;
  *(v9->n128_u64 + OBJC_IVAR____TtC14AppleAccountUI24IconBubbleViewController_player) = 0;
  *(v9->n128_u64 + OBJC_IVAR____TtC14AppleAccountUI24IconBubbleViewController_memojiWrapperLayer) = 0;
  *(v9->n128_u64 + OBJC_IVAR____TtC14AppleAccountUI24IconBubbleViewController_memojiContainerLayer) = 0;
  *(v9->n128_u64 + OBJC_IVAR____TtC14AppleAccountUI24IconBubbleViewController_memojiLayer) = 0;
  *(v9->n128_u64 + OBJC_IVAR____TtC14AppleAccountUI24IconBubbleViewController_logoLayer) = 0;
  *(v9->n128_u64 + OBJC_IVAR____TtC14AppleAccountUI24IconBubbleViewController_logoFillLayer) = 0;
  *(v9->n128_u64 + OBJC_IVAR____TtC14AppleAccountUI24IconBubbleViewController_iconLayers) = 0;
  *(v9->n128_u64 + OBJC_IVAR____TtC14AppleAccountUI24IconBubbleViewController_iconImages) = 0;
  v9->n128_u8[OBJC_IVAR____TtC14AppleAccountUI24IconBubbleViewController_isShowingAsset] = 0;
  v3 = v9;
  sub_1C552917C(a1, v7);
  memcpy(v3 + OBJC_IVAR____TtC14AppleAccountUI24IconBubbleViewController__timingModel, a1, 0x28uLL);
  v6.receiver = v9;
  v6.super_class = type metadata accessor for IconBubbleViewController();
  v5 = [(__n128 *)&v6 initWithNibName:0 bundle:?];
  MEMORY[0x1E69E5928](v5, v1);
  v9 = v5;
  sub_1C5436F54(a1);
  MEMORY[0x1E69E5920](v9);
  return v5;
}

id sub_1C5529438(uint64_t a1)
{
  v4 = [objc_allocWithZone(v1) initWithCoder_];
  MEMORY[0x1E69E5920](a1);
  return v4;
}

void sub_1C552948C()
{
  *OBJC_IVAR____TtC14AppleAccountUI24IconBubbleViewController_contentView = 0;
  *OBJC_IVAR____TtC14AppleAccountUI24IconBubbleViewController_player = 0;
  *OBJC_IVAR____TtC14AppleAccountUI24IconBubbleViewController_memojiWrapperLayer = 0;
  *OBJC_IVAR____TtC14AppleAccountUI24IconBubbleViewController_memojiContainerLayer = 0;
  *OBJC_IVAR____TtC14AppleAccountUI24IconBubbleViewController_memojiLayer = 0;
  *OBJC_IVAR____TtC14AppleAccountUI24IconBubbleViewController_logoLayer = 0;
  *OBJC_IVAR____TtC14AppleAccountUI24IconBubbleViewController_logoFillLayer = 0;
  *OBJC_IVAR____TtC14AppleAccountUI24IconBubbleViewController_iconLayers = 0;
  *OBJC_IVAR____TtC14AppleAccountUI24IconBubbleViewController_iconImages = 0;
  *OBJC_IVAR____TtC14AppleAccountUI24IconBubbleViewController_isShowingAsset = 0;
  sub_1C552ED6C();
  sub_1C5596CA4();
  __break(1u);
}

double sub_1C55295F8(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1E69E5928](v2, a2);
  sub_1C552EDA4();
  v4 = sub_1C5404B48();
  [v2 setView_];
  MEMORY[0x1E69E5920](v4);
  *&result = MEMORY[0x1E69E5920](v2).n128_u64[0];
  return result;
}

double sub_1C55296D4(uint64_t a1, uint64_t a2)
{
  v49 = v2;
  MEMORY[0x1E69E5928](v2, a2);
  v48.receiver = v2;
  v48.super_class = type metadata accessor for IconBubbleViewController();
  objc_msgSendSuper2(&v48, sel_viewDidLoad);
  (MEMORY[0x1E69E5920])();
  v46 = [v45 view];
  (MEMORY[0x1E69E5920])();
  if (v46)
  {
    v44 = v46;
  }

  else
  {
    sub_1C5596C94();
    __break(1u);
  }

  v42 = sub_1C552AAE0(v44);
  MEMORY[0x1E69E5920](v44);
  sub_1C5527BD4(v42, v4);
  v43 = sub_1C5527B64();
  if (v43)
  {
    v41 = v43;
  }

  else
  {
    sub_1C5596C94();
    __break(1u);
  }

  v39 = sub_1C552AE20(v41, v45);
  MEMORY[0x1E69E5920](v41);
  sub_1C5527D48(v39, v5);
  v40 = sub_1C5527CD8();
  if (v40)
  {
    v38 = v40;
  }

  else
  {
    sub_1C5596C94();
    __break(1u);
  }

  v36 = sub_1C552B1C4(v38);
  MEMORY[0x1E69E5920](v38);
  sub_1C5527EBC(v36, v6);
  v37 = sub_1C5527CD8();
  if (v37)
  {
    v35 = v37;
  }

  else
  {
    sub_1C5596C94();
    __break(1u);
  }

  v33 = sub_1C552B2C8(v35);
  MEMORY[0x1E69E5920](v35);
  sub_1C5528030(v33, v7);
  v34 = sub_1C5527CD8();
  if (v34)
  {
    v32 = v34;
  }

  else
  {
    sub_1C5596C94();
    __break(1u);
  }

  v30 = sub_1C552B3CC(v32);
  MEMORY[0x1E69E5920](v32);
  sub_1C55281A4(v30, v8);
  v31 = sub_1C5527CD8();
  if (v31)
  {
    v29 = v31;
  }

  else
  {
    sub_1C5596C94();
    __break(1u);
  }

  v27 = sub_1C552B4D0(v29);
  MEMORY[0x1E69E5920](v29);
  sub_1C5528318(v27, v9);
  v28 = sub_1C5527CD8();
  if (v28)
  {
    v26 = v28;
  }

  else
  {
    sub_1C5596C94();
    __break(1u);
  }

  v24 = sub_1C552B5D4(v26);
  MEMORY[0x1E69E5920](v26);
  sub_1C552848C(v24, v10);
  v25 = sub_1C5527CD8();
  if (v25)
  {
    v23 = v25;
  }

  else
  {
    sub_1C5596C94();
    __break(1u);
  }

  v21 = sub_1C552B6D8(v23);
  MEMORY[0x1E69E5920](v23);
  sub_1C55285F8(v21);
  v11 = sub_1C552B9F0();
  sub_1C552874C(v11);
  v22 = sub_1C5527CD8();
  if (v22)
  {
    v20 = v22;
  }

  else
  {
    sub_1C5596C94();
    __break(1u);
  }

  v19 = sub_1C5528134();
  if (v19)
  {
    v18 = v19;
  }

  else
  {
    sub_1C5596C94();
    __break(1u);
  }

  v17 = sub_1C5527FC0();
  if (v17)
  {
    v16 = v17;
  }

  else
  {
    sub_1C5596C94();
    __break(1u);
  }

  v15 = sub_1C5528BE0(v47);
  sub_1C552BF30(v20, v12, v18, v16);
  (v15)(v47, 0, v13);
  MEMORY[0x1E69E5920](v16);
  MEMORY[0x1E69E5920](v18);
  *&result = MEMORY[0x1E69E5920](v20).n128_u64[0];
  return result;
}

double sub_1C5529FF0(double a1, double a2, uint64_t a3, uint64_t a4)
{
  v10 = a1;
  v11 = a2;
  v9 = v4;
  MEMORY[0x1E69E5928](v4, a4);
  v8.receiver = v4;
  v8.super_class = type metadata accessor for IconBubbleViewController();
  objc_msgSendSuper2(&v8, sel_setPreferredContentSize_, a1, a2);
  *&result = (MEMORY[0x1E69E5920])().n128_u64[0];
  return result;
}

double sub_1C552A090(uint64_t a1, uint64_t a2)
{
  v20 = v2;
  MEMORY[0x1E69E5928](v2, a2);
  v19.receiver = v2;
  v19.super_class = type metadata accessor for IconBubbleViewController();
  objc_msgSendSuper2(&v19, sel_viewDidLayoutSubviews);
  MEMORY[0x1E69E5920](v2);
  v18 = sub_1C5527CD8();
  if (v18)
  {
    v16 = v18;
  }

  else
  {
    LOBYTE(v8) = 2;
    v9 = 87;
    LODWORD(v10) = 0;
    sub_1C5596C94();
    __break(1u);
  }

  v15 = [v17 view];
  *&v4 = (MEMORY[0x1E69E5920])().n128_u64[0];
  if (v15)
  {
    v14 = v15;
  }

  else
  {
    LOBYTE(v8) = 2;
    v9 = 88;
    LODWORD(v10) = 0;
    sub_1C5596C94();
    __break(1u);
  }

  v13 = [v14 layer];
  MEMORY[0x1E69E5920](v14);
  v11 = *MEMORY[0x1E6979DE8];
  MEMORY[0x1E69E5928](*MEMORY[0x1E6979DE8], v5);
  sub_1C545C2A0(v11, v6);
  v12 = sub_1C5596554();
  MEMORY[0x1E69E5920](v11);

  [v16 moveAndResizeWithinParentLayer:v13 usingGravity:v12 animate:0];
  MEMORY[0x1E69E5920](v12);
  MEMORY[0x1E69E5920](v13);
  *&result = MEMORY[0x1E69E5920](v16).n128_u64[0];
  return result;
}

double sub_1C552A35C()
{
  v23 = v0;
  v21 = sub_1C5527CD8();
  if (v21)
  {
    v20 = v21;
  }

  else
  {
    LOBYTE(v4) = 2;
    v6 = 97;
    LODWORD(v8) = 0;
    sub_1C5596C94();
    __break(1u);
  }

  v19 = [v20 isPlaying];
  *&result = MEMORY[0x1E69E5920](v20).n128_u64[0];
  if (!v19)
  {
    v18 = sub_1C5527CD8();
    if (v18)
    {
      v17 = v18;
    }

    else
    {
      LOBYTE(v5) = 2;
      v7 = 99;
      LODWORD(v9) = 0;
      sub_1C5596C94();
      __break(1u);
    }

    v16 = sub_1C5528134();
    if (v16)
    {
      v15 = v16;
    }

    else
    {
      LOBYTE(v5) = 2;
      v7 = 101;
      LODWORD(v9) = 0;
      sub_1C5596C94();
      __break(1u);
    }

    v14 = sub_1C5527FC0();
    if (v14)
    {
      v13 = v14;
    }

    else
    {
      LOBYTE(v5) = 2;
      v7 = 102;
      LODWORD(v9) = 0;
      sub_1C5596C94();
      __break(1u);
    }

    v11 = sub_1C5528BE0(v22);
    sub_1C552BF30(v17, v2, v15, v13);
    (v11)(v22, 0, v3);
    MEMORY[0x1E69E5920](v13);
    MEMORY[0x1E69E5920](v15);
    MEMORY[0x1E69E5920](v17);
    v12 = sub_1C5527CD8();
    if (v12)
    {
      v10 = v12;
    }

    else
    {
      LOBYTE(v5) = 2;
      v7 = 105;
      LODWORD(v9) = 0;
      sub_1C5596C94();
      __break(1u);
    }

    [v10 play];
    *&result = MEMORY[0x1E69E5920](v10).n128_u64[0];
  }

  return result;
}

double sub_1C552A6D0()
{
  v5 = sub_1C5527CD8();
  if (v5)
  {
    v4 = v5;
  }

  else
  {
    LOBYTE(v1) = 2;
    v2 = 109;
    LODWORD(v3) = 0;
    sub_1C5596C94();
    __break(1u);
  }

  [v4 pause];
  *&result = MEMORY[0x1E69E5920](v4).n128_u64[0];
  return result;
}

double sub_1C552A7A8(void *a1)
{
  v17 = 0;
  v19 = a1;
  v18 = v1;
  if ((sub_1C5528838() & 1) == 0 && a1 > 1)
  {
    MEMORY[0x1E69E5928](a1, v2);
    v17 = a1;
    v14 = sub_1C5527CD8();
    if (v14)
    {
      v13 = v14;
    }

    else
    {
      sub_1C5596C94();
      __break(1u);
    }

    v12 = sub_1C5527FC0();
    if (v12)
    {
      v11 = v12;
    }

    else
    {
      sub_1C5596C94();
      __break(1u);
    }

    v10 = sub_1C5527E4C();
    if (v10)
    {
      v9 = v10;
    }

    else
    {
      sub_1C5596C94();
      __break(1u);
    }

    v8 = sub_1C55282A8();
    if (v8)
    {
      v7 = v8;
    }

    else
    {
      sub_1C5596C94();
      __break(1u);
    }

    v6 = sub_1C5528BE0(v16);
    v5 = sub_1C552D0B8(a1, v13, v4, v11, v9, v7);
    (v6)(v5);
    MEMORY[0x1E69E5920](v7);
    MEMORY[0x1E69E5920](v9);
    MEMORY[0x1E69E5920](v11);
    MEMORY[0x1E69E5920](v13);
    *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  }

  return result;
}

id sub_1C552AAE0(void *a1)
{
  sub_1C552EDA4();
  v21 = sub_1C5404B48();
  [v21 setTranslatesAutoresizingMaskIntoConstraints_];
  [a1 addSubview_];
  sub_1C545C768();
  sub_1C5596E04();
  v18 = v1;
  v7 = [v21 0x1FBB5C529];
  v6 = [a1 0x1FBB5C529];
  v8 = [v7 0x1FBB28F65];
  MEMORY[0x1E69E5920](v6);
  *&v2 = MEMORY[0x1E69E5920](v7).n128_u64[0];
  *v18 = v8;
  v10 = [v21 0x1FBBB59CCLL];
  v9 = [a1 0x1FBBB59CCLL];
  v11 = [v10 0x1FBB28F65];
  MEMORY[0x1E69E5920](v9);
  *&v3 = MEMORY[0x1E69E5920](v10).n128_u64[0];
  v18[1] = v11;
  v13 = [v21 0x1FBBB4950];
  v12 = [a1 0x1FBBB4950];
  v14 = [v13 0x1FBB28F65];
  MEMORY[0x1E69E5920](v12);
  *&v4 = MEMORY[0x1E69E5920](v13).n128_u64[0];
  v18[2] = v14;
  v16 = [v21 0x1FBB20D25];
  v15 = [a1 0x1FBB20D25];
  v17 = [v16 0x1FBB28F65];
  MEMORY[0x1E69E5920](v15);
  MEMORY[0x1E69E5920](v16);
  v18[3] = v17;
  sub_1C540FCD8();
  v20 = sub_1C5596704();

  [a1 addConstraints_];
  MEMORY[0x1E69E5920](v20);
  return v21;
}

void *sub_1C552AE20(void *a1, uint64_t a2)
{
  v14 = sub_1C552AFFC();
  v15 = v2;
  if (!v2)
  {
    return 0;
  }

  sub_1C552EE08();
  sub_1C5594CF4();
  v3 = sub_1C552B174(v14, v15, 1.0);
  v11 = v3;
  if (!v3)
  {

    return 0;
  }

  swift_unknownObjectRetain();
  [v11 setDelegate_];
  swift_unknownObjectRelease();
  v9 = [a1 layer];
  v7 = *MEMORY[0x1E6979DE8];
  MEMORY[0x1E69E5928](*MEMORY[0x1E6979DE8], v4);
  sub_1C545C2A0(v7, v5);
  v8 = sub_1C5596554();
  MEMORY[0x1E69E5920](v7);

  [v11 addToLayer:v9 onTop:1 gravity:v8];
  MEMORY[0x1E69E5920](v8);
  MEMORY[0x1E69E5920](v9);

  return v11;
}

uint64_t sub_1C552AFFC()
{
  sub_1C5439370();
  v5 = sub_1C5576C44();
  sub_1C55965F4("IconBubble", 10, 1);
  v4 = sub_1C5596554();

  sub_1C55965F4("caar", 4, 1);
  v3 = sub_1C5596554();

  v6 = [v5 pathForResource:v4 ofType:v3];
  MEMORY[0x1E69E5920](v3);
  MEMORY[0x1E69E5920](v4);
  MEMORY[0x1E69E5920](v5);
  if (!v6)
  {
    return 0;
  }

  v1 = sub_1C5596574();
  MEMORY[0x1E69E5920](v6);
  return v1;
}

id sub_1C552B1C4(void *a1)
{
  sub_1C552B268();
  sub_1C5594CF4();
  v3 = sub_1C5596554();

  v4 = [a1 publishedLayerWithKey:v3 required:1];
  MEMORY[0x1E69E5920](v3);
  return v4;
}

uint64_t *sub_1C552B268()
{
  if (qword_1EC168530 != -1)
  {
    swift_once();
  }

  return &qword_1EC168538;
}

id sub_1C552B2C8(void *a1)
{
  sub_1C552B36C();
  sub_1C5594CF4();
  v3 = sub_1C5596554();

  v4 = [a1 publishedLayerWithKey:v3 required:1];
  MEMORY[0x1E69E5920](v3);
  return v4;
}

uint64_t *sub_1C552B36C()
{
  if (qword_1EC168548 != -1)
  {
    swift_once();
  }

  return &qword_1EC168550;
}

id sub_1C552B3CC(void *a1)
{
  sub_1C552B470();
  sub_1C5594CF4();
  v3 = sub_1C5596554();

  v4 = [a1 publishedLayerWithKey:v3 required:1];
  MEMORY[0x1E69E5920](v3);
  return v4;
}

uint64_t *sub_1C552B470()
{
  if (qword_1EC168560 != -1)
  {
    swift_once();
  }

  return &qword_1EC168568;
}

id sub_1C552B4D0(void *a1)
{
  sub_1C552B574();
  sub_1C5594CF4();
  v3 = sub_1C5596554();

  v4 = [a1 publishedLayerWithKey:v3 required:1];
  MEMORY[0x1E69E5920](v3);
  return v4;
}

uint64_t *sub_1C552B574()
{
  if (qword_1EC168500 != -1)
  {
    swift_once();
  }

  return &qword_1EC168508;
}

id sub_1C552B5D4(void *a1)
{
  sub_1C552B678();
  sub_1C5594CF4();
  v3 = sub_1C5596554();

  v4 = [a1 publishedLayerWithKey:v3 required:1];
  MEMORY[0x1E69E5920](v3);
  return v4;
}

uint64_t *sub_1C552B678()
{
  if (qword_1EC168518 != -1)
  {
    swift_once();
  }

  return &qword_1EC168520;
}

uint64_t sub_1C552B6D8(void *a1)
{
  v9[1] = 0;
  v9[2] = a1;
  sub_1C552EE6C();
  v9[0] = sub_1C5596E04();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E5B8, &qword_1C55B62A0);
  sub_1C552EED0();
  sub_1C5596914();
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E5D0, &qword_1C55B62A8);
    sub_1C5596C74();
    if (v8)
    {
      break;
    }

    sub_1C552B8D0(v7);
    v4 = sub_1C5596554();

    v5 = [a1 publishedLayerWithKey:v4 required:0];
    MEMORY[0x1E69E5920](v4);
    if (!v5)
    {
      break;
    }

    MEMORY[0x1E69E5928](v5, v1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E5D8, &qword_1C55B62B0);
    sub_1C5596754();
    MEMORY[0x1E69E5920](v5);
  }

  v3 = v9[0];
  sub_1C5594CF4();
  sub_1C541439C(v9);
  return v3;
}

uint64_t sub_1C552B8D0(uint64_t result)
{
  v6 = 0;
  v7 = result;
  if (__OFADD__(result, 1))
  {
    __break(1u);
  }

  else
  {
    v6 = result + 1;
    v5[0] = sub_1C5596DF4();
    v5[1] = v2;
    v3 = sub_1C55965F4("AppIcon-", 8, 1);
    MEMORY[0x1C6947980](v3);

    sub_1C5596DC4();
    v4 = sub_1C55965F4("", 0, 1);
    MEMORY[0x1C6947980](v4);

    sub_1C5594CF4();
    sub_1C5401ECC(v5);
    return sub_1C55965D4();
  }

  return result;
}

uint64_t sub_1C552B9F0()
{
  v25 = 0;
  v24 = 0;
  v23 = 0;
  v21 = 0;
  if ([objc_opt_self() isSolariumEnabled])
  {
    v19 = sub_1C55965F4("IconBubbleSolarium", 18, 1);
  }

  else
  {
    v19 = sub_1C55965F4("IconBubble", 10, 1);
  }

  v20 = v0;
  v12 = v0;
  v14 = v19;
  v23 = v19;
  v24 = v0;
  v22[0] = sub_1C552BBB8();
  v22[1] = v1;
  v22[2] = v2;
  v22[3] = v3;
  sub_1C5594CF4();
  v13 = &v10;
  MEMORY[0x1EEE9AC00](&v10, v4, v5, v6);
  v15 = v9;
  v9[2] = v14;
  v9[3] = v7;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E5E0, &qword_1C55B62B8);
  v17 = sub_1C5418C84();
  sub_1C552F018();
  v18 = sub_1C5596684();
  v11 = v18;

  sub_1C5409FBC(v22);

  return v11;
}

uint64_t sub_1C552BBB8()
{
  v3[2] = 0;
  v3[3] = 7;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E5B8, &qword_1C55B62A0);
  v0 = sub_1C552F0A0();
  MEMORY[0x1C6947230](v3, v2, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E600, &qword_1C55B62C0);
  sub_1C552F144();
  sub_1C5596CD4();
  return v3[4];
}

id sub_1C552BC98@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v18 = 0;
  v19 = 0;
  v16 = 0;
  v17 = 0;
  v11 = a1[1];
  v18 = *a1;
  v19 = v11;
  v16 = a2;
  v17 = a3;
  sub_1C5418C84();
  v15[0] = sub_1C5596DF4();
  v15[1] = v4;
  v5 = sub_1C55965F4("", 0, 1);
  MEMORY[0x1C6947980](v5);

  sub_1C5596DD4();
  v6 = sub_1C55965F4("/", 1, 1);
  MEMORY[0x1C6947980](v6);

  sub_1C5596DD4();
  v7 = sub_1C55965F4("", 0, 1);
  MEMORY[0x1C6947980](v7);

  sub_1C5594CF4();
  sub_1C5401ECC(v15);
  v13 = sub_1C55965D4();
  v12 = v8;
  sub_1C5439370();
  v9 = sub_1C5576C44();
  result = sub_1C552BE8C(v13, v12, v9, 0);
  *a4 = result;
  return result;
}

id sub_1C552BE8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1C5596554();
  v8 = [swift_getObjCClassFromMetadata() imageNamed:v7 inBundle:a3 withConfiguration:a4];
  MEMORY[0x1E69E5920](a4);
  MEMORY[0x1E69E5920](a3);
  MEMORY[0x1E69E5920](v7);

  return v8;
}

void sub_1C552BF30(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v16 = sub_1C5527E4C();
  if (v16)
  {
    v12 = v16;
  }

  else
  {
    sub_1C5596C94();
    __break(1u);
  }

  [v12 beginTime];
  *(a2 + 16) = v4;

  [a3 setContents_];
  swift_unknownObjectRelease();
  [a4 setContents_];
  swift_unknownObjectRelease();
  v11 = sub_1C552841C();
  if (v11)
  {
    v10 = v11;
  }

  else
  {
    sub_1C5596C94();
    __break(1u);
  }

  v9 = sub_1C552841C();
  if (v9)
  {
    v8 = v9;
  }

  else
  {
    sub_1C5596C94();
    __break(1u);
  }

  v5 = sub_1C552C504();
  v7 = sub_1C552C510(v5);

  sub_1C552C5F0();
  sub_1C5594CF4();
  v6 = sub_1C5596554();

  [v10 addAnimation:v7 forKey:v6];
}

id sub_1C552C510(double a1)
{
  SRGB = CGColorCreateSRGB(0.0, 0.4784, 1.0, 1.0);
  v2 = [objc_opt_self() labelColor];
  v4 = [v2 CGColor];
  MEMORY[0x1E69E5920](v2);
  v5 = sub_1C552E998(SRGB, v4, a1);
  MEMORY[0x1E69E5920](v4);
  MEMORY[0x1E69E5920](SRGB);
  return v5;
}

uint64_t *sub_1C552C5F0()
{
  if (qword_1EC1685A8 != -1)
  {
    swift_once();
  }

  return &qword_1EC1685B0;
}

id sub_1C552C650(void *a1, uint64_t a2, void *a3)
{
  result = [a1 playbackTime];
  if (v4 >= 13.2833333)
  {
    v5 = *(a2 + 8);
    v7 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
    }

    else
    {
      *(a2 + 8) = v7;
      [a1 setPlaybackTime_];
      return [a3 setBeginTime_];
    }
  }

  return result;
}

double sub_1C552C740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v42 = 0;
  v40 = 0;
  v39 = 0;
  v37 = 0;
  v36 = 0;
  v34 = 0;
  v33 = 0;
  v46 = a1;
  v45 = a2;
  v44 = a3;
  v43 = a4;
  v41 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E610, qword_1C55B62C8);
  sub_1C552F1CC();
  if ((sub_1C55968F4() & 1) == 0)
  {
    sub_1C552EE6C();
    v5 = sub_1C5596744();
    v18 = sub_1C552CEB8(a2, v5);
    v40 = v18;
    v19 = sub_1C5596744();
    if (!v19)
    {
      sub_1C5596C94();
      __break(1u);
    }

    if (v18 == 0x8000000000000000 && v19 == -1)
    {
      sub_1C5596C94();
      __break(1u);
    }

    v39 = v18 % v19;
    sub_1C5596774();
    v16 = v38;
    v37 = v38;
    sub_1C5418C84();
    v17 = sub_1C5596744();
    if (!v17)
    {
      sub_1C5596C94();
      __break(1u);
    }

    if (v18 == 0x8000000000000000 && v17 == -1)
    {
      sub_1C5596C94();
      __break(1u);
    }

    v36 = v18 % v17;
    sub_1C5596774();
    v14 = v35;
    v34 = v35;
    v15 = [objc_opt_self() disableActions];
    v33 = v15 & 1;
    [objc_opt_self() setDisableActions_];
    if ([v38 contents])
    {
      sub_1C5596AF4();
      sub_1C551433C(v21, v31);
      swift_unknownObjectRelease();
    }

    else
    {
      memset(v31, 0, sizeof(v31));
      v32 = 0;
    }

    v13 = v32 == 0;
    sub_1C544435C(v31);
    if (v13)
    {
      [v14 CGImage];
      [v16 setContents_];
      swift_unknownObjectRelease();
LABEL_37:
      [objc_opt_self() setDisableActions_];
      MEMORY[0x1E69E5920](v14);
      *&result = MEMORY[0x1E69E5920](v16).n128_u64[0];
      return result;
    }

    if ([v16 contents])
    {
      sub_1C5596AF4();
      sub_1C551433C(v22, v28);
      swift_unknownObjectRelease();
    }

    else
    {
      memset(v28, 0, sizeof(v28));
      v29 = 0;
    }

    if (!v29)
    {
      sub_1C5596C94();
      __break(1u);
    }

    sub_1C551433C(v28, v30);
    type metadata accessor for CGImage(0);
    swift_dynamicCast();
    v11 = v27;
    v12 = [v14 CGImage];
    MEMORY[0x1E69E5928](v12, v7);
    v25 = v11;
    v26 = v12;
    if (v11)
    {
      sub_1C5402C1C(&v25, &v24);
      if (v26)
      {
        v23 = v26;
        sub_1C552F2EC();
        v9 = sub_1C5594B74();
        MEMORY[0x1E69E5920](v23);
        MEMORY[0x1E69E5920](v24);
        sub_1C5401EF8(&v25);
        v10 = v9;
        goto LABEL_32;
      }

      MEMORY[0x1E69E5920](v24);
    }

    else if (!v26)
    {
      sub_1C5401EF8(&v25);
      v10 = 1;
LABEL_32:
      MEMORY[0x1E69E5920](v12);
      *&v8 = MEMORY[0x1E69E5920](v11).n128_u64[0];
      if ((v10 & 1) == 0)
      {
        [v14 CGImage];
        [v16 setContents_];
        swift_unknownObjectRelease();
      }

      goto LABEL_37;
    }

    sub_1C550728C(&v25);
    v10 = 0;
    goto LABEL_32;
  }

  return result;
}

uint64_t sub_1C552CEB8(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  v5 = v2 * a2;
  if ((v2 * a2) >> 64 == (v2 * a2) >> 63)
  {
    v4 = *result / 1.5;
    if (((*&v4 >> 52) & 0x7FFLL) == 0x7FF)
    {
      result = sub_1C5596C94();
      __break(1u);
    }

    if (v4 <= -9.22337204e18)
    {
      result = sub_1C5596C94();
      __break(1u);
    }

    if (v4 >= 9.22337204e18)
    {
      result = sub_1C5596C94();
      __break(1u);
    }

    if (!__OFADD__(v5, v4))
    {
      return v5 + v4;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

double sub_1C552D0B8(void *a1, void *a2, uint64_t a3, void *a4, void *a5, void *a6)
{
  sub_1C55288A0(1);
  [a1 CGImage];
  [a4 setContents_];
  swift_unknownObjectRelease();
  [a2 playbackTime];
  if (v6 >= *(a3 + 16))
  {
    [a2 playbackTime];
    [a5 setBeginTime_];
  }

  else
  {
    [a5 setBeginTime_];
  }

  [a5 beginTime];
  v16 = sub_1C552D374(v7);
  sub_1C552D3A8();
  sub_1C5594CF4();
  v15 = sub_1C5596554();

  [a6 addAnimation:v16 forKey:v15];
  MEMORY[0x1E69E5920](v15);
  MEMORY[0x1E69E5920](v16);
  [a6 setOpacity_];
  [a2 playbackTime];
  v9 = v8;
  result = 1.0;
  if (v9 > 1.0)
  {
    [a5 beginTime];
    v14 = sub_1C552D414(a6, v11);
    if (v14)
    {
      sub_1C552D674();
      sub_1C5594CF4();
      v13 = sub_1C5596554();

      [a6 addAnimation:v14 forKey:v13];
      [a5 beginTime];
      [a5 setBeginTime_];
      *&result = MEMORY[0x1E69E5920](v14).n128_u64[0];
    }
  }

  return result;
}

uint64_t *sub_1C552D3A8()
{
  if (qword_1EC168578 != -1)
  {
    swift_once();
  }

  return &qword_1EC168580;
}

id sub_1C552D414(void *a1, double a2)
{
  v16 = 0.0;
  v20 = a1;
  v19 = a2;
  v11 = [a1 presentationLayer];
  if (v11)
  {
    sub_1C55965F4("transform.scale.x", 17, 1);
    v8 = sub_1C5596554();

    v9 = [v11 valueForKeyPath_];
    MEMORY[0x1E69E5920](v8);
    MEMORY[0x1E69E5920](v11);
    if (v9)
    {
      sub_1C5596AF4();
      sub_1C551433C(v12, &v13);
      swift_unknownObjectRelease();
    }

    else
    {
      v13 = 0uLL;
      v14 = 0uLL;
    }

    v17 = v13;
    v18 = v14;
  }

  else
  {
    v17 = 0uLL;
    v18 = 0uLL;
  }

  if (*(&v18 + 1))
  {
    if (swift_dynamicCast())
    {
      v6 = v15;
      v7 = 0;
    }

    else
    {
      v6 = 0.0;
      v7 = 1;
    }

    v4 = v6;
    v5 = v7;
  }

  else
  {
    sub_1C544435C(&v17);
    v4 = 0.0;
    v5 = 1;
  }

  if (v5)
  {
    return 0;
  }

  v16 = v4;
  return sub_1C552E6D8(v16, v16 * 0.75, a2);
}

uint64_t *sub_1C552D674()
{
  if (qword_1EC168590 != -1)
  {
    swift_once();
  }

  return &qword_1EC168598;
}

id sub_1C552D6E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = objc_allocWithZone(v3);
  if (a2)
  {
    v6 = sub_1C5596554();

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v5 = [v10 initWithNibName_bundle_];
  MEMORY[0x1E69E5920](a3);
  MEMORY[0x1E69E5920](v7);
  return v5;
}

id sub_1C552D908()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IconBubbleViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double sub_1C552DA40(void *a1, uint64_t a2)
{
  v31[4] = 0;
  v30 = 0;
  v29 = 0;
  v28 = 0;
  v27 = 0;
  v31[5] = a1;
  *&v2 = MEMORY[0x1E69E5928](a1, a2).n128_u64[0];
  if (a1)
  {
    v23 = a1;
  }

  else
  {
    LOBYTE(v14) = 2;
    v15 = 331;
    LODWORD(v16) = 0;
    sub_1C5596C94();
    __break(1u);
  }

  [v23 playbackTime];
  v22 = v3;
  v4 = sub_1C5528BE0(v31);
  *v5 = v22;
  v4();
  MEMORY[0x1E69E5920](v23);
  *&result = MEMORY[0x1E69E5928](a1, v6).n128_u64[0];
  if (a1)
  {
    v30 = a1;
    v8 = [a1 isPlaying];
    if ((v8 & 1) != 0 && (v21 = sub_1C5527E4C()) != 0)
    {
      v29 = v21;
      v9 = sub_1C55286E4();
      v20 = v9;
      if (v9)
      {
        v28 = v9;
        v10 = sub_1C5528590();
        v19 = v10;
        if (v10)
        {
          v27 = v10;
          v17 = sub_1C5528BE0(v26);
          sub_1C552C650(a1, v11, v21);
          v17();
          v18 = sub_1C5528BE0(v25);
          v13 = sub_1C552C740(a1, v12, v20, v19);
          (v18)(v13);

          MEMORY[0x1E69E5920](v21);
          *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
        }

        else
        {

          MEMORY[0x1E69E5920](v21);
          *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
        }
      }

      else
      {
        MEMORY[0x1E69E5920](v21);
        *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
      }
    }

    else
    {
      *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
    }
  }

  return result;
}

uint64_t sub_1C552DE98()
{
  result = sub_1C55965F4("Apple Logo", 10, 1);
  qword_1EC168508 = result;
  qword_1EC168510 = v1;
  return result;
}

uint64_t sub_1C552DEDC()
{
  v1 = *sub_1C552B574();
  sub_1C5594CF4();
  return v1;
}

uint64_t sub_1C552DF18()
{
  result = sub_1C55965F4("Logo Fill", 9, 1);
  qword_1EC168520 = result;
  qword_1EC168528 = v1;
  return result;
}

uint64_t sub_1C552DF5C()
{
  v1 = *sub_1C552B678();
  sub_1C5594CF4();
  return v1;
}

uint64_t sub_1C552DF98()
{
  result = sub_1C55965F4("Memoji Wrapper", 14, 1);
  qword_1EC168538 = result;
  qword_1EC168540 = v1;
  return result;
}

uint64_t sub_1C552DFDC()
{
  v1 = *sub_1C552B268();
  sub_1C5594CF4();
  return v1;
}

uint64_t sub_1C552E018()
{
  result = sub_1C55965F4("Memoji Container", 16, 1);
  qword_1EC168550 = result;
  qword_1EC168558 = v1;
  return result;
}

uint64_t sub_1C552E05C()
{
  v1 = *sub_1C552B36C();
  sub_1C5594CF4();
  return v1;
}

uint64_t sub_1C552E098()
{
  result = sub_1C55965F4("Memoji", 6, 1);
  qword_1EC168568 = result;
  qword_1EC168570 = v1;
  return result;
}

uint64_t sub_1C552E0DC()
{
  v1 = *sub_1C552B470();
  sub_1C5594CF4();
  return v1;
}

uint64_t sub_1C552E118()
{
  result = sub_1C55965F4("fadeOutLogo", 11, 1);
  qword_1EC168580 = result;
  qword_1EC168588 = v1;
  return result;
}

uint64_t sub_1C552E15C()
{
  v1 = *sub_1C552D3A8();
  sub_1C5594CF4();
  return v1;
}

uint64_t sub_1C552E198()
{
  result = sub_1C55965F4("scaleDownLogo", 13, 1);
  qword_1EC168598 = result;
  qword_1EC1685A0 = v1;
  return result;
}

uint64_t sub_1C552E1DC()
{
  v1 = *sub_1C552D674();
  sub_1C5594CF4();
  return v1;
}

uint64_t sub_1C552E218()
{
  result = sub_1C55965F4("logoFillColor", 13, 1);
  qword_1EC1685B0 = result;
  qword_1EC1685B8 = v1;
  return result;
}

uint64_t sub_1C552E25C()
{
  v1 = *sub_1C552C5F0();
  sub_1C5594CF4();
  return v1;
}

uint64_t sub_1C552E298@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v9 = 0;
  v9 = *a1;
  v8[0] = sub_1C5596DF4();
  v8[1] = v2;
  v3 = sub_1C55965F4("Icon-", 5, 1);
  MEMORY[0x1C6947980](v3);

  sub_1C5596DC4();
  v4 = sub_1C55965F4("", 0, 1);
  MEMORY[0x1C6947980](v4);

  sub_1C5594CF4();
  sub_1C5401ECC(v8);
  result = sub_1C55965D4();
  *a2 = result;
  a2[1] = v6;
  return result;
}

id sub_1C552E3DC(double a1, double a2, double a3)
{
  sub_1C552F36C();
  v3 = sub_1C55965F4("opacity", 7, 1);
  v13 = sub_1C552E5C0(v3, v4);
  MEMORY[0x1E69E5928](v13, v5);
  sub_1C552F3D0();
  v10 = sub_1C552E680(0.33, 0.0, 0.67, 1.0);
  [v13 setTimingFunction_];
  MEMORY[0x1E69E5920](v10);
  MEMORY[0x1E69E5920](v13);
  sub_1C5596854();
  [v13 setFromValue_];
  swift_unknownObjectRelease();
  sub_1C5596854();
  [v13 setToValue_];
  swift_unknownObjectRelease();
  MEMORY[0x1E69E5928](v13, v6);
  [v13 setBeginTime_];
  MEMORY[0x1E69E5920](v13);
  MEMORY[0x1E69E5928](v13, v7);
  v12 = *MEMORY[0x1E69797E0];
  [v13 setFillMode_];
  MEMORY[0x1E69E5920](v12);
  MEMORY[0x1E69E5920](v13);
  return v13;
}

id sub_1C552E5C0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = sub_1C5596554();

    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v3 = [swift_getObjCClassFromMetadata() animationWithKeyPath_];
  MEMORY[0x1E69E5920](v5);
  return v3;
}

id sub_1C552E6D8(double a1, double a2, double a3)
{
  sub_1C552F36C();
  v3 = sub_1C55965F4("transform.scale.xy", 18, 1);
  v15 = sub_1C552E5C0(v3, v4);
  MEMORY[0x1E69E5928](v15, v5);
  sub_1C552F3D0();
  v12 = sub_1C552E680(0.33, 0.0, 0.67, 1.0);
  [v15 setTimingFunction_];
  MEMORY[0x1E69E5920](v12);
  MEMORY[0x1E69E5920](v15);
  MEMORY[0x1E69E5928](v15, v6);
  [v15 setDuration_];
  MEMORY[0x1E69E5920](v15);
  sub_1C5596854();
  [v15 setFromValue_];
  swift_unknownObjectRelease();
  sub_1C5596854();
  [v15 setToValue_];
  swift_unknownObjectRelease();
  MEMORY[0x1E69E5928](v15, v7);
  [v15 setBeginTime_];
  MEMORY[0x1E69E5920](v15);
  MEMORY[0x1E69E5928](v15, v8);
  v14 = *MEMORY[0x1E69797E0];
  [v15 setFillMode_];
  MEMORY[0x1E69E5920](v14);
  MEMORY[0x1E69E5920](v15);
  [v15 setRemovedOnCompletion_];
  MEMORY[0x1E69E5920](v15);
  return v15;
}

void *sub_1C552E92C@<X0>(void *a1@<X8>)
{
  CATransform3DMakeScale(&v3, 2.0, 2.0, 1.0);
  memcpy(__dst, &v3, sizeof(__dst));
  return memcpy(a1, __dst, 0x80uLL);
}

id sub_1C552E998(uint64_t a1, uint64_t a2, double a3)
{
  sub_1C552F36C();
  v3 = sub_1C55965F4("fillColor", 9, 1);
  v17 = sub_1C552E5C0(v3, v4);
  MEMORY[0x1E69E5928](v17, v5);
  [v17 setDuration_];
  MEMORY[0x1E69E5920](v17);
  [v17 setFromValue_];
  swift_unknownObjectRelease();
  [v17 setToValue_];
  swift_unknownObjectRelease();
  MEMORY[0x1E69E5928](v17, v8);
  [v17 setBeginTime_];
  MEMORY[0x1E69E5920](v17);
  MEMORY[0x1E69E5928](v17, v9);
  v16 = *MEMORY[0x1E69797E0];
  [v17 setFillMode_];
  MEMORY[0x1E69E5920](v16);
  MEMORY[0x1E69E5920](v17);
  [v17 setRemovedOnCompletion_];
  MEMORY[0x1E69E5920](v17);
  return v17;
}

id sub_1C552EB78(uint64_t a1, uint64_t a2, double a3)
{
  if (a2)
  {
    v5 = sub_1C5596554();

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v4 = [v8 initWithPath:a3 retinaScale:?];
  MEMORY[0x1E69E5920](v6);
  return v4;
}

unint64_t sub_1C552EDA4()
{
  v2 = qword_1EC15E590;
  if (!qword_1EC15E590)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EC15E590);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1C552EE08()
{
  v2 = qword_1EC15E5A0;
  if (!qword_1EC15E5A0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EC15E5A0);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1C552EE6C()
{
  v2 = qword_1EC15E5B0;
  if (!qword_1EC15E5B0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EC15E5B0);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1C552EED0()
{
  v2 = qword_1EC15E5C0;
  if (!qword_1EC15E5C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15E5B8, &qword_1C55B62A0);
    sub_1C552EF74();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15E5C0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C552EF74()
{
  v2 = qword_1EC15E5C8;
  if (!qword_1EC15E5C8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15E5C8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C552F018()
{
  v2 = qword_1EC15E5F0;
  if (!qword_1EC15E5F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC15E5E0, &qword_1C55B62B8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15E5F0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C552F0A0()
{
  v2 = qword_1EC15E5F8;
  if (!qword_1EC15E5F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15E5B8, &qword_1C55B62A0);
    sub_1C552EF74();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15E5F8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C552F144()
{
  v2 = qword_1EC15E608;
  if (!qword_1EC15E608)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15E600, &qword_1C55B62C0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15E608);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C552F1CC()
{
  v2 = qword_1EC15E618;
  if (!qword_1EC15E618)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15E610, qword_1C55B62C8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15E618);
    return WitnessTable;
  }

  return v2;
}

unint64_t type metadata accessor for CGImage(uint64_t a1)
{
  v5 = qword_1EC15E6A0;
  if (!qword_1EC15E6A0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EC15E6A0);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_1C552F2EC()
{
  v2 = qword_1EC15E620;
  if (!qword_1EC15E620)
  {
    type metadata accessor for CGImage(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15E620);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C552F36C()
{
  v2 = qword_1EC15E628;
  if (!qword_1EC15E628)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EC15E628);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1C552F3D0()
{
  v2 = qword_1EC15E630;
  if (!qword_1EC15E630)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EC15E630);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1C552F434(uint64_t a1, int a2)
{
  if (a2)
  {
    if (*(a1 + 24))
    {
      v3 = *a1;
    }

    else
    {
      v3 = -1;
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_1C552F514(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    *(result + 16) = 0;
    if (a3)
    {
      *(result + 24) = 1;
    }
  }

  else if (a3)
  {
    *(result + 24) = 0;
  }

  return result;
}

unint64_t sub_1C552F700()
{
  v2 = qword_1EC15E6A8;
  if (!qword_1EC15E6A8)
  {
    type metadata accessor for CGImage(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15E6A8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C552F798()
{
  v2 = qword_1EC15E6B0;
  if (!qword_1EC15E6B0)
  {
    type metadata accessor for CGImage(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15E6B0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C552F818()
{
  v2 = *v0;
  sub_1C5594CF4();
  return v2;
}

uint64_t sub_1C552F858()
{
  v2 = *(v0 + 16);
  sub_1C5594CF4();
  return v2;
}

AppleAccountUI::InformationLabelView::Link __swiftcall InformationLabelView.Link.init(text:url:)(Swift::String text, Swift::String_optional url)
{
  v51 = v2;
  v64 = text;
  v65 = url;
  v52 = sub_1C5530088;
  v53 = sub_1C5531474;
  v54 = sub_1C5473EFC;
  v55 = sub_1C545C6D4;
  v56 = sub_1C545C6D4;
  v57 = sub_1C5473FA4;
  v76 = 0;
  v77 = 0;
  v74 = 0;
  v75 = 0;
  v72 = 0;
  v73 = 0;
  v58 = 0;
  v59 = sub_1C5594C74();
  v60 = *(v59 - 8);
  v61 = v59 - 8;
  v62 = (*(v60 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v64._object, v3, v65.value._countAndFlagsBits, v65.value._object);
  v63 = v28 - v62;
  v74 = v4;
  v75 = v5;
  v72 = v6;
  v73 = v7;
  sub_1C5594CF4();
  v76 = v64;
  sub_1C5594CF4();
  v77 = v65;
  v71 = v65;
  v50 = v65.value._object == 0;
  if (!v65.value._object)
  {
    v8 = v63;
    v9 = sub_1C54B05F8();
    (*(v60 + 16))(v8, v9, v59);
    v48 = sub_1C5594C54();
    v49 = sub_1C5596964();
    v37 = 17;
    v39 = 7;
    v42 = swift_allocObject();
    *(v42 + 16) = 32;
    v43 = swift_allocObject();
    *(v43 + 16) = 8;
    v38 = 32;
    v10 = swift_allocObject();
    v40 = v10;
    *(v10 + 16) = v52;
    *(v10 + 24) = 0;
    v11 = swift_allocObject();
    v12 = v40;
    v41 = v11;
    *(v11 + 16) = v53;
    *(v11 + 24) = v12;
    v13 = swift_allocObject();
    v14 = v41;
    v45 = v13;
    *(v13 + 16) = v54;
    *(v13 + 24) = v14;
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0, &qword_1C55ADF60);
    v44 = sub_1C5596E04();
    v46 = v15;

    v16 = v42;
    v17 = v46;
    *v46 = v55;
    v17[1] = v16;

    v18 = v43;
    v19 = v46;
    v46[2] = v56;
    v19[3] = v18;

    v20 = v45;
    v21 = v46;
    v46[4] = v57;
    v21[5] = v20;
    sub_1C540FCD8();

    if (os_log_type_enabled(v48, v49))
    {
      v22 = v58;
      v30 = sub_1C5596A74();
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940, qword_1C55ADF70);
      v31 = sub_1C5419DC0(0, v29, v29);
      v32 = sub_1C5419DC0(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v33 = &v70;
      v70 = v30;
      v34 = &v69;
      v69 = v31;
      v35 = &v68;
      v68 = v32;
      sub_1C5419E14(2, &v70);
      sub_1C5419E14(1, v33);
      v66 = v55;
      v67 = v42;
      sub_1C5419E28(&v66, v33, v34, v35);
      v36 = v22;
      if (v22)
      {

        __break(1u);
      }

      else
      {
        v66 = v56;
        v67 = v43;
        sub_1C5419E28(&v66, &v70, &v69, &v68);
        v28[1] = 0;
        v66 = v57;
        v67 = v45;
        sub_1C5419E28(&v66, &v70, &v69, &v68);
        _os_log_impl(&dword_1C5355000, v48, v49, "%s Link has text but no url", v30, 0xCu);
        sub_1C5419E74(v31, 0, v29);
        sub_1C5419E74(v32, 1, MEMORY[0x1E69E7CA0] + 8);
        sub_1C5596A54();
      }
    }

    else
    {
    }

    v23 = MEMORY[0x1E69E5920](v48);
    (*(v60 + 8))(v63, v59, v23);
  }

  v28[0] = &v76;
  sub_1C5530020(&v76, v51);

  v24 = v28[0];
  sub_1C54876D8(v28[0]);
  result.url.value._object = v27;
  result.url.value._countAndFlagsBits = v26;
  result.text._object = v25;
  result.text._countAndFlagsBits = v24;
  return result;
}

void *sub_1C5530020(void *a1, void *a2)
{
  *a2 = *a1;
  v4 = a1[1];
  sub_1C5594CF4();
  a2[1] = v4;
  a2[2] = a1[2];
  v6 = a1[3];
  sub_1C5594CF4();
  result = a2;
  a2[3] = v6;
  return result;
}

uint64_t sub_1C5530098@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v7 = v1[5];
  result = sub_1C54ED570(v3, v4, v5, v7);
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v7;
  return result;
}

void *InformationLabelView.init(text:link:isLinkOnNewLine:textAlignment:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X8>)
{
  memset(__b, 0, sizeof(__b));
  v14 = *a3;
  v12 = *(a3 + 8);
  v13 = *(a3 + 16);
  sub_1C5594CF4();
  *__b = a1;
  *&__b[8] = a2;
  sub_1C54ED570(v14, v12, v13, *(&v13 + 1));
  *&__b[16] = v14;
  *&__b[24] = v12;
  *&__b[32] = v13;
  __b[48] = a4;
  __b[49] = a5;
  sub_1C547E08C(__b, a6);
  sub_1C54ED608(v14, v12, v13, *(&v13 + 1));

  return sub_1C547E034(__b);
}

uint64_t *InformationLabelView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v157 = &v230;
  v156 = a1;
  v272 = 0;
  v271 = 0;
  memset(__b, 0, 0x32uLL);
  v230 = 0u;
  v231 = 0u;
  v228 = 0;
  v229 = 0;
  v158 = 0;
  v172 = 0;
  v159 = sub_1C55953B4();
  v160 = *(v159 - 8);
  v161 = v159 - 8;
  v162 = (*(v160 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0, v2, v3, v4);
  v163 = &v64 - v162;
  v164 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6, &v64 - v162, v7, v8);
  v165 = &v64 - v164;
  v166 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10, &v64 - v164, v11, v12);
  v167 = &v64 - v166;
  v13 = sub_1C5594764();
  v168 = (*(*(v13 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v13, v14, v15, v16);
  v169 = &v64 - v168;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD68, &unk_1C55B3FC0);
  v170 = (*(*(v17 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v17, v18, v19, v20);
  v171 = &v64 - v170;
  v173 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E6C0, &qword_1C55B6468) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v172, v21, v22, v23);
  v174 = &v64 - v173;
  v175 = sub_1C5594794();
  v176 = *(v175 - 8);
  v177 = v175 - 8;
  v178 = (*(v176 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v175, v24, v25, v26);
  v179 = &v64 - v178;
  v180 = (v27 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v64 - v178, v28, v29, v30);
  v181 = &v64 - v180;
  v272 = &v64 - v180;
  v182 = *v1;
  v183 = v1[1];
  v184 = v1[2];
  v188 = v1[3];
  v185 = *(v1 + 2);
  v186 = *(v1 + 48);
  v187 = *(v1 + 49);
  v271 = v1;
  sub_1C54ED570(v184, v188, v185, *(&v185 + 1));
  if (!v188)
  {
    goto LABEL_15;
  }

  *&v154 = v184;
  *(&v154 + 1) = v188;
  v155 = v185;
  v153 = *(&v185 + 1);
  v150 = v185;
  v151 = v188;
  v152 = v184;
  v230 = v154;
  v231 = v185;
  sub_1C5594CF4();
  if (!v153)
  {

LABEL_15:
    v73 = 0;
    sub_1C55953A4();
    v71 = "";
    v75 = 1;
    sub_1C55965F4("", v73, 1);
    v70 = v58;
    sub_1C5595394();

    sub_1C5594CF4();
    sub_1C5595384();

    sub_1C55965F4(v71, v73, v75 & 1);
    v72 = v59;
    sub_1C5595394();

    (*(v160 + 16))(v165, v167, v159);
    (*(v160 + 32))(v163, v165, v159);
    (*(v160 + 8))(v167, v159);
    sub_1C55953D4();
    v254 = 0;
    v255 = 0;
    v256 = 0;
    v257 = v75 & 1;
    v250 = sub_1C55959E4();
    v251 = v60;
    v252 = v61;
    v253 = v62;
    v74 = v247;
    v247[0] = v250;
    v247[1] = v60;
    v248 = v61 & 1 & v75;
    v249 = v62;
    sub_1C5595E14();
    sub_1C5414260(v74);
    v77 = v242;
    v242[0] = v258;
    v242[1] = v259;
    v243 = v260 & 1 & v75;
    v244 = v261;
    v245 = v262;
    v246 = v263;
    v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E6C8, &qword_1C55B6470);
    sub_1C5531480();
    v78 = &v264;
    sub_1C5595C54();
    sub_1C5414260(v77);
    v79 = v266;
    v84 = 49;
    memcpy(v266, v78, 0x31uLL);
    v80 = v241;
    memcpy(v241, v266, 0x31uLL);
    v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E6D8, &qword_1C55B6478);
    v86 = sub_1C5531520();
    v92 = v265;
    sub_1C540EFD8(v80, v85, v265);
    sub_1C55315C8(v80);
    v81 = v267;
    memcpy(v267, v92, v84);
    sub_1C553161C(v81, &v239);
    v82 = v238;
    memcpy(v238, v81, v84);
    v91 = v240;
    sub_1C540EFD8(v82, v85, v240);
    sub_1C55315C8(v82);
    v83 = __dst;
    memcpy(__dst, v91, v84);
    sub_1C553161C(v83, &v236);
    v87 = v235;
    memcpy(v235, v83, v84);
    v88 = v237;
    sub_1C54108A0(v87, v85, v85, v86, v86, v237);
    sub_1C55315C8(v87);
    v89 = v269;
    v90 = 50;
    memcpy(v269, v88, 0x32uLL);
    memcpy(__b, v269, 0x32uLL);
    sub_1C55315C8(v91);
    sub_1C55315C8(v92);
    goto LABEL_16;
  }

  v148 = v150;
  v149 = v153;
  v139 = v153;
  v140 = v150;
  v228 = v150;
  v229 = v153;
  v144 = 0;
  v31 = sub_1C5596DF4();
  v142 = &v226;
  v226 = v31;
  v227 = v32;
  v146 = "";
  v145 = 1;
  v33 = sub_1C55965F4("", v144, 1);
  v141 = v34;
  MEMORY[0x1C6947980](v33);

  sub_1C5594CF4();
  v143 = v225;
  v225[0] = v182;
  v225[1] = v183;
  sub_1C5596DD4();
  sub_1C5401ECC(v143);
  v35 = sub_1C55965F4(v146, v144, v145 & 1);
  v147 = v36;
  MEMORY[0x1C6947980](v35);

  if (v186)
  {
    v137 = sub_1C55965F4("\n", 1, 1);
  }

  else
  {
    v137 = sub_1C55965F4(" ", 1, 1);
  }

  v138 = v37;
  v38 = v158;
  v112 = v224;
  v224[0] = v137;
  v224[1] = v37;
  v125 = MEMORY[0x1E69E6158];
  v123 = MEMORY[0x1E69E61C8];
  v124 = MEMORY[0x1E69E61C0];
  v129 = &v226;
  sub_1C5596DD4();
  sub_1C5401ECC(v112);
  v127 = "";
  v132 = 0;
  v133 = 1;
  v39 = sub_1C55965F4("");
  v113 = v40;
  MEMORY[0x1C6947980](v39);

  v116 = 2;
  v41 = sub_1C5596DF4();
  v120 = &v222;
  v222 = v41;
  v223 = v42;
  v118 = 1;
  v43 = sub_1C55965F4("[");
  v114 = v44;
  MEMORY[0x1C6947980](v43);

  sub_1C5594CF4();
  v115 = v221;
  v221[0] = v152;
  v221[1] = v151;
  sub_1C5596DD4();
  sub_1C5401ECC(v115);
  v45 = sub_1C55965F4("](", v116, v133 & 1);
  v117 = v46;
  MEMORY[0x1C6947980](v45);

  v220[2] = v140;
  v220[3] = v139;
  sub_1C5596DD4();
  v47 = sub_1C55965F4(")", v118, v133 & 1);
  v119 = v48;
  MEMORY[0x1C6947980](v47);

  v122 = v222;
  v121 = v223;
  sub_1C5594CF4();
  sub_1C5401ECC(v120);
  v49 = sub_1C55965D4();
  v126 = v220;
  v220[0] = v49;
  v220[1] = v50;
  sub_1C5596DD4();
  sub_1C5401ECC(v126);
  v51 = sub_1C55965F4(v127, v132, v133 & 1);
  v128 = v52;
  MEMORY[0x1C6947980](v51);

  v131 = v226;
  v130 = v227;
  sub_1C5594CF4();
  sub_1C5401ECC(v129);
  v134 = sub_1C55965D4();
  v135 = v53;
  v54 = sub_1C55948B4();
  (*(*(v54 - 8) + 56))(v171, v133);
  sub_1C55312B8(v169);
  sub_1C5594784();
  v136 = v38;
  if (v38)
  {

    (*(v176 + 56))(v174, 1, 1, v175);
  }

  else
  {
    (*(v176 + 56))(v174, 0, 1, v175);
  }

  if ((*(v176 + 48))(v174, 1, v175) == 1)
  {
    sub_1C553198C(v174);

    goto LABEL_15;
  }

  (*(v176 + 32))(v181, v174, v175);
  (*(v176 + 16))(v179, v181, v175);
  v204 = sub_1C55959F4();
  v205 = v55;
  v206 = v56;
  v207 = v57;
  v93 = v201;
  v201[0] = v204;
  v201[1] = v55;
  v94 = 1;
  v202 = v56 & 1;
  v203 = v57;
  sub_1C5595E14();
  sub_1C5414260(v93);
  v96 = v196;
  v196[0] = v208;
  v196[1] = v209;
  v197 = v210 & 1 & v94;
  v198 = v211;
  v199 = v212;
  v200 = v213;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E6C8, &qword_1C55B6470);
  sub_1C5531480();
  v97 = &v214;
  sub_1C5595C54();
  sub_1C5414260(v96);
  v98 = v216;
  v103 = 49;
  memcpy(v216, v97, 0x31uLL);
  v99 = v195;
  memcpy(v195, v216, 0x31uLL);
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E6D8, &qword_1C55B6478);
  v105 = sub_1C5531520();
  v111 = v215;
  sub_1C540EFD8(v99, v104, v215);
  sub_1C55315C8(v99);
  v100 = v217;
  memcpy(v217, v111, v103);
  sub_1C553161C(v100, &v193);
  v101 = v192;
  memcpy(v192, v100, v103);
  v110 = v194;
  sub_1C540EFD8(v101, v104, v194);
  sub_1C55315C8(v101);
  v102 = v218;
  memcpy(v218, v110, v103);
  sub_1C553161C(v102, &v190);
  v106 = v189;
  memcpy(v189, v102, v103);
  v107 = v191;
  sub_1C540FD1C(v106, v104, v104, v105, v105, v191);
  sub_1C55315C8(v106);
  v108 = v219;
  v109 = 50;
  memcpy(v219, v107, 0x32uLL);
  memcpy(__b, v219, 0x32uLL);
  sub_1C55315C8(v110);
  sub_1C55315C8(v111);
  (*(v176 + 8))(v181, v175);

LABEL_16:
  v65 = v234;
  v69 = __b;
  v66 = 50;
  memcpy(v234, __b, 0x32uLL);
  sub_1C55316D4(v234, &v233);
  v68 = v232;
  memcpy(v232, v65, v66);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E6E8, &qword_1C55B6488);
  sub_1C5531814();
  sub_1C540EFD8(v68, v67, v156);
  sub_1C55318B4(v68);
  return sub_1C55318B4(v69);
}

uint64_t sub_1C55312B8@<X0>(uint64_t a1@<X8>)
{
  v15 = a1;
  v18 = 0;
  v14 = sub_1C5594734();
  v12 = *(v14 - 8);
  v13 = v14 - 8;
  v9 = (*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0, v1, v2, v3);
  v17 = &v9 - v9;
  v4 = sub_1C5594744();
  v11 = *(v4 - 8);
  v10 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x1EEE9AC00](v4, v5, v4, v6);
  v16 = &v9 - v10;
  (*(v11 + 104))(v7);
  (*(v12 + 104))(v17, *MEMORY[0x1E6968728], v14);
  return sub_1C5594754();
}

unint64_t sub_1C5531480()
{
  v2 = qword_1EC15E6D0;
  if (!qword_1EC15E6D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15E6C8, &qword_1C55B6470);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15E6D0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5531520()
{
  v2 = qword_1EC15E6E0;
  if (!qword_1EC15E6E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15E6D8, &qword_1C55B6478);
    sub_1C5531480();
    sub_1C543DC9C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15E6E0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C55315C8(uint64_t a1)
{
  sub_1C5412EA0(*a1, *(a1 + 8), *(a1 + 16) & 1);

  return a1;
}

uint64_t sub_1C553161C(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  sub_1C54130AC(*a1, v4, v5 & 1);
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  v6 = *(a1 + 24);
  sub_1C5594CF4();
  *(a2 + 24) = v6;
  *(a2 + 32) = *(a1 + 32);
  v8 = *(a1 + 40);

  result = a2;
  *(a2 + 40) = v8;
  *(a2 + 48) = *(a1 + 48);
  return result;
}

uint64_t sub_1C55316D4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[4];
  v8 = a1[5];
  v9 = *(a1 + 48);
  v10 = *(a1 + 49);
  sub_1C553178C(*a1, v4, v5, v6);
  result = a2;
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = v7;
  *(a2 + 40) = v8;
  *(a2 + 48) = v9;
  *(a2 + 49) = v10 & 1;
  return result;
}

uint64_t sub_1C553178C(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  sub_1C54130AC(a1, a2, a3 & 1);
  sub_1C5594CF4();
}

unint64_t sub_1C5531814()
{
  v2 = qword_1EC15E6F0;
  if (!qword_1EC15E6F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15E6E8, &qword_1C55B6488);
    sub_1C5531520();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15E6F0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C5531904(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1C5412EA0(a1, a2, a3 & 1);
}

uint64_t sub_1C553198C(uint64_t a1)
{
  v3 = sub_1C5594794();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t get_enum_tag_for_layout_string_14AppleAccountUI20InformationLabelViewV4LinkVSg(uint64_t a1)
{
  v2 = -1;
  if (*(a1 + 8) < 0x100000000uLL)
  {
    v2 = *(a1 + 8);
  }

  return (v2 + 1);
}

uint64_t sub_1C5531BD0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 50))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*(a1 + 8)))
      {
        v3 = *(a1 + 8);
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1C5531CE8(uint64_t result, int a2, int a3)
{
  v3 = (result + 50);
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 32) = 0;
    *(result + 24) = 0;
    *(result + 16) = 0;
    *(result + 8) = 0;
    *result = a2 + 0x80000000;
    *(result + 48) = 0;
    if (a3 < 0)
    {
      *v3 = 1;
    }
  }

  else
  {
    if (a3 < 0)
    {
      *v3 = 0;
    }

    if (a2)
    {
      *(result + 8) = (a2 - 1);
    }
  }

  return result;
}

uint64_t sub_1C5531ED4(uint64_t a1)
{
  type metadata accessor for BeneficiaryDetailsView.Coordinator();
  MEMORY[0x1E69E5928](a1, v1);
  return sub_1C5461820(a1);
}

id sub_1C5531F58(uint64_t a1, void *a2, uint64_t a3)
{
  [a2 trustedContactStatus];
  MEMORY[0x1E69E5920](a2);
  type metadata accessor for Status(0);
  sub_1C5461DBC();
  if (sub_1C5596E24())
  {
    sub_1C553225C();
    MEMORY[0x1E69E5928](a3, v3);
    MEMORY[0x1E69E5928](a2, v4);
    v15 = sub_1C5461BF0(a3, a2);
    MEMORY[0x1E69E5928](v15, v5);
    v20 = v15;
    v16 = v15;
  }

  else
  {
    sub_1C55321F8();
    MEMORY[0x1E69E5928](a3, v6);
    MEMORY[0x1E69E5928](a2, v7);
    v14 = sub_1C5461BF0(a3, a2);
    MEMORY[0x1E69E5928](v14, v8);
    v20 = v14;
    v16 = v14;
  }

  sub_1C5461EA0();
  v19 = sub_1C5404B48();
  v12 = [v19 viewModelForFlow:2 withContact:{a2, MEMORY[0x1E69E5928](a2, v9).n128_f64[0]}];
  MEMORY[0x1E69E5920](a2);
  sub_1C5461F04();
  MEMORY[0x1E69E5928](a2, v10);
  v13 = sub_1C5461C38(a2, v12, v16);
  MEMORY[0x1E69E5920](v19);
  MEMORY[0x1E69E5920](v20);
  return v13;
}

unint64_t sub_1C55321F8()
{
  v2 = qword_1EC15E6F8;
  if (!qword_1EC15E6F8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EC15E6F8);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1C553225C()
{
  v2 = qword_1EC15E700;
  if (!qword_1EC15E700)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EC15E700);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1C5532300@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C5531ED4(*v1);
  *a1 = result;
  return result;
}

void sub_1C55323C4(uint64_t a1)
{
  sub_1C54F03D4();
  sub_1C5595724();
  __break(1u);
}

unint64_t sub_1C5532404()
{
  v2 = qword_1EC15E708;
  if (!qword_1EC15E708)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15E708);
    return WitnessTable;
  }

  return v2;
}

AppleAccountUI::AAUISignInDataclassActionFlowStage_optional __swiftcall AAUISignInDataclassActionFlowStage.init(rawValue:)(Swift::String rawValue)
{
  v4 = v1;
  sub_1C5596E04();
  *v2 = "dataclassActionOffer";
  *(v2 + 8) = 20;
  *(v2 + 16) = 2;
  *(v2 + 24) = "dataclassActionMergeList";
  *(v2 + 32) = 24;
  *(v2 + 40) = 2;
  sub_1C540FCD8();
  v5 = sub_1C5596D64();

  if (v5)
  {
    if (v5 != 1)
    {

      *v4 = 2;
      return result;
    }

    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  *v4 = v6;
}

uint64_t AAUISignInDataclassActionFlowStage.rawValue.getter()
{
  if (*v0)
  {
    return sub_1C55965F4("dataclassActionMergeList", 24, 1);
  }

  else
  {
    return sub_1C55965F4("dataclassActionOffer", 20, 1);
  }
}

unint64_t sub_1C5532694()
{
  v2 = qword_1EC15E710;
  if (!qword_1EC15E710)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15E710);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C5532804@<X0>(uint64_t *a1@<X8>)
{
  result = AAUISignInDataclassActionFlowStage.rawValue.getter();
  *a1 = result;
  a1[1] = v2;
  return result;
}

uint64_t sub_1C5532834()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  return Strong;
}

double sub_1C553289C(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1E69E5928](a1, a2);
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  MEMORY[0x1E69E5920](a1);
  swift_endAccess();
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

uint64_t (*sub_1C5532934(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x30uLL, 4865);
  *a1 = v3;
  v3[4] = v1;
  v3[5] = OBJC_IVAR___AAUISignInDataclassActionFlow_navController;
  swift_beginAccess();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return sub_1C55329E0;
}

void sub_1C55329E0(void **a1, uint64_t a2)
{
  v4 = *a1;
  if (a2)
  {
    v2 = v4[3];
    MEMORY[0x1E69E5928](v2, a2);
    swift_unknownObjectWeakAssign();
    MEMORY[0x1E69E5920](v2);
    sub_1C5401EF8(v4 + 3);
  }

  else
  {
    v3 = v4[3];
    swift_unknownObjectWeakAssign();
    MEMORY[0x1E69E5920](v3);
  }

  swift_endAccess();
  free(v4);
}

uint64_t sub_1C5532AAC()
{
  v2 = (v0 + OBJC_IVAR___AAUISignInDataclassActionFlow_signInDataclassActionFlowDirector);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_1C5532B14(uint64_t a1)
{

  v3 = (v1 + OBJC_IVAR___AAUISignInDataclassActionFlow_signInDataclassActionFlowDirector);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

uint64_t sub_1C5532C00()
{
  v3 = (v0 + OBJC_IVAR___AAUISignInDataclassActionFlow_account);
  swift_beginAccess();
  v4 = *v3;
  MEMORY[0x1E69E5928](*v3, v1);
  swift_endAccess();
  return v4;
}

double sub_1C5532C70(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1E69E5928](a1, a2);
  v5 = (v2 + OBJC_IVAR___AAUISignInDataclassActionFlow_account);
  swift_beginAccess();
  v3 = *v5;
  *v5 = a1;
  MEMORY[0x1E69E5920](v3);
  swift_endAccess();
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

uint64_t sub_1C5532D78()
{
  v3 = (v0 + OBJC_IVAR___AAUISignInDataclassActionFlow_dataclassActionsStore);
  swift_beginAccess();
  v4 = *v3;
  MEMORY[0x1E69E5928](*v3, v1);
  swift_endAccess();
  return v4;
}

double sub_1C5532DE8(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1E69E5928](a1, a2);
  v5 = (v2 + OBJC_IVAR___AAUISignInDataclassActionFlow_dataclassActionsStore);
  swift_beginAccess();
  v3 = *v5;
  *v5 = a1;
  MEMORY[0x1E69E5920](v3);
  swift_endAccess();
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

char *SignInDataclassActionFlow.init(navController:account:dataclassActionsStore:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = 0;
  v16 = a1;
  v15 = a2;
  v14 = a3;
  swift_unknownObjectWeakInit();
  *OBJC_IVAR___AAUISignInDataclassActionFlow_signInDataclassActionFlowDirector = 0;
  MEMORY[0x1E69E5928](a1, v3);
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  MEMORY[0x1E69E5920](a1);
  swift_endAccess();
  v7 = v17;
  MEMORY[0x1E69E5928](a2, v4);
  *&v7[OBJC_IVAR___AAUISignInDataclassActionFlow_account] = a2;
  v8 = v17;
  MEMORY[0x1E69E5928](a3, a2);
  *&v8[OBJC_IVAR___AAUISignInDataclassActionFlow_dataclassActionsStore] = a3;
  v13.receiver = v17;
  v13.super_class = type metadata accessor for SignInDataclassActionFlow();
  v12 = objc_msgSendSuper2(&v13, sel_init);
  MEMORY[0x1E69E5928](v12, v5);
  v17 = v12;
  MEMORY[0x1E69E5920](a3);
  MEMORY[0x1E69E5920](a2);
  MEMORY[0x1E69E5920](a1);
  MEMORY[0x1E69E5920](v17);
  return v12;
}

uint64_t sub_1C55331A4(uint64_t a1)
{
  v56 = a1;
  v72 = 0;
  v71 = 0;
  v55 = 0;
  v66 = 0;
  v57 = sub_1C5594C74();
  v58 = *(v57 - 8);
  v59 = v58;
  MEMORY[0x1EEE9AC00](v56, v57, v2, v3);
  v60 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = v5;
  v71 = v1;
  v61 = sub_1C5532834();
  if (v61)
  {
    v54 = v61;
    v52 = v61;
    v66 = v61;
    v51 = type metadata accessor for SignInDataclassActionFlowDirector();
    swift_unknownObjectRetain();
    v6 = v52;
    v53 = sub_1C5532C00();
    v7 = sub_1C5532D78();
    v8 = sub_1C553379C(v56, v52, v53, v7);
    sub_1C5532B14(v8);
    v65 = sub_1C5532AAC();
    if (v65)
    {
      v50 = v65;

      sub_1C5410D10(&v65);
      v48 = 0;
      v64 = 0;
      v9 = AAUISignInDataclassActionFlowStage.rawValue.getter();
      v10 = v50;
      v45 = v9;
      v46 = v11;
      sub_1C5594CF4();
      v47 = sub_1C5596554();
      v12 = v47;

      v62[0] = 0;
      v62[1] = v47;
      v63 = v48;
      v13 = *(*v10 + 280);
      v49 = v62;
      v13();
      sub_1C545CDC0(v49);
    }

    else
    {
      sub_1C5410D10(&v65);
    }

    return v55;
  }

  else
  {
    v14 = v60;
    v15 = sub_1C54B05F8();
    (*(v59 + 16))(v14, v15, v57);
    v42 = sub_1C5594C54();
    v39 = v42;
    v41 = sub_1C5596954();
    v40 = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0, &qword_1C55ADF60);
    v43 = sub_1C5596E04();
    if (os_log_type_enabled(v42, v41))
    {
      v16 = v55;
      v30 = sub_1C5596A74();
      v26 = v30;
      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940, qword_1C55ADF70);
      v28 = 0;
      v31 = sub_1C5419DC0(0, v27, v27);
      v29 = v31;
      v32 = sub_1C5419DC0(v28, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v70 = v30;
      v69 = v31;
      v68 = v32;
      v33 = 0;
      v34 = &v70;
      sub_1C5419E14(0, &v70);
      sub_1C5419E14(v33, v34);
      v67 = v43;
      v35 = &v22;
      MEMORY[0x1EEE9AC00](&v22, v17, v18, v19);
      v36 = &v22 - 6;
      *(&v22 - 4) = v20;
      *(&v22 - 3) = &v69;
      *(&v22 - 2) = &v68;
      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0, &unk_1C55AE2C0);
      sub_1C5419F0C();
      sub_1C55966B4();
      v38 = v16;
      if (v16)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_1C5355000, v39, v40, "SignInDataclassActionFlow: Error invoking buddy, no navigation controller found.", v26, 2u);
        v24 = 0;
        sub_1C5419E74(v29, 0, v27);
        sub_1C5419E74(v32, v24, MEMORY[0x1E69E7CA0] + 8);
        sub_1C5596A54();

        v25 = v38;
      }
    }

    else
    {

      v25 = v55;
    }

    v23 = v25;

    (*(v59 + 8))(v60, v57);
    return v23;
  }
}

id SignInDataclassActionFlow.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SignInDataclassActionFlow();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C55339F0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  return Strong;
}

uint64_t sub_1C5533A48(uint64_t a1)
{
  swift_unknownObjectRetain();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  swift_endAccess();
  return swift_unknownObjectRelease();
}

uint64_t (*sub_1C5533AB0(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x28uLL, 60772);
  *a1 = v3;
  v3[4] = v1;
  swift_beginAccess();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return sub_1C5533B48;
}

void sub_1C5533B48(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    swift_unknownObjectRetain();
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    sub_1C546E12C(v2 + 3);
  }

  else
  {
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
  }

  swift_endAccess();
  free(v2);
}

uint64_t sub_1C5533BF4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  return Strong;
}

double sub_1C5533C4C(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1E69E5928](a1, a2);
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  MEMORY[0x1E69E5920](a1);
  swift_endAccess();
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

uint64_t (*sub_1C5533CCC(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x28uLL, 52383);
  *a1 = v3;
  v3[4] = v1;
  swift_beginAccess();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return sub_1C5533D64;
}

void sub_1C5533D64(void **a1, uint64_t a2)
{
  v4 = *a1;
  if (a2)
  {
    v2 = v4[3];
    MEMORY[0x1E69E5928](v2, a2);
    swift_unknownObjectWeakAssign();
    MEMORY[0x1E69E5920](v2);
    sub_1C5401EF8(v4 + 3);
  }

  else
  {
    v3 = v4[3];
    swift_unknownObjectWeakAssign();
    MEMORY[0x1E69E5920](v3);
  }

  swift_endAccess();
  free(v4);
}

uint64_t sub_1C5533E28()
{
  swift_beginAccess();
  v3 = *(v0 + 32);
  MEMORY[0x1E69E5928](v3, v1);
  swift_endAccess();
  return v3;
}

double sub_1C5533E80(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1E69E5928](a1, a2);
  swift_beginAccess();
  v3 = *(v2 + 32);
  *(v2 + 32) = a1;
  MEMORY[0x1E69E5920](v3);
  swift_endAccess();
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

uint64_t sub_1C5533F54()
{
  swift_beginAccess();
  v2 = *(v0 + 40);
  swift_endAccess();
  return v2 & 1;
}

uint64_t sub_1C5533FA4(char a1)
{
  swift_beginAccess();
  *(v1 + 40) = a1;
  return swift_endAccess();
}

uint64_t sub_1C5533FF0()
{
  swift_beginAccess();
  v3 = *(v0 + 48);
  MEMORY[0x1E69E5928](v3, v1);
  swift_endAccess();
  return v3;
}

double sub_1C5534048(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1E69E5928](a1, a2);
  swift_beginAccess();
  v3 = *(v2 + 48);
  *(v2 + 48) = a1;
  MEMORY[0x1E69E5920](v3);
  swift_endAccess();
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

uint64_t sub_1C55340C0()
{
  swift_beginAccess();
  v3 = *(v0 + 56);
  MEMORY[0x1E69E5928](v3, v1);
  swift_endAccess();
  return v3;
}

double sub_1C5534118(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1E69E5928](a1, a2);
  swift_beginAccess();
  v3 = *(v2 + 56);
  *(v2 + 56) = a1;
  MEMORY[0x1E69E5920](v3);
  swift_endAccess();
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

uint64_t sub_1C55341EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(v4 + 32) = 0;
  *(v4 + 40) = 0;
  swift_unknownObjectRetain();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  swift_endAccess();
  MEMORY[0x1E69E5928](a2, v5);
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  MEMORY[0x1E69E5920](a2);
  swift_endAccess();
  MEMORY[0x1E69E5928](a3, v6);
  *(v4 + 48) = a3;
  MEMORY[0x1E69E5928](a4, v7);
  *(v4 + 56) = a4;
  MEMORY[0x1E69E5920](a4);
  MEMORY[0x1E69E5920](a3);
  MEMORY[0x1E69E5920](a2);
  swift_unknownObjectRelease();
  return v12;
}

uint64_t sub_1C5534370(uint64_t a1)
{
  v342 = a1;
  v411 = 0;
  v340 = 0;
  v410 = 0;
  v409 = 0;
  v408 = 0;
  v341 = 0;
  v403 = 0;
  v402 = 0;
  v396 = 0;
  v377 = 0;
  v376 = 0;
  v343 = sub_1C5594C74();
  v344 = *(v343 - 8);
  v345 = v344;
  v351 = *(v344 + 64);
  MEMORY[0x1EEE9AC00](v342, v343, v2, v3);
  v353 = (v351 + 15) & 0xFFFFFFFFFFFFFFF0;
  v346 = &v115 - v353;
  MEMORY[0x1EEE9AC00](v4, &v115 - v353, v5, v6);
  v347 = &v115 - v353;
  MEMORY[0x1EEE9AC00](v7, &v115 - v353, v8, v9);
  v348 = &v115 - v353;
  MEMORY[0x1EEE9AC00](v10, &v115 - v353, v11, v12);
  v349 = &v115 - v353;
  MEMORY[0x1EEE9AC00](v13, &v115 - v353, v14, v15);
  v350 = &v115 - v353;
  MEMORY[0x1EEE9AC00](v16, &v115 - v353, v17, v18);
  v352 = &v115 - v353;
  v22 = MEMORY[0x1EEE9AC00](v19, &v115 - v353, v20, v21);
  v354 = &v115 - v353;
  v355 = *v23;
  v356 = *(v23 + 8);
  v357 = *(v23 + 16);
  v409 = v355;
  v410 = v356;
  v411 = v357;
  v408 = v1;
  v358 = (*(*v1 + 128))(v22);
  if (v358)
  {
    v338 = v358;
    v337 = v358;
    v403 = v358;
    if (v357)
    {
      if (v357 != 1)
      {
        v333 = v356;
        v86 = v347;
        v157 = v356;
        v87 = v356;
        v402 = v157;
        v88 = sub_1C54B05F8();
        (*(v345 + 16))(v86, v88, v343);
        v89 = v157;
        v165 = 7;
        v166 = swift_allocObject();
        *(v166 + 16) = v157;
        v176 = sub_1C5594C54();
        v158 = v176;
        v175 = sub_1C5596944();
        v159 = v175;
        v160 = 17;
        v169 = swift_allocObject();
        v161 = v169;
        v162 = 32;
        *(v169 + 16) = 32;
        v90 = swift_allocObject();
        v91 = v162;
        v170 = v90;
        v163 = v90;
        *(v90 + 16) = 8;
        v164 = v91;
        v92 = swift_allocObject();
        v93 = v166;
        v167 = v92;
        *(v92 + 16) = sub_1C55380D4;
        *(v92 + 24) = v93;
        v94 = swift_allocObject();
        v95 = v167;
        v173 = v94;
        v168 = v94;
        *(v94 + 16) = sub_1C5473EFC;
        *(v94 + 24) = v95;
        v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0, &qword_1C55ADF60);
        v171 = sub_1C5596E04();
        v172 = v96;

        v97 = v169;
        v98 = v172;
        *v172 = sub_1C545C6D4;
        v98[1] = v97;

        v99 = v170;
        v100 = v172;
        v172[2] = sub_1C545C6D4;
        v100[3] = v99;

        v101 = v172;
        v102 = v173;
        v172[4] = sub_1C5473FA4;
        v101[5] = v102;
        sub_1C540FCD8();

        if (os_log_type_enabled(v176, v175))
        {
          v104 = v341;
          v150 = sub_1C5596A74();
          v147 = v150;
          v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940, qword_1C55ADF70);
          v151 = sub_1C5419DC0(0, v148, v148);
          v149 = v151;
          v153 = 1;
          v152 = sub_1C5419DC0(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
          v401 = v150;
          v400 = v151;
          v399 = v152;
          v154 = &v401;
          sub_1C5419E14(2, &v401);
          sub_1C5419E14(v153, v154);
          v397 = sub_1C545C6D4;
          v398 = v161;
          sub_1C5419E28(&v397, v154, &v400, &v399);
          v155 = v104;
          v156 = v104;
          if (v104)
          {
            v145 = 0;

            __break(1u);
          }

          else
          {
            v397 = sub_1C545C6D4;
            v398 = v163;
            sub_1C5419E28(&v397, &v401, &v400, &v399);
            v143 = 0;
            v144 = 0;
            v397 = sub_1C5473FA4;
            v398 = v168;
            sub_1C5419E28(&v397, &v401, &v400, &v399);
            v141 = 0;
            v142 = 0;
            _os_log_impl(&dword_1C5355000, v158, v159, "Deferring action from stage: %s", v147, 0xCu);
            sub_1C5419E74(v149, 0, v148);
            sub_1C5419E74(v152, 1, MEMORY[0x1E69E7CA0] + 8);
            sub_1C5596A54();

            v146 = v141;
          }
        }

        else
        {
          v105 = v341;

          v146 = v105;
        }

        v140 = v146;

        (*(v345 + 8))(v347, v343);
        swift_getObjectType();
        v138 = 0;
        type metadata accessor for WelcomeFlowResult();
        v106 = v157;
        v139 = WelcomeFlowResult.__allocating_init(outcome:stage:info:error:)(1, v157, v138, v138);
        [v337 welcomeFlowEndedWithResult_];
        swift_unknownObjectRelease();

        v258 = v140;
        goto LABEL_57;
      }

      v334 = v356;
      v249 = v356;
      v59 = v356;
      v396 = v249;
      v252 = sub_1C545C2A0(v249, v60);
      v253 = v61;
      v250 = v252;
      v251 = v61;
      sub_1C5594CF4();
      v395 = 0;
      v394[0] = AAUISignInDataclassActionFlowStage.rawValue.getter();
      v394[1] = v62;
      v392 = v252;
      v393 = v253;
      v254 = MEMORY[0x1C69471A0](v394[0], v62, v252, v253);
      sub_1C5401ECC(v394);
      if (v254)
      {
        v63 = v350;

        v64 = sub_1C54B05F8();
        (*(v345 + 16))(v63, v64, v343);
        v247 = sub_1C5594C54();
        v244 = v247;
        v246 = sub_1C5596944();
        v245 = v246;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0, &qword_1C55ADF60);
        v248 = sub_1C5596E04();
        if (os_log_type_enabled(v247, v246))
        {
          v65 = v341;
          v235 = sub_1C5596A74();
          v231 = v235;
          v232 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940, qword_1C55ADF70);
          v233 = 0;
          v236 = sub_1C5419DC0(0, v232, v232);
          v234 = v236;
          v237 = sub_1C5419DC0(v233, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
          v381[0] = v235;
          v380 = v236;
          v379 = v237;
          v238 = 0;
          v239 = v381;
          sub_1C5419E14(0, v381);
          sub_1C5419E14(v238, v239);
          v378 = v248;
          v240 = &v115;
          MEMORY[0x1EEE9AC00](&v115, v66, v67, v68);
          v241 = &v115 - 6;
          *(&v115 - 4) = v69;
          *(&v115 - 3) = &v380;
          *(&v115 - 2) = &v379;
          v242 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0, &unk_1C55AE2C0);
          sub_1C5419F0C();
          sub_1C55966B4();
          v243 = v65;
          if (v65)
          {
            __break(1u);
          }

          else
          {
            _os_log_impl(&dword_1C5355000, v244, v245, "Declined Stage: Dataclass Action Offer. Loading merge action list.", v231, 2u);
            v229 = 0;
            sub_1C5419E74(v234, 0, v232);
            sub_1C5419E74(v237, v229, MEMORY[0x1E69E7CA0] + 8);
            sub_1C5596A54();

            v230 = v243;
          }
        }

        else
        {

          v230 = v341;
        }

        v227 = v230;

        (*(v345 + 8))(v350, v343);
        sub_1C5536C44();

        v228 = v227;
LABEL_50:
        v177 = v228;

        v258 = v177;
LABEL_57:
        v137 = v258;
        swift_unknownObjectRelease();
        return v137;
      }

      sub_1C5594CF4();
      v391 = 1;
      v390[0] = AAUISignInDataclassActionFlowStage.rawValue.getter();
      v390[1] = v70;
      v389[1] = v250;
      v389[2] = v251;
      v226 = MEMORY[0x1C69471A0](v390[0], v70, v250, v251);
      sub_1C5401ECC(v390);
      if (v226)
      {
        v71 = v349;

        v72 = sub_1C54B05F8();
        (*(v345 + 16))(v71, v72, v343);
        v224 = sub_1C5594C54();
        v221 = v224;
        v223 = sub_1C5596944();
        v222 = v223;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0, &qword_1C55ADF60);
        v225 = sub_1C5596E04();
        if (os_log_type_enabled(v224, v223))
        {
          v73 = v341;
          v212 = sub_1C5596A74();
          v208 = v212;
          v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940, qword_1C55ADF70);
          v210 = 0;
          v213 = sub_1C5419DC0(0, v209, v209);
          v211 = v213;
          v214 = sub_1C5419DC0(v210, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
          v384 = v212;
          v383 = v213;
          v382 = v214;
          v215 = 0;
          v216 = &v384;
          sub_1C5419E14(0, &v384);
          sub_1C5419E14(v215, v216);
          v381[1] = v225;
          v217 = &v115;
          MEMORY[0x1EEE9AC00](&v115, v74, v75, v76);
          v218 = &v115 - 6;
          *(&v115 - 4) = v77;
          *(&v115 - 3) = &v383;
          *(&v115 - 2) = &v382;
          v219 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0, &unk_1C55AE2C0);
          sub_1C5419F0C();
          sub_1C55966B4();
          v220 = v73;
          if (v73)
          {
            __break(1u);
          }

          else
          {
            _os_log_impl(&dword_1C5355000, v221, v222, "Declined Stage: Dataclass Merge Action List. Going back to Dataclass action offer.", v208, 2u);
            v206 = 0;
            sub_1C5419E74(v211, 0, v209);
            sub_1C5419E74(v214, v206, MEMORY[0x1E69E7CA0] + 8);
            sub_1C5596A54();

            v207 = v220;
          }
        }

        else
        {

          v207 = v341;
        }

        v202 = v207;

        (*(v345 + 8))(v349, v343);
        v203 = v339 + 24;
        v204 = &v385;
        swift_beginAccess();
        Strong = swift_unknownObjectWeakLoadStrong();
        swift_endAccess();
        v386[0] = Strong;
        if (Strong)
        {
          v199 = v386[0];
          v78 = v386[0];
          sub_1C5401EF8(v386);
          v200 = [v199 popViewControllerAnimated_];

          v201 = v200;
        }

        else
        {
          sub_1C5401EF8(v386);
          v201 = 0;
        }

        v228 = v202;
        goto LABEL_50;
      }

      v79 = v348;

      v80 = sub_1C54B05F8();
      (*(v345 + 16))(v79, v80, v343);
      v197 = sub_1C5594C54();
      v194 = v197;
      v196 = sub_1C5596954();
      v195 = v196;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0, &qword_1C55ADF60);
      v198 = sub_1C5596E04();
      if (os_log_type_enabled(v197, v196))
      {
        v81 = v341;
        v185 = sub_1C5596A74();
        v181 = v185;
        v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940, qword_1C55ADF70);
        v183 = 0;
        v186 = sub_1C5419DC0(0, v182, v182);
        v184 = v186;
        v187 = sub_1C5419DC0(v183, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
        v389[0] = v185;
        v388 = v186;
        v387 = v187;
        v188 = 0;
        v189 = v389;
        sub_1C5419E14(0, v389);
        sub_1C5419E14(v188, v189);
        v386[1] = v198;
        v190 = &v115;
        MEMORY[0x1EEE9AC00](&v115, v82, v83, v84);
        v191 = &v115 - 6;
        *(&v115 - 4) = v85;
        *(&v115 - 3) = &v388;
        *(&v115 - 2) = &v387;
        v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0, &unk_1C55AE2C0);
        sub_1C5419F0C();
        sub_1C55966B4();
        v193 = v81;
        if (v81)
        {
          __break(1u);
        }

        else
        {
          _os_log_impl(&dword_1C5355000, v194, v195, "Declined Stage: Unknown.", v181, 2u);
          v179 = 0;
          sub_1C5419E74(v184, 0, v182);
          sub_1C5419E74(v187, v179, MEMORY[0x1E69E7CA0] + 8);
          sub_1C5596A54();

          v180 = v193;
        }
      }

      else
      {

        v180 = v341;
      }

      v178 = v180;

      (*(v345 + 8))(v348, v343);

      swift_unknownObjectRelease();
      return v178;
    }

    else
    {
      v335 = v355;
      v336 = v356;
      v328 = v356;
      v327 = v355;
      sub_1C5594CF4();
      v24 = v328;
      v377 = v327;
      v376 = v328;
      v329 = sub_1C545C2A0(v328, v25);
      v331 = v26;
      v375 = 0;
      v27 = AAUISignInDataclassActionFlowStage.rawValue.getter();
      v330 = v28;
      v332 = MEMORY[0x1C69471A0](v329, v331, v27);

      if (v332)
      {
        v324 = &v359;
        swift_beginAccess();
        v325 = *(v339 + 40);
        swift_endAccess();
        v326 = v325 ^ 1;
      }

      else
      {
        v326 = 0;
      }

      v323 = v326;

      if (v323)
      {
        sub_1C55362E0();
        v321 = &v360;
        swift_beginAccess();
        *(v339 + 40) = 1;
        swift_endAccess();

        swift_unknownObjectRelease();
        return v341;
      }

      else
      {
        v318 = sub_1C545C2A0(v328, v29);
        v319 = v30;
        v316 = v318;
        v317 = v30;
        sub_1C5594CF4();
        v374 = 0;
        v373[0] = AAUISignInDataclassActionFlowStage.rawValue.getter();
        v373[1] = v31;
        v371 = v318;
        v372 = v319;
        v320 = MEMORY[0x1C69471A0](v373[0], v31, v318, v319);
        sub_1C5401ECC(v373);
        if (v320 & 1) != 0 || (, sub_1C5594CF4(), v370 = 1, v369[0] = AAUISignInDataclassActionFlowStage.rawValue.getter(), v369[1] = v32, v368[1] = v316, v368[2] = v317, v315 = MEMORY[0x1C69471A0](v369[0], v32, v316, v317), sub_1C5401ECC(v369), (v315))
        {

          v40 = v352;
          v41 = sub_1C54B05F8();
          (*(v345 + 16))(v40, v41, v343);
          v42 = v328;
          v282 = 7;
          v283 = swift_allocObject();
          *(v283 + 16) = v328;
          v293 = sub_1C5594C54();
          v275 = v293;
          v292 = sub_1C5596944();
          v276 = v292;
          v277 = 17;
          v286 = swift_allocObject();
          v278 = v286;
          v279 = 32;
          *(v286 + 16) = 32;
          v43 = swift_allocObject();
          v44 = v279;
          v287 = v43;
          v280 = v43;
          *(v43 + 16) = 8;
          v281 = v44;
          v45 = swift_allocObject();
          v46 = v283;
          v284 = v45;
          *(v45 + 16) = sub_1C55380D4;
          *(v45 + 24) = v46;
          v47 = swift_allocObject();
          v48 = v284;
          v290 = v47;
          v285 = v47;
          *(v47 + 16) = sub_1C5473EFC;
          *(v47 + 24) = v48;
          v291 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0, &qword_1C55ADF60);
          v288 = sub_1C5596E04();
          v289 = v49;

          v50 = v286;
          v51 = v289;
          *v289 = sub_1C545C6D4;
          v51[1] = v50;

          v52 = v287;
          v53 = v289;
          v289[2] = sub_1C545C6D4;
          v53[3] = v52;

          v54 = v289;
          v55 = v290;
          v289[4] = sub_1C5473FA4;
          v54[5] = v55;
          sub_1C540FCD8();

          if (os_log_type_enabled(v293, v292))
          {
            v56 = v341;
            v268 = sub_1C5596A74();
            v265 = v268;
            v266 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940, qword_1C55ADF70);
            v269 = sub_1C5419DC0(0, v266, v266);
            v267 = v269;
            v271 = 1;
            v270 = sub_1C5419DC0(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
            v365[0] = v268;
            v364 = v269;
            v363 = v270;
            v272 = v365;
            sub_1C5419E14(2, v365);
            sub_1C5419E14(v271, v272);
            v361 = sub_1C545C6D4;
            v362 = v278;
            sub_1C5419E28(&v361, v272, &v364, &v363);
            v273 = v56;
            v274 = v56;
            if (v56)
            {
              v263 = 0;

              __break(1u);
            }

            else
            {
              v361 = sub_1C545C6D4;
              v362 = v280;
              sub_1C5419E28(&v361, v365, &v364, &v363);
              v261 = 0;
              v262 = 0;
              v361 = sub_1C5473FA4;
              v362 = v285;
              sub_1C5419E28(&v361, v365, &v364, &v363);
              v259 = 0;
              v260 = 0;
              _os_log_impl(&dword_1C5355000, v275, v276, "Completed Stage: %s. Ending Dataclass Action Flow.", v265, 0xCu);
              sub_1C5419E74(v267, 0, v266);
              sub_1C5419E74(v270, 1, MEMORY[0x1E69E7CA0] + 8);
              sub_1C5596A54();

              v264 = v259;
            }
          }

          else
          {
            v57 = v341;

            v264 = v57;
          }

          v257 = v264;

          (*(v345 + 8))(v352, v343);
          swift_getObjectType();
          v255 = 0;
          type metadata accessor for WelcomeFlowResult();
          v58 = v328;
          sub_1C5594CF4();
          v256 = WelcomeFlowResult.__allocating_init(outcome:stage:info:error:)(v255, v328, v327, v255);
          [v337 welcomeFlowEndedWithResult_];
          swift_unknownObjectRelease();

          v258 = v257;
          goto LABEL_57;
        }

        v33 = v354;

        v34 = sub_1C54B05F8();
        (*(v345 + 16))(v33, v34, v343);
        v313 = sub_1C5594C54();
        v310 = v313;
        v312 = sub_1C5596954();
        v311 = v312;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0, &qword_1C55ADF60);
        v314 = sub_1C5596E04();
        if (os_log_type_enabled(v313, v312))
        {
          v35 = v341;
          v301 = sub_1C5596A74();
          v297 = v301;
          v298 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940, qword_1C55ADF70);
          v299 = 0;
          v302 = sub_1C5419DC0(0, v298, v298);
          v300 = v302;
          v303 = sub_1C5419DC0(v299, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
          v368[0] = v301;
          v367 = v302;
          v366 = v303;
          v304 = 0;
          v305 = v368;
          sub_1C5419E14(0, v368);
          sub_1C5419E14(v304, v305);
          v365[1] = v314;
          v306 = &v115;
          MEMORY[0x1EEE9AC00](&v115, v36, v37, v38);
          v307 = &v115 - 6;
          *(&v115 - 4) = v39;
          *(&v115 - 3) = &v367;
          *(&v115 - 2) = &v366;
          v308 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0, &unk_1C55AE2C0);
          sub_1C5419F0C();
          sub_1C55966B4();
          v309 = v35;
          if (v35)
          {
            __break(1u);
          }

          else
          {
            _os_log_impl(&dword_1C5355000, v310, v311, "Completed Stage: Unknown.", v297, 2u);
            v295 = 0;
            sub_1C5419E74(v300, 0, v298);
            sub_1C5419E74(v303, v295, MEMORY[0x1E69E7CA0] + 8);
            sub_1C5596A54();

            v296 = v309;
          }
        }

        else
        {

          v296 = v341;
        }

        v294 = v296;

        (*(v345 + 8))(v354, v343);

        swift_unknownObjectRelease();
        return v294;
      }
    }
  }

  else
  {
    v107 = v346;
    v108 = sub_1C54B05F8();
    (*(v345 + 16))(v107, v108, v343);
    v135 = sub_1C5594C54();
    v132 = v135;
    v134 = sub_1C5596954();
    v133 = v134;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0, &qword_1C55ADF60);
    v136 = sub_1C5596E04();
    if (os_log_type_enabled(v135, v134))
    {
      v109 = v341;
      v123 = sub_1C5596A74();
      v119 = v123;
      v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940, qword_1C55ADF70);
      v121 = 0;
      v124 = sub_1C5419DC0(0, v120, v120);
      v122 = v124;
      v125 = sub_1C5419DC0(v121, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v407 = v123;
      v406 = v124;
      v405 = v125;
      v126 = 0;
      v127 = &v407;
      sub_1C5419E14(0, &v407);
      sub_1C5419E14(v126, v127);
      v404 = v136;
      v128 = &v115;
      MEMORY[0x1EEE9AC00](&v115, v110, v111, v112);
      v129 = &v115 - 6;
      *(&v115 - 4) = v113;
      *(&v115 - 3) = &v406;
      *(&v115 - 2) = &v405;
      v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0, &unk_1C55AE2C0);
      sub_1C5419F0C();
      sub_1C55966B4();
      v131 = v109;
      if (v109)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_1C5355000, v132, v133, "SignInDataclassActionFlowDirector: Missing reference to the buddy flow invoker.", v119, 2u);
        v117 = 0;
        sub_1C5419E74(v122, 0, v120);
        sub_1C5419E74(v125, v117, MEMORY[0x1E69E7CA0] + 8);
        sub_1C5596A54();

        v118 = v131;
      }
    }

    else
    {

      v118 = v341;
    }

    v116 = v118;

    (*(v345 + 8))(v346, v343);
    return v116;
  }
}

uint64_t sub_1C55362E0()
{
  v16 = sub_1C55380DC;
  v38 = 0;
  v36 = 0;
  v17 = 0;
  v21 = sub_1C5596284();
  v18 = *(v21 - 8);
  v19 = v21 - 8;
  v13 = (*(v18 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0, v1, v2, v3);
  v20 = &v12 - v13;
  v25 = sub_1C55962A4();
  v22 = *(v25 - 8);
  v23 = v25 - 8;
  v14 = (*(v22 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v25, v4, v5, v6);
  v24 = &v12 - v14;
  v38 = v0;
  v37 = 0;
  v28 = sub_1C55375AC(&v37);
  v36 = v28;
  sub_1C5444CF8();
  v27 = sub_1C5596984();

  swift_unknownObjectRetain();
  v7 = swift_allocObject();
  v8 = v16;
  v9 = v7;
  v10 = v28;
  *(v9 + 16) = v15;
  *(v9 + 24) = v10;
  v34 = v8;
  v35 = v9;
  aBlock = MEMORY[0x1E69E9820];
  v30 = 1107296256;
  v31 = 0;
  v32 = sub_1C544364C;
  v33 = &block_descriptor_18;
  v26 = _Block_copy(&aBlock);

  sub_1C544369C();
  sub_1C54436B4();
  MEMORY[0x1C6947530](v17, v24, v20, v26);
  (*(v18 + 8))(v20, v21);
  (*(v22 + 8))(v24, v25);
  _Block_release(v26);
  MEMORY[0x1E69E5920](v27);
  return swift_unknownObjectRelease();
}

uint64_t sub_1C5536574(uint64_t a1, uint64_t a2)
{
  v51 = a2;
  v54 = a1;
  v55 = 0;
  v71 = 0;
  v70 = 0;
  v45 = 0;
  v62 = 0;
  v60 = 0;
  v46 = sub_1C5594C74();
  v47 = *(v46 - 8);
  v48 = v47;
  v49 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](0, v51, v46, v2);
  v50 = &v16 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = v3;
  v70 = v4;
  type metadata accessor for SignInDataclassActionInvokingOBWelcomeController();
  swift_unknownObjectRetain();

  v69[3] = type metadata accessor for SignInDataclassActionFlowDirector();
  v69[4] = &off_1F447DEA8;
  v69[0] = v54;
  v53 = SignInDataclassActionInvokingOBWelcomeController.__allocating_init(model:flowDirector:)(v51, v69);
  v5 = v53;
  v52 = &v68;
  swift_beginAccess();
  v6 = *(v54 + 32);
  *(v54 + 32) = v53;

  swift_endAccess();
  v56 = v54 + 24;
  v57 = &v67;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v58 = Strong;
  swift_endAccess();
  if (Strong)
  {
    v44 = v58;
    v40 = v58;
    v62 = v58;
    v42 = &v61;
    swift_beginAccess();
    v43 = *(v54 + 32);
    v41 = v43;
    v7 = v43;
    swift_endAccess();
    if (v43)
    {
      v39 = v41;
      v37 = v41;
      v60 = v41;
      [v40 pushViewController_animated_];

      return v45;
    }
  }

  v8 = v50;
  v9 = sub_1C54B05F8();
  (*(v48 + 16))(v8, v9, v46);
  v35 = sub_1C5594C54();
  v32 = v35;
  v34 = sub_1C5596954();
  v33 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0, &qword_1C55ADF60);
  v36 = sub_1C5596E04();
  if (os_log_type_enabled(v35, v34))
  {
    v10 = v45;
    v23 = sub_1C5596A74();
    v19 = v23;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940, qword_1C55ADF70);
    v21 = 0;
    v24 = sub_1C5419DC0(0, v20, v20);
    v22 = v24;
    v25 = sub_1C5419DC0(v21, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v66 = v23;
    v65 = v24;
    v64 = v25;
    v26 = 0;
    v27 = &v66;
    sub_1C5419E14(0, &v66);
    sub_1C5419E14(v26, v27);
    v63 = v36;
    v28 = &v16;
    MEMORY[0x1EEE9AC00](&v16, v11, v12, v13);
    v29 = &v16 - 6;
    *(&v16 - 4) = v14;
    *(&v16 - 3) = &v65;
    *(&v16 - 2) = &v64;
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0, &unk_1C55AE2C0);
    sub_1C5419F0C();
    sub_1C55966B4();
    v31 = v10;
    if (v10)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_1C5355000, v32, v33, "Unable to present dataclass action offer.", v19, 2u);
      v17 = 0;
      sub_1C5419E74(v22, 0, v20);
      sub_1C5419E74(v25, v17, MEMORY[0x1E69E7CA0] + 8);
      sub_1C5596A54();

      v18 = v31;
    }
  }

  else
  {

    v18 = v45;
  }

  v16 = v18;

  (*(v48 + 8))(v50, v46);
  return v16;
}

uint64_t sub_1C5536C44()
{
  v16 = sub_1C553814C;
  v38 = 0;
  v36 = 0;
  v17 = 0;
  v21 = sub_1C5596284();
  v18 = *(v21 - 8);
  v19 = v21 - 8;
  v13 = (*(v18 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0, v1, v2, v3);
  v20 = &v12 - v13;
  v25 = sub_1C55962A4();
  v22 = *(v25 - 8);
  v23 = v25 - 8;
  v14 = (*(v22 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v25, v4, v5, v6);
  v24 = &v12 - v14;
  v38 = v0;
  v37 = 1;
  v28 = sub_1C55375AC(&v37);
  v36 = v28;
  sub_1C5444CF8();
  v27 = sub_1C5596984();

  swift_unknownObjectRetain();
  v7 = swift_allocObject();
  v8 = v16;
  v9 = v7;
  v10 = v28;
  *(v9 + 16) = v15;
  *(v9 + 24) = v10;
  v34 = v8;
  v35 = v9;
  aBlock = MEMORY[0x1E69E9820];
  v30 = 1107296256;
  v31 = 0;
  v32 = sub_1C544364C;
  v33 = &block_descriptor_46;
  v26 = _Block_copy(&aBlock);

  sub_1C544369C();
  sub_1C54436B4();
  MEMORY[0x1C6947530](v17, v24, v20, v26);
  (*(v18 + 8))(v20, v21);
  (*(v22 + 8))(v24, v25);
  _Block_release(v26);
  MEMORY[0x1E69E5920](v27);
  return swift_unknownObjectRelease();
}

uint64_t sub_1C5536EDC(uint64_t a1, uint64_t a2)
{
  v51 = a2;
  v54 = a1;
  v55 = 0;
  v71 = 0;
  v70 = 0;
  v45 = 0;
  v62 = 0;
  v60 = 0;
  v46 = sub_1C5594C74();
  v47 = *(v46 - 8);
  v48 = v47;
  v49 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](0, v51, v46, v2);
  v50 = &v16 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = v3;
  v70 = v4;
  type metadata accessor for SignInDataclassMergeActionInvokingOBWelcomeController();
  swift_unknownObjectRetain();

  v69[3] = type metadata accessor for SignInDataclassActionFlowDirector();
  v69[4] = &off_1F447DEA8;
  v69[0] = v54;
  v53 = SignInDataclassMergeActionInvokingOBWelcomeController.__allocating_init(model:flowDirector:)(v51, v69);
  v5 = v53;
  v52 = &v68;
  swift_beginAccess();
  v6 = *(v54 + 32);
  *(v54 + 32) = v53;

  swift_endAccess();
  v56 = v54 + 24;
  v57 = &v67;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v58 = Strong;
  swift_endAccess();
  if (Strong)
  {
    v44 = v58;
    v40 = v58;
    v62 = v58;
    v42 = &v61;
    swift_beginAccess();
    v43 = *(v54 + 32);
    v41 = v43;
    v7 = v43;
    swift_endAccess();
    if (v43)
    {
      v39 = v41;
      v37 = v41;
      v60 = v41;
      [v40 pushViewController_animated_];

      return v45;
    }
  }

  v8 = v50;
  v9 = sub_1C54B05F8();
  (*(v48 + 16))(v8, v9, v46);
  v35 = sub_1C5594C54();
  v32 = v35;
  v34 = sub_1C5596954();
  v33 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0, &qword_1C55ADF60);
  v36 = sub_1C5596E04();
  if (os_log_type_enabled(v35, v34))
  {
    v10 = v45;
    v23 = sub_1C5596A74();
    v19 = v23;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940, qword_1C55ADF70);
    v21 = 0;
    v24 = sub_1C5419DC0(0, v20, v20);
    v22 = v24;
    v25 = sub_1C5419DC0(v21, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v66 = v23;
    v65 = v24;
    v64 = v25;
    v26 = 0;
    v27 = &v66;
    sub_1C5419E14(0, &v66);
    sub_1C5419E14(v26, v27);
    v63 = v36;
    v28 = &v16;
    MEMORY[0x1EEE9AC00](&v16, v11, v12, v13);
    v29 = &v16 - 6;
    *(&v16 - 4) = v14;
    *(&v16 - 3) = &v65;
    *(&v16 - 2) = &v64;
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0, &unk_1C55AE2C0);
    sub_1C5419F0C();
    sub_1C55966B4();
    v31 = v10;
    if (v10)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_1C5355000, v32, v33, "Unable to present dataclass action offer.", v19, 2u);
      v17 = 0;
      sub_1C5419E74(v22, 0, v20);
      sub_1C5419E74(v25, v17, MEMORY[0x1E69E7CA0] + 8);
      sub_1C5596A54();

      v18 = v31;
    }
  }

  else
  {

    v18 = v45;
  }

  v16 = v18;

  (*(v48 + 8))(v50, v46);
  return v16;
}

char *sub_1C55375AC(uint64_t a1)
{
  v48 = a1;
  v56 = sub_1C55381BC;
  v60 = sub_1C5473EFC;
  v62 = sub_1C545C6D4;
  v64 = sub_1C545C6D4;
  v67 = sub_1C5473FA4;
  v84 = 0;
  v83 = 0;
  v78 = 0;
  v46 = 0;
  v53 = sub_1C5594C74();
  v51 = *(v53 - 8);
  v52 = v53 - 8;
  v49 = (*(v51 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v48, v1, v2, v3);
  v4 = &v24 - v49;
  v50 = &v24 - v49;
  v54 = *v5;
  v84 = v54 & 1;
  v83 = v6;
  v7 = sub_1C54B05F8();
  (*(v51 + 16))(v4, v7, v53);
  v55 = 17;
  v58 = 7;
  v59 = swift_allocObject();
  *(v59 + 16) = v54;
  v71 = sub_1C5594C54();
  v72 = sub_1C5596944();
  v63 = swift_allocObject();
  *(v63 + 16) = 32;
  v65 = swift_allocObject();
  *(v65 + 16) = 8;
  v57 = 32;
  v8 = swift_allocObject();
  v9 = v59;
  v61 = v8;
  *(v8 + 16) = v56;
  *(v8 + 24) = v9;
  v10 = swift_allocObject();
  v11 = v61;
  v68 = v10;
  *(v10 + 16) = v60;
  *(v10 + 24) = v11;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0, &qword_1C55ADF60);
  v66 = sub_1C5596E04();
  v69 = v12;

  v13 = v63;
  v14 = v69;
  *v69 = v62;
  v14[1] = v13;

  v15 = v65;
  v16 = v69;
  v69[2] = v64;
  v16[3] = v15;

  v17 = v68;
  v18 = v69;
  v69[4] = v67;
  v18[5] = v17;
  sub_1C540FCD8();

  if (os_log_type_enabled(v71, v72))
  {
    v19 = v46;
    v39 = sub_1C5596A74();
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940, qword_1C55ADF70);
    v40 = sub_1C5419DC0(0, v38, v38);
    v41 = sub_1C5419DC0(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v42 = &v77;
    v77 = v39;
    v43 = &v76;
    v76 = v40;
    v44 = &v75;
    v75 = v41;
    sub_1C5419E14(2, &v77);
    sub_1C5419E14(1, v42);
    v73 = v62;
    v74 = v63;
    sub_1C5419E28(&v73, v42, v43, v44);
    v45 = v19;
    if (v19)
    {

      __break(1u);
    }

    else
    {
      v73 = v64;
      v74 = v65;
      sub_1C5419E28(&v73, &v77, &v76, &v75);
      v37 = 0;
      v73 = v67;
      v74 = v68;
      sub_1C5419E28(&v73, &v77, &v76, &v75);
      _os_log_impl(&dword_1C5355000, v71, v72, "Creating model for stage: %s", v39, 0xCu);
      sub_1C5419E74(v40, 0, v38);
      sub_1C5419E74(v41, 1, MEMORY[0x1E69E7CA0] + 8);
      sub_1C5596A54();
    }
  }

  else
  {
  }

  v20 = MEMORY[0x1E69E5920](v71);
  (*(v51 + 8))(v50, v53, v20);
  if (v54)
  {
    v29 = &v81;
    v30 = 32;
    v31 = 0;
    swift_beginAccess();
    v34 = *(v47 + 56);
    MEMORY[0x1E69E5928](v34, v21);
    swift_endAccess();
    v32 = &v80;
    swift_beginAccess();
    v33 = *(v47 + 48);
    MEMORY[0x1E69E5928](v33, v22);
    swift_endAccess();
    v35 = [v34 dataclassesWithLocalDataForAddingAccount_];
    MEMORY[0x1E69E5920](v33);
    MEMORY[0x1E69E5920](v34);
    if (v35)
    {
      v28 = v35;
      v25 = v35;
      v26 = sub_1C5596714();
      MEMORY[0x1E69E5920](v25);
      v27 = v26;
    }

    else
    {
      v27 = 0;
    }

    v79 = v27;
    if (v27)
    {
      v82 = v79;
    }

    else
    {
      v82 = sub_1C5596E04();
      if (v79)
      {
        sub_1C541439C(&v79);
      }
    }

    v24 = v82;
    v78 = v82;
    type metadata accessor for SignInDataclassActionMergeListModel();
    return SignInDataclassActionMergeListModel.__allocating_init(dataclassList:)(v24);
  }

  else
  {
    type metadata accessor for SignInDataclassActionOfferModel();
    return SignInDataclassActionOfferModel.__allocating_init()();
  }
}

uint64_t sub_1C5537E84()
{
  sub_1C55381C8();
  MEMORY[0x1C6948CE0](v0 + 3);
  sub_1C5401EF8(v0 + 4);
  MEMORY[0x1E69E5920](v0[6]);
  MEMORY[0x1E69E5920](v0[7]);
  return v2;
}

void (*sub_1C5537FBC(void *a1))(void (***a1)(void *, uint64_t), char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL, 19851);
  *a1 = v3;
  v3[4] = (*(**v1 + 144))();
  return sub_1C545A074;
}

uint64_t block_copy_helper_18(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_44(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

unint64_t sub_1C5538208()
{
  v2 = qword_1EC15E740;
  if (!qword_1EC15E740)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15E740);
    return WitnessTable;
  }

  return v2;
}

double sub_1C5538338@<D0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  v3 = MEMORY[0x1E69E5928](*a1, a2);
  v8 = v5;
  (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x70))(v3);
  sub_1C5458604(v7, a3);
  *&result = MEMORY[0x1E69E5920](v5).n128_u64[0];
  return result;
}

double sub_1C55383E0(uint64_t a1, void *a2)
{
  sub_1C5432498(a1, v6);
  v5 = *a2;
  v2 = MEMORY[0x1E69E5928](*a2, a2);
  (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x78))(v6, v2);
  *&result = MEMORY[0x1E69E5920](v5).n128_u64[0];
  return result;
}

uint64_t sub_1C5538488@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR___AAUISignOutRemainedInformationActionInvokingOBWelcomeController_flowDirector;
  swift_beginAccess();
  sub_1C5432498(v3, a1);
  return swift_endAccess();
}

uint64_t sub_1C55384EC(void *a1)
{
  v6 = 0;
  v7 = a1;
  sub_1C5432498(a1, v5);
  __dst = (v1 + OBJC_IVAR___AAUISignOutRemainedInformationActionInvokingOBWelcomeController_flowDirector);
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0(__dst);
  sub_1C5458604(v5, __dst);
  swift_endAccess();
  return __swift_destroy_boxed_opaque_existential_0(a1);
}

double sub_1C55385E4@<D0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  v3 = MEMORY[0x1E69E5928](*a1, a2);
  *a3 = (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x88))(v3);
  *&result = MEMORY[0x1E69E5920](v5).n128_u64[0];
  return result;
}

double sub_1C5538684(void *a1, void *a2)
{
  sub_1C5402C1C(a1, &v7);
  v6 = v7;
  v5 = *a2;
  v2 = MEMORY[0x1E69E5928](*a2, a2);
  (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x90))(v6, v2);
  *&result = MEMORY[0x1E69E5920](v5).n128_u64[0];
  return result;
}

uint64_t sub_1C5538730()
{
  v3 = (v0 + OBJC_IVAR___AAUISignOutRemainedInformationActionInvokingOBWelcomeController_stage);
  swift_beginAccess();
  v4 = *v3;
  MEMORY[0x1E69E5928](*v3, v1);
  swift_endAccess();
  return v4;
}

double sub_1C55387A0(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1E69E5928](a1, a2);
  v5 = (v2 + OBJC_IVAR___AAUISignOutRemainedInformationActionInvokingOBWelcomeController_stage);
  swift_beginAccess();
  v3 = *v5;
  *v5 = a1;
  MEMORY[0x1E69E5920](v3);
  swift_endAccess();
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

double sub_1C55388A8@<D0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  v3 = MEMORY[0x1E69E5928](*a1, a2);
  *a3 = (*((*v5 & *MEMORY[0x1E69E7D40]) + 0xA0))(v3);
  *&result = MEMORY[0x1E69E5920](v5).n128_u64[0];
  return result;
}

double sub_1C5538948(void *a1, void *a2)
{
  v4 = *a1;
  MEMORY[0x1E69E5928](*a1, a2);
  v6 = *a2;
  v2 = MEMORY[0x1E69E5928](*a2, a2);
  (*((*v6 & *MEMORY[0x1E69E7D40]) + 0xA8))(v4, v2);
  *&result = MEMORY[0x1E69E5920](v6).n128_u64[0];
  return result;
}

uint64_t sub_1C5538A08()
{
  v3 = (v0 + OBJC_IVAR___AAUISignOutRemainedInformationActionInvokingOBWelcomeController_dataclassActionsStore);
  swift_beginAccess();
  v4 = *v3;
  MEMORY[0x1E69E5928](*v3, v1);
  swift_endAccess();
  return v4;
}

double sub_1C5538A78(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1E69E5928](a1, a2);
  v5 = (v2 + OBJC_IVAR___AAUISignOutRemainedInformationActionInvokingOBWelcomeController_dataclassActionsStore);
  swift_beginAccess();
  v3 = *v5;
  *v5 = a1;
  MEMORY[0x1E69E5920](v3);
  swift_endAccess();
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

double sub_1C5538B80@<D0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  v3 = MEMORY[0x1E69E5928](*a1, a2);
  *a3 = (*((*v5 & *MEMORY[0x1E69E7D40]) + 0xB8))(v3);
  *&result = MEMORY[0x1E69E5920](v5).n128_u64[0];
  return result;
}

double sub_1C5538C20(uint64_t *a1, void *a2)
{
  v4 = *a1;
  swift_unknownObjectRetain();
  v6 = *a2;
  v2 = MEMORY[0x1E69E5928](*a2, a2);
  (*((*v6 & *MEMORY[0x1E69E7D40]) + 0xC0))(v4, v2);
  *&result = MEMORY[0x1E69E5920](v6).n128_u64[0];
  return result;
}

uint64_t sub_1C5538CD8()
{
  v2 = (v0 + OBJC_IVAR___AAUISignOutRemainedInformationActionInvokingOBWelcomeController_model);
  swift_beginAccess();
  v3 = *v2;
  swift_unknownObjectRetain();
  swift_endAccess();
  return v3;
}

uint64_t sub_1C5538D40(uint64_t a1)
{
  swift_unknownObjectRetain();
  v3 = (v1 + OBJC_IVAR___AAUISignOutRemainedInformationActionInvokingOBWelcomeController_model);
  swift_beginAccess();
  *v3 = a1;
  swift_unknownObjectRelease();
  swift_endAccess();
  return swift_unknownObjectRelease();
}

char *SignOutRemainedInformationActionInvokingOBWelcomeController.init(model:stage:flowDirector:dataclassActionsStore:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v21 = 0;
  v20 = a1;
  v19 = a2;
  v18 = a3;
  v17 = a4;
  MEMORY[0x1E69E5928](a2, a2);
  *OBJC_IVAR___AAUISignOutRemainedInformationActionInvokingOBWelcomeController_stage = a2;
  v7 = v21;
  sub_1C5432498(a3, v16);
  sub_1C5458604(v16, &v7[OBJC_IVAR___AAUISignOutRemainedInformationActionInvokingOBWelcomeController_flowDirector]);
  v8 = v21;
  MEMORY[0x1E69E5928](a4, v4);
  *&v8[OBJC_IVAR___AAUISignOutRemainedInformationActionInvokingOBWelcomeController_dataclassActionsStore] = a4;
  v9 = v21;
  swift_unknownObjectRetain();
  *&v9[OBJC_IVAR___AAUISignOutRemainedInformationActionInvokingOBWelcomeController_model] = a1;
  v15.receiver = v21;
  v15.super_class = type metadata accessor for SignOutRemainedInformationActionInvokingOBWelcomeController();
  v14 = objc_msgSendSuper2(&v15, sel_initWithViewModel_, a1);
  MEMORY[0x1E69E5928](v14, v5);
  v21 = v14;
  SignOutRemainedInformationActionInvokingOBWelcomeController.setupInvokingActions()();
  MEMORY[0x1E69E5920](a4);
  __swift_destroy_boxed_opaque_existential_0(a3);
  MEMORY[0x1E69E5920](a2);
  swift_unknownObjectRelease();
  MEMORY[0x1E69E5920](v21);
  return v14;
}

Swift::Void __swiftcall SignOutRemainedInformationActionInvokingOBWelcomeController.setupInvokingActions()()
{
  v71 = sub_1C553F634;
  v72 = sub_1C553F63C;
  v73 = sub_1C545AE98;
  v74 = sub_1C545C6DC;
  v75 = sub_1C545C6D4;
  v76 = sub_1C545C6D4;
  v77 = sub_1C545C6E8;
  v95 = 0;
  v78 = 0;
  v89 = 0;
  v88 = 0;
  v87 = 0;
  v86 = 0;
  v79 = sub_1C5594C74();
  v80 = *(v79 - 8);
  v81 = v79 - 8;
  v82 = (*(v80 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v84, v0, v1, v2);
  v83 = v28 - v82;
  v95 = v3;
  *&v4 = MEMORY[0x1E69E5928](v3, v28 - v82).n128_u64[0];
  v85 = [v84 primaryButton];
  if (v85)
  {
    v70 = v85;
    v68 = v85;
    v89 = v85;
    MEMORY[0x1E69E5920](v84);
    *&v6 = MEMORY[0x1E69E5928](v84, v5).n128_u64[0];
    v7 = [v84 secondaryButton];
    v69 = v7;
    if (v7)
    {
      v67 = v69;
      v66 = v69;
      v88 = v69;
      MEMORY[0x1E69E5920](v84);
      v60 = 0;
      v54 = sub_1C545C6F4();
      MEMORY[0x1E69E5928](v84, v8);
      v55 = 24;
      v56 = 7;
      v51 = swift_allocObject();
      *(v51 + 16) = v84;
      v53 = sub_1C54398B0();
      v52 = v9;
      v50 = sub_1C545B878();
      sub_1C53FE664();
      v65 = sub_1C5596A44();
      v87 = v65;
      MEMORY[0x1E69E5928](v84, v10);
      v58 = swift_allocObject();
      *(v58 + 16) = v84;
      v61 = sub_1C54398B0();
      v59 = v11;
      v57 = sub_1C545B878();
      sub_1C53FE664();
      v64 = sub_1C5596A44();
      v86 = v64;
      v62 = 0x1FB0D4000uLL;
      v63 = 64;
      [v68 0x1FB0D4EF8];
      [v66 (v62 + 3832)];
      MEMORY[0x1E69E5920](v64);
      MEMORY[0x1E69E5920](v65);
      MEMORY[0x1E69E5920](v66);
      MEMORY[0x1E69E5920](v68);
      return;
    }

    MEMORY[0x1E69E5920](v84);
    MEMORY[0x1E69E5920](v68);
  }

  else
  {
    MEMORY[0x1E69E5920](v84);
  }

  v12 = v83;
  v13 = sub_1C54B0910();
  (*(v80 + 16))(v12, v13, v79);
  MEMORY[0x1E69E5928](v84, v14);
  v39 = 7;
  v40 = swift_allocObject();
  *(v40 + 16) = v84;
  v48 = sub_1C5594C54();
  v49 = sub_1C5596954();
  v37 = 17;
  v42 = swift_allocObject();
  *(v42 + 16) = 64;
  v43 = swift_allocObject();
  *(v43 + 16) = 8;
  v38 = 32;
  v15 = swift_allocObject();
  v16 = v40;
  v41 = v15;
  *(v15 + 16) = v73;
  *(v15 + 24) = v16;
  v17 = swift_allocObject();
  v18 = v41;
  v45 = v17;
  *(v17 + 16) = v74;
  *(v17 + 24) = v18;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0, &qword_1C55ADF60);
  v44 = sub_1C5596E04();
  v46 = v19;

  v20 = v42;
  v21 = v46;
  *v46 = v75;
  v21[1] = v20;

  v22 = v43;
  v23 = v46;
  v46[2] = v76;
  v23[3] = v22;

  v24 = v45;
  v25 = v46;
  v46[4] = v77;
  v25[5] = v24;
  sub_1C540FCD8();

  if (os_log_type_enabled(v48, v49))
  {
    v26 = v78;
    v30 = sub_1C5596A74();
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940, qword_1C55ADF70);
    v31 = sub_1C5419DC0(1, v29, v29);
    v32 = sub_1C5419DC0(0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v33 = &v94;
    v94 = v30;
    v34 = &v93;
    v93 = v31;
    v35 = &v92;
    v92 = v32;
    sub_1C5419E14(2, &v94);
    sub_1C5419E14(1, v33);
    v90 = v75;
    v91 = v42;
    sub_1C5419E28(&v90, v33, v34, v35);
    v36 = v26;
    if (v26)
    {

      __break(1u);
    }

    else
    {
      v90 = v76;
      v91 = v43;
      sub_1C5419E28(&v90, &v94, &v93, &v92);
      v28[1] = 0;
      v90 = v77;
      v91 = v45;
      sub_1C5419E28(&v90, &v94, &v93, &v92);
      _os_log_impl(&dword_1C5355000, v48, v49, "%@: Failed to create buttons.", v30, 0xCu);
      sub_1C5419E74(v31, 1, v29);
      sub_1C5419E74(v32, 0, MEMORY[0x1E69E7CA0] + 8);
      sub_1C5596A54();
    }
  }

  else
  {
  }

  v27 = MEMORY[0x1E69E5920](v48);
  (*(v80 + 8))(v83, v79, v27);
}

id SignOutRemainedInformationActionInvokingOBWelcomeController.__allocating_init(viewModel:)(uint64_t a1)
{
  v3 = [objc_allocWithZone(v1) initWithViewModel_];
  swift_unknownObjectRelease();
  return v3;
}

id SignOutRemainedInformationActionInvokingOBWelcomeController.__allocating_init(title:detailText:symbolName:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = objc_allocWithZone(v6);
  v17 = sub_1C5596554();
  if (a4)
  {
    v12 = sub_1C5596554();

    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a6)
  {
    v11 = sub_1C5596554();

    v7 = [v15 initWithTitle:v17 detailText:v13 symbolName:v11 contentLayout:?];
  }

  else
  {
    v7 = [v15 initWithTitle:v17 detailText:v13 symbolName:0 contentLayout:?];
  }

  v10 = v7;
  MEMORY[0x1E69E5920](v9);
  MEMORY[0x1E69E5920](v13);
  MEMORY[0x1E69E5920](v17);

  return v10;
}

id SignOutRemainedInformationActionInvokingOBWelcomeController.__allocating_init(title:detailText:icon:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = objc_allocWithZone(v5);
  v13 = sub_1C5596554();
  if (a4)
  {
    v8 = sub_1C5596554();

    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v7 = [v11 initWithTitle:v13 detailText:? icon:? contentLayout:?];
  MEMORY[0x1E69E5920](a5);
  MEMORY[0x1E69E5920](v9);
  MEMORY[0x1E69E5920](v13);

  return v7;
}

id SignOutRemainedInformationActionInvokingOBWelcomeController.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SignOutRemainedInformationActionInvokingOBWelcomeController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void (*sub_1C553A3F4(void *a1))(void (***a1)(void *, uint64_t), char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL, 4868);
  *a1 = v3;
  v3[4] = (*((**v1 & *MEMORY[0x1E69E7D40]) + 0x80))();
  return sub_1C545A074;
}

Swift::Void __swiftcall SignOutRemainedInformationActionInvokingOBWelcomeController.viewDidLoad()()
{
  v7 = v0;
  (MEMORY[0x1E69E5928])();
  v6.receiver = v0;
  v6.super_class = type metadata accessor for SignOutRemainedInformationActionInvokingOBWelcomeController();
  objc_msgSendSuper2(&v6, sel_viewDidLoad);
  v1 = (MEMORY[0x1E69E5920])();
  (*((*v0 & *MEMORY[0x1E69E7D40]) + 0xB8))(v1);
  type metadata accessor for SignOutRemainInformationModel();
  v5 = swift_dynamicCastClass();
  if (v5)
  {
    v4 = v5;
  }

  else
  {
    swift_unknownObjectRelease();
    v4 = 0;
  }

  if (v4)
  {
    v2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0xB0))();
    MEMORY[0x1E69E5920](v4);
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    sub_1C553A6A4(v3);
    MEMORY[0x1E69E5920](v3);
  }
}

double sub_1C553A6A4(void *a1)
{
  [v1 addChildViewController_];
  v71 = [a1 view];
  *&v3 = MEMORY[0x1E69E5920](a1).n128_u64[0];
  if (v71)
  {
    v69 = v71;
  }

  else
  {
    LOBYTE(v21) = 2;
    v27 = 44;
    LODWORD(v33) = 0;
    sub_1C5596C94();
    __break(1u);
  }

  [v69 setTranslatesAutoresizingMaskIntoConstraints_];
  MEMORY[0x1E69E5920](v69);
  v67 = [v1 contentView];
  MEMORY[0x1E69E5920](v1);
  v68 = [a1 view];
  *&v6 = MEMORY[0x1E69E5920](a1).n128_u64[0];
  if (v68)
  {
    v66 = v68;
  }

  else
  {
    LOBYTE(v22) = 2;
    v28 = 45;
    LODWORD(v34) = 0;
    sub_1C5596C94();
    __break(1u);
  }

  [v67 addSubview_];
  MEMORY[0x1E69E5920](v66);
  MEMORY[0x1E69E5920](v67);
  v63 = objc_opt_self();
  sub_1C545C768();
  sub_1C5596E04();
  v64 = v7;
  v65 = [a1 view];
  *&v8 = MEMORY[0x1E69E5920](a1).n128_u64[0];
  if (v65)
  {
    v62 = v65;
  }

  else
  {
    LOBYTE(v23) = 2;
    v29 = 47;
    LODWORD(v35) = 0;
    sub_1C5596C94();
    __break(1u);
  }

  v59 = [v62 0x1FBB23FD2];
  MEMORY[0x1E69E5920](v62);
  v57 = [v1 contentView];
  v58 = [v57 0x1FBB23FD2];
  v60 = [v59 constraintEqualToAnchor_];
  MEMORY[0x1E69E5920](v58);
  MEMORY[0x1E69E5920](v59);
  *v64 = v60;
  v61 = [a1 view];
  *&v11 = MEMORY[0x1E69E5920](a1).n128_u64[0];
  if (v61)
  {
    v56 = v61;
  }

  else
  {
    LOBYTE(v24) = 2;
    v30 = 48;
    LODWORD(v36) = 0;
    sub_1C5596C94();
    __break(1u);
  }

  v53 = [v56 0x1FBBB4950];
  MEMORY[0x1E69E5920](v56);
  v51 = [v1 contentView];
  v52 = [v51 0x1FBBB4950];
  MEMORY[0x1E69E5920](v51);
  v54 = [v53 constraintEqualToAnchor:v52 constant:-1.0];
  MEMORY[0x1E69E5920](v52);
  MEMORY[0x1E69E5920](v53);
  v64[1] = v54;
  v55 = [a1 view];
  *&v14 = MEMORY[0x1E69E5920](a1).n128_u64[0];
  if (v55)
  {
    v50 = v55;
  }

  else
  {
    LOBYTE(v25) = 2;
    v31 = 49;
    LODWORD(v37) = 0;
    sub_1C5596C94();
    __break(1u);
  }

  v47 = [v50 0x1FBB20D25];
  MEMORY[0x1E69E5920](v50);
  v45 = [v1 contentView];
  v46 = [v45 0x1FBB20D25];
  v48 = [v47 constraintEqualToAnchor_];
  MEMORY[0x1E69E5920](v46);
  MEMORY[0x1E69E5920](v47);
  v64[2] = v48;
  v49 = [a1 view];
  *&v17 = MEMORY[0x1E69E5920](a1).n128_u64[0];
  if (v49)
  {
    v44 = v49;
  }

  else
  {
    LOBYTE(v26) = 2;
    v32 = 50;
    LODWORD(v38) = 0;
    sub_1C5596C94();
    __break(1u);
  }

  v41 = [v44 0x1FBBC2576];
  MEMORY[0x1E69E5920](v44);
  v39 = [v1 headerView];
  v40 = [v39 0x1FBBC2576];
  v42 = [v41 constraintEqualToAnchor_];
  MEMORY[0x1E69E5920](v40);
  MEMORY[0x1E69E5920](v41);
  v64[3] = v42;
  sub_1C540FCD8();
  v43 = sub_1C5596704();

  [v63 activateConstraints_];
  MEMORY[0x1E69E5920](v43);
  [v1 didMoveToParentViewController_];
  *&result = MEMORY[0x1E69E5920](v1).n128_u64[0];
  return result;
}

double sub_1C553B084(uint64_t a1, void *a2)
{
  v6[2] = a1;
  v6[1] = a2;
  v6[0] = [a2 primaryButton];
  if (v6[0])
  {
    v4 = v6[0];
    MEMORY[0x1E69E5928](v6[0], v2);
    sub_1C5401EF8(v6);
    [v4 showsBusyIndicator];
    MEMORY[0x1E69E5920](v4);
  }

  else
  {
    sub_1C5401EF8(v6);
    MEMORY[0x1E69E5920](a2);
  }

  return sub_1C553B178();
}

double sub_1C553B178()
{
  v72 = sub_1C545AE98;
  v73 = sub_1C545C6DC;
  v74 = sub_1C545C6D4;
  v75 = sub_1C545C6D4;
  v76 = sub_1C545C6E8;
  v98 = 0;
  v77 = 0;
  v86 = 0;
  v78 = sub_1C5594C74();
  v79 = *(v78 - 8);
  v80 = v78 - 8;
  v81 = (*(v79 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v78, v1, v2, v3);
  v82 = &v33 - v81;
  v98 = v0;
  v83 = (*((*v0 & *MEMORY[0x1E69E7D40]) + 0xA0))(v4);
  v84 = [v83 dataclassesWithNonUploadedData];
  MEMORY[0x1E69E5920](v83);
  if (v84)
  {
    v70 = v84;
    v67 = v84;
    v68 = sub_1C5596714();
    MEMORY[0x1E69E5920](v67);
    v69 = v68;
  }

  else
  {
    v69 = 0;
  }

  v66 = v69;
  if (v69)
  {
    v65 = v66;
    v63 = v66;
    v86 = v66;
    v85 = v66;
    v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E820, &unk_1C55B69E0);
    sub_1C553F644();
    v5 = sub_1C55968F4();
    if ((v5 & 1) == 0)
    {
      sub_1C553C310(v63);

      return result;
    }
  }

  v7 = v82;
  v8 = sub_1C54B0910();
  (*(v79 + 16))(v7, v8, v78);
  MEMORY[0x1E69E5928](v71, v9);
  v52 = 7;
  v53 = swift_allocObject();
  *(v53 + 16) = v71;
  v61 = sub_1C5594C54();
  v62 = sub_1C5596974();
  v50 = 17;
  v55 = swift_allocObject();
  *(v55 + 16) = 64;
  v56 = swift_allocObject();
  *(v56 + 16) = 8;
  v51 = 32;
  v10 = swift_allocObject();
  v11 = v53;
  v54 = v10;
  *(v10 + 16) = v72;
  *(v10 + 24) = v11;
  v12 = swift_allocObject();
  v13 = v54;
  v58 = v12;
  *(v12 + 16) = v73;
  *(v12 + 24) = v13;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0, &qword_1C55ADF60);
  v57 = sub_1C5596E04();
  v59 = v14;

  v15 = v55;
  v16 = v59;
  *v59 = v74;
  v16[1] = v15;

  v17 = v56;
  v18 = v59;
  v59[2] = v75;
  v18[3] = v17;

  v19 = v58;
  v20 = v59;
  v59[4] = v76;
  v20[5] = v19;
  sub_1C540FCD8();

  if (os_log_type_enabled(v61, v62))
  {
    v21 = v77;
    v43 = sub_1C5596A74();
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940, qword_1C55ADF70);
    v44 = sub_1C5419DC0(1, v42, v42);
    v45 = sub_1C5419DC0(0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v46 = &v91;
    v91 = v43;
    v47 = &v90;
    v90 = v44;
    v48 = &v89;
    v89 = v45;
    sub_1C5419E14(2, &v91);
    sub_1C5419E14(1, v46);
    v87 = v74;
    v88 = v55;
    sub_1C5419E28(&v87, v46, v47, v48);
    v49 = v21;
    if (v21)
    {

      __break(1u);
    }

    else
    {
      v87 = v75;
      v88 = v56;
      sub_1C5419E28(&v87, &v91, &v90, &v89);
      v41 = 0;
      v87 = v76;
      v88 = v58;
      sub_1C5419E28(&v87, &v91, &v90, &v89);
      _os_log_impl(&dword_1C5355000, v61, v62, "%@: No dataclass with unsynced data. Not showing unsynced data alert. Advancing to removed data sheet step.", v43, 0xCu);
      sub_1C5419E74(v44, 1, v42);
      sub_1C5419E74(v45, 0, MEMORY[0x1E69E7CA0] + 8);
      sub_1C5596A54();
    }
  }

  else
  {
  }

  v22 = v71;
  v23 = MEMORY[0x1E69E5920](v61);
  v24 = (*(v79 + 8))(v82, v78, v23);
  v25 = *v22;
  v35 = MEMORY[0x1E69E7D40];
  v26 = *((v25 & *MEMORY[0x1E69E7D40]) + 0x70);
  v40 = &v95;
  v26(v24);
  v27 = v71;
  v37 = v96;
  v38 = v97;
  v36 = __swift_project_boxed_opaque_existential_0(v40, v96);
  v28 = (*((*v27 & *v35) + 0x88))();
  v39 = v93;
  v93[0] = 0;
  v93[1] = v28;
  v94 = 0;
  (*(v38 + 32))();
  sub_1C545CDC0(v39);
  __swift_destroy_boxed_opaque_existential_0(v40);
  *&v30 = MEMORY[0x1E69E5928](v71, v29).n128_u64[0];
  v92 = [v71 primaryButton];
  if (v92)
  {
    v33 = &v92;
    v34 = v92;
    MEMORY[0x1E69E5928](v92, v31);
    sub_1C5401EF8(v33);
    *&v32 = MEMORY[0x1E69E5920](v71).n128_u64[0];
    [v34 hidesBusyIndicator];
    *&result = MEMORY[0x1E69E5920](v34).n128_u64[0];
  }

  else
  {
    sub_1C5401EF8(&v92);
    *&result = MEMORY[0x1E69E5920](v71).n128_u64[0];
  }

  return result;
}

uint64_t sub_1C553BBA8(uint64_t a1, uint64_t *a2)
{
  v46 = a1;
  v52 = a2;
  v54 = sub_1C545AE98;
  v58 = sub_1C545C6DC;
  v60 = sub_1C545C6D4;
  v62 = sub_1C545C6D4;
  v65 = sub_1C545C6E8;
  v82 = 0;
  v81 = 0;
  v45 = 0;
  v51 = sub_1C5594C74();
  v49 = *(v51 - 8);
  v50 = v51 - 8;
  v47 = (*(v49 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v46, v52, v2, v3);
  v4 = &v29 - v47;
  v48 = &v29 - v47;
  v82 = v5;
  v81 = v6;
  v7 = sub_1C54B0910();
  (*(v49 + 16))(v4, v7, v51);
  MEMORY[0x1E69E5928](v52, v8);
  v56 = 7;
  v57 = swift_allocObject();
  *(v57 + 16) = v52;
  v69 = sub_1C5594C54();
  v70 = sub_1C5596974();
  v53 = 17;
  v61 = swift_allocObject();
  *(v61 + 16) = 64;
  v63 = swift_allocObject();
  *(v63 + 16) = 8;
  v55 = 32;
  v9 = swift_allocObject();
  v10 = v57;
  v59 = v9;
  *(v9 + 16) = v54;
  *(v9 + 24) = v10;
  v11 = swift_allocObject();
  v12 = v59;
  v66 = v11;
  *(v11 + 16) = v58;
  *(v11 + 24) = v12;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0, &qword_1C55ADF60);
  v64 = sub_1C5596E04();
  v67 = v13;

  v14 = v61;
  v15 = v67;
  *v67 = v60;
  v15[1] = v14;

  v16 = v63;
  v17 = v67;
  v67[2] = v62;
  v17[3] = v16;

  v18 = v66;
  v19 = v67;
  v67[4] = v65;
  v19[5] = v18;
  sub_1C540FCD8();

  if (os_log_type_enabled(v69, v70))
  {
    v20 = v45;
    v38 = sub_1C5596A74();
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940, qword_1C55ADF70);
    v39 = sub_1C5419DC0(1, v37, v37);
    v40 = sub_1C5419DC0(0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v41 = &v75;
    v75 = v38;
    v42 = &v74;
    v74 = v39;
    v43 = &v73;
    v73 = v40;
    sub_1C5419E14(2, &v75);
    sub_1C5419E14(1, v41);
    v71 = v60;
    v72 = v61;
    sub_1C5419E28(&v71, v41, v42, v43);
    v44 = v20;
    if (v20)
    {

      __break(1u);
    }

    else
    {
      v71 = v62;
      v72 = v63;
      sub_1C5419E28(&v71, &v75, &v74, &v73);
      v36 = 0;
      v71 = v65;
      v72 = v66;
      sub_1C5419E28(&v71, &v75, &v74, &v73);
      _os_log_impl(&dword_1C5355000, v69, v70, "%@: Declining action.", v38, 0xCu);
      sub_1C5419E74(v39, 1, v37);
      sub_1C5419E74(v40, 0, MEMORY[0x1E69E7CA0] + 8);
      sub_1C5596A54();
    }
  }

  else
  {
  }

  v21 = v52;
  v22 = MEMORY[0x1E69E5920](v69);
  v23 = (*(v49 + 8))(v48, v51, v22);
  v24 = *v21;
  v30 = MEMORY[0x1E69E7D40];
  v25 = *((v24 & *MEMORY[0x1E69E7D40]) + 0x70);
  v35 = &v78;
  v25(v23);
  v26 = v52;
  v32 = v79;
  v33 = v80;
  v31 = __swift_project_boxed_opaque_existential_0(v35, v79);
  v27 = (*((*v26 & *v30) + 0x88))();
  v34 = v76;
  v76[0] = 0;
  v76[1] = v27;
  v77 = 1;
  (*(v33 + 32))();
  sub_1C545CDC0(v34);
  return __swift_destroy_boxed_opaque_existential_0(v35);
}

double sub_1C553C310(uint64_t a1)
{
  v41 = a1;
  v36 = sub_1C553F6CC;
  v38 = sub_1C553F6D4;
  v29 = "Fatal error";
  v30 = "Unexpectedly found nil while implicitly unwrapping an Optional value";
  v31 = "AppleAccountUI/SignOutRemainedInformationActionInvokingOBWelcomeController.swift";
  v48 = 0;
  v47 = 0;
  v46 = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E830, &unk_1C55AEA50);
  v32 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2, v3, v4, v5);
  v40 = &v23 - v32;
  v33 = (*(*(type metadata accessor for SignOutUnsyncedDataAlert(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v41, v6, v7, v8);
  v42 = (&v23 - v33);
  v48 = v9;
  v47 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E838, &qword_1C55B69F0);
  sub_1C5594CF4();
  MEMORY[0x1E69E5928](v44, v10);
  v34 = 24;
  v35 = 7;
  v11 = swift_allocObject();
  v12 = v44;
  v37 = v11;
  *(v11 + 16) = v44;
  MEMORY[0x1E69E5928](v12, v13);
  v39 = swift_allocObject();
  *(v39 + 16) = v44;
  sub_1C5544E40();
  has_malloc_size = _swift_stdlib_has_malloc_size();
  sub_1C5548FE4(v41, v36, v37, v38, v39, v40, has_malloc_size & 1, v42);
  v43 = sub_1C5595484();
  v46 = v43;
  [v44 addChildViewController_];
  *&v16 = MEMORY[0x1E69E5928](v44, v15).n128_u64[0];
  v45 = [v44 view];
  MEMORY[0x1E69E5920](v44);
  if (v45)
  {
    v28 = v45;
  }

  else
  {
    sub_1C5596C94();
    __break(1u);
  }

  v26 = v28;
  *&v18 = MEMORY[0x1E69E5928](v43, v17).n128_u64[0];
  v27 = [v43 view];
  *&v19 = MEMORY[0x1E69E5920](v43).n128_u64[0];
  if (v27)
  {
    v25 = v27;
  }

  else
  {
    sub_1C5596C94();
    __break(1u);
  }

  v24 = v25;
  [v26 addSubview_];
  MEMORY[0x1E69E5920](v24);
  MEMORY[0x1E69E5920](v26);
  *&v21 = MEMORY[0x1E69E5928](v44, v20).n128_u64[0];
  [v43 didMoveToParentViewController_];
  MEMORY[0x1E69E5920](v44);
  *&result = MEMORY[0x1E69E5920](v43).n128_u64[0];
  return result;
}

uint64_t sub_1C553C728(uint64_t a1)
{
  v56 = a1;
  v58 = sub_1C545AE98;
  v62 = sub_1C545C6DC;
  v64 = sub_1C545C6D4;
  v66 = sub_1C545C6D4;
  v69 = sub_1C545C6E8;
  v46 = MEMORY[0x1E69E85E0];
  v47 = &unk_1C55B6AE0;
  v80 = 0;
  v48 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E860, &qword_1C55AE2A0);
  v49 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1, v2, v3, v4);
  v50 = &v34 - v49;
  v55 = sub_1C5594C74();
  v53 = *(v55 - 8);
  v54 = v55 - 8;
  v51 = (*(v53 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v56, v5, v6, v7);
  v8 = &v34 - v51;
  v52 = &v34 - v51;
  v80 = v9;
  v10 = sub_1C54B0910();
  (*(v53 + 16))(v8, v10, v55);
  MEMORY[0x1E69E5928](v56, v11);
  v60 = 7;
  v61 = swift_allocObject();
  *(v61 + 16) = v56;
  v73 = sub_1C5594C54();
  v74 = sub_1C5596974();
  v57 = 17;
  v65 = swift_allocObject();
  *(v65 + 16) = 64;
  v67 = swift_allocObject();
  *(v67 + 16) = 8;
  v59 = 32;
  v12 = swift_allocObject();
  v13 = v61;
  v63 = v12;
  *(v12 + 16) = v58;
  *(v12 + 24) = v13;
  v14 = swift_allocObject();
  v15 = v63;
  v70 = v14;
  *(v14 + 16) = v62;
  *(v14 + 24) = v15;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0, &qword_1C55ADF60);
  v68 = sub_1C5596E04();
  v71 = v16;

  v17 = v65;
  v18 = v71;
  *v71 = v64;
  v18[1] = v17;

  v19 = v67;
  v20 = v71;
  v71[2] = v66;
  v20[3] = v19;

  v21 = v70;
  v22 = v71;
  v71[4] = v69;
  v22[5] = v21;
  sub_1C540FCD8();

  if (os_log_type_enabled(v73, v74))
  {
    v23 = v48;
    v39 = sub_1C5596A74();
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940, qword_1C55ADF70);
    v40 = sub_1C5419DC0(1, v38, v38);
    v41 = sub_1C5419DC0(0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v42 = &v79;
    v79 = v39;
    v43 = &v78;
    v78 = v40;
    v44 = &v77;
    v77 = v41;
    sub_1C5419E14(2, &v79);
    sub_1C5419E14(1, v42);
    v75 = v64;
    v76 = v65;
    sub_1C5419E28(&v75, v42, v43, v44);
    v45 = v23;
    if (v23)
    {

      __break(1u);
    }

    else
    {
      v75 = v66;
      v76 = v67;
      sub_1C5419E28(&v75, &v79, &v78, &v77);
      v37 = 0;
      v75 = v69;
      v76 = v70;
      sub_1C5419E28(&v75, &v79, &v78, &v77);
      _os_log_impl(&dword_1C5355000, v73, v74, "%@: User confirmed removing unsynced data. Advancing to removed data sheet step.", v39, 0xCu);
      sub_1C5419E74(v40, 1, v38);
      sub_1C5419E74(v41, 0, MEMORY[0x1E69E7CA0] + 8);
      sub_1C5596A54();
    }
  }

  else
  {
  }

  v24 = MEMORY[0x1E69E5920](v73);
  (*(v53 + 8))(v52, v55, v24);
  v35 = 0;
  v25 = sub_1C5596814();
  (*(*(v25 - 8) + 56))(v50, 1);
  MEMORY[0x1E69E5928](v56, v26);
  sub_1C55967E4();
  v36 = sub_1C55967D4();
  v27 = swift_allocObject();
  v28 = v46;
  v29 = v56;
  v30 = v35;
  v31 = v50;
  v32 = v47;
  v27[2] = v36;
  v27[3] = v28;
  v27[4] = v29;
  sub_1C54061EC(v30, v30, v31, v32, v27, MEMORY[0x1E69E7CA8] + 8);
}

uint64_t sub_1C553CE70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = v4;
  v4[3] = 0;
  v4[3] = a4;
  v4[4] = sub_1C55967E4();
  v4[5] = sub_1C55967D4();
  v5 = swift_task_alloc();
  *(v7 + 48) = v5;
  *v5 = *(v7 + 16);
  v5[1] = sub_1C553CF48;

  return sub_1C553D0A0();
}

uint64_t sub_1C553CF48()
{
  *(*v0 + 16) = *v0;

  sub_1C55967A4();

  return MEMORY[0x1EEE6DFA0](sub_1C545F50C);
}

uint64_t sub_1C553D0A0()
{
  v1[37] = v0;
  v1[34] = v1;
  v1[35] = 0;
  v1[36] = 0;
  v1[32] = 0;
  v1[33] = 0;
  v2 = sub_1C5596284();
  v1[38] = v2;
  v1[39] = *(v2 - 8);
  v1[40] = swift_task_alloc();
  v3 = sub_1C55962A4();
  v1[41] = v3;
  v1[42] = *(v3 - 8);
  v1[43] = swift_task_alloc();
  v1[35] = v0;
  sub_1C55967E4();
  v1[44] = sub_1C55967D4();
  v1[45] = sub_1C55967A4();
  v1[46] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1C553D24C);
}

uint64_t sub_1C553D24C()
{
  *(v0 + 272) = v0;
  sub_1C553F6DC();
  v3 = sub_1C5404B48();
  *(v0 + 376) = v3;
  *(v0 + 16) = *(v0 + 272);
  *(v0 + 56) = v0 + 240;
  *(v0 + 24) = sub_1C553D38C;
  v2 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E848, &qword_1C55B6A00);
  *(v0 + 112) = v2;
  *(v0 + 80) = MEMORY[0x1E69E9820];
  *(v0 + 88) = 1107296256;
  *(v0 + 92) = 0;
  *(v0 + 96) = sub_1C553DBB4;
  *(v0 + 104) = &block_descriptor_19;
  [v3 tnlDisclaimerLabelWithCompletion_];

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t sub_1C553D38C()
{
  v4 = *v0;
  v5 = *v0;
  *(v5 + 272) = *v0;
  v1 = *(v4 + 48);
  *(v5 + 384) = v1;
  if (v1)
  {
    v2 = sub_1C553D7E8;
  }

  else
  {
    v2 = sub_1C553D504;
  }

  return MEMORY[0x1EEE6DFA0](v2);
}

uint64_t sub_1C553D504()
{
  v1 = *(v0 + 376);
  v12 = *(v0 + 344);
  v11 = *(v0 + 336);
  v13 = *(v0 + 328);
  v9 = *(v0 + 320);
  v8 = *(v0 + 312);
  v10 = *(v0 + 304);
  v6 = *(v0 + 296);
  *(v0 + 272) = v0;
  v7 = *(v0 + 240);
  v17 = *(v0 + 248);
  *(v0 + 256) = v7;
  *(v0 + 264) = v17;
  MEMORY[0x1E69E5920](v1);
  sub_1C5444CF8();
  v16 = sub_1C5596984();
  v15 = swift_allocObject();
  MEMORY[0x1E69E5928](v6, v2);
  swift_unknownObjectWeakInit();
  MEMORY[0x1E69E5920](v6);

  sub_1C5594CF4();
  v3 = swift_allocObject();
  v3[2] = v15;
  v3[3] = v7;
  v3[4] = v17;
  *(v0 + 224) = sub_1C553F7F0;
  *(v0 + 232) = v3;
  *(v0 + 192) = MEMORY[0x1E69E9820];
  *(v0 + 200) = 1107296256;
  *(v0 + 204) = 0;
  *(v0 + 208) = sub_1C544364C;
  *(v0 + 216) = &block_descriptor_60;
  v14 = _Block_copy((v0 + 192));
  sub_1C544369C();
  sub_1C54436B4();
  MEMORY[0x1C6947530](0, v12, v9, v14);
  (*(v8 + 8))(v9, v10);
  (*(v11 + 8))(v12, v13);
  _Block_release(v14);

  MEMORY[0x1E69E5920](v16);

  v4 = *(*(v0 + 272) + 8);

  return v4();
}

uint64_t sub_1C553D7E8(uint64_t a1)
{
  v19 = *(v1 + 384);
  v8 = *(v1 + 376);
  v14 = *(v1 + 344);
  v13 = *(v1 + 336);
  v15 = *(v1 + 328);
  v11 = *(v1 + 320);
  v10 = *(v1 + 312);
  v12 = *(v1 + 304);
  v9 = *(v1 + 296);
  *(v1 + 272) = v1;
  swift_willThrow();
  MEMORY[0x1E69E5920](v8);
  v2 = v19;
  *(v1 + 288) = v19;
  sub_1C5444CF8();
  v18 = sub_1C5596984();
  v17 = swift_allocObject();
  MEMORY[0x1E69E5928](v9, v3);
  swift_unknownObjectWeakInit();
  MEMORY[0x1E69E5920](v9);

  v4 = v19;
  v5 = swift_allocObject();
  *(v5 + 16) = v17;
  *(v5 + 24) = v19;
  *(v1 + 176) = sub_1C553F780;
  *(v1 + 184) = v5;
  *(v1 + 144) = MEMORY[0x1E69E9820];
  *(v1 + 152) = 1107296256;
  *(v1 + 156) = 0;
  *(v1 + 160) = sub_1C544364C;
  *(v1 + 168) = &block_descriptor_53;
  v16 = _Block_copy((v1 + 144));
  sub_1C544369C();
  sub_1C54436B4();
  MEMORY[0x1C6947530](0, v14, v11, v16);
  (*(v10 + 8))(v11, v12);
  (*(v13 + 8))(v14, v15);
  _Block_release(v16);

  MEMORY[0x1E69E5920](v18);

  v6 = *(*(v1 + 272) + 8);

  return v6();
}

double sub_1C553DAE0(void *a1, uint64_t a2)
{
  v6[1] = a1;
  v6[0] = [a1 primaryButton];
  if (v6[0])
  {
    v4 = v6[0];
    MEMORY[0x1E69E5928](v6[0], v2);
    sub_1C5401EF8(v6);
    [v4 hidesBusyIndicator];
    *&result = MEMORY[0x1E69E5920](v4).n128_u64[0];
  }

  else
  {
    sub_1C5401EF8(v6);
    *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  }

  return result;
}

double sub_1C553DBB4(uint64_t a1, uint64_t a2, void *a3)
{
  MEMORY[0x1E69E5928](a2, a2);
  MEMORY[0x1E69E5928](a3, v3);
  v11 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v7 = a3;
    sub_1C542501C(v11, a3, MEMORY[0x1E69E6158]);
  }

  else
  {
    MEMORY[0x1E69E5928](a2, v4);
    v12[0] = sub_1C5596574();
    v12[1] = v5;
    sub_1C5425080(v11, v12, MEMORY[0x1E69E6158]);
    MEMORY[0x1E69E5920](a2);
  }

  MEMORY[0x1E69E5920](a3);
  *&result = MEMORY[0x1E69E5920](a2).n128_u64[0];
  return result;
}

uint64_t sub_1C553DCC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v68 = a3;
  v71 = a2;
  v70 = a1;
  v69 = 0;
  v94 = 0;
  v93 = 0;
  v92 = 0;
  v67 = 0;
  v86 = 0;
  v72 = sub_1C5594C74();
  v73 = *(v72 - 8);
  v74 = v73;
  MEMORY[0x1EEE9AC00](v70, v71, v68, 0);
  v75 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = v4 + 16;
  v94 = v4 + 16;
  v92 = v5;
  v93 = v6;
  v77 = &v91;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v78 = Strong;
  swift_endAccess();
  if (Strong)
  {
    v66 = v78;
    v60 = v78;
    v86 = v78;
    v9 = v78;
    v10 = [v60 primaryButton];
    v85 = v10;
    if (v10)
    {
      v59 = v85;
      v11 = v85;
      sub_1C5401EF8(&v85);

      [v59 hidesBusyIndicator];
    }

    else
    {
      sub_1C5401EF8(&v85);
    }

    v12 = *v60;
    v51 = MEMORY[0x1E69E7D40];
    v13 = *((v12 & *MEMORY[0x1E69E7D40]) + 0x70);
    v57 = &v82;
    v13();
    v14 = v60;
    v54 = v83;
    v55 = v84;
    v52 = __swift_project_boxed_opaque_existential_0(v57, v83);
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D7F8, qword_1C55B3478);
    v46 = 1;
    v47 = sub_1C5596E04();
    v48 = v15;
    v16 = sub_1C55965F4("tnlDisclaimerLabel", 18, v46);
    v17 = v48;
    *v48 = v16;
    v17[1] = v18;
    sub_1C5594CF4();
    v19 = v71;
    v20 = v48;
    v21 = v68;
    v50 = MEMORY[0x1E69E6158];
    v48[5] = MEMORY[0x1E69E6158];
    v20[2] = v19;
    v20[3] = v21;
    sub_1C540FCD8();
    v53 = sub_1C5596454();
    v22 = (*((*v14 & *v51) + 0x88))();
    v80[0] = v53;
    v80[1] = v22;
    v81 = 0;
    v23 = *(v55 + 32);
    v56 = v80;
    v23();
    sub_1C545CDC0(v56);
    __swift_destroy_boxed_opaque_existential_0(v57);

    return v67;
  }

  else
  {
    v7 = v75;
    v8 = sub_1C54B0910();
    (*(v74 + 16))(v7, v8, v72);
    v64 = sub_1C5594C54();
    v61 = v64;
    v63 = sub_1C5596944();
    v62 = v63;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0, &qword_1C55ADF60);
    v65 = sub_1C5596E04();
    if (os_log_type_enabled(v64, v63))
    {
      v24 = v67;
      v37 = sub_1C5596A74();
      v33 = v37;
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940, qword_1C55ADF70);
      v35 = 0;
      v38 = sub_1C5419DC0(0, v34, v34);
      v36 = v38;
      v39 = sub_1C5419DC0(v35, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v90 = v37;
      v89 = v38;
      v88 = v39;
      v40 = 0;
      v41 = &v90;
      sub_1C5419E14(0, &v90);
      sub_1C5419E14(v40, v41);
      v87 = v65;
      v42 = &v30;
      MEMORY[0x1EEE9AC00](&v30, v25, v26, v27);
      v43 = &v30 - 6;
      *(&v30 - 4) = v28;
      *(&v30 - 3) = &v89;
      *(&v30 - 2) = &v88;
      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0, &unk_1C55AE2C0);
      sub_1C5419F0C();
      sub_1C55966B4();
      v45 = v24;
      if (v24)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_1C5355000, v61, v62, "Self is nil, skip fetching tnl disclaimer label.", v33, 2u);
        v31 = 0;
        sub_1C5419E74(v36, 0, v34);
        sub_1C5419E74(v39, v31, MEMORY[0x1E69E7CA0] + 8);
        sub_1C5596A54();

        v32 = v45;
      }
    }

    else
    {

      v32 = v67;
    }

    v30 = v32;

    (*(v74 + 8))(v75, v72);
    return v30;
  }
}

uint64_t sub_1C553E48C(uint64_t a1, void *a2)
{
  v144 = a2;
  v143 = a1;
  v142 = 0;
  v174 = 0;
  v173 = 0;
  v141 = 0;
  v167 = 0;
  v145 = sub_1C5594C74();
  v146 = *(v145 - 8);
  v147 = v146;
  v148 = *(v146 + 64);
  MEMORY[0x1EEE9AC00](v143, v144, v145, 0);
  v150 = (v148 + 15) & 0xFFFFFFFFFFFFFFF0;
  v149 = &v56 - v150;
  MEMORY[0x1EEE9AC00](v2, v3, &v56 - v150, v4);
  v151 = &v56 - v150;
  v152 = v5 + 16;
  v174 = v5 + 16;
  v173 = v6;
  v153 = &v172;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v154 = Strong;
  swift_endAccess();
  if (Strong)
  {
    v140 = v154;
    v134 = v154;
    v167 = v154;
    v9 = v154;
    v10 = [v134 primaryButton];
    v166 = v10;
    if (v10)
    {
      v133 = v166;
      v11 = v166;
      sub_1C5401EF8(&v166);

      [v133 hidesBusyIndicator];
    }

    else
    {
      sub_1C5401EF8(&v166);
    }

    v12 = v149;
    v13 = sub_1C54B0910();
    (*(v147 + 16))(v12, v13, v145);
    v14 = v134;
    v103 = 24;
    v118 = 7;
    v15 = swift_allocObject();
    v16 = v144;
    v108 = v15;
    *(v15 + 16) = v134;
    v17 = v16;
    v116 = swift_allocObject();
    *(v116 + 16) = v144;
    sub_1C54398B0();

    v132 = sub_1C5594C54();
    v104 = v132;
    v131 = sub_1C5596954();
    v105 = v131;
    v112 = 17;
    v122 = swift_allocObject();
    v106 = v122;
    v111 = 64;
    *(v122 + 16) = 64;
    v123 = swift_allocObject();
    v107 = v123;
    v114 = 8;
    *(v123 + 16) = 8;
    v117 = 32;
    v18 = swift_allocObject();
    v19 = v108;
    v109 = v18;
    *(v18 + 16) = sub_1C545AE98;
    *(v18 + 24) = v19;
    v20 = swift_allocObject();
    v21 = v109;
    v124 = v20;
    v110 = v20;
    *(v20 + 16) = sub_1C545C6DC;
    *(v20 + 24) = v21;
    v125 = swift_allocObject();
    v113 = v125;
    *(v125 + 16) = v111;
    v126 = swift_allocObject();
    v115 = v126;
    *(v126 + 16) = v114;
    v22 = swift_allocObject();
    v23 = v116;
    v119 = v22;
    *(v22 + 16) = sub_1C5467F9C;
    *(v22 + 24) = v23;
    v24 = swift_allocObject();
    v25 = v119;
    v120 = v24;
    *(v24 + 16) = sub_1C5467FA4;
    *(v24 + 24) = v25;
    v26 = swift_allocObject();
    v27 = v120;
    v129 = v26;
    v121 = v26;
    *(v26 + 16) = sub_1C545C6DC;
    *(v26 + 24) = v27;
    v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0, &qword_1C55ADF60);
    v127 = sub_1C5596E04();
    v128 = v28;

    v29 = v122;
    v30 = v128;
    *v128 = sub_1C545C6D4;
    v30[1] = v29;

    v31 = v123;
    v32 = v128;
    v128[2] = sub_1C545C6D4;
    v32[3] = v31;

    v33 = v124;
    v34 = v128;
    v128[4] = sub_1C545C6E8;
    v34[5] = v33;

    v35 = v125;
    v36 = v128;
    v128[6] = sub_1C545C6D4;
    v36[7] = v35;

    v37 = v126;
    v38 = v128;
    v128[8] = sub_1C545C6D4;
    v38[9] = v37;

    v39 = v128;
    v40 = v129;
    v128[10] = sub_1C545C6E8;
    v39[11] = v40;
    sub_1C540FCD8();

    if (os_log_type_enabled(v132, v131))
    {
      v41 = v141;
      v96 = sub_1C5596A74();
      v93 = v96;
      v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940, qword_1C55ADF70);
      v99 = 2;
      v97 = sub_1C5419DC0(2, v94, v94);
      v95 = v97;
      v98 = sub_1C5419DC0(0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v160 = v96;
      v159 = v97;
      v158 = v98;
      v100 = &v160;
      sub_1C5419E14(v99, &v160);
      sub_1C5419E14(v99, v100);
      v156 = sub_1C545C6D4;
      v157 = v106;
      sub_1C5419E28(&v156, v100, &v159, &v158);
      v101 = v41;
      v102 = v41;
      if (v41)
      {
        v91 = 0;

        __break(1u);
      }

      else
      {
        v156 = sub_1C545C6D4;
        v157 = v107;
        sub_1C5419E28(&v156, &v160, &v159, &v158);
        v89 = 0;
        v90 = 0;
        v156 = sub_1C545C6E8;
        v157 = v110;
        sub_1C5419E28(&v156, &v160, &v159, &v158);
        v87 = 0;
        v88 = 0;
        v156 = sub_1C545C6D4;
        v157 = v113;
        sub_1C5419E28(&v156, &v160, &v159, &v158);
        v85 = 0;
        v86 = 0;
        v156 = sub_1C545C6D4;
        v157 = v115;
        sub_1C5419E28(&v156, &v160, &v159, &v158);
        v83 = 0;
        v84 = 0;
        v156 = sub_1C545C6E8;
        v157 = v121;
        sub_1C5419E28(&v156, &v160, &v159, &v158);
        v81 = 0;
        v82 = 0;
        _os_log_impl(&dword_1C5355000, v104, v105, "%@: Failed to fetch theft and loss disclaimer label. Error: %@", v93, 0x16u);
        sub_1C5419E74(v95, 2, v94);
        sub_1C5419E74(v98, 0, MEMORY[0x1E69E7CA0] + 8);
        sub_1C5596A54();

        v92 = v81;
      }
    }

    else
    {
      v42 = v141;

      v92 = v42;
    }

    v43 = v134;
    v79 = v92;

    v44 = (*(v147 + 8))(v149, v145);
    v45 = *v43;
    v73 = MEMORY[0x1E69E7D40];
    v46 = *((v45 & *MEMORY[0x1E69E7D40]) + 0x70);
    v78 = &v163;
    v46(v44);
    v47 = v134;
    v75 = v164;
    v76 = v165;
    v74 = __swift_project_boxed_opaque_existential_0(v78, v164);
    v48 = (*((*v47 & *v73) + 0x88))();
    v161[0] = 0;
    v161[1] = v48;
    v162 = 0;
    v49 = *(v76 + 32);
    v77 = v161;
    v49();
    sub_1C545CDC0(v77);
    __swift_destroy_boxed_opaque_existential_0(v78);

    return v79;
  }

  else
  {
    v7 = v151;
    v8 = sub_1C54B0910();
    (*(v147 + 16))(v7, v8, v145);
    v138 = sub_1C5594C54();
    v135 = v138;
    v137 = sub_1C5596944();
    v136 = v137;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0, &qword_1C55ADF60);
    v139 = sub_1C5596E04();
    if (os_log_type_enabled(v138, v137))
    {
      v50 = v141;
      v64 = sub_1C5596A74();
      v60 = v64;
      v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940, qword_1C55ADF70);
      v62 = 0;
      v65 = sub_1C5419DC0(0, v61, v61);
      v63 = v65;
      v66 = sub_1C5419DC0(v62, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v171 = v64;
      v170 = v65;
      v169 = v66;
      v67 = 0;
      v68 = &v171;
      sub_1C5419E14(0, &v171);
      sub_1C5419E14(v67, v68);
      v168 = v139;
      v69 = &v56;
      MEMORY[0x1EEE9AC00](&v56, v51, v52, v53);
      v70 = &v56 - 6;
      *(&v56 - 4) = v54;
      *(&v56 - 3) = &v170;
      *(&v56 - 2) = &v169;
      v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0, &unk_1C55AE2C0);
      sub_1C5419F0C();
      sub_1C55966B4();
      v72 = v50;
      if (v50)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_1C5355000, v135, v136, "Self is nil, skip fetching tnl disclaimer label.", v60, 2u);
        v58 = 0;
        sub_1C5419E74(v63, 0, v61);
        sub_1C5419E74(v66, v58, MEMORY[0x1E69E7CA0] + 8);
        sub_1C5596A54();

        v59 = v72;
      }
    }

    else
    {

      v59 = v141;
    }

    v57 = v59;

    (*(v147 + 8))(v151, v145);
    return v57;
  }
}

unint64_t sub_1C553F644()
{
  v2 = qword_1EC15E828;
  if (!qword_1EC15E828)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15E820, &unk_1C55B69E0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15E828);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C553F6DC()
{
  v2 = qword_1EC15E840;
  if (!qword_1EC15E840)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EC15E840);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t block_copy_helper_51(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_58(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t sub_1C553FC48(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_1C5405B1C;

  return sub_1C553CE70(a1, v6, v7, v8);
}

uint64_t sub_1C553FD8C()
{
  v3 = (v0 + OBJC_IVAR____TtC14AppleAccountUI21SNaPEditorInteraction_view);
  swift_beginAccess();
  v4 = *v3;
  MEMORY[0x1E69E5928](*v3, v1);
  swift_endAccess();
  return v4;
}

double sub_1C553FE64(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1E69E5928](a1, a2);
  v5 = (v2 + OBJC_IVAR____TtC14AppleAccountUI21SNaPEditorInteraction_view);
  swift_beginAccess();
  v3 = *v5;
  *v5 = a1;
  MEMORY[0x1E69E5920](v3);
  swift_endAccess();
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

uint64_t sub_1C553FF68()
{
  v2 = (v0 + OBJC_IVAR____TtC14AppleAccountUI21SNaPEditorInteraction_isPresented);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_1C553FFF4(uint64_t a1, uint64_t a2, char a3)
{

  v5 = v3 + OBJC_IVAR____TtC14AppleAccountUI21SNaPEditorInteraction_isPresented;
  swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2;
  *(v5 + 16) = a3;

  swift_endAccess();
}

uint64_t sub_1C5540128(uint64_t result)
{
  if ((result & 1) == 0)
  {
    v1 = (v3 + OBJC_IVAR____TtC14AppleAccountUI21SNaPEditorInteraction_shouldPresentEditor);
    swift_beginAccess();
    v2 = *v1;
    result = swift_endAccess();
    if (v2)
    {
      return sub_1C55401D4();
    }
  }

  return result;
}

uint64_t sub_1C55401D4()
{
  v45 = 0;
  v61 = 0;
  v44 = 0;
  v55 = 0;
  v54 = 0;
  v46 = sub_1C5594C74();
  v47 = *(v46 - 8);
  v48 = v47;
  MEMORY[0x1EEE9AC00](v46 - 8, v46, v1, 0);
  v49 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = v0;
  v50 = (v0 + OBJC_IVAR____TtC14AppleAccountUI21SNaPEditorInteraction_view);
  v52 = &v60;
  swift_beginAccess();
  v53 = *v50;
  v51 = v53;
  v3 = v53;
  swift_endAccess();
  if (v53)
  {
    v42 = v51;
    v40 = v51;
    v55 = v51;
    v4 = [objc_opt_self() _viewControllerForFullScreenPresentationFromView_];
    v41 = v4;
    if (v4)
    {
      v39 = v41;
      v37 = v41;
      v54 = v41;
      v36 = *(v43 + OBJC_IVAR____TtC14AppleAccountUI21SNaPEditorInteraction_onboardingController);
      v5 = v36;
      [v36 presentSettingsForMode:0 fromViewController:v37];

      return v44;
    }
  }

  v6 = v49;
  v7 = sub_1C54B05F8();
  (*(v48 + 16))(v6, v7, v46);
  v34 = sub_1C5594C54();
  v31 = v34;
  v33 = sub_1C5596954();
  v32 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0, &qword_1C55ADF60);
  v35 = sub_1C5596E04();
  if (os_log_type_enabled(v34, v33))
  {
    v8 = v44;
    v22 = sub_1C5596A74();
    v18 = v22;
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940, qword_1C55ADF70);
    v20 = 0;
    v23 = sub_1C5419DC0(0, v19, v19);
    v21 = v23;
    v24 = sub_1C5419DC0(v20, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v59 = v22;
    v58 = v23;
    v57 = v24;
    v25 = 0;
    v26 = &v59;
    sub_1C5419E14(0, &v59);
    sub_1C5419E14(v25, v26);
    v56 = v35;
    v27 = &v14;
    MEMORY[0x1EEE9AC00](&v14, v9, v10, v11);
    v28 = &v14 - 6;
    *(&v14 - 4) = v12;
    *(&v14 - 3) = &v58;
    *(&v14 - 2) = &v57;
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0, &unk_1C55AE2C0);
    sub_1C5419F0C();
    sub_1C55966B4();
    v30 = v8;
    if (v8)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_1C5355000, v31, v32, "No view controller to present SNaP editor.", v18, 2u);
      v16 = 0;
      sub_1C5419E74(v21, 0, v19);
      sub_1C5419E74(v24, v16, MEMORY[0x1E69E7CA0] + 8);
      sub_1C5596A54();

      v17 = v30;
    }
  }

  else
  {

    v17 = v44;
  }

  v15 = v17;

  (*(v48 + 8))(v49, v46);
  return v15;
}

uint64_t sub_1C5540738()
{
  v2 = (v0 + OBJC_IVAR____TtC14AppleAccountUI21SNaPEditorInteraction_shouldPresentEditor);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3 & 1;
}

uint64_t sub_1C55407A0(char a1)
{
  v3 = (v1 + OBJC_IVAR____TtC14AppleAccountUI21SNaPEditorInteraction_shouldPresentEditor);
  swift_beginAccess();
  v6 = *v3;
  swift_endAccess();
  v4 = (v1 + OBJC_IVAR____TtC14AppleAccountUI21SNaPEditorInteraction_shouldPresentEditor);
  swift_beginAccess();
  *v4 = a1;
  swift_endAccess();
  return sub_1C5540128(v6 & 1);
}

void (*sub_1C5540864(void *a1))(uint64_t a1)
{
  v4 = __swift_coroFrameAllocStub(0x28uLL, 29350);
  *a1 = v4;
  v4[3] = v1;
  v3 = (v1 + OBJC_IVAR____TtC14AppleAccountUI21SNaPEditorInteraction_shouldPresentEditor);
  swift_beginAccess();
  v5 = *v3;
  swift_endAccess();
  *(v4 + 32) = v5;
  return sub_1C5540918;
}

void sub_1C5540918(uint64_t a1)
{
  v1 = *a1;
  sub_1C55407A0(*(*a1 + 32) & 1);
  free(v1);
}

id sub_1C5540984()
{
  sub_1C55421B8();
  sub_1C554221C();
  v0 = sub_1C5404B48();
  return sub_1C55409D4(v0);
}

uint64_t sub_1C5540A14(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC14AppleAccountUI21SNaPEditorInteraction_onboardingController);
  MEMORY[0x1E69E5928](v4, a2);
  return v4;
}

char *sub_1C5540AAC(uint64_t a1, uint64_t a2, char a3)
{
  ObjectType = swift_getObjectType();
  v18 = a1;
  v19 = a2;
  v20 = a3;
  v21 = v3;
  *&v3[OBJC_IVAR____TtC14AppleAccountUI21SNaPEditorInteraction_view] = 0;
  v21[OBJC_IVAR____TtC14AppleAccountUI21SNaPEditorInteraction_shouldPresentEditor] = 0;
  v10 = OBJC_IVAR____TtC14AppleAccountUI21SNaPEditorInteraction_onboardingController;
  sub_1C55421B8();
  sub_1C554221C();
  v4 = sub_1C5404B48();
  *&v21[v10] = sub_1C55409D4(v4);

  v5 = &v21[OBJC_IVAR____TtC14AppleAccountUI21SNaPEditorInteraction_isPresented];
  *v5 = a1;
  *(v5 + 1) = a2;
  v5[16] = a3;
  v17.receiver = v21;
  v17.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v17, sel_init);
  MEMORY[0x1E69E5928](v16, v6);
  v21 = v16;
  v13 = *&v16[OBJC_IVAR____TtC14AppleAccountUI21SNaPEditorInteraction_onboardingController];
  MEMORY[0x1E69E5928](v13, v7);
  [v13 setDelegate_];
  swift_unknownObjectRelease();
  MEMORY[0x1E69E5920](v13);

  MEMORY[0x1E69E5920](v21);
  return v16;
}

uint64_t sub_1C5540C88(uint64_t a1)
{
  v4 = (v1 + OBJC_IVAR____TtC14AppleAccountUI21SNaPEditorInteraction_view);
  swift_beginAccess();
  v2 = *v4;
  *v4 = 0;
  MEMORY[0x1E69E5920](v2);
  return swift_endAccess();
}

uint64_t sub_1C5540D74(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1E69E5928](a1, a2);
  v5 = (v2 + OBJC_IVAR____TtC14AppleAccountUI21SNaPEditorInteraction_view);
  swift_beginAccess();
  v3 = *v5;
  *v5 = a1;
  MEMORY[0x1E69E5920](v3);
  return swift_endAccess();
}

void sub_1C5540E74(uint64_t a1)
{
  v53 = a1;
  v63 = 0;
  v78 = 0;
  v77 = 0;
  v51 = 0;
  v60 = sub_1C5594C74();
  v54 = v60;
  v55 = *(v60 - 8);
  v59 = v55;
  v56 = v55;
  v57 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v53, v60, v1, v2);
  v3 = &v17 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = v3;
  v78 = v4;
  v77 = v5;
  v6 = sub_1C54B05F8();
  (*(v59 + 16))(v3, v6, v60);
  v65 = sub_1C5594C54();
  v61 = v65;
  v64 = sub_1C5596944();
  v62 = v64;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0, &qword_1C55ADF60);
  v66 = sub_1C5596E04();
  if (os_log_type_enabled(v65, v64))
  {
    v7 = v51;
    v42 = sub_1C5596A74();
    v38 = v42;
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940, qword_1C55ADF70);
    v40 = 0;
    v43 = sub_1C5419DC0(0, v39, v39);
    v41 = v43;
    v44 = sub_1C5419DC0(v40, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v70 = v42;
    v69 = v43;
    v68 = v44;
    v45 = 0;
    v46 = &v70;
    sub_1C5419E14(0, &v70);
    sub_1C5419E14(v45, v46);
    v67 = v66;
    v47 = &v17;
    MEMORY[0x1EEE9AC00](&v17, v8, v9, v10);
    v48 = &v17 - 6;
    *(&v17 - 4) = v11;
    *(&v17 - 3) = &v69;
    *(&v17 - 2) = &v68;
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0, &unk_1C55AE2C0);
    sub_1C5419F0C();
    sub_1C55966B4();
    v50 = v7;
    if (v7)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_1C5355000, v61, v62, "SNaP editor dismissed.", v38, 2u);
      v36 = 0;
      sub_1C5419E74(v41, 0, v39);
      sub_1C5419E74(v44, v36, MEMORY[0x1E69E7CA0] + 8);
      sub_1C5596A54();

      v37 = v50;
    }
  }

  else
  {

    v37 = v51;
  }

  (*(v56 + 8))(v58, v54);
  v26 = (v52 + OBJC_IVAR____TtC14AppleAccountUI21SNaPEditorInteraction_isPresented);
  v27 = &v76;
  v35 = 0;
  swift_beginAccess();
  v30 = *v26;
  v31 = v26[1];
  v28 = *(v26 + 16);

  swift_endAccess();

  v74[0] = v30;
  v74[1] = v31;
  v75 = v28;
  v32 = 0;
  v73 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E8A0, &qword_1C55B2350);
  v29 = v74;
  sub_1C55960A4();
  sub_1C5436F54(v29);

  sub_1C55407A0(v32);
  v33 = [objc_opt_self() defaultCenter];
  v34 = *sub_1C55415F0();
  v12 = v34;
  v71[0] = v35;
  v71[1] = v35;
  v71[2] = v35;
  v72 = v35;
  if (v35)
  {
    v20 = v72;
    v23 = v71;
    v13 = __swift_project_boxed_opaque_existential_0(v71, v72);
    v18 = *(v20 - 8);
    v19 = v18;
    v22 = &v17;
    v15 = MEMORY[0x1EEE9AC00](&v17, v13, v20, v14);
    v21 = &v17 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v19 + 16))(v15);
    v24 = sub_1C5596E14();
    (*(v19 + 8))(v21, v20);
    __swift_destroy_boxed_opaque_existential_0(v23);
    v25 = v24;
  }

  else
  {
    v25 = 0;
  }

  [v33 postNotificationName:v34 object:{v25, v18}];
  swift_unknownObjectRelease();
}

uint64_t *sub_1C55415F0()
{
  if (qword_1EC169340 != -1)
  {
    swift_once();
  }

  return &qword_1EC16B4E0;
}

id sub_1C55417E8()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C55418A0(uint64_t a1, uint64_t a2, char a3)
{
  v13 = a1;
  v14 = a2;
  v15 = a3;

  v10 = a1;
  v11 = a2;
  v12 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E8A0, &qword_1C55B2350);
  MEMORY[0x1C6946C30](&v9, v3);
  v8 = v9;

  return v8 & 1;
}

uint64_t sub_1C554194C(char a1, uint64_t a2, uint64_t a3, char a4)
{
  v13 = a1 & 1;
  v10 = a2;
  v11 = a3;
  v12 = a4;

  v8[0] = a2;
  v8[1] = a3;
  v9 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E8A0, &qword_1C55B2350);
  sub_1C55960A4();
  sub_1C5436F54(v8);
}

void (*sub_1C5541A34(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t *a1, char a2)
{
  v4 = __swift_coroFrameAllocStub(0x60uLL, 43896);
  *a1 = v4;
  v4[20] = a4 & 1;
  *(v4 + 10) = a3;
  *(v4 + 9) = a2;

  *v4 = a2;
  *(v4 + 1) = a3;
  v4[16] = a4;
  *(v4 + 11) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E8A0, &qword_1C55B2350);
  MEMORY[0x1C6946C30]();
  return sub_1C5541B34;
}

void sub_1C5541B34(uint64_t *a1, char a2)
{
  v10 = *a1;
  if (a2)
  {
    v2 = *(v10 + 20);
    v5 = *(v10 + 80);
    v4 = *(v10 + 72);
    v3 = *(v10 + 17);

    *(v10 + 24) = v4;
    *(v10 + 32) = v5;
    *(v10 + 40) = v2;
    *(v10 + 18) = v3;
    sub_1C55960A4();
    sub_1C5436F54((v10 + 24));
  }

  else
  {
    v6 = *(v10 + 20);
    v9 = *(v10 + 80);
    v8 = *(v10 + 72);
    v7 = *(v10 + 17);

    *(v10 + 48) = v8;
    *(v10 + 56) = v9;
    *(v10 + 64) = v6;
    *(v10 + 19) = v7;
    sub_1C55960A4();
    sub_1C5436F54((v10 + 48));
  }

  free(v10);
}

uint64_t sub_1C5541C88(uint64_t a1, uint64_t a2, char a3)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E8A0, &qword_1C55B2350);
  sub_1C55960C4();

  return v4;
}

uint64_t sub_1C5541D90(uint64_t a1, uint64_t a2, char a3)
{

  *v3 = a1;
  *(v3 + 8) = a2;
  *(v3 + 16) = a3;
}

char *sub_1C5541E04(uint64_t a1, uint64_t a2, char a3)
{
  type metadata accessor for SNaPEditorInteraction();
  v3 = sub_1C5541C88(a1, a2, a3 & 1);
  return sub_1C5540A5C(v3, v5, v4 & 1);
}

uint64_t sub_1C5541E74(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = sub_1C5541C88(a2, a3, a4 & 1);
  v10 = v5;
  v11 = v6;
  v12 = a1 + OBJC_IVAR____TtC14AppleAccountUI21SNaPEditorInteraction_isPresented;
  swift_beginAccess();
  *v12 = v9;
  *(v12 + 8) = v10;
  *(v12 + 16) = v11 & 1;

  swift_endAccess();
  v7 = sub_1C55418A0(a2, a3, a4 & 1);
  return sub_1C55407A0(v7 & 1);
}

void *sub_1C5541FD0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v16 = a4;
  v13 = a1;
  v14 = a2;
  v15 = a3;
  v12 = v5;

  sub_1C5541F78();
  v10[0] = v6;
  v10[1] = v7;
  v11 = v8 & 1;
  sub_1C55422A8();
  sub_1C5595CA4();
  result = v10;
  sub_1C5436F54(v10);
  return result;
}

uint64_t sub_1C55420A0()
{
  sub_1C55965F4("AAUISNaPEditorDismissed", 23, 1);
  sub_1C5594CF4();
  v2 = sub_1C5596554();
  MEMORY[0x1E69E5928](v2, v0);

  MEMORY[0x1E69E5920](v2);
  result = v2;
  qword_1EC16B4E0 = v2;
  return result;
}

uint64_t sub_1C5542130()
{
  v0 = sub_1C55415F0();
  v3 = *v0;
  MEMORY[0x1E69E5928](*v0, v1);
  return v3;
}

id sub_1C5542168(uint64_t a1)
{
  v4 = [v1 initWithContactStore_];
  MEMORY[0x1E69E5920](a1);
  return v4;
}

unint64_t sub_1C55421B8()
{
  v2 = qword_1EC15E890;
  if (!qword_1EC15E890)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EC15E890);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1C554221C()
{
  v2 = qword_1EC15E898;
  if (!qword_1EC15E898)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EC15E898);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1C55422A8()
{
  v2 = qword_1EC15E8A8;
  if (!qword_1EC15E8A8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15E8A8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C5542324(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 17))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*(a1 + 8)))
      {
        v3 = *(a1 + 8);
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}