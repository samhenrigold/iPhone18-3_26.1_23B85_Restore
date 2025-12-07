void *sub_26CCE51EC(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_25:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v25 = -1 << *(a4 + 32);
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(a4 + 48) + 40 * (v17 | (v12 << 6));
      v20 = *(v18 + 8);
      v19 = *(v18 + 16);
      v21 = *(v18 + 24);
      v22 = *(v18 + 32);
      *v11 = *v18;
      *(v11 + 8) = v20;
      *(v11 + 16) = v19;
      *(v11 + 24) = v21;
      *(v11 + 32) = v22;
      if (v14 == v10)
      {

        goto LABEL_23;
      }

      v11 += 40;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= v12 + 1)
    {
      v24 = v12 + 1;
    }

    else
    {
      v24 = v13;
    }

    v12 = v24 - 1;
    v10 = result;
LABEL_23:
    v7 = v25;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_26CCE5374(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_26CCE5468;

  return v5(v2 + 32);
}

uint64_t sub_26CCE5468()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

double sub_26CCE557C(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  return result;
}

uint64_t sub_26CCE559C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_26CC37110;

  return sub_26CCDB99C(a1, v4, v5, v6);
}

uint64_t sub_26CCE5658(uint64_t a1)
{
  v3 = *(sub_26CD3A20C() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_26CCDC3F4(a1, v4, v5);
}

uint64_t sub_26CCE56CC(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

unint64_t sub_26CCE57F8()
{
  result = qword_2804BD878;
  if (!qword_2804BD878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD878);
  }

  return result;
}

void sub_26CCE5874(uint64_t a1)
{
  sub_26CCE606C(319, qword_280BBA950, type metadata accessor for TimedMetadataVendor.PlaybackState);
  if (v1 <= 0x3F)
  {
    sub_26CD3A44C();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t dispatch thunk of TimedMetadataVendor.loadTimedMetadataFetchParams()(uint64_t a1)
{
  v6 = (*(*v1 + 512) + **(*v1 + 512));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_26CC246B8;

  return v6(a1);
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26CCE5EC0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 88))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_26CCE5F1C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 88) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 88) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void sub_26CCE5FBC(uint64_t a1)
{
  sub_26CCE606C(319, &qword_280BBB690, MEMORY[0x277CC9578]);
  if (v1 <= 0x3F)
  {
    sub_26CCE60C0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_26CCE606C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_26CD3AADC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_26CCE60C0()
{
  if (!qword_280BB9BF8)
  {
    v0 = sub_26CD3AADC();
    if (!v1)
    {
      atomic_store(v0, &qword_280BB9BF8);
    }
  }
}

uint64_t sub_26CCE6110(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26CC37110;

  return sub_26CCE5374(a1, v4);
}

uint64_t sub_26CCE61C8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26CC246B8;

  return sub_26CCE5374(a1, v4);
}

uint64_t sub_26CCE6280(uint64_t *a1)
{
  v1 = a1[1];
  v2 = a1[3];
  v6 = *a1;
  v7 = a1[2];
  v10 = a1[5];
  v3 = a1[7];
  v8 = a1[6];
  type metadata accessor for TimedMetadataFetcher(0);
  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v4 + 64) = 0u;
  *(v4 + 48) = 0u;
  *(v4 + 32) = 0u;
  *(v4 + 96) = 0;
  *(v4 + 104) = 0;

  sub_26CD3A43C();
  swift_beginAccess();
  *(v4 + 32) = v6;
  *(v4 + 40) = v1;
  swift_beginAccess();
  *(v4 + 48) = v7;
  *(v4 + 56) = v2;
  swift_beginAccess();
  *(v4 + 64) = v9;
  *(v4 + 72) = v10;
  *(v4 + 80) = v8;
  *(v4 + 88) = v3;
  return v4;
}

unint64_t sub_26CCE6400()
{
  result = qword_2804BD8A0;
  if (!qword_2804BD8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD8A0);
  }

  return result;
}

uint64_t sub_26CCE6454(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_26CC37110;

  return sub_26CCDCBB0(a1, v4, v5, v7, v6);
}

uint64_t objectdestroy_8Tm_0()
{
  v1 = sub_26CD3A20C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_26CCE6608()
{
  v1 = *(sub_26CD3A20C() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_26CCDC7FC(v2, v3);
}

uint64_t sub_26CCE666C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26CCE66BC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26CC37110;

  return sub_26CC6D5E4(a1, v4);
}

uint64_t sub_26CCE6774(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t TimedMetadataFetcher.__allocating_init(programID:adamID:contentID:playablePassThrough:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = swift_allocObject();
  *(v14 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v14 + 64) = 0u;
  *(v14 + 48) = 0u;
  *(v14 + 32) = 0u;
  *(v14 + 96) = 0;
  *(v14 + 104) = 0;
  sub_26CD3A43C();
  swift_beginAccess();
  *(v14 + 32) = a1;
  *(v14 + 40) = a2;
  swift_beginAccess();
  *(v14 + 48) = a3;
  *(v14 + 56) = a4;
  swift_beginAccess();
  *(v14 + 64) = a5;
  *(v14 + 72) = a6;
  *(v14 + 80) = a7;
  *(v14 + 88) = a8;
  return v14;
}

uint64_t TimedMetadataFetcher.FetcherError.hashValue.getter()
{
  sub_26CD3B0FC();
  MEMORY[0x26D6ADAF0](0);
  return sub_26CD3B13C();
}

uint64_t sub_26CCE69E8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_26CCE6A48(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_26CCE6ADC;
}

void sub_26CCE6ADC(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 24) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

double sub_26CCE6B60(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 32) = v3;
  *(v4 + 40) = v2;

  return result;
}

uint64_t sub_26CCE6BC0()
{
  swift_beginAccess();
  v1 = *(v0 + 32);

  return v1;
}

double sub_26CCE6C0C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;

  return result;
}

double sub_26CCE6CB0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 48) = v3;
  *(v4 + 56) = v2;

  return result;
}

uint64_t sub_26CCE6D10()
{
  swift_beginAccess();
  v1 = *(v0 + 48);

  return v1;
}

double sub_26CCE6D5C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;

  return result;
}

double sub_26CCE6E00(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 64) = v3;
  *(v4 + 72) = v2;

  return result;
}

uint64_t sub_26CCE6E60()
{
  swift_beginAccess();
  v1 = *(v0 + 64);

  return v1;
}

double sub_26CCE6EAC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;

  return result;
}

uint64_t sub_26CCE6F50(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 104) = v2;
}

uint64_t sub_26CCE6FE8(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 104) = a1;
}

uint64_t TimedMetadataFetcher.init(programID:adamID:contentID:playablePassThrough:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v8 + 64) = 0u;
  *(v8 + 48) = 0u;
  *(v8 + 32) = 0u;
  *(v8 + 96) = 0;
  *(v8 + 104) = 0;
  sub_26CD3A43C();
  swift_beginAccess();
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;

  swift_beginAccess();
  *(v8 + 48) = a3;
  *(v8 + 56) = a4;

  swift_beginAccess();
  *(v8 + 64) = a5;
  *(v8 + 72) = a6;

  *(v8 + 80) = a7;
  *(v8 + 88) = a8;
  return v8;
}

uint64_t sub_26CCE71CC(uint64_t a1, unint64_t a2, double a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA00, &qword_26CD3D510);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v19 - v8;
  v10 = *(v3 + 96);
  if (v10)
  {

    v11 = sub_26CD3A42C();
    v12 = sub_26CD3A99C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_26CC14000, v11, v12, "Fetching TimedMetadata is already in progress", v13, 2u);
      MEMORY[0x26D6AE340](v13, -1, -1);
    }
  }

  else
  {
    v14 = sub_26CD3A86C();
    (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
    sub_26CD3A84C();
    sub_26CCC706C(a1, a2);

    v15 = sub_26CD3A83C();
    v16 = swift_allocObject();
    v17 = MEMORY[0x277D85700];
    *(v16 + 16) = v15;
    *(v16 + 24) = v17;
    *(v16 + 32) = a1;
    *(v16 + 40) = a2;
    *(v16 + 48) = v3;
    *(v16 + 56) = a3;
    v10 = sub_26CD282D8(0, 0, v9, &unk_26CD479C8, v16);
    *(v3 + 96) = v10;
  }

  return v10;
}

uint64_t sub_26CCE73C8(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 416) = a2;
  *(v7 + 400) = a6;
  *(v7 + 408) = a7;
  *(v7 + 384) = a1;
  *(v7 + 392) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA00, &qword_26CD3D510);
  *(v7 + 424) = swift_task_alloc();
  *(v7 + 432) = sub_26CD3A84C();
  *(v7 + 440) = sub_26CD3A83C();
  v8 = sub_26CD3A80C();
  *(v7 + 448) = v8;
  *(v7 + 456) = v9;

  return MEMORY[0x2822009F8](sub_26CCE74D8, v8, v9);
}

uint64_t sub_26CCE74D8()
{
  v59 = v0;
  v58[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 400);
  v2 = *(v0 + 408);
  if (v1 >> 60 == 15)
  {
    v3 = v2[11];
    if (v3)
    {
      v4 = v2[10];
      v5 = HIBYTE(v3) & 0xF;
      if ((v3 & 0x2000000000000000) == 0)
      {
        v5 = v4 & 0xFFFFFFFFFFFFLL;
      }

      if (v5)
      {
        swift_bridgeObjectRetain_n();
        v6 = sub_26CD3A42C();
        v7 = sub_26CD3A99C();

        if (os_log_type_enabled(v6, v7))
        {
          v8 = swift_slowAlloc();
          v9 = swift_slowAlloc();
          v58[0] = v9;
          *v8 = 136315138;
          *(v8 + 4) = sub_26CCF188C(v4, v3, v58);
          _os_log_impl(&dword_26CC14000, v6, v7, "Fetching timedMetadata with playablePassThrough: %s", v8, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v9);
          MEMORY[0x26D6AE340](v9, -1, -1);
          MEMORY[0x26D6AE340](v8, -1, -1);
        }

        v10 = [objc_opt_self() sharedConnection];
        if (v10)
        {
          v13 = v10;
          v14 = [v10 effectiveBoolValueForSetting_];

          *(v0 + 128) = v4;
          *(v0 + 136) = v3;
          *(v0 + 144) = 0u;
          *(v0 + 160) = 0u;
          v15 = *(v0 + 144);
          *(v0 + 184) = *(v0 + 128);
          *(v0 + 568) = 0;
          *(v0 + 176) = 0;
          *(v0 + 177) = v14 != 2;
          *(v0 + 200) = v15;
          *(v0 + 216) = *(v0 + 160);
          *(v0 + 232) = *(v0 + 176);
          v16 = swift_task_alloc();
          *(v0 + 464) = v16;
          *v16 = v0;
          v16[1] = sub_26CCE7E18;
LABEL_10:

          return TimedMetadataRequest.response()();
        }

        __break(1u);
LABEL_49:
        __break(1u);
        return MEMORY[0x2822009F8](v10, v11, v12);
      }
    }

    swift_beginAccess();
    v30 = v2[7];
    if (v30)
    {
      v31 = v2[6];
      v32 = *(v0 + 408);
      swift_beginAccess();
      v33 = *(v32 + 40);
      if (v33)
      {
        v34 = *(v32 + 32);
        v35 = *(v0 + 408);
        swift_beginAccess();
        v36 = *(v35 + 72);
        if (v36)
        {
          v37 = HIBYTE(v30) & 0xF;
          if ((v30 & 0x2000000000000000) == 0)
          {
            v37 = v31 & 0xFFFFFFFFFFFFLL;
          }

          if (v37)
          {
            v38 = HIBYTE(v33) & 0xF;
            if ((v33 & 0x2000000000000000) == 0)
            {
              v38 = v34 & 0xFFFFFFFFFFFFLL;
            }

            if (v38)
            {
              v39 = HIBYTE(v36) & 0xF;
              if ((v36 & 0x2000000000000000) == 0)
              {
                v39 = *(v35 + 64) & 0xFFFFFFFFFFFFLL;
              }

              if (v39)
              {
                v57 = *(v35 + 64);
                swift_bridgeObjectRetain_n();
                swift_bridgeObjectRetain_n();
                swift_bridgeObjectRetain_n();
                v40 = sub_26CD3A42C();
                v41 = sub_26CD3A99C();

                if (os_log_type_enabled(v40, v41))
                {
                  v42 = swift_slowAlloc();
                  v43 = swift_slowAlloc();
                  v58[0] = v43;
                  *v42 = 136315650;
                  *(v42 + 4) = sub_26CCF188C(v31, v30, v58);
                  *(v42 + 12) = 2080;
                  *(v42 + 14) = sub_26CCF188C(v34, v33, v58);
                  *(v42 + 22) = 2080;
                  *(v42 + 24) = sub_26CCF188C(v57, v36, v58);
                  _os_log_impl(&dword_26CC14000, v40, v41, "Fetching timedMetadata with adamId: %s, programId: %s, contentID: %s", v42, 0x20u);
                  swift_arrayDestroy();
                  MEMORY[0x26D6AE340](v43, -1, -1);
                  MEMORY[0x26D6AE340](v42, -1, -1);
                }

                v10 = [objc_opt_self() sharedConnection];
                if (v10)
                {
                  v44 = v10;
                  v45 = [v10 effectiveBoolValueForSetting_];

                  *(v0 + 16) = v31;
                  *(v0 + 24) = v30;
                  *(v0 + 32) = v57;
                  *(v0 + 40) = v36;
                  v46 = *(v0 + 32);
                  *(v0 + 72) = *(v0 + 16);
                  *(v0 + 560) = 1;
                  *(v0 + 48) = v34;
                  *(v0 + 56) = v33;
                  *(v0 + 64) = 1;
                  *(v0 + 65) = v45 != 2;
                  *(v0 + 88) = v46;
                  *(v0 + 104) = *(v0 + 48);
                  *(v0 + 120) = *(v0 + 64);
                  v47 = swift_task_alloc();
                  *(v0 + 496) = v47;
                  *v47 = v0;
                  v47[1] = sub_26CCE8268;
                  goto LABEL_10;
                }

                goto LABEL_49;
              }
            }
          }
        }
      }
    }

    v48 = sub_26CD3A42C();
    v49 = sub_26CD3A98C();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&dword_26CC14000, v48, v49, "Unable to fetch timed metadata because of missing params", v50, 2u);
      MEMORY[0x26D6AE340](v50, -1, -1);
    }

    sub_26CCECDC8();
    swift_allocError();
    swift_willThrow();
  }

  else
  {
    sub_26CCAE954(*(v0 + 392), v1);
    v18 = sub_26CD3A42C();
    v19 = sub_26CD3A99C();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_26CC14000, v18, v19, "Parsing provided existing data; not retrieving", v20, 2u);
      MEMORY[0x26D6AE340](v20, -1, -1);
    }

    v22 = *(v0 + 392);
    v21 = *(v0 + 400);
    *(v0 + 536) = v21;
    *(v0 + 528) = v22;
    v23 = objc_opt_self();
    v24 = sub_26CD3A09C();
    *(v0 + 368) = 0;
    v25 = [v23 JSONObjectWithData:v24 options:2 error:v0 + 368];

    v26 = *(v0 + 368);
    if (v25)
    {
      v27 = v26;
      sub_26CD3AB3C();
      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD828, &qword_26CD479D0);
      if (swift_dynamicCast())
      {
        v28 = *(v0 + 416);
        v29 = *(v0 + 376);
        type metadata accessor for TimedMetadataParser();
        *(v0 + 544) = sub_26CCD0F3C(v29, v28);

        v10 = sub_26CCE86BC;
        v11 = 0;
        v12 = 0;

        return MEMORY[0x2822009F8](v10, v11, v12);
      }

      v52 = sub_26CD3A42C();
      v53 = sub_26CD3A99C();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        *v54 = 0;
        _os_log_impl(&dword_26CC14000, v52, v53, "Error parsing timed-metadata response", v54, 2u);
        MEMORY[0x26D6AE340](v54, -1, -1);
      }

      sub_26CC2E794();
      swift_allocError();
      *v55 = 3;
    }

    else
    {
      v51 = v26;

      sub_26CD39F8C();
    }

    swift_willThrow();
    sub_26CC18C50(v22, v21);
  }

  v56 = *(v0 + 8);

  return v56();
}

uint64_t sub_26CCE7E18(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 472) = v2;

  if (v2)
  {
    v7 = v6[56];
    v8 = v6[57];
    v9 = sub_26CCE89C0;
  }

  else
  {
    v6[60] = a2;
    v6[61] = a1;
    sub_26CCECE1C((v6 + 16));
    v7 = v6[56];
    v8 = v6[57];
    v9 = sub_26CCE7F7C;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_26CCE7F7C()
{
  v2 = *(v0 + 60);
  v1 = *(v0 + 61);
  v3 = *(v0 + 59);
  *(v0 + 67) = v2;
  *(v0 + 66) = v1;
  v4 = objc_opt_self();
  v5 = sub_26CD3A09C();
  v0[46] = 0.0;
  v6 = [v4 JSONObjectWithData:v5 options:2 error:v0 + 46];

  v7 = *(v0 + 46);
  if (!v6)
  {
    v11 = v7;

    sub_26CD39F8C();

LABEL_9:
    swift_willThrow();
    goto LABEL_10;
  }

  v8 = v7;
  sub_26CD3AB3C();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD828, &qword_26CD479D0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    v12 = sub_26CD3A42C();
    v13 = sub_26CD3A99C();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_26CC14000, v12, v13, "Error parsing timed-metadata response", v14, 2u);
      MEMORY[0x26D6AE340](v14, -1, -1);
    }

    sub_26CC2E794();
    swift_allocError();
    *v15 = 3;
    goto LABEL_9;
  }

  v9 = v0[52];
  v10 = *(v0 + 47);
  type metadata accessor for TimedMetadataParser();
  *(v0 + 68) = sub_26CCD0F3C(v10, v9);
  if (v3)
  {

LABEL_10:
    sub_26CC18C50(v1, v2);

    v16 = *(v0 + 1);

    return v16();
  }

  return MEMORY[0x2822009F8](sub_26CCE86BC, 0, 0);
}

uint64_t sub_26CCE8268(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 504) = v2;

  if (v2)
  {
    v7 = v6[56];
    v8 = v6[57];
    v9 = sub_26CCE8A60;
  }

  else
  {
    v6[64] = a2;
    v6[65] = a1;
    sub_26CCECE1C((v6 + 2));
    v7 = v6[56];
    v8 = v6[57];
    v9 = sub_26CCE83D0;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_26CCE83D0()
{
  v1 = *(v0 + 65);
  v2 = *(v0 + 63);
  v3 = *(v0 + 64);
  *(v0 + 67) = v3;
  *(v0 + 66) = v1;
  v4 = objc_opt_self();
  v5 = sub_26CD3A09C();
  v0[46] = 0.0;
  v6 = [v4 JSONObjectWithData:v5 options:2 error:v0 + 46];

  v7 = *(v0 + 46);
  if (!v6)
  {
    v11 = v7;

    sub_26CD39F8C();

LABEL_9:
    swift_willThrow();
    goto LABEL_10;
  }

  v8 = v7;
  sub_26CD3AB3C();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD828, &qword_26CD479D0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    v12 = sub_26CD3A42C();
    v13 = sub_26CD3A99C();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_26CC14000, v12, v13, "Error parsing timed-metadata response", v14, 2u);
      MEMORY[0x26D6AE340](v14, -1, -1);
    }

    sub_26CC2E794();
    swift_allocError();
    *v15 = 3;
    goto LABEL_9;
  }

  v9 = v0[52];
  v10 = *(v0 + 47);
  type metadata accessor for TimedMetadataParser();
  *(v0 + 68) = sub_26CCD0F3C(v10, v9);
  if (v2)
  {

LABEL_10:
    sub_26CC18C50(v1, v3);

    v16 = *(v0 + 1);

    return v16();
  }

  return MEMORY[0x2822009F8](sub_26CCE86BC, 0, 0);
}

uint64_t sub_26CCE86BC(uint64_t a1)
{
  *(v1 + 552) = sub_26CD3A83C();
  v3 = sub_26CD3A80C();

  return MEMORY[0x2822009F8](sub_26CCE877C, v3, v2);
}

uint64_t sub_26CCE877C()
{
  v1 = v0[68];
  v2 = v0[53];
  v3 = v0[51];

  swift_beginAccess();
  *(v3 + 104) = v1;

  v4 = sub_26CD3A86C();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);

  v5 = sub_26CD3A83C();
  v6 = swift_allocObject();
  v7 = MEMORY[0x277D85700];
  v6[2] = v5;
  v6[3] = v7;
  v6[4] = v3;
  v6[5] = v1;
  sub_26CCD5E38(0, 0, v2, &unk_26CD479E0, v6);

  v8 = v0[56];
  v9 = v0[57];

  return MEMORY[0x2822009F8](sub_26CCE88FC, v8, v9);
}

uint64_t sub_26CCE88FC()
{
  v1 = v0[68];
  v2 = v0[67];
  v3 = v0[66];
  v4 = v0[48];

  *v4 = v1;
  v4[1] = v3;
  v4[2] = v2;

  v5 = v0[1];

  return v5();
}

uint64_t sub_26CCE89C0()
{

  sub_26CCECE1C(v0 + 128);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26CCE8A60()
{

  sub_26CCECE1C(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26CCE8B00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA00, &qword_26CD3D510);
  v5[7] = swift_task_alloc();
  v5[8] = sub_26CD3A84C();
  v5[9] = sub_26CD3A83C();
  v7 = sub_26CD3A80C();
  v5[10] = v7;
  v5[11] = v6;

  return MEMORY[0x2822009F8](sub_26CCE8BD4, v7, v6);
}

uint64_t sub_26CCE8BD4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[12] = Strong;
  if (Strong)
  {
    v2 = *(v0[5] + 24);
    ObjectType = swift_getObjectType();
    v7 = (*(v2 + 16) + **(v2 + 16));
    v4 = swift_task_alloc();
    v0[13] = v4;
    *v4 = v0;
    v4[1] = sub_26CCE8D64;

    return v7(ObjectType, v2);
  }

  else
  {

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_26CCE8D64(char a1)
{
  v2 = *v1;
  *(*v1 + 112) = a1;

  swift_unknownObjectRelease();
  v3 = *(v2 + 88);
  v4 = *(v2 + 80);

  return MEMORY[0x2822009F8](sub_26CCE8EB0, v4, v3);
}

uint64_t sub_26CCE8EB0()
{
  v1 = *(v0 + 112);

  if (v1 == 1)
  {
    v2 = sub_26CD3A42C();
    v3 = sub_26CD3A99C();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_26CC14000, v2, v3, "Fetching songs playlist state", v4, 2u);
      MEMORY[0x26D6AE340](v4, -1, -1);
    }

    v5 = *(v0 + 56);
    v7 = *(v0 + 40);
    v6 = *(v0 + 48);

    v8 = sub_26CD3A86C();
    (*(*(v8 - 8) + 56))(v5, 1, 1, v8);

    v9 = sub_26CD3A83C();
    v10 = swift_allocObject();
    v11 = MEMORY[0x277D85700];
    v10[2] = v9;
    v10[3] = v11;
    v10[4] = v6;
    v10[5] = v7;
    sub_26CCD5E38(0, 0, v5, &unk_26CD479E8, v10);
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_26CCE9060(uint64_t a1, uint64_t a2, double a3)
{
  *(v4 + 56) = a2;
  *(v4 + 64) = v3;
  *(v4 + 48) = a1;
  *(v4 + 40) = a3;
  sub_26CD3A84C();
  *(v4 + 72) = sub_26CD3A83C();
  v6 = sub_26CD3A80C();
  *(v4 + 80) = v6;
  *(v4 + 88) = v5;

  return MEMORY[0x2822009F8](sub_26CCE9100, v6, v5);
}

uint64_t sub_26CCE9100()
{
  v1 = sub_26CCE71CC(*(v0 + 48), *(v0 + 56), *(v0 + 40));
  *(v0 + 96) = v1;
  v2 = swift_task_alloc();
  *(v0 + 104) = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD898, &unk_26CD47710);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC10, &unk_26CD3D4C0);
  *v2 = v0;
  v2[1] = sub_26CCE91F8;
  v5 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v0 + 16, v1, v3, v4, v5);
}

