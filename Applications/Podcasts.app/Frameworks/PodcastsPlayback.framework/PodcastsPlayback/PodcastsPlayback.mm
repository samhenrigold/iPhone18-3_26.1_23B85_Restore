uint64_t DefaultEpisodeStateDataSource.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

uint64_t DefaultEpisodeStateDataSource.init()()
{
  result = v0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  return result;
}

uint64_t sub_1AE4@<X0>(uint64_t (**a1)()@<X8>)
{
  v2 = sub_2238();
  if (v2)
  {
    v4 = v2;
    v5 = v3;
    v6 = swift_allocObject();
    v3 = v5;
    v7 = v6;
    v2 = v4;
    *(v7 + 16) = v4;
    *(v7 + 24) = v5;
    v8 = sub_26B4;
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  *a1 = v8;
  a1[1] = v7;

  return sub_226C(v2, v3);
}

uint64_t sub_1B78(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_26AC;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_226C(v1, v2);
  return OnDemandLibraryEpisodeStateDataSource.refreshControllerStates.setter(v4, v3);
}

uint64_t OnDemandLibraryEpisodeStateDataSource.refreshControllerStates.getter()
{
  v0 = sub_2238();
  sub_226C(v0, v1);
  return v0;
}

uint64_t OnDemandLibraryEpisodeStateDataSource.refreshControllerStates.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return sub_227C(v5, v6);
}

uint64_t sub_1CE8@<X0>(void *a1@<X8>)
{
  v3 = *(*v1 + 80);
  sub_59744();
  v4 = *(*(v3 - 8) + 56);

  return v4(a1, 0, 1, v3);
}

uint64_t DefaultEpisodeStateDataSource.__deallocating_deinit()
{
  sub_227C(*(v0 + 16), *(v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_1DE8()
{
  v0 = sub_2238();
  sub_226C(v0, v1);
  return v0;
}

uint64_t (*sub_1E44(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = OnDemandLibraryEpisodeStateDataSource.refreshControllerStates.modify(v2);
  return sub_1EB8;
}

void sub_1EB8(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

BOOL sub_1F88(void *a1, uint64_t *a2)
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

void *sub_1FB8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_1FE4@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_20D4(void *a1, uint64_t *a2)
{
  v2 = sub_5A194();
  v4 = v3;
  if (v2 == sub_5A194() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_5A8E4();
  }

  return v7 & 1;
}

uint64_t sub_2168@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_5A174();

  *a2 = v3;
  return result;
}

uint64_t sub_21B0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_5A194();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_21DC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_263C(a1);

  *a2 = v3;
  return result;
}

void *sub_2228@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_226C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_227C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

__n128 sub_22A0(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_2424(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 56))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 48);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_2478(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2 + 1;
    }
  }

  return result;
}

void sub_24DC(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_2590(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MPCPlayerChangeRequestOptions(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_263C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_2674()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_2738@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)(uint64_t a1)@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_26B4;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_226C(v4, v5);
}

uint64_t sub_27CC(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_26AC;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 16);
  v9 = *(v7 + 24);
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  sub_226C(v3, v4);
  return sub_227C(v8, v9);
}

uint64_t sub_2898@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D008, &qword_5BCA8);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v13[-v7];
  v9 = qword_7CFF8;
  swift_beginAccess();
  sub_552C(v1 + v9, v8);
  v10 = sub_59C94();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v8, v10);
  }

  sub_4F7C(v8);
  sub_2A68(v1);
  (*(v11 + 16))(v6, a1, v10);
  (*(v11 + 56))(v6, 0, 1, v10);
  swift_beginAccess();
  sub_559C(v6, v1 + v9);
  return swift_endAccess();
}

uint64_t sub_2A68(uint64_t a1)
{
  sub_4FE4(0, &qword_7D018, OS_os_log_ptr);
  v2 = sub_5A644();
  swift_unknownObjectRetain();

  return OSSignpostID.init(log:object:)(v2, a1);
}

uint64_t OnDemandLibraryEpisodeStateDataSource.__allocating_init(episodeStateRepository:)(uint64_t a1)
{
  v2 = swift_allocObject();
  OnDemandLibraryEpisodeStateDataSource.init(episodeStateRepository:)(a1);
  return v2;
}

char *OnDemandLibraryEpisodeStateDataSource.init(episodeStateRepository:)(uint64_t a1)
{
  v2 = v1;
  v43 = a1;
  v3 = *v1;
  v4 = sub_5A4F4();
  v5 = *(v4 - 8);
  v46 = v4;
  v47 = v5;
  __chkstk_darwin(v4);
  v45 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_5A494();
  __chkstk_darwin(v44);
  v42 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_5A014();
  __chkstk_darwin(v8 - 8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_59A04();
  v37 = v11;
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_4FE4(0, &qword_7DA40, OS_dispatch_queue_ptr);
  *(v1 + 2) = 0;
  *(v1 + 3) = 0;
  v48 = 0;
  v49 = 0xE000000000000000;
  sub_5A704(56);
  v40 = "arDownloadsEnabled";
  v50._object = 0x800000000005E9A0;
  v50._countAndFlagsBits = 0xD000000000000026;
  sub_5A1F4(v50);
  v15 = *(v3 + 80);
  v39 = *(v3 + 88);
  sub_59754();
  v16 = sub_599F4();
  v18 = v17;
  v19 = *(v12 + 8);
  v36 = v12 + 8;
  v38 = v19;
  v19(v14, v11);
  v51._countAndFlagsBits = v16;
  v51._object = v18;
  sub_5A1F4(v51);

  v52._countAndFlagsBits = 0xD000000000000010;
  v52._object = 0x800000000005E9D0;
  sub_5A1F4(v52);
  v31 = v10;
  sub_5A004();
  v48 = _swiftEmptyArrayStorage;
  v34 = sub_4B54();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7CFF0, &qword_5BCA0);
  v35 = sub_5108(&qword_7E920, &qword_7CFF0, &qword_5BCA0, &protocol conformance descriptor for [A]);
  sub_5A694();
  v32 = enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:);
  v20 = *(v47 + 104);
  v47 += 104;
  v20(v45);
  *(v1 + 4) = sub_5A544();
  v48 = 0;
  v49 = 0xE000000000000000;
  sub_5A704(65);
  v53._object = (v40 | 0x8000000000000000);
  v53._countAndFlagsBits = 0xD000000000000026;
  sub_5A1F4(v53);
  sub_59754();
  v21 = sub_599F4();
  v23 = v22;
  v38(v14, v37);
  v54._countAndFlagsBits = v21;
  v54._object = v23;
  sub_5A1F4(v54);

  v55._countAndFlagsBits = 0xD000000000000019;
  v55._object = 0x800000000005E9F0;
  sub_5A1F4(v55);
  sub_5A004();
  v48 = _swiftEmptyArrayStorage;
  sub_5A694();
  (v20)(v45, v32, v46);
  *(v1 + 5) = sub_5A544();
  swift_getTupleTypeMetadata2();
  v24 = sub_5A2E4();
  v25 = sub_4F28();
  v26 = sub_4C3C(v24, &type metadata for EpisodeStateIdentifier, v15, v25);

  *(v2 + 6) = v26;
  *(v2 + 7) = 0;
  v27 = qword_7CFF8;
  v28 = sub_59C94();
  (*(*(v28 - 8) + 56))(&v2[v27], 1, 1, v28);
  v29 = &v2[qword_7D000];
  *v29 = "OnDemandLibraryEpisodeStateDataSource.startObserving";
  *(v29 + 1) = 52;
  v29[16] = 2;
  *(v2 + 8) = v43;
  return v2;
}

uint64_t OnDemandLibraryEpisodeStateDataSource.deinit()
{
  sub_227C(*(v0 + 16), *(v0 + 24));

  sub_4F7C(v0 + qword_7CFF8);
  return v0;
}

uint64_t OnDemandLibraryEpisodeStateDataSource.__deallocating_deinit()
{
  OnDemandLibraryEpisodeStateDataSource.deinit();

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall OnDemandLibraryEpisodeStateDataSource.startObservingChanges()()
{
  v1 = v0;
  v2 = *v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D010, &unk_5BCB0);
  v4 = *(v3 - 8);
  v54 = v3;
  v55 = v4;
  __chkstk_darwin(v3);
  v50 = &v41 - v5;
  v6 = sub_59A04();
  v43 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_59C94();
  v10 = *(v9 - 8);
  v57 = v9;
  v58 = v10;
  __chkstk_darwin(v9);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(v46) = sub_5A5B4();
  v53 = sub_4FE4(0, &qword_7D018, OS_os_log_ptr);
  v42 = sub_5A644();
  v14 = *(v0 + qword_7D000);
  v47 = *(v0 + qword_7D000 + 8);
  v13 = v47;
  v48 = v14;
  v56 = *(v0 + qword_7D000 + 16);
  sub_2898(v12);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D020, &qword_5DFA0);
  v15 = swift_allocObject();
  v51 = xmmword_5BC80;
  *(v15 + 16) = xmmword_5BC80;
  v16 = *(v2 + 80);
  v41 = *(v2 + 88);
  sub_59754();
  v17 = v6;
  v44 = v6;
  v18 = sub_5A1B4();
  v20 = v19;
  *(v15 + 56) = &type metadata for String;
  v49 = sub_502C();
  *(v15 + 64) = v49;
  *(v15 + 32) = v18;
  *(v15 + 40) = v20;
  v39 = 2;
  v21 = v42;
  v45 = v12;
  sub_59C74(v46, &dword_0, v42, v14, v13, v56, v12, "episodeStateDomain = %{public}s", 31, v39, v15);

  v22 = *(v58 + 8);
  v58 += 8;
  v46 = v22;
  v22(v12, v57);
  v23 = v41;
  sub_59754();
  v24 = sub_59BD4();
  (*(v43 + 8))(v8, v17);
  v59 = v24;
  v25 = swift_allocObject();
  swift_weakInit();
  v26 = swift_allocObject();
  v26[2] = v16;
  v26[3] = v23;
  v26[4] = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D030, &qword_5BCC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D038, &qword_5BCC8);
  sub_5108(&qword_7D040, &qword_7D030, &qword_5BCC0, &protocol conformance descriptor for AnyPublisher<A, B>);
  v27 = v50;
  sub_59EC4();

  v28 = swift_allocObject();
  swift_weakInit();
  v29 = swift_allocObject();
  v29[2] = v16;
  v29[3] = v23;
  v29[4] = v28;
  sub_5108(qword_7D048, &qword_7D010, &unk_5BCB0, &protocol conformance descriptor for Publishers.Map<A, B>);
  v30 = v54;
  v31 = sub_59F84();

  (*(v55 + 8))(v27, v30);
  v1[7] = v31;

  v32 = sub_5A5A4();
  v33 = sub_5A644();
  v34 = v45;
  sub_2898(v45);
  v35 = swift_allocObject();
  *(v35 + 16) = v51;
  sub_59754();
  v36 = sub_5A1B4();
  v37 = v49;
  *(v35 + 56) = &type metadata for String;
  *(v35 + 64) = v37;
  *(v35 + 32) = v36;
  *(v35 + 40) = v38;
  LOBYTE(v40) = 2;
  sub_59C74(v32, &dword_0, v33, v48, v47, v56, v34, "episodeStateDomain = %{public}s", 31, v40, v35);

  v46(v34, v57);
}

void (*sub_37D0(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = OnDemandLibraryEpisodeStateDataSource.refreshControllerStates.modify(v2);
  return sub_1EB8;
}

uint64_t OnDemandLibraryEpisodeStateDataSource.state(for:)@<X0>(uint64_t a4@<X8>)
{
  v6 = *(*v4 + 80);
  sub_5A664();
  sub_5A524();
  result = (*(*(v6 - 8) + 48))(a4, 1, v6);
  if (result == 1)
  {
    return sub_59BC4();
  }

  return result;
}

uint64_t sub_3964@<X0>(uint64_t a1@<X0>, void *a3@<X8>)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = sub_39E8(a1);
  }

  else
  {
    v6 = _swiftEmptyArrayStorage;
  }

  *a3 = v6;
  return result;
}

