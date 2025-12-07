uint64_t sub_1C548DAFC()
{
  swift_beginAccess();
  v3 = *(v0 + 64);
  MEMORY[0x1E69E5928](v3, v1);
  swift_endAccess();
  return v3;
}

double sub_1C548DB60(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1E69E5928](a1, a2);
  swift_beginAccess();
  v3 = *(v2 + 64);
  *(v2 + 64) = a1;
  MEMORY[0x1E69E5920](v3);
  swift_endAccess();
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

uint64_t sub_1C548DC50()
{
  swift_getKeyPath();
  (*(*v0 + 648))();

  return sub_1C548DAFC();
}

uint64_t sub_1C548DCD4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 296))(v2);
}

uint64_t sub_1C548DD5C(void *a1, uint64_t *a2)
{
  sub_1C5402C1C(a1, &v6);
  v4 = v6;
  v5 = *a2;

  (*(*v5 + 304))(v4);
}

void sub_1C548DDF0(void *a1)
{
  v15 = a1;
  v20[1] = 0;
  v13 = 0;
  v20[2] = a1;
  v20[0] = sub_1C548DAFC();
  v19 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D1C0, &qword_1C55B1A08);
  sub_1C5498D18();
  v17 = v20;
  v18 = sub_1C542908C(v20, &v19);
  sub_1C5401EF8(v20);
  if (v18)
  {
    v1 = v14;
    v2 = v13;
    KeyPath = swift_getKeyPath();
    v9[1] = KeyPath;

    v3 = v15;
    v11 = v9;
    v6.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath, v9, v4, v5);
    (*(*v1 + 656))(v6);
    v12 = v2;

    v9[0] = v12;
  }

  else
  {
    v7 = v15;
    sub_1C548DB60(v15, v8);
    v9[0] = v13;
  }
}

void (*sub_1C548E044(void *a1))(uint64_t *a1, char a2)
{
  v7 = __swift_coroFrameAllocStub(0x40uLL, 55200);
  *a1 = v7;
  v7[5] = v1;
  v6 = sub_1C5594B24();
  v4 = *(v6 - 8);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64), 55200);
  v7[6] = v5;
  swift_getKeyPath();
  (*(*v1 + 648))();

  (*(v4 + 16))(v5, v3 + OBJC_IVAR____TtC14AppleAccountUI28NameAndPhotoSharingViewModel___observationRegistrar, v6);
  v7[4] = v3;
  swift_getKeyPath();
  sub_1C5498AE0();
  sub_1C5594B04();

  (*(v4 + 8))(v5, v6);
  v7[7] = sub_1C548DBEC();
  return sub_1C548E224;
}

void sub_1C548E224(uint64_t *a1, char a2)
{
  v6 = *a1;
  if (a2)
  {
    v3 = *(v6 + 48);
    v2 = *(v6 + 40);
    (*(v6 + 56))(v6, 0);
    sub_1C548E2E0(v2);
    free(v3);
  }

  else
  {
    v5 = *(v6 + 48);
    v4 = *(v6 + 40);
    (*(v6 + 56))(v6, 0);
    sub_1C548E2E0(v4);
    free(v5);
  }

  free(v6);
}

uint64_t sub_1C548E2E0(uint64_t a1)
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
  (*(v10 + 16))(&v5 - v6, v7 + OBJC_IVAR____TtC14AppleAccountUI28NameAndPhotoSharingViewModel___observationRegistrar, v3);
  v8 = &v14;
  v14 = v7;
  KeyPath = swift_getKeyPath();
  sub_1C5498AE0();
  sub_1C5594AF4();

  return (*(v10 + 8))(v12, v13);
}

uint64_t sub_1C548E41C()
{
  swift_beginAccess();
  v2 = *(v0 + 72);
  swift_endAccess();
  return v2 & 1;
}

uint64_t sub_1C548E478(char a1)
{
  swift_beginAccess();
  *(v1 + 72) = a1 & 1;
  return swift_endAccess();
}

uint64_t sub_1C548E580()
{
  swift_getKeyPath();
  (*(*v0 + 648))();

  return sub_1C548E41C() & 1;
}

uint64_t sub_1C548E608@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 344))(v2) & 1;
}

uint64_t sub_1C548E694(char *a1, uint64_t *a2)
{
  v4 = *a1;
  v3 = *a2;

  (*(*v3 + 352))(v4 & 1);
}

uint64_t sub_1C548E71C(int a1)
{
  v19 = 0;
  v13 = 0;
  v14 = a1;
  v16 = a1 & 1;
  v20 = a1 & 1;
  v18 = sub_1C548E41C() & 1;
  v17 = v16;
  sub_1C5498EC0();
  if (sub_1C542908C(&v18, &v17))
  {
    v1 = v15;
    v2 = v13;
    KeyPath = swift_getKeyPath();
    v9 = KeyPath;

    v11 = &v7;
    v5.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath, &v7, v3, v4);
    (*(*v1 + 656))(v5);
    v12 = v2;

    return v12;
  }

  else
  {
    sub_1C548E478(v14 & 1);
    return v13;
  }
}

void (*sub_1C548E928(void *a1))(uint64_t *a1, char a2)
{
  v7 = __swift_coroFrameAllocStub(0x40uLL, 60965);
  *a1 = v7;
  v7[5] = v1;
  v6 = sub_1C5594B24();
  v4 = *(v6 - 8);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64), 60965);
  v7[6] = v5;
  swift_getKeyPath();
  (*(*v1 + 648))();

  (*(v4 + 16))(v5, v3 + OBJC_IVAR____TtC14AppleAccountUI28NameAndPhotoSharingViewModel___observationRegistrar, v6);
  v7[4] = v3;
  swift_getKeyPath();
  sub_1C5498AE0();
  sub_1C5594B04();

  (*(v4 + 8))(v5, v6);
  v7[7] = sub_1C548E4F0();
  return sub_1C548EB08;
}

void sub_1C548EB08(uint64_t *a1, char a2)
{
  v6 = *a1;
  if (a2)
  {
    v3 = *(v6 + 48);
    v2 = *(v6 + 40);
    (*(v6 + 56))(v6, 0);
    sub_1C548EBC4(v2);
    free(v3);
  }

  else
  {
    v5 = *(v6 + 48);
    v4 = *(v6 + 40);
    (*(v6 + 56))(v6, 0);
    sub_1C548EBC4(v4);
    free(v5);
  }

  free(v6);
}

uint64_t sub_1C548EBC4(uint64_t a1)
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
  (*(v10 + 16))(&v5 - v6, v7 + OBJC_IVAR____TtC14AppleAccountUI28NameAndPhotoSharingViewModel___observationRegistrar, v3);
  v8 = &v14;
  v14 = v7;
  KeyPath = swift_getKeyPath();
  sub_1C5498AE0();
  sub_1C5594AF4();

  return (*(v10 + 8))(v12, v13);
}

uint64_t sub_1C548ED00()
{
  swift_beginAccess();
  v2 = *(v0 + 80);
  sub_1C5594CF4();
  swift_endAccess();
  return v2;
}

uint64_t sub_1C548ED68(uint64_t a1, uint64_t a2)
{
  sub_1C5594CF4();
  swift_beginAccess();
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;

  swift_endAccess();
}

uint64_t sub_1C548EE60()
{
  swift_getKeyPath();
  (*(*v0 + 648))();

  return sub_1C548ED00();
}

uint64_t sub_1C548EEE4(uint64_t a1, uint64_t a2)
{
  v18 = a2;
  v17 = a1;
  v22[2] = 0;
  v15 = 0;
  v22[3] = a1;
  v22[4] = a2;
  v22[0] = sub_1C548ED00();
  v22[1] = v2;
  v21[0] = v17;
  v21[1] = v18;
  v19 = v22;
  v20 = sub_1C542908C(v22, v21);
  sub_1C5401ECC(v22);
  if (v20)
  {
    v3 = v16;
    v4 = v15;
    KeyPath = swift_getKeyPath();
    v11 = KeyPath;

    sub_1C5594CF4();
    v13 = &v9;
    v7.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath, &v9, v5, v6);
    (*(*v3 + 656))(v7);
    v14 = v4;

    v10 = v14;
  }

  else
  {
    sub_1C5594CF4();
    sub_1C548ED68(v17, v18);
    v10 = v15;
  }
}

void (*sub_1C548F158(void *a1))(uint64_t *a1, char a2)
{
  v7 = __swift_coroFrameAllocStub(0x40uLL, 46867);
  *a1 = v7;
  v7[5] = v1;
  v6 = sub_1C5594B24();
  v4 = *(v6 - 8);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64), 46867);
  v7[6] = v5;
  swift_getKeyPath();
  (*(*v1 + 648))();

  (*(v4 + 16))(v5, v3 + OBJC_IVAR____TtC14AppleAccountUI28NameAndPhotoSharingViewModel___observationRegistrar, v6);
  v7[4] = v3;
  swift_getKeyPath();
  sub_1C5498AE0();
  sub_1C5594B04();

  (*(v4 + 8))(v5, v6);
  v7[7] = sub_1C548EDFC();
  return sub_1C548F338;
}

void sub_1C548F338(uint64_t *a1, char a2)
{
  v6 = *a1;
  if (a2)
  {
    v3 = *(v6 + 48);
    v2 = *(v6 + 40);
    (*(v6 + 56))(v6, 0);
    sub_1C548F3F4(v2);
    free(v3);
  }

  else
  {
    v5 = *(v6 + 48);
    v4 = *(v6 + 40);
    (*(v6 + 56))(v6, 0);
    sub_1C548F3F4(v4);
    free(v5);
  }

  free(v6);
}

uint64_t sub_1C548F3F4(uint64_t a1)
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
  (*(v10 + 16))(&v5 - v6, v7 + OBJC_IVAR____TtC14AppleAccountUI28NameAndPhotoSharingViewModel___observationRegistrar, v3);
  v8 = &v14;
  v14 = v7;
  KeyPath = swift_getKeyPath();
  sub_1C5498AE0();
  sub_1C5594AF4();

  return (*(v10 + 8))(v12, v13);
}

uint64_t sub_1C548F530()
{
  swift_beginAccess();
  v2 = *(v0 + 96);
  sub_1C5594CF4();
  swift_endAccess();
  return v2;
}

uint64_t sub_1C548F598(uint64_t a1, uint64_t a2)
{
  sub_1C5594CF4();
  swift_beginAccess();
  *(v2 + 96) = a1;
  *(v2 + 104) = a2;

  swift_endAccess();
}

uint64_t sub_1C548F690()
{
  swift_getKeyPath();
  (*(*v0 + 648))();

  return sub_1C548F530();
}

uint64_t sub_1C548F714(uint64_t a1, uint64_t a2)
{
  v18 = a2;
  v17 = a1;
  v22[2] = 0;
  v15 = 0;
  v22[3] = a1;
  v22[4] = a2;
  v22[0] = sub_1C548F530();
  v22[1] = v2;
  v21[0] = v17;
  v21[1] = v18;
  v19 = v22;
  v20 = sub_1C542908C(v22, v21);
  sub_1C5401ECC(v22);
  if (v20)
  {
    v3 = v16;
    v4 = v15;
    KeyPath = swift_getKeyPath();
    v11 = KeyPath;

    sub_1C5594CF4();
    v13 = &v9;
    v7.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath, &v9, v5, v6);
    (*(*v3 + 656))(v7);
    v14 = v4;

    v10 = v14;
  }

  else
  {
    sub_1C5594CF4();
    sub_1C548F598(v17, v18);
    v10 = v15;
  }
}

void (*sub_1C548F988(void *a1))(uint64_t *a1, char a2)
{
  v7 = __swift_coroFrameAllocStub(0x40uLL, 43048);
  *a1 = v7;
  v7[5] = v1;
  v6 = sub_1C5594B24();
  v4 = *(v6 - 8);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64), 43048);
  v7[6] = v5;
  swift_getKeyPath();
  (*(*v1 + 648))();

  (*(v4 + 16))(v5, v3 + OBJC_IVAR____TtC14AppleAccountUI28NameAndPhotoSharingViewModel___observationRegistrar, v6);
  v7[4] = v3;
  swift_getKeyPath();
  sub_1C5498AE0();
  sub_1C5594B04();

  (*(v4 + 8))(v5, v6);
  v7[7] = sub_1C548F62C();
  return sub_1C548FB68;
}

void sub_1C548FB68(uint64_t *a1, char a2)
{
  v6 = *a1;
  if (a2)
  {
    v3 = *(v6 + 48);
    v2 = *(v6 + 40);
    (*(v6 + 56))(v6, 0);
    sub_1C548FC24(v2);
    free(v3);
  }

  else
  {
    v5 = *(v6 + 48);
    v4 = *(v6 + 40);
    (*(v6 + 56))(v6, 0);
    sub_1C548FC24(v4);
    free(v5);
  }

  free(v6);
}

uint64_t sub_1C548FC24(uint64_t a1)
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
  (*(v10 + 16))(&v5 - v6, v7 + OBJC_IVAR____TtC14AppleAccountUI28NameAndPhotoSharingViewModel___observationRegistrar, v3);
  v8 = &v14;
  v14 = v7;
  KeyPath = swift_getKeyPath();
  sub_1C5498AE0();
  sub_1C5594AF4();

  return (*(v10 + 8))(v12, v13);
}

uint64_t sub_1C548FD60()
{
  swift_beginAccess();
  v2 = *(v0 + 112);
  swift_endAccess();
  return v2 & 1;
}

uint64_t sub_1C548FDBC(char a1)
{
  swift_beginAccess();
  *(v1 + 112) = a1 & 1;
  return swift_endAccess();
}

uint64_t sub_1C548FE98()
{
  swift_getKeyPath();
  (*(*v0 + 648))();

  return sub_1C548FD60() & 1;
}

uint64_t sub_1C548FF20@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 488))(v2) & 1;
}

uint64_t sub_1C548FFAC(char *a1, uint64_t *a2)
{
  v4 = *a1;
  v3 = *a2;

  (*(*v3 + 496))(v4 & 1);
}

uint64_t sub_1C5490034(int a1)
{
  v19 = 0;
  v13 = 0;
  v14 = a1;
  v16 = a1 & 1;
  v20 = a1 & 1;
  v18 = sub_1C548FD60() & 1;
  v17 = v16;
  sub_1C5498EC0();
  if (sub_1C542908C(&v18, &v17))
  {
    v1 = v15;
    v2 = v13;
    KeyPath = swift_getKeyPath();
    v9 = KeyPath;

    v11 = &v7;
    v5.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath, &v7, v3, v4);
    (*(*v1 + 656))(v5);
    v12 = v2;

    return v12;
  }

  else
  {
    sub_1C548FDBC(v14 & 1);
    return v13;
  }
}

void (*sub_1C5490240(void *a1))(uint64_t *a1, char a2)
{
  v7 = __swift_coroFrameAllocStub(0x40uLL, 63689);
  *a1 = v7;
  v7[5] = v1;
  v6 = sub_1C5594B24();
  v4 = *(v6 - 8);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64), 63689);
  v7[6] = v5;
  swift_getKeyPath();
  (*(*v1 + 648))();

  (*(v4 + 16))(v5, v3 + OBJC_IVAR____TtC14AppleAccountUI28NameAndPhotoSharingViewModel___observationRegistrar, v6);
  v7[4] = v3;
  swift_getKeyPath();
  sub_1C5498AE0();
  sub_1C5594B04();

  (*(v4 + 8))(v5, v6);
  v7[7] = sub_1C548FE34();
  return sub_1C5490420;
}

void sub_1C5490420(uint64_t *a1, char a2)
{
  v6 = *a1;
  if (a2)
  {
    v3 = *(v6 + 48);
    v2 = *(v6 + 40);
    (*(v6 + 56))(v6, 0);
    sub_1C54904DC(v2);
    free(v3);
  }

  else
  {
    v5 = *(v6 + 48);
    v4 = *(v6 + 40);
    (*(v6 + 56))(v6, 0);
    sub_1C54904DC(v4);
    free(v5);
  }

  free(v6);
}

uint64_t sub_1C54904DC(uint64_t a1)
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
  (*(v10 + 16))(&v5 - v6, v7 + OBJC_IVAR____TtC14AppleAccountUI28NameAndPhotoSharingViewModel___observationRegistrar, v3);
  v8 = &v14;
  v14 = v7;
  KeyPath = swift_getKeyPath();
  sub_1C5498AE0();
  sub_1C5594AF4();

  return (*(v10 + 8))(v12, v13);
}

id sub_1C5490618()
{
  v18 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D1E8, &unk_1C55B1AB0);
  v11 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1, v2, v3, v4);
  v15 = &v7 - v11;
  v18 = v0;
  v12 = objc_opt_self();
  v17 = sub_1C5594834();
  v13 = *(v17 - 8);
  v14 = v17 - 8;
  v5 = *(v13 + 56);
  v16 = 1;
  v5(v15, 1);
  if ((*(v13 + 48))(v15, v16, v17) == 1)
  {
    v10 = 0;
  }

  else
  {
    v9 = sub_1C5594814();
    (*(v13 + 8))(v15, v17);
    v10 = v9;
  }

  v8 = [v12 contactsNameOrderFromPersonNameComponents_];
  MEMORY[0x1E69E5920](v7);
  return v8;
}

id sub_1C54907D0()
{
  v1 = [objc_opt_self() currentEnvironment];
  v2 = [v1 nicknameProvider];
  MEMORY[0x1E69E5920](v1);
  return v2;
}

id sub_1C5490840()
{
  v0 = [objc_opt_self() sharedInstance];

  return v0;
}

uint64_t sub_1C549093C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 64) = 0;
  sub_1C548E554(0, (v4 + 72));
  v5 = sub_1C55965F4("", 0, 1);
  sub_1C541D40C(v5, v6, (v4 + 80));
  v7 = sub_1C55965F4("", 0, 1);
  sub_1C541D40C(v7, v8, (v4 + 96));
  sub_1C548E554(0, (v4 + 112));
  sub_1C5594B14();
  swift_unknownObjectRetain();
  *(v4 + 16) = a1;
  MEMORY[0x1E69E5928](a2, v9);
  *(v4 + 24) = a2;
  MEMORY[0x1E69E5928](a3, a2);
  *(v4 + 32) = a3;
  swift_getObjectType();
  sub_1C548D38C([a1 sharingAudience], (v4 + 56));
  swift_getObjectType();
  sub_1C541E120([a1 isNicknameSharingEnabled], (v4 + 48));
  MEMORY[0x1E69E5928](a4, v10);
  *(v4 + 40) = a4;
  sub_1C548DDF0(0);
  MEMORY[0x1E69E5920](a4);
  MEMORY[0x1E69E5920](a3);
  MEMORY[0x1E69E5920](a2);
  swift_unknownObjectRelease();
  return v16;
}

uint64_t sub_1C5490BE4()
{
  v2 = v0[2];
  swift_unknownObjectRetain();
  swift_getObjectType();
  (*(*v0 + 208))([v2 isNicknameSharingEnabled]);
  return swift_unknownObjectRelease();
}

uint64_t sub_1C5490C60(char a1)
{
  (*(*v1 + 208))(a1 & 1);
  v5 = *(v3 + 16);
  swift_unknownObjectRetain();
  swift_getObjectType();
  [v5 setSharingEnabled_];
  return swift_unknownObjectRelease();
}

uint64_t sub_1C5490D0C()
{
  v2 = v0[2];
  swift_unknownObjectRetain();
  swift_getObjectType();
  (*(*v0 + 256))([v2 sharingAudience]);
  return swift_unknownObjectRelease();
}

uint64_t sub_1C5490D90(uint64_t a1)
{
  (*(*v1 + 256))();
  v5 = *(v3 + 16);
  swift_unknownObjectRetain();
  swift_getObjectType();
  [v5 setSharingAudience_];
  return swift_unknownObjectRelease();
}

uint64_t sub_1C5490E34(uint64_t a1)
{
  v2[55] = v1;
  v2[54] = a1;
  v2[48] = v2;
  v2[49] = 0;
  v2[50] = 0;
  v2[52] = 0;
  v2[40] = 0;
  v2[41] = 0;
  v3 = sub_1C5594C74();
  v2[56] = v3;
  v2[57] = *(v3 - 8);
  v2[58] = swift_task_alloc();
  v2[59] = swift_task_alloc();
  v2[60] = swift_task_alloc();
  v2[49] = a1;
  v2[50] = v1;
  sub_1C55967E4();
  v2[61] = sub_1C55967D4();
  v2[62] = sub_1C55967A4();
  v2[63] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1C5490FC0);
}

uint64_t sub_1C5490FC0()
{
  v1 = *(v0 + 440);
  *(v0 + 384) = v0;
  v4 = *(v1 + 16);
  *(v0 + 512) = v4;
  swift_unknownObjectRetain();
  swift_getObjectType();
  *(v0 + 16) = *(v0 + 384);
  *(v0 + 56) = v0 + 408;
  *(v0 + 24) = sub_1C549110C;
  v3 = swift_continuation_init();
  *(v0 + 200) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15D200, &unk_1C55B1AC0);
  *(v0 + 176) = v3;
  *(v0 + 144) = MEMORY[0x1E69E9820];
  *(v0 + 152) = 1107296256;
  *(v0 + 156) = 0;
  *(v0 + 160) = sub_1C5492C88;
  *(v0 + 168) = &block_descriptor_10;
  [v4 fetchPersonalNicknameAsContactWithCompletion_];
  swift_unknownObjectRetain();

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t sub_1C549110C()
{
  *(*v0 + 384) = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1C5491224);
}

uint64_t sub_1C5491224()
{
  v107 = v0;
  v86 = v0[55];
  v0[48] = v0;
  v87 = v0[51];
  v0[65] = v87;
  v0[52] = v87;
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v85 = *(v86 + 32);
  [v85 setStyle_];
  MEMORY[0x1E69E5920](v85);
  v88 = *(v86 + 32);
  v89 = [v88 stringFromContact_];
  v3 = MEMORY[0x1E69E5920](v88).n128_u64[0];
  if (v89)
  {
    v80 = sub_1C5596574();
    v81 = v4;
    v3 = MEMORY[0x1E69E5920](v89).n128_u64[0];
    v82 = v80;
    v83 = v81;
  }

  else
  {
    v82 = 0;
    v83 = 0;
  }

  *(v84 + 304) = v82;
  *(v84 + 312) = v83;
  if (*(v84 + 312))
  {
    v90 = *(v84 + 304);
    v91 = *(v84 + 312);
  }

  else
  {
    v90 = sub_1C55965F4("", 0, 1, *&v3);
    v91 = v5;
    if (*(v84 + 312))
    {
      sub_1C5401ECC(v84 + 304);
    }
  }

  v78 = *(v84 + 432);
  *(v84 + 528) = v91;
  *(v84 + 320) = v90;
  *(v84 + 328) = v91;
  sub_1C5594CF4();
  sub_1C5594CF4();
  v79 = [v78 aa_fullName];
  if (v79)
  {
    v74 = sub_1C5596574();
    v75 = v6;
    MEMORY[0x1E69E5920](v79);
    v76 = v74;
    v77 = v75;
  }

  else
  {
    v76 = 0;
    v77 = 0;
  }

  sub_1C5594CF4();
  *(v84 + 272) = v90;
  *(v84 + 280) = v91;
  *(v84 + 288) = v76;
  *(v84 + 296) = v77;
  if (!*(v84 + 280))
  {
    if (!*(v84 + 296))
    {
      sub_1C5401ECC(v84 + 272);

      goto LABEL_24;
    }

    goto LABEL_20;
  }

  sub_1C5402BDC((v84 + 272), (v84 + 336));
  if (!*(v84 + 296))
  {
    sub_1C5401ECC(v84 + 336);
LABEL_20:
    sub_1C54876D8(v84 + 272);

    goto LABEL_23;
  }

  *(v84 + 352) = *(v84 + 336);
  *(v84 + 368) = *(v84 + 288);
  v73 = MEMORY[0x1C69471A0](*(v84 + 352), *(v84 + 360), *(v84 + 368), *(v84 + 376));
  sub_1C5401ECC(v84 + 368);
  sub_1C5401ECC(v84 + 352);
  sub_1C5401ECC(v84 + 272);

  if (v73)
  {
    goto LABEL_24;
  }

LABEL_23:
  if (sub_1C5596614())
  {
LABEL_24:
    (*(**(v84 + 440) + 352))(0);
    goto LABEL_26;
  }

  (*(**(v84 + 440) + 352))(1);
LABEL_26:
  v7 = *(v84 + 480);
  v63 = *(v84 + 448);
  v62 = *(v84 + 456);
  v8 = sub_1C54B05F8();
  v64 = *(v62 + 16);
  v64(v7, v8, v63);
  sub_1C5594CF4();
  v65 = swift_allocObject();
  *(v65 + 16) = v90;
  *(v65 + 24) = v91;
  oslog = sub_1C5594C54();
  v72 = sub_1C5596944();
  v67 = swift_allocObject();
  *(v67 + 16) = 32;
  v68 = swift_allocObject();
  *(v68 + 16) = 8;
  v66 = swift_allocObject();
  *(v66 + 16) = sub_1C5499100;
  *(v66 + 24) = v65;
  v69 = swift_allocObject();
  *(v69 + 16) = sub_1C5473EFC;
  *(v69 + 24) = v66;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0, &qword_1C55ADF60);
  sub_1C5596E04();
  v70 = v9;

  *v70 = sub_1C545C6D4;
  v70[1] = v67;

  v70[2] = sub_1C545C6D4;
  v70[3] = v68;

  v70[4] = sub_1C5473FA4;
  v70[5] = v69;
  sub_1C540FCD8();

  if (os_log_type_enabled(oslog, v72))
  {
    buf = sub_1C5596A74();
    v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940, qword_1C55ADF70);
    v60 = sub_1C5419DC0(0, v58, v58);
    v61 = sub_1C5419DC0(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v102 = buf;
    v103 = v60;
    v104 = v61;
    sub_1C5419E14(2, &v102);
    sub_1C5419E14(1, &v102);
    v105 = sub_1C545C6D4;
    v106 = v67;
    sub_1C5419E28(&v105, &v102, &v103, &v104);
    v105 = sub_1C545C6D4;
    v106 = v68;
    sub_1C5419E28(&v105, &v102, &v103, &v104);
    v105 = sub_1C5473FA4;
    v106 = v69;
    sub_1C5419E28(&v105, &v102, &v103, &v104);
    _os_log_impl(&dword_1C5355000, oslog, v72, "snapName: %s", buf, 0xCu);
    sub_1C5419E74(v60, 0, v58);
    sub_1C5419E74(v61, 1, MEMORY[0x1E69E7CA0] + 8);
    sub_1C5596A54();
  }

  else
  {
  }

  v46 = *(v84 + 480);
  v10 = *(v84 + 472);
  v48 = *(v84 + 448);
  v49 = *(v84 + 432);
  v45 = *(v84 + 456);
  v11 = MEMORY[0x1E69E5920](oslog);
  v47 = *(v45 + 8);
  v47(v46, v48, v11);
  v12 = sub_1C54B05F8();
  v64(v10, v12, v48);
  MEMORY[0x1E69E5928](v49, v13);
  v50 = swift_allocObject();
  *(v50 + 16) = v49;
  log = sub_1C5594C54();
  v57 = sub_1C5596944();
  v52 = swift_allocObject();
  *(v52 + 16) = 32;
  v53 = swift_allocObject();
  *(v53 + 16) = 8;
  v51 = swift_allocObject();
  *(v51 + 16) = sub_1C54993E0;
  *(v51 + 24) = v50;
  v54 = swift_allocObject();
  *(v54 + 16) = sub_1C5473EFC;
  *(v54 + 24) = v51;
  sub_1C5596E04();
  v55 = v14;

  *v55 = sub_1C545C6D4;
  v55[1] = v52;

  v55[2] = sub_1C545C6D4;
  v55[3] = v53;

  v55[4] = sub_1C5473FA4;
  v55[5] = v54;
  sub_1C540FCD8();

  if (os_log_type_enabled(log, v57))
  {
    v42 = sub_1C5596A74();
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940, qword_1C55ADF70);
    v43 = sub_1C5419DC0(0, v41, v41);
    v44 = sub_1C5419DC0(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v97 = v42;
    v98 = v43;
    v99 = v44;
    sub_1C5419E14(2, &v97);
    sub_1C5419E14(1, &v97);
    v100 = sub_1C545C6D4;
    v101 = v52;
    sub_1C5419E28(&v100, &v97, &v98, &v99);
    v100 = sub_1C545C6D4;
    v101 = v53;
    sub_1C5419E28(&v100, &v97, &v98, &v99);
    v100 = sub_1C5473FA4;
    v101 = v54;
    sub_1C5419E28(&v100, &v97, &v98, &v99);
    _os_log_impl(&dword_1C5355000, log, v57, "fullName: %s", v42, 0xCu);
    sub_1C5419E74(v43, 0, v41);
    sub_1C5419E74(v44, 1, MEMORY[0x1E69E7CA0] + 8);
    sub_1C5596A54();
  }

  else
  {
  }

  v31 = *(v84 + 472);
  v15 = *(v84 + 464);
  v32 = *(v84 + 448);
  v33 = *(v84 + 440);
  v16 = MEMORY[0x1E69E5920](log);
  v47(v31, v32, v16);
  v17 = sub_1C54B05F8();
  v64(v15, v17, v32);

  v39 = sub_1C5594C54();
  v40 = sub_1C5596944();
  v35 = swift_allocObject();
  *(v35 + 16) = 32;
  v36 = swift_allocObject();
  *(v36 + 16) = 8;
  v34 = swift_allocObject();
  *(v34 + 16) = sub_1C54993E8;
  *(v34 + 24) = v33;
  v37 = swift_allocObject();
  *(v37 + 16) = sub_1C5473EFC;
  *(v37 + 24) = v34;
  sub_1C5596E04();
  v38 = v18;

  *v38 = sub_1C545C6D4;
  v38[1] = v35;

  v38[2] = sub_1C545C6D4;
  v38[3] = v36;

  v38[4] = sub_1C5473FA4;
  v38[5] = v37;
  sub_1C540FCD8();

  if (os_log_type_enabled(v39, v40))
  {
    v28 = sub_1C5596A74();
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940, qword_1C55ADF70);
    v29 = sub_1C5419DC0(0, v27, v27);
    v30 = sub_1C5419DC0(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v92 = v28;
    v93 = v29;
    v94 = v30;
    sub_1C5419E14(2, &v92);
    sub_1C5419E14(1, &v92);
    v95 = sub_1C545C6D4;
    v96 = v35;
    sub_1C5419E28(&v95, &v92, &v93, &v94);
    v95 = sub_1C545C6D4;
    v96 = v36;
    sub_1C5419E28(&v95, &v92, &v93, &v94);
    v95 = sub_1C5473FA4;
    v96 = v37;
    sub_1C5419E28(&v95, &v92, &v93, &v94);
    _os_log_impl(&dword_1C5355000, v39, v40, "sharedNameType: %s", v28, 0xCu);
    sub_1C5419E74(v29, 0, v27);
    sub_1C5419E74(v30, 1, MEMORY[0x1E69E7CA0] + 8);
    sub_1C5596A54();
  }

  else
  {
  }

  v22 = *(v84 + 464);
  v23 = *(v84 + 448);
  v24 = *(v84 + 440);
  v19 = MEMORY[0x1E69E5920](v39);
  v47(v22, v23, v19);
  v26 = *(v24 + 24);
  *(v84 + 536) = v26;
  MEMORY[0x1E69E5928](v26, v20);
  *(v84 + 80) = *(v84 + 384);
  *(v84 + 120) = v84 + 424;
  *(v84 + 88) = sub_1C5492A28;
  v25 = swift_continuation_init();
  *(v84 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15D210, qword_1C55B1AD0);
  *(v84 + 240) = v25;
  *(v84 + 208) = MEMORY[0x1E69E9820];
  *(v84 + 216) = 1107296256;
  *(v84 + 220) = 0;
  *(v84 + 224) = sub_1C5492EBC;
  *(v84 + 232) = &block_descriptor_65;
  [v26 fetchPersonalNicknameWithCompletion_];

  return MEMORY[0x1EEE6DEC8](v84 + 80);
}