uint64_t sub_26CCE91F8()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  v3 = *(v2 + 88);
  v4 = *(v2 + 80);
  if (v0)
  {
    v5 = sub_26CCE93DC;
  }

  else
  {
    v5 = sub_26CCE9350;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_26CCE9350()
{
  v1 = v0[8];

  v3 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  *(v1 + 96) = 0;

  v5 = v0[1];

  return v5(v3, v2, v4);
}

uint64_t sub_26CCE93DC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26CCE9440(uint64_t a1)
{
  *(v2 + 456) = a1;
  *(v2 + 464) = v1;
  return MEMORY[0x2822009F8](sub_26CCE9460, 0, 0);
}

uint64_t sub_26CCE9460()
{
  v1 = *(v0 + 456);
  if (v1)
  {
    swift_beginAccess();
    v2 = *(v1 + 16);
    v3 = *(v2 + 16);

    v4 = MEMORY[0x277D84F90];
    if (v3)
    {
      v5 = 0;
      v6 = v2 + 32;
      while (v5 < *(v2 + 16))
      {
        sub_26CC19A84(v6, v0 + 272);
        sub_26CC19A84(v0 + 272, v0 + 312);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCAA0, &qword_26CD460E0);
        if (swift_dynamicCast())
        {
          v7 = *(v0 + 96);
          *(v0 + 208) = *(v0 + 80);
          *(v0 + 224) = v7;
          *(v0 + 240) = *(v0 + 112);
          *(v0 + 251) = *(v0 + 123);
          v8 = *(v0 + 32);
          *(v0 + 144) = *(v0 + 16);
          *(v0 + 160) = v8;
          v9 = *(v0 + 64);
          *(v0 + 176) = *(v0 + 48);
          *(v0 + 192) = v9;
          sub_26CCE57A0(v0 + 144);
          sub_26CC2524C((v0 + 272), v0 + 352);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_26CCEB2C0(0, *(v4 + 16) + 1, 1);
          }

          v11 = *(v4 + 16);
          v10 = *(v4 + 24);
          if (v11 >= v10 >> 1)
          {
            sub_26CCEB2C0((v10 > 1), v11 + 1, 1);
          }

          *(v4 + 16) = v11 + 1;
          sub_26CC2524C((v0 + 352), v4 + 40 * v11 + 32);
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_1((v0 + 272));
        }

        ++v5;
        v6 += 40;
        if (v3 == v5)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
      goto LABEL_30;
    }

LABEL_13:

    v12 = *(v4 + 16);
    if (v12)
    {
      v25 = MEMORY[0x277D84F90];
      sub_26CCEB1F8(0, v12, 0);
      v2 = v25;
      v13 = v4 + 32;
      do
      {
        sub_26CC19A84(v13, v0 + 392);
        v14 = *(v0 + 416);
        v15 = *(v0 + 424);
        __swift_project_boxed_opaque_existential_1((v0 + 392), v14);
        v16 = (*(v15 + 8))(v14, v15);
        v18 = v17;
        __swift_destroy_boxed_opaque_existential_1((v0 + 392));
        v20 = *(v25 + 16);
        v19 = *(v25 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_26CCEB1F8((v19 > 1), v20 + 1, 1);
        }

        *(v25 + 16) = v20 + 1;
        v21 = v25 + 16 * v20;
        *(v21 + 32) = v16;
        *(v21 + 40) = v18;
        v13 += 40;
        --v12;
      }

      while (v12);
    }

    else
    {

      v2 = MEMORY[0x277D84F90];
    }

    *(v0 + 472) = v2;
    if (*(v2 + 16))
    {
      if (qword_2804BBA18 == -1)
      {
LABEL_22:
        v22 = swift_task_alloc();
        *(v0 + 480) = v22;
        *v22 = v0;
        v22[1] = sub_26CCE9834;

        return sub_26CC59CD0(v2);
      }

LABEL_30:
      swift_once();
      goto LABEL_22;
    }
  }

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_26CCE9834(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[61] = a1;
  v4[62] = a2;
  v4[63] = v2;

  if (v2)
  {
    v5 = sub_26CCE9BF0;
  }

  else
  {
    v5 = sub_26CCE9974;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_26CCE9974()
{
  v12 = v0;
  v1 = v0[62];
  v2 = v0[63];
  v3 = v0[61];
  v4 = swift_task_alloc();
  *(v4 + 16) = v3;
  *(v4 + 24) = v1;
  sub_26CCEBF44(v1, sub_26CCEB2E0);
  v6 = v5;

  if (*(v6 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD8F8, &unk_26CD477D8);
    v7 = sub_26CD3AD6C();
  }

  else
  {
    v7 = MEMORY[0x277D84F98];
  }

  v11 = v7;
  sub_26CCEBAF0(v6, 1, &v11);
  if (v2)
  {

    return swift_unexpectedError();
  }

  else
  {
    v0[64] = v11;

    sub_26CD3A84C();
    v0[65] = sub_26CD3A83C();
    v10 = sub_26CD3A80C();

    return MEMORY[0x2822009F8](sub_26CCE9B04, v10, v9);
  }
}

uint64_t sub_26CCE9B04()
{
  v1 = *(v0 + 512);
  v2 = *(v0 + 456);

  sub_26CCEA590(v1, v2);

  return MEMORY[0x2822009F8](sub_26CCE9B90, 0, 0);
}

uint64_t sub_26CCE9B90()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26CCE9BF0()
{
  v1 = *(v0 + 504);
  v2 = v1;
  v3 = sub_26CD3A42C();
  v4 = sub_26CD3A98C();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 504);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_26CC14000, v3, v4, "Error fetching Music data: %@", v7, 0xCu);
    sub_26CC1B544(v8, &qword_2804BD8B8, &qword_26CD477D0);
    MEMORY[0x26D6AE340](v8, -1, -1);
    MEMORY[0x26D6AE340](v7, -1, -1);
  }

  else
  {
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_26CCE9D70(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA00, &qword_26CD3D510);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12 - v5;
  v7 = sub_26CD3A86C();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  sub_26CD3A84C();

  v8 = sub_26CD3A83C();
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D85700];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = a1;
  v9[5] = v2;
  sub_26CCD5E38(0, 0, v6, &unk_26CD477F0, v9);
}

uint64_t sub_26CCE9EA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  sub_26CD3A84C();
  v5[14] = sub_26CD3A83C();
  v7 = sub_26CD3A80C();
  v5[15] = v7;
  v5[16] = v6;

  return MEMORY[0x2822009F8](sub_26CCE9F38, v7, v6);
}

uint64_t sub_26CCE9F38()
{
  v1 = sub_26CCED4B8();
  v2 = 0;
  v3 = *(v1 + 2);
  v4 = MEMORY[0x277D84F90];
LABEL_2:
  v0[17] = v4;
  v5 = &v1[128 * v2 + 72];
  while (v3 != v2)
  {
    if (v2 >= *(v1 + 2))
    {
      __break(1u);
LABEL_20:
      swift_once();
LABEL_13:
      v12 = swift_task_alloc();
      v0[18] = v12;
      *v12 = v0;
      v12[1] = sub_26CCEA154;

      return sub_26CC5A38C((v0 + 2), v4);
    }

    v6 = v5 + 128;
    ++v2;
    v7 = *v5;
    v5 += 128;
    if (v7)
    {
      v8 = *(v6 - 17);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_26CCBE3BC(0, *(v4 + 2) + 1, 1, v4);
      }

      v10 = *(v4 + 2);
      v9 = *(v4 + 3);
      if (v10 >= v9 >> 1)
      {
        v4 = sub_26CCBE3BC((v9 > 1), v10 + 1, 1, v4);
      }

      *(v4 + 2) = v10 + 1;
      v11 = &v4[16 * v10];
      *(v11 + 4) = v8;
      *(v11 + 5) = v7;
      goto LABEL_2;
    }
  }

  if (*(v4 + 2))
  {
    if (qword_2804BBA18 != -1)
    {
      goto LABEL_20;
    }

    goto LABEL_13;
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_26CCEA154()
{
  v2 = *v1;
  *(*v1 + 152) = v0;

  v3 = *(v2 + 128);
  v4 = *(v2 + 120);
  if (v0)
  {
    v5 = sub_26CCEA420;
  }

  else
  {
    v5 = sub_26CCEA2AC;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_26CCEA2AC()
{

  v2 = v0[2];
  v1 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v6 = v0[6];
  v5 = v0[7];
  v7 = v0[8];
  if (v1)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {

    sub_26CCEFA7C(v9);
  }

  v10 = v0[13];
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v11 = *(v10 + 24);
    if (v1)
    {

      sub_26CC5C050(v2, v1, v4, v3, v6, v5, v7);
    }

    else
    {
      v2 = 0;
    }

    ObjectType = swift_getObjectType();
    (*(v11 + 8))(v2, v1, ObjectType, v11);
    swift_unknownObjectRelease();
  }

  else
  {
    v12.n128_f64[0] = sub_26CC5C050(v2, v1, v4, v3, v6, v5, v7);
  }

  v14 = v0[1];

  return v14(v12);
}

uint64_t sub_26CCEA420()
{
  v1 = *(v0 + 152);

  v2 = v1;
  v3 = sub_26CD3A42C();
  v4 = sub_26CD3A99C();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 152);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_26CC14000, v3, v4, "Error fetching songs playlist state: %@", v7, 0xCu);
    sub_26CC1B544(v8, &qword_2804BD8B8, &qword_26CD477D0);
    MEMORY[0x26D6AE340](v8, -1, -1);
    MEMORY[0x26D6AE340](v7, -1, -1);
  }

  else
  {
  }

  v11 = *(v0 + 8);

  return v11();
}

double sub_26CCEA590(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    swift_beginAccess();
    v4 = *(a2 + 16);
    v5 = *(v4 + 16);
    if (v5)
    {
      v6 = v4 + 32;

      v7 = &qword_2804BCAA0;
      v25 = a1;
      do
      {
        sub_26CC19A84(v6, v32);
        __swift_instantiateConcreteTypeFromMangledNameV2(v7, &qword_26CD460E0);
        if (swift_dynamicCast())
        {
          v28[4] = v30[4];
          v28[5] = v30[5];
          v29[0] = v31[0];
          *(v29 + 11) = *(v31 + 11);
          v28[0] = v30[0];
          v28[1] = v30[1];
          v28[2] = v30[2];
          v28[3] = v30[3];
          v12 = v30[0];
          if (*(a1 + 16) && (v13 = sub_26CC181C4(*&v28[0], *(&v28[0] + 1)), (v14 & 1) != 0))
          {
            v15 = *(a1 + 56) + 136 * v13;
            v33[0] = *v15;
            v16 = *(v15 + 64);
            v18 = *(v15 + 16);
            v17 = *(v15 + 32);
            v33[3] = *(v15 + 48);
            v33[4] = v16;
            v33[1] = v18;
            v33[2] = v17;
            v20 = *(v15 + 96);
            v19 = *(v15 + 112);
            v21 = *(v15 + 80);
            v34 = *(v15 + 128);
            v33[6] = v20;
            v33[7] = v19;
            v33[5] = v21;
            sub_26CC1B4DC(v33, v27, &qword_2804BD918, &unk_26CD479A0);

            sub_26CCF4354(v12, *(&v12 + 1), 1, a2, v33);

            sub_26CCE57A0(v28);
            sub_26CC1B544(v33, &qword_2804BD918, &unk_26CD479A0);
          }

          else
          {
            v22 = v7;
            sub_26CCECBE0(v28, v27);
            v23 = sub_26CD3A42C();
            v24 = sub_26CD3A98C();
            sub_26CCE57A0(v28);
            if (os_log_type_enabled(v23, v24))
            {
              v8 = swift_slowAlloc();
              v9 = swift_slowAlloc();
              v27[0] = v9;
              *v8 = 136315138;

              sub_26CCE57A0(v28);
              v10 = sub_26CCF188C(v12, *(&v12 + 1), v27);

              *(v8 + 4) = v10;
              _os_log_impl(&dword_26CC14000, v23, v24, "TimedMetadataManager: song data is missing for adamId: %s", v8, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v9);
              v11 = v9;
              a1 = v25;
              MEMORY[0x26D6AE340](v11, -1, -1);
              MEMORY[0x26D6AE340](v8, -1, -1);
            }

            else
            {

              sub_26CCE57A0(v28);
            }

            v7 = v22;
          }
        }

        v6 += 40;
        --v5;
      }

      while (v5);
    }
  }

  return result;
}

uint64_t sub_26CCEA8B4@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, void *a3@<X8>)
{
  sub_26CC19A84(a1, v70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCAA0, &qword_26CD460E0);
  if (swift_dynamicCast())
  {
    nullsub_1();
  }

  else
  {
    sub_26CCECC3C(&v88);
    v75 = v92;
    v76 = v93;
    *v77 = v94[0];
    *&v77[11] = *(v94 + 11);
    v71 = v88;
    v72 = v89;
    v73 = v90;
    v74 = v91;
  }

  v68[4] = v75;
  v68[5] = v76;
  v69[0] = *v77;
  *(v69 + 11) = *&v77[11];
  v68[0] = v71;
  v68[1] = v72;
  v68[2] = v73;
  v68[3] = v74;
  if (sub_26CC28EA8(v68) != 1)
  {
    v5 = a2[7];
    v94[0] = a2[6];
    v94[1] = v5;
    v95 = *(a2 + 16);
    v6 = a2[3];
    v90 = a2[2];
    v91 = v6;
    v7 = a2[5];
    v92 = a2[4];
    v93 = v7;
    v8 = a2[1];
    v88 = *a2;
    v89 = v8;
    if (sub_26CC28EA8(&v88) == 1)
    {
      v9 = 0;
      v10 = 0;
    }

    else
    {
      v9 = v88;
    }

    *&v73 = v9;
    *(&v73 + 1) = v10;
  }

  v66[4] = v75;
  v66[5] = v76;
  v67[0] = *v77;
  *(v67 + 11) = *&v77[11];
  v66[0] = v71;
  v66[1] = v72;
  v66[2] = v73;
  v66[3] = v74;
  if (sub_26CC28EA8(v66) != 1)
  {
    v11 = a2[7];
    v85[6] = a2[6];
    v86 = v11;
    v87 = *(a2 + 16);
    v12 = a2[3];
    v85[2] = a2[2];
    v85[3] = v12;
    v13 = a2[5];
    v85[4] = a2[4];
    v85[5] = v13;
    v14 = a2[1];
    v85[0] = *a2;
    v85[1] = v14;
    if (sub_26CC28EA8(v85) == 1)
    {
      v15 = 0;
      v16 = 0;
    }

    else
    {
      v15 = *(&v86 + 1);
    }

    *&v76 = v15;
    *(&v76 + 1) = v16;
  }

  v64[4] = v75;
  v64[5] = v76;
  v65[0] = *v77;
  *(v65 + 11) = *&v77[11];
  v64[0] = v71;
  v64[1] = v72;
  v64[2] = v73;
  v64[3] = v74;
  if (sub_26CC28EA8(v64) != 1)
  {
    v17 = a2[7];
    v83[2] = a2[6];
    v83[3] = v17;
    v84 = *(a2 + 16);
    v18 = a2[3];
    v82[2] = a2[2];
    v82[3] = v18;
    v19 = a2[5];
    v83[0] = a2[4];
    v83[1] = v19;
    v20 = a2[1];
    v82[0] = *a2;
    v82[1] = v20;
    if (sub_26CC28EA8(v82) == 1)
    {
      v21 = 0;
      v22 = 0;
    }

    else
    {
      v96 = *(v83 + 8);
      v22 = *&v83[1];
      v21 = *(&v83[0] + 1);
      sub_26CCECC58(&v96, v78);
    }

    *&v77[8] = v21;
    *&v77[16] = v22;
  }

  v62[4] = v75;
  v62[5] = v76;
  v63[0] = *v77;
  *(v63 + 11) = *&v77[11];
  v62[0] = v71;
  v62[1] = v72;
  v62[2] = v73;
  v62[3] = v74;
  if (sub_26CC28EA8(v62) != 1)
  {
    v23 = a2[7];
    v79 = a2[6];
    v80 = v23;
    v81 = *(a2 + 16);
    v24 = a2[3];
    v78[2] = a2[2];
    v78[3] = v24;
    v25 = a2[5];
    v78[4] = a2[4];
    v78[5] = v25;
    v26 = a2[1];
    v78[0] = *a2;
    v78[1] = v26;
    if (sub_26CC28EA8(v78) == 1)
    {
      v27 = 0;
      v28 = 0;
    }

    else
    {
      v27 = *(&v79 + 1);
    }

    *&v75 = v27;
    *(&v75 + 1) = v28;
  }

  v60[4] = v75;
  v60[5] = v76;
  v61[0] = *v77;
  *(v61 + 11) = *&v77[11];
  v60[0] = v71;
  v60[1] = v72;
  v60[2] = v73;
  v60[3] = v74;
  if (sub_26CC28EA8(v60) != 1)
  {
    v77[0] = 0;
  }

  v29 = sub_26CD3A42C();
  v30 = sub_26CD3A99C();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v43[0] = v32;
    *v31 = 136315138;
    swift_beginAccess();
    v57 = v75;
    v58 = v76;
    v59[0] = *v77;
    *(v59 + 11) = *&v77[11];
    v53 = v71;
    v54 = v72;
    v55 = v73;
    v56 = v74;
    v50 = v75;
    v51 = v76;
    v52[0] = *v77;
    *(v52 + 11) = *&v77[11];
    v46 = v71;
    v47 = v72;
    v48 = v73;
    v49 = v74;
    sub_26CC1B4DC(&v53, v44, &qword_2804BD870, &unk_26CD47430);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD870, &unk_26CD47430);
    v33 = sub_26CD3A5FC();
    v35 = sub_26CCF188C(v33, v34, v43);

    *(v31 + 4) = v35;
    _os_log_impl(&dword_26CC14000, v29, v30, "%s was hydrated successfully", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v32);
    MEMORY[0x26D6AE340](v32, -1, -1);
    MEMORY[0x26D6AE340](v31, -1, -1);
  }

  swift_beginAccess();
  v50 = v75;
  v51 = v76;
  v52[0] = *v77;
  *(v52 + 11) = *&v77[11];
  v46 = v71;
  v47 = v72;
  v48 = v73;
  v49 = v74;
  v53 = v71;
  v54 = v72;
  v55 = v73;
  v56 = v74;
  v57 = v75;
  v58 = v76;
  v59[0] = *v77;
  *(v59 + 11) = *&v77[11];
  if (sub_26CC28EA8(&v53) == 1)
  {
    v36 = 0;
    v37 = 0;
    v38 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  else
  {
    v36 = swift_allocObject();
    v39 = v58;
    v36[5] = v57;
    v36[6] = v39;
    v36[7] = v59[0];
    *(v36 + 123) = *(v59 + 11);
    v40 = v54;
    v36[1] = v53;
    v36[2] = v40;
    v41 = v56;
    v36[3] = v55;
    v36[4] = v41;
    v38 = &protocol witness table for TimedMetadata.SongEntity;
    v37 = &type metadata for TimedMetadata.SongEntity;
  }

  *a3 = v36;
  a3[3] = v37;
  a3[4] = v38;
  v44[4] = v75;
  v44[5] = v76;
  v45[0] = *v77;
  *(v45 + 11) = *&v77[11];
  v44[0] = v71;
  v44[1] = v72;
  v44[2] = v73;
  v44[3] = v74;
  sub_26CC1B4DC(&v46, v43, &qword_2804BD870, &unk_26CD47430);
  return sub_26CC1B544(v44, &qword_2804BD870, &unk_26CD47430);
}

