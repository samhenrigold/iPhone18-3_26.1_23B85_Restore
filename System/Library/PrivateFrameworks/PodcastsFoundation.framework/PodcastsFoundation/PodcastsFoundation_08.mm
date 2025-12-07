uint64_t sub_1D8DBF9B4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 72) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1D8DBF330, 0, 0);
  }
}

uint64_t sub_1D8DBFB30()
{
  v1[2] = v0;
  v2 = sub_1D9176E3C();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8DBF084, 0, 0);
}

unint64_t sub_1D8DBFC08()
{
  result = qword_1ECAB2058;
  if (!qword_1ECAB2058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2058);
  }

  return result;
}

uint64_t sub_1D8DBFC5C()
{
  v1 = v0[5];
  v2 = v0[2];
  v3 = v1;
  v2(v1, 1);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D8DBFCEC()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_1D8DBFC5C;
  }

  else
  {
    v2 = sub_1D8E25278;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

void sub_1D8DBFE08(void **a1, void (*a2)(void, void *))
{
  v2 = *a1;
  if (*a1)
  {
    v4 = v2;
    if (qword_1ECAB0BF0 != -1)
    {
      swift_once();
    }

    v5 = sub_1D917744C();
    __swift_project_value_buffer(v5, qword_1ECAB0BF8);
    v6 = v2;
    v7 = sub_1D917741C();
    v8 = sub_1D9178CFC();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      v11 = sub_1D9176A5C();
      *(v9 + 4) = v11;
      *v10 = v11;
      _os_log_impl(&dword_1D8CEC000, v7, v8, "[Categories Sync] Sync failed with error: %@", v9, 0xCu);
      sub_1D8D08A50(v10, &unk_1ECAB6C70, &unk_1D9188C30);
      MEMORY[0x1DA72CB90](v10, -1, -1);
      MEMORY[0x1DA72CB90](v9, -1, -1);
    }

    if (a2)
    {
      v12 = v2;
      a2(0, v2);
    }
  }
}

void sub_1D8DBFFC8()
{
  v0 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v1 = [objc_opt_self() bundleWithIdentifier_];

  if (v1)
  {
    qword_1ECAAFC80 = v1;
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_1D8DC03F0()
{
  result = qword_1ECAAFCE8;
  if (!qword_1ECAAFCE8)
  {
    type metadata accessor for MTPodcastEpisodeLimit(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAAFCE8);
  }

  return result;
}

uint64_t sub_1D8DC04A8(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9179F0C();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1D9179C3C();
  return __swift_destroy_boxed_opaque_existential_1Tm(v2);
}

uint64_t sub_1D8DC053C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9179EDC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  __swift_project_boxed_opaque_existential_1(v11, v11[3]);
  v5 = sub_1D9179ADC();
  v7 = sub_1D8D3707C(v5, v6);
  v9 = v8;
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
  *a2 = v7;
  *(a2 + 8) = v9;
  return result;
}

uint64_t Sequence.uniqued<A>(by:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v15[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = sub_1D917800C();
  (*(v10 + 16))(v12, v5, a2);
  v16 = a2;
  v17 = a3;
  v18 = a4;
  v19 = a1;
  v20 = &v21;
  v13 = sub_1D917848C();

  return v13;
}

BOOL sub_1D8DC07EC(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

uint64_t sub_1D8DC0848@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D917820C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t _s18PodcastsFoundation23RecommendationsMetadataV10CategoriesV8MetadataVwet_0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s18PodcastsFoundation23RecommendationsMetadataV10CategoriesV8MetadataVwst_0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_1D8DC08BC()
{

  if (*(v0 + 32))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D8DC0904()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D8DC093C()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DC097C()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DC09C4()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DC0A18()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DC0A50(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB43E0, &qword_1D9188F48);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1D8DC0B8C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB43E0, &qword_1D9188F48);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

char *sub_1D8DC0CCC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D8E33770(a1, a2, a3, *v3, &qword_1ECAB46E8, &unk_1D9192140, &type metadata for ContentID);
  *v3 = result;
  return result;
}

uint64_t sub_1D8DC0D04()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D8DC0D3C()
{
  swift_unknownObjectRelease();

  sub_1D8CFEACC(*(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80));

  return swift_deallocObject();
}

uint64_t sub_1D8DC0D98()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DC0DD0()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DC0E10()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DC0E58()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DC0E98()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4858, &unk_1D918A6E0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for MediaRequest.Params(0);
  v6 = (v3 + v4 + *(*(v5 - 8) + 80)) & ~*(*(v5 - 8) + 80);
  (*(v2 + 8))(v0 + v3, v1);
  sub_1D8D85E5C(*(v0 + v6), *(v0 + v6 + 8), *(v0 + v6 + 16), *(v0 + v6 + 24), *(v0 + v6 + 32), *(v0 + v6 + 40));

  v7 = *(v5 + 112);
  v8 = sub_1D9176C2C();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v0 + v6 + v7, 1, v8))
  {
    (*(v9 + 8))(v0 + v6 + v7, v8);
  }

  return swift_deallocObject();
}

uint64_t sub_1D8DC1124()
{
  MEMORY[0x1DA72CC70](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D8DC115C()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DC119C()
{
  v1 = type metadata accessor for MediaRequest.Params(0);
  v2 = *(*(v1 - 8) + 64);
  v3 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  sub_1D8D85E5C(*(v0 + v3), *(v0 + v3 + 8), *(v0 + v3 + 16), *(v0 + v3 + 24), *(v0 + v3 + 32), *(v0 + v3 + 40));

  v4 = *(v1 + 112);
  v5 = sub_1D9176C2C();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3 + v4, 1, v5))
  {
    (*(v6 + 8))(v0 + v3 + v4, v5);
  }

  return swift_deallocObject();
}

uint64_t sub_1D8DC13E0()
{
  v1 = type metadata accessor for MediaRequest.Params(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80));
  sub_1D8D85E5C(*v2, *(v2 + 8), *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40));

  v3 = *(v1 + 112);
  v4 = sub_1D9176C2C();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v2 + v3, 1, v4))
  {
    (*(v5 + 8))(v2 + v3, v4);
  }

  return swift_deallocObject();
}

uint64_t sub_1D8DC15E4()
{
  v1 = type metadata accessor for MediaRequest.Params(0);
  v2 = (*(*(v1 - 8) + 80) + 40) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();

  sub_1D8D85E5C(*(v0 + v2), *(v0 + v2 + 8), *(v0 + v2 + 16), *(v0 + v2 + 24), *(v0 + v2 + 32), *(v0 + v2 + 40));

  v4 = *(v1 + 112);
  v5 = sub_1D9176C2C();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v2 + v4, 1, v5))
  {
    (*(v6 + 8))(v0 + v2 + v4, v5);
  }

  v7 = (v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8;

  return swift_deallocObject();
}

__n128 sub_1D8DC181C@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  v2 = a1[1].n128_u8[0];
  result = *a1;
  *a2 = *a1;
  a2[1].n128_u8[0] = v2;
  return result;
}

id sub_1D8DC1830@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 showListShowsAllShows];
  *a2 = result;
  return result;
}

CGColorRef sub_1D8DC18BC@<X0>(CGColorRef *a1@<X8>)
{
  result = sub_1D8E4480C();
  *a1 = result;
  return result;
}

void sub_1D8DC18E8(void **a1, void *a2)
{
  v2 = *a1;
  v3 = *(*a2 + OBJC_IVAR___NMTPodcastsArtworkToken____lazy_storage___backgroundColor);
  *(*a2 + OBJC_IVAR___NMTPodcastsArtworkToken____lazy_storage___backgroundColor) = *a1;
  v4 = v2;

  sub_1D8E44900(v3);
}

uint64_t sub_1D8DC1934(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4908, &qword_1D918AFB0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1D8DC19FC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4908, &qword_1D918AFB0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D8DC1AF0()
{
  v1 = type metadata accessor for TTMLRequest(0);
  v2 = (*(*(v1 - 8) + 80) + 80) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = sub_1D9176C2C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);

  sub_1D8D7567C(*(v0 + 48), *(v0 + 56));

  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  v7 = (v0 + v2 + *(v1 + 36));
  if (v7[3])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
  }

  (*(v5 + 8))(v0 + ((v2 + v3 + v6) & ~v6), v4);

  return swift_deallocObject();
}

uint64_t sub_1D8DC1CA8()
{
  v1 = type metadata accessor for ShazamSignatureRequest(0);
  v2 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = sub_1D9176C2C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);

  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  v7 = (v0 + v2 + *(v1 + 36));
  if (v7[3])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
  }

  (*(v5 + 8))(v0 + ((v2 + v3 + v6) & ~v6), v4);

  return swift_deallocObject();
}

uint64_t sub_1D8DC1E50()
{
  v1 = *(type metadata accessor for ArtworkContent(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = sub_1D9176C2C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);

  v7 = v0 + v2;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v5 + 8))(v7, v4);
  }

  else
  {
    sub_1D8D7567C(*v7, *(v7 + 8));
  }

  v8 = v0 + v3;

  v9 = *(v0 + v3 + 32);
  if (v9 != 255)
  {
    sub_1D8DADC60(*(v8 + 16), *(v8 + 24), v9);
  }

  v10 = *(v8 + 64);
  if (v10 != 255)
  {
    sub_1D8DADC78(*(v8 + 56), v10);
  }

  v11 = *(v8 + 80);
  if (v11 != 255)
  {
    sub_1D8DADC78(*(v8 + 72), v11);
  }

  v12 = *(v8 + 96);
  if (v12 != 255)
  {
    sub_1D8DADC78(*(v8 + 88), v12);
  }

  v13 = *(v8 + 112);
  if (v13 != 255)
  {
    sub_1D8DADC78(*(v8 + 104), v13);
  }

  v14 = *(v8 + 128);
  if (v14 != 255)
  {
    sub_1D8DADC78(*(v8 + 120), v14);
  }

  if (*(v8 + 248))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v8 + 224));
  }

  (*(v5 + 8))(v0 + ((v3 + v6 + 264) & ~v6), v4);

  return swift_deallocObject();
}

uint64_t sub_1D8DC2084()
{

  v1 = *(v0 + 48);
  if (v1 != 255)
  {
    sub_1D8DADC60(*(v0 + 32), *(v0 + 40), v1);
  }

  v2 = *(v0 + 80);
  if (v2 != 255)
  {
    sub_1D8DADC78(*(v0 + 72), v2);
  }

  v3 = *(v0 + 96);
  if (v3 != 255)
  {
    sub_1D8DADC78(*(v0 + 88), v3);
  }

  v4 = *(v0 + 112);
  if (v4 != 255)
  {
    sub_1D8DADC78(*(v0 + 104), v4);
  }

  v5 = *(v0 + 128);
  if (v5 != 255)
  {
    sub_1D8DADC78(*(v0 + 120), v5);
  }

  v6 = *(v0 + 144);
  if (v6 != 255)
  {
    sub_1D8DADC78(*(v0 + 136), v6);
  }

  if (*(v0 + 264))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 240));
  }

  v7 = *(v0 + 336);
  if (v7 != 255)
  {
    sub_1D8DADC60(*(v0 + 320), *(v0 + 328), v7);
  }

  v8 = *(v0 + 368);
  if (v8 != 255)
  {
    sub_1D8DADC78(*(v0 + 360), v8);
  }

  v9 = *(v0 + 384);
  if (v9 != 255)
  {
    sub_1D8DADC78(*(v0 + 376), v9);
  }

  v10 = *(v0 + 400);
  if (v10 != 255)
  {
    sub_1D8DADC78(*(v0 + 392), v10);
  }

  v11 = *(v0 + 416);
  if (v11 != 255)
  {
    sub_1D8DADC78(*(v0 + 408), v11);
  }

  v12 = *(v0 + 432);
  if (v12 != 255)
  {
    sub_1D8DADC78(*(v0 + 424), v12);
  }

  if (*(v0 + 552))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 528));
  }

  v13 = *(v0 + 616);
  if (v13 != 255)
  {
    sub_1D8DADC60(*(v0 + 600), *(v0 + 608), v13);
  }

  v14 = *(v0 + 648);
  if (v14 != 255)
  {
    sub_1D8DADC78(*(v0 + 640), v14);
  }

  v15 = *(v0 + 664);
  if (v15 != 255)
  {
    sub_1D8DADC78(*(v0 + 656), v15);
  }

  v16 = *(v0 + 680);
  if (v16 != 255)
  {
    sub_1D8DADC78(*(v0 + 672), v16);
  }

  v17 = *(v0 + 696);
  if (v17 != 255)
  {
    sub_1D8DADC78(*(v0 + 688), v17);
  }

  v18 = *(v0 + 712);
  if (v18 != 255)
  {
    sub_1D8DADC78(*(v0 + 704), v18);
  }

  if (*(v0 + 832))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 808));
  }

  return swift_deallocObject();
}

uint64_t sub_1D8DC22C8()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DC2308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = type metadata accessor for DiskResizeArtworkProcessingStep(0, v5, *(v4 + 24), a4);
  v7 = (*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80);
  v8 = *(*(v6 - 8) + 64);
  v9 = v4 + v7;

  v10 = *(v4 + v7 + 32);
  if (v10 != 255)
  {
    sub_1D8DADC60(*(v9 + 16), *(v9 + 24), v10);
  }

  v11 = *(v9 + 64);
  if (v11 != 255)
  {
    sub_1D8DADC78(*(v9 + 56), v11);
  }

  v12 = *(v9 + 80);
  if (v12 != 255)
  {
    sub_1D8DADC78(*(v9 + 72), v12);
  }

  v13 = *(v9 + 96);
  if (v13 != 255)
  {
    sub_1D8DADC78(*(v9 + 88), v13);
  }

  v14 = *(v9 + 112);
  if (v14 != 255)
  {
    sub_1D8DADC78(*(v9 + 104), v14);
  }

  v15 = *(v9 + 128);
  if (v15 != 255)
  {
    sub_1D8DADC78(*(v9 + 120), v15);
  }

  if (*(v9 + 248))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v9 + 224));
  }

  (*(*(v5 - 8) + 8))(v9 + *(v6 + 36), v5);
  __swift_destroy_boxed_opaque_existential_1Tm((v9 + *(v6 + 52)));
  __swift_destroy_boxed_opaque_existential_1Tm((v4 + ((v8 + v7 + 7) & 0xFFFFFFFFFFFFFFF8)));

  return swift_deallocObject();
}

uint64_t sub_1D8DC24D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = type metadata accessor for ImageNormalizationProcessingStep(0, v5, *(v4 + 24), a4);
  v7 = v4 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80));

  v8 = *(v7 + 32);
  if (v8 != 255)
  {
    sub_1D8DADC60(*(v7 + 16), *(v7 + 24), v8);
  }

  v9 = *(v7 + 64);
  if (v9 != 255)
  {
    sub_1D8DADC78(*(v7 + 56), v9);
  }

  v10 = *(v7 + 80);
  if (v10 != 255)
  {
    sub_1D8DADC78(*(v7 + 72), v10);
  }

  v11 = *(v7 + 96);
  if (v11 != 255)
  {
    sub_1D8DADC78(*(v7 + 88), v11);
  }

  v12 = *(v7 + 112);
  if (v12 != 255)
  {
    sub_1D8DADC78(*(v7 + 104), v12);
  }

  v13 = *(v7 + 128);
  if (v13 != 255)
  {
    sub_1D8DADC78(*(v7 + 120), v13);
  }

  if (*(v7 + 248))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v7 + 224));
  }

  (*(*(v5 - 8) + 8))(v7 + *(v6 + 36), v5);

  return swift_deallocObject();
}

uint64_t sub_1D8DC2664()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DC269C()
{
  _Block_release(*(v0 + 40));

  return swift_deallocObject();
}