uint64_t sub_1C5492A28()
{
  *(*v0 + 384) = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1C5492B40);
}

uint64_t sub_1C5492B40()
{
  v4 = v0[67];
  v5 = v0[65];
  v1 = v0[55];
  v0[48] = v0;
  (*(*v1 + 304))(v0[53]);
  MEMORY[0x1E69E5920](v4);

  MEMORY[0x1E69E5920](v5);

  v2 = *(v0[48] + 8);

  return v2();
}

double sub_1C5492C88(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1E69E5928](a2, a2);
  v6 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  MEMORY[0x1E69E5928](a2, v2);
  v8 = a2;
  v3 = sub_1C5499650();
  sub_1C5405D08(v6, &v8, v3);
  *&result = MEMORY[0x1E69E5920](a2).n128_u64[0];
  return result;
}

uint64_t sub_1C5492D54(void *a1)
{
  v9 = [a1 aa_fullName];
  if (v9)
  {
    v5 = sub_1C5596574();
    v6 = v2;
    *&v1 = MEMORY[0x1E69E5920](v9).n128_u64[0];
    v7 = v5;
    v8 = v6;
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  v10 = v7;
  v11 = v8;
  if (v8)
  {
    v12 = v10;
    v13 = v11;
  }

  else
  {
    v12 = sub_1C55965F4("nil", 3, 1, v1);
    v13 = v3;
  }

  return v12;
}

double sub_1C5492EBC(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1E69E5928](a2, a2);
  v6 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  MEMORY[0x1E69E5928](a2, v2);
  v8 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D1C0, &qword_1C55B1A08);
  sub_1C5405D08(v6, &v8, v3);
  *&result = MEMORY[0x1E69E5920](a2).n128_u64[0];
  return result;
}

uint64_t sub_1C5492F60(void *a1)
{
  v21 = a1;
  v20 = v1;
  v15 = (*(*v1 + 296))();
  if (v15)
  {
    v11 = [v15 firstName];
    v12 = sub_1C5596574();
    MEMORY[0x1E69E5920](v11);
    MEMORY[0x1E69E5920](v15);
    return v12;
  }

  else
  {
    v10 = [a1 aa_firstName];
    if (v10)
    {
      v6 = sub_1C5596574();
      v7 = v3;
      *&v2 = MEMORY[0x1E69E5920](v10).n128_u64[0];
      v8 = v6;
      v9 = v7;
    }

    else
    {
      v8 = 0;
      v9 = 0;
    }

    v16 = v8;
    v17 = v9;
    if (v9)
    {
      v18 = v16;
      v19 = v17;
    }

    else
    {
      v18 = sub_1C55965F4("", 0, 1, v2);
      v19 = v4;
    }

    return v18;
  }
}

uint64_t sub_1C5493150(void *a1)
{
  v21 = a1;
  v20 = v1;
  v15 = (*(*v1 + 296))();
  if (v15)
  {
    v11 = [v15 lastName];
    v12 = sub_1C5596574();
    MEMORY[0x1E69E5920](v11);
    MEMORY[0x1E69E5920](v15);
    return v12;
  }

  else
  {
    v10 = [a1 aa_lastName];
    if (v10)
    {
      v6 = sub_1C5596574();
      v7 = v3;
      *&v2 = MEMORY[0x1E69E5920](v10).n128_u64[0];
      v8 = v6;
      v9 = v7;
    }

    else
    {
      v8 = 0;
      v9 = 0;
    }

    v16 = v8;
    v17 = v9;
    if (v9)
    {
      v18 = v16;
      v19 = v17;
    }

    else
    {
      v18 = sub_1C55965F4("", 0, 1, v2);
      v19 = v4;
    }

    return v18;
  }
}

uint64_t sub_1C5493340(void *a1)
{
  v66 = a1;
  v94 = 0;
  v93 = 0;
  v92 = 0;
  v67 = sub_1C5594834();
  v68 = *(v67 - 8);
  v69 = v67 - 8;
  v70 = (*(v68 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v66, v2, v3, v4);
  v71 = &v34 - v70;
  v72 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x1EEE9AC00](v6, &v34 - v70, v7, v8);
  v73 = &v34 - v72;
  v94 = &v34 - v72;
  v93 = v10;
  v92 = v1;
  v11 = (*(*v1 + 344))(v9);
  v75 = &v91;
  v91 = v11 & 1;
  v74 = &v90;
  v90 = 0;
  sub_1C543F61C();
  if (sub_1C5596E24())
  {
    v64 = [v66 aa_fullName];
    if (v64)
    {
      v63 = v64;
      v58 = v64;
      v59 = sub_1C5596574();
      v60 = v13;
      *&v12 = MEMORY[0x1E69E5920](v58).n128_u64[0];
      v61 = v59;
      v62 = v60;
    }

    else
    {
      v61 = 0;
      v62 = 0;
    }

    v76 = v61;
    v77 = v62;
    if (v62)
    {
      v78 = v76;
      v79 = v77;
    }

    else
    {
      v78 = sub_1C55965F4("", 0, 1, v12);
      v79 = v14;
      if (v77)
      {
        sub_1C5401ECC(&v76);
      }
    }

    v56 = v78;
    v57 = v79;
  }

  else
  {
    v15 = v65;
    v16 = sub_1C5594824();
    v87 = (*(*v15 + 296))(v16);
    if (v87)
    {
      v49 = &v87;
      v50 = v87;
      MEMORY[0x1E69E5928](v87, v17);
      sub_1C5401EF8(v49);
      v51 = [v50 firstName];
      v52 = sub_1C5596574();
      v53 = v18;
      MEMORY[0x1E69E5920](v50);
      *&v19 = MEMORY[0x1E69E5920](v51).n128_u64[0];
      v54 = v52;
      v55 = v53;
    }

    else
    {
      sub_1C5401EF8(&v87);
      v54 = 0;
      v55 = 0;
    }

    v85 = v54;
    v86 = v55;
    if (v55)
    {
      v88 = v85;
      v89 = v86;
    }

    else
    {
      v88 = sub_1C55965F4("", 0, 1, v19);
      v89 = v20;
      if (v86)
      {
        sub_1C5401ECC(&v85);
      }
    }

    v21 = sub_1C55947E4();
    v82 = (*(*v65 + 296))(v21);
    if (v82)
    {
      v42 = &v82;
      v43 = v82;
      MEMORY[0x1E69E5928](v82, v22);
      sub_1C5401EF8(v42);
      v44 = [v43 lastName];
      v45 = sub_1C5596574();
      v46 = v23;
      MEMORY[0x1E69E5920](v43);
      *&v32 = MEMORY[0x1E69E5920](v44).n128_u64[0];
      v47 = v45;
      v48 = v46;
    }

    else
    {
      sub_1C5401EF8(&v82);
      v47 = 0;
      v48 = 0;
    }

    v80 = v47;
    v81 = v48;
    if (v48)
    {
      v83 = v80;
      v84 = v81;
    }

    else
    {
      v83 = sub_1C55965F4("", 0, 1, v32);
      v84 = v24;
      if (v81)
      {
        sub_1C5401ECC(&v80);
      }
    }

    sub_1C55947F4();
    v25 = v71;
    v34 = v65[5];
    *&v27 = MEMORY[0x1E69E5928](v34, v26).n128_u64[0];
    [v34 setStyle_];
    MEMORY[0x1E69E5920](v34);
    v36 = v65[5];
    v29 = MEMORY[0x1E69E5928](v36, v28);
    (*(v68 + 16))(v25, v73, v67, v29);
    v35 = sub_1C5594814();
    v39 = *(v68 + 8);
    v38 = v68 + 8;
    v39(v71, v67);
    v37 = [v36 stringFromPersonNameComponents_];
    MEMORY[0x1E69E5920](v35);
    MEMORY[0x1E69E5920](v36);
    v40 = sub_1C5596574();
    v41 = v30;
    v31 = MEMORY[0x1E69E5920](v37);
    (v39)(v73, v67, v31);
    v56 = v40;
    v57 = v41;
  }

  return v56;
}

uint64_t sub_1C5493B04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v7 + 320) = v6;
  *(v7 + 429) = a6;
  *(v7 + 312) = a5;
  *(v7 + 304) = a4;
  *(v7 + 296) = a3;
  *(v7 + 288) = a2;
  *(v7 + 280) = a1;
  *(v7 + 208) = v7;
  *(v7 + 216) = 0;
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  *(v7 + 32) = 0;
  *(v7 + 40) = 0;
  *(v7 + 424) = 0;
  *(v7 + 224) = 0;
  *(v7 + 64) = 0;
  *(v7 + 72) = 0;
  *(v7 + 96) = 0;
  *(v7 + 104) = 0;
  *(v7 + 112) = 0;
  *(v7 + 120) = 0;
  *(v7 + 128) = 0;
  *(v7 + 136) = 0;
  v8 = sub_1C5594C74();
  *(v7 + 328) = v8;
  *(v7 + 336) = *(v8 - 8);
  *(v7 + 344) = swift_task_alloc();
  *(v7 + 352) = swift_task_alloc();
  *(v7 + 216) = a1;
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  *(v7 + 32) = a4;
  *(v7 + 40) = a5;
  *(v7 + 424) = a6 & 1;
  *(v7 + 224) = v6;
  sub_1C55967E4();
  *(v7 + 360) = sub_1C55967D4();
  *(v7 + 368) = sub_1C55967A4();
  *(v7 + 376) = v9;

  return MEMORY[0x1EEE6DFA0](sub_1C5493D28);
}

uint64_t sub_1C5493D28(uint64_t a1)
{
  v128 = v1;
  v2 = *(v1 + 352);
  v89 = *(v1 + 336);
  v90 = *(v1 + 328);
  v96 = *(v1 + 429);
  v95 = *(v1 + 312);
  v94 = *(v1 + 304);
  v93 = *(v1 + 296);
  v92 = *(v1 + 288);
  *(v1 + 208) = v1;
  v3 = sub_1C54B05F8();
  v91 = *(v89 + 16);
  v91(v2, v3, v90);
  sub_1C5594CF4();
  v97 = swift_allocObject();
  *(v97 + 16) = v92;
  *(v97 + 24) = v93;
  sub_1C5594CF4();
  v99 = swift_allocObject();
  *(v99 + 16) = v94;
  *(v99 + 24) = v95;
  v101 = swift_allocObject();
  *(v101 + 16) = v96 & 1;
  v113 = sub_1C5594C54();
  v114 = sub_1C5596944();
  v103 = swift_allocObject();
  *(v103 + 16) = 32;
  v104 = swift_allocObject();
  *(v104 + 16) = 8;
  v98 = swift_allocObject();
  *(v98 + 16) = sub_1C5499100;
  *(v98 + 24) = v97;
  v105 = swift_allocObject();
  *(v105 + 16) = sub_1C5473EFC;
  *(v105 + 24) = v98;
  v106 = swift_allocObject();
  *(v106 + 16) = 32;
  v107 = swift_allocObject();
  *(v107 + 16) = 8;
  v100 = swift_allocObject();
  *(v100 + 16) = sub_1C5499100;
  *(v100 + 24) = v99;
  v108 = swift_allocObject();
  *(v108 + 16) = sub_1C5473EFC;
  *(v108 + 24) = v100;
  v109 = swift_allocObject();
  *(v109 + 16) = 32;
  v110 = swift_allocObject();
  *(v110 + 16) = 8;
  v102 = swift_allocObject();
  *(v102 + 16) = sub_1C5499430;
  *(v102 + 24) = v101;
  v111 = swift_allocObject();
  *(v111 + 16) = sub_1C5473EFC;
  *(v111 + 24) = v102;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0, &qword_1C55ADF60);
  sub_1C5596E04();
  v112 = v4;

  *v112 = sub_1C545C6D4;
  v112[1] = v103;

  v112[2] = sub_1C545C6D4;
  v112[3] = v104;

  v112[4] = sub_1C5473FA4;
  v112[5] = v105;

  v112[6] = sub_1C545C6D4;
  v112[7] = v106;

  v112[8] = sub_1C545C6D4;
  v112[9] = v107;

  v112[10] = sub_1C5473FA4;
  v112[11] = v108;

  v112[12] = sub_1C545C6D4;
  v112[13] = v109;

  v112[14] = sub_1C545C6D4;
  v112[15] = v110;

  v112[16] = sub_1C5473FA4;
  v112[17] = v111;
  sub_1C540FCD8();

  if (os_log_type_enabled(v113, v114))
  {
    buf = sub_1C5596A74();
    v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940, qword_1C55ADF70);
    v86 = sub_1C5419DC0(0, v84, v84);
    v87 = sub_1C5419DC0(3, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v123 = buf;
    v124 = v86;
    v125 = v87;
    sub_1C5419E14(2, &v123);
    sub_1C5419E14(3, &v123);
    v126 = sub_1C545C6D4;
    v127 = v103;
    sub_1C5419E28(&v126, &v123, &v124, &v125);
    v126 = sub_1C545C6D4;
    v127 = v104;
    sub_1C5419E28(&v126, &v123, &v124, &v125);
    v126 = sub_1C5473FA4;
    v127 = v105;
    sub_1C5419E28(&v126, &v123, &v124, &v125);
    v126 = sub_1C545C6D4;
    v127 = v106;
    sub_1C5419E28(&v126, &v123, &v124, &v125);
    v126 = sub_1C545C6D4;
    v127 = v107;
    sub_1C5419E28(&v126, &v123, &v124, &v125);
    v126 = sub_1C5473FA4;
    v127 = v108;
    sub_1C5419E28(&v126, &v123, &v124, &v125);
    v126 = sub_1C545C6D4;
    v127 = v109;
    sub_1C5419E28(&v126, &v123, &v124, &v125);
    v126 = sub_1C545C6D4;
    v127 = v110;
    sub_1C5419E28(&v126, &v123, &v124, &v125);
    v126 = sub_1C5473FA4;
    v127 = v111;
    sub_1C5419E28(&v126, &v123, &v124, &v125);
    _os_log_impl(&dword_1C5355000, v113, v114, "Attempting to update snap name with firstName: %s, lastName: %s and type: %s", buf, 0x20u);
    sub_1C5419E74(v86, 0, v84);
    sub_1C5419E74(v87, 3, MEMORY[0x1E69E7CA0] + 8);
    sub_1C5596A54();
  }

  else
  {
  }

  v81 = *(v88 + 352);
  v82 = *(v88 + 328);
  v5 = *(v88 + 320);
  v80 = *(v88 + 336);
  v6 = MEMORY[0x1E69E5920](v113);
  v83 = *(v80 + 8);
  v7 = v83(v81, v82, v6);
  *(v88 + 232) = (*(*v5 + 296))(v7);
  if (*(v88 + 232))
  {
    v74 = *(v88 + 232);
    MEMORY[0x1E69E5928](v74, v8);
    sub_1C5401EF8((v88 + 232));
    v75 = [v74 firstName];
    v76 = sub_1C5596574();
    v77 = v9;
    MEMORY[0x1E69E5920](v74);
    v10 = MEMORY[0x1E69E5920](v75);
    v78 = v76;
    v79 = v77;
  }

  else
  {
    sub_1C5401EF8((v88 + 232));
    v78 = 0;
    v79 = 0;
  }

  *(v88 + 48) = v78;
  *(v88 + 56) = v79;
  if (*(v88 + 56))
  {
    v115 = *(v88 + 48);
    v116 = *(v88 + 56);
  }

  else
  {
    v115 = sub_1C55965F4("", 0, 1, v10.n128_f64[0]);
    v116 = v11;
    if (*(v88 + 56))
    {
      sub_1C5401ECC(v88 + 48);
    }
  }

  v12 = *(v88 + 320);
  *(v88 + 384) = v116;
  *(v88 + 64) = v115;
  *(v88 + 72) = v116;
  *(v88 + 240) = (*(*v12 + 296))(v10);
  if (*(v88 + 240))
  {
    v68 = *(v88 + 240);
    MEMORY[0x1E69E5928](v68, v13);
    sub_1C5401EF8((v88 + 240));
    v69 = [v68 lastName];
    v70 = sub_1C5596574();
    v71 = v14;
    MEMORY[0x1E69E5920](v68);
    *&v29 = MEMORY[0x1E69E5920](v69).n128_u64[0];
    v72 = v70;
    v73 = v71;
  }

  else
  {
    sub_1C5401EF8((v88 + 240));
    v72 = 0;
    v73 = 0;
  }

  *(v88 + 80) = v72;
  *(v88 + 88) = v73;
  if (*(v88 + 88))
  {
    v117 = *(v88 + 80);
    v118 = *(v88 + 88);
  }

  else
  {
    v117 = sub_1C55965F4("", 0, 1, v29);
    v118 = v15;
    if (*(v88 + 88))
    {
      sub_1C5401ECC(v88 + 80);
    }
  }

  v16 = *(v88 + 429);
  *(v88 + 392) = v118;
  *(v88 + 96) = v117;
  *(v88 + 104) = v118;
  *(v88 + 425) = v16 & 1;
  *(v88 + 426) = 0;
  sub_1C543F61C();
  if (sub_1C5596E24())
  {
    v67 = [*(v88 + 280) aa_firstName];
    if (v67)
    {
      v63 = sub_1C5596574();
      v64 = v18;
      *&v17 = MEMORY[0x1E69E5920](v67).n128_u64[0];
      v65 = v63;
      v66 = v64;
    }

    else
    {
      v65 = 0;
      v66 = 0;
    }

    *(v88 + 176) = v65;
    *(v88 + 184) = v66;
    if (*(v88 + 184))
    {
      v119 = *(v88 + 176);
      v120 = *(v88 + 184);
    }

    else
    {
      v119 = sub_1C55965F4("", 0, 1, v17);
      v120 = v19;
      if (*(v88 + 184))
      {
        sub_1C5401ECC(v88 + 176);
      }
    }

    v61 = *(v88 + 280);
    sub_1C5594CF4();
    *(v88 + 112) = v119;
    *(v88 + 120) = v120;
    v62 = [v61 aa_lastName];
    if (v62)
    {
      v57 = sub_1C5596574();
      v58 = v21;
      *&v20 = MEMORY[0x1E69E5920](v62).n128_u64[0];
      v59 = v57;
      v60 = v58;
    }

    else
    {
      v59 = 0;
      v60 = 0;
    }

    *(v88 + 192) = v59;
    *(v88 + 200) = v60;
    if (*(v88 + 200))
    {
      v121 = *(v88 + 192);
      v122 = *(v88 + 200);
    }

    else
    {
      v121 = sub_1C55965F4("", 0, 1, v20);
      v122 = v22;
      if (*(v88 + 200))
      {
        sub_1C5401ECC(v88 + 192);
      }
    }

    *(v88 + 128) = v121;
    *(v88 + 136) = v122;
  }

  else
  {
    v56 = *(v88 + 312);
    v55 = *(v88 + 304);
    v54 = *(v88 + 296);
    v53 = *(v88 + 288);
    sub_1C5594CF4();
    sub_1C5594CF4();
    *(v88 + 112) = v53;
    *(v88 + 120) = v54;
    sub_1C5594CF4();
    *(v88 + 128) = v55;
    *(v88 + 136) = v56;
  }

  *(v88 + 427) = *(v88 + 429) & 1;
  *(v88 + 428) = 0;
  if (sub_1C5596E24())
  {
  }

  else
  {
    sub_1C5594CF4();
    sub_1C5594CF4();
    v52 = sub_1C5596614();

    if (v52)
    {
      goto LABEL_47;
    }
  }

  v47 = *(v88 + 112);
  v48 = *(v88 + 120);
  sub_1C5594CF4();
  *(v88 + 144) = v47;
  *(v88 + 152) = v48;
  v51 = MEMORY[0x1C69471A0](*(v88 + 144), *(v88 + 152), v115, v116);
  sub_1C5401ECC(v88 + 144);
  v49 = *(v88 + 128);
  v50 = *(v88 + 136);
  sub_1C5594CF4();
  sub_1C5594CF4();
  if ((v51 & 1) == 0)
  {

LABEL_44:
    v44 = *(v88 + 429);
    v45 = *(v88 + 112);
    v41 = *(v88 + 120);
    *(v88 + 400) = v41;
    sub_1C5594CF4();
    v42 = *(v88 + 128);
    v43 = *(v88 + 136);
    *(v88 + 408) = v43;
    sub_1C5594CF4();
    v23 = swift_task_alloc();
    *(v88 + 416) = v23;
    *v23 = *(v88 + 208);
    v23[1] = sub_1C5495C54;

    return sub_1C5495F24(v45, v41, v42, v43, v44 & 1);
  }

  sub_1C5594CF4();
  sub_1C5594CF4();
  *(v88 + 160) = v49;
  *(v88 + 168) = v50;
  v46 = MEMORY[0x1C69471A0](*(v88 + 160), *(v88 + 168), v117, v118);
  sub_1C5401ECC(v88 + 160);

  if ((v46 & 1) == 0)
  {
    goto LABEL_44;
  }

LABEL_47:
  v25 = *(v88 + 344);
  v37 = *(v88 + 328);
  v26 = sub_1C54B05F8();
  v91(v25, v26, v37);
  oslog = sub_1C5594C54();
  v38 = sub_1C5596944();
  v40 = sub_1C5596E04();
  if (os_log_type_enabled(oslog, v38))
  {
    v33 = sub_1C5596A74();
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940, qword_1C55ADF70);
    v34 = sub_1C5419DC0(0, v32, v32);
    v35 = sub_1C5419DC0(0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    *(v88 + 248) = v33;
    *(v88 + 256) = v34;
    *(v88 + 264) = v35;
    sub_1C5419E14(0, (v88 + 248));
    sub_1C5419E14(0, (v88 + 248));
    *(v88 + 272) = v40;
    v36 = swift_task_alloc();
    v36[2] = v88 + 248;
    v36[3] = v88 + 256;
    v36[4] = v88 + 264;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0, &unk_1C55AE2C0);
    sub_1C5419F0C();
    sub_1C55966B4();

    _os_log_impl(&dword_1C5355000, oslog, v38, "Snap name value unchanged. Skipping IMNicknameController write operation and sharedNameType update.", v33, 2u);
    sub_1C5419E74(v34, 0, v32);
    sub_1C5419E74(v35, 0, MEMORY[0x1E69E7CA0] + 8);
    sub_1C5596A54();
  }

  v30 = *(v88 + 344);
  v31 = *(v88 + 328);
  v27 = MEMORY[0x1E69E5920](oslog);
  v83(v30, v31, v27);
  sub_1C5401ECC(v88 + 128);
  sub_1C5401ECC(v88 + 112);

  v28 = *(*(v88 + 208) + 8);

  return v28();
}

uint64_t sub_1C5495C54()
{
  *(*v0 + 208) = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1C5495DD4);
}

uint64_t sub_1C5495DD4()
{
  *(v0 + 208) = v0;
  sub_1C5401ECC(v0 + 128);
  sub_1C5401ECC(v0 + 112);

  v1 = *(*(v0 + 208) + 8);

  return v1();
}

uint64_t sub_1C5495F24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 120) = v5;
  *(v6 + 169) = a5;
  *(v6 + 112) = a4;
  *(v6 + 104) = a3;
  *(v6 + 96) = a2;
  *(v6 + 88) = a1;
  *(v6 + 48) = v6;
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  *(v6 + 32) = 0;
  *(v6 + 40) = 0;
  *(v6 + 168) = 0;
  *(v6 + 56) = 0;
  *(v6 + 80) = 0;
  v7 = sub_1C5594C74();
  *(v6 + 128) = v7;
  *(v6 + 136) = *(v7 - 8);
  *(v6 + 144) = swift_task_alloc();
  *(v6 + 152) = swift_task_alloc();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 40) = a4;
  *(v6 + 168) = a5 & 1;
  *(v6 + 56) = v5;
  sub_1C55967E4();
  *(v6 + 160) = sub_1C55967D4();
  sub_1C55967A4();

  return MEMORY[0x1EEE6DFA0](sub_1C54960FC);
}

uint64_t sub_1C54960FC(uint64_t a1)
{
  v92 = v1;
  v2 = *(v1 + 152);
  v56 = *(v1 + 136);
  v57 = *(v1 + 128);
  v63 = *(v1 + 169);
  v62 = *(v1 + 112);
  v61 = *(v1 + 104);
  v60 = *(v1 + 96);
  v59 = *(v1 + 88);
  *(v1 + 48) = v1;
  v3 = sub_1C54B05F8();
  v58 = *(v56 + 16);
  v58(v2, v3, v57);
  sub_1C5594CF4();
  v64 = swift_allocObject();
  *(v64 + 16) = v59;
  *(v64 + 24) = v60;
  sub_1C5594CF4();
  v66 = swift_allocObject();
  *(v66 + 16) = v61;
  *(v66 + 24) = v62;
  v68 = swift_allocObject();
  *(v68 + 16) = v63 & 1;
  v80 = sub_1C5594C54();
  v81 = sub_1C5596944();
  v70 = swift_allocObject();
  *(v70 + 16) = 32;
  v71 = swift_allocObject();
  *(v71 + 16) = 8;
  v65 = swift_allocObject();
  *(v65 + 16) = sub_1C5499100;
  *(v65 + 24) = v64;
  v72 = swift_allocObject();
  *(v72 + 16) = sub_1C5473EFC;
  *(v72 + 24) = v65;
  v73 = swift_allocObject();
  *(v73 + 16) = 32;
  v74 = swift_allocObject();
  *(v74 + 16) = 8;
  v67 = swift_allocObject();
  *(v67 + 16) = sub_1C5499100;
  *(v67 + 24) = v66;
  v75 = swift_allocObject();
  *(v75 + 16) = sub_1C5473EFC;
  *(v75 + 24) = v67;
  v76 = swift_allocObject();
  *(v76 + 16) = 32;
  v77 = swift_allocObject();
  *(v77 + 16) = 8;
  v69 = swift_allocObject();
  *(v69 + 16) = sub_1C5499430;
  *(v69 + 24) = v68;
  v78 = swift_allocObject();
  *(v78 + 16) = sub_1C5473EFC;
  *(v78 + 24) = v69;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0, &qword_1C55ADF60);
  sub_1C5596E04();
  v79 = v4;

  *v79 = sub_1C545C6D4;
  v79[1] = v70;

  v79[2] = sub_1C545C6D4;
  v79[3] = v71;

  v79[4] = sub_1C5473FA4;
  v79[5] = v72;

  v79[6] = sub_1C545C6D4;
  v79[7] = v73;

  v79[8] = sub_1C545C6D4;
  v79[9] = v74;

  v79[10] = sub_1C5473FA4;
  v79[11] = v75;

  v79[12] = sub_1C545C6D4;
  v79[13] = v76;

  v79[14] = sub_1C545C6D4;
  v79[15] = v77;

  v79[16] = sub_1C5473FA4;
  v79[17] = v78;
  sub_1C540FCD8();

  if (os_log_type_enabled(v80, v81))
  {
    buf = sub_1C5596A74();
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940, qword_1C55ADF70);
    v53 = sub_1C5419DC0(0, v51, v51);
    v54 = sub_1C5419DC0(3, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v87 = buf;
    v88 = v53;
    v89 = v54;
    sub_1C5419E14(2, &v87);
    sub_1C5419E14(3, &v87);
    v90 = sub_1C545C6D4;
    v91 = v70;
    sub_1C5419E28(&v90, &v87, &v88, &v89);
    v90 = sub_1C545C6D4;
    v91 = v71;
    sub_1C5419E28(&v90, &v87, &v88, &v89);
    v90 = sub_1C5473FA4;
    v91 = v72;
    sub_1C5419E28(&v90, &v87, &v88, &v89);
    v90 = sub_1C545C6D4;
    v91 = v73;
    sub_1C5419E28(&v90, &v87, &v88, &v89);
    v90 = sub_1C545C6D4;
    v91 = v74;
    sub_1C5419E28(&v90, &v87, &v88, &v89);
    v90 = sub_1C5473FA4;
    v91 = v75;
    sub_1C5419E28(&v90, &v87, &v88, &v89);
    v90 = sub_1C545C6D4;
    v91 = v76;
    sub_1C5419E28(&v90, &v87, &v88, &v89);
    v90 = sub_1C545C6D4;
    v91 = v77;
    sub_1C5419E28(&v90, &v87, &v88, &v89);
    v90 = sub_1C5473FA4;
    v91 = v78;
    sub_1C5419E28(&v90, &v87, &v88, &v89);
    _os_log_impl(&dword_1C5355000, v80, v81, "Updating snap info. First name: %s, last name: %s, sharing type: %s.", buf, 0x20u);
    sub_1C5419E74(v53, 0, v51);
    sub_1C5419E74(v54, 3, MEMORY[0x1E69E7CA0] + 8);
    sub_1C5596A54();
  }

  else
  {
  }

  v46 = *(v55 + 152);
  v47 = *(v55 + 128);
  v5 = *(v55 + 120);
  v50 = *(v55 + 112);
  v49 = *(v55 + 96);
  v45 = *(v55 + 136);
  v6 = MEMORY[0x1E69E5920](v80);
  v48 = *(v45 + 8);
  v48(v46, v47, v6);
  sub_1C5498E30();
  sub_1C5594CF4();
  v7 = sub_1C5594CF4();
  *(v55 + 64) = (*(*v5 + 296))(v7);
  if (*(v55 + 64))
  {
    v42 = *(v55 + 64);
    MEMORY[0x1E69E5928](v42, v8);
    sub_1C5401EF8((v55 + 64));
    v43 = [v42 avatar];
    v9 = MEMORY[0x1E69E5920](v42);
    v44 = v43;
  }

  else
  {
    sub_1C5401EF8((v55 + 64));
    v44 = 0;
  }

  *(v55 + 72) = (*(**(v55 + 120) + 296))(v9);
  if (*(v55 + 72))
  {
    v39 = *(v55 + 72);
    MEMORY[0x1E69E5928](v39, v10);
    sub_1C5401EF8((v55 + 72));
    v40 = [v39 pronouns];
    MEMORY[0x1E69E5920](v39);
    v41 = v40;
  }

  else
  {
    sub_1C5401EF8((v55 + 72));
    v41 = 0;
  }

  v29 = *(v55 + 144);
  v30 = *(v55 + 128);
  v31 = *(v55 + 120);
  v28 = sub_1C549764C(*(v55 + 88), v49, *(v55 + 104), v50, v44, v41);
  *(v55 + 80) = v28;
  v27 = v31[3];
  [v27 setPersonalNickname_];
  MEMORY[0x1E69E5920](v27);
  v13 = MEMORY[0x1E69E5928](v28, v12);
  (*(*v31 + 304))(v28, v13);
  v14 = sub_1C54B05F8();
  v58(v29, v14, v30);

  oslog = sub_1C5594C54();
  v38 = sub_1C5596944();
  v33 = swift_allocObject();
  *(v33 + 16) = 32;
  v34 = swift_allocObject();
  *(v34 + 16) = 8;
  v32 = swift_allocObject();
  *(v32 + 16) = sub_1C54993E8;
  *(v32 + 24) = v31;
  v35 = swift_allocObject();
  *(v35 + 16) = sub_1C5473EFC;
  *(v35 + 24) = v32;
  sub_1C5596E04();
  v36 = v15;

  *v36 = sub_1C545C6D4;
  v36[1] = v33;

  v36[2] = sub_1C545C6D4;
  v36[3] = v34;

  v36[4] = sub_1C5473FA4;
  v36[5] = v35;
  sub_1C540FCD8();

  if (os_log_type_enabled(oslog, v38))
  {
    v24 = sub_1C5596A74();
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940, qword_1C55ADF70);
    v25 = sub_1C5419DC0(0, v23, v23);
    v26 = sub_1C5419DC0(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v82 = v24;
    v83 = v25;
    v84 = v26;
    sub_1C5419E14(2, &v82);
    sub_1C5419E14(1, &v82);
    v85 = sub_1C545C6D4;
    v86 = v33;
    sub_1C5419E28(&v85, &v82, &v83, &v84);
    v85 = sub_1C545C6D4;
    v86 = v34;
    sub_1C5419E28(&v85, &v82, &v83, &v84);
    v85 = sub_1C5473FA4;
    v86 = v35;
    sub_1C5419E28(&v85, &v82, &v83, &v84);
    _os_log_impl(&dword_1C5355000, oslog, v38, "Updating sharedNameType to: %s because nickname value changed.", v24, 0xCu);
    sub_1C5419E74(v25, 0, v23);
    sub_1C5419E74(v26, 1, MEMORY[0x1E69E7CA0] + 8);
    sub_1C5596A54();
  }

  else
  {
  }

  v22 = *(v55 + 144);
  v20 = *(v55 + 128);
  v16 = *(v55 + 120);
  v21 = *(v55 + 169);
  v17 = MEMORY[0x1E69E5920](oslog);
  v48(v22, v20, v17);
  (*(*v16 + 352))(v21 & 1);
  MEMORY[0x1E69E5920](v28);

  v18 = *(*(v55 + 48) + 8);

  return v18();
}