char *TimedMetadataFetcher.deinit()
{
  sub_26CC7BC78(v0 + 16);

  v1 = OBJC_IVAR____TtC13TVAppServices20TimedMetadataFetcher_logger;
  v2 = sub_26CD3A44C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t TimedMetadataFetcher.__deallocating_deinit()
{
  TimedMetadataFetcher.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_26CCEAFB4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  if (a4[2] && (v7 = *(a5 + 16)) != 0)
  {
    v8 = a4[4];
    v9 = a4[5];
    v10 = (a5 + 32);
    while (1)
    {
      v11 = v10[7];
      v40 = v10[6];
      v41 = v11;
      v42 = *(v10 + 16);
      v12 = v10[1];
      v34 = *v10;
      v35 = v12;
      v13 = v10[3];
      v36 = v10[2];
      v37 = v13;
      v14 = v10[5];
      v38 = v10[4];
      v39 = v14;
      if (v34 == v8 && *(&v34 + 1) == v9)
      {
        break;
      }

      if (sub_26CD3AFDC())
      {
        break;
      }

      v10 = (v10 + 136);
      if (!--v7)
      {
        goto LABEL_8;
      }
    }

    v31 = v40;
    v32 = v41;
    v33 = v42;
    v27 = v36;
    v28 = v37;
    v29 = v38;
    v30 = v39;
    v25 = v34;
    v26 = v35;
    nullsub_1();
    v19 = v41;
    *(a1 + 96) = v40;
    *(a1 + 112) = v19;
    *(a1 + 128) = v33;
    v20 = v28;
    *(a1 + 32) = v27;
    *(a1 + 48) = v20;
    v21 = v30;
    *(a1 + 64) = v29;
    *(a1 + 80) = v21;
    v22 = v26;
    *a1 = v25;
    *(a1 + 16) = v22;
    sub_26CC5E7F4(&v34, v24);
  }

  else
  {
LABEL_8:
    sub_26CCECCD4(&v34);
    v15 = v41;
    *(a1 + 96) = v40;
    *(a1 + 112) = v15;
    *(a1 + 128) = v42;
    v16 = v37;
    *(a1 + 32) = v36;
    *(a1 + 48) = v16;
    v17 = v39;
    *(a1 + 64) = v38;
    *(a1 + 80) = v17;
    v18 = v35;
    *a1 = v34;
    *(a1 + 16) = v18;
  }

  return a2;
}

uint64_t sub_26CCEB124(uint64_t (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

void sub_26CCEB184(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(a1, a2, a3);
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

char *sub_26CCEB1F8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26CCEB328(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_26CCEB218(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26CCEB538(a1, a2, a3, *v3, &qword_2804BC630, &unk_26CD454C0, MEMORY[0x277CC8918]);
  *v3 = result;
  return result;
}

char *sub_26CCEB25C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26CCEB434(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_26CCEB27C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26CCEB538(a1, a2, a3, *v3, &qword_2804BD580, &qword_26CD46160, type metadata accessor for UpNextDelta.ContinuationContentMetadata);
  *v3 = result;
  return result;
}

void *sub_26CCEB2C0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26CCEB714(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_26CCEB2E8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26CCEB85C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_26CCEB308(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26CCEB9AC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_26CCEB328(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_26CCEB434(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD938, &unk_26CD479F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_26CCEB538(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void *sub_26CCEB714(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD508, &qword_26CD47B90);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCAA0, &qword_26CD460E0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_26CCEB85C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD928, &qword_26CD479B8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 152);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[19 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 152 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD920, &qword_26CD479B0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_26CCEB9AC(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC350, &unk_26CD40010);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC358, &unk_26CD454D0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_26CCEBAF0(uint64_t a1, char a2, void *a3)
{
  v72 = a3;
  v4 = 0;
  v5 = *(a1 + 16);
  v41 = a1 + 32;
  if (v5)
  {
    goto LABEL_3;
  }

LABEL_2:
  sub_26CCECCB4(&v52);
  v68 = v58;
  v69 = v59;
  v70 = v60;
  v71 = v61;
  v64 = v54;
  v65 = v55;
  v66 = v56;
  v67 = v57;
  v4 = v5;
  v62 = v52;
  v63 = v53;
  while (1)
  {
    v58 = v68;
    v59 = v69;
    v60 = v70;
    v61 = v71;
    v54 = v64;
    v55 = v65;
    v56 = v66;
    v57 = v67;
    v52 = v62;
    v53 = v63;
    if (sub_26CC28EA8(&v52) == 1)
    {

      return;
    }

    v15 = v5;
    v16 = *(&v62 + 1);
    v17 = v62;
    v49 = v69;
    v50 = v70;
    v51 = v71;
    v45 = v65;
    v46 = v66;
    v47 = v67;
    v48 = v68;
    v43 = v63;
    v44 = v64;
    v18 = *v72;
    v20 = sub_26CC181C4(v62, *(&v62 + 1));
    v21 = v18[2];
    v22 = (v19 & 1) == 0;
    v23 = v21 + v22;
    if (__OFADD__(v21, v22))
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      sub_26CD3B02C();
      __break(1u);
      goto LABEL_26;
    }

    v24 = v19;
    if (v18[3] < v23)
    {
      break;
    }

    if (a2)
    {
      if (v19)
      {
        goto LABEL_18;
      }
    }

    else
    {
      sub_26CD378A4();
      if (v24)
      {
        goto LABEL_18;
      }
    }

LABEL_14:
    v27 = *v72;
    v27[(v20 >> 6) + 8] |= 1 << v20;
    v28 = (v27[6] + 16 * v20);
    *v28 = v17;
    v28[1] = v16;
    v29 = v27[7] + 136 * v20;
    *v29 = v43;
    v30 = v44;
    v31 = v45;
    v32 = v47;
    *(v29 + 48) = v46;
    *(v29 + 64) = v32;
    *(v29 + 16) = v30;
    *(v29 + 32) = v31;
    v33 = v48;
    v34 = v49;
    v35 = v50;
    *(v29 + 128) = v51;
    *(v29 + 96) = v34;
    *(v29 + 112) = v35;
    *(v29 + 80) = v33;
    v36 = v27[2];
    v37 = __OFADD__(v36, 1);
    v38 = v36 + 1;
    if (v37)
    {
      goto LABEL_22;
    }

    v27[2] = v38;
    a2 = 1;
    v5 = v15;
    if (v4 == v15)
    {
      goto LABEL_2;
    }

LABEL_3:
    if ((v4 & 0x8000000000000000) != 0)
    {
      goto LABEL_23;
    }

    if (v4 >= *(a1 + 16))
    {
      goto LABEL_24;
    }

    v6 = (v41 + 152 * v4);
    v7 = v6[7];
    v8 = v6[5];
    v58 = v6[6];
    v59 = v7;
    v9 = v6[7];
    v60 = v6[8];
    v10 = v6[3];
    v11 = v6[1];
    v54 = v6[2];
    v55 = v10;
    v12 = v6[3];
    v13 = v6[5];
    v56 = v6[4];
    v57 = v13;
    v14 = v6[1];
    v52 = *v6;
    v53 = v14;
    v68 = v58;
    v69 = v9;
    v70 = v6[8];
    v64 = v54;
    v65 = v12;
    v66 = v56;
    v67 = v8;
    v61 = *(v6 + 18);
    v71 = *(v6 + 18);
    ++v4;
    v62 = v52;
    v63 = v11;
    nullsub_1();
    sub_26CC1B4DC(&v52, &v43, &qword_2804BD920, &qword_26CD479B0);
  }

  sub_26CD35B48(v23, a2 & 1);
  v25 = sub_26CC181C4(v17, v16);
  if ((v24 & 1) != (v26 & 1))
  {
    goto LABEL_25;
  }

  v20 = v25;
  if ((v24 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_18:
  v39 = swift_allocError();
  swift_willThrow();

  v40 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC10, &unk_26CD3D4C0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_26CC1B544(&v43, &qword_2804BD918, &unk_26CD479A0);

    return;
  }

LABEL_26:
  sub_26CD3AC6C();
  MEMORY[0x26D6AD060](0xD00000000000001BLL, 0x800000026CD517E0);
  sub_26CD3AD1C();
  MEMORY[0x26D6AD060](39, 0xE100000000000000);
  sub_26CD3AD2C();
  __break(1u);
}

void sub_26CCEBF44(uint64_t a1, uint64_t (*a2)(_OWORD *, uint64_t, uint64_t, uint64_t, __n128))
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = a1;
    v55 = MEMORY[0x277D84F90];
    sub_26CCEB2E8(0, v2, 0);
    v40 = v3 + 64;
    v41 = v55;
    v4 = sub_26CD3AB6C();
    if (v4 < 0 || (v5 = v4, v4 >= 1 << *(v3 + 32)))
    {
LABEL_25:
      __break(1u);
    }

    else
    {
      v56 = *(v3 + 36);
      v36 = v3 + 72;
      v37 = v2;
      v6 = 1;
      while (1)
      {
        v7 = v5 >> 6;
        if ((*(v40 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
        {
          break;
        }

        if (v56 != *(v3 + 36))
        {
          goto LABEL_27;
        }

        v39 = v6;
        v8 = (*(v3 + 48) + 16 * v5);
        v9 = *v8;
        v10 = v8[1];
        v11 = *(*(v3 + 56) + 8 * v5);

        v12 = (a2)(v43, v9, v10, v11);
        v13 = v3;
        v15 = v14;

        *&v42 = v12;
        *(&v42 + 1) = v15;
        v49 = v43[3];
        v50 = v43[4];
        v47 = v43[1];
        v48 = v43[2];
        v52 = v43[6];
        v53 = v43[7];
        v51 = v43[5];
        v45 = v42;
        v46 = v43[0];
        v54 = v44;
        v16 = v41;
        v18 = *(v41 + 16);
        v17 = *(v41 + 24);
        v55 = v41;
        if (v18 >= v17 >> 1)
        {
          sub_26CCEB2E8((v17 > 1), v18 + 1, 1);
          v16 = v55;
        }

        *(v16 + 16) = v18 + 1;
        v41 = v16;
        v19 = v16 + 152 * v18;
        v20 = v46;
        *(v19 + 32) = v45;
        *(v19 + 48) = v20;
        v21 = v47;
        v22 = v48;
        v23 = v50;
        *(v19 + 96) = v49;
        *(v19 + 112) = v23;
        *(v19 + 64) = v21;
        *(v19 + 80) = v22;
        v24 = v51;
        v25 = v52;
        v26 = v53;
        *(v19 + 176) = v54;
        *(v19 + 144) = v25;
        *(v19 + 160) = v26;
        *(v19 + 128) = v24;
        v27 = 1 << *(v13 + 32);
        if (v5 >= v27)
        {
          goto LABEL_28;
        }

        v28 = *(v40 + 8 * v7);
        if ((v28 & (1 << v5)) == 0)
        {
          goto LABEL_29;
        }

        v3 = v13;
        if (v56 != *(v13 + 36))
        {
          goto LABEL_30;
        }

        v29 = v28 & (-2 << (v5 & 0x3F));
        if (v29)
        {
          v5 = __clz(__rbit64(v29)) | v5 & 0x7FFFFFFFFFFFFFC0;
          v30 = v37;
        }

        else
        {
          v31 = v7 << 6;
          v32 = v7 + 1;
          v30 = v37;
          v33 = (v36 + 8 * v7);
          while (v32 < (v27 + 63) >> 6)
          {
            v35 = *v33++;
            v34 = v35;
            v31 += 64;
            ++v32;
            if (v35)
            {
              sub_26CC2FADC(v5, v56, 0);
              v5 = __clz(__rbit64(v34)) + v31;
              goto LABEL_19;
            }
          }

          sub_26CC2FADC(v5, v56, 0);
          v5 = v27;
        }

LABEL_19:
        if (v39 == v30)
        {
          return;
        }

        if ((v5 & 0x8000000000000000) == 0)
        {
          v6 = v39 + 1;
          if (v5 < 1 << *(v3 + 32))
          {
            continue;
          }
        }

        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
  }
}

uint64_t sub_26CCEC278(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_26CC37110;

  return sub_26CCE9EA0(a1, v4, v5, v7, v6);
}

unint64_t sub_26CCEC33C()
{
  result = qword_2804BD900;
  if (!qword_2804BD900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD900);
  }

  return result;
}

uint64_t dispatch thunk of TimedMetadataFetcherDelegate.isUserSubscribedToMusic()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 16) + **(a2 + 16));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26CC16C10;

  return v7(a1, a2);
}

uint64_t type metadata accessor for TimedMetadataFetcher(uint64_t a1)
{
  result = qword_2804BD908;
  if (!qword_2804BD908)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26CCEC510(uint64_t a1, double a2)
{
  result = sub_26CD3A44C();
  if (v3 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t dispatch thunk of TimedMetadataFetcher.fetchTimedMetadata(startTimeOffset:existingData:)(uint64_t a1, uint64_t a2, double a3)
{
  v11 = (*(*v3 + 312) + **(*v3 + 312));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_26CCEC968;
  v9.n128_f64[0] = a3;

  return v11(a1, a2, v9);
}

uint64_t sub_26CCEC968(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *v3;

  v7 = *(v9 + 8);

  return v7(a1, a2, a3);
}

uint64_t dispatch thunk of TimedMetadataFetcher.hydrateMetadata(timedMetadata:)(uint64_t a1)
{
  v6 = (*(*v1 + 320) + **(*v1 + 320));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_26CC37110;

  return v6(a1);
}

double sub_26CCECC3C(_OWORD *a1)
{
  result = 0.0;
  *(a1 + 107) = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

double sub_26CCECCB4(uint64_t a1)
{
  *(a1 + 144) = 0;
  result = 0.0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

double sub_26CCECCD4(uint64_t a1)
{
  *(a1 + 128) = 0;
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_26CCECCF0(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = *(v1 + 5);
  v8 = *(v1 + 6);
  v9 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_26CC246B8;

  return sub_26CCE73C8(a1, v9, v4, v5, v6, v7, v8);
}

unint64_t sub_26CCECDC8()
{
  result = qword_2804BD930;
  if (!qword_2804BD930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD930);
  }

  return result;
}

uint64_t sub_26CCECE70(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_26CC246B8;

  return sub_26CCE8B00(a1, v4, v5, v7, v6);
}

uint64_t objectdestroyTm_0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

void __swiftcall TimedMetadata.SmoothingConfig.init()(TVAppServices::TimedMetadata::SmoothingConfig *__return_ptr retstr)
{
  *&retstr->visualSmoothingConfig.initialLookBack = xmmword_26CD47390;
  *&retstr->visualSmoothingConfig.lookAhead = xmmword_26CD473A0;
  retstr->audioSmoothingConfig.durationToRetainAudioEntity = 60.0;
}

uint64_t sub_26CCECF9C()
{
  result = sub_26CD3A59C();
  qword_2804BD940 = result;
  return result;
}

uint64_t sub_26CCECFF8()
{
  result = sub_26CD3A59C();
  qword_2804BD948 = result;
  return result;
}

uint64_t sub_26CCED054()
{
  result = sub_26CD3A59C();
  qword_280BB9BB8 = result;
  return result;
}

TVAppServices::TimedMetadata::VisualSmoothingConfig __swiftcall TimedMetadata.VisualSmoothingConfig.init()()
{
  v1 = 5.0;
  v2 = 8.0;
  *v0 = xmmword_26CD47390;
  v0[1] = xmmword_26CD473A0;
  result.initialLookAhead = v2;
  result.initialLookBack = v1;
  return result;
}

__n128 TimedMetadata.SmoothingConfig.visualSmoothingConfig.getter@<Q0>(_OWORD *a1@<X8>)
{
  result = *v1;
  v3 = *(v1 + 16);
  *a1 = *v1;
  a1[1] = v3;
  return result;
}

__n128 TimedMetadata.SmoothingConfig.visualSmoothingConfig.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *v1 = *a1;
  v1[1] = v3;
  return result;
}

double TimedMetadata.SmoothingConfig.audioSmoothingConfig.getter@<D0>(double *a1@<X8>)
{
  result = *(v1 + 32);
  *a1 = result;
  return result;
}

double TimedMetadata.SmoothingConfig.audioSmoothingConfig.setter(double *a1)
{
  result = *a1;
  *(v1 + 32) = *a1;
  return result;
}

double sub_26CCED284(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 16) = v2;

  return result;
}

double sub_26CCED2E4()
{
  swift_beginAccess();

  return result;
}

char *TimedMetadata.deinit()
{
  v1 = *(v0 + 64);
  if (v1)
  {
    v2 = objc_opt_self();
    swift_unknownObjectRetain();
    v3 = [v2 defaultCenter];
    [v3 removeObserver_];
    swift_unknownObjectRelease();
  }

  v4 = *(v0 + 72);
  if (v4)
  {
    v5 = objc_opt_self();
    swift_unknownObjectRetain();
    v6 = [v5 defaultCenter];
    [v6 removeObserver_];
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v7 = OBJC_IVAR____TtC13TVAppServices13TimedMetadata_logger;
  v8 = sub_26CD3A44C();
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  return v0;
}

uint64_t TimedMetadata.__deallocating_deinit()
{
  TimedMetadata.deinit();

  return swift_deallocClassInstance();
}

char *sub_26CCED4B8()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = v1 + 32;

  v4 = v2 - 1;
  v5 = MEMORY[0x277D84F90];
  while (1)
  {
    sub_26CC19A84(v3, v39);
    sub_26CC2524C(v39, v31);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCAA0, &qword_26CD460E0);
    if (swift_dynamicCast())
    {
      nullsub_1();
    }

    else
    {
      sub_26CCECC3C(&v24);
      v36 = v28;
      v37 = v29;
      v38[0] = v30[0];
      *(v38 + 11) = *(v30 + 11);
      v32 = v24;
      v33 = v25;
      v34 = v26;
      v35 = v27;
    }

    v28 = v36;
    v29 = v37;
    v30[0] = v38[0];
    *(v30 + 11) = *(v38 + 11);
    v24 = v32;
    v25 = v33;
    v26 = v34;
    v27 = v35;
    if (sub_26CC28EA8(&v24) != 1)
    {
      break;
    }

    v21 = v36;
    v22 = v37;
    v23[0] = v38[0];
    *(v23 + 11) = *(v38 + 11);
    v17 = v32;
    v18 = v33;
    v19 = v34;
    v20 = v35;
    sub_26CC1B544(&v17, &qword_2804BD870, &unk_26CD47430);
    if (!v4)
    {
      goto LABEL_15;
    }

LABEL_14:
    --v4;
    v3 += 40;
  }

  v21 = v36;
  v22 = v37;
  v23[0] = v38[0];
  *(v23 + 11) = *(v38 + 11);
  v17 = v32;
  v18 = v33;
  v19 = v34;
  v20 = v35;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_26CCBF2F0(0, *(v5 + 2) + 1, 1, v5);
  }

  v7 = *(v5 + 2);
  v6 = *(v5 + 3);
  if (v7 >= v6 >> 1)
  {
    v5 = sub_26CCBF2F0((v6 > 1), v7 + 1, 1, v5);
  }

  v14 = v21;
  v15 = v22;
  *v16 = v23[0];
  *&v16[11] = *(v23 + 11);
  v12 = v19;
  v13 = v20;
  v8 = v17;
  v11 = v18;
  *(v5 + 2) = v7 + 1;
  v9 = &v5[128 * v7];
  *(v9 + 4) = v12;
  *(v9 + 5) = v13;
  *(v9 + 3) = v11;
  *(v9 + 139) = *&v16[11];
  *(v9 + 7) = v15;
  *(v9 + 8) = *v16;
  *(v9 + 6) = v14;
  *(v9 + 2) = v8;
  if (v4)
  {
    goto LABEL_14;
  }

LABEL_15:

  return v5;
}

void sub_26CCED758(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, _OWORD *a5@<X8>, double a6@<D0>)
{
  v7 = v6;
  v13 = *(a1 + 2);
  v58 = *a1;
  *&v59 = v13;
  v14 = a4[5];
  v92 = a4[4];
  v93 = v14;
  v15 = a4[7];
  v94 = a4[6];
  v95 = v15;
  v16 = a4[1];
  v88 = *a4;
  v89 = v16;
  v17 = a4[3];
  v90 = a4[2];
  v91 = v17;
  if (sub_26CCE56CC(&v88) == 1)
  {
    v18 = 0;
    v19 = 0;
    v20 = 0uLL;
  }

  else
  {
    v46 = v88;
    v19 = *(&v89 + 1);
    v18 = v89;

    v20 = v46;
  }

  v65 = v20;
  *&v66 = v18;
  *(&v66 + 1) = v19;
  sub_26CCEDB2C(&v80, &v72, &v58, &v65, a6);

  v45 = v73;
  v47 = v81;
  v43 = v72;
  v44 = v80;
  swift_bridgeObjectRelease_n();
  if (!a3)
  {
    v37 = 0uLL;
    v38 = 0uLL;
    v35 = 0uLL;
    v36 = 0uLL;
    goto LABEL_21;
  }

  v21 = *(v7 + 48);
  if (!*(v21 + 16))
  {
LABEL_18:
    v37 = 0uLL;
    v38 = 0uLL;
    v36 = 0uLL;
    v35 = 0uLL;
    goto LABEL_21;
  }

  v22 = sub_26CC181C4(a2, a3);
  if ((v23 & 1) == 0)
  {

    goto LABEL_18;
  }

  v24 = *(*(v21 + 56) + 8 * v22);

  sub_26CCEE6B4(&v80, v24, a6);
  v26 = v25;

  v41 = v81;
  v42 = v80;
  v27 = *(&v81 + 1);
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRelease_n();
  if (v27)
  {
    v28 = *(v27 + 16);

    if (v28)
    {
      goto LABEL_20;
    }
  }

  v29 = a4[5];
  v84 = a4[4];
  v85 = v29;
  v30 = a4[7];
  v86 = a4[6];
  v87 = v30;
  v31 = a4[1];
  v80 = *a4;
  v81 = v31;
  v32 = a4[3];
  v82 = a4[2];
  v83 = v32;
  if (sub_26CCE56CC(&v80) == 1)
  {
    goto LABEL_20;
  }

  if (!*(&v87 + 1))
  {
    goto LABEL_20;
  }

  if (!*(*(&v87 + 1) + 16))
  {
    goto LABEL_20;
  }

  sub_26CC19A84(*(&v87 + 1) + 32, v79);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCAA0, &qword_26CD460E0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_20;
  }

  v69 = v76;
  v70 = v77;
  v71[0] = v78[0];
  *(v71 + 11) = *(v78 + 11);
  v65 = v72;
  v66 = v73;
  v67 = v74;
  v68 = v75;
  v33 = *(&v74 + 1);
  if (!*(&v74 + 1))
  {
    sub_26CCE57A0(&v65);
    goto LABEL_20;
  }

  v34 = v67;

  sub_26CCE57A0(&v65);
  sub_26CCF0D84(v34, v33, &v49);

  v56[4] = v53;
  v56[5] = v54;
  v57[0] = v55[0];
  *(v57 + 11) = *(v55 + 11);
  v56[0] = v49;
  v56[1] = v50;
  v56[2] = v51;
  v56[3] = v52;
  v58 = v49;
  v59 = v50;
  v60 = v51;
  v61 = v52;
  v62 = v53;
  v63 = v54;
  v64[0] = v55[0];
  *(v64 + 11) = *(v55 + 11);
  if (sub_26CC28EA8(&v58) == 1)
  {
LABEL_20:
    v38 = v41;
    v37 = v42;
    v36 = v41;
    v35 = v42;
    goto LABEL_21;
  }

  v53 = v62;
  v54 = v63;
  v55[0] = v64[0];
  *(v55 + 11) = *(v64 + 11);
  v49 = v58;
  v50 = v59;
  v51 = v60;
  v52 = v61;
  sub_26CCF0FF0(&v49, a2, a3, v26, v48, a6);
  sub_26CC1B544(v56, &qword_2804BD870, &unk_26CD47430);
  v39 = v48[1];
  v40 = v48[0];

  v36 = v41;
  v35 = v42;
  v38 = v39;
  v37 = v40;
LABEL_21:
  *a5 = v44;
  a5[1] = v47;
  a5[2] = v43;
  a5[3] = v45;
  a5[4] = v35;
  a5[5] = v36;
  a5[6] = v37;
  a5[7] = v38;
}

__n128 sub_26CCEDB20(uint64_t a1)
{
  result = *(a1 + 24);
  *(v1 + 24) = result;
  return result;
}

void sub_26CCEDB2C(double *a1, double *a2, double *a3, uint64_t a4, double a5)
{
  v96 = a1;
  v97 = a2;
  v6 = *a3;
  v7 = a3[1];
  v8 = a3[2];
  v95 = *(a4 + 24);
  v9 = MEMORY[0x277D84F90];
  v128 = MEMORY[0x277D84F90];
  v129 = MEMORY[0x277D84F90];
  v10 = v5[5];
  v11 = *(v10 + 16);
  if (!v11)
  {
    v107 = 0.0;
    v84 = 0.0;
    v16 = 0.0;
    v87 = 0;
    v86 = MEMORY[0x277D84F90];
    v85 = MEMORY[0x277D84F90];
    goto LABEL_91;
  }

  v13 = v10 + 32;

  swift_beginAccess();
  v14 = 0.0;
  v15 = 0.0;
  v16 = 0.0;
  v103 = 0;
  v17 = 0;
  v108 = 0;
  v109 = xmmword_26CD3C1E0;
  v101 = v10;
  v102 = v5;
  v99 = v10 + 32;
  v100 = v11;
  while (1)
  {
    if (v17 >= *(v10 + 16))
    {
      goto LABEL_99;
    }

    v18 = v13 + 32 * v17;
    v20 = *v18;
    v19 = *(v18 + 8);
    v21 = *(v18 + 16);
    v22 = *(v18 + 24);
    v106 = v15;
    v107 = v14;
    v105 = v16;
    if (v19 <= 0.0 || v7 <= 0.0)
    {
LABEL_56:

      if (v20 > a5)
      {
        goto LABEL_3;
      }

      goto LABEL_57;
    }

    if (v20 != v6)
    {
      if (v20 >= v6)
      {
        if (v20 >= v8)
        {
          goto LABEL_56;
        }
      }

      else if (v6 >= v21)
      {
        goto LABEL_56;
      }
    }

    v104 = v17;
    v23 = v5[2];
    v24 = *(v23 + 16);
    v110 = v22;

    if (v24)
    {
      break;
    }

    v27 = MEMORY[0x277D84F90];
LABEL_24:

    v36 = *(v27 + 16);
    if (v36)
    {
      v37 = 0;
      v38 = v27 + 32;
      v39 = MEMORY[0x277D84F90];
      while (1)
      {
        if (v37 >= *(v27 + 16))
        {
          goto LABEL_98;
        }

        sub_26CC19A84(v38, v126);
        sub_26CC19A84(v126, v125);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCAA0, &qword_26CD460E0);
        if (swift_dynamicCast())
        {
          v115 = v122;
          v116 = v123;
          v117[0] = v124[0];
          v117[1] = v124[1];
          v111 = v118;
          v112 = v119;
          v113 = v120;
          v114 = v121;
          v40 = v120;

          sub_26CCF4618(&v111);
          if (v40)
          {
            goto LABEL_36;
          }
        }

        else
        {
          sub_26CC19A84(v126, v125);
          if (swift_dynamicCast())
          {
            v115 = v122;
            v116 = v123;
            v117[0] = v124[0];
            *(v117 + 11) = *(v124 + 11);
            v111 = v118;
            v112 = v119;
            v113 = v120;
            v114 = v121;
            if (*(&v122 + 1))
            {
              v41 = *&v117[1];

              sub_26CCE57A0(&v111);
              if (v41)
              {
LABEL_36:

                sub_26CC2524C(v126, &v118);
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v127 = v39;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  sub_26CCEB2C0(0, *(v39 + 16) + 1, 1);
                  v39 = v127;
                }

                v44 = *(v39 + 16);
                v43 = *(v39 + 24);
                if (v44 >= v43 >> 1)
                {
                  sub_26CCEB2C0((v43 > 1), v44 + 1, 1);
                  v39 = v127;
                }

                *(v39 + 16) = v44 + 1;
                sub_26CC2524C(&v118, v39 + 40 * v44 + 32);
                goto LABEL_28;
              }
            }

            else
            {
              sub_26CCE57A0(&v111);
            }
          }
        }

        __swift_destroy_boxed_opaque_existential_1(v126);
LABEL_28:
        ++v37;
        v38 += 40;
        if (v36 == v37)
        {
          goto LABEL_42;
        }
      }
    }

    v39 = MEMORY[0x277D84F90];
LABEL_42:

    v45 = v39;
    v46 = *(v39 + 16);
    v98 = v45;
    if (v46)
    {
      v47 = v45 + 32;
      v48 = MEMORY[0x277D84F90];
      do
      {
        sub_26CC19A84(v47, &v118);
        v49 = v128;
        v50 = *(&v119 + 1);
        v51 = v120;
        __swift_project_boxed_opaque_existential_1(&v118, *(&v119 + 1));
        v52 = *(v51 + 8);

        *&v111 = v52(v50, v51);
        *(&v111 + 1) = v53;
        MEMORY[0x28223BE20](v111);
        v94[2] = &v111;
        v54 = v108;
        LOBYTE(v50) = sub_26CCF175C(sub_26CC1CAA4, v94, v49);

        v108 = v54;
        if (v50)
        {
          __swift_destroy_boxed_opaque_existential_1(&v118);
        }

        else
        {
          sub_26CC2524C(&v118, &v111);
          v55 = swift_isUniquelyReferenced_nonNull_native();
          *&v126[0] = v48;
          if ((v55 & 1) == 0)
          {
            sub_26CCEB2C0(0, *(v48 + 16) + 1, 1);
            v48 = *&v126[0];
          }

          v57 = *(v48 + 16);
          v56 = *(v48 + 24);
          if (v57 >= v56 >> 1)
          {
            sub_26CCEB2C0((v56 > 1), v57 + 1, 1);
            v48 = *&v126[0];
          }

          *(v48 + 16) = v57 + 1;
          sub_26CC2524C(&v111, v48 + 40 * v57 + 32);
        }

        v47 += 40;
        --v46;
      }

      while (v46);
    }

    else
    {
      v48 = MEMORY[0x277D84F90];
    }

    v58 = v110;

    sub_26CC78010(v59);
    v60 = v48;
    v22 = v58;
    sub_26CC78104(v60);
    v10 = v101;
    v5 = v102;
    v13 = v99;
    v11 = v100;
    v17 = v104;
    if (v20 > a5)
    {
      goto LABEL_3;
    }

LABEL_57:
    if (v21 > a5)
    {
      v110 = v22;
      v104 = v17;

      v61 = v5[2];
      v62 = *(v61 + 16);

      if (v62)
      {
        v63 = 0;
        v64 = v61 + 32;
        v65 = MEMORY[0x277D84F90];
        while (v63 < *(v61 + 16))
        {
          sub_26CC19A84(v64, &v118);
          *&v111 = v110;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
          v66 = swift_allocObject();
          *(v66 + 16) = v109;
          v67 = *(&v119 + 1);
          v68 = v120;
          __swift_project_boxed_opaque_existential_1(&v118, *(&v119 + 1));
          *(v66 + 32) = (*(v68 + 8))(v67, v68);
          *(v66 + 40) = v69;
          v125[0] = v66;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
          sub_26CCF45B4();
          v70 = sub_26CD3A94C();

          if (v70)
          {
            sub_26CC2524C(&v118, &v111);
            v71 = swift_isUniquelyReferenced_nonNull_native();
            *&v126[0] = v65;
            if ((v71 & 1) == 0)
            {
              sub_26CCEB2C0(0, *(v65 + 16) + 1, 1);
              v65 = *&v126[0];
            }

            v73 = *(v65 + 16);
            v72 = *(v65 + 24);
            if (v73 >= v72 >> 1)
            {
              sub_26CCEB2C0((v72 > 1), v73 + 1, 1);
              v65 = *&v126[0];
            }

            *(v65 + 16) = v73 + 1;
            sub_26CC2524C(&v111, v65 + 40 * v73 + 32);
          }

          else
          {
            __swift_destroy_boxed_opaque_existential_1(&v118);
          }

          ++v63;
          v64 += 40;
          if (v62 == v63)
          {
            goto LABEL_70;
          }
        }

        __break(1u);
LABEL_96:
        __break(1u);
        goto LABEL_97;
      }

      v65 = MEMORY[0x277D84F90];
LABEL_70:

      v74 = *(v65 + 16);
      if (v74)
      {
        v75 = 0;
        v76 = v65 + 32;
        v77 = MEMORY[0x277D84F90];
        while (1)
        {
          if (v75 >= *(v65 + 16))
          {
            goto LABEL_96;
          }

          sub_26CC19A84(v76, v126);
          sub_26CC19A84(v126, v125);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCAA0, &qword_26CD460E0);
          if (swift_dynamicCast())
          {
            v115 = v122;
            v116 = v123;
            v117[0] = v124[0];
            v117[1] = v124[1];
            v111 = v118;
            v112 = v119;
            v113 = v120;
            v114 = v121;
            v78 = v120;

            sub_26CCF4618(&v111);
            if (v78)
            {
              goto LABEL_82;
            }
          }

          else
          {
            sub_26CC19A84(v126, v125);
            if (swift_dynamicCast())
            {
              v115 = v122;
              v116 = v123;
              v117[0] = v124[0];
              *(v117 + 11) = *(v124 + 11);
              v111 = v118;
              v112 = v119;
              v113 = v120;
              v114 = v121;
              if (*(&v122 + 1))
              {
                v79 = *&v117[1];

                sub_26CCE57A0(&v111);
                if (v79)
                {
LABEL_82:

                  sub_26CC2524C(v126, &v118);
                  v80 = swift_isUniquelyReferenced_nonNull_native();
                  v127 = v77;
                  if ((v80 & 1) == 0)
                  {
                    sub_26CCEB2C0(0, *(v77 + 16) + 1, 1);
                    v77 = v127;
                  }

                  v82 = *(v77 + 16);
                  v81 = *(v77 + 24);
                  v83 = v77;
                  if (v82 >= v81 >> 1)
                  {
                    sub_26CCEB2C0((v81 > 1), v82 + 1, 1);
                    v83 = v127;
                  }

                  *(v83 + 16) = v82 + 1;
                  sub_26CC2524C(&v118, v83 + 40 * v82 + 32);
                  v77 = v83;
                  goto LABEL_74;
                }
              }

              else
              {
                sub_26CCE57A0(&v111);
              }
            }
          }

          __swift_destroy_boxed_opaque_existential_1(v126);
LABEL_74:
          ++v75;
          v76 += 40;
          if (v74 == v75)
          {
            goto LABEL_88;
          }
        }
      }

      v77 = MEMORY[0x277D84F90];
LABEL_88:
      v103 = v77;

      v14 = v20;
      v15 = v19;
      v16 = v21;
      v10 = v101;
      v5 = v102;
      v13 = v99;
      v11 = v100;
      v17 = v104;
      goto LABEL_4;
    }

LABEL_3:

    v15 = v106;
    v14 = v107;
    v16 = v105;
LABEL_4:
    if (++v17 == v11)
    {
      v107 = v14;
      v84 = v15;

      v86 = v128;
      v85 = v129;
      v9 = MEMORY[0x277D84F90];
      v87 = v103;
LABEL_91:
      v88 = v5[7];

      v89 = sub_26CCF36F8(v85, v88, v86);

      if (v95)
      {
        v90 = v95;
      }

      else
      {
        v90 = v9;
      }

      v91 = sub_26CCF3D04(v89, v90);

      v93 = v96;
      v92 = v97;
      *v96 = v6;
      v93[1] = v7;
      v93[2] = v8;
      *(v93 + 3) = v91;
      *v92 = v107;
      v92[1] = v84;
      v92[2] = v16;
      *(v92 + 3) = v87;
      return;
    }
  }

  v25 = 0;
  v26 = v23 + 32;
  v27 = MEMORY[0x277D84F90];
  while (v25 < *(v23 + 16))
  {
    sub_26CC19A84(v26, &v118);
    *&v111 = v110;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
    v28 = swift_allocObject();
    *(v28 + 16) = v109;
    v29 = *(&v119 + 1);
    v30 = v120;
    __swift_project_boxed_opaque_existential_1(&v118, *(&v119 + 1));
    *(v28 + 32) = (*(v30 + 8))(v29, v30);
    *(v28 + 40) = v31;
    v125[0] = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    sub_26CCF45B4();
    v32 = sub_26CD3A94C();

    if (v32)
    {
      sub_26CC2524C(&v118, &v111);
      v33 = swift_isUniquelyReferenced_nonNull_native();
      *&v126[0] = v27;
      if ((v33 & 1) == 0)
      {
        sub_26CCEB2C0(0, *(v27 + 16) + 1, 1);
        v27 = *&v126[0];
      }

      v35 = *(v27 + 16);
      v34 = *(v27 + 24);
      if (v35 >= v34 >> 1)
      {
        sub_26CCEB2C0((v34 > 1), v35 + 1, 1);
        v27 = *&v126[0];
      }

      *(v27 + 16) = v35 + 1;
      sub_26CC2524C(&v111, v27 + 40 * v35 + 32);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(&v118);
    }

    ++v25;
    v26 += 40;
    if (v24 == v25)
    {
      goto LABEL_24;
    }
  }

LABEL_97:
  __break(1u);
LABEL_98:
  __break(1u);
LABEL_99:
  __break(1u);
}

void sub_26CCEE6B4(uint64_t a1, uint64_t a2, double a3)
{
  v3 = *(a2 + 16);
  if (!v3)
  {
LABEL_9:
    *a1 = 0u;
    *(a1 + 16) = 0u;
    return;
  }

  v4 = 0;
  v5 = (a2 + 56);
  while (1)
  {
    v6 = *(v5 - 3);
    v7 = *(v5 - 1);
    if (v6 <= a3 && v7 > a3)
    {
      break;
    }

    ++v4;
    v5 += 4;
    if (v3 == v4)
    {
      goto LABEL_9;
    }
  }

  v46 = *(v5 - 2);
  v9 = *v5;
  swift_beginAccess();
  v10 = *(v49 + 16);
  v11 = *(v10 + 16);
  v48 = v9;

  if (!v11)
  {
    v13 = MEMORY[0x277D84F90];
LABEL_22:

    v23 = *(v13 + 16);
    v24 = MEMORY[0x277D84F90];
    if (!v23)
    {
LABEL_39:

      v31 = *(v24 + 16);
      if (v31)
      {
        v53 = MEMORY[0x277D84F90];
        sub_26CCEB2C0(0, v31, 0);
        v32 = v53;
        v33 = v24 + 32;
        do
        {
          sub_26CC19A84(v33, &v54);
          sub_26CC19A84(&v54, &v69);
          v34 = v70;
          v35 = v71;
          __swift_mutable_project_boxed_opaque_existential_1(&v69, v70);
          (*(v35 + 24))(v34, v35, v7);
          sub_26CC19A84(&v69, v68);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCAA0, &qword_26CD460E0);
          if (swift_dynamicCast())
          {
            v51 = &type metadata for TimedMetadata.SongEntity;
            v52 = &protocol witness table for TimedMetadata.SongEntity;
            v36 = swift_allocObject();
            *&v50 = v36;
            v37 = v66;
            *(v36 + 80) = v65;
            *(v36 + 96) = v37;
            *(v36 + 112) = v67[0];
            *(v36 + 122) = *(v67 + 10);
            v38 = v62;
            *(v36 + 16) = v61;
            *(v36 + 32) = v38;
            v39 = v64;
            *(v36 + 48) = v63;
            *(v36 + 64) = v39;
            *(v36 + 138) = 1;
            __swift_destroy_boxed_opaque_existential_1(&v69);
            sub_26CC2524C(&v50, &v69);
          }

          v40 = v70;
          v41 = v71;
          __swift_project_boxed_opaque_existential_1(&v69, v70);
          v42 = (*(v41 + 8))(v40, v41);
          sub_26CCEEEFC(v42, v43, 0, v49, &v69);

          __swift_destroy_boxed_opaque_existential_1(&v54);
          sub_26CC2524C(&v69, &v61);
          v53 = v32;
          v45 = *(v32 + 16);
          v44 = *(v32 + 24);
          if (v45 >= v44 >> 1)
          {
            sub_26CCEB2C0((v44 > 1), v45 + 1, 1);
            v32 = v53;
          }

          *(v32 + 16) = v45 + 1;
          sub_26CC2524C(&v61, v32 + 40 * v45 + 32);
          v33 += 40;
          --v31;
        }

        while (v31);
      }

      else
      {

        v32 = MEMORY[0x277D84F90];
      }

      *a1 = v6;
      *(a1 + 8) = v46;
      *(a1 + 16) = v7;
      *(a1 + 24) = v32;
      return;
    }

    v25 = 0;
    v26 = v13 + 32;
    while (1)
    {
      if (v25 >= *(v13 + 16))
      {
        goto LABEL_50;
      }

      sub_26CC19A84(v26, &v69);
      sub_26CC19A84(&v69, v68);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCAA0, &qword_26CD460E0);
      if (swift_dynamicCast())
      {
        v58 = v65;
        v59 = v66;
        *v60 = v67[0];
        *&v60[16] = v67[1];
        v54 = v61;
        v55 = v62;
        v56 = v63;
        v57 = v64;
        v27 = v63;

        sub_26CCF4618(&v54);
        if (v27)
        {
          goto LABEL_34;
        }
      }

      else
      {
        sub_26CC19A84(&v69, v68);
        if (swift_dynamicCast())
        {
          v58 = v65;
          v59 = v66;
          *v60 = v67[0];
          *&v60[11] = *(v67 + 11);
          v54 = v61;
          v55 = v62;
          v56 = v63;
          v57 = v64;
          if (*(&v65 + 1))
          {
            v28 = *&v60[16];

            sub_26CCE57A0(&v54);
            if (v28)
            {
LABEL_34:

              sub_26CC2524C(&v69, &v61);
              *&v50 = v24;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_26CCEB2C0(0, *(v24 + 16) + 1, 1);
                v24 = v50;
              }

              v30 = *(v24 + 16);
              v29 = *(v24 + 24);
              if (v30 >= v29 >> 1)
              {
                sub_26CCEB2C0((v29 > 1), v30 + 1, 1);
                v24 = v50;
              }

              *(v24 + 16) = v30 + 1;
              sub_26CC2524C(&v61, v24 + 40 * v30 + 32);
              goto LABEL_26;
            }
          }

          else
          {
            sub_26CCE57A0(&v54);
          }
        }
      }

      __swift_destroy_boxed_opaque_existential_1(&v69);
LABEL_26:
      ++v25;
      v26 += 40;
      if (v23 == v25)
      {
        goto LABEL_39;
      }
    }
  }

  v12 = 0;
  v13 = MEMORY[0x277D84F90];
  v14 = v10 + 32;
  while (v12 < *(v10 + 16))
  {
    sub_26CC19A84(v14, &v61);
    *&v54 = v48;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_26CD3C1E0;
    v16 = *(&v62 + 1);
    v17 = v63;
    __swift_project_boxed_opaque_existential_1(&v61, *(&v62 + 1));
    *(v15 + 32) = (*(v17 + 8))(v16, v17);
    *(v15 + 40) = v18;
    v68[0] = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    sub_26CCF45B4();
    v19 = sub_26CD3A94C();

    if (v19)
    {
      sub_26CC2524C(&v61, &v54);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v69 = v13;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_26CCEB2C0(0, *(v13 + 16) + 1, 1);
        v13 = v69;
      }

      v22 = *(v13 + 16);
      v21 = *(v13 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_26CCEB2C0((v21 > 1), v22 + 1, 1);
        v13 = v69;
      }

      *(v13 + 16) = v22 + 1;
      sub_26CC2524C(&v54, v13 + 40 * v22 + 32);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(&v61);
    }

    ++v12;
    v14 += 40;
    if (v11 == v12)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_50:
  __break(1u);
}

uint64_t sub_26CCEED84@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  sub_26CC19A84(a1, v26);
  v5 = a2[3];
  v6 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v5);
  v7 = (*(v6 + 16))(v5, v6);
  v8 = v27;
  v9 = v28;
  __swift_mutable_project_boxed_opaque_existential_1(v26, v27);
  (*(v9 + 24))(v8, v9, v7);
  sub_26CC19A84(v26, v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCAA0, &qword_26CD460E0);
  if (swift_dynamicCast())
  {
    v16 = &type metadata for TimedMetadata.SongEntity;
    v17 = &protocol witness table for TimedMetadata.SongEntity;
    v10 = swift_allocObject();
    *&v15 = v10;
    v11 = v23;
    *(v10 + 80) = v22;
    *(v10 + 96) = v11;
    *(v10 + 112) = v24[0];
    *(v10 + 122) = *(v24 + 10);
    v12 = v19;
    *(v10 + 16) = v18;
    *(v10 + 32) = v12;
    v13 = v21;
    *(v10 + 48) = v20;
    *(v10 + 64) = v13;
    *(v10 + 138) = 1;
    __swift_destroy_boxed_opaque_existential_1(v26);
    sub_26CC2524C(&v15, v26);
  }

  sub_26CC19A84(v26, a3);
  return __swift_destroy_boxed_opaque_existential_1(v26);
}

void sub_26CCEEEFC(uint64_t a1, void *a2, char a3, uint64_t a4, void *a5)
{
  swift_beginAccess();
  v10 = *(*(a4 + 16) + 16);
  if (v10)
  {
    v11 = 0;
    v12 = 4;
    while (1)
    {
      v13 = *(a4 + 16);
      if (v11 >= *(v13 + 16))
      {
        __break(1u);
        goto LABEL_24;
      }

      sub_26CC19A84(v13 + v12 * 8, v26);
      v14 = v27;
      v15 = v28;
      __swift_project_boxed_opaque_existential_1(v26, v27);
      v16 = (*(v15 + 8))(v14, v15);
      v5 = v17;
      if (v16 == a1 && v17 == a2)
      {
        break;
      }

      v19 = sub_26CD3AFDC();

      if (v19)
      {
        goto LABEL_12;
      }

      ++v11;
      __swift_destroy_boxed_opaque_existential_1(v26);
      v12 += 5;
      if (v10 == v11)
      {
        goto LABEL_19;
      }
    }

LABEL_12:
    sub_26CCEED84(v26, a5, &v23);
    if (!v24)
    {
      sub_26CC1B544(&v23, &qword_2804BD958, &unk_26CD47A00);
      goto LABEL_18;
    }

    sub_26CC2524C(&v23, v25);
    swift_beginAccess();
    v20 = *(a4 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a4 + 16) = v20;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v20 = sub_26CCF21C4(v20);
      *(a4 + 16) = v20;
    }

    if (v11 < v20[2])
    {
      __swift_assign_boxed_opaque_existential_1(&v20[v12], v25);
      *(a4 + 16) = v20;
      swift_endAccess();
      __swift_destroy_boxed_opaque_existential_1(v25);
LABEL_18:
      __swift_destroy_boxed_opaque_existential_1(v26);
      goto LABEL_19;
    }

    __break(1u);
  }

  else
  {
LABEL_19:
    if (a3)
    {
      v5 = [objc_opt_self() defaultCenter];
      if (qword_280BB9BB0 != -1)
      {
LABEL_24:
        swift_once();
      }

      [v5 postNotificationName:qword_280BB9BB8 object:a4];
    }
  }
}