uint64_t sub_1D8DC26E8()
{
  v1 = (type metadata accessor for CachingImageContentProvider(0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  v4 = v0 + v2;

  v5 = v0 + v2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4908, &qword_1D918AFB0) + 60);
  v6 = sub_1D9176C2C();
  (*(*(v6 - 8) + 8))(v5, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4938, &qword_1D918B9A0);

  __swift_destroy_boxed_opaque_existential_1Tm((v4 + v1[8]));

  v7 = v0 + v3;

  v8 = *(v0 + v3 + 32);
  if (v8 != 255)
  {
    sub_1D8DADC60(*(v7 + 16), *(v7 + 24), v8);
  }

  v9 = *(v7 + 64);
  if (v9 != 255)
  {
    sub_1D8DADC78(*(v7 + 56), v9);
  }

  v10 = *(v7 + 80);
  if (v10 != 255)
  {
    sub_1D8DADC78(*(v7 + 72), v10);
  }

  v11 = *(v7 + 96);
  if (v11 != 255)
  {
    sub_1D8DADC78(*(v7 + 88), v11);
  }

  v12 = *(v7 + 112);
  if (v12 != 255)
  {
    sub_1D8DADC78(*(v7 + 104), v12);
  }

  v13 = *(v7 + 128);
  if (v13 != 255)
  {
    sub_1D8DADC78(*(v7 + 120), v13);
  }

  if (*(v7 + 248))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v7 + 224));
  }

  return swift_deallocObject();
}

uint64_t sub_1D8DC2948()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DC2980(void *a1)
{
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB4F40, &qword_1D918B680);
  sub_1D9179E9C();

  return swift_getWitnessTable();
}

uint64_t sub_1D8DC2A10()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DC2A58()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DC2AA8()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DC2AE0()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DC2B20(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4BA8, &qword_1D918C570);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

char *sub_1D8DC2BAC(char *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v6 = *(a4 + 48);
    v7 = *(a4 + 32);
    v10[0] = *(a4 + 16);
    v10[1] = v7;
    v11 = v6;
    v9 = type metadata accessor for CacheDomain.DiskCaches(0, v10);
    return (*(*(v9 - 8) + 56))(&v5[*(a4 + 60)], a2, a2, v9);
  }

  return result;
}

uint64_t sub_1D8DC2C54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D9176C2C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 60));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1D8DC2D10(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D9176C2C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 60)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D8DC2DC8()
{
  v10 = *(v0 + 16);
  v11 = *(v0 + 24);
  v1 = *(v11 - 8);
  v2 = (*(v1 + 80) + 72) & ~*(v1 + 80);
  v3 = *(v10 - 8);
  v4 = (v2 + *(v1 + 64) + *(v3 + 80)) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = sub_1D9176C2C();
  v7 = *(v6 - 8);
  v8 = (v4 + v5 + *(v7 + 80)) & ~*(v7 + 80);

  (*(v1 + 8))(v0 + v2, v11);
  (*(v3 + 8))(v0 + v4, v10);
  (*(v7 + 8))(v0 + v8, v6);

  return swift_deallocObject();
}

uint64_t sub_1D8DC2F94()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1D8DC3050()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  }

  return swift_deallocObject();
}

uint64_t sub_1D8DC3090()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DC30C8(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB4D30, &qword_1D918D4E0);
  swift_getAssociatedTypeWitness();
  sub_1D8CF48EC(&qword_1ECAB0918, &qword_1ECAB4D30, &qword_1D918D4E0, MEMORY[0x1E695BCE0]);
  sub_1D917770C();

  return swift_getWitnessTable();
}

uint64_t sub_1D8DC31A0()
{
  (*(*(*(v0 + 16) - 8) + 8))(v0 + ((*(*(*(v0 + 16) - 8) + 80) + 32) & ~*(*(*(v0 + 16) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t sub_1D8DC3220()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DC3258()
{

  return swift_deallocObject();
}

id sub_1D8DC3298@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D8E6D348(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24));
  *a2 = result;
  return result;
}

uint64_t sub_1D8DC32D0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D8DB9908();
  *a1 = result;
  return result;
}

double sub_1D8DC32FC(uint64_t *a1, uint64_t a2)
{
  v2 = *(*a2 + 48);
  *(*a2 + 48) = *a1;

  return sub_1D8E6CA80(v2);
}

uint64_t sub_1D8DC3340@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 56);
}

uint64_t sub_1D8DC3390()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DC33D8()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DC3418@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 48);
}

uint64_t sub_1D8DC3468@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 56);
}

uint64_t sub_1D8DC34B8()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DC3508(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1D9176C2C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D8DC35B4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1D9176C2C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D8DC3658()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1D8DC3690()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DC3714()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DC374C()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DC3798()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D8DC3828()
{

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D8DC3898()
{
  MEMORY[0x1DA72CC70](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D8DC38D0()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DC3934()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DC3974()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DC39AC()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DC39EC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 48);
}

uint64_t sub_1D8DC3A3C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 56);
}

uint64_t sub_1D8DC3A8C()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DC3AE8()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1D8DC3B20()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DC3B7C()
{
  v1 = *(type metadata accessor for DownloadConsistency.Issue(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v5 = sub_1D9176EAC();
    (*(*(v5 - 8) + 8))(v0 + v2, v5);
    v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB51D0, &unk_1D918E7C0) + 48);
    v7 = sub_1D9176C2C();
    (*(*(v7 - 8) + 8))(v0 + v2 + v6, v7);
  }

  else if (EnumCaseMultiPayload <= 1)
  {
    v4 = sub_1D9176EAC();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB51C8, &unk_1D918E620);
  }

  return swift_deallocObject();
}

uint64_t sub_1D8DC3D48()
{
  v1 = *(type metadata accessor for DownloadConsistency.Issue(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v5 = sub_1D9176EAC();
    (*(*(v5 - 8) + 8))(v0 + v2, v5);
    v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB51D0, &unk_1D918E7C0) + 48);
    v7 = sub_1D9176C2C();
    (*(*(v7 - 8) + 8))(v0 + v2 + v6, v7);
  }

  else if (EnumCaseMultiPayload <= 1)
  {
    v4 = sub_1D9176EAC();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB51C8, &unk_1D918E620);
  }

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D8DC3F18()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DC3F50()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DC3F9C()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));

  return swift_deallocObject();
}

uint64_t sub_1D8DC402C()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 64));

  return swift_deallocObject();
}

uint64_t sub_1D8DC407C()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DC40B4()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v2);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + v3));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + v3 + 40));

  return swift_deallocObject();
}

uint64_t sub_1D8DC415C()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));

  return swift_deallocObject();
}

uint64_t sub_1D8DC41F0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D8DC4248()
{
  if (*v0)
  {
    return 0x5565646F73697065;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_1D8DC4294@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___PFDownloadConsistency_identifier;
  swift_beginAccess();
  return sub_1D8CFD9D8(v3 + v4, a2);
}

uint64_t sub_1D8DC42F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DownloadConsistency.Issue(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1D8DC43B0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for DownloadConsistency.Issue(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D8DC4470()
{
  v1 = *(type metadata accessor for DownloadConsistency.IssueResolution(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);

  type metadata accessor for DownloadConsistency.Issue(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v6 = sub_1D9176EAC();
    (*(*(v6 - 8) + 8))(v0 + v2, v6);
    v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB51D0, &unk_1D918E7C0) + 48);
    v8 = sub_1D9176C2C();
    (*(*(v8 - 8) + 8))(v0 + v2 + v7, v8);
  }

  else if (EnumCaseMultiPayload <= 1)
  {
    v5 = sub_1D9176EAC();
    (*(*(v5 - 8) + 8))(v0 + v2, v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB51C8, &unk_1D918E620);
  }

  v9 = v0 + ((v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  __swift_destroy_boxed_opaque_existential_1Tm(v9);
  __swift_destroy_boxed_opaque_existential_1Tm((v9 + 40));

  return swift_deallocObject();
}

uint64_t sub_1D8DC466C()
{

  sub_1D8E8A1A8(*(v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_1D8DC46BC()
{
  MEMORY[0x1DA72CC70](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D8DC46F8()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DC4738()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1D8DC4774()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DC47D0()
{
  MEMORY[0x1DA72CC70](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D8DC480C()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1D8DC48AC()
{
  MEMORY[0x1DA72CC70](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D8DC48E4()
{

  if (*(v0 + 24))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D8DC492C()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1D8DC4964()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D8DC49B4()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1D8DC4A00()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1D8DC4A3C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D8DC4A8C()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DC4AC4()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DC4B08()
{
  v1 = *(v0 + 32);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 72) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1D8DC4BD4()
{

  sub_1D8E93630(*(v0 + 32), *(v0 + 40), *(v0 + 48));

  return swift_deallocObject();
}

uint64_t sub_1D8DC4C18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 28);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1D8DC4CE0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 32) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D8DC4D90(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1D9176C2C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1D9176E3C();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1D8DC4EB4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1D9176C2C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1D9176E3C();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1D8DC4FD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9176C2C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1D8DC5044(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9176C2C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1D8DC50B4()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DC50FC()
{
  MEMORY[0x1DA72CC70](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D8DC5144()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DC5184()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1D8DC51BC()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DC51FC()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D8DC525C()
{
  MEMORY[0x1DA72CC70](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D8DC5294()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D8DC52E4()
{

  swift_unknownObjectRelease();
  if (*(v0 + 32))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D8DC5368()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1D8DC53A0()
{
  if (*(v0 + 24))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D8DC53E8()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DC5420()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DC5468()
{

  if (*(v0 + 32))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D8DC54B8()
{
  swift_unknownObjectRelease();

  if (*(v0 + 40))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D8DC5528()
{

  if (*(v0 + 32))
  {
  }

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D8DC5580()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D8DC55C0()
{
  swift_unknownObjectRelease();
  if (*(v0 + 32))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D8DC5618()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D8DC5668()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D8DC56C0()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DC56F8()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DC5768()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DC57B8()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DC57F0()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DC5838()
{
  v1 = type metadata accessor for FairPlayMigrationData(0);
  v2 = (*(*(v1 - 8) + 80) + 48) & ~*(*(v1 - 8) + 80);

  v3 = v0 + v2;
  v4 = *(v0 + v2 + 16);
  if (v4 >> 60 != 15)
  {
    sub_1D8D7567C(*(v3 + 8), v4);
  }

  v5 = *(v1 + 28);
  v6 = sub_1D9176E3C();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v3 + v5, 1, v6))
  {
    (*(v7 + 8))(v3 + v5, v6);
  }

  return swift_deallocObject();
}

uint64_t sub_1D8DC59C4()
{
  v1 = type metadata accessor for FairPlayMigrationData(0);
  v2 = *(*(v1 - 8) + 80);
  v16 = *(*(v1 - 8) + 64);
  v17 = sub_1D9176C2C();
  v3 = *(v17 - 8);
  v4 = *(v3 + 80);
  v15 = *(v3 + 64);
  v5 = sub_1D9176E3C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);

  v8 = v0 + ((v2 + 32) & ~v2);
  v9 = *(v8 + 16);
  if (v9 >> 60 != 15)
  {
    sub_1D8D7567C(*(v8 + 8), v9);
  }

  v10 = *(v1 + 28);
  if (!(*(v6 + 48))(v8 + v10, 1, v5))
  {
    (*(v6 + 8))(v8 + v10, v5);
  }

  v11 = (v16 + ((v2 + 32) & ~v2) + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + v4 + 16) & ~v4;

  sub_1D8D7567C(*(v0 + v12), *(v0 + v12 + 8));
  (*(v3 + 8))(v0 + v13, v17);
  (*(v6 + 8))(v0 + ((v13 + v15 + v7) & ~v7), v5);

  return swift_deallocObject();
}

uint64_t sub_1D8DC5C4C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D8DC5C9C()
{
  v1 = (type metadata accessor for FairPlayMigrationData.ValidatedData(0) - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;

  v4 = v0 + v2;

  sub_1D8D7567C(*(v4 + 16), *(v4 + 24));
  v5 = v1[9];
  v6 = sub_1D9176C2C();
  (*(*(v6 - 8) + 8))(v4 + v5, v6);
  v7 = v1[10];
  v8 = sub_1D9176E3C();
  (*(*(v8 - 8) + 8))(v4 + v7, v8);

  return swift_deallocObject();
}

uint64_t sub_1D8DC5E2C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5698, &unk_1D91906A8);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1D8DC5EC0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5698, &unk_1D91906A8);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1D8DC5F98()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DC5FE0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D8DC6030()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DC6068()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DC60A8()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DC60E8()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DC6138@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 40);
  return result;
}

uint64_t sub_1D8DC6184()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

id sub_1D8DC623C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 fairPlayMigrationRetryCount];
  *a2 = result;
  return result;
}

uint64_t sub_1D8DC6284()
{
  v1 = *(v0 + 2);
  v2 = (type metadata accessor for AssetBackgroundSession(0, v1, *(v0 + 3), *(v0 + 4)) - 8);
  v11 = (*(*v2 + 80) + 40) & ~*(*v2 + 80);
  v3 = *(*v2 + 64);
  v12 = sub_1D917653C();
  v4 = *(v12 - 8);
  v5 = (v11 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = (v5 + v6 + *(v8 + 80)) & ~*(v8 + 80);
  (*(*(v1 - 8) + 8))(&v0[v11], v1);

  (*(v4 + 8))(&v0[v5], v12);
  (*(v8 + 8))(&v0[v9], AssociatedTypeWitness);

  return swift_deallocObject();
}

uint64_t sub_1D8DC64C4()
{
  v1 = sub_1D917734C();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 40) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1D8DC654C()
{
  v14 = *(v0 + 16);
  v1 = *(v14 - 8);
  v16 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v2 = v16 + *(v1 + 64);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  v12 = (v2 + *(v3 + 80)) & ~*(v3 + 80);
  v4 = *(v3 + 64);
  v13 = sub_1D9176C2C();
  v5 = *(v13 - 8);
  v6 = (v12 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = sub_1D917734C();
  v9 = *(v8 - 8);
  v10 = (v6 + v7 + *(v9 + 80)) & ~*(v9 + 80);
  (*(v1 + 8))(v0 + v16, v14);
  (*(v3 + 8))(v0 + v12, AssociatedTypeWitness);
  (*(v5 + 8))(v0 + v6, v13);
  (*(v9 + 8))(v0 + v10, v8);

  return swift_deallocObject();
}

uint64_t sub_1D8DC67F0()
{
  v1 = *(v0 + 2);
  v2 = (type metadata accessor for AssetBackgroundSession(0, v1, *(v0 + 3), *(v0 + 4)) - 8);
  v3 = (*(*v2 + 80) + 40) & ~*(*v2 + 80);
  v4 = *(*v2 + 64);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(*(v1 - 8) + 8))(&v0[v3], v1);

  (*(v6 + 8))(&v0[v7], AssociatedTypeWitness);

  return swift_deallocObject();
}

uint64_t sub_1D8DC69B0()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DC69EC()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DC6A2C()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DC6A64()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DC6AA4()
{
  MEMORY[0x1DA72CC70](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D8DC6ADC()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DC6B14()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DC6B74()
{
  v1 = sub_1D9176C2C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 88) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

__n128 sub_1D8DC6C84(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 32);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 32) = v3;
  *a2 = result;
  return result;
}

uint64_t sub_1D8DC6C98()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DC6CD0()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DC6D10()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DC6D6C()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = (((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v2);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + v3));

  return swift_deallocObject();
}

uint64_t sub_1D8DC6E10()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 72) & ~*(v2 + 80);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1D8DC6ECC(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB5B40, &unk_1D9191168);
  swift_getAssociatedTypeWitness();
  sub_1D8CF48EC(&qword_1ECAB0628, &qword_1ECAB5B40, &unk_1D9191168, MEMORY[0x1E695BE40]);
  v1 = sub_1D917770C();
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for EmitLifecycle(255, v1, WitnessTable, v3);

  return swift_getWitnessTable();
}

uint64_t sub_1D8DC6FD4()
{
  v1 = *(v0 + 16);
  v2 = sub_1D9176C2C();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 - 8);
  v7 = (v5 + *(v6 + 80) + 8) & ~*(v6 + 80);
  (*(v3 + 8))(v0 + v4, v2);

  (*(v6 + 8))(v0 + v7, v1);

  return swift_deallocObject();
}

uint64_t sub_1D8DC70F4()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 48));

  return swift_deallocObject();
}

uint64_t sub_1D8DC7134()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DC716C()
{
  v1 = *(v0 + 16);
  v2 = sub_1D9176C2C();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 - 8);
  v7 = (v5 + *(v6 + 80) + 8) & ~*(v6 + 80);
  (*(v3 + 8))(v0 + v4, v2);

  (*(v6 + 8))(v0 + v7, v1);

  return swift_deallocObject();
}

uint64_t sub_1D8DC72A0()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DC72D8()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DC7330(void *a1)
{
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB4F40, &qword_1D918B680);
  sub_1D91779BC();

  return swift_getWitnessTable();
}

uint64_t sub_1D8DC73C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5D08, &unk_1D9191530);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1D8DC7438(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5D08, &unk_1D9191530);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1D8DC74B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5D38, &qword_1D9191600);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1D8DC752C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5D38, &qword_1D9191600);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1D8DC75A8()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DC75E0()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DC7640()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DC7678(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1D9176C2C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D8DC7724(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1D9176C2C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D8DC77C8()
{
  v1 = type metadata accessor for KCUTranscriptProvider(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = sub_1D9176EAC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);

  if (*(v0 + 72))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 48));
  }

  v7 = (v2 + 88) & ~v2;
  v8 = (v7 + v3 + v6) & ~v6;
  v9 = v0 + v7;

  v10 = *(v1 + 28);
  v11 = sub_1D9176C2C();
  (*(*(v11 - 8) + 8))(v9 + v10, v11);

  (*(v5 + 8))(v0 + v8, v4);

  return swift_deallocObject();
}

uint64_t sub_1D8DC7994()
{
  v1 = type metadata accessor for MediaRequest.Params(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = (*(*(v1 - 8) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0 + v2;
  sub_1D8D85E5C(*(v0 + v2), *(v0 + v2 + 8), *(v0 + v2 + 16), *(v0 + v2 + 24), *(v0 + v2 + 32), *(v0 + v2 + 40));

  v5 = *(v1 + 112);
  v6 = sub_1D9176C2C();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v4 + v5, 1, v6))
  {
    (*(v7 + 8))(v4 + v5, v6);
  }

  if (*(v0 + v3 + 56))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + v3 + 32));
  }

  return swift_deallocObject();
}

uint64_t sub_1D8DC7BB8()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DC7BF0()
{

  if (*(v0 + 88))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 64));
  }

  return swift_deallocObject();
}

