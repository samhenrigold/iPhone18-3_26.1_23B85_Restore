uint64_t sub_26CC583C0(uint64_t a1)
{
  sub_26CD3B0FC();
  sub_26CD3A54C();

  return sub_26CD3B13C();
}

unint64_t sub_26CC58488@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_26CC58910(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_26CC584B8(uint64_t *a1@<X8>)
{
  v2 = 0xE300000000000000;
  v3 = 7368769;
  v4 = 0xEA0000000000676ELL;
  v5 = 0x696B726F7774654ELL;
  if (*v1 != 2)
  {
    v5 = 0x61467374726F7053;
    v4 = 0xEF73657469726F76;
  }

  if (*v1)
  {
    v3 = 0x6465646465626D45;
    v2 = 0xE800000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_26CC58540(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = "com.apple.TVAppServices";
  v4 = 0xD00000000000001FLL;
  if (v2 == 1)
  {
    v5 = 0xD00000000000001FLL;
  }

  else
  {
    v5 = 0xD00000000000001ALL;
  }

  if (v2 == 1)
  {
    v6 = "com.apple.TVAppServices";
  }

  else
  {
    v6 = "com.apple.TVAppServicesEmbedded";
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000017;
  }

  if (v2)
  {
    v8 = v6;
  }

  else
  {
    v8 = "tworking";
  }

  if (*a2 != 1)
  {
    v4 = 0xD00000000000001ALL;
    v3 = "com.apple.TVAppServicesEmbedded";
  }

  if (*a2)
  {
    v9 = v4;
  }

  else
  {
    v9 = 0xD000000000000017;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = "tworking";
  }

  if (v7 == v9 && (v8 | 0x8000000000000000) == (v10 | 0x8000000000000000))
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_26CD3AFDC();
  }

  return v11 & 1;
}

uint64_t sub_26CC58618()
{
  sub_26CD3B0FC();
  sub_26CD3A54C();

  return sub_26CD3B13C();
}

double sub_26CC586B4(uint64_t a1)
{
  sub_26CD3A54C();

  return result;
}

uint64_t sub_26CC5873C(uint64_t a1)
{
  sub_26CD3B0FC();
  sub_26CD3A54C();

  return sub_26CD3B13C();
}

unint64_t sub_26CC587D4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_26CC5895C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_26CC58804(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000017;
  v3 = "com.apple.TVAppServices";
  v4 = 0xD00000000000001FLL;
  if (*v1 != 1)
  {
    v4 = 0xD00000000000001ALL;
    v3 = "com.apple.TVAppServicesEmbedded";
  }

  if (*v1)
  {
    v2 = v4;
    v5 = v3;
  }

  else
  {
    v5 = "tworking";
  }

  *a1 = v2;
  a1[1] = v5 | 0x8000000000000000;
}

unint64_t sub_26CC58864()
{
  result = qword_2804BC390;
  if (!qword_2804BC390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC390);
  }

  return result;
}

unint64_t sub_26CC588BC()
{
  result = qword_2804BC398;
  if (!qword_2804BC398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC398);
  }

  return result;
}

unint64_t sub_26CC58910(uint64_t a1, uint64_t a2)
{
  v2 = sub_26CD3AD9C();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_26CC5895C(uint64_t a1, uint64_t a2)
{
  v2 = sub_26CD3AD9C();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_26CC589A8@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() defaultManager];
  v3 = sub_26CD3A59C();
  v4 = [v2 containerURLForSecurityApplicationGroupIdentifier_];

  if (v4)
  {
    sub_26CD39FEC();

    v5 = 0;
    v2 = v4;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_26CD3A07C();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, 1, v6);
}

uint64_t sub_26CC58AAC(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x2822009F8](sub_26CC58ACC, 0, 0);
}

uint64_t sub_26CC58ACC()
{
  v1 = MEMORY[0x277D84F90];
  v0[2] = MEMORY[0x277D84F90];
  v2 = v0 + 2;
  v3 = v0[3];
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = v3 + 32;
    do
    {
      v6 = objc_allocWithZone(MEMORY[0x277CEE5A8]);

      v7 = sub_26CD3A59C();
      v8 = [v6 initWithTopic_];

      v9 = sub_26CD3A4DC();

      [v8 addPropertiesWithDictionary_];

      v10 = v8;
      MEMORY[0x26D6AD170]();
      if (*((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_26CD3A7CC();
      }

      sub_26CD3A7DC();

      v5 += 8;
      --v4;
    }

    while (v4);
    v1 = *v2;
    v0 = v13;
  }

  v0[5] = v1;
  v11 = swift_task_alloc();
  v0[6] = v11;
  *v11 = v0;
  v11[1] = sub_26CC58CB8;

  return sub_26CC58E50(v1);
}

uint64_t sub_26CC58CB8()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_26CC58DEC;
  }

  else
  {

    v2 = sub_26CC58DD4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26CC58DEC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26CC58E50(uint64_t a1)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = v1;
  return MEMORY[0x2822009F8](sub_26CC58E70, 0, 0);
}

uint64_t sub_26CC58E70()
{
  v1 = v0[20];
  sub_26CC18080(0, &qword_2804BC3D0, 0x277CEE5A8);
  v2 = sub_26CD3A79C();
  [v1 enqueueEvents_];

  v3 = [v1 flush];
  v0[21] = v3;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_26CC58FF4;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC3D8, &qword_26CD40478);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_26CC1691C;
  v0[13] = &block_descriptor_2;
  v0[14] = v4;
  [v3 resultWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_26CC58FF4()
{
  v1 = *(*v0 + 48);
  *(*v0 + 176) = v1;
  if (v1)
  {
    v2 = sub_26CC59248;
  }

  else
  {
    v2 = sub_26CC59104;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26CC59104()
{
  v1 = *(v0 + 168);

  if (qword_280BB9C20 != -1)
  {
    swift_once();
  }

  v2 = qword_280BBCBE0;
  v3 = sub_26CD3A99C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26CD3C1E0;
  *(v4 + 56) = MEMORY[0x277D837D0];
  *(v4 + 64) = sub_26CC19E10();
  *(v4 + 32) = 0xD00000000000001CLL;
  *(v4 + 40) = 0x800000026CD4E3C0;
  sub_26CD3A3DC(v3, &dword_26CC14000, v2, "%@", 2, 2, v4);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_26CC59248()
{
  v1 = *(v0 + 168);
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_26CC592B8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26CC37110;

  return sub_26CC58AAC(a1);
}

uint64_t MetricsServiceError.hashValue.getter()
{
  sub_26CD3B0FC();
  MEMORY[0x26D6ADAF0](0);
  return sub_26CD3B13C();
}

uint64_t sub_26CC593C4()
{
  sub_26CD3B0FC();
  MEMORY[0x26D6ADAF0](0);
  return sub_26CD3B13C();
}

uint64_t sub_26CC59408(uint64_t a1)
{
  sub_26CD3B0FC();
  MEMORY[0x26D6ADAF0](0);
  return sub_26CD3B13C();
}

uint64_t sub_26CC59448()
{
  v0 = [objc_opt_self() app];
  v1 = *&v0[OBJC_IVAR___TVAppBag_amsBag];

  v2 = objc_allocWithZone(MEMORY[0x277CEE598]);
  v3 = sub_26CD3A59C();
  v4 = [v2 initWithContainerID:v3 bag:v1];

  result = sub_26CC18080(0, &qword_2804BC3E8, 0x277CEE598);
  qword_2804BC3B8 = result;
  unk_2804BC3C0 = &off_287DFF248;
  qword_2804BC3A0[0] = v4;
  return result;
}

uint64_t static MetricsService.report(metrics:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26CC246B8;

  return sub_26CC595F0(a1);
}

uint64_t sub_26CC59610(uint64_t a1)
{
  if (*(v1[2] + 16))
  {
    if (qword_2804BBA10 != -1)
    {
      swift_once();
    }

    v2 = qword_2804BC3B8;
    v3 = unk_2804BC3C0;
    __swift_project_boxed_opaque_existential_1(qword_2804BC3A0, qword_2804BC3B8);
    v11 = (*(v3 + 8) + **(v3 + 8));
    v4 = swift_task_alloc();
    v1[3] = v4;
    *v4 = v1;
    v4[1] = sub_26CC35904;
    v5 = v1[2];

    return v11(v5, v2, v3);
  }

  else
  {
    if (qword_280BB9C20 != -1)
    {
      swift_once();
    }

    v7 = qword_280BBCBE0;
    v8 = sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_26CD3C1E0;
    *(v9 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v9 + 64) = sub_26CC2E6E8();
    *(v9 + 32) = &unk_287DFABA0;
    sub_26CD3A3DC(v8, &dword_26CC14000, v7, "%@", 2, 2, v9);

    sub_26CC59A70();
    swift_allocError();
    swift_willThrow();
    v10 = v1[1];

    return v10();
  }
}

unint64_t sub_26CC598A8()
{
  result = qword_2804BC3C8;
  if (!qword_2804BC3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC3C8);
  }

  return result;
}

uint64_t sub_26CC598FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_26CC246B8;

  return v9(a1, a2, a3);
}

unint64_t sub_26CC59A70()
{
  result = qword_2804BC3E0;
  if (!qword_2804BC3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC3E0);
  }

  return result;
}

Swift::Bool __swiftcall TimeRange.intersectsRange(_:)(TVAppServices::TimeRange a1)
{
  v3 = v1;
  result = 0;
  if (v2[1] > 0.0 && v3[1] > 0.0)
  {
    if (*v2 == *v3)
    {
      return 1;
    }

    if (*v2 >= *v3)
    {
      if (*v2 < v3[2])
      {
        return 1;
      }
    }

    else if (*v3 < v2[2])
    {
      return 1;
    }

    return 0;
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for TimeRange(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TimeRange(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

uint64_t sub_26CC59C1C()
{
  type metadata accessor for MusicService();
  v0 = swift_allocObject();
  type metadata accessor for MusicAPIRequestFactory();
  swift_allocObject();
  result = sub_26CC63524();
  *(v0 + 16) = result;
  qword_2804BC3F0 = v0;
  return result;
}

uint64_t static MusicService.shared.getter()
{
  if (qword_2804BBA18 != -1)
  {
    swift_once();
  }
}

uint64_t sub_26CC59CD0(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC3F8, &qword_26CD45490);
  v2[6] = swift_task_alloc();
  v3 = sub_26CD39D0C();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26CC59DD4, 0, 0);
}

uint64_t sub_26CC59DD4()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[6];
  sub_26CC6143C(v0[4], 29557, 0xE200000000000000, v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_26CC5BF40(v0[6]);
    sub_26CC5BFA8();
    swift_allocError();
    *v4 = xmmword_26CD3E690;
    swift_willThrow();

    v5 = v0[1];

    return v5();
  }

  else
  {
    v7 = v0[9];
    v8 = v0[10];
    v9 = v0[7];
    v10 = v0[8];
    v11 = *(v10 + 32);
    v11(v8, v0[6], v9);
    (*(v10 + 16))(v7, v8, v9);
    type metadata accessor for AMSMediaRequestHandler(0);
    v12 = swift_allocObject();
    v0[11] = v12;
    *(v12 + OBJC_IVAR____TtC13TVAppServices22AMSMediaRequestHandler_sessionTask) = 0;
    v11(v12 + OBJC_IVAR____TtC13TVAppServices22AMSMediaRequestHandler_request, v7, v9);
    v13 = swift_task_alloc();
    v0[12] = v13;
    *v13 = v0;
    v13[1] = sub_26CC59FE4;

    return sub_26CD07B88();
  }
}

uint64_t sub_26CC59FE4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 104) = a1;
  *(v3 + 112) = v1;

  if (v1)
  {
    v4 = sub_26CC5A2E8;
  }

  else
  {
    v4 = sub_26CC5A0F8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_26CC5A0F8()
{
  v1 = v0[13];
  v2 = v0[14];
  sub_26CD39D5C();
  swift_allocObject();
  sub_26CD39D4C();
  v3 = [v1 data];
  v4 = sub_26CD3A0BC();
  v6 = v5;

  sub_26CC5C7AC();
  sub_26CD39D3C();
  v7 = v0[13];
  if (v2)
  {
    (*(v0[8] + 8))(v0[10], v0[7]);
    sub_26CC18C50(v4, v6);

    v8 = v0[1];

    return v8();
  }

  else
  {
    (*(v0[8] + 8))();
    sub_26CC18C50(v4, v6);

    v11 = v0[2];
    v10 = v0[3];

    v12 = v0[1];

    return v12(v11, v10);
  }
}

uint64_t sub_26CC5A2E8()
{
  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[8];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_26CC5A38C(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC3F8, &qword_26CD45490);
  v3[6] = swift_task_alloc();
  v4 = sub_26CD39D0C();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26CC5A494, 0, 0);
}

uint64_t sub_26CC5A494()
{
  sub_26CC619B0(v0[4], v0[6]);
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[6];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_26CC5BF40(v3);
    sub_26CC5BFA8();
    swift_allocError();
    *v4 = xmmword_26CD3E690;
    swift_willThrow();

    v5 = v0[1];

    return v5();
  }

  else
  {
    v8 = v0[9];
    v7 = v0[10];
    v9 = *(v2 + 32);
    v9(v7, v3, v1);
    (*(v2 + 16))(v8, v7, v1);
    type metadata accessor for AMSMediaRequestHandler(0);
    v10 = swift_allocObject();
    v0[11] = v10;
    *(v10 + OBJC_IVAR____TtC13TVAppServices22AMSMediaRequestHandler_sessionTask) = 0;
    v9(v10 + OBJC_IVAR____TtC13TVAppServices22AMSMediaRequestHandler_request, v8, v1);
    v11 = swift_task_alloc();
    v0[12] = v11;
    *v11 = v0;
    v11[1] = sub_26CC5A6AC;

    return sub_26CD07B88();
  }
}

uint64_t sub_26CC5A6AC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 104) = a1;
  *(v3 + 112) = v1;

  if (v1)
  {
    v4 = sub_26CC5A2E8;
  }

  else
  {
    v4 = sub_26CC5A7C0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_26CC5A7C0()
{
  v1 = v0[13];
  v2 = v0[14];
  sub_26CD39D5C();
  swift_allocObject();
  sub_26CD39D4C();
  v3 = [v1 data];
  v4 = sub_26CD3A0BC();
  v6 = v5;

  sub_26CC5BFFC();
  sub_26CD39D3C();
  if (v2)
  {
    v7 = v0[13];
    (*(v0[8] + 8))(v0[10], v0[7]);
    sub_26CC18C50(v4, v6);

    v8 = v0[1];
  }

  else
  {
    sub_26CC18C50(v4, v6);

    v9 = v0[2];
    v10 = v0[3];
    v11 = v0[13];
    v12 = v0[10];
    v13 = v0[7];
    v14 = v0[8];
    if (v9[2])
    {
      v15 = v9[5];
      v26 = v9[6];
      v27 = v9[4];
      v25 = v0[10];
      v16 = v9[7];
      v23 = v0[7];
      v24 = v9[8];
      v17 = v9[9];
      v18 = v9[10];

      (*(v14 + 8))(v25, v23);
      v19 = v24;
      v20 = v26;
      *v10 = v27;
      v10[1] = v15;
    }

    else
    {

      (*(v14 + 8))(v12, v13);
      v20 = 0;
      v16 = 0;
      v19 = 0;
      v17 = 0;
      v18 = 0;
      *v10 = 0;
      v10[1] = 0;
    }

    v21 = v0[3];
    v21[2] = v20;
    v21[3] = v16;
    v21[4] = v19;
    v21[5] = v17;
    v21[6] = v18;

    v8 = v0[1];
  }

  return v8();
}

uint64_t sub_26CC5AA30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC3F8, &qword_26CD45490);
  v4[7] = swift_task_alloc();
  v5 = sub_26CD39D0C();
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26CC5AB38, 0, 0);
}

uint64_t sub_26CC5AB38()
{
  sub_26CC62038(v0[4], v0[5], v0[7]);
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[7];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_26CC5BF40(v3);
    sub_26CC5BFA8();
    swift_allocError();
    *v4 = xmmword_26CD3E690;
    swift_willThrow();

    v5 = v0[1];

    return v5();
  }

  else
  {
    v8 = v0[10];
    v7 = v0[11];
    v9 = *(v2 + 32);
    v9(v7, v3, v1);
    (*(v2 + 16))(v8, v7, v1);
    type metadata accessor for AMSMediaRequestHandler(0);
    v10 = swift_allocObject();
    v0[12] = v10;
    *(v10 + OBJC_IVAR____TtC13TVAppServices22AMSMediaRequestHandler_sessionTask) = 0;
    v9(v10 + OBJC_IVAR____TtC13TVAppServices22AMSMediaRequestHandler_request, v8, v1);
    v11 = swift_task_alloc();
    v0[13] = v11;
    *v11 = v0;
    v11[1] = sub_26CC5AD50;

    return sub_26CD07B88();
  }
}

uint64_t sub_26CC5AD50(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 112) = a1;
  *(v3 + 120) = v1;

  if (v1)
  {
    v4 = sub_26CC5B0D4;
  }

  else
  {
    v4 = sub_26CC5AE64;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_26CC5AE64()
{
  v1 = v0[14];
  v2 = v0[15];
  sub_26CD39D5C();
  swift_allocObject();
  sub_26CD39D4C();
  v3 = [v1 data];
  v4 = sub_26CD3A0BC();
  v6 = v5;

  sub_26CC5BFFC();
  sub_26CD39D3C();
  if (v2)
  {
    v7 = v0[14];
    (*(v0[9] + 8))(v0[11], v0[8]);
    sub_26CC18C50(v4, v6);

    v8 = v0[1];
  }

  else
  {
    sub_26CC18C50(v4, v6);

    v9 = v0[2];
    v10 = v0[3];
    v11 = v0[14];
    v12 = v0[11];
    v13 = v0[8];
    v14 = v0[9];
    if (v9[2])
    {
      v15 = v9[5];
      v26 = v9[6];
      v27 = v9[4];
      v25 = v0[11];
      v16 = v9[7];
      v23 = v0[8];
      v24 = v9[8];
      v17 = v9[9];
      v18 = v9[10];

      (*(v14 + 8))(v25, v23);
      v19 = v24;
      v20 = v26;
      *v10 = v27;
      v10[1] = v15;
    }

    else
    {

      (*(v14 + 8))(v12, v13);
      v20 = 0;
      v16 = 0;
      v19 = 0;
      v17 = 0;
      v18 = 0;
      *v10 = 0;
      v10[1] = 0;
    }

    v21 = v0[3];
    v21[2] = v20;
    v21[3] = v16;
    v21[4] = v19;
    v21[5] = v17;
    v21[6] = v18;

    v8 = v0[1];
  }

  return v8();
}

uint64_t sub_26CC5B0D4()
{
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[9];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_26CC5B178(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC3F8, &qword_26CD45490);
  v4[7] = swift_task_alloc();
  v5 = sub_26CD39D0C();
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26CC5B280, 0, 0);
}

uint64_t sub_26CC5B280()
{
  v1 = swift_task_alloc();
  v0[12] = v1;
  *v1 = v0;
  v1[1] = sub_26CC5B320;
  v2 = v0[7];
  v3 = v0[4];
  v4 = v0[5];

  return sub_26CC622F8(v2, v3, v4);
}

uint64_t sub_26CC5B320()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_26CC5B9E8;
  }

  else
  {
    v2 = sub_26CC5B434;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26CC5B434()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[7];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_26CC5BF40(v3);
    sub_26CC5BFA8();
    swift_allocError();
    *v4 = xmmword_26CD3E690;
    swift_willThrow();

    v5 = v0[1];

    return v5();
  }

  else
  {
    v8 = v0[10];
    v7 = v0[11];
    v9 = *(v2 + 32);
    v9(v7, v3, v1);
    (*(v2 + 16))(v8, v7, v1);
    type metadata accessor for AMSMediaRequestHandler(0);
    v10 = swift_allocObject();
    v0[14] = v10;
    *(v10 + OBJC_IVAR____TtC13TVAppServices22AMSMediaRequestHandler_sessionTask) = 0;
    v9(v10 + OBJC_IVAR____TtC13TVAppServices22AMSMediaRequestHandler_request, v8, v1);
    v11 = swift_task_alloc();
    v0[15] = v11;
    *v11 = v0;
    v11[1] = sub_26CC5B630;

    return sub_26CD07B88();
  }
}