uint64_t sub_1C54976B4(uint64_t a1)
{
  v2 = (*(*v1 + 568))();
  (*(*v8 + 400))(v2);
  v3 = (*(*v8 + 576))(a1);
  v4 = (*(*v8 + 448))(v3);
  v5 = (*(*v8 + 344))(v4);
  return (*(*v8 + 496))(v5 & 1);
}

uint64_t sub_1C5497834(uint64_t a1)
{
  v2[6] = v1;
  v2[5] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[4] = 0;
  v2[3] = a1;
  v2[4] = v1;
  sub_1C55967E4();
  v2[7] = sub_1C55967D4();
  v2[8] = sub_1C55967A4();
  v2[9] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1C5497904);
}

uint64_t sub_1C5497904()
{
  v6 = v0[6];
  v0[2] = v0;
  v8 = (*(*v6 + 392))();
  v9 = v1;
  v0[10] = v1;
  v10 = (*(*v6 + 440))();
  v11 = v2;
  v0[11] = v2;
  v12 = (*(*v6 + 488))();
  v13 = (*(*v6 + 592) + **(*v6 + 592));
  v3 = swift_task_alloc();
  v7[12] = v3;
  *v3 = v7[2];
  v3[1] = sub_1C5497B18;
  v4 = v7[5];

  return v13(v4, v8, v9, v10, v11, v12 & 1);
}

uint64_t sub_1C5497B18()
{
  *(*v0 + 16) = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1C5497C98);
}

uint64_t sub_1C5497C98()
{
  *(v0 + 16) = v0;

  v1 = *(*(v0 + 16) + 8);

  return v1();
}

uint64_t sub_1C5497D28(uint64_t a1)
{
  v58 = a1;
  v78 = 0;
  v77 = 0;
  v72 = 0;
  v73 = 0;
  v55 = 0;
  v53 = (*(*(sub_1C55949C4() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0, v2, v3, v4);
  v54 = &v28[-v53];
  v56 = (*(*(sub_1C5596544() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v55, v5, v6, v7);
  v57 = &v28[-v56];
  v59 = sub_1C5596524();
  v60 = *(v59 - 8);
  v61 = v59 - 8;
  v62 = (*(v60 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v58, v8, v9, v10);
  v63 = &v28[-v62];
  v64 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12, &v28[-v62], v13, v14);
  v65 = &v28[-v64];
  v66 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v19 = MEMORY[0x1EEE9AC00](v16, &v28[-v64], v17, v18);
  v67 = &v28[-v66];
  v78 = v20;
  v77 = v1;
  v68 = [v20 aa_fullName];
  if (v68)
  {
    v52 = v68;
    v47 = v68;
    v48 = sub_1C5596574();
    v49 = v22;
    *&v21 = MEMORY[0x1E69E5920](v47).n128_u64[0];
    v50 = v48;
    v51 = v49;
  }

  else
  {
    v50 = 0;
    v51 = 0;
  }

  v45 = v51;
  v46 = v50;
  if (v51)
  {
    v43 = v46;
    v44 = v45;
    v38 = v45;
    v33 = v46;
    v72 = v46;
    v73 = v45;
    sub_1C5596514();
    *&v35[1] = 1;
    sub_1C55965F4("Your full name, ", 16, 1);
    v32 = v23;
    sub_1C5596504();

    sub_1C55964F4();
    sub_1C55965F4(", will be shared.", 17, v35[1] & 1);
    v34 = v24;
    sub_1C5596504();

    (*(v60 + 16))(v65, v67, v59);
    (*(v60 + 32))(v63, v65, v59);
    (*(v60 + 8))(v67, v59);
    sub_1C5596534();
    v36 = 0;
    sub_1C5439370();
    v37 = sub_1C5576C44();
    sub_1C54982B4();
    v69 = 0;
    v70 = 0;
    v71 = *v35 & 0x100;
    v39 = sub_1C5596594();
    v40 = v25;

    v41 = v39;
    v42 = v40;
  }

  else
  {
    *&v29[1] = 1;
    sub_1C55965F4("Your full name will be shared.", 30, 1, v21);
    sub_1C55964E4();
    v30 = 0;
    sub_1C5439370();
    v31 = sub_1C5576C44();
    sub_1C54982B4();
    v74 = 0;
    v75 = 0;
    v76 = *v29 & 0x100;
    v41 = sub_1C5596594();
    v42 = v26;
  }

  return v41;
}

uint64_t sub_1C54982CC()
{
  v27 = 0;
  v16 = 0;
  v17 = (*(*(sub_1C55949C4() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0, v1, v2, v3);
  v18 = &v11[-v17];
  v4 = sub_1C5596544();
  v19 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x1EEE9AC00](v4, v5, v6, v7);
  v20 = &v11[-v19];
  v27 = v0;
  (*(*v0 + 392))(v8);
  v21 = v9;
  v22 = sub_1C5596614();

  if ((v22 & 1) == 0)
  {
    return sub_1C55965F4("", 0, 1);
  }

  v12 = 1;
  sub_1C55965F4("required", 8, 1);
  sub_1C55964E4();
  v13 = 0;
  sub_1C5439370();
  v14 = sub_1C5576C44();
  sub_1C54982B4();
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = v12 & 1;
  return sub_1C5596594();
}

uint64_t sub_1C54984C0()
{
  v27 = 0;
  v16 = 0;
  v17 = (*(*(sub_1C55949C4() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0, v1, v2, v3);
  v18 = &v11[-v17];
  v4 = sub_1C5596544();
  v19 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x1EEE9AC00](v4, v5, v6, v7);
  v20 = &v11[-v19];
  v27 = v0;
  (*(*v0 + 440))(v8);
  v21 = v9;
  v22 = sub_1C5596614();

  if ((v22 & 1) == 0)
  {
    return sub_1C55965F4("", 0, 1);
  }

  v12 = 1;
  sub_1C55965F4("optional", 8, 1);
  sub_1C55964E4();
  v13 = 0;
  sub_1C5439370();
  v14 = sub_1C5576C44();
  sub_1C54982B4();
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = v12 & 1;
  return sub_1C5596594();
}

uint64_t sub_1C54986B4@<X0>(uint64_t a1@<X8>)
{
  v4 = OBJC_IVAR____TtC14AppleAccountUI28NameAndPhotoSharingViewModel___observationRegistrar;
  v2 = sub_1C5594B24();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_1C5498728(void *a1)
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
  (*(v11 + 16))(&v7 - v4, v8 + OBJC_IVAR____TtC14AppleAccountUI28NameAndPhotoSharingViewModel___observationRegistrar, v3);
  v10 = &v15;
  v15 = v8;
  sub_1C5498AE0();
  sub_1C5594AE4();
  return (*(v11 + 8))(v13, v14);
}

uint64_t sub_1C5498898@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
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
  (*(v16 + 16))(v12 - v7, v18 + OBJC_IVAR____TtC14AppleAccountUI28NameAndPhotoSharingViewModel___observationRegistrar, v6);
  v25 = &v28;
  v28 = v18;
  sub_1C5498AE0();
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

unint64_t sub_1C5498AE0()
{
  v2 = qword_1EC15D1B0;
  if (!qword_1EC15D1B0)
  {
    type metadata accessor for NameAndPhotoSharingViewModel(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D1B0);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for NameAndPhotoSharingViewModel(uint64_t a1)
{
  v2 = qword_1EC1631F0;
  if (!qword_1EC1631F0)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

unint64_t type metadata accessor for CNMeCardSharingAudience(uint64_t a1)
{
  v5 = qword_1EC15E1D0;
  if (!qword_1EC15E1D0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EC15E1D0);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_1C5498C6C()
{
  v2 = qword_1EC15D1B8;
  if (!qword_1EC15D1B8)
  {
    type metadata accessor for CNMeCardSharingAudience(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D1B8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5498D18()
{
  v2 = qword_1EC15D1C8;
  if (!qword_1EC15D1C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15D1C0, &qword_1C55B1A08);
    sub_1C5498DB0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D1C8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5498DB0()
{
  v2 = qword_1EC15D1D0;
  if (!qword_1EC15D1D0)
  {
    sub_1C5498E30();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D1D0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5498E30()
{
  v2 = qword_1EC15D1D8;
  if (!qword_1EC15D1D8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EC15D1D8);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1C5498EC0()
{
  v2 = qword_1EC15D1E0;
  if (!qword_1EC15D1E0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D1E0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5498FF8()
{
  v2 = qword_1EC15D1F0;
  if (!qword_1EC15D1F0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EC15D1F0);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1C549905C()
{
  v2 = qword_1EC15D1F8;
  if (!qword_1EC15D1F8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EC15D1F8);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t NameAndPhotoSharingViewModel.deinit()
{
  swift_unknownObjectRelease();
  MEMORY[0x1E69E5920](*(v0 + 3));
  MEMORY[0x1E69E5920](*(v0 + 4));
  MEMORY[0x1E69E5920](*(v0 + 5));
  sub_1C5401EF8(v0 + 8);
  sub_1C5401ECC((v0 + 80));
  sub_1C5401ECC((v0 + 96));
  v3 = OBJC_IVAR____TtC14AppleAccountUI28NameAndPhotoSharingViewModel___observationRegistrar;
  v1 = sub_1C5594B24();
  (*(*(v1 - 8) + 8))(&v0[v3]);
  return v4;
}

id sub_1C5499238(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v11 = sub_1C5596554();

    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (a4)
  {
    v10 = sub_1C5596554();

    v6 = [v16 initWithFirstName:v12 lastName:v10 avatar:? pronouns:?];
  }

  else
  {
    v6 = [v16 initWithFirstName:v12 lastName:0 avatar:? pronouns:?];
  }

  v9 = v6;
  MEMORY[0x1E69E5920](a6);
  MEMORY[0x1E69E5920](a5);
  MEMORY[0x1E69E5920](v8);
  MEMORY[0x1E69E5920](v12);
  return v9;
}

uint64_t sub_1C5499458(uint64_t a1)
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

unint64_t sub_1C54995D0()
{
  v2 = qword_1EC15D230;
  if (!qword_1EC15D230)
  {
    type metadata accessor for CNMeCardSharingAudience(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D230);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5499650()
{
  v2 = qword_1EC15D240;
  if (!qword_1EC15D240)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EC15D240);
    return ObjCClassMetadata;
  }

  return v2;
}

double sub_1C54996B4@<D0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  v3 = MEMORY[0x1E69E5928](*a1, a2);
  v8 = v5;
  (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x60))(v3);
  sub_1C5458604(v7, a3);
  *&result = MEMORY[0x1E69E5920](v5).n128_u64[0];
  return result;
}

double sub_1C549975C(uint64_t a1, void *a2)
{
  sub_1C5432498(a1, v6);
  v5 = *a2;
  v2 = MEMORY[0x1E69E5928](*a2, a2);
  (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x68))(v6, v2);
  *&result = MEMORY[0x1E69E5920](v5).n128_u64[0];
  return result;
}

uint64_t sub_1C5499804@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC14AppleAccountUI40ExampleActionInvokingOBWelcomeController_flowDirector;
  swift_beginAccess();
  sub_1C5432498(v3, a1);
  return swift_endAccess();
}

uint64_t sub_1C5499868(void *a1)
{
  v6 = 0;
  v7 = a1;
  sub_1C5432498(a1, v5);
  __dst = (v1 + OBJC_IVAR____TtC14AppleAccountUI40ExampleActionInvokingOBWelcomeController_flowDirector);
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0(__dst);
  sub_1C5458604(v5, __dst);
  swift_endAccess();
  return __swift_destroy_boxed_opaque_existential_0(a1);
}

double sub_1C5499960@<D0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  v3 = MEMORY[0x1E69E5928](*a1, a2);
  *a3 = (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x78))(v3);
  *&result = MEMORY[0x1E69E5920](v5).n128_u64[0];
  return result;
}

double sub_1C5499A00(void *a1, void *a2)
{
  sub_1C5402C1C(a1, &v7);
  v6 = v7;
  v5 = *a2;
  v2 = MEMORY[0x1E69E5928](*a2, a2);
  (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x80))(v6, v2);
  *&result = MEMORY[0x1E69E5920](v5).n128_u64[0];
  return result;
}

uint64_t sub_1C5499AAC()
{
  v3 = (v0 + OBJC_IVAR____TtC14AppleAccountUI40ExampleActionInvokingOBWelcomeController_stage);
  swift_beginAccess();
  v4 = *v3;
  MEMORY[0x1E69E5928](*v3, v1);
  swift_endAccess();
  return v4;
}

double sub_1C5499B1C(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1E69E5928](a1, a2);
  v5 = (v2 + OBJC_IVAR____TtC14AppleAccountUI40ExampleActionInvokingOBWelcomeController_stage);
  swift_beginAccess();
  v3 = *v5;
  *v5 = a1;
  MEMORY[0x1E69E5920](v3);
  swift_endAccess();
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

char *ExampleActionInvokingOBWelcomeController.init(model:stage:flowDirector:)(uint64_t a1, uint64_t a2, void *a3)
{
  v17 = 0;
  v16 = a1;
  v15 = a2;
  v14 = a3;
  MEMORY[0x1E69E5928](a2, a2);
  *OBJC_IVAR____TtC14AppleAccountUI40ExampleActionInvokingOBWelcomeController_stage = a2;
  v6 = v17;
  sub_1C5432498(a3, v13);
  sub_1C5458604(v13, &v6[OBJC_IVAR____TtC14AppleAccountUI40ExampleActionInvokingOBWelcomeController_flowDirector]);
  v12.receiver = v17;
  v12.super_class = type metadata accessor for ExampleActionInvokingOBWelcomeController();
  v11 = objc_msgSendSuper2(&v12, sel_initWithViewModel_, a1);
  MEMORY[0x1E69E5928](v11, v3);
  v17 = v11;
  v7 = [v11 navigationItem];
  [v7 setHidesBackButton_];
  MEMORY[0x1E69E5920](v7);
  ExampleActionInvokingOBWelcomeController.setupInvokingActions()();
  __swift_destroy_boxed_opaque_existential_0(a3);
  MEMORY[0x1E69E5920](a2);
  swift_unknownObjectRelease();
  MEMORY[0x1E69E5920](v17);
  return v11;
}

Swift::Void __swiftcall ExampleActionInvokingOBWelcomeController.setupInvokingActions()()
{
  v81 = 0;
  v66 = 0;
  v76 = 0;
  v75 = 0;
  v74 = 0;
  v73 = 0;
  v67 = sub_1C5594C74();
  v68 = *(v67 - 8);
  v69 = v68;
  MEMORY[0x1EEE9AC00](v67 - 8, v67, v1, v2);
  v70 = v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = v0;
  v4 = v0;
  v72 = [v71 primaryButton];
  if (v72)
  {
    v65 = v72;
    v63 = v72;
    v76 = v72;

    v5 = v71;
    v6 = [v71 secondaryButton];
    v64 = v6;
    if (v6)
    {
      v62 = v64;
      v60 = v64;
      v75 = v64;

      v54 = 0;
      v48 = sub_1C545C6F4();
      v7 = v71;
      v49 = 24;
      v50 = 7;
      v44 = swift_allocObject();
      *(v44 + 16) = v71;
      v47 = sub_1C54398B0();
      v46 = v8;
      v45 = sub_1C545B878();
      sub_1C53FE664();
      v59 = sub_1C5596A44();
      v74 = v59;
      v9 = v71;
      v51 = swift_allocObject();
      *(v51 + 16) = v71;
      v55 = sub_1C54398B0();
      v53 = v10;
      v52 = sub_1C545B878();
      v11 = sub_1C53FE664();
      v22 = v51;
      v21 = sub_1C549B9D8;
      v20 = v11;
      v19[1] = v52;
      v19[0] = v54;
      v58 = sub_1C5596A44();
      v73 = v58;
      v56 = 0x1FB0D4000uLL;
      v57 = 64;
      [v63 0x1FB0D4EF8];
      [v60 (v56 + 3832)];

      v61 = v66;
      return;
    }
  }

  else
  {
  }

  v12 = v70;
  v13 = sub_1C54B05F8();
  (*(v69 + 16))(v12, v13, v67);
  v42 = sub_1C5594C54();
  v39 = v42;
  v41 = sub_1C5596954();
  v40 = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0, &qword_1C55ADF60);
  v43 = sub_1C5596E04();
  if (os_log_type_enabled(v42, v41))
  {
    v14 = v66;
    v30 = sub_1C5596A74();
    v26 = v30;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940, qword_1C55ADF70);
    v28 = 0;
    v31 = sub_1C5419DC0(0, v27, v27);
    v29 = v31;
    v32 = sub_1C5419DC0(v28, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v80 = v30;
    v79 = v31;
    v78 = v32;
    v33 = 0;
    v34 = &v80;
    sub_1C5419E14(0, &v80);
    sub_1C5419E14(v33, v34);
    v77 = v43;
    v35 = v23;
    MEMORY[0x1EEE9AC00](v23, v15, v16, v17);
    v36 = v19;
    v20 = v18;
    v21 = &v79;
    v22 = &v78;
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0, &unk_1C55AE2C0);
    sub_1C5419F0C();
    sub_1C55966B4();
    v38 = v14;
    if (v14)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_1C5355000, v39, v40, "Failed to create buttons.", v26, 2u);
      v24 = 0;
      sub_1C5419E74(v29, 0, v27);
      sub_1C5419E74(v32, v24, MEMORY[0x1E69E7CA0] + 8);
      sub_1C5596A54();

      v25 = v38;
    }
  }

  else
  {

    v25 = v66;
  }

  v23[1] = v25;

  (*(v69 + 8))(v70, v67);
}

id ExampleActionInvokingOBWelcomeController.__allocating_init(viewModel:)(uint64_t a1)
{
  v3 = [objc_allocWithZone(v1) initWithViewModel_];
  swift_unknownObjectRelease();
  return v3;
}

id ExampleActionInvokingOBWelcomeController.__allocating_init(title:detailText:symbolName:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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

id ExampleActionInvokingOBWelcomeController.__allocating_init(title:detailText:icon:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

id ExampleActionInvokingOBWelcomeController.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ExampleActionInvokingOBWelcomeController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void (*sub_1C549AEA4(void *a1))(void (***a1)(void *, uint64_t), char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL, 49628);
  *a1 = v3;
  v3[4] = (*((**v1 & *MEMORY[0x1E69E7D40]) + 0x70))();
  return sub_1C545A074;
}

uint64_t sub_1C549AF78(uint64_t a1, uint64_t *a2)
{
  v45 = a2;
  v44 = a1;
  v54 = 0;
  v68 = 0;
  v67 = 0;
  v43 = 0;
  v51 = sub_1C5594C74();
  v46 = v51;
  v47 = *(v51 - 8);
  v50 = v47;
  v48 = v47;
  MEMORY[0x1EEE9AC00](v44, v45, v51, v2);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = v4;
  v68 = v5;
  v67 = v6;
  v7 = sub_1C54B05F8();
  (*(v50 + 16))(v4, v7, v51);
  v56 = sub_1C5594C54();
  v52 = v56;
  v55 = sub_1C5596974();
  v53 = v55;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0, &qword_1C55ADF60);
  v57 = sub_1C5596E04();
  if (os_log_type_enabled(v56, v55))
  {
    v8 = v43;
    v34 = sub_1C5596A74();
    v30 = v34;
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940, qword_1C55ADF70);
    v32 = 0;
    v35 = sub_1C5419DC0(0, v31, v31);
    v33 = v35;
    v36 = sub_1C5419DC0(v32, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v61 = v34;
    v60 = v35;
    v59 = v36;
    v37 = 0;
    v38 = &v61;
    sub_1C5419E14(0, &v61);
    sub_1C5419E14(v37, v38);
    v58 = v57;
    v39 = &v21;
    MEMORY[0x1EEE9AC00](&v21, v9, v10, v11);
    v40 = &v21 - 6;
    *(&v21 - 4) = v12;
    *(&v21 - 3) = &v60;
    *(&v21 - 2) = &v59;
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0, &unk_1C55AE2C0);
    sub_1C5419F0C();
    sub_1C55966B4();
    v42 = v8;
    if (v8)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_1C5355000, v52, v53, "Advancing action.", v30, 2u);
      v28 = 0;
      sub_1C5419E74(v33, 0, v31);
      sub_1C5419E74(v36, v28, MEMORY[0x1E69E7CA0] + 8);
      sub_1C5596A54();

      v29 = v42;
    }
  }

  else
  {

    v29 = v43;
  }

  v13 = v45;

  v14 = (*(v48 + 8))(v49, v46);
  v15 = *v13;
  v22 = MEMORY[0x1E69E7D40];
  v16 = *((v15 & *MEMORY[0x1E69E7D40]) + 0x60);
  v27 = &v64;
  v16(v14);
  v17 = v45;
  v24 = v65;
  v25 = v66;
  v23 = __swift_project_boxed_opaque_existential_0(v27, v65);
  v18 = (*((*v17 & *v22) + 0x78))();
  v62[0] = 0;
  v62[1] = v18;
  v63 = 0;
  v19 = *(v25 + 32);
  v26 = v62;
  v19();
  sub_1C545CDC0(v26);
  return __swift_destroy_boxed_opaque_existential_0(v27);
}

uint64_t sub_1C549B4A4(uint64_t a1, uint64_t *a2)
{
  v45 = a2;
  v44 = a1;
  v54 = 0;
  v68 = 0;
  v67 = 0;
  v43 = 0;
  v51 = sub_1C5594C74();
  v46 = v51;
  v47 = *(v51 - 8);
  v50 = v47;
  v48 = v47;
  MEMORY[0x1EEE9AC00](v44, v45, v51, v2);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = v4;
  v68 = v5;
  v67 = v6;
  v7 = sub_1C54B05F8();
  (*(v50 + 16))(v4, v7, v51);
  v56 = sub_1C5594C54();
  v52 = v56;
  v55 = sub_1C5596974();
  v53 = v55;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0, &qword_1C55ADF60);
  v57 = sub_1C5596E04();
  if (os_log_type_enabled(v56, v55))
  {
    v8 = v43;
    v34 = sub_1C5596A74();
    v30 = v34;
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940, qword_1C55ADF70);
    v32 = 0;
    v35 = sub_1C5419DC0(0, v31, v31);
    v33 = v35;
    v36 = sub_1C5419DC0(v32, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v61 = v34;
    v60 = v35;
    v59 = v36;
    v37 = 0;
    v38 = &v61;
    sub_1C5419E14(0, &v61);
    sub_1C5419E14(v37, v38);
    v58 = v57;
    v39 = &v21;
    MEMORY[0x1EEE9AC00](&v21, v9, v10, v11);
    v40 = &v21 - 6;
    *(&v21 - 4) = v12;
    *(&v21 - 3) = &v60;
    *(&v21 - 2) = &v59;
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0, &unk_1C55AE2C0);
    sub_1C5419F0C();
    sub_1C55966B4();
    v42 = v8;
    if (v8)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_1C5355000, v52, v53, "Declining action.", v30, 2u);
      v28 = 0;
      sub_1C5419E74(v33, 0, v31);
      sub_1C5419E74(v36, v28, MEMORY[0x1E69E7CA0] + 8);
      sub_1C5596A54();

      v29 = v42;
    }
  }

  else
  {

    v29 = v43;
  }

  v13 = v45;

  v14 = (*(v48 + 8))(v49, v46);
  v15 = *v13;
  v22 = MEMORY[0x1E69E7D40];
  v16 = *((v15 & *MEMORY[0x1E69E7D40]) + 0x60);
  v27 = &v64;
  v16(v14);
  v17 = v45;
  v24 = v65;
  v25 = v66;
  v23 = __swift_project_boxed_opaque_existential_0(v27, v65);
  v18 = (*((*v17 & *v22) + 0x78))();
  v62[0] = 0;
  v62[1] = v18;
  v63 = 1;
  v19 = *(v25 + 32);
  v26 = v62;
  v19();
  sub_1C545CDC0(v26);
  return __swift_destroy_boxed_opaque_existential_0(v27);
}

uint64_t sub_1C549BBFC@<X0>(uint64_t a1@<X8>)
{
  v4 = *(type metadata accessor for AppleAccountBirthdayPickerRow(0) + 20);
  v2 = sub_1C5596384();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t type metadata accessor for AppleAccountBirthdayPickerRow(uint64_t a1)
{
  v2 = qword_1EC163D20;
  if (!qword_1EC163D20)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t sub_1C549BD14()
{
  type metadata accessor for AppleAccountBirthdayPickerRow(0);

  sub_1C55963A4();
  sub_1C549BD98();
  v1 = sub_1C5595284();

  return v1;
}

unint64_t sub_1C549BD98()
{
  v2 = qword_1EC15D260;
  if (!qword_1EC15D260)
  {
    sub_1C55963A4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D260);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C549BE18()
{
  sub_1C55963A4();
  sub_1C549BD98();
  return sub_1C55952A4();
}

uint64_t sub_1C549BE50()
{
  type metadata accessor for AppleAccountBirthdayPickerRow(0);

  sub_1C55963A4();
  sub_1C549BD98();
  v1 = sub_1C5595294();

  return v1;
}

uint64_t sub_1C549BED4()
{
  v2 = *(v0 + *(type metadata accessor for AppleAccountBirthdayPickerRow(0) + 28));

  return v2;
}

uint64_t sub_1C549BF1C(uint64_t a1, uint64_t a2)
{

  v3 = (v2 + *(type metadata accessor for AppleAccountBirthdayPickerRow(0) + 28));
  *v3 = a1;
  v3[1] = a2;
}

uint64_t sub_1C549BF74()
{
  v1 = v0 + *(type metadata accessor for AppleAccountBirthdayPickerRow(0) + 32);
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 17);
  sub_1C549C060(*v1, v4, *(v1 + 16), v6 & 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D268, &qword_1C55B1DB0);
  sub_1C5595004();
  sub_1C549C0AC(v3, v4, v5, v6 & 1);
  return v7;
}

uint64_t sub_1C549C060(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
  }
}

uint64_t sub_1C549C0AC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
  }
}

uint64_t sub_1C549C0F8()
{
  swift_getKeyPath();
  sub_1C5595024();
  return v1;
}

uint64_t sub_1C549C144@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v17 = a2;
  v15 = a1;
  v21 = sub_1C5595324();
  v18 = *(v21 - 8);
  v19 = v21 - 8;
  v16 = (*(v18 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v21, v15, v21, v2);
  v20 = &v14 - v16;
  (*(v18 + 16))(&v14 - v16, v3);
  v4 = sub_1C55952E4();
  v5 = v17;
  v6 = v18;
  v7 = v4;
  v8 = v20;
  v10 = v9;
  v11 = v21;
  *v17 = v7;
  v5[1] = v10;
  *(v5 + 16) = v12 & 1;
  return (*(v6 + 8))(v8, v11);
}

uint64_t sub_1C549C294()
{
  v1 = v0 + *(type metadata accessor for AppleAccountBirthdayPickerRow(0) + 32);
  v3 = *v1;
  sub_1C549C060(*v1, *(v1 + 8), *(v1 + 16), *(v1 + 17) & 1);
  return v3;
}

uint64_t sub_1C549C31C(uint64_t a1, uint64_t a2, __int16 a3)
{
  v12 = a3;
  v13 = HIBYTE(a3);
  sub_1C549C060(a1, a2, a3, HIBYTE(a3) & 1);
  v4 = v3 + *(type metadata accessor for AppleAccountBirthdayPickerRow(0) + 32);
  v5 = *v4;
  v6 = *(v4 + 8);
  v7 = *(v4 + 16);
  v8 = *(v4 + 17);
  *v4 = a1;
  *(v4 + 8) = a2;
  *(v4 + 16) = v12;
  *(v4 + 17) = v13 & 1;
  sub_1C549C0AC(v5, v6, v7, v8 & 1);
  return sub_1C549C0AC(a1, a2, v12, v13 & 1);
}

uint64_t sub_1C549C3D4(uint64_t a1)
{

  type metadata accessor for BirthdayPickerRowViewModel(0);
  sub_1C5595F74();

  return v2;
}

uint64_t sub_1C549C44C()
{
  type metadata accessor for AppleAccountBirthdayPickerRow(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D270, &qword_1C55B1DE8);
  sub_1C5595F84();

  return v1;
}

uint64_t sub_1C549C4E8(uint64_t a1)
{
  v2 = (v1 + *(type metadata accessor for AppleAccountBirthdayPickerRow(0) + 36));
  v4 = *v2;
  v5 = v2[1];

  v6[0] = v4;
  v6[1] = v5;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D270, &qword_1C55B1DE8);
  sub_1C5595F94();
  sub_1C5436F54(v6);
}

uint64_t sub_1C549C5BC()
{
  type metadata accessor for AppleAccountBirthdayPickerRow(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D270, &qword_1C55B1DE8);
  sub_1C5595FA4();

  return v1;
}

uint64_t sub_1C549C670()
{
  v2 = *(v0 + *(type metadata accessor for AppleAccountBirthdayPickerRow(0) + 36));

  return v2;
}

uint64_t sub_1C549C6C0(uint64_t a1, uint64_t a2)
{

  v3 = (v2 + *(type metadata accessor for AppleAccountBirthdayPickerRow(0) + 36));
  *v3 = a1;
  v3[1] = a2;
}

char *sub_1C549C738@<X0>(uint64_t a1@<X8>)
{
  v55 = a1;
  v52 = MEMORY[0x1E69E85E0];
  v60 = sub_1C549CD38;
  v57 = sub_1C549CEA8;
  v66 = 0;
  v65 = 0;
  v43 = 0;
  v59 = sub_1C5594924();
  v38 = *(v59 - 8);
  v39 = v59 - 8;
  v29 = (*(v38 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v59, v2, v3, v4);
  v40 = &v29 - v29;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D278, &qword_1C55B1DF0);
  v30 = *(v5 - 8);
  v45 = v30;
  v49 = *(v30 + 64);
  v31 = (v49 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5, v6, v7, v8);
  v54 = &v29 - v31;
  v32 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v29 - v31, v10, v11, v12);
  v61 = &v29 - v32;
  v66 = &v29 - v32;
  v65 = v1;
  v13 = sub_1C549BD14();
  v14 = v33;
  v42 = v13;
  v37 = *v33;
  v41 = v33[1];
  sub_1C5594CF4();
  v15 = (v14 + *(type metadata accessor for AppleAccountBirthdayPickerRow(v43) + 36));
  v34 = *v15;
  v35 = v15[1];

  v63 = v34;
  v64 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D270, &qword_1C55B1DE8);
  sub_1C5595F84();
  v16 = v62;
  v36 = v62;

  (*(*v16 + 232))(v17);

  sub_1C5596394();
  (*(v38 + 8))(v40, v59);

  sub_1C549CBC4(v61, v54);
  v44 = sub_1C55967E4();
  v46 = sub_1C55967D4();
  v48 = *(v45 + 80);
  v47 = (v48 + 32) & ~v48;
  v50 = 7;
  v18 = swift_allocObject();
  v19 = v47;
  v20 = v52;
  v21 = v18;
  v22 = v54;
  v56 = v21;
  *(v21 + 16) = v46;
  *(v21 + 24) = v20;
  sub_1C549CC90(v22, (v21 + v19));
  sub_1C549CBC4(v61, v54);
  v51 = sub_1C55967D4();
  v53 = (v48 + 32) & ~v48;
  v23 = swift_allocObject();
  v24 = v52;
  v25 = v53;
  v26 = v23;
  v27 = v54;
  v58 = v26;
  *(v26 + 16) = v51;
  *(v26 + 24) = v24;
  sub_1C549CC90(v27, (v26 + v25));
  sub_1C55960D4();
  return sub_1C549CF34(v61);
}