uint64_t sub_1D8DC7C48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1D8DC7D14(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D8DC7DE0()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 304));

  if (*(v0 + 432))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 408));
  }

  return swift_deallocObject();
}

uint64_t sub_1D8DC7EE4()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DC7F1C()
{
  sub_1D8D7567C(*(v0 + 40), *(v0 + 48));

  return swift_deallocObject();
}

uint64_t sub_1D8DC7F7C()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DC801C()
{
  v1 = sub_1D9176EAC();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 376) & ~*(v2 + 80);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 304));

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1D8DC8194()
{

  v1 = *(v0 + 48);
  if (v1 != 255)
  {
    sub_1D8DADC60(*(v0 + 32), *(v0 + 40), v1);
  }

  v2 = *(v0 + 80);
  if (v2 != 255)
  {
    sub_1D8DADC78(*(v0 + 72), v2);
  }

  v3 = *(v0 + 96);
  if (v3 != 255)
  {
    sub_1D8DADC78(*(v0 + 88), v3);
  }

  v4 = *(v0 + 112);
  if (v4 != 255)
  {
    sub_1D8DADC78(*(v0 + 104), v4);
  }

  v5 = *(v0 + 128);
  if (v5 != 255)
  {
    sub_1D8DADC78(*(v0 + 120), v5);
  }

  v6 = *(v0 + 144);
  if (v6 != 255)
  {
    sub_1D8DADC78(*(v0 + 136), v6);
  }

  if (*(v0 + 264))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 240));
  }

  return swift_deallocObject();
}

uint64_t sub_1D8DC826C()
{

  v1 = *(v0 + 48);
  if (v1 != 255)
  {
    sub_1D8DADC60(*(v0 + 32), *(v0 + 40), v1);
  }

  v2 = *(v0 + 80);
  if (v2 != 255)
  {
    sub_1D8DADC78(*(v0 + 72), v2);
  }

  v3 = *(v0 + 96);
  if (v3 != 255)
  {
    sub_1D8DADC78(*(v0 + 88), v3);
  }

  v4 = *(v0 + 112);
  if (v4 != 255)
  {
    sub_1D8DADC78(*(v0 + 104), v4);
  }

  v5 = *(v0 + 128);
  if (v5 != 255)
  {
    sub_1D8DADC78(*(v0 + 120), v5);
  }

  v6 = *(v0 + 144);
  if (v6 != 255)
  {
    sub_1D8DADC78(*(v0 + 136), v6);
  }

  if (*(v0 + 264))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 240));
  }

  v7 = *(v0 + 312);
  if (v7 != 255)
  {
    sub_1D8DADC60(*(v0 + 296), *(v0 + 304), v7);
  }

  v8 = *(v0 + 344);
  if (v8 != 255)
  {
    sub_1D8DADC78(*(v0 + 336), v8);
  }

  v9 = *(v0 + 360);
  if (v9 != 255)
  {
    sub_1D8DADC78(*(v0 + 352), v9);
  }

  v10 = *(v0 + 376);
  if (v10 != 255)
  {
    sub_1D8DADC78(*(v0 + 368), v10);
  }

  v11 = *(v0 + 392);
  if (v11 != 255)
  {
    sub_1D8DADC78(*(v0 + 384), v11);
  }

  v12 = *(v0 + 408);
  if (v12 != 255)
  {
    sub_1D8DADC78(*(v0 + 400), v12);
  }

  if (*(v0 + 528))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 504));
  }

  v13 = *(v0 + 576);
  if (v13 != 255)
  {
    sub_1D8DADC60(*(v0 + 560), *(v0 + 568), v13);
  }

  v14 = *(v0 + 608);
  if (v14 != 255)
  {
    sub_1D8DADC78(*(v0 + 600), v14);
  }

  v15 = *(v0 + 624);
  if (v15 != 255)
  {
    sub_1D8DADC78(*(v0 + 616), v15);
  }

  v16 = *(v0 + 640);
  if (v16 != 255)
  {
    sub_1D8DADC78(*(v0 + 632), v16);
  }

  v17 = *(v0 + 656);
  if (v17 != 255)
  {
    sub_1D8DADC78(*(v0 + 648), v17);
  }

  v18 = *(v0 + 672);
  if (v18 != 255)
  {
    sub_1D8DADC78(*(v0 + 664), v18);
  }

  if (*(v0 + 792))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 768));
  }

  v19 = *(v0 + 848);
  if (v19 != 255)
  {
    sub_1D8DADC60(*(v0 + 832), *(v0 + 840), v19);
  }

  v20 = *(v0 + 880);
  if (v20 != 255)
  {
    sub_1D8DADC78(*(v0 + 872), v20);
  }

  v21 = *(v0 + 896);
  if (v21 != 255)
  {
    sub_1D8DADC78(*(v0 + 888), v21);
  }

  v22 = *(v0 + 912);
  if (v22 != 255)
  {
    sub_1D8DADC78(*(v0 + 904), v22);
  }

  v23 = *(v0 + 928);
  if (v23 != 255)
  {
    sub_1D8DADC78(*(v0 + 920), v23);
  }

  v24 = *(v0 + 944);
  if (v24 != 255)
  {
    sub_1D8DADC78(*(v0 + 936), v24);
  }

  if (*(v0 + 1064))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 1040));
  }

  v25 = *(v0 + 1128);
  if (v25 != 255)
  {
    sub_1D8DADC60(*(v0 + 1112), *(v0 + 1120), v25);
  }

  v26 = *(v0 + 1160);
  if (v26 != 255)
  {
    sub_1D8DADC78(*(v0 + 1152), v26);
  }

  v27 = *(v0 + 1176);
  if (v27 != 255)
  {
    sub_1D8DADC78(*(v0 + 1168), v27);
  }

  v28 = *(v0 + 1192);
  if (v28 != 255)
  {
    sub_1D8DADC78(*(v0 + 1184), v28);
  }

  v29 = *(v0 + 1208);
  if (v29 != 255)
  {
    sub_1D8DADC78(*(v0 + 1200), v29);
  }

  v30 = *(v0 + 1224);
  if (v30 != 255)
  {
    sub_1D8DADC78(*(v0 + 1216), v30);
  }

  if (*(v0 + 1344))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 1320));
  }

  v31 = *(v0 + 1424);
  if (v31 != 255)
  {
    sub_1D8DADC60(*(v0 + 1408), *(v0 + 1416), v31);
  }

  v32 = *(v0 + 1456);
  if (v32 != 255)
  {
    sub_1D8DADC78(*(v0 + 1448), v32);
  }

  v33 = *(v0 + 1472);
  if (v33 != 255)
  {
    sub_1D8DADC78(*(v0 + 1464), v33);
  }

  v34 = *(v0 + 1488);
  if (v34 != 255)
  {
    sub_1D8DADC78(*(v0 + 1480), v34);
  }

  v35 = *(v0 + 1504);
  if (v35 != 255)
  {
    sub_1D8DADC78(*(v0 + 1496), v35);
  }

  v36 = *(v0 + 1520);
  if (v36 != 255)
  {
    sub_1D8DADC78(*(v0 + 1512), v36);
  }

  if (*(v0 + 1640))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 1616));
  }

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 1704));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 1744));

  return swift_deallocObject();
}

uint64_t sub_1D8DC86D4()
{

  v1 = *(v0 + 48);
  if (v1 != 255)
  {
    sub_1D8DADC60(*(v0 + 32), *(v0 + 40), v1);
  }

  v2 = *(v0 + 80);
  if (v2 != 255)
  {
    sub_1D8DADC78(*(v0 + 72), v2);
  }

  v3 = *(v0 + 96);
  if (v3 != 255)
  {
    sub_1D8DADC78(*(v0 + 88), v3);
  }

  v4 = *(v0 + 112);
  if (v4 != 255)
  {
    sub_1D8DADC78(*(v0 + 104), v4);
  }

  v5 = *(v0 + 128);
  if (v5 != 255)
  {
    sub_1D8DADC78(*(v0 + 120), v5);
  }

  v6 = *(v0 + 144);
  if (v6 != 255)
  {
    sub_1D8DADC78(*(v0 + 136), v6);
  }

  if (*(v0 + 264))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 240));
  }

  v7 = *(v0 + 320);
  if (v7 != 255)
  {
    sub_1D8DADC60(*(v0 + 304), *(v0 + 312), v7);
  }

  v8 = *(v0 + 352);
  if (v8 != 255)
  {
    sub_1D8DADC78(*(v0 + 344), v8);
  }

  v9 = *(v0 + 368);
  if (v9 != 255)
  {
    sub_1D8DADC78(*(v0 + 360), v9);
  }

  v10 = *(v0 + 384);
  if (v10 != 255)
  {
    sub_1D8DADC78(*(v0 + 376), v10);
  }

  v11 = *(v0 + 400);
  if (v11 != 255)
  {
    sub_1D8DADC78(*(v0 + 392), v11);
  }

  v12 = *(v0 + 416);
  if (v12 != 255)
  {
    sub_1D8DADC78(*(v0 + 408), v12);
  }

  if (*(v0 + 536))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 512));
  }

  v13 = *(v0 + 600);
  if (v13 != 255)
  {
    sub_1D8DADC60(*(v0 + 584), *(v0 + 592), v13);
  }

  v14 = *(v0 + 632);
  if (v14 != 255)
  {
    sub_1D8DADC78(*(v0 + 624), v14);
  }

  v15 = *(v0 + 648);
  if (v15 != 255)
  {
    sub_1D8DADC78(*(v0 + 640), v15);
  }

  v16 = *(v0 + 664);
  if (v16 != 255)
  {
    sub_1D8DADC78(*(v0 + 656), v16);
  }

  v17 = *(v0 + 680);
  if (v17 != 255)
  {
    sub_1D8DADC78(*(v0 + 672), v17);
  }

  v18 = *(v0 + 696);
  if (v18 != 255)
  {
    sub_1D8DADC78(*(v0 + 688), v18);
  }

  if (*(v0 + 816))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 792));
  }

  return swift_deallocObject();
}

uint64_t sub_1D8DC894C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5D38, &qword_1D9191600);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5D08, &unk_1D9191530);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1D8DC8A54(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5D38, &qword_1D9191600);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5D08, &unk_1D9191530);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1D8DC8BB4()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DC8C64()
{
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB64B8, &qword_1D9192760) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = sub_1D917653C();
  v5 = *(v4 - 8);
  v17 = (v2 + v3 + *(v5 + 80)) & ~*(v5 + 80);
  v18 = v4;
  v6 = *(v5 + 64);
  v7 = type metadata accessor for ShazamSignatureRequest(0);
  v15 = (v17 + v6 + *(*(v7 - 8) + 80)) & ~*(*(v7 - 8) + 80);
  v8 = v0 + v2;

  v9 = v0 + v2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5D08, &unk_1D9191530) + 60);
  v10 = sub_1D9176C2C();
  v11 = *(v10 - 8);
  v14 = *(v11 + 8);
  v14(v9, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5D30, &unk_1D9191570);

  (*(v5 + 8))(v16 + v17, v18);
  if (!(*(v11 + 48))(v16 + v15, 1, v10))
  {
    v14(v16 + v15, v10);
  }

  v12 = (v16 + v15 + *(v7 + 36));
  if (v12[3])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
  }

  return swift_deallocObject();
}

uint64_t sub_1D8DC8F80()
{
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB64B8, &qword_1D9192760) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = type metadata accessor for ShazamSignatureRequest(0);
  v5 = *(*(v4 - 8) + 80);
  v14 = *(*(v4 - 8) + 64);
  v13 = (v2 + v3 + v5) & ~v5;
  v6 = v0 + v2;

  v7 = v0 + v2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5D08, &unk_1D9191530) + 60);
  v8 = sub_1D9176C2C();
  v9 = *(v8 - 8);
  v12 = *(v9 + 8);
  v12(v7, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5D30, &unk_1D9191570);

  if (!(*(v9 + 48))(v0 + v13, 1, v8))
  {
    v12(v0 + v13, v8);
  }

  v10 = (v0 + v13 + *(v4 + 36));
  if (v10[3])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
  }

  return swift_deallocObject();
}

uint64_t sub_1D8DC9228()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DC9260()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DC92B8()
{
  v1 = *(type metadata accessor for ShazamSignatureBackgroundSessionDescriptor(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v19 = type metadata accessor for ShazamSignatureRequest(0);
  v20 = *(*(v19 - 8) + 80);
  v15 = (v2 + v3 + v20) & ~v20;
  v18 = *(*(v19 - 8) + 64);
  v4 = sub_1D9176C2C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v16 = *(v5 + 64);
  v17 = sub_1D917734C();
  v7 = *(v17 - 8);
  v8 = *(v7 + 80);

  v9 = v0 + v2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5D08, &unk_1D9191530) + 60);
  v10 = *(v5 + 8);
  v10(v9, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5D30, &unk_1D9191570);

  if (!(*(v5 + 48))(v0 + v15, 1, v4))
  {
    v10(v0 + v15, v4);
  }

  v11 = (v0 + v15 + *(v19 + 36));
  if (v11[3])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
  }

  v12 = (v15 + v18 + v6) & ~v6;
  v13 = (v12 + v16 + v8) & ~v8;
  v10(v0 + v12, v4);
  (*(v7 + 8))(v0 + v13, v17);

  return swift_deallocObject();
}

