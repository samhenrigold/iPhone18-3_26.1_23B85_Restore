uint64_t sub_1A452D570()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3CA8098;

  return sub_1A4520328(v3, v4, v5, v2);
}

uint64_t sub_1A452D644()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1A3CA8098;

  return sub_1A4522D08(v7, v8, v9, v2, v3, v4, v5, v6);
}

double sub_1A452D700()
{
  v1 = *(sub_1A5244664() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = *v4;
  v6 = v4[1];

  return sub_1A45245C8(v3, v0 + v2, v5, v6);
}

void sub_1A452D794(uint64_t a1)
{
  if (!qword_1EB13CD30)
  {
    sub_1A3C52C70(255, &qword_1EB13CD38, 0x1E6978A50);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB13CD30);
    }
  }
}

unint64_t sub_1A452D80C(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  if (*(a1 + 16))
  {
    sub_1A452FEC0(0, a2, a3, a4);
    sub_1A524E794();

    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  return MEMORY[0x1E69E7CC8];
}

double sub_1A452DB8C(char *a1)
{
  sub_1A452B8C0(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v28 - v4;
  v6 = sub_1A5244B44();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v28 - v11;
  if ((sub_1A524CDC4() & 1) == 0)
  {
    v14 = *(v7 + 16);
    v31 = a1;
    v33 = v14;
    v14(v12, a1, v6);
    v32 = v1;
    v15 = sub_1A5246F04();
    v16 = sub_1A524D264();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v28[1] = v17;
      v29 = swift_slowAlloc();
      v34 = v29;
      *v17 = 136315138;
      v33(v9, v12, v6);
      v18 = sub_1A524C714();
      v30 = v5;
      v20 = v19;
      (*(v7 + 8))(v12, v6);
      sub_1A3C2EF94(v18, v20, &v34);
    }

    (*(v7 + 8))(v12, v6);
    v21 = sub_1A524CCB4();
    (*(*(v21 - 8) + 56))(v5, 1, 1, v21);
    v33(v9, v31, v6);
    sub_1A524CC54();
    v22 = v32;

    v23 = sub_1A524CC44();
    v24 = v5;
    v25 = (*(v7 + 80) + 40) & ~*(v7 + 80);
    v26 = swift_allocObject();
    v27 = MEMORY[0x1E69E85E0];
    *(v26 + 2) = v23;
    *(v26 + 3) = v27;
    *(v26 + 4) = v22;
    (*(v7 + 32))(&v26[v25], v9, v6);
    sub_1A3D4D930(0, 0, v24, &unk_1A5345840, v26);
  }

  return result;
}

void sub_1A452DF5C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  sub_1A452B8C0(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v16 - v9;
  v11 = sub_1A5246F04();
  v12 = sub_1A524D264();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_1A3C1C000, v11, v12, a2, v13, 2u);
    MEMORY[0x1A590EEC0](v13, -1, -1);
  }

  sub_1A524CC74();
  v14 = sub_1A524CCB4();
  (*(*(v14 - 8) + 56))(v10, 0, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = v6;
  v15[5] = a1;

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A452E124(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1A452E148, 0, 0);
}

uint64_t sub_1A452E148()
{
  v1 = *(v0 + 32);
  v2 = [*(v0 + 24) librarySpecificFetchOptions];
  v3 = MEMORY[0x1E69E6F90];
  sub_1A3C37FA0(0, &qword_1EB12B260, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1A52F8E10;
  *(v4 + 32) = sub_1A524C674();
  *(v4 + 40) = v5;
  v6 = sub_1A524CA14();

  [v2 setFetchPropertySets_];

  sub_1A3C37FA0(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, v3);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1A52F9DE0;
  v8 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v9 = sub_1A524C634();
  v10 = [v8 initWithKey:v9 ascending:0];

  *(v7 + 32) = v10;
  v11 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v12 = sub_1A524C634();
  v13 = [v11 initWithKey:v12 ascending:1];

  *(v7 + 40) = v13;
  sub_1A3C52C70(0, &qword_1EB126B60, 0x1E696AEB0);
  v14 = sub_1A524CA14();

  [v2 setSortDescriptors_];

  [v2 setFetchLimit_];
  if (v1)
  {
    [v2 setInternalPredicate_];
  }

  v15 = objc_opt_self();
  v16 = sub_1A524CA14();
  v17 = [v15 fetchAssetsWithUUIDs:v16 options:v2];

  v18 = *(v0 + 8);

  return v18(v17);
}

double sub_1A452E40C(uint64_t a1, SEL *a2, uint64_t a3, uint64_t a4)
{
  sub_1A452B8C0(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v14 - v8;
  sub_1A3C52C70(0, &qword_1EB126860, off_1E771E0D0);
  v10 = [swift_getObjCClassFromMetadata() sharedInstance];
  LODWORD(a2) = [v10 *a2];

  if (a2)
  {
    v12 = sub_1A524CCB4();
    (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
    v13 = swift_allocObject();
    v13[2] = 0;
    v13[3] = 0;
    v13[4] = v4;
    v13[5] = a1;

    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  return result;
}

unint64_t sub_1A452E594(uint64_t a1, uint64_t a2)
{
  v2 = sub_1A524E824();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1A452E5E8()
{
  result = qword_1EB13CD40;
  if (!qword_1EB13CD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13CD40);
  }

  return result;
}

void sub_1A452E644(uint64_t a1)
{
  sub_1A452B8C0(319, &qword_1EB120BA0, sub_1A3F6D768, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1A5246E94();
    if (v2 <= 0x3F)
    {
      sub_1A5246F24();
      if (v3 <= 0x3F)
      {
        sub_1A5244854();
        if (v4 <= 0x3F)
        {
          sub_1A452B8C0(319, &qword_1EB12AFE0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
          if (v5 <= 0x3F)
          {
            sub_1A452B8C0(319, &qword_1EB1253A0, type metadata accessor for GenerativeStoryCreationViewModel.ShortStoryWarningState, MEMORY[0x1E69E6720]);
            if (v6 <= 0x3F)
            {
              sub_1A5241614();
              if (v7 <= 0x3F)
              {
                swift_updateClassMetadata2();
              }
            }
          }
        }
      }
    }
  }
}

uint64_t get_enum_tag_for_layout_string_12PhotosUICore32GenerativeStoryCreationViewModelC0dE5ErrorO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1A452E988(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 16))
  {
    return (*a1 + 2147483644);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 3;
  if (v4 >= 5)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A452E9DC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 3;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12PhotosUICore32GenerativeStoryCreationViewModelC5StateO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1A452EA60(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFA && *(a1 + 8))
  {
    return (*a1 + 2147483643);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 4;
  if (v4 >= 6)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A452EAB8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFB)
  {
    *result = 0;
    *result = a2 - 2147483643;
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 4;
    }
  }

  return result;
}

uint64_t sub_1A452EB50(uint64_t a1)
{
  result = sub_1A5244664();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1A452EBFC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC12PhotosUICore32GenerativeStoryCreationViewModel__preventedDisplaySleepToken);
  *(v1 + OBJC_IVAR____TtC12PhotosUICore32GenerativeStoryCreationViewModel__preventedDisplaySleepToken) = v2;
  v4 = v2;
}

void sub_1A452EC3C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC12PhotosUICore32GenerativeStoryCreationViewModel__shouldPreventDisplaySleep);
  *(v1 + OBJC_IVAR____TtC12PhotosUICore32GenerativeStoryCreationViewModel__shouldPreventDisplaySleep) = *(v0 + 24);
  sub_1A4526614(v2);
}

double sub_1A452EC80()
{
  v1 = *(*(sub_1A5244664() - 8) + 80);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1A45231B0(v0 + ((v1 + 24) & ~v1));
  }

  return result;
}

void sub_1A452ED20(uint64_t a1)
{
  if (!qword_1EB120218)
  {
    sub_1A5244664();
    sub_1A3C34400(255, &qword_1EB126160, MEMORY[0x1E69E7280]);
    v1 = sub_1A524ECF4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB120218);
    }
  }
}

uint64_t sub_1A452EDA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A452EE10()
{
  sub_1A3F6D768();
  v3 = (*(*(v2 - 8) + 80) + 40) & ~*(*(v2 - 8) + 80);
  v4 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1A3CA8098;

  return sub_1A451FF28(v5, v6, v7, v4, v0 + v3);
}

uint64_t sub_1A452EF14()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1A3CA8098;

  return sub_1A451DF6C(v5, v6, v7, v2, v3, v4);
}

uint64_t sub_1A452EFF0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1A452B8C0(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1A452F060(uint64_t a1)
{
  if (!qword_1EB13CD68)
  {
    sub_1A5244A24();
    sub_1A452B8C0(255, &qword_1EB124C78, MEMORY[0x1E69C1060], MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB13CD68);
    }
  }
}

unint64_t sub_1A452F104()
{
  result = qword_1EB13CD70;
  if (!qword_1EB13CD70)
  {
    sub_1A3C37FA0(255, &qword_1EB126ED0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13CD70);
  }

  return result;
}

uint64_t sub_1A452F198()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3CA8098;

  return sub_1A451E518(v3, v4, v5, v2);
}

uint64_t sub_1A452F22C()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1A3CA8098;

  return sub_1A451E774(v5, v6, v7, v2, v3, v4);
}

uint64_t sub_1A452F318()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A3CA8098;

  return sub_1A4529100(v4, v5, v6, v2, v3);
}

uint64_t sub_1A452F3B0()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A3CA8098;

  return sub_1A4529060(v4, v5, v6, v2, v3);
}

uint64_t sub_1A452F448()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A3CA8098;

  return sub_1A4528FC0(v4, v5, v6, v2, v3);
}

uint64_t sub_1A452F4E0()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A3CA8098;

  return sub_1A4528908(v4, v5, v6, v2, v3);
}

uint64_t sub_1A452F578()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A3CA8098;

  return sub_1A4528478(v4, v5, v6, v2, v3);
}

uint64_t objectdestroy_311Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A452F658()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A3CA8098;

  return sub_1A45280A0(v4, v5, v6, v2, v3);
}

uint64_t objectdestroy_267Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  swift_unknownObjectRelease();

  (*(v3 + 8))(v1 + v4, v2);

  return swift_deallocObject();
}

uint64_t sub_1A452F7C4()
{
  v2 = *(sub_1A5244B44() - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1A3CA8098;

  return sub_1A4527DE0(v5, v6, v7, v4, v0 + v3);
}

uint64_t objectdestroy_253Tm()
{
  v1 = sub_1A5244664();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

double sub_1A452F960()
{
  v1 = *(sub_1A5244664() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_1A4524D24(v2, v3);
}

uint64_t sub_1A452F9C4(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1A452B8C0(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double sub_1A452FA28()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1A463FBC0(v1);
  }

  return result;
}

uint64_t sub_1A452FA8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A452FAF4(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1A452B8C0(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1A452FB74()
{
  sub_1A5244854();
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1A3CA8098;

  return sub_1A45142A8(v7, v8, v9, v2, v3, v4, v5, v6);
}

uint64_t sub_1A452FCB0()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1A3CA8098;

  return sub_1A4514DF8(v5, v6, v7, v2, v3, v4);
}

void sub_1A452FD58(id a1, char a2)
{
  if (a2)
  {
  }
}

uint64_t sub_1A452FDA0(uint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  v7 = *(v3 + 16);
  v6 = *(v3 + 24);
  v8 = *a1;
  swift_beginAccess();
  sub_1A452FF28(v6, v7 + v8, a2, a3);
  return swift_endAccess();
}

uint64_t sub_1A452FE1C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), double a5)
{
  sub_1A452FFA8(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1A452FE78(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1A452FEC0(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  if (!*a2)
  {
    sub_1A3C52C70(255, a3, a4);
    v5 = sub_1A524E7A4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1A452FF28(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1A452B8C0(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 24))(a2, a1, v6);
  return a2;
}

void sub_1A452FFA8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_1A452B8C0(255, a3, a4, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1A4530028(uint64_t a1)
{
  v4 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1A3CA8098;

  return sub_1A450E5B8(a1, v5, v6, v4);
}

uint64_t sub_1A4530154()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1A3CA8098;

  return sub_1A452A804();
}

uint64_t sub_1A45301E0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1A3CA8098;

  return sub_1A452A63C();
}

uint64_t sub_1A453026C(uint64_t a1)
{
  v4 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1A3CA8098;

  return sub_1A450D640(a1, v5, v6, v4);
}

void sub_1A4530520(void *a1)
{
  v1[2] = 0;
  v1[4] = 0;
  v1[5] = 0;
  v1[6] = [objc_allocWithZone(off_1E77217D8) init];
  sub_1A5241604();
  type metadata accessor for SharedLibraryFilterViewModel(0);
  v3 = [objc_opt_self() sharedLibraryStatusProviderWithPhotoLibrary_];
  v1[3] = SharedLibraryFilterViewModel.__allocating_init(sharedLibraryStatusProvider:)(v3);
  sub_1A4530D48();
  KeyPath = swift_getKeyPath();
  (*(*v1 + 280))(KeyPath);

  swift_allocObject();
  swift_weakInit();
  sub_1A45317A4(&qword_1EB1298F8, type metadata accessor for SharedLibraryFilterViewModel, &protocol conformance descriptor for SharedLibraryFilterViewModel);

  sub_1A5245C54();
}

double sub_1A453076C(uint64_t a1)
{
  if (v1[2] == a1)
  {
    v2 = v1[6];

    [v2 signalChange_];
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 288))(v5);
  }

  return result;
}

double sub_1A4530888(uint64_t a1)
{
  if (v1[3] == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v3.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 288))(v3);
  }

  return result;
}

uint64_t sub_1A453099C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 152))();
  *a2 = result;
  return result;
}

uint64_t sub_1A4530A10()
{
  swift_getKeyPath();
  (*(*v0 + 280))();

  return v0[2];
}

double sub_1A4530A74()
{
  swift_getKeyPath();
  (*(*v0 + 280))();

  return result;
}

double sub_1A4530AE8@<D0>(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  (*(*v3 + 280))();

  *a2 = v3[3];

  return result;
}

double sub_1A4530B9C()
{
  swift_getKeyPath();
  (*(*v0 + 280))();

  swift_unknownObjectRetain();
  return result;
}

double sub_1A4530C08@<D0>(_OWORD **a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  (*(*v3 + 280))();

  *a2 = v3[2];

  swift_unknownObjectRetain();
  return result;
}

double sub_1A4530C94(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  KeyPath = swift_getKeyPath();
  v7[2] = v4;
  v7[3] = v2;
  v7[4] = v3;
  (*(*v4 + 288))(KeyPath, sub_1A3DC7C5C, v7, MEMORY[0x1E69E7CA8] + 8);

  return result;
}

void sub_1A4530D48()
{
  swift_getKeyPath();
  (*(*v0 + 280))();

  v1 = *(**(v0 + 24) + 144);

  v3 = v1(v2);

  if ((*(*v0 + 152))(v4) != v3)
  {
    v5 = *(v0 + 48);
    v6 = swift_allocObject();
    swift_weakInit();
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    *(v7 + 24) = v3;
    v9[4] = sub_1A45317EC;
    v9[5] = v7;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 1107296256;
    v9[2] = sub_1A3DC72D4;
    v9[3] = &block_descriptor_208;
    v8 = _Block_copy(v9);

    [v5 performChanges_];
    _Block_release(v8);
  }
}

double sub_1A4530EF0()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1A4530D48();
  }

  return result;
}

double sub_1A4530F44(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (*(Strong + 16) == a2)
    {
      [*(Strong + 48) signalChange_];
    }

    else
    {
      KeyPath = swift_getKeyPath();
      v7.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
      (*(*v5 + 288))(v7);
    }
  }

  return result;
}

uint64_t LemonadeSharedLibraryViewModeIndicatorModel.deinit()
{

  swift_unknownObjectRelease();

  v1 = OBJC_IVAR____TtC12PhotosUICore43LemonadeSharedLibraryViewModeIndicatorModel___observationRegistrar;
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t LemonadeSharedLibraryViewModeIndicatorModel.__deallocating_deinit()
{

  swift_unknownObjectRelease();

  v1 = OBJC_IVAR____TtC12PhotosUICore43LemonadeSharedLibraryViewModeIndicatorModel___observationRegistrar;
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void sub_1A45312FC(uint64_t a1, uint64_t a2)
{
  type metadata accessor for LemonadeSharedLibraryViewModeIndicatorModel(0);
  sub_1A45317A4(&qword_1EB13CDD0, type metadata accessor for LemonadeSharedLibraryViewModeIndicatorModel, &protocol conformance descriptor for LemonadeSharedLibraryViewModeIndicatorModel);

  sub_1A5245C54();
}

uint64_t type metadata accessor for LemonadeSharedLibraryViewModeIndicatorModel(uint64_t a1)
{
  result = qword_1EB1773C0;
  if (!qword_1EB1773C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1A45313F0()
{
  result = qword_1EB13CD98;
  if (!qword_1EB13CD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13CD98);
  }

  return result;
}

unint64_t sub_1A4531448()
{
  result = qword_1EB13CDA0;
  if (!qword_1EB13CDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13CDA0);
  }

  return result;
}

unint64_t sub_1A45314A0()
{
  result = qword_1EB13CDA8;
  if (!qword_1EB13CDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13CDA8);
  }

  return result;
}

unint64_t sub_1A45314F8()
{
  result = qword_1EB13CDB0;
  if (!qword_1EB13CDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13CDB0);
  }

  return result;
}

unint64_t sub_1A4531550()
{
  result = qword_1EB13CDB8;
  if (!qword_1EB13CDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13CDB8);
  }

  return result;
}

unint64_t sub_1A4531638()
{
  result = qword_1EB13CDC8;
  if (!qword_1EB13CDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13CDC8);
  }

  return result;
}

uint64_t sub_1A4531694(uint64_t a1)
{
  result = sub_1A5241614();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1A45317A4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_1A45317F4()
{
  v1 = *(v0 + 16);
  *(v1 + 16) = *(v0 + 24);
  return [*(v1 + 48) signalChange_];
}

uint64_t sub_1A453184C()
{
  v0 = sub_1A5246F24();
  __swift_allocate_value_buffer(v0, qword_1EB1EB148);
  __swift_project_value_buffer(v0, qword_1EB1EB148);
  return sub_1A5246F14();
}

uint64_t sub_1A4531A28()
{
  v0 = sub_1A5246F24();
  __swift_allocate_value_buffer(v0, qword_1EB1EB1C8);
  __swift_project_value_buffer(v0, qword_1EB1EB1C8);
  return sub_1A5246F14();
}

void sub_1A4531B1C(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1A5246E54();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v33 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A45344B0(0, &qword_1EB128C00, MEMORY[0x1E69E93D8]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v30 - v8;
  v10 = v1[1];
  v38 = *v1;
  v39 = v10;
  v40 = *(v1 + 32);
  v11 = sub_1A4531F28();
  MEMORY[0x1A5905890](&type metadata for LemonadeExpandableCuratedLibraryView, v11);
  v12 = sub_1A5246E94();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v9, 1, v12) == 1)
  {
    sub_1A3D615F8(v9);
  }

  else
  {
    v31 = v5;
    v32 = v4;
    v41 = *(v1 + 2);

    sub_1A3DB8180(&v41, &v34);

    sub_1A5246E44();
    v14 = sub_1A5246E84();
    v30[1] = sub_1A524D664();

    sub_1A3DB81DC(&v41);

    if (sub_1A524DEC4())
    {
      v15 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *v15 = 136446210;
      v16 = v2[1];
      v34 = *v2;
      v35 = v16;
      v36 = *(v2 + 32);
      v17 = sub_1A524A694();
      sub_1A3C2EF94(v17, v18, &v37);
    }

    (*(v31 + 8))(v33, v32);
    (*(v13 + 8))(v9, v12);
  }

  v19 = sub_1A5249574();
  LOBYTE(v37) = 0;
  v20 = *v2;
  v21 = *(v2 + 1);
  v38 = v2[1];
  LOBYTE(v39) = *(v2 + 32);
  sub_1A4534E34(0, &qword_1EB127320, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);

  sub_1A524B924();
  v22 = v34;
  v23 = v35;
  v24 = v37;
  v25 = sub_1A524A064();
  sub_1A5247BC4();
  *a1 = v19;
  *(a1 + 8) = 0x4010000000000000;
  *(a1 + 16) = v24;
  *(a1 + 24) = v20;
  *(a1 + 32) = v21;
  *(a1 + 40) = v22;
  *(a1 + 56) = v23;
  *(a1 + 64) = v25;
  *(a1 + 72) = v26;
  *(a1 + 80) = v27;
  *(a1 + 88) = v28;
  *(a1 + 96) = v29;
  *(a1 + 104) = 0;
}

unint64_t sub_1A4531F28()
{
  result = qword_1EB129588;
  if (!qword_1EB129588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB129588);
  }

  return result;
}

uint64_t sub_1A4531F7C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  return result;
}

double sub_1A4531F90@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v65 = a1;
  v3 = sub_1A5246E54();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A45344B0(0, &qword_1EB128C00, MEMORY[0x1E69E93D8]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v47 - v8;
  v10 = v1[1];
  v74 = *v1;
  v75 = v10;
  LOBYTE(v76) = *(v1 + 32);
  v11 = sub_1A45331E8();
  MEMORY[0x1A5905890](&type metadata for LemonadeExpandableAnimatableCuratedLibraryView, v11);
  v12 = sub_1A5246E94();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v9, 1, v12) == 1)
  {
    sub_1A3D615F8(v9);
  }

  else
  {
    v63 = v4;
    v64 = v3;
    v71 = *(v1 + 2);

    sub_1A3DB8180(&v71, &v67);

    sub_1A5246E44();
    v14 = sub_1A5246E84();
    v62 = sub_1A524D664();

    sub_1A3DB81DC(&v71);

    if (sub_1A524DEC4())
    {
      v15 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      *v15 = 136446210;
      v16 = v2[1];
      v67 = *v2;
      v68 = v16;
      LOBYTE(v69) = *(v2 + 32);
      v17 = sub_1A524A694();
      sub_1A3C2EF94(v17, v18, &v66);
    }

    (*(v63 + 8))(v6, v64);
    (*(v13 + 8))(v9, v12);
  }

  v64 = sub_1A524B414();
  v19 = *v2;
  sub_1A46E20FC(v64);
  sub_1A524BC74();
  sub_1A52481F4();
  v63 = v67;
  v62 = BYTE8(v67);
  v61 = v68;
  v60 = BYTE8(v68);
  v59 = v69;
  v58 = v70;
  v57 = sub_1A524BC54();
  v56 = v20;
  sub_1A453323C(0);
  v22 = v65;
  v23 = (v65 + *(v21 + 36));
  v55 = sub_1A524B414();
  v54 = sub_1A524BC54();
  v53 = v24;
  sub_1A453343C(0);
  v26 = v23 + *(v25 + 36);
  swift_retain_n();
  PXDisplayCollectionDetailedCountsMake();
  v52 = v27;
  sub_1A46E2170();
  sub_1A524BC74();
  sub_1A52481F4();
  v51 = v74;
  v28 = BYTE8(v74);
  v50 = v75;
  v29 = BYTE8(v75);
  v49 = v76;
  v48 = v77;
  v47 = sub_1A5248894();
  v30 = sub_1A524A054();
  v73 = v28;
  v72 = v29;
  KeyPath = swift_getKeyPath();
  LOBYTE(v66) = 0;
  sub_1A4534358(0, &qword_1EB123228, sub_1A4533530, type metadata accessor for LemonadeExpandableAnimatableCuratedLibraryViewAccessibilityModifier);
  v33 = &v26[*(v32 + 36)];
  *v33 = v19;
  *(v33 + 1) = swift_getKeyPath();
  v33[16] = 0;
  type metadata accessor for LemonadeExpandableAnimatableCuratedLibraryViewAccessibilityModifier(0);
  sub_1A5249AE4();
  v34 = v51;
  *v26 = v52;
  *(v26 + 1) = v34;
  v26[16] = v28;
  *(v26 + 3) = v50;
  v26[32] = v29;
  v35 = v48;
  *(v26 + 5) = v49;
  *(v26 + 6) = v35;
  *(v26 + 7) = v47;
  v26[64] = v30;
  v26[72] = 0;
  *(v26 + 10) = v19;
  *(v26 + 11) = KeyPath;
  v26[96] = 0;
  sub_1A453349C(0);
  v37 = &v26[*(v36 + 36)];
  v38 = v53;
  *v37 = v54;
  v37[1] = v38;
  *v23 = v55;
  sub_1A4534DD0(0, &qword_1EB1236F8, sub_1A453343C, &type metadata for LemonadeAnimatableCuratedLibraryHitTestHeightModifier);
  *(v23 + *(v39 + 36)) = v19;
  sub_1A4533378(0);
  *(v23 + *(v40 + 36)) = 0;
  sub_1A45332D0(0);
  v42 = (v23 + *(v41 + 36));
  v43 = v56;
  *v42 = v57;
  v42[1] = v43;
  v44 = v63;
  *v22 = v64;
  *(v22 + 8) = v44;
  *(v22 + 16) = v62;
  *(v22 + 24) = v61;
  *(v22 + 32) = v60;
  v45 = v58;
  *(v22 + 40) = v59;
  *(v22 + 48) = v45;

  return result;
}

double sub_1A4532638@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1A46E2710();
  if (v4)
  {
    sub_1A46E2170();
  }

  else
  {
    sub_1A46E20FC(v4);
  }

  sub_1A524BC74();
  sub_1A52481F4();
  sub_1A4534D74(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  sub_1A4534DD0(0, &qword_1EB1240F8, sub_1A4534D74, MEMORY[0x1E697E048]);
  v7 = (a2 + *(v6 + 36));
  *v7 = v9;
  v7[1] = v10;
  result = *&v11;
  v7[2] = v11;
  return result;
}

uint64_t sub_1A453272C()
{
  if (sub_1A45330A4(*(v0 + 16), *(v0 + 24)))
  {
    sub_1A46DF5BC(v1);
  }

  sub_1A4533E64(0, &qword_1EB122270, sub_1A45338C4, &type metadata for LemonadeAccessibilityHidden, MEMORY[0x1E697FDE8]);
  sub_1A4533BA4();
  return sub_1A524AD44();
}