void *sub_39E8(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = sub_59B34();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v18 = _swiftEmptyArrayStorage;
  v8 = v2[5];
  v9 = swift_allocObject();
  swift_weakInit();
  (*(v6 + 16))(&aBlock[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
  v10 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = *(v4 + 80);
  *(v11 + 3) = *(v4 + 88);
  *(v11 + 4) = v9;
  (*(v6 + 32))(&v11[v10], &aBlock[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  *&v11[(v7 + v10 + 7) & 0xFFFFFFFFFFFFFFF8] = &v18;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_5430;
  *(v12 + 24) = v11;
  aBlock[4] = sub_54EC;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_4948;
  aBlock[3] = &block_descriptor;
  v13 = _Block_copy(aBlock);

  dispatch_sync(v8, v13);
  _Block_release(v13);
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    __break(1u);
  }

  else
  {
    v15 = v18;

    return v15;
  }

  return result;
}

uint64_t sub_3C84(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    swift_beginAccess();
    v5 = *(v4 + 16);
    if (v5)
    {
      v6 = *(v4 + 24);

      v5(v2);
      sub_227C(v5, v6);
    }
  }

  return result;
}

uint64_t sub_3D24(uint64_t *a1, uint64_t a2, uint64_t a3, char a4)
{
  swift_beginAccess();
  sub_5340(a2, a3, a4 & 1);
  sub_4F28();
  sub_5A134();
  sub_5350(a2, a3, a4 & 1);
  return swift_endAccess();
}

uint64_t sub_3E00(uint64_t a1, uint64_t a2, char **a3, uint64_t a4, uint64_t a5)
{
  v99 = a5;
  v104 = a3;
  v7 = *(a4 - 8);
  __chkstk_darwin(a1);
  v94 = v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_5A664();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v10 = *(TupleTypeMetadata2 - 8);
  v11 = __chkstk_darwin(TupleTypeMetadata2);
  v13 = v87 - v12;
  v119 = *(v9 - 8);
  v14 = __chkstk_darwin(v11);
  v16 = v87 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v19 = v87 - v18;
  v20 = __chkstk_darwin(v17);
  v22 = v87 - v21;
  __chkstk_darwin(v20);
  v101 = v87 - v23;
  v92 = sub_599C4();
  v93 = *(v92 - 8);
  __chkstk_darwin(v92);
  v91 = v87 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v116 = result;
  if (result)
  {
    v112 = v10;
    v113 = v7;
    v117 = v22;
    v110 = v19;
    v100 = v16;
    v105 = v13;
    v120 = v9;
    v114 = a2;
    v115 = a4;
    v118 = sub_59B04();
    v26 = *(v118 + 16);
    if (v26)
    {
      v27 = (v119 + 8);
      v28 = (v118 + 48);
      do
      {
        v29 = *(v28 - 1);
        v31 = *v28;
        v122 = *(v28 - 2);
        v30 = v122;
        v123 = v29;
        v124 = v31;
        swift_beginAccess();
        sub_5340(v30, v29, v31);
        sub_4F28();
        sub_5A124();
        v32 = v101;
        sub_5A114();
        swift_endAccess();
        (*v27)(v32, v120);
        v33 = v104;
        v34 = *v104;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v33 = v34;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v34 = sub_1C1C0(0, *(v34 + 2) + 1, 1, v34);
          *v104 = v34;
        }

        v37 = *(v34 + 2);
        v36 = *(v34 + 3);
        if (v37 >= v36 >> 1)
        {
          v34 = sub_1C1C0((v36 > 1), v37 + 1, 1, v34);
          *v104 = v34;
        }

        *(v34 + 2) = v37 + 1;
        v38 = &v34[24 * v37];
        *(v38 + 4) = v30;
        *(v38 + 5) = v29;
        v38[48] = v31;
        v28 += 24;
        --v26;
      }

      while (v26);
    }

    v39 = sub_59B24();
    v40 = sub_59B14();
    v121 = v39;
    result = sub_5083C(v40);
    v41 = v121;
    v89 = *(v121 + 16);
    if (v89)
    {
      v42 = 0;
      v88 = v121 + ((*(v93 + 80) + 32) & ~*(v93 + 80));
      v87[2] = v93 + 16;
      v87[1] = v93 + 8;
      v43 = (v119 + 16);
      v102 = (v113 + 48);
      v90 = (v113 + 32);
      v98 = (v113 + 8);
      v109 = (v119 + 8);
      v97 = (v112 + 8);
      v44 = v115;
      v45 = v120;
      v46 = v117;
      v103 = (v119 + 16);
      v87[0] = v121;
      do
      {
        if (v42 >= *(v41 + 16))
        {
LABEL_39:
          __break(1u);
          return result;
        }

        v47 = v93;
        v48 = v91;
        v49 = v92;
        (*(v93 + 16))(v91, v88 + *(v93 + 72) * v42, v92);
        v95 = v42 + 1;
        sub_59764();
        v50 = sub_599B4();
        result = (*(v47 + 8))(v48, v49);
        v51 = 0;
        v53 = v50 + 56;
        v52 = *(v50 + 56);
        v108 = v50;
        v54 = 1 << *(v50 + 32);
        if (v54 < 64)
        {
          v55 = ~(-1 << v54);
        }

        else
        {
          v55 = -1;
        }

        v56 = v55 & v52;
        v57 = (v54 + 63) >> 6;
        v107 = v50 + 56;
        v106 = v57;
        while (v56)
        {
LABEL_22:
          v59 = __clz(__rbit64(v56));
          v56 &= v56 - 1;
          v60 = *(v108 + 48) + 24 * (v59 | (v51 << 6));
          v62 = *v60;
          v61 = *(v60 + 8);
          v63 = *(v60 + 16);
          swift_beginAccess();
          v122 = v62;
          v123 = v61;
          v124 = v63;
          sub_5340(v62, v61, v63);
          sub_5340(v62, v61, v63);
          v64 = sub_4F28();
          v65 = v110;
          v113 = v64;
          sub_5A134();
          v118 = v62;
          v119 = v61;
          LODWORD(v114) = v63;
          sub_5350(v62, v61, v63);
          swift_endAccess();
          v66 = *(TupleTypeMetadata2 + 48);
          v67 = v44;
          v68 = *v43;
          v69 = v105;
          (*v43)(v105, v65, v45);
          v68(&v69[v66], v117, v45);
          v70 = *v102;
          v71 = (*v102)(v69, 1, v67);
          v112 = v68;
          if (v71 == 1)
          {
            v72 = *v109;
            (*v109)(v65, v120);
            if (v70(&v69[v66], 1, v67) == 1)
            {
              sub_5350(v118, v119, v114);
              v45 = v120;
              result = (v72)(v69, v120);
              goto LABEL_35;
            }

            goto LABEL_27;
          }

          v73 = v100;
          v68(v100, v69, v120);
          if (v70(&v69[v66], 1, v67) == 1)
          {
            (*v109)(v110, v120);
            (*v98)(v73, v67);
LABEL_27:
            (*v97)(v69, TupleTypeMetadata2);
            v45 = v120;
            v74 = v114;
            goto LABEL_28;
          }

          v83 = v94;
          (*v90)(v94, &v69[v66], v67);
          v96 = sub_5A164();
          v84 = *v98;
          (*v98)(v83, v67);
          v85 = *v109;
          (*v109)(v110, v120);
          v84(v73, v67);
          v86 = v120;
          v85(v69, v120);
          v45 = v86;
          v74 = v114;
          if (v96)
          {
            result = sub_5350(v118, v119, v114);
LABEL_35:
            v44 = v115;
            v46 = v117;
            v43 = v103;
            v53 = v107;
            v57 = v106;
          }

          else
          {
LABEL_28:
            v46 = v117;
            v43 = v103;
            (v112)(v101, v117, v45);
            v76 = v118;
            v75 = v119;
            v122 = v118;
            v123 = v119;
            v124 = v74;
            swift_beginAccess();
            sub_5340(v76, v75, v74);
            sub_5A124();
            sub_5A144();
            swift_endAccess();
            v77 = v104;
            v78 = *v104;
            result = swift_isUniquelyReferenced_nonNull_native();
            *v77 = v78;
            if ((result & 1) == 0)
            {
              result = sub_1C1C0(0, *(v78 + 16) + 1, 1, v78);
              v78 = result;
              *v104 = result;
            }

            v80 = *(v78 + 16);
            v79 = *(v78 + 24);
            v53 = v107;
            if (v80 >= v79 >> 1)
            {
              result = sub_1C1C0((v79 > 1), v80 + 1, 1, v78);
              v78 = result;
              *v104 = result;
            }

            *(v78 + 16) = v80 + 1;
            v81 = v78 + 24 * v80;
            v82 = v119;
            *(v81 + 32) = v118;
            *(v81 + 40) = v82;
            *(v81 + 48) = v74;
            v44 = v115;
            v57 = v106;
          }
        }

        while (1)
        {
          v58 = v51 + 1;
          if (__OFADD__(v51, 1))
          {
            __break(1u);
            goto LABEL_39;
          }

          if (v58 >= v57)
          {
            break;
          }

          v56 = *(v53 + 8 * v58);
          ++v51;
          if (v56)
          {
            v51 = v58;
            goto LABEL_22;
          }
        }

        result = (*v109)(v46, v45);
        v42 = v95;
        v41 = v87[0];
      }

      while (v95 != v89);
    }
  }

  return result;
}

unint64_t sub_4970(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_5A154();

  return sub_49CC(a1, v6, a2, a3);
}

unint64_t sub_49CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21[1] = a1;
  v21[2] = a4;
  __chkstk_darwin(a1);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v4;
  v9 = -1 << *(v4 + 32);
  v11 = v10 & ~v9;
  v21[0] = v4 + 64;
  if ((*(v4 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v9;
    v15 = *(v6 + 16);
    v13 = v6 + 16;
    v14 = v15;
    v16 = *(v13 + 56);
    v17 = (v13 - 8);
    do
    {
      v18 = v13;
      v14(v8, *(v22 + 48) + v16 * v11, a3);
      v19 = sub_5A164();
      (*v17)(v8, a3);
      if (v19)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      v13 = v18;
    }

    while (((*(v21[0] + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

unint64_t sub_4B54()
{
  result = qword_7E910;
  if (!qword_7E910)
  {
    sub_5A494();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7E910);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_4C3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(TupleTypeMetadata2);
  v12 = v23 - v11;
  if (sub_5A314())
  {
    sub_5A864();
    v13 = sub_5A854();
  }

  else
  {
    v13 = &_swiftEmptyDictionarySingleton;
  }

  result = sub_5A324();
  if (result)
  {
    if (result >= 1)
    {
      v23[0] = v10;
      v27 = a4;
      v15 = 0;
      v16 = *(TupleTypeMetadata2 + 48);
      v25 = a3;
      v26 = (v9 + 16);
      v23[2] = a2 - 8;
      v24 = v16;
      v23[1] = a3 - 8;
      while (1)
      {
        v17 = result;
        if (sub_5A2F4())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = sub_5A714();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_4970(v12, a2, v27);
        if (v18)
        {
          break;
        }

        v19 = result;
        *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v13[6] + *(*(a2 - 8) + 72) * result, v12, a2);
        result = (*(*(v25 - 8) + 32))(v13[7] + *(*(v25 - 8) + 72) * v19, &v12[v24]);
        v20 = v13[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_17;
        }

        ++v15;
        v13[2] = v22;
        result = v17;
        if (v17 == v15)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v13;
  }

  return result;
}

unint64_t sub_4F28()
{
  result = qword_7F630;
  if (!qword_7F630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7F630);
  }

  return result;
}

uint64_t sub_4F7C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D008, &qword_5BCA8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_4FE4(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_502C()
{
  result = qword_7D028;
  if (!qword_7D028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7D028);
  }

  return result;
}

uint64_t sub_5080()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_50B8()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_5108(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

__n128 sub_5188(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

void sub_5194(uint64_t a1)
{
  sub_52B0(319);
  if (v1 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

void sub_52B0(uint64_t a1)
{
  if (!qword_7D0D0)
  {
    sub_59C94();
    v1 = sub_5A664();
    if (!v2)
    {
      atomic_store(v1, &qword_7D0D0);
    }
  }
}

uint64_t sub_5308()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_5340(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_5350(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_5360()
{
  v1 = sub_59B34();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_5430()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = *(sub_59B34() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = *(v0 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = v0[4];

  return sub_3E00(v6, v0 + v4, v5, v1, v2);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_552C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D008, &qword_5BCA8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_559C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D008, &qword_5BCA8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_5614@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  swift_beginAccess();
  v10 = *(a1 + 48);
  if (*(v10 + 16) && (v11 = sub_56504(a2, a3, a4 & 1), (v12 & 1) != 0))
  {
    v13 = v11;
    v14 = *(v10 + 56);
    v15 = sub_59984();
    v16 = *(v15 - 8);
    sub_5B84(v14 + *(v16 + 72) * v13, a5);
    (*(v16 + 56))(a5, 0, 1, v15);
  }

  else
  {
    v17 = sub_59984();
    (*(*(v17 - 8) + 56))(a5, 1, 1, v17);
  }

  return swift_endAccess();
}

uint64_t OnDemandLibraryEpisodeStateDataSource<>.estimatedPlayState(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v9 = sub_59D14();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v23[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7F590, "v4");
  v14 = __chkstk_darwin(v13);
  v16 = &v23[-v15];
  if (*(v4 + 56))
  {
    __chkstk_darwin(v14);
    *&v23[-32] = v4;
    *&v23[-24] = a1;
    *&v23[-16] = a2;
    v23[-8] = a3 & 1;
    sub_5A524();
    v17 = sub_59984();
    if ((*(*(v17 - 8) + 48))(v16, 1, v17) == 1)
    {
      sub_59BC4();
    }

    return sub_5B14(v16, a4);
  }

  else
  {
    sub_5A30();
    sub_5A654();
    v19 = sub_5A454();
    v20 = sub_59D04();
    if (os_log_type_enabled(v20, v19))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_0, v20, v19, "You are using an instance of OnDemandLibraryEpisodeStateDataSource that never received startObservingChanges()!! This means estimatedPlayState(for:) will never return any state at all, just nils. This is not the way this was supposed to be used. You should be using the same shared instance of OnDemandLibraryEpisodeStateDataSource than the FSM system is using.", v21, 2u);
    }

    (*(v10 + 8))(v12, v9);
    v22 = sub_59984();
    return (*(*(v22 - 8) + 56))(a4, 1, 1, v22);
  }
}

unint64_t sub_5A30()
{
  result = qword_7D018;
  if (!qword_7D018)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_7D018);
  }

  return result;
}

uint64_t sub_5AA4(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_5B14(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7F590, "v4");
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_5B84(uint64_t a1, uint64_t a2)
{
  v4 = sub_59984();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t MediaIdentifier.firstItemMatchesEpisode(_:)(void *a1)
{
  v3 = sub_59944();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (!a1)
  {
    goto LABEL_3;
  }

  (*(v4 + 16))(v6, v1, v3);
  v7 = (*(v4 + 88))(v6, v3);
  if (v7 == enum case for MediaIdentifier.podcast(_:))
  {
    goto LABEL_3;
  }

  if (v7 != enum case for MediaIdentifier.episodes(_:))
  {
    if (v7 == enum case for MediaIdentifier.localEpisodes(_:))
    {
      (*(v4 + 96))(v6, v3);
      v12 = *v6;
      if (*(*v6 + 16))
      {
        v14 = *(v12 + 32);
        v13 = *(v12 + 40);
      }

      else
      {
        v14 = 0;
        v13 = 0;
      }

      v30 = a1;

      v23 = v30;
      v31 = [v23 identifiers];
      v32 = [v31 library];

      if (v32)
      {
        v33 = [v32 databaseID];
        swift_unknownObjectRelease();
        v34 = sub_5A194();
        v36 = v35;

        if (!v13)
        {

          if (!v36)
          {
            goto LABEL_50;
          }

          goto LABEL_47;
        }

        if (v36)
        {
          if (v14 == v34 && v13 == v36)
          {
LABEL_37:

LABEL_40:

LABEL_50:
            v8 = 1;
            return v8 & 1;
          }

LABEL_48:
          v8 = sub_5A8E4();

          return v8 & 1;
        }

        goto LABEL_39;
      }

      goto LABEL_38;
    }

    if (v7 != enum case for MediaIdentifier.localPodcast(_:))
    {
      if (v7 == enum case for MediaIdentifier.station(_:))
      {
        (*(v4 + 96))(v6, v3);
        v21 = v6[2];
        v13 = v6[3];
        v22 = a1;

        v23 = v22;
        v24 = [v23 identifiers];
        v25 = [v24 library];

        if (v25)
        {
          v26 = [v25 databaseID];
          swift_unknownObjectRelease();
          v27 = sub_5A194();
          v29 = v28;

          if (!v13)
          {

            if (!v29)
            {
              goto LABEL_50;
            }

            goto LABEL_47;
          }

          if (v29)
          {
            if (v21 == v27 && v13 == v29)
            {
              goto LABEL_37;
            }

            goto LABEL_48;
          }

LABEL_39:

LABEL_47:

          goto LABEL_3;
        }

LABEL_38:

        if (!v13)
        {
          goto LABEL_40;
        }

        goto LABEL_39;
      }

      if (v7 != enum case for MediaIdentifier.snapshot(_:) && v7 != enum case for MediaIdentifier.mediaQuery(_:) && v7 != enum case for MediaIdentifier.universalEpisodeIdentifiers(_:) && v7 == enum case for MediaIdentifier.library(_:))
      {
        goto LABEL_3;
      }
    }

    (*(v4 + 8))(v6, v3);
LABEL_3:
    v8 = 0;
    return v8 & 1;
  }

  (*(v4 + 96))(v6, v3);
  v10 = *(*v6 + 16);
  if (v10)
  {
    v11 = *(*v6 + 32);
  }

  else
  {
    v11 = 0;
  }

  v15 = a1;

  v16 = v15;
  v17 = [v16 identifiers];
  v18 = [v17 universalStore];

  v8 = v18 == 0;
  if (v18)
  {
    [v18 adamID];
    swift_unknownObjectRelease();
    v19 = sub_59C44();
  }

  else
  {
    v19 = 0;
  }

  if (v10)
  {
    if (v18)
    {
      v20 = v11 == v19;
    }

    else
    {
      v20 = 0;
    }

    v8 = v20;
  }

  return v8 & 1;
}

id Optional<A>.isSystemRoute.getter(void *a1)
{
  if (a1)
  {
    return [a1 isDeviceRoute];
  }

  else
  {
    return &dword_0 + 1;
  }
}

unint64_t MPCPlayerResponse.nextChapter.getter()
{
  result = MPCPlayerResponse.remainingChapters.getter();
  if (!result)
  {
    return result;
  }

  v1 = result & 0xFFFFFFFFFFFFFF8;
  if (result >> 62)
  {
    v4 = result;
    v5 = sub_5A814();
    result = v4;
    if (v5)
    {
      goto LABEL_4;
    }

LABEL_9:

    return 0;
  }

  if (!*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_9;
  }

LABEL_4:
  if ((result & 0xC000000000000001) != 0)
  {
    v2 = sub_5A724();
    goto LABEL_7;
  }

  if (*(v1 + 16))
  {
    v2 = *(result + 32);
LABEL_7:
    v3 = v2;

    return v3;
  }

  __break(1u);
  return result;
}

unint64_t MPCPlayerResponse.previousChapter.getter()
{
  result = MPCPlayerResponse.previousChapters.getter();
  if (!result)
  {
    return result;
  }

  v1 = result & 0xFFFFFFFFFFFFFF8;
  if (!(result >> 62))
  {
    v2 = *(&dword_10 + (result & 0xFFFFFFFFFFFFFF8));
    if (v2)
    {
      goto LABEL_4;
    }

LABEL_11:

    return 0;
  }

  v7 = result;
  v2 = sub_5A814();
  result = v7;
  if (!v2)
  {
    goto LABEL_11;
  }

LABEL_4:
  v3 = __OFSUB__(v2, 1);
  v4 = v2 - 1;
  if (v3)
  {
    __break(1u);
    goto LABEL_14;
  }

  if ((result & 0xC000000000000001) != 0)
  {
LABEL_14:
    v5 = sub_5A724();
    goto LABEL_9;
  }

  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v4 < *(v1 + 16))
  {
    v5 = *(result + 8 * v4 + 32);
LABEL_9:
    v6 = v5;

    return v6;
  }

  __break(1u);
  return result;
}

void *sub_62C0(uint64_t (*a1)(uint64_t, double))
{
  v3 = [v1 tracklist];
  v4 = [v3 playingItem];

  if (!v4)
  {
    return 0;
  }

  [v4 duration];

  sub_594E4();
  v6 = v16 + (v5 - v14) * v17;
  if (v6 >= v15)
  {
    v7 = v15;
  }

  else
  {
    v7 = v6;
  }

  result = MPCPlayerResponse.currentItem.getter();
  if (result)
  {
    v9 = result;
    v10 = [result chapters];
    if (v10)
    {
      v11 = v10;
      sub_63F4();
      v12 = sub_5A294();

      v13 = a1(v12, fmax(v7, 0.0));

      return v13;
    }

    return 0;
  }

  return result;
}

unint64_t sub_63F4()
{
  result = qword_7E390;
  if (!qword_7E390)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_7E390);
  }

  return result;
}

void *sub_6440(unint64_t a1, double a2)
{
  if (a1 >> 62)
  {
LABEL_17:
    v4 = sub_5A814();
    if (v4)
    {
LABEL_3:
      v5 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v6 = sub_5A724();
        }

        else
        {
          if (v5 >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_16;
          }

          v6 = *(a1 + 8 * v5 + 32);
        }

        v7 = v6;
        v8 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          __break(1u);
LABEL_16:
          __break(1u);
          goto LABEL_17;
        }

        [v6 startTime];
        if (v9 <= a2)
        {
        }

        else
        {
          sub_5A764();
          sub_5A784();
          sub_5A794();
          sub_5A774();
        }

        ++v5;
      }

      while (v8 != v4);
      if ((_swiftEmptyArrayStorage & 0x8000000000000000) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_22;
    }
  }

  else
  {
    v4 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    if (v4)
    {
      goto LABEL_3;
    }
  }

  if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0)
  {
LABEL_22:
    sub_63F4();

    v10 = sub_5A804();

    goto LABEL_21;
  }

LABEL_19:
  if ((_swiftEmptyArrayStorage & 0x4000000000000000) != 0)
  {
    goto LABEL_22;
  }

  sub_5A8F4();
  sub_63F4();
  v10 = _swiftEmptyArrayStorage;
LABEL_21:

  return v10;
}

void *sub_65E8(unint64_t a1, double a2)
{
  if (a1 >> 62)
  {
LABEL_17:
    v4 = sub_5A814();
    if (v4)
    {
LABEL_3:
      v5 = 0;
      v6 = &off_7B000;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v7 = sub_5A724();
        }

        else
        {
          if (v5 >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_16;
          }

          v7 = *(a1 + 8 * v5 + 32);
        }

        v8 = v7;
        v9 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          __break(1u);
LABEL_16:
          __break(1u);
          goto LABEL_17;
        }

        [v7 v6[360]];
        v11 = v10;
        [v8 duration];
        if (v11 + v12 > a2)
        {
        }

        else
        {
          sub_5A764();
          sub_5A784();
          sub_5A794();
          sub_5A774();
          v6 = &off_7B000;
        }

        ++v5;
      }

      while (v9 != v4);
      if ((_swiftEmptyArrayStorage & 0x8000000000000000) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_22;
    }
  }

  else
  {
    v4 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    if (v4)
    {
      goto LABEL_3;
    }
  }

  if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0)
  {
LABEL_22:
    sub_63F4();

    v13 = sub_5A804();

    goto LABEL_21;
  }

LABEL_19:
  if ((_swiftEmptyArrayStorage & 0x4000000000000000) != 0)
  {
    goto LABEL_22;
  }

  sub_5A8F4();
  sub_63F4();
  v13 = _swiftEmptyArrayStorage;
LABEL_21:

  return v13;
}

id MPCPlayerResponse.currentChapter.getter()
{
  v1 = [v0 tracklist];
  v2 = [v1 playingItem];

  if (!v2)
  {
    return 0;
  }

  [v2 duration];

  sub_594E4();
  v4 = v13 + (v3 - v11) * v14;
  if (v4 >= v12)
  {
    v5 = v12;
  }

  else
  {
    v5 = v4;
  }

  result = MPCPlayerResponse.currentItem.getter();
  if (result)
  {
    v7 = result;
    v8 = [result chapters];
    if (v8)
    {
      sub_63F4();
      v9 = sub_5A294();

      sub_68F4(v9, fmax(v5, 0.0));
      v8 = v10;
    }

    return v8;
  }

  return result;
}

void sub_68F4(unint64_t a1, double a2)
{
  if (a1 >> 62)
  {
LABEL_18:
    v4 = sub_5A814();
    if (v4)
    {
LABEL_3:
      v5 = 0;
      v6 = &off_7B000;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v7 = sub_5A724();
        }

        else
        {
          if (v5 >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_17;
          }

          v7 = *(a1 + 8 * v5 + 32);
        }

        v8 = v7;
        v9 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          __break(1u);
LABEL_17:
          __break(1u);
          goto LABEL_18;
        }

        [v7 startTime];
        if (v10 > a2 || ([v8 startTime], v12 = v11, objc_msgSend(v8, v6[358]), v12 + v13 <= a2))
        {
        }

        else
        {
          sub_5A764();
          sub_5A784();
          sub_5A794();
          sub_5A774();
          v6 = &off_7B000;
        }

        ++v5;
      }

      while (v9 != v4);
      if ((_swiftEmptyArrayStorage & 0x8000000000000000) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_25;
    }
  }

  else
  {
    v4 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    if (v4)
    {
      goto LABEL_3;
    }
  }

  if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0)
  {
    goto LABEL_25;
  }

LABEL_20:
  if ((_swiftEmptyArrayStorage & 0x4000000000000000) != 0)
  {
LABEL_25:
    if (!sub_5A814())
    {
      goto LABEL_26;
    }

    goto LABEL_22;
  }

  if (!_swiftEmptyArrayStorage[2])
  {
LABEL_26:

    return;
  }

LABEL_22:
  if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
  {
    sub_5A724();
    goto LABEL_26;
  }

  if (_swiftEmptyArrayStorage[2])
  {
    v14 = _swiftEmptyArrayStorage[4];
    goto LABEL_26;
  }

  __break(1u);
}

void *MPCPlayerResponse.chapters.getter()
{
  result = MPCPlayerResponse.currentItem.getter();
  if (result)
  {
    v1 = result;
    v2 = [result chapters];
    if (v2)
    {
      v3 = v2;
      sub_63F4();
      v4 = sub_5A294();

      return v4;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

id MPCPlayerResponseItem.podcastEpisode.getter()
{
  result = [v0 metadataObject];
  if (result)
  {
    v2 = result;
    v3 = [result flattenedGenericObject];

    if (v3)
    {
      v4 = [v3 anyObject];

      if (v4)
      {
        objc_opt_self();
        result = swift_dynamicCastObjCClass();
        if (result)
        {
          return result;
        }
      }
    }

    return 0;
  }

  return result;
}

id MPCPlayerResponseItem.contentID.getter()
{
  result = [v0 metadataObject];
  if (result)
  {
    v2 = result;
    v3 = [result flattenedGenericObject];

    if (v3)
    {
      v4 = [v3 anyObject];

      if (v4)
      {
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          v5 = MPModelObject.contentId.getter();

          return v5;
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t MPModelObject.adamID.getter()
{
  v1 = [v0 identifiers];
  v2 = [v1 universalStore];

  if (!v2)
  {
    return 0;
  }

  [v2 adamID];
  swift_unknownObjectRelease();
  return sub_59C44();
}

id MPModelObject.uuid.getter()
{
  v1 = [v0 identifiers];
  v2 = [v1 library];

  if (v2)
  {
    v3 = [v2 databaseID];
    swift_unknownObjectRelease();
    v2 = sub_5A194();
  }

  return v2;
}

uint64_t MPModelObject.contentId.getter()
{
  v1 = v0;
  v2 = sub_59D14();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [v1 identifiers];
  v7 = [v6 universalStore];

  if (v7)
  {
    [v7 adamID];
    swift_unknownObjectRelease();
    return sub_59C44();
  }

  else
  {
    v9 = [v1 identifiers];
    v10 = [v9 library];

    if (v10)
    {
      v11 = [v10 databaseID];
      swift_unknownObjectRelease();
      v12 = sub_5A194();

      return v12;
    }

    else
    {
      sub_59CF4();
      v13 = v1;
      v14 = sub_59D04();
      v15 = sub_5A464();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        *v16 = 138412290;
        *(v16 + 4) = v13;
        *v17 = v13;
        v18 = v13;
        _os_log_impl(&dword_0, v14, v15, "Encountered a model object without an identifier: %@", v16, 0xCu);
        sub_7158(v17);
      }

      (*(v3 + 8))(v5, v2);
      return 0;
    }
  }
}

_BYTE **sub_70D4(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void sub_70E4(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
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

uint64_t sub_7158(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7E260, &qword_5BE50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_71F0(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  sub_5A334();

  swift_getWitnessTable();
  sub_5A754();
  sub_63F4();
  v4 = sub_5A7A4();

  return v4;
}

uint64_t Array<A>.chapter(at:)(uint64_t a1, uint64_t a2, double a3)
{
  sub_5A334();

  swift_getWitnessTable();
  sub_5A754();
  swift_getWitnessTable();
  sub_5A424();

  return v4;
}

double MPModelPodcastChapter.endTime.getter()
{
  [v0 startTime];
  v2 = v1;
  [v0 duration];
  return v2 + v3;
}

id MPModelPodcastChapter.visibleInChapterPicker.getter()
{
  if (sub_595C4())
  {
    return [v0 isPlayable];
  }

  else
  {
    return &dword_0 + 1;
  }
}

BOOL sub_7400(id *a1)
{
  v2 = *(v1 + 24);
  [*a1 startTime];
  return v3 > v2;
}

BOOL sub_7448(id *a1)
{
  v2 = *(v1 + 24);
  v3 = *a1;
  [*a1 startTime];
  v5 = v4;
  [v3 duration];
  return v5 + v6 <= v2;
}

BOOL sub_74AC(id *a1)
{
  v2 = *(v1 + 24);
  v3 = *a1;
  [*a1 startTime];
  if (v4 > v2)
  {
    return 0;
  }

  [v3 startTime];
  v7 = v6;
  [v3 duration];
  return v7 + v8 > v2;
}

id MPModelPodcastEpisode.chapter(for:)(double a1)
{
  result = [v1 chapters];
  if (result)
  {
    v4 = result;
    sub_63F4();
    v5 = sub_5A294();

    sub_68F4(v5, a1);
    v7 = v6;

    return v7;
  }

  return result;
}

id MPModelPodcastEpisode.nextChapter(for:)(double a1)
{
  result = [v1 chapters];
  if (!result)
  {
    return result;
  }

  v4 = result;
  sub_63F4();
  v5 = sub_5A294();

  v6 = sub_6440(v5, a1);

  if (v6 >> 62)
  {
    result = sub_5A814();
    if (result)
    {
      goto LABEL_4;
    }

LABEL_9:

    return 0;
  }

  result = *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8));
  if (!result)
  {
    goto LABEL_9;
  }

LABEL_4:
  if ((v6 & 0xC000000000000001) != 0)
  {
    v7 = sub_5A724();
    goto LABEL_7;
  }

  if (*(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8)))
  {
    v7 = *(v6 + 32);
LABEL_7:
    v8 = v7;

    return v8;
  }

  __break(1u);
  return result;
}

unint64_t MPModelPodcastEpisode.previousChapter(for:)(double a1)
{
  result = [v1 chapters];
  if (!result)
  {
    return result;
  }

  v4 = result;
  sub_63F4();
  v5 = sub_5A294();

  v6 = sub_65E8(v5, a1);

  if (!(v6 >> 62))
  {
    v7 = *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8));
    if (v7)
    {
      goto LABEL_4;
    }

LABEL_11:

    return 0;
  }

  v7 = sub_5A814();
  if (!v7)
  {
    goto LABEL_11;
  }

LABEL_4:
  v8 = __OFSUB__(v7, 1);
  result = v7 - 1;
  if (v8)
  {
    __break(1u);
    goto LABEL_14;
  }

  if ((v6 & 0xC000000000000001) != 0)
  {
LABEL_14:
    v9 = sub_5A724();
    goto LABEL_9;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8)))
  {
    v9 = *(v6 + 8 * result + 32);
LABEL_9:
    v10 = v9;

    return v10;
  }

  __break(1u);
  return result;
}

id WidgetLastPlayedInfo.contentID.getter()
{
  v1 = *v0;
  sub_77FC(*v0, *(v0 + 8), *(v0 + 16));
  return v1;
}

id sub_77FC(id a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_7810(a1, a2, a3);
  }

  return a1;
}

id sub_7810(id result, uint64_t a2, char a3)
{
  if (a3 == 2)
  {
  }

  if (a3 == 1)
  {
    return result;
  }

  return result;
}

uint64_t WidgetLastPlayedInfo.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WidgetLastPlayedInfo(0) + 20);
  v4 = sub_59524();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for WidgetLastPlayedInfo(uint64_t a1)
{
  result = qword_7D188;
  if (!qword_7D188)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t WidgetLastPlayedInfo.init(contentID:date:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  v7 = *(type metadata accessor for WidgetLastPlayedInfo(0) + 20);
  v8 = sub_59524();
  v9 = *(*(v8 - 8) + 32);

  return v9(a5 + v7, a4, v8);
}

uint64_t static WidgetLastPlayedInfo.loadFromDefaults()@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_59D14();
  __chkstk_darwin(v2);
  v3 = [objc_opt_self() _applePodcastsFoundationSharedUserDefaults];
  sub_59954();
  v4 = sub_5A174();

  v5 = [v3 dataForKey:v4];

  if (v5)
  {
    v6 = sub_594C4();
    v8 = v7;

    sub_59414();
    swift_allocObject();
    sub_59404();
    PlayedInfo = type metadata accessor for WidgetLastPlayedInfo(0);
    sub_9688(&qword_7D0E0, type metadata accessor for WidgetLastPlayedInfo, &protocol conformance descriptor for WidgetLastPlayedInfo);
    sub_593F4();
    sub_7D34(v6, v8);

    v10 = *(*(PlayedInfo - 8) + 56);

    return v10(a1, 0, 1, PlayedInfo);
  }

  else
  {
    v12 = type metadata accessor for WidgetLastPlayedInfo(0);
    return (*(*(v12 - 8) + 56))(a1, 1, 1, v12);
  }
}

uint64_t sub_7D34(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

Swift::Void __swiftcall WidgetLastPlayedInfo.saveToDefaults()()
{
  PlayedInfo = type metadata accessor for WidgetLastPlayedInfo(0);
  v1 = __chkstk_darwin(PlayedInfo);
  __chkstk_darwin(v1);
  v2 = sub_59D14();
  __chkstk_darwin(v2);
  sub_59444();
  swift_allocObject();
  sub_59434();
  sub_9688(&qword_7D0E8, type metadata accessor for WidgetLastPlayedInfo, &protocol conformance descriptor for WidgetLastPlayedInfo);
  v3 = sub_59424();
  v5 = v4;

  v6 = [objc_opt_self() _applePodcastsFoundationSharedUserDefaults];
  isa = sub_594B4().super.isa;
  sub_59954();
  v8 = sub_5A174();

  [v6 setValue:isa forKey:v8];

  sub_7D34(v3, v5);
}

Swift::Int sub_81B8()
{
  v1 = *v0;
  sub_5A974();
  sub_5A984(v1);
  return sub_5A9A4();
}

Swift::Int sub_822C(uint64_t a1)
{
  v2 = *v1;
  sub_5A974();
  sub_5A984(v2);
  return sub_5A9A4();
}

uint64_t sub_8270()
{
  if (*v0)
  {
    return 1702125924;
  }

  else
  {
    return 0x49746E65746E6F63;
  }
}

uint64_t sub_82A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x49746E65746E6F63 && a2 == 0xE900000000000044;
  if (v6 || (sub_5A8E4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1702125924 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_5A8E4();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_83A4(uint64_t a1)
{
  v2 = sub_9540();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_83E0(uint64_t a1)
{
  v2 = sub_9540();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t WidgetLastPlayedInfo.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D0F0, &qword_5BE58);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_9540();
  sub_5A9C4();
  v9 = *(v3 + 16);
  v12 = *v3;
  v13 = v9;
  v11[15] = 0;
  sub_9594();
  sub_5A8A4();
  if (!v2)
  {
    type metadata accessor for WidgetLastPlayedInfo(0);
    LOBYTE(v12) = 1;
    sub_59524();
    sub_9688(&qword_7D108, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    sub_5A8B4();
  }

  return (*(v6 + 8))(v8, v5);
}

void WidgetLastPlayedInfo.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v22 = sub_59524();
  v19 = *(v22 - 8);
  __chkstk_darwin(v22);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D110, &qword_5BE60);
  v21 = *(v23 - 8);
  __chkstk_darwin(v23);
  v7 = v17 - v6;
  PlayedInfo = type metadata accessor for WidgetLastPlayedInfo(0);
  __chkstk_darwin(PlayedInfo);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_9540();
  sub_5A9B4();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  else
  {
    v18 = PlayedInfo;
    v11 = v10;
    v13 = v21;
    v12 = v22;
    v28 = 0;
    sub_9634();
    v14 = v23;
    sub_5A884();
    v15 = v25;
    v16 = v26;
    v17[1] = v25;
    v17[2] = v24;
    *v11 = v24;
    *(v11 + 8) = v15;
    v27 = v16;
    *(v11 + 16) = v16;
    LOBYTE(v24) = 1;
    sub_9688(&qword_7D120, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    sub_5A894();
    (*(v13 + 8))(v7, v14);
    (*(v19 + 32))(v11 + *(v18 + 20), v5, v12);
    sub_9370(v11, v20);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    sub_93D4(v11);
  }
}

id sub_895C()
{
  result = [objc_opt_self() isThinJetApp];
  v1 = 480.0;
  if (result)
  {
    v1 = 180.0;
  }

  qword_7D0D8 = *&v1;
  return result;
}

double static WidgetNowPlayingInfo.timeToKeepPlayerArtworkAfterPausing.getter()
{
  if (qword_7CC50 != -1)
  {
    swift_once();
  }

  return *&qword_7D0D8;
}

uint64_t WidgetNowPlayingInfo.init(isPlaying:currentEpisodeID:durationSnapshot:widgetLastPlayedInfo:)@<X0>(int a1@<W0>, void *a2@<X1>, uint64_t a3@<X2>, unsigned int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v94 = a6;
  v95 = a4;
  v91 = a2;
  v92 = a3;
  LODWORD(v7) = a1;
  v88 = a7;
  v8 = *a5;
  v9 = *(a5 + 24);
  v10 = *(a5 + 32);
  v11 = *(a5 + 40);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D128, &qword_5BE68);
  v13 = __chkstk_darwin(v12 - 8);
  v81 = v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v82 = v77 - v15;
  v16 = sub_59524();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = v77 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D2F0, &qword_5BE70);
  v21 = __chkstk_darwin(v20 - 8);
  v23 = v77 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v21);
  v96 = v77 - v25;
  v26 = __chkstk_darwin(v24);
  v28 = v77 - v27;
  v29 = __chkstk_darwin(v26);
  v86 = v77 - v30;
  v31 = __chkstk_darwin(v29);
  v80 = v77 - v32;
  v33 = __chkstk_darwin(v31);
  v35 = v77 - v34;
  v36 = __chkstk_darwin(v33);
  v38 = v77 - v37;
  __chkstk_darwin(v36);
  v40 = v77 - v39;
  if (v11 <= 0.0)
  {
    sub_594E4();
    v47 = v10 + (v46 - v8) * v11;
    if (v47 >= v9)
    {
      v47 = v9;
    }

    v45 = v9 - fmax(v47, 0.0);
    v42 = v9;
  }

  else
  {
    v41 = v11;
    v42 = v9 / v11;
    sub_594E4();
    v44 = v10 + (v43 - v8) * v41;
    if (v44 >= v9)
    {
      v44 = v9;
    }

    v45 = (v9 - fmax(v44, 0.0)) / v41;
  }

  v87 = v28;
  v93 = v7;
  v89 = v17;
  v85 = v23;
  if ((v7 & 1) == 0 || (v45 > 0.0 ? (v48 = v45 > v42) : (v48 = 1), v48))
  {
    v50 = *(v17 + 56);
    v51 = (v17 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v50(v40, 1, 1, v16);
    v50(v38, 1, 1, v16);
  }

  else
  {
    sub_59514();
    sub_594F4();
    v7 = v17;
    v49 = *(v17 + 8);
    v49(v19, v16);
    v50 = *(v7 + 56);
    v51 = (v7 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v50(v40, 0, 1, v16);
    sub_59514();
    sub_594F4();
    v49(v19, v16);
    v50(v38, 0, 1, v16);
    LOBYTE(v7) = v93;
  }

  v83 = v51;
  v84 = v50;
  v90 = v35;
  v50(v35, 1, 1, v16);
  if ((v7 & 1) == 0 && v95 != 0xFF)
  {
    v52 = v82;
    sub_9768(v94, v82, &qword_7D128, &qword_5BE68);
    PlayedInfo = type metadata accessor for WidgetLastPlayedInfo(0);
    v54 = *(PlayedInfo - 8);
    v55 = *(v54 + 48);
    v56 = v54 + 48;
    if (v55(v52, 1, PlayedInfo) == 1)
    {
      sub_9708(v52, &qword_7D128, &qword_5BE68);
    }

    else
    {
      v77[1] = v56;
      v78 = v55;
      v57 = *v52;
      v58 = *(v52 + 8);
      v59 = *(v52 + 16);
      sub_77FC(*v52, v58, *(v52 + 16));
      sub_93D4(v52);
      if (v59 != 255)
      {
        v82 = v38;
        v60 = v91;
        v61 = v40;
        v62 = v92;
        v63 = v95;
        sub_7810(v91, v92, v95);
        v79 = sub_59C64();
        v64 = v60;
        v65 = v62;
        v40 = v61;
        v38 = v82;
        sub_96D0(v64, v65, v63);
        sub_96D0(v57, v58, v59);
        if ((v79 & 1) != 0 && (sub_59784() & 1) == 0)
        {
          v66 = v81;
          sub_9768(v94, v81, &qword_7D128, &qword_5BE68);
          if (v78(v66, 1, PlayedInfo) == 1)
          {
            v67 = v90;
            sub_9708(v90, &qword_7D2F0, &qword_5BE70);
            sub_9708(v66, &qword_7D128, &qword_5BE68);
            v68 = 1;
            v69 = v80;
          }

          else
          {
            v70 = v89;
            (*(v89 + 16))(v19, v66 + *(PlayedInfo + 20), v16);
            sub_93D4(v66);
            if (qword_7CC50 != -1)
            {
              swift_once();
            }

            v69 = v80;
            sub_594F4();
            (*(v70 + 8))(v19, v16);
            v67 = v90;
            sub_9708(v90, &qword_7D2F0, &qword_5BE70);
            v68 = 0;
          }

          v84(v69, v68, 1, v16);
          sub_97D0(v69, v67);
        }
      }
    }
  }

  sub_9768(v40, v86, &qword_7D2F0, &qword_5BE70);
  sub_9768(v38, v87, &qword_7D2F0, &qword_5BE70);
  v71 = v90;
  v72 = v85;
  sub_9768(v90, v85, &qword_7D2F0, &qword_5BE70);
  v73 = v89;
  v74 = *(v89 + 48);
  if (v74(v72, 1, v16) == 1)
  {
    sub_9768(v38, v96, &qword_7D2F0, &qword_5BE70);
    if (v74(v72, 1, v16) != 1)
    {
      sub_9708(v72, &qword_7D2F0, &qword_5BE70);
    }
  }

  else
  {
    v75 = v96;
    (*(v73 + 32))(v96, v72, v16);
    v84(v75, 0, 1, v16);
  }

  sub_59B44();
  sub_9708(v94, &qword_7D128, &qword_5BE68);
  sub_9708(v71, &qword_7D2F0, &qword_5BE70);
  sub_9708(v38, &qword_7D2F0, &qword_5BE70);
  return sub_9708(v40, &qword_7D2F0, &qword_5BE70);
}

uint64_t sub_92B4(uint64_t (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

uint64_t sub_9314(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_9430(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_9370(uint64_t a1, uint64_t a2)
{
  PlayedInfo = type metadata accessor for WidgetLastPlayedInfo(0);
  (*(*(PlayedInfo - 8) + 16))(a2, a1, PlayedInfo);
  return a2;
}

uint64_t sub_93D4(uint64_t a1)
{
  PlayedInfo = type metadata accessor for WidgetLastPlayedInfo(0);
  (*(*(PlayedInfo - 8) + 8))(a1, PlayedInfo);
  return a1;
}

unint64_t sub_9430(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_9CF8(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
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
    sub_9E04(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  return v7;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_9540()
{
  result = qword_7D0F8;
  if (!qword_7D0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7D0F8);
  }

  return result;
}

unint64_t sub_9594()
{
  result = qword_7D100;
  if (!qword_7D100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7D100);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0Tm(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

unint64_t sub_9634()
{
  result = qword_7D118;
  if (!qword_7D118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7D118);
  }

  return result;
}

uint64_t sub_9688(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_96D0(void *a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    sub_96E4(a1, a2, a3);
  }
}

void sub_96E4(void *a1, uint64_t a2, char a3)
{
  if (a3 == 2)
  {
  }

  else if (a3 == 1)
  {
  }
}

uint64_t sub_9708(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_9768(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_97D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D2F0, &qword_5BE70);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_9854(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 252)
  {
    v4 = *(a1 + 16);
    if (v4 <= 2)
    {
      return 0;
    }

    else
    {
      return v4 ^ 0xFF;
    }
  }

  else
  {
    v8 = sub_59524();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_990C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 252)
  {
    *(result + 16) = ~a2;
  }

  else
  {
    v7 = sub_59524();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_99AC(uint64_t a1)
{
  sub_9A30();
  if (v1 <= 0x3F)
  {
    sub_59524();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_9A30()
{
  if (!qword_7D198)
  {
    v0 = sub_5A664();
    if (!v1)
    {
      atomic_store(v0, &qword_7D198);
    }
  }
}

uint64_t getEnumTagSinglePayload for WidgetLastPlayedInfo.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WidgetLastPlayedInfo.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_9BF4()
{
  result = qword_7D1C8;
  if (!qword_7D1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7D1C8);
  }

  return result;
}

unint64_t sub_9C4C()
{
  result = qword_7D1D0;
  if (!qword_7D1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7D1D0);
  }

  return result;
}

unint64_t sub_9CA4()
{
  result = qword_7D1D8;
  if (!qword_7D1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7D1D8);
  }

  return result;
}

unint64_t sub_9CF8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_9E60(a5, a6);
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
    result = sub_5A744();
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

uint64_t sub_9E04(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *sub_9E60(uint64_t a1, unint64_t a2)
{
  v3 = sub_9EAC(a1, a2);
  sub_9FDC(&off_71E00);
  return v3;
}

void *sub_9EAC(uint64_t a1, unint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  v6 = sub_1428C(v5, 0);
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

  result = sub_5A744();
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
        v10 = sub_5A204();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_1428C(v10, 0);
        result = sub_5A6F4();
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

uint64_t sub_9FDC(uint64_t result)
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_A0C8(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_A0C8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D1E0, &qword_5C028);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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

uint64_t getEnumTagSinglePayload for DummyLegacyPlayerController(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for DummyLegacyPlayerController(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t PendingPlaybackStore.publisher.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
}

uint64_t PendingPlaybackStore.__allocating_init()()
{
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7F4C0, &unk_5C0F0);
  swift_allocObject();
  *(v0 + 16) = sub_59DA4();
  return v0;
}

uint64_t PendingPlaybackStore.init()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7F4C0, &unk_5C0F0);
  swift_allocObject();
  *(v0 + 16) = sub_59DA4();
  return v0;
}

uint64_t PendingPlaybackStore.pendingEpisode.getter()
{
  swift_beginAccess();

  sub_59D94();
}

uint64_t PendingPlaybackStore.update(_:)(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v7 = *(a1 + 2);
  v8 = *(a1 + 1);
  v3 = a1[6];
  v4 = sub_595D4();
  *(&v11 + 1) = v4;
  *&v12 = sub_A5B8();
  v5 = __swift_allocate_boxed_opaque_existential_1(&v9);
  (*(*(v4 - 8) + 104))(v5, enum case for Podcasts.responsivePlayback(_:), v4);
  LOBYTE(v4) = sub_595B4();
  result = __swift_destroy_boxed_opaque_existential_0Tm(&v9);
  if (v4)
  {
    swift_beginAccess();
    v9 = v1;
    v10 = v2;
    v11 = v8;
    v12 = v7;
    v13 = v3;

    sub_59D84();

    return sub_A674(v9, v10, v11, *(&v11 + 1));
  }

  return result;
}

unint64_t sub_A5B8()
{
  result = qword_7D1E8;
  if (!qword_7D1E8)
  {
    sub_595D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7D1E8);
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_A674(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 1)
  {
  }

  return result;
}

Swift::Void __swiftcall PendingPlaybackStore.reset()()
{
  v0 = sub_595D4();
  v3 = v0;
  v4 = sub_A5B8();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v2);
  (*(*(v0 - 8) + 104))(boxed_opaque_existential_1, enum case for Podcasts.responsivePlayback(_:), v0);
  LOBYTE(v0) = sub_595B4();
  __swift_destroy_boxed_opaque_existential_0Tm(v2);
  if (v0)
  {
    swift_beginAccess();
    memset(v2, 0, sizeof(v2));
    v3 = 1;
    v5 = 0;
    v6 = 0;
    v4 = 0;

    sub_59D84();
  }
}

uint64_t InMemoryPlaybackPositionTracker.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

double EpisodePlayState.duration.getter()
{
  v1 = sub_59984();
  __chkstk_darwin(v1);
  v3 = (&v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_5B84(v0, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload || EnumCaseMultiPayload == 3 || EnumCaseMultiPayload == 1)
  {
    return v3[1];
  }

  sub_A86C(v3);
  return 0.0;
}

uint64_t sub_A86C(uint64_t a1)
{
  v2 = sub_59984();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double EpisodePlayState.position.getter()
{
  v1 = sub_59984();
  __chkstk_darwin(v1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_5B84(v0, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload || EnumCaseMultiPayload == 3 || EnumCaseMultiPayload == 1)
  {
    return *v3;
  }

  sub_A86C(v3);
  return 0.0;
}

uint64_t PendingPlaybackMetadata.uuid.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t PendingPlaybackMetadata.init(adamId:uuid:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, double *a5@<X8>)
{
  v40 = a1;
  v41 = a3;
  v8 = sub_59524();
  v38 = *(v8 - 8);
  v39 = v8;
  __chkstk_darwin(v8);
  v37 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_59984();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = (&v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v12);
  v16 = &v37 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7F590, "v4");
  v18 = __chkstk_darwin(v17 - 8);
  v20 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v18);
  v23 = &v37 - v22;
  __chkstk_darwin(v21);
  v25 = &v37 - v24;
  (*(v11 + 56))(&v37 - v24, 1, 1, v10);
  if ((a2 & 1) == 0 || a4)
  {
    v42 = a2 & 1;
    sub_ADEC(v25, v23);
    v27 = *(v11 + 48);
    if (v27(v23, 1, v10) == 1)
    {
      sub_AD84(v23);
      v28 = 0;
    }

    else
    {
      sub_5B84(v23, v16);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload < 2 || EnumCaseMultiPayload == 3)
      {
        v28 = *(v16 + 1);
      }

      else
      {
        sub_A86C(v16);
        v28 = 0;
      }

      sub_A86C(v23);
    }

    sub_ADEC(v25, v20);
    if (v27(v20, 1, v10) == 1)
    {
      sub_AD84(v20);
      v30 = 0;
      v31 = a4;
    }

    else
    {
      sub_5B84(v20, v14);
      v32 = swift_getEnumCaseMultiPayload();
      v31 = a4;
      if (v32 < 2 || v32 == 3)
      {
        v30 = *v14;
      }

      else
      {
        sub_A86C(v14);
        v30 = 0;
      }

      sub_A86C(v20);
    }

    v33 = v37;
    sub_59514();
    sub_594D4();
    v35 = v34;
    (*(v38 + 8))(v33, v39);
    result = sub_AD84(v25);
    v36 = v42;
    *a5 = v40;
    *(a5 + 1) = v36;
    *(a5 + 2) = v41;
    *(a5 + 3) = v31;
    *(a5 + 4) = v35;
    *(a5 + 5) = v28;
    *(a5 + 6) = v30;
  }

  else
  {
    result = sub_AD84(v25);
    *a5 = 0.0;
    a5[1] = 0.0;
    a5[2] = 0.0;
    *(a5 + 3) = 1;
    a5[5] = 0.0;
    a5[6] = 0.0;
    a5[4] = 0.0;
  }

  return result;
}

uint64_t sub_AD84(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7F590, "v4");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_ADEC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7F590, "v4");
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

Swift::Bool __swiftcall PendingPlaybackMetadata.isWithinTimeInterval(seconds:)(Swift::Double seconds)
{
  v3 = sub_59524();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 32);
  sub_59514();
  sub_594D4();
  v9 = v8;
  (*(v4 + 8))(v6, v3);
  return v9 - v7 < seconds;
}

Swift::Double __swiftcall PendingPlaybackMetadata.timeRemaining(timeToLive:)(Swift::Double timeToLive)
{
  v3 = sub_59524();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 32) + timeToLive;
  sub_59514();
  sub_594D4();
  v9 = v8;
  (*(v4 + 8))(v6, v3);
  result = v7 - v9;
  if (v7 - v9 <= 0.0)
  {
    return 0.0;
  }

  return result;
}

void *PendingPlaybackMetadata.identifierSet.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v9 = &_swiftEmptySetSingleton;
  if ((v2 & 1) == 0)
  {
    sub_B3F0(&v6, v1, 0, 0);
    sub_5350(v6, v7, v8);
  }

  if (v4)
  {

    sub_B3F0(&v6, v3, v4, 1);
    sub_5350(v6, v7, v8);
  }

  return v9;
}

uint64_t PendingPlaybackMetadata.withPlayState(with:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v6 = sub_59984();
  v35 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v34 = (&v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v7);
  v10 = &v33 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7F590, "v4");
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = &v33 - v16;
  __chkstk_darwin(v15);
  v19 = &v33 - v18;
  v20 = *v2;
  v21 = *(v2 + 8);
  v22 = v3[3];
  v36 = v3[2];
  v37 = v20;
  v23 = v3[4];
  sub_ADEC(a1, &v33 - v18);
  v38 = v21;
  if (v21 != 1 || v22)
  {
    sub_ADEC(v19, v17);
    v25 = *(v35 + 48);
    if (v25(v17, 1, v6) == 1)
    {

      sub_AD84(v17);
      v26 = 0;
    }

    else
    {
      sub_5B84(v17, v10);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 3 || EnumCaseMultiPayload == 2)
      {

        sub_A86C(v10);
        v26 = 0;
      }

      else
      {
        v26 = *(v10 + 1);
      }

      sub_A86C(v17);
    }

    sub_ADEC(v19, v14);
    if (v25(v14, 1, v6) == 1)
    {
      sub_AD84(v14);
      v29 = 0;
    }

    else
    {
      v30 = v34;
      sub_5B84(v14, v34);
      v31 = swift_getEnumCaseMultiPayload();
      if (v31 < 2 || v31 == 3)
      {
        v29 = *v30;
      }

      else
      {
        sub_A86C(v30);
        v29 = 0;
      }

      sub_A86C(v14);
    }

    result = sub_AD84(v19);
    v32 = v38;
    *a2 = v37;
    a2[1] = v32;
    a2[2] = v36;
    a2[3] = v22;
    a2[4] = v23;
    a2[5] = v26;
    a2[6] = v29;
  }

  else
  {
    result = sub_AD84(v19);
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    a2[3] = 1;
    a2[5] = 0;
    a2[6] = 0;
    a2[4] = 0;
  }

  return result;
}

uint64_t sub_B3F0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = *v4;
  sub_5A974();
  v28 = a2;
  v9 = a4 & 1;
  sub_59BB4();
  v10 = sub_5A9A4();
  v11 = -1 << *(v8 + 32);
  v12 = v10 & ~v11;
  if ((*(v8 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v25 = a4;
    v13 = ~v11;
    while (1)
    {
      v14 = *(v8 + 48) + 24 * v12;
      v15 = *v14;
      v16 = *(v14 + 8);
      v17 = *(v14 + 16);
      sub_5340(*v14, v16, v17);
      v18 = sub_59BA4();
      sub_5350(v15, v16, v17);
      if (v18)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v8 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_5350(v28, a3, v25 & 1);
    v21 = *(v8 + 48) + 24 * v12;
    v22 = *v21;
    v23 = *(v21 + 8);
    v24 = *(v21 + 16);
    *a1 = *v21;
    *(a1 + 8) = v23;
    *(a1 + 16) = v24;
    sub_5340(v22, v23, v24);
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v29 = *v26;
    sub_5340(v28, a3, v9);
    sub_BB74(v28, a3, v9, v12, isUniquelyReferenced_nonNull_native);
    *v26 = v29;
    *a1 = v28;
    *(a1 + 8) = a3;
    *(a1 + 16) = v9;
    return 1;
  }
}

uint64_t sub_B5B4(_BYTE *a1, uint64_t a2)
{
  v5 = *v2;
  sub_5A974();
  sub_5A984(a2);
  v6 = sub_5A9A4();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_BD40(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_B6AC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D298, qword_5C1E0);
  result = sub_5A6D4();
  v5 = result;
  if (*(v3 + 16))
  {
    v30 = v3;
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = *(v3 + 48) + 24 * (v15 | (v6 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      sub_5A974();
      sub_59BB4();
      result = sub_5A9A4();
      v22 = -1 << *(v5 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 24 * v13;
      *v14 = v19;
      *(v14 + 8) = v20;
      *(v14 + 16) = v21;
      ++*(v5 + 16);
      v3 = v30;
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      bzero(v7, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_B924(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D290, &qword_5C1D8);
  result = sub_5A6D4();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + (v14 | (v6 << 6)));
      sub_5A974();
      sub_5A984(v17);
      result = sub_5A9A4();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_BB74(uint64_t result, uint64_t a2, char a3, unint64_t a4, char a5)
{
  v8 = result;
  v9 = *(*v5 + 16);
  v10 = *(*v5 + 24);
  if (v10 > v9 && (a5 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a5)
  {
    sub_B6AC(v9 + 1);
  }

  else
  {
    if (v10 > v9)
    {
      result = sub_BE8C();
      goto LABEL_12;
    }

    sub_C134(v9 + 1);
  }

  v11 = *v5;
  sub_5A974();
  sub_59BB4();
  result = sub_5A9A4();
  v12 = -1 << *(v11 + 32);
  a4 = result & ~v12;
  if ((*(v11 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4))
  {
    v13 = ~v12;
    do
    {
      v14 = *(v11 + 48) + 24 * a4;
      v15 = *v14;
      v16 = *(v14 + 8);
      v17 = *(v14 + 16);
      sub_5340(*v14, v16, v17);
      v18 = sub_59BA4();
      result = sub_5350(v15, v16, v17);
      if (v18)
      {
        goto LABEL_15;
      }

      a4 = (a4 + 1) & v13;
    }

    while (((*(v11 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) != 0);
  }

LABEL_12:
  v19 = *v24;
  *(*v24 + 8 * (a4 >> 6) + 56) |= 1 << a4;
  v20 = *(v19 + 48) + 24 * a4;
  *v20 = v8;
  *(v20 + 8) = a2;
  *(v20 + 16) = a3 & 1;
  v21 = *(v19 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (!v22)
  {
    *(v19 + 16) = v23;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_5A904();
  __break(1u);
  return result;
}

uint64_t sub_BD40(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_B924(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_BFF4();
      a2 = v7;
      goto LABEL_12;
    }

    sub_C38C(v5 + 1);
  }

  v8 = *v3;
  sub_5A974();
  sub_5A984(v4);
  result = sub_5A9A4();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_5A904();
  __break(1u);
  return result;
}

void *sub_BE8C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D298, qword_5C1E0);
  v2 = *v0;
  v3 = sub_5A6C4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 24 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v18 + 16);
        v22 = *(v4 + 48) + v17;
        *v22 = *v18;
        *(v22 + 8) = v20;
        *(v22 + 16) = v21;
        result = sub_5340(v19, v20, v21);
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

      v16 = *(v2 + 56 + 8 * v8);
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

  return result;
}

void *sub_BFF4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D290, &qword_5C1D8);
  v2 = *v0;
  v3 = sub_5A6C4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

  return result;
}

uint64_t sub_C134(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D298, qword_5C1E0);
  result = sub_5A6D4();
  v5 = result;
  if (*(v3 + 16))
  {
    v29 = v3;
    v6 = 0;
    v7 = v3 + 56;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = *(v3 + 48) + 24 * (v15 | (v6 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      sub_5A974();
      sub_5340(v19, v20, v21);
      sub_59BB4();
      result = sub_5A9A4();
      v22 = -1 << *(v5 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 24 * v13;
      *v14 = v19;
      *(v14 + 8) = v20;
      *(v14 + 16) = v21;
      ++*(v5 + 16);
      v3 = v29;
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v17 = *(v7 + 8 * v6);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_C38C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D290, &qword_5C1D8);
  result = sub_5A6D4();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
      sub_5A974();
      sub_5A984(v16);
      result = sub_5A9A4();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

BOOL _s16PodcastsPlayback07PendingB8MetadataV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *(a1 + 48);
  v10 = *(a2 + 24);
  v12 = *(a2 + 32);
  v11 = *(a2 + 40);
  v13 = *(a2 + 48);
  if (v4)
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 == *a2)
    {
      v14 = *(a2 + 8);
    }

    else
    {
      v14 = 1;
    }

    if (v14)
    {
      return 0;
    }
  }

  if (v6)
  {
    if (!v10)
    {
      return 0;
    }

    if (v5 == *(a2 + 16) && v6 == v10)
    {
      if (v8 != v12 || v7 != v11)
      {
        return 0;
      }

      return v9 == v13;
    }

    v18 = sub_5A8E4();
    result = 0;
    if ((v18 & 1) != 0 && v8 == v12 && v7 == v11)
    {
      return v9 == v13;
    }
  }

  else
  {
    result = 0;
    if (!v10 && v8 == v12 && v7 == v11)
    {
      return v9 == v13;
    }
  }

  return result;
}

uint64_t sub_C6E4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_C740(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t PlaybackIntent.generateMPCIntent(for:)(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = sub_59894();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D2A0, &qword_5C238);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v4 = sub_59604();
  v2[17] = v4;
  v2[18] = *(v4 - 8);
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v5 = sub_596C4();
  v2[21] = v5;
  v2[22] = *(v5 - 8);
  v2[23] = swift_task_alloc();
  v6 = sub_59944();
  v2[24] = v6;
  v2[25] = *(v6 - 8);
  v2[26] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D2A8, &qword_5C240);
  v2[27] = swift_task_alloc();
  v7 = sub_596A4();
  v2[28] = v7;
  v2[29] = *(v7 - 8);
  v2[30] = swift_task_alloc();
  v8 = sub_59674();
  v2[31] = v8;
  v2[32] = *(v8 - 8);
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();
  sub_59624();
  v2[35] = swift_task_alloc();
  v9 = sub_59D14();
  v2[36] = v9;
  v2[37] = *(v9 - 8);
  v2[38] = swift_task_alloc();
  v2[39] = swift_task_alloc();
  v2[40] = swift_task_alloc();
  v2[41] = swift_task_alloc();
  v2[42] = swift_task_alloc();
  v10 = sub_59904();
  v2[43] = v10;
  v2[44] = *(v10 - 8);
  v2[45] = swift_task_alloc();
  v11 = swift_task_alloc();
  v2[46] = v11;
  v12 = swift_task_alloc();
  v2[47] = v12;
  *v12 = v2;
  v12[1] = sub_CC90;

  return PlaybackIntent.resolvedIntent()(v11);
}

uint64_t sub_CC90()
{
  *(*v1 + 384) = v0;

  if (v0)
  {
    v2 = sub_F180;
  }

  else
  {
    v2 = sub_CDD0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_CDD0()
{
  v1 = [*(v0 + 64) playerPath];
  v2 = [v1 isLocalDevice];

  if (v2)
  {
    sub_59CC4();
    v3 = sub_59D04();
    v4 = sub_5A434();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_0, v3, v4, "Creating a local playback intent", v5, 2u);
    }

    v6 = *(v0 + 384);
    v7 = *(v0 + 336);
    v8 = *(v0 + 288);
    v9 = *(v0 + 296);

    (*(v9 + 8))(v7, v8);
    v10 = sub_F71C();
    (*(*(v0 + 352) + 8))(*(v0 + 368), *(v0 + 344));
    if (!v6)
    {

      v11 = *(v0 + 8);

      return v11(v10);
    }

    goto LABEL_12;
  }

  if (sub_597B4())
  {
    sub_59CC4();
    v13 = sub_59D04();
    v14 = sub_5A474();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_0, v13, v14, "Intent requires local playback with buffered AirPlay", v15, 2u);
    }

    v16 = *(v0 + 368);
    v17 = *(v0 + 344);
    v18 = *(v0 + 352);
    v20 = *(v0 + 296);
    v19 = *(v0 + 304);
    v21 = *(v0 + 288);

    (*(v20 + 8))(v19, v21);
    v22 = sub_596E4();
    sub_10F78(&qword_7D2B8, &type metadata accessor for PodcastsPlaybackError.ValidationError, &protocol conformance descriptor for PodcastsPlaybackError.ValidationError);
    swift_allocError();
    v24 = v23;
    v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D2C0, &qword_5C248) + 48);
    (*(v18 + 16))(v24, v16, v17);
    sub_597F4();
    v26 = enum case for PlaybackIntent.PlayerConstraint.currentItemUntransferrable(_:);
    v27 = sub_59804();
    (*(*(v27 - 8) + 104))(v24 + v25, v26, v27);
    (*(*(v22 - 8) + 104))(v24, enum case for PodcastsPlaybackError.ValidationError.localPlaybackRequired(_:), v22);
    swift_willThrow();
    (*(v18 + 8))(v16, v17);
LABEL_12:

    v28 = *(v0 + 8);

    return v28();
  }

  sub_59CC4();
  v29 = sub_59D04();
  v30 = sub_5A474();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_0, v29, v30, "Sending a remote playback intent", v31, 2u);
  }

  v32 = *(v0 + 360);
  v42 = *(v0 + 368);
  v33 = *(v0 + 344);
  v34 = *(v0 + 352);
  v35 = *(v0 + 328);
  v37 = *(v0 + 288);
  v36 = *(v0 + 296);

  v38 = *(v36 + 8);
  *(v0 + 392) = v38;
  v38(v35, v37);
  sub_59614();
  sub_596D4();
  swift_allocObject();
  *(v0 + 400) = sub_59694();
  v39 = *(v34 + 16);
  *(v0 + 408) = v39;
  *(v0 + 416) = (v34 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v39(v32, v42, v33);
  sub_59654();
  v40 = swift_task_alloc();
  *(v0 + 424) = v40;
  *v40 = v0;
  v40[1] = sub_D54C;
  v41 = *(v0 + 264);

  return PodcastsMediaLibrary.PlaybackQueueContext.resolvedContext()(v41);
}

uint64_t sub_D54C()
{
  *(*v1 + 432) = v0;

  if (v0)
  {
    v2 = sub_F31C;
  }

  else
  {
    v2 = sub_D68C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_D68C()
{
  v1 = v0[28];
  v2 = v0[29];
  v3 = v0[27];
  sub_59664();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[46];
    v5 = v0[43];
    v6 = v0[44];
    v7 = v0[34];
    v90 = v0[33];
    v9 = v0[31];
    v8 = v0[32];
    sub_9708(v0[27], &qword_7D2A8, &qword_5C240);
    v10 = sub_59684();
    sub_10F78(&qword_7D2B0, &type metadata accessor for PodcastsMediaLibrary.Error, &protocol conformance descriptor for PodcastsMediaLibrary.Error);
    swift_allocError();
    (*(*(v10 - 8) + 104))(v11, enum case for PodcastsMediaLibrary.Error.unableToCreateRequestFromQueueContext(_:), v10);
    swift_willThrow();

    v12 = *(v8 + 8);
    v12(v7, v9);
    (*(v6 + 8))(v4, v5);
    v12(v90, v9);
LABEL_14:

    v43 = v0[1];

    return v43();
  }

  v14 = v0[25];
  v13 = v0[26];
  v15 = v0[24];
  (*(v0[29] + 32))(v0[30], v0[27], v0[28]);
  sub_59884();
  v16 = (*(v14 + 88))(v13, v15);
  if (v16 != enum case for MediaIdentifier.podcast(_:))
  {
    if (v16 == enum case for MediaIdentifier.episodes(_:))
    {
LABEL_5:
      (*(v0[25] + 8))(v0[26], v0[24]);
      goto LABEL_6;
    }

    if (v16 == enum case for MediaIdentifier.localEpisodes(_:) || v16 == enum case for MediaIdentifier.localPodcast(_:) || v16 == enum case for MediaIdentifier.station(_:) || v16 == enum case for MediaIdentifier.snapshot(_:) || v16 == enum case for MediaIdentifier.mediaQuery(_:))
    {
      goto LABEL_26;
    }

    if (v16 == enum case for MediaIdentifier.universalEpisodeIdentifiers(_:))
    {
      goto LABEL_5;
    }

    if (v16 != enum case for MediaIdentifier.library(_:))
    {
LABEL_26:
      (*(v0[25] + 8))(v0[26], v0[24]);
    }

    sub_59CC4();
    v56 = sub_59D04();
    v57 = sub_5A474();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&dword_0, v56, v57, "Fetching from PML for remote playback", v58, 2u);
    }

    v59 = v0[49];
    v60 = v0[40];
    v61 = v0[36];

    v59(v60, v61);
    v62 = swift_task_alloc();
    v0[55] = v62;
    *v62 = v0;
    v62[1] = sub_E3A0;
    v31 = v0[30];
    v30 = v0[23];

    return PodcastsMediaLibrary.mediaCollection(for:)(v30, v31);
  }

LABEL_6:
  sub_59CC4();
  v17 = sub_59D04();
  v18 = sub_5A434();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_0, v17, v18, "We already have a remote compatible id, no PML needed", v19, 2u);
  }

  v20 = v0[49];
  v21 = v0[39];
  v22 = v0[36];

  v20(v21, v22);
  sub_59834();
  v23 = [objc_allocWithZone(MPCPlaybackIntent) init];
  [v23 setTracklistSource:500];
  v24 = objc_opt_self();
  isa = sub_5A284().super.isa;

  v0[7] = 0;
  v26 = [v24 archivedDataWithRootObject:isa requiringSecureCoding:0 error:v0 + 7];

  v27 = v0[7];
  if (!v26)
  {
    v35 = v0[44];
    v84 = v0[43];
    v86 = v0[46];
    v88 = v0[33];
    v36 = v23;
    v38 = v0[31];
    v37 = v0[32];
    v39 = v0[29];
    v82 = v0[30];
    v83 = v0[34];
    v40 = v0[28];
    v41 = v27;
    sub_594A4();

    swift_willThrow();

    (*(v39 + 8))(v82, v40);
    v42 = *(v37 + 8);
    v42(v83, v38);
    (*(v35 + 8))(v86, v84);
    v42(v88, v38);
    goto LABEL_14;
  }

  v28 = v27;
  [v23 setTracklistToken:v26];

  v29 = sub_598F4();
  v0[2] = v29;
  v0[3] = sub_103D4;
  v0[4] = 0;
  v0[5] = sub_10ABC;
  v0[6] = 0;
  v30 = sub_10B20();
  if (v32)
  {
    __break(1u);
LABEL_43:
    __break(1u);
    return PodcastsMediaLibrary.mediaCollection(for:)(v30, v31);
  }

  if (*(v29 + 36) != v31)
  {
    __break(1u);
  }

  if (v30 != 1 << *(v29 + 32))
  {
    v46 = v0[12];
    v45 = v0[13];
    v48 = v0[10];
    v47 = v0[11];
    sub_10E48(v30, v31, v29, v45);
    (*(v47 + 16))(v46, v45, v48);
    v49 = (*(v47 + 88))(v46, v48);
    v50 = v0[15];
    v52 = v0[11];
    v51 = v0[12];
    v53 = v0[10];
    if (v49 == enum case for PlaybackIntent.Option.playbackSource(_:))
    {
      (*(v52 + 96))(v0[12], v53);
      v34 = sub_598C4();
      v54 = *(v34 - 8);
      (*(v54 + 32))(v50, v51, v34);
      (*(v54 + 56))(v50, 0, 1, v34);
      v55 = *(v52 + 8);
    }

    else
    {
      v55 = *(v52 + 8);
      v55(v0[12], v53);
      v34 = sub_598C4();
      (*(*(v34 - 8) + 56))(v50, 1, 1, v34);
    }

    v64 = v0[14];
    v63 = v0[15];
    v55(v0[13], v0[10]);
    sub_10F08(v63, v64);
    sub_598C4();
    v65 = *(v34 - 8);
    v30 = (*(v65 + 48))(v64, 1, v34);
    if (v30 != 1)
    {
      v67 = v0[15];
      v66 = v0[16];
      (*(v65 + 32))(v66, v0[14], v34);
      sub_9708(v67, &qword_7D2A0, &qword_5C238);
      (*(v65 + 56))(v66, 0, 1, v34);
      goto LABEL_35;
    }

    goto LABEL_43;
  }

  v33 = v0[16];
  v34 = sub_598C4();
  (*(*(v34 - 8) + 56))(v33, 1, 1, v34);
LABEL_35:
  v68 = v0[16];

  sub_598C4();
  v69 = *(v34 - 8);
  v70 = (*(v69 + 48))(v68, 1, v34);
  v71 = v0[16];
  v91 = v23;
  if (v70 == 1)
  {
    sub_9708(v71, &qword_7D2A0, &qword_5C238);
    v72 = 0;
  }

  else
  {
    sub_598B4();
    (*(v69 + 8))(v71, v34);
    v72 = sub_5A174();
  }

  v73 = v0[44];
  v85 = v0[43];
  v87 = v0[46];
  v74 = v0[34];
  v89 = v0[33];
  v76 = v0[31];
  v75 = v0[32];
  v77 = v0[29];
  v78 = v0[30];
  v79 = v0[28];
  [v91 setPlayActivityFeatureName:v72];

  (*(v77 + 8))(v78, v79);
  v80 = *(v75 + 8);
  v80(v74, v76);
  (*(v73 + 8))(v87, v85);
  v80(v89, v76);

  v81 = v0[1];

  return v81(v91);
}

uint64_t sub_E3A0()
{
  *(*v1 + 448) = v0;

  if (v0)
  {
    v2 = sub_F500;
  }

  else
  {
    v2 = sub_E4E0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_E4E0()
{
  v1 = v0;
  v4 = v0 + 22;
  v3 = v0[22];
  v2 = v4[1];
  v5 = v1[21];
  v6 = v1[8];
  v7 = sub_596B4();
  (*(v3 + 8))(v2, v5);
  v8 = sub_FDE4(v6);
  v9 = *(v7 + 16);
  if (!v9)
  {

    goto LABEL_17;
  }

  v10 = v8;
  v11 = 0;
  v12 = v1[18];
  v105 = (v12 + 32);
  v98 = v8;
  v95 = *(v7 + 16);
  v101 = v7;
  do
  {
    if (v11 >= *(v7 + 16))
    {
      __break(1u);
      goto LABEL_38;
    }

    v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v14 = *(v12 + 72);
    (*(v12 + 16))(v1[20], v7 + v13 + v14 * v11, v1[17]);
    v15 = sub_595E4(v10);
    v16 = v1[20];
    if (v15)
    {
      v17 = v1[19];
      v18 = v1;
      v19 = v1[17];
      v20 = *v105;
      (*v105)(v17, v16, v19);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_105BC(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v22 = _swiftEmptyArrayStorage[2];
      v21 = _swiftEmptyArrayStorage[3];
      if (v22 >= v21 >> 1)
      {
        sub_105BC((v21 > 1), v22 + 1, 1);
      }

      v23 = v18[19];
      v24 = v18[17];
      _swiftEmptyArrayStorage[2] = v22 + 1;
      v20(_swiftEmptyArrayStorage + v13 + v22 * v14, v23, v24);
      v1 = v18;
      v7 = v101;
      v10 = v98;
      v9 = v95;
    }

    else
    {
      (*(v12 + 8))(v1[20], v1[17]);
    }

    ++v11;
  }

  while (v9 != v11);
  v25 = *(v7 + 16);
  v26 = _swiftEmptyArrayStorage[2];

  v27 = v26 - v25;
  if (v26 >= v25)
  {
LABEL_17:
    v39 = v1[33];
    v40 = swift_task_alloc();
    *(v40 + 16) = v39;
    sub_100C4(sub_105DC, v40, _swiftEmptyArrayStorage);

    v41 = [objc_allocWithZone(MPCPlaybackIntent) init];
    [v41 setTracklistSource:500];
    v42 = objc_opt_self();
    isa = sub_5A284().super.isa;

    v1[7] = 0;
    v44 = [v42 archivedDataWithRootObject:isa requiringSecureCoding:0 error:v1 + 7];

    v45 = v1[7];
    if (!v44)
    {
      v53 = v1[44];
      v99 = v1[43];
      v103 = v1[46];
      v107 = v1[33];
      v55 = v1[31];
      v54 = v1[32];
      v56 = v1[29];
      v94 = v1[30];
      v97 = v1[34];
      v57 = v1[28];
      v58 = v45;
      sub_594A4();

      swift_willThrow();

      (*(v56 + 8))(v94, v57);
      v59 = *(v54 + 8);
      v59(v97, v55);
      (*(v53 + 8))(v103, v99);
      v59(v107, v55);
      goto LABEL_23;
    }

    v46 = v45;
    [v41 setTracklistToken:v44];

    v47 = sub_598F4();
    v1[2] = v47;
    v1[3] = sub_103D4;
    v1[4] = 0;
    v1[5] = sub_10ABC;
    v1[6] = 0;
    result = sub_10B20();
    if (v50)
    {
      __break(1u);
      goto LABEL_40;
    }

    if (*(v47 + 36) == v49)
    {
      if (result == 1 << *(v47 + 32))
      {
        v51 = v1[16];
        v52 = sub_598C4();
        (*(*(v52 - 8) + 56))(v51, 1, 1, v52);
LABEL_31:
        v77 = v1[16];

        sub_598C4();
        v78 = *(v52 - 8);
        v79 = (*(v78 + 48))(v77, 1, v52);
        v80 = v1[16];
        v110 = v41;
        if (v79 == 1)
        {
          sub_9708(v80, &qword_7D2A0, &qword_5C238);
          v81 = 0;
        }

        else
        {
          sub_598B4();
          (*(v78 + 8))(v80, v52);
          v81 = sub_5A174();
        }

        v82 = v1[44];
        v100 = v1[43];
        v104 = v1[46];
        v83 = v1[34];
        v108 = v1[33];
        v85 = v1[31];
        v84 = v1[32];
        v86 = v1[29];
        v87 = v1[30];
        v88 = v1[28];
        [v110 setPlayActivityFeatureName:v81];

        (*(v86 + 8))(v87, v88);
        v89 = *(v84 + 8);
        v89(v83, v85);
        (*(v82 + 8))(v104, v100);
        v89(v108, v85);

        v90 = v1[1];

        return v90(v110);
      }

      v62 = v1[12];
      v61 = v1[13];
      v64 = v1[10];
      v63 = v1[11];
      sub_10E48(result, v49, v47, v61);
      (*(v63 + 16))(v62, v61, v64);
      v65 = (*(v63 + 88))(v62, v64);
      v66 = v1[15];
      v68 = v1[11];
      v67 = v1[12];
      v69 = v1[10];
      if (v65 == enum case for PlaybackIntent.Option.playbackSource(_:))
      {
        (*(v68 + 96))(v1[12], v69);
        v52 = sub_598C4();
        v70 = *(v52 - 8);
        (*(v70 + 32))(v66, v67, v52);
        (*(v70 + 56))(v66, 0, 1, v52);
        v71 = *(v68 + 8);
      }

      else
      {
        v71 = *(v68 + 8);
        v71(v1[12], v69);
        v52 = sub_598C4();
        (*(*(v52 - 8) + 56))(v66, 1, 1, v52);
      }

      v73 = v1[14];
      v72 = v1[15];
      v71(v1[13], v1[10]);
      sub_10F08(v72, v73);
      sub_598C4();
      v74 = *(v52 - 8);
      result = (*(v74 + 48))(v73, 1, v52);
      if (result != 1)
      {
        v76 = v1[15];
        v75 = v1[16];
        (*(v74 + 32))(v75, v1[14], v52);
        sub_9708(v76, &qword_7D2A0, &qword_5C238);
        (*(v74 + 56))(v75, 0, 1, v52);
        goto LABEL_31;
      }

LABEL_40:
      __break(1u);
      return result;
    }

LABEL_38:
    __break(1u);
  }

  v92 = v1[51];
  v28 = v1[46];
  v29 = v1[44];
  v91 = v1[43];
  v106 = v1[34];
  v109 = v1[33];
  v30 = v1[32];
  v102 = v1[31];
  v31 = v1[29];
  v96 = v1[30];
  v93 = v1[28];

  v32 = sub_596E4();
  sub_10F78(&qword_7D2B8, &type metadata accessor for PodcastsPlaybackError.ValidationError, &protocol conformance descriptor for PodcastsPlaybackError.ValidationError);
  swift_allocError();
  v34 = v33;
  v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D2C0, &qword_5C248) + 48);
  v92(v34, v28, v91);
  v36 = sub_59804();
  v37 = &enum case for PlaybackIntent.PlayerConstraint.multipleItemsUntransferrable(_:);
  if (v27 <= 1)
  {
    v37 = &enum case for PlaybackIntent.PlayerConstraint.singleItemUntransferrable(_:);
  }

  (*(*(v36 - 8) + 104))(v34 + v35, *v37, v36);
  (*(*(v32 - 8) + 104))(v34, enum case for PodcastsPlaybackError.ValidationError.localPlaybackRequired(_:), v32);
  swift_willThrow();

  (*(v31 + 8))(v96, v93);
  v38 = *(v30 + 8);
  v38(v106, v102);
  (*(v29 + 8))(v28, v91);
  v38(v109, v102);
LABEL_23:

  v60 = v1[1];

  return v60();
}

uint64_t sub_F180()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_F31C()
{
  v1 = v0[46];
  v2 = v0[43];
  v3 = v0[44];
  v4 = v0[34];
  v5 = v0[31];
  v6 = v0[32];

  (*(v6 + 8))(v4, v5);
  (*(v3 + 8))(v1, v2);

  v7 = v0[1];

  return v7();
}

uint64_t sub_F500()
{
  v1 = v0[46];
  v2 = v0[43];
  v3 = v0[44];
  v4 = v0[34];
  v13 = v0[33];
  v5 = v0[31];
  v6 = v0[32];
  v7 = v0[29];
  v8 = v0[30];
  v9 = v0[28];

  (*(v7 + 8))(v8, v9);
  v10 = *(v6 + 8);
  v10(v4, v5);
  (*(v3 + 8))(v1, v2);
  v10(v13, v5);

  v11 = v0[1];

  return v11();
}

void (*sub_F71C())(uint64_t, uint64_t)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D2A0, &qword_5C238);
  v2 = __chkstk_darwin(v1 - 8);
  v4 = v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v2);
  v7 = v51 - v6;
  __chkstk_darwin(v5);
  v9 = v51 - v8;
  v10 = sub_59894();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = v51 - v16;
  __chkstk_darwin(v15);
  v19 = v51 - v18;
  v60 = v0;
  v20 = v66;
  v21 = sub_597D4();
  if (v20)
  {
    return v0;
  }

  v23 = v10;
  v52 = v14;
  v53 = v7;
  v66 = v11;
  v59 = v17;
  v56 = v9;
  v57 = 0;
  v54 = v4;
  if (v22 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    v25 = v21;
    v26 = v22;
    isa = sub_594B4().super.isa;
    sub_10FC0(v25, v26);
  }

  v27 = v23;
  v28 = [objc_allocWithZone(MPCPlaybackIntent) init];
  v29 = sub_598F4();
  v30 = v66;
  (*(v66 + 104))(v19, enum case for PlaybackIntent.Option.startPlayback(_:), v23);
  v31 = sub_35430(v19, v29);

  v32 = *(v30 + 8);
  v32(v19, v23);
  if (v31)
  {
    v33 = 20;
  }

  else
  {
    v33 = 0;
  }

  [v28 setActionAfterQueueLoad:v33];
  [v28 setTracklistSource:500];
  v58 = v28;
  [v28 setTracklistToken:isa];
  v34 = sub_598F4();
  v61 = v34;
  v62 = sub_103D4;
  v63 = 0;
  v64 = sub_10ABC;
  v65 = 0;
  result = sub_10B20();
  if (v37)
  {
    goto LABEL_23;
  }

  v38 = v59;
  if (*(v34 + 36) != v36)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v39 = 1 << *(v34 + 32);
  v55 = isa;
  if (result == v39)
  {
    v40 = sub_598C4();
    v41 = v56;
    (*(*(v40 - 8) + 56))(v56, 1, 1, v40);
LABEL_17:

    sub_598C4();
    v49 = *(v40 - 8);
    if ((*(v49 + 48))(v41, 1, v40) == 1)
    {
      sub_9708(v41, &qword_7D2A0, &qword_5C238);
      v50 = 0;
    }

    else
    {
      sub_598B4();
      (*(v49 + 8))(v41, v40);
      v50 = sub_5A174();
    }

    v0 = v58;
    [v58 setPlayActivityFeatureName:v50];

    return v0;
  }

  v60 = v32;
  v51[1] = v34;
  sub_10E48(result, v36, v34, v59);
  v42 = v66;
  v43 = v52;
  (*(v66 + 16))(v52, v38, v27);
  if ((*(v42 + 88))(v43, v27) == enum case for PlaybackIntent.Option.playbackSource(_:))
  {
    (*(v42 + 96))(v43, v27);
    v40 = sub_598C4();
    v44 = *(v40 - 8);
    v45 = v53;
    (*(v44 + 32))(v53, v43, v40);
    (*(v44 + 56))(v45, 0, 1, v40);
    v46 = v54;
    v60(v38, v27);
  }

  else
  {
    v47 = v60;
    v60(v43, v27);
    v40 = sub_598C4();
    v45 = v53;
    (*(*(v40 - 8) + 56))(v53, 1, 1, v40);
    v46 = v54;
    v47(v38, v27);
  }

  sub_10F08(v45, v46);
  sub_598C4();
  v48 = *(v40 - 8);
  result = (*(v48 + 48))(v46, 1, v40);
  if (result != 1)
  {
    v41 = v56;
    (*(v48 + 32))(v56, v46, v40);
    sub_9708(v45, &qword_7D2A0, &qword_5C238);
    (*(v48 + 56))(v41, 0, 1, v40);
    goto LABEL_17;
  }

LABEL_24:
  __break(1u);
  return result;
}

BOOL sub_FDE4(void *a1)
{
  v1 = [a1 playerPath];
  v2 = [v1 route];

  if (!v2)
  {
    return 0;
  }

  if ([v2 isiOSRoute] || objc_msgSend(v2, "isMacRoute"))
  {

    return 1;
  }

  else
  {
    v4 = [v2 routeSubtype];

    return v4 == &dword_18 + 2;
  }
}

uint64_t sub_FE94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v21 = a1;
  v22 = a2;
  v23 = a3;
  v3 = sub_59674();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_59604();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_59AB4();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v10, v21, v7);
  (*(v4 + 16))(v6, v22, v3);
  sub_59AA4();
  v15 = sub_59A54();
  v17 = v16;
  result = (*(v12 + 8))(v14, v11);
  v19 = v23;
  *v23 = v15;
  v19[1] = v17;
  return result;
}

