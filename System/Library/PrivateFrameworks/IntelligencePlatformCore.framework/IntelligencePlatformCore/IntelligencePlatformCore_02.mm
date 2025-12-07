uint64_t sub_1C4430D14(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1C43FBCE0();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C4430D74(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1C43FBCE0();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C4430DD4()
{
  sub_1C4404078();
  v1(0);
  sub_1C43FBCE0();
  v2 = sub_1C43FBC98();
  v3(v2);
  return v0;
}

uint64_t sub_1C4430E2C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1C43FBCE0();
  v4 = sub_1C43FBC98();
  v5(v4);
  return a2;
}

uint64_t sub_1C4430E88(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1C43FBCE0();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C4430EE8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1C43FBCE0();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C4430F48(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C4430FB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C43FBE94();
  v6 = v5(v4);
  (*(*(v6 - 8) + 16))(a2, v2, v6);
  return a2;
}

uint64_t sub_1C4431014(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1C43FBCE0();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C4431074(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1C43FBCE0();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C44310D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C443113C(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C43FBE94();
  v4(v3);
  sub_1C43FBCE0();
  v5 = sub_1C43FBC98();
  v6(v5);
  return a2;
}

uint64_t sub_1C4431194(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1C43FBCE0();
  v4 = sub_1C43FBC98();
  v5(v4);
  return a2;
}

uint64_t sub_1C44311F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C4431258(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C44312C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C43FBE94();
  v5(v4);
  sub_1C43FBCE0();
  (*(v6 + 16))(a2, v2);
  return a2;
}

uint64_t sub_1C443131C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1C43FBCE0();
  (*(v5 + 16))(a2, a1);
  return a2;
}

void sub_1C443137C()
{
  v1 = v0;
  v2 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBD08();
  v8 = v6 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v21[-v10];
  v12 = *(v1 + OBJC_IVAR____TtC24IntelligencePlatformCore25ErrorHandlingDatabasePool_lockedBox);
  os_unfair_lock_lock((v12 + 24));
  sub_1C4EF9C88();
  v13 = *(v12 + 16);
  v14 = OBJC_IVAR____TtCC24IntelligencePlatformCore25ErrorHandlingDatabasePool11GuardedData_lastVaccumDate;
  swift_beginAccess();
  (*(v4 + 16))(v8, v13 + v14, v2);
  sub_1C4EF9B78();
  v16 = v15;
  v17 = *(v4 + 8);
  v17(v8, v2);
  if (v16 <= 10.0)
  {
    v17(v11, v2);
    os_unfair_lock_unlock((v12 + 24));
  }

  else
  {
    v18 = *(v12 + 16);
    v19 = OBJC_IVAR____TtCC24IntelligencePlatformCore25ErrorHandlingDatabasePool11GuardedData_lastVaccumDate;
    swift_beginAccess();
    (*(v4 + 24))(v18 + v19, v11, v2);
    swift_endAccess();
    v17(v11, v2);
    os_unfair_lock_unlock((v12 + 24));
    do
    {
      sub_1C44653AC();
    }

    while (v20 == 250);
  }
}

uint64_t sub_1C443156C(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_1C4F02128();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

unint64_t sub_1C4431598(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1C44315D0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1C4EF9CD8();
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 36);
    }

    else
    {
      v9 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
      v10 = *(a4 + 40);
    }

    return sub_1C440BAA8(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_1C44316B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0BC660, &qword_1C4F29150);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C4431720()
{
  v34 = v0;
  v1 = sub_1C4428BF0();
  v0[6] = v1;
  v2 = v0[4];
  if (!v1)
  {
    *(v2 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate12JobScheduler_executionLoop) = 0;

    v9 = (v2 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate12JobScheduler_lastOnWorkerJob);
    goto LABEL_11;
  }

  v3 = v1;
  v4 = OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate12JobScheduler_executionLoopOwnedJob;
  v0[7] = OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate12JobScheduler_executionLoopOwnedJob;
  if (*(v2 + v4))
  {
    if (qword_1EDDFD018 != -1)
    {
      sub_1C4400660(&qword_1EDDFD018);
    }

    v5 = sub_1C4F00978();
    sub_1C442B738(v5, qword_1EDE2DDF8);
    v6 = sub_1C4F00968();
    v7 = sub_1C4F01CE8();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1C43F8000, v6, v7, "ViewUpdate.JobScheduler/ExecutionLoop: executionLoopOwnedJob expected to be nil. Multiple execution loops may be running.", v8, 2u);
      sub_1C43FEA20();
    }
  }

  *(v2 + v4) = v3;
  swift_retain_n();

  v10 = v0[4];
  if (*(v3 + OBJC_IVAR____TtCCO24IntelligencePlatformCore10ViewUpdate12JobScheduler10JobTracker_cancelled))
  {

    sub_1C4F01828();
    sub_1C4411404();
    sub_1C4428DF0(v11, v12, MEMORY[0x1E69E8558]);
    v13 = swift_allocError();
    sub_1C4F00EA8();
    sub_1C4474164(v3, v13, 1);

    v9 = (v0[4] + v0[7]);
    sub_1C4429198();

LABEL_11:
    *v9 = 0;

    sub_1C43FBDA0();
    sub_1C440A264();

    __asm { BRAA            X1, X16 }
  }

  v16 = OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate12JobScheduler_lastOnWorkerJob;
  v17 = *(v10 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate12JobScheduler_lastOnWorkerJob);
  v18 = v3[5];
  v19 = v3[6];
  sub_1C4409678(v3 + 2, v18);
  (*(v19 + 8))(&v33, v18, v19);
  if (v33 >= 2u)
  {
    sub_1C4F018A8();
  }

  else
  {
    sub_1C4F01898();
  }

  v20 = v0[4];
  v21 = v0[5];
  v22 = sub_1C4F018C8();
  sub_1C440BAA8(v21, 0, 1, v22);
  sub_1C440B750();
  v25 = sub_1C4428DF0(v23, v24, &unk_1C4F6A794);
  v26 = swift_allocObject();
  *(v26 + 16) = v20;
  *(v26 + 24) = v25;
  *(v26 + 32) = v20;
  *(v26 + 40) = v3;
  *(v26 + 48) = v17 != v3;
  swift_retain_n();

  sub_1C4785480();
  v28 = v27;
  v0[8] = v27;
  *(v10 + v16) = v3;

  *(v20 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate12JobScheduler_currentlyRunningJob) = v3;

  *(v20 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate12JobScheduler_currentJobTask) = v28;

  swift_task_alloc();
  sub_1C43FBE70();
  v0[9] = v29;
  *v29 = v30;
  v29[1] = sub_1C44599A4;
  sub_1C440A264();

  return MEMORY[0x1EEE6DA40]();
}

uint64_t sub_1C4431B24()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 49, 7);
}

uint64_t sub_1C4431B6C()
{
  sub_1C43FCF70();
  sub_1C44048B0();
  v0 = swift_task_alloc();
  v1 = sub_1C43FCF54(v0);
  *v1 = v2;
  sub_1C4408024(v1);

  return sub_1C4431C00();
}

uint64_t sub_1C4431C00()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C442E8C4;

  return sub_1C4431C90();
}

uint64_t sub_1C4431C90()
{
  *(v1 + 32) = v0;
  sub_1C456902C(&qword_1EC0BC660, &qword_1C4F29150);
  *(v1 + 40) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4431720, v0, 0);
}

uint64_t sub_1C4431D2C()
{
  sub_1C43FCF70();
  sub_1C44250A8();
  v0 = swift_task_alloc();
  v1 = sub_1C43FCF54(v0);
  *v1 = v2;
  v3 = sub_1C4406C84(v1);

  return v4(v3);
}

uint64_t sub_1C4431DBC()
{
  sub_1C43FEAEC();
  sub_1C44048B0();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = swift_task_alloc();
  v5 = sub_1C43FCF54(v4);
  *v5 = v6;
  v7 = sub_1C4408024(v5);

  return sub_1C44362AC(v7, v8, v9, v1, v2, v3);
}

uint64_t sub_1C4431E64(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1C44344B8(a1, a2);
  }

  return a1;
}

void sub_1C4431E90(uint64_t a1@<X8>)
{
  *(v6 + v1) |= v2;
  v7 = (*(v3 + 48) + 16 * a1);
  *v7 = v4;
  v7[1] = v5;
}

uint64_t sub_1C4431EB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
}

void sub_1C4431EE4()
{

  JUMPOUT(0x1C6940010);
}

void sub_1C4431F38(void *a1@<X8>)
{
  *a1 = v3;
  a1[1] = v2;
  v6 = *(v4 - 152);
  v5 = *(v4 - 144);
  a1[2] = v1;
  a1[3] = v6;
  a1[4] = v5;
}

id sub_1C4431F4C(uint64_t a1)
{
  *(v2 + 14) = a1;
  *(v2 + 22) = 2112;

  return v1;
}

uint64_t sub_1C4431FBC()
{

  return sub_1C4F01578();
}

void sub_1C4432008()
{
  *(v3 + v2[5]) = 9;
  v6 = (v3 + v2[7]);
  *v6 = v4;
  v6[1] = v5;
  *(v3 + v2[8]) = v1;
  *(v3 + v2[9]) = v0 & 1;
}

uint64_t sub_1C4432038()
{
  v2 = *(v0 - 128);

  return sub_1C465B5E0(v2, type metadata accessor for BMAppleMusicEventStructs.Song);
}

uint64_t sub_1C4432060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{

  return sub_1C4EFDAC8();
}

uint64_t sub_1C4432088()
{

  return sub_1C449F128();
}

uint64_t sub_1C44320F0(uint64_t result)
{
  v4 = (v1 + *(result + 20));
  *v4 = v2;
  v4[1] = v3;
  return result;
}

uint64_t sub_1C4432138()
{

  return sub_1C440BAA8(v0, 1, 1, v1);
}

uint64_t sub_1C4432158(uint64_t a1)
{

  return sub_1C4F01068();
}

uint64_t sub_1C443217C()
{
}

uint64_t sub_1C44321A4@<X0>(uint64_t a1@<X8>)
{
  v6 = v4 + a1;
  *v6 = v2;
  *(v6 + 8) = 0;

  return sub_1C46EF088(v3 + v1);
}

uint64_t sub_1C44321EC()
{
  v2 = *(v0 - 336);

  return sub_1C47241D8(v2);
}

id sub_1C4432224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_1C4673B1C(0xD000000000000013, a2, a3, a4, 0, 0);
}

__n128 sub_1C44322E0(__n128 *a1)
{
  result = *(v1 - 336);
  a1[1] = result;
  return result;
}

uint64_t sub_1C4432358()
{

  return swift_slowAlloc();
}

void sub_1C4432374()
{

  JUMPOUT(0x1C6940010);
}

uint64_t sub_1C44323EC()
{
}

uint64_t sub_1C443241C()
{

  return MEMORY[0x1EEE09CC8](v0 - 160);
}