uint64_t sub_1A45327EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v51 = sub_1A5249AB4();
  v50 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v48 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for LemonadeExpandableAnimatableCuratedLibraryViewAccessibilityModifier(0);
  v46 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v54 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = v4;
  sub_1A4534674(0);
  v52 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v45 = &v42 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v47 = &v42 - v11;
  sub_1A4534DD0(0, &qword_1EB123E78, sub_1A45345C0, &type metadata for LemonadeAccessibilityHidden);
  v53 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v42 - v13;
  v15 = sub_1A5249234();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a1 + 8);
  v20 = a1;
  if (*(a1 + 16) == 1)
  {
    if ((v19 & 1) == 0)
    {
LABEL_3:
      sub_1A4534504(0);
      return (*(*(v21 - 8) + 56))(v56, 1, 1, v21);
    }
  }

  else
  {

    v23 = sub_1A524D254();
    v24 = sub_1A524A014();
    sub_1A5246DF4(v23, &dword_1A3C1C000, v24, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3C53AEC(v19, 0);
    (*(v16 + 8))(v18, v15);
    if (v59 != 1)
    {
      goto LABEL_3;
    }
  }

  v25 = sub_1A524B414();
  v26 = *v20;
  v43 = v20;
  v44 = v26;
  sub_1A46E20FC(v25);
  sub_1A524BC74();
  sub_1A52481F4();
  v67 = v69;
  v66 = v71;
  v59 = v25;
  v60 = v68;
  v61 = v69;
  v62 = v70;
  v63 = v71;
  v64 = v72;
  v65 = 0;
  v57 = sub_1A3C38BD4(0xD000000000000027);
  v58 = v27;
  sub_1A46DF5BC(v28);
  sub_1A45335B0(0, &qword_1EB123718, &qword_1EB128608, MEMORY[0x1E69815C0], MEMORY[0x1E69805C0]);
  sub_1A45346FC();
  sub_1A3D5F9DC();
  sub_1A524AC74();

  v29 = v45;
  sub_1A5248744();
  sub_1A453499C(v7);
  v30 = v54;
  sub_1A45349F8(v20, v54);
  v31 = (*(v46 + 80) + 16) & ~*(v46 + 80);
  v32 = swift_allocObject();
  sub_1A4534A5C(v30, v32 + v31);
  v33 = v48;
  sub_1A5249AA4();
  v34 = v47;
  sub_1A52487D4();

  (*(v50 + 8))(v33, v51);
  sub_1A453499C(v29);
  sub_1A45341CC(0, &qword_1EB122228, MEMORY[0x1E69E6370], MEMORY[0x1E69E6380], MEMORY[0x1E697C880]);
  v35 = v43;
  sub_1A5249AD4();
  sub_1A4534054(&qword_1EB123360, sub_1A4534674, sub_1A45346FC);
  sub_1A524ADC4();

  sub_1A453499C(v34);
  KeyPath = swift_getKeyPath();
  v37 = &v14[*(v53 + 36)];
  *v37 = 1;
  *(v37 + 1) = v44;
  *(v37 + 2) = KeyPath;
  v37[24] = 0;

  LOBYTE(v59) = sub_1A46DF5BC(v38) & 1;
  sub_1A45349F8(v35, v30);
  v39 = swift_allocObject();
  sub_1A4534A5C(v30, v39 + v31);
  sub_1A453479C();
  v40 = v56;
  sub_1A524B144();

  sub_1A3D076E0(v14);
  sub_1A4534504(0);
  return (*(*(v41 - 8) + 56))(v40, 0, 1, v41);
}

uint64_t sub_1A4532FBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = sub_1A524BC54();
  v8 = v7;
  sub_1A4534358(0, &qword_1EB124108, sub_1A45343CC, sub_1A4534430);
  v10 = a2 + *(v9 + 36);
  sub_1A45327EC(v3, v10);
  sub_1A4534430(0, v11);
  v13 = (v10 + *(v12 + 36));
  *v13 = v6;
  v13[1] = v8;
  sub_1A45343CC(0);
  v15 = *(*(v14 - 8) + 16);

  return v15(a2, a1, v14);
}

uint64_t sub_1A45330A4(uint64_t a1, char a2)
{
  v4 = sub_1A5249234();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ((a2 & 1) == 0)
  {

    v8 = sub_1A524D254();
    v9 = sub_1A524A014();
    sub_1A5246DF4(v8, &dword_1A3C1C000, v9, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3C53AEC(a1, 0);
    (*(v5 + 8))(v7, v4);
    LOBYTE(a1) = v11[15];
  }

  return a1 & 1;
}

unint64_t sub_1A45331E8()
{
  result = qword_1EB129328;
  if (!qword_1EB129328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB129328);
  }

  return result;
}

void sub_1A453323C(uint64_t a1)
{
  if (!qword_1EB123728)
  {
    sub_1A45341CC(255, &qword_1EB128608, MEMORY[0x1E69815C0], MEMORY[0x1E697E048], MEMORY[0x1E697E830]);
    sub_1A45332D0(255);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB123728);
    }
  }
}

void sub_1A45332D0(uint64_t a1)
{
  if (!qword_1EB122EE8)
  {
    sub_1A4533378(255);
    sub_1A4533970(&qword_1EB123350, sub_1A4533378, sub_1A45339FC, sub_1A3F963C0);
    v1 = sub_1A5248AE4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB122EE8);
    }
  }
}

void sub_1A4533378(uint64_t a1)
{
  if (!qword_1EB123348)
  {
    sub_1A4534DD0(255, &qword_1EB1236F8, sub_1A453343C, &type metadata for LemonadeAnimatableCuratedLibraryHitTestHeightModifier);
    sub_1A4533E64(255, &qword_1EB127C70, sub_1A3D6F4A4, MEMORY[0x1E6981EF8], MEMORY[0x1E697FD48]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB123348);
    }
  }
}

void sub_1A453343C(uint64_t a1)
{
  if (!qword_1EB123D68)
  {
    sub_1A453349C(255);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB123D68);
    }
  }
}

void sub_1A453349C(uint64_t a1)
{
  if (!qword_1EB122ED8)
  {
    sub_1A4534358(255, &qword_1EB123228, sub_1A4533530, type metadata accessor for LemonadeExpandableAnimatableCuratedLibraryViewAccessibilityModifier);
    sub_1A4533684();
    v1 = sub_1A5248AE4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB122ED8);
    }
  }
}

void sub_1A4533530(uint64_t a1)
{
  if (!qword_1EB123470)
  {
    sub_1A45335B0(255, &qword_1EB128478, &qword_1EB128838, &type metadata for LemonadeCuratedLibraryView, MEMORY[0x1E6980A38]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB123470);
    }
  }
}

void sub_1A45335B0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    sub_1A45341CC(255, a3, a4, MEMORY[0x1E697E048], MEMORY[0x1E697E830]);
    v6 = sub_1A5248804();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t type metadata accessor for LemonadeExpandableAnimatableCuratedLibraryViewAccessibilityModifier(uint64_t a1)
{
  result = qword_1EB15B8B0;
  if (!qword_1EB15B8B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1A4533684()
{
  result = qword_1EB123230;
  if (!qword_1EB123230)
  {
    sub_1A4534358(255, &qword_1EB123228, sub_1A4533530, type metadata accessor for LemonadeExpandableAnimatableCuratedLibraryViewAccessibilityModifier);
    sub_1A4533970(&qword_1EB123478, sub_1A4533530, sub_1A4533778, sub_1A45338C4);
    sub_1A4533918();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123230);
  }

  return result;
}

unint64_t sub_1A4533778()
{
  result = qword_1EB128480;
  if (!qword_1EB128480)
  {
    sub_1A45335B0(255, &qword_1EB128478, &qword_1EB128838, &type metadata for LemonadeCuratedLibraryView, MEMORY[0x1E6980A38]);
    sub_1A4533818();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB128480);
  }

  return result;
}

unint64_t sub_1A4533818()
{
  result = qword_1EB128840;
  if (!qword_1EB128840)
  {
    sub_1A45341CC(255, &qword_1EB128838, &type metadata for LemonadeCuratedLibraryView, MEMORY[0x1E697E048], MEMORY[0x1E697E830]);
    sub_1A3EF6EC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB128840);
  }

  return result;
}

unint64_t sub_1A45338C4()
{
  result = qword_1EB125658;
  if (!qword_1EB125658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125658);
  }

  return result;
}

unint64_t sub_1A4533918()
{
  result = qword_1EB15B8C0[0];
  if (!qword_1EB15B8C0[0])
  {
    type metadata accessor for LemonadeExpandableAnimatableCuratedLibraryViewAccessibilityModifier(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB15B8C0);
  }

  return result;
}

uint64_t sub_1A4533970(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void), void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A45339FC()
{
  result = qword_1EB123700;
  if (!qword_1EB123700)
  {
    sub_1A4534DD0(255, &qword_1EB1236F8, sub_1A453343C, &type metadata for LemonadeAnimatableCuratedLibraryHitTestHeightModifier);
    sub_1A4533AA0();
    sub_1A4533B50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123700);
  }

  return result;
}

unint64_t sub_1A4533AA0()
{
  result = qword_1EB123D70;
  if (!qword_1EB123D70)
  {
    sub_1A453343C(255);
    sub_1A453400C(&qword_1EB122EE0, sub_1A453349C, MEMORY[0x1E697EC18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123D70);
  }

  return result;
}

unint64_t sub_1A4533B50()
{
  result = qword_1EB15BF18[0];
  if (!qword_1EB15BF18[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB15BF18);
  }

  return result;
}

unint64_t sub_1A4533BA4()
{
  result = qword_1EB122278;
  if (!qword_1EB122278)
  {
    sub_1A4533E64(255, &qword_1EB122270, sub_1A45338C4, &type metadata for LemonadeAccessibilityHidden, MEMORY[0x1E697FDE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB122278);
  }

  return result;
}

uint64_t sub_1A4533CB0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A4533CF8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1A4533D4C()
{
  result = qword_1EB1284D8;
  if (!qword_1EB1284D8)
  {
    sub_1A4533DCC(255);
    sub_1A4533ECC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1284D8);
  }

  return result;
}

void sub_1A4533DCC(uint64_t a1)
{
  if (!qword_1EB1284D0)
  {
    sub_1A4533E64(255, &qword_1EB127390, sub_1A45331E8, &type metadata for LemonadeExpandableAnimatableCuratedLibraryView, MEMORY[0x1E6981860]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1284D0);
    }
  }
}

void sub_1A4533E64(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_1A4533ECC()
{
  result = qword_1EB127398;
  if (!qword_1EB127398)
  {
    sub_1A4533E64(255, &qword_1EB127390, sub_1A45331E8, &type metadata for LemonadeExpandableAnimatableCuratedLibraryView, MEMORY[0x1E6981860]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB127398);
  }

  return result;
}

unint64_t sub_1A4533F5C()
{
  result = qword_1EB123730;
  if (!qword_1EB123730)
  {
    sub_1A453323C(255);
    sub_1A3F94CD0();
    sub_1A453400C(&qword_1EB122EF0, sub_1A45332D0, MEMORY[0x1E697EC18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123730);
  }

  return result;
}

uint64_t sub_1A453400C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A4534054(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    sub_1A453400C(&qword_1EB127710, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1A4534108(uint64_t a1)
{
  if (!qword_1EB1240D8)
  {
    sub_1A4533E64(255, &qword_1EB122270, sub_1A45338C4, &type metadata for LemonadeAccessibilityHidden, MEMORY[0x1E697FDE8]);
    sub_1A5249F54();
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1240D8);
    }
  }
}

void sub_1A45341CC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1A4534234(uint64_t a1)
{
  type metadata accessor for LemonadeCuratedLibraryViewModel(319);
  if (v1 <= 0x3F)
  {
    sub_1A4534E34(319, &qword_1EB1246E0, MEMORY[0x1E69E6370], MEMORY[0x1E697DCC0]);
    if (v2 <= 0x3F)
    {
      sub_1A45341CC(319, &qword_1EB122228, MEMORY[0x1E69E6370], MEMORY[0x1E69E6380], MEMORY[0x1E697C880]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1A4534358(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_1A5248804();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1A45343CC(uint64_t a1)
{
  if (!qword_1EB1222A0)
  {
    type metadata accessor for LemonadeExpandableAnimatableCuratedLibraryViewAccessibilityModifier(255);
    sub_1A4533918();
    v1 = sub_1A52499C4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1222A0);
    }
  }
}

void sub_1A4534430(uint64_t a1, double a2)
{
  if (!qword_1EB122E78)
  {
    sub_1A45344B0(255, &qword_1EB121D80, sub_1A4534504);
    sub_1A45348A0();
    v2 = sub_1A5248AE4();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB122E78);
    }
  }
}

void sub_1A45344B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A524DF24();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1A4534504(uint64_t a1)
{
  if (!qword_1EB121D88)
  {
    sub_1A4534DD0(255, &qword_1EB123E78, sub_1A45345C0, &type metadata for LemonadeAccessibilityHidden);
    sub_1A453479C();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB121D88);
    }
  }
}

void sub_1A45345C0(uint64_t a1, double a2)
{
  if (!qword_1EB121E18)
  {
    sub_1A4534674(255);
    sub_1A4534054(&qword_1EB123360, sub_1A4534674, sub_1A45346FC);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB121E18);
    }
  }
}

void sub_1A4534674(uint64_t a1)
{
  if (!qword_1EB123358)
  {
    sub_1A45335B0(255, &qword_1EB123718, &qword_1EB128608, MEMORY[0x1E69815C0], MEMORY[0x1E69805C0]);
    sub_1A5249F54();
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB123358);
    }
  }
}

unint64_t sub_1A45346FC()
{
  result = qword_1EB123720;
  if (!qword_1EB123720)
  {
    sub_1A45335B0(255, &qword_1EB123718, &qword_1EB128608, MEMORY[0x1E69815C0], MEMORY[0x1E69805C0]);
    sub_1A3F94CD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123720);
  }

  return result;
}

unint64_t sub_1A453479C()
{
  result = qword_1EB123E80;
  if (!qword_1EB123E80)
  {
    sub_1A4534DD0(255, &qword_1EB123E78, sub_1A45345C0, &type metadata for LemonadeAccessibilityHidden);
    sub_1A4534674(255);
    sub_1A4534054(&qword_1EB123360, sub_1A4534674, sub_1A45346FC);
    swift_getOpaqueTypeConformance2();
    sub_1A45338C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123E80);
  }

  return result;
}

unint64_t sub_1A45348A0()
{
  result = qword_1EB121D78;
  if (!qword_1EB121D78)
  {
    sub_1A45344B0(255, &qword_1EB121D80, sub_1A4534504);
    sub_1A4534DD0(255, &qword_1EB123E78, sub_1A45345C0, &type metadata for LemonadeAccessibilityHidden);
    sub_1A453479C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB121D78);
  }

  return result;
}