uint64_t sub_100C4(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = result;
  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  do
  {
    for (i = v7; ; ++i)
    {
      if (i >= v4)
      {
        __break(1u);
LABEL_20:
        __break(1u);
        return result;
      }

      v10 = sub_59604();
      v12 = *(v10 - 8);
      result = v10 - 8;
      v11 = v12;
      v7 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_20;
      }

      result = v6(&v19, a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * i);
      if (v3)
      {

        return v8;
      }

      v13 = v20;
      if (v20)
      {
        break;
      }

      if (v7 == v4)
      {
        return v8;
      }
    }

    v14 = v19;
    result = swift_isUniquelyReferenced_nonNull_native();
    v21 = v14;
    if ((result & 1) == 0)
    {
      result = sub_1C304(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v16 = *(v8 + 2);
    v15 = *(v8 + 3);
    v17 = v16 + 1;
    if (v16 >= v15 >> 1)
    {
      result = sub_1C304((v15 > 1), v16 + 1, 1, v8);
      v17 = v16 + 1;
      v8 = result;
    }

    *(v8 + 2) = v17;
    v18 = &v8[16 * v16];
    *(v18 + 4) = v21;
    *(v18 + 5) = v13;
  }

  while (v7 != v4);
  return v8;
}

void (*PlaybackIntent.generateLocalMPCIntent()())(uint64_t, uint64_t)
{
  v0 = sub_59D14();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_597E4();
  result = 0;
  if ((v4 & 1) == 0)
  {
    sub_59CC4();
    v6 = sub_59D04();
    v7 = sub_5A434();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_0, v6, v7, "Creating a local playback intent", v8, 2u);
    }

    (*(v1 + 8))(v3, v0);
    return sub_F71C();
  }

  return result;
}