uint64_t sub_26CC5B630(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 128) = a1;
  *(v3 + 136) = v1;

  if (v1)
  {
    v4 = sub_26CC5BA68;
  }

  else
  {
    v4 = sub_26CC5B744;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_26CC5B744()
{
  v1 = v0[16];
  v2 = v0[17];
  sub_26CD39D5C();
  swift_allocObject();
  sub_26CD39D4C();
  v3 = [v1 data];
  v4 = sub_26CD3A0BC();
  v6 = v5;

  sub_26CC5BFFC();
  sub_26CD39D3C();
  if (v2)
  {
    v7 = v0[16];
    (*(v0[9] + 8))(v0[11], v0[8]);
    sub_26CC18C50(v4, v6);

LABEL_3:

    v8 = v0[1];
    goto LABEL_6;
  }

  sub_26CC18C50(v4, v6);

  v9 = v0[2];
  v10 = v0[16];
  v11 = v0[11];
  if (!v9[2])
  {
    v20 = v0[8];
    v19 = v0[9];

    sub_26CC5BFA8();
    swift_allocError();
    *v21 = xmmword_26CD3E6A0;
    swift_willThrow();

    (*(v19 + 8))(v11, v20);
    goto LABEL_3;
  }

  v12 = v0[9];
  v25 = v0[8];
  v13 = v0[3];
  v14 = v9[5];
  v23 = v9[6];
  v24 = v9[4];
  v15 = v9[7];
  v22 = v9[8];
  v16 = v9[9];
  v17 = v9[10];

  (*(v12 + 8))(v11, v25);
  *v13 = v24;
  v13[1] = v14;
  v13[2] = v23;
  v13[3] = v15;
  v13[4] = v22;
  v13[5] = v16;
  v13[6] = v17;

  v8 = v0[1];
LABEL_6:

  return v8();
}

uint64_t sub_26CC5B9E8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26CC5BA68()
{
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[9];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_26CC5BB10(uint64_t a1, uint64_t a2)
{
  v3[10] = a2;
  v3[11] = v2;
  v3[9] = a1;
  return MEMORY[0x2822009F8](sub_26CC5BB34, 0, 0);
}

uint64_t sub_26CC5BB34()
{
  v2 = v0[9];
  v1 = v0[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
  v3 = swift_allocObject();
  v0[12] = v3;
  *(v3 + 16) = xmmword_26CD3C1E0;
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;

  v4 = swift_task_alloc();
  v0[13] = v4;
  *v4 = v0;
  v4[1] = sub_26CC5BC20;

  return sub_26CC5A38C((v0 + 2), v3);
}

uint64_t sub_26CC5BC20()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_26CC5BE80;
  }

  else
  {

    v2 = sub_26CC5BD3C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26CC5BD3C()
{
  v1 = v0[3];
  if (v1)
  {
    v2 = v0[2];
    v3 = v0[4];
    v4 = v0[5];
    v5 = v0[6];
    v6 = v0[7];
    v7 = v0[8];
    if (!v7 || !*(v7 + 16) || (v8 = sub_26CC181C4(v0[9], v0[10]), (v9 & 1) == 0))
    {
      sub_26CC5C050(v2, v1, v3, v4, v5, v6, v7);
      sub_26CC5BFA8();
      swift_allocError();
      *v12 = xmmword_26CD3E6A0;
      swift_willThrow();
      v13 = v0[1];
      v11 = 0;
      goto LABEL_9;
    }

    v10 = *(*(v7 + 56) + v8);
    sub_26CC5C050(v2, v1, v3, v4, v5, v6, v7);
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v13 = v0[1];
LABEL_9:

  return v13(v11);
}

uint64_t sub_26CC5BE80()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t MusicService.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_26CC5BF40(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC3F8, &qword_26CD45490);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_26CC5BFA8()
{
  result = qword_2804BC400;
  if (!qword_2804BC400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC400);
  }

  return result;
}

unint64_t sub_26CC5BFFC()
{
  result = qword_2804BC408;
  if (!qword_2804BC408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC408);
  }

  return result;
}

double sub_26CC5C050(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2)
  {
  }

  return result;
}

uint64_t dispatch thunk of MusicService.fetchSavedSongsPlaylist(checkIfHasTracks:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 104) + **(*v2 + 104));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_26CC37110;

  return v8(a1, a2);
}

uint64_t dispatch thunk of MusicService.fetchPlaylist(withId:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 112) + **(*v3 + 112));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_26CC246B8;

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of MusicService.addToSavedSongsPlaylist(songId:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 120) + **(*v3 + 120));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_26CC37110;

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of MusicService.isSongAddedToSavedSongPlaylist(songId:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 128) + **(*v2 + 128));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_26CC5C5BC;

  return v8(a1, a2);
}

uint64_t sub_26CC5C5BC(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t get_enum_tag_for_layout_string_13TVAppServices12MusicServiceC0cD5ErrorO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_26CC5C6D0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26CC5C72C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

void *sub_26CC5C77C(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

unint64_t sub_26CC5C7AC()
{
  result = qword_2804BC410;
  if (!qword_2804BC410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC410);
  }

  return result;
}

uint64_t sub_26CC5C800(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC4E0, &qword_26CD40B08);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26CC5F2E4();
  sub_26CD3B16C();
  v14 = a2;
  v13 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC4C0, &qword_26CD40B00);
  sub_26CC5F3E0(&qword_2804BC4E8, sub_26CC5F458, MEMORY[0x277D83948]);
  sub_26CD3AF6C();
  if (!v3)
  {
    v14 = a3;
    v13 = 1;
    sub_26CC5F4AC();
    sub_26CD3AF6C();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_26CC5C9DC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC460, &qword_26CD408A0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v14 - v5;
  v7 = *v1;
  v8 = v1[3];
  v14[3] = v1[2];
  v14[4] = v7;
  v9 = v1[5];
  v14[1] = v1[4];
  v14[2] = v8;
  v14[0] = v9;
  v10 = *(v1 + 6);
  v25 = *(v1 + 5);
  v26 = v10;
  v27 = *(v1 + 7);
  v28 = v1[16];
  v11 = *(v1 + 4);
  v23 = *(v1 + 3);
  v24 = v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26CC5E74C();
  sub_26CD3B16C();
  LOBYTE(v17) = 0;
  v12 = v14[5];
  sub_26CD3AF2C();
  if (!v12)
  {
    LOBYTE(v17) = 1;
    sub_26CD3AF2C();
    LOBYTE(v17) = 2;
    sub_26CD3AF2C();
    v19 = v25;
    v20 = v26;
    v21 = v27;
    v22 = v28;
    v17 = v23;
    v18 = v24;
    v29 = 3;
    sub_26CC5E85C(&v23, v15);
    sub_26CC5E894();
    sub_26CD3AF6C();
    v15[2] = v19;
    v15[3] = v20;
    v15[4] = v21;
    v16 = v22;
    v15[0] = v17;
    v15[1] = v18;
    sub_26CC5E8E8(v15);
  }

  return (*(v4 + 8))(v6, v3);
}

void sub_26CC5CC28(void *a1@<X0>, uint64_t a2@<X8>)
{
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC448, &qword_26CD40898);
  v5 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v7 = &v28 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26CC5E74C();
  sub_26CD3B15C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v8 = v5;
    v33 = a2;
    LOBYTE(v43[0]) = 0;
    v9 = sub_26CD3AE3C();
    v11 = v10;
    v31 = v9;
    LOBYTE(v43[0]) = 1;
    v12 = sub_26CD3AE3C();
    v32 = v13;
    v29 = v12;
    LOBYTE(v43[0]) = 2;
    v14 = a1;
    v28 = sub_26CD3AE3C();
    v30 = v15;
    v50 = 3;
    sub_26CC5E7A0();
    sub_26CD3AE7C();
    (*(v8 + 8))(v7, v63);
    v59 = v53;
    v60 = v54;
    v61 = v55;
    v57 = v51;
    v58 = v52;
    v62 = v56;
    v16 = v31;
    v17 = v32;
    *&v34 = v31;
    *(&v34 + 1) = v11;
    v18 = v29;
    *&v35 = v29;
    *(&v35 + 1) = v32;
    v19 = v30;
    *&v36 = v28;
    *(&v36 + 1) = v30;
    v37 = v51;
    v38 = v52;
    v42 = v56;
    v40 = v54;
    v41 = v55;
    v39 = v53;
    v20 = v34;
    v21 = v35;
    v22 = v51;
    v23 = v33;
    *(v33 + 32) = v36;
    *(v23 + 48) = v22;
    *v23 = v20;
    *(v23 + 16) = v21;
    v24 = v38;
    v25 = v39;
    v26 = v40;
    v27 = v41;
    *(v23 + 128) = v42;
    *(v23 + 96) = v26;
    *(v23 + 112) = v27;
    *(v23 + 64) = v24;
    *(v23 + 80) = v25;
    sub_26CC5E7F4(&v34, v43);
    __swift_destroy_boxed_opaque_existential_1(v14);
    v43[0] = v16;
    v43[1] = v11;
    v43[2] = v18;
    v43[3] = v17;
    v43[4] = v28;
    v43[5] = v19;
    v46 = v59;
    v47 = v60;
    v48 = v61;
    v49 = v62;
    v44 = v57;
    v45 = v58;
    sub_26CC5E82C(v43);
  }
}

uint64_t sub_26CC5CFB0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC4A0, &qword_26CD40AF0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v16 - v5;
  v7 = v1[2];
  v18 = v1[3];
  v19 = v7;
  v8 = v1[4];
  v16[5] = v1[5];
  v17 = v8;
  v9 = v1[6];
  v10 = v1[7];
  v11 = v1[9];
  v16[3] = v1[8];
  v16[4] = v9;
  v16[0] = v11;
  v16[1] = v1[10];
  v16[2] = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26CC5F1E8();
  sub_26CD3B16C();
  LOBYTE(v21) = 0;
  v12 = v20;
  sub_26CD3AF2C();
  if (!v12)
  {
    v13 = v17;
    v14 = v18;
    LOBYTE(v21) = 1;
    sub_26CD3AF5C();
    v21 = v14;
    v22 = v13;
    v23 = 2;
    sub_26CC5F290();

    sub_26CD3AF6C();

    LOBYTE(v21) = 3;
    sub_26CD3AF2C();
    LOBYTE(v21) = 4;
    sub_26CD3AF2C();
    LOBYTE(v21) = 5;
    sub_26CD3AF2C();
  }

  return (*(v4 + 8))(v6, v3);
}

void sub_26CC5D220(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC488, &qword_26CD40AE8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26CC5F1E8();
  sub_26CD3B15C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    LOBYTE(v38) = 0;
    v9 = sub_26CD3AE3C();
    v11 = v10;
    LOBYTE(v38) = 1;
    v31 = sub_26CD3AE6C();
    LOBYTE(v32) = 2;
    sub_26CC5F23C();
    sub_26CD3AE7C();
    v28 = v38;
    v30 = v39;
    LOBYTE(v38) = 3;
    v12 = sub_26CD3AE3C();
    v29 = v13;
    v25 = v12;
    LOBYTE(v38) = 4;
    v26 = 0;
    v24 = sub_26CD3AE3C();
    v27 = v14;
    v49 = 5;
    v15 = sub_26CD3AE3C();
    v16 = v8;
    v18 = v17;
    (*(v6 + 8))(v16, v5);
    *&v32 = v9;
    v19 = v31;
    *(&v32 + 1) = v11;
    *&v33 = v31;
    *(&v33 + 1) = v28;
    *&v34 = v30;
    v20 = v29;
    *(&v34 + 1) = v25;
    *&v35 = v29;
    *(&v35 + 1) = v24;
    *&v36 = v27;
    *(&v36 + 1) = v15;
    v37 = v18;
    *(a2 + 80) = v18;
    v21 = v35;
    *(a2 + 32) = v34;
    *(a2 + 48) = v21;
    *(a2 + 64) = v36;
    v22 = v33;
    *a2 = v32;
    *(a2 + 16) = v22;
    sub_26CC5E85C(&v32, &v38);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v38 = v9;
    v39 = v11;
    v40 = v19;
    v41 = v28;
    v42 = v30;
    v43 = v25;
    v44 = v20;
    v45 = v24;
    v46 = v27;
    v47 = v15;
    v48 = v18;
    sub_26CC5E8E8(&v38);
  }
}

uint64_t sub_26CC5D668()
{
  if (*v0)
  {
    return 1635018093;
  }

  else
  {
    return 1635017060;
  }
}

void sub_26CC5D68C(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1635017060 && a2 == 0xE400000000000000;
  if (v5 || (sub_26CD3AFDC() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 1635018093 && a2 == 0xE400000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_26CD3AFDC();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_26CC5D75C(uint64_t a1)
{
  v2 = sub_26CC5F2E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26CC5D798(uint64_t a1)
{
  v2 = sub_26CC5F2E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26CC5D7D4@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_26CC5EE58(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

uint64_t sub_26CC5D81C()
{
  v1 = 25705;
  v2 = 1717924456;
  if (*v0 != 2)
  {
    v2 = 0x7475626972747461;
  }

  if (*v0)
  {
    v1 = 1701869940;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_26CC5D880@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_26CC5F084(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_26CC5D8A8(uint64_t a1)
{
  v2 = sub_26CC5E74C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26CC5D8E4(uint64_t a1)
{
  v2 = sub_26CC5E74C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26CC5D950()
{
  v1 = *v0;
  v2 = 0x6D614E6D75626C61;
  v3 = 7107189;
  v4 = 1701667182;
  if (v1 != 4)
  {
    v4 = 0x614E747369747261;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000010;
  if (v1 != 1)
  {
    v5 = 0x6B726F77747261;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_26CC5DA08@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_26CC5F740(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_26CC5DA30(uint64_t a1)
{
  v2 = sub_26CC5F1E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26CC5DA6C(uint64_t a1)
{
  v2 = sub_26CC5F1E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Artwork.url.getter()
{
  v1 = *v0;

  return v1;
}

void sub_26CC5DB18(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 7107189 && a2 == 0xE300000000000000)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_26CD3AFDC();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_26CC5DBA0(uint64_t a1)
{
  v2 = sub_26CC5DD54();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26CC5DBDC(uint64_t a1)
{
  v2 = sub_26CC5DD54();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Artwork.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC418, &qword_26CD40630);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26CC5DD54();
  sub_26CD3B16C();
  sub_26CD3AF2C();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_26CC5DD54()
{
  result = qword_2804BC420;
  if (!qword_2804BC420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC420);
  }

  return result;
}

uint64_t Artwork.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC428, &qword_26CD40638);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26CC5DD54();
  sub_26CD3B15C();
  if (!v2)
  {
    v9 = sub_26CD3AE3C();
    v11 = v10;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    a2[1] = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26CC5DF1C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC5F0, &qword_26CD410E8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26CC605DC();
  sub_26CD3B16C();
  v8[15] = 0;
  sub_26CD3AF2C();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  sub_26CD3AF2C();
  v8[13] = 2;
  sub_26CD3AF2C();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_26CC5E0BC(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC548, &qword_26CD40DA0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26CC5FE20();
  sub_26CD3B16C();
  v9[1] = a2;
  sub_26CC5FEC8();
  sub_26CD3AF6C();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_26CC5E204(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC5A8, &qword_26CD40F40);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26CC601C8();
  sub_26CD3B16C();
  v9[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC580, &qword_26CD40F30);
  sub_26CC603A4();
  sub_26CD3AF6C();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_26CC5E378(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC418, &qword_26CD40630);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26CC5DD54();
  sub_26CD3B16C();
  sub_26CD3AF2C();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_26CC5E4B4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_26CC5E4FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy136_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_26CC5E57C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
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

uint64_t sub_26CC5E5C4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_26CC5E648()
{
  result = qword_2804BC430;
  if (!qword_2804BC430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC430);
  }

  return result;
}

unint64_t sub_26CC5E6A0()
{
  result = qword_2804BC438;
  if (!qword_2804BC438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC438);
  }

  return result;
}

unint64_t sub_26CC5E6F8()
{
  result = qword_2804BC440;
  if (!qword_2804BC440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC440);
  }

  return result;
}

unint64_t sub_26CC5E74C()
{
  result = qword_2804BC450;
  if (!qword_2804BC450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC450);
  }

  return result;
}

unint64_t sub_26CC5E7A0()
{
  result = qword_2804BC458;
  if (!qword_2804BC458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC458);
  }

  return result;
}

unint64_t sub_26CC5E894()
{
  result = qword_2804BC468;
  if (!qword_2804BC468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC468);
  }

  return result;
}

unint64_t sub_26CC5E94C()
{
  result = qword_2804BC470;
  if (!qword_2804BC470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC470);
  }

  return result;
}

unint64_t sub_26CC5E9A4()
{
  result = qword_2804BC478;
  if (!qword_2804BC478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC478);
  }

  return result;
}

unint64_t sub_26CC5E9FC()
{
  result = qword_2804BC480;
  if (!qword_2804BC480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC480);
  }

  return result;
}

uint64_t sub_26CC5EA50()
{
  v1 = 1701869940;
  if (*v0 != 1)
  {
    v1 = 1717924456;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_26CC5EA90@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_26CC5F954(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_26CC5EAB8(uint64_t a1)
{
  v2 = sub_26CC605DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26CC5EAF4(uint64_t a1)
{
  v2 = sub_26CC605DC();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_26CC5EB30@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_26CC5FA64(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
    result = *&v7;
    a1[2] = v7;
  }

  return result;
}

void sub_26CC5EBA4(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x737265746C6966 && a2 == 0xE700000000000000)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_26CD3AFDC();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_26CC5EC2C(uint64_t a1)
{
  v2 = sub_26CC5FE20();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26CC5EC68(uint64_t a1)
{
  v2 = sub_26CC5FE20();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_26CC5ECA4@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_26CC5FCB0(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

void sub_26CC5ED0C(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x656C617669757165 && a2 == 0xEB0000000073746ELL)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_26CD3AFDC();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_26CC5ED98(uint64_t a1)
{
  v2 = sub_26CC601C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26CC5EDD4(uint64_t a1)
{
  v2 = sub_26CC601C8();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_26CC5EE10@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_26CC60044(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_26CC5EE58(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC4B0, &qword_26CD40AF8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26CC5F2E4();
  sub_26CD3B15C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC4C0, &qword_26CD40B00);
  HIBYTE(v8) = 0;
  sub_26CC5F3E0(&qword_2804BC4C8, sub_26CC5F338, MEMORY[0x277D83978]);
  sub_26CD3AE7C();
  v7 = v9;
  HIBYTE(v8) = 1;
  sub_26CC5F38C();
  sub_26CD3AE7C();
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v7;
}

uint64_t sub_26CC5F084(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1717924456 && a2 == 0xE400000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7475626972747461 && a2 == 0xEA00000000007365)
  {

    return 3;
  }

  else
  {
    v6 = sub_26CD3AFDC();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

unint64_t sub_26CC5F1E8()
{
  result = qword_2804BC490;
  if (!qword_2804BC490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC490);
  }

  return result;
}

unint64_t sub_26CC5F23C()
{
  result = qword_2804BC498;
  if (!qword_2804BC498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC498);
  }

  return result;
}

unint64_t sub_26CC5F290()
{
  result = qword_2804BC4A8;
  if (!qword_2804BC4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC4A8);
  }

  return result;
}

unint64_t sub_26CC5F2E4()
{
  result = qword_2804BC4B8;
  if (!qword_2804BC4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC4B8);
  }

  return result;
}

unint64_t sub_26CC5F338()
{
  result = qword_2804BC4D0;
  if (!qword_2804BC4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC4D0);
  }

  return result;
}

unint64_t sub_26CC5F38C()
{
  result = qword_2804BC4D8;
  if (!qword_2804BC4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC4D8);
  }

  return result;
}

uint64_t sub_26CC5F3E0(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804BC4C0, &qword_26CD40B00);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26CC5F458()
{
  result = qword_2804BC4F0;
  if (!qword_2804BC4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC4F0);
  }

  return result;
}

unint64_t sub_26CC5F4AC()
{
  result = qword_2804BC4F8;
  if (!qword_2804BC4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC4F8);
  }

  return result;
}

unint64_t sub_26CC5F534()
{
  result = qword_2804BC500;
  if (!qword_2804BC500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC500);
  }

  return result;
}

unint64_t sub_26CC5F58C()
{
  result = qword_2804BC508;
  if (!qword_2804BC508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC508);
  }

  return result;
}

unint64_t sub_26CC5F5E4()
{
  result = qword_2804BC510;
  if (!qword_2804BC510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC510);
  }

  return result;
}

unint64_t sub_26CC5F63C()
{
  result = qword_2804BC518;
  if (!qword_2804BC518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC518);
  }

  return result;
}

unint64_t sub_26CC5F694()
{
  result = qword_2804BC520;
  if (!qword_2804BC520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC520);
  }

  return result;
}

unint64_t sub_26CC5F6EC()
{
  result = qword_2804BC528;
  if (!qword_2804BC528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC528);
  }

  return result;
}

uint64_t sub_26CC5F740(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D614E6D75626C61 && a2 == 0xE900000000000065;
  if (v4 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000026CD4E420 == a2 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6B726F77747261 && a2 == 0xE700000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x614E747369747261 && a2 == 0xEA0000000000656DLL)
  {

    return 5;
  }

  else
  {
    v6 = sub_26CD3AFDC();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_26CC5F954(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1717924456 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_26CD3AFDC();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_26CC5FA64@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC5E0, &qword_26CD410E0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26CC605DC();
  sub_26CD3B15C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v25 = 0;
  v9 = sub_26CD3AE3C();
  v11 = v10;
  v22 = v9;
  v24 = 1;
  v20 = sub_26CD3AE3C();
  v21 = v12;
  v23 = 2;
  v13 = sub_26CD3AE3C();
  v14 = v8;
  v16 = v15;
  (*(v6 + 8))(v14, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v22;
  a2[1] = v11;
  v18 = v21;
  a2[2] = v20;
  a2[3] = v18;
  a2[4] = v13;
  a2[5] = v16;
  return result;
}

void *sub_26CC5FCB0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC530, &qword_26CD40D98);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26CC5FE20();
  sub_26CD3B15C();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    sub_26CC5FE74();
    sub_26CD3AE7C();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v7;
}

unint64_t sub_26CC5FE20()
{
  result = qword_2804BC538;
  if (!qword_2804BC538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC538);
  }

  return result;
}

unint64_t sub_26CC5FE74()
{
  result = qword_2804BC540;
  if (!qword_2804BC540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC540);
  }

  return result;
}

unint64_t sub_26CC5FEC8()
{
  result = qword_2804BC550;
  if (!qword_2804BC550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC550);
  }

  return result;
}

unint64_t sub_26CC5FF40()
{
  result = qword_2804BC558;
  if (!qword_2804BC558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC558);
  }

  return result;
}

unint64_t sub_26CC5FF98()
{
  result = qword_2804BC560;
  if (!qword_2804BC560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC560);
  }

  return result;
}

unint64_t sub_26CC5FFF0()
{
  result = qword_2804BC568;
  if (!qword_2804BC568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC568);
  }

  return result;
}

void *sub_26CC60044(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC570, &qword_26CD40F28);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26CC601C8();
  sub_26CD3B15C();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC580, &qword_26CD40F30);
    sub_26CC6021C();
    sub_26CD3AE7C();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v7;
}