char *sub_1C549CBC4(char *a1, char *a2)
{
  v4 = *a1;

  *a2 = v4;
  v5 = *(a1 + 1);

  *(a2 + 1) = v5;
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D278, &qword_1C55B1DF0) + 32);
  v2 = sub_1C5594924();
  (*(*(v2 - 8) + 16))(&a2[v6], &a1[v6]);
  return a2;
}

char *sub_1C549CC90(char *a1, char *a2)
{
  *a2 = *a1;
  *(a2 + 1) = *(a1 + 1);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D278, &qword_1C55B1DF0) + 32);
  v2 = sub_1C5594924();
  (*(*(v2 - 8) + 32))(&a2[v4], &a1[v4]);
  return a2;
}

uint64_t sub_1C549CD38()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D278, &qword_1C55B1DF0);

  return sub_1C549CB70();
}

uint64_t sub_1C549CDC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = a1;
  v15 = 0;
  v14 = 0;
  v5 = sub_1C5594924();
  v12 = *(v5 - 8);
  v11 = (*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x1EEE9AC00](v5, v10, v5, v6);
  v13 = &v10 - v11;
  v15 = v8;
  v14 = a4;
  (*(v12 + 16))(v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D278, &qword_1C55B1DF0);
  return sub_1C55960A4();
}

uint64_t sub_1C549CEA8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D278, &qword_1C55B1DF0);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = v1 + ((*(*(v2 - 8) + 80) + 32) & ~*(*(v2 - 8) + 80));

  return sub_1C549CDC0(a1, v3, v4, v5);
}

char *sub_1C549CF34(char *a1)
{

  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D278, &qword_1C55B1DF0) + 32);
  v1 = sub_1C5594924();
  (*(*(v1 - 8) + 8))(&a1[v3]);
  return a1;
}

uint64_t sub_1C549CFC8@<X0>(uint64_t a1@<X8>)
{
  v126 = a1;
  v188 = sub_1C549E560;
  v127 = MEMORY[0x1E6981420];
  v128 = sub_1C549F22C;
  v129 = MEMORY[0x1E697D510];
  v130 = sub_1C54A0B98;
  v131 = MEMORY[0x1E6981448];
  v132 = MEMORY[0x1E69811C8];
  v133 = MEMORY[0x1E697D248];
  v285 = 0;
  v284 = 0;
  v187 = 0;
  v134 = sub_1C55956B4();
  v135 = *(v134 - 8);
  v136 = v134 - 8;
  v137 = (*(v135 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0, v2, v3, v4);
  v138 = &v66 - v137;
  v139 = sub_1C5594924();
  v140 = *(v139 - 8);
  v141 = v139 - 8;
  v142 = (*(v140 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v187, v5, v6, v7);
  v143 = &v66 - v142;
  v215 = type metadata accessor for AppleAccountBirthdayPickerRow(v8);
  v144 = *(v215 - 8);
  v145 = v144;
  v146 = *(v144 + 64);
  v147 = (v146 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v187, v9, v10, v11);
  v148 = &v66 - v147;
  v149 = type metadata accessor for AppleAccountBirthdayPickerRow.RowDragGesture(v12);
  v150 = (*(*(v149 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v149, v13, v14, v15);
  v151 = &v66 - v150;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D280, &qword_1C55B1DF8);
  v153 = *(v152 - 8);
  v154 = v152 - 8;
  v155 = (*(v153 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v152, v16, v17, v18);
  v156 = &v66 - v155;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D288, &qword_1C55B1E00);
  v158 = (*(*(v157 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v157, v19, v20, v21);
  v159 = &v66 - v158;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D290, &qword_1C55B1E08);
  v161 = *(v160 - 8);
  v162 = v160 - 8;
  v163 = (*(v161 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v160, v22, v23, v24);
  v164 = &v66 - v163;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D298, &qword_1C55B1E10);
  v166 = *(v165 - 8);
  v167 = v165 - 8;
  v168 = (*(v166 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v165, v25, v26, v27);
  v169 = &v66 - v168;
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D2A0, &qword_1C55B1E18);
  v171 = *(v170 - 8);
  v172 = v170 - 8;
  v173 = (*(v171 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v170, v28, v29, v30);
  v174 = &v66 - v173;
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D2A8, &qword_1C55B1E20);
  v176 = (*(*(v175 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v175, v31, v32, v33);
  v177 = &v66 - v176;
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D2B0, &qword_1C55B1E28);
  v179 = *(v178 - 8);
  v180 = v178 - 8;
  v181 = (*(v179 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v178, v34, v35, v36);
  v182 = &v66 - v181;
  v183 = (v37 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v66 - v181, v38, v39, v40);
  v184 = &v66 - v183;
  v185 = (v41 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v66 - v183, v42, v43, v44);
  v186 = &v66 - v185;
  v285 = &v66 - v185;
  v284 = v1;
  v189 = &v221;
  v222 = v1;
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D2B8, &qword_1C55B1E30);
  v191 = sub_1C549E5D4();
  sub_1C544B78C();
  v192 = &v280;
  sub_1C5596064();
  v193 = v286;
  v194 = 81;
  memcpy(v286, v192, 0x51uLL);
  v200 = v279;
  memcpy(v279, v286, 0x51uLL);
  v45 = (v1 + *(v215 + 36));
  v195 = *v45;
  v196 = v45[1];

  v277 = v195;
  v278 = v196;
  v216 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D270, &qword_1C55B1DE8);
  sub_1C5595F84();
  v46 = v276;
  v197 = v276;

  v199 = (*(*v46 + 528))(v47);

  v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D2D0, &qword_1C55B1E38);
  sub_1C549E6F4();
  v201 = &v281;
  sub_1C5595BD4();
  v48 = v210;
  sub_1C5409FBC(v200);
  v202 = __dst;
  v203 = 82;
  memcpy(__dst, v201, 0x52uLL);
  v211 = v275;
  memcpy(v275, __dst, 0x52uLL);
  v209 = sub_1C55957A4();
  v49 = &v48[*(v215 + 36)];
  v204 = *v49;
  v205 = *(v49 + 1);

  v273 = v204;
  v274 = v205;
  sub_1C5595F84();
  v206 = v272;

  v207 = *(v206 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel_horizontalPadding);

  v208 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D2E0, &qword_1C55B1E40);
  sub_1C549E77C();
  v212 = &v282;
  sub_1C5595D84();
  v50 = v210;
  sub_1C5409FBC(v211);
  v213 = v288;
  v214 = 129;
  memcpy(v288, v212, 0x81uLL);
  memcpy(v271, v288, 0x81uLL);
  v51 = &v50[*(v215 + 36)];
  v217 = *v51;
  v218 = *(v51 + 1);

  v269 = v217;
  v270 = v218;
  sub_1C5595F84();
  v52 = v268;
  v219 = v268;

  v220 = (*(*v52 + 576))(v53);

  if (v220)
  {
    v54 = [objc_opt_self() separatorColor];
  }

  else
  {
    v55 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
  }

  v125 = sub_1C5595E44();
  v71 = &v266;
  v266 = v125;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D2F0, &qword_1C55B1E48);
  v69 = sub_1C549E820();
  v68 = MEMORY[0x1E69815C0];
  v70 = MEMORY[0x1E6981568];
  sub_1C5410CE8(v67, MEMORY[0x1E69815C0]);
  v73 = &v283;
  v72 = v271;
  sub_1C5595A74();
  sub_1C5410D10(v71);
  sub_1C5409FBC(v72);
  v74 = v267;
  v75 = 145;
  memcpy(v267, v73, 0x91uLL);
  v79 = v265;
  memcpy(v265, v267, 0x91uLL);
  v56 = &v210[*(v215 + 36)];
  v76 = *v56;
  v77 = *(v56 + 1);

  v263 = v76;
  v264 = v77;
  sub_1C5595F84();
  v78 = v262;

  sub_1C549E8C4(v78, v151);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D300, &unk_1C55B1E50);
  v85 = sub_1C549E9BC();
  v86 = sub_1C549EA64();
  sub_1C549E994(v84, v149);
  sub_1C5595D54();
  sub_1C549EAE4(v151);
  sub_1C549EB4C(v79);
  v88 = sub_1C5596224();
  v57 = &v210[*(v215 + 36)];
  v80 = *v57;
  v81 = *(v57 + 1);

  v260 = v80;
  v261 = v81;
  sub_1C5595F84();
  v58 = v259;
  v82 = v259;

  v83 = (*(*v58 + 576))(v59);

  v87 = &v258;
  v258 = v83 & 1;
  v254 = v84;
  v255 = v149;
  v256 = v85;
  v257 = v86;
  v121 = 1;
  swift_getOpaqueTypeConformance2();
  sub_1C5595DF4();

  (*(v153 + 8))(v156, v152);
  v60 = &v210[*(v215 + 36)];
  v89 = *v60;
  v90 = *(v60 + 1);

  v252 = v89;
  v253 = v90;
  sub_1C5595FA4();
  v91 = v249;
  v92 = v250;
  v93 = v251;

  KeyPath = swift_getKeyPath();
  v246 = v91;
  v247 = v92;
  v248 = v93;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D320, &qword_1C55B1E90);
  sub_1C55960B4();
  v97 = v243;
  v98 = v244;
  v95 = v245;

  sub_1C549EF2C(v210, v148);
  v103 = *(v145 + 80);
  v94 = (v103 + 16) & ~v103;
  v104 = 7;
  v96 = swift_allocObject();
  sub_1C549F11C(v148, (v96 + v94));
  v112 = 0;
  v106 = type metadata accessor for BirthdayPickerSheet(0);
  v107 = sub_1C549F314();
  v108 = sub_1C549F4BC();
  sub_1C5595D34();

  sub_1C53644DC(v159);
  v61 = &v210[*(v215 + 36)];
  v100 = *v61;
  v101 = *(v61 + 1);

  v241 = v100;
  v242 = v101;
  sub_1C5595F84();
  v62 = v240;
  v102 = v240;

  (*(*v62 + 264))(v63);

  sub_1C549EF2C(v210, v148);
  v105 = (v103 + 16) & ~v103;
  v109 = swift_allocObject();
  sub_1C549F11C(v148, (v109 + v105));
  v236 = v157;
  v237 = v106;
  v238 = v107;
  v239 = v108;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v114 = sub_1C54290E8();
  sub_1C543AE1C();
  sub_1C5595DE4();

  (*(v140 + 8))(v143, v139);
  (*(v161 + 8))(v164, v160);
  v64 = &v210[*(v215 + 36)];
  v110 = *v64;
  v111 = *(v64 + 1);

  v234 = v110;
  v235 = v111;
  sub_1C5595F84();
  v115 = v233;

  v116 = type metadata accessor for BirthdayPickerRowViewModel(v112);
  v229 = v160;
  v230 = v139;
  v231 = OpaqueTypeConformance2;
  v232 = v114;
  v117 = swift_getOpaqueTypeConformance2();
  v118 = sub_1C5429194();
  sub_1C5595AF4();

  (*(v166 + 8))(v169, v165);
  v119 = v210[*(v215 + 24)];
  v225 = v165;
  v226 = v116;
  v227 = v117;
  v228 = v118;
  swift_getOpaqueTypeConformance2();
  sub_1C5595DA4();
  (*(v171 + 8))(v174, v170);
  sub_1C55956A4();
  v120 = sub_1C54A0C5C();
  sub_1C5595C44();
  (*(v135 + 8))(v138, v134);
  sub_1C53646D4(v177);
  v223 = v175;
  v224 = v120;
  v122 = swift_getOpaqueTypeConformance2();
  sub_1C540EFD8(v184, v178, v186);
  v124 = *(v179 + 8);
  v123 = v179 + 8;
  v124(v184, v178);
  (*(v179 + 16))(v182, v186, v178);
  sub_1C540EFD8(v182, v178, v126);
  v124(v182, v178);
  return (v124)(v186, v178);
}

uint64_t type metadata accessor for AppleAccountBirthdayPickerRow.RowDragGesture(uint64_t a1)
{
  v2 = qword_1EC163D30;
  if (!qword_1EC163D30)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

void sub_1C549E3AC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v15[8] = a1;
  type metadata accessor for AppleAccountBirthdayPickerRow(0);
  sub_1C549E568();
  sub_1C549E5A8();
  v12 = v2;
  v13 = v3;
  v9 = v2;
  v10 = v3 & 0xFF01;
  v11 = BYTE2(v3);
  sub_1C5595804();
  sub_1C549E678();
  sub_1C5595D84();
  sub_1C5410D10(&v9);
  memcpy(__dst, v14, sizeof(__dst));
  memcpy(v8, __dst, 0x39uLL);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D2B8, &qword_1C55B1E30);
  sub_1C549E5D4();
  sub_1C540EFD8(v8, v5, v15);
  sub_1C5410D10(v8);
  memcpy(v17, v15, 0x39uLL);
  sub_1C54AFE0C(v17, v7);
  memcpy(v6, v17, 0x39uLL);
  sub_1C540EFD8(v6, v5, a2);
  sub_1C5410D10(v6);
  sub_1C5410D10(v15);
}

uint64_t sub_1C549E568()
{
  type metadata accessor for BirthdayPickerRowViewModel(0);
  sub_1C5429194();
  return sub_1C5595034();
}

unint64_t sub_1C549E5D4()
{
  v2 = qword_1EC15D2C0;
  if (!qword_1EC15D2C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15D2B8, &qword_1C55B1E30);
    sub_1C549E678();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D2C0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C549E678()
{
  v2 = qword_1EC15D2C8;
  if (!qword_1EC15D2C8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D2C8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C549E6F4()
{
  v2 = qword_1EC15D2D8;
  if (!qword_1EC15D2D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15D2D0, &qword_1C55B1E38);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D2D8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C549E77C()
{
  v2 = qword_1EC15D2E8;
  if (!qword_1EC15D2E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15D2E0, &qword_1C55B1E40);
    sub_1C549E6F4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D2E8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C549E820()
{
  v2 = qword_1EC15D2F8;
  if (!qword_1EC15D2F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15D2F0, &qword_1C55B1E48);
    sub_1C549E77C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D2F8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C549E8C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v12 = a2;
  v8 = a1;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D318, &qword_1C55B1E60);
  v10 = *(v14 - 8);
  v11 = v14 - 8;
  v9 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8, v2, v3, v4);
  v13 = &v7 - v9;
  sub_1C54A0E74(v5);
  return (*(v10 + 32))(v12, v13, v14);
}

unint64_t sub_1C549E9BC()
{
  v2 = qword_1EC15D308;
  if (!qword_1EC15D308)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15D300, &unk_1C55B1E50);
    sub_1C549E820();
    sub_1C5410EE0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D308);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C549EA64()
{
  v2 = qword_1EC15D310;
  if (!qword_1EC15D310)
  {
    type metadata accessor for AppleAccountBirthdayPickerRow.RowDragGesture(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D310);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C549EAE4(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D318, &qword_1C55B1E60);
  (*(*(v1 - 8) + 8))(a1);
  return a1;
}

uint64_t sub_1C549EB84@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v33 = a1;
  v40 = sub_1C54AFB7C;
  v42 = sub_1C54AFBE0;
  v54 = 0;
  v53 = 0;
  v20[1] = 0;
  v29 = type metadata accessor for AppleAccountBirthdayPickerRow(0);
  v21 = *(v29 - 8);
  v30 = v21;
  v35 = *(v21 + 64);
  v22 = (v35 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0, v2, v3, v4);
  v38 = v20 - v22;
  v23 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6, v20 - v22, v7, v8);
  v32 = v20 - v23;
  v46 = type metadata accessor for BirthdayPickerSheet(v9);
  v25 = *(*(v46 - 8) + 64);
  v24 = (v25 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v33, v10, v11, v12);
  v48 = v20 - v24;
  v26 = (v25 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v13, v20 - v24, v14, v15);
  v49 = v20 - v26;
  v54 = v20 - v26;
  v53 = v16;
  v18 = (v16 + *(v17 + 36));
  v27 = *v18;
  v28 = v18[1];

  v51 = v27;
  v52 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D270, &qword_1C55B1DE8);
  sub_1C5595F84();
  v44 = v50;

  v39 = v33[*(v29 + 24)];
  sub_1C549EF2C(v33, v32);
  v34 = *(v30 + 80);
  v31 = (v34 + 16) & ~v34;
  v36 = 7;
  v41 = swift_allocObject();
  sub_1C549F11C(v32, (v41 + v31));
  sub_1C549EF2C(v33, v38);
  v37 = (v34 + 16) & ~v34;
  v43 = swift_allocObject();
  sub_1C549F11C(v38, (v43 + v37));
  sub_1C549FDF4(v44, v39 & 1, v40, v41, v42, v43, v48);
  v47 = sub_1C549F4BC();
  sub_1C540EFD8(v48, v46, v49);
  sub_1C54AFC44(v48);
  sub_1C54AFCE8(v49, v48);
  sub_1C540EFD8(v48, v46, v45);
  sub_1C54AFC44(v48);
  return sub_1C54AFC44(v49);
}

char *sub_1C549EF2C(char *a1, char *a2)
{
  *a2 = *a1;
  v6 = *(a1 + 1);
  sub_1C5594CF4();
  *(a2 + 1) = v6;
  v15 = type metadata accessor for AppleAccountBirthdayPickerRow(0);
  v7 = v15[5];
  v2 = sub_1C5596384();
  (*(*(v2 - 8) + 16))(&a2[v7], &a1[v7]);
  a2[v15[6]] = a1[v15[6]];
  v8 = v15[7];
  v9 = *&a1[v8];

  v3 = &a2[v8];
  *v3 = v9;
  *(v3 + 1) = *&a1[v8 + 8];
  v10 = v15[8];
  v11 = *&a1[v10];
  v12 = *&a1[v10 + 8];
  v13 = a1[v10 + 16];
  v14 = a1[v10 + 17];
  sub_1C549C060(v11, v12, v13, v14 & 1);
  v4 = &a2[v10];
  *v4 = v11;
  *(v4 + 1) = v12;
  v4[16] = v13;
  v4[17] = v14 & 1;
  v17 = v15[9];
  v18 = *&a1[v17];

  *&a2[v17] = v18;
  v20 = *&a1[v17 + 8];

  result = a2;
  *&a2[v17 + 8] = v20;
  return result;
}

__n128 sub_1C549F11C(char *a1, char *a2)
{
  *a2 = *a1;
  v7 = type metadata accessor for AppleAccountBirthdayPickerRow(0);
  v6 = v7[5];
  v2 = sub_1C5596384();
  (*(*(v2 - 8) + 32))(&a2[v6], &a1[v6]);
  a2[v7[6]] = a1[v7[6]];
  *&a2[v7[7]] = *&a1[v7[7]];
  v3 = v7[8];
  v4 = &a2[v3];
  *v4 = *&a1[v3];
  *(v4 + 8) = *&a1[v3 + 16];
  result = *&a1[v7[9]];
  *&a2[v7[9]] = result;
  return result;
}

uint64_t sub_1C549F22C@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for AppleAccountBirthdayPickerRow(0);
  v3 = (v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80)));

  return sub_1C549EB84(v3, a1);
}

uint64_t type metadata accessor for BirthdayPickerSheet(uint64_t a1)
{
  v2 = qword_1EC163D40;
  if (!qword_1EC163D40)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

unint64_t sub_1C549F314()
{
  v2 = qword_1EC15D328;
  if (!qword_1EC15D328)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15D288, &qword_1C55B1E00);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15D300, &unk_1C55B1E50);
    type metadata accessor for AppleAccountBirthdayPickerRow.RowDragGesture(255);
    sub_1C549E9BC();
    sub_1C549EA64();
    swift_getOpaqueTypeConformance2();
    sub_1C549F434();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D328);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C549F434()
{
  v2 = qword_1EC15D330;
  if (!qword_1EC15D330)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15D338, &qword_1C55B1E98);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D330);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C549F4BC()
{
  v2 = qword_1EC15D340;
  if (!qword_1EC15D340)
  {
    type metadata accessor for BirthdayPickerSheet(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D340);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C549F53C(uint64_t a1)
{
  sub_1C549F65C();
  type metadata accessor for AppleAccountBirthdayPickerRow(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D270, &qword_1C55B1DE8);
  sub_1C5595F84();

  v2 = (*(*v3 + 688))();
  sub_1C5596794();
  v2();
}

uint64_t sub_1C549F65C()
{
  v47 = 0;
  v22 = 0;
  v1 = sub_1C5594924();
  v20 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1, v2, v3, v4);
  v36 = &v20 - v20;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D278, &qword_1C55B1DF0);
  v21 = (*(*(v26 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v26, v5, v6, v7);
  v27 = &v20 - v21;
  v47 = v0;
  sub_1C549C738(&v20 - v21);
  v8 = v28;
  v31 = type metadata accessor for AppleAccountBirthdayPickerRow(v22);
  v9 = (v8 + *(v31 + 36));
  v23 = *v9;
  v24 = v9[1];

  v45 = v23;
  v46 = v24;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D270, &qword_1C55B1DE8);
  sub_1C5595F84();
  v10 = v44;
  v25 = v44;

  (*(*v10 + 232))(v11);

  sub_1C55960A4();
  v12 = v28;
  sub_1C549CF34(v27);
  v13 = (v12 + *(v31 + 36));
  v29 = *v13;
  v30 = v13[1];

  v42 = v29;
  v43 = v30;
  sub_1C5595F84();
  v14 = v28;
  v37 = v41;

  v15 = (v14 + *(v31 + 36));
  v33 = *v15;
  v34 = v15[1];

  v39 = v33;
  v40 = v34;
  sub_1C5595F84();
  v16 = v38;
  v35 = v38;

  (*(*v16 + 232))(v17);
  v18 = v37;

  (*(*v18 + 272))(v36);
}

uint64_t sub_1C549F954(uint64_t a1)
{
  sub_1C549FA74();
  type metadata accessor for AppleAccountBirthdayPickerRow(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D270, &qword_1C55B1DE8);
  sub_1C5595F84();

  v2 = (*(*v3 + 688))();
  sub_1C5596794();
  v2();
}

uint64_t sub_1C549FA74()
{
  v38 = MEMORY[0x1E69E85E0];
  v43 = &unk_1C55B1EA8;
  v52 = 0;
  v41 = 0;
  v29 = type metadata accessor for AppleAccountBirthdayPickerRow(0);
  v23 = *(v29 - 8);
  v35 = v23;
  v36 = *(v23 + 64);
  v24 = (v36 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v29, v1, v2, v3);
  v40 = &v23 - v24;
  v25 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E860, &qword_1C55AE2A0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v29, v4, v5, v6);
  v42 = &v23 - v25;
  v52 = v0;
  v8 = (v0 + *(v7 + 36));
  v26 = *v8;
  v27 = v8[1];

  v50 = v26;
  v51 = v27;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D270, &qword_1C55B1DE8);
  sub_1C5595F84();
  v9 = v49;
  v28 = v49;

  v10 = *(*v9 + 488);
  v33 = 1;
  v10(1);
  v11 = v34;

  v12 = &v11[*(v29 + 36)];
  v31 = *v12;
  v32 = *(v12 + 1);

  v47 = v31;
  v48 = v32;
  sub_1C5595F84();
  v45 = v46;

  v13 = sub_1C5596814();
  (*(*(v13 - 8) + 56))(v42, v33);
  sub_1C549EF2C(v34, v40);
  sub_1C55967E4();
  v14 = sub_1C55967D4();
  v15 = v45;
  v37 = v14;
  v39 = (*(v35 + 80) + 32) & ~*(v35 + 80);
  v16 = swift_allocObject();
  v17 = v38;
  v18 = v39;
  v19 = v16;
  v20 = v40;
  v44 = v19;
  *(v19 + 16) = v37;
  *(v19 + 24) = v17;
  sub_1C549F11C(v20, (v19 + v18));
  v21 = sub_1C54A6274(v41, v41, v42, v43, v44, MEMORY[0x1E69E7CA8] + 8);
  (*(*v15 + 440))(v21);
}

int *sub_1C549FDF4@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v27 = a7;
  v19 = a1;
  v30 = a2;
  v25 = a3;
  v26 = a4;
  v28 = a5;
  v29 = a6;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D318, &qword_1C55B1E60);
  v21 = *(v24 - 8);
  v22 = v24 - 8;
  v20 = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v19, v7, v8, v9);
  v23 = &v19 - v20;
  sub_1C54A0E74(v10);
  (*(v21 + 32))(v27, v23, v24);
  result = type metadata accessor for BirthdayPickerSheet(0);
  v12 = v25;
  v13 = v26;
  v14 = v27;
  v15 = v28;
  v16 = v29;
  *(v27 + result[5]) = v30;
  v17 = (v14 + result[6]);
  *v17 = v12;
  v17[1] = v13;
  v18 = (v14 + result[7]);
  *v18 = v15;
  v18[1] = v16;
  return result;
}

uint64_t sub_1C549FF24(uint64_t a1)
{
  v63 = a1;
  v85 = sub_1C54AF918;
  v88 = sub_1C54AF98C;
  v92 = sub_1C5473EFC;
  v94 = sub_1C545C6D4;
  v96 = sub_1C545C6D4;
  v99 = sub_1C5473FA4;
  v120 = 0;
  v119 = 0;
  v49 = 0;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D278, &qword_1C55B1DF0);
  v51 = (*(*(v50 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v50, v1, v2, v3);
  v52 = v40 - v51;
  v54 = 0;
  v74 = sub_1C5594C74();
  v72 = *(v74 - 8);
  v73 = v74 - 8;
  v53 = (*(v72 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v54, v4, v5, v6);
  v68 = v40 - v53;
  v84 = sub_1C5594924();
  v80 = *(v84 - 8);
  v81 = v84 - 8;
  v78 = v80;
  v79 = *(v80 + 64);
  v55 = (v79 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v54, v7, v8, v9);
  v83 = v40 - v55;
  v56 = (v79 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10, v40 - v55, v11, v12);
  v75 = v40 - v56;
  v120 = v40 - v56;
  v119 = v13;
  v62 = type metadata accessor for AppleAccountBirthdayPickerRow(v14);
  v15 = (v63 + *(v62 + 36));
  v57 = *v15;
  v58 = v15[1];

  v117 = v57;
  v118 = v58;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D270, &qword_1C55B1DE8);
  sub_1C5595F84();
  v16 = v116;
  v59 = v116;

  (*(*v16 + 632))(1);

  v17 = (v63 + *(v62 + 36));
  v60 = *v17;
  v61 = v17[1];

  v114 = v60;
  v115 = v61;
  sub_1C5595F84();
  v71 = v113;

  v18 = (v63 + *(v62 + 36));
  v65 = *v18;
  v66 = v18[1];

  v111 = v65;
  v112 = v66;
  sub_1C5595F84();
  v19 = v110;
  v67 = v110;

  (*(*v19 + 264))(v20);
  v21 = v71;

  (*(*v21 + 872))(v83);
  v22 = v68;
  v69 = *(v80 + 8);
  v70 = v80 + 8;
  v69(v83, v84);

  v23 = sub_1C54B05F8();
  (*(v72 + 16))(v22, v23, v74);
  v76 = *(v80 + 16);
  v77 = v80 + 16;
  v76(v83, v75, v84);
  v82 = (*(v78 + 80) + 16) & ~*(v78 + 80);
  v90 = 7;
  v86 = swift_allocObject();
  (*(v80 + 32))(v86 + v82, v83, v84);

  v89 = 32;
  v24 = swift_allocObject();
  v25 = v86;
  v91 = v24;
  *(v24 + 16) = v85;
  *(v24 + 24) = v25;

  v103 = sub_1C5594C54();
  v104 = sub_1C5596934();
  v87 = 17;
  v95 = swift_allocObject();
  *(v95 + 16) = 32;
  v97 = swift_allocObject();
  *(v97 + 16) = 8;
  v26 = swift_allocObject();
  v27 = v91;
  v93 = v26;
  *(v26 + 16) = v88;
  *(v26 + 24) = v27;
  v28 = swift_allocObject();
  v29 = v93;
  v100 = v28;
  *(v28 + 16) = v92;
  *(v28 + 24) = v29;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0, &qword_1C55ADF60);
  v98 = sub_1C5596E04();
  v101 = v30;

  v31 = v95;
  v32 = v101;
  *v101 = v94;
  v32[1] = v31;

  v33 = v97;
  v34 = v101;
  v101[2] = v96;
  v34[3] = v33;

  v35 = v100;
  v36 = v101;
  v101[4] = v99;
  v36[5] = v35;
  sub_1C540FCD8();

  if (os_log_type_enabled(v103, v104))
  {
    v37 = v49;
    v42 = sub_1C5596A74();
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940, qword_1C55ADF70);
    v43 = sub_1C5419DC0(0, v41, v41);
    v44 = sub_1C5419DC0(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v45 = &v109;
    v109 = v42;
    v46 = &v108;
    v108 = v43;
    v47 = &v107;
    v107 = v44;
    sub_1C5419E14(2, &v109);
    sub_1C5419E14(1, v45);
    v105 = v94;
    v106 = v95;
    sub_1C5419E28(&v105, v45, v46, v47);
    v48 = v37;
    if (v37)
    {

      __break(1u);
    }

    else
    {
      v105 = v96;
      v106 = v97;
      sub_1C5419E28(&v105, &v109, &v108, &v107);
      v40[0] = 0;
      v105 = v99;
      v106 = v100;
      sub_1C5419E28(&v105, &v109, &v108, &v107);
      _os_log_impl(&dword_1C5355000, v103, v104, "AppleAccountBirthdayPicker - Birthday changed to %s", v42, 0xCu);
      sub_1C5419E74(v43, 0, v41);
      sub_1C5419E74(v44, 1, MEMORY[0x1E69E7CA0] + 8);
      sub_1C5596A54();
    }
  }

  else
  {
  }

  v38 = MEMORY[0x1E69E5920](v103);
  (*(v72 + 8))(v68, v74, v38);
  sub_1C549C738(v52);
  v76(v83, v75, v84);
  sub_1C55960A4();
  sub_1C549CF34(v52);
  return (v69)(v75, v84);
}