uint64_t sub_103D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_59894();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a1, v4);
  if ((*(v5 + 88))(v7, v4) == enum case for PlaybackIntent.Option.playbackSource(_:))
  {
    (*(v5 + 96))(v7, v4);
    v8 = sub_598C4();
    v9 = *(v8 - 8);
    (*(v9 + 32))(a2, v7, v8);
    return (*(v9 + 56))(a2, 0, 1, v8);
  }

  else
  {
    (*(v5 + 8))(v7, v4);
    v11 = sub_598C4();
    return (*(*(v11 - 8) + 56))(a2, 1, 1, v11);
  }
}

void *sub_105BC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10698(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_105F8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10870(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10618(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10974(a1, a2, a3, *v3, &qword_7D2D8, &qword_5C258, &qword_7D2E0, &qword_5C260);
  *v3 = result;
  return result;
}

void *sub_10658(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10974(a1, a2, a3, *v3, &qword_7DCE0, &qword_5CF60, &qword_7D2D0, &qword_5CA50);
  *v3 = result;
  return result;
}

void *sub_10698(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D2E8, &unk_5C268);
  v10 = *(sub_59604() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_59604() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_10870(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D2C8, &qword_5C250);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

void *sub_10974(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

uint64_t sub_10B20()
{
  v36 = sub_59894();
  v1 = *(v36 - 8);
  __chkstk_darwin(v36);
  v31 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D2A0, &qword_5C238);
  __chkstk_darwin(v3 - 8);
  v30 = &v26 - v4;
  v6 = *v0;
  v5 = v0[1];
  v7 = v0[3];
  v34 = v0[2];
  v35 = v5;
  v32 = v0[4];
  v33 = v7;
  v8 = v6 + 56;
  result = sub_5A6A4();
  v10 = result;
  v11 = *(v6 + 36);
  v12 = 1 << *(v6 + 32);
  if (result == v12)
  {
    return result;
  }

  else
  {
    v28 = v1 + 8;
    v29 = v1 + 16;
    v26 = v6 + 64;
    v27 = v1;
    v14 = v36;
    while ((v10 & 0x8000000000000000) == 0 && v10 < v12)
    {
      v15 = v10 >> 6;
      if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
      {
        goto LABEL_22;
      }

      v37 = v11;
      v16 = v31;
      (*(v1 + 16))(v31, *(v6 + 48) + *(v1 + 72) * v10, v14);
      v17 = v30;
      v35(v16);
      (*(v1 + 8))(v16, v14);
      v18 = v33(v17);
      result = sub_9708(v17, &qword_7D2A0, &qword_5C238);
      if (v18)
      {
        return v10;
      }

      v13 = 1 << *(v6 + 32);
      if (v10 >= v13)
      {
        goto LABEL_23;
      }

      v19 = *(v8 + 8 * v15);
      if ((v19 & (1 << v10)) == 0)
      {
        goto LABEL_24;
      }

      if (v37 != *(v6 + 36))
      {
        goto LABEL_25;
      }

      v20 = v19 & (-2 << (v10 & 0x3F));
      if (v20)
      {
        v13 = __clz(__rbit64(v20)) | v10 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v21 = v15 << 6;
        v22 = v15 + 1;
        v23 = (v26 + 8 * v15);
        while (v22 < (v13 + 63) >> 6)
        {
          v25 = *v23++;
          v24 = v25;
          v21 += 64;
          ++v22;
          if (v25)
          {
            result = sub_10FD4(v10, v37, 0);
            v13 = __clz(__rbit64(v24)) + v21;
            goto LABEL_5;
          }
        }

        result = sub_10FD4(v10, v37, 0);
      }

LABEL_5:
      v11 = *(v6 + 36);
      v12 = 1 << *(v6 + 32);
      v10 = v13;
      v1 = v27;
      if (v13 == v12)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_10E48@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (result < 0 || (v4 = result, 1 << *(a3 + 32) <= result))
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a3 + 36) != a2)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v6 = *(a3 + 48);
  v7 = sub_59894();
  v8 = *(v7 - 8);
  v9 = *(v8 + 16);
  v10 = v6 + *(v8 + 72) * v4;

  return v9(a4, v10, v7);
}

uint64_t sub_10F08(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D2A0, &qword_5C238);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10F78(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10FC0(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_7D34(result, a2);
  }

  return result;
}

uint64_t sub_10FD4(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t InMemoryPlaybackPositionTracker.__allocating_init(inMemoryStateRepository:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t InMemoryPlaybackPositionTracker.__allocating_init(asPartOf:)(uint64_t a1)
{
  sub_59BF4();
  sub_5A094();

  type metadata accessor for InMemoryPlaybackPositionTracker();
  result = swift_allocObject();
  *(result + 16) = v2;
  return result;
}

uint64_t sub_110A8(void *a1, void (*a2)(uint64_t, uint64_t))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D2F0, &qword_5BE70);
  __chkstk_darwin(v4 - 8);
  v6 = &v32 - v5;
  v7 = sub_59984();
  __chkstk_darwin(v7 - 8);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1[3];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v10);
  v12 = sub_15E38(v10, v11);
  if (v13)
  {
    sub_11428();
    v14 = swift_allocError();
    *v15 = 0;
    a2(v14, 1);
  }

  else
  {
    v17 = v12;
    v18 = a1[3];
    v19 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v18);
    (*(v19 + 64))(v18, v19);
    v20 = a1[3];
    v21 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v20);
    (*(v21 + 80))(v20, v21);
    sub_59504();
    v22 = sub_59524();
    (*(*(v22 - 8) + 56))(v6, 0, 1, v22);
    v23 = a1[3];
    v24 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v23);
    (*(v24 + 56))(v23, v24);
    sub_59964();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D300, &qword_5C278);
    v25 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D308, &qword_5C280) - 8);
    v26 = (*(*v25 + 80) + 32) & ~*(*v25 + 80);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_5BC80;
    v28 = (v27 + v26);
    v29 = v25[14];
    *v28 = v17;
    sub_5B84(v9, v28 + v29);
    v30 = sub_114A0(v27);
    swift_setDeallocating();
    sub_11650(v28);
    swift_deallocClassInstance();
    v31._rawValue = v30;
    sub_59BE4(v31);

    return sub_A86C(v9);
  }
}