void sub_26CCEF154(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  v10 = *(*(a4 + 16) + 16);
  if (v10)
  {
    v11 = 0;
    v12 = 4;
    while (1)
    {
      v13 = *(a4 + 16);
      if (v11 >= *(v13 + 16))
      {
        __break(1u);
        goto LABEL_24;
      }

      sub_26CC19A84(v13 + v12 * 8, v26);
      v14 = v27;
      v15 = v28;
      __swift_project_boxed_opaque_existential_1(v26, v27);
      v16 = (*(v15 + 8))(v14, v15);
      v5 = v17;
      if (v16 == a1 && v17 == a2)
      {
        break;
      }

      v19 = sub_26CD3AFDC();

      if (v19)
      {
        goto LABEL_12;
      }

      ++v11;
      __swift_destroy_boxed_opaque_existential_1(v26);
      v12 += 5;
      if (v10 == v11)
      {
        goto LABEL_19;
      }
    }

LABEL_12:
    sub_26CCF1428(v26, a5, &v23);
    if (!v24)
    {
      sub_26CC1B544(&v23, &qword_2804BD958, &unk_26CD47A00);
      goto LABEL_18;
    }

    sub_26CC2524C(&v23, v25);
    swift_beginAccess();
    v20 = *(a4 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a4 + 16) = v20;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v20 = sub_26CCF21C4(v20);
      *(a4 + 16) = v20;
    }

    if (v11 < v20[2])
    {
      __swift_assign_boxed_opaque_existential_1(&v20[v12], v25);
      *(a4 + 16) = v20;
      swift_endAccess();
      __swift_destroy_boxed_opaque_existential_1(v25);
LABEL_18:
      __swift_destroy_boxed_opaque_existential_1(v26);
      goto LABEL_19;
    }

    __break(1u);
  }

  else
  {
LABEL_19:
    if (a3)
    {
      v5 = [objc_opt_self() defaultCenter];
      if (qword_280BB9BB0 != -1)
      {
LABEL_24:
        swift_once();
      }

      [v5 postNotificationName:qword_280BB9BB8 object:a4];
    }
  }
}

void sub_26CCEF3AC(uint64_t a1, void *a2, char a3, uint64_t a4, char a5)
{
  swift_beginAccess();
  v10 = *(*(a4 + 16) + 16);
  if (v10)
  {
    v11 = 0;
    v12 = 4;
    while (1)
    {
      v13 = *(a4 + 16);
      if (v11 >= *(v13 + 16))
      {
        __break(1u);
        goto LABEL_24;
      }

      sub_26CC19A84(v13 + v12 * 8, v26);
      v14 = v27;
      v15 = v28;
      __swift_project_boxed_opaque_existential_1(v26, v27);
      v16 = (*(v15 + 8))(v14, v15);
      v5 = v17;
      if (v16 == a1 && v17 == a2)
      {
        break;
      }

      v19 = sub_26CD3AFDC();

      if (v19)
      {
        goto LABEL_12;
      }

      ++v11;
      __swift_destroy_boxed_opaque_existential_1(v26);
      v12 += 5;
      if (v10 == v11)
      {
        goto LABEL_19;
      }
    }

LABEL_12:
    sub_26CCF0B70(v26, a5 & 1, &v23);
    if (!v24)
    {
      sub_26CC1B544(&v23, &qword_2804BD958, &unk_26CD47A00);
      goto LABEL_18;
    }

    sub_26CC2524C(&v23, v25);
    swift_beginAccess();
    v20 = *(a4 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a4 + 16) = v20;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v20 = sub_26CCF21C4(v20);
      *(a4 + 16) = v20;
    }

    if (v11 < v20[2])
    {
      __swift_assign_boxed_opaque_existential_1(&v20[v12], v25);
      *(a4 + 16) = v20;
      swift_endAccess();
      __swift_destroy_boxed_opaque_existential_1(v25);
LABEL_18:
      __swift_destroy_boxed_opaque_existential_1(v26);
      goto LABEL_19;
    }

    __break(1u);
  }

  else
  {
LABEL_19:
    if (a3)
    {
      v5 = [objc_opt_self() defaultCenter];
      if (qword_280BB9BB0 != -1)
      {
LABEL_24:
        swift_once();
      }

      [v5 postNotificationName:qword_280BB9BB8 object:a4];
    }
  }
}