uint64_t sub_1A453499C(uint64_t a1)
{
  sub_1A4534674(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A45349F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LemonadeExpandableAnimatableCuratedLibraryViewAccessibilityModifier(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A4534A5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LemonadeExpandableAnimatableCuratedLibraryViewAccessibilityModifier(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1A4534AC0()
{
  type metadata accessor for LemonadeExpandableAnimatableCuratedLibraryViewAccessibilityModifier(0);
  if ((sub_1A46DF5BC(v0) & 1) == 0)
  {
    sub_1A46E162C(1, 1);
  }
}

uint64_t objectdestroyTm_59()
{
  v1 = (type metadata accessor for LemonadeExpandableAnimatableCuratedLibraryViewAccessibilityModifier(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  sub_1A3C53AEC(*(v2 + 8), *(v2 + 16));
  v3 = v2 + v1[8];
  v4 = sub_1A5249C84();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v3, 1, v4))
  {
    (*(v5 + 8))(v3, v4);
  }

  sub_1A45341CC(0, &qword_1EB122228, MEMORY[0x1E69E6370], MEMORY[0x1E69E6380], MEMORY[0x1E697C880]);

  return swift_deallocObject();
}

uint64_t sub_1A4534CA4(_BYTE *a1, _BYTE *a2)
{
  result = type metadata accessor for LemonadeExpandableAnimatableCuratedLibraryViewAccessibilityModifier(0);
  if ((*a2 & 1) == 0)
  {
    if (*a1)
    {
      sub_1A45341CC(0, &qword_1EB122228, MEMORY[0x1E69E6370], MEMORY[0x1E69E6380], MEMORY[0x1E697C880]);
      return sub_1A5249AC4();
    }
  }

  return result;
}

void sub_1A4534D74(uint64_t a1)
{
  if (!qword_1EB122290)
  {
    sub_1A4533B50();
    v1 = sub_1A52499C4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB122290);
    }
  }
}

void sub_1A4534DD0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    v5 = sub_1A5248804();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1A4534E34(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1A4534E84()
{
  result = qword_1EB124110;
  if (!qword_1EB124110)
  {
    sub_1A4534358(255, &qword_1EB124108, sub_1A45343CC, sub_1A4534430);
    sub_1A453400C(&qword_1EB1222A8, sub_1A45343CC, MEMORY[0x1E697FDF8]);
    sub_1A453400C(&qword_1EB122E80, sub_1A4534430, MEMORY[0x1E697EC18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB124110);
  }

  return result;
}

unint64_t sub_1A4534F94()
{
  result = qword_1EB124100;
  if (!qword_1EB124100)
  {
    sub_1A4534DD0(255, &qword_1EB1240F8, sub_1A4534D74, MEMORY[0x1E697E048]);
    sub_1A453400C(&qword_1EB122298, sub_1A4534D74, MEMORY[0x1E697FDF8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB124100);
  }

  return result;
}

uint64_t sub_1A4535070()
{
  v0 = sub_1A5246F24();
  __swift_allocate_value_buffer(v0, qword_1EB1EB0E0);
  __swift_project_value_buffer(v0, qword_1EB1EB0E0);
  sub_1A524C814();
  return sub_1A5246F14();
}

uint64_t sub_1A45350E8()
{
  if (qword_1EB176610 != -1)
  {
    swift_once();
  }

  v0 = sub_1A5246F24();

  return __swift_project_value_buffer(v0, qword_1EB1EB0E0);
}

void sub_1A45353F0()
{
  v1 = type metadata accessor for InvitationsItem(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v89 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = type metadata accessor for NotificationsPhotosItem.NotificationType(0);
  MEMORY[0x1EEE9AC00](v98);
  v5 = &v89 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = type metadata accessor for NotificationsPhotosItem(0);
  v6 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100);
  v8 = &v89 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v95 = &v89 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v101 = &v89 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v99 = &v89 - v14;
  sub_1A3C7E8B0(0, v15);
  v16 = [swift_getObjCClassFromMetadata() sharedInstance];
  v17 = [v16 hideNotifications];

  if (v17)
  {
    v0[2] = MEMORY[0x1E69E7CC0];

    *&v109[0] = v0[13];
    sub_1A3DB0844(0);
    sub_1A4538780(&qword_1EB128DD8, 255, sub_1A3DB0844, off_1E7721078);

    sub_1A5245F44();
  }

  v92 = v3;
  v89 = v8;
  swift_beginAccess();
  v93 = v0;
  v18 = v0[14];
  v19 = 1 << *(v18 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & *(v18 + 64);
  v22 = (v19 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v23 = 0;
  v24 = MEMORY[0x1E69E7CC0];
  v94 = v6;
  v96 = v5;
  while (1)
  {
    v104 = v24;
    if (v21)
    {
      goto LABEL_13;
    }

    do
    {
      v25 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
        goto LABEL_78;
      }

      if (v25 >= v22)
      {

        v42 = v104;
        v97 = v104[2];
        if (!v97)
        {
          v43 = MEMORY[0x1E69E7CC0];
LABEL_64:

          *&v109[0] = v43;

          sub_1A4536C30(v109);

          v80 = *&v109[0];
          v81 = *(*&v109[0] + 16);
          if (v81)
          {
            v22 = 0;
            while (1)
            {
              if (v22 >= *(v80 + 16))
              {
                goto LABEL_76;
              }

              v82 = v80 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v22;
              v83 = v95;
              sub_1A4538BC8(v82, v95, type metadata accessor for NotificationsPhotosItem);
              LOBYTE(v105) = *v83;
              v106 = 6;
              sub_1A4538830();
              sub_1A524C9C4();
              sub_1A524C9C4();
              if (v109[0] == v107[0])
              {
                break;
              }

              v84 = sub_1A524EAB4();
              sub_1A4538B68(v95, type metadata accessor for NotificationsPhotosItem);

              if (v84)
              {
                goto LABEL_72;
              }

              if (v81 == ++v22)
              {
                goto LABEL_71;
              }
            }

            sub_1A4538B68(v95, type metadata accessor for NotificationsPhotosItem);

LABEL_72:
            v87 = v89;
            sub_1A4538BC8(v82, v89, type metadata accessor for NotificationsPhotosItem);
            sub_1A40569C4(v22, v109);
            sub_1A4538B68(v87, type metadata accessor for NotificationsPhotosItem);
            v85 = v93;
            swift_beginAccess();
            v88 = v109[1];
            *(v85 + 4) = v109[0];
            *(v85 + 5) = v88;
            v86 = v110;
          }

          else
          {
LABEL_71:
            v85 = v93;
            swift_beginAccess();
            *(v85 + 4) = 0u;
            *(v85 + 5) = 0u;
            v86 = 256;
          }

          *(v85 + 48) = v86;
          v85[2] = v80;

          v105 = v85[13];
          sub_1A3DB0844(0);
          sub_1A4538780(&qword_1EB128DD8, 255, sub_1A3DB0844, off_1E7721078);

          sub_1A5245F44();
        }

        v22 = 0;
        v43 = MEMORY[0x1E69E7CC0];
        v44 = v93;
        v45 = v99;
        while (2)
        {
          if (v22 >= v42[2])
          {
            goto LABEL_75;
          }

          v46 = (*(v6 + 80) + 32) & ~*(v6 + 80);
          v102 = *(v6 + 72);
          sub_1A4538BC8(v42 + v46 + v102 * v22, v45, type metadata accessor for NotificationsPhotosItem);
          v47 = v44[5];
          ShouldIncludeSharedAlbumsActivityInMainViewInAppNotifications = PXPreferencesShouldIncludeSharedAlbumsActivityInMainViewInAppNotifications();
          sub_1A4538BC8(&v45[*(v100 + 20)], v5, type metadata accessor for NotificationsPhotosItem.NotificationType);
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          *&v103 = v46;
          if (EnumCaseMultiPayload <= 2)
          {
            if (EnumCaseMultiPayload)
            {
              if (EnumCaseMultiPayload == 1)
              {
                swift_unknownObjectRelease();
                swift_unknownObjectRelease();

                v5 = v96;

                sub_1A3DB1E58(0);
                v51 = *(v50 + 48);
                v52 = sub_1A5241144();
                (*(*(v52 - 8) + 8))(&v5[v51], v52);
                if (v47)
                {
                  break;
                }
              }

              else
              {
                sub_1A4538B68(v5, type metadata accessor for NotificationsPhotosItem.NotificationType);
                if (v47)
                {
                  break;
                }
              }

              goto LABEL_27;
            }

            v70 = v92;
            sub_1A45387C8(v5, v92, type metadata accessor for InvitationsItem);
            if ((sub_1A3F64938() & 1) == 0)
            {
              sub_1A4538B68(v70, type metadata accessor for InvitationsItem);
              if ((v47 & 2) != 0)
              {
                break;
              }

              goto LABEL_27;
            }

            v71 = *(v45 + 2);
            v91 = *(v45 + 1);
            v90 = v71;
            v72 = *v45;
            *&v107[0] = v44[4];
            v73 = type metadata accessor for NotificationsDismissalMutableController(0);
            v74 = sub_1A4538780(&qword_1EB13CDD8, 255, type metadata accessor for NotificationsDismissalMutableController, &unk_1A5340DC0);

            v75 = sub_1A44A6504(v72, v91, v90, v73, v74);

            if (v47 & 2) != 0 && (v75)
            {
              sub_1A4538B68(v92, type metadata accessor for InvitationsItem);
              v6 = v94;
              v5 = v96;
              break;
            }

            sub_1A4538B68(v92, type metadata accessor for InvitationsItem);
            v6 = v94;
            v5 = v96;
            if (((v47 & 1) == 0) | v75 & 1)
            {
              goto LABEL_27;
            }
          }

          else
          {
            if (EnumCaseMultiPayload <= 5)
            {
              if ((EnumCaseMultiPayload - 3) >= 2)
              {
                sub_1A4538B68(v5, type metadata accessor for NotificationsPhotosItem.NotificationType);
                break;
              }

LABEL_44:
              sub_1A4538B68(v5, type metadata accessor for NotificationsPhotosItem.NotificationType);
              v62 = *(v45 + 1);
              v63 = *(v45 + 2);
              v64 = *v45;
              *&v107[0] = v44[4];
              v65 = type metadata accessor for NotificationsDismissalMutableController(0);
              v66 = sub_1A4538780(&qword_1EB13CDD8, 255, type metadata accessor for NotificationsDismissalMutableController, &unk_1A5340DC0);

              v67 = v64;
              v6 = v94;
              v68 = v66;
              v44 = v93;
              v69 = sub_1A44A6504(v67, v62, v63, v65, v68);
              v5 = v96;

              if (v47 & 2) != 0 && (v69 & 1) != 0 || (v47 & 1) != 0 && ((v69 ^ 1))
              {
                break;
              }

LABEL_27:
              v45 = v99;
              sub_1A4538B68(v99, type metadata accessor for NotificationsPhotosItem);
LABEL_28:
              ++v22;
              v42 = v104;
              if (v97 == v22)
              {
                goto LABEL_64;
              }

              continue;
            }

            if (EnumCaseMultiPayload != 6)
            {
              goto LABEL_44;
            }

            sub_1A4538B68(v5, type metadata accessor for NotificationsPhotosItem.NotificationType);
            if ((v47 & 2) == 0 || ShouldIncludeSharedAlbumsActivityInMainViewInAppNotifications)
            {
              v53 = *(v99 + 1);
              v91 = *(v99 + 2);
              v54 = v44[4];
              v55 = *v99;
              *&v107[0] = v54;
              v56 = type metadata accessor for NotificationsDismissalMutableController(0);
              v57 = sub_1A4538780(&qword_1EB13CDD8, 255, type metadata accessor for NotificationsDismissalMutableController, &unk_1A5340DC0);

              v58 = v55;
              v44 = v93;
              v59 = v56;
              v5 = v96;
              v60 = v57;
              v6 = v94;
              v61 = sub_1A44A6504(v58, v53, v91, v59, v60);

              if (((v47 & 2) == 0) | (v61 ^ 1) & 1)
              {
                if ((v47 & 1) == 0 || ((v61 ^ 1) & 1) == 0)
                {
                  goto LABEL_27;
                }
              }
            }
          }

          break;
        }

        v45 = v99;
        sub_1A45387C8(v99, v101, type metadata accessor for NotificationsPhotosItem);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v109[0] = v43;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1A3F27E2C(0, *(v43 + 16) + 1, 1);
          v43 = *&v109[0];
        }

        v77 = v102;
        v79 = *(v43 + 16);
        v78 = *(v43 + 24);
        if (v79 >= v78 >> 1)
        {
          sub_1A3F27E2C((v78 > 1), v79 + 1, 1);
          v43 = *&v109[0];
        }

        *(v43 + 16) = v79 + 1;
        sub_1A45387C8(v101, v43 + v103 + v79 * v77, type metadata accessor for NotificationsPhotosItem);
        goto LABEL_28;
      }

      v21 = *(v18 + 64 + 8 * v25);
      ++v23;
    }

    while (!v21);
    v23 = v25;
LABEL_13:
    v26 = __clz(__rbit64(v21)) | (v23 << 6);
    sub_1A3D5FB50(*(v18 + 48) + 40 * v26, v109);
    v27 = *(v18 + 56) + 32 * v26;
    v28 = *v27;
    v29 = *(v27 + 8);
    v103 = *(v27 + 16);
    v111 = v28;
    v112 = v29;
    v113 = v103;
    sub_1A4538BC8(v109, v107, sub_1A4538B04);
    v30 = v108;

    swift_unknownObjectRetain();
    v31 = swift_unknownObjectRelease();
    v32 = v30(v31);

    v33 = *(v32 + 16);
    v34 = v104[2];
    v35 = v34 + v33;
    if (__OFADD__(v34, v33))
    {
      goto LABEL_77;
    }

    v36 = swift_isUniquelyReferenced_nonNull_native();
    v37 = v104;
    if (!v36 || v35 > v104[3] >> 1)
    {
      if (v34 <= v35)
      {
        v38 = v34 + v33;
      }

      else
      {
        v38 = v34;
      }

      v37 = sub_1A3DB1B38(v36, v38, 1, v104);
    }

    v6 = v94;
    v5 = v96;
    if (!*(v32 + 16))
    {
      break;
    }

    if ((v37[3] >> 1) - v37[2] < v33)
    {
      goto LABEL_79;
    }

    v24 = v37;
    swift_arrayInitWithCopy();

    if (!v33)
    {
      goto LABEL_7;
    }

    v39 = v24[2];
    v40 = __OFADD__(v39, v33);
    v41 = v39 + v33;
    if (v40)
    {
      goto LABEL_80;
    }

    v24[2] = v41;
LABEL_7:
    v21 &= v21 - 1;
    sub_1A4538B68(v109, sub_1A4538B04);
    sub_1A3D5FAFC(v107);
  }

  v24 = v37;

  if (!v33)
  {
    goto LABEL_7;
  }

LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);

  __break(1u);
}

void sub_1A4536440(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  if (*(*(v6 + 112) + 16))
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v12 = swift_allocObject();
  v12[2] = a5;
  v12[3] = a6;
  v12[4] = a1;
  v12[5] = a3;
  v12[6] = a4;
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();

  sub_1A52457C4();
}

uint64_t sub_1A45366FC(uint64_t a1)
{
  swift_beginAccess();
  if (*(*(v1 + 112) + 16))
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  return 0;
}

void sub_1A453676C(uint64_t a1, uint64_t (*a2)(char *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  sub_1A5245904();
}

void sub_1A45369D8(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = sub_1A3D5C0BC(a1);
  if (v5)
  {
    v6 = v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *(v1 + 112);
    v10 = *(v2 + 112);
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1A4538454();
      v8 = v10;
    }

    sub_1A3D5FAFC(*(v8 + 48) + 40 * v6);
    sub_1A44A1A0C(v6, v8, v9);
    *(v2 + 112) = v8;
    swift_endAccess();
    swift_unknownObjectRelease();

    sub_1A45353F0();
  }

  else
  {
    swift_endAccess();
  }
}

uint64_t sub_1A4536AB8()
{

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_1A4536B68(uint64_t a1, uint64_t a2)
{
  sub_1A3DB0844(0);
  sub_1A4538780(&qword_1EB128DE0, 255, sub_1A3DB0844, off_1E7721070);

  sub_1A5245C54();
}

void sub_1A4536C30(uint64_t *a1)
{
  v2 = *(type metadata accessor for NotificationsPhotosItem(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1A4538600(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_1A4536CD8(v5);
  *a1 = v3;
}

void sub_1A4536CD8(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1A524EA34();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for NotificationsPhotosItem(0);
        v6 = sub_1A524CAC4();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for NotificationsPhotosItem(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1A4537068(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1A4536E04(0, v2, 1, a1);
  }
}

void sub_1A4536E04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for NotificationsPhotosItem(0);
  MEMORY[0x1EEE9AC00](v8);
  v34 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v26 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v26 - v15;
  v28 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v18 = *(v14 + 72);
    v19 = *a4 + v18 * (a3 - 1);
    v20 = -v18;
    v21 = a1 - a3;
    v33 = v17;
    v27 = v18;
    v22 = v17 + v18 * a3;
LABEL_5:
    v31 = v19;
    v32 = a3;
    v29 = v22;
    v30 = v21;
    while (1)
    {
      sub_1A4538BC8(v22, v16, type metadata accessor for NotificationsPhotosItem);
      sub_1A4538BC8(v19, v12, type metadata accessor for NotificationsPhotosItem);
      v23 = sub_1A5241084();
      sub_1A4538B68(v12, type metadata accessor for NotificationsPhotosItem);
      sub_1A4538B68(v16, type metadata accessor for NotificationsPhotosItem);
      if ((v23 & 1) == 0)
      {
LABEL_4:
        a3 = v32 + 1;
        v19 = v31 + v27;
        v21 = v30 - 1;
        v22 = v29 + v27;
        if (v32 + 1 == v28)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v33)
      {
        break;
      }

      v24 = v34;
      sub_1A45387C8(v22, v34, type metadata accessor for NotificationsPhotosItem);
      swift_arrayInitWithTakeFrontToBack();
      sub_1A45387C8(v24, v19, type metadata accessor for NotificationsPhotosItem);
      v19 += v20;
      v22 += v20;
      if (__CFADD__(v21++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1A4537068(unint64_t *a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v6 = v4;
  v104 = a1;
  v9 = type metadata accessor for NotificationsPhotosItem(0);
  v112 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v107 = &v100 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v115 = &v100 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v116 = &v100 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v100 - v16;
  v114 = a3;
  v18 = a3[1];
  if (v18 < 1)
  {
    v20 = MEMORY[0x1E69E7CC0];
LABEL_95:
    v5 = *v104;
    if (!*v104)
    {
      goto LABEL_134;
    }

    a4 = v20;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v95 = a4;
    }

    else
    {
LABEL_128:
      v95 = sub_1A3D86884(a4);
    }

    v118 = v95;
    a4 = *(v95 + 2);
    if (a4 >= 2)
    {
      while (*v114)
      {
        v96 = *&v95[16 * a4];
        v97 = v95;
        v98 = *&v95[16 * a4 + 24];
        sub_1A45379CC(*v114 + *(v112 + 72) * v96, *v114 + *(v112 + 72) * *&v95[16 * a4 + 16], *v114 + *(v112 + 72) * v98, v5);
        if (v6)
        {
          goto LABEL_106;
        }

        if (v98 < v96)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v97 = sub_1A3D86884(v97);
        }

        if (a4 - 2 >= *(v97 + 2))
        {
          goto LABEL_122;
        }

        v99 = &v97[16 * a4];
        *v99 = v96;
        *(v99 + 1) = v98;
        v118 = v97;
        sub_1A3D867F8(a4 - 1);
        v95 = v118;
        a4 = *(v118 + 2);
        if (a4 <= 1)
        {
          goto LABEL_106;
        }
      }

      goto LABEL_132;
    }

LABEL_106:

    return;
  }

  v19 = 0;
  v20 = MEMORY[0x1E69E7CC0];
  v103 = a4;
  v117 = v9;
  while (1)
  {
    v21 = v19;
    v22 = v19 + 1;
    v108 = v20;
    if (v19 + 1 >= v18)
    {
      v18 = v19 + 1;
    }

    else
    {
      v23 = *(v112 + 72);
      v5 = *v114 + v23 * v22;
      v110 = *v114;
      v24 = v110;
      sub_1A4538BC8(v110 + v23 * v22, v17, type metadata accessor for NotificationsPhotosItem);
      v25 = v24 + v23 * v21;
      v26 = v21;
      v27 = v116;
      sub_1A4538BC8(v25, v116, type metadata accessor for NotificationsPhotosItem);
      LODWORD(v111) = sub_1A5241084();
      sub_1A4538B68(v27, type metadata accessor for NotificationsPhotosItem);
      sub_1A4538B68(v17, type metadata accessor for NotificationsPhotosItem);
      v102 = v26;
      v28 = v26 + 2;
      v113 = v23;
      v29 = v110 + v23 * (v26 + 2);
      while (v18 != v28)
      {
        sub_1A4538BC8(v29, v17, type metadata accessor for NotificationsPhotosItem);
        v30 = v116;
        sub_1A4538BC8(v5, v116, type metadata accessor for NotificationsPhotosItem);
        v31 = sub_1A5241084() & 1;
        sub_1A4538B68(v30, type metadata accessor for NotificationsPhotosItem);
        sub_1A4538B68(v17, type metadata accessor for NotificationsPhotosItem);
        ++v28;
        v29 += v113;
        v5 += v113;
        if ((v111 & 1) != v31)
        {
          v18 = v28 - 1;
          break;
        }
      }

      v21 = v102;
      a4 = v103;
      if (v111)
      {
        if (v18 < v102)
        {
          goto LABEL_125;
        }

        if (v102 < v18)
        {
          v101 = v6;
          v32 = v113 * (v18 - 1);
          v33 = v18;
          v34 = v18 * v113;
          v111 = v18;
          v35 = v102;
          v36 = v102;
          v37 = v102 * v113;
          do
          {
            if (v35 != --v33)
            {
              v38 = *v114;
              if (!*v114)
              {
                goto LABEL_131;
              }

              v5 = v38 + v37;
              sub_1A45387C8(v38 + v37, v107, type metadata accessor for NotificationsPhotosItem);
              if (v37 < v32 || v5 >= v38 + v34)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v37 != v32)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_1A45387C8(v107, v38 + v32, type metadata accessor for NotificationsPhotosItem);
            }

            ++v35;
            v32 -= v113;
            v34 -= v113;
            v37 += v113;
          }

          while (v35 < v33);
          v6 = v101;
          a4 = v103;
          v21 = v36;
          v18 = v111;
        }
      }
    }

    v39 = v114[1];
    if (v18 < v39)
    {
      if (__OFSUB__(v18, v21))
      {
        goto LABEL_124;
      }

      if (v18 - v21 < a4)
      {
        if (__OFADD__(v21, a4))
        {
          goto LABEL_126;
        }

        if ((v21 + a4) >= v39)
        {
          v40 = v114[1];
        }

        else
        {
          v40 = v21 + a4;
        }

        if (v40 < v21)
        {
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (v18 != v40)
        {
          break;
        }
      }
    }

    v19 = v18;
    if (v18 < v21)
    {
      goto LABEL_123;
    }

LABEL_33:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v20 = v108;
    }

    else
    {
      v20 = sub_1A3D8598C(0, *(v108 + 2) + 1, 1, v108);
    }

    a4 = *(v20 + 2);
    v41 = *(v20 + 3);
    v5 = a4 + 1;
    if (a4 >= v41 >> 1)
    {
      v20 = sub_1A3D8598C((v41 > 1), a4 + 1, 1, v20);
    }

    *(v20 + 2) = v5;
    v42 = &v20[16 * a4];
    *(v42 + 4) = v21;
    *(v42 + 5) = v19;
    v43 = *v104;
    if (!*v104)
    {
      goto LABEL_133;
    }

    if (a4)
    {
      while (1)
      {
        v44 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v45 = *(v20 + 4);
          v46 = *(v20 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_52:
          if (v48)
          {
            goto LABEL_112;
          }

          v61 = &v20[16 * v5];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_115;
          }

          v67 = &v20[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_119;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v5 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v71 = &v20[16 * v5];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_66:
        if (v66)
        {
          goto LABEL_114;
        }

        v74 = &v20[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_117;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_73:
        a4 = v44 - 1;
        if (v44 - 1 >= v5)
        {
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

        if (!*v114)
        {
          goto LABEL_130;
        }

        v82 = v20;
        v83 = *&v20[16 * a4 + 32];
        v5 = *&v20[16 * v44 + 40];
        sub_1A45379CC(*v114 + *(v112 + 72) * v83, *v114 + *(v112 + 72) * *&v20[16 * v44 + 32], *v114 + *(v112 + 72) * v5, v43);
        if (v6)
        {
          goto LABEL_106;
        }

        if (v5 < v83)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v82 = sub_1A3D86884(v82);
        }

        if (a4 >= *(v82 + 2))
        {
          goto LABEL_109;
        }

        v84 = &v82[16 * a4];
        *(v84 + 4) = v83;
        *(v84 + 5) = v5;
        v118 = v82;
        sub_1A3D867F8(v44);
        v20 = v118;
        v5 = *(v118 + 2);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v20[16 * v5 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_110;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_111;
      }

      v56 = &v20[16 * v5];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_113;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_116;
      }

      if (v60 >= v52)
      {
        v78 = &v20[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_120;
        }

        if (v47 < v81)
        {
          v44 = v5 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v18 = v114[1];
    a4 = v103;
    if (v19 >= v18)
    {
      goto LABEL_95;
    }
  }

  v101 = v6;
  v85 = v18;
  v86 = v21;
  v87 = *v114;
  v88 = *(v112 + 72);
  v89 = *v114 + v88 * (v18 - 1);
  v90 = -v88;
  v102 = v86;
  v91 = v86 - v18;
  v111 = v85;
  v105 = v88;
  v106 = v40;
  v5 = v87 + v85 * v88;
LABEL_85:
  v109 = v5;
  v110 = v91;
  v113 = v89;
  while (1)
  {
    sub_1A4538BC8(v5, v17, type metadata accessor for NotificationsPhotosItem);
    v92 = v116;
    sub_1A4538BC8(v89, v116, type metadata accessor for NotificationsPhotosItem);
    a4 = sub_1A5241084();
    sub_1A4538B68(v92, type metadata accessor for NotificationsPhotosItem);
    sub_1A4538B68(v17, type metadata accessor for NotificationsPhotosItem);
    if ((a4 & 1) == 0)
    {
LABEL_84:
      v19 = v106;
      v89 = v113 + v105;
      v91 = v110 - 1;
      v5 = v109 + v105;
      if (++v111 != v106)
      {
        goto LABEL_85;
      }

      v6 = v101;
      v21 = v102;
      if (v106 < v102)
      {
        goto LABEL_123;
      }

      goto LABEL_33;
    }

    if (!v87)
    {
      break;
    }

    a4 = type metadata accessor for NotificationsPhotosItem;
    v93 = v115;
    sub_1A45387C8(v5, v115, type metadata accessor for NotificationsPhotosItem);
    swift_arrayInitWithTakeFrontToBack();
    sub_1A45387C8(v93, v89, type metadata accessor for NotificationsPhotosItem);
    v89 += v90;
    v5 += v90;
    if (__CFADD__(v91++, 1))
    {
      goto LABEL_84;
    }
  }

  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
}

void sub_1A45379CC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v44 = type metadata accessor for NotificationsPhotosItem(0);
  MEMORY[0x1EEE9AC00](v44);
  v43 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v42 = &v34 - v10;
  v12 = *(v11 + 72);
  if (!v12)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v12 == -1)
  {
    goto LABEL_61;
  }

  v13 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v12 == -1)
  {
    goto LABEL_62;
  }

  v14 = (a2 - a1) / v12;
  v47 = a1;
  v46 = a4;
  if (v14 >= v13 / v12)
  {
    v16 = v13 / v12 * v12;
    if (a4 < a2 || a2 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v22 = a4 + v16;
    if (v16 >= 1)
    {
      v23 = -v12;
      v24 = a4 + v16;
      v38 = a1;
      v39 = a4;
      v37 = -v12;
      do
      {
        v35 = v22;
        v25 = a2;
        v26 = a2 + v23;
        v40 = v25;
        v41 = v26;
        while (1)
        {
          if (v25 <= a1)
          {
            v47 = v25;
            v45 = v35;
            goto LABEL_59;
          }

          v36 = v22;
          v28 = a3 + v23;
          v29 = v24 + v23;
          v30 = v42;
          sub_1A4538BC8(v29, v42, type metadata accessor for NotificationsPhotosItem);
          v31 = v43;
          sub_1A4538BC8(v26, v43, type metadata accessor for NotificationsPhotosItem);
          v32 = sub_1A5241084();
          sub_1A4538B68(v31, type metadata accessor for NotificationsPhotosItem);
          sub_1A4538B68(v30, type metadata accessor for NotificationsPhotosItem);
          if (v32)
          {
            break;
          }

          v22 = v29;
          if (a3 < v24 || v28 >= v24)
          {
            a3 = v28;
            swift_arrayInitWithTakeFrontToBack();
            a1 = v38;
          }

          else
          {
            v33 = a3 == v24;
            a3 = v28;
            a1 = v38;
            if (!v33)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v24 = v29;
          v25 = v40;
          v27 = v29 > v39;
          v26 = v41;
          v23 = v37;
          if (!v27)
          {
            a2 = v40;
            goto LABEL_58;
          }
        }

        if (a3 < v40 || v28 >= v40)
        {
          a3 = v28;
          a2 = v41;
          swift_arrayInitWithTakeFrontToBack();
          v23 = v37;
          a1 = v38;
          v22 = v36;
        }

        else
        {
          v33 = a3 == v40;
          a3 = v28;
          a2 = v41;
          v23 = v37;
          a1 = v38;
          v22 = v36;
          if (!v33)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v24 > v39);
    }

LABEL_58:
    v47 = a2;
    v45 = v22;
  }

  else
  {
    v15 = v14 * v12;
    if (a4 < a1 || a1 + v15 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v41 = a4 + v15;
    v45 = a4 + v15;
    if (v15 >= 1 && a2 < a3)
    {
      do
      {
        v18 = a3;
        v19 = v42;
        sub_1A4538BC8(a2, v42, type metadata accessor for NotificationsPhotosItem);
        v20 = v43;
        sub_1A4538BC8(a4, v43, type metadata accessor for NotificationsPhotosItem);
        v21 = sub_1A5241084();
        sub_1A4538B68(v20, type metadata accessor for NotificationsPhotosItem);
        sub_1A4538B68(v19, type metadata accessor for NotificationsPhotosItem);
        if (v21)
        {
          if (a1 < a2 || a1 >= a2 + v12)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 += v12;
            a3 = v18;
          }

          else
          {
            a3 = v18;
            if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 += v12;
          }
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v12)
          {
            swift_arrayInitWithTakeFrontToBack();
            a3 = v18;
          }

          else
          {
            a3 = v18;
            if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v46 = a4 + v12;
          a4 += v12;
        }

        a1 += v12;
        v47 = a1;
      }

      while (a4 < v41 && a2 < a3);
    }
  }

LABEL_59:
  sub_1A4537EFC(&v47, &v46, &v45);
}

uint64_t sub_1A4537EFC(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for NotificationsPhotosItem(0);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

void sub_1A4537FE0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1A4538AA4();
  v6 = sub_1A524E774();
  v7 = v6;
  if (*(v5 + 16))
  {
    v38 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v20 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v23 = v20 | (v8 << 6);
      v24 = *(v5 + 48) + 40 * v23;
      if (v4)
      {
        v25 = *v24;
        v26 = *(v24 + 16);
        v43 = *(v24 + 32);
        v41 = v25;
        v42 = v26;
        v27 = (*(v5 + 56) + 32 * v23);
        v39 = *v27;
        v40 = v27[1];
      }

      else
      {
        sub_1A3D5FB50(v24, &v41);
        v28 = (*(v5 + 56) + 32 * v23);
        v39 = *v28;
        v40 = v28[1];

        swift_unknownObjectRetain();
      }

      v29 = sub_1A524E354();
      v30 = -1 << *(v7 + 32);
      v31 = v29 & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v14 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v14 + 8 * v32);
          if (v36 != -1)
          {
            v15 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v31) & ~*(v14 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v41;
      v18 = v42;
      *(v16 + 32) = v43;
      *v16 = v17;
      *(v16 + 16) = v18;
      v19 = (*(v7 + 56) + 32 * v15);
      *v19 = v39;
      v19[1] = v40;
      ++*(v7 + 16);
    }

    v21 = v8;
    while (1)
    {
      v8 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v22 = v9[v8];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v12 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v37 = 1 << *(v5 + 32);
      if (v37 >= 64)
      {
        bzero((v5 + 64), ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v37;
      }

      *(v5 + 16) = 0;
    }

    v3 = v38;
  }

  else
  {
  }

  *v3 = v7;
}

void sub_1A45382A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  v16 = sub_1A3D5C0BC(a5);
  v17 = *(v14 + 16);
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v20 = v15;
  v21 = *(v14 + 24);
  if (v21 < v19 || (a6 & 1) == 0)
  {
    if (v21 < v19 || (a6 & 1) != 0)
    {
      sub_1A4537FE0(v19, a6 & 1);
      v24 = sub_1A3D5C0BC(a5);
      if ((v20 & 1) != (v25 & 1))
      {
LABEL_17:
        sub_1A524EB84();
        __break(1u);
        return;
      }

      v16 = v24;
      v22 = *v7;
      if (v20)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

    sub_1A4538454();
  }

  v22 = *v7;
  if ((v20 & 1) == 0)
  {
LABEL_13:
    sub_1A3D5FB50(a5, v33);
    v22[(v16 >> 6) + 8] |= 1 << v16;
    v26 = v22[6] + 40 * v16;
    v27 = v34;
    v28 = v33[1];
    *v26 = v33[0];
    *(v26 + 16) = v28;
    *(v26 + 32) = v27;
    v29 = (v22[7] + 32 * v16);
    *v29 = a1;
    v29[1] = a2;
    v29[2] = a3;
    v29[3] = a4;
    v30 = v22[2];
    v31 = __OFADD__(v30, 1);
    v32 = v30 + 1;
    if (!v31)
    {
      v22[2] = v32;
      return;
    }

    goto LABEL_16;
  }

LABEL_8:
  v23 = (v22[7] + 32 * v16);
  *v23 = a1;
  v23[1] = a2;
  v23[2] = a3;
  v23[3] = a4;
  swift_unknownObjectRelease();
}

void sub_1A4538454()
{
  v1 = v0;
  sub_1A4538AA4();
  v2 = *v0;
  v3 = sub_1A524E764();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        sub_1A3D5FB50(*(v2 + 48) + 40 * v17, v26);
        v18 = *(v2 + 56) + 32 * v17;
        v20 = *v18;
        v19 = *(v18 + 8);
        v21 = *(v4 + 48) + 40 * v17;
        v22 = *(v18 + 16);
        v23 = v26[0];
        v24 = v26[1];
        *(v21 + 32) = v27;
        *v21 = v23;
        *(v21 + 16) = v24;
        v25 = *(v4 + 56) + 32 * v17;
        *v25 = v20;
        *(v25 + 8) = v19;
        *(v25 + 16) = v22;

        swift_unknownObjectRetain();
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

unint64_t sub_1A4538614(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A4538AA4();
    v3 = sub_1A524E794();
    v4 = a1 + 32;

    while (1)
    {
      sub_1A4538BC8(v4, v15, sub_1A4538C30);
      result = sub_1A3D5C0BC(v15);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v15[0];
      v9 = v15[1];
      *(v7 + 32) = v16;
      *v7 = v8;
      *(v7 + 16) = v9;
      v10 = (v3[7] + 32 * result);
      v11 = v18;
      *v10 = v17;
      v10[1] = v11;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

double sub_1A453872C()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1A45353F0();
  }

  return result;
}

uint64_t sub_1A4538780(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_1A45387C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1A4538830()
{
  result = qword_1EB13CDE0;
  if (!qword_1EB13CDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13CDE0);
  }

  return result;
}

unint64_t sub_1A45388B0()
{
  result = qword_1EB129958;
  if (!qword_1EB129958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB129958);
  }

  return result;
}

unint64_t sub_1A4538908()
{
  result = qword_1EB129940;
  if (!qword_1EB129940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB129940);
  }

  return result;
}

void sub_1A4538AA4()
{
  if (!qword_1EB1263C8)
  {
    v0 = sub_1A524E7A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1263C8);
    }
  }
}

void sub_1A4538B04()
{
  if (!qword_1EB126540)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB126540);
    }
  }
}

uint64_t sub_1A4538B68(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A4538BC8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1A4538C30()
{
  if (!qword_1EB13CDE8)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB13CDE8);
    }
  }
}

uint64_t sub_1A4538C90()
{
  v0 = sub_1A5240BA4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A5241284();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1A524C624();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1A5240BB4();
  __swift_allocate_value_buffer(v6, qword_1EB1EBE68);
  __swift_project_value_buffer(v6, qword_1EB1EBE68);
  sub_1A524C5B4();
  sub_1A5241244();
  (*(v1 + 104))(v3, *MEMORY[0x1E6968DF0], v0);
  return sub_1A5240BC4();
}

unint64_t sub_1A4538E7C()
{
  result = qword_1EB13CDF8;
  if (!qword_1EB13CDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13CDF8);
  }

  return result;
}

void sub_1A4538ED0(uint64_t a1)
{
  if (!qword_1EB13CE08)
  {
    sub_1A3F57E84(255);
    v1 = sub_1A524ED44();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13CE08);
    }
  }
}

uint64_t sub_1A4538F30(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  sub_1A524CC54();
  v2[6] = sub_1A524CC44();
  v4 = sub_1A524CBC4();
  v2[7] = v4;
  v2[8] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1A4538FC8, v4, v3);
}

uint64_t sub_1A4538FC8()
{
  v0[2] = v0[5];
  sub_1A523FF44();
  v1 = *(v0[3] + 16);

  v2 = swift_task_alloc();
  v0[9] = v2;
  sub_1A4538E7C();
  *v2 = v0;
  v2[1] = sub_1A3DB3750;
  v3 = v0[4];

  return AppIntent.px_performWithLoggingAndAnalytics(intentName:category:count:_:)(v3, 0, 0, 0, 0, v1, 0, &unk_1A53463C8);
}

uint64_t sub_1A45390D4(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  sub_1A524CC54();
  v2[6] = sub_1A524CC44();
  v4 = sub_1A524CBC4();
  v2[7] = v4;
  v2[8] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1A453916C, v4, v3);
}

uint64_t sub_1A453916C()
{
  v1 = v0[5];
  sub_1A523FF44();
  v2 = v0[2];
  v0[9] = v2;
  v0[3] = v1;
  sub_1A4538E7C();
  v3 = AppIntent.px_intentName.getter(&type metadata for MoveAssetsToSharedLibraryIntent);
  v5 = v4;
  v0[10] = v4;
  v6 = swift_task_alloc();
  v0[11] = v6;
  *v6 = v0;
  v6[1] = sub_1A42CF140;

  return sub_1A4539BA0(v2, v3, v5);
}

uint64_t sub_1A4539260(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1A3D60150;

  return sub_1A45390D4(a1, v1);
}

uint64_t sub_1A45392FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1A3CA8098;

  return sub_1A4539BA0(a1, a2, a3);
}