unint64_t sub_11428()
{
  result = qword_7D2F8;
  if (!qword_7D2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7D2F8);
  }

  return result;
}

unint64_t sub_114A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D308, &qword_5C280);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v20 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D438, &qword_5C310);
    v7 = sub_5A854();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    while (1)
    {
      sub_11A3C(v9, v5);
      v11 = *v5;
      result = sub_56590(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v11;
      v15 = v7[7];
      v16 = sub_59984();
      result = sub_11AAC(v5 + v8, v15 + *(*(v16 - 8) + 72) * v14);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_11650(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D308, &qword_5C280);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1172C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7D3C0, qword_5C2F0);
    v3 = sub_5A854();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_565FC(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_11830(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D430, &unk_5E500);
    v3 = sub_5A854();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      swift_unknownObjectRetain();
      result = sub_56674(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

void *sub_11928(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7F400, &unk_5E430);
  v3 = sub_5A854();
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = sub_566B8(v4);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v6;
  v11 = (a1 + 9);
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    *(v3[6] + 8 * v9) = v4;
    v12 = (v3[7] + 16 * v9);
    *v12 = v5;
    v12[1] = result;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v4 = *(v11 - 2);
    v5 = *(v11 - 1);
    v17 = *v11;

    v9 = sub_566B8(v4);
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_11A3C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D308, &qword_5C280);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_11AAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_59984();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t LocalLibraryPlaybackPositionTracker.__allocating_init(stateCoordinator:)(__int128 *a1)
{
  v2 = swift_allocObject();
  *(v2 + 56) = [objc_allocWithZone(MTEpisodeLookupUtil) init];
  sub_12440(a1, v2 + 16);
  return v2;
}

uint64_t LocalLibraryPlaybackPositionTracker.init(stateCoordinator:)(__int128 *a1)
{
  *(v1 + 56) = [objc_allocWithZone(MTEpisodeLookupUtil) init];
  sub_12440(a1, v1 + 16);
  return v1;
}

void sub_11BBC(void *a1, void (*a2)(uint64_t, uint64_t), uint64_t a3)
{
  v4 = v3;
  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  v10 = sub_15E80(v8, v9);
  if (v12 == -1)
  {
    sub_11428();
    v18 = swift_allocError();
    *v19 = 0;
    a2(v18, 1);
  }

  else
  {
    sub_11DB4(v10, v11, v12);
    v13 = [objc_opt_self() sharedInstance];
    v14 = [v13 privateQueueContext];

    sub_123D8(a1, v21);
    v15 = swift_allocObject();
    v15[2] = v4;
    sub_12440(v21, (v15 + 3));
    v15[8] = v14;
    v15[9] = a2;
    v15[10] = a3;
    aBlock[4] = sub_12458;
    aBlock[5] = v15;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_12CB4;
    aBlock[3] = &block_descriptor_0;
    v16 = _Block_copy(aBlock);

    v17 = v14;

    [v17 performBlock:v16];
    _Block_release(v16);
  }
}

uint64_t sub_11DB4(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_5350(result, a2, a3 & 1);
  }

  return result;
}

void sub_11DCC(void *a1, void *a2, void *a3, void (*a4)(uint64_t, uint64_t), uint64_t a5)
{
  v61 = a4;
  v62 = a5;
  v57 = sub_59D14();
  v59 = *(v57 - 8);
  v8 = __chkstk_darwin(v57);
  v10 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v55 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D518, &qword_5C3C0);
  __chkstk_darwin(v13 - 8);
  v15 = &v55 - v14;
  v16 = sub_59734();
  v58 = *(v16 - 1);
  __chkstk_darwin(v16);
  v18 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a2[3];
  v20 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v19);
  v21 = sub_15EF0(v19, v20);
  v60 = a1;
  v22 = a1[7];
  v23 = a3;
  v63 = [v22 findEpisodeWithRequest:v21 context:a3];

  v25 = a2[3];
  v24 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v25);
  (*(v24 + 64))(v25, v24);
  if (v63)
  {
    v27 = v26;
    v28 = a2[3];
    v29 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v28);
    v30 = (*(v29 + 56))(v28, v29);
    v31 = a2[3];
    v32 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v31);
    v33 = (*(v32 + 80))(v31, v32);
    sub_12D10(v63, v33 & 1, v27, v30);
    [v23 saveInCurrentBlock];
    v61(0, 0);
    v34 = v63;
  }

  else
  {
    v55 = v23;
    v56 = v18;
    v35 = v58;
    v36 = v59;
    v63 = v16;
    v37 = v60;
    v38 = v61;
    if (v26 <= kMTEpisodePlayheadCutoffForPartiallyPlayed)
    {
      sub_59CD4();
      v43 = sub_59D04();
      v44 = sub_5A434();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        *v45 = 0;
        _os_log_impl(&dword_0, v43, v44, "􁀮 Episode not found. No action performed", v45, 2u);
      }

      (*(v36 + 8))(v10, v57);
      (v38)(0, 0);
    }

    else
    {
      sub_123D8(a2, v64);
      sub_12470(v64, v15);
      v39 = v35;
      v40 = *(v35 + 48);
      v41 = v63;
      if (v40(v15, 1, v63) == 1)
      {
        sub_9708(v15, &qword_7D518, &qword_5C3C0);
        sub_11428();
        swift_allocError();
        *v42 = 3;
        v38();
      }

      else
      {
        (*(v39 + 32))(v56, v15, v41);
        sub_59CD4();
        v46 = sub_59D04();
        v47 = sub_5A474();
        if (os_log_type_enabled(v46, v47))
        {
          v48 = swift_slowAlloc();
          *v48 = 0;
          _os_log_impl(&dword_0, v46, v47, "􁹟 Episode played beyond threshold. Performing implicit follow", v48, 2u);
        }

        (*(v36 + 8))(v12, v57);
        v49 = v37;
        __swift_project_boxed_opaque_existential_1(v37 + 2, v37[5]);
        sub_123D8(a2, v64);
        v50 = swift_allocObject();
        v51 = v62;
        v50[2] = v38;
        v50[3] = v51;
        v52 = v55;
        v50[4] = v55;
        v50[5] = v49;
        sub_12440(v64, (v50 + 6));

        v53 = v52;

        v54 = v56;
        sub_59704();

        (*(v39 + 8))(v54, v63);
      }
    }
  }
}