uint64_t sub_1C54A0B98()
{
  v1 = *(type metadata accessor for AppleAccountBirthdayPickerRow(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1C549FF24(v2);
}

unint64_t sub_1C54A0C5C()
{
  v2 = qword_1EC15D348;
  if (!qword_1EC15D348)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15D2A8, &qword_1C55B1E20);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15D298, &qword_1C55B1E10);
    type metadata accessor for BirthdayPickerRowViewModel(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15D290, &qword_1C55B1E08);
    sub_1C5594924();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15D288, &qword_1C55B1E00);
    type metadata accessor for BirthdayPickerSheet(255);
    sub_1C549F314();
    sub_1C549F4BC();
    swift_getOpaqueTypeConformance2();
    sub_1C54290E8();
    swift_getOpaqueTypeConformance2();
    sub_1C5429194();
    swift_getOpaqueTypeConformance2();
    sub_1C5430A44();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D348);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C54A0E74(uint64_t a1)
{
  type metadata accessor for BirthdayPickerRowViewModel(0);
  sub_1C5429194();
  return sub_1C55961D4();
}

uint64_t sub_1C54A0EC4()
{
  v12 = 0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D318, &qword_1C55B1E60);
  v6 = *(v9 - 8);
  v7 = v9 - 8;
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x1EEE9AC00](v9, v4[1], v9, v0);
  v8 = v4 - v5;
  v12 = v2;
  (*(v6 + 16))(v4 - v5, v1);
  sub_1C55961A4();
  v10 = v11;
  (*(v6 + 8))(v8, v9);
  return v10;
}

uint64_t sub_1C54A0FDC(uint64_t a1)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D318, &qword_1C55B1E60);
  sub_1C55961B4();
}

void (*sub_1C54A1050(void *a1))(void **a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL, 31398);
  *a1 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D318, &qword_1C55B1E60);
  v2[4] = sub_1C5596194();
  return sub_1C54A10E4;
}

void sub_1C54A10E4(void **a1)
{
  v1 = *a1;
  v1[4](v1, 0);
  free(v1);
}

uint64_t sub_1C54A1160@<X0>(uint64_t a1@<X8>)
{
  v7 = a1;
  v12 = 0;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D318, &qword_1C55B1E60);
  v8 = *(v11 - 8);
  v9 = v11 - 8;
  v6 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v11, v5, v11, v1);
  v10 = &v5 - v6;
  v12 = v3;
  (*(v8 + 16))(&v5 - v6, v2);
  sub_1C55961C4();
  return (*(v8 + 8))(v10, v11);
}

uint64_t sub_1C54A12DC(uint64_t a1)
{
  v11 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D318, &qword_1C55B1E60);
  v8 = *(v10 - 8);
  v9 = v10 - 8;
  v5 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v10, v11, v10, v1);
  v6 = &v4 - v5;
  (*(v8 + 16))(v2);
  (*(v8 + 40))(v7, v6, v10);
  return (*(v8 + 8))(v11, v10);
}

uint64_t sub_1C54A13FC@<X0>(uint64_t a1@<X8>)
{
  v38 = a1;
  v26 = sub_1C54A9D34;
  v39 = sub_1C54A9EAC;
  v45 = 0;
  v16 = 0;
  v14 = *(type metadata accessor for AppleAccountBirthdayPickerRow.RowDragGesture(0) - 8);
  v23 = v14;
  v34 = *(v14 + 64);
  v15 = (v34 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0, v1, v2, v3);
  v37 = &v14 - v15;
  v21 = sub_1C55954F4();
  v17 = (*(*(v21 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v16, v4, v5, v6);
  v20 = &v14 - v17;
  v31 = sub_1C5594FF4();
  v28 = *(v31 - 8);
  v29 = v31 - 8;
  v18 = (*(v28 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v31, v7, v8, v9);
  v30 = &v14 - v18;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D350, &unk_1C55B1EB0);
  v41 = *(v44 - 8);
  v42 = v44 - 8;
  v19 = (*(v41 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v21, v10, v11, v12);
  v43 = &v14 - v19;
  v45 = v32;
  v22 = MEMORY[0x1E697FA08];
  sub_1C54A17CC();
  sub_1C5594FD4();
  sub_1C54A9C54(v32, v37);
  v33 = *(v23 + 80);
  v24 = (v33 + 16) & ~v33;
  v35 = 7;
  v27 = swift_allocObject();
  sub_1C54A9CC4(v37, v27 + v24);
  v25 = sub_1C54A9DAC();
  sub_1C54A9E2C();
  sub_1C5596144();

  (*(v28 + 8))(v30, v31);
  sub_1C54A9C54(v32, v37);
  v36 = (v33 + 16) & ~v33;
  v40 = swift_allocObject();
  sub_1C54A9CC4(v37, v40 + v36);
  sub_1C54A9F24();
  sub_1C5596134();

  return (*(v41 + 8))(v43, v44);
}

uint64_t sub_1C54A17F0()
{
  v2 = sub_1C54A0EC4();
  v3 = (*(*v2 + 576))(v2);

  result = v3;
  if ((v3 & 1) == 0)
  {
    v1 = sub_1C54A0EC4();
    (*(*v1 + 584))(1);
  }

  return result;
}

uint64_t sub_1C54A18E0()
{
  v1 = sub_1C54A0EC4();
  (*(*v1 + 584))(0);

  v3 = sub_1C54A0EC4();
  v2 = (*(*v3 + 688))();
  sub_1C5596794();
  v2();
}

uint64_t sub_1C54A1A1C(uint64_t a1, uint64_t a2)
{
  sub_1C5596E04();
  *v2 = "id";
  *(v2 + 8) = 2;
  *(v2 + 16) = 2;
  *(v2 + 24) = "disabled";
  *(v2 + 32) = 8;
  *(v2 + 40) = 2;
  *(v2 + 48) = "value";
  *(v2 + 56) = 5;
  *(v2 + 64) = 2;
  *(v2 + 72) = "maxValue";
  *(v2 + 80) = 8;
  *(v2 + 88) = 2;
  *(v2 + 96) = "label";
  *(v2 + 104) = 5;
  *(v2 + 112) = 2;
  sub_1C540FCD8();
  v6 = sub_1C5596D64();

  switch(v6)
  {
    case 0:
      v5 = 0;
LABEL_12:

      return v5;
    case 1:
      v5 = 1;
      goto LABEL_12;
    case 2:
      v5 = 2;
      goto LABEL_12;
    case 3:
      v5 = 3;
      goto LABEL_12;
    case 4:
      v5 = 4;
      goto LABEL_12;
  }

  return 5;
}

uint64_t sub_1C54A1C28(uint64_t a1, uint64_t a2)
{
  sub_1C5594CF4();
  v6 = sub_1C54A1A1C(a1, a2);

  if (v6 == 5)
  {
    return 5;
  }

  else
  {
    return v6;
  }
}

uint64_t sub_1C54A1CD8(char a1)
{
  switch(a1)
  {
    case 0:
      return sub_1C55965F4("id", 2, 1);
    case 1:
      return sub_1C55965F4("disabled", 8, 1);
    case 2:
      return sub_1C55965F4("value", 5, 1);
    case 3:
      return sub_1C55965F4("maxValue", 8, 1);
  }

  return sub_1C55965F4("label", 5, 1);
}

uint64_t sub_1C54A1F60@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C54A1A1C(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1C54A1F98@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C54A1CD8(*v1);
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C54A1FE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C54A1C28(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C54A2014@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C54A1CC0();
  *a1 = result;
  return result;
}

uint64_t sub_1C54A20A0@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v171 = a2;
  v218 = a1;
  v247 = 0;
  v246 = 0;
  v245 = 0;
  v244 = 0;
  v243 = 0;
  v235 = 0;
  v232 = 0;
  v233 = 0;
  v231 = 0;
  v228 = 0;
  v229 = 0;
  v225 = 0;
  v226 = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E370, &qword_1C55AE070);
  v172 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2, v3, v4, v5);
  v173 = &v95 - v172;
  v174 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v95 - v172, v7, v8, v9);
  v175 = &v95 - v174;
  v211 = 0;
  v176 = sub_1C5594924();
  v177 = *(v176 - 8);
  v178 = v176 - 8;
  v179 = (*(v177 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v211, v10, v11, v12);
  v180 = &v95 - v179;
  v181 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v14, &v95 - v179, v15, v16);
  v182 = &v95 - v181;
  v247 = &v95 - v181;
  v183 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v18, v19, v20, v21);
  v184 = &v95 - v183;
  v185 = (v22 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v23, &v95 - v183, v24, v25);
  v186 = &v95 - v185;
  v246 = &v95 - v185;
  v187 = sub_1C55949D4();
  v188 = *(v187 - 8);
  v189 = v187 - 8;
  v190 = (*(v188 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v211, v26, v27, v28);
  v191 = &v95 - v190;
  v192 = sub_1C5594A74();
  v193 = *(v192 - 8);
  v194 = v192 - 8;
  v195 = (*(v193 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v211, v29, v30, v31);
  v196 = &v95 - v195;
  v197 = sub_1C55962E4();
  v198 = *(v197 - 8);
  v199 = v197 - 8;
  v200 = (*(v198 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v211, v32, v33, v34);
  v201 = &v95 - v200;
  v202 = sub_1C5596384();
  v203 = *(v202 - 8);
  v204 = v202 - 8;
  v205 = (*(v203 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v202, v35, v36, v37);
  v206 = &v95 - v205;
  v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D380, &qword_1C55B1EC0);
  v208 = *(v207 - 8);
  v209 = v207 - 8;
  v210 = (*(v208 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v211, v38, v39, v40);
  v219 = &v95 - v210;
  v245 = &v95 - v210;
  v215 = type metadata accessor for AppleAccountBirthdayPickerRow(v41);
  v212 = (*(*(v215 - 1) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v211, v42, v43, v44);
  v216 = &v95 - v212;
  v244 = &v95 - v212;
  v243 = v218;
  v214 = *(v45 + 28);
  v213 = sub_1C55963A4();
  sub_1C549BD98();
  v46 = sub_1C55952A4();
  v47 = v215;
  v48 = &v216[v214];
  *v48 = v46;
  *(v48 + 1) = v49;
  v217 = v47[8];
  swift_getKeyPath();
  sub_1C5595024();
  v50 = v218;
  v51 = v240;
  v52 = v241;
  v53 = v242;
  v54 = &v216[v217];
  *v54 = v239;
  *(v54 + 1) = v51;
  v54[16] = v52;
  v54[17] = v53 & 1;
  v221 = v50[3];
  v222 = v50[4];
  __swift_project_boxed_opaque_existential_0(v50, v221);
  sub_1C54AA028();
  v55 = v220;
  sub_1C5596F24();
  v223 = v55;
  v224 = v55;
  if (v55)
  {
    v136 = v224;
    v137 = 24;
    goto LABEL_27;
  }

  v166 = v218[3];
  v165 = v218[4];
  __swift_project_boxed_opaque_existential_0(v218, v166);
  v56 = v223;
  v57 = sub_1C5596F04();
  v167 = v56;
  v168 = v57;
  v169 = v58;
  v170 = v56;
  if (v56)
  {
    v100 = v170;
    (*(v208 + 8))(v219, v207);
    v136 = v100;
    v137 = 24;
    goto LABEL_27;
  }

  v59 = v216;
  v60 = v169;
  *v216 = v168;
  *(v59 + 1) = v60;
  v238 = 1;
  v61 = sub_1C5596D84();
  v162 = 0;
  v163 = v61;
  v164 = 0;
  v237 = v61;
  if (v61 == 2)
  {
    v161 = 0;
  }

  else
  {
    v161 = v237;
  }

  v62 = v218;
  v216[v215[6]] = v161 & 1;
  v158 = v236;
  sub_1C5432498(v62, v236);
  v63 = v162;
  sub_1C5596374();
  v159 = v63;
  v160 = v63;
  if (v63)
  {
    v99 = v160;
    (*(v208 + 8))(v219, v207);
    v136 = v99;
    v137 = 25;
    goto LABEL_27;
  }

  (*(v203 + 32))(&v216[v215[5]], v206, v202);
  v151 = v218[3];
  v150 = v218[4];
  __swift_project_boxed_opaque_existential_0(v218, v151);
  sub_1C5596F14();
  v152 = sub_1C55962D4();
  (*(v198 + 8))(v201, v197);
  v153 = RUIDecodingUserInfo.account.getter();
  v235 = v153;
  MEMORY[0x1E69E5920](v152);
  v64 = v159;
  v234 = 2;
  v65 = sub_1C5596D94();
  v154 = v64;
  v155 = v65;
  v156 = v66;
  v157 = v64;
  if (v64)
  {
    v98 = v157;
    v93 = MEMORY[0x1E69E5920](v153);
    (*(v208 + 8))(v219, v207, v93);
    v136 = v98;
    v137 = 27;
    goto LABEL_27;
  }

  v146 = v156;
  v145 = v155;
  v232 = v155;
  v233 = v156;
  sub_1C5429F54();
  v147 = sub_1C5404B48();
  v231 = v147;
  sub_1C55965F4("yyyy-MM-dd", 10, 1);
  v142 = v67;
  v143 = sub_1C5596554();

  [v147 setDateFormat_];
  v68 = MEMORY[0x1E69E5920](v143);
  (*(v188 + 104))(v191, *MEMORY[0x1E6969868], v187, v68);
  sub_1C55949E4();
  (*(v188 + 8))(v191, v187);
  v144 = sub_1C5594A14();
  (*(v193 + 8))(v196, v192);
  [v147 setCalendar_];
  MEMORY[0x1E69E5920](v144);
  sub_1C5594CF4();
  v148 = sub_1C5596554();

  v149 = [v147 dateFromString_];
  v69 = MEMORY[0x1E69E5920](v148);
  if (v149)
  {
    v141 = v149;
    v140 = v149;
    sub_1C5594904();
    (*(v177 + 32))(v175, v184, v176);
    (*(v177 + 56))(v175, 0, 1, v176);
    v70 = MEMORY[0x1E69E5920](v140);
  }

  else
  {
    (*(v177 + 56))(v175, 1, 1, v176, v69);
  }

  v138 = *(v177 + 48);
  v139 = v177 + 48;
  if (v138(v175, 1, v176, v70) == 1)
  {
    sub_1C541A9D8(v175);
    v130 = 0;
    v134 = sub_1C5596BD4();
    v129 = 1;
    v135 = swift_allocError();
    v133 = v71;
    v128 = v218[3];
    v127 = v218[4];
    __swift_project_boxed_opaque_existential_0(v218, v128);
    v131 = sub_1C5596EF4();
    v132 = sub_1C55965F4("Failed to decode date from value.", 33, v129 & 1);
    sub_1C5596BC4();
    (*(*(v134 - 8) + 104))(v133, *MEMORY[0x1E69E6B00]);
    swift_willThrow();
    MEMORY[0x1E69E5920](v147);

    v72 = MEMORY[0x1E69E5920](v153);
    (*(v208 + 8))(v219, v207, v72);
    v136 = v135;
    v137 = 27;
LABEL_27:
    v96 = v137;
    v95 = v136;
    __swift_destroy_boxed_opaque_existential_0(v218);
    if (v96)
    {
      sub_1C5401ECC(v216);
    }

    if ((v96 & 2) != 0)
    {
      (*(v203 + 8))(&v216[v215[5]], v202);
    }

    sub_1C5410D10(&v216[v215[7]]);
    return sub_1C54AA0A4(&v216[v215[8]]);
  }

  v121 = *(v177 + 32);
  v122 = v177 + 32;
  v121(v186, v175, v176);
  v73 = v154;
  v230 = 3;
  v74 = sub_1C5596D94();
  v123 = v73;
  v124 = v74;
  v125 = v75;
  v126 = v73;
  if (v73)
  {
    v97 = v126;
    (*(v177 + 8))(v186, v176);
    MEMORY[0x1E69E5920](v147);

    v94 = MEMORY[0x1E69E5920](v153);
    (*(v208 + 8))(v219, v207, v94);
    v136 = v97;
    v137 = 27;
    goto LABEL_27;
  }

  v115 = v125;
  v116 = v124;
  v228 = v124;
  v229 = v125;
  v227 = 4;
  v76 = sub_1C5596D94();
  v117 = 0;
  v118 = v76;
  v119 = v77;
  v120 = 0;
  v111 = v77;
  v112 = v76;
  v225 = v76;
  v226 = v77;
  sub_1C5594CF4();
  v113 = sub_1C5596554();

  v114 = [v147 dateFromString_];
  v78 = MEMORY[0x1E69E5920](v113);
  if (v114)
  {
    v110 = v114;
    v109 = v114;
    sub_1C5594904();
    v121(v173, v184, v176);
    (*(v177 + 56))(v173, 0, 1, v176);
    v79 = MEMORY[0x1E69E5920](v109);
  }

  else
  {
    (*(v177 + 56))(v173, 1, 1, v176, v78);
  }

  if (v138(v173, 1, v176, v79) == 1)
  {
    sub_1C5594914();
    if ((v138)(v173, 1, v176) != 1)
    {
      sub_1C541A9D8(v173);
    }
  }

  else
  {
    v121(v182, v173, v176);
  }

  v103 = 0;
  v104 = type metadata accessor for BirthdayPickerRowViewModel(0);
  v102 = *(v177 + 16);
  v101 = v177 + 16;
  v102(v184, v186, v176);
  v102(v180, v182, v176);
  sub_1C5594CF4();
  type metadata accessor for PendingBirthdayModel(v103);
  MEMORY[0x1E69E5928](v153, v80);
  v105 = sub_1C551D1B8(v153);
  v81 = sub_1C5422DF0();
  v82 = sub_1C5422E1C(v184, v180, v112, v111, v105, v81);
  v106 = &v216[v215[9]];
  v83 = sub_1C549C3D4(v82);
  v84 = v106;
  v85 = v177;
  v86 = v83;
  v87 = v182;
  v89 = v88;
  v90 = v176;
  *v106 = v86;
  *(v84 + 1) = v89;
  v108 = *(v85 + 8);
  v107 = v85 + 8;
  v108(v87, v90);

  v108(v186, v176);
  MEMORY[0x1E69E5920](v147);

  v91 = MEMORY[0x1E69E5920](v153);
  (*(v208 + 8))(v219, v207, v91);
  sub_1C549EF2C(v216, v171);
  __swift_destroy_boxed_opaque_existential_0(v218);
  return sub_1C54AA0E4(v216);
}

uint64_t sub_1C54A3BC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[20] = a4;
  v4[12] = v4;
  v4[13] = 0;
  v4[15] = 0;
  v5 = type metadata accessor for AppleAccountBirthdayPickerRow(0);
  v4[21] = v5;
  v11 = *(v5 - 8);
  v4[22] = v11;
  v4[23] = *(v11 + 64);
  v4[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E860, &qword_1C55AE2A0);
  v4[25] = swift_task_alloc();
  v6 = sub_1C5596384();
  v4[26] = v6;
  v4[27] = *(v6 - 8);
  v4[28] = swift_task_alloc();
  v7 = sub_1C5594C74();
  v4[29] = v7;
  v4[30] = *(v7 - 8);
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();
  v4[34] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D278, &qword_1C55B1DF0);
  v4[35] = swift_task_alloc();
  v8 = sub_1C5594924();
  v4[36] = v8;
  v12 = *(v8 - 8);
  v4[37] = v12;
  v4[38] = *(v12 + 64);
  v4[39] = swift_task_alloc();
  v4[40] = swift_task_alloc();
  v4[13] = a4;
  v4[41] = sub_1C55967E4();
  v4[42] = sub_1C55967D4();
  v4[43] = sub_1C55967A4();
  v4[44] = v9;

  return MEMORY[0x1EEE6DFA0](sub_1C54A3F1C);
}

uint64_t sub_1C54A3F1C()
{
  v56 = v0;
  v37 = *(v0 + 320);
  v40 = *(v0 + 312);
  v38 = *(v0 + 296);
  v41 = *(v0 + 288);
  v34 = *(v0 + 280);
  v32 = *(v0 + 272);
  v33 = *(v0 + 264);
  v35 = *(v0 + 240);
  v36 = *(v0 + 232);
  v1 = *(v0 + 168);
  v2 = *(v0 + 160);
  *(v0 + 96) = v0;
  v3 = (v2 + *(v1 + 36));
  v30 = *v3;
  v31 = v3[1];

  *(v0 + 16) = v30;
  *(v0 + 24) = v31;
  *(v0 + 360) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D270, &qword_1C55B1DE8);
  sub_1C5595F84();
  v4 = *(v0 + 112);

  (*(*v4 + 536))(0);

  sub_1C549C738(v34);
  MEMORY[0x1C6946C30](v32);
  sub_1C549CF34(v34);
  v5 = sub_1C54B05F8();
  v6 = *(v35 + 16);
  *(v0 + 368) = v6;
  *(v0 + 376) = (v35 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v33, v5, v36);
  v7 = *(v38 + 16);
  *(v0 + 384) = v7;
  *(v0 + 392) = (v38 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v40, v37, v41);
  v8 = *(v38 + 80);
  *(v0 + 456) = v8;
  v39 = (v8 + 16) & ~v8;
  v42 = swift_allocObject();
  v9 = *(v38 + 32);
  *(v0 + 400) = v9;
  *(v0 + 408) = (v38 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v9(v42 + v39, v40, v41);

  v43 = swift_allocObject();
  *(v43 + 16) = sub_1C54AF918;
  *(v43 + 24) = v42;

  v49 = sub_1C5594C54();
  v50 = sub_1C5596934();
  v45 = swift_allocObject();
  *(v45 + 16) = 32;
  v46 = swift_allocObject();
  *(v46 + 16) = 8;
  v44 = swift_allocObject();
  *(v44 + 16) = sub_1C54AF98C;
  *(v44 + 24) = v43;
  v47 = swift_allocObject();
  *(v47 + 16) = sub_1C5473EFC;
  *(v47 + 24) = v44;
  *(v0 + 416) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0, &qword_1C55ADF60);
  sub_1C5596E04();
  v48 = v10;

  *v48 = sub_1C545C6D4;
  v48[1] = v45;

  v48[2] = sub_1C545C6D4;
  v48[3] = v46;

  v48[4] = sub_1C5473FA4;
  v48[5] = v47;
  sub_1C540FCD8();

  if (os_log_type_enabled(v49, v50))
  {
    buf = sub_1C5596A74();
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940, qword_1C55ADF70);
    v27 = sub_1C5419DC0(0, v25, v25);
    v28 = sub_1C5419DC0(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v51 = buf;
    v52 = v27;
    v53 = v28;
    sub_1C5419E14(2, &v51);
    sub_1C5419E14(1, &v51);
    v54 = sub_1C545C6D4;
    v55 = v45;
    sub_1C5419E28(&v54, &v51, &v52, &v53);
    v54 = sub_1C545C6D4;
    v55 = v46;
    sub_1C5419E28(&v54, &v51, &v52, &v53);
    v54 = sub_1C5473FA4;
    v55 = v47;
    sub_1C5419E28(&v54, &v51, &v52, &v53);
    _os_log_impl(&dword_1C5355000, v49, v50, "AppleAccountBirthdayPicker - Posting birthday %s", buf, 0xCu);
    sub_1C5419E74(v27, 0, v25);
    sub_1C5419E74(v28, 1, MEMORY[0x1E69E7CA0] + 8);
    sub_1C5596A54();
  }

  else
  {
  }

  v18 = v29[33];
  v19 = v29[29];
  v23 = v29[28];
  v24 = v29[26];
  v20 = v29[21];
  v21 = v29[20];
  v17 = v29[30];
  v22 = v29[27];
  v11 = MEMORY[0x1E69E5920](v49);
  v12 = *(v17 + 8);
  v29[53] = v12;
  v29[54] = (v17 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v12(v18, v19, v11);
  (*(v22 + 16))(v23, v21 + *(v20 + 20), v24);
  v13 = swift_task_alloc();
  v29[55] = v13;
  *v13 = v29[12];
  v13[1] = sub_1C54A4778;
  v14 = v29[26];
  v15 = MEMORY[0x1E69C7000];

  return MEMORY[0x1EEE321B0](v14, v15);
}

uint64_t sub_1C54A4778()
{
  v4 = *v1;
  v4[12] = *v1;
  v4[56] = v0;

  if (v0)
  {
    v2 = sub_1C54A52E0;
  }

  else
  {
    (*(v4[27] + 8))(v4[28], v4[26]);
    v2 = sub_1C54A4910;
  }

  return MEMORY[0x1EEE6DFA0](v2);
}

uint64_t sub_1C54A4910()
{
  v59 = v0;
  v25 = MEMORY[0x1E69E85E0];
  v44 = *(v0 + 400);
  v41 = *(v0 + 456);
  v40 = *(v0 + 384);
  v38 = *(v0 + 368);
  v39 = *(v0 + 320);
  v42 = *(v0 + 312);
  v43 = *(v0 + 288);
  v36 = *(v0 + 256);
  v37 = *(v0 + 232);
  v28 = *(v0 + 200);
  v27 = *(v0 + 192);
  v23 = *(v0 + 176);
  v32 = *(v0 + 168);
  v33 = *(v0 + 160);
  *(v0 + 96) = v0;
  v1 = sub_1C5596814();
  (*(*(v1 - 8) + 56))(v28, 1);
  sub_1C549EF2C(v33, v27);
  v24 = sub_1C55967D4();
  v26 = (*(v23 + 80) + 32) & ~*(v23 + 80);
  v29 = swift_allocObject();
  *(v29 + 16) = v24;
  *(v29 + 24) = v25;
  sub_1C549F11C(v27, (v29 + v26));
  sub_1C54061EC(0, 0, v28, &unk_1C55B2628, v29, MEMORY[0x1E69E7CA8] + 8);

  v2 = *(v32 + 36);
  v30 = *&v33[v2];
  v31 = *&v33[v2 + 8];

  *(v0 + 64) = v30;
  *(v0 + 72) = v31;
  sub_1C5595F84();
  v3 = *(v0 + 144);

  (*(*v3 + 536))(1);

  v4 = *(v32 + 36);
  v34 = *&v33[v4];
  v35 = *&v33[v4 + 8];

  *(v0 + 80) = v34;
  *(v0 + 88) = v35;
  sub_1C5595F84();
  v5 = *(v0 + 152);

  (*(*v5 + 488))(0);

  v6 = sub_1C54B05F8();
  v38(v36, v6, v37);
  v40(v42, v39, v43);
  v45 = swift_allocObject();
  v44(v45 + ((v41 + 16) & ~v41), v42, v43);

  v46 = swift_allocObject();
  *(v46 + 16) = sub_1C54AF918;
  *(v46 + 24) = v45;

  v52 = sub_1C5594C54();
  v53 = sub_1C5596934();
  v48 = swift_allocObject();
  *(v48 + 16) = 32;
  v49 = swift_allocObject();
  *(v49 + 16) = 8;
  v47 = swift_allocObject();
  *(v47 + 16) = sub_1C54AF98C;
  *(v47 + 24) = v46;
  v50 = swift_allocObject();
  *(v50 + 16) = sub_1C5473EFC;
  *(v50 + 24) = v47;
  sub_1C5596E04();
  v51 = v7;

  *v51 = sub_1C545C6D4;
  v51[1] = v48;

  v51[2] = sub_1C545C6D4;
  v51[3] = v49;

  v51[4] = sub_1C5473FA4;
  v51[5] = v50;
  sub_1C540FCD8();

  if (os_log_type_enabled(v52, v53))
  {
    v8 = v22[56];
    buf = sub_1C5596A74();
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940, qword_1C55ADF70);
    v20 = sub_1C5419DC0(0, v18, v18);
    v21 = sub_1C5419DC0(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v54 = buf;
    v55 = v20;
    v56 = v21;
    sub_1C5419E14(2, &v54);
    sub_1C5419E14(1, &v54);
    v57 = sub_1C545C6D4;
    v58 = v48;
    sub_1C5419E28(&v57, &v54, &v55, &v56);
    if (v8)
    {
    }

    v57 = sub_1C545C6D4;
    v58 = v49;
    sub_1C5419E28(&v57, &v54, &v55, &v56);
    v57 = sub_1C5473FA4;
    v58 = v50;
    sub_1C5419E28(&v57, &v54, &v55, &v56);
    _os_log_impl(&dword_1C5355000, v52, v53, "AppleAccountBirthdayPicker - Posted birthday %s", buf, 0xCu);
    sub_1C5419E74(v20, 0, v18);
    sub_1C5419E74(v21, 1, MEMORY[0x1E69E7CA0] + 8);
    sub_1C5596A54();
  }

  else
  {
  }

  v14 = v22[53];
  v16 = v22[40];
  v17 = v22[36];
  v12 = v22[32];
  v13 = v22[29];
  v15 = v22[37];
  v10 = MEMORY[0x1E69E5920](v52);
  v14(v12, v13, v10);
  (*(v15 + 8))(v16, v17);

  v11 = *(v22[12] + 8);

  return v11();
}

uint64_t sub_1C54A52E0()
{
  v51 = v0;
  v36 = v0[56];
  v35 = v0[46];
  v25 = v0[40];
  v24 = v0[37];
  v26 = v0[36];
  v33 = v0[31];
  v34 = v0[29];
  v1 = v0[28];
  v2 = v0[27];
  v3 = v0[26];
  v29 = v0[21];
  v30 = v0[20];
  v0[12] = v0;
  (*(v2 + 8))(v1, v3);
  (*(v24 + 8))(v25, v26);
  v4 = v36;
  v0[15] = v36;
  v5 = (v30 + *(v29 + 36));
  v27 = *v5;
  v28 = v5[1];

  v0[4] = v27;
  v0[5] = v28;
  sub_1C5595F84();
  v6 = v0[16];

  (*(*v6 + 488))(0);

  v7 = *(v29 + 36);
  v31 = *(v30 + v7);
  v32 = *(v30 + v7 + 8);

  v0[6] = v31;
  v0[7] = v32;
  sub_1C5595F84();
  v8 = v0[17];

  (*(*v8 + 536))(1);

  v9 = sub_1C54B05F8();
  v35(v33, v9, v34);
  v10 = v36;
  v37 = swift_allocObject();
  *(v37 + 16) = v36;
  sub_1C54398B0();

  v44 = sub_1C5594C54();
  v45 = sub_1C5596954();
  v40 = swift_allocObject();
  *(v40 + 16) = 64;
  v41 = swift_allocObject();
  *(v41 + 16) = 8;
  v38 = swift_allocObject();
  *(v38 + 16) = sub_1C5467F9C;
  *(v38 + 24) = v37;
  v39 = swift_allocObject();
  *(v39 + 16) = sub_1C5467FA4;
  *(v39 + 24) = v38;
  v42 = swift_allocObject();
  *(v42 + 16) = sub_1C545C6DC;
  *(v42 + 24) = v39;
  sub_1C5596E04();
  v43 = v11;

  *v43 = sub_1C545C6D4;
  v43[1] = v40;

  v43[2] = sub_1C545C6D4;
  v43[3] = v41;

  v43[4] = sub_1C545C6E8;
  v43[5] = v42;
  sub_1C540FCD8();

  if (os_log_type_enabled(v44, v45))
  {
    buf = sub_1C5596A74();
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940, qword_1C55ADF70);
    v21 = sub_1C5419DC0(1, v19, v19);
    v22 = sub_1C5419DC0(0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v46 = buf;
    v47 = v21;
    v48 = v22;
    sub_1C5419E14(2, &v46);
    sub_1C5419E14(1, &v46);
    v49 = sub_1C545C6D4;
    v50 = v40;
    sub_1C5419E28(&v49, &v46, &v47, &v48);
    v49 = sub_1C545C6D4;
    v50 = v41;
    sub_1C5419E28(&v49, &v46, &v47, &v48);
    v49 = sub_1C545C6E8;
    v50 = v42;
    sub_1C5419E28(&v49, &v46, &v47, &v48);
    _os_log_impl(&dword_1C5355000, v44, v45, "AppleAccountBirthdayPicker - Failed to post updated birthday with error: %@", buf, 0xCu);
    sub_1C5419E74(v21, 1, v19);
    sub_1C5419E74(v22, 0, MEMORY[0x1E69E7CA0] + 8);
    sub_1C5596A54();
  }

  else
  {
  }

  v18 = v23[56];
  v17 = v23[53];
  v15 = v23[31];
  v16 = v23[29];
  v12 = MEMORY[0x1E69E5920](v44);
  v17(v15, v16, v12);
  sub_1C549F65C();

  v13 = *(v23[12] + 8);

  return v13();
}

uint64_t sub_1C54A5B98(uint64_t a1)
{
  v6 = v2;
  *(v2 + 16) = v2;
  v3 = *(type metadata accessor for AppleAccountBirthdayPickerRow(0) - 8);
  v9 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_1C5405B1C;

  return sub_1C54A3BC8(a1, v7, v8, v1 + v9);
}

uint64_t sub_1C54A5CAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a4;
  v4[6] = v4;
  v4[7] = 0;
  v5 = sub_1C5594924();
  v4[11] = v5;
  v4[12] = *(v5 - 8);
  v4[13] = swift_task_alloc();
  v4[7] = a4;
  sub_1C55967E4();
  v4[14] = sub_1C55967D4();
  v4[15] = sub_1C55967A4();
  v4[16] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1C54A5DE4);
}