uint64_t sub_1D8DC95FC()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DC9634()
{
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB64C0, &qword_1D9192768) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = sub_1D917653C();
  v5 = *(v4 - 8);
  v17 = (v2 + v3 + *(v5 + 80)) & ~*(v5 + 80);
  v18 = v4;
  v6 = *(v5 + 64);
  v7 = type metadata accessor for TTMLRequest(0);
  v15 = (v17 + v6 + *(*(v7 - 8) + 80)) & ~*(*(v7 - 8) + 80);
  v8 = v0 + v2;

  v9 = v0 + v2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5D38, &qword_1D9191600) + 60);
  v10 = sub_1D9176C2C();
  v11 = *(v10 - 8);
  v14 = *(v11 + 8);
  v14(v9, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5D58, &unk_1D9191620);

  (*(v5 + 8))(v16 + v17, v18);
  if (!(*(v11 + 48))(v16 + v15, 1, v10))
  {
    v14(v16 + v15, v10);
  }

  v12 = (v16 + v15 + *(v7 + 36));
  if (v12[3])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
  }

  return swift_deallocObject();
}

uint64_t sub_1D8DC9950()
{
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB64C0, &qword_1D9192768) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = type metadata accessor for TTMLRequest(0);
  v5 = *(*(v4 - 8) + 80);
  v14 = *(*(v4 - 8) + 64);
  v13 = (v2 + v3 + v5) & ~v5;
  v6 = v0 + v2;

  v7 = v0 + v2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5D38, &qword_1D9191600) + 60);
  v8 = sub_1D9176C2C();
  v9 = *(v8 - 8);
  v12 = *(v9 + 8);
  v12(v7, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5D58, &unk_1D9191620);

  if (!(*(v9 + 48))(v0 + v13, 1, v8))
  {
    v12(v0 + v13, v8);
  }

  v10 = (v0 + v13 + *(v4 + 36));
  if (v10[3])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
  }

  return swift_deallocObject();
}

uint64_t sub_1D8DC9BF8()
{
  v1 = *(type metadata accessor for TranscriptsBackgroundSessionDescriptor(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v19 = type metadata accessor for TTMLRequest(0);
  v20 = *(*(v19 - 8) + 80);
  v15 = (v2 + v3 + v20) & ~v20;
  v18 = *(*(v19 - 8) + 64);
  v4 = sub_1D9176C2C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v16 = *(v5 + 64);
  v17 = sub_1D917734C();
  v7 = *(v17 - 8);
  v8 = *(v7 + 80);

  v9 = v0 + v2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5D38, &qword_1D9191600) + 60);
  v10 = *(v5 + 8);
  v10(v9, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5D58, &unk_1D9191620);

  if (!(*(v5 + 48))(v0 + v15, 1, v4))
  {
    v10(v0 + v15, v4);
  }

  v11 = (v0 + v15 + *(v19 + 36));
  if (v11[3])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
  }

  v12 = (v15 + v18 + v6) & ~v6;
  v13 = (v12 + v16 + v8) & ~v8;
  v10(v0 + v12, v4);
  (*(v7 + 8))(v0 + v13, v17);

  return swift_deallocObject();
}

uint64_t sub_1D8DC9F88()
{

  v1 = *(v0 + 48);
  if (v1 != 255)
  {
    sub_1D8DADC60(*(v0 + 32), *(v0 + 40), v1);
  }

  v2 = *(v0 + 80);
  if (v2 != 255)
  {
    sub_1D8DADC78(*(v0 + 72), v2);
  }

  v3 = *(v0 + 96);
  if (v3 != 255)
  {
    sub_1D8DADC78(*(v0 + 88), v3);
  }

  v4 = *(v0 + 112);
  if (v4 != 255)
  {
    sub_1D8DADC78(*(v0 + 104), v4);
  }

  v5 = *(v0 + 128);
  if (v5 != 255)
  {
    sub_1D8DADC78(*(v0 + 120), v5);
  }

  v6 = *(v0 + 144);
  if (v6 != 255)
  {
    sub_1D8DADC78(*(v0 + 136), v6);
  }

  if (*(v0 + 264))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 240));
  }

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 312));

  return swift_deallocObject();
}

uint64_t sub_1D8DCA070()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  v1 = *(v0 + 88);
  if (v1 != 255)
  {
    sub_1D8DADC60(*(v0 + 72), *(v0 + 80), v1);
  }

  v2 = *(v0 + 120);
  if (v2 != 255)
  {
    sub_1D8DADC78(*(v0 + 112), v2);
  }

  v3 = *(v0 + 136);
  if (v3 != 255)
  {
    sub_1D8DADC78(*(v0 + 128), v3);
  }

  v4 = *(v0 + 152);
  if (v4 != 255)
  {
    sub_1D8DADC78(*(v0 + 144), v4);
  }

  v5 = *(v0 + 168);
  if (v5 != 255)
  {
    sub_1D8DADC78(*(v0 + 160), v5);
  }

  v6 = *(v0 + 184);
  if (v6 != 255)
  {
    sub_1D8DADC78(*(v0 + 176), v6);
  }

  if (*(v0 + 304))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 280));
  }

  return swift_deallocObject();
}

uint64_t sub_1D8DCA150()
{
  v1 = sub_1D9176C2C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  v5 = v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8);

  v6 = *(v5 + 32);
  if (v6 != 255)
  {
    sub_1D8DADC60(*(v5 + 16), *(v5 + 24), v6);
  }

  v7 = *(v5 + 64);
  if (v7 != 255)
  {
    sub_1D8DADC78(*(v5 + 56), v7);
  }

  v8 = *(v5 + 80);
  if (v8 != 255)
  {
    sub_1D8DADC78(*(v5 + 72), v8);
  }

  v9 = *(v5 + 96);
  if (v9 != 255)
  {
    sub_1D8DADC78(*(v5 + 88), v9);
  }

  v10 = *(v5 + 112);
  if (v10 != 255)
  {
    sub_1D8DADC78(*(v5 + 104), v10);
  }

  v11 = *(v5 + 128);
  if (v11 != 255)
  {
    sub_1D8DADC78(*(v5 + 120), v11);
  }

  if (*(v5 + 248))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v5 + 224));
  }

  return swift_deallocObject();
}

uint64_t sub_1D8DCA2A0()
{
  v1 = sub_1D9176C2C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  v5 = v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8);

  v6 = *(v5 + 32);
  if (v6 != 255)
  {
    sub_1D8DADC60(*(v5 + 16), *(v5 + 24), v6);
  }

  v7 = *(v5 + 64);
  if (v7 != 255)
  {
    sub_1D8DADC78(*(v5 + 56), v7);
  }

  v8 = *(v5 + 80);
  if (v8 != 255)
  {
    sub_1D8DADC78(*(v5 + 72), v8);
  }

  v9 = *(v5 + 96);
  if (v9 != 255)
  {
    sub_1D8DADC78(*(v5 + 88), v9);
  }

  v10 = *(v5 + 112);
  if (v10 != 255)
  {
    sub_1D8DADC78(*(v5 + 104), v10);
  }

  v11 = *(v5 + 128);
  if (v11 != 255)
  {
    sub_1D8DADC78(*(v5 + 120), v11);
  }

  if (*(v5 + 248))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v5 + 224));
  }

  return swift_deallocObject();
}

uint64_t sub_1D8DCA400(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB64C0, &qword_1D9192768);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB64B8, &qword_1D9192760);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1D8DCA53C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB64C0, &qword_1D9192768);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB64B8, &qword_1D9192760);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1D8DCA71C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1D8DCA794(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1D8DCA810(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1D8DCA8DC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D8DCA9A4()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DCABCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D9176E3C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1D8DCAC88(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D9176E3C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D8DCAD48()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DCAD88()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DCADE0()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1D8DCAE20()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DCAE6C()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1D8DCAEA4()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DCAEDC()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DCAF2C()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DCAF8C()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DCAFCC()
{
  if (*(v0 + 32))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D8DCB018()
{

  if (*(v0 + 40))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D8DCB070()
{
  if (*(v0 + 32))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D8DCB0C0()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DCB110()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DCB158()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DCB1A0()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DCB1E0()
{
  MEMORY[0x1DA72CC70](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D8DCB218()
{
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4538, &unk_1D91949B0) - 8);
  v2 = (*(*v1 + 80) + 48) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;

  v4 = v0 + v1[14];
  v5 = sub_1D9176C2C();
  (*(*(v5 - 8) + 8))(v4 + v2, v5);

  return swift_deallocObject();
}

uint64_t sub_1D8DCB350()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4538, &unk_1D91949B0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + *(v1 + 48);
  v6 = sub_1D9176C2C();
  (*(*(v6 - 8) + 8))(v5 + v3, v6);

  return swift_deallocObject();
}

uint64_t sub_1D8DCB480()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DCB4C8()
{
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4538, &unk_1D91949B0) - 8);
  v2 = (*(*v1 + 80) + 48) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;

  v4 = v0 + v1[14];
  v5 = sub_1D9176C2C();
  (*(*(v5 - 8) + 8))(v4 + v2, v5);

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D8DCB600()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4538, &unk_1D91949B0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + *(v1 + 48);
  v6 = sub_1D9176C2C();
  (*(*(v6 - 8) + 8))(v5 + v3, v6);

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D8DCB730()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D8DCB778()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DCB7C0()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DCB820()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DCB858()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DCB8C4()
{

  if (*(v0 + 40))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D8DCB91C()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DCB964()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DCB99C()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DCB9E4()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1D8DCBA68()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DCBAA0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1D917752C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 72);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D8DCBB4C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1D917752C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 72);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D8DCBC1C@<X0>(uint64_t *a1@<X8>)
{
  result = XCTestCombineValidator.currentValues.getter();
  *a1 = result;
  return result;
}

__n128 sub_1D8DCBC80(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

__n128 sub_1D8DCBCC8(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_1D8DCBCD4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1D917744C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D8DCBD80(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1D917744C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D8DCBE24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for LoggerTrace(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1D8DCBEE4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for LoggerTrace(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D8DCC024(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D917739C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_1D917734C();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1D8DCC134(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1D917739C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_1D917734C();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1D8DCC240(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1D917739C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1D8DCC2EC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1D917739C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D8DCC390(void *a1)
{
  swift_getAssociatedTypeWitness();
  v1 = sub_1D91791BC();
  sub_1D917768C();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for RepublishingValueSubject(255, v1, AssociatedTypeWitness, AssociatedConformanceWitness);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1D917776C();
  swift_getWitnessTable();
  sub_1D91775BC();
  swift_getWitnessTable();
  sub_1D91775AC();
  return swift_getWitnessTable();
}

uint64_t sub_1D8DCC554()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DCC59C()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DCC5E4()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DCC62C()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DCC664()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DCC69C()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DCC6E4(void *a1)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1D9179EAC();
  sub_1D917768C();
  sub_1D91779FC();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1D91776AC();
  return swift_getWitnessTable();
}

uint64_t sub_1D8DCC82C(void *a1)
{
  sub_1D91775AC();

  return swift_getWitnessTable();
}

uint64_t sub_1D8DCC878(uint64_t a1)
{
  sub_1D91775DC();
  swift_getWitnessTable();
  sub_1D917777C();
  return swift_getWitnessTable();
}

__n128 sub_1D8DCC974(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_1D8DCC98C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D8DCC9C8()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DCCA10()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D8DCCA4C()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DCCAA0@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 2);
  *a2 = *a1;
  *(a2 + 16) = v2;
}

uint64_t sub_1D8DCCAC8()
{
  MEMORY[0x1DA72CC70](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D8DCCB00()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DCCB40()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D8DCCB78(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_1D91774DC();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

void *sub_1D8DCCC30(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = sub_1D91774DC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D8DCCCD4(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1D91774DC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1D8DCCD80(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1D91774DC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D8DCCE24()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DCCE5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9176E3C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1D8DCCEC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9176E3C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1D8DCCF38()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D8DCCF70()
{
  v1 = sub_1D9176E3C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1D8DCD034()
{
  v1 = *(v0 + 32);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1D8DCD108()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DCD140()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(AssociatedTypeWitness - 8);
  v3 = (*(v2 + 80) + 80) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, AssociatedTypeWitness);

  return swift_deallocObject();
}

uint64_t sub_1D8DCD238()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DCD278()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DCD2B0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D8DCD2E8()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DCD324()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DCD36C()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DCD3AC()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DCD3EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1D8DCD4B8()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DCD4F8()
{
  updated = type metadata accessor for FeedUpdateRequest(0);
  v2 = (*(*(updated - 1) + 80) + 24) & ~*(*(updated - 1) + 80);
  v3 = v0 + v2;
  v4 = sub_1D9176EAC();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  v6 = updated[5];
  v7 = sub_1D9176C2C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 8);
  v9(v3 + v6, v7);
  v10 = updated[6];
  if (!(*(v8 + 48))(v3 + v10, 1, v7))
  {
    v9(v3 + v10, v7);
  }

  if (*(v3 + updated[14]))
  {
  }

  if (*(v3 + updated[15]))
  {
  }

  if (*(v3 + updated[16]))
  {
  }

  if (*(v3 + updated[17]))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D8DCD790()
{

  sub_1D8F58A60(*(v0 + 24), *(v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_1D8DCD7D4()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DCD814()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DCD84C()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1D8DCD8A4()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DCD8E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_1D9176EAC();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1D8DCD95C()
{
  v1 = *(type metadata accessor for StoreFeedUpdater.Update(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v14 = *(v1 + 64);
  v3 = sub_1D9176EAC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v15 = v2;
  v6 = v0 + v2;
  if (!(*(v4 + 48))(v0 + v2, 1, v3))
  {
    (*(v4 + 8))(v0 + v2, v3);
  }

  v16 = v3;
  updated = type metadata accessor for FeedUpdateRequest(0);
  v8 = updated[5];
  v9 = sub_1D9176C2C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 8);
  v11(v6 + v8, v9);
  v12 = updated[6];
  if (!(*(v10 + 48))(v6 + v12, 1, v9))
  {
    v11(v6 + v12, v9);
  }

  if (*(v6 + updated[14]))
  {
  }

  if (*(v6 + updated[15]))
  {
  }

  if (*(v6 + updated[16]))
  {
  }

  if (*(v6 + updated[17]))
  {
  }

  (*(v4 + 8))(v0 + ((((v14 + v15 + 7) & 0xFFFFFFFFFFFFFFF8) + v5 + 8) & ~v5), v16);

  return swift_deallocObject();
}

uint64_t sub_1D8DCDC58()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DCDC90()
{

  sub_1D8F6F1DC(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));

  return swift_deallocObject();
}

uint64_t sub_1D8DCDCE4()
{

  sub_1D8F6F1DC(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));

  v1 = *(v0 + 136);
  if (v1 != 255)
  {
    sub_1D8D85E5C(*(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), v1);
  }

  sub_1D8F6F1DC(*(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 176), *(v0 + 184));
  if (*(v0 + 192))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D8DCDD90()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DCDDCC()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DCDE1C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D8DCDE54@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 48);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1D8DCDEA4(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 48) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1D8DCDEFC()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DCDF44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = sub_1D9176E3C();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1D8DCDFBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = sub_1D9176E3C();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1D8DCE040(void *a1)
{
  v1 = a1;

  return RecommendationsMetadata.Channels.Metadata.init(from:)(v1);
}

uint64_t sub_1D8DCE0E8()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DCE128()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DCE160()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D8DCE198()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DCE1D0()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DCE214()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D8DCE24C()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DCE284()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DCE484()
{
  v1 = sub_1D917734C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 65) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1D8DCE550()
{
  v1 = sub_1D917734C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 57) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1D8DCE62C@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v2 = v1[1];
  a1[3] = MEMORY[0x1E69E6158];
  *a1 = v3;
  a1[1] = v2;
}

__n128 sub_1D8DCE678(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

id sub_1D8DCE684@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18PodcastsFoundation26AnalyticsIdentifierManager_identifierPromise;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_1D8DCE7D8@<X0>(_BYTE *a1@<X8>)
{
  result = EpisodeListType.sortTypeFromUserDefaults.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1D8DCE82C@<X0>(uint64_t *a1@<X8>)
{
  result = EpisodeListType.pubDateLimit.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1D8DCE880@<X0>(_BYTE *a1@<X8>)
{
  result = EpisodeListType.hidePlayedEpisodes.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1D8DCE8DC()
{
  sub_1D8F95794(*(v0 + 16), *(v0 + 24));

  return swift_deallocObject();
}

id sub_1D8DCE960@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 adamID];
  *a2 = result;
  return result;
}

void sub_1D8DCEA6C(void *a1, void **a2)
{
  v2 = *a2;
  v3 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  [v2 setName_];
}

id sub_1D8DCEB10@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 interest];
  *a2 = result;
  return result;
}

id sub_1D8DCEC00@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 parent];
  *a2 = result;
  return result;
}

id sub_1D8DCECF0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 episode];
  *a2 = result;
  return result;
}

void sub_1D8DCED44(void *a1, void **a2)
{
  v2 = *a2;
  v3 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  [v2 setId_];
}

uint64_t sub_1D8DCEDF0@<X0>(uint64_t *a1@<X8>)
{
  result = MTChapter.timeframes.getter();
  *a1 = result;
  return result;
}

id sub_1D8DCEE48@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 chapterTypeIntValue];
  *a2 = result;
  return result;
}

id sub_1D8DCEE90@<X0>(id *a1@<X0>, BOOL *a2@<X8>)
{
  result = [*a1 chapterTypeIntValue];
  *a2 = result == 1;
  return result;
}

id sub_1D8DCEEE0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 artworkWidth];
  *a2 = result;
  return result;
}

id sub_1D8DCEF30@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 artworkHeight];
  *a2 = result;
  return result;
}

uint64_t sub_1D8DCF004()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DCF04C()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DCF09C()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DCF0E4()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DCF12C()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DCF174()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50) - 8);
  v2 = (*(v1 + 80) + 72) & ~*(v1 + 80);
  v3 = *(v1 + 64);

  v4 = sub_1D9176E3C();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  return swift_deallocObject();
}

uint64_t sub_1D8DCF2D8()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DCF320()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DCF368()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DCF3A0()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DCF464()
{
  v1 = sub_1D9176EAC();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1D8DCF528()
{

  return swift_deallocObject();
}

id sub_1D8DCF56C@<X0>(id *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  result = [*a1 isTrailer];
  if (result)
  {
    v5 = 2;
  }

  else
  {
    result = [v3 isBonus];
    v5 = result ^ 1;
  }

  *a2 = v5;
  return result;
}

uint64_t sub_1D8DCF5EC()
{
  MEMORY[0x1DA72CC70](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D8DCF624()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DCF670()
{
  MEMORY[0x1DA72CC70](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D8DCF6A8()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DCF6F0()
{
  MEMORY[0x1DA72CC70](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D8DCF728()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DCF770()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DCF7D8()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1D8DCF894()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DCF8DC()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

id sub_1D8DCF998@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 attributedDescriptionFromHTML];
  *a2 = result;
  return result;
}

uint64_t sub_1D8DCFA04()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DCFA4C()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DCFA84()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DCFAD4()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DCFB14()
{

  return swift_deallocObject();
}

id sub_1D8DCFB6C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 adamID];
  *a2 = result;
  return result;
}

id sub_1D8DCFBB4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 interestValue];
  *a2 = v4;
  return result;
}

void sub_1D8DCFC00(uint64_t a1, void **a2)
{
  v2 = *a2;
  v3 = _s10Foundation4DateV08PodcastsA0E18userDefaultsObjectSo6NSDateCSgyF_0();
  [v2 setLastUpdatedDate_];
}

id sub_1D8DCFC64@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 category];
  *a2 = result;
  return result;
}

id sub_1D8DCFCB4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 podcast];
  *a2 = result;
  return result;
}