void sub_26CCEF604(uint64_t a1, void *a2, char a3, void (*a4)(__int128 *__return_ptr, void *, __n128))
{
  v5 = v4;
  swift_beginAccess();
  v8 = *(v4[2] + 16);
  if (v8)
  {
    v9 = 0;
    v10 = 4;
    while (1)
    {
      v11 = v5[2];
      if (v9 >= *(v11 + 16))
      {
        __break(1u);
        goto LABEL_24;
      }

      sub_26CC19A84(v11 + v10 * 8, v25);
      v12 = v26;
      v13 = v27;
      __swift_project_boxed_opaque_existential_1(v25, v26);
      v14 = (*(v13 + 8))(v12, v13);
      v4 = v15;
      if (v14 == a1 && v15 == a2)
      {
        break;
      }

      v17 = sub_26CD3AFDC();

      if (v17)
      {
        goto LABEL_12;
      }

      ++v9;
      __swift_destroy_boxed_opaque_existential_1(v25);
      v10 += 5;
      if (v8 == v9)
      {
        goto LABEL_19;
      }
    }

LABEL_12:
    (a4)(&v22, v25);
    if (!v23)
    {
      sub_26CC1B544(&v22, &qword_2804BD958, &unk_26CD47A00);
      goto LABEL_18;
    }

    sub_26CC2524C(&v22, v24);
    swift_beginAccess();
    v18 = v5[2];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v5[2] = v18;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v18 = sub_26CCF21C4(v18);
      v5[2] = v18;
    }

    if (v9 < v18[2])
    {
      __swift_assign_boxed_opaque_existential_1(&v18[v10], v24);
      v5[2] = v18;
      swift_endAccess();
      __swift_destroy_boxed_opaque_existential_1(v24);
LABEL_18:
      __swift_destroy_boxed_opaque_existential_1(v25);
      goto LABEL_19;
    }

    __break(1u);
  }

  else
  {
LABEL_19:
    if (a3)
    {
      v4 = [objc_opt_self() defaultCenter];
      if (qword_280BB9BB0 != -1)
      {
LABEL_24:
        swift_once();
      }

      [v4 postNotificationName:qword_280BB9BB8 object:v5];
    }
  }
}

uint64_t sub_26CCEF868(uint64_t a1)
{
  v2 = sub_26CCED4B8();
  v3 = 0;
  v4 = *(v2 + 2);
  v5 = MEMORY[0x277D84F90];
LABEL_2:
  v6 = &v2[128 * v3 + 72];
  while (v4 != v3)
  {
    if (v3 >= *(v2 + 2))
    {
      __break(1u);
      result = swift_unexpectedError();
      __break(1u);
      return result;
    }

    v7 = v6 + 128;
    ++v3;
    v8 = *v6;
    v6 += 128;
    if (v8)
    {
      v20 = a1;
      v9 = *(v7 - 17);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_26CCBE3BC(0, *(v5 + 2) + 1, 1, v5);
      }

      v11 = *(v5 + 2);
      v10 = *(v5 + 3);
      if (v11 >= v10 >> 1)
      {
        v5 = sub_26CCBE3BC((v10 > 1), v11 + 1, 1, v5);
      }

      *(v5 + 2) = v11 + 1;
      v12 = &v5[16 * v11];
      *(v12 + 4) = v9;
      *(v12 + 5) = v8;
      a1 = v20;
      goto LABEL_2;
    }
  }

  v13 = sub_26CCF3078(v5);

  v14 = sub_26CCF2408(a1, v13);
  sub_26CCF2D4C(v13, v14);
  v16 = v15;

  if (*(v16 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBCE0, &qword_26CD3CFA0);
    v17 = sub_26CD3AD6C();
  }

  else
  {
    v17 = MEMORY[0x277D84F98];
  }

  v21 = v17;

  sub_26CCF1E34(v18, 1, &v21);

  sub_26CCEFA7C(v21);
}

void sub_26CCEFA7C(uint64_t a1)
{
  v2 = v1;
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  while (v7)
  {
LABEL_11:
    v11 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v12 = v11 | (v9 << 6);
    v13 = (*(a1 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(*(a1 + 56) + v12);

    v17 = v14;
    v1 = v2;
    sub_26CCF0D84(v17, v15, &v28);

    v35[4] = v32;
    v35[5] = v33;
    v36[0] = v34[0];
    *(v36 + 11) = *(v34 + 11);
    v35[0] = v28;
    v35[1] = v29;
    v35[2] = v30;
    v35[3] = v31;
    v37[0] = v28;
    v37[1] = v29;
    v37[2] = v30;
    v37[3] = v31;
    v38 = v32;
    v39 = v33;
    *v40 = v34[0];
    *&v40[11] = *(v34 + 11);
    if (sub_26CC28EA8(v37) != 1)
    {
      if (v16 != v40[24])
      {
        sub_26CCECBE0(v37, &v28);
        v1 = sub_26CD3A42C();
        v18 = sub_26CD3A99C();
        sub_26CC1B544(v35, &qword_2804BD870, &unk_26CD47430);
        if (os_log_type_enabled(v1, v18))
        {
          v19 = swift_slowAlloc();
          v26 = swift_slowAlloc();
          v27 = v2;
          *&v28 = v26;
          *v19 = 136315394;
          v20 = v38;
          if (!*(&v38 + 1))
          {
            v20 = 0;
          }

          v24 = v20;
          if (*(&v38 + 1))
          {
            v21 = *(&v38 + 1);
          }

          else
          {
            v21 = 0xE000000000000000;
          }

          v22 = sub_26CCF188C(v24, v21, &v28);
          v25 = v18;
          v23 = v22;
          v2 = v27;

          *(v19 + 4) = v23;
          *(v19 + 12) = 1024;
          *(v19 + 14) = v16;
          _os_log_impl(&dword_26CC14000, v1, v25, "Updating song isAdded state: %s, added: %{BOOL}d", v19, 0x12u);
          __swift_destroy_boxed_opaque_existential_1(v26);
          MEMORY[0x26D6AE340](v26, -1, -1);
          MEMORY[0x26D6AE340](v19, -1, -1);
        }

        sub_26CCEF3AC(*&v37[0], *(&v37[0] + 1), 0, v2, v16);
      }

      sub_26CC1B544(v35, &qword_2804BD870, &unk_26CD47430);
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      goto LABEL_23;
    }

    if (v10 >= v8)
    {
      break;
    }

    v7 = *(v4 + 8 * v10);
    ++v9;
    if (v7)
    {
      v9 = v10;
      goto LABEL_11;
    }
  }

  v1 = [objc_opt_self() defaultCenter];
  if (qword_280BB9BB0 == -1)
  {
    goto LABEL_21;
  }

LABEL_23:
  swift_once();
LABEL_21:
  [v1 postNotificationName:qword_280BB9BB8 object:v2];
}

uint64_t sub_26CCEFDB8()
{
  v1 = objc_opt_self();
  v2 = [v1 defaultCenter];
  if (qword_2804BBA68 != -1)
  {
    swift_once();
  }

  v3 = qword_2804BD940;
  v4 = objc_opt_self();
  v5 = [v4 mainQueue];
  v6 = swift_allocObject();
  swift_weakInit();
  v20 = sub_26CCF34E0;
  v21 = v6;
  v16 = MEMORY[0x277D85DD0];
  v17 = 1107296256;
  v18 = sub_26CCDC2A8;
  v19 = &block_descriptor_10;
  v7 = _Block_copy(&v16);

  v8 = [v2 addObserverForName:v3 object:0 queue:v5 usingBlock:v7];
  _Block_release(v7);

  *(v0 + 64) = v8;
  swift_unknownObjectRelease();
  v9 = [v1 defaultCenter];
  if (qword_2804BBA70 != -1)
  {
    swift_once();
  }

  v10 = qword_2804BD948;
  v11 = [v4 mainQueue];
  v12 = swift_allocObject();
  swift_weakInit();
  v20 = sub_26CCF34E8;
  v21 = v12;
  v16 = MEMORY[0x277D85DD0];
  v17 = 1107296256;
  v18 = sub_26CCDC2A8;
  v19 = &block_descriptor_54;
  v13 = _Block_copy(&v16);

  v14 = [v9 addObserverForName:v10 object:0 queue:v11 usingBlock:v13];
  _Block_release(v13);

  *(v0 + 72) = v14;
  return swift_unknownObjectRelease();
}

double sub_26CCF0098(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA00, &qword_26CD3D510);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v22 - v3;
  v5 = sub_26CD39DDC();
  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = v5;
  v23 = 0x6449676E6F73;
  v24 = 0xE600000000000000;
  sub_26CD3ABFC();
  if (!*(v6 + 16) || (v7 = sub_26CCCA694(v25), (v8 & 1) == 0))
  {

    sub_26CC579C4(v25);
LABEL_13:
    v26 = 0u;
    v27 = 0u;
    goto LABEL_14;
  }

  sub_26CC168C0(*(v6 + 56) + 32 * v7, &v26);
  sub_26CC579C4(v25);

  if (!*(&v27 + 1))
  {
LABEL_14:
    sub_26CC1B544(&v26, &qword_2804BBDA8, &qword_26CD3D5F0);
    return result;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return result;
  }

  v11 = v25[0];
  v10 = v25[1];
  v12 = sub_26CD39DDC();
  if (!v12)
  {

    goto LABEL_13;
  }

  v13 = v12;
  v23 = 0x64656464417369;
  v24 = 0xE700000000000000;
  sub_26CD3ABFC();
  if (!*(v13 + 16) || (v14 = sub_26CCCA694(v25), (v15 & 1) == 0))
  {

    sub_26CC579C4(v25);
    v26 = 0u;
    v27 = 0u;
    goto LABEL_17;
  }

  sub_26CC168C0(*(v13 + 56) + 32 * v14, &v26);
  sub_26CC579C4(v25);

  if (!*(&v27 + 1))
  {
LABEL_17:

    goto LABEL_14;
  }

  if (swift_dynamicCast())
  {
    v16 = v25[0];
    v17 = sub_26CD3A86C();
    (*(*(v17 - 8) + 56))(v4, 1, 1, v17);
    v18 = swift_allocObject();
    swift_beginAccess();
    swift_weakLoadStrong();
    swift_weakInit();

    sub_26CD3A84C();

    v19 = sub_26CD3A83C();
    v20 = swift_allocObject();
    v21 = MEMORY[0x277D85700];
    *(v20 + 16) = v19;
    *(v20 + 24) = v21;
    *(v20 + 32) = v18;
    *(v20 + 40) = v11;
    *(v20 + 48) = v10;
    *(v20 + 56) = v16;

    sub_26CCD6138(0, 0, v4, &unk_26CD47B80, v20);
  }

  else
  {
  }

  return result;
}

uint64_t sub_26CCF03F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v7 + 139) = a7;
  *(v7 + 312) = a5;
  *(v7 + 320) = a6;
  *(v7 + 296) = a1;
  *(v7 + 304) = a4;
  sub_26CD3A84C();
  *(v7 + 328) = sub_26CD3A83C();
  v9 = sub_26CD3A80C();

  return MEMORY[0x2822009F8](sub_26CCF0490, v9, v8);
}

uint64_t sub_26CCF0490()
{
  v12 = v0;

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_26CCF0D84(*(v0 + 312), *(v0 + 320), (v0 + 144));
    v1 = *(v0 + 224);
    *(v0 + 80) = *(v0 + 208);
    *(v0 + 96) = v1;
    *(v0 + 112) = *(v0 + 240);
    *(v0 + 123) = *(v0 + 251);
    v2 = *(v0 + 160);
    *(v0 + 16) = *(v0 + 144);
    *(v0 + 32) = v2;
    v3 = *(v0 + 192);
    *(v0 + 48) = *(v0 + 176);
    *(v0 + 64) = v3;
    if (sub_26CC28EA8(v0 + 16) == 1)
    {
    }

    else
    {
      v4 = *(v0 + 139);
      v5 = *(v0 + 96);
      v10[4] = *(v0 + 80);
      v10[5] = v5;
      v11[0] = *(v0 + 112);
      *(v11 + 11) = *(v0 + 123);
      v6 = *(v0 + 32);
      v10[0] = *(v0 + 16);
      v10[1] = v6;
      v7 = *(v0 + 64);
      v10[2] = *(v0 + 48);
      v10[3] = v7;
      sub_26CCF09CC(v10, v4, 1);

      sub_26CC1B544(v0 + 144, &qword_2804BD870, &unk_26CD47430);
    }

    **(v0 + 296) = 0;
  }

  else
  {
    **(v0 + 296) = 1;
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_26CCF05D8(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA00, &qword_26CD3D510);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v17[-4] - v3;
  v5 = sub_26CD39DDC();
  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = v5;
  strcpy(v17, "playlistSongs");
  v17[7] = -4864;
  sub_26CD3ABFC();
  if (!*(v6 + 16) || (v7 = sub_26CCCA694(v18), (v8 & 1) == 0))
  {

    sub_26CC579C4(v18);
LABEL_8:
    v19 = 0u;
    v20 = 0u;
    return sub_26CC1B544(&v19, &qword_2804BBDA8, &qword_26CD3D5F0);
  }

  sub_26CC168C0(*(v6 + 56) + 32 * v7, &v19);
  sub_26CC579C4(v18);

  if (!*(&v20 + 1))
  {
    return sub_26CC1B544(&v19, &qword_2804BBDA8, &qword_26CD3D5F0);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
  result = swift_dynamicCast();
  if (result)
  {
    v10 = v18[0];
    v11 = sub_26CD3A86C();
    (*(*(v11 - 8) + 56))(v4, 1, 1, v11);
    v12 = swift_allocObject();
    swift_beginAccess();
    swift_weakLoadStrong();
    swift_weakInit();

    sub_26CD3A84C();

    v13 = sub_26CD3A83C();
    v14 = swift_allocObject();
    v15 = MEMORY[0x277D85700];
    v14[2] = v13;
    v14[3] = v15;
    v14[4] = v12;
    v14[5] = v10;

    sub_26CCD6138(0, 0, v4, &unk_26CD47B70, v14);
  }

  return result;
}

uint64_t sub_26CCF085C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  sub_26CD3A84C();
  v5[8] = sub_26CD3A83C();
  v7 = sub_26CD3A80C();

  return MEMORY[0x2822009F8](sub_26CCF08F8, v7, v6);
}

uint64_t sub_26CCF08F8()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {

    v3 = sub_26CCF3078(v2);

    sub_26CCEF868(v3);
  }

  **(v0 + 40) = Strong == 0;
  v4 = *(v0 + 8);

  return v4();
}

void sub_26CCF09CC(_OWORD *a1, char a2, char a3)
{
  *&v21[11] = *(a1 + 107);
  v4 = a1[5];
  v19 = a1[4];
  v20 = v4;
  *v21 = a1[6];
  v5 = a1[1];
  v18[0] = *a1;
  v18[1] = v5;
  v6 = a1[3];
  v18[2] = a1[2];
  v18[3] = v6;
  if (v21[24] != (a2 & 1))
  {
    v7 = v3;
    sub_26CCECBE0(v18, v17);
    v10 = sub_26CD3A42C();
    v11 = sub_26CD3A99C();
    sub_26CCE57A0(v18);
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v17[0] = v13;
      *v12 = 136315394;
      if (*(&v19 + 1))
      {
        v14 = v19;
      }

      else
      {
        v14 = 0;
      }

      if (*(&v19 + 1))
      {
        v15 = *(&v19 + 1);
      }

      else
      {
        v15 = 0xE000000000000000;
      }

      v16 = sub_26CCF188C(v14, v15, v17);

      *(v12 + 4) = v16;
      *(v12 + 12) = 1024;
      *(v12 + 14) = a2 & 1;
      _os_log_impl(&dword_26CC14000, v10, v11, "Updating song isAdded state: %s, added: %{BOOL}d", v12, 0x12u);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x26D6AE340](v13, -1, -1);
      MEMORY[0x26D6AE340](v12, -1, -1);
    }

    sub_26CCEF3AC(*&v18[0], *(&v18[0] + 1), a3 & 1, v7, a2 & 1);
  }
}

uint64_t sub_26CCF0B70@<X0>(uint64_t a1@<X0>, char a2@<W1>, void *a3@<X8>)
{
  sub_26CC19A84(a1, v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCAA0, &qword_26CD460E0);
  if (swift_dynamicCast())
  {
    nullsub_1();
  }

  else
  {
    sub_26CCECC3C(&v24);
    v36 = v28;
    v37 = v29;
    *v38 = v30[0];
    *&v38[11] = *(v30 + 11);
    v32 = v24;
    v33 = v25;
    v34 = v26;
    v35 = v27;
  }

  v28 = v36;
  v29 = v37;
  v30[0] = *v38;
  *(v30 + 11) = *&v38[11];
  v24 = v32;
  v25 = v33;
  v26 = v34;
  v27 = v35;
  if (sub_26CC28EA8(&v24) != 1)
  {
    v38[24] = a2 & 1;
  }

  v15[4] = v36;
  v15[5] = v37;
  v16[0] = *v38;
  *(v16 + 11) = *&v38[11];
  v15[0] = v32;
  v15[1] = v33;
  v15[2] = v34;
  v15[3] = v35;
  v19 = v34;
  v20 = v35;
  v17 = v32;
  v18 = v33;
  *(v23 + 11) = *&v38[11];
  v22 = v37;
  v23[0] = *v38;
  v21 = v36;
  if (sub_26CC28EA8(&v17) == 1)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  else
  {
    v5 = swift_allocObject();
    v8 = v22;
    v5[5] = v21;
    v5[6] = v8;
    v5[7] = v23[0];
    *(v5 + 123) = *(v23 + 11);
    v9 = v18;
    v5[1] = v17;
    v5[2] = v9;
    v10 = v20;
    v5[3] = v19;
    v5[4] = v10;
    v7 = &protocol witness table for TimedMetadata.SongEntity;
    v6 = &type metadata for TimedMetadata.SongEntity;
  }

  *a3 = v5;
  a3[3] = v6;
  a3[4] = v7;
  v13[4] = v36;
  v13[5] = v37;
  v14[0] = *v38;
  *(v14 + 11) = *&v38[11];
  v13[0] = v32;
  v13[1] = v33;
  v13[2] = v34;
  v13[3] = v35;
  sub_26CCF3688(v15, &v12);
  return sub_26CC1B544(v13, &qword_2804BD870, &unk_26CD47430);
}

void sub_26CCF0D84(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  *&v15 = a2;
  *(&v15 + 1) = a1;
  swift_beginAccess();
  v5 = *(v3 + 16);
  v6 = *(v5 + 16);
  if (v6)
  {
    v14 = a3;
    v7 = v5 + 32;

    v8 = 0;
    while (v8 < *(v5 + 16))
    {
      sub_26CC19A84(v7, v31);
      sub_26CC19A84(v31, v30);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCAA0, &qword_26CD460E0);
      if (swift_dynamicCast())
      {
        v20 = v27;
        v21 = v28;
        v22[0] = v29[0];
        *(v22 + 11) = *(v29 + 11);
        v16 = v23;
        v17 = v24;
        v18 = v25;
        v19 = v26;
        v10 = v25;

        sub_26CCE57A0(&v16);
        if (*(&v10 + 1))
        {
          if (__PAIR128__(v10, *(&v10 + 1)) == v15)
          {

LABEL_10:

            sub_26CC2524C(v31, &v32);
            a3 = v14;
            goto LABEL_13;
          }

          v9 = sub_26CD3AFDC();

          if (v9)
          {
            goto LABEL_10;
          }
        }
      }

      ++v8;
      __swift_destroy_boxed_opaque_existential_1(v31);
      v7 += 40;
      if (v6 == v8)
      {

        a3 = v14;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:
    v34 = 0;
    v32 = 0u;
    v33 = 0u;
LABEL_13:
    v16 = v32;
    v17 = v33;
    *&v18 = v34;
    if (*(&v33 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCAA0, &qword_26CD460E0);
      if (swift_dynamicCast())
      {
        nullsub_1();
        return;
      }
    }

    else
    {
      sub_26CC1B544(&v16, &qword_2804BD958, &unk_26CD47A00);
    }

    sub_26CCECC3C(&v23);
    v11 = v28;
    a3[4] = v27;
    a3[5] = v11;
    a3[6] = v29[0];
    *(a3 + 107) = *(v29 + 11);
    v12 = v24;
    *a3 = v23;
    a3[1] = v12;
    v13 = v26;
    a3[2] = v25;
    a3[3] = v13;
  }
}

void sub_26CCF0FF0(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v7 = v6;
  v9 = a1[5];
  v76 = a1[4];
  v77 = v9;
  v78[0] = a1[6];
  *(v78 + 11) = *(a1 + 107);
  v10 = a1[1];
  v72 = *a1;
  v73 = v10;
  v11 = a1[3];
  v74 = a1[2];
  v75 = v11;
  if (*(&v10 + 1) < a6)
  {
    v12 = *(&v73 + 1) + v6[4];
    if (v12 > a6)
    {
      if (a3)
      {
        v13 = *(v6 + 6);
        if (*(v13 + 16))
        {

          v19 = sub_26CC181C4(a2, a3);
          if (v20)
          {
            v21 = *(*(v13 + 56) + 8 * v19);

            if ((a4 & 0x8000000000000000) == 0 && *(v21 + 16) > a4)
            {
              v22 = v12 - a6;
              v23 = *(v21 + 32 * a4 + 48);

              v24 = v22 + a6;
              v25 = v22 + a6 + *(v7 + 24) < v23;
              if (v22 + a6 + *(v7 + 24) >= v23)
              {
                v22 = v23 - a6;
              }

              *&v62[11] = *(a1 + 107);
              if (v25)
              {
                v26 = v24;
              }

              else
              {
                v26 = v23 - a6 + a6;
              }

              v27 = a1[5];
              v60 = a1[4];
              v61 = v27;
              *v62 = a1[6];
              v28 = a1[1];
              v56 = *a1;
              v57 = v28;
              v29 = a1[3];
              v58 = a1[2];
              v59 = v29;
              v62[26] = 0;
              *&v57 = v22 + *&v73;
              v30 = v72;
              sub_26CCECBE0(&v72, &v65);
              sub_26CCEF154(v30, *(&v30 + 1), 0, v7, &v56);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD508, &qword_26CD47B90);
              v31 = swift_allocObject();
              *(v31 + 16) = xmmword_26CD3C1E0;
              v63[4] = v60;
              v63[5] = v61;
              v64[0] = *v62;
              *(v64 + 11) = *&v62[11];
              v63[0] = v56;
              v63[1] = v57;
              v63[2] = v58;
              v63[3] = v59;
              *(v31 + 56) = &type metadata for TimedMetadata.SongEntity;
              *(v31 + 64) = &protocol witness table for TimedMetadata.SongEntity;
              v32 = swift_allocObject();
              v33 = v61;
              v34 = v60;
              v35 = v61;
              v32[5] = v60;
              v32[6] = v33;
              v36 = *v62;
              v32[7] = *v62;
              *(v32 + 123) = *&v62[11];
              v37 = v57;
              v38 = v56;
              v39 = v57;
              v32[1] = v56;
              v32[2] = v37;
              v40 = v59;
              v41 = v58;
              v42 = v59;
              v32[3] = v58;
              v32[4] = v40;
              *a5 = a6;
              *(a5 + 8) = v22;
              *(a5 + 16) = v26;
              v69 = v34;
              v70 = v35;
              v71[0] = v36;
              *(v71 + 11) = *&v62[11];
              *(v31 + 32) = v32;
              *(a5 + 24) = v31;
              v65 = v38;
              v66 = v39;
              v67 = v41;
              v68 = v42;
              sub_26CCECBE0(v63, &v55);
              sub_26CCE57A0(&v65);
              return;
            }
          }
        }
      }

LABEL_32:
      *a5 = 0u;
      *(a5 + 16) = 0u;
      return;
    }
  }

  v43 = v72;
  swift_beginAccess();
  v44 = *(*(v6 + 2) + 16);
  if (!v44)
  {
    goto LABEL_32;
  }

  v45 = 0;
  v46 = 4;
  while (1)
  {
    v47 = *(v7 + 16);
    if (v45 >= *(v47 + 16))
    {
      break;
    }

    sub_26CC19A84(v47 + v46 * 8, &v65);
    v48 = *(&v66 + 1);
    v49 = v67;
    __swift_project_boxed_opaque_existential_1(&v65, *(&v66 + 1));
    v50 = (*(v49 + 8))(v48, v49);
    v6 = v51;
    if (v50 == v43 && v51 == *(&v43 + 1))
    {

LABEL_25:
      sub_26CCF1528(&v65, &v56);
      if (*(&v57 + 1))
      {
        sub_26CC2524C(&v56, v63);
        swift_beginAccess();
        v6 = *(v7 + 16);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v7 + 16) = v6;
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_27;
        }

        goto LABEL_34;
      }

      sub_26CC1B544(&v56, &qword_2804BD958, &unk_26CD47A00);
LABEL_30:
      __swift_destroy_boxed_opaque_existential_1(&v65);
      goto LABEL_32;
    }

    v53 = sub_26CD3AFDC();

    if (v53)
    {
      goto LABEL_25;
    }

    ++v45;
    __swift_destroy_boxed_opaque_existential_1(&v65);
    v46 += 5;
    if (v44 == v45)
    {
      goto LABEL_32;
    }
  }

  __break(1u);