uint64_t sub_1C54A5DE4()
{
  v12 = v0[10];
  v0[6] = v0;
  v11 = type metadata accessor for AppleAccountBirthdayPickerRow(0);
  v1 = *(v11 + 36);
  v9 = *(v12 + v1);
  v10 = *(v12 + v1 + 8);

  v0[2] = v9;
  v0[3] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D270, &qword_1C55B1DE8);
  sub_1C5595F84();
  v2 = v0[8];

  (*(*v2 + 264))(v3);

  v4 = (v12 + *(v11 + 36));
  v13 = *v4;
  v14 = v4[1];

  v0[4] = v13;
  v0[5] = v14;
  sub_1C5595F84();
  v5 = v0[9];
  v0[17] = v5;

  v16 = (*(*v5 + 880) + **(*v5 + 880));
  v6 = swift_task_alloc();
  v15[18] = v6;
  *v6 = v15[6];
  v6[1] = sub_1C54A6054;
  v7 = v15[13];

  return v16(v7);
}

uint64_t sub_1C54A6054()
{
  *(*v0 + 48) = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1C54A61B4);
}

uint64_t sub_1C54A61B4()
{
  v1 = *(v0 + 96);
  *(v0 + 48) = v0;
  (*(v1 + 8))();

  v2 = *(*(v0 + 48) + 8);

  return v2();
}

uint64_t sub_1C54A6274(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v42 = a1;
  v43 = a2;
  v50 = a3;
  v51 = a4;
  v52 = a5;
  v44 = a6;
  v45 = "Fatal error";
  v46 = "Unexpectedly found nil while unwrapping an Optional value";
  v47 = "_Concurrency/arm64e-apple-ios.private.swiftinterface";
  v48 = 0;
  v61 = a6;
  v49 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E860, &qword_1C55AE2A0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v52, v6, v7, v8);
  v53 = &v12 - v49;

  v59 = v51;
  v60 = v52;
  sub_1C5408B78(v50, v53);
  v54 = sub_1C5596814();
  v55 = *(v54 - 8);
  v56 = v54 - 8;
  if ((*(v55 + 48))(v53, 1) == 1)
  {
    sub_1C5408CA0(v53);
    v41 = 0;
  }

  else
  {
    v40 = sub_1C5596804();
    (*(v55 + 8))(v53, v54);
    v41 = v40;
  }

  v37 = v41 | 0x1C00;
  v39 = *(v52 + 16);
  v38 = *(v52 + 24);
  swift_unknownObjectRetain();

  if (v39)
  {
    v35 = v39;
    v36 = v38;
    v29 = v38;
    v30 = v39;
    swift_getObjectType();
    v31 = sub_1C55967A4();
    v32 = v9;
    swift_unknownObjectRelease();
    v33 = v31;
    v34 = v32;
  }

  else
  {
    v33 = 0;
    v34 = 0;
  }

  v27 = v34;
  v28 = v33;
  sub_1C5594CF4();
  if (v43)
  {
    v25 = v42;
    v26 = v43;
    v10 = v48;
    v22 = v43;
    v23 = sub_1C55965C4();

    sub_1C54AEA1C(v23 + 32, &v57);
    if (v10)
    {
      __break(1u);
    }

    v21 = v57;

    v24 = v21;
  }

  else
  {
    v24 = 0;
  }

  v20 = v24;
  if (v24)
  {
    v15 = v20;
    v14 = v20;
    sub_1C5408CA0(v50);

    v16 = v14;
  }

  else
  {

    sub_1C5408CA0(v50);
    v17 = v59;
    v18 = v60;

    v19 = 0;
    if (v28 != 0 || v27 != 0)
    {
      v58[0] = 0;
      v58[1] = 0;
      v58[2] = v28;
      v58[3] = v27;
      v19 = v58;
    }

    v16 = swift_task_create();
  }

  v13 = v16;

  return v13;
}

uint64_t sub_1C54A67DC(uint64_t a1)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D388, &qword_1C55B1EC8);
  sub_1C5595004();

  return v2;
}

uint64_t sub_1C54A68E4(uint64_t a1, char a2)
{

  *v2 = a1;
  *(v2 + 8) = a2 & 1;
}

uint64_t sub_1C54A6994@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v24 = a3;
  v19 = sub_1C54AA1D0;
  v35 = 0;
  memset(v34, 0, 11);
  v36 = a1;
  v37 = a2;
  v23 = a1;
  v15 = a2;
  v16 = BYTE1(a2);
  v17 = BYTE2(a2);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D390, &qword_1C55B1ED0);
  v14 = *(*(v25 - 8) + 64);
  v13 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v23, v3, v4, v5);
  v27 = &v13 - v13;
  MEMORY[0x1EEE9AC00](v6, &v13 - v13, v7, v8);
  v28 = &v13 - v9;
  v35 = &v13 - v9;
  v34[0] = v10;
  v18 = 1;
  LOBYTE(v34[1]) = v15 & 1;
  BYTE1(v34[1]) = v16;
  BYTE2(v34[1]) = v11;

  v20 = &v29;
  v30 = v23;
  v31 = v15 & 1 & v18;
  v32 = v16;
  v33 = v17;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D398, &qword_1C55B1ED8);
  v22 = sub_1C54AA20C();
  sub_1C5412C88();
  sub_1C5596024();

  v26 = sub_1C54AA294();
  sub_1C540EFD8(v27, v25, v28);
  sub_1C5364AC8(v27);
  sub_1C5364DB4(v28, v27);
  sub_1C540EFD8(v27, v25, v24);
  sub_1C5364AC8(v27);
  return sub_1C5364AC8(v28);
}

uint64_t sub_1C54A6BB4@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v159 = a3;
  v160 = MEMORY[0x1E6981198];
  v321 = 0;
  v320 = 0;
  v319 = 0;
  v318 = 0;
  v317 = 0;
  memset(&v316[5], 0, 11);
  memset(v316, 0, 32);
  v294 = 0;
  v295 = 0;
  memset(v287, 0, sizeof(v287));
  v249 = 0;
  v247 = 0u;
  v248 = 0u;
  v236 = 0u;
  v237 = 0u;
  v229 = 0;
  v226 = 0;
  v322 = a1;
  v323 = a2;
  v206 = a1;
  v214 = a2;
  v221 = BYTE1(a2);
  v207 = BYTE2(a2);
  v161 = sub_1C5595F34();
  v162 = *(v161 - 8);
  v163 = v161 - 8;
  v164 = (*(v162 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v161, v3, v4, v5);
  v165 = &v99 - v164;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CE20, &unk_1C55B1820);
  v167 = (*(*(v166 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v166, v6, v7, v8);
  v168 = (&v99 - v167);
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D008, &unk_1C55B12D0);
  v170 = *(v169 - 8);
  v171 = v169 - 8;
  v172 = (*(v170 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v169, v9, v10, v11);
  v173 = &v99 - v172;
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D020, &qword_1C55B12E0);
  v175 = *(v174 - 8);
  v176 = v174 - 8;
  v177 = (*(v175 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v174, v12, v13, v14);
  v178 = &v99 - v177;
  v179 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v99 - v177, v16, v17, v18);
  v180 = &v99 - v179;
  v181 = (v19 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v99 - v179, v20, v21, v22);
  v182 = &v99 - v181;
  v321 = &v99 - v181;
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D3E0, &qword_1C55B1F10);
  v184 = (*(*(v183 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v183, v23, v24, v25);
  v185 = &v99 - v184;
  v186 = (v26 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v99 - v184, v27, v28, v29);
  v187 = &v99 - v186;
  v188 = (v30 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v99 - v186, v31, v32, v33);
  v189 = &v99 - v188;
  v320 = &v99 - v188;
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D3D0, &qword_1C55B1F00);
  v191 = (*(*(v190 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v190, v34, v35, v36);
  v192 = &v99 - v191;
  v193 = (v37 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v99 - v191, v38, v39, v40);
  v194 = &v99 - v193;
  v195 = (v41 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v99 - v193, v42, v43, v44);
  v196 = &v99 - v195;
  v319 = &v99 - v195;
  v197 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D3C0, &qword_1C55B1EF0);
  v198 = *(v197 - 8);
  v199 = v197 - 8;
  v200 = (*(v198 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v197, v45, v46, v47);
  v201 = (&v99 - v200);
  v202 = (v48 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v99 - v200, v49, v50, v51);
  v203 = (&v99 - v202);
  v204 = (v52 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v99 - v202, v53, v54, v55);
  v205 = (&v99 - v204);
  v318 = &v99 - v204;
  v208 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D3D8, &qword_1C55B1F08);
  v212 = *(*(v208 - 8) + 64);
  v209 = (v212 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v208, v56, v57, v58);
  v210 = (&v99 - v209);
  v211 = (v212 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v99 - v209, v59, v60, v61);
  v213 = (&v99 - v211);
  MEMORY[0x1EEE9AC00](&v99 - v211, v62, v63, v64);
  v215 = (&v99 - v65);
  v317 = &v99 - v65;
  v316[5] = v66;
  LOBYTE(v316[6]) = v214 & 1;
  BYTE1(v316[6]) = v221;
  BYTE2(v316[6]) = v67;
  v312[2] = v66;
  v313 = v214 & 1;
  v314 = v221;
  v315 = v67;
  v216 = sub_1C54A67DC(v66);
  v217 = (*(*v216 + 408))(v216);
  v218 = v68;

  v219 = v312;
  v312[0] = v217;
  v312[1] = v218;
  v220 = sub_1C54141E8();
  v308 = sub_1C5595A04();
  v309 = v69;
  v310 = v70;
  v311 = v71;
  v222 = v308;
  v223 = v69;
  v224 = v70;
  v225 = v71;
  if (v221)
  {
    v158 = sub_1C5430454();
  }

  else
  {
    v158 = sub_1C55955E4();
  }

  v307 = v158;
  v303 = v222;
  v304 = v223;
  v155 = 1;
  v305 = v224 & 1;
  v306 = v225;
  v299 = sub_1C5595994();
  v300 = v72;
  v301 = v73;
  v302 = v74;
  v150 = v299;
  v151 = v72;
  v152 = v73;
  v153 = v74;
  sub_1C5412EA0(v222, v223, v224 & 1);

  v154 = v296;
  v296[0] = v150;
  v296[1] = v151;
  v297 = v152 & 1 & v155;
  v298 = v153;
  sub_1C540EFD8(v296, MEMORY[0x1E6981148], v316);
  sub_1C5414260(v154);
  v292 = sub_1C5596044();
  v293 = v75 & 1 & v155;
  sub_1C540EFD8(&v292, MEMORY[0x1E6981840], &v294);
  v288 = v206;
  v289 = v214 & 1 & v155;
  v290 = v221;
  v291 = v207;
  v156 = sub_1C54A67DC(v206);
  v157 = (*(*v156 + 720))(v156);

  if (v157)
  {
    if (v207)
    {
      v76 = sub_1C54A7FAC();
      v148 = v228;
      v228[0] = v76;
      v228[1] = v77;
      v78 = sub_1C55965F4("BIRTHDAY_PICKER_WARNING", 23, 1);
      v144 = v79;
      v145 = sub_1C54637B4(v78, v79);
      v146 = v80;

      v147 = v227;
      v227[0] = v145;
      v227[1] = v146;
      sub_1C54AECD8();
      sub_1C5595C04();
      sub_1C5401ECC(v147);
      sub_1C5436F54(v148);
      v149 = sub_1C54AEC30();
      sub_1C540EFD8(v194, v190, v196);
      sub_1C54AF7B8(v194);
      v226 = v194;
      sub_1C54AF84C(v196, v192);
      sub_1C540EFD8(v192, v190, v194);
      sub_1C54AF7B8(v192);
      sub_1C54AF84C(v194, v192);
      sub_1C540FD1C(v192, v190, MEMORY[0x1E6981148], v149, MEMORY[0x1E6981138], v203);
      sub_1C54AF7B8(v192);
      sub_1C54AF420(v203, v205);
      sub_1C54AF7B8(v194);
      sub_1C54AF7B8(v196);
    }

    else
    {
      v81 = sub_1C541DE30();
      v128 = *v81;
      v129 = v81[1];
      sub_1C5594CF4();
      v245 = v128;
      v246 = v129;
      v241 = sub_1C5595A04();
      v242 = v82;
      v243 = v83;
      v244 = v84;
      v130 = v238;
      v238[0] = v241;
      v238[1] = v82;
      v137 = 1;
      v239 = v83 & 1;
      v240 = v84;
      v143 = &v247;
      v139 = MEMORY[0x1E6981148];
      v140 = MEMORY[0x1E6981138];
      sub_1C540EFD8(v238, MEMORY[0x1E6981148], &v247);
      sub_1C5414260(v130);
      v131 = v247;
      v132 = v248;
      v133 = *(&v248 + 1);
      sub_1C54130AC(v247, *(&v247 + 1), v248 & 1);
      sub_1C5594CF4();
      v134 = &v233;
      v233 = v131;
      v234 = v132 & 1 & v137;
      v235 = v133;
      v142 = &v236;
      sub_1C540EFD8(&v233, v139, &v236);
      sub_1C5414260(v134);
      v135 = v236;
      v136 = v237;
      v138 = *(&v237 + 1);
      sub_1C54130AC(v236, *(&v236 + 1), v237 & 1);
      sub_1C5594CF4();
      v141 = &v230;
      v230 = v135;
      v231 = v136 & 1 & v137;
      v232 = v138;
      v85 = sub_1C54AEC30();
      sub_1C54108A0(v141, v190, v139, v85, v140, v203);
      sub_1C5414260(v141);
      sub_1C54AF420(v203, v205);
      sub_1C5414260(v142);
      sub_1C5414260(v143);
    }

    v229 = v203;
    sub_1C54AF534(v205, v201);
    v127 = sub_1C54AEB8C();
    sub_1C540EFD8(v201, v197, v203);
    sub_1C54AF6C8(v201);
    sub_1C54AF534(v203, v210);
    (*(v198 + 56))(v210, 0, 1, v197);
    sub_1C540F554(v210, v197, v213);
    sub_1C54AED54(v210);
    sub_1C54AEE98(v213, v215);
    sub_1C54AF6C8(v203);
    sub_1C54AF6C8(v205);
  }

  else
  {
    (*(v198 + 56))(v210, 1, 1, v197);
    sub_1C54AEB8C();
    sub_1C540F554(v210, v197, v213);
    sub_1C54AED54(v210);
    sub_1C54AEE98(v213, v215);
  }

  v281 = v206;
  v282 = v214 & 1;
  v283 = v221;
  v284 = v207;
  v124 = sub_1C54A67DC(v206);
  v125 = (*(*v124 + 936))(v124);
  v126 = v86;

  v279 = v125;
  v280 = v126;
  if (v126)
  {
    v285 = v279;
    v286 = v280;
  }

  else
  {
    v285 = sub_1C55965F4("", 0, 1);
    v286 = v87;
    if (v280)
    {
      sub_1C5401ECC(&v279);
    }
  }

  v277 = v285;
  v278 = v286;
  v273 = sub_1C5595A04();
  v274 = v88;
  v275 = v89;
  v276 = v90;
  v116 = v273;
  v114 = v88;
  v115 = v89;
  v117 = v90;
  v91 = sub_1C5410CD0();
  v113 = &v272;
  v272 = v91;
  v268 = v116;
  v269 = v114;
  v121 = 1;
  v270 = v115 & 1;
  v271 = v117;
  v264 = sub_1C5595994();
  v265 = v92;
  v266 = v93;
  v267 = v94;
  v118 = v264;
  v119 = v92;
  v120 = v93;
  v122 = v94;
  sub_1C5410D10(v113);
  sub_1C5412EA0(v116, v114, v115 & 1);

  v123 = v261;
  v261[0] = v118;
  v261[1] = v119;
  v262 = v120 & 1 & v121;
  v263 = v122;
  sub_1C540EFD8(v261, MEMORY[0x1E6981148], v287);
  sub_1C5414260(v123);
  if (v207)
  {
    sub_1C55965F4("chevron.forward", 15, 1);
    v95 = sub_1C5595EF4();
    v108 = &v253;
    v253 = v95;
    (*(v162 + 104))(v165, *MEMORY[0x1E69816C8], v161);
    sub_1C5595AA4();
    (*(v162 + 8))(v165, v161);
    sub_1C5410D10(v108);
    sub_1C5595864();
    v109 = v96;
    v110 = sub_1C547EEF0();
    sub_1C5595A94();
    sub_1C547EF94(v168);
    v97 = sub_1C5485DB0();
    v111 = &v252;
    v252 = v97;
    v250 = v166;
    v251 = v110;
    swift_getOpaqueTypeConformance2();
    sub_1C5595BA4();
    (*(v170 + 8))(v173, v169);
    v112 = sub_1C54893F8();
    sub_1C540EFD8(v180, v174, v182);
    sub_1C5362FB4(v180);
    v249 = v180;
    sub_1C536301C(v182, v178);
    sub_1C540EFD8(v178, v174, v180);
    sub_1C5362FB4(v178);
    sub_1C536301C(v180, v185);
    (*(v175 + 56))(v185, 0, 1, v174);
    sub_1C540F554(v185, v174, v187);
    sub_1C5365FF8(v185);
    sub_1C53660B4(v187, v189);
    sub_1C5362FB4(v180);
    sub_1C5362FB4(v182);
  }

  else
  {
    (*(v175 + 56))(v185, 1, 1, v174);
    sub_1C54893F8();
    sub_1C540F554(v185, v174, v187);
    sub_1C5365FF8(v185);
    sub_1C53660B4(v187, v189);
  }

  v107 = v316;
  v105 = v259;
  sub_1C54142A8(v316, v259);
  v103 = v260;
  v260[0] = v105;
  v257 = v294;
  v258 = v295;
  v260[1] = &v257;
  sub_1C54AF084(v215, v213);
  v260[2] = v213;
  v106 = v287;
  v104 = v256;
  sub_1C54142A8(v287, v256);
  v260[3] = v104;
  sub_1C5366210(v189, v187);
  v260[4] = v187;
  v101 = v255;
  v255[0] = MEMORY[0x1E6981148];
  v255[1] = MEMORY[0x1E6981840];
  v255[2] = v208;
  v255[3] = MEMORY[0x1E6981148];
  v255[4] = v183;
  v102 = v254;
  v100 = MEMORY[0x1E6981138];
  v254[0] = MEMORY[0x1E6981138];
  v254[1] = MEMORY[0x1E6981838];
  v254[2] = sub_1C54AF2F0();
  v254[3] = v100;
  v254[4] = sub_1C54AF388();
  sub_1C540F5A0(v103, 5uLL, v101, v102, v159);
  sub_1C5365FF8(v187);
  sub_1C5414260(v104);
  sub_1C54AED54(v213);
  sub_1C5414260(v105);
  sub_1C5365FF8(v189);
  sub_1C5414260(v106);
  sub_1C54AED54(v215);
  return sub_1C5414260(v107);
}

uint64_t sub_1C54A7FAC()
{
  v5 = 0;
  v6 = 0;
  type metadata accessor for BirthdayUpdatePendingTipViewModel(0);
  v0 = sub_1C5522AC0();
  v4 = sub_1C54A807C(v0);
  v3 = v1;

  v5 = v4;
  v6 = v3;
  nullsub_1();
  sub_1C5436F54(&v5);
  return v4;
}

uint64_t sub_1C54A802C@<X0>(uint64_t a1@<X8>)
{
  LOBYTE(v3) = *(v1 + 8) & 1;
  BYTE1(v3) = *(v1 + 9);
  BYTE2(v3) = *(v1 + 10);
  return sub_1C54A6994(*v1, v3, a1);
}

uint64_t sub_1C54A807C(uint64_t a1)
{

  type metadata accessor for BirthdayUpdatePendingTipViewModel(0);
  sub_1C5595F74();

  return v2;
}

uint64_t sub_1C54A80F4(uint64_t a1, uint64_t a2)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D3E8, &unk_1C55B1F18);
  sub_1C5595F84();

  return v3;
}

uint64_t sub_1C54A8178(uint64_t a1, uint64_t a2, uint64_t a3)
{

  v6[0] = a2;
  v6[1] = a3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D3E8, &unk_1C55B1F18);
  sub_1C5595F94();
  sub_1C5436F54(v6);
}

uint64_t sub_1C54A8264(uint64_t a1, uint64_t a2)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D3E8, &unk_1C55B1F18);
  sub_1C5595FA4();

  return v3;
}

uint64_t sub_1C54A8338(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t sub_1C54A83A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v129 = a3;
  v118 = a1;
  v119 = a2;
  v65 = 0;
  v66 = sub_1C54AA31C;
  v64 = sub_1C54A9370;
  v85 = MEMORY[0x1E6982BA0];
  v86 = sub_1C54AA3E8;
  v97 = MEMORY[0x1E6982B90];
  v98 = sub_1C54AA3F4;
  v108 = MEMORY[0x1E6981440];
  v110 = sub_1C54AA400;
  v120 = &unk_1C55B1F88;
  v162 = 0;
  v160 = 0;
  v161 = 0;
  v54[1] = 0;
  v126 = sub_1C5596814();
  v123 = *(v126 - 8);
  v124 = v126 - 8;
  v55 = (*(v123 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0, v3, v4, v5);
  v125 = v54 - v55;
  v74 = sub_1C5595624();
  v71 = *(v74 - 8);
  v72 = v74 - 8;
  v56 = (*(v71 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v74, v6, v7, v8);
  v73 = (v54 - v56);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CCC8, &qword_1C55B0E10);
  v80 = *(v83 - 8);
  v81 = v83 - 8;
  v57 = (*(v80 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v83, v9, v10, v11);
  v82 = v54 - v57;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D3F0, &qword_1C55B1F28);
  v88 = *(v95 - 8);
  v89 = v95 - 8;
  v58 = (*(v88 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v95, v12, v13, v14);
  v90 = v54 - v58;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D3F8, &qword_1C55B1F30);
  v101 = *(v104 - 8);
  v102 = v104 - 8;
  v59 = (*(v101 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v104, v15, v16, v17);
  v103 = v54 - v59;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D400, &qword_1C55B1F38);
  v112 = *(v115 - 8);
  v113 = v115 - 8;
  v60 = (*(v112 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v115, v18, v19, v20);
  v114 = v54 - v60;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D408, &qword_1C55B1F40);
  v61 = (*(*(v121 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v121, v21, v22, v23);
  v128 = v54 - v61;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D410, &qword_1C55B1F48);
  v62 = (*(*(v130 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v118, v119, v24, v25);
  v132 = v54 - v62;
  v63 = (v26 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v27, v28, v54 - v62, v29);
  v133 = v54 - v63;
  v162 = v54 - v63;
  v160 = v30;
  v161 = v31;

  v116 = 32;
  v117 = 7;
  v32 = swift_allocObject();
  v33 = v119;
  *(v32 + 16) = v118;
  *(v32 + 24) = v33;
  sub_1C5595FD4();
  v79 = &v157;
  v158 = &unk_1F447D1A8;
  v159 = sub_1C54AA328();

  v155 = v118;
  v156 = v119;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D3E8, &unk_1C55B1F18);
  sub_1C5595FA4();
  v67 = v152;
  v68 = v153;
  v69 = v154;

  KeyPath = swift_getKeyPath();
  v149 = v67;
  v150 = v68;
  v151 = v69;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D420, &qword_1C55B1F78);
  sub_1C55960B4();
  v75 = v146;
  v76 = v147;
  v77 = v148;

  v84 = sub_1C547070C();
  sub_1C54A95EC(v73);
  sub_1C54A9668();
  v70 = v34;
  v93 = 1;
  sub_1C5595A34();

  (*(v71 + 8))(v73, v74);
  sub_1C54AA3A0(v75, v76);

  sub_1C544435C(v79);
  (*(v80 + 8))(v82, v83);

  v35 = swift_allocObject();
  v36 = v83;
  v37 = v84;
  v38 = v119;
  *(v35 + 16) = v118;
  *(v35 + 24) = v38;
  v87 = v35;
  v144 = v36;
  v145 = v37;
  v109 = 1;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1C5595A24();
  sub_1C5411348(v86, v87);
  (*(v88 + 8))(v90, v95);

  v142 = v118;
  v143 = v119;
  sub_1C5595F84();
  v39 = v141;
  v92 = v141;

  v94 = (*(*v39 + 136))(v40);

  v99 = &v140;
  v140 = v94 & v93;

  v41 = swift_allocObject();
  v42 = v95;
  v43 = OpaqueTypeConformance2;
  v44 = v119;
  v100 = v41;
  *(v41 + 16) = v118;
  *(v41 + 24) = v44;
  v138 = v42;
  v139 = v43;
  v106 = swift_getOpaqueTypeConformance2();
  v105 = MEMORY[0x1E69E6370];
  v107 = MEMORY[0x1E69E6388];
  sub_1C543AE1C();
  sub_1C5595DD4();

  (*(v101 + 8))(v103, v104);

  v45 = swift_allocObject();
  v46 = v104;
  v47 = v105;
  v48 = v106;
  v49 = v107;
  v50 = v119;
  *(v45 + 16) = v118;
  *(v45 + 24) = v50;
  v111 = v45;
  v134 = v46;
  v135 = v47;
  v136 = v48;
  v137 = v49;
  swift_getOpaqueTypeConformance2();
  sub_1C5595DC4();
  sub_1C5411348(v110, v111);
  (*(v112 + 8))(v114, v115);

  v51 = swift_allocObject();
  v52 = v119;
  v127 = v51;
  *(v51 + 16) = v118;
  *(v51 + 24) = v52;
  v122 = sub_1C54AA4D0();
  sub_1C545EBE4();
  sub_1C5595CE4();
  (*(v123 + 8))(v125, v126);

  sub_1C536551C(v128);
  v131 = sub_1C54AA678();
  sub_1C540EFD8(v132, v130, v133);
  sub_1C53655FC(v132);
  sub_1C5365760(v133, v132);
  sub_1C540EFD8(v132, v130, v129);
  sub_1C53655FC(v132);
  return sub_1C53655FC(v133);
}

uint64_t sub_1C54A92AC(uint64_t a1, uint64_t a2)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D3E8, &unk_1C55B1F18);
  sub_1C5595F84();

  (*(*v4 + 208))(v2);
}