id sub_1D8DCFD04@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 channel];
  *a2 = result;
  return result;
}

uint64_t sub_1D8DCFD54@<X0>(uint64_t a1@<X8>)
{
  result = MTPodcast.episodeUserFilter.getter();
  *a1 = result;
  *(a1 + 8) = v3;
  return result;
}

uint64_t sub_1D8DCFD88()
{
  if (*(v0 + 32))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D8DCFDE4()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DCFE2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 17);
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 24);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1D8DCFEE8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 17) = a2 + 1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

double sub_1D8DCFFC8(uint64_t a1)
{
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return result;
}

void sub_1D8DD003C(uint64_t *a1@<X8>)
{
  v2 = 0x64496D616461;
  if (*v1)
  {
    v2 = 0x6D617473656D6974;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xE900000000000070;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1D8DD007C()
{
  if (*v0)
  {
    return 0x6D617473656D6974;
  }

  else
  {
    return 0x64496D616461;
  }
}

uint64_t sub_1D8DD00D0()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DD0128()
{
  v1 = sub_1D9176E3C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 80) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  sub_1D8D7567C(*(v0 + 40), *(v0 + 48));

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1D8DD0234()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DD0278()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DD02C8()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DD0308()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DD0348()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1D8DD0380()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DD03C0()
{

  return swift_deallocObject();
}

id sub_1D8DD0448@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___MTContentKeyResponse_error;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;
  return v5;
}

uint64_t sub_1D8DD04EC()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DD053C()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1D8DD0574()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DD05C4()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DD0604()
{

  v1 = *(v0 + 56);
  if (v1 >> 60 != 15)
  {
    sub_1D8D7567C(*(v0 + 48), v1);
  }

  return swift_deallocObject();
}

uint64_t sub_1D8DD0674()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DD06CC()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DD0704()
{

  v1 = *(v0 + 40);
  if (v1 >> 60 != 15)
  {
    sub_1D8D7567C(*(v0 + 32), v1);
  }

  return swift_deallocObject();
}

uint64_t sub_1D8DD07F4()
{
  v1 = type metadata accessor for MediaRequest.Params(0);
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);

  sub_1D8D85E5C(*(v0 + v2), *(v0 + v2 + 8), *(v0 + v2 + 16), *(v0 + v2 + 24), *(v0 + v2 + 32), *(v0 + v2 + 40));

  v3 = *(v1 + 112);
  v4 = sub_1D9176C2C();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2 + v3, 1, v4))
  {
    (*(v5 + 8))(v0 + v2 + v3, v4);
  }

  return swift_deallocObject();
}

uint64_t sub_1D8DD0A18@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18PodcastsFoundation16BaseFeedResponse_response;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

id sub_1D8DD0A78@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18PodcastsFoundation16BaseFeedResponse_showMetadata;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_1D8DD0AEC()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1D8DD0B2C()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DD0B74()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB96D0, &unk_1D91AC2F0);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1D8DD0C08()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DD0C40()
{
  v1 = type metadata accessor for MediaRequest.Params(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80));
  sub_1D8D85E5C(*v2, *(v2 + 8), *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40));

  v3 = *(v1 + 112);
  v4 = sub_1D9176C2C();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v2 + v3, 1, v4))
  {
    (*(v5 + 8))(v2 + v3, v4);
  }

  return swift_deallocObject();
}

uint64_t sub_1D8DD0E44()
{
  v1 = type metadata accessor for MediaRequest.Params(0);
  v2 = (*(*(v1 - 8) + 80) + 40) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();

  sub_1D8D85E5C(*(v0 + v2), *(v0 + v2 + 8), *(v0 + v2 + 16), *(v0 + v2 + 24), *(v0 + v2 + 32), *(v0 + v2 + 40));

  v4 = *(v1 + 112);
  v5 = sub_1D9176C2C();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v2 + v4, 1, v5))
  {
    (*(v6 + 8))(v0 + v2 + v4, v5);
  }

  v7 = (v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8;

  return swift_deallocObject();
}

uint64_t sub_1D8DD107C()
{
  _Block_release(*(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_1D8DD10B8()
{
  _Block_release(*(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_1D8DD10F8()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DD1148()
{
  v1 = sub_1D9176EAC();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1D8DD1220()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DD1274()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DD12AC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___MTPartialFeedRequest_limit;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1D8DD1304(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___MTPartialFeedRequest_limit;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_1D8DD1358@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___MTPartialFeedRequest_sections;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_1D8DD13B8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___MTPartialFeedRequest_showTypeIsSerial;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1D8DD1410(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___MTPartialFeedRequest_showTypeIsSerial;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_1D8DD1468()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DD14A0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___MTSeasonFeedRequest_seasons;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_1D8DD150C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D9176C2C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1D8DD15CC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D9176C2C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D8DD1690()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DD16D0()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DD1720()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1D8DD1758()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DD1930()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1D8DD1968()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DD19A4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___MTBaseMAPIRequest_mediaRequestController;
  swift_beginAccess();
  return sub_1D8CFD9D8(v3 + v4, a2);
}

uint64_t sub_1D8DD1A04@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___MTMAPIResponseDatabaseObjectProvider_delegate;
  swift_beginAccess();
  *a2 = *(v3 + v4);
  return swift_unknownObjectRetain();
}

uint64_t sub_1D8DD1A64(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for MediaRequest.Params(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

void *sub_1D8DD1B10(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for MediaRequest.Params(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D8DD1BB4()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DD1BF8()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

id sub_1D8DD1CB4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18PodcastsFoundation22MediaRequestController_responseQueue;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_1D8DD1D20@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18PodcastsFoundation22MediaRequestController_cachePolicy;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1D8DD1D78(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18PodcastsFoundation22MediaRequestController_cachePolicy;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_1D8DD1DCC()
{
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB4F40, &qword_1D918B680);
  v1 = sub_1D917877C();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1D8DD1E9C()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DD1EF4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB96D0, &unk_1D91AC2F0);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1D8DD1F88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for MediaAPIResponse(255, *(v4 + 24), a3, a4);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB4F40, &qword_1D918B680);
  v5 = sub_1D917877C();
  v6 = *(v5 - 8);
  v7 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = type metadata accessor for MediaRequest.Params(0);
  v10 = (v7 + v8 + *(*(v9 - 8) + 80)) & ~*(*(v9 - 8) + 80);
  (*(v6 + 8))(v4 + v7, v5);
  sub_1D8D85E5C(*(v4 + v10), *(v4 + v10 + 8), *(v4 + v10 + 16), *(v4 + v10 + 24), *(v4 + v10 + 32), *(v4 + v10 + 40));

  v11 = *(v9 + 112);
  v12 = sub_1D9176C2C();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v4 + v10 + v11, 1, v12))
  {
    (*(v13 + 8))(v4 + v10 + v11, v12);
  }

  return swift_deallocObject();
}

uint64_t sub_1D8DD22B0()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DD22E8()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1D8DD2320()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5698, &unk_1D91906A8);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1D8DD23B4()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DD23FC()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1D8DD2434()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DD2484()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DD24C4()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DD24FC()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DD253C()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1D8DD2580()
{
  v1 = type metadata accessor for MediaRequest.Params(0);
  v2 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);

  sub_1D8D85E5C(*(v0 + v2), *(v0 + v2 + 8), *(v0 + v2 + 16), *(v0 + v2 + 24), *(v0 + v2 + 32), *(v0 + v2 + 40));

  v3 = *(v1 + 112);
  v4 = sub_1D9176C2C();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2 + v3, 1, v4))
  {
    (*(v5 + 8))(v0 + v2 + v3, v4);
  }

  return swift_deallocObject();
}

uint64_t sub_1D8DD278C()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1D8DD27C4()
{
  MEMORY[0x1DA72CC70](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D8DD27FC()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DD284C()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1D8DD28E4()
{

  return swift_deallocObject();
}

double sub_1D8DD2940(uint64_t *a1)
{
  qword_1ECAB9800 = *a1;

  return result;
}

uint64_t sub_1D8DD2984()
{
  v1 = sub_1D917653C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1D8DD2A5C()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DD2A94()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DD2ACC()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DD2B04()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DD2B44()
{
  v1 = sub_1D917653C();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1D8DD2BCC()
{
  MEMORY[0x1DA72CC70](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D8DD2C04()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DD2C88()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DD2CC0()
{

  if (*(v0 + 96))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 72));
  }

  return swift_deallocObject();
}

uint64_t sub_1D8DD2D28()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DD2D60()
{

  return swift_deallocObject();
}

__n128 sub_1D8DD2DD4(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1D8DD2E5C@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_1D90707F4();

  return swift_unknownObjectRetain();
}

uint64_t sub_1D8DD2E98(void *a1)
{
  v1 = swift_unknownObjectRetain();
  sub_1D8D241C8(v1);

  return swift_unknownObjectRelease();
}

uint64_t sub_1D8DD2EE8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D9068470();
  *a1 = result;
  return result;
}

uint64_t sub_1D8DD2F4C()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DD2F84()
{
  MEMORY[0x1DA72CC70](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D8DD2FBC()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DD300C()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DD3084()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DD30C4()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DD310C()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DD314C()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DD3198()
{

  return swift_deallocObject();
}

__n128 sub_1D8DD31F4(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1D8DD3200()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DD3240@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18PodcastsFoundation17StorePurchaseTask_uiDelegate;
  swift_beginAccess();
  return sub_1D90767F8(v3 + v4, a2);
}

uint64_t sub_1D8DD32A0()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DD32D8()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DD3320()
{
  v1 = sub_1D917653C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9AC0, &qword_1D91AD938);
  v6 = *(v5 - 8);
  v7 = (v4 + *(v6 + 80) + 8) & ~*(v6 + 80);

  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_1D8DD3490()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9AC0, &qword_1D91AD938);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = sub_1D917653C();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_1D8DD3680(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 48);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 112);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D8DD373C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 48) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 112);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D8DD3854()
{
  v1 = *(*v0 + 160);

  return v1;
}

uint64_t sub_1D8DD3888()
{
  v1 = *(*v0 + 192);

  return v1;
}

id sub_1D8DD3950@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___MTServerPodcastEpisode_relationships;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_1D8DD3A70(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for ServerTranscript.Attributes.AssetUrls(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D8DD3B1C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for ServerTranscript.Attributes.AssetUrls(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D8DD3BC0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1D8DD3C38(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1D8DD3CB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9F70, qword_1D91B1680);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24) + 80);
    if (v12 >= 2)
    {
      v13 = ((v12 + 2147483646) & 0x7FFFFFFF) - 1;
    }

    else
    {
      v13 = -2;
    }

    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }
}

uint64_t sub_1D8DD3DA0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9F70, qword_1D91B1680);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24) + 80) = a2 + 2;
  }

  return result;
}

uint64_t sub_1D8DD3E6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9F70, qword_1D91B1680);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24) + 80);
    if (v12 >= 2)
    {
      v13 = ((v12 + 2147483646) & 0x7FFFFFFF) - 1;
    }

    else
    {
      v13 = -2;
    }

    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }
}

uint64_t sub_1D8DD3F58(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9F70, qword_1D91B1680);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24) + 80) = a2 + 2;
  }

  return result;
}

uint64_t sub_1D8DD4024()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DD4074(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9F70, qword_1D91B1680);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24) + 80);
    if (v12 >= 2)
    {
      v13 = ((v12 + 2147483646) & 0x7FFFFFFF) - 1;
    }

    else
    {
      v13 = -2;
    }

    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }
}

uint64_t sub_1D8DD4160(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9F70, qword_1D91B1680);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24) + 80) = a2 + 2;
  }

  return result;
}

uint64_t sub_1D8DD422C()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DD4394(uint64_t a1, uint64_t a2)
{

  return sub_1D90A61DC(a1, a2);
}