uint64_t sub_1A45393BC()
{
  v0 = sub_1A5240334();
  v25 = *(v0 - 8);
  v26 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v24 = &v19 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1A5240184();
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v23 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3DB3480(0, v3);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v22 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A5240BA4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1A5241284();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v12 = sub_1A524C624();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v20 = sub_1A5240BB4();
  v13 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  sub_1A3F57E84(0);
  v21 = v14;
  sub_1A524C5B4();
  sub_1A5241244();
  v15 = *MEMORY[0x1E6968DF0];
  v16 = *(v8 + 104);
  v16(v10, v15, v7);
  sub_1A5240BC4();
  sub_1A524C5B4();
  sub_1A5241244();
  v16(v10, v15, v7);
  v17 = v22;
  sub_1A5240BC4();
  (*(v13 + 56))(v17, 0, 1, v20);
  v27 = 0;
  sub_1A5240174();
  (*(v25 + 104))(v24, *MEMORY[0x1E695A500], v26);
  sub_1A3F587A8();
  sub_1A3F58824();
  return sub_1A5240034();
}

uint64_t sub_1A4539820@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB162AC0 != -1)
  {
    swift_once();
  }

  v3 = sub_1A5240BB4();
  v4 = __swift_project_value_buffer(v3, qword_1EB1EBE68);
  swift_beginAccess();
  return (*(*(v3 - 8) + 16))(a1, v4, v3);
}

uint64_t sub_1A45398E0(uint64_t a1, uint64_t a2)
{
  sub_1A453A2B0(0, &qword_1EB13CDF0, MEMORY[0x1E695A4A8]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1A453A2B0(0, &qword_1EB13CE00, MEMORY[0x1E695A4A0]);
  MEMORY[0x1EEE9AC00](v3);
  sub_1A5240314();
  sub_1A5240304();
  swift_getKeyPath();
  sub_1A4538ED0(0);
  sub_1A52402F4();

  sub_1A5240304();
  sub_1A5240324();
  return sub_1A52402E4();
}

uint64_t sub_1A4539A9C(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A3D60150;

  return sub_1A4538F30(a1, v4);
}

uint64_t sub_1A4539B3C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A45393BC();
  *a1 = result;
  return result;
}

uint64_t sub_1A4539B64(uint64_t a1)
{
  v2 = sub_1A4538E7C();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

uint64_t sub_1A4539BA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_1A5246F24();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v3[8] = sub_1A524CC54();
  v3[9] = sub_1A524CC44();
  v5 = swift_task_alloc();
  v3[10] = v5;
  *v5 = v3;
  v5[1] = sub_1A4539CB0;

  return sub_1A4895F20(1);
}

uint64_t sub_1A4539CB0()
{
  v2 = *v1;
  v2[11] = v0;

  v4 = sub_1A524CBC4();
  v2[12] = v4;
  v2[13] = v3;
  if (v0)
  {
    v5 = sub_1A42D03E0;
  }

  else
  {
    v5 = sub_1A4539E10;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1A4539E10()
{
  v1 = v0[11];
  v2 = PXAppIntentsAssets(for:)(v0[2]);
  if (!v1)
  {
    if (!(v2 >> 62))
    {
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    sub_1A3C52C70(0, &qword_1EB1265D0, 0x1E6978958);
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v3 = v0[1];

  return v3();
}

unint64_t sub_1A453A164()
{
  result = qword_1EB13CE10;
  if (!qword_1EB13CE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13CE10);
  }

  return result;
}

unint64_t sub_1A453A1BC()
{
  result = qword_1EB13CE18;
  if (!qword_1EB13CE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13CE18);
  }

  return result;
}

unint64_t sub_1A453A23C()
{
  result = qword_1EB13CE20;
  if (!qword_1EB13CE20)
  {
    sub_1A453A2B0(255, &qword_1EB13CE28, MEMORY[0x1E695A488]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13CE20);
  }

  return result;
}

void sub_1A453A2B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1A4538E7C();
    v7 = a3(a1, &type metadata for MoveAssetsToSharedLibraryIntent, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1A453A314@<X0>(__int128 *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for LemonadeCollectionBookmarkCell(0);
  v7 = *(v6 + 24);
  *(a3 + v7) = swift_getKeyPath();
  sub_1A3E71AC8(0);
  swift_storeEnumTagMultiPayload();
  v8 = *(v6 + 28);
  *(a3 + v8) = swift_getKeyPath();
  sub_1A42905D4(0);
  swift_storeEnumTagMultiPayload();
  result = sub_1A3C34460(a1, a3);
  *(a3 + 40) = a2 & 1;
  return result;
}

uint64_t sub_1A453A3E4()
{
  v1 = MEMORY[0x1E697E5E0];
  v2 = MEMORY[0x1E697E830];
  sub_1A4545764(0, &qword_1EB13CE30, sub_1A453A8D0, MEMORY[0x1E697E5E0], MEMORY[0x1E697E830]);
  v4 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v35 - v5;
  sub_1A4545764(0, &qword_1EB13CF00, sub_1A453B364, v1, v2);
  v8 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v35 - v9;
  sub_1A4545764(0, &qword_1EB13CFE0, sub_1A453BD3C, MEMORY[0x1E6981910], MEMORY[0x1E697F948]);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v35 - v12);
  sub_1A453BD3C(0);
  MEMORY[0x1EEE9AC00](v14);
  if ((*(v0 + 40) & 1) == 0)
  {
    sub_1A453C5A4(&v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  }

  v16 = shouldUseNewCollectionsLayout()();
  v17 = sub_1A5249574();
  if (v16)
  {
    *v10 = v17;
    *(v10 + 1) = 0x4018000000000000;
    v10[16] = 0;
    sub_1A45461D8(0, &qword_1EB13D090, sub_1A453B3F4, MEMORY[0x1E697E300], MEMORY[0x1E697E2F8]);
    sub_1A453CD4C(v0, &v10[*(v18 + 44)]);
    sub_1A453B364(0);
    v10[*(v19 + 36)] = 0;
    v20 = sub_1A524A084();
    sub_1A5247BC4();
    v21 = &v10[*(v8 + 36)];
    *v21 = v20;
    *(v21 + 1) = v22;
    *(v21 + 2) = v23;
    *(v21 + 3) = v24;
    *(v21 + 4) = v25;
    v21[40] = 0;
    sub_1A453F050(&qword_1EB13D098, &qword_1EB13CF00, sub_1A453B364, sub_1A453F390);
  }

  else
  {
    *v6 = v17;
    *(v6 + 1) = 0x4018000000000000;
    v6[16] = 0;
    sub_1A45461D8(0, &qword_1EB13D058, sub_1A453A9AC, MEMORY[0x1E697E300], MEMORY[0x1E697E2F8]);
    sub_1A453E168(v0, &v6[*(v26 + 44)]);
    sub_1A453A8D0(0);
    v6[*(v27 + 36)] = 0;
    v28 = sub_1A524A084();
    sub_1A5247BC4();
    v29 = &v6[*(v4 + 36)];
    *v29 = v28;
    *(v29 + 1) = v30;
    *(v29 + 2) = v31;
    *(v29 + 3) = v32;
    *(v29 + 4) = v33;
    v29[40] = 0;
    sub_1A453F050(&qword_1EB13D060, &qword_1EB13CE30, sub_1A453A8D0, sub_1A453F0EC);
  }

  *v13 = sub_1A524B8E4();
  swift_storeEnumTagMultiPayload();
  sub_1A453F1F8(&qword_1EB13D080, sub_1A453BD3C, sub_1A453F278);
  return sub_1A5249744();
}

void sub_1A453A918(uint64_t a1)
{
  if (!qword_1EB13CE40)
  {
    sub_1A453A9AC(255);
    sub_1A4546660(&qword_1EB13CEF8, sub_1A453A9AC, MEMORY[0x1E6981F48]);
    v1 = sub_1A524B894();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13CE40);
    }
  }
}

void sub_1A453A9E8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    sub_1A453C168(255, a3, a4, a5);
    v6 = sub_1A524BE24();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1A453AAD4(uint64_t a1)
{
  if (!qword_1EB13CE68)
  {
    sub_1A453BE24(255, &qword_1EB13CE70, sub_1A453AC04, sub_1A453AC4C, sub_1A453B170);
    sub_1A453AC04(255);
    sub_1A453AC4C(255);
    sub_1A453B170();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13CE68);
    }
  }
}

void sub_1A453AC6C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    sub_1A4544744(255, &qword_1EB128818, &type metadata for LemonadeCollectionBookmarkCell.ThumbnailView, MEMORY[0x1E697F578], MEMORY[0x1E697E830]);
    a3(255);
    v5 = sub_1A5248804();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1A453AD50(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4();
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_1A453AE04(uint64_t a1)
{
  if (!qword_1EB13CEA0)
  {
    sub_1A453AE98(255);
    sub_1A4546660(&qword_1EB13CED0, sub_1A453AE98, MEMORY[0x1E6981F48]);
    v1 = sub_1A524B8B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13CEA0);
    }
  }
}

void sub_1A453AED4(uint64_t a1)
{
  if (!qword_1EB13CEB8)
  {
    sub_1A3E72EF0(255, &qword_1EB13CEC0, MEMORY[0x1E69C21C8]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13CEB8);
    }
  }
}

void sub_1A453AF50(uint64_t a1)
{
  if (!qword_1EB123938)
  {
    sub_1A453AFD4(255, &qword_1EB124310, &qword_1EB124E48, MEMORY[0x1E69C2128]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB123938);
    }
  }
}

void sub_1A453AFD4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1A3E72EF0(255, a3, a4);
    sub_1A453B05C(255, &qword_1EB1277F0, &qword_1EB127560, MEMORY[0x1E69815C0]);
    v5 = sub_1A5248804();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1A453B05C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1A4545D94(255, a3, a4, MEMORY[0x1E69E6720]);
    v5 = sub_1A5249F44();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1A453B0C8()
{
  result = qword_1EB13CED8;
  if (!qword_1EB13CED8)
  {
    sub_1A453ADD0(255);
    sub_1A4546660(&qword_1EB13CEE0, sub_1A453AE04, MEMORY[0x1E6981880]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13CED8);
  }

  return result;
}

unint64_t sub_1A453B1AC()
{
  result = qword_1EB128820;
  if (!qword_1EB128820)
  {
    sub_1A4544744(255, &qword_1EB128818, &type metadata for LemonadeCollectionBookmarkCell.ThumbnailView, MEMORY[0x1E697F578], MEMORY[0x1E697E830]);
    sub_1A3F9515C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB128820);
  }

  return result;
}

void sub_1A453B280(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_1A453C280(255, a3, a4);
    sub_1A4544744(255, &qword_1EB127AE0, MEMORY[0x1E697FE80], MEMORY[0x1E697FE70], MEMORY[0x1E6980480]);
    v5 = sub_1A5248804();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1A453B484(uint64_t a1)
{
  if (!qword_1EB13CF28)
  {
    sub_1A453BE24(255, &qword_1EB13CF30, sub_1A453B5B4, sub_1A453B5FC, sub_1A453BA1C);
    sub_1A453B5B4(255);
    sub_1A453B5FC(255);
    sub_1A453BA1C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13CF28);
    }
  }
}

void sub_1A453B61C(uint64_t a1)
{
  if (!qword_1EB13CF48)
  {
    sub_1A4545764(255, &qword_1EB13CF50, sub_1A453B6B8, MEMORY[0x1E697EC00], MEMORY[0x1E697E830]);
    sub_1A453B934();
    v1 = sub_1A5248AE4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13CF48);
    }
  }
}

void sub_1A453B6B8(uint64_t a1)
{
  if (!qword_1EB13CF58)
  {
    sub_1A453B74C(255);
    sub_1A4546660(&qword_1EB13CFA8, sub_1A453B74C, MEMORY[0x1E6981F48]);
    v1 = sub_1A524B8B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13CF58);
    }
  }
}

void sub_1A453B780(uint64_t a1)
{
  if (!qword_1EB13CF68)
  {
    sub_1A453C49C(255, &qword_1EB13CF70, &qword_1EB13CF78, MEMORY[0x1E69C21B8]);
    sub_1A453B814(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB13CF68);
    }
  }
}

void sub_1A453B8B4(uint64_t a1)
{
  if (!qword_1EB13CFA0)
  {
    sub_1A3EC43B0(255);
    sub_1A453B05C(255, &qword_1EB127790, &qword_1EB126D60, MEMORY[0x1E69E6530]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13CFA0);
    }
  }
}

unint64_t sub_1A453B934()
{
  result = qword_1EB13CFB0;
  if (!qword_1EB13CFB0)
  {
    sub_1A4545764(255, &qword_1EB13CF50, sub_1A453B6B8, MEMORY[0x1E697EC00], MEMORY[0x1E697E830]);
    sub_1A4546660(&qword_1EB13CFB8, sub_1A453B6B8, MEMORY[0x1E6981880]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13CFB0);
  }

  return result;
}

uint64_t sub_1A453BA58(unint64_t *a1, uint64_t (*a2)(uint64_t), unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    sub_1A453B1AC();
    sub_1A4546660(a3, a4, MEMORY[0x1E697EC18]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A453BB00()
{
  result = qword_1EB13CFD0;
  if (!qword_1EB13CFD0)
  {
    sub_1A453B3F4(255);
    sub_1A453BBB0();
    sub_1A4546660(&qword_1EB1398E0, sub_1A43D0DF8, MEMORY[0x1E6980758]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13CFD0);
  }

  return result;
}

unint64_t sub_1A453BBB0()
{
  result = qword_1EB13CFD8;
  if (!qword_1EB13CFD8)
  {
    sub_1A453B43C(255);
    sub_1A453BE24(255, &qword_1EB13CF30, sub_1A453B5B4, sub_1A453B5FC, sub_1A453BA1C);
    sub_1A453B5B4(255);
    sub_1A453B5FC(255);
    sub_1A453BA1C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A4546660(&qword_1EB127A80, sub_1A3EC1EB4, MEMORY[0x1E6980758]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13CFD8);
  }

  return result;
}

void sub_1A453BD78(uint64_t a1)
{
  if (!qword_1EB13CFF0)
  {
    sub_1A453BE24(255, &qword_1EB13CFF8, sub_1A453BEF4, sub_1A453BFC8, sub_1A453C4F4);
    sub_1A3F330A8(255);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13CFF0);
    }
  }
}

void sub_1A453BE24(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(void))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    a5();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v9)
    {
      atomic_store(OpaqueTypeMetadata2, a2);
    }
  }
}

void sub_1A453BF3C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    a4();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v8)
    {
      atomic_store(OpaqueTypeMetadata2, a2);
    }
  }
}

void sub_1A453C004(uint64_t a1)
{
  if (!qword_1EB13D010)
  {
    sub_1A453C098(255);
    sub_1A4546660(&qword_1EB13D040, sub_1A453C098, MEMORY[0x1E6981880]);
    v1 = sub_1A5248AE4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13D010);
    }
  }
}

void sub_1A453C098(uint64_t a1)
{
  if (!qword_1EB13D018)
  {
    sub_1A453C12C(255);
    sub_1A4546660(&qword_1EB13D038, sub_1A453C12C, MEMORY[0x1E6981F48]);
    v1 = sub_1A524B8B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13D018);
    }
  }
}

void sub_1A453C168(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1A453C1E4(uint64_t a1)
{
  if (!qword_1EB1232D0)
  {
    sub_1A453C280(255, &qword_1EB123638, sub_1A453C304);
    sub_1A453B05C(255, &qword_1EB1277F0, &qword_1EB127560, MEMORY[0x1E69815C0]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1232D0);
    }
  }
}

void sub_1A453C280(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1A453B05C(255, &qword_1EB127820, &qword_1EB1276A0, MEMORY[0x1E6980F50]);
    v4 = sub_1A5248804();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1A453C340(uint64_t a1)
{
  if (!qword_1EB1219D8)
  {
    sub_1A453C3D4(255);
    sub_1A4546660(&qword_1EB1213B0, sub_1A453C3D4, MEMORY[0x1E6981F48]);
    v1 = sub_1A524B784();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1219D8);
    }
  }
}

void sub_1A453C408(uint64_t a1)
{
  if (!qword_1EB124E38)
  {
    sub_1A453C49C(255, &qword_1EB124E40, &qword_1EB124E48, MEMORY[0x1E69C2128]);
    sub_1A3DF14C0(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB124E38);
    }
  }
}