unint64_t sub_26CC601C8()
{
  result = qword_2804BC578;
  if (!qword_2804BC578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC578);
  }

  return result;
}

unint64_t sub_26CC6021C()
{
  result = qword_2804BC588;
  if (!qword_2804BC588)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804BC580, &qword_26CD40F30);
    sub_26CC602D8(&qword_2804BC590, sub_26CC60350, MEMORY[0x277D83978]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC588);
  }

  return result;
}

uint64_t sub_26CC602D8(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804BC598, &qword_26CD40F38);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26CC60350()
{
  result = qword_2804BC5A0;
  if (!qword_2804BC5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC5A0);
  }

  return result;
}

unint64_t sub_26CC603A4()
{
  result = qword_2804BC5B0;
  if (!qword_2804BC5B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804BC580, &qword_26CD40F30);
    sub_26CC602D8(&qword_2804BC5B8, sub_26CC60460, MEMORY[0x277D83948]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC5B0);
  }

  return result;
}

unint64_t sub_26CC60460()
{
  result = qword_2804BC5C0;
  if (!qword_2804BC5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC5C0);
  }

  return result;
}

unint64_t sub_26CC604D8()
{
  result = qword_2804BC5C8;
  if (!qword_2804BC5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC5C8);
  }

  return result;
}

unint64_t sub_26CC60530()
{
  result = qword_2804BC5D0;
  if (!qword_2804BC5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC5D0);
  }

  return result;
}

unint64_t sub_26CC60588()
{
  result = qword_2804BC5D8;
  if (!qword_2804BC5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC5D8);
  }

  return result;
}

unint64_t sub_26CC605DC()
{
  result = qword_2804BC5E8;
  if (!qword_2804BC5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC5E8);
  }

  return result;
}

unint64_t sub_26CC60644()
{
  result = qword_2804BC5F8;
  if (!qword_2804BC5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC5F8);
  }

  return result;
}

unint64_t sub_26CC6069C()
{
  result = qword_2804BC600;
  if (!qword_2804BC600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC600);
  }

  return result;
}

unint64_t sub_26CC606F4()
{
  result = qword_2804BC608;
  if (!qword_2804BC608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC608);
  }

  return result;
}

uint64_t sub_26CC60760(uint64_t a1, uint64_t a2)
{
  v2[15] = a1;
  v2[16] = a2;
  sub_26CD3A38C();
  v2[17] = swift_task_alloc();
  sub_26CD3A2BC();
  v2[18] = swift_task_alloc();
  v3 = sub_26CD3A36C();
  v2[19] = v3;
  v2[20] = *(v3 - 8);
  v2[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26CC60878, 0, 0);
}

uint64_t sub_26CC60878()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = sub_26CD39D0C();
  v0[22] = v3;
  v4 = *(v3 - 8);
  v5 = v4;
  v0[23] = v4;
  (*(v4 + 16))(v2, v1, v3);
  v6 = sub_26CD39CCC();
  v0[24] = v6;
  v0[25] = v7;
  if (v7 >> 60 == 15)
  {
    if (qword_280BBB6B8 != -1)
    {
      swift_once();
    }

    v8 = v0[15];
    v9 = qword_280BBCC98;
    v10 = sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_26CD3C1E0;
    *(v11 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v11 + 64) = sub_26CC2E6E8();
    *(v11 + 32) = &unk_287DF9AF8;
    sub_26CD3A3DC(v10, &dword_26CC14000, v9, "%@", 2, 2, v11);

    sub_26CC61334();
    swift_allocError();
    swift_willThrow();
    (*(v5 + 8))(v8, v3);

    v16 = v0[1];

    return v16();
  }

  else
  {
    v12 = v6;
    v13 = v7;
    v0[5] = &type metadata for FeatureFlagManager;
    v14 = sub_26CC30530();
    *(v0 + 16) = 0;
    v0[6] = v14;
    v15 = sub_26CD3A29C();
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
    if (v15)
    {
      sub_26CD3A2AC();
      sub_26CD3A37C();
      sub_26CD3A2DC();
      sub_26CD3A96C();
      v22 = sub_26CD3A95C();
      v0[26] = v22;
      sub_26CC61388();
      v23 = swift_task_alloc();
      v0[27] = v23;
      *v23 = v0;
      v23[1] = sub_26CC60CD0;
      v24 = v12;
      v25 = v13;
      v26 = v22;
    }

    else
    {
      sub_26CC61388();
      v18 = [objc_opt_self() app];
      v19 = *&v18[OBJC_IVAR___TVAppBag_amsBag];
      v0[29] = v19;
      v20 = v19;

      v21 = swift_task_alloc();
      v0[30] = v21;
      *v21 = v0;
      v21[1] = sub_26CC60F28;
      v24 = v12;
      v25 = v13;
      v26 = v20;
    }

    return MEMORY[0x282140828](v24, v25, 1, v26);
  }
}

uint64_t sub_26CC60CD0(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[7] = v3;
  v4[8] = a1;
  v4[9] = a2;
  v4[10] = v2;
  v4[28] = v2;

  if (v2)
  {
    v5 = sub_26CC61178;
  }

  else
  {
    v5 = sub_26CC60DEC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_26CC60DEC()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];
  swift_unknownObjectRelease();
  (*(v2 + 8))(v1, v3);
  v4 = v0[8];
  v5 = v0[9];
  v7 = v0[24];
  v6 = v0[25];
  sub_26CD3A0AC();
  sub_26CD3A5CC();
  sub_26CD39CEC();

  sub_26CC1D1B8(v7, v6);
  sub_26CC18C50(v4, v5);

  v8 = v0[1];

  return v8();
}

uint64_t sub_26CC60F28(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v5[11] = v3;
  v5[12] = a1;
  v5[13] = a2;
  v5[14] = v2;
  v5[31] = v2;

  if (v2)
  {
    v6 = sub_26CC61258;
  }

  else
  {
    v6 = sub_26CC61064;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_26CC61064()
{
  v1 = v0[12];
  v2 = v0[13];
  v4 = v0[24];
  v3 = v0[25];
  sub_26CD3A0AC();
  sub_26CD3A5CC();
  sub_26CD39CEC();

  sub_26CC1D1B8(v4, v3);
  sub_26CC18C50(v1, v2);

  v5 = v0[1];

  return v5();
}

uint64_t sub_26CC61178()
{
  v1 = v0[23];
  v3 = v0[21];
  v2 = v0[22];
  v4 = v0[19];
  v5 = v0[20];
  v6 = v0[15];
  sub_26CC1D1B8(v0[24], v0[25]);
  swift_unknownObjectRelease();
  (*(v5 + 8))(v3, v4);
  (*(v1 + 8))(v6, v2);

  v7 = v0[1];

  return v7();
}

uint64_t sub_26CC61258()
{
  v1 = v0[22];
  v2 = v0[23];
  v3 = v0[15];
  sub_26CC1D1B8(v0[24], v0[25]);
  (*(v2 + 8))(v3, v1);

  v4 = v0[1];

  return v4();
}

unint64_t sub_26CC61334()
{
  result = qword_2804BC610;
  if (!qword_2804BC610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC610);
  }

  return result;
}

unint64_t sub_26CC61388()
{
  result = qword_2804BC618;
  if (!qword_2804BC618)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2804BC618);
  }

  return result;
}

unint64_t sub_26CC613E8()
{
  result = qword_2804BC620;
  if (!qword_2804BC620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC620);
  }

  return result;
}

uint64_t sub_26CC6143C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v39 = a1;
  v41 = a4;
  v7 = sub_26CD39EAC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v37 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA30, &qword_26CD3DA70);
  MEMORY[0x28223BE20](v10 - 8);
  v40 = &v34 - v11;
  v12 = sub_26CD3A07C();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v34 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v35 = &v34 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC628, &qword_26CD41378);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v34 - v18;
  v20 = *(v4 + 16);
  v21 = *(v4 + 24);
  v36 = v4;
  v42 = 0;
  v43 = 0xE000000000000000;
  sub_26CD3AC6C();

  v42 = 0x2F676F6C61746163;
  v43 = 0xE800000000000000;
  MEMORY[0x26D6AD060](a2, a3);
  MEMORY[0x26D6AD060](0x73676E6F732FLL, 0xE600000000000000);
  v22 = v42;
  v23 = v43;
  v42 = v20;
  v43 = v21;

  MEMORY[0x26D6AD060](v22, v23);

  sub_26CD39E9C();

  v42 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
  sub_26CC58138();
  v24 = sub_26CD3A55C();
  v38 = v8;
  v39 = v24;
  v25 = *(v8 + 48);
  if (v25(v19, 1, v7))
  {
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC630, &unk_26CD454C0);
    sub_26CD39E2C();
    *(swift_allocObject() + 16) = xmmword_26CD3C1E0;
    sub_26CD39DFC();

    sub_26CD39E5C();
  }

  v26 = v25(v19, 1, v7);
  v27 = v40;
  if (v26)
  {
    (*(v13 + 56))(v40, 1, 1, v12);
  }

  else
  {
    v28 = v37;
    v29 = v38;
    (*(v38 + 16))(v37, v19, v7);
    sub_26CD39E7C();
    (*(v29 + 8))(v28, v7);
    if ((*(v13 + 48))(v27, 1, v12) != 1)
    {
      v33 = v35;
      (*(v13 + 32))(v35, v27, v12);
      (*(v13 + 16))(v34, v33, v12);
      sub_26CD39C7C();
      (*(v13 + 8))(v33, v12);
      v30 = 0;
      goto LABEL_8;
    }
  }

  sub_26CC1B544(v27, &qword_2804BCA30, &qword_26CD3DA70);
  v30 = 1;
LABEL_8:
  v31 = sub_26CD39D0C();
  (*(*(v31 - 8) + 56))(v41, v30, 1, v31);
  return sub_26CC1B544(v19, &qword_2804BC628, &qword_26CD41378);
}

uint64_t sub_26CC619B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v4 = sub_26CD39EAC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v43 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA30, &qword_26CD3DA70);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v37 - v8;
  v10 = sub_26CD3A07C();
  v46 = *(v10 - 8);
  v47 = v10;
  v11 = MEMORY[0x28223BE20](v10);
  v40 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v41 = &v37 - v13;
  v39 = sub_26CD39E2C();
  v45 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v42 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC628, &qword_26CD41378);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v37 - v16;
  v18 = *(v2 + 24);
  v49[0] = *(v2 + 16);
  v49[1] = v18;

  MEMORY[0x26D6AD060](0xD000000000000014, 0x800000026CD4E590);
  sub_26CD39E9C();

  v44 = v5;
  v19 = *(v5 + 48);
  if (!v19(v17, 1, v4))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC630, &unk_26CD454C0);
    *(swift_allocObject() + 16) = xmmword_26CD3C1E0;
    sub_26CD39DFC();
    sub_26CD39E5C();
  }

  if (*(a1 + 16))
  {
    v49[0] = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    sub_26CC58138();
    sub_26CD3A55C();
    if (v19(v17, 1, v4))
    {
    }

    else
    {
      v21 = sub_26CD39E3C();
      if (*v20)
      {
        v38 = v9;
        v22 = v20;
        sub_26CD39DFC();

        v23 = *v22;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v37 = v22;
        *v22 = v23;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v23 = sub_26CCBE394(0, v23[2] + 1, 1, v23);
          *v37 = v23;
        }

        v26 = v23[2];
        v25 = v23[3];
        v9 = v38;
        if (v26 >= v25 >> 1)
        {
          v23 = sub_26CCBE394((v25 > 1), v26 + 1, 1, v23);
          *v37 = v23;
        }

        v23[2] = v26 + 1;
        (*(v45 + 32))(v23 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v26, v42, v39);
      }

      else
      {
      }

      v21(v49, 0);
    }
  }

  if (v19(v17, 1, v4))
  {
    (*(v46 + 56))(v9, 1, 1, v47);
    v27 = v48;
  }

  else
  {
    v29 = v43;
    v28 = v44;
    (*(v44 + 16))(v43, v17, v4);
    sub_26CD39E7C();
    (*(v28 + 8))(v29, v4);
    v31 = v46;
    v30 = v47;
    v32 = (*(v46 + 48))(v9, 1, v47);
    v27 = v48;
    if (v32 != 1)
    {
      v36 = v41;
      (*(v31 + 32))(v41, v9, v30);
      (*(v31 + 16))(v40, v36, v30);
      sub_26CD39C7C();
      (*(v31 + 8))(v36, v30);
      v33 = 0;
      goto LABEL_18;
    }
  }

  sub_26CC1B544(v9, &qword_2804BCA30, &qword_26CD3DA70);
  v33 = 1;
LABEL_18:
  v34 = sub_26CD39D0C();
  (*(*(v34 - 8) + 56))(v27, v33, 1, v34);
  return sub_26CC1B544(v17, &qword_2804BC628, &qword_26CD41378);
}

uint64_t sub_26CC62038@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v23 = a2;
  v24 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA30, &qword_26CD3DA70);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v23 - v6;
  v8 = sub_26CD3A07C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v23 - v13;
  v16 = *(v3 + 16);
  v15 = *(v3 + 24);
  v25 = 0;
  v26 = 0xE000000000000000;
  sub_26CD3AC6C();

  v25 = 0xD000000000000015;
  v26 = 0x800000026CD4E5B0;
  MEMORY[0x26D6AD060](a1, v23);
  v17 = v25;
  v18 = v26;
  v25 = v16;
  v26 = v15;

  MEMORY[0x26D6AD060](v17, v18);

  sub_26CD3A03C();

  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_26CC1B544(v7, &qword_2804BCA30, &qword_26CD3DA70);
    v19 = 1;
    v20 = v24;
  }

  else
  {
    (*(v9 + 32))(v14, v7, v8);
    (*(v9 + 16))(v12, v14, v8);
    v20 = v24;
    sub_26CD39C7C();
    (*(v9 + 8))(v14, v8);
    v19 = 0;
  }

  v21 = sub_26CD39D0C();
  return (*(*(v21 - 8) + 56))(v20, v19, 1, v21);
}

uint64_t sub_26CC622F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[21] = a3;
  v4[22] = v3;
  v4[19] = a1;
  v4[20] = a2;
  v5 = sub_26CD39D0C();
  v4[23] = v5;
  v4[24] = *(v5 - 8);
  v4[25] = swift_task_alloc();
  v6 = sub_26CD39EAC();
  v4[26] = v6;
  v4[27] = *(v6 - 8);
  v4[28] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA30, &qword_26CD3DA70);
  v4[29] = swift_task_alloc();
  v7 = sub_26CD3A07C();
  v4[30] = v7;
  v4[31] = *(v7 - 8);
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();
  v8 = sub_26CD39E2C();
  v4[34] = v8;
  v4[35] = *(v8 - 8);
  v4[36] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC628, &qword_26CD41378);
  v4[37] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26CC6254C, 0, 0);
}

uint64_t sub_26CC6254C()
{
  v1 = v0[37];
  v2 = v0[26];
  v3 = v0[27];

  MEMORY[0x26D6AD060](0xD000000000000014, 0x800000026CD4E590);
  sub_26CD39E9C();

  v4 = *(v3 + 48);
  v0[38] = v4;
  v0[39] = (v3 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (!v4(v1, 1, v2))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC630, &unk_26CD454C0);
    *(swift_allocObject() + 16) = xmmword_26CD3C1E0;
    sub_26CD39DFC();
    sub_26CD39E5C();
  }

  v0[5] = &type metadata for FeatureFlagManager;
  v0[6] = sub_26CC30530();
  *(v0 + 16) = 0;
  v5 = sub_26CD3A29C();
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  if (v5)
  {
    if (qword_280BBB5E8 != -1)
    {
      swift_once();
    }

    v6 = swift_task_alloc();
    v0[40] = v6;
    *v6 = v0;
    v6[1] = sub_26CC62CA8;

    return TVBagService.bag.getter((v0 + 7));
  }

  v8 = [objc_opt_self() app];
  v9 = _sSo8TVAppBagC0A8ServicesE6string3forSSSgSS_tF_0(0x65676175676E616CLL, 0xEC0000006761742DLL);
  v11 = v10;

  if (v11)
  {
    v12 = HIBYTE(v11) & 0xF;
    if ((v11 & 0x2000000000000000) == 0)
    {
      v12 = v9 & 0xFFFFFFFFFFFFLL;
    }

    if (v12 && !(v0[38])(v0[37], 1, v0[26]))
    {
      v14 = sub_26CD39E3C();
      if (*v13)
      {
        v15 = v13;
        sub_26CD39DFC();

        v16 = *v15;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v15 = v16;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v16 = sub_26CCBE394(0, v16[2] + 1, 1, v16);
          *v15 = v16;
        }

        v19 = v16[2];
        v18 = v16[3];
        if (v19 >= v18 >> 1)
        {
          v16 = sub_26CCBE394((v18 > 1), v19 + 1, 1, v16);
          *v15 = v16;
        }

        v21 = v0[35];
        v20 = v0[36];
        v22 = v0[34];
        v16[2] = v19 + 1;
        (*(v21 + 32))(v16 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v19, v20, v22);
      }

      else
      {
      }

      v14(v0 + 12, 0);
    }

    else
    {
    }
  }

  v23 = v0[37];
  v24 = v0[26];
  v25 = (v0[38])(v23, 1, v24);
  v26 = v0[30];
  v27 = v0[31];
  v28 = v0[29];
  if (v25)
  {
    (*(v27 + 56))(v0[29], 1, 1, v0[30]);
  }

  else
  {
    v30 = v0[27];
    v29 = v0[28];
    (*(v30 + 16))(v29, v23, v24);
    sub_26CD39E7C();
    (*(v30 + 8))(v29, v24);
    if ((*(v27 + 48))(v28, 1, v26) != 1)
    {
      v35 = v0[32];
      v34 = v0[33];
      v36 = v0[30];
      v37 = v0[31];
      v39 = v0[20];
      v38 = v0[21];
      (*(v37 + 32))(v34, v0[29], v36);
      (*(v37 + 16))(v35, v34, v36);
      sub_26CD39C7C();
      sub_26CD39D8C();
      swift_allocObject();
      sub_26CD39D7C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC638, &qword_26CD41380);
      v40 = swift_allocObject();
      *(v40 + 16) = xmmword_26CD3C1E0;
      *(v40 + 32) = v39;
      *(v40 + 40) = v38;
      *(v40 + 48) = 0x73676E6F73;
      *(v40 + 56) = 0xE500000000000000;
      v0[16] = v40;
      v0[17] = 0x73676E6F73;
      v0[18] = 0xE500000000000000;
      sub_26CC634D0();

      sub_26CD39D6C();
      v41 = v0[33];
      v42 = v0[30];
      v43 = v0[31];
      v45 = v0[24];
      v44 = v0[25];
      v46 = v0[23];
      v47 = v0[19];

      sub_26CD39CDC();
      sub_26CD39C0C();
      (*(v43 + 8))(v41, v42);
      (*(v45 + 32))(v47, v44, v46);
      v31 = 0;
      goto LABEL_27;
    }
  }

  sub_26CC1B544(v0[29], &qword_2804BCA30, &qword_26CD3DA70);
  v31 = 1;
LABEL_27:
  v32 = v0[37];
  (*(v0[24] + 56))(v0[19], v31, 1, v0[23]);
  sub_26CC1B544(v32, &qword_2804BC628, &qword_26CD41378);

  v33 = v0[1];

  return v33();
}

uint64_t sub_26CC62CA8()
{
  *(*v1 + 328) = v0;

  if (v0)
  {
    v2 = sub_26CC6334C;
  }

  else
  {
    v2 = sub_26CC62DBC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26CC62DBC()
{
  __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
  v1 = sub_26CD3A39C();
  v3 = v2;
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  v4 = *(v0 + 328);
  if (v3)
  {
    v5 = HIBYTE(v3) & 0xF;
    if ((v3 & 0x2000000000000000) == 0)
    {
      v5 = v1 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 && !(*(v0 + 304))(*(v0 + 296), 1, *(v0 + 208)))
    {
      v7 = sub_26CD39E3C();
      if (*v6)
      {
        v8 = v6;
        sub_26CD39DFC();

        v9 = *v8;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v8 = v9;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v9 = sub_26CCBE394(0, v9[2] + 1, 1, v9);
          *v8 = v9;
        }

        v12 = v9[2];
        v11 = v9[3];
        if (v12 >= v11 >> 1)
        {
          v9 = sub_26CCBE394((v11 > 1), v12 + 1, 1, v9);
          *v8 = v9;
        }

        v14 = *(v0 + 280);
        v13 = *(v0 + 288);
        v15 = *(v0 + 272);
        v9[2] = v12 + 1;
        (*(v14 + 32))(v9 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v12, v13, v15);
      }

      else
      {
      }

      v7(v0 + 96, 0);
    }

    else
    {
    }
  }

  v16 = *(v0 + 296);
  v17 = *(v0 + 208);
  v18 = (*(v0 + 304))(v16, 1, v17);
  v19 = *(v0 + 240);
  v20 = *(v0 + 248);
  v21 = *(v0 + 232);
  if (v18)
  {
    (*(v20 + 56))(*(v0 + 232), 1, 1, *(v0 + 240));
LABEL_18:
    sub_26CC1B544(*(v0 + 232), &qword_2804BCA30, &qword_26CD3DA70);
    v24 = 1;
LABEL_19:
    v25 = *(v0 + 296);
    (*(*(v0 + 192) + 56))(*(v0 + 152), v24, 1, *(v0 + 184));
    sub_26CC1B544(v25, &qword_2804BC628, &qword_26CD41378);

    v26 = *(v0 + 8);
    goto LABEL_20;
  }

  v23 = *(v0 + 216);
  v22 = *(v0 + 224);
  (*(v23 + 16))(v22, v16, v17);
  sub_26CD39E7C();
  (*(v23 + 8))(v22, v17);
  if ((*(v20 + 48))(v21, 1, v19) == 1)
  {
    goto LABEL_18;
  }

  v29 = *(v0 + 256);
  v28 = *(v0 + 264);
  v30 = *(v0 + 240);
  v31 = *(v0 + 248);
  v33 = *(v0 + 160);
  v32 = *(v0 + 168);
  (*(v31 + 32))(v28, *(v0 + 232), v30);
  (*(v31 + 16))(v29, v28, v30);
  sub_26CD39C7C();
  sub_26CD39D8C();
  swift_allocObject();
  sub_26CD39D7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC638, &qword_26CD41380);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_26CD3C1E0;
  *(v34 + 32) = v33;
  *(v34 + 40) = v32;
  *(v34 + 48) = 0x73676E6F73;
  *(v34 + 56) = 0xE500000000000000;
  *(v0 + 128) = v34;
  *(v0 + 136) = 0x73676E6F73;
  *(v0 + 144) = 0xE500000000000000;
  sub_26CC634D0();

  sub_26CD39D6C();
  v35 = *(v0 + 264);
  v36 = *(v0 + 240);
  v37 = *(v0 + 248);
  v39 = *(v0 + 192);
  v38 = *(v0 + 200);
  v40 = *(v0 + 184);
  if (!v4)
  {
    v41 = *(v0 + 152);

    sub_26CD39CDC();
    sub_26CD39C0C();
    (*(v37 + 8))(v35, v36);
    (*(v39 + 32))(v41, v38, v40);
    v24 = 0;
    goto LABEL_19;
  }

  (*(v39 + 8))(v38, v40);
  (*(v37 + 8))(v35, v36);
  sub_26CC1B544(*(v0 + 296), &qword_2804BC628, &qword_26CD41378);

  v26 = *(v0 + 8);
LABEL_20:

  return v26();
}