uint64_t sub_1D8DD43EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9F70, qword_1D91B1680);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 4)
  {
    return v5 - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D8DD4464(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 3);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9F70, qword_1D91B1680);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1D8DD44F4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA1D8, &qword_1D91B3650);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for PlaybackIntent(0);
  v6 = *(*(v5 - 8) + 80);

  (*(v2 + 8))(v0 + v3, v1);
  v7 = v0 + ((v3 + v4 + v6) & ~v6);
  sub_1D8CFEACC(*v7, *(v7 + 8), *(v7 + 16), *(v7 + 24), *(v7 + 32));
  v8 = v7 + *(v5 + 20);
  v9 = type metadata accessor for PodcastsMediaLibrary.MediaItem(0);
  if (!(*(*(v9 - 1) + 48))(v8, 1, v9))
  {

    v10 = v9[12];
    v11 = sub_1D9176C2C();
    v21 = *(v11 - 8);
    v12 = *(v21 + 48);
    if (!v12(v8 + v10, 1, v11))
    {
      (*(v21 + 8))(v8 + v10, v11);
    }

    v13 = v9[18];
    if (!v12(v8 + v13, 1, v11))
    {
      (*(v21 + 8))(v8 + v13, v11);
    }

    v14 = v9[22];
    v15 = sub_1D9176E3C();
    v16 = *(v15 - 8);
    if (!(*(v16 + 48))(v8 + v14, 1, v15))
    {
      (*(v16 + 8))(v8 + v14, v15);
    }

    v17 = v9[38];
    if (!v12(v8 + v17, 1, v11))
    {
      (*(v21 + 8))(v8 + v17, v11);
    }
  }

  v18 = v7 + *(v5 + 24);
  v19 = *(v18 + 40);
  if (v19 != 255)
  {
    sub_1D8CFEACC(*(v18 + 8), *(v18 + 16), *(v18 + 24), *(v18 + 32), v19);
  }

  if (*(v18 + 128) != 2)
  {
    sub_1D90AB0F8(*(v18 + 48), *(v18 + 56), *(v18 + 64), *(v18 + 72), *(v18 + 80), *(v18 + 88), *(v18 + 96), *(v18 + 104), *(v18 + 112));
  }

  return swift_deallocObject();
}

uint64_t sub_1D8DD4980()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D8DD4A04()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DD4A6C()
{
  v1 = sub_1D917734C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 49) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1D8DD4B30()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DD4B78()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DD4BB0()
{

  v1 = *(v0 + 40);
  if (v1 >= 3)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D8DD4C00()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DD4C40()
{

  v1 = *(v0 + 32);
  if (v1 >= 3)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D8DD4C88()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DD4CE4()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DD4E14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 60) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1D8DD4EE4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 32);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 60) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D8DD4FB0()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DD5014()
{
  v1 = type metadata accessor for PodcastsMediaLibrary.MediaItem(0);
  v18 = *(*(v1 - 1) + 80);
  v16 = *(*(v1 - 1) + 64);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA1D8, &qword_1D91B3650);
  v2 = *(v19 - 8);
  v15 = *(v2 + 80);
  v20 = v0;
  v17 = (v18 + 16) & ~v18;
  v3 = v0 + v17;

  v4 = v1[12];
  v5 = sub_1D9176C2C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 48);
  if (!v7(v0 + v17 + v4, 1, v5))
  {
    (*(v6 + 8))(v3 + v4, v5);
  }

  v8 = v1[18];
  if (!v7(v3 + v8, 1, v5))
  {
    (*(v6 + 8))(v3 + v8, v5);
  }

  v9 = v1[22];
  v10 = sub_1D9176E3C();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v3 + v9, 1, v10))
  {
    (*(v11 + 8))(v3 + v9, v10);
  }

  v12 = v1[38];
  if (!v7(v3 + v12, 1, v5))
  {
    (*(v6 + 8))(v3 + v12, v5);
  }

  v13 = (v16 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v20 + ((v13 + v15 + 8) & ~v15), v19);

  return swift_deallocObject();
}

uint64_t sub_1D8DD53E8()
{
  v1 = *(v0 + 16);
  if (v1 >= 7)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D8DD5438()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DD5488()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

id sub_1D8DD54C0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 persistentID];
  *a2 = result;
  return result;
}

uint64_t sub_1D8DD5508()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DD5558()
{

  sub_1D8CFEACC(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72));

  if (*(v0 + 184) != 2)
  {
    sub_1D90AB0F8(*(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 168));
  }

  v1 = *(v0 + 248);
  if (v1 != 255)
  {
    sub_1D8CFEACC(*(v0 + 216), *(v0 + 224), *(v0 + 232), *(v0 + 240), v1);
  }

  return swift_deallocObject();
}

uint64_t sub_1D8DD5628()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DD5678()
{
  sub_1D8CFEACC(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

  if (*(v0 + 160) != 2)
  {
    sub_1D90AB0F8(*(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144));
  }

  v1 = *(v0 + 224);
  if (v1 != 255)
  {
    sub_1D8CFEACC(*(v0 + 192), *(v0 + 200), *(v0 + 208), *(v0 + 216), v1);
  }

  return swift_deallocObject();
}

uint64_t sub_1D8DD5728()
{

  return swift_deallocObject();
}

id sub_1D8DD5780@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 storeTrackId];
  *a2 = result;
  return result;
}

uint64_t sub_1D8DD57D8()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DD5810()
{

  sub_1D8CFEACC(*(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80));

  if (*(v0 + 192) != 2)
  {
    sub_1D90AB0F8(*(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 176));
  }

  v1 = *(v0 + 256);
  if (v1 != 255)
  {
    sub_1D8CFEACC(*(v0 + 224), *(v0 + 232), *(v0 + 240), *(v0 + 248), v1);
  }

  return swift_deallocObject();
}

uint64_t sub_1D8DD58D0()
{

  sub_1D8CFEACC(*(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88));

  if (*(v0 + 200) != 2)
  {
    sub_1D90AB0F8(*(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 176), *(v0 + 184));
  }

  v1 = *(v0 + 264);
  if (v1 != 255)
  {
    sub_1D8CFEACC(*(v0 + 232), *(v0 + 240), *(v0 + 248), *(v0 + 256), v1);
  }

  return swift_deallocObject();
}

uint64_t sub_1D8DD5984()
{
  v1 = type metadata accessor for PodcastsMediaLibrary.MediaItem(0);
  v17 = *(*(v1 - 1) + 80);
  v15 = *(*(v1 - 1) + 64);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA1D8, &qword_1D91B3650);
  v2 = *(v18 - 8);
  v14 = *(v2 + 80);
  v19 = v0;
  v16 = (v17 + 16) & ~v17;
  v3 = v0 + v16;

  v4 = v1[12];
  v5 = sub_1D9176C2C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 48);
  if (!v7(v3 + v4, 1, v5))
  {
    (*(v6 + 8))(v3 + v4, v5);
  }

  v8 = v1[18];
  if (!v7(v3 + v8, 1, v5))
  {
    (*(v6 + 8))(v3 + v8, v5);
  }

  v9 = v1[22];
  v10 = sub_1D9176E3C();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v3 + v9, 1, v10))
  {
    (*(v11 + 8))(v3 + v9, v10);
  }

  v12 = v1[38];
  if (!v7(v3 + v12, 1, v5))
  {
    (*(v6 + 8))(v3 + v12, v5);
  }

  (*(v2 + 8))(v19 + ((v16 + v15 + v14) & ~v14), v18);

  return swift_deallocObject();
}