void sub_1A453C49C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1A3E72EF0(255, a3, a4);
    v5 = sub_1A524DF24();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1A453C4F4()
{
  result = qword_1EB13D048;
  if (!qword_1EB13D048)
  {
    sub_1A453BFC8(255);
    sub_1A3F9515C();
    sub_1A4546660(&qword_1EB13D050, sub_1A453C004, MEMORY[0x1E697EC18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13D048);
  }

  return result;
}

void sub_1A453C5A4(uint64_t a1@<X8>)
{
  v32[16] = a1;
  v2 = sub_1A5241FC4();
  v32[14] = *(v2 - 8);
  v32[15] = v2;
  MEMORY[0x1EEE9AC00](v2);
  v32[13] = v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E75D1C(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v32[12] = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E75D50(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v32[11] = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A5244084();
  v32[7] = *(v8 - 8);
  v32[8] = v8;
  MEMORY[0x1EEE9AC00](v8);
  v32[5] = v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v32[6] = v32 - v11;
  sub_1A453BFC8(0);
  v13 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v15 = v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A453BEF4(0);
  v32[9] = *(v16 - 8);
  v32[10] = v16;
  MEMORY[0x1EEE9AC00](v16);
  v32[18] = v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1A5242D14();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = v32 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = v32 - v23;
  type metadata accessor for LemonadeCollectionBookmarkCell(0);
  v25 = v1;
  sub_1A4545DE4(sub_1A3E71AC8, sub_1A3D61D44, MEMORY[0x1E69C2218], v24);
  (*(v19 + 104))(v21, *MEMORY[0x1E69C2210], v18);
  v26 = sub_1A5242D04();
  v27 = *(v19 + 8);
  v27(v21, v18);
  v27(v24, v18);
  if (v26)
  {
    sub_1A524A0F4();
    sub_1A524A184();
    v28 = sub_1A524A1F4();
  }

  else
  {
    v28 = sub_1A524A0E4();
  }

  v32[4] = v28;
  sub_1A3C341C8(v25, v15);
  _s12PhotosUICore0A17SearchBarPositionO03TabD0C30initialSuggestionViewAlignment7SwiftUI0J0Vvg_0();
  v32[17] = v13;
  v29 = &v15[*(v13 + 36)];
  *v29 = _s12PhotosUICore0A17SearchBarPositionO03TabD0C30initialSuggestionViewAlignment7SwiftUI0J0Vvg_0();
  v29[1] = v30;
  sub_1A45461D8(0, &qword_1EB13D190, sub_1A453C12C, MEMORY[0x1E697E330], MEMORY[0x1E697E320]);
  sub_1A453FC3C(v25, v28, v29 + *(v31 + 44));
}

void sub_1A453CD4C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v85 = a2;
  v84 = sub_1A5241FC4();
  v83 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v82 = &v70 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E75D1C(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v79 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E75D50(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v87 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_1A5244084();
  v8 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v10 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v70 - v12;
  sub_1A453B6B8(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = (&v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A453B5FC(0);
  v18 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v70 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A453B5B4(0);
  v77 = v21;
  v78 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v86 = &v70 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A453BE24(0, &qword_1EB13CF30, sub_1A453B5B4, sub_1A453B5FC, sub_1A453BA1C);
  v80 = v23;
  v81 = *(v23 - 8);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v75 = &v70 - v25;
  v26 = MEMORY[0x1A590D320](v24);
  sub_1A3C341C8(a1, v20);
  *(v20 + 5) = 0x3FF0000000000000;
  *(v20 + 24) = 0;
  v27 = _s12PhotosUICore0A17SearchBarPositionO03TabD0C30initialSuggestionViewAlignment7SwiftUI0J0Vvg_0();
  v29 = v28;
  *v16 = _s12PhotosUICore0A17SearchBarPositionO03TabD0C30initialSuggestionViewAlignment7SwiftUI0J0Vvg_0();
  v16[1] = v30;
  sub_1A45461D8(0, &unk_1EB13D1A0, sub_1A453B74C, MEMORY[0x1E697E330], MEMORY[0x1E697E320]);
  v32 = v16 + *(v31 + 44);
  v73 = a1;
  sub_1A453D6CC(v26, a1, v32);
  _s12PhotosUICore0A17SearchBarPositionO03TabD0C30initialSuggestionViewAlignment7SwiftUI0J0Vvg_0();
  v33 = *(v18 + 36);
  v70 = v18;
  v34 = &v20[v33];
  sub_1A5248AD4();
  sub_1A4546244(v16, v34, sub_1A453B6B8);
  sub_1A4545764(0, &qword_1EB13CF50, sub_1A453B6B8, MEMORY[0x1E697EC00], MEMORY[0x1E697E830]);
  v36 = (v34 + *(v35 + 36));
  v37 = v96;
  v38 = v97;
  v36[4] = v95;
  v36[5] = v37;
  v36[6] = v38;
  v39 = v92;
  *v36 = v91;
  v36[1] = v39;
  v40 = v94;
  v36[2] = v93;
  v36[3] = v40;
  sub_1A453B61C(0);
  v42 = (v34 + *(v41 + 36));
  *v42 = v27;
  v42[1] = v29;
  v74 = *(type metadata accessor for LemonadeCollectionBookmarkCell(0) + 28);
  v72 = sub_1A42905D4;
  v71 = sub_1A3F75EB4;
  v43 = MEMORY[0x1E69C2948];
  sub_1A4545DE4(sub_1A42905D4, sub_1A3F75EB4, MEMORY[0x1E69C2948], v13);
  sub_1A5243F64();
  v44 = *(v8 + 8);
  v45 = v13;
  v46 = v13;
  v47 = v76;
  v44(v45, v76);
  v48 = sub_1A453BA1C();
  sub_1A524A784();
  v44(v10, v47);
  sub_1A4546384(v20, sub_1A453B5FC);
  v49 = sub_1A5243A44();
  (*(*(v49 - 8) + 56))(v87, 1, 1, v49);
  v50 = *MEMORY[0x1E69C27D8];
  v51 = sub_1A5243B34();
  v52 = *(v51 - 8);
  v53 = v79;
  (*(v52 + 104))(v79, v50, v51);
  (*(v52 + 56))(v53, 0, 1, v51);
  v54 = v73;
  sub_1A4545DE4(v72, v71, v43, v46);
  v55 = v82;
  sub_1A5244044();
  v44(v46, v47);
  v90[0] = v70;
  v90[1] = v48;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v57 = v75;
  v58 = v87;
  v59 = v77;
  v60 = v86;
  sub_1A524A6A4();
  (*(v83 + 8))(v55, v84);
  sub_1A4546178(v53, sub_1A3E75D1C);
  sub_1A4546178(v58, sub_1A3E75D50);
  (*(v78 + 8))(v60, v59);
  v61 = v54[3];
  v62 = v54[4];
  v63 = __swift_project_boxed_opaque_existential_1(v54, v61);
  v90[3] = v61;
  v90[4] = *(*(v62 + 8) + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v90);
  (*(*(v61 - 8) + 16))(boxed_opaque_existential_1, v63, v61);
  v88 = v59;
  v89 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v65 = v85;
  v66 = v80;
  sub_1A524A554();
  (*(v81 + 8))(v57, v66);
  __swift_destroy_boxed_opaque_existential_0(v90);
  sub_1A453B43C(0);
  *(v65 + *(v67 + 36)) = 1;
  sub_1A453B3F4(0);
  v69 = v65 + *(v68 + 36);
  *v69 = 0x3FF0000000000000;
  *(v69 + 8) = 0;
}

uint64_t sub_1A453D6CC@<X0>(int a1@<W0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v76 = a2;
  LODWORD(KeyPath) = a1;
  v78 = a3;
  v77 = sub_1A5244084();
  v75 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v74 = &v68 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A524A204();
  v80 = *(v4 - 8);
  v81 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E75D84(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for LemonadeCollectionBookmarkCell.OutsideThumbnailTitleSpecs(0);
  MEMORY[0x1EEE9AC00](v10);
  v82 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1E69C21B8];
  sub_1A3E72EF0(0, &qword_1EB13CF78, MEMORY[0x1E69C21B8]);
  v14 = v13;
  v15 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v68 - v16;
  sub_1A453C49C(0, &qword_1EB13CF70, &qword_1EB13CF78, v12);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v83 = &v68 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v68 - v21;
  if (KeyPath)
  {
    sub_1A5242CA4();
    (*(v15 + 32))(v22, v17, v14);
    (*(v15 + 56))(v22, 0, 1, v14);
  }

  else
  {
    (*(v15 + 56))(&v68 - v21, 1, 1, v14);
  }

  v23 = *MEMORY[0x1E6980F30];
  v24 = sub_1A524A274();
  v25 = v82;
  (*(*(v24 - 8) + 104))(v82, v23, v24);
  *(v25 + *(v10 + 20)) = 1;
  v26 = sub_1A453DF94();
  v71 = v27;
  LOBYTE(v23) = v28;
  v73 = v29;
  KeyPath = swift_getKeyPath();
  v72 = swift_getKeyPath();
  v70 = v23 & 1;
  LOBYTE(v93[0]) = v23 & 1;
  LOBYTE(v84) = 0;
  v30 = sub_1A524A154();
  (*(*(v30 - 8) + 56))(v9, 1, 1, v30);
  sub_1A524A1C4();
  sub_1A4546178(v9, sub_1A3E75D84);
  v32 = v80;
  v31 = v81;
  (*(v80 + 104))(v6, *MEMORY[0x1E6980EA8], v81);
  v69 = sub_1A524A234();

  (*(v32 + 8))(v6, v31);
  v81 = swift_getKeyPath();
  LODWORD(v80) = sub_1A52499F4();
  type metadata accessor for LemonadeCollectionBookmarkCell(0);
  v33 = v74;
  sub_1A4545DE4(sub_1A42905D4, sub_1A3F75EB4, MEMORY[0x1E69C2948], v74);
  sub_1A5244054();
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  (*(v75 + 8))(v33, v77);
  v42 = sub_1A524A064();
  v43 = v42;
  LODWORD(v77) = v42;
  v122 = 0;
  _s12PhotosUICore0A17SearchBarPositionO03TabD0C30initialSuggestionViewAlignment7SwiftUI0J0Vvg_0();
  sub_1A5248AD4();
  *&v124[55] = v127[3];
  *&v124[71] = v127[4];
  *&v124[87] = v127[5];
  *&v124[103] = v127[6];
  *&v124[7] = v127[0];
  *&v124[23] = v127[1];
  *&v124[39] = v127[2];
  v44 = MEMORY[0x1E69C21B8];
  v45 = v83;
  sub_1A4546044(v22, v83, &qword_1EB13CF70, &qword_1EB13CF78, MEMORY[0x1E69C21B8]);
  v46 = v45;
  v47 = v78;
  sub_1A4546044(v46, v78, &qword_1EB13CF70, &qword_1EB13CF78, v44);
  sub_1A453B780(0);
  v49 = &v47[*(v48 + 48)];
  v50 = v26;
  v78 = v22;
  v51 = v71;
  v52 = v72;
  *&v84 = v26;
  *(&v84 + 1) = v71;
  LOBYTE(v26) = v70;
  LOBYTE(v85) = v70;
  *(&v85 + 1) = *v126;
  DWORD1(v85) = *&v126[3];
  v53 = v73;
  *(&v85 + 1) = v73;
  *&v86 = KeyPath;
  BYTE8(v86) = 0;
  *(&v86 + 9) = *v125;
  HIDWORD(v86) = *&v125[3];
  *&v87 = v72;
  *(&v87 + 1) = 2;
  LOBYTE(v88) = 0;
  DWORD1(v88) = *&v121[3];
  *(&v88 + 1) = *v121;
  v54 = v69;
  *(&v88 + 1) = v81;
  *&v89 = v69;
  DWORD2(v89) = v80;
  LOBYTE(v90) = v43;
  DWORD1(v90) = *&v123[3];
  *(&v90 + 1) = *v123;
  *(&v90 + 1) = v35;
  *&v91 = v37;
  *(&v91 + 1) = v39;
  *&v92[0] = v41;
  BYTE8(v92[0]) = 0;
  *(v92 + 9) = *v124;
  *(&v92[3] + 9) = *&v124[48];
  *(&v92[2] + 9) = *&v124[32];
  *(&v92[1] + 9) = *&v124[16];
  *(&v92[7] + 1) = *&v124[111];
  *(&v92[6] + 9) = *&v124[96];
  *(&v92[5] + 9) = *&v124[80];
  *(&v92[4] + 9) = *&v124[64];
  v55 = v84;
  v56 = v85;
  v57 = v87;
  *(v49 + 2) = v86;
  *(v49 + 3) = v57;
  *v49 = v55;
  *(v49 + 1) = v56;
  v58 = v88;
  v59 = v89;
  v60 = v91;
  *(v49 + 6) = v90;
  *(v49 + 7) = v60;
  *(v49 + 4) = v58;
  *(v49 + 5) = v59;
  v61 = v92[0];
  v62 = v92[1];
  v63 = v92[3];
  *(v49 + 10) = v92[2];
  *(v49 + 11) = v63;
  *(v49 + 8) = v61;
  *(v49 + 9) = v62;
  v64 = v92[4];
  v65 = v92[5];
  v66 = v92[7];
  *(v49 + 14) = v92[6];
  *(v49 + 15) = v66;
  *(v49 + 12) = v64;
  *(v49 + 13) = v65;
  sub_1A45460B4(&v84, v93, sub_1A453B814);
  sub_1A4546178(v82, type metadata accessor for LemonadeCollectionBookmarkCell.OutsideThumbnailTitleSpecs);
  sub_1A454611C(v78, &qword_1EB13CF70, &qword_1EB13CF78, v44);
  v93[0] = v50;
  v93[1] = v51;
  v94 = v26;
  *v95 = *v126;
  *&v95[3] = *&v126[3];
  v96 = v53;
  v97 = KeyPath;
  v98 = 0;
  *v99 = *v125;
  *&v99[3] = *&v125[3];
  v100 = v52;
  v101 = 2;
  v102 = 0;
  *&v103[3] = *&v121[3];
  *v103 = *v121;
  v104 = v81;
  v105 = v54;
  v106 = v80;
  v107 = v77;
  *&v108[3] = *&v123[3];
  *v108 = *v123;
  v109 = v35;
  v110 = v37;
  v111 = v39;
  v112 = v41;
  v113 = 0;
  v117 = *&v124[48];
  v116 = *&v124[32];
  v115 = *&v124[16];
  v114 = *v124;
  *&v120[15] = *&v124[111];
  *v120 = *&v124[96];
  v119 = *&v124[80];
  v118 = *&v124[64];
  sub_1A4546178(v93, sub_1A453B814);
  return sub_1A454611C(v83, &qword_1EB13CF70, &qword_1EB13CF78, v44);
}

uint64_t sub_1A453DF94()
{
  v1 = v0;
  v2 = sub_1A5249424();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = v0[3];
  v4 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v3);
  v5 = (*(v4 + 56))(v3, v4);
  if (v6)
  {
    v7 = v5;
  }

  else
  {
    v7 = 32;
  }

  v8 = v0[3];
  v9 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  if (sub_1A4838C90(v8, v9))
  {
    sub_1A5249414();
    sub_1A5249404();
    sub_1A524B544();
    sub_1A52493E4();

    sub_1A5249404();
    sub_1A52493D4();
    sub_1A5249404();
    sub_1A5249444();
    v7 = sub_1A524A444();
  }

  return v7;
}

uint64_t sub_1A453E168@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v133 = a2;
  v3 = sub_1A524A204();
  v128 = *(v3 - 8);
  v129 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v126 = &v102 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E75D84(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v125 = &v102 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A453B258(0);
  v127 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v132 = &v102 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v131 = &v102 - v10;
  v124 = type metadata accessor for LemonadeCollectionBookmarkCell.OutsideThumbnailTitleSpecs(0);
  MEMORY[0x1EEE9AC00](v124);
  v130 = &v102 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = sub_1A5241FC4();
  v120 = *(v121 - 8);
  MEMORY[0x1EEE9AC00](v121);
  v119 = &v102 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E75D1C(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v118 = &v102 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E75D50(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v117 = &v102 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_1A5244084();
  v113 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116);
  v107 = &v102 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v108 = &v102 - v19;
  sub_1A453AE04(0);
  v106 = v20;
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = (&v102 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A453ADD0(0);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v26 = &v102 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A453AC4C(0);
  v28 = v27;
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v102 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A453AC04(0);
  v115 = v31;
  v109 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v134 = &v102 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A453BE24(0, &qword_1EB13CE70, sub_1A453AC04, sub_1A453AC4C, sub_1A453B170);
  v114 = v33;
  v112 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v110 = &v102 - v34;
  sub_1A453AA44(0);
  v111 = v35;
  MEMORY[0x1EEE9AC00](v35);
  v123 = &v102 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v122 = &v102 - v38;
  sub_1A3C341C8(a1, v30);
  *(v30 + 5) = 0x3FF0000000000000;
  *(v30 + 24) = 0;
  v39 = _s12PhotosUICore0A17SearchBarPositionO03TabD0C30initialSuggestionViewAlignment7SwiftUI0J0Vvg_0();
  v41 = v40;
  v42 = a1[3];
  v43 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v42);
  v44 = sub_1A4838C84(v42, v43);
  v45 = 1;
  if ((v44 & 1) == 0)
  {
    *v23 = _s12PhotosUICore0A17SearchBarPositionO03TabD0C30initialSuggestionViewAlignment7SwiftUI0J0Vvg_0();
    v23[1] = v46;
    sub_1A45461D8(0, &qword_1EB13D1B0, sub_1A453AE98, MEMORY[0x1E697E330], MEMORY[0x1E697E320]);
    sub_1A453F3EC(a1, v23 + *(v47 + 44));
    sub_1A4546244(v23, v26, sub_1A453AE04);
    v45 = 0;
  }

  (*(v21 + 56))(v26, v45, 1, v106);
  v48 = *(v28 + 36);
  v103 = v28;
  v49 = &v30[v48];
  sub_1A4546244(v26, &v30[v48], sub_1A453ADD0);
  sub_1A453AD08(0);
  v51 = &v49[*(v50 + 36)];
  *v51 = v39;
  v51[1] = v41;
  v106 = *(type metadata accessor for LemonadeCollectionBookmarkCell(0) + 28);
  v105 = sub_1A42905D4;
  v104 = sub_1A3F75EB4;
  v52 = MEMORY[0x1E69C2948];
  v53 = v108;
  sub_1A4545DE4(sub_1A42905D4, sub_1A3F75EB4, MEMORY[0x1E69C2948], v108);
  v54 = v107;
  sub_1A5243F64();
  v102 = a1;
  v55 = *(v113 + 8);
  v56 = v116;
  v55(v53, v116);
  v113 = sub_1A453B170();
  sub_1A524A784();
  v55(v54, v56);
  sub_1A4546384(v30, sub_1A453AC4C);
  v57 = sub_1A5243A44();
  v58 = v117;
  (*(*(v57 - 8) + 56))(v117, 1, 1, v57);
  v59 = *MEMORY[0x1E69C27D8];
  v60 = sub_1A5243B34();
  v61 = *(v60 - 8);
  v62 = v118;
  (*(v61 + 104))(v118, v59, v60);
  (*(v61 + 56))(v62, 0, 1, v60);
  v63 = v102;
  sub_1A4545DE4(v105, v104, v52, v53);
  v64 = v119;
  sub_1A5244044();
  v55(v53, v56);
  v135 = v103;
  v136 = v113;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v66 = v110;
  v67 = v115;
  v68 = v134;
  sub_1A524A6A4();
  (*(v120 + 8))(v64, v121);
  sub_1A4546178(v62, sub_1A3E75D1C);
  sub_1A4546178(v58, sub_1A3E75D50);
  (*(v109 + 8))(v68, v67);
  v69 = v63[3];
  v70 = v63[4];
  v71 = __swift_project_boxed_opaque_existential_1(v63, v69);
  v138 = v69;
  v139 = *(*(v70 + 8) + 8);
  v72 = __swift_allocate_boxed_opaque_existential_1(&v135);
  (*(*(v69 - 8) + 16))(v72, v71, v69);
  v141 = v67;
  v142 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v73 = v122;
  v74 = v114;
  sub_1A524A554();
  (*(v112 + 8))(v66, v74);
  __swift_destroy_boxed_opaque_existential_0(&v135);
  sub_1A453AA8C(0);
  *(v73 + *(v75 + 36)) = 1;
  v76 = v73 + *(v111 + 36);
  *v76 = 0x3FF0000000000000;
  *(v76 + 8) = 0;
  v77 = *MEMORY[0x1E6980F30];
  v78 = sub_1A524A274();
  v79 = v130;
  (*(*(v78 - 8) + 104))(v130, v77, v78);
  *(v79 + *(v124 + 20)) = 1;
  v80 = sub_1A453DF94();
  v82 = v81;
  LOBYTE(v69) = v83;
  v85 = v84;
  KeyPath = swift_getKeyPath();
  v135 = v80;
  v136 = v82;
  v137 = v69 & 1;
  v138 = v85;
  v139 = KeyPath;
  v140 = 1;
  sub_1A3EC43B0(0);
  sub_1A3FF8F74();
  v87 = v131;
  sub_1A524B1C4();
  sub_1A3E04DF4(v80, v82, v69 & 1);

  v88 = sub_1A524A154();
  v89 = v125;
  (*(*(v88 - 8) + 56))(v125, 1, 1, v88);
  sub_1A524A1C4();
  sub_1A4546178(v89, sub_1A3E75D84);
  v91 = v128;
  v90 = v129;
  v92 = v126;
  (*(v128 + 104))(v126, *MEMORY[0x1E6980EA8], v129);
  v93 = sub_1A524A234();

  (*(v91 + 8))(v92, v90);
  v94 = swift_getKeyPath();
  sub_1A453C280(0, &qword_1EB128620, sub_1A453B31C);
  v96 = (v87 + *(v95 + 36));
  *v96 = v94;
  v96[1] = v93;
  *(v87 + *(v127 + 36)) = sub_1A52499F4();
  v97 = v123;
  sub_1A454631C(v73, v123, sub_1A453AA44);
  v98 = v132;
  sub_1A454631C(v87, v132, sub_1A453B258);
  v99 = v133;
  sub_1A454631C(v97, v133, sub_1A453AA44);
  sub_1A453C168(0, &qword_1EB13CE50, sub_1A453AA44, sub_1A453B258);
  sub_1A454631C(v98, v99 + *(v100 + 48), sub_1A453B258);
  sub_1A4546384(v87, sub_1A453B258);
  sub_1A4546178(v79, type metadata accessor for LemonadeCollectionBookmarkCell.OutsideThumbnailTitleSpecs);
  sub_1A4546384(v73, sub_1A453AA44);
  sub_1A4546384(v98, sub_1A453B258);
  return sub_1A4546384(v97, sub_1A453AA44);
}

uint64_t sub_1A453F050(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t), void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1A4545764(255, a2, a3, MEMORY[0x1E697E5E0], MEMORY[0x1E697E830]);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A453F128(unint64_t *a1, uint64_t (*a2)(uint64_t), unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    sub_1A4546660(a3, a4, MEMORY[0x1E6981870]);
    sub_1A4546660(&qword_1EB127C80, sub_1A3F330A8, MEMORY[0x1E697FD58]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A453F1F8(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A453F278()
{
  result = qword_1EB13D088;
  if (!qword_1EB13D088)
  {
    sub_1A453BD78(255);
    sub_1A453BEF4(255);
    sub_1A453BFC8(255);
    sub_1A453C4F4();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A4546660(&qword_1EB127C80, sub_1A3F330A8, MEMORY[0x1E697FD58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13D088);
  }

  return result;
}

uint64_t sub_1A453F3EC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v91 = a2;
  v3 = sub_1A5244084();
  v89 = *(v3 - 8);
  v90 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v88 = &v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_1A5242254();
  v80 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v77 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_1A5242264();
  v74 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v73 = (&v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = MEMORY[0x1E69C2128];
  sub_1A3E72EF0(0, &qword_1EB124E48, MEMORY[0x1E69C2128]);
  v78 = *(v8 - 8);
  v79 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v72 = &v71 - v9;
  sub_1A453AFD4(0, &qword_1EB124310, &qword_1EB124E48, v7);
  v76 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v84 = &v71 - v11;
  sub_1A453AF50(0);
  v83 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v87 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v81 = &v71 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v86 = &v71 - v17;
  sub_1A3E72EF0(0, &qword_1EB13CEC0, MEMORY[0x1E69C21C8]);
  v19 = v18;
  v20 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v71 - v21;
  sub_1A453AED4(0);
  v24 = v23 - 8;
  MEMORY[0x1EEE9AC00](v23);
  v85 = &v71 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v71 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v71 - v30;
  v32 = a1[3];
  v33 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v32);
  v34 = (*(v33 + 80))(v32, v33);
  sub_1A5242CC4();
  if (v34)
  {
    v35 = 1.0;
  }

  else
  {
    v35 = 0.0;
  }

  (*(v20 + 32))(v28, v22, v19);
  *&v28[*(v24 + 44)] = v35;
  sub_1A4546244(v28, v31, sub_1A453AED4);
  v36 = a1[3];
  v37 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v36);
  v38 = *(v37 + 88);
  v39 = v37;
  v40 = v72;
  v41 = v38(v36, v39);
  if (v42)
  {
    v43 = v41;
  }

  else
  {
    v43 = 0;
  }

  v44 = 0xE000000000000000;
  if (v42)
  {
    v44 = v42;
  }

  v45 = v73;
  *v73 = v43;
  v45[1] = v44;
  v46 = v74;
  v47 = v75;
  (*(v74 + 104))(v45, *MEMORY[0x1E69C1D40], v75);
  v48 = v77;
  sub_1A5242244();
  sub_1A5242B74();
  (*(v80 + 8))(v48, v82);
  (*(v46 + 8))(v45, v47);
  if (v34)
  {
    v49 = sub_1A524B434();
  }

  else
  {
    v49 = sub_1A524B2B4();
  }

  v50 = v49;
  KeyPath = swift_getKeyPath();
  v52 = v84;
  (*(v78 + 32))(v84, v40, v79);
  v53 = (v52 + *(v76 + 36));
  *v53 = KeyPath;
  v53[1] = v50;
  type metadata accessor for LemonadeCollectionBookmarkCell(0);
  v54 = v88;
  sub_1A4545DE4(sub_1A42905D4, sub_1A3F75EB4, MEMORY[0x1E69C2948], v88);
  sub_1A5244054();
  v56 = v55;
  v58 = v57;
  v60 = v59;
  v62 = v61;
  (*(v89 + 8))(v54, v90);
  LOBYTE(v54) = sub_1A524A064();
  v63 = v81;
  sub_1A45462AC(v52, v81, &qword_1EB124310, &qword_1EB124E48, MEMORY[0x1E69C2128]);
  v64 = v63 + *(v83 + 36);
  *v64 = v54;
  *(v64 + 8) = v56;
  *(v64 + 16) = v58;
  *(v64 + 24) = v60;
  *(v64 + 32) = v62;
  *(v64 + 40) = 0;
  v65 = v86;
  sub_1A4546244(v63, v86, sub_1A453AF50);
  v66 = v85;
  sub_1A454631C(v31, v85, sub_1A453AED4);
  v67 = v87;
  sub_1A454631C(v65, v87, sub_1A453AF50);
  v68 = v91;
  sub_1A454631C(v66, v91, sub_1A453AED4);
  sub_1A453C168(0, &qword_1EB13CEB0, sub_1A453AED4, sub_1A453AF50);
  sub_1A454631C(v67, v68 + *(v69 + 48), sub_1A453AF50);
  sub_1A4546384(v65, sub_1A453AF50);
  sub_1A4546384(v31, sub_1A453AED4);
  sub_1A4546384(v67, sub_1A453AF50);
  return sub_1A4546384(v66, sub_1A453AED4);
}

void sub_1A453FC3C(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v36[11] = a2;
  v36[14] = a3;
  v4 = sub_1A524A204();
  v36[7] = *(v4 - 8);
  v36[8] = v4;
  MEMORY[0x1EEE9AC00](v4);
  v36[5] = v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A5244084();
  v36[2] = *(v6 - 8);
  v36[3] = v6;
  MEMORY[0x1EEE9AC00](v6);
  v36[1] = v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A453C280(0, &qword_1EB123638, sub_1A453C304);
  v36[4] = v8 - 8;
  MEMORY[0x1EEE9AC00](v8 - 8);
  v36[0] = v36 - v9;
  sub_1A453C1E4(0);
  v36[9] = v10;
  MEMORY[0x1EEE9AC00](v10);
  v36[13] = v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v36[6] = v36 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v36[12] = v36 - v15;
  sub_1A3E72EF0(0, &qword_1EB13CEC0, MEMORY[0x1E69C21C8]);
  v17 = v16;
  v18 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v20 = v36 - v19;
  sub_1A453AED4(0);
  v22 = v21 - 8;
  MEMORY[0x1EEE9AC00](v21);
  v36[10] = v36 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = v36 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = v36 - v28;
  sub_1A5242CC4();
  v31 = a1[3];
  v30 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v31);
  if ((*(v30 + 80))(v31, v30))
  {
    v32 = 1.0;
  }

  else
  {
    v32 = 0.0;
  }

  (*(v18 + 32))(v26, v20, v17);
  *&v26[*(v22 + 44)] = v32;
  sub_1A4546244(v26, v29, sub_1A453AED4);
  v33 = sub_1A5249314();
  v34 = v36[0];
  *v36[0] = v33;
  *(v34 + 8) = 0;
  *(v34 + 16) = 1;
  sub_1A45461D8(0, &qword_1EB13D198, sub_1A453C3D4, MEMORY[0x1E697E258], MEMORY[0x1E697E250]);
  sub_1A4540358(a1, v34 + *(v35 + 44));
}

void sub_1A4540358(void *a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v3 = sub_1A5242254();
  v47 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v45 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1A5242264();
  v44 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v6 = (&v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = MEMORY[0x1E69C2128];
  sub_1A3E72EF0(0, &qword_1EB124E48, MEMORY[0x1E69C2128]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v43 - v11;
  sub_1A453C49C(0, &qword_1EB124E40, &qword_1EB124E48, v7);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = (&v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v43 - v17;
  v19 = a1[3];
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v19);
  if (sub_1A4838C84(v19, v20))
  {
    (*(v10 + 56))(v18, 1, 1, v9);
  }

  else
  {
    v43 = v3;
    v21 = a1[3];
    v22 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v21);
    v23 = (*(v22 + 88))(v21, v22);
    if (v24)
    {
      v25 = v23;
    }

    else
    {
      v25 = 0;
    }

    v26 = 0xE000000000000000;
    if (v24)
    {
      v26 = v24;
    }

    *v6 = v25;
    v6[1] = v26;
    v27 = v44;
    v28 = v46;
    (*(v44 + 104))(v6, *MEMORY[0x1E69C1D40], v46);
    v29 = v45;
    sub_1A5242244();
    sub_1A5242B74();
    v47[1](v29, v43);
    (*(v27 + 8))(v6, v28);
    (*(v10 + 32))(v18, v12, v9);
    (*(v10 + 56))(v18, 0, 1, v9);
  }

  v30 = sub_1A453DF94();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  KeyPath = swift_getKeyPath();
  v38 = MEMORY[0x1E69C2128];
  sub_1A4546044(v18, v15, &qword_1EB124E40, &qword_1EB124E48, MEMORY[0x1E69C2128]);
  v39 = v15;
  v47 = v15;
  v40 = v48;
  sub_1A4546044(v39, v48, &qword_1EB124E40, &qword_1EB124E48, v38);
  sub_1A453C408(0);
  v42 = v40 + *(v41 + 48);
  *v42 = v30;
  *(v42 + 8) = v32;
  v34 &= 1u;
  *(v42 + 16) = v34;
  *(v42 + 24) = v36;
  *(v42 + 32) = KeyPath;
  *(v42 + 40) = 2;
  *(v42 + 48) = 0;
  sub_1A3E75E68(v30, v32, v34);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A45407FC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v47 = a1;
  v41 = sub_1A5243834();
  v40 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v4 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4545FE0(0, &unk_1EB129180, MEMORY[0x1E69C2060], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v39 - v6;
  v43 = sub_1A5243EC4();
  v42 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4541644(0, &qword_1EB13C950, MEMORY[0x1E69C2928], &type metadata for LemonadeCollectionBookmarkPrivacySensitiveView, MEMORY[0x1E697F948]);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v39 - v11;
  sub_1A45416B0(0);
  v46 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A45466A8(0, &qword_1EB13D0B8, sub_1A45416EC, sub_1A45416B0, MEMORY[0x1E697F948]);
  v44 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v45 = &v39 - v17;
  v18 = v1[3];
  v19 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v18);
  v20 = (*(v19 + 104))(v18, v19);
  if (v20 > 3)
  {
    if (v20 - 4 < 2)
    {
      sub_1A3C341C8(v1, v51);
      sub_1A4543C70(v51, v52);
      LOBYTE(KeyPath) = 0;
      sub_1A45418D4();
      sub_1A4541928();
      sub_1A5249744();
      sub_1A4543A7C(v50, v48, &qword_1EB127DB8, &type metadata for LemonadeCollectionBookmarkCell.ThumbnailView.PeopleContentView, &type metadata for LemonadeCollectionBookmarkCell.ThumbnailView.AssetCollectionInlinePlaybackContentView);
      v49 = 0;
      v23 = MEMORY[0x1E697F960];
      sub_1A4544744(0, &qword_1EB127DB8, &type metadata for LemonadeCollectionBookmarkCell.ThumbnailView.PeopleContentView, &type metadata for LemonadeCollectionBookmarkCell.ThumbnailView.AssetCollectionInlinePlaybackContentView, MEMORY[0x1E697F960]);
      sub_1A4544744(0, &qword_1EB1228A0, &type metadata for LemonadeCollectionBookmarkCell.ThumbnailView.MapView, &type metadata for LemonadeCollectionBookmarkCell.ThumbnailView.AlbumContentView, v23);
      sub_1A4541828();
      sub_1A454197C();
      sub_1A5249744();
      sub_1A4543B00(v50, &qword_1EB127DB8, &type metadata for LemonadeCollectionBookmarkCell.ThumbnailView.PeopleContentView, &type metadata for LemonadeCollectionBookmarkCell.ThumbnailView.AssetCollectionInlinePlaybackContentView);
      sub_1A45460B4(v52, v45, sub_1A45416EC);
      swift_storeEnumTagMultiPayload();
      sub_1A45416EC(0);
      sub_1A45417A8();
      sub_1A44F1A58();
      sub_1A5249744();
      sub_1A4546178(v52, sub_1A45416EC);
      return sub_1A4543CA8(v51);
    }

    if (v20 == 10)
    {
      sub_1A3C341C8(v1, v51);
      sub_1A4543BA0(v51, v52);
      LOBYTE(KeyPath) = 0;
      sub_1A4541A28();
      sub_1A4541A7C();
      sub_1A5249744();
      sub_1A4543A7C(v50, v48, &qword_1EB1228A0, &type metadata for LemonadeCollectionBookmarkCell.ThumbnailView.MapView, &type metadata for LemonadeCollectionBookmarkCell.ThumbnailView.AlbumContentView);
      v49 = 1;
      v25 = MEMORY[0x1E697F960];
      sub_1A4544744(0, &qword_1EB127DB8, &type metadata for LemonadeCollectionBookmarkCell.ThumbnailView.PeopleContentView, &type metadata for LemonadeCollectionBookmarkCell.ThumbnailView.AssetCollectionInlinePlaybackContentView, MEMORY[0x1E697F960]);
      sub_1A4544744(0, &qword_1EB1228A0, &type metadata for LemonadeCollectionBookmarkCell.ThumbnailView.MapView, &type metadata for LemonadeCollectionBookmarkCell.ThumbnailView.AlbumContentView, v25);
      sub_1A4541828();
      sub_1A454197C();
      sub_1A5249744();
      sub_1A4543B00(v50, &qword_1EB1228A0, &type metadata for LemonadeCollectionBookmarkCell.ThumbnailView.MapView, &type metadata for LemonadeCollectionBookmarkCell.ThumbnailView.AlbumContentView);
      sub_1A45460B4(v52, v45, sub_1A45416EC);
      swift_storeEnumTagMultiPayload();
      sub_1A45416EC(0);
      sub_1A45417A8();
      sub_1A44F1A58();
      sub_1A5249744();
      sub_1A4546178(v52, sub_1A45416EC);
      return sub_1A4543BD8(v51);
    }

    goto LABEL_15;
  }

  switch(v20)
  {
    case 0u:
      v26 = v1[3];
      v27 = v1[4];
      __swift_project_boxed_opaque_existential_1(v2, v2[3]);
      if ((sub_1A4838C84(v26, v27) & 1) == 0)
      {
        sub_1A3C341C8(v2, v51);
        sub_1A4543A44(v51, v52);
        LOBYTE(KeyPath) = 1;
        sub_1A4541A28();
        sub_1A4541A7C();
        sub_1A5249744();
        sub_1A4543A7C(v50, v48, &qword_1EB1228A0, &type metadata for LemonadeCollectionBookmarkCell.ThumbnailView.MapView, &type metadata for LemonadeCollectionBookmarkCell.ThumbnailView.AlbumContentView);
        v49 = 1;
        v28 = MEMORY[0x1E697F960];
        sub_1A4544744(0, &qword_1EB127DB8, &type metadata for LemonadeCollectionBookmarkCell.ThumbnailView.PeopleContentView, &type metadata for LemonadeCollectionBookmarkCell.ThumbnailView.AssetCollectionInlinePlaybackContentView, MEMORY[0x1E697F960]);
        sub_1A4544744(0, &qword_1EB1228A0, &type metadata for LemonadeCollectionBookmarkCell.ThumbnailView.MapView, &type metadata for LemonadeCollectionBookmarkCell.ThumbnailView.AlbumContentView, v28);
        sub_1A4541828();
        sub_1A454197C();
        sub_1A5249744();
        sub_1A4543B00(v50, &qword_1EB1228A0, &type metadata for LemonadeCollectionBookmarkCell.ThumbnailView.MapView, &type metadata for LemonadeCollectionBookmarkCell.ThumbnailView.AlbumContentView);
        sub_1A45460B4(v52, v45, sub_1A45416EC);
        swift_storeEnumTagMultiPayload();
        sub_1A45416EC(0);
        sub_1A45417A8();
        sub_1A44F1A58();
        sub_1A5249744();
        sub_1A4546178(v52, sub_1A45416EC);
        return sub_1A4543B70(v51);
      }

      break;
    case 2u:
      sub_1A3C52C70(0, &qword_1EB126A10, off_1E771E328);
      v29 = [swift_getObjCClassFromMetadata() sharedInstance];
      v30 = [v29 enableInlinePlaybackMemories];

      if ((v30 & 1) == 0)
      {
        break;
      }

LABEL_14:
      sub_1A3C341C8(v2, v51);
      sub_1A4543C08(v51, v52);
      LOBYTE(KeyPath) = 1;
      sub_1A45418D4();
      sub_1A4541928();
      sub_1A5249744();
      sub_1A4543A7C(v50, v48, &qword_1EB127DB8, &type metadata for LemonadeCollectionBookmarkCell.ThumbnailView.PeopleContentView, &type metadata for LemonadeCollectionBookmarkCell.ThumbnailView.AssetCollectionInlinePlaybackContentView);
      v49 = 0;
      v31 = MEMORY[0x1E697F960];
      sub_1A4544744(0, &qword_1EB127DB8, &type metadata for LemonadeCollectionBookmarkCell.ThumbnailView.PeopleContentView, &type metadata for LemonadeCollectionBookmarkCell.ThumbnailView.AssetCollectionInlinePlaybackContentView, MEMORY[0x1E697F960]);
      sub_1A4544744(0, &qword_1EB1228A0, &type metadata for LemonadeCollectionBookmarkCell.ThumbnailView.MapView, &type metadata for LemonadeCollectionBookmarkCell.ThumbnailView.AlbumContentView, v31);
      sub_1A4541828();
      sub_1A454197C();
      sub_1A5249744();
      sub_1A4543B00(v50, &qword_1EB127DB8, &type metadata for LemonadeCollectionBookmarkCell.ThumbnailView.PeopleContentView, &type metadata for LemonadeCollectionBookmarkCell.ThumbnailView.AssetCollectionInlinePlaybackContentView);
      sub_1A45460B4(v52, v45, sub_1A45416EC);
      swift_storeEnumTagMultiPayload();
      sub_1A45416EC(0);
      sub_1A45417A8();
      sub_1A44F1A58();
      sub_1A5249744();
      sub_1A4546178(v52, sub_1A45416EC);
      return sub_1A4543C40(v51);
    case 3u:
      sub_1A3C52C70(0, &qword_1EB126A10, off_1E771E328);
      v21 = [swift_getObjCClassFromMetadata() sharedInstance];
      v22 = [v21 enableInlinePlaybackEvents];

      if (v22)
      {
        goto LABEL_14;
      }

      break;
  }

LABEL_15:
  v32 = v2[3];
  v33 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v32);
  if (sub_1A4838C84(v32, v33))
  {
    sub_1A3C341C8(v2, v52);
    KeyPath = swift_getKeyPath();
    v54 = 0;
    v55 = swift_getKeyPath();
    v56 = 0;
    sub_1A44F08C4(v52, v12);
    swift_storeEnumTagMultiPayload();
    sub_1A44F07F0();
    sub_1A4546660(&qword_1EB128FE0, MEMORY[0x1E69C2928], MEMORY[0x1E69C2920]);
    sub_1A5249744();
    sub_1A44F0920(v52);
  }

  else
  {
    v34 = v2[3];
    v35 = v2[4];
    __swift_project_boxed_opaque_existential_1(v2, v34);
    (*(v35 + 72))(v34, v35);
    memset(v52, 0, 32);
    v52[32] = 1;
    v36 = sub_1A52429A4();
    (*(*(v36 - 8) + 56))(v7, 1, 1, v36);
    (*(v40 + 104))(v4, *MEMORY[0x1E69C2678], v41);
    sub_1A5243ED4();
    v37 = v42;
    v38 = v43;
    (*(v42 + 16))(v12, v9, v43);
    swift_storeEnumTagMultiPayload();
    sub_1A44F07F0();
    sub_1A4546660(&qword_1EB128FE0, MEMORY[0x1E69C2928], MEMORY[0x1E69C2920]);
    sub_1A5249744();
    (*(v37 + 8))(v9, v38);
  }

  sub_1A45460B4(v15, v45, sub_1A45416B0);
  swift_storeEnumTagMultiPayload();
  sub_1A45416EC(0);
  sub_1A45417A8();
  sub_1A44F1A58();
  sub_1A5249744();
  return sub_1A4546178(v15, sub_1A45416B0);
}

void sub_1A4541644(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_1A45416EC(uint64_t a1)
{
  if (!qword_1EB1224A0)
  {
    v1 = MEMORY[0x1E697F960];
    sub_1A4544744(255, &qword_1EB127DB8, &type metadata for LemonadeCollectionBookmarkCell.ThumbnailView.PeopleContentView, &type metadata for LemonadeCollectionBookmarkCell.ThumbnailView.AssetCollectionInlinePlaybackContentView, MEMORY[0x1E697F960]);
    sub_1A4544744(255, &qword_1EB1228A0, &type metadata for LemonadeCollectionBookmarkCell.ThumbnailView.MapView, &type metadata for LemonadeCollectionBookmarkCell.ThumbnailView.AlbumContentView, v1);
    v2 = sub_1A5249754();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB1224A0);
    }
  }
}

unint64_t sub_1A45417A8()
{
  result = qword_1EB1224A8;
  if (!qword_1EB1224A8)
  {
    sub_1A45416EC(255);
    sub_1A4541828();
    sub_1A454197C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1224A8);
  }

  return result;
}

unint64_t sub_1A4541828()
{
  result = qword_1EB127DC0;
  if (!qword_1EB127DC0)
  {
    sub_1A4544744(255, &qword_1EB127DB8, &type metadata for LemonadeCollectionBookmarkCell.ThumbnailView.PeopleContentView, &type metadata for LemonadeCollectionBookmarkCell.ThumbnailView.AssetCollectionInlinePlaybackContentView, MEMORY[0x1E697F960]);
    sub_1A45418D4();
    sub_1A4541928();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB127DC0);
  }

  return result;
}

unint64_t sub_1A45418D4()
{
  result = qword_1EB17D580[0];
  if (!qword_1EB17D580[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB17D580);
  }

  return result;
}

unint64_t sub_1A4541928()
{
  result = qword_1EB17D468[0];
  if (!qword_1EB17D468[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB17D468);
  }

  return result;
}

unint64_t sub_1A454197C()
{
  result = qword_1EB1228A8;
  if (!qword_1EB1228A8)
  {
    sub_1A4544744(255, &qword_1EB1228A0, &type metadata for LemonadeCollectionBookmarkCell.ThumbnailView.MapView, &type metadata for LemonadeCollectionBookmarkCell.ThumbnailView.AlbumContentView, MEMORY[0x1E697F960]);
    sub_1A4541A28();
    sub_1A4541A7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1228A8);
  }

  return result;
}

unint64_t sub_1A4541A28()
{
  result = qword_1EB17D4F0[0];
  if (!qword_1EB17D4F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB17D4F0);
  }

  return result;
}

unint64_t sub_1A4541A7C()
{
  result = qword_1EB163BE8[0];
  if (!qword_1EB163BE8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB163BE8);
  }

  return result;
}

uint64_t sub_1A4541AD0@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 40) = swift_getKeyPath();
  *(a2 + 48) = 0;
  *(a2 + 56) = swift_getKeyPath();
  *(a2 + 64) = 0;

  return sub_1A3C34460(a1, a2);
}