uint64_t sub_123D8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_12440(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_12470@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D520, &qword_5C3C8);
  __chkstk_darwin(v3 - 8);
  v5 = &v30 - v4;
  v6 = sub_599E4();
  v31 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v30 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D528, &qword_5C3D0);
  __chkstk_darwin(v12 - 8);
  v14 = &v30 - v13;
  v15 = sub_599A4();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v30 - v20;
  sub_123D8(a1, v33);
  sub_13A34(v33, v14);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    v22 = &qword_7D528;
    v23 = &qword_5C3D0;
    v24 = v14;
  }

  else
  {
    (*(v16 + 32))(v21, v14, v15);
    sub_123D8(a1, v33);
    sub_13E2C(v33, v5);
    v25 = v31;
    if ((*(v31 + 48))(v5, 1, v6) != 1)
    {
      (*(v25 + 32))(v11, v5, v6);
      (*(v25 + 16))(v9, v11, v6);
      (*(v16 + 16))(v19, v21, v15);
      v27 = v32;
      sub_59724();
      __swift_destroy_boxed_opaque_existential_0Tm(a1);
      (*(v25 + 8))(v11, v6);
      (*(v16 + 8))(v21, v15);
      v26 = 0;
      goto LABEL_7;
    }

    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    (*(v16 + 8))(v21, v15);
    v22 = &qword_7D520;
    v23 = &qword_5C3C8;
    v24 = v5;
  }

  sub_9708(v24, v22, v23);
  v26 = 1;
  v27 = v32;