uint64_t sub_26CC6334C()
{
  sub_26CC1B544(*(v0 + 296), &qword_2804BC628, &qword_26CD41378);

  v1 = *(v0 + 8);

  return v1();
}

void *sub_26CC63420()
{

  return v0;
}

uint64_t sub_26CC63478()
{
  sub_26CC63420();

  return swift_deallocClassInstance();
}

unint64_t sub_26CC634D0()
{
  result = qword_2804BC640;
  if (!qword_2804BC640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC640);
  }

  return result;
}

uint64_t sub_26CC63524()
{
  result = v0;
  *(v0 + 16) = 0xD000000000000023;
  *(v0 + 24) = 0x800000026CD4E5D0;
  *(v0 + 32) = 0xD000000000000013;
  *(v0 + 40) = 0x800000026CD4E600;
  *(v0 + 48) = 0xD000000000000013;
  *(v0 + 56) = 0x800000026CD4E620;
  *(v0 + 64) = 1701080941;
  *(v0 + 72) = 0xE400000000000000;
  *(v0 + 80) = 108;
  *(v0 + 88) = 0xE100000000000000;
  strcpy((v0 + 96), "byExternalId");
  *(v0 + 109) = 0;
  *(v0 + 110) = -5120;
  *(v0 + 112) = 0x6F732D6465766173;
  *(v0 + 120) = 0xEB0000000073676ELL;
  *(v0 + 128) = 0xD000000000000021;
  *(v0 + 136) = 0x800000026CD4E640;
  return result;
}

uint64_t sub_26CC635E8(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC6A8, &qword_26CD41778);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26CC64F7C();
  sub_26CD3B16C();
  v9[1] = a2;
  sub_26CC64FD0();
  sub_26CD3AF6C();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_26CC63730(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC6E8, &qword_26CD41910);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26CC651A0();
  sub_26CD3B16C();
  v9[1] = a2;
  sub_26CC651F4();
  sub_26CD3AF6C();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_26CC63878(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC728, &qword_26CD41AA0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26CC653C4();
  sub_26CD3B16C();
  v9[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC738, &qword_26CD41AA8);
  sub_26CC6546C(&qword_2804BC740, sub_26CC65418, MEMORY[0x277D83948]);
  sub_26CD3AF6C();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_26CC63A04(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[0] = a4;
  v12[1] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC670, &qword_26CD41498);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26CC64CE8();
  sub_26CD3B16C();
  v14 = 0;
  sub_26CD3AF2C();
  if (!v5)
  {
    v13 = 1;
    sub_26CD3AF2C();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_26CC63B98()
{
  sub_26CD3B0FC();
  sub_26CD3A54C();
  return sub_26CD3B13C();
}

uint64_t sub_26CC63C14(uint64_t a1)
{
  sub_26CD3B0FC();
  sub_26CD3A54C();
  return sub_26CD3B13C();
}

void sub_26CC63C6C(BOOL *a2@<X8>)
{
  v3 = sub_26CD3AD9C();

  *a2 = v3 != 0;
}

void sub_26CC63D04(BOOL *a3@<X8>)
{
  v4 = sub_26CD3AD9C();

  *a3 = v4 != 0;
}

uint64_t sub_26CC63D5C(uint64_t a1)
{
  v2 = sub_26CC645C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26CC63D98(uint64_t a1)
{
  v2 = sub_26CC645C8();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_26CC63DF8(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E6F6974616C6572 && a2 == 0xED00007370696873)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_26CD3AFDC();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_26CC63E88(uint64_t a1)
{
  v2 = sub_26CC64F7C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26CC63EC4(uint64_t a1)
{
  v2 = sub_26CC64F7C();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_26CC63F00@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_26CC64670(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

void sub_26CC63F5C(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x736B63617274 && a2 == 0xE600000000000000)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_26CD3AFDC();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_26CC63FE0(uint64_t a1)
{
  v2 = sub_26CC651A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26CC6401C(uint64_t a1)
{
  v2 = sub_26CC651A0();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_26CC64058@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_26CC647E0(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

void sub_26CC640B0(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1635017060 && a2 == 0xE400000000000000)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_26CD3AFDC();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_26CC64138(uint64_t a1)
{
  v2 = sub_26CC653C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26CC64174(uint64_t a1)
{
  v2 = sub_26CC653C4();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_26CC641B0@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_26CC64950(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_26CC641F8()
{
  if (*v0)
  {
    return 1701869940;
  }

  else
  {
    return 25705;
  }
}

void sub_26CC64220(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v5 || (sub_26CD3AFDC() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_26CD3AFDC();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_26CC642F4(uint64_t a1)
{
  v2 = sub_26CC64CE8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26CC64330(uint64_t a1)
{
  v2 = sub_26CC64CE8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26CC6436C@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_26CC64B04(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

uint64_t sub_26CC643D8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26CC64420(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26CC64480(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC648, &qword_26CD41488);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26CC645C8();
  sub_26CD3B16C();
  v9[1] = a2;
  sub_26CC6461C();
  sub_26CD3AF6C();
  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_26CC645C8()
{
  result = qword_2804BC650;
  if (!qword_2804BC650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC650);
  }

  return result;
}

unint64_t sub_26CC6461C()
{
  result = qword_2804BC658;
  if (!qword_2804BC658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC658);
  }

  return result;
}

void *sub_26CC64670(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC6C0, &qword_26CD41780);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26CC64F7C();
  sub_26CD3B15C();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    sub_26CC65024();
    sub_26CD3AE7C();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v7;
}

void *sub_26CC647E0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC700, &qword_26CD41918);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26CC651A0();
  sub_26CD3B15C();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    sub_26CC65248();
    sub_26CD3AE7C();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v7;
}

void *sub_26CC64950(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC750, &qword_26CD41AB0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26CC653C4();
  sub_26CD3B15C();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC738, &qword_26CD41AA8);
    sub_26CC6546C(&qword_2804BC758, sub_26CC654E4, MEMORY[0x277D83978]);
    sub_26CD3AE7C();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v7;
}

uint64_t sub_26CC64B04(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC660, &qword_26CD41490);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26CC64CE8();
  sub_26CD3B15C();
  if (!v1)
  {
    v11 = 0;
    v7 = sub_26CD3AE3C();
    v10 = 1;
    sub_26CD3AE3C();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v7;
}

unint64_t sub_26CC64CE8()
{
  result = qword_2804BC668;
  if (!qword_2804BC668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC668);
  }

  return result;
}

unint64_t sub_26CC64D70()
{
  result = qword_2804BC678;
  if (!qword_2804BC678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC678);
  }

  return result;
}

unint64_t sub_26CC64DC8()
{
  result = qword_2804BC680;
  if (!qword_2804BC680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC680);
  }

  return result;
}

unint64_t sub_26CC64E20()
{
  result = qword_2804BC688;
  if (!qword_2804BC688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC688);
  }

  return result;
}

unint64_t sub_26CC64E78()
{
  result = qword_2804BC690;
  if (!qword_2804BC690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC690);
  }

  return result;
}

unint64_t sub_26CC64ED0()
{
  result = qword_2804BC698;
  if (!qword_2804BC698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC698);
  }

  return result;
}

unint64_t sub_26CC64F28()
{
  result = qword_2804BC6A0;
  if (!qword_2804BC6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC6A0);
  }

  return result;
}

unint64_t sub_26CC64F7C()
{
  result = qword_2804BC6B0;
  if (!qword_2804BC6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC6B0);
  }

  return result;
}

unint64_t sub_26CC64FD0()
{
  result = qword_2804BC6B8;
  if (!qword_2804BC6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC6B8);
  }

  return result;
}

unint64_t sub_26CC65024()
{
  result = qword_2804BC6C8;
  if (!qword_2804BC6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC6C8);
  }

  return result;
}

unint64_t sub_26CC6509C()
{
  result = qword_2804BC6D0;
  if (!qword_2804BC6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC6D0);
  }

  return result;
}

unint64_t sub_26CC650F4()
{
  result = qword_2804BC6D8;
  if (!qword_2804BC6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC6D8);
  }

  return result;
}

unint64_t sub_26CC6514C()
{
  result = qword_2804BC6E0;
  if (!qword_2804BC6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC6E0);
  }

  return result;
}

unint64_t sub_26CC651A0()
{
  result = qword_2804BC6F0;
  if (!qword_2804BC6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC6F0);
  }

  return result;
}

unint64_t sub_26CC651F4()
{
  result = qword_2804BC6F8;
  if (!qword_2804BC6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC6F8);
  }

  return result;
}

unint64_t sub_26CC65248()
{
  result = qword_2804BC708;
  if (!qword_2804BC708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC708);
  }

  return result;
}

unint64_t sub_26CC652C0()
{
  result = qword_2804BC710;
  if (!qword_2804BC710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC710);
  }

  return result;
}

unint64_t sub_26CC65318()
{
  result = qword_2804BC718;
  if (!qword_2804BC718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC718);
  }

  return result;
}

unint64_t sub_26CC65370()
{
  result = qword_2804BC720;
  if (!qword_2804BC720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC720);
  }

  return result;
}

unint64_t sub_26CC653C4()
{
  result = qword_2804BC730;
  if (!qword_2804BC730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC730);
  }

  return result;
}

unint64_t sub_26CC65418()
{
  result = qword_2804BC748;
  if (!qword_2804BC748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC748);
  }

  return result;
}

uint64_t sub_26CC6546C(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804BC738, &qword_26CD41AA8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26CC654E4()
{
  result = qword_2804BC760;
  if (!qword_2804BC760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC760);
  }

  return result;
}

unint64_t sub_26CC6554C()
{
  result = qword_2804BC768;
  if (!qword_2804BC768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC768);
  }

  return result;
}

unint64_t sub_26CC655A4()
{
  result = qword_2804BC770;
  if (!qword_2804BC770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC770);
  }

  return result;
}

unint64_t sub_26CC655FC()
{
  result = qword_2804BC778;
  if (!qword_2804BC778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC778);
  }

  return result;
}

uint64_t LocationAuthorizationStatus.hashValue.getter()
{
  v1 = *v0;
  sub_26CD3B0FC();
  MEMORY[0x26D6ADAF0](v1);
  return sub_26CD3B13C();
}

id sub_26CC65740()
{
  type metadata accessor for LocationService();
  v0 = swift_allocObject();
  result = [objc_allocWithZone(type metadata accessor for LocationManager()) init];
  *(v0 + 16) = result;
  off_2804BC780 = v0;
  return result;
}

uint64_t static LocationService.shared()()
{
  if (qword_2804BBA20 != -1)
  {
    swift_once();
  }
}

uint64_t sub_26CC65834()
{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_26CC658C8;

  return sub_26CC7F9DC();
}

uint64_t sub_26CC658C8(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {
    v7 = *(v4 + 8);

    return v7(a1);
  }
}

uint64_t LocationService.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t sub_26CC65A70()
{
  result = qword_2804BC788;
  if (!qword_2804BC788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC788);
  }

  return result;
}

uint64_t sub_26CC65AD4(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26CC5C5BC;

  return v7(a1, a2);
}

uint64_t dispatch thunk of LocationService.retrieveLocation()()
{
  v4 = (*(*v0 + 104) + **(*v0 + 104));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_26CC65DA8;

  return v4();
}

uint64_t sub_26CC65DAC(uint64_t a1)
{
  v2 = sub_26CC65FC8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26CC65DE8(uint64_t a1)
{
  v2 = sub_26CC65FC8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MusicPlaylistsResponse.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC790, &qword_26CD41CD0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26CC65FC8();

  sub_26CD3B16C();
  v9[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC7A0, &qword_26CD41CD8);
  sub_26CC66220(&qword_2804BC7A8, sub_26CC6601C, MEMORY[0x277D83948]);
  sub_26CD3AF6C();

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_26CC65FC8()
{
  result = qword_2804BC798;
  if (!qword_2804BC798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC798);
  }

  return result;
}

unint64_t sub_26CC6601C()
{
  result = qword_2804BC7B0;
  if (!qword_2804BC7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC7B0);
  }

  return result;
}

uint64_t MusicPlaylistsResponse.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC7B8, &qword_26CD41CE0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26CC65FC8();
  sub_26CD3B15C();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC7A0, &qword_26CD41CD8);
    sub_26CC66220(&qword_2804BC7C0, sub_26CC66298, MEMORY[0x277D83978]);
    sub_26CD3AE7C();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26CC66220(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804BC7A0, &qword_26CD41CD8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26CC66298()
{
  result = qword_2804BC7C8;
  if (!qword_2804BC7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC7C8);
  }

  return result;
}

uint64_t MusicPlaylist.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t MusicPlaylist.attributes.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[3];
  v4 = v1[4];
  v3 = v1[5];
  *a1 = v1[2];
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = v3;
}

uint64_t sub_26CC6639C()
{
  v1 = 0x7475626972747461;
  if (*v0 != 1)
  {
    v1 = 1635018093;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_26CC663E8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_26CC67BC8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_26CC66410(uint64_t a1)
{
  v2 = sub_26CC666AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26CC6644C(uint64_t a1)
{
  v2 = sub_26CC666AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MusicPlaylist.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC7D0, &qword_26CD41CE8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - v5;
  v7 = v1[3];
  v14 = v1[2];
  v15 = v7;
  v8 = v1[4];
  v16 = v1[5];
  v12 = v1[6];
  v13 = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26CC666AC();
  sub_26CD3B16C();
  LOBYTE(v18) = 0;
  v9 = v17;
  sub_26CD3AF2C();
  if (!v9)
  {
    v18 = v14;
    v19 = v15;
    v10 = v12;
    v20 = v13;
    v21 = v16;
    v22 = 1;
    sub_26CC66700();

    sub_26CD3AF6C();

    v18 = v10;
    v22 = 2;
    sub_26CC66754();

    sub_26CD3AF1C();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_26CC666AC()
{
  result = qword_2804BC7D8;
  if (!qword_2804BC7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC7D8);
  }

  return result;
}

unint64_t sub_26CC66700()
{
  result = qword_2804BC7E0;
  if (!qword_2804BC7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC7E0);
  }

  return result;
}

unint64_t sub_26CC66754()
{
  result = qword_2804BC7E8;
  if (!qword_2804BC7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC7E8);
  }

  return result;
}

void MusicPlaylist.init(from:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC7F0, &qword_26CD41CF0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26CC666AC();
  sub_26CD3B15C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    LOBYTE(v22) = 0;
    v9 = sub_26CD3AE3C();
    v21 = v10;
    v26 = 1;
    sub_26CC66A70();
    sub_26CD3AE7C();
    v17 = v24;
    v18 = v22;
    v19 = v25;
    v20 = v23;
    v26 = 2;
    sub_26CC66AC4();
    sub_26CD3AE2C();
    (*(v6 + 8))(v8, v5);
    v12 = v21;
    v11 = v22;
    *a2 = v9;
    a2[1] = v12;
    v13 = v17;
    v15 = v19;
    v14 = v20;
    a2[2] = v18;
    a2[3] = v14;
    a2[4] = v13;
    a2[5] = v15;
    a2[6] = v11;

    __swift_destroy_boxed_opaque_existential_1(a1);
  }
}

unint64_t sub_26CC66A70()
{
  result = qword_2804BC7F8;
  if (!qword_2804BC7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC7F8);
  }

  return result;
}

unint64_t sub_26CC66AC4()
{
  result = qword_2804BC800;
  if (!qword_2804BC800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC800);
  }

  return result;
}

uint64_t MusicPlaylistAttributes.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t MusicPlaylistAttributes.artwork.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
}

uint64_t sub_26CC66B84()
{
  if (*v0)
  {
    return 0x6B726F77747261;
  }

  else
  {
    return 1701667182;
  }
}

void sub_26CC66BB8(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v5 || (sub_26CD3AFDC() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x6B726F77747261 && a2 == 0xE700000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_26CD3AFDC();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_26CC66C94(uint64_t a1)
{
  v2 = sub_26CC66EB0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26CC66CD0(uint64_t a1)
{
  v2 = sub_26CC66EB0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MusicPlaylistAttributes.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC808, &qword_26CD41CF8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - v5;
  v7 = *(v1 + 24);
  v11 = *(v1 + 16);
  v12 = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26CC66EB0();
  sub_26CD3B16C();
  LOBYTE(v14) = 0;
  v8 = v13;
  sub_26CD3AF2C();
  if (!v8)
  {
    v14 = v11;
    v15 = v12;
    v16 = 1;
    sub_26CC5F290();

    sub_26CD3AF1C();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_26CC66EB0()
{
  result = qword_2804BC810;
  if (!qword_2804BC810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC810);
  }

  return result;
}

void MusicPlaylistAttributes.init(from:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC818, &qword_26CD41D00);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26CC66EB0();
  sub_26CD3B15C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    LOBYTE(v15[0]) = 0;
    v9 = sub_26CD3AE3C();
    v11 = v10;
    v12 = v9;
    v16 = 1;
    sub_26CC5F23C();
    sub_26CD3AE2C();
    (*(v6 + 8))(v8, v5);
    v13 = v15[0];
    v14 = v15[1];
    *a2 = v12;
    a2[1] = v11;
    a2[2] = v13;
    a2[3] = v14;

    __swift_destroy_boxed_opaque_existential_1(a1);
  }
}

void sub_26CC67164(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6B63617254736168 && a2 == 0xE800000000000000)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_26CD3AFDC();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_26CC671EC(uint64_t a1)
{
  v2 = sub_26CC67404();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26CC67228(uint64_t a1)
{
  v2 = sub_26CC67404();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MusicPlaylistMetadata.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC820, &qword_26CD41D08);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26CC67404();

  sub_26CD3B16C();
  v9[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC830, &qword_26CD41D10);
  sub_26CC67604(&qword_2804BC838, MEMORY[0x277D837D8], MEMORY[0x277D839B8], MEMORY[0x277D83508]);
  sub_26CD3AF6C();

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_26CC67404()
{
  result = qword_2804BC828;
  if (!qword_2804BC828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC828);
  }

  return result;
}

uint64_t MusicPlaylistMetadata.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC840, &qword_26CD41D18);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26CC67404();
  sub_26CD3B15C();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC830, &qword_26CD41D10);
    sub_26CC67604(&qword_2804BC848, MEMORY[0x277D83808], MEMORY[0x277D839D0], MEMORY[0x277D83528]);
    sub_26CD3AE7C();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26CC67604(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804BC830, &qword_26CD41D10);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26CC676D4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26CC6771C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_26CC677AC()
{
  result = qword_2804BC850;
  if (!qword_2804BC850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC850);
  }

  return result;
}

unint64_t sub_26CC67804()
{
  result = qword_2804BC858;
  if (!qword_2804BC858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC858);
  }

  return result;
}

unint64_t sub_26CC6785C()
{
  result = qword_2804BC860;
  if (!qword_2804BC860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC860);
  }

  return result;
}

unint64_t sub_26CC678B4()
{
  result = qword_2804BC868;
  if (!qword_2804BC868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC868);
  }

  return result;
}

unint64_t sub_26CC6790C()
{
  result = qword_2804BC870;
  if (!qword_2804BC870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC870);
  }

  return result;
}

unint64_t sub_26CC67964()
{
  result = qword_2804BC878;
  if (!qword_2804BC878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC878);
  }

  return result;
}

unint64_t sub_26CC679BC()
{
  result = qword_2804BC880;
  if (!qword_2804BC880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC880);
  }

  return result;
}

unint64_t sub_26CC67A14()
{
  result = qword_2804BC888;
  if (!qword_2804BC888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC888);
  }

  return result;
}

unint64_t sub_26CC67A6C()
{
  result = qword_2804BC890;
  if (!qword_2804BC890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC890);
  }

  return result;
}

unint64_t sub_26CC67AC4()
{
  result = qword_2804BC898;
  if (!qword_2804BC898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC898);
  }

  return result;
}

unint64_t sub_26CC67B1C()
{
  result = qword_2804BC8A0;
  if (!qword_2804BC8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC8A0);
  }

  return result;
}

unint64_t sub_26CC67B74()
{
  result = qword_2804BC8A8;
  if (!qword_2804BC8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC8A8);
  }

  return result;
}