uint64_t sub_1C4432464()
{
  type metadata accessor for HUTenPointBehaviors(0);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t sub_1C4432598(uint64_t result)
{
  v2[30] = *(v1 + 336);
  v2[33] = result;
  v2[34] = 0x656C61636F6CLL;
  v2[35] = 0xE600000000000000;
  return result;
}

uint64_t sub_1C44325E8()
{
}

uint64_t sub_1C4432674()
{
}

uint64_t sub_1C44326A8()
{
  v2 = *(v0 - 296);

  return sub_1C4A31CB4(v2, type metadata accessor for EntityMatch);
}

uint64_t sub_1C44326E4(uint64_t a1)
{

  return sub_1C4F02938();
}

uint64_t sub_1C4432760(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1C4F02BC8();
}

uint64_t sub_1C44327E4(uint64_t a1)
{

  return swift_beginAccess();
}

void sub_1C4432824()
{
  v5 = *(v3 - 192);
  *(v5 + 8 * (v0 >> 6) + 64) |= 1 << v0;
  v6 = (*(v5 + 48) + 16 * v0);
  *v6 = v1;
  v6[1] = v2;
  *(*(v5 + 56) + 8 * v0) = v4;
}

uint64_t sub_1C44328A0()
{

  return sub_1C446F0D0(v0, v1);
}

uint64_t sub_1C44328B8()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t sub_1C44328E0()
{
}

uint64_t sub_1C44329A8(uint64_t a1, uint64_t a2)
{

  return sub_1C4F02938();
}

uint64_t sub_1C44329E0(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1C4432A54()
{

  return sub_1C4423A0C(v0, v1, v2);
}

uint64_t sub_1C4432A94()
{
  v0[9] = v4;
  v0[10] = 0x79676F6C6F746E4FLL;
  v0[11] = v2;

  return sub_1C44098F0(v1, v3);
}

uint64_t sub_1C4432AC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = (v3 + a3);
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_1C4432B50()
{

  return MEMORY[0x1EEE12868](v1, v0);
}

uint64_t sub_1C4432B88(uint64_t a1)
{

  return sub_1C4EF9328();
}

uint64_t sub_1C4432BAC()
{

  return sub_1C4423A0C(v2 - 144, v0, v1);
}

uint64_t sub_1C4432C18()
{

  return swift_arrayDestroy();
}

uint64_t sub_1C4432C38(unint64_t *a1)
{
  v4 = MEMORY[0x1E69E6310];

  return sub_1C4401CBC(a1, v1, v2, v4);
}

void sub_1C4432C74()
{
  v1 = v0[3];
  v0[9] = *(*(v0[2] + 56) + 96);
  v0[10] = *(v1 + 32);
}

uint64_t sub_1C4432C90(__n128 *a1, __n128 a2)
{
  a1[1] = a2;

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C4432D08()
{

  return sub_1C4C47184(v0, type metadata accessor for GraphTriple);
}

uint64_t sub_1C4432DA8()
{

  return swift_arrayDestroy();
}

uint64_t sub_1C4432DC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{

  return sub_1C4F02438();
}

uint64_t sub_1C4432E68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{

  return swift_dynamicCast();
}

uint64_t sub_1C4432EAC(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t sub_1C4432F50(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1C4433038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_1C4F02938();
}

uint64_t sub_1C4433058(uint64_t a1, uint64_t a2)
{

  return sub_1C4F025E8();
}

uint64_t sub_1C443307C(uint64_t a1)
{

  return sub_1C4F02938();
}

void *sub_1C443309C(uint64_t a1, ...)
{

  return sub_1C4F02AF8();
}

void sub_1C4433104(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

uint64_t sub_1C4433124()
{
  result = v1;
  *(v3 - 104) = v1;
  *(v3 - 96) = v0;
  *(v3 - 160) = v2;
  return result;
}

uint64_t sub_1C44331AC(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_1C44331C4()
{

  return sub_1C440BAA8(v0, 1, 1, v1);
}

uint64_t sub_1C44331F4()
{
}

uint64_t sub_1C443327C()
{

  return sub_1C45D72D0(v0, (v1 + 16), v2 - 232);
}

uint64_t sub_1C4433298()
{
  v2 = *(v0 + 176);

  return sub_1C448D818(v2);
}

uint64_t sub_1C44332C4(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1C4433340@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = (v3 + a3);
  *v4 = result;
  v4[1] = a2;
  return result;
}

double sub_1C443335C()
{

  return sub_1C465C7A0();
}

uint64_t *sub_1C44333C8()
{
  v3 = *(v0 + 8);
  *(v1 - 168) = v3;
  *(v1 - 88) = v3;

  return sub_1C4422F90((v1 - 120));
}

void sub_1C44333E8()
{
}

void sub_1C4433434(unint64_t a1@<X8>)
{

  sub_1C459D100(a1 > 1, v1, 1);
}

BOOL sub_1C4433458(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

__n128 sub_1C443349C(__n128 *a1)
{
  result = *(v1 - 288);
  a1[1] = result;
  return result;
}

uint64_t sub_1C44334B8(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1C44334F8()
{
  v3 = (v1 + *(v0 + 40));
  *v3 = 0;
  v3[1] = 0;

  return sub_1C4EFE478();
}

uint64_t sub_1C44335C4()
{
  v2 = v0[15];
  v3 = v0[16];
  v0[90] = v2;
  v0[91] = v3;

  return sub_1C4418280((v0 + 12), v2);
}

uint64_t sub_1C44335E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{

  return sub_1C4F02358();
}

uint64_t sub_1C4433648(uint64_t a1)
{

  return swift_beginAccess();
}

uint64_t sub_1C4433678@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v2 - 208);

  return sub_1C447212C(a1 + v1, v4);
}

uint64_t sub_1C443373C(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1C443375C(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1C443377C(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1C443379C@<X0>(uint64_t a1@<X8>, int a2, __int16 a3, char a4, char a5)
{
  a5 = *(v5 + a1);

  return sub_1C4495FC0(&a5);
}

void sub_1C44337B8()
{

  JUMPOUT(0x1C6940010);
}

uint64_t sub_1C4433834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_1C4EF9498();
}

uint64_t sub_1C4433858(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1C4433898()
{

  return sub_1C4EFB638();
}

uint64_t sub_1C44338B8()
{

  return sub_1C4423A0C(v2 - 120, v0, v1);
}

uint64_t sub_1C44338D4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[26] = result;
  v7[27] = a2;
  v7[28] = a3;
  v7[29] = a4;
  v7[30] = a5;
  v7[31] = a6;
  v7[32] = a7;
  return result;
}

uint64_t sub_1C44338E8@<X0>(uint64_t a2@<X8>)
{
  v5 = *(v3 - 96);
  *(v5 + 24) = a2;
  *(v5 + 32) = v2;

  return swift_unownedRetain();
}

void *sub_1C4433950()
{

  return sub_1C4409678(v0, v1);
}

uint64_t sub_1C4433990(double a1)
{

  return sub_1C4CF7188(0x6F69746172657469, 0xEE0074726174536ELL, v1, a1);
}

double sub_1C44339FC(uint64_t a1, uint64_t a2)
{
  *a2 = v2;
  *(a2 + 8) = v3;
  result = 0.0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  return result;
}

uint64_t sub_1C4433A20()
{

  return swift_allocObject();
}

uint64_t *sub_1C4433A40(__n128 a1)
{

  return BMEventBase.ingestBaseEvent(startTime:endTime:pipelineType:stores:)(0, 1, (v1 - 160));
}

uint64_t sub_1C4433A70()
{

  return sub_1C4D5F434(v0, type metadata accessor for WalletTransactionOrderStructs.IdentifierRelationshipType);
}

void sub_1C4433A98(uint64_t a1@<X8>)
{
  *(a1 - 256) = 0;
  *(v1 - 472) = 0;
  *(v1 - 464) = 0;
}

uint64_t sub_1C4433BBC()
{

  return swift_unknownObjectRelease();
}

uint64_t sub_1C4433C5C(uint64_t a1)
{

  return sub_1C4F02858();
}

uint64_t sub_1C4433CB8()
{

  return swift_willThrow();
}

uint64_t sub_1C4433CD0()
{

  return sub_1C4460108(v1, v0, v2, v3);
}

uint64_t sub_1C4433D44(uint64_t a1)
{

  return swift_beginAccess();
}

uint64_t sub_1C4433DB4()
{
  v2 = v0[15];
  v3 = v0[16];
  v0[41] = v2;
  v0[42] = v3;

  return sub_1C4418280((v0 + 12), v2);
}

uint64_t sub_1C4433E14()
{
  *(v0 + 80) = 0;
  *(v0 + 88) = 0xE000000000000000;

  return sub_1C4EF9CD8();
}

uint64_t sub_1C4433E30(uint64_t a1, uint64_t a2)
{

  return sub_1C4F00AA8();
}

void sub_1C4433E74()
{
}

uint64_t sub_1C4433E8C()
{

  return sub_1C4EFB998();
}

uint64_t sub_1C4433EF8()
{

  return sub_1C4F01748();
}

uint64_t sub_1C4433F24(uint64_t a1)
{
  *(a1 + 16) = 0;

  return type metadata accessor for PhaseStores(0);
}

void sub_1C4433FCC()
{
  *(v0 - 328) = 0;
  *(v0 - 320) = 0;
  *(v0 - 208) = 0;
  *(v0 - 192) = 0;
}

uint64_t sub_1C4434000(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t sub_1C4434074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 - 96) = a6;
  *(v6 - 88) = a1;
  return 0;
}

void sub_1C44340FC(uint64_t a1, unint64_t *a2)
{

  sub_1C47AA700(319, a2, type metadata accessor for FeatureValue);
}

uint64_t sub_1C4434144(uint64_t a1)
{

  return sub_1C4F02458();
}

uint64_t sub_1C44341E8()
{

  return swift_allocObject();
}

uint64_t sub_1C4434200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  a13 = a4;
  a14 = a5;
  a10 = a1;
  a11 = a2;

  return sub_1C442E860(&a10, a3 + 16);
}

__n128 sub_1C4434224()
{
  result = *(v0 - 224);
  *(v0 - 176) = *(v0 - 240);
  *(v0 - 160) = result;
  return result;
}

double sub_1C443426C@<D0>(char a1@<W8>)
{
  *(v1 - 128) = a1;

  return sub_1C4F02698();
}

void sub_1C4434290(char a1@<W8>)
{
  *v2 = a1;
  *(v2 + 8) = *(v1 + 136);
  *(v2 + 16) = v3;
}

uint64_t sub_1C44342BC(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1C4F02BC8();
}

void sub_1C44342E0()
{

  JUMPOUT(0x1C693FEF0);
}

uint64_t sub_1C4434328()
{

  return sub_1C4F02248();
}

void sub_1C4434354(uint64_t a1, uint64_t a2)
{

  sub_1C44F4214();
}

uint64_t sub_1C443439C()
{
  *(v0 - 68) = 3;

  return type metadata accessor for Source(0);
}

uint64_t sub_1C44343F0(uint64_t a1, uint64_t a2)
{

  return sub_1C4F026C8();
}

uint64_t sub_1C44344B8(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

id sub_1C443454C(id a1)
{

  return a1;
}

unint64_t sub_1C4434578()
{

  return sub_1C441D828(v0, v1, (v2 - 120));
}

uint64_t sub_1C4434594()
{

  return sub_1C4EF9BE8();
}

void sub_1C44345C0()
{
  v4 = *(v3 - 232);
  *(v0 + 16) = v1;
  *(v0 + 24 * v2 + 32) = v4;
}

uint64_t sub_1C44345DC()
{

  return sub_1C4418280(v1 - 128, v0);
}

void sub_1C4434640()
{
  v4 = *(v2 - 112);
  v5 = *(v2 - 104);

  sub_1C4A8DF38(v1, v4, v5, v0);
}

uint64_t sub_1C4434670()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t sub_1C4434688(uint64_t a1, uint64_t a2)
{

  return sub_1C4EF97B8();
}

uint64_t sub_1C44346D0(uint64_t a1)
{
}

void sub_1C44346EC()
{

  sub_1C4B1E304();
}

uint64_t sub_1C4434758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  sub_1C4C10CD0(a1, a2, a3, a4, a5);

  return sub_1C4C10BC0(v5 - 144);
}

unint64_t sub_1C4434780(float a1)
{
  *v1 = a1;

  return sub_1C441D828(v3, v2, (v4 - 88));
}

unint64_t sub_1C44347A0()
{
  v3 = *(v1 - 592);

  return sub_1C441D828(v3, v0, (v1 - 128));
}

uint64_t sub_1C44347C0(uint64_t a1)
{

  return sub_1C4F01048();
}

uint64_t sub_1C44347EC()
{

  return sub_1C442B870(v0, v1 - 96);
}

unint64_t sub_1C4434810(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *v10 = a1;

  return sub_1C441D828(v12, v11, &a10);
}

uint64_t sub_1C4434830(uint64_t a1)
{

  return sub_1C4F02938();
}

void *sub_1C443486C()
{
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];

  return sub_1C4D215A4(v4, v2, v3);
}

void sub_1C44348C8(unint64_t a1@<X8>)
{

  sub_1C44C9240(a1 > 1, v2, 1, v1);
}

uint64_t sub_1C4434964(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_1C4F01358())
  {
    result = sub_1C4434A7C(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_1C4F02208();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_1C4F022F8();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

void *sub_1C4434A7C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1C456902C(&qword_1EC0BD2E8, &unk_1C4F2DAA0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

uint64_t sub_1C4434AEC(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_1C44A05DC(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1C4434BD0@<X0>(uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, void *a6@<X8>)
{
  v19[4] = *MEMORY[0x1E69E9840];
  v7 = objc_opt_self();
  v8 = [objc_opt_self() bm_allowedClassesForSecureCodingBMBookmark];
  sub_1C4F01AB8();

  v9 = sub_1C4F01AA8();

  v10 = sub_1C4EF9A38();
  v19[0] = 0;
  v11 = [v7 unarchivedObjectOfClasses:v9 fromData:v10 error:v19];

  if (v11)
  {
    v12 = v19[0];
    sub_1C4F02078();
    swift_unknownObjectRelease();
    sub_1C456902C(a4, a5);
    result = swift_dynamicCast();
    if ((result & 1) == 0)
    {
      *a6 = 0;
    }
  }

  else
  {
    v14 = v19[0];
    v15 = sub_1C4EF97A8();

    result = swift_willThrow();
    *a3 = v15;
  }

  return result;
}

uint64_t sub_1C4434D94(uint64_t a1, unint64_t a2)
{
  v3 = sub_1C4434964(a1, a2);
  sub_1C4434AEC(&unk_1F43D0FD8);
  return v3;
}

uint64_t sub_1C4434E40()
{

  return swift_beginAccess();
}

void sub_1C4434E60(uint64_t a1)
{

  sub_1C4660C74();
}

uint64_t sub_1C4434EBC()
{

  return sub_1C45FE854(v0);
}

uint64_t *sub_1C4434EE8(uint64_t a1)
{
  *(v1 - 88) = a1;

  return sub_1C4422F90((v1 - 120));
}

uint64_t sub_1C4434F24(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1C4434F80()
{
  result = v0[14];
  v2 = v0[9];
  v0[15] = *(v2 + 16);
  v0[16] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  return result;
}

void sub_1C4434FA0()
{

  JUMPOUT(0x1C6940010);
}

id sub_1C4434FC4()
{
  v2 = *(v0 + 3752);

  return objc_allocWithZone(v2);
}

uint64_t sub_1C4435018()
{
  sub_1C44482AC((v0 - 160), (v0 - 192));

  return swift_isUniquelyReferenced_nonNull_native();
}

unint64_t sub_1C44350A0()
{
  v4 = (v0 + *(v1 + 44));
  v5 = v4[1];
  *(v2 - 96) = *v4;
  *(v2 - 88) = v5;
  *(v2 - 65) = 7;

  return sub_1C485AC04();
}

uint64_t sub_1C4435120(uint64_t result)
{
  *(result + 72) = v1;
  strcpy((result + 80), "updateStatus");
  *(result + 93) = 0;
  *(result + 94) = -5120;
  return result;
}

void sub_1C443517C()
{

  JUMPOUT(0x1C6940010);
}

uint64_t sub_1C44351A0()
{
  sub_1C440962C((v0 + 32));
  *(v0 + 16) = 0;
  return v0;
}

uint64_t sub_1C4435224()
{
}

uint64_t sub_1C4435250()
{

  return sub_1C4485564(v0, type metadata accessor for GraphTriple);
}

id sub_1C4435278()
{

  return [v1 (v0 + 663)];
}

void sub_1C44352A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{

  sub_1C44869B4(v30 + 336, v32, v31, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30);
}

uint64_t sub_1C4435324(uint64_t a1)
{

  return swift_once();
}

void sub_1C4435358()
{
  v2 = *(v0 - 400);
}

uint64_t sub_1C443537C()
{

  return sub_1C4F00978();
}

uint64_t sub_1C44353B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{

  return sub_1C4F02438();
}

uint64_t sub_1C44353D0(uint64_t a1)
{

  return swift_once();
}

void sub_1C4435404()
{
  *(v1 + 16) = v2;
  v6 = (v1 + 32 + 16 * v0);
  *v6 = v3;
  v6[1] = v4;
  *(v5 - 112) = **(v5 - 208);
}

__n128 sub_1C4435424()
{
  v2 = *(v0 + 496);
  *(v1 - 240) = *(v0 + 480);
  *(v1 - 224) = v2;
  result = *(v0 + 512);
  *(v1 - 208) = result;
  return result;
}

uint64_t sub_1C4435438()
{

  return type metadata accessor for Configuration(0);
}

uint64_t sub_1C443546C(uint64_t a1)
{

  return swift_once();
}

_OWORD *sub_1C443548C()
{

  return sub_1C44482AC((v0 - 176), (v0 - 120));
}

void sub_1C44354A4(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
}

uint64_t sub_1C44354B4()
{
}

uint64_t sub_1C44354CC()
{

  return sub_1C4EFBCD8();
}

uint64_t sub_1C44354FC()
{

  return sub_1C4F02248();
}

uint64_t sub_1C4435540()
{

  return sub_1C4F02938();
}

uint64_t sub_1C44355B0()
{
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = *(v0 + 64);
  v5 = *(v0 + 56);

  return sub_1C444F05C(v2, v3, v5, v4);
}

uint64_t sub_1C443560C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a1 + 104) = a2;
  *(a1 + 72) = v2;

  return sub_1C4EFB728();
}

uint64_t sub_1C443562C()
{

  return swift_bridgeObjectRelease_n();
}

uint64_t sub_1C4435744()
{
  v8 = (v3 + v4[8]);
  *v8 = v1;
  v8[1] = v0;
  v9 = (v3 + v4[10]);
  v10 = *(v5 - 120);
  *v9 = *(v5 - 128);
  v9[1] = v10;
  *(v3 + v4[11]) = v7;
  *(v3 + v4[12]) = v2;

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

void sub_1C443579C()
{
}

uint64_t sub_1C44357B4()
{

  return swift_allocObject();
}

uint64_t sub_1C4435804(uint64_t a1, uint64_t a2, int a3)
{
  *(v3 - 132) = a3;

  return type metadata accessor for ConstructionProgressTokens(0);
}

BOOL sub_1C443583C(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_1C4435894()
{

  return sub_1C4F00308();
}

uint64_t sub_1C44358B0()
{

  return sub_1C4EFBCD8();
}

uint64_t sub_1C4435934()
{

  return sub_1C446C37C(v0, v1);
}

uint64_t sub_1C443594C(uint64_t result)
{
  v1[39] = result;
  v1[40] = 0x6E656469666E6F63;
  v1[41] = 0xEA00000000006563;
  return result;
}

void sub_1C4435970(unint64_t a1)
{

  sub_1C457E054(a1, v3, v1, v2);
}

void sub_1C4435998(uint64_t a1)
{
  v4 = *(v1 - 144);

  sub_1C4839234(v4, a1);
}

void sub_1C44359B4()
{
  STACK[0x200] = v0[125];
  STACK[0x208] = v0[124];
  STACK[0x210] = v0[123];
  STACK[0x218] = v0[122];
  STACK[0x220] = v0[119];
  STACK[0x228] = v0[118];
  STACK[0x230] = v0[117];
  STACK[0x238] = v0[116];
  STACK[0x240] = v0[115];
  STACK[0x248] = v0[114];
  STACK[0x250] = v0[113];
  STACK[0x258] = v0[112];
  STACK[0x260] = v0[111];
  STACK[0x268] = v0[110];
  STACK[0x270] = v0[109];
  STACK[0x278] = v0[108];
  STACK[0x280] = v0[107];
  STACK[0x288] = v0[106];
  STACK[0x290] = v0[105];
  STACK[0x298] = v0[104];
  STACK[0x2A0] = v0[103];
  STACK[0x2A8] = v0[102];
  STACK[0x2B0] = v0[100];
  STACK[0x2B8] = v0[99];
  STACK[0x2C0] = v0[98];
  STACK[0x2C8] = v0[97];
  STACK[0x2D0] = v0[96];
  STACK[0x2D8] = v0[95];
  STACK[0x2E0] = v0[94];
  STACK[0x2E8] = v0[93];
  STACK[0x2F0] = v0[92];
  STACK[0x2F8] = v0[91];
  STACK[0x300] = v0[90];
  STACK[0x308] = v0[89];
}

uint64_t sub_1C4435C2C()
{

  return sub_1C4420C3C(v2, v0, v1);
}

uint64_t sub_1C4435C84()
{
  *(v3 - 432) = v0;
  *(v3 - 376) = v1;
  *(v3 - 392) = v2;
  *(v3 - 384) = *(v3 - 192);

  return type metadata accessor for Source(0);
}

void *sub_1C4435CFC(void *result)
{
  result[2] = v4;
  result[3] = v6;
  result[4] = v2;
  result[5] = v1;
  result[6] = v5;
  result[7] = v3;
  return result;
}

void sub_1C4435DA8(void *a1@<X0>, const char *a2@<X3>, uint64_t a3@<X8>)
{
  v6 = *(a3 - 256);

  _os_log_impl(a1, v4, v6, a2, v3, 0x1Cu);
}

uint64_t sub_1C4435DCC()
{

  return sub_1C4F02658();
}

void sub_1C4435DFC(uint64_t a1)
{

  sub_1C44C9240(a1, v1, 1, v2);
}

uint64_t sub_1C4435E18(uint64_t a1)
{

  return sub_1C4F02778();
}

uint64_t sub_1C4435E5C()
{
  *(v0 - 69) = 4;

  return sub_1C4F02738();
}

uint64_t sub_1C4435EC0(uint64_t a1, int *a2)
{
  *(v2 + 32) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 40) = v3;
  *v3 = v2;
  v3[1] = sub_1C445B22C;

  return v5(v2 + 16);
}

uint64_t sub_1C4435FB4()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate12JobScheduler_currentJobStopClosure;
  *(v0 + 72) = OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate12JobScheduler_currentJobStopClosure;
  v4 = (v2 + v3);
  v6 = *v4;
  v5 = v4[1];
  *v4 = &unk_1C4F6A878;
  v4[1] = v1;

  sub_1C44239FC(v6, v5);
  sub_1C4F01968();
  v7 = *(v0 + 64);
  v8 = v7[5];
  v9 = v7[6];
  sub_1C4409678(v7 + 2, v8);
  v13 = (sub_1C43FCFC0() + 32);
  v14 = (*v13 + **v13);
  v10 = swift_task_alloc();
  *(v0 + 80) = v10;
  *v10 = v0;
  v10[1] = sub_1C445AEFC;
  v11 = *(v0 + 104);

  return v14(v11, v8, v9);
}

uint64_t sub_1C44362AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 104) = a6;
  *(v6 + 56) = a4;
  *(v6 + 64) = a5;
  *(v6 + 48) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C4435FB4, a4, 0);
}

uint64_t sub_1C44362D4()
{
  sub_1C43FBCD4();
  v1[20] = v0;
  v1[21] = sub_1C4EF9CD8();
  sub_1C4404280();
  v1[22] = v2;
  v1[23] = sub_1C43FBE7C();
  v3 = sub_1C456902C(&qword_1EC0C6428, qword_1C4F6D7E8);
  sub_1C43FBD18(v3);
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4436860, v0, 0);
}

uint64_t sub_1C44363DC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C445AEF8;

  return sub_1C44362D4();
}

uint64_t sub_1C4436470()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

void sub_1C44364AC()
{

  JUMPOUT(0x1C6940010);
}

uint64_t sub_1C4436528()
{
}

uint64_t sub_1C4436644()
{
  v2 = v0[15];
  v3 = v0[16];
  v0[42] = v2;
  v0[43] = v3;

  return sub_1C4418280((v0 + 12), v2);
}

uint64_t sub_1C4436664()
{
  result = v1;
  *(v2 - 512) = *(v0 + 8);
  return result;
}

uint64_t sub_1C44366C0()
{
  *(v0 + 120) = v2;
  *(v0 + 80) = v1;

  return swift_bridgeObjectRelease_n();
}

uint64_t sub_1C44366E0(uint64_t a1, uint64_t a2)
{

  return sub_1C4F00C28();
}

uint64_t sub_1C4436700()
{
}

void sub_1C4436718(uint64_t a1)
{

  sub_1C4BB6B24();
}

uint64_t sub_1C443676C(uint64_t a1, uint64_t a2)
{
  *a2 = v2;
  *(a2 + 8) = v3;
  *(a2 + 16) = 3;

  return swift_willThrow();
}

void sub_1C44367A4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_1C44367DC@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  *a2 = v2;
  a2[1] = result;
  return result;
}

uint64_t sub_1C4436800()
{
  v1 = *(v0 - 328);
  v2 = *(v0 - 128);
  result = *(v2 + v1);
  *(v2 + v1) = *(v0 - 112);
  return result;
}

uint64_t sub_1C4436860()
{
  v137 = v0;
  v1 = *(v0 + 160);
  if (*(v1 + 112))
  {
    v2 = *(v1 + 112);
  }

  else
  {
    v2 = sub_1C4429B18();
  }

  *(v0 + 224) = v2;
  *(v1 + 112) = v2;

  sub_1C4409678((v2 + 16), *(v2 + 40));
  v3 = sub_1C4404BCC();
  v5 = v4(v3);
  *(v0 + 232) = v5;
  *(v0 + 240) = v6;
  *(v0 + 248) = v7;
  v8 = v7;
  if (!v7)
  {
    if (qword_1EDDFD018 != -1)
    {
      sub_1C441A86C();
      swift_once();
    }

    v18 = sub_1C4F00978();
    sub_1C442B738(v18, qword_1EDE2DDF8);
    sub_1C43FCFC0();

    v19 = sub_1C4F00968();
    sub_1C4F01CF8();
    sub_1C440D060();

    if (sub_1C44020E0())
    {
      v20 = *(v0 + 160);
      sub_1C43FECF0();
      v21 = swift_slowAlloc();
      sub_1C43FEC60();
      v22 = swift_slowAlloc();
      __src[0] = v22;
      *v21 = 136446210;
      v23 = sub_1C442A10C(*(v20 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate13ViewUpdateJob_viewQuery), *(v20 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate13ViewUpdateJob_viewQuery + 8));
      v27 = sub_1C448602C(v23, v24, v25, v26);

      *(v21 + 4) = v27;
      sub_1C4402B48();
      _os_log_impl(v28, v29, v30, v31, v32, 0xCu);
      sub_1C440962C(v22);
      v33 = sub_1C43FEF7C();
      MEMORY[0x1C6942830](v33);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    sub_1C440F1BC();
    swift_beginAccess();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    sub_1C4D1ECD4();
    sub_1C4409A94();

    __asm { BRAA            X3, X16 }
  }

  v9 = *(v0 + 160) + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate13ViewUpdateJob_viewQuery;
  v10 = *v9;
  *(v0 + 256) = *v9;
  LODWORD(v9) = *(v9 + 8);
  *(v0 + 376) = v9;
  v11 = v9 >> 14;
  v12 = (v9 >> 8) & 0x3F;
  if (v11 != 1)
  {
    LOBYTE(v12) = BYTE2(v10);
  }

  if (v11)
  {
    v13 = v12;
  }

  else
  {
    v13 = v10;
  }

  v14 = v5;
  v15 = v6;
  v16 = qword_1EDDDC0A0;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  if (v16 != -1)
  {
    swift_once();
  }

  v17 = qword_1EDE2C950;
  os_unfair_lock_lock((qword_1EDE2C950 + 24));
  sub_1C444949C((v17 + 16), __src);
  os_unfair_lock_unlock((v17 + 24));
  v36 = *(v0 + 216);
  v37 = *(v0 + 160);
  LOBYTE(v17) = __src[0];
  v38 = _s7MetricsO7PayloadVMa(0);
  *(v0 + 264) = v38;
  sub_1C44165A4(v36 + v38[10]);
  sub_1C44165A4(v36 + v38[11]);
  sub_1C44165A4(v36 + v38[12]);
  sub_1C44165A4(v36 + v38[13]);
  sub_1C44165A4(v36 + v38[14]);
  sub_1C44165A4(v36 + v38[15]);
  sub_1C44165A4(v36 + v38[16]);
  sub_1C4EF9CC8();
  *v36 = v15;
  *(v36 + 8) = v8;
  *(v36 + 16) = 0;
  *(v36 + 24) = 0;
  *(v36 + 32) = 0;
  *(v36 + 33) = v13;
  *(v36 + 34) = v17;
  *(v36 + v38[17]) = 0;
  *(v36 + v38[18]) = 0;
  *(v36 + v38[19]) = 0;
  sub_1C43FBD94();
  sub_1C440BAA8(v39, v40, v41, v38);
  v42 = OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate13ViewUpdateJob_metricsPayload;
  *(v0 + 272) = OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate13ViewUpdateJob_metricsPayload;
  sub_1C4403138(v37 + v42, v0 + 112);
  sub_1C468282C();
  swift_endAccess();
  sub_1C4EF9C88();
  if (qword_1EDDFD018 != -1)
  {
    sub_1C441A86C();
    swift_once();
  }

  v43 = sub_1C4F00978();
  *(v0 + 280) = sub_1C43FCEE8(v43, qword_1EDE2DDF8);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v44 = sub_1C4F00968();
  sub_1C4F01CF8();
  sub_1C44624E4();

  if (os_log_type_enabled(v44, v36))
  {
    sub_1C43FECF0();
    v45 = swift_slowAlloc();
    sub_1C43FEC60();
    v135 = swift_slowAlloc();
    __src[0] = v135;
    *v45 = 136446210;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C43FE5F8();
    v46 = sub_1C444AB08();
    v48 = v47;

    v49 = sub_1C441D828(v46, v48, __src);

    *(v45 + 4) = v49;
    _os_log_impl(&dword_1C43F8000, v44, v36, "ViewUpdate: %{public}s: Beginning view update attempt", v45, 0xCu);
    sub_1C440962C(v135);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  sub_1C4F01968();
  v50 = *(*(v0 + 160) + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate13ViewUpdateJob_manager);
  *(v0 + 288) = v50;
  v51 = *(v50 + 16);
  v52 = swift_task_alloc();
  v52[2] = v14;
  v52[3] = v15;
  v52[4] = v8;
  v53 = swift_task_alloc();
  v53[2] = sub_1C4449808;
  v53[3] = v52;
  v53[4] = v51;

  sub_1C4449610(sub_1C4D1ECA8, v53, v54, v55, v56, v57, v58, v59);

  memcpy((v0 + 16), __src, 0x48uLL);
  v60 = *(v0 + 32);
  *(v0 + 296) = v60;
  if (qword_1EDDECB20 != -1)
  {
    swift_once();
  }

  if (qword_1EDE2D2B0 >= v60)
  {
    if (*(v0 + 64))
    {
      if (*(v0 + 296) < 2)
      {
        goto LABEL_46;
      }

      sub_1C44264D0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v89 = sub_1C4F00968();
      sub_1C4F01CF8();
      sub_1C440D060();

      if (sub_1C44020E0())
      {
        sub_1C43FECF0();
        v90 = swift_slowAlloc();
        sub_1C43FEC60();
        swift_slowAlloc();
        sub_1C442AD20();
        *v90 = 136446210;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C43FE990();
        sub_1C444AB08();

        v91 = sub_1C43FFE24();
        v94 = sub_1C441D828(v91, v92, v93);

        *(v90 + 4) = v94;
        sub_1C4402B48();
        _os_log_impl(v95, v96, v97, v98, v99, 0xCu);
        sub_1C440962C(v52);
        v100 = sub_1C4416E14();
        MEMORY[0x1C6942830](v100);
        sub_1C43FBCFC();
        MEMORY[0x1C6942830]();
      }

      if ((*(v0 + 56) & 2) != 0)
      {
LABEL_46:
        v128 = swift_task_alloc();
        *(v0 + 336) = v128;
        *v128 = v0;
        sub_1C4430404(v128);
        sub_1C440F4D4(*(v0 + 232));
        sub_1C4409A94();

        return sub_1C4449BAC(v129, v130, v131, v132, v133);
      }

      else
      {
        v101 = swift_task_alloc();
        *(v0 + 320) = v101;
        *v101 = v0;
        v101[1] = sub_1C4D12450;
        sub_1C440F4D4(*(v0 + 232));
        sub_1C4409A94();

        return sub_1C4D137F4(v102, v103, v104, v105);
      }
    }

    else
    {
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v107 = sub_1C4F00968();
      v108 = sub_1C4F01CF8();

      if (os_log_type_enabled(v107, v108))
      {
        sub_1C43FECF0();
        v109 = swift_slowAlloc();
        sub_1C43FEC60();
        v110 = swift_slowAlloc();
        __src[0] = v110;
        *v109 = 136446210;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C43FE5F8();
        v111 = sub_1C444AB08();

        v112 = sub_1C43FD574();
        sub_1C441D828(v112, v113, v114);
        sub_1C443EFD8();

        *(v109 + 4) = v111;
        sub_1C44BBF64(&dword_1C43F8000, v107, v108, "ViewUpdate: %{public}s: Tables not created - running truncate+table creation");
        _os_log_impl(v115, v116, v117, v118, v119, v120);
        sub_1C440962C(v110);
        sub_1C43FBCFC();
        MEMORY[0x1C6942830]();
        v121 = sub_1C4416E14();
        MEMORY[0x1C6942830](v121);
      }

      v122 = swift_task_alloc();
      *(v0 + 304) = v122;
      *v122 = v0;
      v122[1] = sub_1C4D1214C;
      sub_1C43FE5F8();
      sub_1C4409A94();

      return sub_1C4D12F80(v123, v124, v125, v126);
    }
  }

  else
  {
    sub_1C446D0DC();
    sub_1C441C114();
    v61 = swift_allocError();
    *v62 = 0xD000000000000050;
    v62[1] = 0x80000001C4FC66A0;
    sub_1C442F9BC(v62, 2);
    swift_willThrow();
    sub_1C444AF3C(v0 + 16);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v63 = sub_1C4F00968();
    sub_1C4F01CF8();
    sub_1C44624E4();

    if (sub_1C444AD54())
    {
      sub_1C43FECF0();
      v64 = swift_slowAlloc();
      sub_1C43FEC60();
      swift_slowAlloc();
      sub_1C44C1320();
      *v64 = 136446210;
      sub_1C43FE5F8();
      v65 = sub_1C444AB08();
      v67 = sub_1C441D828(v65, v66, __src);

      *(v64 + 4) = v67;
      sub_1C43FD0B4();
      sub_1C44BBF64(v68, v69, v70, v71);
      _os_log_impl(v72, v73, v74, v75, v76, v77);
      sub_1C4415138();
      v78 = sub_1C4416E14();
      MEMORY[0x1C6942830](v78);
    }

    *(v0 + 352) = v61;
    v79 = swift_task_alloc();
    v80 = sub_1C4480598(v79);
    *v80 = v81;
    sub_1C4413CC8(v80);
    sub_1C4409A94();

    return sub_1C4D14DE4(v82, v83, v84, v85, v86);
  }
}

void sub_1C4437394()
{
  sub_1C43FE96C();
  v65 = v2;
  v66 = v3;
  v5 = v4;
  v7 = v6;
  v8 = _s10ViewConfigVMa(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBCC4();
  v57 = v11 - v10;
  v12 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  sub_1C43FBD18(v12);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBC74();
  v59 = v14;
  sub_1C43FBE44();
  sub_1C4EFBC98();
  sub_1C43FCDF8();
  v63 = v16;
  v64 = v15;
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FBCC4();
  v19 = v18 - v17;
  sub_1C4EFB678();
  sub_1C43FCDF8();
  v61 = v21;
  v62 = v20;
  MEMORY[0x1EEE9AC00](v20);
  sub_1C43FBD08();
  v24 = v22 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v57 - v26;
  v28 = sub_1C456902C(&dword_1EC0C4518, &unk_1C4F628C0);
  v29 = sub_1C43FBD18(v28);
  MEMORY[0x1EEE9AC00](v29);
  sub_1C43FBD08();
  v58 = v30 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v60 = &v57 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v57 - v35;
  v37 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore12ViewDatabase_configCache);
  v67.n128_u64[0] = v7;
  v67.n128_u64[1] = v5;
  v68 = v7;
  v69 = v5;
  os_unfair_lock_lock(v37 + 6);
  sub_1C4437998(&v37[4]);
  if (!v1)
  {
    os_unfair_lock_unlock(v37 + 6);
    if (sub_1C44157D4(v36, 1, v8) == 1)
    {
      sub_1C4420C3C(v36, &dword_1EC0C4518, &unk_1C4F628C0);
      sub_1C4EFB648();
      sub_1C43FE984();
      sub_1C4EFB638();
      v70 = v67;
      sub_1C4415EA8();
      sub_1C4EFB668();
      sub_1C4EFB638();
      (*(v61 + 32))(v24, v27, v62);
      sub_1C4EFBC88();
      sub_1C4EFBEE8();
      (*(v63 + 8))(v19, v64);
      v39 = objc_autoreleasePoolPush();
      sub_1C4EFB768();
      v40 = v59;
      sub_1C43FCF64();
      sub_1C440BAA8(v41, v42, v43, v44);
      sub_1C442D4F8();
      sub_1C4505F5C(v45, v46, &unk_1C4F59478);
      sub_1C440BFD0();
      v47 = v60;
      sub_1C4EFBA08();
      sub_1C4420C3C(&v70, &unk_1EC0BC770, &qword_1C4F10DC0);
      sub_1C4420C3C(v40, &unk_1EC0C06C0, &unk_1C4F10DB0);
      objc_autoreleasePoolPop(v39);
      v48 = v58;
      sub_1C445FFF0(v47, v58, &dword_1EC0C4518, &unk_1C4F628C0);
      v49 = sub_1C440D3D8();
      if (sub_1C44157D4(v49, v50, v8) == 1)
      {
        sub_1C4420C3C(v48, &dword_1EC0C4518, &unk_1C4F628C0);
        sub_1C450B034();
        sub_1C441C114();
        v51 = swift_allocError();
        v52 = v67.n128_u64[1];
        v53->n128_u64[0] = v67.n128_u64[0];
        v53->n128_u64[1] = v52;
        v53[1].n128_u64[0] = 0;
        v53[1].n128_u64[1] = 0;
        v53[2].n128_u64[0] = 0;
        v53[2].n128_u64[1] = 0xE000000000000000;
        sub_1C4426EA4(v70, v51, v53);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

        sub_1C4420C3C(v47, &dword_1EC0C4518, &unk_1C4F628C0);
        goto LABEL_6;
      }

      sub_1C43FDF54();
      v54 = v48;
      v38 = v57;
      v55 = sub_1C4437D00(v54, v57);
      MEMORY[0x1EEE9AC00](v55);
      v56 = v67;
      *(&v57 - 4) = v38;
      *(&v57 - 3) = v56;
      os_unfair_lock_lock(v37 + 6);
      sub_1C4509848();
      os_unfair_lock_unlock(v37 + 6);

      sub_1C4420C3C(v47, &dword_1EC0C4518, &unk_1C4F628C0);
    }

    else
    {
      v38 = v36;
    }

    sub_1C43FDF54();
    sub_1C4437D00(v38, v66);
LABEL_6:
    sub_1C43FBC80();
    return;
  }

  os_unfair_lock_unlock(v37 + 6);
  __break(1u);
}

uint64_t sub_1C44379C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1C456902C(&qword_1EC0C44F8, &qword_1C4F594B8);
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 72);
    }

    else
    {
      v9 = sub_1C456902C(&qword_1EC0BDCB0, &unk_1C4F54830);
      v10 = *(a3 + 80);
    }

    return sub_1C44157D4(a1 + v10, a2, v9);
  }
}

uint64_t sub_1C4437AAC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C4437AEC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xF6 && *(a1 + 33))
    {
      v2 = *a1 + 245;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 <= 9)
      {
        v2 = -1;
      }

      else
      {
        v2 = (v3 ^ 0xFF) - 1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C4437B30(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C4437B70(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C4437BCC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C4437C20(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1C456902C(&qword_1EC0C44F8, &qword_1C4F594B8);
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 72);
    }

    else
    {
      v9 = sub_1C456902C(&qword_1EC0BDCB0, &unk_1C4F54830);
      v10 = *(a4 + 80);
    }

    return sub_1C440BAA8(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_1C4437D00(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C43FBE94();
  v5(v4);
  sub_1C43FBCE0();
  (*(v6 + 32))(a2, v2);
  return a2;
}

uint64_t sub_1C4437D94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1C456902C(&qword_1EC0C4668, "TZ\b");
    v9 = a1 + *(a3 + 44);

    return sub_1C44157D4(v9, a2, v8);
  }
}

uint64_t sub_1C4437E28(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C4437E68(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C4437EA8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

char *sub_1C4437EE8(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v119 = a6;
  v115 = a4;
  v114 = a2;
  v113 = a1;
  v8 = type metadata accessor for Configuration(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v110 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v112 = &v110 - v12;
  v13 = _s10ViewConfigVMa(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = (&v110 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v16);
  v111 = (&v110 - v17);
  MEMORY[0x1EEE9AC00](v18);
  v20 = (&v110 - v19);
  MEMORY[0x1EEE9AC00](v21);
  v23 = (&v110 - v22);
  MEMORY[0x1EEE9AC00](v24);
  v26 = (&v110 - v25);
  MEMORY[0x1EEE9AC00](v27);
  isUniquelyReferenced_nonNull_native = &v110 - v28;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v110 - v31;
  v121 = sub_1C4428DA0(a5);
  if (v121)
  {
    v110 = v10;
    v10 = a3;
    sub_1C4431590(0, (a5 & 0xC000000000000001) == 0, a5);
    v118 = a5;
    v117 = a5 & 0xC000000000000001;
    if ((a5 & 0xC000000000000001) != 0)
    {
LABEL_69:
      v33 = MEMORY[0x1C6940F90](0, a5);
    }

    else
    {
      v33 = *(a5 + 32);
    }

    switch(v10)
    {
      case 1:
        v36 = v33;
        sub_1C456902C(&qword_1EC0B87C0, &unk_1C4F0DBB0);
        v10 = swift_allocObject();
        *(v10 + 1) = xmmword_1C4F0D130;
        sub_1C4431074(v119, v32, _s10ViewConfigVMa);
        v81 = v112;
        sub_1C4431074(v116 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate19ViewInProcessRunner_config, v112, type metadata accessor for Configuration);
        type metadata accessor for GraphStore(0);
        swift_allocObject();
        v82 = v120;
        v83 = GraphStore.init(config:)(v81);
        if (v82)
        {
          v84 = v32;
          goto LABEL_42;
        }

        v97 = v83;
        v98 = _s20KnowledgeGraphSourceCMa();
        v36 = v36;
        v48 = sub_1C4CDE6C8(v36, v32, v97);
        *(v10 + 7) = v98;
        v49 = &qword_1EDDFC3F8;
        v50 = _s20KnowledgeGraphSourceCMa;
        v51 = &unk_1C4F6AAA4;
        goto LABEL_50;
      case 2:
        v52 = v33;
        sub_1C456902C(&qword_1EC0B87C0, &unk_1C4F0DBB0);
        v10 = swift_allocObject();
        *(v10 + 1) = xmmword_1C4F0D130;
        updated = _s18AlwaysUpdateSourceCMa();
        sub_1C4431074(v119, isUniquelyReferenced_nonNull_native, _s10ViewConfigVMa);
        v36 = v52;
        v54 = v120;
        sub_1C4CBFCB8(v36, isUniquelyReferenced_nonNull_native);
        if (v54)
        {
          goto LABEL_43;
        }

        v39 = v55;
        *(v10 + 7) = updated;
        v40 = &qword_1EDDFC888;
        v41 = _s18AlwaysUpdateSourceCMa;
        v42 = &unk_1C4F67D2C;
        goto LABEL_12;
      case 3:
        v56 = *(v119 + 248);
        if (!v56 || *(v56 + 16) <= v115)
        {
          v94 = v33;
          sub_1C446D0DC();
          swift_allocError();
          *v95 = 0xD000000000000026;
          *(v95 + 8) = 0x80000001C4FC4270;
          *(v95 + 16) = 2;
          swift_willThrow();

          return v10;
        }

        v111 = v33;
        if (v115 < 0)
        {
          goto LABEL_72;
        }

        v57 = (v56 + (v115 << 6));
        v58 = v57[2];
        v59 = v57[3];
        v60 = v57[5];
        v123[2] = v57[4];
        v123[3] = v60;
        v123[0] = v58;
        v123[1] = v59;
        v124 = MEMORY[0x1E69E7CC0];
        sub_1C445CD7C(v123, v122);
        a5 = 0;
        v15 = 0;
        v61 = v118;
        v112 = v118 & 0xFFFFFFFFFFFFFF8;
        v62 = MEMORY[0x1E69E7CC8];
        break;
      case 4:
        v44 = v33;
        sub_1C456902C(&qword_1EC0B87C0, &unk_1C4F0DBB0);
        v10 = swift_allocObject();
        *(v10 + 1) = xmmword_1C4F0D130;
        sub_1C4431074(v119, v26, _s10ViewConfigVMa);
        v45 = _s10ViewSourceCMa();
        swift_allocObject();
        v36 = v44;
        v46 = v120;
        v47 = sub_1C4CF8844(v36, v26);
        if (v46)
        {
          goto LABEL_43;
        }

        v48 = v47;
        *(v10 + 7) = v45;
        v49 = &qword_1EDDFC780;
        v50 = _s10ViewSourceCMa;
        v51 = &unk_1C4F6BFD4;
        goto LABEL_50;
      case 5:
        v85 = v33;
        sub_1C456902C(&qword_1EC0B87C0, &unk_1C4F0DBB0);
        v10 = swift_allocObject();
        *(v10 + 1) = xmmword_1C4F0D130;
        v86 = _s14KeyValueSourceCMa();
        sub_1C4431074(v119, v20, _s10ViewConfigVMa);
        v36 = v85;
        v87 = v120;
        v88 = sub_1C4CDD598(v36, v20);
        if (v87)
        {
          goto LABEL_43;
        }

        v48 = v88;
        *(v10 + 7) = v86;
        v49 = &qword_1EDDF9B40;
        v50 = _s14KeyValueSourceCMa;
        v51 = &unk_1C4F6A9A0;
        goto LABEL_50;
      case 6:
        v36 = v33;
        sub_1C456902C(&qword_1EC0B87C0, &unk_1C4F0DBB0);
        v10 = swift_allocObject();
        *(v10 + 1) = xmmword_1C4F0D130;
        v89 = v111;
        sub_1C4431074(v119, v111, _s10ViewConfigVMa);
        type metadata accessor for GlobalKnowledgeStore(0);
        v90 = v110;
        sub_1C4431074(v116 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate19ViewInProcessRunner_config, v110, type metadata accessor for Configuration);
        v91 = v120;
        v92 = sub_1C48300AC(v90);
        if (v91)
        {
          v84 = v89;
LABEL_42:
          sub_1C445442C(v84, _s10ViewConfigVMa);
LABEL_43:

          goto LABEL_44;
        }

        v99 = v92;
        v100 = _s26GlobalKnowledgeGraphSourceCMa();
        v36 = v36;
        v48 = sub_1C4CD9248(v36, v89, v99);
        *(v10 + 7) = v100;
        v49 = &qword_1EDDF97C8;
        v50 = _s26GlobalKnowledgeGraphSourceCMa;
        v51 = &unk_1C4F6A364;
LABEL_50:
        *(v10 + 8) = sub_1C4CD8A5C(v49, v50, v51);
        *(v10 + 4) = v48;
LABEL_51:

        return v10;
      case 7:
        v76 = v33;
        sub_1C456902C(&qword_1EC0B87C0, &unk_1C4F0DBB0);
        v10 = swift_allocObject();
        *(v10 + 1) = xmmword_1C4F0D130;
        v77 = _s18NotificationSourceCMa();
        sub_1C4431074(v119, v15, _s10ViewConfigVMa);
        v78 = v76;
        v79 = v120;
        v80 = sub_1C4CE3894(v78, v15);
        if (v79)
        {

LABEL_44:
          *(v10 + 2) = 0;
        }

        else
        {
          v96 = v80;
          *(v10 + 7) = v77;
          *(v10 + 8) = sub_1C4CD8A5C(&qword_1EDDF9A20, _s18NotificationSourceCMa, &unk_1C4F6AF1C);
          *(v10 + 4) = v96;
        }

        return v10;
      default:
        v34 = v33;
        sub_1C456902C(&qword_1EC0B87C0, &unk_1C4F0DBB0);
        v10 = swift_allocObject();
        *(v10 + 1) = xmmword_1C4F0D130;
        v35 = _s13ControlSourceCMa();
        sub_1C4431074(v119, v23, _s10ViewConfigVMa);
        v36 = v34;
        v37 = v120;
        v38 = sub_1C443BBA8(v36, v23);
        if (v37)
        {
          goto LABEL_43;
        }

        v39 = v38;
        *(v10 + 7) = v35;
        v40 = &qword_1EDDFC678;
        v41 = _s13ControlSourceCMa;
        v42 = &unk_1C4F69BD8;
LABEL_12:
        *(v10 + 8) = sub_1C4CD8A5C(v40, v41, v42);
        *(v10 + 4) = v39;
        goto LABEL_51;
    }

    do
    {
      if (v117)
      {
        v63 = MEMORY[0x1C6940F90](a5);
      }

      else
      {
        if (a5 >= *(v112 + 16))
        {
          goto LABEL_71;
        }

        v63 = *(v61 + 8 * a5 + 32);
      }

      if (__OFADD__(a5, 1))
      {
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
        goto LABEL_69;
      }

      v119 = a5 + 1;
      v10 = v63;
      v64 = [v63 configIdentifier];
      v32 = [v64 sourceIdentifier];

      v23 = sub_1C4F01138();
      v26 = v65;

      sub_1C44239FC(v15, 0);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v122[0] = v62;
      v20 = v62;
      v66 = sub_1C445FAA8(v23, v26);
      if (__OFADD__(*(v62 + 16), (v67 & 1) == 0))
      {
        goto LABEL_67;
      }

      v68 = v66;
      v32 = v67;
      sub_1C456902C(&qword_1EC0C5F98, &unk_1C4F69F60);
      if (sub_1C4F02458())
      {
        v69 = sub_1C445FAA8(v23, v26);
        if ((v32 & 1) != (v70 & 1))
        {
          goto LABEL_73;
        }

        v68 = v69;
      }

      v62 = v122[0];
      if (v32)
      {
      }

      else
      {
        *(v122[0] + 8 * (v68 >> 6) + 64) |= 1 << v68;
        v71 = (*(v62 + 48) + 16 * v68);
        *v71 = v23;
        v71[1] = v26;
        *(*(v62 + 56) + 8 * v68) = MEMORY[0x1E69E7CC0];
        v72 = *(v62 + 16);
        v73 = __OFADD__(v72, 1);
        v74 = v72 + 1;
        if (v73)
        {
          __break(1u);
LABEL_71:
          __break(1u);
LABEL_72:
          __break(1u);
LABEL_73:
          sub_1C4F029F8();
          __break(1u);
          JUMPOUT(0x1C4438CE0);
        }

        *(v62 + 16) = v74;
      }

      v20 = (*(v62 + 56) + 8 * v68);
      v75 = v10;
      MEMORY[0x1C6940330]();
      v26 = *((*v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v26 >= *((*v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1C4F016D8();
      }

      sub_1C4F01748();

      ++a5;
      v15 = sub_1C48362FC;
      v61 = v118;
    }

    while (v119 != v121);
    v23 = (v62 + 64);
    v101 = 1 << *(v62 + 32);
    v102 = -1;
    if (v101 < 64)
    {
      v102 = ~(-1 << v101);
    }

    v32 = v102 & *(v62 + 64);
    v121 = OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate19ViewInProcessRunner_syncDeviceRetriever;
    v10 = ((v101 + 63) >> 6);

    isUniquelyReferenced_nonNull_native = 0;
    v15 = MEMORY[0x1E69E7CC0];
    if (v32)
    {
LABEL_59:
      while (1)
      {
        v104 = *(*(v62 + 56) + ((isUniquelyReferenced_nonNull_native << 9) | (8 * __clz(__rbit64(v32)))));
        _s11BiomeSourceCMa();
        a5 = *(v116 + v121);
        sub_1C445CD7C(v123, v122);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v105 = v114;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

        v106 = v105;
        v107 = v120;
        sub_1C445CDD8(v113, v106, 3, v115, v123, v104, a5, 0);
        v120 = v107;
        if (v107)
        {
          break;
        }

        v26 = v108;
        v20 = &v124;
        MEMORY[0x1C6940330]();
        if (*((v124 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v124 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1C4F016D8();
        }

        v32 &= v32 - 1;
        sub_1C4F01748();
        v15 = v124;
        if (!v32)
        {
          goto LABEL_55;
        }
      }

      sub_1C445DA1C(v123);
    }

    else
    {
      while (1)
      {
LABEL_55:
        v103 = isUniquelyReferenced_nonNull_native + 1;
        if (__OFADD__(isUniquelyReferenced_nonNull_native, 1))
        {
          goto LABEL_68;
        }

        if (v103 >= v10)
        {
          break;
        }

        v32 = v23[v103];
        ++isUniquelyReferenced_nonNull_native;
        if (v32)
        {
          isUniquelyReferenced_nonNull_native = v103;
          goto LABEL_59;
        }
      }

      sub_1C445DA1C(v123);

      sub_1C445DA70();
      v10 = v109;
    }
  }

  else
  {
    sub_1C446D0DC();
    swift_allocError();
    *v43 = 0xD00000000000001DLL;
    *(v43 + 8) = 0x80000001C4FC42A0;
    *(v43 + 16) = 2;
    swift_willThrow();
  }

  return v10;
}

void sub_1C4438D00(uint64_t a1@<X8>)
{
  v3 = v1;
  v246 = a1;
  v4 = sub_1C456902C(&qword_1EC0C44F8, &qword_1C4F594B8);
  sub_1C43FBD18(v4);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v7 = v233 - v6;
  v8 = type metadata accessor for VectorDB.Config(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBCC4();
  sub_1C4422BD8();
  v10 = sub_1C456902C(&qword_1EC0C4500, &unk_1C4F594C0);
  sub_1C43FBD18(v10);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBC74();
  v242 = v12;
  sub_1C43FBE44();
  v243 = sub_1C4EFA6A8();
  sub_1C43FCDF8();
  *&v239 = v13;
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FBCC4();
  *&v238 = v16 - v15;
  sub_1C43FBE44();
  sub_1C4F01188();
  sub_1C43FCDF8();
  v240 = v18;
  v241 = v17;
  MEMORY[0x1EEE9AC00](v17);
  sub_1C43FBCC4();
  v21 = v20 - v19;
  v22 = _s10ViewConfigVMa(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v23);
  sub_1C43FBD08();
  v26 = (v24 - v25);
  MEMORY[0x1EEE9AC00](v27);
  v29 = v233 - v28;
  v31 = (v3 + *(v30 + 76));
  v244 = v31[1];
  if (v244)
  {
    v237 = v8;
    v245 = *v31;
    if (qword_1EDDFECD0 != -1)
    {
      sub_1C44066DC(&qword_1EDDFECD0);
    }

    v32 = sub_1C4F00978();
    v33 = sub_1C442B738(v32, qword_1EDE2DF70);
    sub_1C44038A8();
    sub_1C443BF44(v3, v29);
    v233[1] = v33;
    v34 = sub_1C4F00968();
    v35 = sub_1C4F01CB8();
    v36 = os_log_type_enabled(v34, v35);
    *&v234 = v2;
    if (v36)
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *v248 = v38;
      *v37 = 136315138;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C44204E4();
      sub_1C443C070(v29, v39);
      v40 = sub_1C4400068();
      v43 = sub_1C441D828(v40, v41, v42);

      *(v37 + 4) = v43;
      _os_log_impl(&dword_1C43F8000, v34, v35, "Using target provided in IntelligencePlatform for view: (%s)", v37, 0xCu);
      sub_1C440962C(v38);
      sub_1C43FBE2C();
      sub_1C43FBE2C();
    }

    else
    {

      sub_1C44204E4();
      sub_1C443C070(v29, v53);
    }

    sub_1C4EFA598();
    v54 = v244;
    swift_bridgeObjectRetain_n();
    if (sub_1C4EFA528())
    {
      v55 = sub_1C4EFA5C8();
      v56 = v233;
      MEMORY[0x1EEE9AC00](v55);
      v231 = v3;
      v57 = sub_1C443C2E4(sub_1C443C368, &v233[-4], v55);

      if (v57)
      {
        sub_1C440BFC0();
        v58 = sub_1C4EFA6D8();
        v60 = sub_1C443C388(v58, v59);
        v61 = v60;
        v62 = v60;
        sub_1C440BFC0();
        sub_1C4EFA6F8();
        sub_1C4F01178();
        *&v235 = sub_1C4F01148();
        v64 = v63;

        (*(v240 + 8))(v21, v241);
        if (v64 >> 60 != 15)
        {
          v65 = v64;
          v66 = v242;
          sub_1C440BFC0();
          sub_1C4EFA6B8();
          v67 = v243;
          if (sub_1C44157D4(v66, 1, v243) == 1)
          {
            sub_1C4420C3C(v66, &qword_1EC0C4500, &unk_1C4F594C0);
            swift_bridgeObjectRelease_n();
            v240 = 0;
            v241 = 0;
            v242 = 0;
            v68 = 0;
            v69 = 0;
            v236 = 0;
            v70 = 0;
            v71 = 2;
          }

          else
          {
            v72 = v239;
            v64 = v238;
            (*(v239 + 32))(v238, v66, v67);
            v240 = sub_1C4EFA698();
            v241 = v73;
            v242 = sub_1C4EFA678();
            v68 = v74;
            v69 = sub_1C4EFA688();
            v236 = v75;
            sub_1C4EFA668();
            v77 = v76;
            (*(v72 + 8))(v64, v67);
            swift_bridgeObjectRelease_n();
            v70 = v77;
            v71 = 1;
          }

          switch(v61)
          {
            case 0:
              sub_1C441063C();
              v134 = sub_1C4EF9348();
              sub_1C44099C4(v134);
              v108 = sub_1C4EF9338();
              sub_1C4BB1D68();
              sub_1C4432B88(&type metadata for SubgraphDatabaseTable.Config);
              sub_1C43FC970();
              v235 = *v248;
              v135 = *&v248[16];
              v136 = v248[26];
              v137 = *&v248[24];
              _s6ConfigVMa(0);
              sub_1C4416480();
              v112 = v246;
              sub_1C43FCF64();
              sub_1C440BAA8(v138, v139, v140, v237);
              *v112 = 0;
              v141 = sub_1C443F7D4();
              bzero(v141, 0xC8uLL);
              *(v112 + 224) = v235;
              *(v112 + 240) = v135;
              *(v112 + 250) = v136;
              *(v112 + 248) = v137;
              *(v112 + 256) = 0;
              *(v112 + 264) = 0;
              *(v112 + 272) = 0;
              *(v112 + v108[12]) = v71;
              sub_1C4400FFC((v112 + v108[13]));
              *(v142 + 48) = v238;
              v118.n128_f64[0] = sub_1C4407D44(v112 + v108[16]);
              v144 = v112 + v143;
              *v144 = 0;
              *(v144 + 8) = 0;
              *(v144 + 16) = 0;
              goto LABEL_31;
            case 1:
              sub_1C44366C0();
              v146 = sub_1C4EF9348();
              sub_1C44099C4(v146);
              v147 = sub_1C4EF9338();
              sub_1C4BB1DBC();
              sub_1C4432B88(&type metadata for ObjectRowDatabaseTable.Config);
              sub_1C43FC970();
              v238 = *v248;
              v234 = *&v248[32];
              v235 = *&v248[16];
              v148 = *&v248[48];
              _s6ConfigVMa(0);
              sub_1C4416480();
              v149 = v246;
              sub_1C43FCF64();
              sub_1C440BAA8(v150, v151, v152, v237);
              *v149 = 1;
              *(v149 + 8) = v245;
              *(v149 + 16) = v54;
              bzero((v149 + 24), 0x90uLL);
              *(v149 + 168) = v238;
              v153 = v234;
              *(v149 + 184) = v235;
              *(v149 + 200) = v153;
              *(v149 + 216) = v148;
              *(v149 + 224) = 0;
              *(v149 + 232) = 0;
              *(v149 + 240) = 0;
              *(v149 + 247) = 0;
              *(v149 + 256) = 0;
              *(v149 + 264) = 0;
              *(v149 + 272) = 0;
              *(v149 + v147[12]) = v71;
              sub_1C4400FFC((v149 + v147[13]));
              *(v154 + 48) = v70;
              sub_1C4407D44(v149 + v147[16]);
              sub_1C4430244(v149 + v155);
              sub_1C44354A4(v149 + v156);
              v158 = (v149 + v157);
              *v158 = v159;
              v158[1] = v159;
              goto LABEL_38;
            case 2:
              sub_1C44224E8();
              v121 = sub_1C4EF9348();
              sub_1C44099C4(v121);
              v122 = sub_1C4EF9338();
              sub_1C443C3D0();
              sub_1C4432B88(&type metadata for UnstructuredDatabaseTable.Config);
              sub_1C43FC970();
              v238 = *&v248[16];
              v239 = *v248;
              v123 = *&v248[32];
              _s6ConfigVMa(0);
              sub_1C4416480();
              v124 = v246;
              sub_1C43FCF64();
              sub_1C440BAA8(v125, v126, v127, v237);
              sub_1C4434290(2);
              v128 = v238;
              *(v124 + 24) = v239;
              *(v124 + 40) = v128;
              *(v124 + 56) = v123;
              bzero((v124 + 64), 0xBBuLL);
              sub_1C44185E8();
              *(v124 + v129) = v71;
              sub_1C440B484((v124 + v122[13]));
              v130[4] = v69;
              goto LABEL_36;
            case 3:
              sub_1C44224E8();
              v131 = sub_1C4EF9348();
              sub_1C44099C4(v131);
              v64 = sub_1C4EF9338();
              sub_1C4BB1E10();
              sub_1C4432B88(&type metadata for CustomRowDatabaseTable.Config);
              sub_1C43FC970();
              memcpy(v247, v248, sizeof(v247));
              v132 = _s6ConfigVMa(0);
              sub_1C440D980(v132);
              MEMORY[0] = 3;
              MEMORY[8] = v245;
              MEMORY[0x10] = v54;
              MEMORY[0x18] = 0u;
              MEMORY[0x28] = 0u;
              MEMORY[0x38] = 0;
              memcpy(0x40, v247, 0x68uLL);
              MEMORY[0xA8] = 0u;
              MEMORY[0xB8] = 0u;
              MEMORY[0xC8] = 0u;
              MEMORY[0xD8] = 0u;
              MEMORY[0xE8] = 0u;
              MEMORY[0xF7] = 0;
              MEMORY[0x100] = 0;
              MEMORY[0x108] = 0;
              MEMORY[0x110] = 0;
              **(v64 + 48) = v71;
              sub_1C440B484(*(v64 + 52));
              sub_1C4404780(v133);
              *(v101 + 80) = 0;
              goto LABEL_25;
            case 4:
            case 5:
            case 6:
            case 7:
              swift_bridgeObjectRelease_n();
              sub_1C441DFEC(v235, v65);
              v78 = _s6ConfigVMa(0);
              sub_1C440D980(v78);
              MEMORY[0] = v62;
              goto LABEL_24;
            case 8:
              swift_bridgeObjectRelease_n();
              sub_1C441DFEC(v235, v65);
              v98 = _s6ConfigVMa(0);
              sub_1C440D980(v98);
              MEMORY[0] = 8;
LABEL_24:
              sub_1C4451418();
              MEMORY[0x100] = 0;
              MEMORY[0x108] = 0;
              MEMORY[0x110] = 0;
              **(v64 + 48) = v71;
              v99 = *(v64 + 52);
              v100 = v241;
              *v99 = v240;
              v99[1] = v100;
              v99[2] = v242;
              v99[3] = v68;
              sub_1C4404780(v99);
              *(v101 + 80) = 0;
              v102 = 0uLL;
LABEL_25:
              *(v101 + 48) = v102;
              *(v101 + 64) = v102;
              *(v101 + 16) = v102;
              *(v101 + 32) = v102;
              *v101 = v102;
              sub_1C4430244(*(v64 + 68));
              sub_1C44354A4(v103);
              goto LABEL_26;
            case 9:
              LODWORD(v238) = v71;
              sub_1C44366C0();
              v173 = sub_1C4EF9348();
              sub_1C44099C4(v173);
              sub_1C4EF9338();
              sub_1C4505F5C(&qword_1EDDFEAF0, type metadata accessor for VectorDB.Config, &protocol conformance descriptor for VectorDB.Config);
              v174 = v234;
              sub_1C4EF9328();
              sub_1C43FC970();
              v122 = _s6ConfigVMa(0);
              v124 = v246;
              sub_1C4437D00(v174, v246 + v122[11]);
              sub_1C442BC40();
              sub_1C440BAA8(v175, v176, v177, v178);
              sub_1C4434290(9);
              bzero((v124 + 24), 0xE3uLL);
              sub_1C44185E8();
              *(v124 + v179) = v238;
              sub_1C440B484((v124 + v122[13]));
              v130[4] = v239;
LABEL_36:
              v130[5] = v236;
              v130[6] = v70;
              sub_1C4407D44(v124 + v122[16]);
              sub_1C4430244(v124 + v180);
              sub_1C44354A4(v124 + v181);
              sub_1C444ADB0((v124 + v182), v183);
              v106 = (v124 + v184);
              goto LABEL_39;
            case 10:
              sub_1C44224E8();
              v196 = sub_1C4EF9348();
              sub_1C44099C4(v196);
              v197 = sub_1C4EF9338();
              sub_1C4707CC4();
              sub_1C4432B88(&type metadata for EntityInteractionHistogramDatabaseTable.Config);
              sub_1C43FC970();
              memcpy(__dst, v248, sizeof(__dst));
              v198 = _s6ConfigVMa(0);
              sub_1C440D980(v198);
              MEMORY[0] = 10;
              sub_1C4451418();
              MEMORY[0x100] = 0;
              MEMORY[0x108] = 0;
              MEMORY[0x110] = 0;
              *v197[12] = v71;
              sub_1C440B484(v197[13]);
              sub_1C4404780(v199);
              memcpy(v200, __dst, 0x58uLL);
              sub_1C4430244(v197[17]);
              sub_1C44354A4(v201);
              v105 = 0uLL;
LABEL_26:
              sub_1C444ADB0(v104, v105);
              goto LABEL_39;
            case 11:
              sub_1C441063C();
              v107 = sub_1C4EF9348();
              sub_1C44099C4(v107);
              v108 = sub_1C4EF9338();
              sub_1C4BB1D14();
              sub_1C4432B88(&unk_1F43E6B28);
              sub_1C43FC970();
              v109 = *v248;
              v110 = *&v248[8];
              v111 = v248[16];
              _s6ConfigVMa(0);
              sub_1C4416480();
              v112 = v246;
              sub_1C43FCF64();
              sub_1C440BAA8(v113, v114, v115, v237);
              *v112 = 11;
              v116 = sub_1C443F7D4();
              bzero(v116, 0xE3uLL);
              *(v112 + 256) = 0;
              *(v112 + 264) = 0;
              *(v112 + 272) = 0;
              *(v112 + v108[12]) = v71;
              sub_1C4400FFC((v112 + v108[13]));
              *(v117 + 48) = v238;
              v118.n128_f64[0] = sub_1C4407D44(v112 + v108[16]);
              v120 = v112 + v119;
              *v120 = v109;
              *(v120 + 8) = v110;
              *(v120 + 16) = v111;
LABEL_31:
              v145 = v112 + v108[14];
              *v145 = 0;
              *(v145 + 8) = 0;
              *(v145 + 16) = 0;
              goto LABEL_34;
            case 12:
              sub_1C441063C();
              v160 = sub_1C4EF9348();
              sub_1C44099C4(v160);
              v108 = sub_1C4EF9338();
              sub_1C4BB1C6C();
              sub_1C4432B88(&type metadata for EntityRelevanceRankingDatabaseTable.Config);
              sub_1C43FC970();
              v161 = *v248;
              v162 = *&v248[8];
              v163 = v248[16];
              _s6ConfigVMa(0);
              sub_1C4416480();
              v112 = v246;
              sub_1C43FCF64();
              sub_1C440BAA8(v164, v165, v166, v237);
              *v112 = 12;
              v167 = sub_1C443F7D4();
              bzero(v167, 0xE3uLL);
              *(v112 + 256) = 0;
              *(v112 + 264) = 0;
              *(v112 + 272) = 0;
              *(v112 + v108[12]) = v71;
              sub_1C4400FFC((v112 + v108[13]));
              *(v168 + 48) = v238;
              sub_1C4407D44(v112 + v108[16]);
              sub_1C4430244(v112 + v169);
              v171 = v112 + v170;
              *v171 = v161;
              *(v171 + 8) = v162;
              *(v171 + 16) = v163;
LABEL_34:
              sub_1C444ADB0((v112 + v108[18]), v118);
              v106 = (v112 + v172);
              goto LABEL_39;
            case 13:
              sub_1C44366C0();
              v185 = sub_1C4EF9348();
              sub_1C44099C4(v185);
              v147 = sub_1C4EF9338();
              sub_1C4BB1CC0();
              sub_1C4432B88(&type metadata for EntityRelevanceHistoricalFeatureDatabaseTable.Config);
              sub_1C43FC970();
              v186 = *v248;
              v187 = *&v248[24];
              _s6ConfigVMa(0);
              sub_1C4416480();
              v238 = *&v248[8];
              v149 = v246;
              sub_1C43FCF64();
              sub_1C440BAA8(v188, v189, v190, v237);
              *v149 = 13;
              *(v149 + 8) = v245;
              *(v149 + 16) = v54;
              bzero((v149 + 24), 0xE3uLL);
              *(v149 + 256) = 0;
              *(v149 + 264) = 0;
              *(v149 + 272) = 0;
              *(v149 + v147[12]) = v71;
              sub_1C4400FFC((v149 + v147[13]));
              *(v191 + 48) = v70;
              sub_1C4407D44(v149 + v147[16]);
              sub_1C4430244(v149 + v192);
              sub_1C44354A4(v149 + v193);
              v195 = v149 + v194;
              *v195 = v186;
              *(v195 + 8) = v238;
              *(v195 + 24) = v187;
LABEL_38:
              v106 = (v149 + v147[15]);
LABEL_39:
              *v106 = 0;
              v106[1] = 0;
              v106[2] = 0;
              return;
            case 14:
              sub_1C44224E8();
              v82 = sub_1C4EF9348();
              sub_1C44099C4(v82);
              v83 = sub_1C4EF9338();
              sub_1C4BB1C18();
              sub_1C4432B88(&unk_1F43EA2E8);
              sub_1C43FC970();
              v84 = *v248;
              _s6ConfigVMa(0);
              sub_1C4416480();
              v239 = *&v248[8];
              v85 = v246;
              sub_1C43FCF64();
              sub_1C440BAA8(v86, v87, v88, v237);
              sub_1C4434290(14);
              bzero((v85 + 24), 0xE3uLL);
              sub_1C44185E8();
              *(v85 + v89) = v71;
              sub_1C440B484((v85 + *(v83 + 52)));
              sub_1C4404780(v90);
              sub_1C4407D44(v85 + v91);
              sub_1C4430244(v85 + v92);
              sub_1C44354A4(v85 + v93);
              sub_1C444ADB0((v85 + v94), v95);
              v97 = v85 + v96;
              *v97 = v84;
              *(v97 + 8) = v239;
              return;
            default:
              v212 = *v70;
              v211 = v70[1];
              sub_1C442F744();
              _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
              sub_1C4F02248();

              sub_1C4415D08();
              v247[0] = v214;
              v247[1] = v213;
              sub_1C440BFC0();
              v215 = sub_1C4EFA6D8();
              MEMORY[0x1C6940010](v215);

              v56 = v247[0];
              v216 = v247[1];
              sub_1C450B034();
              sub_1C441C114();
              v208 = swift_allocError();
              *v217 = v212;
              *(v217 + 8) = v211;
              *(v217 + 16) = v56;
              *(v217 + 24) = v216;
              v218 = *&v248[16];
              *(v217 + 32) = *v248;
              *(v217 + 48) = v218;
              v219 = 3;
              goto LABEL_47;
          }
        }

        v221 = *v3;
        v220 = v3[1];
        v56 = 0x80000001C4FB4A60;
        sub_1C450B034();
        sub_1C441C114();
        v208 = swift_allocError();
        *v217 = v221;
        *(v217 + 8) = v220;
        *(v217 + 16) = 0xD000000000000017;
        *(v217 + 24) = 0x80000001C4FB4A60;
        v222 = *&v248[16];
        *(v217 + 32) = *v248;
        *(v217 + 48) = v222;
        v219 = 4;
LABEL_47:
        *(v217 + 64) = v219;
        goto LABEL_48;
      }

      v210 = *v3;
      v209 = v3[1];
      sub_1C450B034();
      sub_1C441C114();
      v208 = swift_allocError();
      *v207 = v210;
      *(v207 + 8) = v209;
      *(v207 + 16) = xmmword_1C4F59250;
      strcpy((v207 + 32), "no view found");
      *(v207 + 46) = -4864;
    }

    else
    {
      v56 = *v3;
      v202 = v3[1];
      sub_1C442F744();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4F02248();

      sub_1C4415D08();
      v247[0] = v204 + 6;
      v247[1] = v203;
      MEMORY[0x1C6940010](v245, v54);
      MEMORY[0x1C6940010](0x64656C69616620, 0xE700000000000000);
      v206 = v247[0];
      v205 = v247[1];
      sub_1C450B034();
      sub_1C441C114();
      v208 = swift_allocError();
      *v207 = v56;
      *(v207 + 8) = v202;
      *(v207 + 16) = xmmword_1C4F59250;
      *(v207 + 32) = v206;
      *(v207 + 40) = v205;
    }

    *(v207 + 48) = *v248;
    *(v207 + 64) = 0;
LABEL_48:
    swift_willThrow();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v223 = v208;
    v224 = sub_1C4F00968();
    v7 = sub_1C4F01CF8();

    if (os_log_type_enabled(v224, v7))
    {
      v56 = swift_slowAlloc();
      v225 = swift_slowAlloc();
      *v56 = 138412290;
      v226 = v208;
      v227 = _swift_stdlib_bridgeErrorToNSError();
      *(v56 + 4) = v227;
      *v225 = v227;
      _os_log_impl(&dword_1C43F8000, v224, v7, "%@", v56, 0xCu);
      sub_1C4420C3C(v225, &qword_1EC0BDA00, &qword_1C4F10D30);
      sub_1C43FBE2C();
      sub_1C43FBE2C();
    }

    sub_1C442F744();
    v247[0] = v208;
    sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
    sub_1C4F02438();
    v232 = 0;
    for (i = 147; ; i = 73)
    {
      v231 = i;
      sub_1C4F024A8();
      __break(1u);
LABEL_52:
      sub_1C4420C3C(v7, &qword_1EC0C44F8, &qword_1C4F594B8);
      sub_1C442F744();
      sub_1C4F02248();

      sub_1C4415D08();
      *v248 = v230 + 15;
      *&v248[8] = v229;
      MEMORY[0x1C6940010](*v56, v56[1]);
      v232 = 0;
    }
  }

  if (qword_1EDDFECD0 != -1)
  {
    sub_1C44066DC(&qword_1EDDFECD0);
  }

  v44 = sub_1C4F00978();
  sub_1C442B738(v44, qword_1EDE2DF70);
  sub_1C44038A8();
  v245 = v3;
  sub_1C443BF44(v3, v26);
  v45 = sub_1C4F00968();
  v46 = sub_1C4F01CB8();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    *v248 = v48;
    *v47 = 136315138;
    v49 = *v26;
    v50 = v26[1];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C44204E4();
    sub_1C443C070(v26, v51);
    v52 = sub_1C441D828(v49, v50, v248);

    *(v47 + 4) = v52;
    _os_log_impl(&dword_1C43F8000, v45, v46, "Using artifact configuration for view: (%s)", v47, 0xCu);
    sub_1C440962C(v48);
    sub_1C43FBE2C();
    sub_1C43FBE2C();
  }

  else
  {

    sub_1C44204E4();
    sub_1C443C070(v26, v79);
  }

  v80 = *(v22 + 72);
  v56 = v245;
  sub_1C445FFF0(v245 + v80, v7, &qword_1EC0C44F8, &qword_1C4F594B8);
  v81 = _s6ConfigVMa(0);
  if (sub_1C44157D4(v7, 1, v81) == 1)
  {
    goto LABEL_52;
  }

  sub_1C4437D00(v7, v246);
}

void ViewDatabaseArtifact.Property.init(from:)()
{
  sub_1C43FE96C();
  v2 = v1;
  v4 = v3;
  type metadata accessor for ViewDatabaseArtifact.Property(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBCC4();
  v8 = (v7 - v6);
  sub_1C4409678(v2, v2[3]);
  sub_1C4412704();
  sub_1C4F02BA8();
  if (!v0)
  {
    sub_1C4418280(v38, v39);
    sub_1C4412704();
    *v8 = sub_1C4F02888();
    v8[1] = v9;
    sub_1C4418280(v38, v39);
    sub_1C4412704();
    v10 = sub_1C4F02888();
    v12 = v10;
    v13 = v11;
    v14 = v10 == 0x676E69727473 && v11 == 0xE600000000000000;
    if (v14 || (sub_1C442D554(0x676E69727473, 0xE600000000000000) & 1) != 0 || (v12 == 1415071060 ? (v15 = v13 == 0xE400000000000000) : (v15 = 0), v15 || (sub_1C4407DA8(1415071060) & 1) != 0 || (v12 == 1852797802 ? (v16 = v13 == 0xE400000000000000) : (v16 = 0), v16 || (sub_1C4407DA8(1852797802) & 1) != 0)))
    {

      sub_1C440A9C4();
      sub_1C4EFBDD8();
    }

    else
    {
      v17 = v12 == 7630441 && v13 == 0xE300000000000000;
      if (v17 || (sub_1C442D554(7630441, 0xE300000000000000) & 1) != 0 || (v12 == 0x52454745544E49 ? (v18 = v13 == 0xE700000000000000) : (v18 = 0), v18 || (sub_1C442D554(0x52454745544E49, 0xE700000000000000) & 1) != 0 || (v12 == 5525065 ? (v19 = v13 == 0xE300000000000000) : (v19 = 0), v19 || (sub_1C442D554(5525065, 0xE300000000000000) & 1) != 0 || (v12 == 0x72656765746E69 ? (v20 = v13 == 0xE700000000000000) : (v20 = 0), v20 || (sub_1C442D554(0x72656765746E69, 0xE700000000000000) & 1) != 0))))
      {

        sub_1C440A9C4();
        sub_1C4EFBE08();
      }

      else
      {
        v21 = v12 == 0x74616F6C66 && v13 == 0xE500000000000000;
        if (v21 || (sub_1C442D554(0x74616F6C66, 0xE500000000000000) & 1) != 0 || (v12 == 1279346002 ? (v22 = v13 == 0xE400000000000000) : (v22 = 0), v22 || (sub_1C4407DA8(1279346002) & 1) != 0 || (v12 == 0x454C42554F44 ? (v23 = v13 == 0xE600000000000000) : (v23 = 0), v23 || (sub_1C442D554(0x454C42554F44, 0xE600000000000000) & 1) != 0 || (v12 == 0x656C62756F64 ? (v24 = v13 == 0xE600000000000000) : (v24 = 0), v24 || (sub_1C442D554(0x656C62756F64, 0xE600000000000000) & 1) != 0))))
        {

          sub_1C440A9C4();
          sub_1C4EFBDE8();
        }

        else
        {
          v25 = v12 == 1635017060 && v13 == 0xE400000000000000;
          if (v25 || (sub_1C4407DA8(1635017060) & 1) != 0 || (v12 == 1112493122 ? (v26 = v13 == 0xE400000000000000) : (v26 = 0), v26 || (sub_1C4407DA8(1112493122) & 1) != 0 || (v12 == 1684632949 ? (v27 = v13 == 0xE400000000000000) : (v27 = 0), v27 || (sub_1C4407DA8(1684632949) & 1) != 0)))
          {

            sub_1C440A9C4();
            sub_1C4EFBDB8();
          }

          else
          {
            v28 = v12 == 7958113 && v13 == 0xE300000000000000;
            if (!v28 && (sub_1C442D554(7958113, 0xE300000000000000) & 1) == 0)
            {
              v29 = v12 == 5852737 && v13 == 0xE300000000000000;
              if (!v29 && (sub_1C442D554(5852737, 0xE300000000000000) & 1) == 0)
              {
                v30 = v12 == 1280266050 && v13 == 0xE400000000000000;
                if (v30 || (sub_1C4407DA8(1280266050) & 1) != 0 || (v12 == 0x4E41454C4F4F42 ? (v31 = v13 == 0xE700000000000000) : (v31 = 0), v31 || (sub_1C442D554(0x4E41454C4F4F42, 0xE700000000000000) & 1) != 0))
                {

                  sub_1C440A9C4();
                  sub_1C4EFBDF8();
                  goto LABEL_21;
                }

                v32 = v12 == 1702125924 && v13 == 0xE400000000000000;
                if (v32 || (sub_1C4407DA8(1702125924) & 1) != 0 || (v12 == 0x454D495445544144 ? (v33 = v13 == 0xE800000000000000) : (v33 = 0), v33 || (sub_1C442D554(0x454D495445544144, 0xE800000000000000) & 1) != 0))
                {

                  sub_1C440A9C4();
                  sub_1C4EFBE18();
                  goto LABEL_21;
                }

                v34 = v12 == 1819047278 && v13 == 0xE400000000000000;
                if (!v34 && (sub_1C4407DA8(1819047278) & 1) == 0)
                {
                  *&v36 = 0xD000000000000016;
                  *(&v36 + 1) = 0x80000001C4F92760;
                  MEMORY[0x1C6940010](v12, v13);

                  sub_1C450B034();
                  swift_allocError();
                  *v35 = 0xD000000000000016;
                  *(v35 + 8) = 0x80000001C4F92760;
                  *(v35 + 16) = 0;
                  *(v35 + 24) = 0xE000000000000000;
                  *(v35 + 32) = v36;
                  *(v35 + 48) = v37;
                  *(v35 + 64) = 3;
                  swift_willThrow();
                  sub_1C440962C(v38);
                  sub_1C440962C(v2);

                  goto LABEL_4;
                }
              }
            }

            sub_1C440A9C4();
            sub_1C4EFBDA8();
          }
        }
      }
    }

LABEL_21:
    sub_1C440962C(v38);
    sub_1C443CCBC(v8, v4);
    sub_1C440962C(v2);
    sub_1C443CE28(v8, type metadata accessor for ViewDatabaseArtifact.Property);
    goto LABEL_4;
  }

  sub_1C440962C(v2);
LABEL_4:
  sub_1C43FBC80();
}

void sub_1C443A738(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[3] = a1;
  v8[4] = a2;
  sub_1C443AE34(sub_1C4437948, v8, a3, a4, a5, a6, a7, a8, v8[0], v8[1]);
}

uint64_t sub_1C443A790@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v25 = a1;
  v23[1] = a4;
  v6 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v24 = v23 - v7;
  v8 = sub_1C4EFBC98();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1C4EFB678();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v23 - v17;
  sub_1C4EFB648();
  sub_1C4EFB638();
  *&v26[0] = a2;
  *(&v26[0] + 1) = a3;
  sub_1C4415EA8();
  sub_1C4EFB668();
  sub_1C4EFB638();
  (*(v13 + 32))(v15, v18, v12);
  sub_1C4EFBC88();
  v19 = v28;
  sub_1C4EFBEE8();
  if (v19)
  {
    return (*(v9 + 8))(v11, v8);
  }

  (*(v9 + 8))(v11, v8);
  v21 = sub_1C4EFB768();
  v22 = v24;
  sub_1C440BAA8(v24, 1, 1, v21);
  v27 = 0;
  memset(v26, 0, sizeof(v26));
  sub_1C4EFB9A8();

  sub_1C4420C3C(v26, &unk_1EC0BC770, &qword_1C4F10DC0);
  return sub_1C4420C3C(v22, &unk_1EC0C06C0, &unk_1C4F10DB0);
}

unint64_t sub_1C443AAB4()
{
  sub_1C441AE30();
  v11[2] = v0;
  v11[3] = v1;
  sub_1C445E5B0(sub_1C445E5CC, v11);
  if (!v2 || (_s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0(), v3 = sub_1C4402E08(), v5 = sub_1C445EDA0(v3, v4), v5 == 13))
  {
    v11[4] = 0;
    v12 = 0xE000000000000000;
    sub_1C4F02248();

    sub_1C442AC70();
    MEMORY[0x1C6940010](8250, 0xE200000000000000);
    v7 = sub_1C4402E08();
    MEMORY[0x1C6940010](v7);

    v6 = v12;
    sub_1C446D0DC();
    sub_1C441C114();
    v8 = swift_allocError();
    sub_1C441689C(v8, v9);
  }

  else
  {
    v6 = v5;
  }

  return v6;
}

void sub_1C443ABE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  sub_1C43FE96C();
  sub_1C4400368();
  sub_1C4EFB1E8();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBFDC();
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FC318();
  sub_1C43FCDF8();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  sub_1C4406E1C();
  sub_1C456902C(&qword_1EC0C2BD0, &qword_1C4F0FF50);
  sub_1C4404B44();
  sub_1C4EFAF88();
  if (!v12)
  {
    goto LABEL_8;
  }

  v18 = v12;
  sub_1C4EFA798();
  sub_1C447F088();
  sub_1C445E7F4();
  v19 = *(v16 + 8);
  v20 = sub_1C43FCE84();
  v19(v20);
  if (v10)
  {

    v23 = sub_1C4778264();
    sub_1C43FFB2C(&type metadata for ErrorHandlingDatabasePoolError, v23);
    sub_1C4433CB8();
LABEL_8:
    sub_1C440431C();
    sub_1C43FBC80();
    return;
  }

  v21 = v12;
  sub_1C4EFAAC8();
  sub_1C447F088();
  sub_1C445E7F4();
  v22 = sub_1C43FCE84();
  v19(v22);
  sub_1C442F1A4();
  sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
  sub_1C441B920();
  if (!sub_1C441D1F8(v11, v24, v25))
  {

    goto LABEL_8;
  }

  v26 = sub_1C43FD75C();
  v27(v26);
  v28 = sub_1C441C250(OBJC_IVAR____TtC24IntelligencePlatformCore25ErrorHandlingDatabasePool_databaseFileURL);
  sub_1C4774554(v28, v29);
  __break(1u);
}

void sub_1C443AE34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  sub_1C43FE96C();
  sub_1C4417168();
  sub_1C4EFB1E8();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBFDC();
  sub_1C4433378();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C442BAE8(v14, v15, v16, v17, v18, v19, v20, v21, v36);
  sub_1C43FCDF8();
  v23 = v22;
  MEMORY[0x1EEE9AC00](v24);
  sub_1C4406E1C();
  _s10ViewConfigVMa(0);
  sub_1C444FD74();
  if (!v10)
  {
    goto LABEL_7;
  }

  v25 = v10;
  sub_1C4EFA798();
  sub_1C447F088();
  sub_1C445E7F4();
  v26 = *(v23 + 8);
  v27 = sub_1C43FCE84();
  v26(v27);
  if (v11)
  {

    v30 = sub_1C4778264();
    sub_1C43FFB2C(&type metadata for ErrorHandlingDatabasePoolError, v30);
    sub_1C4433CB8();
LABEL_7:
    sub_1C440431C();
    sub_1C43FBC80();
    return;
  }

  v28 = v10;
  sub_1C4EFAAC8();
  sub_1C447F088();
  sub_1C445E7F4();
  v29 = sub_1C43FCE84();
  v26(v29);
  sub_1C442F1A4();
  v31 = sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
  if (!sub_1C43FEF9C(v31))
  {

    goto LABEL_7;
  }

  v32 = sub_1C440F670();
  v33(v32);
  v34 = sub_1C441C250(OBJC_IVAR____TtC24IntelligencePlatformCore25ErrorHandlingDatabasePool_databaseFileURL);
  sub_1C4774554(v34, v35);
  __break(1u);
}

void sub_1C443B054(uint64_t a1@<X8>)
{
  v3 = v1;

  v5 = sub_1C443AAB4();

  if (!v2)
  {
    v6 = *(v3 + 24);
    os_unfair_lock_lock((v6 + 24));
    sub_1C444F290((v6 + 16), v5, a1);
    os_unfair_lock_unlock((v6 + 24));
  }
}

uint64_t sub_1C443B0F8()
{
  sub_1C443B054(v0 + 16);
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  sub_1C4409678((v0 + 16), v1);
  v8 = (*(v2 + 8) + **(v2 + 8));
  v3 = swift_task_alloc();
  *(v0 + 80) = v3;
  *v3 = v0;
  v3[1] = sub_1C445F5D8;
  v4 = *(v0 + 112);
  v6 = *(v0 + 56);
  v5 = *(v0 + 64);

  return v8(v6, v5, v4, v1, v2);
}

uint64_t sub_1C443B274@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  v50 = a3;
  v6 = 0;
  v7 = 0;
  v54 = a2 & 0xC000000000000001;
  v55 = sub_1C4428DA0(a2);
  v52 = a2 & 0xFFFFFFFFFFFFFF8;
  v53 = a2;
  v8 = MEMORY[0x1E69E7CC8];
  while (v55 != v6)
  {
    if (v54)
    {
      v9 = MEMORY[0x1C6940F90](v6, v53);
    }

    else
    {
      if (v6 >= *(v52 + 16))
      {
        goto LABEL_35;
      }

      v9 = *(v53 + 8 * v6 + 32);
    }

    v10 = v9;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    v11 = sub_1C443ED0C([v9 configIdentifier]);
    if (v4)
    {

      v46 = v7;
      return sub_1C44239FC(v46, 0);
    }

    v15 = v11;
    v16 = v12;
    v17 = v13;
    v18 = v14;
    v56 = v10;
    sub_1C44239FC(v7, 0);
    swift_isUniquelyReferenced_nonNull_native();
    *&v59[0] = v8;
    v19 = sub_1C443B6C8(v15, v16, v17, v18);
    if (__OFADD__(*(v8 + 16), (v20 & 1) == 0))
    {
      goto LABEL_36;
    }

    v21 = v19;
    v22 = v20;
    sub_1C456902C(&unk_1EC0C6070, &unk_1C4F6A1E0);
    v8 = *&v59[0];
    if (sub_1C4F02458())
    {
      v23 = sub_1C443B6C8(v15, v16, v17, v18);
      if ((v22 & 1) != (v24 & 1))
      {
        goto LABEL_39;
      }

      v21 = v23;
    }

    if (v22)
    {
    }

    else
    {
      *(*&v59[0] + 8 * (v21 >> 6) + 64) |= 1 << v21;
      v25 = *(v8 + 48) + 32 * v21;
      *v25 = v15;
      *(v25 + 8) = v16;
      *(v25 + 16) = v17;
      *(v25 + 24) = v18;
      *(*(v8 + 56) + 8 * v21) = MEMORY[0x1E69E7CC0];
      v26 = *(v8 + 16);
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
        goto LABEL_38;
      }

      *(v8 + 16) = v28;
    }

    v29 = (*(v8 + 56) + 8 * v21);
    v30 = v56;
    MEMORY[0x1C6940330]();
    v4 = 0;
    if (*((*v29 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v29 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1C4F016D8();
    }

    sub_1C4F01748();

    ++v6;
    v7 = sub_1C48362FC;
  }

  v57 = v7;
  v58 = v4;
  v31 = 0;
  v61 = MEMORY[0x1E69E7CC0];
  v32 = 1 << *(v8 + 32);
  v33 = -1;
  if (v32 < 64)
  {
    v33 = ~(-1 << v32);
  }

  v34 = v33 & *(v8 + 64);
  v35 = (v32 + 63) >> 6;
  if (!v34)
  {
LABEL_24:
    while (1)
    {
      v36 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        break;
      }

      if (v36 >= v35)
      {

        v48 = *a1;
        v47 = a1[1];
        v60 = 0;
        memset(v59, 0, sizeof(v59));
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C445DC44(v48, v47, v59, v61, v50);
        v46 = v57;
        return sub_1C44239FC(v46, 0);
      }

      v34 = *(v8 + 64 + 8 * v36);
      ++v31;
      if (v34)
      {
        goto LABEL_27;
      }
    }

LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    result = sub_1C4F029F8();
    __break(1u);
    return result;
  }

  while (1)
  {
    v36 = v31;
LABEL_27:
    v37 = __clz(__rbit64(v34)) | (v36 << 6);
    v38 = *(v8 + 48) + 32 * v37;
    v40 = *v38;
    v39 = *(v38 + 8);
    v41 = *(v38 + 24);
    v42 = *(*(v8 + 56) + 8 * v37);
    v43 = *(v38 + 16);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v44 = sub_1C4437EE8(v40, v39, v43, v41, v42, a1);
    if (v58)
    {
      break;
    }

    v45 = v44;
    v34 &= v34 - 1;

    sub_1C445CB24(v45);
    v31 = v36;
    if (!v34)
    {
      goto LABEL_24;
    }
  }

  return sub_1C44239FC(v57, 0);
}

unint64_t sub_1C443B6C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  sub_1C443309C(a1);
  sub_1C4F01298();
  sub_1C4409528(v5);
  sub_1C4F01298();

  MEMORY[0x1C69417F0](a4);
  v8 = sub_1C4F02B68();

  return sub_1C443B784(a1, a2, v5, a4, v8);
}

unint64_t sub_1C443B784(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v6 = -1 << *(v5 + 32);
  v7 = a5 & ~v6;
  if ((*(v5 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v10 = ~v6;
    do
    {
      v11 = *(v5 + 48) + 32 * v7;
      v12 = *(v11 + 16);
      v13 = *(v11 + 24);
      v14 = *v11 == a1 && *(v11 + 8) == a2;
      if (v14 || (sub_1C4F02938() & 1) != 0)
      {
        v15 = 0xE700000000000000;
        v16 = 0x6C6F72746E6F63;
        switch(v12)
        {
          case 1:
            v16 = 0x6764656C776F6E6BLL;
            v15 = 0xEE00687061724765;
            break;
          case 2:
            v16 = 0x7055737961776C61;
            v17 = 1702125924;
            goto LABEL_14;
          case 3:
            v15 = 0xE500000000000000;
            v16 = 0x656D6F6962;
            break;
          case 4:
            v15 = 0xE400000000000000;
            v16 = 2003134838;
            break;
          case 5:
            v16 = 0xD000000000000010;
            v15 = 0x80000001C4F842B0;
            break;
          case 6:
            v16 = 0xD000000000000014;
            v15 = 0x80000001C4F842D0;
            break;
          case 7:
            v16 = 0x6163696669746F6ELL;
            v17 = 1852795252;
LABEL_14:
            v15 = v17 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
            break;
          default:
            break;
        }

        v18 = 0xE700000000000000;
        v19 = 0x6C6F72746E6F63;
        switch(a3)
        {
          case 1:
            v19 = 0x6764656C776F6E6BLL;
            v18 = 0xEE00687061724765;
            break;
          case 2:
            v19 = 0x7055737961776C61;
            v20 = 1702125924;
            goto LABEL_23;
          case 3:
            v18 = 0xE500000000000000;
            v19 = 0x656D6F6962;
            break;
          case 4:
            v18 = 0xE400000000000000;
            v19 = 2003134838;
            break;
          case 5:
            v19 = 0xD000000000000010;
            v18 = 0x80000001C4F842B0;
            break;
          case 6:
            v19 = 0xD000000000000014;
            v18 = 0x80000001C4F842D0;
            break;
          case 7:
            v19 = 0x6163696669746F6ELL;
            v20 = 1852795252;
LABEL_23:
            v18 = v20 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
            break;
          default:
            break;
        }

        if (v16 == v19 && v15 == v18)
        {

LABEL_33:
          if (v13 == a4)
          {
            return v7;
          }

          goto LABEL_34;
        }

        v22 = sub_1C4F02938();

        if (v22)
        {
          goto LABEL_33;
        }
      }

LABEL_34:
      v7 = (v7 + 1) & v10;
    }

    while (((*(v5 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  return v7;
}

__n128 sub_1C443BAD4(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C443BAE0()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 24);
  v4 = *(v0 + 16);
  sub_1C4F02AF8();
  sub_1C443BB40(v6, v1, v2, v4, v3);
  return sub_1C4F02B68();
}

uint64_t sub_1C443BB40(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  sub_1C4F01298();
  sub_1C4409528(a4);
  sub_1C4F01298();

  return MEMORY[0x1C69417F0](a5);
}

uint64_t sub_1C443BBA8(void *a1, uint64_t *a2)
{
  v4 = _s6ConfigVMa(0);
  *&v5 = MEMORY[0x1EEE9AC00](v4).n128_u64[0];
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 state];
  v9 = sub_1C4F01138();
  v11 = v10;

  v12 = sub_1C443BE78(v9, v11);
  if (v12 == 5)
  {
    v34 = 0;
    v35 = 0xE000000000000000;
    sub_1C4F02248();

    v34 = 0xD00000000000001ELL;
    v35 = 0x80000001C4FC3990;
    MEMORY[0x1C6940010](*a2, a2[1]);
    MEMORY[0x1C6940010](8250, 0xE200000000000000);
    v13 = [a1 state];
    v14 = sub_1C4F01138();
    v16 = v15;

    MEMORY[0x1C6940010](v14, v16);

    v17 = v34;
    v18 = v35;
    sub_1C446D0DC();
    swift_allocError();
    *v19 = v17;
    *(v19 + 8) = v18;
    *(v19 + 16) = 2;
    swift_willThrow();
  }

  else
  {
    v20 = v12;
    v21 = *a2;
    v32 = a2[1];
    v33 = v21;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v31 = [a1 triggered];
    sub_1C4438D00(v7);
    v30 = v7[*(v4 + 48)];
    sub_1C443C284(v7, _s6ConfigVMa);
    v22 = sub_1C443D554(a1);
    v24 = v23;
    v25 = sub_1C445CA14(a1);
    v27 = v26;
    v17 = swift_allocObject();
    sub_1C445CA78(v33, v32, v31, v30 & 1, v22, v24, v25, v27, v20);
  }

  sub_1C440129C();
  return v17;
}

uint64_t _s6ConfigVMa(uint64_t a1)
{
  result = qword_1EDDFF080;
  if (!qword_1EDDFF080)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1C443BE78(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C4F025D8();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1C443BEE4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1C43FBCE0();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C443BF44(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C43FBE94();
  v5(v4);
  sub_1C43FBCE0();
  (*(v6 + 16))(a2, v2);
  return a2;
}

uint64_t sub_1C443BFA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C443C008(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C443C070(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1C43FBCE0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C443C0C8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1C43FBCE0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C443C120(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C443C180(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1C43FBCE0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C443C1D8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1C43FD3F8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C443C22C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1C43FBCE0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C443C284(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C443C2E4(uint64_t (*a1)(__int128 *, uint64_t), uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = (a3 + 32);
  if (!v5)
  {
    return 0;
  }

  while (1)
  {
    v8 = *v6;
    v9 = *v6;
    result = a1(&v9, a2);
    if (v3)
    {
      break;
    }

    if (result)
    {
      return v8;
    }

    ++v6;
    if (!--v5)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_1C443C388(uint64_t a1, uint64_t a2)
{
  sub_1C4F025D8();
  sub_1C4406834();

  if (v2 >= 0xF)
  {
    return 15;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1C443C3D0()
{
  result = qword_1EDDFED88;
  if (!qword_1EDDFED88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFED88);
  }

  return result;
}

uint64_t sub_1C443C424@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1C456902C(&qword_1EC0C4018, &unk_1C4F57000);
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C4409678(a1, a1[3]);
  sub_1C443C7AC();
  sub_1C4F02BC8();
  if (v2)
  {
    return sub_1C440962C(a1);
  }

  LOBYTE(v13) = 0;
  v6 = sub_1C4F02678();
  v8 = v7;
  v12 = v6;
  sub_1C456902C(&qword_1EC0BB018, qword_1C4F50870);
  sub_1C443CB4C(&qword_1EDDFEA60);
  sub_1C4407CBC();
  sub_1C4F026C8();
  sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
  sub_1C443D0B4(&qword_1EDDFEA58);
  sub_1C4407CBC();
  sub_1C4F026C8();
  sub_1C456902C(&qword_1EC0BB020, &qword_1C4F1DB20);
  sub_1C443D1E4(&unk_1EDDFEA70);
  sub_1C4407CBC();
  sub_1C4F02658();
  v9 = sub_1C4413694();
  v10(v9);
  result = sub_1C440962C(a1);
  *a2 = v12;
  a2[1] = v8;
  a2[2] = v13;
  a2[3] = v13;
  a2[4] = v13;
  return result;
}

double sub_1C443C764@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C443C424(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

unint64_t sub_1C443C7AC()
{
  result = qword_1EDDFED98;
  if (!qword_1EDDFED98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFED98);
  }

  return result;
}

unint64_t sub_1C443C808(char a1)
{
  result = 0x6D614E656C626174;
  switch(a1)
  {
    case 1:
      result = 0x736E6D756C6F63;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0x73657865646E69;
      break;
    default:
      return result;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for UnstructuredDatabaseTable.Config.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1C443C970);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C443C998(uint64_t a1)
{
  result = sub_1C4400020(a1);
  if (!result)
  {
    v4 = v3;
    sub_1C4572308(&qword_1EC0BB018, qword_1C4F50870);
    sub_1C46A9848(v4);
    sub_1C440D274();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_1C443CA2C(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1C4572308(&qword_1EC0BB018, qword_1C4F50870);
    sub_1C4717DDC(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C443CAB4(uint64_t a1)
{
  result = sub_1C4400020(a1);
  if (!result)
  {
    v4 = v3;
    sub_1C4572308(&qword_1EC0BB018, qword_1C4F50870);
    sub_1C46A9848(v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1C443CB4C(uint64_t a1)
{
  result = sub_1C4400020(a1);
  if (!result)
  {
    v4 = v3;
    sub_1C4572308(&qword_1EC0BB018, qword_1C4F50870);
    sub_1C4B8A300(v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ActivityEventPerson.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 3 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 3) >> 8 < 0xFF)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t type metadata accessor for ViewDatabaseArtifact.Property(uint64_t a1)
{
  result = qword_1EDDFF050;
  if (!qword_1EDDFF050)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C443CCBC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ViewDatabaseArtifact.Property(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C443CD20(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1C43FBCE0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C443CD78(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1C43FBCE0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C443CDD0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1C43FBCE0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C443CE28(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1C43FBCE0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C443CE80(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1C43FD3F8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C443CED4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1C43FBCE0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C443CF2C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1C43FBCE0();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_1C443CF84(uint64_t a1)
{
  result = sub_1C4400020(a1);
  if (!result)
  {
    sub_1C4572308(&unk_1EC0B9620, &unk_1C4F0E870);
    sub_1C440D274();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_1C443CFE8(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1C4572308(&unk_1EC0B9620, &unk_1C4F0E870);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C443D054(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1C4572308(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C443D0B4(uint64_t a1)
{
  result = sub_1C4400020(a1);
  if (!result)
  {
    sub_1C4572308(&unk_1EC0B9620, &unk_1C4F0E870);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1C443D11C(uint64_t a1)
{
  result = sub_1C4400020(a1);
  if (!result)
  {
    v3 = sub_1C4572308(&unk_1EC0B9620, &unk_1C4F0E870);
    result = sub_1C44F0D20(v3);
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1C443D174(uint64_t a1)
{
  result = sub_1C4400020(a1);
  if (!result)
  {
    v4 = v3;
    sub_1C4572308(&qword_1EC0BB020, &qword_1C4F1DB20);
    v4();
    sub_1C440D274();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1C443D1E4(uint64_t a1)
{
  result = sub_1C4400020(a1);
  if (!result)
  {
    v4 = v3;
    sub_1C4572308(&qword_1EC0BB020, &qword_1C4F1DB20);
    v4();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_1C443D258(void *a1, void *a2)
{
  if (sub_1C4EFA6C8() == *a2 && v3 == a2[1])
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1C4F02938();
  }

  return v5 & 1;
}

uint64_t sub_1C443D2E0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_1C456902C(&qword_1EC0C4168, &qword_1C4F57A58);
    v8 = v5 + *(a4 + 40);

    return sub_1C440BAA8(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C443D36C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C443D3AC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 104))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C443D3EC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 27))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C443D42C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 17))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C443D480(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1C456902C(&qword_1EC0C4168, &qword_1C4F57A58);
    v9 = a1 + *(a3 + 40);

    return sub_1C44157D4(v9, a2, v8);
  }
}

uint64_t sub_1C443D514(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C443D554(void *a1)
{
  v1 = [a1 initialBookmark];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1C4EF9A68();

  return v3;
}

void sub_1C443D5B8()
{
  sub_1C43FFC44();
  if ((v5 & 1) == 0 || (sub_1C441172C(), v6 == v7))
  {
LABEL_6:
    sub_1C44108C0();
    if (v4)
    {
      sub_1C4422208(v8, v9, v10, v11, v12, v13);
      v14 = sub_1C44182F4();
      j__malloc_size(v14);
      sub_1C4402B0C();
      v14[2] = v3;
      v14[3] = v15;
      if (v2)
      {
LABEL_8:
        v16 = sub_1C44330CC();
        v1(v16);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v2)
    {
      goto LABEL_8;
    }

    sub_1C4405788();
    goto LABEL_11;
  }

  sub_1C442B904();
  if (!v6)
  {
    sub_1C440A4D4();
    goto LABEL_6;
  }

  __break(1u);
}

unint64_t sub_1C443D694()
{
  result = qword_1EDDFCED0;
  if (!qword_1EDDFCED0)
  {
    sub_1C4572308(&unk_1EC0B9620, &unk_1C4F0E870);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFCED0);
  }

  return result;
}

uint64_t sub_1C443D71C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1C443D814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  sub_1C43FE96C();
  sub_1C441FC74();
  sub_1C4EFB1E8();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBFDC();
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FC010();
  sub_1C4EFAD98();
  sub_1C43FCDF8();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  sub_1C4406E1C();
  sub_1C4414B64();
  sub_1C4404B44();
  sub_1C4EFB2C8();
  if (!v12)
  {
    sub_1C443137C();
    goto LABEL_8;
  }

  v18 = v12;
  sub_1C4EFA798();
  sub_1C441CA74();
  sub_1C442FDF8();
  v19 = *(v16 + 8);
  v20 = sub_1C43FD574();
  v19(v20);
  if (v10)
  {

    v23 = sub_1C4778264();
    sub_1C43FFB2C(&type metadata for ErrorHandlingDatabasePoolError, v23);
    sub_1C4405CA4();
LABEL_8:
    sub_1C440E3AC();
    sub_1C43FBC80();
    return;
  }

  v21 = v12;
  sub_1C4EFAAC8();
  sub_1C441CA74();
  sub_1C442FDF8();
  v22 = sub_1C43FD574();
  v19(v22);
  sub_1C4425150();
  sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
  sub_1C441B920();
  if (!sub_1C442DFA8(v11, v24, v25))
  {

    goto LABEL_8;
  }

  v26 = sub_1C44132A8();
  v27(v26);
  v28 = sub_1C441733C(OBJC_IVAR____TtC24IntelligencePlatformCore25ErrorHandlingDatabasePool_databaseFileURL);
  sub_1C4774554(v28, v29);
  __break(1u);
}

void sub_1C443DA6C()
{
  sub_1C43FE96C();
  sub_1C44054CC();
  v6 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  sub_1C43FBD18(v6);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C4402A68();
  v8 = sub_1C4EFB768();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C440A82C();
  v10 = sub_1C4424B10(v3);
  if (v10 == v5 && v11 == 0xE400000000000000)
  {
  }

  else
  {
    v13 = sub_1C442E6C0(v10, v11);

    if ((v13 & 1) == 0)
    {
      sub_1C442F794();
      v0 = v1;
      if (v1)
      {
        goto LABEL_11;
      }
    }
  }

  swift_unownedRetainStrong();
  sub_1C4440C6C(v4);
  sub_1C441CEF4();

  if (!v0)
  {

    v14 = sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
    v15 = sub_1C4404370(v14);
    v16 = sub_1C445BE04(v15, xmmword_1C4F0CE60);
    v17 = MEMORY[0x1E69A0138];
    v15[3].n128_u64[1] = MEMORY[0x1E69E6158];
    v15[4].n128_u64[0] = v17;
    v15[2].n128_u64[0] = v16;
    v15[2].n128_u64[1] = v18;
    sub_1C4401F74();
    sub_1C4466DA4();
    sub_1C4EFC088();
    v19 = sub_1C441B144();
    v20(v19, v8);
    v21 = sub_1C44179F4();
    sub_1C43FF8A0(v21, v22, v23, v8);
    sub_1C443474C();
    sub_1C44150DC();
    sub_1C4EFB9A8();

    sub_1C4420C3C(&v24, &unk_1EC0BC770, &qword_1C4F10DC0);
    sub_1C4420C3C(v2, &unk_1EC0C06C0, &unk_1C4F10DB0);
  }

LABEL_11:
  sub_1C4402144();
  sub_1C43FBC80();
}

uint64_t sub_1C443DCD0(void *a1, uint64_t a2, __int16 a3, uint64_t a4, char a5, char a6)
{
  sub_1C442E860(a1, v6 + 16);
  *(v6 + 56) = a2;
  *(v6 + 64) = a3;
  *(v6 + 80) = a5;
  sub_1C440962C(a1);
  *(v6 + 88) = MEMORY[0x1E69E7CC0];
  *(v6 + 72) = a4;
  *(v6 + 81) = a6;
  return v6;
}

uint64_t sub_1C443DD68()
{

  v0 = sub_1C440CABC();
  v2 = sub_1C443DD50(v0, v1);

  return v2;
}

uint64_t sub_1C443DE38@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>, void (*a3)(uint64_t *__return_ptr, uint64_t, uint64_t)@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  result = sub_1C443DE64(a2, a3, a4, a5);
  if (!v5)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1C443DE64(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a3, uint64_t a4)
{
  swift_unownedRetain();

  a2(&v9, v7, a4);

  result = swift_unownedRelease();
  if (!v4)
  {
    return v9;
  }

  return result;
}

void sub_1C443DEE4(void *a1@<X8>)
{
  sub_1C443DA6C();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_1C443DF88()
{
  *(v1 + 16) = v0;

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C443DFC8()
{

  return sub_1C4EFF808();
}

unint64_t sub_1C443E01C(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);

  return sub_1C441D828(v2, v3, va);
}

uint64_t sub_1C443E038()
{
}

uint64_t sub_1C443E074()
{
  *(v1 - 160) = 4;

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

void sub_1C443E0A4()
{
  v4 = (v2 + *(v0 + 32));
  *v4 = v1;
  v4[1] = v3;
}

uint64_t sub_1C443E0CC@<X0>(char a1@<W8>)
{
  *(v1 - 65) = a1;

  return sub_1C4F02618();
}

uint64_t sub_1C443E108()
{

  return sub_1C4F02658();
}

uint64_t sub_1C443E154()
{
  v2 = *(v0 - 376);
  v3 = *(v0 - 184);

  return sub_1C44344B8(v2, v3);
}

unint64_t sub_1C443E19C()
{
  *(v2 - 81) = *(v0 + *(v1 + 48));
  *(v2 - 82) = 8;

  return sub_1C44C1190();
}

uint64_t sub_1C443E1C0()
{
  v2 = *(v0 - 440);
  v3 = *(v0 - 448);

  return sub_1C44239FC(v2, v3);
}

BOOL sub_1C443E1FC()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_1C443E23C@<X0>(uint64_t result@<X0>, void *a2@<X8>, double a3@<D0>)
{
  *a2 = v3;
  a2[1] = result;
  *(v4 + *(v5 + 44)) = a3;
  return result;
}

uint64_t sub_1C443E29C@<X0>(char a1@<W8>)
{
  *(v1 - 65) = a1;

  return sub_1C4F02618();
}

uint64_t sub_1C443E2D8(uint64_t a1, uint64_t a2)
{

  return sub_1C449AC9C();
}

uint64_t sub_1C443E304()
{
}

uint64_t sub_1C443E31C()
{
}

uint64_t sub_1C443E33C()
{

  return sub_1C4F01578();
}

uint64_t sub_1C443E388()
{
  v2 = *(v0 - 1136);
  v3 = *(v0 - 1144);

  return sub_1C44239FC(v2, v3);
}

uint64_t sub_1C443E3B4()
{
}

uint64_t sub_1C443E3CC()
{
  v4 = *(v2 + 16);
  *(v3 - 392) = v1;
  result = v0;
  *(v3 - 400) = v2 + 16;
  *(v3 - 408) = v4;
  return result;
}

uint64_t sub_1C443E418@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *a1 = a2;
  *(a1 + 8) = v2;
  *(a1 + 16) = 2;

  return swift_willThrow();
}

uint64_t sub_1C443E438(uint64_t result)
{
  *(result + 23) = HIBYTE(v1);
  *(result + 21) = HIDWORD(v1) >> 8;
  return result;
}

uint64_t sub_1C443E44C(__n128 a1, __n128 a2, __n128 a3, uint64_t a4, __n128 *a5)
{
  a5[1] = a3;
  a5[2] = a2;
  a5[3] = a1;
  a5[4].n128_u8[0] = 5;

  return swift_willThrow();
}

void sub_1C443E4A0()
{
  *(v0 - 200) = 0;
  *(v0 - 184) = 0;
  *(v0 - 176) = 0;
  *(v0 - 424) = 0;
}

uint64_t sub_1C443E4B8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a3 - 256);
  *v3 = result;
  v3[1] = a2;
  return result;
}

uint64_t sub_1C443E4D0(uint64_t a1, uint64_t a2)
{

  return sub_1C4F026C8();
}

uint64_t sub_1C443E4F4@<X0>(void *a1@<X8>)
{
  result = *(v1 + 224);
  *a1 = *(v1 + 208);
  a1[1] = result;
  return result;
}

uint64_t sub_1C443E504@<X0>(char a1@<W8>)
{
  *(v1 - 72) = a1;

  return sub_1C4F02618();
}

uint64_t sub_1C443E52C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0BCD10, &qword_1C4F0C8C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for Transformers(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 8))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C443E5DC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443E5EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443E5FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443E60C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443E61C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443E62C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443E63C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443E64C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443E65C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443E66C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443E67C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443E68C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443E69C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443E6AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443E6BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443E6CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443E6DC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443E6EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443E6FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443E70C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443E71C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443E72C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443E73C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443E74C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443E76C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443E77C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443E78C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443E79C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443E7AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443E7CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443E7DC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443E7EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443E7FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443E80C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443E81C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443E84C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443E85C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443E86C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443E87C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443E89C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443E8AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443E8BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443E8CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443E8DC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443E8EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443E8FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443E90C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443E91C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443E92C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443E93C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443E94C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443E95C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443E96C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443E97C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443E98C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443E99C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443E9AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443E9BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443E9DC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443E9EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443E9FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443EA0C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443EA1C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443EA2C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443EA3C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443EA4C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443EA5C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443EA9C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443EAAC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443EABC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443EACC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443EADC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443EAEC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443EB0C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443EB1C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443EB2C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443EB3C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443EB4C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443EB5C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443EB6C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443EB7C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443EB9C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443EBAC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443EBBC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443EBCC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443EBDC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443EBEC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443EBFC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443EC0C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C443EC24(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_1C443EC8C(void *a1, uint64_t a2)
{
  result = [a1 respondsToSelector_];
  if (result)
  {
    [a1 timestamp];
    v6 = v5;
    result = swift_beginAccess();
    *(a2 + 16) = v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C443ED0C(void *a1)
{
  v2 = [a1 view];
  v3 = sub_1C4F01138();

  v4 = [a1 sourceType];
  v5 = sub_1C4F01138();
  v7 = v6;

  if (sub_1C4440C20(v5, v7) == 8)
  {

    sub_1C4401394();
    sub_1C4F02248();

    v8 = [a1 sourceType];
    v9 = sub_1C4F01138();
    v11 = v10;

    MEMORY[0x1C6940010](v9, v11);

    v3 = 0x80000001C4FC62F0;
    sub_1C446D0DC();
    swift_allocError();
    *v12 = 0xD000000000000027;
    *(v12 + 8) = 0x80000001C4FC62F0;
    *(v12 + 16) = 3;
    swift_willThrow();
  }

  else
  {
    [a1 index];
  }

  return v3;
}

uint64_t sub_1C443EF28()
{

  return MEMORY[0x1EEDC59A8]();
}

uint64_t sub_1C443EF40()
{
  v2 = *(v0 - 408);
  v3 = *(v0 - 416);

  return sub_1C44239FC(v2, v3);
}

uint64_t sub_1C443EF88()
{

  return swift_setDeallocating();
}

uint64_t sub_1C443EFB4()
{
  v2 = *(*(v0 + 288) + 64);
  *(v0 + 344) = v2;

  return sub_1C4428DA0(v2);
}

uint64_t sub_1C443EFF0@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v4 = *(a3 - 256);

  return sub_1C448D19C(a1, v4);
}

uint64_t sub_1C443F058@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 - 256);
  v4 = *(v2 - 128);
  result = *(v4 + v3);
  *(v4 + v3) = a1;
  return result;
}

void sub_1C443F07C()
{
  v2 = (v0 + *(v1 + 36));
  *v2 = 0;
  v2[1] = 0;
}

uint64_t sub_1C443F090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_1C4F026C8();
}

uint64_t sub_1C443F0E0()
{

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C443F134()
{

  return sub_1C4F02858();
}

uint64_t sub_1C443F184()
{

  return sub_1C4F00978();
}

double sub_1C443F1DC()
{
  *(v0 - 208) = 0;
  *(v0 - 200) = 0xE000000000000000;
  return v1;
}

uint64_t sub_1C443F1FC(uint64_t a1)
{
  type metadata accessor for HUTenPointContext.VirtualInteraction(a1);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t sub_1C443F24C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 - 256) = result;
  *(result + 16) = v2;
  return result;
}

uint64_t sub_1C443F280()
{
  *(v2 + *(v1 + 48)) = v0;
  *(v2 + *(v1 + 52)) = 0;
  v6 = *(v4 - 184);

  return sub_1C4471988(v6, v3);
}

uint64_t sub_1C443F2B4(void *a1)
{
  a1[2] = v3;
  a1[3] = v1;
  a1[4] = v2;
}

uint64_t sub_1C443F2D4()
{

  return sub_1C440BAA8(v0, 0, 1, v1);
}

void sub_1C443F350()
{

  JUMPOUT(0x1C6940010);
}

uint64_t sub_1C443F3B4()
{
  *(v2 - 72) = v1;

  return sub_1C46DA590(v0 + 752, v0 + 352);
}

uint64_t sub_1C443F438(uint64_t result)
{
  *(v1 - 304) = result;
  *(v1 - 168) = result;
  return result;
}

uint64_t sub_1C443F504()
{
  *(v3 - 216) = v1;
  *(v3 - 208) = v0;
  *(v3 - 88) = v2;

  return sub_1C4F026E8();
}

uint64_t sub_1C443F534(uint64_t result)
{
  v2 = *(v1 - 96);
  *(v1 - 152) = v2 + 32;
  *(v1 - 144) = v2 + 16;
  *(v1 - 136) = result;
  return result;
}

uint64_t sub_1C443F558()
{

  return swift_allocObject();
}

uint64_t sub_1C443F5A0(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1C448C9D8();
}

uint64_t *sub_1C443F5E8@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 136) = a1;

  return sub_1C4422F90((v1 - 168));
}

uint64_t *sub_1C443F614(uint64_t a1)
{
  *(v1 + 64) = a1;

  return sub_1C4422F90((v1 + 32));
}

uint64_t sub_1C443F63C(uint64_t a1)
{
  type metadata accessor for HUTenPointContext.AppCategoryDistribution(a1);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t sub_1C443F6AC(uint64_t a1, uint64_t a2)
{

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C443F720(uint64_t a1)
{

  return sub_1C4F02938();
}

uint64_t sub_1C443F750()
{
  *(v2 - 248) = v1;
  v4 = v0[1];
  *(v2 - 176) = *v0;
  *(v2 - 160) = v4;
  *(v2 - 144) = v0[2];
  *(v2 - 135) = *(v0 + 41);
  v5 = *(v2 - 168);
  *(v2 - 104) = *(v2 - 176);
  *(v2 - 96) = v5;

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

char *sub_1C443F7B0@<X0>(uint64_t a1@<X8>)
{
  *(v1 + 168) = a1;

  return sub_1C459D088(0, v2, 0);
}

uint64_t sub_1C443F7D4()
{
  *(v1 + 8) = *(v0 + 136);
  *(v1 + 16) = v2;
  return v1 + 24;
}

void sub_1C443F7E4()
{
  *(v2 - 208) = v0;
  *(v2 - 200) = v1;

  JUMPOUT(0x1C6940010);
}

void sub_1C443F800(uint64_t a1, uint64_t a2)
{
  *(v3 - 144) = v2;

  sub_1C4C75350();
}

uint64_t sub_1C443F82C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 a15)
{
  *(v18 + 16) = v15;

  return sub_1C441D670(&a15, v18 + v17 * v16 + 32);
}

uint64_t sub_1C443F84C(unint64_t *a1)
{

  return sub_1C4CCCA7C(a1, v1, v2);
}

uint64_t sub_1C443F87C(uint64_t a1, uint64_t a2)
{
  *(v2 - 360) = sub_1C442B738(a1, a2);

  return sub_1C4F00968();
}

uint64_t sub_1C443F8E4()
{

  return sub_1C4F02658();
}

void sub_1C443F95C()
{
  sub_1C441581C();
  if ((v3 & 1) == 0 || (sub_1C441172C(), v4 == v5))
  {
LABEL_6:
    sub_1C442DD18();
    if (v2)
    {
      v6 = sub_1C456902C(&qword_1EC0B87C0, &unk_1C4F0DBB0);
      v7 = sub_1C44108A0(v6);
      sub_1C4418FDC(v7);
      if (v1)
      {
LABEL_8:
        v8 = sub_1C4412BE8();
        sub_1C445ECD8(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = sub_1C456902C(&qword_1EC0B87C8, &unk_1C4F0E940);
    sub_1C43FEA6C(v11);
    goto LABEL_11;
  }

  sub_1C442B904();
  if (!v4)
  {
    sub_1C440A4D4();
    goto LABEL_6;
  }

  __break(1u);
}

BOOL sub_1C443FA44(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_1C443FA60()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

void sub_1C443FAA4()
{
  *(v0 + 8 * (v2 >> 6) + 64) |= 1 << v2;
  *(*(v0 + 48) + 2 * v2) = v1;
  *(*(v0 + 56) + 4 * v2) = v3;
}

uint64_t sub_1C443FAEC(uint64_t a1)
{

  return sub_1C4F02938();
}

uint64_t sub_1C443FB60()
{

  return sub_1C4485354(v1, v0);
}

__n128 sub_1C443FBE0(__n128 *a1)
{
  result = *(v1 - 448);
  a1[1] = result;
  return result;
}

uint64_t sub_1C443FBF4(uint64_t a1)
{
  *(a1 + 16) = v2;
  *(a1 + 24) = v1;
}

uint64_t sub_1C443FC2C(unint64_t *a1)
{
  v4 = MEMORY[0x1E69E6328];

  return sub_1C4401CBC(a1, v1, v2, v4);
}

uint64_t sub_1C443FC80()
{
  v3 = *(v0 + 20);
  *(v2 - 120) = *(*(v2 - 120) + 32);
  return v1 + v3;
}

void sub_1C443FD80()
{
  *(v0 - 760) = 0;
  *(v0 - 768) = 0;
  *(v0 - 744) = 0;
  *(v0 - 752) = 0;
  *(v0 - 720) = 0;
  *(v0 - 736) = 0;
  *(v0 - 184) = 0;
  *(v0 - 728) = 0;
  *(v0 - 776) = 0;
  *(v0 - 784) = 0;
  *(v0 - 792) = 0;
  *(v0 - 800) = 0;
}

uint64_t sub_1C443FDE0()
{

  return sub_1C4EF9DD8();
}

uint64_t sub_1C443FDF8(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return swift_dynamicCast();
}

uint64_t sub_1C443FE10(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5)
{

  return static Transformers.reportError(error:context:config:pipelineType:)(a1, 0x6E6576456566696CLL, 0xE900000000000074, a4, a5);
}

void sub_1C443FE38()
{
}

void sub_1C443FE70(uint64_t a1@<X8>)
{
  *(v1 - 144) = a1;

  sub_1C459EA10();
}

uint64_t sub_1C443FE94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{

  return swift_dynamicCast();
}

uint64_t sub_1C443FEE0(uint64_t a1, uint64_t a2)
{

  return sub_1C4F02938();
}

uint64_t sub_1C443FF00(uint64_t a1)
{

  return sub_1C4F01578();
}

BOOL sub_1C443FF34()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_1C443FF4C(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1C443FF94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 - 184) = v4;
  *(v5 - 104) = a4;
  return 0;
}

uint64_t sub_1C443FFC8(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1C443FFF0(uint64_t a1)
{

  return sub_1C4BAFAC8(a1, v2, v1, sub_1C4BAF8E8);
}

uint64_t sub_1C444001C@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 120) = a1;

  return sub_1C4EFB658();
}

uint64_t sub_1C44400AC()
{

  return swift_slowAlloc();
}

void sub_1C44401D4()
{
  v4 = (v2 + *(v3 + 32));
  *v4 = v1;
  v4[1] = v0;
}

id sub_1C4440254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = sub_1C4F01108();

  v12 = sub_1C4F01108();

  v13 = sub_1C4F01108();

  v14 = sub_1C4F01108();

  v15 = [v9 initWithView:v11 sourceType:v12 index:a5 updateType:v13 sourceIdentifier:v14];

  return v15;
}

uint64_t sub_1C4440344(uint64_t a1, double a2)
{
  sub_1C456902C(&qword_1EC0B8780, &qword_1C4F0DB70);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C4F0CE60;
  *(v4 + 56) = sub_1C456902C(&unk_1EC0C5D70, &unk_1C4F3F010);
  *(v4 + 32) = a1;
  *(v4 + 88) = MEMORY[0x1E69E63B0];
  *(v4 + 64) = a2;
  swift_unknownObjectRetain();
  v5 = objc_autoreleasePoolPush();
  sub_1C4440420(&v7);

  objc_autoreleasePoolPop(v5);
  return v7;
}

void sub_1C4440420(uint64_t *a2@<X8>)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v3 = objc_opt_self();
  v4 = sub_1C4F01658();
  v12[0] = 0;
  v5 = [v3 archivedDataWithRootObject:v4 requiringSecureCoding:1 error:v12];

  v6 = v12[0];
  if (v5)
  {
    v7 = sub_1C4EF9A68();
    v9 = v8;
  }

  else
  {
    v10 = v6;
    v11 = sub_1C4EF97A8();

    swift_willThrow();
    v7 = 0;
    v9 = 0xF000000000000000;
  }

  *a2 = v7;
  a2[1] = v9;
}

void sub_1C4440590(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void *sub_1C4440600(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    return 0;
  }

  sub_1C44344B8(a1, a2);
  v3 = objc_autoreleasePoolPush();
  sub_1C43FD024();
  sub_1C4434BD0(v4, v5, v6, v7);
  if (v2)
  {
    v8 = sub_1C43FD024();
    sub_1C441DFEC(v8, v9);
    objc_autoreleasePoolPop(v3);
LABEL_10:
    v22 = sub_1C43FD024();
    sub_1C441DFEC(v22, v23);
    return v3;
  }

  objc_autoreleasePoolPop(v3);
  v10 = v37;
  if (!v37)
  {
    v19 = sub_1C43FD024();
    sub_1C441DFEC(v19, v20);
    v3 = 0x80000001C4FC3BF0;
    v21 = sub_1C4C6D7FC();
    sub_1C43FFB2C(&_s15ViewSourceErrorON, v21);
    *v18 = 0xD000000000000026;
    v18[1] = 0x80000001C4FC3BF0;
    goto LABEL_9;
  }

  v11 = *(v37 + 16);
  if (v11 < 2)
  {

    v12 = sub_1C43FD024();
    sub_1C441DFEC(v12, v13);
    sub_1C4F02248();

    sub_1C43FBDF0();
    v38 = v14;
    v39 = v11;
    v15 = sub_1C4F02858();
    MEMORY[0x1C6940010](v15);

    MEMORY[0x1C6940010](0xD000000000000011, 0x80000001C4FC3C40);
    v3 = 0xD000000000000012;
    v16 = v38;
    v17 = sub_1C4C6D7FC();
    sub_1C43FFB2C(&_s15ViewSourceErrorON, v17);
    *v18 = 0xD000000000000012;
    v18[1] = v16;
LABEL_9:
    sub_1C440DB00(v18, 1);
    goto LABEL_10;
  }

  sub_1C442B870(v37 + 32, &v37);
  v25 = sub_1C456902C(&unk_1EC0C0730, &qword_1C4F67F20);
  result = sub_1C441508C(v25, v26, v27, v25, v28);
  if (*(v10 + 16) >= 2uLL)
  {
    if (result)
    {
      v3 = v39;
    }

    else
    {
      v3 = 0;
    }

    sub_1C442B870(v10 + 64, &v37);
    v29 = sub_1C43FD024();
    sub_1C441DFEC(v29, v30);

    v31 = sub_1C43FD024();
    v33 = sub_1C441DFEC(v31, v32);
    sub_1C441508C(v33, v34, v35, MEMORY[0x1E69E63B0], v36);
    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C444088C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_1C43FBCA4(a1, a2, a3, a4);
  sub_1C43FCE50();
  v5 = sub_1C43FBC98();
  v6(v5);
  return v4;
}

uint64_t sub_1C44408D4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_1C43FBCA4(a1, a2, a3, a4);
  sub_1C43FBCE0();
  v5 = sub_1C43FBC98();
  v6(v5);
  return v4;
}

void sub_1C4440948()
{
  v2 = *(v0 - 88);
  *(v0 - 96) = *(v0 - 96);
  *(v0 - 88) = v2;

  JUMPOUT(0x1C6940010);
}

uint64_t sub_1C4440968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a5 + 56);
  result = *(v7 + 8 * v6);
  *(v7 + 8 * v6) = v5;
  return result;
}

uint64_t sub_1C4440978(uint64_t result)
{
  *(v1 + 14) = result;
  *(v1 + 22) = v2;
  return result;
}

uint64_t sub_1C4440988()
{

  return sub_1C456902C(v0, v1);
}

uint64_t sub_1C44409E0(double a1)
{
  *v1 = a1;

  return sub_1C4EF9AD8();
}

id sub_1C4440A14()
{
  v4 = *(*(v1 + 48) + ((v0 << 9) | (8 * __clz(__rbit64(v2)))));

  return v4;
}

uint64_t sub_1C4440A4C()
{
  *(v3 - 408) = v0;
  sub_1C441DFEC(v1, v2);

  return sub_1C4F00DA8();
}

uint64_t sub_1C4440AAC()
{
}

uint64_t sub_1C4440AE4(uint64_t result)
{
  *(v3 + 40) = result;
  *(result + 16) = v2;
  *(result + 24) = v5;
  *(result + 32) = v1;
  *(result + 40) = v4;
  return result;
}

void sub_1C4440B98()
{
  v2 = (v1 + *(v0 + 48));
  *v2 = 0;
  v2[1] = 0;
}

void sub_1C4440BB0()
{
  *(v0 - 184) = 0;
  *(v0 - 168) = 0;
  *(v0 - 160) = 0;
  *(v0 - 264) = 0;
}

void *sub_1C4440BDC(uint64_t a1)
{
  *(v4 - 96) = v2;
  sub_1C440BAA8(v2 + v3, 1, 1, a1);
  v5 = v1[3];
  *(v4 - 104) = v1;
  return sub_1C4409678(v1, v5);
}

unint64_t sub_1C4440C20(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C4F025D8();

  if (v2 >= 8)
  {
    return 8;
  }

  else
  {
    return v2;
  }
}

void sub_1C4440CDC(uint64_t a1@<X8>)
{
  v4 = (a1 + 16 * v3);
  *v4 = v2;
  v4[1] = v1;
}

uint64_t sub_1C4440CF0()
{

  return sub_1C4F00978();
}

BOOL sub_1C4440D08()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_1C4440D20()
{

  return type metadata accessor for FeatureValue(0);
}

void sub_1C4440D4C(double a1)
{
  *(v2 + 384) = a1;
  *(v2 + 408) = v1;
  *(v2 + 416) = 0xD000000000000010;
}

uint64_t sub_1C4440D6C()
{
  v3 = *(v1 - 128);

  return sub_1C4471988(v3, v0);
}

uint64_t sub_1C4440D8C(uint64_t a1)
{

  return sub_1C4F01FC8();
}

uint64_t sub_1C4440DD4()
{

  return sub_1C4EFBD48();
}

uint64_t sub_1C4440E74()
{

  return sub_1C4D4E63C(v0, type metadata accessor for WalletEmailOrderStructs.ShipmentFullFillmentEmailRelationshipType);
}

void sub_1C4440EE4()
{
  v7 = (v1 + v0[8]);
  *v7 = v2;
  v7[1] = v4;
  v8 = (v1 + v0[10]);
  *v8 = *(v5 - 208);
  v8[1] = v3;
  *(v1 + v0[11]) = v6;
}

uint64_t sub_1C4440F10@<X0>(void *a1@<X8>)
{
  result = *(v1 - 96);
  *a1 = *(v1 - 104);
  a1[1] = result;
  return result;
}

id sub_1C4440F4C(id a1)
{

  return a1;
}

uint64_t sub_1C4440F6C(uint64_t a1)
{

  return swift_allocObject();
}

unint64_t sub_1C4440FE4()
{
  *(v0 + 12) = 2080;
  v3 = *(v1 - 200);
  v4 = *(v1 - 216);

  return sub_1C441D828(v3, v4, (v1 - 168));
}

uint64_t sub_1C4441018()
{
}

uint64_t sub_1C4441034()
{

  return sub_1C4EFBD48();
}

uint64_t sub_1C44410C0(uint64_t a1)
{

  return sub_1C440BAA8(v2 + v1, 1, 1, a1);
}

uint64_t sub_1C444115C()
{

  return sub_1C4F01108();
}

uint64_t sub_1C44411D4()
{

  return swift_getAssociatedTypeWitness();
}

unint64_t sub_1C4441274(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *v10 = a1;
  v14 = (v12 + *(v11 + 2256));
  v15 = *v14;
  v16 = v14[1];

  return sub_1C441D828(v15, v16, &a10);
}

uint64_t sub_1C44412A4()
{
  *(v1 - 96) = 0;
  *(v1 - 88) = 0;
  return v0;
}

uint64_t sub_1C44412B8()
{

  return sub_1C4EFBED8();
}

uint64_t sub_1C44412E8(uint64_t result)
{
  *(result + 16) = sub_1C4A9493C;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_1C4441300(uint64_t a1)
{

  return sub_1C4F02938();
}

uint64_t sub_1C4441324()
{

  return sub_1C4D4E63C(v0, v1);
}

uint64_t sub_1C4441424()
{

  return sub_1C4EFDAB8();
}

uint64_t sub_1C4441478()
{
  v3 = *(v0 - 48);
  v4 = *(v0 - 32);
  *(v1 - 119) = *(v0 - 23);
  *(v1 - 144) = v3;
  *(v1 - 128) = v4;

  return sub_1C45A2358(v1 - 144, v1 - 208);
}

__n128 sub_1C44414A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a19, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, __n128 a20)
{
  result = a20;
  *(v21 - 88) = v20;
  return result;
}

uint64_t sub_1C4441528()
{
}

__n128 sub_1C4441540()
{
  result = *(v0 - 144);
  *(v0 - 128) = *(v0 - 160);
  *(v0 - 112) = result;
  return result;
}

uint64_t sub_1C4441550(unint64_t *a1)
{
  v4 = MEMORY[0x1E699FF90];

  return sub_1C4401CBC(a1, v1, v2, v4);
}

uint64_t sub_1C444157C(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1C4EFB968();
}

uint64_t sub_1C4441594()
{

  return swift_bridgeObjectRelease_n();
}

__n128 sub_1C4441608(uint64_t a1)
{
  *(v3 + 72) = a1;
  result = *(v3 + 40);
  v5 = *(v3 + 56);
  *(a1 + 16) = v2;
  *(a1 + 24) = v1;
  *(a1 + 32) = result;
  *(a1 + 48) = v5;
  return result;
}

void sub_1C4441634(uint64_t a1)
{
  v6 = *(v1 + 104);
  *(a1 + 16) = v2;
  *(a1 + 24) = v4;
  *(a1 + 32) = v3;
  *(a1 + 40) = v6;

  sub_1C4422934();
}

unint64_t sub_1C4441740(uint64_t a1)
{
  *(v2 - 66) = *(v1 + *(a1 + 20));
  *(v2 - 67) = 1;

  return sub_1C44911D0();
}

uint64_t sub_1C4441764()
{
  v2 = *(v0 - 1032);
  v3 = *(v0 - 1040);

  return sub_1C44239FC(v2, v3);
}

uint64_t sub_1C4441790(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2080;
  return result;
}

uint64_t sub_1C4441818()
{

  return sub_1C4F02658();
}

void sub_1C4441860(uint64_t a1, unint64_t *a2)
{
  v3 = MEMORY[0x1E69A9748];

  sub_1C4EDDAFC(319, a2, v3);
}

uint64_t sub_1C4441894()
{

  return swift_arrayInitWithCopy();
}

uint64_t sub_1C44418D0(uint64_t a1)
{

  return sub_1C4EF93B8();
}

uint64_t sub_1C44418F0@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + a1);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

void sub_1C444192C()
{

  JUMPOUT(0x1C6940F90);
}

uint64_t sub_1C444197C(uint64_t a1)
{

  return sub_1C4471988(v1, a1);
}

uint64_t sub_1C44419D8()
{
  *(v1 - 184) = *(v0 + 376);

  return sub_1C44E3634(v1 - 240);
}

uint64_t sub_1C4441A00()
{
  *(v3 - 136) = v0;
  *(v3 - 128) = v1;
  return v2;
}

uint64_t sub_1C4441A18(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t sub_1C4441AF0@<X0>(char a1@<W8>)
{
  *(v1 - 65) = a1;

  return sub_1C4F02618();
}

uint64_t sub_1C4441B18(uint64_t a1)
{
  sub_1C4415EA8();
  sub_1C4441254();
  v2 = sub_1C4F02058();
  if (v2[2] != 2)
  {

    return a1;
  }

  if (v2[2])
  {
    v4 = v2[4];
    v5 = v2[5];
    v6 = v2[6];
    v7 = v2[7];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    a1 = MEMORY[0x1C693FEF0](v4, v5, v6, v7);

    if (v2[2] >= 2uLL)
    {
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

      sub_1C441DE88();
      MEMORY[0x1C693FEF0](v8, v9);

      return a1;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1C4441C50(char a1)
{
  switch(a1)
  {
    case 1:
    case 2:
    case 3:
    case 4:
      return;
    default:
      sub_1C43FE984();
      break;
  }
}

id sub_1C4441D18(void *a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      return [a1 isEqual_];
    }

    return 0;
  }

  return !a2;
}

id sub_1C4441D58(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (a3 >> 60 == 15)
  {
    v13 = 0;
  }

  else
  {
    v13 = sub_1C4EF9A38();
    sub_1C441DFEC(a2, a3);
  }

  if (a5 >> 60 == 15)
  {
    v16 = 0;
  }

  else
  {
    v16 = sub_1C4EF9A38();
    sub_1C441DFEC(a4, a5);
  }

  v17 = sub_1C4F01108();

  v18 = [v8 initWithConfigIdentifier:a1 initialBookmark:v13 latestBookmark:v16 state:v17 triggered:a8 & 1];

  return v18;
}

uint64_t sub_1C4442200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = a1;
  if (a3)
  {
    swift_unknownObjectRetain();
    v11 = objc_autoreleasePoolPush();
    v12 = objc_opt_self();
    v13 = sub_1C4F01108();
    LOBYTE(v23) = 0;
    v14 = [v12 publisherForStream:v13 device:a4 account:a5 startTime:0 endTime:0 maxEvents:0 lastN:0 reversed:v23];

    if (v14)
    {
      v15 = swift_allocObject();
      *(v15 + 16) = 0;
      v16 = (v15 + 16);
      v28 = sub_1C44425B8;
      v29 = v15;
      aBlock = MEMORY[0x1E69E9820];
      v25 = 1107296256;
      v26 = sub_1C4442530;
      v27 = &unk_1F44092E0;
      v17 = _Block_copy(&aBlock);

      v28 = nullsub_1;
      v29 = 0;
      aBlock = MEMORY[0x1E69E9820];
      v25 = 1107296256;
      v26 = sub_1C443EC24;
      v27 = &unk_1F4409308;
      v18 = _Block_copy(&aBlock);
      v19 = [v14 sinkWithBookmark:a3 completion:v17 receiveInput:v18];

      _Block_release(v18);
      _Block_release(v17);

      swift_beginAccess();
      v9 = *v16;
      swift_unknownObjectRetain();

      objc_autoreleasePoolPop(v11);
      swift_unknownObjectRelease();
    }

    else
    {
      sub_1C450B034();
      swift_allocError();
      *v21 = 0;
      *(v21 + 8) = 0xE000000000000000;
      *(v21 + 16) = 0xD000000000000013;
      *(v21 + 24) = 0x80000001C4FC3CA0;
      *(v21 + 32) = v9;
      *(v21 + 40) = a2;
      *(v21 + 48) = 0;
      *(v21 + 56) = 0xE000000000000000;
      *(v21 + 64) = 2;
      swift_willThrow();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      objc_autoreleasePoolPop(v11);
      swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_1C4CC0D58(a1, a2, a4, a5);
    if (!v5)
    {
      return v20;
    }
  }

  return v9;
}

uint64_t sub_1C44424E8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void sub_1C4442530(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v6 = a2;
  swift_unknownObjectRetain();
  v5(v6, a3);

  swift_unknownObjectRelease();
}

uint64_t sub_1C44425D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  *(a3 + 16) = a2;
  swift_unknownObjectRelease();
  return swift_unknownObjectRetain();
}

void sub_1C4442638()
{
  sub_1C43FE96C();
  v2 = v1;
  v4 = v3;
  sub_1C456902C(&qword_1EC0C4618, &qword_1C4F5A9D0);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C4409678(v2, v2[3]);
  sub_1C44429A8();
  sub_1C4F02BC8();
  if (v0)
  {
    sub_1C440962C(v2);

    sub_1C441DFEC(0, 0xF000000000000000);
  }

  else
  {
    sub_1C440B4B8();
    v6 = sub_1C4F026B8();
    sub_1C4442B3C();
    sub_1C4401054();
    sub_1C4F026C8();
    sub_1C440B4B8();
    v17 = sub_1C4F026B8();
    LOBYTE(v19) = 3;
    sub_1C440B4B8();
    v7 = sub_1C4F02618();
    v9 = v8;
    v16 = v7;
    sub_1C4442D08();
    sub_1C4401054();
    sub_1C4F026C8();
    v15 = v19;
    LOBYTE(v19) = 5;
    sub_1C440B4B8();
    v14 = sub_1C4F02688();
    LOBYTE(v18[0]) = 6;
    sub_1C4442E20();
    sub_1C4401054();
    sub_1C4F026C8();
    sub_1C444C16C();
    sub_1C4401054();
    sub_1C4F02658();
    v14 &= 1u;
    v10 = sub_1C4408A58();
    v11(v10);
    v12 = v29;
    v13 = v30;
    sub_1C441DFEC(0, 0xF000000000000000);
    v18[0] = v6;
    LOBYTE(v18[1]) = 0;
    v18[2] = v17;
    v18[3] = v16;
    v18[4] = v9;
    v18[5] = v15;
    LOBYTE(v18[6]) = v14;
    BYTE1(v18[6]) = 5;
    v18[7] = v12;
    v18[8] = v13;
    sub_1C4443048(v18, &v19);
    sub_1C440962C(v2);
    v19 = v6;
    v20 = 0;
    v21 = v17;
    v22 = v16;
    v23 = v9;
    v24 = v15;
    v25 = v14;
    v26 = 5;
    v27 = v12;
    v28 = v13;
    sub_1C444AF3C(&v19);
    memcpy(v4, v18, 0x48uLL);
  }

  sub_1C4403810();
  sub_1C43FBC80();
}

unint64_t sub_1C44429A8()
{
  result = qword_1EDDFDF58[0];
  if (!qword_1EDDFDF58[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDDFDF58);
  }

  return result;
}

uint64_t sub_1C4442A04(char a1)
{
  result = 0x6564724F77656976;
  switch(a1)
  {
    case 1:
      result = 0x5364656C62616E65;
      break;
    case 2:
      result = 0x4374706D65747461;
      break;
    case 3:
      result = 0x73654D726F727265;
      break;
    case 4:
      result = 0x736E6F6974706FLL;
      break;
    case 5:
      result = 0x724373656C626174;
      break;
    case 6:
      result = 0x6570795466666964;
      break;
    case 7:
      result = 0x6B72616D6B6F6F62;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1C4442B3C()
{
  result = qword_1EDDFE630;
  if (!qword_1EDDFE630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFE630);
  }

  return result;
}

unint64_t sub_1C4442BF0()
{
  result = qword_1EDDFE638;
  if (!qword_1EDDFE638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFE638);
  }

  return result;
}

unint64_t sub_1C4442C44@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C4442C70(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_1C4442C70(unint64_t result)
{
  if (result >= 5)
  {
    return 5;
  }

  return result;
}

uint64_t _s24IntelligencePlatformCore20ObservedBehaviorTypeOwet_0_0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return sub_1C4430578(-1);
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return sub_1C4430578((*a1 | (v4 << 8)) - 5);
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return sub_1C4430578((*a1 | (v4 << 8)) - 5);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return sub_1C4430578((*a1 | (v4 << 8)) - 5);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return sub_1C4430578(v8);
}

unint64_t sub_1C4442D08()
{
  result = qword_1EDDFE008;
  if (!qword_1EDDFE008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFE008);
  }

  return result;
}

unint64_t sub_1C4442DBC()
{
  result = qword_1EDDFE010;
  if (!qword_1EDDFE010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFE010);
  }

  return result;
}

void *sub_1C4442E10@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

unint64_t sub_1C4442E20()
{
  result = qword_1EDDFF8E8;
  if (!qword_1EDDFF8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFF8E8);
  }

  return result;
}

uint64_t sub_1C4442E74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4442E20();
  v7 = sub_1C4442EEC();
  v8 = MEMORY[0x1E69A0138];

  return MEMORY[0x1EEE09B48](a1, a2, a3, v6, v7, v8);
}

unint64_t sub_1C4442EEC()
{
  result = qword_1EDDFF8F0;
  if (!qword_1EDDFF8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFF8F0);
  }

  return result;
}

uint64_t sub_1C4442F40(uint64_t a1, uint64_t a2)
{
  sub_1C4F025D8();
  sub_1C4406834();

  if (v2 == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (v2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C4442F90@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C4442F40(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for AppCategoryContent.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1C4443088(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 72))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

void *sub_1C44430DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, __int16 a6@<W6>, uint64_t a7@<X8>, uint64_t a8@<X3>, unsigned __int8 a9@<W7>, uint64_t *a10)
{
  v17 = a9;
  sub_1C4EF9C88();
  v18 = _s20BookmarkLoadingStateVMa(0);
  *(a7 + v18[5]) = MEMORY[0x1E69E7CC0];
  *(a7 + v18[6]) = 0;
  v21 = v18[7];
  *(a7 + v21) = 0;
  v20 = v18[8];
  *(a7 + v20) = 0;
  *(a7 + v18[9]) = 0;
  *(a7 + v18[10]) = 0;
  *(a7 + v18[11]) = 0;

  swift_unownedRetain();
  sub_1C4428D8C(a5, a6);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  result = sub_1C44448F0(a3, a8, a4, v17 == 1, a10, v10, a1, a2, a7, a5, a6, a3, a8, a4);
  if (v24)
  {
    return sub_1C44649A8(a7);
  }

  if (*(a7 + v21) == 1)
  {
    *(a7 + v20) = 0;
  }

  return result;
}

unint64_t sub_1C444323C()
{
  result = qword_1EDDECB48[0];
  if (!qword_1EDDECB48[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDDECB48);
  }

  return result;
}

unint64_t sub_1C4443290()
{
  result = qword_1EDDFDF40;
  if (!qword_1EDDFDF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFDF40);
  }

  return result;
}

uint64_t sub_1C44432E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4443348();

  return MEMORY[0x1EEE09760](a1, a2, a3, v6);
}

unint64_t sub_1C4443348()
{
  result = qword_1EDDFDF38;
  if (!qword_1EDDFDF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFDF38);
  }

  return result;
}

void sub_1C444339C(void *a1@<X8>)
{
  sub_1C4442638();
  if (!v1)
  {
    memcpy(a1, __src, 0x48uLL);
  }
}

uint64_t sub_1C44433E8()
{
  *(v5 + v2[5]) = v1;
  v8 = (v5 + v2[7]);
  *v8 = v3;
  v8[1] = v4;
  *(v5 + v2[8]) = v0;
  *(v5 + v2[9]) = *(v6 - 132) & 1;

  return type metadata accessor for PhaseStores(0);
}

void sub_1C4443428(uint64_t a1@<X8>)
{
  v4 = v2 + a1;
  *v4 = v3;
  *(v4 + 8) = v1 & 1;
}

uint64_t sub_1C444343C()
{
  v2 = *(v0 - 744);
  v3 = *(v0 - 752);

  return sub_1C44239FC(v2, v3);
}

uint64_t sub_1C4443468(uint64_t a1)
{

  return sub_1C44DDE2C();
}

uint64_t sub_1C4443490@<X0>(uint64_t a1@<X8>)
{
  v3[12] = a1;
  v3[13] = v1;
  v3[9] = v2;

  return sub_1C4EFB728();
}

uint64_t sub_1C44434E0()
{
  *(v2 - 224) = v1;
  *(v2 - 264) = v0;

  return sub_1C4EFF0C8();
}

uint64_t sub_1C4443600@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>)
{
  v11 = v9;
  v30 = a8;
  v28 = a9;
  v29 = a7;
  v27 = a6;
  v26 = a5;
  v15 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C43FBD18(v15);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v16);
  v17 = sub_1C444AF90(v31);
  _s7MetricsO7PayloadVMa(0);
  v18 = sub_1C443EFD8();
  if (!sub_1C44157D4(v18, 1, v10))
  {
    sub_1C4EF9CC8();
    sub_1C4EF9CD8();
    sub_1C43FBD94();
    sub_1C440BAA8(v19, v20, v21, v22);
    sub_1C468282C();
  }

  v23 = (v17)(v31, 0);
  MEMORY[0x1EEE9AC00](v23);
  *(&v25 - 8) = a2;
  *(&v25 - 7) = a3;
  *(&v25 - 6) = a4;
  *(&v25 - 5) = v11;
  *(&v25 - 4) = v26;
  *(&v25 - 12) = v27;
  *(&v25 - 2) = v29;
  *(&v25 - 8) = v30;
  sub_1C4443580(sub_1C44435C0, (&v25 - 10));
  return sub_1C4464A74();
}

void sub_1C44437BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  sub_1C43FE96C();
  sub_1C4404F80();
  sub_1C4EFB1E8();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBFDC();
  v37 = v12;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FEFC4(v14, v15, v16, v17, v18, v19, v20, v21, v37);
  sub_1C43FCDF8();
  v23 = v22;
  MEMORY[0x1EEE9AC00](v24);
  sub_1C4406E1C();
  sub_1C4414B64();
  sub_1C456902C(&qword_1EC0BE5A8, &qword_1C4F376A8);
  sub_1C440D510();
  sub_1C4EFB2C8();
  if (!v39)
  {
    sub_1C443137C();
    goto LABEL_8;
  }

  v25 = v39;
  sub_1C4EFA798();
  sub_1C441CA74();
  sub_1C442FDF8();
  v26 = *(v23 + 8);
  v27 = sub_1C43FD574();
  v26(v27);
  if (v10)
  {

    v30 = sub_1C4778264();
    sub_1C43FFB2C(&type metadata for ErrorHandlingDatabasePoolError, v30);
    sub_1C4405CA4();
LABEL_8:
    sub_1C440E3AC();
    sub_1C43FBC80();
    return;
  }

  v28 = v39;
  sub_1C4EFAAC8();
  sub_1C441CA74();
  sub_1C442FDF8();
  v29 = sub_1C43FD574();
  v26(v29);
  sub_1C4425150();
  sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
  sub_1C441B920();
  if (!sub_1C442DFA8(v38, v31, v32))
  {

    goto LABEL_8;
  }

  v33 = sub_1C4400510();
  v34(v33);
  v35 = sub_1C441733C(OBJC_IVAR____TtC24IntelligencePlatformCore25ErrorHandlingDatabasePool_databaseFileURL);
  sub_1C4774554(v35, v36);
  __break(1u);
}

void sub_1C4443A38(uint64_t a1, uint64_t a2)
{
  sub_1C440DD3C();
  if (v5 == v6)
  {
    *(v2 + 16) = (a2 - 1);
  }

  else
  {
    v7 = v4;
    sub_1C4EF9CD8();
    v8 = sub_1C4412B9C(*(v7 + 28));

    sub_1C440BAA8(v8, v9, a2, v10);
  }
}

void sub_1C4443AB0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, unsigned int a7@<W7>, uint64_t a8@<X8>, uint64_t a9, unsigned __int8 a10)
{
  v67 = a7;
  v66 = a6;
  v17 = sub_1C456902C(&qword_1EC0BE5A8, &qword_1C4F376A8);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v59 - v18;
  sub_1C4449828();
  if (v10)
  {
    return;
  }

  v65 = 0;
  v20 = v66;
  v60 = a1;
  v61 = v19;
  v21 = v67;
  v63 = a4;
  v64 = a3;
  v62 = a8;
  v22 = v71;
  if (v71)
  {
    if (qword_1EDDFD018 != -1)
    {
      swift_once();
    }

    v23 = sub_1C4F00978();
    sub_1C442B738(v23, qword_1EDE2DDF8);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4443048(&v70, &v68);
    v24 = sub_1C4F00968();
    v25 = sub_1C4F01CD8();

    sub_1C444AF3C(&v70);
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v68 = v27;
      *v26 = 136446722;
      v28 = sub_1C444AB08();
      v30 = sub_1C441D828(v28, v29, &v68);

      *(v26 + 4) = v30;
      *(v26 + 12) = 2080;
      v31 = sub_1C4CC2358(v22);
      v33 = sub_1C441D828(v31, v32, &v68);

      *(v26 + 14) = v33;
      *(v26 + 22) = 2080;
      if (v74)
      {
        v34 = v73;
      }

      else
      {
        v34 = 0;
      }

      if (v74)
      {
        v35 = v74;
      }

      else
      {
        v35 = 0xE000000000000000;
      }

      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v36 = sub_1C441D828(v34, v35, &v68);

      *(v26 + 24) = v36;
      _os_log_impl(&dword_1C43F8000, v24, v25, "ViewUpdate: %{public}s: View is %s: %s", v26, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1C6942830](v27, -1, -1);
      MEMORY[0x1C6942830](v26, -1, -1);
    }

    sub_1C444AF3C(&v70);
    v37 = v62;
    updated = _s17ViewUpdateRequestVMa(0);
    sub_1C440BAA8(v37, 1, 1, updated);
    return;
  }

  v39 = v72;
  v40 = a5;
  if (qword_1EDDECB20 != -1)
  {
    swift_once();
  }

  v59 = qword_1EDE2D2B0;
  if (qword_1EDE2D2B0 < v39)
  {
    v41 = v39;
    if (qword_1EDDFD018 != -1)
    {
      swift_once();
    }

    v42 = sub_1C4F00978();
    sub_1C442B738(v42, qword_1EDE2DDF8);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v43 = sub_1C4F00968();
    v44 = sub_1C4F01CD8();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v68 = v46;
      *v45 = 136446210;
      v47 = sub_1C444AB08();
      v49 = sub_1C441D828(v47, v48, &v68);

      *(v45 + 4) = v49;
      _os_log_impl(&dword_1C43F8000, v43, v44, "ViewUpdate: %{public}s: Detected crashed process during view update", v45, 0xCu);
      sub_1C440962C(v46);
      MEMORY[0x1C6942830](v46, -1, -1);
      MEMORY[0x1C6942830](v45, -1, -1);
    }

    v68 = 0;
    v69 = 0xE000000000000000;
    sub_1C4F02248();

    v68 = 0xD00000000000001BLL;
    v69 = 0x80000001C4FC67A0;
    v75 = v41;
    v50 = sub_1C4F02858();
    MEMORY[0x1C6940010](v50);

    MEMORY[0x1C6940010](543584032, 0xE400000000000000);
    v75 = v59;
    v51 = sub_1C4F02858();
    MEMORY[0x1C6940010](v51);

    v52 = v68;
    v53 = v69;
    sub_1C446D0DC();
    swift_allocError();
    *v54 = v52;
    *(v54 + 8) = v53;
    *(v54 + 16) = 2;
    swift_willThrow();
    goto LABEL_23;
  }

  v55 = sub_1C4445828(v70, a9);
  v56 = v61;
  v57 = v65;
  sub_1C444412C(v60, a2, &v70, v64, v63, v40, v20, v21, v61, v55 & 1, a10);
  if (v57)
  {
LABEL_23:
    sub_1C444AF3C(&v70);
    return;
  }

  v58 = _s17ViewUpdateRequestVMa(0);
  if (sub_1C44157D4(v56, 1, v58) == 1)
  {
    sub_1C4BBAC48();
  }

  sub_1C444AF3C(&v70);
  sub_1C4464A04(v56, v62);
}

uint64_t sub_1C444412C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>, char a10, unsigned __int8 a11)
{
  LODWORD(v120) = a8;
  v119 = a7;
  v116 = a3;
  v112 = a9;
  v121 = a11;
  v117 = _s20BookmarkLoadingStateVMa(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v17);
  v113 = &v109 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v109 - v20;
  v22 = *(v11 + 24);
  v23 = *(v11 + 120);
  v126[0] = a1;
  v126[1] = a2;
  v126[2] = v22;
  v126[3] = v23;
  v126[4] = 0;

  swift_unownedRetain();
  v114 = a4;
  v115 = a6;
  v118 = a5;
  v24 = a6;
  v25 = v121;
  v26 = v122;
  sub_1C44430DC(a1, a2, a4, v24, v119, v120, v21, a5, v121, v126);
  v122 = v26;
  if (v26)
  {

    swift_unownedRelease();
  }

  v109 = v11;
  v110 = v23;
  v111 = v22;
  v29 = v21[v117[6]] != 1 || v25 == 1;
  v30 = v117;
  if (v29)
  {
    v44 = v115;
    v43 = v118;
    v45 = v116;
  }

  else
  {
    v38 = a1;
    v39 = a1;
    v40 = a2;
    v41 = a2;
    v42 = v114;
    v43 = v118;
    v44 = v115;
    sub_1C440B768(v39, v41, v114, v118, v115, *&v21[v117[5]], 1, 0);
    v122 = 0;
    v45 = v116;
    v46 = v113;
    sub_1C44430DC(v38, v40, v42, v44, v119, v120, v113, v43, 1u, v126);
    v122 = 0;
    sub_1C44649A8(v21);
    sub_1C4CE01B8(v46, v21);
    v25 = 1;
    v30 = v117;
  }

  v31 = v45;
  v32 = v21;
  v33 = v122;
  v36 = sub_1C44638A4(v31, v27, v43, v44, v21, 0, v25);
  v122 = v33;
  if (v33)
  {

    swift_unownedRelease();
    sub_1C43FFF1C();

    sub_1C4412914();
    v37 = v21;
    return sub_1C44649A8(v37);
  }

  v47 = v34;
  v48 = v36;
  v121 = v25;
  v120 = v32;
  LODWORD(v119) = v35;
  sub_1C4441C50(v35);
  if (v50 == 0xD000000000000013 && 0x80000001C4F87C40 == v49)
  {

    v53 = v120;
  }

  else
  {
    v52 = sub_1C4F02938();

    v53 = v120;
    if ((v52 & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  *(v53 + v30[9]) = 1;
  sub_1C441A9F4();
  if (!v29)
  {
    v70 = v53;
    sub_1C450B034();
    v71 = swift_allocError();
    v72->n128_u64[0] = 0xD00000000000003CLL;
    v72->n128_u64[1] = 0x80000001C4FC4890;
    sub_1C4413C3C(v125, v124, v123, v71, v72);
    v122 = v73;
    swift_willThrow();

    swift_unownedRelease();

    sub_1C43FFF1C();

    sub_1C4412914();
    v37 = v70;
    return sub_1C44649A8(v37);
  }

LABEL_21:
  if ((*(v53 + v30[7]) & 1) == 0)
  {
    sub_1C4441C50(v119);
    if (v75 == 0x65676E6168436F6ELL && v74 == 0xE900000000000073)
    {

      v54 = v114;
    }

    else
    {
      v77 = sub_1C4F02938();

      v54 = v114;
      if ((v77 & 1) == 0 && [v47 triggered])
      {
        *(v120 + v30[8]) = 1;
      }
    }

    if ((*(v120 + v30[8]) & 1) == 0)
    {
      sub_1C441A9F4();
      v81 = sub_1C44208A8();
      sub_1C440B768(v81, v82, v83, v84, v44, v85, 0, v86);
      v122 = 0;
      v61 = v112;
      goto LABEL_39;
    }

LABEL_33:
    sub_1C442D81C();
    sub_1C4464208();
    v122 = 0;
    sub_1C442D81C();
    sub_1C446452C();
    v122 = 0;
    v87 = v119;
    LODWORD(v114) = WORD1(v119);
    LODWORD(v113) = v119 >> 8;
    v116 = v79;
    v117 = v78;
    LODWORD(v115) = v80;

    swift_unownedRelease();
    sub_1C43FFF1C();

    sub_1C4412914();
    v88 = v30[5];
    v89 = v44;
    v90 = v120;
    v111 = v47;
    v91 = *(v120 + v88);
    v92 = v30;
    v93 = v54;
    updated = _s17ViewUpdateRequestVMa(0);
    v95 = updated[7];
    sub_1C4EF9CD8();
    sub_1C43FBCE0();
    v97 = v112;
    (*(v96 + 16))(v112 + v95, v90);
    sub_1C441A9F4();
    v98 = *(v90 + v92[9]);
    v99 = v29;
    v100 = *(v90 + v92[10]);
    v101 = *(v90 + v92[11]);
    v102 = v118;
    *v97 = v93;
    *(v97 + 8) = v102;
    v103 = v111;
    *(v97 + 16) = v89;
    *(v97 + 24) = v103;
    *(v97 + 32) = v48;
    *(v97 + 40) = v87;
    *(v97 + 41) = v113;
    *(v97 + 42) = v114;
    *(v97 + 48) = v91;
    *(v97 + updated[8]) = v99;
    *(v97 + updated[9]) = v98;
    *(v97 + updated[10]) = v100;
    *(v97 + updated[11]) = v101;
    *(v97 + updated[12]) = v115 & 1;
    v104 = (v97 + updated[13]);
    v105 = v116;
    *v104 = v117;
    v104[1] = v105;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C44649A8(v90);
    v106 = v97;
    v107 = 0;
    v108 = updated;
    return sub_1C440BAA8(v106, v107, 1, v108);
  }

  v54 = v114;
  if (*(v53 + v30[8]) == 1)
  {
    goto LABEL_33;
  }

  sub_1C441A9F4();
  v55 = sub_1C44208A8();
  sub_1C440B768(v55, v56, v57, v58, v44, v59, 1, v60);
  v61 = v112;
  v122 = 0;
  v62 = sub_1C442D81C();
  sub_1C4CE66C4(v62, v63, v64, v65, v66, v67, v68, v69, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120);
  v122 = 0;
LABEL_39:

  swift_unownedRelease();

  sub_1C44649A8(v120);
  v108 = _s17ViewUpdateRequestVMa(0);
  v106 = v61;
  v107 = 1;
  return sub_1C440BAA8(v106, v107, 1, v108);
}

uint64_t _s20BookmarkLoadingStateVMa(uint64_t a1)
{
  result = qword_1EDDEBF40;
  if (!qword_1EDDEBF40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_1C44448F0(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned __int16 a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v126 = a8;
  v124 = a7;
  v147 = a6;
  LODWORD(v122) = a4;
  v118 = a1;
  v128 = a14;
  v127 = a11;
  v125 = a10;
  v16 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v119 = &v92 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v120 = &v92 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v121 = &v92 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v92 - v23;
  v25 = sub_1C4EFB768();
  v123 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v92 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *a5;
  swift_unownedRetainStrong();
  v29 = sub_1C4440C6C(v28);
  if (v14)
  {

LABEL_6:

LABEL_7:

    swift_unownedRelease();
    sub_1C4463890(v125, v127);
  }

  else
  {
    v30 = v29;
    v116 = v27;
    v117 = v25;
    v114 = a5;
    v115 = v24;

    v31 = *(v30 + 168);

    swift_unownedRetainStrong();
    v32 = sub_1C4440C6C(v28);
    v33 = v123;
    v113 = v31;
    if (v122)
    {

      v34 = *(v32 + 192);

      swift_unownedRetainStrong();
      v35 = sub_1C4440C6C(v28);
      v104 = v34;

      v36 = (v35 + 184);
    }

    else
    {

      v37 = *(v32 + 200);

      swift_unownedRetainStrong();
      v39 = sub_1C4440C6C(v28);
      v104 = v37;

      v36 = (v39 + 176);
    }

    v40 = *v36;

    swift_unownedRetainStrong();
    v41 = sub_1C4440C6C(v28);
    v42 = v113;
    v43 = v41;
    v101 = a13;
    v100 = a12;
    v99 = a9;

    v103 = *(v43 + 256);

    v44 = 0;
    v123 = v33 + 1;
    v96 = xmmword_1C4F0CE60;
    v111 = xmmword_1C4F0D130;
    v113 = v42;
    v105 = v40;
    while (1)
    {
      while (1)
      {
        if (v44 == 8)
        {

          goto LABEL_7;
        }

        v45 = *(&unk_1F43D2FB8 + v44 + 32);
        v122 = sub_1C456902C(&unk_1EC0C0720, &unk_1C4F0EB20);
        v46 = swift_allocObject();
        *(v46 + 16) = v96;
        *(v46 + 56) = MEMORY[0x1E69E6530];
        *(v46 + 64) = MEMORY[0x1E69A0180];
        *(v46 + 32) = v118;
        *(v46 + 96) = &_s10SourceTypeON;
        *(v46 + 104) = sub_1C444323C();
        *(v46 + 72) = v45;
        v47 = v123;
        v48 = v44;
        v49 = v116;
        sub_1C4EFB728();
        sub_1C4EFC088();
        v50 = v117;
        v112 = *v47;
        v112(v49, v117);
        v51 = v115;
        sub_1C440BAA8(v115, 1, 1, v50);
        sub_1C44458E0();
        memset(v136, 0, 40);
        v44 = v48 + 1;
        v98 = sub_1C4EFB3E8();
        sub_1C4420C3C(v136, &unk_1EC0BC770, &qword_1C4F10DC0);
        sub_1C4420C3C(v51, &unk_1EC0C06C0, &unk_1C4F10DB0);
        v97 = *(v98 + 16);
        if (v97)
        {
          break;
        }
      }

      result = sub_1C4447568(v45, v137);
      v52 = 0;
      v53 = v98;
      v54 = v98 + 32;
      v55 = v121;
      v93 = v98 + 32;
      v94 = v48 + 1;
LABEL_12:
      if (v52 != v97)
      {
        break;
      }

      sub_1C440962C(v137);
    }

    if (v52 < *(v53 + 16))
    {
      v56 = v54 + 56 * v52;
      v57 = *v56;
      v58 = *(v56 + 16);
      v59 = *(v56 + 32);
      v146 = *(v56 + 48);
      v145[1] = v58;
      v145[2] = v59;
      v145[0] = v57;
      v60 = swift_allocObject();
      *(v60 + 16) = v111;
      v61 = *&v145[0];
      *(v60 + 56) = MEMORY[0x1E69E6530];
      *(v60 + 64) = MEMORY[0x1E69A0180];
      *(v60 + 32) = v61;
      sub_1C444808C(v145, v136);
      v62 = v116;
      sub_1C4EFB728();
      sub_1C4EFC088();
      v63 = v117;
      v112(v62, v117);
      sub_1C440BAA8(v55, 1, 1, v63);
      memset(v136, 0, 40);
      v64 = sub_1C4EFB988();
      v95 = v52 + 1;
      sub_1C4420C3C(v136, &unk_1EC0BC770, &qword_1C4F10DC0);
      result = sub_1C4420C3C(v55, &unk_1EC0C06C0, &unk_1C4F10DB0);
      v65 = 0;
      v102 = *(v64 + 16);
      while (1)
      {
        if (v102 == v65)
        {

          result = sub_1C44636BC(v145);
          v44 = v94;
          v52 = v95;
          v53 = v98;
          v54 = v93;
          goto LABEL_12;
        }

        if (v65 >= *(v64 + 16))
        {
          break;
        }

        v66 = v64;
        v67 = *(v64 + 8 * v65 + 32);
        v68 = swift_allocObject();
        *(v68 + 16) = v111;
        *(v68 + 56) = MEMORY[0x1E69E6530];
        *(v68 + 64) = MEMORY[0x1E69A0180];
        *(v68 + 32) = v67;
        v69 = v116;
        sub_1C4EFB728();
        sub_1C4EFC088();
        v70 = v117;
        v112(v69, v117);
        v71 = v120;
        sub_1C440BAA8(v120, 1, 1, v70);
        sub_1C444C538();
        memset(v133, 0, 40);
        sub_1C4EFB408();
        sub_1C4420C3C(v133, &unk_1EC0BC770, &qword_1C4F10DC0);
        sub_1C4420C3C(v71, &unk_1EC0C06C0, &unk_1C4F10DB0);
        v72 = *&v136[48];
        if (*&v136[48] >> 60 == 11)
        {
          sub_1C44636BC(v145);

          *&v133[0] = 0;
          *(&v133[0] + 1) = 0xE000000000000000;
          sub_1C4F02248();

          *&v133[0] = 0xD00000000000002ELL;
          *(&v133[0] + 1) = 0x80000001C4FAAEC0;
          *&v130 = v67;
          v81 = sub_1C4F02858();
          MEMORY[0x1C6940010](v81);

          v82 = v133[0];
          sub_1C450B034();
          swift_allocError();
          *v83 = v82;
          v85 = v133[1];
          v84 = v133[2];
          *(v83 + 16) = v133[0];
          *(v83 + 32) = v85;
          *(v83 + 48) = v84;
          *(v83 + 64) = 5;
          swift_willThrow();

          sub_1C440962C(v137);
          goto LABEL_6;
        }

        v73 = *&v136[16];
        v106 = *v136;
        v107 = *&v136[8];
        v144[0] = *v136;
        v144[1] = *&v136[8];
        v144[2] = *&v136[16];
        v144[3] = *&v136[24];
        v109 = *&v136[24];
        v110 = *&v136[32];
        v144[4] = *&v136[32];
        v144[5] = *&v136[40];
        v74 = *&v136[40];
        v144[6] = *&v136[48];
        v75 = swift_allocObject();
        *(v75 + 16) = v111;
        *(v75 + 56) = MEMORY[0x1E69E6530];
        *(v75 + 64) = MEMORY[0x1E69A0180];
        v108 = v73;
        *(v75 + 32) = v73;
        v76 = v116;
        sub_1C4EFB728();
        sub_1C4EFC088();
        v77 = v117;
        v112(v76, v117);
        v78 = v119;
        sub_1C440BAA8(v119, 1, 1, v77);
        sub_1C444C5E8();
        memset(v134, 0, sizeof(v134));
        v135 = 0;
        sub_1C4EFB408();
        sub_1C4420C3C(v134, &unk_1EC0BC770, &qword_1C4F10DC0);
        sub_1C4420C3C(v78, &unk_1EC0C06C0, &unk_1C4F10DB0);
        memcpy(v133, v136, 0x48uLL);
        v64 = v66;
        if (!*(&v133[1] + 1))
        {
          sub_1C44636BC(v145);

          *&v130 = 0;
          *(&v130 + 1) = 0xE000000000000000;
          sub_1C4F02248();

          *&v130 = 0xD00000000000001DLL;
          *(&v130 + 1) = 0x80000001C4FAAEF0;
          v86 = v108;
          v129 = v108;
          v87 = sub_1C4F02858();
          MEMORY[0x1C6940010](v87);

          v88 = v130;
          sub_1C450B034();
          swift_allocError();
          *v89 = v88;
          v91 = v131;
          v90 = v132;
          *(v89 + 16) = v130;
          *(v89 + 32) = v91;
          *(v89 + 48) = v90;
          *(v89 + 64) = 5;
          swift_willThrow();

          sub_1C44652C4(v106, v107, v86, v109, v110, v74, v72);
          sub_1C440962C(v137);
          goto LABEL_6;
        }

        v138 = *v136;
        v139 = *&v136[16];
        v140 = *(&v133[1] + 1);
        v141 = *&v136[32];
        v142 = *&v136[48];
        v143 = *&v136[64];
        sub_1C4445F60(v137, &v138, v144, v145, v147, v124, v126, v99, v125, SHIDWORD(v125), v127, v100, v101, v128);
        v80 = v109;
        v79 = v110;
        sub_1C4420C3C(v133, &qword_1EC0C6340, &qword_1C4F6BAA0);
        result = sub_1C44652C4(v106, v107, v108, v80, v79, v74, v72);
        ++v65;
        v55 = v121;
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}