LABEL_7:
  v28 = sub_59734();
  return (*(*(v28 - 8) + 56))(v27, v26, 1, v28);
}

void sub_1287C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t), uint64_t a7, void *a8, uint64_t a9, uint64_t a10)
{
  if (a3 && a5)
  {
    sub_123D8(a10, v19);
    v13 = swift_allocObject();
    v13[2] = a9;
    sub_12440(v19, (v13 + 3));
    v13[8] = a8;
    v13[9] = a6;
    v13[10] = a7;
    aBlock[4] = sub_15040;
    aBlock[5] = v13;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_12CB4;
    aBlock[3] = &block_descriptor_13;
    v14 = _Block_copy(aBlock);

    v15 = a8;

    [v15 performBlock:v14];
    _Block_release(v14);
  }

  else
  {
    sub_11428();
    v16 = swift_allocError();
    *v17 = 2;
    a6(v16, 1);
  }
}

uint64_t sub_12A04(uint64_t a1, void *a2, void *a3, uint64_t (*a4)(void, void))
{
  v8 = sub_59D14();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_59CD4();
  v12 = sub_59D04();
  v13 = sub_5A434();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v30 = a3;
    *v14 = 0;
    _os_log_impl(&dword_0, v12, v13, "􁹟 Show implicitly followed. Updating newly inserted episode", v14, 2u);
    a3 = v30;
  }

  (*(v9 + 8))(v11, v8);
  v15 = a2[3];
  v16 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v15);
  v17 = sub_15EF0(v15, v16);
  v18 = [*(a1 + 56) findEpisodeWithRequest:v17 context:a3];

  if (v18)
  {
    v19 = a2[3];
    v20 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v19);
    v21 = (*(v20 + 64))(v19, v20);
    v22 = a2[3];
    v23 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v22);
    v24 = (*(v23 + 56))(v22, v23);
    v25 = a2[3];
    v26 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v25);
    v27 = (*(v26 + 80))(v25, v26);
    sub_12D10(v18, v27 & 1, v21, v24);
  }

  [a3 saveInCurrentBlock];
  return a4(0, 0);
}

uint64_t sub_12CB4(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_12D10(void *a1, char a2, float a3, double a4)
{
  v5 = v4;
  v10 = sub_59D14();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v130 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = &v130 - v16;
  v18 = __chkstk_darwin(v15);
  v20 = &v130 - v19;
  v21 = __chkstk_darwin(v18);
  v23 = &v130 - v22;
  __chkstk_darwin(v21);
  v25 = &v130 - v24;
  sub_594E4();
  v27 = v26;
  [a1 lastUserMarkedAsPlayedDate];
  if (v27 - v28 > 2.0)
  {
    if (a2)
    {
      [a1 setPlayhead:0.0];
      [a1 setPlayed:1 manually:0 source:9];
      sub_59CD4();
      v29 = a1;

      v30 = sub_59D04();
      v31 = sub_5A474();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v135 = swift_slowAlloc();
        *v32 = 136315906;
        v33 = [v29 uuid];
        if (v33)
        {
          v34 = v33;
          v35 = sub_5A194();
          v37 = v36;
        }

        else
        {
          v35 = 4999502;
          v37 = 0xE300000000000000;
        }

        v67 = sub_9430(v35, v37, &v135);

        *(v32 + 4) = v67;
        *(v32 + 12) = 2080;
        *v69.i64 = a3;
        v72 = sub_14D8C(v68, v70, v69, v71);
        v74 = sub_9430(v72, v73, &v135);

        *(v32 + 14) = v74;
        *(v32 + 22) = 2048;
        *(v32 + 24) = roundf(a3);
        *(v32 + 32) = 2048;
        *(v32 + 34) = round(a4);
        _os_log_impl(&dword_0, v30, v31, "􀁢 Marking episode [%s] as played with elapsed duration: %s (%f / %f)", v32, 0x2Au);
        swift_arrayDestroy();
      }

      (*(v11 + 8))(v25, v10);
      return;
    }

    v48 = kMTEpisodePlayheadCutoffForPartiallyPlayed;
    v49 = &off_7B000;
    v134 = v10;
    if (kMTEpisodePlayheadCutoffForPartiallyPlayed < a3 && (([a1 isUnplayed] & 1) != 0 || objc_msgSend(a1, "backCatalog")))
    {
      __swift_project_boxed_opaque_existential_1((v5 + 16), *(v5 + 40));
      v49 = &off_7B000;
      sub_59714();
      [a1 setPlayState:1 manually:0 source:9];
      v50 = [a1 podcast];
      if (v50)
      {
        v51 = v50;
        [v50 lastRemovedFromUpNextDate];
        v53 = v52;

        sub_594E4();
        if (v54 - v53 > v48)
        {
          v55 = [a1 podcast];
          if (v55)
          {
            v56 = v55;
            [v55 setLastRemovedFromUpNextDate:0.0];
          }
        }
      }

      sub_59CD4();
      v57 = a1;

      v58 = sub_59D04();
      v59 = sub_5A474();

      if (os_log_type_enabled(v58, v59))
      {
        LODWORD(v132) = v59;
        v133 = v58;
        v60 = swift_slowAlloc();
        v131 = swift_slowAlloc();
        v135 = v131;
        *v60 = 136315906;
        v61 = [v57 uuid];
        if (v61)
        {
          v62 = v61;
          v63 = sub_5A194();
          v65 = v64;
        }

        else
        {
          v63 = 4999502;
          v65 = 0xE300000000000000;
        }

        v75 = sub_9430(v63, v65, &v135);

        *(v60 + 4) = v75;
        *(v60 + 12) = 2080;
        *v77.i64 = a3;
        v80 = sub_14D8C(v76, v78, v77, v79);
        v82 = sub_9430(v80, v81, &v135);

        *(v60 + 14) = v82;
        *(v60 + 22) = 2048;
        *(v60 + 24) = roundf(a3);
        *(v60 + 32) = 2048;
        *(v60 + 34) = round(a4);
        v83 = v133;
        _os_log_impl(&dword_0, v133, v132, "􀹴 Marked episode [%s] as partially played with elapsed duration: %s (%f / %f)", v60, 0x2Au);
        swift_arrayDestroy();

        v10 = v134;
        (*(v11 + 8))(v23, v134);
        v49 = &off_7B000;
      }

      else
      {

        v10 = v134;
        (*(v11 + 8))(v23, v134);
      }
    }

    [a1 playhead];
    if (vabds_f32(a3, *&v84) > 0.2)
    {
      *&v84 = a3;
      [a1 setPlayhead:v84];
      sub_59CD4();
      v85 = a1;

      v86 = sub_59D04();
      v87 = sub_5A474();

      if (os_log_type_enabled(v86, v87))
      {
        LODWORD(v133) = v87;
        v88 = swift_slowAlloc();
        v132 = swift_slowAlloc();
        v135 = v132;
        *v88 = 136315906;
        v89 = [v85 uuid];
        if (v89)
        {
          v90 = v89;
          v91 = sub_5A194();
          v93 = v92;
        }

        else
        {
          v91 = 4999502;
          v93 = 0xE300000000000000;
        }

        v104 = sub_9430(v91, v93, &v135);

        *(v88 + 4) = v104;
        *(v88 + 12) = 2080;
        *v106.i64 = a3;
        v109 = sub_14D8C(v105, v107, v106, v108);
        v111 = sub_9430(v109, v110, &v135);

        *(v88 + 14) = v111;
        *(v88 + 22) = 2048;
        *(v88 + 24) = roundf(a3);
        *(v88 + 32) = 2048;
        *(v88 + 34) = round(a4);
        _os_log_impl(&dword_0, v86, v133, "􀐫 Set [%s] last playhead to %s (%f / %f)", v88, 0x2Au);
        swift_arrayDestroy();

        v10 = v134;
        (*(v11 + 8))(v20, v134);
        v49 = &off_7B000;
        if (a4 <= 0.0)
        {
LABEL_46:
          sub_594E4();
          [a1 setLastDatePlayed:?];
          v128 = [a1 v49[387]];
          if (v128)
          {
            v129 = v128;
            [v128 resetGoDarkWithReason:4];
          }

          return;
        }

LABEL_35:
        [a1 duration];
        if (v94 != a4)
        {
          sub_59CD4();
          v95 = a1;

          v96 = sub_59D04();
          v97 = sub_5A474();

          if (os_log_type_enabled(v96, v97))
          {
            LODWORD(v133) = v97;
            v98 = swift_slowAlloc();
            v132 = swift_slowAlloc();
            v135 = v132;
            *v98 = 136316162;
            v99 = [v95 uuid];
            if (v99)
            {
              v100 = v99;
              v101 = sub_5A194();
              v103 = v102;
            }

            else
            {
              v101 = 4999502;
              v103 = 0xE300000000000000;
            }

            v112 = sub_9430(v101, v103, &v135);

            *(v98 + 4) = v112;
            *(v98 + 12) = 2080;
            v113 = [v95 duration];
            v117 = sub_14D8C(v113, v114, v115, v116);
            v119 = sub_9430(v117, v118, &v135);

            *(v98 + 14) = v119;
            *(v98 + 22) = 2048;
            v120 = [v95 duration];
            *(v98 + 24) = round(v121);
            *(v98 + 32) = 2080;
            *v122.i64 = a4;
            v125 = sub_14D8C(v120, v123, v122, v124);
            v127 = sub_9430(v125, v126, &v135);

            *(v98 + 34) = v127;
            *(v98 + 42) = 2048;
            *(v98 + 44) = round(a4);
            _os_log_impl(&dword_0, v96, v133, "􀐫 Updating local duration for [%s] from %s (%f) to %s (%f)", v98, 0x34u);
            swift_arrayDestroy();

            (*(v11 + 8))(v17, v134);
            v49 = &off_7B000;
          }

          else
          {

            (*(v11 + 8))(v17, v10);
          }

          [v95 setDuration:a4];
        }

        goto LABEL_46;
      }

      v10 = v134;
      (*(v11 + 8))(v20, v134);
    }

    if (a4 <= 0.0)
    {
      goto LABEL_46;
    }

    goto LABEL_35;
  }

  sub_59CD4();
  v38 = a1;
  v39 = sub_59D04();
  v40 = sub_5A474();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v135 = v42;
    *v41 = 136315138;
    v43 = [v38 uuid];
    if (v43)
    {
      v44 = v43;
      v45 = sub_5A194();
      v47 = v46;
    }

    else
    {
      v45 = 4999502;
      v47 = 0xE300000000000000;
    }

    v66 = sub_9430(v45, v47, &v135);

    *(v41 + 4) = v66;
    _os_log_impl(&dword_0, v39, v40, "􀁞 Ignoring last playback position for [%s]. Episode was marked as played by user.", v41, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v42);
  }

  (*(v11 + 8))(v14, v10);
}