uint64_t sub_26CC67BC8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7475626972747461 && a2 == 0xEA00000000007365 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1635018093 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_26CD3AFDC();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_26CC67CEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[10] = a6;
  v7[11] = a7;
  v7[8] = a4;
  v7[9] = a5;
  v7[6] = a2;
  v7[7] = a3;
  v7[5] = a1;
  v8 = sub_26CD39EAC();
  v7[12] = v8;
  v7[13] = *(v8 - 8);
  v7[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA30, &qword_26CD3DA70);
  v7[15] = swift_task_alloc();
  v9 = sub_26CD3A07C();
  v7[16] = v9;
  v7[17] = *(v9 - 8);
  v7[18] = swift_task_alloc();
  v7[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC628, &qword_26CD41378);
  v7[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26CC67E90, 0, 0);
}

uint64_t sub_26CC67E90()
{
  v1 = [objc_opt_self() standardUserDefaults];
  *(v0 + 16) = v1;
  *(v0 + 168) = v1;
  *(v0 + 24) = xmmword_26CD423B0;
  v2 = swift_task_alloc();
  *(v0 + 176) = v2;
  *v2 = v0;
  v2[1] = sub_26CC67F54;

  return sub_26CCF46C4();
}

uint64_t sub_26CC67F54(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[23] = a1;
  v4[24] = a2;
  v4[25] = v2;

  if (v2)
  {
    v5 = sub_26CC683E8;
  }

  else
  {
    v5 = sub_26CC6806C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_26CC6806C()
{
  v1 = *(v0 + 88);

  if (v1)
  {
  }

  else if (!*(v0 + 192))
  {
    sub_26CC6848C();
    swift_allocError();
    *v25 = 4;
    swift_willThrow();
    goto LABEL_10;
  }

  v2 = *(v0 + 160);
  v3 = *(v0 + 96);
  v4 = *(v0 + 104);
  sub_26CD39E9C();

  v5 = *(v4 + 48);
  if (!v5(v2, 1, v3))
  {
    v7 = *(v0 + 48);
    v6 = *(v0 + 56);
    v26 = *(v0 + 64);
    v27 = *(v0 + 72);

    MEMORY[0x26D6AD060](v7, v6);
    MEMORY[0x26D6AC870](v26, v27);
  }

  v8 = *(v0 + 160);
  v9 = *(v0 + 96);
  v10 = v5(v8, 1, v9);
  v11 = *(v0 + 128);
  v12 = *(v0 + 136);
  v13 = *(v0 + 120);
  if (v10)
  {
    (*(v12 + 56))(*(v0 + 120), 1, 1, *(v0 + 128));
LABEL_9:
    v16 = *(v0 + 160);
    sub_26CC1B544(*(v0 + 120), &qword_2804BCA30, &qword_26CD3DA70);
    sub_26CC6848C();
    swift_allocError();
    *v17 = 4;
    swift_willThrow();
    sub_26CC1B544(v16, &qword_2804BC628, &qword_26CD41378);
LABEL_10:

    v18 = *(v0 + 8);
    goto LABEL_11;
  }

  v15 = *(v0 + 104);
  v14 = *(v0 + 112);
  (*(v15 + 16))(v14, v8, v9);
  sub_26CD39E7C();
  (*(v15 + 8))(v14, v9);
  if ((*(v12 + 48))(v13, 1, v11) == 1)
  {
    goto LABEL_9;
  }

  v21 = *(v0 + 152);
  v20 = *(v0 + 160);
  v23 = *(v0 + 136);
  v22 = *(v0 + 144);
  v24 = *(v0 + 128);
  (*(v23 + 32))(v21, *(v0 + 120), v24);
  (*(v23 + 16))(v22, v21, v24);
  sub_26CD39C7C();
  (*(v23 + 8))(v21, v24);
  sub_26CC1B544(v20, &qword_2804BC628, &qword_26CD41378);

  v18 = *(v0 + 8);
LABEL_11:

  return v18();
}

uint64_t sub_26CC683E8()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_26CC6848C()
{
  result = qword_2804BC8B0;
  if (!qword_2804BC8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC8B0);
  }

  return result;
}

SportsFavoriteServiceObjC __swiftcall SportsFavoriteServiceObjC.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t type metadata accessor for SportsFavoriteServiceObjC()
{
  result = qword_2804BC8B8;
  if (!qword_2804BC8B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2804BC8B8);
  }

  return result;
}

void sub_26CC685E0(uint64_t a1)
{
  if (qword_280BB9C18 != -1)
  {
    swift_once();
  }

  v2 = qword_280BBCBD0;
  sub_26CD3AC6C();
  MEMORY[0x26D6AD060](0xD000000000000019, 0x800000026CD4E750);
  if (a1)
  {
    v3 = 0x657469726F766166;
  }

  else
  {
    v3 = 0x736E6F4372657375;
  }

  if (a1)
  {
    v4 = 0xE900000000000073;
  }

  else
  {
    v4 = 0xEB00000000746E65;
  }

  MEMORY[0x26D6AD060](v3, v4);

  MEMORY[0x26D6AD060](0xD000000000000018, 0x800000026CD4E770);
  v5 = sub_26CD3A99C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_26CD3C1E0;
  *(v6 + 56) = MEMORY[0x277D837D0];
  *(v6 + 64) = sub_26CC19E10();
  *(v6 + 32) = 0;
  *(v6 + 40) = 0xE000000000000000;
  sub_26CD3A3DC(v5, &dword_26CC14000, v2, "%@", 2, 2, v6, 1, 2);

  if (a1 == 1)
  {
    if (qword_280BBB2D0 != -1)
    {
      swift_once();
    }

    sub_26CCA1FA8(1);

    if (qword_280BBB460 != -1)
    {
      swift_once();
    }

    v7 = 1;
  }

  else
  {
    if (a1)
    {
      return;
    }

    if (qword_280BBB2D0 != -1)
    {
      swift_once();
    }

    sub_26CCA1FA8(0);

    if (qword_280BBB460 != -1)
    {
      swift_once();
    }

    v7 = 0;
  }

  sub_26CC96AB0(v7);
}

Swift::OpaquePointer_optional __swiftcall Data.asDictionary()()
{
  v25 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_self();
  v1 = sub_26CD3A09C();
  v23 = 0;
  v2 = [v0 JSONObjectWithData:v1 options:0 error:&v23];

  if (!v2)
  {
    v6 = v23;
    v7 = sub_26CD39F8C();

    swift_willThrow();
    v22 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC10, &unk_26CD3D4C0);
    sub_26CC69164();
    swift_dynamicCast();
    if (qword_280BBB6B8 != -1)
    {
      swift_once();
    }

    v8 = qword_280BBCC98;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_26CD3C1E0;
    v23 = 0;
    v24 = 0xE000000000000000;
    sub_26CD3AC6C();

    v23 = 0xD000000000000026;
    v24 = 0x800000026CD4E7C0;
    v10 = [v20 localizedDescription];
    v11 = sub_26CD3A5CC();
    v13 = v12;

    MEMORY[0x26D6AD060](v11, v13);

    v14 = v24;
    *(v9 + 32) = v23;
    *(v9 + 40) = v14;
    v15 = sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_26CD3C1E0;
    *(v16 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v16 + 64) = sub_26CC2E6E8();
    *(v16 + 32) = v9;
    sub_26CD3A3DC(v15, &dword_26CC14000, v8, "%@", 2, 2, v16);

    goto LABEL_10;
  }

  v3 = v23;
  sub_26CD3AB3C();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC30, &qword_26CD46430);
  if (!swift_dynamicCast())
  {
    if (qword_280BBB6B8 != -1)
    {
      swift_once();
    }

    v17 = qword_280BBCC98;
    v18 = sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_26CD3C1E0;
    *(v19 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v19 + 64) = sub_26CC2E6E8();
    *(v19 + 32) = &unk_287DF9310;
    sub_26CD3A3DC(v18, &dword_26CC14000, v17, "%@", 2, 2, v19);

LABEL_10:
    v5 = 0;
    goto LABEL_11;
  }

  v5 = v21;
LABEL_11:
  result.value._rawValue = v5;
  result.is_nil = v4;
  return result;
}

unint64_t sub_26CC69164()
{
  result = qword_280BB9BA8;
  if (!qword_280BB9BA8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280BB9BA8);
  }

  return result;
}

uint64_t sub_26CC691B0@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_26CC691BC(_BYTE *a1, uint64_t a2)
{
  v3 = 3;
  result = sub_26CC97DB0(a1, &v3, a2);
  if (result)
  {
    if (qword_280BBB460 != -1)
    {
      swift_once();
    }

    return sub_26CC96AB0(0);
  }

  return result;
}

uint64_t sub_26CC69240(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26CC246B8;

  return sub_26CCA544C(a1);
}

uint64_t sub_26CC692E8(_BYTE *a1, uint64_t a2, char a3)
{
  v4 = a3;
  result = sub_26CC97DB0(a1, &v4, a2);
  if (result)
  {
    if (qword_280BBB460 != -1)
    {
      swift_once();
    }

    return sub_26CC96AB0(0);
  }

  return result;
}

uint64_t sub_26CC6936C(char a1)
{
  *(v1 + 32) = a1;
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_26CC69418;

  return sub_26CCAB85C((v1 + 32));
}

uint64_t sub_26CC69418()
{
  v2 = *v1;
  *(v2 + 24) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26CC6954C, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_26CC69564(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26CC37110;

  return sub_26CCA544C(a1);
}

uint64_t sub_26CC695FC@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = 1;
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_26CC6960C(uint64_t a1, uint64_t a2)
{
  v2[14] = a1;
  v2[15] = a2;
  type metadata accessor for SportsFavoriteService.UserConsent.State(0);
  v2[16] = swift_task_alloc();
  v2[17] = _s5CacheC5ValueOMa(0);
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26CC696D8, 0, 0);
}

uint64_t sub_26CC696D8()
{
  if (qword_2804BB9F0 != -1)
  {
    swift_once();
  }

  if (byte_2804D1490)
  {

    v1 = v0[1];

    return v1();
  }

  else
  {
    v3 = swift_allocObject();
    v0[20] = v3;
    *(v3 + 16) = 0;
    v0[2] = sub_26CC6E67C;
    v0[3] = v3;
    v0[4] = 0;
    v0[5] = 0;
    v0[6] = sub_26CC691BC;
    v0[7] = 0;
    v0[8] = 0;
    v0[9] = 0;
    v0[10] = &unk_26CD423D8;
    v0[11] = 0;
    v0[12] = 0;
    v0[13] = 0;
    v4 = swift_task_alloc();
    v0[21] = v4;
    *v4 = v0;
    v4[1] = sub_26CC69864;
    v5 = v0[19];
    v6 = v0[14];
    v7 = v0[15];

    return sub_26CC7C314(v5, (v0 + 2), v6, v7);
  }
}