uint64_t sub_1C54A9370@<X0>(uint64_t a1@<X8>)
{
  v25 = 0u;
  v26 = 0u;
  v1 = sub_1C541DE30();
  v6 = *v1;
  v7 = v1[1];
  sub_1C5594CF4();
  v23 = v6;
  v24 = v7;
  sub_1C54141E8();
  v19 = sub_1C5595A04();
  v20 = v2;
  v21 = v3;
  v22 = v4;
  v16[0] = v19;
  v16[1] = v2;
  v17 = v3 & 1;
  v18 = v4;
  v12 = MEMORY[0x1E6981148];
  sub_1C540EFD8(v16, MEMORY[0x1E6981148], &v25);
  sub_1C5414260(v16);
  v8 = v25;
  v9 = v26;
  v10 = *(&v26 + 1);
  sub_1C54130AC(v25, *(&v25 + 1), v26 & 1);
  sub_1C5594CF4();
  v13 = v8;
  v14 = v9 & 1;
  v15 = v10;
  sub_1C540EFD8(&v13, v12, a1);
  sub_1C5414260(&v13);
  return sub_1C5414260(&v25);
}

uint64_t sub_1C54A94E8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 136))(v2) & 1;
}

uint64_t sub_1C54A956C(char *a1, uint64_t *a2)
{
  v4 = *a1;
  v3 = *a2;

  (*(*v3 + 144))(v4 & 1);
}

uint64_t sub_1C54A95EC@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_1C5595FC4();
  v3 = *MEMORY[0x1E697C8C0];
  v1 = sub_1C5595624();
  return (*(*(v1 - 8) + 104))(a1, v3);
}

uint64_t sub_1C54A9694(uint64_t a1, uint64_t a2, uint64_t a3)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D3E8, &unk_1C55B1F18);
  sub_1C5595F84();

  (*(*v5 + 216))(v3);
}

_BYTE *sub_1C54A9768(_BYTE *result, char *a2, uint64_t a3, uint64_t a4)
{
  if ((*a2 & 1) == 0)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D3E8, &unk_1C55B1F18);
    sub_1C5595F84();

    (*(*v6 + 216))(v4);
  }

  return v5;
}

uint64_t sub_1C54A9878(uint64_t a1, uint64_t a2)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D3E8, &unk_1C55B1F18);
  sub_1C5595F84();

  v6 = (*(*v9 + 192))(v2);

  result = v6;
  if (v6)
  {

    sub_1C5595F84();

    (*(*v8 + 200))(v4);

    sub_1C5595F84();

    (*(*v7 + 208))(v5);
  }

  return result;
}

uint64_t sub_1C54A9A4C(uint64_t a1, uint64_t a2)
{
  v2[9] = a2;
  v2[8] = a1;
  v2[6] = v2;
  v2[2] = 0;
  v2[3] = 0;
  v2[2] = a1;
  v2[3] = a2;
  sub_1C55967E4();
  v2[10] = sub_1C55967D4();
  sub_1C55967A4();

  return MEMORY[0x1EEE6DFA0](sub_1C54A9B0C);
}

uint64_t sub_1C54A9B0C()
{
  v6 = v0[9];
  v5 = v0[8];
  v0[6] = v0;

  v0[4] = v5;
  v0[5] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D3E8, &unk_1C55B1F18);
  sub_1C5595F84();
  v1 = v0[7];

  (*(*v1 + 232))(v2);

  v3 = *(v0[6] + 8);

  return v3();
}

uint64_t sub_1C54A9C54(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D318, &qword_1C55B1E60);
  (*(*(v2 - 8) + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C54A9CC4(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D318, &qword_1C55B1E60);
  (*(*(v2 - 8) + 32))(a2, a1);
  return a2;
}

uint64_t sub_1C54A9D34()
{
  type metadata accessor for AppleAccountBirthdayPickerRow.RowDragGesture(0);

  return sub_1C54A17F0();
}

unint64_t sub_1C54A9DAC()
{
  v2 = qword_1EC15D358;
  if (!qword_1EC15D358)
  {
    sub_1C5594FF4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D358);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54A9E2C()
{
  v2 = qword_1EC15D360;
  if (!qword_1EC15D360)
  {
    sub_1C5594FE4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D360);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C54A9EAC()
{
  type metadata accessor for AppleAccountBirthdayPickerRow.RowDragGesture(0);

  return sub_1C54A18E0();
}

unint64_t sub_1C54A9F24()
{
  v2 = qword_1EC15D368;
  if (!qword_1EC15D368)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15D350, &unk_1C55B1EB0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D368);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54A9FAC()
{
  v2 = qword_1EC15D370;
  if (!qword_1EC15D370)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D370);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54AA028()
{
  v2 = qword_1EC15D378;
  if (!qword_1EC15D378)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D378);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C54AA0E4(uint64_t a1)
{

  v4 = type metadata accessor for AppleAccountBirthdayPickerRow(0);
  v3 = *(v4 + 20);
  v1 = sub_1C5596384();
  (*(*(v1 - 8) + 8))(a1 + v3);

  sub_1C549C0AC(*(a1 + *(v4 + 32)), *(a1 + *(v4 + 32) + 8), *(a1 + *(v4 + 32) + 16), *(a1 + *(v4 + 32) + 17) & 1);

  return a1;
}

uint64_t sub_1C54AA1D0@<X0>(uint64_t a1@<X8>)
{
  LOBYTE(v3) = *(v1 + 24) & 1;
  BYTE1(v3) = *(v1 + 25);
  BYTE2(v3) = *(v1 + 26);
  return sub_1C54A6BB4(*(v1 + 16), v3, a1);
}

unint64_t sub_1C54AA20C()
{
  v2 = qword_1EC15D3A0;
  if (!qword_1EC15D3A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15D398, &qword_1C55B1ED8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D3A0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54AA294()
{
  v2 = qword_1EC15D3A8;
  if (!qword_1EC15D3A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15D390, &qword_1C55B1ED0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D3A8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54AA328()
{
  v2 = qword_1EC15D418;
  if (!qword_1EC15D418)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D418);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C54AA3A0(uint64_t result, uint64_t a2)
{
  if (a2)
  {
  }

  return v2;
}

uint64_t sub_1C54AA40C()
{
  v4 = v1;
  *(v1 + 16) = v1;
  v6 = *(v0 + 16);
  v5 = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = sub_1C5405B1C;

  return sub_1C54A9A4C(v6, v5);
}

unint64_t sub_1C54AA4D0()
{
  v2 = qword_1EC15D428;
  if (!qword_1EC15D428)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15D408, &qword_1C55B1F40);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15D3F8, &qword_1C55B1F30);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15D3F0, &qword_1C55B1F28);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CCC8, &qword_1C55B0E10);
    sub_1C547070C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D428);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54AA678()
{
  v2 = qword_1EC15D430;
  if (!qword_1EC15D430)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15D410, &qword_1C55B1F48);
    sub_1C54AA4D0();
    sub_1C545EFB8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D430);
    return WitnessTable;
  }

  return v2;
}

void (*sub_1C54AA720(void *a1))(void **a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL, 56931);
  *a1 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D318, &qword_1C55B1E60);
  v2[4] = sub_1C5596194();
  return sub_1C54A10E4;
}

uint64_t sub_1C54AA7E0()
{
  v2 = *(v0 + *(type metadata accessor for BirthdayPickerSheet(0) + 24));

  return v2;
}

uint64_t sub_1C54AA828(uint64_t a1, uint64_t a2)
{

  v3 = (v2 + *(type metadata accessor for BirthdayPickerSheet(0) + 24));
  *v3 = a1;
  v3[1] = a2;
}

uint64_t sub_1C54AA8D4()
{
  v2 = *(v0 + *(type metadata accessor for BirthdayPickerSheet(0) + 28));

  return v2;
}

uint64_t sub_1C54AA91C(uint64_t a1, uint64_t a2)
{

  v3 = (v2 + *(type metadata accessor for BirthdayPickerSheet(0) + 28));
  *v3 = a1;
  v3[1] = a2;
}

uint64_t sub_1C54AA9C8@<X0>(uint64_t a1@<X8>)
{
  v39 = a1;
  v23 = MEMORY[0x1E697D5A0];
  v26 = sub_1C54AB1D4;
  v35 = MEMORY[0x1E697D348];
  v54 = 0;
  v53 = 0;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D438, &qword_1C55B1F90);
  v28 = *(v31 - 8);
  v29 = v31 - 8;
  v16 = (*(v28 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v31, v1, v2, v3);
  v30 = &v15 - v16;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D440, &qword_1C55B1F98);
  v37 = *(v43 - 8);
  v38 = v43 - 8;
  v18 = *(v37 + 64);
  v17 = (v18 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v43, v4, v5, v6);
  v41 = &v15 - v17;
  v19 = (v18 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v15 - v17, v7, v8, v9);
  v42 = &v15 - v19;
  v54 = &v15 - v19;
  v53 = v10;
  v24 = &v46;
  v47 = v10;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D448, &qword_1C55B1FA0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15D450, &qword_1C55B1FA8);
  v21 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15D458, &qword_1C55B1FB0);
  v22 = sub_1C54AB1DC();
  v11 = sub_1C54AB264();
  v52[1] = v20;
  v52[2] = v21;
  v52[3] = v22;
  v52[4] = v11;
  v36 = 1;
  swift_getOpaqueTypeConformance2();
  sub_1C5595224();
  v12 = [objc_opt_self() systemGroupedBackgroundColor];
  v13 = sub_1C5595E44();
  v27 = v52;
  v52[0] = v13;
  v33 = sub_1C54AB2EC();
  v32 = MEMORY[0x1E69815C0];
  v34 = MEMORY[0x1E6981568];
  sub_1C5595C74();
  sub_1C5410D10(v27);
  (*(v28 + 8))(v30, v31);
  v48 = v31;
  v49 = v32;
  v50 = v33;
  v51 = v34;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1C540EFD8(v41, v43, v42);
  v45 = *(v37 + 8);
  v44 = v37 + 8;
  v45(v41, v43);
  (*(v37 + 16))(v41, v42, v43);
  sub_1C540EFD8(v41, v43, v39);
  v45(v41, v43);
  return (v45)(v42, v43);
}

uint64_t sub_1C54AAE24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v20 = a1;
  v19 = sub_1C54AE2E4;
  v22 = sub_1C54AE374;
  v30 = MEMORY[0x1E697D5A0];
  v49 = 0;
  v48 = 0;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D450, &qword_1C55B1FA8);
  v23 = *(v26 - 8);
  v24 = v26 - 8;
  v14 = (*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v26, v2, v3, v4);
  v25 = &v14 - v14;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D448, &qword_1C55B1FA0);
  v31 = *(v37 - 8);
  v32 = v37 - 8;
  v15 = (*(v31 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v20, v5, v6, v7);
  v35 = &v14 - v15;
  v16 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9, &v14 - v15, v10, v11);
  v36 = &v14 - v16;
  v49 = &v14 - v16;
  v48 = v12;
  v17 = &v42;
  v43 = v12;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D4E0, &qword_1C55B25A8);
  sub_1C54AE2EC();
  sub_1C5595944();
  v21 = &v40;
  v41 = v20;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D458, &qword_1C55B1FB0);
  v28 = sub_1C54AB1DC();
  v29 = sub_1C54AB264();
  sub_1C5595D94();
  (*(v23 + 8))(v25, v26);
  v44 = v26;
  v45 = v27;
  v46 = v28;
  v47 = v29;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1C540EFD8(v35, v37, v36);
  v39 = *(v31 + 8);
  v38 = v31 + 8;
  v39(v35, v37);
  (*(v31 + 16))(v35, v36, v37);
  sub_1C540EFD8(v35, v37, v33);
  v39(v35, v37);
  return (v39)(v36, v37);
}

unint64_t sub_1C54AB1DC()
{
  v2 = qword_1EC15D460;
  if (!qword_1EC15D460)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15D450, &qword_1C55B1FA8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D460);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54AB264()
{
  v2 = qword_1EC15D468;
  if (!qword_1EC15D468)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15D458, &qword_1C55B1FB0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D468);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54AB2EC()
{
  v2 = qword_1EC15D470;
  if (!qword_1EC15D470)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15D438, &qword_1C55B1F90);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D470);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C54AB374@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v25 = a1;
  v24 = sub_1C54AE650;
  v29 = MEMORY[0x1E697CF70];
  v32 = sub_1C54AE704;
  v60 = 0;
  v59 = 0;
  v58 = 0;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D510, &qword_1C55B25C8);
  v35 = *(v44 - 8);
  v36 = v44 - 8;
  v19 = (*(v35 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v44, v2, v3, v4);
  v41 = &v19 - v19;
  v20 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v19 - v19, v6, v7, v8);
  v43 = &v19 - v20;
  v60 = &v19 - v20;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D518, &qword_1C55B25D0);
  v33 = *(v48 - 8);
  v34 = v48 - 8;
  v21 = (*(v33 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v25, v9, v10, v11);
  v42 = &v19 - v21;
  v22 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v13, &v19 - v21, v14, v15);
  v47 = &v19 - v22;
  v59 = &v19 - v22;
  v58 = v16;
  v23 = &v53;
  v54 = v16;
  sub_1C549E678();
  sub_1C5596164();
  v37 = sub_1C54AE658();
  sub_1C540EFD8(v42, v48, v47);
  v50 = *(v33 + 8);
  v49 = v33 + 8;
  v50(v42, v48);
  v30 = &v51;
  v52 = v25;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D528, &qword_1C55B25D8);
  v26 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15D530, &unk_1C55B25E0);
  v27 = sub_1C5595684();
  v28 = sub_1C54AE70C();
  v17 = sub_1C54AE794();
  v57[2] = v26;
  v57[3] = v27;
  v57[4] = v28;
  v57[5] = v17;
  swift_getOpaqueTypeConformance2();
  sub_1C5596164();
  v38 = sub_1C54AE814();
  sub_1C540EFD8(v41, v44, v43);
  v46 = *(v35 + 8);
  v45 = v35 + 8;
  v46(v41, v44);
  (*(v33 + 16))(v42, v47, v48);
  v40 = v57;
  v57[0] = v42;
  (*(v35 + 16))(v41, v43, v44);
  v57[1] = v41;
  v56[0] = v48;
  v56[1] = v44;
  v55[0] = v37;
  v55[1] = v38;
  sub_1C540F5A0(v40, 2uLL, v56, v55, v39);
  v46(v41, v44);
  v50(v42, v48);
  v46(v43, v44);
  return (v50)(v47, v48);
}

void sub_1C54AB8B0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  memset(v18, 0, 11);
  v18[2] = a1;
  type metadata accessor for BirthdayPickerSheet(0);
  sub_1C549E568();
  sub_1C5409740();
  sub_1C549E5A8();
  v16 = v2;
  v17 = v3;
  v13 = v2;
  v14 = v3 & 0xFF01;
  v15 = BYTE2(v3);
  sub_1C549E678();
  sub_1C540EFD8(&v13, &unk_1F4479A70, v18);
  sub_1C5410D10(&v13);
  v4 = v18[0];
  v5 = v18[1];
  v6 = BYTE1(v18[1]);
  v7 = BYTE2(v18[1]);

  v9 = v4;
  v10 = v5 & 1;
  v11 = v6;
  v12 = v7;
  sub_1C540EFD8(&v9, &unk_1F4479A70, a2);
  sub_1C5410D10(&v9);
  sub_1C5410D10(v18);
}

uint64_t sub_1C54ABA24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v71 = a2;
  v44 = a1;
  v68 = MEMORY[0x1E697CF70];
  v83 = 0;
  v82 = 0;
  v41 = 0;
  v65 = sub_1C5595684();
  v58 = *(v65 - 8);
  v59 = v65 - 8;
  v35 = (*(v58 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0, v3, v4, v5);
  v60 = &v35 - v35;
  v6 = sub_1C55954E4();
  v36 = (*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6, v7, v8, v9);
  v56 = &v35 - v36;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C118, &qword_1C55AE0C8);
  v37 = (*(*(v10 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10, v11, v12, v13);
  v55 = &v35 - v37;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D278, &qword_1C55B1DF0);
  v38 = (*(*(v14 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v14, v15, v16, v17);
  v54 = &v35 - v38;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D318, &qword_1C55B1E60);
  v45 = *(v48 - 8);
  v46 = v48 - 8;
  v39 = (*(v45 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v48, v18, v19, v20);
  v47 = &v35 - v39;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D530, &unk_1C55B25E0);
  v61 = *(v64 - 8);
  v62 = v64 - 8;
  v40 = (*(v61 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v64, v21, v22, v23);
  v63 = &v35 - v40;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D528, &qword_1C55B25D8);
  v69 = *(v75 - 8);
  v70 = v75 - 8;
  v42 = (*(v69 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v75, v41, v24, v25);
  v73 = &v35 - v42;
  v43 = (v26 + 15) & 0xFFFFFFFFFFFFFFF0;
  v30 = MEMORY[0x1EEE9AC00](&v35 - v42, v27, v28, v29);
  v74 = &v35 - v43;
  v83 = &v35 - v43;
  v82 = a1;
  sub_1C55965F4("", v30);
  v50 = sub_1C55953C4();
  v51 = v31;
  v52 = v32;
  v53 = v33;
  sub_1C54A1160(v47);
  KeyPath = swift_getKeyPath();
  sub_1C55961E4();
  (*(v45 + 8))(v47, v48);
  v49 = sub_1C54A0EC4();
  sub_1C54297C4(v49 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel_dateRange, v55);

  sub_1C55954D4();
  sub_1C5594F44();

  sub_1C54AC0A4();
  v66 = sub_1C54AE70C();
  v67 = sub_1C54AE794();
  sub_1C5595B84();
  (*(v58 + 8))(v60, v65);
  (*(v61 + 8))(v63, v64);
  v78 = v64;
  v79 = v65;
  v80 = v66;
  v81 = v67;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1C540EFD8(v73, v75, v74);
  v77 = *(v69 + 8);
  v76 = v69 + 8;
  v77(v73, v75);
  (*(v69 + 16))(v73, v74, v75);
  sub_1C540EFD8(v73, v75, v71);
  v77(v73, v75);
  return (v77)(v74, v75);
}

uint64_t sub_1C54AC0BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a1;
  v34 = a2;
  v63 = 0;
  v62 = 0;
  v61 = 0;
  v2 = sub_1C5595544();
  MEMORY[0x1EEE9AC00](v2 - 8, v3, v4, v5);
  v48 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = v48;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D4F0, &qword_1C55B25B0);
  v36 = v55;
  v37 = *(v55 - 8);
  v54 = v37;
  v38 = v37;
  v41 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v45, v55, v7, v8);
  v43 = (v41 + 15) & 0xFFFFFFFFFFFFFFF0;
  v39 = &v29 - v43;
  MEMORY[0x1EEE9AC00](v9, &v29 - v43, v10, v11);
  v40 = &v29 - v43;
  MEMORY[0x1EEE9AC00](v12, &v29 - v43, v13, v14);
  v58 = &v29 - v43;
  v42 = &v29 - v43;
  v18 = MEMORY[0x1EEE9AC00](v15, &v29 - v43, v16, v17);
  v52 = &v29 - v43;
  v44 = &v29 - v43;
  v63 = &v29 - v43;
  v62 = v19;
  v50 = sub_1C55965F4("Cancel", 6, 1, v18);
  v47 = v20;
  sub_1C5595524();
  v60 = v45;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D4F8, &unk_1C55B25B8);
  v46 = v49;
  v51 = sub_1C54AE384();
  sub_1C54AC7A0(v50, v47, v48, sub_1C54AE37C, v59, v49, v51, v58);
  v53 = sub_1C54AE42C();
  sub_1C540EFD8(v58, v55, v52);
  v56 = *(v54 + 8);
  v57 = (v54 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v56(v58, v55);
  v61 = v58;
  v29 = sub_1C55965F4("Done", 4, 1);
  v30 = v21;
  sub_1C5595534();
  v31 = &v29;
  MEMORY[0x1EEE9AC00](v29, v30, v35, &v29);
  *(&v29 - 2) = v45;
  sub_1C54AC7A0(v22, v23, v24, sub_1C54AE4B4, (&v29 - 4), v25, v26, v27);
  sub_1C540EFD8(v40, v36, v42);
  v56(v40, v36);
  v33 = *(v38 + 16);
  v32 = v38 + 16;
  v33(v40, v44, v36);
  v33(v39, v42, v36);
  sub_1C54ACC24(v40, v39, v36, v36, v34);
  v56(v39, v36);
  v56(v40, v36);
  v56(v42, v36);
  return (v56)(v44, v36);
}

uint64_t sub_1C54AC4F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v29 = a1;
  v41 = 0;
  v40 = 0;
  v24 = 0;
  v2 = sub_1C5594F34();
  v19 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2, v3, v4, v5);
  v25 = &v18 - v19;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C560, &qword_1C55AED80);
  v31 = *(v34 - 8);
  v32 = v34 - 8;
  v20 = (*(v31 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v34, v6, v7, v8);
  v33 = &v18 - v20;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D4F8, &unk_1C55B25B8);
  v22 = *(*(v36 - 8) + 64);
  v21 = (v22 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v29, v9, v10, v11);
  v38 = &v18 - v21;
  v23 = (v22 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12, &v18 - v21, v13, v14);
  v39 = &v18 - v23;
  v41 = &v18 - v23;
  v40 = v15;
  sub_1C5594F14();
  v28 = type metadata accessor for BirthdayPickerSheet(v24);
  v16 = (v29 + *(v28 + 24));
  v26 = *v16;
  v27 = v16[1];

  MEMORY[0x1C6946B80](v25, v26, v27);
  v30 = *(v29 + *(v28 + 20));
  sub_1C543DAE4();
  sub_1C5595DA4();
  (*(v31 + 8))(v33, v34);
  v37 = sub_1C54AE384();
  sub_1C540EFD8(v38, v36, v39);
  sub_1C54AE4BC(v38);
  sub_1C54AE560(v39, v38);
  sub_1C540EFD8(v38, v36, v35);
  sub_1C54AE4BC(v38);
  return sub_1C54AE4BC(v39);
}

uint64_t sub_1C54AC7A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v11[1] = a8;
  v11[8] = a1;
  v11[2] = a2;
  v14 = a3;
  v11[4] = a4;
  v11[5] = a5;
  v11[6] = a6;
  v11[7] = a7;
  v16 = a6;
  v15 = sub_1C5595544();
  v12 = *(v15 - 8);
  v13 = v15 - 8;
  v11[0] = (*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x1EEE9AC00](v15, v14, v15, v8);
  v11[3] = v11 - v11[0];
  (*(v12 + 16))(v9);
  sub_1C5595094();
  return (*(v12 + 8))(v14, v15);
}

uint64_t sub_1C54AC8C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v25 = a1;
  v48 = 0;
  v47 = 0;
  v39 = 0;
  v3 = sub_1C5594F34();
  v26 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3, v4, v5, v6);
  v41 = v21 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C560, &qword_1C55AED80);
  v28 = *(v27 - 8);
  v29 = v27 - 8;
  v30 = (*(v28 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v27, v7, v8, v9);
  v42 = v21 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D4F8, &unk_1C55B25B8);
  v35 = *(*(v31 - 8) + 64);
  v32 = (v35 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v31, v10, v11, v12);
  v33 = v21 - v32;
  v34 = (v35 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v21 - v32, v13, v14, v15);
  v36 = v21 - v34;
  v37 = (v35 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v21 - v34, v16, v17, v18);
  v38 = v21 - v37;
  v48 = v21 - v37;
  v47 = a1;
  sub_1C5594F24();
  v40 = type metadata accessor for BirthdayPickerSheet(v39);
  v19 = (a1 + *(v40 + 28));
  v43 = *v19;
  v44 = v19[1];

  MEMORY[0x1C6946B80](v41, v43, v44);
  v45 = sub_1C54A0EC4();
  v46 = (*(*v45 + 624))(v45);

  if (v46)
  {
    v23 = *(v25 + *(v40 + 20));
  }

  else
  {
    v23 = 1;
  }

  v21[1] = v23;
  sub_1C543DAE4();
  sub_1C5595DA4();
  (*(v28 + 8))(v42, v27);
  v22 = sub_1C54AE384();
  sub_1C540EFD8(v36, v31, v38);
  sub_1C54AE4BC(v36);
  sub_1C54AE560(v38, v33);
  sub_1C540EFD8(v33, v31, v24);
  sub_1C54AE4BC(v33);
  return sub_1C54AE4BC(v38);
}

uint64_t sub_1C54ACC24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v17 = a5;
  v12 = a1;
  v15 = a2;
  v11 = a3;
  v16 = a4;
  v21 = a3;
  v20 = a4;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v13 = (*(*(TupleTypeMetadata2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2, v12, v11, v5);
  v19 = &v10 - v13;
  v14 = *(v7 + 48);
  (*(*(v8 - 8) + 16))(v6);
  (*(*(v16 - 8) + 16))(&v19[v14], v15);
  return sub_1C5595464();
}

unint64_t sub_1C54ACDB8()
{
  v2 = qword_1EC15D478;
  if (!qword_1EC15D478)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D478);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54ACE4C()
{
  v2 = qword_1EC15D480;
  if (!qword_1EC15D480)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D480);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54ACEE0()
{
  v2 = qword_1EC15D488;
  if (!qword_1EC15D488)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D488);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54ACF74()
{
  v2 = qword_1EC15D490;
  if (!qword_1EC15D490)
  {
    type metadata accessor for AppleAccountBirthdayPickerRow(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D490);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54AD00C()
{
  v2 = qword_1EC15D498;
  if (!qword_1EC15D498)
  {
    type metadata accessor for AppleAccountBirthdayPickerRow(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D498);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54AD0A4()
{
  v2 = qword_1EC15D4A0;
  if (!qword_1EC15D4A0)
  {
    type metadata accessor for AppleAccountBirthdayPickerRow(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D4A0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54AD244(uint64_t a1)
{
  v6 = sub_1C5596384();
  if (v1 <= 0x3F)
  {
    v6 = sub_1C54AD39C(319);
    if (v2 <= 0x3F)
    {
      v6 = sub_1C54AD444(319);
      if (v3 <= 0x3F)
      {
        v6 = sub_1C54AD4E8(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v6;
}

unint64_t sub_1C54AD39C(uint64_t a1)
{
  v5 = qword_1EC15D4A8;
  if (!qword_1EC15D4A8)
  {
    sub_1C55963A4();
    sub_1C549BD98();
    v4 = sub_1C55952B4();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_1EC15D4A8);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_1C54AD444(uint64_t a1)
{
  v5 = qword_1EC15D4B0;
  if (!qword_1EC15D4B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15E8A0, &qword_1C55B2350);
    v4 = sub_1C5595014();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_1EC15D4B0);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_1C54AD4E8(uint64_t a1)
{
  v5 = qword_1EC15D4B8;
  if (!qword_1EC15D4B8)
  {
    type metadata accessor for BirthdayPickerRowViewModel(255);
    v4 = sub_1C5595FB4();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_1EC15D4B8);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_1C54AD5D4(uint64_t a1)
{
  v3 = sub_1C54AD66C(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return v3;
}

unint64_t sub_1C54AD66C(uint64_t a1)
{
  v5 = qword_1EC15D4C0;
  if (!qword_1EC15D4C0)
  {
    type metadata accessor for BirthdayPickerRowViewModel(255);
    v4 = sub_1C55961F4();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_1EC15D4C0);
      return v2;
    }
  }

  return v5;
}

uint64_t sub_1C54AD708(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFB)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 4) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 251;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 5;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_1C54AD870(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFB)
  {
    v5 = ((a3 + 4) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xFB)
  {
    v4 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 4;
    }
  }

  return result;
}

uint64_t __swift_memcpy11_8(uint64_t result, uint64_t a2)
{
  *result = *a2;
  *(result + 7) = *(a2 + 7);
  return result;
}

uint64_t sub_1C54ADAA0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0xFE && *(a1 + 11))
    {
      v4 = *a1 + 254;
    }

    else
    {
      v2 = 255 - *(a1 + 8);
      if (v2 >= 0xFE)
      {
        v2 = -1;
      }

      v4 = v2;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1C54ADBC4(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = result;
  v4 = (result + 11);
  if (a2 > 0xFE)
  {
    result = 0;
    *(v3 + 10) = 0;
    *(v3 + 8) = 0;
    *v3 = a2 - 255;
    if (a3 >= 0xFF)
    {
      *v4 = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *v4 = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1C54ADD90(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFF && *(a1 + 16))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (*a1 < 0x100000000uLL)
      {
        v3 = *a1;
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

uint64_t sub_1C54ADED4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 - 1;
    }
  }

  return result;
}

unint64_t sub_1C54AE108(uint64_t a1)
{
  v4 = sub_1C54AD66C(319);
  if (v1 <= 0x3F)
  {
    v4 = sub_1C54AE1F0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v4;
}

unint64_t sub_1C54AE1F0()
{
  v2 = qword_1EC15D4C8;
  if (!qword_1EC15D4C8)
  {
    FunctionTypeMetadata0 = swift_getFunctionTypeMetadata0();
    atomic_store(FunctionTypeMetadata0, &qword_1EC15D4C8);
    return FunctionTypeMetadata0;
  }

  return v2;
}

unint64_t sub_1C54AE25C()
{
  v2 = qword_1EC15D4D0;
  if (!qword_1EC15D4D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15D4D8, qword_1C55B24F8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D4D0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54AE2EC()
{
  v2 = qword_1EC15D4E8;
  if (!qword_1EC15D4E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15D4E0, &qword_1C55B25A8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D4E8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54AE384()
{
  v2 = qword_1EC15D500;
  if (!qword_1EC15D500)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15D4F8, &unk_1C55B25B8);
    sub_1C543DAE4();
    sub_1C5430A44();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D500);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54AE42C()
{
  v2 = qword_1EC15D508;
  if (!qword_1EC15D508)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15D4F0, &qword_1C55B25B0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D508);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C54AE4BC(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C560, &qword_1C55AED80);
  (*(*(v1 - 8) + 8))(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D4F8, &unk_1C55B25B8);

  return a1;
}

uint64_t sub_1C54AE560(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C560, &qword_1C55AED80);
  (*(*(v2 - 8) + 16))(a2, a1);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D4F8, &unk_1C55B25B8) + 36);
  v6 = *(a1 + v5);

  v9 = a2 + v5;
  *(a2 + v5) = v6;
  v8 = *(a1 + v5 + 8);
  v10 = *(a1 + v5 + 16);

  result = a2;
  *(v9 + 8) = v8;
  *(v9 + 16) = v10;
  return result;
}

unint64_t sub_1C54AE658()
{
  v2 = qword_1EC15D520;
  if (!qword_1EC15D520)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15D518, &qword_1C55B25D0);
    sub_1C549E678();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D520);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54AE70C()
{
  v2 = qword_1EC15D538;
  if (!qword_1EC15D538)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15D530, &unk_1C55B25E0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D538);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54AE794()
{
  v2 = qword_1EC15D540;
  if (!qword_1EC15D540)
  {
    sub_1C5595684();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D540);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54AE814()
{
  v2 = qword_1EC15D548;
  if (!qword_1EC15D548)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15D510, &qword_1C55B25C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15D530, &unk_1C55B25E0);
    sub_1C5595684();
    sub_1C54AE70C();
    sub_1C54AE794();
    swift_getOpaqueTypeConformance2();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D548);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C54AE938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a3;
  v8[1] = a4;
  v9 = *(a3 - 8);
  v10 = a3 - 8;
  v8[0] = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](a1, a2, a3, a4);
  v11 = v8 - v8[0];
  v5(v4);
  v13 = sub_1C5596DA4();
  v14 = v6;
  (*(v9 + 8))(v11, v12);
  return v13;
}

uint64_t sub_1C54AEA1C@<X0>(uint64_t a1@<X0>, uint64_t *a7@<X8>)
{
  if (!a1)
  {
    sub_1C5596C94();
    __break(1u);
  }

  result = swift_task_create();
  *a7 = result;
  return result;
}

unint64_t sub_1C54AEB8C()
{
  v2 = qword_1EC15D550;
  if (!qword_1EC15D550)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15D3C0, &qword_1C55B1EF0);
    sub_1C54AEC30();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D550);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54AEC30()
{
  v2 = qword_1EC15D558;
  if (!qword_1EC15D558)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15D3D0, &qword_1C55B1F00);
    sub_1C54AECD8();
    sub_1C54778A8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D558);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54AECD8()
{
  v2 = qword_1EC15D560;
  if (!qword_1EC15D560)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D560);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_1C54AED54(uint64_t *a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D3C0, &qword_1C55B1EF0);
  if (!(*(*(v1 - 8) + 48))(a1, 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D3C8, &qword_1C55B1EF8);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C5412EA0(*a1, a1[1], a1[2] & 1);
    }

    else
    {

      v4 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D3D0, &qword_1C55B1F00) + 36);
      v2 = sub_1C5595754();
      (*(*(v2 - 8) + 8))(v4);
    }
  }

  return a1;
}

_OWORD *sub_1C54AEE98(_OWORD *a1, _OWORD *a2)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D3C0, &qword_1C55B1EF0);
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(a1, 1))
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D3D8, &qword_1C55B1F08);
    memcpy(a2, a1, *(*(v4 - 8) + 64));
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D3C8, &qword_1C55B1EF8);
    if (swift_getEnumCaseMultiPayload())
    {
      memcpy(a2, a1, *(*(v8 - 8) + 64));
    }

    else
    {
      *a2 = *a1;
      v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D3D0, &qword_1C55B1F00);
      v7 = a2 + *(v2 + 36);
      v6 = a1 + *(v2 + 36);
      v3 = sub_1C5595754();
      (*(*(v3 - 8) + 32))(v7, v6);
      swift_storeEnumTagMultiPayload();
    }

    (*(v12 + 56))(a2, 0, 1, v11);
  }

  return a2;
}