LABEL_34:
  v6 = sub_26CCF21C4(v6);
  *(v7 + 16) = v6;
LABEL_27:
  if (v45 < *(v6 + 2))
  {
    __swift_assign_boxed_opaque_existential_1(&v6[v46], v63);
    *(v7 + 16) = v6;
    swift_endAccess();
    __swift_destroy_boxed_opaque_existential_1(v63);
    goto LABEL_30;
  }

  __break(1u);
}

uint64_t sub_26CCF1428@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_26CC19A84(a1, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCAA0, &qword_26CD460E0);
  if (swift_dynamicCast())
  {
    v5 = *(a2 + 122);
    v6 = *(a2 + 16);
    result = swift_allocObject();
    *(result + 16) = v10;
    *(result + 32) = v6;
    *(result + 88) = v14;
    *(result + 104) = v15;
    *(result + 120) = v16;
    *(result + 136) = v17;
    *(result + 40) = v11;
    *(result + 56) = v12;
    *(result + 72) = v13;
    *(result + 138) = v5;
    v8 = &protocol witness table for TimedMetadata.SongEntity;
    v9 = &type metadata for TimedMetadata.SongEntity;
  }

  else
  {
    v9 = 0;
    v8 = 0;
    result = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  a3[3] = v9;
  a3[4] = v8;
  *a3 = result;
  return result;
}

uint64_t sub_26CCF1528@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_26CC19A84(a1, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCAA0, &qword_26CD460E0);
  if (swift_dynamicCast())
  {
    result = swift_allocObject();
    *(result + 16) = v6;
    *(result + 80) = v9;
    *(result + 96) = v10;
    *(result + 112) = *v11;
    *(result + 122) = *&v11[10];
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = v7;
    *(result + 64) = v8;
    *(result + 138) = 0;
    v4 = &protocol witness table for TimedMetadata.SongEntity;
    v5 = &type metadata for TimedMetadata.SongEntity;
  }

  else
  {
    v5 = 0;
    v4 = 0;
    result = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  a2[3] = v5;
  a2[4] = v4;
  *a2 = result;
  return result;
}