uint64_t LocalLibraryPlaybackPositionTracker.deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  return v0;
}

uint64_t LocalLibraryPlaybackPositionTracker.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  return swift_deallocClassInstance();
}

unint64_t sub_13A34@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  result = (*(v5 + 16))(v4, v5);
  if (!v7)
  {
    goto LABEL_64;
  }

  v8 = HIBYTE(v7) & 0xF;
  v9 = result & 0xFFFFFFFFFFFFLL;
  if ((v7 & 0x2000000000000000) != 0)
  {
    v10 = HIBYTE(v7) & 0xF;
  }

  else
  {
    v10 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v10)
  {

    goto LABEL_64;
  }

  if ((v7 & 0x1000000000000000) != 0)
  {
    sub_1438C(result, v7, 10);
    v38 = v37;

    if (v38)
    {
      goto LABEL_64;
    }

LABEL_67:
    sub_59994();
    v39 = sub_599A4();
    (*(*(v39 - 8) + 56))(a2, 0, 1, v39);
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  if ((v7 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (v7 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_5A744();
      v9 = v40;
    }

    v11 = *result;
    if (v11 == 43)
    {
      if (v9 >= 1)
      {
        if (--v9)
        {
          v20 = 0;
          if (result)
          {
            v21 = (result + 1);
            while (1)
            {
              v22 = *v21 - 48;
              if (v22 > 9)
              {
                goto LABEL_62;
              }

              v23 = 10 * v20;
              if ((v20 * 10) >> 64 != (10 * v20) >> 63)
              {
                goto LABEL_62;
              }

              v20 = v23 + v22;
              if (__OFADD__(v23, v22))
              {
                goto LABEL_62;
              }

              ++v21;
              if (!--v9)
              {
                goto LABEL_63;
              }
            }
          }

          goto LABEL_61;
        }

        goto LABEL_62;
      }

      goto LABEL_71;
    }

    if (v11 != 45)
    {
      if (v9)
      {
        v28 = 0;
        if (result)
        {
          while (1)
          {
            v29 = *result - 48;
            if (v29 > 9)
            {
              goto LABEL_62;
            }

            v30 = 10 * v28;
            if ((v28 * 10) >> 64 != (10 * v28) >> 63)
            {
              goto LABEL_62;
            }

            v28 = v30 + v29;
            if (__OFADD__(v30, v29))
            {
              goto LABEL_62;
            }

            ++result;
            if (!--v9)
            {
              goto LABEL_63;
            }
          }
        }

        goto LABEL_61;
      }

LABEL_62:
      LOBYTE(v9) = 1;
LABEL_63:
      v42 = v9;
      v35 = v9;

      if (v35)
      {
LABEL_64:
        __swift_destroy_boxed_opaque_existential_0Tm(a1);
        v36 = sub_599A4();
        return (*(*(v36 - 8) + 56))(a2, 1, 1, v36);
      }

      goto LABEL_67;
    }

    if (v9 >= 1)
    {
      if (--v9)
      {
        v12 = 0;
        if (result)
        {
          v13 = (result + 1);
          while (1)
          {
            v14 = *v13 - 48;
            if (v14 > 9)
            {
              goto LABEL_62;
            }

            v15 = 10 * v12;
            if ((v12 * 10) >> 64 != (10 * v12) >> 63)
            {
              goto LABEL_62;
            }

            v12 = v15 - v14;
            if (__OFSUB__(v15, v14))
            {
              goto LABEL_62;
            }

            ++v13;
            if (!--v9)
            {
              goto LABEL_63;
            }
          }
        }

LABEL_61:
        LOBYTE(v9) = 0;
        goto LABEL_63;
      }

      goto LABEL_62;
    }

    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v41[0] = result;
  v41[1] = v7 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v8)
      {
        v31 = 0;
        v32 = v41;
        while (1)
        {
          v33 = *v32 - 48;
          if (v33 > 9)
          {
            break;
          }

          v34 = 10 * v31;
          if ((v31 * 10) >> 64 != (10 * v31) >> 63)
          {
            break;
          }

          v31 = v34 + v33;
          if (__OFADD__(v34, v33))
          {
            break;
          }

          ++v32;
          if (!--v8)
          {
            goto LABEL_61;
          }
        }
      }

      goto LABEL_62;
    }

    if (v8)
    {
      v9 = v8 - 1;
      if (v8 != 1)
      {
        v16 = 0;
        v17 = v41 + 1;
        while (1)
        {
          v18 = *v17 - 48;
          if (v18 > 9)
          {
            break;
          }

          v19 = 10 * v16;
          if ((v16 * 10) >> 64 != (10 * v16) >> 63)
          {
            break;
          }

          v16 = v19 - v18;
          if (__OFSUB__(v19, v18))
          {
            break;
          }

          ++v17;
          if (!--v9)
          {
            goto LABEL_63;
          }
        }
      }

      goto LABEL_62;
    }

    goto LABEL_70;
  }

  if (v8)
  {
    v9 = v8 - 1;
    if (v8 != 1)
    {
      v24 = 0;
      v25 = v41 + 1;
      while (1)
      {
        v26 = *v25 - 48;
        if (v26 > 9)
        {
          break;
        }

        v27 = 10 * v24;
        if ((v24 * 10) >> 64 != (10 * v24) >> 63)
        {
          break;
        }

        v24 = v27 + v26;
        if (__OFADD__(v27, v26))
        {
          break;
        }

        ++v25;
        if (!--v9)
        {
          goto LABEL_63;
        }
      }
    }

    goto LABEL_62;
  }

LABEL_72:
  __break(1u);
  return result;
}

unint64_t sub_13E2C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  result = (*(v5 + 8))(v4, v5);
  if (!v7)
  {
    goto LABEL_64;
  }

  v8 = HIBYTE(v7) & 0xF;
  v9 = result & 0xFFFFFFFFFFFFLL;
  if ((v7 & 0x2000000000000000) != 0)
  {
    v10 = HIBYTE(v7) & 0xF;
  }

  else
  {
    v10 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v10)
  {

    goto LABEL_64;
  }

  if ((v7 & 0x1000000000000000) != 0)
  {
    sub_1438C(result, v7, 10);
    v38 = v37;

    if (v38)
    {
      goto LABEL_64;
    }

LABEL_67:
    v39 = a1[3];
    v40 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v39);
    (*(v40 + 32))(v39, v40);
    v41 = a1[3];
    v42 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v41);
    (*(v42 + 72))(v41, v42);
    sub_599D4();
    v43 = sub_599E4();
    (*(*(v43 - 8) + 56))(a2, 0, 1, v43);
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  if ((v7 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (v7 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_5A744();
      v9 = v44;
    }

    v11 = *result;
    if (v11 == 43)
    {
      if (v9 >= 1)
      {
        if (--v9)
        {
          v20 = 0;
          if (result)
          {
            v21 = (result + 1);
            while (1)
            {
              v22 = *v21 - 48;
              if (v22 > 9)
              {
                goto LABEL_62;
              }

              v23 = 10 * v20;
              if ((v20 * 10) >> 64 != (10 * v20) >> 63)
              {
                goto LABEL_62;
              }

              v20 = v23 + v22;
              if (__OFADD__(v23, v22))
              {
                goto LABEL_62;
              }

              ++v21;
              if (!--v9)
              {
                goto LABEL_63;
              }
            }
          }

          goto LABEL_61;
        }

        goto LABEL_62;
      }

      goto LABEL_71;
    }

    if (v11 != 45)
    {
      if (v9)
      {
        v28 = 0;
        if (result)
        {
          while (1)
          {
            v29 = *result - 48;
            if (v29 > 9)
            {
              goto LABEL_62;
            }

            v30 = 10 * v28;
            if ((v28 * 10) >> 64 != (10 * v28) >> 63)
            {
              goto LABEL_62;
            }

            v28 = v30 + v29;
            if (__OFADD__(v30, v29))
            {
              goto LABEL_62;
            }

            ++result;
            if (!--v9)
            {
              goto LABEL_63;
            }
          }
        }

        goto LABEL_61;
      }

LABEL_62:
      LOBYTE(v9) = 1;
LABEL_63:
      v46 = v9;
      v35 = v9;

      if (v35)
      {
LABEL_64:
        __swift_destroy_boxed_opaque_existential_0Tm(a1);
        v36 = sub_599E4();
        return (*(*(v36 - 8) + 56))(a2, 1, 1, v36);
      }

      goto LABEL_67;
    }

    if (v9 >= 1)
    {
      if (--v9)
      {
        v12 = 0;
        if (result)
        {
          v13 = (result + 1);
          while (1)
          {
            v14 = *v13 - 48;
            if (v14 > 9)
            {
              goto LABEL_62;
            }

            v15 = 10 * v12;
            if ((v12 * 10) >> 64 != (10 * v12) >> 63)
            {
              goto LABEL_62;
            }

            v12 = v15 - v14;
            if (__OFSUB__(v15, v14))
            {
              goto LABEL_62;
            }

            ++v13;
            if (!--v9)
            {
              goto LABEL_63;
            }
          }
        }

LABEL_61:
        LOBYTE(v9) = 0;
        goto LABEL_63;
      }

      goto LABEL_62;
    }

    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v45[0] = result;
  v45[1] = v7 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v8)
      {
        v31 = 0;
        v32 = v45;
        while (1)
        {
          v33 = *v32 - 48;
          if (v33 > 9)
          {
            break;
          }

          v34 = 10 * v31;
          if ((v31 * 10) >> 64 != (10 * v31) >> 63)
          {
            break;
          }

          v31 = v34 + v33;
          if (__OFADD__(v34, v33))
          {
            break;
          }

          ++v32;
          if (!--v8)
          {
            goto LABEL_61;
          }
        }
      }

      goto LABEL_62;
    }

    if (v8)
    {
      v9 = v8 - 1;
      if (v8 != 1)
      {
        v16 = 0;
        v17 = v45 + 1;
        while (1)
        {
          v18 = *v17 - 48;
          if (v18 > 9)
          {
            break;
          }

          v19 = 10 * v16;
          if ((v16 * 10) >> 64 != (10 * v16) >> 63)
          {
            break;
          }

          v16 = v19 - v18;
          if (__OFSUB__(v19, v18))
          {
            break;
          }

          ++v17;
          if (!--v9)
          {
            goto LABEL_63;
          }
        }
      }

      goto LABEL_62;
    }

    goto LABEL_70;
  }

  if (v8)
  {
    v9 = v8 - 1;
    if (v8 != 1)
    {
      v24 = 0;
      v25 = v45 + 1;
      while (1)
      {
        v26 = *v25 - 48;
        if (v26 > 9)
        {
          break;
        }

        v27 = 10 * v24;
        if ((v24 * 10) >> 64 != (10 * v24) >> 63)
        {
          break;
        }

        v24 = v27 + v26;
        if (__OFADD__(v27, v26))
        {
          break;
        }

        ++v25;
        if (!--v9)
        {
          goto LABEL_63;
        }
      }
    }

    goto LABEL_62;
  }

LABEL_72:
  __break(1u);
  return result;
}

void *sub_1428C(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D1E0, &qword_5C028);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

void sub_14354(double **a1, uint64_t a2, uint64_t a3, double (*a4)(double **, uint64_t, uint64_t))
{
  v5 = a4(a1, a2, a3);
  v6 = *a1;
  *v6 = v5;
  *a1 = v6 + 1;
}

unsigned __int8 *sub_1438C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_5A254();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_14918(result, v5);
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_5A744();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_14918(uint64_t a1, unint64_t a2)
{
  v2 = sub_5A264();
  v6 = sub_14998(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_14998(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_5A674();
    if (!v9 || (v10 = v9, v11 = sub_1428C(v9, 0), v12 = sub_14AF0(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_5A1D4();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_5A1D4();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_5A744();
LABEL_4:

  return sub_5A1D4();
}

unint64_t sub_14AF0(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_14D10(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_5A234();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_5A744();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_14D10(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_5A214();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t sub_14D10(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_5A244();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = sub_5A224();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_14D8C(uint64_t a1, unint64_t a2, int8x16_t a3, int8x16_t a4)
{
  if (*a3.i64 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (*a3.i64 >= 9.22337204e18)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  *a4.i64 = *a3.i64 - trunc(*a3.i64);
  v5.f64[0] = NAN;
  v5.f64[1] = NAN;
  *a4.i64 = *vbslq_s8(vnegq_f64(v5), a4, a3).i64 * 100000.0;
  if ((a3.i64[0] & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (a4.i64[0] & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_12;
  }

  if (*a4.i64 <= -9.22337204e18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (*a4.i64 >= 9.22337204e18)
  {
LABEL_14:
    __break(1u);
    return String.init(format:_:)(a1, a2);
  }

  v6 = *a3.i64 % 60;
  v7 = *a3.i64 / 3600;
  v8 = ((((34953 * (*a3.i64 % 3600)) >> 16) >> 5) + ((((*a3.i64 % 3600) + ((-30583 * (*a3.i64 % 3600)) >> 16)) & 0x8000) >> 15));
  v9 = *a4.i64 / 1000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D020, &qword_5DFA0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_5C330;
  *(v10 + 56) = &type metadata for Int;
  *(v10 + 64) = &protocol witness table for Int;
  *(v10 + 32) = v7;
  *(v10 + 96) = &type metadata for Int;
  *(v10 + 104) = &protocol witness table for Int;
  *(v10 + 72) = v8;
  *(v10 + 136) = &type metadata for Int;
  *(v10 + 144) = &protocol witness table for Int;
  *(v10 + 112) = v6;
  a1 = 0x3A643230253A6425;
  a2 = 0xEF64252E64323025;
  *(v10 + 176) = &type metadata for Int;
  *(v10 + 184) = &protocol witness table for Int;
  *(v10 + 152) = v9;

  return String.init(format:_:)(a1, a2);
}