void *sub_1C54AF084(uint64_t *a1, void *a2)
{
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D3C0, &qword_1C55B1EF0);
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(a1, 1))
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D3D8, &qword_1C55B1F08);
    memcpy(a2, a1, *(*(v4 - 8) + 64));
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D3C8, &qword_1C55B1EF8);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v6 = *a1;
      v7 = a1[1];
      v8 = *(a1 + 16);
      sub_1C54130AC(*a1, v7, v8 & 1);
      *a2 = v6;
      a2[1] = v7;
      *(a2 + 16) = v8 & 1;
      v9 = a1[3];
      sub_1C5594CF4();
      a2[3] = v9;
    }

    else
    {
      v10 = *a1;

      *a2 = v10;
      v11 = a1[1];

      a2[1] = v11;
      v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D3D0, &qword_1C55B1F00);
      v13 = a2 + *(v2 + 36);
      v12 = a1 + *(v2 + 36);
      v3 = sub_1C5595754();
      (*(*(v3 - 8) + 16))(v13, v12);
    }

    swift_storeEnumTagMultiPayload();
    (*(v17 + 56))(a2, 0, 1, v16);
  }

  return a2;
}

unint64_t sub_1C54AF2F0()
{
  v2 = qword_1EC15D568;
  if (!qword_1EC15D568)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15D3D8, &qword_1C55B1F08);
    sub_1C54AEB8C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D568);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54AF388()
{
  v2 = qword_1EC15D570;
  if (!qword_1EC15D570)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15D3E0, &qword_1C55B1F10);
    sub_1C54893F8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D570);
    return WitnessTable;
  }

  return v2;
}

_OWORD *sub_1C54AF420(_OWORD *a1, _OWORD *a2)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D3C8, &qword_1C55B1EF8);
  if (swift_getEnumCaseMultiPayload())
  {
    memcpy(a2, a1, *(*(v9 - 8) + 64));
  }

  else
  {
    *a2 = *a1;
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D3D0, &qword_1C55B1F00);
    v6 = a2 + *(v2 + 36);
    v5 = a1 + *(v2 + 36);
    v3 = sub_1C5595754();
    (*(*(v3 - 8) + 32))(v6, v5);
    swift_storeEnumTagMultiPayload();
  }

  return a2;
}

uint64_t sub_1C54AF534(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D3C8, &qword_1C55B1EF8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = *a1;
    v6 = *(a1 + 8);
    v7 = *(a1 + 16);
    sub_1C54130AC(*a1, v6, v7 & 1);
    *a2 = v5;
    *(a2 + 8) = v6;
    *(a2 + 16) = v7 & 1;
    v8 = *(a1 + 24);
    sub_1C5594CF4();
    *(a2 + 24) = v8;
  }

  else
  {
    v9 = *a1;

    *a2 = v9;
    v10 = *(a1 + 8);

    *(a2 + 8) = v10;
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D3D0, &qword_1C55B1F00);
    v12 = a2 + *(v2 + 36);
    v11 = a1 + *(v2 + 36);
    v3 = sub_1C5595754();
    (*(*(v3 - 8) + 16))(v12, v11);
  }

  swift_storeEnumTagMultiPayload();
  return a2;
}

uint64_t *sub_1C54AF6C8(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D3C8, &qword_1C55B1EF8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1C5412EA0(*a1, a1[1], a1[2] & 1);
  }

  else
  {

    v3 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D3D0, &qword_1C55B1F00) + 36);
    v1 = sub_1C5595754();
    (*(*(v1 - 8) + 8))(v3);
  }

  return a1;
}

char *sub_1C54AF7B8(char *a1)
{

  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D3D0, &qword_1C55B1F00) + 36);
  v1 = sub_1C5595754();
  (*(*(v1 - 8) + 8))(&a1[v3]);
  return a1;
}

char *sub_1C54AF84C(char *a1, char *a2)
{
  v4 = *a1;

  *a2 = v4;
  v5 = *(a1 + 1);

  *(a2 + 1) = v5;
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D3D0, &qword_1C55B1F00) + 36);
  v2 = sub_1C5595754();
  (*(*(v2 - 8) + 16))(&a2[v6], &a1[v6]);
  return a2;
}

uint64_t sub_1C54AF918@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1C5594924();
  v3 = v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80));

  return sub_1C54A0BFC(v3, a1);
}

uint64_t sub_1C54AF98C()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = sub_1C5594924();
  v1 = sub_1C54AF9E8();

  return sub_1C54AE938(v5, v3, v4, v1);
}

unint64_t sub_1C54AF9E8()
{
  v2 = qword_1EC15D578;
  if (!qword_1EC15D578)
  {
    sub_1C5594924();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D578);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C54AFA68(uint64_t a1)
{
  v6 = v2;
  *(v2 + 16) = v2;
  v3 = *(type metadata accessor for AppleAccountBirthdayPickerRow(0) - 8);
  v9 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_1C5405B1C;

  return sub_1C54A5CAC(a1, v7, v8, v1 + v9);
}

uint64_t sub_1C54AFB7C()
{
  v1 = *(type metadata accessor for AppleAccountBirthdayPickerRow(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1C549F53C(v2);
}

uint64_t sub_1C54AFBE0()
{
  v1 = *(type metadata accessor for AppleAccountBirthdayPickerRow(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1C549F954(v2);
}

uint64_t sub_1C54AFC44(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D318, &qword_1C55B1E60);
  (*(*(v1 - 8) + 8))(a1);
  type metadata accessor for BirthdayPickerSheet(0);

  return a1;
}

uint64_t sub_1C54AFCE8(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D318, &qword_1C55B1E60);
  (*(*(v2 - 8) + 16))(a2, a1);
  v10 = type metadata accessor for BirthdayPickerSheet(0);
  *(a2 + v10[5]) = *(a1 + v10[5]);
  v7 = v10[6];
  v8 = *(a1 + v7);
  v9 = *(a1 + v7 + 8);

  v3 = (a2 + v7);
  *v3 = v8;
  v3[1] = v9;
  v12 = v10[7];
  v13 = *(a1 + v12);
  v14 = *(a1 + v12 + 8);

  result = a2;
  v5 = (a2 + v12);
  *v5 = v13;
  v5[1] = v14;
  return result;
}

uint64_t sub_1C54AFE0C(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);

  *a2 = v4;
  *(a2 + 8) = v5 & 1;
  *(a2 + 9) = *(a1 + 9);
  *(a2 + 10) = *(a1 + 10);
  memcpy((a2 + 16), a1 + 2, 0x29uLL);
  return a2;
}

uint64_t sub_1C54AFE90(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;

  *a2 = v3;
  v5 = a1[1];

  result = a2;
  *(a2 + 8) = v5;
  *(a2 + 16) = *(a1 + 16);
  return result;
}

double sub_1C54AFEF4(uint64_t a1, char a2)
{
  if (a2)
  {
    a1 = 0x7FF0000000000000;
  }

  return *&a1;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t a2)
{
  *result = *a2;
  *(result + 8) = *(a2 + 8);
  return result;
}

uint64_t sub_1C54AFF74(uint64_t a1, int a2)
{
  if (a2)
  {
    if (*(a1 + 9))
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

uint64_t sub_1C54B0084(uint64_t result, int a2, int a3)
{
  v3 = result;
  v4 = (result + 9);
  if (a2)
  {
    result = 0;
    *(v3 + 8) = 0;
    *v3 = (a2 - 1);
    if (a3)
    {
      *v4 = 1;
    }
  }

  else if (a3)
  {
    *v4 = 0;
  }

  return result;
}

uint64_t sub_1C54B02C0()
{
  result = sub_1C55965F4("com.apple.appleaccount", 22, 1);
  qword_1EC15F9A8 = result;
  qword_1EC15F9B0 = v1;
  return result;
}

uint64_t *sub_1C54B0304()
{
  if (qword_1EC15F9A0 != -1)
  {
    swift_once();
  }

  return &qword_1EC15F9A8;
}

uint64_t sub_1C54B0364()
{
  v1 = sub_1C54B0304();
  swift_beginAccess();
  v2 = *v1;
  sub_1C5594CF4();
  swift_endAccess();
  return v2;
}

uint64_t sub_1C54B03C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C54B0304();
  sub_1C5594CF4();
  swift_beginAccess();
  *v4 = a1;
  v4[1] = a2;

  swift_endAccess();
}

uint64_t sub_1C54B0448()
{
  v1 = sub_1C5594C74();
  __swift_allocate_value_buffer(v1, qword_1EC16B3E0);
  __swift_project_value_buffer(v1, qword_1EC16B3E0);
  sub_1C54B0304();
  swift_beginAccess();
  sub_1C5594CF4();
  swift_endAccess();
  sub_1C55965F4("AAUI", 4, 1);
  return sub_1C5594C64();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v5 = a2;
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v2 = swift_slowAlloc();
    *a2 = v2;
    return v2;
  }

  return v5;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    return *a2;
  }

  return v3;
}

uint64_t sub_1C54B05F8()
{
  if (qword_1EC15F9B8 != -1)
  {
    swift_once();
  }

  v0 = sub_1C5594C74();
  return __swift_project_value_buffer(v0, qword_1EC16B3E0);
}

uint64_t sub_1C54B0664@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C54B05F8();
  v1 = sub_1C5594C74();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1C54B06C8()
{
  v1 = sub_1C5594C74();
  __swift_allocate_value_buffer(v1, qword_1EC16B470);
  __swift_project_value_buffer(v1, qword_1EC16B470);
  sub_1C54B0304();
  swift_beginAccess();
  sub_1C5594CF4();
  swift_endAccess();
  sub_1C55965F4("ui.pps", 6, 1);
  return sub_1C5594C64();
}

uint64_t sub_1C54B0784()
{
  if (qword_1EC163D58 != -1)
  {
    swift_once();
  }

  v0 = sub_1C5594C74();
  return __swift_project_value_buffer(v0, qword_1EC16B470);
}

uint64_t sub_1C54B07F0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C54B0784();
  v1 = sub_1C5594C74();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1C54B0854()
{
  v1 = sub_1C5594C74();
  __swift_allocate_value_buffer(v1, qword_1EC16B488);
  __swift_project_value_buffer(v1, qword_1EC16B488);
  sub_1C54B0304();
  swift_beginAccess();
  sub_1C5594CF4();
  swift_endAccess();
  sub_1C55965F4("signout", 7, 1);
  return sub_1C5594C64();
}

uint64_t sub_1C54B0910()
{
  if (qword_1EC163D60 != -1)
  {
    swift_once();
  }

  v0 = sub_1C5594C74();
  return __swift_project_value_buffer(v0, qword_1EC16B488);
}

uint64_t sub_1C54B097C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C54B0910();
  v1 = sub_1C5594C74();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t AAUIWalletCardListItem.uniqueIdentifier.getter()
{
  v2 = (v0 + OBJC_IVAR___AAUIWalletCardListItem_uniqueIdentifier);
  swift_beginAccess();
  v3 = *v2;
  sub_1C5594CF4();
  swift_endAccess();
  return v3;
}

uint64_t AAUIWalletCardListItem.uniqueIdentifier.setter(uint64_t a1, uint64_t a2)
{
  sub_1C5594CF4();
  v5 = (v2 + OBJC_IVAR___AAUIWalletCardListItem_uniqueIdentifier);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  swift_endAccess();
}

double sub_1C54B0C98@<D0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v10 = *a1;
  v11 = [*a1 uniqueIdentifier];
  if (v11)
  {
    v5 = sub_1C5596574();
    v6 = v3;
    MEMORY[0x1E69E5920](v11);
    v7 = v5;
    v8 = v6;
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  *a3 = v7;
  a3[1] = v8;
  *&result = MEMORY[0x1E69E5920](v10).n128_u64[0];
  return result;
}

double sub_1C54B0D7C(void *a1, void *a2)
{
  sub_1C5402BDC(a1, v8);
  v7 = v8[1];
  v6 = *a2;
  MEMORY[0x1E69E5928](*a2, a2);
  if (v7)
  {
    v4 = sub_1C5596554();

    [v6 setUniqueIdentifier_];
  }

  else
  {
    [v6 setUniqueIdentifier_];
  }

  MEMORY[0x1E69E5920](v3);
  *&result = MEMORY[0x1E69E5920](v6).n128_u64[0];
  return result;
}

uint64_t AAUIWalletCardListItem.icon.getter()
{
  v3 = (v0 + OBJC_IVAR___AAUIWalletCardListItem_icon);
  swift_beginAccess();
  v4 = *v3;
  MEMORY[0x1E69E5928](*v3, v1);
  swift_endAccess();
  return v4;
}

double AAUIWalletCardListItem.icon.setter(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1E69E5928](a1, a2);
  v5 = (v2 + OBJC_IVAR___AAUIWalletCardListItem_icon);
  swift_beginAccess();
  v3 = *v5;
  *v5 = a1;
  MEMORY[0x1E69E5920](v3);
  swift_endAccess();
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

double sub_1C54B1058@<D0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  *a3 = [*a1 icon];
  *&result = MEMORY[0x1E69E5920](v4).n128_u64[0];
  return result;
}

double sub_1C54B10CC(void *a1, void *a2)
{
  sub_1C5402C1C(a1, &v6);
  v4 = v6;
  v5 = *a2;
  [*a2 setIcon_];
  MEMORY[0x1E69E5920](v5);
  *&result = MEMORY[0x1E69E5920](v4).n128_u64[0];
  return result;
}

uint64_t AAUIWalletCardListItem.title.getter()
{
  v2 = (v0 + OBJC_IVAR___AAUIWalletCardListItem_title);
  swift_beginAccess();
  v3 = *v2;
  sub_1C5594CF4();
  swift_endAccess();
  return v3;
}

uint64_t AAUIWalletCardListItem.title.setter(uint64_t a1, uint64_t a2)
{
  sub_1C5594CF4();
  v5 = (v2 + OBJC_IVAR___AAUIWalletCardListItem_title);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  swift_endAccess();
}

double sub_1C54B140C@<D0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v10 = *a1;
  v11 = [*a1 title];
  if (v11)
  {
    v5 = sub_1C5596574();
    v6 = v3;
    MEMORY[0x1E69E5920](v11);
    v7 = v5;
    v8 = v6;
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  *a3 = v7;
  a3[1] = v8;
  *&result = MEMORY[0x1E69E5920](v10).n128_u64[0];
  return result;
}

double sub_1C54B14F0(void *a1, void *a2)
{
  sub_1C5402BDC(a1, v8);
  v7 = v8[1];
  v6 = *a2;
  MEMORY[0x1E69E5928](*a2, a2);
  if (v7)
  {
    v4 = sub_1C5596554();

    [v6 setTitle_];
  }

  else
  {
    [v6 setTitle_];
  }

  MEMORY[0x1E69E5920](v3);
  *&result = MEMORY[0x1E69E5920](v6).n128_u64[0];
  return result;
}

uint64_t AAUIWalletCardListItem.subtitle.getter()
{
  v2 = (v0 + OBJC_IVAR___AAUIWalletCardListItem_subtitle);
  swift_beginAccess();
  v3 = *v2;
  sub_1C5594CF4();
  swift_endAccess();
  return v3;
}

uint64_t AAUIWalletCardListItem.subtitle.setter(uint64_t a1, uint64_t a2)
{
  sub_1C5594CF4();
  v5 = (v2 + OBJC_IVAR___AAUIWalletCardListItem_subtitle);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  swift_endAccess();
}

double sub_1C54B1898@<D0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v10 = *a1;
  v11 = [*a1 subtitle];
  if (v11)
  {
    v5 = sub_1C5596574();
    v6 = v3;
    MEMORY[0x1E69E5920](v11);
    v7 = v5;
    v8 = v6;
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  *a3 = v7;
  a3[1] = v8;
  *&result = MEMORY[0x1E69E5920](v10).n128_u64[0];
  return result;
}

double sub_1C54B197C(void *a1, void *a2)
{
  sub_1C5402BDC(a1, v8);
  v7 = v8[1];
  v6 = *a2;
  MEMORY[0x1E69E5928](*a2, a2);
  if (v7)
  {
    v4 = sub_1C5596554();

    [v6 setSubtitle_];
  }

  else
  {
    [v6 setSubtitle_];
  }

  MEMORY[0x1E69E5920](v3);
  *&result = MEMORY[0x1E69E5920](v6).n128_u64[0];
  return result;
}

id AAUIWalletCardListItem.init(title:subtitle:icon:uniqueIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v19 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  if (a2)
  {
    v13 = sub_1C5596554();

    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (a4)
  {
    v11 = sub_1C5596554();

    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (a7)
  {
    v9 = sub_1C5596554();

    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v8 = [v19 initWithTitle:v14 subtitle:v12 icon:a5 uniqueIdentifier:?];
  MEMORY[0x1E69E5920](v10);
  MEMORY[0x1E69E5920](a5);
  MEMORY[0x1E69E5920](v12);
  MEMORY[0x1E69E5920](v14);
  return v8;
}

char *AAUIWalletCardListItem.init(title:subtitle:icon:uniqueIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v37 = 0;
  v35 = a1;
  v36 = a2;
  v33 = a3;
  v34 = a4;
  v32 = a5;
  v30 = a6;
  v31 = a7;
  v7 = OBJC_IVAR___AAUIWalletCardListItem_uniqueIdentifier;
  *OBJC_IVAR___AAUIWalletCardListItem_uniqueIdentifier = 0;
  *(v7 + 8) = 0;
  *&v37[OBJC_IVAR___AAUIWalletCardListItem_icon] = 0;
  v8 = &v37[OBJC_IVAR___AAUIWalletCardListItem_title];
  *v8 = 0;
  *(v8 + 1) = 0;
  v9 = &v37[OBJC_IVAR___AAUIWalletCardListItem_subtitle];
  *v9 = 0;
  *(v9 + 1) = 0;
  sub_1C5594CF4();
  v15 = &v37[OBJC_IVAR___AAUIWalletCardListItem_title];
  swift_beginAccess();
  *v15 = a1;
  *(v15 + 1) = a2;

  swift_endAccess();
  v16 = v37;
  sub_1C5594CF4();
  v18 = &v16[OBJC_IVAR___AAUIWalletCardListItem_subtitle];
  swift_beginAccess();
  *v18 = a3;
  *(v18 + 1) = a4;

  swift_endAccess();
  v19 = v37;
  MEMORY[0x1E69E5928](a5, v10);
  v20 = &v19[OBJC_IVAR___AAUIWalletCardListItem_icon];
  swift_beginAccess();
  v11 = *v20;
  *v20 = a5;
  MEMORY[0x1E69E5920](v11);
  swift_endAccess();
  v21 = v37;
  sub_1C5594CF4();
  v23 = &v21[OBJC_IVAR___AAUIWalletCardListItem_uniqueIdentifier];
  swift_beginAccess();
  *v23 = a6;
  *(v23 + 1) = a7;

  swift_endAccess();
  v29.receiver = v37;
  v29.super_class = AAUIWalletCardListItem;
  v28 = objc_msgSendSuper2(&v29, sel_init);
  MEMORY[0x1E69E5928](v28, v12);
  v37 = v28;

  MEMORY[0x1E69E5920](a5);

  MEMORY[0x1E69E5920](v37);
  return v28;
}

uint64_t sub_1C54B225C@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for AAUIWalletCardListItem();
  result = sub_1C5596BB4();
  *a2 = result;
  return result;
}

unint64_t type metadata accessor for AAUIWalletCardListItem()
{
  v2 = qword_1EC163DF0[0];
  if (!qword_1EC163DF0[0])
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, qword_1EC163DF0);
    return ObjCClassMetadata;
  }

  return v2;
}

void *sub_1C54B2338@<X0>(uint64_t a1@<X8>)
{
  v8 = a1;
  v11 = 0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CEF0, &unk_1C55B26E0);
  v7 = (*(*(v9 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6, v1, v2, v3);
  v10 = (&v6 - v7);
  v11 = v4;
  sub_1C548032C(v4, (&v6 - v7));
  sub_1C5595004();
  return sub_1C5480400(v10);
}

void *sub_1C54B2468(void *a1)
{
  v9 = a1;
  v11 = 0;
  v10 = 0;
  v7[0] = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CEF0, &unk_1C55B26E0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9, v2, v3, v4);
  v8 = (v7 - v7[0]);
  v11 = v5;
  v10 = v1;
  sub_1C548032C(v5, (v7 - v7[0]));
  sub_1C5480748(v8, v7[1]);
  return sub_1C5480400(v9);
}

uint64_t sub_1C54B2520()
{
  type metadata accessor for SharedNameRowView(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E0D0, &qword_1C55AEA90);
  sub_1C5595F84();

  return v1;
}

uint64_t type metadata accessor for SharedNameRowView(uint64_t a1)
{
  v2 = qword_1EC1640A0;
  if (!qword_1EC1640A0)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t sub_1C54B2638(uint64_t a1)
{
  v6[2] = 0;
  v6[3] = a1;
  v2 = (v1 + *(type metadata accessor for SharedNameRowView(0) + 20));
  v4 = *v2;
  v5 = v2[1];

  v6[0] = v4;
  v6[1] = v5;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E0D0, &qword_1C55AEA90);
  sub_1C5595F94();
  sub_1C5436F54(v6);
}

void (*sub_1C54B271C(void *a1))(void **a1, char a2)
{
  v1 = __swift_coroFrameAllocStub(0x60uLL, 12203);
  *a1 = v1;
  v2 = (v4 + *(type metadata accessor for SharedNameRowView(0) + 20));
  v5 = *v2;
  v1[9] = *v2;
  v6 = v2[1];
  v1[10] = v6;

  *v1 = v5;
  v1[1] = v6;
  v1[11] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E0D0, &qword_1C55AEA90);
  sub_1C5595F84();
  return sub_1C5437078;
}

uint64_t sub_1C54B2808()
{
  type metadata accessor for SharedNameRowView(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E0D0, &qword_1C55AEA90);
  sub_1C5595FA4();

  return v1;
}

uint64_t sub_1C54B28C4()
{
  v2 = *(v0 + *(type metadata accessor for SharedNameRowView(0) + 20));

  return v2;
}

uint64_t sub_1C54B291C(uint64_t a1, uint64_t a2)
{

  v3 = (v2 + *(type metadata accessor for SharedNameRowView(0) + 20));
  *v3 = a1;
  v3[1] = a2;
}

uint64_t sub_1C54B29B0()
{
  type metadata accessor for SharedNameRowView(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD40, &unk_1C55ADA60);
  sub_1C5595F84();

  return v1 & 1;
}

uint64_t sub_1C54B2A48(char a1)
{
  v8 = 0;
  v9 = a1 & 1;
  v2 = (v1 + *(type metadata accessor for SharedNameRowView(0) + 24));
  v4 = *v2;
  v5 = *(v2 + 1);

  v6[0] = v4;
  v7 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD40, &unk_1C55ADA60);
  sub_1C5595F94();
  sub_1C5373718(v6);
}

void (*sub_1C54B2B0C(void *a1))(uint64_t *a1, char a2)
{
  v1 = __swift_coroFrameAllocStub(0x48uLL, 9407);
  *a1 = v1;
  v2 = (v4 + *(type metadata accessor for SharedNameRowView(0) + 24));
  v5 = *v2;
  v1[67] = *v2 & 1;
  v6 = *(v2 + 1);
  *(v1 + 6) = v6;

  *v1 = v5;
  *(v1 + 1) = v6;
  *(v1 + 7) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD40, &unk_1C55ADA60);
  sub_1C5595F84();
  return sub_1C542E3F0;
}

uint64_t sub_1C54B2BF8()
{
  type metadata accessor for SharedNameRowView(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD40, &unk_1C55ADA60);
  sub_1C5595FA4();

  return v1;
}

uint64_t sub_1C54B2CA8()
{
  v2 = *(v0 + *(type metadata accessor for SharedNameRowView(0) + 24));

  return v2 & 1;
}

uint64_t sub_1C54B2CFC(char a1, uint64_t a2)
{

  v3 = v2 + *(type metadata accessor for SharedNameRowView(0) + 24);
  *v3 = a1;
  *(v3 + 8) = a2;
}

uint64_t sub_1C54B2D74()
{
  v3 = *(v0 + *(type metadata accessor for SharedNameRowView(0) + 28));
  MEMORY[0x1E69E5928](v3, v1);
  return v3;
}

unint64_t sub_1C54B2E0C()
{
  v2 = qword_1EC163E08;
  if (!qword_1EC163E08)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC163E08);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54B2F88()
{
  v2 = qword_1EC163E10[0];
  if (!qword_1EC163E10[0])
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, qword_1EC163E10);
    return WitnessTable;
  }

  return v2;
}

uint64_t SharedNameRowView.id.getter()
{
  v2 = *(v0 + *(type metadata accessor for SharedNameRowView(0) + 32));
  sub_1C5594CF4();
  return v2;
}

uint64_t SharedNameRowView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v75 = a1;
  v38 = sub_1C54B3CB4;
  v35 = sub_1C54B3E9C;
  v47 = MEMORY[0x1E697CDC0];
  v48 = sub_1C54B4874;
  v62 = sub_1C54B4E8C;
  v71 = MEMORY[0x1E697D510];
  v93 = 0;
  v92 = 0;
  v61 = 0;
  v1 = type metadata accessor for SharedNameRowView(0);
  v25 = *(v1 - 8);
  v32 = v25;
  v56 = *(v25 + 64);
  v26 = (v56 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1, v2, v3, v4);
  v59 = &v25 - v26;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D5A0, &qword_1C55B2720);
  v39 = *(v43 - 8);
  v40 = v43 - 8;
  v27 = (*(v39 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v43, v5, v6, v7);
  v41 = &v25 - v27;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D5A8, &qword_1C55B2728);
  v50 = *(v53 - 8);
  v51 = v53 - 8;
  v28 = (*(v50 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v53, v8, v9, v10);
  v52 = &v25 - v28;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D5B0, &qword_1C55B2730);
  v29 = (*(*(v67 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v67, v11, v12, v13);
  v66 = &v25 - v29;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D5B8, &unk_1C55B2738);
  v73 = *(v79 - 8);
  v74 = v79 - 8;
  v30 = (*(v73 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v54, v59, v14, v15);
  v77 = &v25 - v30;
  v31 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v17, v18, &v25 - v30, v19);
  v78 = &v25 - v31;
  v93 = &v25 - v31;
  v92 = v20;
  sub_1C54B39A8(v20, v21);
  v55 = *(v32 + 80);
  v33 = (v55 + 16) & ~v55;
  v57 = 7;
  v34 = swift_allocObject();
  sub_1C54B3B90(v59, (v34 + v33));
  v36 = &v82;
  v83 = v54;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CF58, &qword_1C55B1250);
  sub_1C5481D70();
  sub_1C5595FD4();
  nullsub_1();
  v45 = sub_1C54B4544();
  v46 = sub_1C54B45CC();
  v44 = &unk_1F447A140;
  sub_1C5595AD4();
  (*(v39 + 8))(v41, v43);
  sub_1C54B39A8(v54, v59);
  v42 = (v55 + 16) & ~v55;
  v49 = swift_allocObject();
  sub_1C54B3B90(v59, (v49 + v42));
  v88 = v43;
  v89 = v44;
  v90 = v45;
  v91 = v46;
  v72 = 1;
  swift_getOpaqueTypeConformance2();
  sub_1C5595DC4();
  sub_1C5411348(v48, v49);
  (*(v50 + 8))(v52, v53);
  v64 = sub_1C54B2BF8();
  v65 = v22;
  v60 = v23;
  sub_1C54B39A8(v54, v59);
  v58 = (v55 + 16) & ~v55;
  v63 = swift_allocObject();
  sub_1C54B3B90(v59, (v63 + v58));
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D5D0, &qword_1C55B2748);
  v69 = sub_1C54B4F00();
  v70 = sub_1C54B5014();
  sub_1C5595D34();

  sub_1C5367458(v66);
  v84 = v67;
  v85 = v68;
  v86 = v69;
  v87 = v70;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1C540EFD8(v77, v79, v78);
  v81 = *(v73 + 8);
  v80 = v73 + 8;
  v81(v77, v79);
  (*(v73 + 16))(v77, v78, v79);
  sub_1C540EFD8(v77, v79, v75);
  v81(v77, v79);
  return (v81)(v78, v79);
}