uint64_t sub_26CC69864()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_26CC6E660;
  }

  else
  {

    v2 = sub_26CC69980;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26CC69980()
{
  sub_26CC6DAC8(v0[19], v0[18]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v2 = v0[18];
  v3 = v0[19];
  if (EnumCaseMultiPayload == 1)
  {
    sub_26CC3BD30();
    swift_allocError();
    *v4 = 1;
    swift_willThrow();
    sub_26CC6DB90(v3, _s5CacheC5ValueOMa);
    sub_26CC6DB90(v2, _s5CacheC5ValueOMa);
  }

  else
  {
    v5 = v0[16];
    sub_26CC6DB90(v0[19], _s5CacheC5ValueOMa);
    sub_26CC6DB2C(v2, v5);
    v6 = *v5;
    sub_26CC6DB90(v5, type metadata accessor for SportsFavoriteService.UserConsent.State);
    if (v6 > 1)
    {
    }

    else
    {
      v7 = sub_26CD3AFDC();

      if ((v7 & 1) == 0)
      {
        sub_26CC6E3DC();
        swift_allocError();
        *v8 = 1;
        swift_willThrow();
      }
    }
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_26CC69BA4(uint64_t a1, uint64_t a2)
{
  v2[14] = a1;
  v2[15] = a2;
  type metadata accessor for SportsFavoriteService.UserConsent.State(0);
  v2[16] = swift_task_alloc();
  v2[17] = _s5CacheC5ValueOMa(0);
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26CC69C70, 0, 0);
}

uint64_t sub_26CC69C70()
{
  v1 = swift_allocObject();
  v0[20] = v1;
  *(v1 + 16) = 0;
  v0[2] = sub_26CC6E67C;
  v0[4] = 0;
  v0[5] = 0;
  v0[3] = v1;
  v0[6] = sub_26CC691BC;
  v0[7] = 0;
  v0[8] = 0;
  v0[9] = 0;
  v0[10] = &unk_26CD423D8;
  v0[11] = 0;
  v0[12] = 0;
  v0[13] = 0;
  v2 = swift_task_alloc();
  v0[21] = v2;
  *v2 = v0;
  v2[1] = sub_26CC69D78;
  v3 = v0[19];
  v4 = v0[14];
  v5 = v0[15];

  return sub_26CC7C314(v3, (v0 + 2), v4, v5);
}

uint64_t sub_26CC69D78()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_26CC6A084;
  }

  else
  {

    v2 = sub_26CC69E94;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26CC69E94()
{
  sub_26CC6DAC8(v0[19], v0[18]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v2 = v0[18];
  v3 = v0[19];
  if (EnumCaseMultiPayload == 1)
  {
    sub_26CC3BD30();
    swift_allocError();
    *v4 = 1;
    swift_willThrow();
    sub_26CC6DB90(v3, _s5CacheC5ValueOMa);
    sub_26CC6DB90(v2, _s5CacheC5ValueOMa);
  }

  else
  {
    v5 = v0[16];
    sub_26CC6DB90(v0[19], _s5CacheC5ValueOMa);
    sub_26CC6DB2C(v2, v5);
    v6 = *v5;
    sub_26CC6DB90(v5, type metadata accessor for SportsFavoriteService.UserConsent.State);
    if (v6 != 2)
    {
      if (qword_2804BB9F0 != -1)
      {
        swift_once();
      }

      if ((byte_2804D1490 & 1) == 0)
      {
        sub_26CC6DBF0();
        swift_allocError();
        swift_willThrow();
      }
    }
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_26CC6A084()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26CC6A124(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_26CC6A144, 0, 0);
}

uint64_t sub_26CC6A144()
{
  v1 = v0[3];
  sub_26CC98BEC(v0[2]);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v0[4] = v2;
  v0[5] = v4;
  v0[6] = v6;
  v8 = swift_task_alloc();
  v0[7] = v8;
  v8[2] = v3;
  v8[3] = v5;
  v8[4] = v7;
  v8[5] = v1;
  v9 = swift_task_alloc();
  v0[8] = v9;
  *v9 = v0;
  v9[1] = sub_26CC6A254;

  return MEMORY[0x282200600]();
}

uint64_t sub_26CC6A254()
{

  return MEMORY[0x2822009F8](sub_26CC58DD4, 0, 0);
}

uint64_t sub_26CC6A3C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[3] = a3;
  v6[4] = a4;
  v6[2] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA00, &qword_26CD3D510);
  v6[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26CC6A46C, 0, 0);
}

uint64_t sub_26CC6A46C()
{
  v1 = v0[3];
  if (*(v1 + 16))
  {
    v3 = v0[6];
    v2 = v0[7];
    v5 = v0[4];
    v4 = v0[5];
    v6 = sub_26CD3A86C();
    (*(*(v6 - 8) + 56))(v2, 1, 1, v6);
    v7 = swift_allocObject();
    v7[2] = 0;
    v7[3] = 0;
    v7[4] = v1;
    v7[5] = v5;
    v7[6] = v4;
    v7[7] = v3;

    sub_26CC6AB14(v2, &unk_26CD42460, v7);
    sub_26CC1B544(v2, &qword_2804BCA00, &qword_26CD3D510);
  }

  v8 = v0[4];
  if (*(v8 + 16))
  {
    v10 = v0[6];
    v9 = v0[7];
    v11 = v0[5];
    v12 = v0[3];
    v13 = sub_26CD3A86C();
    (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
    v14 = swift_allocObject();
    v14[2] = 0;
    v14[3] = 0;
    v14[4] = v12;
    v14[5] = v8;
    v14[6] = v11;
    v14[7] = v10;

    sub_26CC6AB14(v9, &unk_26CD42470, v14);
    sub_26CC1B544(v9, &qword_2804BCA00, &qword_26CD3D510);
  }

  v15 = v0[5];
  if (*(v15 + 16))
  {
    v17 = v0[6];
    v16 = v0[7];
    v19 = v0[3];
    v18 = v0[4];
    v20 = sub_26CD3A86C();
    (*(*(v20 - 8) + 56))(v16, 1, 1, v20);
    v21 = swift_allocObject();
    v21[2] = 0;
    v21[3] = 0;
    v21[4] = v19;
    v21[5] = v18;
    v21[6] = v15;
    v21[7] = v17;

    sub_26CC6AB14(v16, &unk_26CD42480, v21);
    sub_26CC1B544(v16, &qword_2804BCA00, &qword_26CD3D510);
  }

  v22 = v0[1];

  return v22();
}

uint64_t sub_26CC6A760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = swift_task_alloc();
  *(v4 + 48) = v6;
  *v6 = v4;
  v6[1] = sub_26CC6A808;

  return sub_26CCABFC4(a4);
}

uint64_t sub_26CC6A808()
{
  v2 = *v1;
  *(v2 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26CC6A93C, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_26CC6A93C()
{
  if (qword_280BB9C18 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 56);
  v2 = qword_280BBCBD0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_26CD3C1E0;
  sub_26CD3AC6C();

  swift_getErrorValue();
  v4 = sub_26CD3B08C();
  MEMORY[0x26D6AD060](v4);

  *(v3 + 32) = 0xD00000000000001ELL;
  *(v3 + 40) = 0x800000026CD4E8D0;
  v5 = sub_26CD3A98C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_26CD3C1E0;
  *(v6 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
  *(v6 + 64) = sub_26CC2E6E8();
  *(v6 + 32) = v3;
  sub_26CD3A3DC(v5, &dword_26CC14000, v2, "%@", 2, 2, v6);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_26CC6AB14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA00, &qword_26CD3D510);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v20 - v9;
  sub_26CC1B4DC(a1, v20 - v9, &qword_2804BCA00, &qword_26CD3D510);
  v11 = sub_26CD3A86C();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_26CC1B544(v10, &qword_2804BCA00, &qword_26CD3D510);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v13 = sub_26CD3A80C();
      v15 = v14;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_26CD3A85C();
    (*(v12 + 8))(v10, v11);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v13 = 0;
  v15 = 0;
LABEL_6:
  v16 = *v4;
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;
  v18 = (v15 | v13);
  if (v15 | v13)
  {
    v21[0] = 0;
    v21[1] = 0;
    v18 = v21;
    v21[2] = v13;
    v21[3] = v15;
  }

  v20[1] = 1;
  v20[2] = v18;
  v20[3] = v16;
  swift_task_create();
}

uint64_t sub_26CC6AD2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 48) = v7;
  *v7 = v5;
  v7[1] = sub_26CC6ADD4;

  return sub_26CCAC7BC(a5);
}

uint64_t sub_26CC6ADD4()
{
  v2 = *v1;
  *(v2 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26CC6AF08, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_26CC6AF08()
{
  if (qword_280BB9C18 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 56);
  v2 = qword_280BBCBD0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_26CD3C1E0;
  sub_26CD3AC6C();

  swift_getErrorValue();
  v4 = sub_26CD3B08C();
  MEMORY[0x26D6AD060](v4);

  *(v3 + 32) = 0xD000000000000020;
  *(v3 + 40) = 0x800000026CD4E8A0;
  v5 = sub_26CD3A98C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_26CD3C1E0;
  *(v6 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
  *(v6 + 64) = sub_26CC2E6E8();
  *(v6 + 32) = v3;
  sub_26CD3A3DC(v5, &dword_26CC14000, v2, "%@", 2, 2, v6);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_26CC6B0E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = swift_task_alloc();
  *(v6 + 48) = v8;
  *v8 = v6;
  v8[1] = sub_26CC6B188;

  return sub_26CCACE34(a6);
}

uint64_t sub_26CC6B188()
{
  v2 = *v1;
  *(v2 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26CC6B2BC, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_26CC6B2BC()
{
  if (qword_280BB9C18 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 56);
  v2 = qword_280BBCBD0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_26CD3C1E0;
  sub_26CD3AC6C();

  swift_getErrorValue();
  v4 = sub_26CD3B08C();
  MEMORY[0x26D6AD060](v4);

  *(v3 + 32) = 0xD00000000000001FLL;
  *(v3 + 40) = 0x800000026CD4E880;
  v5 = sub_26CD3A98C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_26CD3C1E0;
  *(v6 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
  *(v6 + 64) = sub_26CC2E6E8();
  *(v6 + 32) = v3;
  sub_26CD3A3DC(v5, &dword_26CC14000, v2, "%@", 2, 2, v6);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_26CC6B494(uint64_t a1, uint64_t a2)
{
  v2[14] = a1;
  v2[15] = a2;
  type metadata accessor for SportsFavoriteService.UserConsent.State(0);
  v2[16] = swift_task_alloc();
  v2[17] = _s5CacheC5ValueOMa(0);
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26CC6B560, 0, 0);
}

uint64_t sub_26CC6B560()
{
  v1 = swift_allocObject();
  v0[20] = v1;
  *(v1 + 16) = 0;
  v0[2] = sub_26CC6E67C;
  v0[4] = 0;
  v0[5] = 0;
  v0[3] = v1;
  v0[6] = sub_26CC691BC;
  v0[7] = 0;
  v0[8] = 0;
  v0[9] = 0;
  v0[10] = &unk_26CD423D8;
  v0[11] = 0;
  v0[12] = 0;
  v0[13] = 0;
  v2 = swift_task_alloc();
  v0[21] = v2;
  *v2 = v0;
  v2[1] = sub_26CC6B668;
  v3 = v0[19];
  v4 = v0[14];
  v5 = v0[15];

  return sub_26CC7C314(v3, (v0 + 2), v4, v5);
}

uint64_t sub_26CC6B668()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_26CC6E660;
  }

  else
  {

    v2 = sub_26CC6E668;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26CC6B79C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v8 = type metadata accessor for SportsFavoriteService.Favorites.State(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA90, &qword_26CD3C200);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v24 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC8C0, &qword_26CD447F0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = (&v24 - v15);
  sub_26CC1B4DC(a2, &v24 - v15, &qword_2804BC8C0, &qword_26CD447F0);
  v17 = _s10NetworkingO12FetchedValueOMa(0);
  if ((*(*(v17 - 8) + 48))(v16, 1, v17) == 1)
  {
    sub_26CC1B544(v16, &qword_2804BC8C0, &qword_26CD447F0);
LABEL_10:
    if (qword_280BBB460 != -1)
    {
      swift_once();
    }

    sub_26CC96AB0(1);
    v23 = *(_s5CacheC5ModelVMa(0) + 20);
    a4(a3);
    return sub_26CC6DA54(v10, a1 + v23);
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_26CC6DB90(v16, _s10NetworkingO12FetchedValueOMa);
    goto LABEL_10;
  }

  v18 = *v16;
  v19 = (a1 + *(_s5CacheC5ModelVMa(0) + 20));
  if ((sub_26CCDE714(*v19, v18) & 1) == 0)
  {
    if (qword_280BBB460 != -1)
    {
      swift_once();
    }

    sub_26CC96AB0(1);
  }

  v20 = *(v8 + 20);
  sub_26CC1B4DC(v19 + v20, v13, &qword_2804BCA90, &qword_26CD3C200);
  sub_26CC6DB90(v19, type metadata accessor for SportsFavoriteService.Favorites.State);
  v21 = sub_26CD3A1EC();
  (*(*(v21 - 8) + 56))(v19 + v20, 1, 1, v21);
  *v19 = v18;
  result = sub_26CC17CCC(v13, v19 + v20);
  *(v19 + *(v8 + 24)) = 0;
  return result;
}

uint64_t sub_26CC6BAD8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_26CC6BAF8, 0, 0);
}

uint64_t sub_26CC6BAF8()
{
  v1 = v0[3];
  sub_26CC98BEC(v0[2]);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v0[4] = v2;
  v0[5] = v4;
  v0[6] = v6;
  v8 = swift_task_alloc();
  v0[7] = v8;
  v8[2] = v3;
  v8[3] = v5;
  v8[4] = v7;
  v8[5] = v1;
  v9 = swift_task_alloc();
  v0[8] = v9;
  *v9 = v0;
  v9[1] = sub_26CC6BC08;

  return MEMORY[0x282200600]();
}

uint64_t sub_26CC6BC08()
{

  return MEMORY[0x2822009F8](sub_26CC6E664, 0, 0);
}

uint64_t sub_26CC6BD7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[3] = a3;
  v6[4] = a4;
  v6[2] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA00, &qword_26CD3D510);
  v6[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26CC6BE20, 0, 0);
}

uint64_t sub_26CC6BE20()
{
  v1 = v0[3];
  if (*(v1 + 16))
  {
    v3 = v0[6];
    v2 = v0[7];
    v5 = v0[4];
    v4 = v0[5];
    v6 = sub_26CD3A86C();
    (*(*(v6 - 8) + 56))(v2, 1, 1, v6);
    v7 = swift_allocObject();
    v7[2] = 0;
    v7[3] = 0;
    v7[4] = v1;
    v7[5] = v5;
    v7[6] = v4;
    v7[7] = v3;

    sub_26CC6AB14(v2, &unk_26CD42400, v7);
    sub_26CC1B544(v2, &qword_2804BCA00, &qword_26CD3D510);
  }

  v8 = v0[4];
  if (*(v8 + 16))
  {
    v10 = v0[6];
    v9 = v0[7];
    v11 = v0[5];
    v12 = v0[3];
    v13 = sub_26CD3A86C();
    (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
    v14 = swift_allocObject();
    v14[2] = 0;
    v14[3] = 0;
    v14[4] = v12;
    v14[5] = v8;
    v14[6] = v11;
    v14[7] = v10;

    sub_26CC6AB14(v9, &unk_26CD42410, v14);
    sub_26CC1B544(v9, &qword_2804BCA00, &qword_26CD3D510);
  }

  v15 = v0[5];
  if (*(v15 + 16))
  {
    v17 = v0[6];
    v16 = v0[7];
    v19 = v0[3];
    v18 = v0[4];
    v20 = sub_26CD3A86C();
    (*(*(v20 - 8) + 56))(v16, 1, 1, v20);
    v21 = swift_allocObject();
    v21[2] = 0;
    v21[3] = 0;
    v21[4] = v19;
    v21[5] = v18;
    v21[6] = v15;
    v21[7] = v17;

    sub_26CC6AB14(v16, &unk_26CD42420, v21);
    sub_26CC1B544(v16, &qword_2804BCA00, &qword_26CD3D510);
  }

  v22 = v0[1];

  return v22();
}

uint64_t sub_26CC6C114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = swift_task_alloc();
  *(v4 + 48) = v6;
  *v6 = v4;
  v6[1] = sub_26CC6C1BC;

  return sub_26CCAD390(a4);
}

uint64_t sub_26CC6C1BC()
{
  v2 = *v1;
  *(v2 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26CC6C2F0, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_26CC6C2F0()
{
  if (qword_280BB9C18 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 56);
  v2 = qword_280BBCBD0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_26CD3C1E0;
  sub_26CD3AC6C();

  swift_getErrorValue();
  v4 = sub_26CD3B08C();
  MEMORY[0x26D6AD060](v4);

  *(v3 + 32) = 0xD000000000000021;
  *(v3 + 40) = 0x800000026CD4E850;
  v5 = sub_26CD3A98C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_26CD3C1E0;
  *(v6 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
  *(v6 + 64) = sub_26CC2E6E8();
  *(v6 + 32) = v3;
  sub_26CD3A3DC(v5, &dword_26CC14000, v2, "%@", 2, 2, v6);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_26CC6C4C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 48) = v7;
  *v7 = v5;
  v7[1] = sub_26CC6C570;

  return sub_26CCAD8EC(a5);
}

uint64_t sub_26CC6C570()
{
  v2 = *v1;
  *(v2 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26CC6C6A4, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_26CC6C6A4()
{
  if (qword_280BB9C18 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 56);
  v2 = qword_280BBCBD0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_26CD3C1E0;
  sub_26CD3AC6C();

  swift_getErrorValue();
  v4 = sub_26CD3B08C();
  MEMORY[0x26D6AD060](v4);

  *(v3 + 32) = 0xD000000000000023;
  *(v3 + 40) = 0x800000026CD4E820;
  v5 = sub_26CD3A98C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_26CD3C1E0;
  *(v6 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
  *(v6 + 64) = sub_26CC2E6E8();
  *(v6 + 32) = v3;
  sub_26CD3A3DC(v5, &dword_26CC14000, v2, "%@", 2, 2, v6);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_26CC6C87C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = swift_task_alloc();
  *(v6 + 48) = v8;
  *v8 = v6;
  v8[1] = sub_26CC6C924;

  return sub_26CCADE48(a6);
}

uint64_t sub_26CC6C924()
{
  v2 = *v1;
  *(v2 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26CC6CA58, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_26CC6CA58()
{
  if (qword_280BB9C18 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 56);
  v2 = qword_280BBCBD0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_26CD3C1E0;
  sub_26CD3AC6C();

  swift_getErrorValue();
  v4 = sub_26CD3B08C();
  MEMORY[0x26D6AD060](v4);

  *(v3 + 32) = 0xD000000000000022;
  *(v3 + 40) = 0x800000026CD4E7F0;
  v5 = sub_26CD3A98C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_26CD3C1E0;
  *(v6 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
  *(v6 + 64) = sub_26CC2E6E8();
  *(v6 + 32) = v3;
  sub_26CD3A3DC(v5, &dword_26CC14000, v2, "%@", 2, 2, v6);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_26CC6CC30(uint64_t a1, uint64_t a2)
{
  v2[14] = a1;
  v2[15] = a2;
  type metadata accessor for SportsFavoriteService.UserConsent.State(0);
  v2[16] = swift_task_alloc();
  v2[17] = _s5CacheC5ValueOMa(0);
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26CC6CCFC, 0, 0);
}

uint64_t sub_26CC6CCFC()
{
  v1 = swift_allocObject();
  v0[20] = v1;
  *(v1 + 16) = 0;
  v0[2] = sub_26CC6DAB8;
  v0[4] = 0;
  v0[5] = 0;
  v0[3] = v1;
  v0[6] = sub_26CC691BC;
  v0[7] = 0;
  v0[8] = 0;
  v0[9] = 0;
  v0[10] = &unk_26CD423D8;
  v0[11] = 0;
  v0[12] = 0;
  v0[13] = 0;
  v2 = swift_task_alloc();
  v0[21] = v2;
  *v2 = v0;
  v2[1] = sub_26CC6B668;
  v3 = v0[19];
  v4 = v0[14];
  v5 = v0[15];

  return sub_26CC7C314(v3, (v0 + 2), v4, v5);
}

uint64_t sub_26CC6CE3C()
{
  sub_26CC98DD8(v0[2]);
  v2 = v1;

  if (!v2[2])
  {

    v2 = &unk_287DFAEC0;
  }

  v0[3] = v2;
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_26CC6CF1C;

  return sub_26CCAE3A4(v2);
}

uint64_t sub_26CC6CF1C()
{
  v2 = *v1;
  *(v2 + 40) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26CC6D058, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_26CC6D058()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26CC6D0BC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26CC37110;

  return sub_26CCA5DEC(a1);
}

uint64_t sub_26CC6D154(uint64_t a1, uint64_t a2)
{
  v2[14] = a1;
  v2[15] = a2;
  type metadata accessor for SportsFavoriteService.UserConsent.State(0);
  v2[16] = swift_task_alloc();
  v2[17] = _s5CacheC5ValueOMa(0);
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26CC6D220, 0, 0);
}

uint64_t sub_26CC6D220()
{
  v1 = swift_allocObject();
  v0[20] = v1;
  *(v1 + 16) = 0;
  v0[2] = sub_26CC6E67C;
  v0[4] = 0;
  v0[5] = 0;
  v0[3] = v1;
  v0[6] = sub_26CC691BC;
  v0[7] = 0;
  v0[8] = 0;
  v0[9] = 0;
  v0[10] = &unk_26CD423D8;
  v0[11] = 0;
  v0[12] = 0;
  v0[13] = 0;
  v2 = swift_task_alloc();
  v0[21] = v2;
  *v2 = v0;
  v2[1] = sub_26CC6D328;
  v3 = v0[19];
  v4 = v0[14];
  v5 = v0[15];

  return sub_26CC7C314(v3, (v0 + 2), v4, v5);
}

uint64_t sub_26CC6D328()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_26CC6E660;
  }

  else
  {

    v2 = sub_26CC6D444;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26CC6D444()
{
  sub_26CC6DAC8(v0[19], v0[18]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v2 = v0[18];
  v3 = v0[19];
  if (EnumCaseMultiPayload == 1)
  {
    sub_26CC3BD30();
    swift_allocError();
    *v4 = 1;
    swift_willThrow();
    sub_26CC6DB90(v3, _s5CacheC5ValueOMa);
    sub_26CC6DB90(v2, _s5CacheC5ValueOMa);
  }

  else
  {
    v5 = v0[16];
    sub_26CC6DB90(v0[19], _s5CacheC5ValueOMa);
    sub_26CC6DB2C(v2, v5);
    v6 = *v5;
    sub_26CC6DB90(v5, type metadata accessor for SportsFavoriteService.UserConsent.State);
    if (v6 == 2)
    {
      sub_26CC9C624(v0[15]);
    }
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_26CC6D5E4(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_26CC6D6DC;

  return v6(a1);
}

uint64_t sub_26CC6D6DC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_26CC6D7D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA90, &qword_26CD3C200);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v17 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC8C0, &qword_26CD447F0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = (&v17 - v8);
  sub_26CC1B4DC(a2, &v17 - v8, &qword_2804BC8C0, &qword_26CD447F0);
  v10 = _s10NetworkingO12FetchedValueOMa(0);
  if ((*(*(v10 - 8) + 48))(v9, 1, v10) == 1)
  {
    return sub_26CC1B544(v9, &qword_2804BC8C0, &qword_26CD447F0);
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return sub_26CC6DB90(v9, _s10NetworkingO12FetchedValueOMa);
  }

  v12 = *v9;
  v13 = (a1 + *(_s5CacheC5ModelVMa(0) + 20));
  if ((sub_26CCDE714(*v13, v12) & 1) == 0)
  {
    if (qword_280BBB460 != -1)
    {
      swift_once();
    }

    sub_26CC96AB0(1);
  }

  v14 = type metadata accessor for SportsFavoriteService.Favorites.State(0);
  v15 = *(v14 + 20);
  sub_26CC1B4DC(v13 + v15, v6, &qword_2804BCA90, &qword_26CD3C200);
  sub_26CC6DB90(v13, type metadata accessor for SportsFavoriteService.Favorites.State);
  v16 = sub_26CD3A1EC();
  (*(*(v16 - 8) + 56))(v13 + v15, 1, 1, v16);
  *v13 = v12;
  result = sub_26CC17CCC(v6, v13 + v15);
  *(v13 + *(v14 + 24)) = 0;
  return result;
}

uint64_t sub_26CC6DA54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsFavoriteService.Favorites.State(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_26CC6DAB8(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = 0;
  *(a1 + 8) = v2;
}

uint64_t sub_26CC6DAC8(uint64_t a1, uint64_t a2)
{
  v4 = _s5CacheC5ValueOMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26CC6DB2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsFavoriteService.UserConsent.State(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26CC6DB90(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_26CC6DBF0()
{
  result = qword_2804BC8C8;
  if (!qword_2804BC8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC8C8);
  }

  return result;
}

uint64_t sub_26CC6DC44(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_26CC37110;

  return sub_26CC6BD7C(a1, a2, v6, v7, v9, v8);
}

uint64_t sub_26CC6DD0C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_26CC37110;

  return sub_26CC6C114(a1, v4, v5, v6);
}

uint64_t sub_26CC6DDE0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_26CC37110;

  return sub_26CC6C4C8(a1, v4, v5, v6, v7);
}

uint64_t sub_26CC6DEB4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_26CC37110;

  return sub_26CC6C87C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_26CC6DF88(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26CC246B8;

  return sub_26CC6D5E4(a1, v4);
}

uint64_t sub_26CC6E040(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_26CC246B8;

  return sub_26CC6A3C8(a1, a2, v6, v7, v9, v8);
}

uint64_t sub_26CC6E108(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_26CC37110;

  return sub_26CC6A760(a1, v4, v5, v6);
}

uint64_t sub_26CC6E1DC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_26CC37110;

  return sub_26CC6AD2C(a1, v4, v5, v6, v7);
}

uint64_t objectdestroy_8Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_26CC6E308(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_26CC37110;

  return sub_26CC6B0E0(a1, v4, v5, v6, v7, v8);
}

unint64_t sub_26CC6E3DC()
{
  result = qword_2804BC8D0;
  if (!qword_2804BC8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC8D0);
  }

  return result;
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_26CC6E44C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26CC6E494(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t _s6ActionV7ContextVwet(unsigned __int8 *a1, unsigned int a2)
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
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t _s6ActionV7ContextVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_26CC6E5B4()
{
  result = qword_2804BC8D8;
  if (!qword_2804BC8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC8D8);
  }

  return result;
}

unint64_t sub_26CC6E60C()
{
  result = qword_2804BC8E0;
  if (!qword_2804BC8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BC8E0);
  }

  return result;
}

uint64_t sub_26CC6E68C()
{
  result = sub_26CD3A59C();
  qword_2804BC8E8 = result;
  return result;
}

uint64_t sub_26CC6E6E8()
{
  result = sub_26CD3A59C();
  qword_2804BC8F0 = result;
  return result;
}

uint64_t sub_26CC6E744()
{
  result = sub_26CD3A59C();
  qword_2804BC8F8 = result;
  return result;
}

uint64_t sub_26CC6E7A0@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA30, &qword_26CD3DA70);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v18[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC900, &unk_26CD47F10);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v12 = &v18[-v11];
  v13 = OBJC_IVAR____TtC13TVAppServices12CacheStorage____lazy_storage___cacheUrl;
  swift_beginAccess();
  sub_26CC1B4DC(v1 + v13, v12, &qword_2804BC900, &unk_26CD47F10);
  if ((*(v4 + 48))(v12, 1, v3) != 1)
  {
    return sub_26CC6FFD0(v12, a1);
  }

  sub_26CC1B544(v12, &qword_2804BC900, &unk_26CD47F10);
  sub_26CC589A8(v6);
  v14 = sub_26CD3A07C();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v6, 1, v14) == 1)
  {
    sub_26CC1B544(v6, &qword_2804BCA30, &qword_26CD3DA70);
    v16 = 1;
  }

  else
  {
    sub_26CD39FDC();
    (*(v15 + 8))(v6, v14);
    v16 = 0;
  }

  (*(v15 + 56))(a1, v16, 1, v14);
  sub_26CC1B4DC(a1, v10, &qword_2804BCA30, &qword_26CD3DA70);
  (*(v4 + 56))(v10, 0, 1, v3);
  swift_beginAccess();
  sub_26CC1B88C(v10, v1 + v13);
  return swift_endAccess();
}

uint64_t sub_26CC6EA9C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA30, &qword_26CD3DA70);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v18[-v1];
  v3 = sub_26CD3A07C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v18[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_26CC6E7A0(v2);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_26CC1B544(v2, &qword_2804BCA30, &qword_26CD3DA70);
    if (qword_2804BBA08 != -1)
    {
      swift_once();
    }

    v7 = qword_2804D1498;
    v8 = sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_26CD3C1E0;
    *(v9 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v9 + 64) = sub_26CC2E6E8();
    *(v9 + 32) = &unk_287DF9790;
    sub_26CD3A3DC(v8, &dword_26CC14000, v7, "%@", 2, 2, v9);
  }

  else
  {
    (*(v4 + 32))(v6, v2, v3);
    v10 = [objc_opt_self() defaultManager];
    sub_26CD39FFC();
    v11 = sub_26CD3A59C();

    v12 = [v10 fileExistsAtPath_];

    if (v12)
    {
      v16 = sub_26CD3A08C();
      (*(v4 + 8))(v6, v3);
      return v16;
    }

    if (qword_2804BBA08 != -1)
    {
      swift_once();
    }

    v13 = qword_2804D1498;
    v14 = sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_26CD3C1E0;
    *(v15 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v15 + 64) = sub_26CC2E6E8();
    *(v15 + 32) = &unk_287DF97C0;
    sub_26CD3A3DC(v14, &dword_26CC14000, v13, "%@", 2, 2, v15);

    (*(v4 + 8))(v6, v3);
  }

  return 0;
}

void sub_26CC6EE84(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA30, &qword_26CD3DA70);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v23 - v3;
  v5 = sub_26CD3A07C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26CC6E7A0(v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_26CC1B544(v4, &qword_2804BCA30, &qword_26CD3DA70);
    if (qword_2804BBA08 != -1)
    {
      swift_once();
    }

    v9 = qword_2804D1498;
    v10 = sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_26CD3C1E0;
    *(v11 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v11 + 64) = sub_26CC2E6E8();
    *(v11 + 32) = &unk_287DF9A00;
    sub_26CD3A3DC(v10, &dword_26CC14000, v9, "%@", 2, 2, v11);
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    v12 = objc_opt_self();
    v13 = [v12 defaultManager];
    sub_26CD39FFC();
    v14 = sub_26CD3A59C();

    v15 = sub_26CD3A09C();
    [v13 createFileAtPath:v14 contents:v15 attributes:0];

    v16 = [v12 defaultManager];
    sub_26CD39FFC();
    v17 = sub_26CD3A59C();

    LOBYTE(v15) = [v16 fileExistsAtPath_];

    if (v15)
    {
      if (qword_2804BBA08 != -1)
      {
        swift_once();
      }

      v18 = 0xEB00000000737473;
      v19 = 0x69786520656C6946;
    }

    else
    {
      if (qword_2804BBA08 != -1)
      {
        swift_once();
      }

      v18 = 0x800000026CD4E9B0;
      v19 = 0xD000000000000013;
    }

    v20 = qword_2804D1498;
    v21 = sub_26CD3A99C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_26CD3C1E0;
    *(v22 + 56) = MEMORY[0x277D837D0];
    *(v22 + 64) = sub_26CC19E10();
    *(v22 + 32) = v19;
    *(v22 + 40) = v18;
    sub_26CD3A3DC(v21, &dword_26CC14000, v20, "%@", 2, 2, v22);

    (*(v6 + 8))(v8, v5);
  }
}

void sub_26CC6F2D0()
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA30, &qword_26CD3DA70);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v24 - v3;
  v5 = sub_26CD3A07C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26CC6E7A0(v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_26CC1B544(v4, &qword_2804BCA30, &qword_26CD3DA70);
    if (qword_2804BBA08 != -1)
    {
      swift_once();
    }

    v9 = qword_2804D1498;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
    v10 = swift_allocObject();
    v24 = xmmword_26CD3C1E0;
    *(v10 + 16) = xmmword_26CD3C1E0;
    v25 = 0;
    v26 = 0xE000000000000000;
    sub_26CD3AC6C();
    MEMORY[0x26D6AD060](0xD00000000000003BLL, 0x800000026CD4E9D0);
    MEMORY[0x26D6AD060](*(v0 + 16), *(v0 + 24));
    v11 = v26;
    *(v10 + 32) = v25;
    *(v10 + 40) = v11;
    v12 = sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v13 = swift_allocObject();
    *(v13 + 16) = v24;
    *(v13 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v13 + 64) = sub_26CC2E6E8();
    *(v13 + 32) = v10;
    sub_26CD3A3DC(v12, &dword_26CC14000, v9, "%@", 2, 2, v13);
  }

  else
  {
    *&v24 = v1;
    (*(v6 + 32))(v8, v4, v5);
    sub_26CD39FFC();
    v14 = objc_opt_self();
    v15 = [v14 defaultManager];
    v16 = sub_26CD3A59C();
    v17 = [v15 fileExistsAtPath_];

    if (v17)
    {
      v18 = [v14 defaultManager];
      v19 = sub_26CD3A59C();

      v25 = 0;
      v20 = [v18 removeItemAtPath:v19 error:&v25];

      if (v20)
      {
        v21 = *(v6 + 8);
        v22 = v25;
        v21(v8, v5);
      }

      else
      {
        v23 = v25;
        sub_26CD39F8C();

        swift_willThrow();
        (*(v6 + 8))(v8, v5);
      }
    }

    else
    {
      (*(v6 + 8))(v8, v5);
    }
  }
}

uint64_t sub_26CC6F714@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v49 = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA30, &qword_26CD3DA70);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v40 - v5;
  v7 = sub_26CD3A07C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26CC6E7A0(v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_26CC1B544(v6, &qword_2804BCA30, &qword_26CD3DA70);
LABEL_8:
    if (qword_280BB9C20 != -1)
    {
      swift_once();
    }

    v21 = qword_280BBCBE0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
    v22 = swift_allocObject();
    v44 = xmmword_26CD3C1E0;
    *(v22 + 16) = xmmword_26CD3C1E0;
    v47 = 0;
    v48 = 0xE000000000000000;
    sub_26CD3AC6C();
    MEMORY[0x26D6AD060](0xD00000000000003BLL, 0x800000026CD4E9D0);
    MEMORY[0x26D6AD060](*(v2 + 16), *(v2 + 24));
    v23 = v48;
    *(v22 + 32) = v47;
    *(v22 + 40) = v23;
    v24 = sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v25 = swift_allocObject();
    *(v25 + 16) = v44;
    *(v25 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v25 + 64) = sub_26CC2E6E8();
    *(v25 + 32) = v22;
    sub_26CD3A3DC(v24, &dword_26CC14000, v21, "%@", 2, 2, v25);

    goto LABEL_11;
  }

  (*(v8 + 32))(v10, v6, v7);
  sub_26CD39FAC();
  v11 = objc_allocWithZone(MEMORY[0x277CBEBC0]);
  v12 = sub_26CD3A59C();

  v13 = [v11 initWithString_];

  if (!v13)
  {
    (*(v8 + 8))(v10, v7);
    goto LABEL_8;
  }

  v14 = *MEMORY[0x277CBE7B0];
  v46 = 0;
  v47 = 0;
  v15 = [v13 getResourceValue:&v47 forKey:v14 error:&v46];
  v16 = v47;
  if (v15)
  {
    v17 = *(v8 + 8);
    v18 = v46;
    swift_unknownObjectRetain();
    v17(v10, v7);

    if (!v16)
    {
LABEL_11:
      v26 = sub_26CD3A1EC();
      return (*(*(v26 - 8) + 56))(a1, 1, 1, v26);
    }

    v47 = v16;
    v19 = sub_26CD3A1EC();
    swift_unknownObjectRetain();
    v20 = swift_dynamicCast();
    (*(*(v19 - 8) + 56))(a1, v20 ^ 1u, 1, v19);
  }

  else
  {
    *&v44 = a1;
    v28 = v46;
    swift_unknownObjectRetain();
    v29 = sub_26CD39F8C();

    swift_willThrow();
    v46 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC10, &unk_26CD3D4C0);
    sub_26CC69164();
    swift_dynamicCast();
    v30 = v45;
    if (qword_280BB9C20 != -1)
    {
      swift_once();
    }

    v43 = qword_280BBCBE0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
    v31 = swift_allocObject();
    v42 = xmmword_26CD3C1E0;
    *(v31 + 16) = xmmword_26CD3C1E0;
    v47 = 0;
    v48 = 0xE000000000000000;
    sub_26CD3AC6C();

    v47 = 0xD00000000000001ALL;
    v48 = 0x800000026CD4EA10;
    v32 = [v30 localizedDescription];
    v33 = sub_26CD3A5CC();
    v41 = v30;
    v35 = v34;

    MEMORY[0x26D6AD060](v33, v35);

    MEMORY[0x26D6AD060](0xD000000000000013, 0x800000026CD4EA30);
    MEMORY[0x26D6AD060](*(v2 + 16), *(v2 + 24));
    v36 = v48;
    *(v31 + 32) = v47;
    *(v31 + 40) = v36;
    v37 = sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v38 = swift_allocObject();
    *(v38 + 16) = v42;
    *(v38 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v38 + 64) = sub_26CC2E6E8();
    *(v38 + 32) = v31;
    sub_26CD3A3DC(v37, &dword_26CC14000, v43, "%@", 2, 2, v38);

    (*(v8 + 8))(v10, v7);
    v39 = sub_26CD3A1EC();
    (*(*(v39 - 8) + 56))(v44, 1, 1, v39);
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_26CC6FE0C()
{

  sub_26CC1B544(v0 + OBJC_IVAR____TtC13TVAppServices12CacheStorage____lazy_storage___cacheUrl, &qword_2804BC900, &unk_26CD47F10);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CacheStorage(uint64_t a1)
{
  result = qword_280BBB1A0;
  if (!qword_280BBB1A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26CC6FEDC(uint64_t a1)
{
  sub_26CC190D0(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_26CC6FF78@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26CC6EA9C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26CC6FFD0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA30, &qword_26CD3DA70);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_26CC70040(unsigned __int8 *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v166 = a2;
  v165 = a3;
  v162 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA30, &qword_26CD3DA70);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v150 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v164 = &v150 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v150 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v150 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v150 - v17;
  LODWORD(v163) = *a1;
  v19 = sub_26CD3A07C();
  v20 = *(v19 - 8);
  v21 = *(v20 + 56);
  v184 = v18;
  v21(v18, 1, 1, v19);
  v22 = Data.asDictionary()();
  if (!v22)
  {
    if (qword_280BBB6B8 != -1)
    {
      swift_once();
    }

    v35 = qword_280BBCC98;
    v36 = sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_26CD3C1E0;
    *(v37 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v37 + 64) = sub_26CC2E6E8();
    v38 = &unk_287DFB5E0;
    goto LABEL_22;
  }

  v23 = v22;
  if (!*(v22 + 16) || (v24 = sub_26CC181C4(1635017060, 0xE400000000000000), (v25 & 1) == 0))
  {

    goto LABEL_16;
  }

  sub_26CC168C0(*(v23 + 56) + 32 * v24, v177);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC30, &qword_26CD46430);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_16:
    if (qword_280BBB6B8 != -1)
    {
      swift_once();
    }

    v35 = qword_280BBCC98;
    v36 = sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_26CD3C1E0;
    *(v37 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v37 + 64) = sub_26CC2E6E8();
    v38 = &unk_287DFB5B0;
    goto LABEL_22;
  }

  v26 = v171;
  if (!*(v171 + 16) || (v27 = sub_26CC181C4(0x746E65746E6F63, 0xE700000000000000), (v28 & 1) == 0) || (sub_26CC168C0(*(v26 + 56) + 32 * v27, v177), (swift_dynamicCast() & 1) == 0))
  {

    if (qword_280BBB6B8 != -1)
    {
      swift_once();
    }

    v35 = qword_280BBCC98;
    v36 = sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_26CD3C1E0;
    *(v37 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v37 + 64) = sub_26CC2E6E8();
    v38 = &unk_287DFB580;
    goto LABEL_22;
  }

  v29 = v171;
  if (!*(v171 + 16) || (v30 = sub_26CC181C4(0x656C746974, 0xE500000000000000), (v31 & 1) == 0) || (sub_26CC168C0(*(v29 + 56) + 32 * v30, v177), (swift_dynamicCast() & 1) == 0))
  {

    if (qword_280BBB6B8 != -1)
    {
      swift_once();
    }

    v41 = qword_280BBCC98;
    v42 = sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_26CD3C1E0;
    *(v43 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v43 + 64) = sub_26CC2E6E8();
    *(v43 + 32) = &unk_287DFB550;
    sub_26CD3A3DC(v42, &dword_26CC14000, v41, "%@", 2, 2, v43);

    sub_26CC2E794();
    swift_allocError();
    v40 = 6;
    goto LABEL_23;
  }

  v161 = v171;
  if (*(v29 + 16) && (v32 = sub_26CC181C4(7107189, 0xE300000000000000), (v33 & 1) != 0))
  {
    sub_26CC168C0(*(v29 + 56) + 32 * v32, v177);

    if (swift_dynamicCast())
    {
      sub_26CD3A03C();

      v34 = v184;
      sub_26CC3C0E0(v184);
      sub_26CC6FFD0(v16, v34);
    }
  }

  else
  {
  }

  sub_26CC4EDBC(v184, v13);
  v44 = (*(v20 + 48))(v13, 1, v19);
  sub_26CC3C0E0(v13);
  if (v44 == 1)
  {
    if (qword_280BBB6B8 != -1)
    {
      swift_once();
    }

    v45 = qword_280BBCC98;
    v46 = sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v47 = swift_allocObject();
    *(v47 + 16) = xmmword_26CD3C1E0;
    *(v47 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v47 + 64) = sub_26CC2E6E8();
    *(v47 + 32) = &unk_287DFB1C0;
    sub_26CD3A3DC(v46, &dword_26CC14000, v45, "%@", 2, 2, v47);
  }

  if (!*(v26 + 16) || (v48 = sub_26CC181C4(0x746E65746E6F63, 0xE700000000000000), (v49 & 1) == 0) || (sub_26CC168C0(*(v26 + 56) + 32 * v48, v177), (swift_dynamicCast() & 1) == 0))
  {

    if (qword_280BBB6B8 != -1)
    {
      swift_once();
    }

    v35 = qword_280BBCC98;
    v36 = sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_26CD3C1E0;
    *(v37 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v37 + 64) = sub_26CC2E6E8();
    v38 = &unk_287DFB520;
    goto LABEL_22;
  }

  v50 = v171;
  if (!*(v171 + 16) || (v51 = v161, v52 = sub_26CC181C4(0x736567616D69, 0xE600000000000000), (v53 & 1) == 0) || (v54 = v8, sub_26CC168C0(*(v50 + 56) + 32 * v52, v177), (swift_dynamicCast() & 1) == 0))
  {

    if (qword_280BBB6B8 != -1)
    {
      swift_once();
    }

    v35 = qword_280BBCC98;
    v36 = sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_26CD3C1E0;
    *(v37 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v37 + 64) = sub_26CC2E6E8();
    v38 = &unk_287DFB4F0;
    goto LABEL_22;
  }

  v55 = v50;
  v56 = v171;
  if (!*(v171 + 16) || (v57 = sub_26CC181C4(0x7241726574736F70, 0xE900000000000074), (v58 & 1) == 0))
  {

LABEL_55:

    if (qword_280BBB6B8 != -1)
    {
      swift_once();
    }

    v35 = qword_280BBCC98;
    v36 = sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_26CD3C1E0;
    *(v37 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v37 + 64) = sub_26CC2E6E8();
    v38 = &unk_287DFB4C0;
    goto LABEL_22;
  }

  sub_26CC168C0(*(v56 + 56) + 32 * v57, v177);

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_55;
  }

  v59 = v167;
  sub_26CC72708(v171, v183);
  if (v59)
  {
    sub_26CC3C0E0(v184);

    return;
  }

  v179 = v183[0];
  v180 = v183[1];
  v181 = v183[2];
  v182 = v183[3];
  if (!*(v55 + 16) || (v60 = sub_26CC181C4(0x676E69746172, 0xE600000000000000), (v61 & 1) == 0))
  {

    sub_26CC41EB0(&v179);

LABEL_64:
    if (qword_280BBB6B8 != -1)
    {
      swift_once();
    }

    v35 = qword_280BBCC98;
    v36 = sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_26CD3C1E0;
    *(v37 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v37 + 64) = sub_26CC2E6E8();
    v38 = &unk_287DFB490;
    goto LABEL_22;
  }

  sub_26CC168C0(*(v55 + 56) + 32 * v60, v177);
  if ((swift_dynamicCast() & 1) == 0)
  {

    sub_26CC41EB0(&v179);
    goto LABEL_64;
  }

  sub_26CC72B14(v171, v177);
  v167 = 0;

  v173 = v177[2];
  v174 = v177[3];
  v175 = v177[4];
  v176 = v178;
  v171 = v177[0];
  v172 = v177[1];
  if (!*(v55 + 16) || (v62 = sub_26CC181C4(0x7365726E6567, 0xE600000000000000), (v63 & 1) == 0))
  {

    sub_26CC41EB0(&v179);
    sub_26CC42E74(&v171);

LABEL_79:
    if (qword_280BBB6B8 != -1)
    {
      swift_once();
    }

    v35 = qword_280BBCC98;
    v36 = sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_26CD3C1E0;
    *(v37 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v37 + 64) = sub_26CC2E6E8();
    v38 = &unk_287DFB460;
    goto LABEL_22;
  }

  sub_26CC168C0(*(v55 + 56) + 32 * v62, v170);
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BD460, &unk_26CD45D60);
  if ((swift_dynamicCast() & 1) == 0)
  {

    sub_26CC41EB0(&v179);
    sub_26CC42E74(&v171);
    goto LABEL_79;
  }

  v64 = v167;
  v159 = sub_26CC72F9C(v168);
  v167 = v64;

  if (!*(v55 + 16) || (v65 = sub_26CC181C4(0x44657361656C6572, 0xEB00000000657461), (v66 & 1) == 0))
  {

    sub_26CC41EB0(&v179);
    sub_26CC42E74(&v171);

LABEL_84:

    if (qword_280BBB6B8 != -1)
    {
      swift_once();
    }

    v35 = qword_280BBCC98;
    v36 = sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_26CD3C1E0;
    *(v37 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v37 + 64) = sub_26CC2E6E8();
    v38 = &unk_287DFB430;
    goto LABEL_22;
  }

  sub_26CC168C0(*(v55 + 56) + 32 * v65, v170);
  if ((swift_dynamicCast() & 1) == 0)
  {

    sub_26CC41EB0(&v179);
    sub_26CC42E74(&v171);
    goto LABEL_84;
  }

  v67 = v168;
  if (*(v55 + 16) && (v68 = sub_26CC181C4(0x6E6F697461727564, 0xE800000000000000), (v69 & 1) != 0) && (sub_26CC168C0(*(v55 + 56) + 32 * v68, v170), swift_dynamicCast()))
  {
    v70 = v168;
  }

  else
  {
    if (qword_280BBB6B8 != -1)
    {
      swift_once();
    }

    v71 = qword_280BBCC98;
    v72 = sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v73 = swift_allocObject();
    *(v73 + 16) = xmmword_26CD3C1E0;
    *(v73 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v73 + 64) = sub_26CC2E6E8();
    *(v73 + 32) = &unk_287DFB1F0;
    sub_26CD3A3DC(v72, &dword_26CC14000, v71, "%@", 2, 2, v73);

    v70 = 0;
  }

  if (*(v55 + 16) && (v74 = sub_26CC181C4(0x43746C7564417369, 0xEE00746E65746E6FLL), (v75 & 1) != 0))
  {
    sub_26CC168C0(*(v55 + 56) + 32 * v74, v170);
    LOBYTE(v158) = swift_dynamicCast() & v168;
    v158 = v158;
  }

  else
  {
    v158 = 0;
  }

  if (*(v55 + 16) && (v76 = sub_26CC181C4(0x4F656C7070417369, 0xEF6C616E69676972), (v77 & 1) != 0))
  {
    sub_26CC168C0(*(v55 + 56) + 32 * v76, v170);

    LOBYTE(v157) = swift_dynamicCast() & v168;
    v157 = v157;
  }

  else
  {

    v157 = 0;
  }

  if (v163 != 1)
  {
    if (v163)
    {

      sub_26CC41EB0(&v179);
      sub_26CC42E74(&v171);

      sub_26CC2E794();
      swift_allocError();
      v40 = 7;
      goto LABEL_23;
    }

    v78 = v164;
    sub_26CC6FFD0(v184, v164);
    v79 = type metadata accessor for MovieItem(0);
    v80 = v162;
    *(v162 + 24) = v79;
    v80[4] = sub_26CC73648(&unk_2804BC910, type metadata accessor for MovieItem, &protocol conformance descriptor for MovieItem);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v80);
    v82 = v165;
    *boxed_opaque_existential_1 = v166;
    boxed_opaque_existential_1[1] = v82;
    v83 = *(&v161 + 1);
    boxed_opaque_existential_1[2] = v51;
    boxed_opaque_existential_1[3] = v83;
    v85 = v181;
    v84 = v182;
    v86 = v180;
    *(boxed_opaque_existential_1 + 2) = v179;
    *(boxed_opaque_existential_1 + 3) = v86;
    *(boxed_opaque_existential_1 + 4) = v85;
    *(boxed_opaque_existential_1 + 5) = v84;
    v87 = v172;
    *(boxed_opaque_existential_1 + 6) = v171;
    *(boxed_opaque_existential_1 + 7) = v87;
    v88 = v173;
    v89 = v175;
    v90 = v176;
    *(boxed_opaque_existential_1 + 9) = v174;
    *(boxed_opaque_existential_1 + 10) = v89;
    *(boxed_opaque_existential_1 + 8) = v88;
    v91 = v159;
    boxed_opaque_existential_1[22] = v90;
    boxed_opaque_existential_1[23] = v91;
    sub_26CC6FFD0(v78, boxed_opaque_existential_1 + v79[9]);
    *(boxed_opaque_existential_1 + v79[10]) = v67;
    *(boxed_opaque_existential_1 + v79[11]) = v70;
    *(boxed_opaque_existential_1 + v79[12]) = v158;
    v92 = v79 + 13;
    goto LABEL_102;
  }

  if (!*(v26 + 16) || (v93 = sub_26CC181C4(0x7461576F54776F68, 0xEA00000000006863), (v94 & 1) == 0))
  {

    sub_26CC41EB0(&v179);
    sub_26CC42E74(&v171);

LABEL_129:

    if (qword_280BBB6B8 != -1)
    {
      swift_once();
    }

    v35 = qword_280BBCC98;
    v36 = sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_26CD3C1E0;
    *(v37 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v37 + 64) = sub_26CC2E6E8();
    v38 = &unk_287DFB400;
    goto LABEL_22;
  }

  sub_26CC168C0(*(v26 + 56) + 32 * v93, v170);
  if ((swift_dynamicCast() & 1) == 0)
  {

    sub_26CC41EB0(&v179);
    sub_26CC42E74(&v171);
    goto LABEL_129;
  }

  v152 = v168;
  v150 = *(v168 + 16);
  if (v150)
  {
    v153 = 0;
    v151 = v152 + 32;
    v164 = MEMORY[0x277D84F90];
    while (v153 < *(v152 + 16))
    {
      sub_26CC168C0(v151 + 32 * v153, v170);
      if (!swift_dynamicCast())
      {

        sub_26CC41EB0(&v179);
        sub_26CC42E74(&v171);

        if (qword_280BBB6B8 != -1)
        {
          swift_once();
        }

        v35 = qword_280BBCC98;
        v36 = sub_26CD3A98C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
        v37 = swift_allocObject();
        *(v37 + 16) = xmmword_26CD3C1E0;
        *(v37 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
        *(v37 + 64) = sub_26CC2E6E8();
        v38 = &unk_287DFB2B0;
        goto LABEL_22;
      }

      v95 = v168;
      if (!*(v168 + 16) || (v96 = sub_26CC181C4(0x736E6F73616573, 0xE700000000000000), (v97 & 1) == 0))
      {

        sub_26CC41EB0(&v179);
        sub_26CC42E74(&v171);

LABEL_178:

        if (qword_280BBB6B8 != -1)
        {
LABEL_213:
          swift_once();
        }

        v35 = qword_280BBCC98;
        v36 = sub_26CD3A98C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
        v37 = swift_allocObject();
        *(v37 + 16) = xmmword_26CD3C1E0;
        *(v37 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
        *(v37 + 64) = sub_26CC2E6E8();
        v38 = &unk_287DFB280;
        goto LABEL_22;
      }

      sub_26CC168C0(*(v95 + 56) + 32 * v96, v170);

      if ((swift_dynamicCast() & 1) == 0)
      {

        sub_26CC41EB0(&v179);
        sub_26CC42E74(&v171);
        goto LABEL_178;
      }

      v98 = v168;
      if (*(v168 + 16))
      {
        v99 = *(v168 + 16);
        v100 = 0;
        v163 = v168 + 32;
        while (1)
        {
          if (v100 >= *(v98 + 16))
          {
            __break(1u);
LABEL_206:

            sub_26CC41EB0(&v179);
            sub_26CC42E74(&v171);

LABEL_207:

            if (qword_280BBB6B8 != -1)
            {
              swift_once();
            }

            v35 = qword_280BBCC98;
            v36 = sub_26CD3A98C();
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
            v37 = swift_allocObject();
            *(v37 + 16) = xmmword_26CD3C1E0;
            *(v37 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
            *(v37 + 64) = sub_26CC2E6E8();
            v38 = &unk_287DFB2E0;
            goto LABEL_22;
          }

          sub_26CC168C0(v163, v170);
          if (!swift_dynamicCast())
          {

            sub_26CC41EB0(&v179);
            sub_26CC42E74(&v171);

            if (qword_280BBB6B8 != -1)
            {
              swift_once();
            }

            v35 = qword_280BBCC98;
            v36 = sub_26CD3A98C();
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
            v37 = swift_allocObject();
            *(v37 + 16) = xmmword_26CD3C1E0;
            *(v37 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
            *(v37 + 64) = sub_26CC2E6E8();
            v38 = &unk_287DFB250;
            goto LABEL_22;
          }

          v101 = v168;
          if (!*(v168 + 16) || (v102 = sub_26CC181C4(25705, 0xE200000000000000), (v103 & 1) == 0))
          {

            sub_26CC41EB0(&v179);
            sub_26CC42E74(&v171);

            goto LABEL_170;
          }

          sub_26CC168C0(*(v101 + 56) + 32 * v102, v170);

          if ((swift_dynamicCast() & 1) == 0)
          {
            break;
          }

          v154 = v169;
          v155 = v168;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v164 = sub_26CCBE3BC(0, *(v164 + 2) + 1, 1, v164);
          }

          v105 = *(v164 + 2);
          v104 = *(v164 + 3);
          v156 = v105 + 1;
          if (v105 >= v104 >> 1)
          {
            v164 = sub_26CCBE3BC((v104 > 1), v156, 1, v164);
          }

          ++v100;
          v106 = v164;
          v107 = v155;
          *(v164 + 2) = v156;
          v108 = &v106[16 * v105];
          v109 = v154;
          *(v108 + 4) = v107;
          *(v108 + 5) = v109;
          v163 += 32;
          if (v99 == v100)
          {
            goto LABEL_125;
          }
        }

        sub_26CC41EB0(&v179);
        sub_26CC42E74(&v171);
LABEL_170:

        if (qword_280BBB6B8 == -1)
        {
LABEL_171:
          v35 = qword_280BBCC98;
          v36 = sub_26CD3A98C();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
          v37 = swift_allocObject();
          *(v37 + 16) = xmmword_26CD3C1E0;
          *(v37 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
          *(v37 + 64) = sub_26CC2E6E8();
          v38 = &unk_287DFB220;
          goto LABEL_22;
        }

LABEL_211:
        swift_once();
        goto LABEL_171;
      }

LABEL_125:
      v110 = v153 + 1;

      v153 = v110;
      if (v110 == v150)
      {
        goto LABEL_134;
      }
    }

    __break(1u);
    goto LABEL_211;
  }

  v164 = MEMORY[0x277D84F90];
LABEL_134:

  if (!*(v26 + 16) || (v111 = sub_26CC181C4(0x736E6F73616573, 0xE700000000000000), (v112 & 1) == 0))
  {

    sub_26CC41EB0(&v179);
    sub_26CC42E74(&v171);

LABEL_162:

    if (qword_280BBB6B8 != -1)
    {
      swift_once();
    }

    v35 = qword_280BBCC98;
    v36 = sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_26CD3C1E0;
    *(v37 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v37 + 64) = sub_26CC2E6E8();
    v38 = &unk_287DFB3D0;
    goto LABEL_22;
  }

  sub_26CC168C0(*(v26 + 56) + 32 * v111, v170);

  if ((swift_dynamicCast() & 1) == 0)
  {

    sub_26CC41EB0(&v179);
    sub_26CC42E74(&v171);
    goto LABEL_162;
  }

  v163 = v168;
  v152 = *(v164 + 2);
  if (!v152)
  {
    v160 = MEMORY[0x277D84F90];
LABEL_181:

    sub_26CC6FFD0(v184, v54);
    v138 = type metadata accessor for TVShowItem(0);
    v139 = v162;
    *(v162 + 24) = v138;
    v139[4] = sub_26CC73648(&qword_2804BC908, type metadata accessor for TVShowItem, &protocol conformance descriptor for TVShowItem);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v139);
    v140 = v165;
    *boxed_opaque_existential_1 = v166;
    boxed_opaque_existential_1[1] = v140;
    v141 = *(&v161 + 1);
    boxed_opaque_existential_1[2] = v51;
    boxed_opaque_existential_1[3] = v141;
    v143 = v181;
    v142 = v182;
    v144 = v180;
    *(boxed_opaque_existential_1 + 2) = v179;
    *(boxed_opaque_existential_1 + 3) = v144;
    *(boxed_opaque_existential_1 + 4) = v143;
    *(boxed_opaque_existential_1 + 5) = v142;
    boxed_opaque_existential_1[12] = v159;
    sub_26CC6FFD0(v54, boxed_opaque_existential_1 + v138[8]);
    v145 = boxed_opaque_existential_1 + v138[9];
    v146 = v172;
    *v145 = v171;
    *(v145 + 1) = v146;
    v147 = v173;
    v148 = v174;
    v149 = v175;
    *(v145 + 10) = v176;
    *(v145 + 3) = v148;
    *(v145 + 4) = v149;
    *(v145 + 2) = v147;
    *(boxed_opaque_existential_1 + v138[10]) = v67;
    *(boxed_opaque_existential_1 + v138[11]) = v70;
    *(boxed_opaque_existential_1 + v138[12]) = v158;
    *(boxed_opaque_existential_1 + v138[13]) = v160;
    v92 = v138 + 14;
LABEL_102:
    *(boxed_opaque_existential_1 + *v92) = v157;

    return;
  }

  v113 = 0;
  v114 = (v164 + 40);
  v160 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v113 >= *(v164 + 2))
    {
      __break(1u);
      goto LABEL_213;
    }

    v115 = *(v114 - 1);
    v116 = *v114;
    v117 = *(v163 + 16);

    if (!v117)
    {

      sub_26CC41EB0(&v179);
      sub_26CC42E74(&v171);

LABEL_188:

LABEL_190:

      if (qword_280BBB6B8 != -1)
      {
        swift_once();
      }

      v35 = qword_280BBCC98;
      v36 = sub_26CD3A98C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
      v37 = swift_allocObject();
      *(v37 + 16) = xmmword_26CD3C1E0;
      *(v37 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
      *(v37 + 64) = sub_26CC2E6E8();
      v38 = &unk_287DFB3A0;
      goto LABEL_22;
    }

    v118 = sub_26CC181C4(v115, v116);
    v120 = v119;

    if ((v120 & 1) == 0)
    {

      sub_26CC41EB0(&v179);
      sub_26CC42E74(&v171);
      goto LABEL_188;
    }

    sub_26CC168C0(*(v163 + 56) + 32 * v118, v170);
    if ((swift_dynamicCast() & 1) == 0)
    {

      sub_26CC41EB0(&v179);
      sub_26CC42E74(&v171);

      goto LABEL_190;
    }

    v121 = v168;
    if (!*(v168 + 16) || (v122 = sub_26CC181C4(0x6C746954776F6873, 0xE900000000000065), (v123 & 1) == 0))
    {

      sub_26CC41EB0(&v179);
      sub_26CC42E74(&v171);

      goto LABEL_194;
    }

    sub_26CC168C0(*(v121 + 56) + 32 * v122, v170);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    v156 = v169;
    if (!*(v121 + 16) || (v154 = v168, v124 = sub_26CC181C4(0x656C746974, 0xE500000000000000), (v125 & 1) == 0))
    {

      sub_26CC41EB0(&v179);
      sub_26CC42E74(&v171);

LABEL_198:

      if (qword_280BBB6B8 != -1)
      {
        swift_once();
      }

      v35 = qword_280BBCC98;
      v36 = sub_26CD3A98C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
      v37 = swift_allocObject();
      *(v37 + 16) = xmmword_26CD3C1E0;
      *(v37 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
      *(v37 + 64) = sub_26CC2E6E8();
      v38 = &unk_287DFB340;
      goto LABEL_22;
    }

    sub_26CC168C0(*(v121 + 56) + 32 * v124, v170);
    if ((swift_dynamicCast() & 1) == 0)
    {

      sub_26CC41EB0(&v179);
      sub_26CC42E74(&v171);

      goto LABEL_198;
    }

    v155 = v169;
    if (!*(v121 + 16) || (v153 = v168, v126 = sub_26CC181C4(0x754E6E6F73616573, 0xEC0000007265626DLL), (v127 & 1) == 0))
    {

      sub_26CC41EB0(&v179);
      sub_26CC42E74(&v171);

LABEL_202:

      if (qword_280BBB6B8 != -1)
      {
        swift_once();
      }

      v35 = qword_280BBCC98;
      v36 = sub_26CD3A98C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
      v37 = swift_allocObject();
      *(v37 + 16) = xmmword_26CD3C1E0;
      *(v37 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
      *(v37 + 64) = sub_26CC2E6E8();
      v38 = &unk_287DFB310;
      goto LABEL_22;
    }

    sub_26CC168C0(*(v121 + 56) + 32 * v126, v170);
    if ((swift_dynamicCast() & 1) == 0)
    {

      sub_26CC41EB0(&v179);
      sub_26CC42E74(&v171);

      goto LABEL_202;
    }

    if (!*(v121 + 16) || (v128 = v168, v129 = sub_26CC181C4(25705, 0xE200000000000000), (v130 & 1) == 0))
    {

      sub_26CC41EB0(&v179);
      sub_26CC42E74(&v171);

      goto LABEL_207;
    }

    sub_26CC168C0(*(v121 + 56) + 32 * v129, v170);

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_206;
    }

    v150 = v169;
    v151 = v168;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v160 = sub_26CCBE5D4(0, *(v160 + 2) + 1, 1, v160);
    }

    v132 = *(v160 + 2);
    v131 = *(v160 + 3);
    if (v132 >= v131 >> 1)
    {
      v160 = sub_26CCBE5D4((v131 > 1), v132 + 1, 1, v160);
    }

    v133 = v160;
    *(v160 + 2) = v132 + 1;
    v134 = &v133[56 * v132];
    v135 = v150;
    *(v134 + 4) = v151;
    *(v134 + 5) = v135;
    v136 = v154;
    *(v134 + 6) = v128;
    *(v134 + 7) = v136;
    v137 = v153;
    *(v134 + 8) = v156;
    *(v134 + 9) = v137;
    *(v134 + 10) = v155;
    v114 += 2;
    if (v152 == ++v113)
    {
      goto LABEL_181;
    }
  }

  sub_26CC41EB0(&v179);
  sub_26CC42E74(&v171);

LABEL_194:

  if (qword_280BBB6B8 != -1)
  {
    swift_once();
  }

  v35 = qword_280BBCC98;
  v36 = sub_26CD3A98C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_26CD3C1E0;
  *(v37 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
  *(v37 + 64) = sub_26CC2E6E8();
  v38 = &unk_287DFB370;
LABEL_22:
  *(v37 + 32) = v38;
  sub_26CD3A3DC(v36, &dword_26CC14000, v35, "%@", 2, 2, v37, v150);

  sub_26CC2E794();
  swift_allocError();
  v40 = 3;
LABEL_23:
  *v39 = v40;
  swift_willThrow();
  sub_26CC3C0E0(v184);
}

uint64_t sub_26CC72708@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_26CC181C4(0x746867696568, 0xE600000000000000), (v5 & 1) != 0) && (sub_26CC168C0(*(a1 + 56) + 32 * v4, v26), (swift_dynamicCast() & 1) != 0))
  {
    if (*(a1 + 16) && (v6 = sub_26CC181C4(860910441, 0xE400000000000000), (v7 & 1) != 0) && (sub_26CC168C0(*(a1 + 56) + 32 * v6, v26), (swift_dynamicCast() & 1) != 0))
    {
      if (*(a1 + 16) && (v8 = sub_26CC181C4(0x726F6C6F43656F6ALL, 0xE800000000000000), (v9 & 1) != 0) && (sub_26CC168C0(*(a1 + 56) + 32 * v8, v26), (swift_dynamicCast() & 1) != 0))
      {
        if (*(a1 + 16) && (v10 = sub_26CC181C4(0xD000000000000014, 0x800000026CD4DE30), (v11 & 1) != 0) && (sub_26CC168C0(*(a1 + 56) + 32 * v10, v26), (swift_dynamicCast() & 1) != 0))
        {
          if (*(a1 + 16) && (v12 = sub_26CC181C4(7107189, 0xE300000000000000), (v13 & 1) != 0) && (sub_26CC168C0(*(a1 + 56) + 32 * v12, v26), (swift_dynamicCast() & 1) != 0))
          {
            if (*(a1 + 16))
            {
              v27 = v24;
              v14 = sub_26CC181C4(0x6874646977, 0xE500000000000000);
              if (v15)
              {
                sub_26CC168C0(*(a1 + 56) + 32 * v14, v26);
                result = swift_dynamicCast();
                if (result)
                {
                  *a2 = v24;
                  *(a2 + 8) = v24;
                  *(a2 + 16) = v24;
                  *(a2 + 24) = v25;
                  *(a2 + 32) = v24;
                  v17 = v27;
                  *(a2 + 40) = v24;
                  *(a2 + 48) = v17;
                  *(a2 + 56) = v25;
                  return result;
                }
              }
            }

            v18 = qword_280BBB6B8;
            v19 = &unk_287DFAEF0;
          }

          else
          {

            v18 = qword_280BBB6B8;
            v19 = &unk_287DFAF20;
          }
        }

        else
        {

          v18 = qword_280BBB6B8;
          v19 = &unk_287DFAF50;
        }
      }

      else
      {
        v18 = qword_280BBB6B8;
        v19 = &unk_287DFAF80;
      }
    }

    else
    {
      v18 = qword_280BBB6B8;
      v19 = &unk_287DFAFB0;
    }
  }

  else
  {
    v18 = qword_280BBB6B8;
    v19 = &unk_287DFAFE0;
  }

  if (v18 != -1)
  {
    swift_once();
  }

  v20 = qword_280BBCC98;
  v21 = sub_26CD3A98C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_26CD3C1E0;
  *(v22 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
  *(v22 + 64) = sub_26CC2E6E8();
  *(v22 + 32) = v19;
  sub_26CD3A3DC(v21, &dword_26CC14000, v20, "%@", 2, 2, v22);

  sub_26CC2E794();
  swift_allocError();
  *v23 = 6;
  return swift_willThrow();
}