uint64_t sub_1A4541B34@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v45 = a1;
  v3 = sub_1A5243834();
  v35 = *(v3 - 8);
  v36 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v37 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_1A5243EC4();
  v39 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v38 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A45466A8(0, &qword_1EB127FA0, MEMORY[0x1E69C1E58], MEMORY[0x1E69C2928], MEMORY[0x1E697F948]);
  v41 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v43 = &v33 - v7;
  sub_1A4545FE0(0, &unk_1EB129180, MEMORY[0x1E69C2060], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v40 = &v33 - v9;
  v42 = sub_1A5242494();
  v34 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v33 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v1[3];
  v12 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v11);
  v13 = *(v12 + 96);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = sub_1A524DF24();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v33 - v18;
  v13(v11, v12, v17);
  v20 = *(AssociatedTypeWitness - 8);
  if ((*(v20 + 48))(v19, 1, AssociatedTypeWitness) == 1)
  {
    (*(v16 + 8))(v19, v15);
LABEL_8:
    v26 = v2[3];
    v27 = v2[4];
    __swift_project_boxed_opaque_existential_1(v2, v26);
    (*(v27 + 72))(v26, v27);
    v46 = 0u;
    v47 = 0u;
    LOBYTE(AssociatedConformanceWitness) = 1;
    v28 = sub_1A52429A4();
    (*(*(v28 - 8) + 56))(v40, 1, 1, v28);
    (*(v35 + 104))(v37, *MEMORY[0x1E69C2678], v36);
    v29 = v38;
    sub_1A5243ED4();
    v30 = v39;
    v31 = v44;
    (*(v39 + 16))(v43, v29, v44);
    swift_storeEnumTagMultiPayload();
    sub_1A4546660(&qword_1EB1292A0, MEMORY[0x1E69C1E58], MEMORY[0x1E69C1E50]);
    sub_1A4546660(&qword_1EB128FE0, MEMORY[0x1E69C2928], MEMORY[0x1E69C2920]);
    sub_1A5249744();
    return (*(v30 + 8))(v29, v31);
  }

  *(&v47 + 1) = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v46);
  (*(v20 + 32))(boxed_opaque_existential_1, v19, AssociatedTypeWitness);
  sub_1A3C34400(0, &qword_1EB128C70, off_1E77211E8);
  sub_1A3CA2A44(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_8;
  }

  if ((sub_1A52426F4() & 1) == 0)
  {

    goto LABEL_8;
  }

  if (!(sub_1A5242704() >> 62))
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  sub_1A3D435C4();
  sub_1A524E6F4();

  sub_1A524B304();
  v22 = sub_1A52429A4();
  (*(*(v22 - 8) + 56))(v40, 1, 1, v22);
  v23 = v33;
  sub_1A52424A4();
  v24 = v34;
  v25 = v42;
  (*(v34 + 16))(v43, v23, v42);
  swift_storeEnumTagMultiPayload();
  sub_1A4546660(&qword_1EB1292A0, MEMORY[0x1E69C1E58], MEMORY[0x1E69C1E50]);
  sub_1A4546660(&qword_1EB128FE0, MEMORY[0x1E69C2928], MEMORY[0x1E69C2920]);
  sub_1A5249744();

  return (*(v24 + 8))(v23, v25);
}

uint64_t sub_1A4542340@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v84 = a1;
  v3 = sub_1A5243834();
  v75 = *(v3 - 8);
  v76 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v77 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4545FE0(0, &unk_1EB129180, MEMORY[0x1E69C2060], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v74 = &v62 - v6;
  v83 = sub_1A5243EC4();
  v79 = *(v83 - 8);
  v7 = MEMORY[0x1EEE9AC00](v83);
  v78 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1E697F948];
  sub_1A45464B0(0, &qword_1EB13D138, MEMORY[0x1E697F948], v7);
  v81 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v82 = &v62 - v11;
  sub_1A4545B88(0, &qword_1EB13C120, &unk_1A5493EAC);
  v73 = v12;
  v63 = *(v12 - 8);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v62 = &v62 - v14;
  sub_1A4545AE0(0, &qword_1EB13D150, v9, v13);
  v69 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v71 = &v62 - v16;
  v66 = sub_1A5243624();
  v65 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v64 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4545B88(0, &qword_1EB125960, &unk_1A5493E04);
  v70 = v18;
  v68 = *(v18 - 8);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v67 = (&v62 - v20);
  sub_1A4545AE0(0, &unk_1EB13D140, MEMORY[0x1E697F960], v19);
  v80 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v72 = &v62 - v22;
  v23 = v1[3];
  v24 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v23);
  v25 = *(v24 + 96);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v27 = sub_1A524DF24();
  v28 = *(v27 - 8);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v31 = &v62 - v30;
  v25(v23, v24, v29);
  v32 = *(AssociatedTypeWitness - 8);
  if ((*(v32 + 48))(v31, 1, AssociatedTypeWitness) == 1)
  {
    (*(v28 + 8))(v31, v27);
LABEL_6:
    v47 = v2[3];
    v48 = v2[4];
    __swift_project_boxed_opaque_existential_1(v2, v47);
    (*(v48 + 72))(v47, v48);
    v86 = 0u;
    v87 = 0u;
    LOBYTE(AssociatedConformanceWitness) = 1;
    v49 = sub_1A52429A4();
    (*(*(v49 - 8) + 56))(v74, 1, 1, v49);
    (*(v75 + 104))(v77, *MEMORY[0x1E69C2678], v76);
    v50 = v78;
    sub_1A5243ED4();
    v51 = v79;
    v52 = v83;
    (*(v79 + 16))(v82, v50, v83);
    swift_storeEnumTagMultiPayload();
    sub_1A44B2678();
    sub_1A4546660(&qword_1EB128FE0, MEMORY[0x1E69C2928], MEMORY[0x1E69C2920]);
    sub_1A5249744();
    return (*(v51 + 8))(v50, v52);
  }

  *(&v87 + 1) = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v86);
  (*(v32 + 32))(boxed_opaque_existential_1, v31, AssociatedTypeWitness);
  sub_1A3C34400(0, &qword_1EB128C70, off_1E77211E8);
  sub_1A3D61454(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_6;
  }

  v34 = v85;
  sub_1A5242954();
  v79 = v86;
  v35 = *(v86 + 16);
  if (v35 < 0)
  {

    v54 = PhotoKitItem.expectsKeyAssets.getter();
    v45 = v72;
    if (v54)
    {
      v55 = PhotoKitItem.keyAssets.getter();
      if (!v55)
      {
        v56 = 1;
        goto LABEL_11;
      }
    }

    v56 = 0;
LABEL_11:
    v57 = sub_1A3C36888();
    v58 = v62;
    sub_1A414D6DC(v34, v35 & 0x7FFFFFFFFFFFFFFFLL, v56);
    v59 = v63;
    v60 = v73;
    (*(v63 + 16))(v71, v58, v73);
    swift_storeEnumTagMultiPayload();
    *&v86 = &type metadata for LemonadePeopleShelfProvider;
    *(&v86 + 1) = v57;
    swift_getOpaqueTypeConformance2();
    *&v86 = &type metadata for LemonadePeopleShelfProvider;
    *(&v86 + 1) = v57;
    swift_getOpaqueTypeConformance2();
    sub_1A5249744();

    v46 = (*(v59 + 8))(v58, v60);
    goto LABEL_12;
  }

  v36 = v65;
  v37 = v64;
  v38 = v66;
  (*(v65 + 104))(v64, *MEMORY[0x1E69C2530], v66);
  v39 = sub_1A3C36888();

  v40 = sub_1A3C30368();
  v41 = sub_1A3C5A374();
  v42 = v67;
  sub_1A414D324(v35, v37, v40 & 1, v41 & 1, v67);
  (*(v36 + 8))(v37, v38);
  v43 = v68;
  v44 = v70;
  (*(v68 + 16))(v71, v42, v70);
  swift_storeEnumTagMultiPayload();
  *&v86 = &type metadata for LemonadePeopleShelfProvider;
  *(&v86 + 1) = v39;
  swift_getOpaqueTypeConformance2();
  *&v86 = &type metadata for LemonadePeopleShelfProvider;
  *(&v86 + 1) = v39;
  swift_getOpaqueTypeConformance2();
  v45 = v72;
  sub_1A5249744();

  (*(v43 + 8))(v42, v44);
LABEL_12:
  sub_1A3D07D0C(v45, v82, v46);
  swift_storeEnumTagMultiPayload();
  sub_1A44B2678();
  sub_1A4546660(&qword_1EB128FE0, MEMORY[0x1E69C2928], MEMORY[0x1E69C2920]);
  sub_1A5249744();

  return sub_1A3D07D8C(v45, v61);
}

uint64_t sub_1A4542EA8@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  sub_1A4545FE0(0, &qword_1EB128A30, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v25 - v3;
  v5 = v1[3];
  v6 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v5);
  v7 = *(v6 + 96);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_1A524DF24();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v25 - v12;
  v7(v5, v6, v11);
  v14 = *(AssociatedTypeWitness - 8);
  if ((*(v14 + 48))(v13, 1, AssociatedTypeWitness) == 1)
  {
    v15 = (*(v10 + 8))(v13, v9);
LABEL_5:
    v22 = 0uLL;
    v21 = 1;
    v23 = 0uLL;
    goto LABEL_6;
  }

  *(&v31 + 1) = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v30);
  (*(v14 + 32))(boxed_opaque_existential_1, v13, AssociatedTypeWitness);
  sub_1A3C34400(0, &qword_1EB128C70, off_1E77211E8);
  type metadata accessor for LemonadeMapModel(0);
  v15 = swift_dynamicCast();
  if ((v15 & 1) == 0)
  {
    goto LABEL_5;
  }

  *&v17 = sub_1A3F2CCA4();
  v26 = v17;
  v27 = v18;
  v25 = v19;
  v28 = v20;

  *&v23 = v25;
  *&v22 = v26;
  v21 = 0;
  *(&v22 + 1) = v27;
  *(&v23 + 1) = v28;
LABEL_6:
  v30 = v22;
  v31 = v23;
  LOBYTE(AssociatedConformanceWitness) = v21;
  sub_1A417147C(v15);
  return sub_1A416D188(&v30, 0x6B72616D6B6F6F62, 0xEF7765695670614DLL, v4, v29);
}

uint64_t sub_1A45431A8@<X0>(uint64_t a1@<X8>)
{
  v53 = a1;
  v45 = sub_1A5243834();
  v44 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v46 = &v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4545FE0(0, &unk_1EB129180, MEMORY[0x1E69C2060], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v43 = &v42 - v4;
  v52 = sub_1A5243EC4();
  v48 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v47 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A45466A8(0, &qword_1EB122C68, sub_1A4545BFC, MEMORY[0x1E69C2928], MEMORY[0x1E697F948]);
  v49 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v51 = &v42 - v7;
  sub_1A4545BFC(0);
  v50 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v42 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v1[3];
  v10 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v11);
  v12 = *(v10 + 96);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = sub_1A524DF24();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v42 - v17;
  v12(v11, v10, v16);
  v19 = *(AssociatedTypeWitness - 8);
  if ((*(v19 + 48))(v18, 1, AssociatedTypeWitness) == 1)
  {
    (*(v15 + 8))(v18, v14);
  }

  else
  {
    *(&v61 + 1) = AssociatedTypeWitness;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v60);
    (*(v19 + 32))(boxed_opaque_existential_1, v18, AssociatedTypeWitness);
    v21 = PhotosModel.photokitObject.getter(AssociatedTypeWitness);
    __swift_destroy_boxed_opaque_existential_0(&v60);
    if (v21)
    {
      v67[2] = &unk_1F198AE70;
      v22 = swift_dynamicCastObjCProtocolConditional();
      if (v22)
      {
        v23 = v22;
        v24 = v1[3];
        v25 = v1[4];
        __swift_project_boxed_opaque_existential_1(v1, v24);
        v67[0] = (*(v25 + 40))(v24, v25);
        v67[1] = v26;
        v27 = v1[3];
        v28 = v1[4];
        __swift_project_boxed_opaque_existential_1(v1, v27);
        v29 = (*(v28 + 72))(v27, v28);
        v65 = v23;
        v66 = 0;
        v30 = v21;
        v31 = MEMORY[0x1E69E6158];
        v32 = MEMORY[0x1E69E6168];
        j___s12PhotosUICore0A23CollectionPreviewPlayerC13ConfigurationV7defaultAEvgZ();
        v54 = v60;
        v55 = v61;
        v56 = *(&v61 + 1);
        v57 = AssociatedConformanceWitness;
        v58 = v63;
        v59 = v64;
        v33 = sub_1A3D41FBC();
        v34 = v42;
        LemonadeInlineStoryPlayerView<>.init(id:asset:content:configuration:placeholderBlur:onVisibilityChanged:)(v67, v29, 0, 0, v31, v32, v42, v33);
        sub_1A45460B4(v34, v51, sub_1A4545BFC);
        swift_storeEnumTagMultiPayload();
        sub_1A4546660(&qword_1EB125540, sub_1A4545BFC, &protocol conformance descriptor for LemonadeInlineStoryPlayerView<A, B>);
        sub_1A4546660(&qword_1EB128FE0, MEMORY[0x1E69C2928], MEMORY[0x1E69C2920]);
        sub_1A5249744();

        return sub_1A4546178(v34, sub_1A4545BFC);
      }
    }
  }

  v36 = v1[3];
  v37 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v36);
  (*(v37 + 72))(v36, v37);
  v60 = 0u;
  v61 = 0u;
  LOBYTE(AssociatedConformanceWitness) = 1;
  v38 = sub_1A52429A4();
  (*(*(v38 - 8) + 56))(v43, 1, 1, v38);
  (*(v44 + 104))(v46, *MEMORY[0x1E69C2678], v45);
  v39 = v47;
  sub_1A5243ED4();
  v40 = v48;
  v41 = v52;
  (*(v48 + 16))(v51, v39, v52);
  swift_storeEnumTagMultiPayload();
  sub_1A4546660(&qword_1EB125540, sub_1A4545BFC, &protocol conformance descriptor for LemonadeInlineStoryPlayerView<A, B>);
  sub_1A4546660(&qword_1EB128FE0, MEMORY[0x1E69C2928], MEMORY[0x1E69C2920]);
  sub_1A5249744();
  return (*(v40 + 8))(v39, v41);
}