void sub_26CCF1604(uint64_t (*a1)(void *, __n128), uint64_t a2, uint64_t a3)
{
  v17 = a1;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;

  v10 = 0;
  if (v8)
  {
    while (1)
    {
      v11 = v10;
LABEL_8:
      v12 = (*(a3 + 48) + ((v11 << 10) | (16 * __clz(__rbit64(v8)))));
      v13 = v12[1];
      v16[0] = *v12;
      v16[1] = v13;

      v14 = v17(v16);
      if (v3)
      {
        break;
      }

      v15 = v14;

      if (v15)
      {
        goto LABEL_12;
      }

      v8 &= v8 - 1;
      v10 = v11;
      if (!v8)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v11 >= v9)
      {
LABEL_12:

        return;
      }

      v8 = *(v5 + 8 * v11);
      ++v10;
      if (v8)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

uint64_t sub_26CCF175C(uint64_t (*a1)(void *, __n128), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = (a1)(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

void sub_26CCF1830(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_26CCF188C(v6, v7, a3);

  v9 = *a1;
  *v9 = v8;
  *a1 = v9 + 1;
}

unint64_t sub_26CCF188C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_26CCF1958(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_26CC168C0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_26CCF1958(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_26CCF1A64(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_26CD3ACCC();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_26CCF1A64(uint64_t a1, unint64_t a2)
{
  v3 = sub_26CCF1AB0(a1, a2);
  sub_26CCF1BE0(&unk_287DFC1C8);
  return v3;
}

void *sub_26CCF1AB0(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_26CCF1CCC(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_26CD3ACCC();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_26CD3A69C();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_26CCF1CCC(v10, 0);
        result = sub_26CD3AC5C();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

void sub_26CCF1BE0(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_26CCF1D40(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[v8 + 32], (a1 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v9 = *(v3 + 2);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 2) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void *sub_26CCF1CCC(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD970, &qword_26CD47B88);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_26CCF1D40(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD970, &qword_26CD47B88);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void sub_26CCF1E34(uint64_t a1, char a2, void *a3)
{
  v37 = *(a1 + 16);
  if (!v37)
  {
    goto LABEL_21;
  }

  LOBYTE(v5) = a2;
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  LOBYTE(v8) = *(a1 + 48);
  v9 = *a3;

  v10 = sub_26CC181C4(v7, v6);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_26CD34B80(v15, v5 & 1);
    v10 = sub_26CC181C4(v7, v6);
    if ((v16 & 1) == (v17 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v10 = sub_26CD3B02C();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    if (v16)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v20 = v10;
  sub_26CD36E98();
  v10 = v20;
  if (v16)
  {
LABEL_8:
    v18 = swift_allocError();
    swift_willThrow();
    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC10, &unk_26CD3D4C0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v21 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v22 = (v21[6] + 16 * v10);
  *v22 = v7;
  v22[1] = v6;
  *(v21[7] + v10) = v8;
  v23 = v21[2];
  v14 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v14)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_26CD3AC6C();
    MEMORY[0x26D6AD060](0xD00000000000001BLL, 0x800000026CD517E0);
    sub_26CD3AD1C();
    MEMORY[0x26D6AD060](39, 0xE100000000000000);
    sub_26CD3AD2C();
    __break(1u);
    return;
  }

  v21[2] = v24;
  if (v37 != 1)
  {
    v5 = (a1 + 72);
    v8 = 1;
    while (v8 < *(a1 + 16))
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v25 = *v5;
      v26 = *a3;

      v27 = sub_26CC181C4(v7, v6);
      v29 = v26[2];
      v30 = (v28 & 1) == 0;
      v14 = __OFADD__(v29, v30);
      v31 = v29 + v30;
      if (v14)
      {
        goto LABEL_23;
      }

      v16 = v28;
      if (v26[3] < v31)
      {
        sub_26CD34B80(v31, 1);
        v27 = sub_26CC181C4(v7, v6);
        if ((v16 & 1) != (v32 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v16)
      {
        goto LABEL_8;
      }

      v33 = *a3;
      *(*a3 + 8 * (v27 >> 6) + 64) |= 1 << v27;
      v34 = (v33[6] + 16 * v27);
      *v34 = v7;
      v34[1] = v6;
      *(v33[7] + v27) = v25;
      v35 = v33[2];
      v14 = __OFADD__(v35, 1);
      v36 = v35 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v8;
      v33[2] = v36;
      v5 += 24;
      if (v37 == v8)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
}

uint64_t *__swift_assign_boxed_opaque_existential_1(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v2 = result[3];
    v3 = a2[3];
    if (v2 == v3)
    {
      v10 = *(v2 - 8);
      if ((*(v10 + 82) & 2) != 0)
      {
        v12 = *a2;
        v13 = result;

        *v13 = v12;
      }

      else
      {
        v11 = *(v10 + 24);

        return v11();
      }
    }

    else
    {
      result[3] = v3;
      result[4] = a2[4];
      v4 = *(v2 - 8);
      v5 = *(v3 - 8);
      v6 = v5;
      v7 = *(v5 + 80);
      if ((*(v4 + 82) & 2) != 0)
      {
        if ((v7 & 0x20000) != 0)
        {
          *result = *a2;
        }

        else
        {
          (*(v5 + 16))();
        }
      }

      else
      {
        v9 = result;
        (*(v4 + 32))(v14);
        if ((v7 & 0x20000) != 0)
        {
          *v9 = *a2;
        }

        else
        {
          (*(v6 + 16))(v9, a2, v3);
        }

        return (*(v4 + 8))(v14, v2);
      }
    }
  }

  return result;
}

void *sub_26CCF2408(uint64_t a1, uint64_t a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    bzero(v13 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v7);
    sub_26CCF265C((v13 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0)), v6, a2, a1);
    v10 = v9;
  }

  else
  {
    v12 = swift_slowAlloc();

    v10 = sub_26CCF25CC(v12, v6, a2, a1);

    MEMORY[0x26D6AE340](v12, -1, -1);
  }

  return v10;
}

void *sub_26CCF25CC(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    sub_26CCF265C(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

void sub_26CCF265C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v53 = 0;
    v13 = 0;
    v14 = a3 + 56;
    v15 = 1 << *(a3 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(a3 + 56);
    v18 = (v15 + 63) >> 6;
    v19 = a4 + 56;
    while (v17)
    {
      v20 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_18:
      v51 = v20 | (v13 << 6);
      v23 = (*(a3 + 48) + 16 * v51);
      v25 = *v23;
      v24 = v23[1];
      sub_26CD3B0FC();

      sub_26CD3A54C();
      v26 = sub_26CD3B13C();
      v27 = -1 << *(v4 + 32);
      v28 = v26 & ~v27;
      if ((*(v19 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28))
      {
        v29 = ~v27;
        while (1)
        {
          v30 = (*(a4 + 48) + 16 * v28);
          v31 = *v30 == v25 && v30[1] == v24;
          if (v31 || (sub_26CD3AFDC() & 1) != 0)
          {
            break;
          }

          v28 = (v28 + 1) & v29;
          if (((*(v19 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
          {
            goto LABEL_10;
          }
        }

        *(a1 + ((v51 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v51;
        v32 = __OFADD__(v53++, 1);
        v4 = a4;
        if (v32)
        {
          __break(1u);
LABEL_30:
          v5 = a3;
LABEL_31:

          sub_26CCF2A38(a1, a2, v53, v5);
          return;
        }
      }

      else
      {
LABEL_10:

        v4 = a4;
      }
    }

    v21 = v13;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_30;
      }

      v22 = *(v14 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v17 = (v22 - 1) & v22;
        goto LABEL_18;
      }
    }

LABEL_54:
    __break(1u);
  }

  else
  {
    v53 = 0;
    v6 = 0;
    v7 = a4 + 56;
    v8 = 1 << *(a4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(a4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = a3 + 56;
    v49 = v11;
    while (v10)
    {
      v33 = __clz(__rbit64(v10));
      v52 = (v10 - 1) & v10;
LABEL_41:
      v36 = (*(v4 + 48) + 16 * (v33 | (v6 << 6)));
      v38 = *v36;
      v37 = v36[1];
      sub_26CD3B0FC();

      sub_26CD3A54C();
      v39 = sub_26CD3B13C();
      v40 = -1 << *(v5 + 32);
      v41 = v39 & ~v40;
      v42 = v41 >> 6;
      v43 = 1 << v41;
      if (((1 << v41) & *(v12 + 8 * (v41 >> 6))) != 0)
      {
        v44 = (*(v5 + 48) + 16 * v41);
        if (*v44 != v38 || v44[1] != v37)
        {
          v46 = ~v40;
          while ((sub_26CD3AFDC() & 1) == 0)
          {
            v41 = (v41 + 1) & v46;
            v42 = v41 >> 6;
            v43 = 1 << v41;
            if (((1 << v41) & *(v12 + 8 * (v41 >> 6))) == 0)
            {
              v5 = a3;
              goto LABEL_33;
            }

            v47 = (*(a3 + 48) + 16 * v41);
            if (*v47 == v38 && v47[1] == v37)
            {
              break;
            }
          }
        }

        v11 = v49;
        a1[v42] |= v43;
        v5 = a3;
        v32 = __OFADD__(v53++, 1);
        v4 = a4;
        v10 = v52;
        if (v32)
        {
          __break(1u);
          goto LABEL_54;
        }
      }

      else
      {
LABEL_33:

        v4 = a4;
        v11 = v49;
        v10 = v52;
      }
    }

    v34 = v6;
    while (1)
    {
      v6 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if (v6 >= v11)
      {
        goto LABEL_31;
      }

      v35 = *(v7 + 8 * v6);
      ++v34;
      if (v35)
      {
        v33 = __clz(__rbit64(v35));
        v52 = (v35 - 1) & v35;
        goto LABEL_41;
      }
    }
  }

  __break(1u);
}

uint64_t sub_26CCF2A38(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA98, &unk_26CD42870);
  result = sub_26CD3AC4C();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_26CD3B0FC();

    sub_26CD3A54C();
    result = sub_26CD3B13C();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_26CCF2C5C(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_26CD3AFDC() & 1;
  }
}

uint64_t sub_26CCF2CB4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_26CC2524C(&v12, v10 + 40 * a1 + 32);
}

void sub_26CCF2D4C(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v3 = *(a1 + 16);
  if (v3)
  {
    v42 = MEMORY[0x277D84F90];
    sub_26CCEB308(0, v3, 0);
    v5 = v42;
    v6 = v2 + 56;
    v7 = sub_26CD3AB6C();
    v8 = 0;
    v41 = a2 + 56;
    v34 = v2 + 64;
    v35 = v3;
    v36 = a2;
    v37 = v2 + 56;
    v38 = v2;
    while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v2 + 32))
    {
      v11 = v7 >> 6;
      if ((*(v6 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_33;
      }

      v39 = v8;
      v40 = *(v2 + 36);
      v12 = (*(v2 + 48) + 16 * v7);
      v14 = *v12;
      v13 = v12[1];
      if (*(a2 + 16))
      {
        sub_26CD3B0FC();
        swift_bridgeObjectRetain_n();
        sub_26CD3A54C();
        v15 = sub_26CD3B13C();
        v16 = -1 << *(a2 + 32);
        v17 = v15 & ~v16;
        if ((*(v41 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
        {
          v18 = ~v16;
          while (1)
          {
            v19 = (*(a2 + 48) + 16 * v17);
            v20 = *v19 == v14 && v19[1] == v13;
            if (v20 || (sub_26CD3AFDC() & 1) != 0)
            {
              break;
            }

            v17 = (v17 + 1) & v18;
            if (((*(v41 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
            {
              goto LABEL_17;
            }
          }

          v21 = 1;
        }

        else
        {
LABEL_17:

          v21 = 0;
        }
      }

      else
      {

        v21 = 0;
      }

      v22 = v5;
      v43 = v5;
      v23 = *(v5 + 16);
      v24 = *(v22 + 24);
      v25 = v40;
      if (v23 >= v24 >> 1)
      {
        sub_26CCEB308((v24 > 1), v23 + 1, 1);
        v25 = v40;
        v22 = v43;
      }

      *(v22 + 16) = v23 + 1;
      v26 = v22 + 24 * v23;
      *(v26 + 32) = v14;
      *(v26 + 40) = v13;
      *(v26 + 48) = v21;
      v2 = v38;
      v9 = 1 << *(v38 + 32);
      if (v7 >= v9)
      {
        goto LABEL_34;
      }

      v6 = v37;
      v27 = *(v37 + 8 * v11);
      if ((v27 & (1 << v7)) == 0)
      {
        goto LABEL_35;
      }

      v5 = v22;
      if (v25 != *(v38 + 36))
      {
        goto LABEL_36;
      }

      v28 = v27 & (-2 << (v7 & 0x3F));
      if (v28)
      {
        v9 = __clz(__rbit64(v28)) | v7 & 0x7FFFFFFFFFFFFFC0;
        v10 = v35;
        a2 = v36;
      }

      else
      {
        v29 = v11 << 6;
        v30 = v11 + 1;
        v10 = v35;
        v31 = (v34 + 8 * v11);
        a2 = v36;
        while (v30 < (v9 + 63) >> 6)
        {
          v33 = *v31++;
          v32 = v33;
          v29 += 64;
          ++v30;
          if (v33)
          {
            sub_26CC2FADC(v7, v25, 0);
            v9 = __clz(__rbit64(v32)) + v29;
            goto LABEL_4;
          }
        }

        sub_26CC2FADC(v7, v25, 0);
      }

LABEL_4:
      v8 = v39 + 1;
      v7 = v9;
      if (v39 + 1 == v10)
      {
        return;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
  }
}

uint64_t sub_26CCF3078(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x26D6AD2F0](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_26CC197B4(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t type metadata accessor for TimedMetadata(uint64_t a1)
{
  result = qword_2804BD960;
  if (!qword_2804BD960)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26CCF3174(uint64_t a1, double a2)
{
  result = sub_26CD3A44C();
  if (v3 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_26CCF3378(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26CCF3398(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

uint64_t sub_26CCF33E4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26CCF3404(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 40) = v3;
  return result;
}

uint64_t sub_26CCF3448(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x26D6AD2F0](v2, MEMORY[0x277D835B0], MEMORY[0x277D835B8]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_26CCDF144(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_26CCF34F0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_26CC246B8;

  return sub_26CCF085C(a1, v4, v5, v7, v6);
}

uint64_t sub_26CCF35B0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_26CC37110;

  return sub_26CCF03F0(a1, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_26CCF3688(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD870, &unk_26CD47430);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_26CCF36F8(uint64_t a1, void *a2, uint64_t a3)
{
  v64 = a3;
  v65 = a2;
  v3 = *(a1 + 16);
  if (!v3)
  {
    v5 = MEMORY[0x277D84F98];
LABEL_16:
    v26 = v65[2];
    if (v26)
    {
      v27 = v65 + 5;
      v28 = MEMORY[0x277D84F90];
      do
      {
        if (v5[2])
        {
          v30 = *(v27 - 1);
          v29 = *v27;

          v31 = sub_26CC181C4(v30, v29);
          if (v32)
          {
            sub_26CC19A84(v5[7] + 40 * v31, &v67);
            sub_26CC2524C(&v67, v70);
            sub_26CC19A84(v70, &v67);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v71 = v28;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v28 = sub_26CCBEC4C(0, v28[2] + 1, 1, v28);
              v71 = v28;
            }

            v35 = v28[2];
            v34 = v28[3];
            if (v35 >= v34 >> 1)
            {
              v65 = sub_26CCBEC4C((v34 > 1), v35 + 1, 1, v28);
              v71 = v65;
            }

            else
            {
              v65 = v28;
            }

            v36 = *(&v68 + 1);
            v37 = v69;
            v38 = __swift_mutable_project_boxed_opaque_existential_1(&v67, *(&v68 + 1));
            MEMORY[0x28223BE20](v38);
            v40 = &v63 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
            (*(v41 + 16))(v40);
            sub_26CCF2CB4(v35, v40, &v71, v36, v37);
            __swift_destroy_boxed_opaque_existential_1(&v67);
            v42 = sub_26CC181C4(v30, v29);
            v44 = v43;

            if (v44)
            {
              v45 = swift_isUniquelyReferenced_nonNull_native();
              v66 = v5;
              if (!v45)
              {
                sub_26CD37230();
                v5 = v66;
              }

              sub_26CC2524C((v5[7] + 40 * v42), &v67);
              sub_26CD382C8(v42, v5);
              __swift_destroy_boxed_opaque_existential_1(v70);
            }

            else
            {
              __swift_destroy_boxed_opaque_existential_1(v70);
              v69 = 0;
              v67 = 0u;
              v68 = 0u;
            }

            v28 = v65;
            sub_26CC1B544(&v67, &qword_2804BD958, &unk_26CD47A00);
          }

          else
          {
          }
        }

        v27 += 2;
        --v26;
      }

      while (v26);
    }

    else
    {
      v28 = MEMORY[0x277D84F90];
    }

    v46 = *(v64 + 16);
    if (v46)
    {
      v47 = (v64 + 40);
      do
      {
        if (v5[2])
        {
          v54 = *(v47 - 1);
          v55 = *v47;

          v56 = sub_26CC181C4(v54, v55);
          v58 = v57;

          if (v58)
          {
            sub_26CC19A84(v5[7] + 40 * v56, &v67);
            sub_26CC2524C(&v67, v70);
            sub_26CC19A84(v70, &v67);
            v59 = swift_isUniquelyReferenced_nonNull_native();
            v71 = v28;
            if ((v59 & 1) == 0)
            {
              v28 = sub_26CCBEC4C(0, v28[2] + 1, 1, v28);
              v71 = v28;
            }

            v61 = v28[2];
            v60 = v28[3];
            if (v61 >= v60 >> 1)
            {
              v28 = sub_26CCBEC4C((v60 > 1), v61 + 1, 1, v28);
              v71 = v28;
            }

            __swift_destroy_boxed_opaque_existential_1(v70);
            v48 = *(&v68 + 1);
            v49 = v69;
            v50 = __swift_mutable_project_boxed_opaque_existential_1(&v67, *(&v68 + 1));
            MEMORY[0x28223BE20](v50);
            v52 = &v63 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
            (*(v53 + 16))(v52);
            sub_26CCF2CB4(v61, v52, &v71, v48, v49);
            __swift_destroy_boxed_opaque_existential_1(&v67);
          }
        }

        v47 += 2;
        --v46;
      }

      while (v46);
    }

    return v28;
  }

  v4 = (a1 + 32);
  v5 = MEMORY[0x277D84F98];
  while (1)
  {
    v8 = v4[3];
    v9 = v4[4];
    __swift_project_boxed_opaque_existential_1(v4, v8);
    v10 = (*(v9 + 8))(v8, v9);
    v12 = v11;
    sub_26CC19A84(v4, v70);
    v13 = swift_isUniquelyReferenced_nonNull_native();
    *&v67 = v5;
    v14 = sub_26CC181C4(v10, v12);
    v16 = v5[2];
    v17 = (v15 & 1) == 0;
    v18 = __OFADD__(v16, v17);
    v19 = v16 + v17;
    if (v18)
    {
      break;
    }

    v20 = v15;
    if (v5[3] < v19)
    {
      sub_26CD3515C(v19, v13);
      v14 = sub_26CC181C4(v10, v12);
      if ((v20 & 1) != (v21 & 1))
      {
        goto LABEL_47;
      }

LABEL_10:
      if (v20)
      {
        goto LABEL_3;
      }

      goto LABEL_11;
    }

    if (v13)
    {
      goto LABEL_10;
    }

    v25 = v14;
    sub_26CD37230();
    v14 = v25;
    if (v20)
    {
LABEL_3:
      v6 = v14;

      v5 = v67;
      v7 = (*(v67 + 56) + 40 * v6);
      __swift_destroy_boxed_opaque_existential_1(v7);
      sub_26CC2524C(v70, v7);
      goto LABEL_4;
    }

LABEL_11:
    v5 = v67;
    *(v67 + 8 * (v14 >> 6) + 64) |= 1 << v14;
    v22 = (v5[6] + 16 * v14);
    *v22 = v10;
    v22[1] = v12;
    sub_26CC2524C(v70, v5[7] + 40 * v14);
    v23 = v5[2];
    v18 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (v18)
    {
      goto LABEL_46;
    }

    v5[2] = v24;
LABEL_4:
    v4 += 5;
    if (!--v3)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  result = sub_26CD3B02C();
  __break(1u);
  return result;
}

void *sub_26CCF3D04(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = MEMORY[0x277D84FA0];
  v78 = MEMORY[0x277D84FA0];
  v69 = *(a1 + 16);
  if (v69)
  {
    v5 = (a1 + 32);
    v6 = v69;
    do
    {
      v7 = v5[3];
      v8 = v5[4];
      __swift_project_boxed_opaque_existential_1(v5, v7);
      v9 = (*(v8 + 8))(v7, v8);
      sub_26CC197B4(&v72, v9, v10);

      v5 += 5;
      --v6;
    }

    while (v6);
  }

  v11 = *(a2 + 16);
  v12 = v78;
  if (!v11)
  {

    v71 = v4;
    v70 = MEMORY[0x277D84F90];
    if (!v69)
    {
      goto LABEL_45;
    }

    goto LABEL_28;
  }

  v68[0] = v3;
  v13 = 0;
  v14 = (a2 + 32);
  v15 = v78 + 56;
  v70 = MEMORY[0x277D84F90];
  do
  {
    sub_26CC19A84(&v14[5 * v13], v75);
    v16 = v76;
    v17 = v77;
    __swift_project_boxed_opaque_existential_1(v75, v76);
    v18 = (*(v17 + 8))(v16, v17);
    v20 = v19;
    if (*(v12 + 16) && (v21 = v18, sub_26CD3B0FC(), sub_26CD3A54C(), v22 = sub_26CD3B13C(), v23 = -1 << *(v12 + 32), v24 = v22 & ~v23, ((*(v15 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) != 0))
    {
      v25 = ~v23;
      while (1)
      {
        v26 = (*(v12 + 48) + 16 * v24);
        v27 = *v26 == v21 && v26[1] == v20;
        if (v27 || (sub_26CD3AFDC() & 1) != 0)
        {
          break;
        }

        v24 = (v24 + 1) & v25;
        if (((*(v15 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
        {
          goto LABEL_6;
        }
      }

      sub_26CC19A84(v75, &v72);
      v28 = v70;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v79[0] = v28;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v70 = sub_26CCBEC4C(0, v70[2] + 1, 1, v70);
        v79[0] = v70;
      }

      v31 = v70[2];
      v30 = v70[3];
      if (v31 >= v30 >> 1)
      {
        v70 = sub_26CCBEC4C((v30 > 1), v31 + 1, 1, v70);
        v79[0] = v70;
      }

      v32 = v73;
      v33 = v74;
      v34 = __swift_mutable_project_boxed_opaque_existential_1(&v72, v73);
      v68[1] = v68;
      MEMORY[0x28223BE20](v34);
      v36 = v68 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v37 + 16))(v36);
      sub_26CCF2CB4(v31, v36, v79, v32, v33);
      __swift_destroy_boxed_opaque_existential_1(&v72);
    }

    else
    {
LABEL_6:
    }

    ++v13;
    __swift_destroy_boxed_opaque_existential_1(v75);
  }

  while (v13 != v11);

  v71 = v4;
  do
  {
    v38 = v14[3];
    v39 = v14[4];
    __swift_project_boxed_opaque_existential_1(v14, v38);
    v40 = (*(v39 + 8))(v38, v39);
    sub_26CC197B4(&v72, v40, v41);

    v14 += 5;
    --v11;
  }

  while (v11);
  v4 = v71;
  v3 = v68[0];
  if (v69)
  {
LABEL_28:
    v42 = 0;
    v43 = v3 + 32;
    v44 = v4 + 56;
    do
    {
      sub_26CC19A84(v43 + 40 * v42, v75);
      v45 = v76;
      v46 = v77;
      __swift_project_boxed_opaque_existential_1(v75, v76);
      v47 = (*(v46 + 8))(v45, v46);
      v49 = v48;
      if (*(v4 + 16) && (v50 = v47, sub_26CD3B0FC(), sub_26CD3A54C(), v51 = sub_26CD3B13C(), v52 = -1 << *(v4 + 32), v53 = v51 & ~v52, ((*(v44 + ((v53 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v53) & 1) != 0))
      {
        v54 = ~v52;
        while (1)
        {
          v55 = (*(v4 + 48) + 16 * v53);
          v56 = *v55 == v50 && v55[1] == v49;
          if (v56 || (sub_26CD3AFDC() & 1) != 0)
          {
            break;
          }

          v53 = (v53 + 1) & v54;
          if (((*(v44 + ((v53 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v53) & 1) == 0)
          {
            goto LABEL_40;
          }
        }
      }

      else
      {
LABEL_40:

        sub_26CC19A84(v75, &v72);
        v57 = v70;
        v58 = swift_isUniquelyReferenced_nonNull_native();
        v79[0] = v57;
        if ((v58 & 1) == 0)
        {
          v70 = sub_26CCBEC4C(0, v70[2] + 1, 1, v70);
          v79[0] = v70;
        }

        v60 = v70[2];
        v59 = v70[3];
        if (v60 >= v59 >> 1)
        {
          v70 = sub_26CCBEC4C((v59 > 1), v60 + 1, 1, v70);
          v79[0] = v70;
        }

        v61 = v73;
        v62 = v74;
        v63 = __swift_mutable_project_boxed_opaque_existential_1(&v72, v73);
        MEMORY[0x28223BE20](v63);
        v65 = v68 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v66 + 16))(v65);
        sub_26CCF2CB4(v60, v65, v79, v61, v62);
        __swift_destroy_boxed_opaque_existential_1(&v72);
      }

      ++v42;
      __swift_destroy_boxed_opaque_existential_1(v75);
    }

    while (v42 != v69);
  }

LABEL_45:

  return v70;
}

void sub_26CCF4354(uint64_t a1, void *a2, char a3, uint64_t a4, __int128 *a5)
{
  swift_beginAccess();
  v10 = *(*(a4 + 16) + 16);
  if (v10)
  {
    v11 = 0;
    v12 = 4;
    while (1)
    {
      v13 = *(a4 + 16);
      if (v11 >= *(v13 + 16))
      {
        __break(1u);
        goto LABEL_24;
      }

      sub_26CC19A84(v13 + v12 * 8, v26);
      v14 = v27;
      v15 = v28;
      __swift_project_boxed_opaque_existential_1(v26, v27);
      v16 = (*(v15 + 8))(v14, v15);
      v5 = v17;
      if (v16 == a1 && v17 == a2)
      {
        break;
      }

      v19 = sub_26CD3AFDC();

      if (v19)
      {
        goto LABEL_12;
      }

      ++v11;
      __swift_destroy_boxed_opaque_existential_1(v26);
      v12 += 5;
      if (v10 == v11)
      {
        goto LABEL_19;
      }
    }

LABEL_12:
    sub_26CCEA8B4(v26, a5, &v23);
    if (!v24)
    {
      sub_26CC1B544(&v23, &qword_2804BD958, &unk_26CD47A00);
      goto LABEL_18;
    }

    sub_26CC2524C(&v23, v25);
    swift_beginAccess();
    v20 = *(a4 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a4 + 16) = v20;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v20 = sub_26CCF21C4(v20);
      *(a4 + 16) = v20;
    }

    if (v11 < v20[2])
    {
      __swift_assign_boxed_opaque_existential_1(&v20[v12], v25);
      *(a4 + 16) = v20;
      swift_endAccess();
      __swift_destroy_boxed_opaque_existential_1(v25);
LABEL_18:
      __swift_destroy_boxed_opaque_existential_1(v26);
      goto LABEL_19;
    }

    __break(1u);
  }

  else
  {
LABEL_19:
    if (a3)
    {
      v5 = [objc_opt_self() defaultCenter];
      if (qword_280BB9BB0 != -1)
      {
LABEL_24:
        swift_once();
      }

      [v5 postNotificationName:qword_280BB9BB8 object:a4];
    }
  }
}

unint64_t sub_26CCF45B4()
{
  result = qword_2804BD978;
  if (!qword_2804BD978)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2804BCA20, &unk_26CD3D4D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD978);
  }

  return result;
}

double TVAppPreferencesAccessor.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = [objc_opt_self() standardUserDefaults];
  *&result = 2;
  *(a1 + 8) = xmmword_26CD423B0;
  return result;
}

uint64_t sub_26CCF46C4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA30, &qword_26CD3DA70);
  v2 = swift_task_alloc();
  v3 = *v0;
  *(v1 + 96) = v2;
  *(v1 + 104) = v3;

  return MEMORY[0x2822009F8](sub_26CCF4760, 0, 0);
}

uint64_t sub_26CCF4760()
{
  v1 = v0[13];
  v2 = sub_26CD3A59C();
  v3 = [v1 stringForKey_];

  if (v3)
  {
    v4 = sub_26CD3A5CC();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v0[5] = &type metadata for FeatureFlagManager;
  v0[6] = sub_26CC30530();
  *(v0 + 16) = 0;
  v7 = sub_26CD3A29C();
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  if (v7)
  {
    if (!v6)
    {
      if (qword_280BBB5E8 != -1)
      {
        swift_once();
      }

      v8 = swift_task_alloc();
      v0[14] = v8;
      *v8 = v0;
      v8[1] = sub_26CCF4974;

      return TVBagService.bag.getter((v0 + 7));
    }
  }

  else if (!v6)
  {
    v10 = [objc_opt_self() app];
    v4 = sub_26CCB1F84(0xD000000000000019, 0x800000026CD4CD80);
    v6 = v11;
  }

  v12 = v0[1];

  return v12(v4, v6);
}

uint64_t sub_26CCF4974()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_26CCF4C00;
  }

  else
  {
    v2 = sub_26CCF4A88;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26CCF4A88()
{
  v1 = v0[12];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
  sub_26CD3A3BC();
  v2 = sub_26CD3A07C();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 48))(v1, 1, v2);
  v5 = v0[12];
  if (v4 == 1)
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 7);
    sub_26CC1B544(v5, &qword_2804BCA30, &qword_26CD3DA70);
    v6 = 0;
    v7 = 0;
  }

  else
  {
    v6 = sub_26CD39FAC();
    v7 = v8;
    (*(v3 + 8))(v5, v2);
    __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  }

  v9 = v0[1];

  return v9(v6, v7);
}

uint64_t sub_26CCF4C00()
{

  v1 = *(v0 + 8);

  return v1();
}

void TVAppPreferencesAccessor.tvAppEnabledOverride.setter(char a1)
{
  v2 = *v1;
  if (a1 == 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = sub_26CD3A7FC();
  }

  v4 = sub_26CD3A59C();
  [v2 setObject:v3 forKey:v4];
  swift_unknownObjectRelease();
}

uint64_t TVAppPreferences.hashValue.getter()
{
  sub_26CD3B0FC();
  MEMORY[0x26D6ADAF0](0);
  return sub_26CD3B13C();
}

uint64_t sub_26CCF4D74()
{
  v0 = [objc_opt_self() processInfo];
  v1 = [v0 environment];

  v2 = sub_26CD3A4FC();
  if (*(v2 + 16))
  {
    sub_26CC181C4(0xD00000000000001BLL, 0x800000026CD51970);
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t TVAppPreferencesAccessor.protocolVersion.getter()
{
  v1 = *v0;
  if (*(v0 + 8) == 2 || (v2 = *(v0 + 16), (sub_26CCF4D74() & 1) == 0))
  {
    v3 = sub_26CD3A59C();
    v4 = [v1 integerForKey_];

    if (v4)
    {
      return v4;
    }

    else
    {
      return 91;
    }
  }

  return v2;
}

uint64_t TVAppPreferencesAccessor.tvAppEnabledOverride.getter()
{
  v1 = *v0;
  v2 = sub_26CD3A59C();
  v3 = [v1 objectForKey_];

  if (v3)
  {
    sub_26CD3AB3C();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    if (swift_dynamicCast())
    {
      return v5;
    }

    else
    {
      return 2;
    }
  }

  else
  {
    sub_26CC1B544(v8, &qword_2804BBDA8, &qword_26CD3D5F0);
    return 2;
  }
}

void sub_26CCF4FD4(unsigned __int8 *a1, void **a2)
{
  v2 = *a2;
  if (*a1 == 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = sub_26CD3A7FC();
  }

  v4 = sub_26CD3A59C();
  [v2 setObject:v3 forKey:v4];
  swift_unknownObjectRelease();
}

uint64_t (*TVAppPreferencesAccessor.tvAppEnabledOverride.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = *v1;
  *(a1 + 8) = TVAppPreferencesAccessor.tvAppEnabledOverride.getter();
  return sub_26CCF50D4;
}

uint64_t sub_26CCF50D4(uint64_t a1)
{
  if (*(a1 + 8) == 2)
  {
    v2 = 0;
  }

  else
  {
    v2 = sub_26CD3A7FC();
  }

  v3 = *a1;
  v4 = sub_26CD3A59C();
  [v3 setObject:v2 forKey:v4];

  return swift_unknownObjectRelease();
}

unint64_t sub_26CCF5178()
{
  result = qword_2804BD980;
  if (!qword_2804BD980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD980);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PreferencesInput(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[16])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

void sub_26CCF5278(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD9A8, &unk_26CD47D50);
    v2 = sub_26CD3AD6C();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  do
  {
LABEL_10:
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      return;
    }

    if (v9 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v9);
    ++v7;
  }

  while (!v5);
  while (1)
  {
    v10 = __clz(__rbit64(v5)) | (v9 << 6);
    v11 = (*(a1 + 48) + 16 * v10);
    v12 = *v11;
    v13 = v11[1];
    sub_26CC168C0(*(a1 + 56) + 32 * v10, v24);
    *&v23 = v12;
    *(&v23 + 1) = v13;
    v21[2] = v23;
    v22[0] = v24[0];
    v22[1] = v24[1];
    v14 = v23;
    sub_26CC331CC(v22, v21);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC30, &qword_26CD46430);
    if (!swift_dynamicCast())
    {
      break;
    }

    v5 &= v5 - 1;
    v15 = sub_26CC181C4(v14, *(&v14 + 1));
    if (v16)
    {
      *(v2[6] + 16 * v15) = v14;
      v8 = v15;

      *(v2[7] + 8 * v8) = v20;

      v7 = v9;
      if (!v5)
      {
        goto LABEL_10;
      }
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_22;
      }

      *(v2 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v15;
      *(v2[6] + 16 * v15) = v14;
      *(v2[7] + 8 * v15) = v20;
      v17 = v2[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_23;
      }

      v2[2] = v19;
      v7 = v9;
      if (!v5)
      {
        goto LABEL_10;
      }
    }

LABEL_9:
    v9 = v7;
  }
}

void sub_26CCF54DC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBD00, &qword_26CD3CFC0);
    v2 = sub_26CD3AD6C();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  do
  {
LABEL_10:
    v10 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      return;
    }

    if (v10 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v7;
  }

  while (!v5);
  while (1)
  {
    v11 = __clz(__rbit64(v5)) | (v10 << 6);
    sub_26CCCAD30(*(a1 + 48) + 40 * v11, v27);
    sub_26CC168C0(*(a1 + 56) + 32 * v11, v28 + 8);
    v25[0] = v28[0];
    v25[1] = v28[1];
    v26 = v29;
    v24[0] = v27[0];
    v24[1] = v27[1];
    sub_26CCCAD30(v24, v19);
    if (!swift_dynamicCast())
    {
      break;
    }

    v5 &= v5 - 1;
    sub_26CC168C0(v25 + 8, v20);
    sub_26CC1B544(v24, &qword_2804BD9A0, &unk_26CD47D40);
    v21 = v18;
    sub_26CC331CC(v20, v22);
    v12 = v21;
    sub_26CC331CC(v22, v23);
    sub_26CC331CC(v23, &v21);
    v13 = sub_26CC181C4(v12, *(&v12 + 1));
    if (v14)
    {
      *(v2[6] + 16 * v13) = v12;
      v8 = v13;

      v9 = (v2[7] + 32 * v8);
      __swift_destroy_boxed_opaque_existential_1(v9);
      sub_26CC331CC(&v21, v9);
      v7 = v10;
      if (!v5)
      {
        goto LABEL_10;
      }
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_22;
      }

      *(v2 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v13;
      *(v2[6] + 16 * v13) = v12;
      sub_26CC331CC(&v21, (v2[7] + 32 * v13));
      v15 = v2[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_23;
      }

      v2[2] = v17;
      v7 = v10;
      if (!v5)
      {
        goto LABEL_10;
      }
    }

LABEL_9:
    v10 = v7;
  }

  sub_26CC1B544(v24, &qword_2804BD9A0, &unk_26CD47D40);
}

void sub_26CCF57B8(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBCD0, &qword_26CD3CF90);
    v2 = sub_26CD3AD6C();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = v1 + 64;
  v4 = 1 << *(v1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v1 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  while (v6)
  {
    v13 = v8;
LABEL_13:
    v14 = __clz(__rbit64(v6)) | (v13 << 6);
    sub_26CCCAD30(*(v1 + 48) + 40 * v14, v28);
    sub_26CC168C0(*(v1 + 56) + 32 * v14, v29 + 8);
    v26[0] = v29[0];
    v26[1] = v29[1];
    v27 = v30;
    v25[0] = v28[0];
    v25[1] = v28[1];
    sub_26CCCAD30(v25, v24);
    if (!swift_dynamicCast())
    {
      sub_26CC1B544(v25, &qword_2804BD9A0, &unk_26CD47D40);

LABEL_22:

      return;
    }

    sub_26CC168C0(v26 + 8, v24);
    sub_26CC1B544(v25, &qword_2804BD9A0, &unk_26CD47D40);
    if ((swift_dynamicCast() & 1) == 0)
    {

      goto LABEL_22;
    }

    v6 &= v6 - 1;
    v15 = sub_26CC181C4(v22, v23);
    if (v16)
    {
      v9 = v1;
      v10 = 16 * v15;
      v11 = (v2[6] + 16 * v15);
      *v11 = v22;
      v11[1] = v23;

      v12 = (v2[7] + v10);
      v1 = v9;
      *v12 = v22;
      v12[1] = v23;

      v8 = v13;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_24;
      }

      *(v2 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v15;
      v17 = (v2[6] + 16 * v15);
      *v17 = v22;
      v17[1] = v23;
      v18 = (v2[7] + 16 * v15);
      *v18 = v22;
      v18[1] = v23;
      v19 = v2[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_25;
      }

      v2[2] = v21;
      v8 = v13;
    }
  }

  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v7)
    {
      goto LABEL_22;
    }

    v6 = *(v3 + 8 * v13);
    ++v8;
    if (v6)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
}

id sub_26CCF5AD4()
{
  result = [objc_allocWithZone(MEMORY[0x277CEE5D0]) init];
  qword_2804D1558 = result;
  return result;
}

uint64_t sub_26CCF5B1C()
{
  v7 = sub_26CD3A9CC();
  v0 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_26CD3AA5C();
  MEMORY[0x28223BE20](v3);
  v4 = sub_26CD3A4CC();
  MEMORY[0x28223BE20](v4 - 8);
  v6[1] = sub_26CCF753C();
  sub_26CD3A4AC();
  v8 = MEMORY[0x277D84F90];
  sub_26CC1A3A8(&qword_2804BC370, MEMORY[0x277D852D8], MEMORY[0x277D852E0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC378, &unk_26CD40020);
  sub_26CCF7588(&qword_2804BC380, &qword_2804BC378, &unk_26CD40020);
  sub_26CD3AB5C();
  (*(v0 + 104))(v2, *MEMORY[0x277D85268], v7);
  result = sub_26CD3AA6C();
  qword_2804BD990 = result;
  return result;
}

void sub_26CCF5D6C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA30, &qword_26CD3DA70);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v78 - v2;
  v4 = sub_26CD39D0C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v78 - v9;
  v11 = sub_26CD3A07C();
  v12 = MEMORY[0x28223BE20](v11);
  if (byte_2804BD998 != 1)
  {
    v80 = v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    v81 = v14;
    v82 = v12;
    v90 = 0;
    if (qword_2804BBA90 != -1)
    {
      swift_once();
    }

    v16 = qword_2804BD990;
    v17 = swift_allocObject();
    *(v17 + 16) = &v90;
    *(v17 + 24) = v0;
    v18 = swift_allocObject();
    *(v18 + 16) = sub_26CCF75DC;
    *(v18 + 24) = v17;
    v83 = v17;
    v88 = sub_26CCF75E4;
    v89 = v18;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_26CCF5A98;
    v87 = &block_descriptor_10_0;
    v19 = _Block_copy(aBlock);
    v20 = v16;
    v21 = v0;

    dispatch_sync(v20, v19);

    _Block_release(v19);
    LOBYTE(v19) = swift_isEscapingClosureAtFileLocation();

    if (v19)
    {
      __break(1u);
    }

    else
    {
      if (v90)
      {
        v79 = v90;
        v22 = &selRef_dataWithJSONObject_options_error_;
        v85 = v21;
        v23 = [v21 request];
        sub_26CD39C6C();

        sub_26CD39C9C();
        v26 = *(v5 + 8);
        v25 = v5 + 8;
        v24 = v26;
        v26(v10, v4);
        v28 = v81;
        v27 = v82;
        if ((*(v81 + 48))(v3, 1, v82) != 1)
        {
          (*(v28 + 32))(v80, v3, v27);
          if (qword_2804BBA88 != -1)
          {
            swift_once();
          }

          v36 = *(off_2804BD988 + 2);
          if (v36)
          {
            v37 = off_2804BD988 + 32;
            v78[1] = off_2804BD988;

            v84 = v25;
            v38 = v8;
            do
            {
              sub_26CC19A84(v37, aBlock);
              v39 = v24;
              v40 = v87;
              v41 = v88;
              __swift_project_boxed_opaque_existential_1(aBlock, v87);
              v42 = v22;
              v43 = [v85 v22[71]];
              sub_26CD39C6C();

              v22 = v42;
              v44 = *(v41 + 2);
              v45 = v41;
              v24 = v39;
              v44(v38, v40, v45);
              __swift_destroy_boxed_opaque_existential_1(aBlock);
              v39(v38, v4);
              v37 += 40;
              --v36;
            }

            while (v36);
          }

          v46 = v79;
          v47 = [v79 headers];
          if (!v47 || (v48 = v47, v49 = sub_26CD3A4FC(), v48, sub_26CCF57B8(v49), v51 = v50, , !v51))
          {
            sub_26CC31D94(MEMORY[0x277D84F90]);
          }

          v52 = v80;
          v53 = [v46 statusCode];
          v54 = objc_allocWithZone(MEMORY[0x277CCAA40]);
          v55 = sub_26CD39FCC();
          v56 = sub_26CD3A59C();
          v57 = MEMORY[0x277D837D0];
          v58 = sub_26CD3A4DC();

          v59 = [v54 initWithURL:v55 statusCode:v53 HTTPVersion:v56 headerFields:v58];

          if (v59)
          {
            v60 = [v46 body];
            v61 = v81;
            if (v60)
            {
              v62 = v60;
              v63 = sub_26CD3A0BC();
              v65 = v64;

              v66 = v85;
              v67 = [v85 client];
              if (v67)
              {
                v68 = v67;
                v69 = sub_26CD3A09C();
                [v68 URLProtocol:v66 didLoadData:v69];
                sub_26CC18C50(v63, v65);

                swift_unknownObjectRelease();
              }

              else
              {
                sub_26CC18C50(v63, v65);
              }
            }

            v73 = v85;
            v74 = [v85 client];
            if (v74)
            {
              [v74 URLProtocol:v73 didReceiveResponse:v59 cacheStoragePolicy:2];
              swift_unknownObjectRelease();
            }

            if (qword_2804BBA80 != -1)
            {
              swift_once();
            }

            v75 = [qword_2804D1558 executedObservable];
            [v75 sendResult_];

            v76 = v85;
            v77 = [v85 client];
            if (v77)
            {
              [v77 URLProtocolDidFinishLoading_];

              swift_unknownObjectRelease();
              (*(v61 + 8))(v52, v82);
            }

            else
            {
              (*(v61 + 8))(v52, v82);
            }
          }

          else
          {
            if (qword_280BBB6B8 != -1)
            {
              swift_once();
            }

            v70 = qword_280BBCC98;
            v71 = sub_26CD3A99C();
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
            v72 = swift_allocObject();
            *(v72 + 16) = xmmword_26CD3C1E0;
            *(v72 + 56) = v57;
            *(v72 + 64) = sub_26CC19E10();
            *(v72 + 32) = 0xD000000000000025;
            *(v72 + 40) = 0x800000026CD51A50;
            sub_26CD3A3DC(v71, &dword_26CC14000, v70, "%@", 2, 2, v72);

            (*(v81 + 8))(v52, v82);
          }

          goto LABEL_16;
        }

        sub_26CC1B544(v3, &qword_2804BCA30, &qword_26CD3DA70);
        if (qword_280BBB6B8 != -1)
        {
          swift_once();
        }

        v29 = qword_280BBCC98;
        v30 = sub_26CD3A99C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
        v31 = swift_allocObject();
        *(v31 + 16) = xmmword_26CD3C1E0;
        *(v31 + 56) = MEMORY[0x277D837D0];
        *(v31 + 64) = sub_26CC19E10();
        *(v31 + 32) = 0xD00000000000001FLL;
        *(v31 + 40) = 0x800000026CD51A30;
        sub_26CD3A3DC(v30, &dword_26CC14000, v29, "%@", 2, 2, v31);

LABEL_15:

LABEL_16:
        v35 = v90;

        return;
      }

      if (qword_280BBB6B8 == -1)
      {
LABEL_14:
        v32 = qword_280BBCC98;
        v33 = sub_26CD3A99C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
        v34 = swift_allocObject();
        *(v34 + 16) = xmmword_26CD3C1E0;
        *(v34 + 56) = MEMORY[0x277D837D0];
        *(v34 + 64) = sub_26CC19E10();
        *(v34 + 32) = 0xD00000000000001ALL;
        *(v34 + 40) = 0x800000026CD51A10;
        sub_26CD3A3DC(v33, &dword_26CC14000, v32, "%@", 2, 2, v34);
        goto LABEL_15;
      }
    }

    swift_once();
    goto LABEL_14;
  }

  v15 = objc_opt_self();
  do
  {
    [v15 sleepForTimeInterval_];
  }

  while ((byte_2804BD998 & 1) != 0);
}

void sub_26CCF6808(void **a1, void *a2)
{
  v19 = a2;
  v18 = sub_26CD39D0C();
  v3 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2804BBA78 != -1)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v6 = qword_2804D1550;
    v16 = a1;
    a1 = qword_2804D1550 >> 62 ? sub_26CD3ABAC() : *((qword_2804D1550 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!a1)
    {
      break;
    }

    v7 = 0;
    v17 = v6 & 0xC000000000000001;
    v8 = v3 + 1;
    while (1)
    {
      if (v17)
      {
        v9 = MEMORY[0x26D6AD660](v7, v6);
      }

      else
      {
        if (v7 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v9 = *(v6 + 8 * v7 + 32);
      }

      v3 = v9;
      v10 = (v7 + 1);
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v11 = [v19 request];
      sub_26CD39C6C();

      v12 = sub_26CD39C4C();
      (*v8)(v5, v18);
      v13 = [v3 shouldOverrideURLRequest_];

      if (v13)
      {

        v14 = [v3 response];

        goto LABEL_16;
      }

      ++v7;
      if (v10 == a1)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    swift_once();
  }

LABEL_14:

  v14 = 0;
LABEL_16:
  v15 = *v16;
  *v16 = v14;
}

uint64_t sub_26CCF6AA0(uint64_t a1)
{
  v3 = sub_26CD39D0C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v16 = 0;
  if (qword_2804BBA90 != -1)
  {
    swift_once();
  }

  v6 = qword_2804BD990;
  (*(v4 + 16))(&aBlock[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  v7 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = v1;
  (*(v4 + 32))(v8 + v7, &aBlock[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  *(v8 + ((v5 + v7 + 7) & 0xFFFFFFFFFFFFFFF8)) = &v16;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_26CCF760C;
  *(v9 + 24) = v8;
  aBlock[4] = sub_26CCF76A4;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26CCF5A98;
  aBlock[3] = &block_descriptor_20;
  v10 = _Block_copy(aBlock);
  v11 = v6;

  dispatch_sync(v11, v10);

  _Block_release(v10);
  LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

  if (v10)
  {
    __break(1u);
  }

  else
  {
    v13 = v16;

    return v13;
  }

  return result;
}

void sub_26CCF6D14(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if (qword_2804BBA78 != -1)
  {
    swift_once();
  }

  v4 = qword_2804D1550;
  if (qword_2804D1550 >> 62)
  {
    v5 = sub_26CD3ABAC();
    if (!v5)
    {
      return;
    }
  }

  else
  {
    v5 = *((qword_2804D1550 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      return;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
  }

  else
  {

    for (i = 0; i != v5; ++i)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x26D6AD660](i, v4);
      }

      else
      {
        v7 = *(v4 + 8 * i + 32);
      }

      v8 = v7;
      v9 = sub_26CD39C4C();
      v10 = [v8 shouldOverrideURLRequest_];

      if (v10)
      {
        *a3 = 1;
      }
    }
  }
}

void sub_26CCF7048()
{
  if (qword_2804BBA80 != -1)
  {
    swift_once();
  }

  v0 = [qword_2804D1558 response];
  [v0 stopRunningTasks];

  byte_2804BD998 = 0;
}

id sub_26CCF7210()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NetworkProxy();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_26CCF753C()
{
  result = qword_2804BC368;
  if (!qword_2804BC368)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2804BC368);
  }

  return result;
}

uint64_t sub_26CCF7588(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_26CCF760C()
{
  v1 = *(sub_26CD39D0C() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_26CCF6D14(v3, v0 + v2, v4);
}

uint64_t sub_26CCF76B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[160] = a3;
  v3[159] = a2;
  v3[158] = a1;
  v4 = sub_26CD3A07C();
  v3[161] = v4;
  v3[162] = *(v4 - 8);
  v3[163] = swift_task_alloc();
  v3[164] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA30, &qword_26CD3DA70);
  v3[165] = swift_task_alloc();
  v3[166] = swift_task_alloc();
  v3[167] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26CCF7800, 0, 0);
}

uint64_t sub_26CCF7800()
{
  v1 = objc_opt_self();
  v2 = sub_26CD3A4DC();
  *(v0 + 1248) = 0;
  v3 = [v1 dataWithJSONObject:v2 options:0 error:v0 + 1248];

  v4 = *(v0 + 1248);
  if (v3)
  {
    v5 = sub_26CD3A0BC();
    v7 = v6;

    *(v0 + 1344) = v5;
    *(v0 + 1352) = v7;
    sub_26CD39D5C();
    swift_allocObject();
    sub_26CD39D4C();
    sub_26CCFB28C();
    sub_26CD39D3C();

    memcpy((v0 + 16), (v0 + 536), 0x208uLL);
    *(v0 + 1216) = *(v0 + 24);
    if (*(v0 + 408) == 1)
    {
      v11 = 0;
      v12 = 0;
    }

    else
    {
      if (*(v0 + 440))
      {
        v11 = *(v0 + 432);
        v12 = *(v0 + 440);
      }

      else
      {
        v11 = *(v0 + 416);
        v12 = *(v0 + 424);
      }
    }

    *(v0 + 1368) = v12;
    *(v0 + 1360) = v11;
    if (*(v0 + 312) == 1)
    {
      v13 = 0;
      v14 = 0;
    }

    else
    {
      if (*(v0 + 344))
      {
        v13 = *(v0 + 336);
        v14 = *(v0 + 344);
      }

      else
      {
        v13 = *(v0 + 320);
        v14 = *(v0 + 328);
      }
    }

    *(v0 + 1384) = v14;
    *(v0 + 1376) = v13;
    sub_26CC1B4DC(v0 + 1216, v0 + 1232, &qword_2804BCCD0, &qword_26CD42A10);
    *(v0 + 1392) = sub_26CCFB2E0(v0 + 16);
    v15 = swift_task_alloc();
    *(v0 + 1400) = v15;
    *v15 = v0;
    v15[1] = sub_26CCF7B50;
    v16 = *(v0 + 1336);
    v17 = *(v0 + 1280);

    return sub_26CCF8DB0(v16, v17);
  }

  else
  {
    v8 = v4;
    sub_26CD39F8C();

    swift_willThrow();

    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_26CCF7B50(uint64_t a1)
{
  *(*v1 + 1408) = a1;

  return MEMORY[0x2822009F8](sub_26CCF7C7C, 0, 0);
}

uint64_t sub_26CCF7C7C()
{
  v1 = *(v0 + 1328);
  v2 = *(v0 + 1296);
  v3 = *(v0 + 1288);
  sub_26CC1B4DC(*(v0 + 1336), v1, &qword_2804BCA30, &qword_26CD3DA70);
  v4 = *(v2 + 48);
  v5 = v4(v1, 1, v3);
  v6 = *(v0 + 1408);
  v7 = *(v0 + 1328);
  if (v5 == 1)
  {

    sub_26CC1B544(v7, &qword_2804BCA30, &qword_26CD3DA70);
  }

  else
  {
    (*(*(v0 + 1296) + 32))(*(v0 + 1312), *(v0 + 1328), *(v0 + 1288));
    if (v6)
    {
      v8 = *(v0 + 1408);
      v9 = *(v0 + 1392);
      v10 = *(v0 + 1312);
      v11 = *(v0 + 1296);
      v12 = *(v0 + 1288);
      *(v0 + 1112) = v12;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 1088));
      (*(v11 + 16))(boxed_opaque_existential_1, v10, v12);
      sub_26CC331CC((v0 + 1088), (v0 + 1120));
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_26CD38DDC((v0 + 1120), 0x52556E6F69746361, 0xE90000000000004CLL, isUniquelyReferenced_nonNull_native);
      *(v0 + 1176) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BD450, &unk_26CD47370);
      *(v0 + 1152) = v8;
      sub_26CC331CC((v0 + 1152), (v0 + 1184));
      v15 = swift_isUniquelyReferenced_nonNull_native();
      sub_26CD38DDC((v0 + 1184), 0x7363697274656DLL, 0xE700000000000000, v15);
      (*(v11 + 8))(v10, v12);
      v16 = v9;
      v17 = *(v0 + 1224);
      if (v17)
      {
        goto LABEL_8;
      }

LABEL_5:

      sub_26CCFB5C4(v0 + 16);
LABEL_24:
      if (qword_280BB9C20 != -1)
      {
        swift_once();
      }

      v28 = *(v0 + 1352);
      v29 = *(v0 + 1344);
      v30 = *(v0 + 1336);
      v36 = qword_280BBCBE0;
      v37 = sub_26CD3A98C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
      v38 = swift_allocObject();
      *(v38 + 16) = xmmword_26CD3C1E0;
      *(v38 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
      *(v38 + 64) = sub_26CC2E6E8();
      *(v38 + 32) = &unk_287DFB700;
      sub_26CD3A3DC(v37, &dword_26CC14000, v36, "%@", 2, 2, v38);

      sub_26CCFB618();
      swift_allocError();
      *v39 = 2;
      goto LABEL_38;
    }

    (*(*(v0 + 1296) + 8))(*(v0 + 1312), *(v0 + 1288));
  }

  v16 = *(v0 + 1392);
  v17 = *(v0 + 1224);
  if (!v17)
  {
    goto LABEL_5;
  }

LABEL_8:
  v18 = *(v0 + 1216);
  v19 = HIBYTE(v17) & 0xF;
  if ((v17 & 0x2000000000000000) == 0)
  {
    v19 = v18 & 0xFFFFFFFFFFFFLL;
  }

  if (!v19)
  {

    sub_26CCFB5C4(v0 + 16);
    sub_26CC1B544(v0 + 1216, &qword_2804BCCD0, &qword_26CD42A10);
    goto LABEL_24;
  }

  v20 = *(v0 + 1368);
  if (!v20)
  {

    sub_26CC1B544(v0 + 1216, &qword_2804BCCD0, &qword_26CD42A10);
    sub_26CCFB5C4(v0 + 16);
LABEL_29:
    if (qword_280BB9C20 != -1)
    {
      swift_once();
    }

    v28 = *(v0 + 1352);
    v29 = *(v0 + 1344);
    v30 = *(v0 + 1336);
    v40 = qword_280BBCBE0;
    v41 = sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_26CD3C1E0;
    *(v42 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v42 + 64) = sub_26CC2E6E8();
    *(v42 + 32) = &unk_287DFB6D0;
    sub_26CD3A3DC(v41, &dword_26CC14000, v40, "%@", 2, 2, v42);

    sub_26CCFB618();
    swift_allocError();
    v35 = 4;
    goto LABEL_37;
  }

  v21 = *(v0 + 1360) & 0xFFFFFFFFFFFFLL;
  if ((v20 & 0x2000000000000000) != 0)
  {
    v21 = HIBYTE(v20) & 0xF;
  }

  v22 = *(v0 + 1384);
  if (!v21)
  {

    sub_26CC1B544(v0 + 1216, &qword_2804BCCD0, &qword_26CD42A10);
    sub_26CCFB5C4(v0 + 16);

    goto LABEL_29;
  }

  if (!v22)
  {
    sub_26CC1B544(v0 + 1216, &qword_2804BCCD0, &qword_26CD42A10);

    sub_26CCFB5C4(v0 + 16);
LABEL_34:
    if (qword_280BB9C20 != -1)
    {
      swift_once();
    }

    v28 = *(v0 + 1352);
    v29 = *(v0 + 1344);
    v30 = *(v0 + 1336);
    v43 = qword_280BBCBE0;
    v44 = sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_26CD3C1E0;
    *(v45 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v45 + 64) = sub_26CC2E6E8();
    *(v45 + 32) = &unk_287DFB6A0;
    sub_26CD3A3DC(v44, &dword_26CC14000, v43, "%@", 2, 2, v45);

    sub_26CCFB618();
    swift_allocError();
    v35 = 3;
    goto LABEL_37;
  }

  v23 = *(v0 + 1376) & 0xFFFFFFFFFFFFLL;
  if ((v22 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v22) & 0xF;
  }

  if (!v23)
  {
    sub_26CC1B544(v0 + 1216, &qword_2804BCCD0, &qword_26CD42A10);

    sub_26CCFB5C4(v0 + 16);

    goto LABEL_34;
  }

  v24 = *(v0 + 1320);
  v25 = *(v0 + 1288);
  sub_26CC1B4DC(*(v0 + 1336), v24, &qword_2804BCA30, &qword_26CD3DA70);
  v26 = v4(v24, 1, v25);
  v27 = *(v0 + 1320);
  if (v26 == 1)
  {
    sub_26CC1B544(v0 + 1216, &qword_2804BCCD0, &qword_26CD42A10);

    sub_26CCFB5C4(v0 + 16);
    sub_26CC1B544(v27, &qword_2804BCA30, &qword_26CD3DA70);
    if (qword_280BB9C20 != -1)
    {
      swift_once();
    }

    v28 = *(v0 + 1352);
    v29 = *(v0 + 1344);
    v30 = *(v0 + 1336);
    v31 = qword_280BBCBE0;
    v32 = sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_26CD3C1E0;
    *(v33 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v33 + 64) = sub_26CC2E6E8();
    *(v33 + 32) = &unk_287DFB670;
    sub_26CD3A3DC(v32, &dword_26CC14000, v31, "%@", 2, 2, v33);

    sub_26CCFB618();
    swift_allocError();
    v35 = 1;
LABEL_37:
    *v34 = v35;
LABEL_38:
    swift_willThrow();
    sub_26CC18C50(v29, v28);
    v46 = v30;
LABEL_39:
    sub_26CC1B544(v46, &qword_2804BCA30, &qword_26CD3DA70);

    v47 = *(v0 + 8);
    goto LABEL_40;
  }

  (*(*(v0 + 1296) + 32))(*(v0 + 1304), *(v0 + 1320), *(v0 + 1288));
  v49 = *(v0 + 88);
  if (v49 != 2 && (v49 & 1) != 0 && (_s13TVAppServices16PreferencesStoreV26sportsScoreSpoilersAllowedSbvgZ_0() & 1) == 0)
  {
    sub_26CC1B544(v0 + 1216, &qword_2804BCCD0, &qword_26CD42A10);

    sub_26CCFB5C4(v0 + 16);
    if (qword_280BB9C20 != -1)
    {
      swift_once();
    }

    v64 = *(v0 + 1352);
    v65 = *(v0 + 1344);
    v92 = *(v0 + 1304);
    v96 = *(v0 + 1336);
    v66 = *(v0 + 1296);
    v67 = *(v0 + 1288);
    v68 = qword_280BBCBE0;
    v69 = sub_26CD3A99C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v70 = swift_allocObject();
    *(v70 + 16) = xmmword_26CD3C1E0;
    *(v70 + 56) = MEMORY[0x277D837D0];
    *(v70 + 64) = sub_26CC19E10();
    *(v70 + 32) = 0xD000000000000053;
    *(v70 + 40) = 0x800000026CD51B30;
    sub_26CD3A3DC(v69, &dword_26CC14000, v68, "%@", 2, 2, v70);

    sub_26CCFB618();
    swift_allocError();
    *v71 = 6;
    goto LABEL_72;
  }

  sub_26CD3A61C();
  has_internal_content = os_variant_has_internal_content();

  if (*(v16 + 16))
  {
    v51 = sub_26CC181C4(0x79726F6765746163, 0xE800000000000000);
    if (v52)
    {
      sub_26CC168C0(*(v16 + 56) + 32 * v51, v0 + 1056);
      if ((swift_dynamicCast() & 1) != 0 && !((*(v0 + 1256) != 0) | has_internal_content & 1))
      {
        sub_26CC1B544(v0 + 1216, &qword_2804BCCD0, &qword_26CD42A10);

        sub_26CCFB5C4(v0 + 16);
        if (qword_280BB9C20 != -1)
        {
          swift_once();
        }

        v64 = *(v0 + 1352);
        v65 = *(v0 + 1344);
        v92 = *(v0 + 1304);
        v96 = *(v0 + 1336);
        v66 = *(v0 + 1296);
        v67 = *(v0 + 1288);
        v87 = qword_280BBCBE0;
        v88 = sub_26CD3A99C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
        v89 = swift_allocObject();
        *(v89 + 16) = xmmword_26CD3C1E0;
        *(v89 + 56) = MEMORY[0x277D837D0];
        *(v89 + 64) = sub_26CC19E10();
        *(v89 + 32) = 0xD00000000000003CLL;
        *(v89 + 40) = 0x800000026CD51AF0;
        sub_26CD3A3DC(v88, &dword_26CC14000, v87, "%@", 2, 2, v89);

        sub_26CCFB618();
        swift_allocError();
        *v90 = 0;
LABEL_72:
        swift_willThrow();
        sub_26CC18C50(v65, v64);
        (*(v66 + 8))(v92, v67);
LABEL_73:
        v46 = v96;
        goto LABEL_39;
      }
    }
  }

  if (BYSetupAssistantNeedsToRun())
  {
    sub_26CC1B544(v0 + 1216, &qword_2804BCCD0, &qword_26CD42A10);

    sub_26CCFB5C4(v0 + 16);
    if (qword_280BB9C20 != -1)
    {
      swift_once();
    }

    v53 = *(v0 + 1352);
    v54 = *(v0 + 1344);
    v96 = *(v0 + 1336);
    v55 = *(v0 + 1304);
    v56 = *(v0 + 1296);
    v57 = *(v0 + 1288);
    v58 = qword_280BBCBE0;
    v59 = sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v60 = swift_allocObject();
    *(v60 + 16) = xmmword_26CD3C1E0;
    *(v60 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v60 + 64) = sub_26CC2E6E8();
    *(v60 + 32) = &unk_287DFB640;
    sub_26CD3A3DC(v59, &dword_26CC14000, v58, "%@", 2, 2, v60);

    sub_26CCFB618();
    swift_allocError();
    *v61 = 5;
    swift_willThrow();
    sub_26CC18C50(v54, v53);
    (*(v56 + 8))(v55, v57);
    goto LABEL_73;
  }

  sub_26CCFB5C4(v0 + 16);
  v62 = *(v0 + 497);
  if (v62 != 2 && (v62 & 1) == 0)
  {
    if (qword_280BB9C20 != -1)
    {
      swift_once();
    }

    v93 = qword_280BBCBE0;
    v97 = *(v0 + 1280);
    sub_26CD3AC6C();
    MEMORY[0x26D6AD060](0xD000000000000040, 0x800000026CD51AA0);
    sub_26CC1B8FC();
    v72 = sub_26CD3AF8C();
    MEMORY[0x26D6AD060](v72);

    v73 = sub_26CD3A99C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v74 = swift_allocObject();
    *(v74 + 16) = xmmword_26CD3C1E0;
    *(v74 + 56) = MEMORY[0x277D837D0];
    *(v74 + 64) = sub_26CC19E10();
    *(v74 + 32) = 0;
    *(v74 + 40) = 0xE000000000000000;
    sub_26CD3A3DC(v73, &dword_26CC14000, v93, "%@", 2, 2, v74);

    v75 = *(v97 + 16);

    if (!v75)
    {
      goto LABEL_66;
    }

LABEL_64:
    v76 = sub_26CC181C4(0x7363697274656DLL, 0xE700000000000000);
    v77 = *(v0 + 1352);
    v78 = *(v0 + 1344);
    v94 = *(v0 + 1304);
    v98 = *(v0 + 1336);
    v79 = *(v0 + 1296);
    v80 = *(v0 + 1288);
    if (v81)
    {
      sub_26CC168C0(*(*(v0 + 1280) + 56) + 32 * v76, *(v0 + 1272));
      sub_26CC18C50(v78, v77);
      (*(v79 + 8))(v94, v80);
      sub_26CC1B544(v98, &qword_2804BCA30, &qword_26CD3DA70);
    }

    else
    {
      v91 = *(v0 + 1272);
      sub_26CC18C50(v78, v77);
      (*(v79 + 8))(v94, v80);
      sub_26CC1B544(v98, &qword_2804BCA30, &qword_26CD3DA70);
      *v91 = 0u;
      v91[1] = 0u;
    }

    goto LABEL_68;
  }

  v63 = *(*(v0 + 1280) + 16);

  if (v63)
  {
    goto LABEL_64;
  }

LABEL_66:
  v99 = *(v0 + 1336);
  v82 = *(v0 + 1304);
  v83 = *(v0 + 1296);
  v84 = *(v0 + 1288);
  v85 = *(v0 + 1272);
  sub_26CC18C50(*(v0 + 1344), *(v0 + 1352));
  (*(v83 + 8))(v82, v84);
  sub_26CC1B544(v99, &qword_2804BCA30, &qword_26CD3DA70);
  *v85 = 0u;
  v85[1] = 0u;
LABEL_68:
  v95 = *(v0 + 1360);
  v100 = *(v0 + 1376);
  v86 = *(v0 + 1264);

  *v86 = v18;
  v86[1] = v17;
  v86[2] = v95;
  v86[3] = v20;
  v86[4] = v100;
  v86[5] = v22;
  v86[6] = v16;
  v47 = *(v0 + 8);
LABEL_40:

  return v47();
}