uint64_t sub_26CC72B14@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_26CC181C4(0x4E79616C70736964, 0xEB00000000656D61), (v5 & 1) != 0) && (sub_26CC168C0(*(a1 + 56) + 32 * v4, v30), (swift_dynamicCast() & 1) != 0))
  {
    if (*(a1 + 16) && (v6 = sub_26CC181C4(1701667182, 0xE400000000000000), (v7 & 1) != 0) && (sub_26CC168C0(*(a1 + 56) + 32 * v6, v30), (swift_dynamicCast() & 1) != 0))
    {
      if (*(a1 + 16) && ((v31 = v28, v8 = sub_26CC181C4(0x6E6F73616572, 0xE600000000000000), (v9 & 1) == 0) ? (v11 = 0, v12 = 0) : ((sub_26CC168C0(*(a1 + 56) + 32 * v8, v30), (v10 = swift_dynamicCast()) == 0) ? (v11 = 0) : (v11 = v28), !v10 ? (v12 = 0) : (v12 = v29)), *(a1 + 16) && (v20 = sub_26CC181C4(0x6D6574737973, 0xE600000000000000), (v21 & 1) != 0) && (sub_26CC168C0(*(a1 + 56) + 32 * v20, v30), (swift_dynamicCast() & 1) != 0)))
      {
        if (*(a1 + 16) && (v22 = sub_26CC181C4(0x79546D6574737973, 0xEA00000000006570), (v23 & 1) != 0) && (sub_26CC168C0(*(a1 + 56) + 32 * v22, v30), (swift_dynamicCast() & 1) != 0))
        {
          if (*(a1 + 16))
          {
            v24 = sub_26CC181C4(0x65756C6176, 0xE500000000000000);
            if (v25)
            {
              sub_26CC168C0(*(a1 + 56) + 32 * v24, v30);
              result = swift_dynamicCast();
              if (result)
              {
                if (v12)
                {
                  v26 = v11;
                }

                else
                {
                  v26 = 0;
                }

                v27 = 0xE000000000000000;
                if (v12)
                {
                  v27 = v12;
                }

                *a2 = v28;
                a2[1] = v29;
                a2[2] = v31;
                a2[3] = v29;
                a2[4] = v26;
                a2[5] = v27;
                a2[6] = v28;
                a2[7] = v29;
                a2[8] = v28;
                a2[9] = v29;
                a2[10] = v28;
                return result;
              }
            }
          }

          v13 = qword_280BBB6B8;
          v14 = &unk_287DFB010;
        }

        else
        {

          v13 = qword_280BBB6B8;
          v14 = &unk_287DFB040;
        }
      }

      else
      {

        v13 = qword_280BBB6B8;
        v14 = &unk_287DFB070;
      }
    }

    else
    {

      v13 = qword_280BBB6B8;
      v14 = &unk_287DFB0A0;
    }
  }

  else
  {
    v13 = qword_280BBB6B8;
    v14 = &unk_287DFB0D0;
  }

  if (v13 != -1)
  {
    swift_once();
  }

  v15 = qword_280BBCC98;
  v16 = sub_26CD3A98C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_26CD3C1E0;
  *(v17 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
  *(v17 + 64) = sub_26CC2E6E8();
  *(v17 + 32) = v14;
  sub_26CD3A3DC(v16, &dword_26CC14000, v15, "%@", 2, 2, v17);

  sub_26CC2E794();
  swift_allocError();
  *v18 = 6;
  return swift_willThrow();
}