uint64_t sub_1A4543A7C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t a5)
{
  sub_1A4544744(0, a3, a4, a5, MEMORY[0x1E697F960]);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_1A4543B00(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  sub_1A4544744(0, a2, a3, a4, MEMORY[0x1E697F960]);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void sub_1A4543CD8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v85 = a2;
  v3 = sub_1A5242254();
  v83 = *(v3 - 8);
  v84 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v79 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_1A5242274();
  v80 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v70 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_1A5242264();
  v69 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v7 = (&v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = MEMORY[0x1E69C2110];
  sub_1A3E72EF0(0, &qword_1EB124E60, MEMORY[0x1E69C2110]);
  v75 = v9;
  v74 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v68 = &v64 - v10;
  sub_1A453AFD4(0, &unk_1EB124340, &qword_1EB124E60, v8);
  v71 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v77 = &v64 - v12;
  sub_1A45446C0(0);
  v76 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v82 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1A5249234();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_1A5242234();
  v72 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v20 = &v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v64 - v22;
  v24 = *(a1 + 40);
  v25 = *(a1 + 48) == 1;
  v66 = v15;
  v65 = v16;
  if (v25)
  {
    v89 = v24;
  }

  else
  {

    v26 = sub_1A524D254();
    v27 = sub_1A524A014();
    sub_1A5246DF4(v26, &dword_1A3C1C000, v27, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3C53AEC(v24, 0);
    (*(v16 + 8))(v18, v15);
    LOBYTE(v24) = v89;
  }

  v88 = v24;
  v87 = 2;
  sub_1A40A51C0();
  sub_1A524C9C4();
  sub_1A524C9C4();
  if (v90 == v86)
  {
  }

  else
  {
    v28 = sub_1A524EAB4();

    if ((v28 & 1) == 0)
    {
LABEL_9:
      v30 = v23;
      sub_1A5242184();
      goto LABEL_12;
    }
  }

  v29 = *(a1 + 56);
  if (*(a1 + 64) == 1)
  {
    if ((v29 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  else
  {

    v31 = sub_1A524D254();
    v32 = sub_1A524A014();
    sub_1A5246DF4(v31, &dword_1A3C1C000, v32, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3C53AEC(v29, 0);
    (*(v65 + 8))(v18, v66);
    if (v90 != 1)
    {
      goto LABEL_9;
    }
  }

  v30 = v23;
  sub_1A52421A4();
LABEL_12:
  v67 = v30;
  v33 = *(a1 + 24);
  v34 = *(a1 + 32);
  __swift_project_boxed_opaque_existential_1(a1, v33);
  v35 = (*(v34 + 88))(v33, v34);
  if (v36)
  {
    v37 = v35;
  }

  else
  {
    v37 = 0;
  }

  v38 = 0xE000000000000000;
  if (v36)
  {
    v38 = v36;
  }

  *v7 = v37;
  v7[1] = v38;
  v39 = v69;
  v40 = v78;
  (*(v69 + 104))(v7, *MEMORY[0x1E69C1D40], v78);
  v41 = v80;
  v42 = v70;
  v43 = v81;
  (*(v80 + 104))(v70, *MEMORY[0x1E69C1D48], v81);
  sub_1A5242194();
  v44 = v79;
  sub_1A5242244();
  v45 = v68;
  sub_1A5242B44();
  (*(v83 + 8))(v44, v84);
  v84 = *(v72 + 8);
  v46 = v20;
  v47 = v73;
  v84(v46, v73);
  (*(v41 + 8))(v42, v43);
  (*(v39 + 8))(v7, v40);
  v48 = sub_1A524B4A4();
  KeyPath = swift_getKeyPath();
  v50 = v77;
  (*(v74 + 32))(v77, v45, v75);
  v51 = &v50[*(v71 + 36)];
  *v51 = KeyPath;
  v51[1] = v48;
  sub_1A524BC74();
  sub_1A5248AD4();
  v52 = v50;
  v53 = v82;
  sub_1A45462AC(v52, v82, &unk_1EB124340, &qword_1EB124E60, MEMORY[0x1E69C2110]);
  v54 = (v53 + *(v76 + 36));
  v55 = v95;
  v54[4] = v94;
  v54[5] = v55;
  v54[6] = v96;
  v56 = v91;
  *v54 = v90;
  v54[1] = v56;
  v57 = v93;
  v54[2] = v92;
  v54[3] = v57;
  v58 = sub_1A524B2F4();
  LOBYTE(KeyPath) = sub_1A524A064();
  v84(v67, v47);
  v59 = v53;
  v60 = v85;
  sub_1A4546244(v59, v85, sub_1A45446C0);
  sub_1A454462C(0, v61);
  v63 = v60 + *(v62 + 36);
  *v63 = v58;
  *(v63 + 8) = KeyPath;
}

void sub_1A454462C(uint64_t a1, double a2)
{
  if (!qword_1EB1234A8)
  {
    sub_1A45446C0(255);
    sub_1A4544744(255, &qword_1EB127B10, MEMORY[0x1E69815C0], MEMORY[0x1E6981568], MEMORY[0x1E6980460]);
    v2 = sub_1A5248804();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB1234A8);
    }
  }
}

void sub_1A45446C0(uint64_t a1)
{
  if (!qword_1EB123960)
  {
    sub_1A453AFD4(255, &unk_1EB124340, &qword_1EB124E60, MEMORY[0x1E69C2110]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB123960);
    }
  }
}

void sub_1A4544744(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1A4544798(uint64_t *a2@<X8>)
{
  *a2 = sub_1A524BC74();
  a2[1] = v4;
  sub_1A45461D8(0, &qword_1EB124400, sub_1A454462C, MEMORY[0x1E697E330], MEMORY[0x1E697E320]);
  sub_1A4543CD8(v2, a2 + *(v5 + 44));
}

void sub_1A4544804(uint64_t a1@<X8>)
{
  v9 = a1;
  v1 = sub_1A5249944();
  MEMORY[0x1EEE9AC00](v1);
  v8 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1A524BB64();
  MEMORY[0x1EEE9AC00](v3);
  type metadata accessor for LemonadeBookmarksManager(0);
  v4 = [objc_opt_self() sharedPhotoLibrary];
  v5 = type metadata accessor for LemonadeMockBookmarksDataSource();
  v6 = sub_1A495E4AC();
  v10[3] = v5;
  v10[4] = sub_1A4546660(&qword_1EB13D0D0, type metadata accessor for LemonadeMockBookmarksDataSource, &unk_1A5376B80);
  v10[0] = v6;
  LemonadeBookmarksManager.__allocating_init(photoLibrary:dataSource:)(v4, v10);
}

void sub_1A4544BDC(uint64_t a1, uint64_t a2, double a5)
{
  v8 = type metadata accessor for LemonadeBookmark.CollectionIdentifier(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for LemonadeBookmark(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  MEMORY[0x1EEE9AC00](v12);
  *v10 = a1;
  *(v10 + 1) = a2;
  *(v10 + 2) = a5;
  swift_storeEnumTagMultiPayload();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A4544EB8()
{
  v2 = type metadata accessor for LemonadeCollectionBookmarkCell(0);
  MEMORY[0x1EEE9AC00](v2);
  MEMORY[0x1EEE9AC00](v3);
  MEMORY[0x1EEE9AC00](v4);
  MEMORY[0x1EEE9AC00](v5);
  sub_1A4544BDC(0xD000000000000016, 0x80000001A53DB8C0, 0.1);
}

void sub_1A45451A0(uint64_t a1)
{
  if (!qword_1EB13D0E0)
  {
    type metadata accessor for LemonadeCollectionBookmarkCell(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB13D0E0);
    }
  }
}

unint64_t sub_1A4545208()
{
  result = qword_1EB13D0F0;
  if (!qword_1EB13D0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13D0F0);
  }

  return result;
}

unint64_t sub_1A45452B4()
{
  result = qword_1EB13D0F8;
  if (!qword_1EB13D0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13D0F8);
  }

  return result;
}

uint64_t sub_1A4545328(uint64_t a1)
{
  v2 = sub_1A4545CAC();

  return MEMORY[0x1EEDD9FE8](a1, v2);
}

uint64_t sub_1A4545374(uint64_t a1)
{
  v2 = sub_1A4545CAC();

  return MEMORY[0x1EEDD9FE0](a1, v2);
}

void sub_1A45453E8(uint64_t a1)
{
  sub_1A3C34400(319, &qword_1EB125408, &protocol descriptor for LemonadeCollectionBookmarkModel);
  if (v1 <= 0x3F)
  {
    sub_1A4545FE0(319, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
    if (v2 <= 0x3F)
    {
      sub_1A4545FE0(319, &qword_1EB124840, MEMORY[0x1E69C2948], MEMORY[0x1E697DCC0]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1A4545534(uint64_t a1)
{
  result = sub_1A524A274();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1A45455B8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A4545600(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1A4545674()
{
  result = qword_1EB13D100;
  if (!qword_1EB13D100)
  {
    sub_1A4545764(255, &qword_1EB13D108, sub_1A453BD3C, MEMORY[0x1E6981910], MEMORY[0x1E697F960]);
    sub_1A453F1F8(&qword_1EB13D080, sub_1A453BD3C, sub_1A453F278);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13D100);
  }

  return result;
}

void sub_1A4545764(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_1A45457D0()
{
  result = qword_1EB13D110;
  if (!qword_1EB13D110)
  {
    sub_1A45466A8(255, &unk_1EB13D118, sub_1A45416EC, sub_1A45416B0, MEMORY[0x1E697F960]);
    sub_1A45417A8();
    sub_1A44F1A58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13D110);
  }

  return result;
}

unint64_t sub_1A45458DC(double a1)
{
  result = qword_1EB1234B0;
  if (!qword_1EB1234B0)
  {
    sub_1A454462C(255, a1);
    sub_1A453F1F8(&qword_1EB123968, sub_1A45446C0, sub_1A425D1A8);
    sub_1A3D6D4B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1234B0);
  }

  return result;
}

void sub_1A4545994(uint64_t a1)
{
  if (!qword_1EB13D130)
  {
    sub_1A454516C(255);
    sub_1A4546660(&qword_1EB13D0E8, sub_1A454516C, MEMORY[0x1E6981F48]);
    v1 = sub_1A524BDA4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13D130);
    }
  }
}

void sub_1A4545AE0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t), double a4)
{
  if (!*a2)
  {
    sub_1A4545B88(255, &qword_1EB125960, &unk_1A5493E04);
    v8 = v7;
    sub_1A4545B88(255, &qword_1EB13C120, &unk_1A5493EAC);
    v10 = a3(a1, v8, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_1A4545B88(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    sub_1A3C36888();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v5)
    {
      atomic_store(OpaqueTypeMetadata2, a2);
    }
  }
}

void sub_1A4545BFC(uint64_t a1)
{
  if (!qword_1EB125530)
  {
    v2 = type metadata accessor for PhotosPreviewableCollectionPlaceholder(255);
    v3 = sub_1A4546660(&qword_1EB12A9A0, type metadata accessor for PhotosPreviewableCollectionPlaceholder, &protocol conformance descriptor for PhotosPreviewableCollectionPlaceholder);
    v6[0] = MEMORY[0x1E69E6158];
    v6[1] = v2;
    v6[2] = MEMORY[0x1E69E6168];
    v6[3] = v3;
    v4 = type metadata accessor for LemonadeInlineStoryPlayerView(a1, v6);
    if (!v5)
    {
      atomic_store(v4, &qword_1EB125530);
    }
  }
}

unint64_t sub_1A4545CAC()
{
  result = qword_1EB13D158;
  if (!qword_1EB13D158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13D158);
  }

  return result;
}

void sub_1A4545D00(uint64_t a1)
{
  if (!qword_1EB13D160)
  {
    v2 = sub_1A5244174();
    v3 = sub_1A4546660(&unk_1EB13D168, MEMORY[0x1E69C29D0], &protocol conformance descriptor for PhotosMockAlbum);
    v5 = type metadata accessor for LemonadeMockObservableCollectionBookmark(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1EB13D160);
    }
  }
}

void sub_1A4545D94(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1A4545DE4@<X0>(uint64_t (*a1)(void, double)@<X0>, void (*a2)(uint64_t, char *, double)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = v4;
  v10 = sub_1A5249234();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1(0, v12);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v23 - v17;
  a2(v8, &v23 - v17, v16);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = a3(0);
    return (*(*(v19 - 8) + 32))(a4, v18, v19);
  }

  else
  {
    v21 = sub_1A524D254();
    v22 = sub_1A524A014();
    sub_1A5246DF4(v21, &dword_1A3C1C000, v22, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();

    return (*(v11 + 8))(v14, v10);
  }
}

void sub_1A4545FE0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1A4546044(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  sub_1A453C49C(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_1A45460B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A454611C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_1A453C49C(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1A4546178(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1A45461D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    v6 = sub_1A52483B4();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1A4546244(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A45462AC(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  sub_1A453AFD4(0, a3, a4, a5);
  (*(*(v7 - 8) + 32))(a2, a1, v7);
  return a2;
}

uint64_t sub_1A454631C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A4546384(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1A45463E4(double a1)
{
  result = qword_1EB13D1B8;
  if (!qword_1EB13D1B8)
  {
    sub_1A45464B0(255, &qword_1EB13D1C0, MEMORY[0x1E697F960], a1);
    sub_1A44B2678();
    sub_1A4546660(&qword_1EB128FE0, MEMORY[0x1E69C2928], MEMORY[0x1E69C2920]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13D1B8);
  }

  return result;
}

void sub_1A45464B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t), double a4)
{
  if (!*a2)
  {
    sub_1A4545AE0(255, &unk_1EB13D140, MEMORY[0x1E697F960], a4);
    v8 = v7;
    v9 = sub_1A5243EC4();
    v10 = a3(a1, v8, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_1A454653C()
{
  result = qword_1EB1228C8;
  if (!qword_1EB1228C8)
  {
    sub_1A45466A8(255, &qword_1EB1228C0, sub_1A4545BFC, MEMORY[0x1E69C2928], MEMORY[0x1E697F960]);
    sub_1A4546660(&qword_1EB125540, sub_1A4545BFC, &protocol conformance descriptor for LemonadeInlineStoryPlayerView<A, B>);
    sub_1A4546660(&qword_1EB128FE0, MEMORY[0x1E69C2928], MEMORY[0x1E69C2920]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1228C8);
  }

  return result;
}

uint64_t sub_1A4546660(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1A45466A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

uint64_t sub_1A4546738@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t (*a4)(void)@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t *a7@<X8>)
{
  *a7 = swift_getKeyPath();
  sub_1A45484B4(0, &unk_1EB128A60, MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v15 = type metadata accessor for LemonadeSheetContent(0, a5, a6, v14);
  v16 = (a7 + *(v15 + 40));
  result = a4();
  *v16 = a1;
  v16[1] = a2;
  *(a7 + *(v15 + 44)) = a3;
  return result;
}

uint64_t sub_1A4546828@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v4 = *(a1 + 16);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v55 = v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v54 = v51 - v8;
  sub_1A4546E88(255);
  v10 = v9;
  v11 = *(a1 + 24);
  sub_1A4546F3C(255);
  v13 = v12;
  v14 = sub_1A4547040(&qword_1EB13D1E8, sub_1A4546F3C, MEMORY[0x1E697BEF0]);
  v64 = v13;
  v65 = v14;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v64 = v4;
  v65 = v10;
  v66 = v11;
  v67 = OpaqueTypeConformance2;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v64 = v4;
  v65 = v10;
  v59 = v11;
  v66 = v11;
  v67 = OpaqueTypeConformance2;
  v17 = swift_getOpaqueTypeConformance2();
  v18 = sub_1A3D5F9DC();
  v19 = MEMORY[0x1E69E6158];
  v64 = OpaqueTypeMetadata2;
  v65 = MEMORY[0x1E69E6158];
  v66 = v17;
  v67 = v18;
  swift_getOpaqueTypeMetadata2();
  v20 = sub_1A5249754();
  v64 = OpaqueTypeMetadata2;
  v65 = v19;
  v66 = v17;
  v67 = v18;
  v21 = v2;
  v62 = swift_getOpaqueTypeConformance2();
  v63 = v17;
  WitnessTable = swift_getWitnessTable();
  v53 = v20;
  v51[1] = WitnessTable;
  v23 = sub_1A5248484();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = v51 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = v51 - v28;
  v30 = sub_1A52498B4();
  v52 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v32 = v51 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_1A5249754();
  v56 = *(v33 - 8);
  v57 = v33;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v37 = v51 - v36;
  if (*(v21 + *(v34 + 44)) == 1)
  {
    v38 = sub_1A5249824();
    v55 = v30;
    MEMORY[0x1EEE9AC00](v38);
    v39 = v59;
    v51[-4] = v4;
    v51[-3] = v39;
    v51[-2] = v21;
    v51[-1] = v32;
    sub_1A5248474();
    v54 = swift_getWitnessTable();
    v40 = *(v24 + 16);
    v40(v29, v26, v23);
    v41 = *(v24 + 8);
    v41(v26, v23);
    v40(v26, v29, v23);
    v42 = v59;
    sub_1A3DF4798(v26, v23, v4, v54, v59);
    v41(v26, v23);
    v41(v29, v23);
    (*(v52 + 8))(v32, v55);
  }

  else
  {
    v43 = *(v5 + 16);
    v44 = v54;
    v43(v54, v21 + *(v34 + 36), v4, v35);
    v45 = v55;
    (v43)(v55, v44, v4);
    v46 = swift_getWitnessTable();
    v42 = v59;
    sub_1A3DF4890(v45, v23, v4, v46, v59);
    v47 = *(v5 + 8);
    v47(v45, v4);
    v47(v44, v4);
  }

  v60 = swift_getWitnessTable();
  v61 = v42;
  v48 = v57;
  swift_getWitnessTable();
  v49 = v56;
  (*(v56 + 16))(v58, v37, v48);
  return (*(v49 + 8))(v37, v48);
}

void sub_1A4546E88(uint64_t a1)
{
  if (!qword_1EB13D1C8)
  {
    sub_1A4546F3C(255);
    sub_1A4547040(&qword_1EB13D1E8, sub_1A4546F3C, MEMORY[0x1E697BEF0]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13D1C8);
    }
  }
}

void sub_1A4546F3C(uint64_t a1)
{
  if (!qword_1EB13D1D0)
  {
    sub_1A4546FDC(255);
    sub_1A4547040(&qword_1EB13D1E0, sub_1A4546FDC, MEMORY[0x1E697D680]);
    v1 = sub_1A5247F34();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13D1D0);
    }
  }
}

void sub_1A4546FDC(uint64_t a1)
{
  if (!qword_1EB13D1D8)
  {
    sub_1A3E352FC(255);
    sub_1A3E4509C();
    v1 = sub_1A524B764();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13D1D8);
    }
  }
}

uint64_t sub_1A4547040(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A4547088@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v35 = a1;
  v36 = a2;
  v37 = a5;
  sub_1A4546E88(255);
  v8 = v7;
  sub_1A4546F3C(255);
  sub_1A4547040(&qword_1EB13D1E8, sub_1A4546F3C, MEMORY[0x1E697BEF0]);
  v44 = a3;
  v45 = v8;
  v27[1] = v8;
  v46 = a4;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v31 = OpaqueTypeConformance2;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v34 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v30 = v27 - v10;
  v44 = a3;
  v45 = v8;
  v46 = a4;
  v11 = swift_getOpaqueTypeConformance2();
  v29 = v11;
  v33 = sub_1A3D5F9DC();
  v44 = OpaqueTypeMetadata2;
  v45 = MEMORY[0x1E69E6158];
  v46 = v11;
  OpaqueTypeConformance2 = v33;
  v32 = MEMORY[0x1E697CFD8];
  swift_getOpaqueTypeMetadata2();
  v12 = sub_1A5249754();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v28 = v27 - v17;
  v19 = type metadata accessor for LemonadeSheetContent(0, a3, a4, v18);
  v38 = a3;
  v39 = a4;
  v20 = v35;
  v40 = v36;
  v41 = v35;
  swift_checkMetadataState();
  v21 = v30;
  sub_1A524B0E4();
  v22 = v29;
  sub_1A4547AF8(*(v20 + *(v19 + 40)), *(v20 + *(v19 + 40) + 8), OpaqueTypeMetadata2, v29, v15);
  (*(v34 + 8))(v21, OpaqueTypeMetadata2);
  v44 = OpaqueTypeMetadata2;
  v45 = MEMORY[0x1E69E6158];
  v46 = v22;
  OpaqueTypeConformance2 = v33;
  v42 = swift_getOpaqueTypeConformance2();
  v43 = v22;
  swift_getWitnessTable();
  v23 = *(v13 + 16);
  v24 = v28;
  v23(v28, v15, v12);
  v25 = *(v13 + 8);
  v25(v15, v12);
  v23(v37, v24, v12);
  return (v25)(v24, v12);
}

uint64_t sub_1A4547470@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v21[1] = a5;
  v9 = sub_1A52498B4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4546F3C(0);
  v14 = v13;
  v15 = *(v13 - 8);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v12, a1, v9, v16);
  v21[4] = a3;
  v21[5] = a4;
  v21[6] = a2;
  sub_1A4546FDC(0);
  sub_1A4547040(&qword_1EB13D1E0, sub_1A4546FDC, MEMORY[0x1E697D680]);
  sub_1A5247F24();
  v19 = sub_1A4547040(&qword_1EB13D1E8, sub_1A4546F3C, MEMORY[0x1E697BEF0]);
  MEMORY[0x1A5904CD0](v18, v14, v19);
  return (*(v15 + 8))(v18, v14);
}

uint64_t sub_1A45476A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for LemonadeSheetContent(0, a2, a3, a4);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v15 - v10;
  (*(v8 + 16))(&v15 - v10, a1, v7, v9);
  v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  (*(v8 + 32))(v13 + v12, v11, v7);
  sub_1A3E352FC(0);
  sub_1A3E4509C();
  return sub_1A524B704();
}

uint64_t sub_1A4547824(uint64_t a1)
{
  v2 = sub_1A5249234();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A45484B4(0, &unk_1EB128A60, MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v16 - v7;
  v9 = sub_1A5248284();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E87388(a1, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v10 + 32))(v12, v8, v9);
  }

  else
  {
    v13 = sub_1A524D254();
    v14 = sub_1A524A014();
    sub_1A5246DF4(v13, &dword_1A3C1C000, v14, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v2);
  }

  sub_1A5248274();
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_1A4547A9C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1A524B544();
  v3 = sub_1A524A264();
  result = swift_getKeyPath();
  *a1 = v2;
  a1[1] = result;
  a1[2] = v3;
  return result;
}

uint64_t sub_1A4547AF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v39 = a5;
  v37 = *(a3 - 8);
  OpaqueTypeConformance2 = a1;
  MEMORY[0x1EEE9AC00](a1);
  v36 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v36 - v10;
  v12 = sub_1A3D5F9DC();
  v13 = MEMORY[0x1E69E6158];
  v46 = a3;
  v47 = MEMORY[0x1E69E6158];
  v48 = a4;
  v49 = v12;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v15 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v36 - v19;
  v21 = sub_1A5249754();
  v41 = *(v21 - 8);
  v42 = v21;
  v22 = MEMORY[0x1EEE9AC00](v21);
  v43 = &v36 - v23;
  if (a2)
  {
    v46 = OpaqueTypeConformance2;
    v47 = a2;
    sub_1A524ABB4();
    v46 = a3;
    v47 = v13;
    v48 = a4;
    v49 = v12;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v40 = v12;
    v24 = *(v15 + 16);
    v24(v20, v17, OpaqueTypeMetadata2);
    v25 = *(v15 + 8);
    v25(v17, OpaqueTypeMetadata2);
    v24(v17, v20, OpaqueTypeMetadata2);
    v12 = v40;
    sub_1A3DF4798(v17, OpaqueTypeMetadata2, a3, OpaqueTypeConformance2, a4);
    v25(v17, OpaqueTypeMetadata2);
    v25(v20, OpaqueTypeMetadata2);
    v26 = MEMORY[0x1E69E6158];
  }

  else
  {
    v27 = v37;
    v28 = *(v37 + 16);
    v28(v11, v40, a3, v22);
    v29 = v36;
    (v28)(v36, v11, a3);
    v26 = MEMORY[0x1E69E6158];
    v46 = a3;
    v47 = MEMORY[0x1E69E6158];
    v48 = a4;
    v49 = v12;
    v30 = swift_getOpaqueTypeConformance2();
    sub_1A3DF4890(v29, OpaqueTypeMetadata2, a3, v30, a4);
    v31 = *(v27 + 8);
    v31(v29, a3);
    v31(v11, a3);
  }

  v46 = a3;
  v47 = v26;
  v48 = a4;
  v49 = v12;
  v44 = swift_getOpaqueTypeConformance2();
  v45 = a4;
  v32 = v42;
  swift_getWitnessTable();
  v33 = v41;
  v34 = v43;
  (*(v41 + 16))(v39, v43, v32);
  return (*(v33 + 8))(v34, v32);
}

void sub_1A4547FC0(uint64_t a1)
{
  sub_1A45484B4(319, &qword_1EB124730, MEMORY[0x1E697DCC0]);
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      sub_1A405D488(319, &qword_1EB126FA0, MEMORY[0x1E69E6158]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1A4548094(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(*(sub_1A5248284() - 8) + 64);
  v7 = 8;
  v8 = *(*(a3 + 16) - 8);
  if (v6 > 8)
  {
    v7 = v6;
  }

  v9 = *(v8 + 84);
  v10 = *(v8 + 80);
  v11 = *(v8 + 64);
  if (v9 <= 0x7FFFFFFE)
  {
    v12 = 2147483646;
  }

  else
  {
    v12 = *(v8 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = v7 + v10 + 1;
  v14 = v11 + 7;
  if (v12 >= a2)
  {
    goto LABEL_30;
  }

  v15 = ((v14 + (v13 & ~v10)) & 0xFFFFFFFFFFFFFFF8) + 17;
  if (v15 <= 3)
  {
    v16 = ((a2 - v12 + 255) >> 8) + 1;
  }

  else
  {
    v16 = 2;
  }

  if (v16 >= 0x10000)
  {
    v17 = 4;
  }

  else
  {
    v17 = 2;
  }

  if (v16 < 0x100)
  {
    v17 = 1;
  }

  if (v16 >= 2)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  if (v18 > 1)
  {
    if (v18 == 2)
    {
      v19 = *&a1[v15];
      if (!*&a1[v15])
      {
        goto LABEL_30;
      }
    }

    else
    {
      v19 = *&a1[v15];
      if (!v19)
      {
        goto LABEL_30;
      }
    }

LABEL_26:
    v21 = (v19 - 1) << (8 * v15);
    if (v15 <= 3)
    {
      v22 = *a1;
    }

    else
    {
      v21 = 0;
      v22 = *a1;
    }

    return v12 + (v22 | v21) + 1;
  }

  if (v18)
  {
    v19 = a1[v15];
    if (a1[v15])
    {
      goto LABEL_26;
    }
  }

LABEL_30:
  v23 = &a1[v13] & ~v10;
  if (v9 < 0x7FFFFFFE)
  {
    v25 = *(((v14 + v23) & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v25 >= 0xFFFFFFFF)
    {
      LODWORD(v25) = -1;
    }

    if ((v25 + 1) >= 2)
    {
      return v25;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v24 = *(*(*(a3 + 16) - 8) + 48);

    return v24(v23);
  }
}

void sub_1A4548278(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(*(sub_1A5248284() - 8) + 64);
  if (v8 <= 8)
  {
    v9 = 8;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(*(a4 + 16) - 8);
  v11 = *(v10 + 84);
  v12 = *(v10 + 80);
  if (v11 <= 0x7FFFFFFE)
  {
    v13 = 2147483646;
  }

  else
  {
    v13 = *(v10 + 84);
  }

  v14 = v9 + v12 + 1;
  v15 = *(v10 + 64) + 7;
  v16 = ((v15 + (v14 & ~v12)) & 0xFFFFFFFFFFFFFFF8) + 17;
  if (v13 >= a3)
  {
    v19 = 0;
    if (v13 >= a2)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (v16 <= 3)
    {
      v17 = ((a3 - v13 + 255) >> 8) + 1;
    }

    else
    {
      v17 = 2;
    }

    if (v17 >= 0x10000)
    {
      v18 = 4;
    }

    else
    {
      v18 = 2;
    }

    if (v17 < 0x100)
    {
      v18 = 1;
    }

    if (v17 >= 2)
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    if (v13 >= a2)
    {
LABEL_20:
      if (v19 > 1)
      {
        if (v19 != 2)
        {
          *&a1[v16] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_35;
        }

        *&a1[v16] = 0;
      }

      else if (v19)
      {
        a1[v16] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_35;
      }

      if (!a2)
      {
        return;
      }

LABEL_35:
      v22 = &a1[v14] & ~v12;
      if (v11 < 0x7FFFFFFE)
      {
        v24 = ((v15 + v22) & 0xFFFFFFFFFFFFFFF8);
        if (a2 > 0x7FFFFFFE)
        {
          *v24 = 0;
          v24[1] = 0;
          *v24 = a2 - 0x7FFFFFFF;
        }

        else
        {
          v24[1] = a2;
        }
      }

      else
      {
        v23 = *(v10 + 56);

        v23(v22, a2);
      }

      return;
    }
  }

  v20 = ~v13 + a2;
  bzero(a1, v16);
  if (v16 <= 3)
  {
    v21 = (v20 >> 8) + 1;
  }

  else
  {
    v21 = 1;
  }

  if (v16 <= 3)
  {
    *a1 = v20;
    if (v19 > 1)
    {
LABEL_30:
      if (v19 == 2)
      {
        *&a1[v16] = v21;
      }

      else
      {
        *&a1[v16] = v21;
      }

      return;
    }
  }

  else
  {
    *a1 = v20;
    if (v19 > 1)
    {
      goto LABEL_30;
    }
  }

  if (v19)
  {
    a1[v16] = v21;
  }
}

void sub_1A45484B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1A5248284();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1A454852C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(type metadata accessor for LemonadeSheetContent(0, *(v4 + 16), *(v4 + 24), a4) - 8);
  v6 = v4 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return sub_1A4547824(v6);
}

uint64_t sub_1A4548590()
{
  v0 = sub_1A5240BA4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A5241284();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1A524C624();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1A5240BB4();
  __swift_allocate_value_buffer(v6, qword_1EB1C5E18);
  __swift_project_value_buffer(v6, qword_1EB1C5E18);
  sub_1A524C5B4();
  sub_1A5241244();
  (*(v1 + 104))(v3, *MEMORY[0x1E6968DF0], v0);
  return sub_1A5240BC4();
}

uint64_t (*static CreateAssetsIntent.title.modify(uint64_t a1, double a2))(uint64_t a1)
{
  if (qword_1EB1C5E10 != -1)
  {
    swift_once();
  }

  v2 = sub_1A5240BB4();
  __swift_project_value_buffer(v2, qword_1EB1C5E18);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_1A4548880@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB1C5E10 != -1)
  {
    swift_once();
  }

  v3 = sub_1A5240BB4();
  v4 = __swift_project_value_buffer(v3, qword_1EB1C5E18);
  swift_beginAccess();
  return (*(*(v3 - 8) + 16))(a1, v4, v3);
}

uint64_t sub_1A4548940(uint64_t a1, double a2)
{
  if (qword_1EB1C5E10 != -1)
  {
    swift_once();
  }

  v3 = sub_1A5240BB4();
  v4 = __swift_project_value_buffer(v3, qword_1EB1C5E18);
  swift_beginAccess();
  (*(*(v3 - 8) + 24))(v4, a1, v3);
  return swift_endAccess();
}

uint64_t static CreateAssetsIntent.parameterSummary.getter()
{
  sub_1A454AF24(0, &qword_1EB13D1F0, MEMORY[0x1E695A4A8]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1A454AF24(0, &qword_1EB13D200, MEMORY[0x1E695A4A0]);
  MEMORY[0x1EEE9AC00](v1);
  sub_1A4548BCC();
  sub_1A5240314();
  sub_1A5240304();
  swift_getKeyPath();
  sub_1A4548C44(0);
  sub_1A52402F4();

  sub_1A5240304();
  sub_1A5240324();
  return sub_1A52402E4();
}

unint64_t sub_1A4548BCC()
{
  result = qword_1EB13D1F8;
  if (!qword_1EB13D1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13D1F8);
  }

  return result;
}

void sub_1A4548C44(uint64_t a1)
{
  if (!qword_1EB13D208)
  {
    sub_1A4548CA4(255);
    v1 = sub_1A524ED44();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13D208);
    }
  }
}

void sub_1A4548CA4(uint64_t a1)
{
  if (!qword_1EB13D210)
  {
    sub_1A45493B0(255, &qword_1EB13D218, MEMORY[0x1E6959ED8], MEMORY[0x1E69E62F8]);
    sub_1A4548D38();
    v1 = sub_1A5240044();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13D210);
    }
  }
}

unint64_t sub_1A4548D38()
{
  result = qword_1EB13D220;
  if (!qword_1EB13D220)
  {
    sub_1A45493B0(255, &qword_1EB13D218, MEMORY[0x1E6959ED8], MEMORY[0x1E69E62F8]);
    sub_1A454AD30(&qword_1EB13D228, MEMORY[0x1E6959ED8], MEMORY[0x1E6959ED0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13D220);
  }

  return result;
}

uint64_t CreateAssetsIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v31 = a1;
  v1 = sub_1A5240334();
  v29 = *(v1 - 8);
  v30 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v28 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = MEMORY[0x1E69E6720];
  sub_1A45493B0(0, &qword_1EB1260E8, MEMORY[0x1E6959F70], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v27 = &v22 - v5;
  sub_1A45493B0(0, &qword_1EB12B008, MEMORY[0x1E6968E10], v3);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v25 = &v22 - v7;
  v8 = sub_1A5240BA4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1A5241284();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v13 = sub_1A524C624();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v23 = sub_1A5240BB4();
  v14 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v24 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4548CA4(0);
  v26 = v16;
  sub_1A524C5B4();
  sub_1A5241244();
  v17 = *MEMORY[0x1E6968DF0];
  v18 = *(v9 + 104);
  v18(v11, v17, v8);
  sub_1A5240BC4();
  sub_1A524C5B4();
  sub_1A5241244();
  v18(v11, v17, v8);
  v19 = v25;
  sub_1A5240BC4();
  (*(v14 + 56))(v19, 0, 1, v23);
  v32 = 0;
  sub_1A45493B0(0, &qword_1EB1202D0, MEMORY[0x1E69E8450], MEMORY[0x1E69E6F90]);
  sub_1A5246D14();
  *(swift_allocObject() + 16) = xmmword_1A52FC9F0;
  sub_1A5246CC4();
  sub_1A5246CD4();
  v20 = sub_1A523FDB4();
  (*(*(v20 - 8) + 56))(v27, 1, 1, v20);
  (*(v29 + 104))(v28, *MEMORY[0x1E695A500], v30);
  result = sub_1A523FFD4();
  *v31 = result;
  return result;
}

void sub_1A45493B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t CreateAssetsIntent.perform()(uint64_t a1)
{
  v3 = *v1;
  v2[4] = a1;
  v2[5] = v3;
  sub_1A524CC54();
  v2[6] = sub_1A524CC44();
  v5 = sub_1A524CBC4();
  v2[7] = v5;
  v2[8] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1A45494B0, v5, v4);
}

uint64_t sub_1A45494B0()
{
  v0[2] = v0[5];
  sub_1A523FF44();
  v1 = *(v0[3] + 16);

  v2 = swift_task_alloc();
  v0[9] = v2;
  sub_1A4548BCC();
  *v2 = v0;
  v2[1] = sub_1A3DB3750;
  v3 = v0[4];

  return AppIntent.px_performWithLoggingAndAnalytics(intentName:category:count:_:)(v3, 0, 0, 0, 0, v1, 0, &unk_1A5346CA8);
}

uint64_t sub_1A45495F0(uint64_t a1, uint64_t a2)
{
  v2[9] = a1;
  v2[10] = a2;
  sub_1A524CC54();
  v2[11] = sub_1A524CC44();
  v4 = sub_1A524CBC4();
  v2[12] = v4;
  v2[13] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1A4549688, v4, v3);
}

uint64_t sub_1A4549688()
{
  v1 = v0[10];
  sub_1A523FF44();
  v2 = v0[6];
  v0[14] = v2;
  v0[7] = v1;
  sub_1A4548BCC();
  v3 = AppIntent.px_intentName.getter(&type metadata for CreateAssetsIntent);
  v5 = v4;
  v0[15] = v4;
  v6 = swift_task_alloc();
  v0[16] = v6;
  *v6 = v0;
  v6[1] = sub_1A4549770;

  return sub_1A4549AC8((v0 + 2), v2, v3, v5);
}

uint64_t sub_1A4549770(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 136) = v1;

  if (v1)
  {
    v5 = v4[12];
    v6 = v4[13];
    v7 = sub_1A45499C8;
  }

  else
  {
    v4[18] = a1;
    v5 = v4[12];
    v6 = v4[13];
    v7 = sub_1A45498B4;
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t sub_1A45498B4()
{
  v1 = v0[18];

  v2 = v0[2];
  v3 = v0[3];
  v0[8] = v1;
  v0[4] = v2;
  v0[5] = v3;
  sub_1A3DB4E34(0, &qword_1EB12EEB8, &type metadata for AssetEntity, MEMORY[0x1E69E62F8]);
  sub_1A3F57F0C();
  sub_1A454AE30();
  sub_1A523FDC4();

  v4 = v0[1];

  return v4();
}

uint64_t sub_1A45499C8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A4549A2C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1A3D60150;

  return sub_1A45495F0(a1, v1);
}

uint64_t sub_1A4549AC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  v5 = sub_1A5246F24();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  sub_1A524CC54();
  v4[10] = sub_1A524CC44();
  v7 = sub_1A524CBC4();
  v4[11] = v7;
  v4[12] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1A4549BC0, v7, v6);
}

uint64_t sub_1A4549BC0()
{
  v2 = v0[5];
  v1 = v0[6];
  v0[2] = 0;
  v3 = swift_task_alloc();
  v0[13] = v3;
  v3[2] = v0 + 2;
  v3[3] = v2;
  v3[4] = v1;
  v4 = swift_task_alloc();
  v0[14] = v4;
  *v4 = v0;
  v4[1] = sub_1A4549C9C;
  v5 = v0[4];

  return sub_1A489A508(v5, &unk_1A5346CC0, v3);
}

uint64_t sub_1A4549C9C()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = *(v2 + 88);
    v4 = *(v2 + 96);
    v5 = sub_1A454A004;
  }

  else
  {

    v3 = *(v2 + 88);
    v4 = *(v2 + 96);
    v5 = sub_1A4549DB8;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

void sub_1A4549DB8()
{

  if (*(v0 + 16))
  {
    v1 = [*(v0 + 16) importedAssets];
    if (v1)
    {
      v3 = *(v0 + 64);
      v2 = *(v0 + 72);
      v4 = *(v0 + 56);
      v5 = static AssetEntity.entities(for:)(v1);
      PXAppIntentsDebugDescription(for:)(v5);
      v6 = sub_1A3CB648C();
      (*(v3 + 16))(v2, v6, v4);
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }
  }

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A454A004()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A454A084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_1A5246F24();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  sub_1A524CC54();
  v4[9] = sub_1A524CC44();
  v7 = sub_1A524CBC4();
  v4[10] = v7;
  v4[11] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1A454A17C, v7, v6);
}