uint64_t sub_1D8DD5D3C()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DD5D78(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA6C0, &qword_1D91B64E0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 36);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9F70, qword_1D91B1680);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 44);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1D8DD5EB4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA6C0, &qword_1D91B64E0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 36);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9F70, qword_1D91B1680);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 44);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1D8DD5FF0()
{
  v1 = v0;
  v2 = type metadata accessor for PodcastsMediaLibrary.PlaybackQueueContext(0);
  v3 = *(*(v2 - 1) + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(*(v2 - 1) + 64);
  v6 = v1 + v4;

  v7 = v1 + v4 + v2[9];
  v8 = type metadata accessor for PlaybackIntent(0);
  if (!(*(*(v8 - 8) + 48))(v7, 1, v8))
  {
    sub_1D8CFEACC(*v7, *(v7 + 8), *(v7 + 16), *(v7 + 24), *(v7 + 32));
    v9 = v7 + *(v8 + 20);
    v10 = type metadata accessor for PodcastsMediaLibrary.MediaItem(0);
    if (!(*(*(v10 - 1) + 48))(v9, 1, v10))
    {
      v42 = (v3 + 16) & ~v3;
      v44 = v1;

      v11 = v10[12];
      v12 = sub_1D9176C2C();
      v37 = *(v12 - 8);
      v39 = v11;
      v13 = v9 + v11;
      v14 = *(v37 + 48);
      if (!v14(v13, 1, v12))
      {
        (*(v37 + 8))(v9 + v39, v12);
      }

      v40 = v5;

      v15 = v10[18];
      v36 = v14;
      if (!v14(v9 + v15, 1, v12))
      {
        (*(v37 + 8))(v9 + v15, v12);
      }

      v16 = v10[22];
      v17 = sub_1D9176E3C();
      v18 = *(v17 - 8);
      if (!(*(v18 + 48))(v9 + v16, 1, v17))
      {
        (*(v18 + 8))(v9 + v16, v17);
      }

      v19 = v10[38];
      if (!v36(v9 + v19, 1, v12))
      {
        (*(v37 + 8))(v9 + v19, v12);
      }

      v1 = v44;
      v5 = v40;
      v4 = v42;
    }

    v20 = v7 + *(v8 + 24);
    v21 = *(v20 + 40);
    if (v21 != 255)
    {
      sub_1D8CFEACC(*(v20 + 8), *(v20 + 16), *(v20 + 24), *(v20 + 32), v21);
    }

    if (*(v20 + 128) != 2)
    {
      sub_1D90AB0F8(*(v20 + 48), *(v20 + 56), *(v20 + 64), *(v20 + 72), *(v20 + 80), *(v20 + 88), *(v20 + 96), *(v20 + 104), *(v20 + 112));
    }
  }

  v22 = v6 + v2[11];
  v23 = type metadata accessor for PodcastsMediaLibrary.MediaItem(0);
  if (!(*(*(v23 - 1) + 48))(v22, 1, v23))
  {
    v41 = v5;
    v43 = v4;

    v24 = v23[12];
    v25 = sub_1D9176C2C();
    v38 = *(v25 - 8);
    v26 = *(v38 + 48);
    if (!v26(v22 + v24, 1, v25))
    {
      (*(v38 + 8))(v22 + v24, v25);
    }

    v45 = v1;

    v27 = v23[18];
    if (!v26(v22 + v27, 1, v25))
    {
      (*(v38 + 8))(v22 + v27, v25);
    }

    v28 = v23[22];
    v29 = sub_1D9176E3C();
    v30 = *(v29 - 8);
    if (!(*(v30 + 48))(v22 + v28, 1, v29))
    {
      (*(v30 + 8))(v22 + v28, v29);
    }

    v31 = v23[38];
    if (!v26(v22 + v31, 1, v25))
    {
      (*(v38 + 8))(v22 + v31, v25);
    }

    v1 = v45;
    v5 = v41;
    v4 = v43;
  }

  v32 = v6 + v2[17];
  v33 = *(v32 + 32);
  if (v33 != 255)
  {
    sub_1D8CFEACC(*v32, *(v32 + 8), *(v32 + 16), *(v32 + 24), v33);
  }

  v34 = (v4 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;

  return swift_deallocObject();
}

uint64_t sub_1D8DD6870()
{
  v1 = type metadata accessor for PodcastsMediaLibrary.PlaybackQueueContext(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v0 + ((v2 + 16) & ~v2));

  v4 = v3 + v1[9];
  v5 = type metadata accessor for PlaybackIntent(0);
  if (!(*(*(v5 - 8) + 48))(v4, 1, v5))
  {
    sub_1D8CFEACC(*v4, *(v4 + 1), *(v4 + 2), *(v4 + 3), v4[32]);
    v6 = &v4[*(v5 + 20)];
    v7 = type metadata accessor for PodcastsMediaLibrary.MediaItem(0);
    if (!(*(*(v7 - 1) + 48))(v6, 1, v7))
    {

      v33 = v7[12];
      v8 = sub_1D9176C2C();
      v9 = (*(v8 - 8) + 48);
      v30 = *(v8 - 8);
      v31 = *v9;
      if (!(*v9)(&v6[v33], 1, v8))
      {
        (*(v30 + 8))(&v6[v33], v8);
      }

      v10 = v7[18];
      if (!v31(&v6[v10], 1, v8))
      {
        (*(v30 + 8))(&v6[v10], v8);
      }

      v11 = v7[22];
      v12 = sub_1D9176E3C();
      v13 = *(v12 - 8);
      if (!(*(v13 + 48))(&v6[v11], 1, v12))
      {
        (*(v13 + 8))(&v6[v11], v12);
      }

      v14 = v7[38];
      if (!v31(&v6[v14], 1, v8))
      {
        (*(v30 + 8))(&v6[v14], v8);
      }
    }

    v15 = &v4[*(v5 + 24)];
    v16 = v15[40];
    if (v16 != 255)
    {
      sub_1D8CFEACC(*(v15 + 1), *(v15 + 2), *(v15 + 3), *(v15 + 4), v16);
    }

    if (v15[128] != 2)
    {
      sub_1D90AB0F8(*(v15 + 6), *(v15 + 7), *(v15 + 8), *(v15 + 9), *(v15 + 10), *(v15 + 11), *(v15 + 12), *(v15 + 13), v15[112]);
    }
  }

  v17 = v3 + v1[11];
  v18 = type metadata accessor for PodcastsMediaLibrary.MediaItem(0);
  if (!(*(*(v18 - 1) + 48))(v17, 1, v18))
  {

    v19 = v18[12];
    v20 = sub_1D9176C2C();
    v32 = *(v20 - 8);
    v21 = *(v32 + 48);
    if (!v21(&v17[v19], 1, v20))
    {
      (*(v32 + 8))(&v17[v19], v20);
    }

    v22 = v18[18];
    if (!v21(&v17[v22], 1, v20))
    {
      (*(v32 + 8))(&v17[v22], v20);
    }

    v23 = v18[22];
    v24 = sub_1D9176E3C();
    v25 = *(v24 - 8);
    if (!(*(v25 + 48))(&v17[v23], 1, v24))
    {
      (*(v25 + 8))(&v17[v23], v24);
    }

    v26 = v18[38];
    if (!v21(&v17[v26], 1, v20))
    {
      (*(v32 + 8))(&v17[v26], v20);
    }
  }

  v27 = v3 + v1[17];
  v28 = v27[32];
  if (v28 != 255)
  {
    sub_1D8CFEACC(*v27, *(v27 + 1), *(v27 + 2), *(v27 + 3), v28);
  }

  return swift_deallocObject();
}

void *sub_1D8DD70B4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  *(a2 + 8) = v2;
  *(a2 + 32) = 1;
  return result;
}

uint64_t sub_1D8DD70C8()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DD7118()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DD7160()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DD71B0()
{
  (*(*(*(v0 + 16) - 8) + 8))(v0 + ((*(*(*(v0 + 16) - 8) + 80) + 32) & ~*(*(*(v0 + 16) - 8) + 80)));

  return swift_deallocObject();
}

void sub_1D8DD7230(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = -64;
}

uint64_t sub_1D8DD7240()
{
  (*(*(*(v0 + 16) - 8) + 8))(v0 + ((*(*(*(v0 + 16) - 8) + 80) + 32) & ~*(*(*(v0 + 16) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t sub_1D8DD72C0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D8DD72F8()
{
  (*(*(*(v0 + 16) - 8) + 8))(v0 + ((*(*(*(v0 + 16) - 8) + 80) + 32) & ~*(*(*(v0 + 16) - 8) + 80)));

  return swift_deallocObject();
}

__n128 sub_1D8DD738C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1D8DD7398()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DD73D4@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_1D8DB7FB4();

  return swift_unknownObjectRetain();
}

__n128 sub_1D8DD7448(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_1D8DD745C()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DD7494@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 104);
  return swift_unknownObjectRetain();
}

uint64_t sub_1D8DD74E4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D8DD7524@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18PodcastsFoundation28AddingPodcastStateDataSource_delegate;
  swift_beginAccess();
  *a2 = *(v3 + v4);
  return swift_unknownObjectRetain();
}

uint64_t sub_1D8DD7588@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 24);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1D8DD75D8(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 24) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1D8DD7638()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D8DD7678()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D8DD7740()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D8DD7778()
{

  return swift_deallocObject();
}

__n128 sub_1D8DD77C4(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1D8DD77D0()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DD780C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7AE0, &qword_1D91B7E20);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 <= 2)
    {
      v11 = 2;
    }

    else
    {
      v11 = *(a1 + *(a3 + 20));
    }

    v12 = v11 - 2;
    if (v10 >= 2)
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1D8DD78DC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D8DD7914@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 24);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1D8DD7964(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 24) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1D8DD79BC()
{
  v1 = *(type metadata accessor for EyebrowBuilder.ListContext(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    v3 = type metadata accessor for EpisodePlayState(0);
    if (!(*(*(v3 - 8) + 48))(v0 + v2, 1, v3) && swift_getEnumCaseMultiPayload() == 2)
    {
      v4 = sub_1D9176E3C();
      v5 = *(v4 - 8);
      if (!(*(v5 + 48))(v0 + v2, 1, v4))
      {
        (*(v5 + 8))(v0 + v2, v4);
      }
    }
  }

  return swift_deallocObject();
}

uint64_t sub_1D8DD7BF8()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DD7C30()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DD7C68()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D8DD7CA0()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DD7CDC()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DD7D2C()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DD7DA4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D8DD7DDC()
{
  v1 = sub_1D917739C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (((((((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  sub_1D9138248(*(v0 + v4), *(v0 + v4 + 8), *(v0 + v4 + 16));
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D8DD7EE8()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DD7F20()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DD7F68()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DD7FA0()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DD7FE8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D8DD8020()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DD8058()
{
  MEMORY[0x1DA72CC70](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D8DD8098()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DD80D4(void *a1)
{
  sub_1D91791BC();
  sub_1D91788EC();

  return swift_getWitnessTable();
}

uint64_t sub_1D8DD8128(void *a1)
{
  sub_1D91791BC();
  sub_1D91788EC();
  swift_getWitnessTable();
  sub_1D917965C();

  return swift_getWitnessTable();
}

uint64_t sub_1D8DD81BC()
{
  sub_1D91791BC();
  v1 = sub_1D91788CC();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1D8DD827C()
{

  return swift_deallocObject();
}

__n128 sub_1D8DD82F4(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1D8DD8370()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D8DD83A8()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DD8444@<X0>(_BYTE *a1@<X8>)
{
  result = PlaybackSettingsDefaults.enhanceDialogueEnabledGlobalValue.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1D8DD849C()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DD84DC()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1D8DD8514()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DD855C()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DD8594()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1D8DD85F0()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DD8628()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1D8DD8668()
{

  return swift_deallocObject();
}

__n128 sub_1D8DD8704(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_1D8DD8720()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DD8758()
{
  v1 = sub_1D9177EDC();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

double sub_1D8DD8828@<D0>(void *a1@<X8>)
{
  swift_beginAccess();
  result = *&qword_1ECABB648;
  *a1 = qword_1ECABB648;
  return result;
}

uint64_t sub_1D8DD8874(uint64_t *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  qword_1ECABB648 = v1;
  return result;
}

uint64_t sub_1D8DD88C4()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

void sub_1D8DD8904(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1D8CFCC6C(v1);
}

uint64_t sub_1D8DD8954()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1D8DD898C()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DD89C4()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DD89FC()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DD8A3C()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DD8A7C()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DD8AC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9176C2C();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D8DD8B30(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_1D9176C2C();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1D8DD8BB4@<X0>(_BYTE *a1@<X8>)
{
  if (qword_1ECAB3740 != -1)
  {
    v1 = a1;
    result = swift_once();
    a1 = v1;
  }

  *a1 = *(qword_1ECAB20C8 + OBJC_IVAR____TtC18PodcastsFoundation17FutureDateChecker_assertOnFutures);
  return result;
}

char *sub_1D8DD8C20(char *result)
{
  v1 = *result;
  if (qword_1ECAB3740 != -1)
  {
    result = swift_once();
  }

  *(qword_1ECAB20C8 + OBJC_IVAR____TtC18PodcastsFoundation17FutureDateChecker_assertOnFutures) = v1;
  return result;
}

uint64_t sub_1D8DD8CFC()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DD8D34()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DD8D74()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DD8DAC()
{
  if (*v0)
  {
    return 0x6E6572646C696863;
  }

  else
  {
    return 0x746C75736572;
  }
}

uint64_t sub_1D8DD8DE8()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DD8E24()
{

  return swift_deallocObject();
}

uint64_t sub_1D8DD8E6C()
{
  MEMORY[0x1DA72CC70](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D8DD8FA8@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v3 = -769513831 * a2;
  v4 = (qword_1F548A1D0[-769513831 * a2 + 2])();
  qword_1F548A1D0[v3 + 1](a1);
  if (v4 == 16)
  {
    v5 = -42029;
  }

  else
  {
    v5 = -42030;
  }

  if (v4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D8DD9080@<X0>(int a1@<W8>)
{
  v3 = (-21985942 * v1) | a1;
  v4 = (qword_1F548A1D0[v3 - 1])(200);
  return (*(v2 + 8 * (v3 + 2 * (v4 != 0))))();
}

uint64_t sub_1D8DD90EC@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v8 = (*(v5 + 8 * (v6 + a2 * (v4 - 1) + 21985945)))(a1, 0);
  if (v8 == 16)
  {
    v3 = 1537719254;
    goto LABEL_7;
  }

  if (v8 == 12)
  {
LABEL_7:
    (*(v5 + 8 * (v4 + 21985943)))(a1);
    return (1510190423 * v3 + 277669913);
  }

  if (v8)
  {
    v3 = 292433263;
    goto LABEL_7;
  }

  *v2 = a1;
  v3 = 1191165937;
  return (1510190423 * v3 + 277669913);
}

id IMAccessibilityLocalizedNumber(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x1E696AF00] currentThread];
  v3 = [v2 threadDictionary];
  v4 = [v3 objectForKey:IMThreadLocalLocalizedNumberFormatter];

  if (!v4)
  {
    v4 = objc_alloc_init(MEMORY[0x1E696ADA0]);
    [v4 setNumberStyle:1];
    v5 = [MEMORY[0x1E695DF58] currentLocale];
    [v4 setLocale:v5];

    v6 = [MEMORY[0x1E696AF00] currentThread];
    v7 = [v6 threadDictionary];
    [v7 setObject:v4 forKey:IMThreadLocalLocalizedNumberFormatter];
  }

  v8 = [v4 stringFromNumber:v1];

  return v8;
}

uint64_t isRunningUnitTests(uint64_t a1, uint64_t a2)
{
  if (isRunningUnitTests_onceToken != -1)
  {
    isRunningUnitTests_cold_1();
  }

  return isRunningUnitTests_isXCTestLoaded;
}

Class __isRunningUnitTests_block_invoke()
{
  result = NSClassFromString(&cfstr_Xctestcase.isa);
  isRunningUnitTests_isXCTestLoaded = result != 0;
  return result;
}

__CFString *NSPersistentStringFromMTStopReason(uint64_t a1)
{
  if ((a1 - 1) > 0xE)
  {
    return @"none";
  }

  else
  {
    return off_1E8568E70[a1 - 1];
  }
}

uint64_t MTStopReasonFromNSPersistentString(void *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if ([@"complete" isEqualToString:v1])
  {
    v2 = 1;
  }

  else if ([@"playOther" isEqualToString:v1])
  {
    v2 = 2;
  }

  else if ([@"pause" isEqualToString:v1])
  {
    v2 = 3;
  }

  else if ([@"seek" isEqualToString:v1])
  {
    v2 = 4;
  }

  else if ([@"transition" isEqualToString:v1])
  {
    v2 = 5;
  }

  else if ([@"interrupted" isEqualToString:v1])
  {
    v2 = 6;
  }

  else if ([@"background" isEqualToString:v1])
  {
    v2 = 7;
  }

  else if ([@"exit" isEqualToString:v1])
  {
    v2 = 8;
  }

  else if ([@"inactivity" isEqualToString:v1])
  {
    v2 = 9;
  }

  else if ([@"error" isEqualToString:v1])
  {
    v2 = 10;
  }

  else if ([@"failure" isEqualToString:v1])
  {
    v2 = 11;
  }

  else if ([@"buffering" isEqualToString:v1])
  {
    v2 = 12;
  }

  else if ([@"next" isEqualToString:v1])
  {
    v2 = 13;
  }

  else if ([@"markPlayed" isEqualToString:v1])
  {
    v2 = 14;
  }

  else if ([@"markUnplayed" isEqualToString:v1])
  {
    v2 = 15;
  }

  else
  {
    if (([@"none" isEqualToString:v1] & 1) == 0)
    {
      v3 = _MTLogCategoryDefault();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v5 = 138543362;
        v6 = v1;
        _os_log_impl(&dword_1D8CEC000, v3, OS_LOG_TYPE_DEFAULT, "Unable to convert unknown stop reason identifer: %{public}@", &v5, 0xCu);
      }
    }

    v2 = 0;
  }

  return v2;
}

__CFString *NSPersistentStringFromMTPlaybackAdjustmentInitiator(uint64_t a1)
{
  v1 = @"Unknown";
  if (a1 == 2)
  {
    v1 = @"Automatic";
  }

  if (a1 == 1)
  {
    return @"Manual";
  }

  else
  {
    return v1;
  }
}

id NSPersistentStringForMTPlayReason(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = MTPlayReasonToPersistentStringMap_inverted(0);
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a1];
  v4 = [v2 objectForKey:v3];

  if ([v4 length])
  {
    if (v4)
    {
      goto LABEL_3;
    }

    goto LABEL_9;
  }

  v6 = _MTLogCategoryDefault();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v8[0] = 67109120;
    v8[1] = a1;
    _os_log_impl(&dword_1D8CEC000, v6, OS_LOG_TYPE_ERROR, "Invalid MTPlayReason encountered (%d)", v8, 8u);
  }

  if (!v4)
  {
LABEL_9:
    v7 = MTPlayReasonToPersistentStringMap_inverted(0);
    v4 = [v7 objectForKey:&unk_1F54BD550];
  }

LABEL_3:

  return v4;
}

id MTPlayReasonToPersistentStringMap_inverted(int a1)
{
  if (MTPlayReasonToPersistentStringMap_inverted_onceToken != -1)
  {
    MTPlayReasonToPersistentStringMap_inverted_cold_1();
  }

  v2 = &MTPlayReasonToPersistentStringMap_inverted_invertedMap;
  if (!a1)
  {
    v2 = &MTPlayReasonToPersistentStringMap_inverted_map;
  }

  v3 = *v2;

  return v3;
}

uint64_t MTPlayReasonFromPersistentString(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = MTPlayReasonToPersistentStringMap_inverted(1);
  v3 = [v2 objectForKey:v1];

  if (!v3)
  {
    v4 = _MTLogCategoryDefault();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v7 = 138412290;
      v8 = v1;
      _os_log_impl(&dword_1D8CEC000, v4, OS_LOG_TYPE_ERROR, "Invalid MTPlayReason persistent string encountered (%@)", &v7, 0xCu);
    }

    v3 = &unk_1F54BD550;
  }

  v5 = [v3 unsignedIntegerValue];

  return v5;
}

id NSPersistentStringForMTEpisodeContext(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = MTEpisodeContextToPersistentStringMap_inverted(0);
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:a1];
  v4 = [v2 objectForKey:v3];

  if ([v4 length])
  {
    if (v4)
    {
      goto LABEL_3;
    }

    goto LABEL_9;
  }

  v6 = _MTLogCategoryDefault();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v8[0] = 67109120;
    v8[1] = a1;
    _os_log_impl(&dword_1D8CEC000, v6, OS_LOG_TYPE_ERROR, "Invalid MTEpisodeContext encountered (%d)", v8, 8u);
  }

  if (!v4)
  {
LABEL_9:
    v7 = MTEpisodeContextToPersistentStringMap_inverted(0);
    v4 = [v7 objectForKey:&unk_1F54BD568];
  }

LABEL_3:

  return v4;
}

id MTEpisodeContextToPersistentStringMap_inverted(int a1)
{
  if (MTEpisodeContextToPersistentStringMap_inverted_onceToken != -1)
  {
    MTEpisodeContextToPersistentStringMap_inverted_cold_1();
  }

  v2 = &MTEpisodeContextToPersistentStringMap_inverted_invertedMap;
  if (!a1)
  {
    v2 = &MTEpisodeContextToPersistentStringMap_inverted_map;
  }

  v3 = *v2;

  return v3;
}

uint64_t MTEpisodeContextFromPersistentString(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = MTEpisodeContextToPersistentStringMap_inverted(1);
  v3 = [v2 objectForKey:v1];

  if (!v3)
  {
    v4 = _MTLogCategoryDefault();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v7 = 138412290;
      v8 = v1;
      _os_log_impl(&dword_1D8CEC000, v4, OS_LOG_TYPE_ERROR, "Invalid MTEpisodeContext persistent string encountered (%@)", &v7, 0xCu);
    }

    v3 = &unk_1F54BD568;
  }

  v5 = [v3 unsignedIntegerValue];

  return v5;
}

id NSPersistentStringForMTEpisodeContextSortType(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = MTEpisodeContextSortTypeToPersistentStringMap_inverted(0);
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:a1];
  v4 = [v2 objectForKey:v3];

  if ([v4 length])
  {
    if (v4)
    {
      goto LABEL_3;
    }

    goto LABEL_9;
  }

  v6 = _MTLogCategoryDefault();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v8[0] = 67109120;
    v8[1] = a1;
    _os_log_impl(&dword_1D8CEC000, v6, OS_LOG_TYPE_ERROR, "Invalid MTEpisodeContextSortType encountered (%d)", v8, 8u);
  }

  if (!v4)
  {
LABEL_9:
    v7 = MTEpisodeContextSortTypeToPersistentStringMap_inverted(0);
    v4 = [v7 objectForKey:&unk_1F54BD568];
  }

LABEL_3:

  return v4;
}

id MTEpisodeContextSortTypeToPersistentStringMap_inverted(int a1)
{
  if (MTEpisodeContextSortTypeToPersistentStringMap_inverted_onceToken != -1)
  {
    MTEpisodeContextSortTypeToPersistentStringMap_inverted_cold_1();
  }

  v2 = &MTEpisodeContextSortTypeToPersistentStringMap_inverted_invertedMap;
  if (!a1)
  {
    v2 = &MTEpisodeContextSortTypeToPersistentStringMap_inverted_map;
  }

  v3 = *v2;

  return v3;
}

uint64_t MTEpisodeContextSortTypeFromPersistentString(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = MTEpisodeContextSortTypeToPersistentStringMap_inverted(1);
  v3 = [v2 objectForKey:v1];

  if (!v3)
  {
    v4 = _MTLogCategoryDefault();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v7 = 138412290;
      v8 = v1;
      _os_log_impl(&dword_1D8CEC000, v4, OS_LOG_TYPE_ERROR, "Invalid MTEpisodeContextSortType persistent string encountered (%@)", &v7, 0xCu);
    }

    v3 = &unk_1F54BD568;
  }

  v5 = [v3 unsignedIntegerValue];

  return v5;
}

id NSPersistentStringForMTEpisodePriceType(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = MTEpisodePriceTypeToPersistentStringMap_inverted(0);
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:a1];
  v4 = [v2 objectForKey:v3];

  if ([v4 length])
  {
    if (v4)
    {
      goto LABEL_3;
    }

    goto LABEL_9;
  }

  v6 = _MTLogCategoryDefault();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v8[0] = 67109120;
    v8[1] = a1;
    _os_log_impl(&dword_1D8CEC000, v6, OS_LOG_TYPE_ERROR, "Invalid MTEpisodePriceType encountered (%d)", v8, 8u);
  }

  if (!v4)
  {
LABEL_9:
    v7 = MTEpisodeContextSortTypeToPersistentStringMap_inverted(0);
    v4 = [v7 objectForKey:&unk_1F54BD568];
  }

LABEL_3:

  return v4;
}

id NSPersistentStringForMTDisplayType(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = MTDisplayTypeToPersistentStringMap_inverted(0);
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:a1];
  v4 = [v2 objectForKey:v3];

  if (![v4 length])
  {
    v5 = _MTLogCategoryDefault();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7[0] = 67109120;
      v7[1] = a1;
      _os_log_impl(&dword_1D8CEC000, v5, OS_LOG_TYPE_ERROR, "Invalid MTDisplayType encountered (%d)", v7, 8u);
    }
  }

  return v4;
}

void sub_1D8DDBBC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D8DDBD14(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1D8DDC428(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D8DE86B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v18 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1D8DE88BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D8DE8A84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id jsonSerializableValueForCoreFoundationType(void *a1, void *a2)
{
  v33[1] = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if ([v4 isEqualToString:@"SecCertificate"])
  {
    v5 = v4;
    v6 = v5;
    if (v5)
    {
      v32 = @"cfTypeName";
      v33[0] = v5;
      v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:&v32 count:1];
      v8 = [v7 mutableCopy];

      v9 = SecCertificateCopySubjectSummary(v3);
      if (v9)
      {
        [v8 setValue:v9 forKey:@"subjectSummary"];
      }

      emailAddresses = 0;
      v10 = SecCertificateCopyEmailAddresses(v3, &emailAddresses);
      v11 = emailAddresses;
      if (!v10 && emailAddresses)
      {
        v12 = jsonSerializableValueForValue(emailAddresses);
        [v8 setValue:v12 forKey:@"emailAddresses"];
      }

      commonName = 0;
      v13 = SecCertificateCopyCommonName(v3, &commonName);
      v14 = commonName;
      if (!v13 && commonName)
      {
        [v8 setValue:commonName forKey:@"commonName"];
      }

      error = 0;
      v15 = SecCertificateCopySerialNumberData(v3, &error);
      v16 = v15;
      if (!error)
      {
        v17 = jsonSerializableValueForValue(v15);
        [v8 setValue:v17 forKey:@"serialNumberData"];
      }

      v18 = SecCertificateCopyKey(v3);
      v19 = SecKeyCopyExternalRepresentation(v18, &error);
      CFRelease(v18);
      if (!error)
      {
        v20 = jsonSerializableValueForValue(v19);
        [v8 setValue:v20 forKey:@"publicKeyData"];
      }

      v21 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v8];

LABEL_23:
LABEL_25:

      goto LABEL_27;
    }

    goto LABEL_24;
  }

  if ([v4 isEqualToString:@"SecTrust"])
  {
    v22 = v4;
    v6 = v22;
    if (v22)
    {
      v32 = @"cfTypeName";
      v33[0] = v22;
      v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:&v32 count:1];
      v8 = [v23 mutableCopy];

      v24 = SecTrustCopyKey(v3);
      emailAddresses = 0;
      v9 = SecKeyCopyExternalRepresentation(v24, &emailAddresses);
      CFRelease(v24);
      if (!emailAddresses)
      {
        v25 = jsonSerializableValueForValue(v9);
        [v8 setValue:v25 forKey:@"serialNumberData"];
      }

      v26 = SecTrustCopyResult(v3);
      v11 = v26;
      if (v26)
      {
        v27 = jsonSerializableValueForValue(v26);
        [v8 setValue:v27 forKey:@"trustResult"];
      }

      v21 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v8];
      goto LABEL_23;
    }

LABEL_24:
    v21 = 0;
    goto LABEL_25;
  }

  v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Non-serializable type '%@'", v4];
LABEL_27:

  return v21;
}

id IMTimeStamp()
{
  [MEMORY[0x1E696AB78] setDefaultFormatterBehavior:1040];
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  [v0 setDateFormat:@"YYYY-MM-dd HH:mm:ss.SSS"];
  v1 = [MEMORY[0x1E695DF00] date];
  v2 = [v0 stringFromDate:v1];

  return v2;
}

os_log_t _IMStoreLogCategoryDefault()
{
  v0 = os_log_create("com.apple.podcasts.imstoreutil", "Podcasts");

  return v0;
}

os_log_t _MTLogCategoryMediaLibrary()
{
  v0 = os_log_create("com.apple.podcasts", "MediaLibrary");

  return v0;
}

os_log_t _MTLogCategoryDRM()
{
  v0 = os_log_create("com.apple.podcasts", "DRM");

  return v0;
}

os_log_t _MTLogCategoryPlayback()
{
  v0 = os_log_create("com.apple.podcasts", "Playback");

  return v0;
}

os_log_t _MTLogCategoryMediaRemote()
{
  v0 = os_log_create("com.apple.podcasts", "MediaRemote");

  return v0;
}

os_log_t _MTLogCategoryMediaRemoteRouting()
{
  v0 = os_log_create("com.apple.podcasts", "MediaRemoteRouting");

  return v0;
}

os_log_t _MTLogCategoryFeedUpdateIngester()
{
  v0 = os_log_create("com.apple.podcasts", "FeedUpdateIngester");

  return v0;
}

os_log_t _MTLogCategoryArtworkDownload()
{
  v0 = os_log_create("com.apple.podcasts", "ArtworkDownload");

  return v0;
}

os_log_t _MTLogCategoryNotifications()
{
  v0 = os_log_create("com.apple.podcasts", "Notifications");

  return v0;
}

os_log_t _MTLogCategorySiri()
{
  v0 = os_log_create("com.apple.podcasts", "Siri");

  return v0;
}

os_log_t _MTLogCategorySpotlight()
{
  v0 = os_log_create("com.apple.podcasts", "Spotlight");

  return v0;
}

os_log_t _MTLogCategoryCarPlay()
{
  v0 = os_log_create("com.apple.podcasts", "CarPlay");

  return v0;
}

os_log_t _MTLogCategoryBridge()
{
  v0 = os_log_create("com.apple.podcasts", "Bridge");

  return v0;
}

os_log_t _MTLogCategoryUPPSync()
{
  v0 = os_log_create("com.apple.podcasts", "UPPSync");

  return v0;
}

os_log_t _MTLogCategoryAsyncTask()
{
  v0 = os_log_create("com.apple.podcasts", "AsyncTask");

  return v0;
}

os_log_t _MTLogCategoryiTunesMigration()
{
  v0 = os_log_create("com.apple.podcasts", "iTunesMigration");

  return v0;
}

os_log_t _MTLogCategoryMacOSSpecific()
{
  v0 = os_log_create("com.apple.podcasts", "MacOS");

  return v0;
}

os_log_t _MTLogCategoryAppRemoval()
{
  v0 = os_log_create("com.apple.podcasts", "AppRemoval");

  return v0;
}

os_log_t _MTLogCategoryQuickLook()
{
  v0 = os_log_create("com.apple.podcasts", "QuickLook");

  return v0;
}

os_log_t _MTLogCategoryFollowing()
{
  v0 = os_log_create("com.apple.podcasts", "Following");

  return v0;
}

os_log_t _MTLogCategoryFeedUpdateTelemetry()
{
  v0 = os_log_create("com.apple.podcasts", "FUTelemetry");

  return v0;
}

uint64_t _MTDatabaseCreatedNotification(uint64_t a1, void *a2)
{
  v3 = _MTLogCategoryDatabase();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1D8CEC000, v3, OS_LOG_TYPE_DEFAULT, "MTDBExtensionAccess did get database created notification", v5, 2u);
  }

  return [a2 _handleChange];
}