char *sub_26CC72F9C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1 + 32;
    v34 = MEMORY[0x277D84F90];
    while (1)
    {
      sub_26CC168C0(v2, v33);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC30, &qword_26CD46430);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_8;
      }

      if (*(v31 + 16) && (v7 = sub_26CC181C4(25705, 0xE200000000000000), (v8 & 1) != 0) && (sub_26CC168C0(*(v31 + 56) + 32 * v7, v33), (swift_dynamicCast() & 1) != 0))
      {
        if (*(v31 + 16))
        {
          v9 = sub_26CC181C4(1701667182, 0xE400000000000000);
          if (v10)
          {
            sub_26CC168C0(*(v31 + 56) + 32 * v9, v33);
            if (swift_dynamicCast())
            {
              if (*(v31 + 16) && (v11 = sub_26CC181C4(1701869940, 0xE400000000000000), (v12 & 1) != 0) && (sub_26CC168C0(*(v31 + 56) + 32 * v11, v33), (swift_dynamicCast() & 1) != 0))
              {
                if (*(v31 + 16) && (v13 = sub_26CC181C4(7107189, 0xE300000000000000), (v14 & 1) != 0))
                {
                  sub_26CC168C0(*(v31 + 56) + 32 * v13, v33);

                  if (swift_dynamicCast())
                  {
                    v29 = v31;
                    v30 = v31;
                    v28 = v32;
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v34 = sub_26CCBE4C8(0, *(v34 + 2) + 1, 1, v34);
                    }

                    v15 = v32;
                    v17 = *(v34 + 2);
                    v16 = *(v34 + 3);
                    v18 = v17 + 1;
                    v19 = v32;
                    if (v17 >= v16 >> 1)
                    {
                      v26 = sub_26CCBE4C8((v16 > 1), v17 + 1, 1, v34);
                      v18 = v17 + 1;
                      v34 = v26;
                      v19 = v32;
                      v15 = v32;
                    }

                    v20 = v34;
                    *(v34 + 2) = v18;
                    v21 = &v20[64 * v17];
                    *(v21 + 4) = v31;
                    *(v21 + 5) = v32;
                    *(v21 + 6) = v31;
                    *(v21 + 7) = v15;
                    *(v21 + 8) = v31;
                    *(v21 + 9) = v19;
                    *(v21 + 10) = v31;
                    *(v21 + 11) = v32;
                    goto LABEL_8;
                  }
                }

                else
                {
                }

                if (qword_280BBB6B8 != -1)
                {
                  swift_once();
                }

                v22 = qword_280BBCC98;
                v23 = sub_26CD3A98C();
                __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
                v24 = swift_allocObject();
                *(v24 + 16) = xmmword_26CD3C1E0;
                *(v24 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
                *(v24 + 64) = sub_26CC2E6E8();
                v25 = &unk_287DFB100;
              }

              else
              {

                if (qword_280BBB6B8 != -1)
                {
                  swift_once();
                }

                v22 = qword_280BBCC98;
                v23 = sub_26CD3A98C();
                __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
                v24 = swift_allocObject();
                *(v24 + 16) = xmmword_26CD3C1E0;
                *(v24 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
                *(v24 + 64) = sub_26CC2E6E8();
                v25 = &unk_287DFB130;
              }

              *(v24 + 32) = v25;
              sub_26CD3A3DC(v23, &dword_26CC14000, v22, "%@", 2, 2, v24, v28, v29, v30);
              goto LABEL_7;
            }
          }
        }

        if (qword_280BBB6B8 != -1)
        {
          swift_once();
        }

        v3 = qword_280BBCC98;
        v4 = sub_26CD3A98C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
        v5 = swift_allocObject();
        *(v5 + 16) = xmmword_26CD3C1E0;
        *(v5 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
        *(v5 + 64) = sub_26CC2E6E8();
        v6 = &unk_287DFB160;
      }

      else
      {

        if (qword_280BBB6B8 != -1)
        {
          swift_once();
        }

        v3 = qword_280BBCC98;
        v4 = sub_26CD3A98C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
        v5 = swift_allocObject();
        *(v5 + 16) = xmmword_26CD3C1E0;
        *(v5 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
        *(v5 + 64) = sub_26CC2E6E8();
        v6 = &unk_287DFB190;
      }

      *(v5 + 32) = v6;
      sub_26CD3A3DC(v4, &dword_26CC14000, v3, "%@", 2, 2, v5, v28, v29, v30);
LABEL_7:

LABEL_8:
      v2 += 32;
      if (!--v1)
      {
        return v34;
      }
    }
  }

  return MEMORY[0x277D84F90];
}