void sub_1A454A17C(__n128 a1)
{
  v6 = v1;
  v3 = v1[7];
  v2 = v1[8];
  v4 = v1[6];
  sub_1A48995FC(a1);
  v5 = sub_1A3CB648C();
  (*(v3 + 16))(v2, v5, v4);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A454A36C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 104) = a1;
  *(v4 + 112) = v1;

  v5 = *(v3 + 88);
  v6 = *(v3 + 80);
  if (v1)
  {
    v7 = sub_1A454A764;
  }

  else
  {
    v7 = sub_1A454A4B0;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1A454A4B0()
{
  v1 = v0[13];
  v2 = v0[3];
  v3 = objc_allocWithZone(PXImportFilesAction);
  sub_1A5240E64();
  v4 = v1;
  v5 = sub_1A524CA14();
  v6 = [v3 initWithPhotoLibrary:v4 fileURLs:v5 assetCollection:0];
  v0[15] = v6;

  v7 = *v2;
  *v2 = v6;
  v8 = v6;

  v9 = swift_task_alloc();
  v0[16] = v9;
  *v9 = v0;
  v9[1] = sub_1A454A5D0;
  v10 = v0[4];
  v11 = v0[5];

  return sub_1A4899AD4(v6, v10, v11);
}

uint64_t sub_1A454A5D0()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = *(v2 + 80);
    v4 = *(v2 + 88);
    v5 = sub_1A454A7D0;
  }

  else
  {

    v3 = *(v2 + 80);
    v4 = *(v2 + 88);
    v5 = sub_1A454A6EC;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1A454A6EC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A454A764()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A454A7D0()
{
  v1 = *(v0 + 104);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1A454A84C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1A3CA8098;

  return sub_1A454A084(a1, v4, v5, v6);
}

void (*CreateAssetsIntent.files.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1A523FF34();
  return sub_1A3DB3FF0;
}

uint64_t sub_1A454A9A4(uint64_t a1, uint64_t a2)
{
  sub_1A454AF24(0, &qword_1EB13D1F0, MEMORY[0x1E695A4A8]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1A454AF24(0, &qword_1EB13D200, MEMORY[0x1E695A4A0]);
  MEMORY[0x1EEE9AC00](v3);
  sub_1A5240314();
  sub_1A5240304();
  swift_getKeyPath();
  sub_1A4548C44(0);
  sub_1A52402F4();

  sub_1A5240304();
  sub_1A5240324();
  return sub_1A52402E4();
}

uint64_t sub_1A454AB60(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3D60150;

  return CreateAssetsIntent.perform()(a1);
}

uint64_t sub_1A454ABFC(uint64_t a1)
{
  v2 = sub_1A4548BCC();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

unint64_t sub_1A454AC3C()
{
  result = qword_1EB13D230;
  if (!qword_1EB13D230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13D230);
  }

  return result;
}

unint64_t sub_1A454AC94()
{
  result = qword_1EB13D238;
  if (!qword_1EB13D238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13D238);
  }

  return result;
}

uint64_t sub_1A454AD30(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1A454AD78(uint64_t a1)
{
  if (!qword_1EB13D248)
  {
    sub_1A3DB4E34(255, &qword_1EB12EEB8, &type metadata for AssetEntity, MEMORY[0x1E69E62F8]);
    sub_1A3F57F0C();
    sub_1A454AE30();
    v1 = sub_1A52402B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13D248);
    }
  }
}

unint64_t sub_1A454AE30()
{
  result = qword_1EB13D250;
  if (!qword_1EB13D250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13D250);
  }

  return result;
}

unint64_t sub_1A454AEB0()
{
  result = qword_1EB13D258;
  if (!qword_1EB13D258)
  {
    sub_1A454AF24(255, &unk_1EB13D260, MEMORY[0x1E695A488]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13D258);
  }

  return result;
}

void sub_1A454AF24(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1A4548BCC();
    v7 = a3(a1, &type metadata for CreateAssetsIntent, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1A454AFA8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = sub_1A524DF24();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1A454B004@<X0>(uint64_t *a1@<X8>)
{
  sub_1A4554CD8(0, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v7 - v3;
  type metadata accessor for PhotosBatchedSearchStateModel(0);
  v5 = type metadata accessor for PhotosSearchResults(0);
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  result = sub_1A4A2CC24(v4);
  *a1 = result;
  return result;
}

uint64_t sub_1A454B0FC()
{
  v1 = MEMORY[0x1E69E6720];
  sub_1A4554CD8(0, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v22[-v3 - 8];
  v5 = type metadata accessor for PhotosSearchResults(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v22[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v9 = type metadata accessor for PhotosSearchResultsGridView(0);
  sub_1A455280C(v0 + *(v9 + 28), v4, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, v1);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1A3C2C9F8(v4, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720], sub_1A4554CD8);
    return 0;
  }

  sub_1A4552A08(v4, v8, type metadata accessor for PhotosSearchResults);
  sub_1A3C451FC(v0 + *(v9 + 32), v22);
  v11 = v23;
  result = sub_1A3C2CE9C(v22);
  if (v11)
  {
LABEL_4:
    v10 = 0;
LABEL_5:
    sub_1A454C114(v8, type metadata accessor for PhotosSearchResults);
    return v10;
  }

  v13 = 0;
  v14 = *&v8[*(v5 + 28)];
  v15 = 1 << *(v14 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(v14 + 64);
  v18 = (v15 + 63) >> 6;
  while (v17)
  {
    v19 = v13;
LABEL_16:
    v20 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    if (*(*(*(v14 + 56) + ((v19 << 9) | (8 * v20))) + 16))
    {
      v10 = 1;
      goto LABEL_5;
    }
  }

  while (1)
  {
    v19 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v19 >= v18)
    {
      goto LABEL_4;
    }

    v17 = *(v14 + 64 + 8 * v19);
    ++v13;
    if (v17)
    {
      v13 = v19;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A454B3D4()
{
  v1 = sub_1A5249234();
  v71 = *(v1 - 8);
  v72 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v70 = &v59[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_1A5249A94();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v62 = &v59[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A3DD0DCC(0);
  v7 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v68 = &v59[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v59[-v10];
  sub_1A3DC7D88(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v59[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v15);
  v69 = &v59[-v16];
  MEMORY[0x1EEE9AC00](v17);
  v67 = &v59[-v18];
  MEMORY[0x1EEE9AC00](v19);
  v77 = &v59[-v20];
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v59[-v22];
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v59[-v25];
  v75 = type metadata accessor for PhotosSearchResultsGridView(0);
  v76 = v0;
  sub_1A3DC7F98(v26);
  v27 = v4[13];
  v65 = *MEMORY[0x1E697FF40];
  v64 = v27;
  v27(v23);
  v63 = v4[7];
  v63(v23, 0, 1, v3);
  v66 = v7;
  v28 = *(v7 + 48);
  sub_1A45529A0(v26, v11, sub_1A3DC7D88);
  sub_1A45529A0(v23, &v11[v28], sub_1A3DC7D88);
  v74 = v4;
  v29 = v4[6];
  if (v29(v11, 1, v3) == 1)
  {
    v73 = v29;
    sub_1A454C114(v23, sub_1A3DC7D88);
    sub_1A454C114(v26, sub_1A3DC7D88);
    if (v73(&v11[v28], 1, v3) != 1)
    {
      v30 = v76;
LABEL_14:
      v31 = v75;
LABEL_15:
      sub_1A454C114(v11, sub_1A3DD0DCC);
      goto LABEL_16;
    }

    v61 = v14;
    sub_1A454C114(v11, sub_1A3DC7D88);
    v31 = v75;
    v30 = v76;
LABEL_8:
    v26 = v67;
    sub_1A3DC7F98(v67);
    v35 = v69;
    v64(v69, v65, v3);
    v36 = v35;
    v63(v35, 0, 1, v3);
    v37 = *(v66 + 48);
    v11 = v68;
    sub_1A45529A0(v26, v68, sub_1A3DC7D88);
    sub_1A45529A0(v35, &v11[v37], sub_1A3DC7D88);
    v38 = v73;
    if (v73(v11, 1, v3) == 1)
    {
      sub_1A454C114(v35, sub_1A3DC7D88);
      sub_1A454C114(v26, sub_1A3DC7D88);
      if (v38(&v11[v37], 1, v3) == 1)
      {
        sub_1A454C114(v11, sub_1A3DC7D88);
LABEL_25:
        v54 = v30 + *(v31 + 92);
        v55 = *v54;
        if (*(v54 + 8) == 1)
        {
          v80 = v55 & 1;
        }

        else
        {

          v56 = sub_1A524D254();
          v57 = sub_1A524A014();
          sub_1A5246DF4(v56, &dword_1A3C1C000, v57, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

          v58 = v70;
          sub_1A5249224();
          swift_getAtKeyPath();
          sub_1A3C53AEC(v55, 0);
          (*(v71 + 8))(v58, v72);
          LOBYTE(v55) = v80;
        }

        v79 = v55 & 1;
        v78 = 1;
        v45 = !static LemonadeRootViewOrientation.== infix(_:_:)(&v79, &v78);
        v46 = 9;
        v47 = 13;
        goto LABEL_20;
      }

      goto LABEL_15;
    }

    v39 = v61;
    sub_1A45529A0(v11, v61, sub_1A3DC7D88);
    if (v38(&v11[v37], 1, v3) == 1)
    {
      v32 = v39;
      v23 = v36;
      goto LABEL_13;
    }

    v49 = v74;
    v50 = v62;
    (v74[4])(v62, &v11[v37], v3);
    sub_1A4553284(&qword_1EB127B70, MEMORY[0x1E697FF50], MEMORY[0x1E697FF60]);
    v51 = v39;
    v52 = sub_1A524C594();
    v53 = v49[1];
    v53(v50, v3);
    sub_1A454C114(v69, sub_1A3DC7D88);
    sub_1A454C114(v26, sub_1A3DC7D88);
    v53(v51, v3);
    v30 = v76;
    sub_1A454C114(v11, sub_1A3DC7D88);
    if (v52)
    {
      goto LABEL_25;
    }

    goto LABEL_16;
  }

  sub_1A45529A0(v11, v77, sub_1A3DC7D88);
  if (v29(&v11[v28], 1, v3) == 1)
  {
    v30 = v76;
    v32 = v77;
LABEL_13:
    sub_1A454C114(v23, sub_1A3DC7D88);
    sub_1A454C114(v26, sub_1A3DC7D88);
    (v74[1])(v32, v3);
    goto LABEL_14;
  }

  v73 = v29;
  v61 = v14;
  v33 = v62;
  (v74[4])(v62, &v11[v28], v3);
  sub_1A4553284(&qword_1EB127B70, MEMORY[0x1E697FF50], MEMORY[0x1E697FF60]);
  v60 = sub_1A524C594();
  v34 = v74[1];
  v34(v33, v3);
  sub_1A454C114(v23, sub_1A3DC7D88);
  sub_1A454C114(v26, sub_1A3DC7D88);
  v34(v77, v3);
  sub_1A454C114(v11, sub_1A3DC7D88);
  v31 = v75;
  v30 = v76;
  if (v60)
  {
    goto LABEL_8;
  }

LABEL_16:
  v40 = v30 + *(v31 + 92);
  v41 = *v40;
  if (*(v40 + 8) == 1)
  {
    v83 = v41 & 1;
  }

  else
  {

    v42 = sub_1A524D254();
    v43 = sub_1A524A014();
    sub_1A5246DF4(v42, &dword_1A3C1C000, v43, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    v44 = v70;
    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3C53AEC(v41, 0);
    (*(v71 + 8))(v44, v72);
    LOBYTE(v41) = v83;
  }

  v82 = v41 & 1;
  v81 = 1;
  v45 = !static LemonadeRootViewOrientation.== infix(_:_:)(&v82, &v81);
  v46 = 6;
  v47 = 9;
LABEL_20:
  if (v45)
  {
    return v46;
  }

  else
  {
    return v47;
  }
}