void sub_1D8DF6354(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D8DF6514(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D8DF679C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D8DF7B7C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, __int128 buf)
{
  if (a2 == 1)
  {
    v19 = objc_begin_catch(a1);
    objc_end_catch();
    if (v19)
    {
      v20 = _MTLogCategoryDefault();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v19;
        _os_log_impl(&dword_1D8CEC000, v20, OS_LOG_TYPE_ERROR, "Request for invalid computed property value! %@", &buf, 0xCu);
      }

      JUMPOUT(0x1D8DF7A98);
    }

    JUMPOUT(0x1D8DF7A9CLL);
  }

  _Unwind_Resume(a1);
}

void sub_1D8DF7F58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D8DF81D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D8DF87AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D8DF899C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D8DF8B48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D8DFB2E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D8DFB438(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D8DFB5E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D8DFD014(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v3 = objc_begin_catch(exception_object);
    (*(*(v2 + 48) + 16))();

    objc_end_catch();
    JUMPOUT(0x1D8DFCFE4);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D8E0197C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D8E01B14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t PFMostRestrictiveLimit(uint64_t result, unint64_t a2)
{
  v2 = a2;
  v3 = result;
  v11 = *MEMORY[0x1E69E9840];
  if (result > 5)
  {
    if ((result - 6) < 4)
    {
      if (a2 - 6 > 3)
      {
        if (a2 == 0x100000000)
        {
          v6 = 0x100000000;
        }

        else
        {
          v6 = result;
        }

        if (result - 5 >= a2)
        {
          v7 = a2;
        }

        else
        {
          v7 = result;
        }

        if (a2 - 1 <= 4)
        {
          return v7;
        }

        else
        {
          return v6;
        }
      }

      goto LABEL_15;
    }

    if (result != 0x100000000)
    {
LABEL_30:
      v8 = _MTLogCategoryDownload();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = 134217984;
        v10 = v3;
        _os_log_impl(&dword_1D8CEC000, v8, OS_LOG_TYPE_ERROR, "Attempting to compare an incompatible episode limit: %lld", &v9, 0xCu);
      }

      return v2;
    }

    return 0x100000000;
  }

  if ((result - 1) >= 5)
  {
    if (result)
    {
      goto LABEL_30;
    }

    return v2;
  }

  if (a2 - 1 > 4)
  {
    if (a2 == 0x100000000)
    {
      v4 = 0x100000000;
    }

    else
    {
      v4 = result;
    }

    if (result + 5 <= a2)
    {
      v5 = result;
    }

    else
    {
      v5 = a2;
    }

    if (a2 - 6 <= 3)
    {
      return v5;
    }

    else
    {
      return v4;
    }
  }

LABEL_15:
  if (result >= a2)
  {
    return a2;
  }

  return result;
}

uint64_t PFMostPermissiveLimit(uint64_t a1, unint64_t a2)
{
  if (PFMostRestrictiveLimit(a1, a2) == a1)
  {
    return a2;
  }

  else
  {
    return a1;
  }
}

void sub_1D8E06B20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D8E06EA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D8E071E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D8E075A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location, ...)
{
  va_start(va, location);
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D8E07AF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D8E07DE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D8E08094(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D8E082B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location, ...)
{
  va_start(va, location);
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D8E0871C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location, ...)
{
  va_start(va, location);
  objc_destroyWeak((v20 + 64));
  objc_destroyWeak(&location);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D8E08C30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location, ...)
{
  va_start(va, location);
  objc_destroyWeak((v21 + 64));
  objc_destroyWeak(&location);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D8E091C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D8E0936C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D8E09630(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D8E09884(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D8E09BCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __AppStoreDaemonLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  AppStoreDaemonLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getASDSubscriptionEntitlementsPodcastDidChangeNotificationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AppStoreDaemonLibrary();
  result = dlsym(v2, "ASDSubscriptionEntitlementsPodcastDidChangeNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getASDSubscriptionEntitlementsPodcastDidChangeNotificationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1D8E0E5D4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1D8E0F434(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D8E0F658(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void __ReachabilityCallback(uint64_t a1, uint64_t a2, os_unfair_lock_s *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  if (![objc_msgSend(MEMORY[0x1E698C968] "sharedConfig")])
  {
    goto LABEL_15;
  }

  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = v5;
  if ((a2 & 2) != 0)
  {
    [v5 addObject:@"reachable"];
    if ((a2 & 0x40000) == 0)
    {
LABEL_4:
      if ((a2 & 8) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_18;
    }
  }

  else if ((a2 & 0x40000) == 0)
  {
    goto LABEL_4;
  }

  [v6 addObject:@"wwan"];
  if ((a2 & 8) == 0)
  {
LABEL_5:
    if ((a2 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  [v6 addObject:@"automatic"];
  if ((a2 & 0x20) == 0)
  {
LABEL_6:
    if ((a2 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
  [v6 addObject:@"on-demand"];
  if ((a2 & 8) == 0)
  {
LABEL_7:
    if ((a2 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  [v6 addObject:@"on-traffic"];
  if ((a2 & 4) == 0)
  {
LABEL_8:
    if ((a2 & 0x20000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  [v6 addObject:@"connection-required"];
  if ((a2 & 0x20000) == 0)
  {
LABEL_9:
    if ((a2 & 0x10000) == 0)
    {
      goto LABEL_10;
    }

LABEL_23:
    [v6 addObject:@"local"];
    if ((a2 & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_22:
  [v6 addObject:@"direct"];
  if ((a2 & 0x10000) != 0)
  {
    goto LABEL_23;
  }

LABEL_10:
  if (a2)
  {
LABEL_11:
    [v6 addObject:@"transient"];
  }

LABEL_12:
  v7 = _MTLogCategoryNetwork();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412802;
    v9 = objc_opt_class();
    v10 = 1024;
    v11 = a2;
    v12 = 2112;
    v13 = [v6 componentsJoinedByString:{@", "}];
    _os_log_impl(&dword_1D8CEC000, v7, OS_LOG_TYPE_DEFAULT, "%@: Reachability change: %d (%@)", &v8, 0x1Cu);
  }

LABEL_15:
  os_unfair_lock_lock(a3 + 14);
  [(os_unfair_lock_s *)a3 _reloadNetworkTypeWithReachabilityFlags:a2];
  os_unfair_lock_unlock(a3 + 14);
}

void sub_1D8E12784(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void ReachabilityCallback(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = MEMORY[0x1E696AD88];
  v4 = a3;
  v5 = [v3 defaultCenter];
  [v5 postNotificationName:kReachabilityChangedNotification object:v4];
}

uint64_t MTPlaybackContinuousPlaybackEnabled()
{
  if (+[PFClientUtil isRunningOnHomepod])
  {
    return 1;
  }

  v1 = [MEMORY[0x1E695E000] _applePodcastsFoundationSharedUserDefaults];
  v2 = [v1 BOOLForKey:@"MTContinuousPlaybackEnabled"];

  return v2;
}

uint64_t __Block_byref_object_copy__8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D8E142E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v17 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

__CFString *PFTTMLDictionaryKeyForTimeAttribute(uint64_t a1)
{
  v1 = @"dur";
  if (a1 == 1)
  {
    v1 = @"begin";
  }

  if (a1 == 2)
  {
    return @"end";
  }

  else
  {
    return v1;
  }
}

__CFString *PFTTMLDictionaryKeyForStringAttribute(uint64_t a1)
{
  v1 = @"ttm:agent";
  if (a1 == 1)
  {
    v1 = @"xml:id";
  }

  if (a1 == 2)
  {
    return @"ttm:name";
  }

  else
  {
    return v1;
  }
}

uint64_t PFTTMLTypeForName(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"span"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"ttm:agent"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"ttm:name"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"p"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"body"])
  {
    v2 = 0;
  }

  else if ([v1 isEqualToString:@"div"])
  {
    v2 = 5;
  }

  else
  {
    v2 = 6;
  }

  return v2;
}