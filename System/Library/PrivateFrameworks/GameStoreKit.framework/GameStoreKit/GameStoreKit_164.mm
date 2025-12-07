uint64_t sub_24F71CED0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E220, &qword_24FA22508);
  MEMORY[0x28223BE20](v4);
  v6 = &v10[-v5];
  v11 = a2;
  v12 = a1;
  sub_24F71E9BC(a1, &v10[-v5], type metadata accessor for GSKDebugMetricsEvent);
  v7 = sub_24F925808();
  v8 = &v6[*(v4 + 36)];
  *v8 = 1;
  v8[8] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E228, &unk_24FA22510);
  sub_24F71E7A0();
  sub_24F71E88C();
  return sub_24F923C08();
}

uint64_t sub_24F71CFF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GSKDebugMetricsExpandedSummaryView(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E250, &unk_24FA22520);
  MEMORY[0x28223BE20](v7);
  v9 = &v19 - v8;
  v10 = type metadata accessor for GSKDebugMetricsCompactSummaryView(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 8))
  {
    sub_24F71E9BC(a2, v12, type metadata accessor for GSKDebugMetricsEvent);
    sub_24F71E9BC(v12, v9, type metadata accessor for GSKDebugMetricsCompactSummaryView);
    swift_storeEnumTagMultiPayload();
    sub_24F71E974(&qword_27F24E238, type metadata accessor for GSKDebugMetricsCompactSummaryView, &unk_24FA0F3C4);
    sub_24F71E974(&qword_27F220A30, type metadata accessor for GSKDebugMetricsExpandedSummaryView, &unk_24FA0BAB4);
    sub_24F924E28();
    v13 = type metadata accessor for GSKDebugMetricsCompactSummaryView;
    v14 = v12;
  }

  else
  {
    sub_24F71E9BC(a2, v6, type metadata accessor for GSKDebugMetricsEvent);
    v15 = sub_24F927618();
    v16 = &v6[*(v4 + 20)];
    *v16 = v15;
    v16[1] = v17;
    sub_24F71E9BC(v6, v9, type metadata accessor for GSKDebugMetricsExpandedSummaryView);
    swift_storeEnumTagMultiPayload();
    sub_24F71E974(&qword_27F24E238, type metadata accessor for GSKDebugMetricsCompactSummaryView, &unk_24FA0F3C4);
    sub_24F71E974(&qword_27F220A30, type metadata accessor for GSKDebugMetricsExpandedSummaryView, &unk_24FA0BAB4);
    sub_24F924E28();
    v13 = type metadata accessor for GSKDebugMetricsExpandedSummaryView;
    v14 = v6;
  }

  return sub_24F71EA24(v14, v13);
}

double sub_24F71D330(uint64_t *a1)
{
  type metadata accessor for GSKDebugMetricsViewModel(0);
  sub_24F71E974(&qword_27F24E1B8, type metadata accessor for GSKDebugMetricsViewModel, &unk_24FA22344);
  *(sub_24F923628() + OBJC_IVAR____TtC12GameStoreKitP33_9C9779645A20418DC2ED597E8CE649E824GSKDebugMetricsViewModel_recorder) = *a1;
  swift_retain_n();

  sub_24F71DA4C();

  return result;
}

uint64_t sub_24F71D40C(uint64_t a1)
{
  v2 = sub_24F925018();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218C78, &unk_24F94A170);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-v5];
  sub_24F924FF8();
  v10 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218C80, &qword_24FA22440);
  sub_24E602068(&qword_27F218C88, &qword_27F218C80, &qword_24FA22440, MEMORY[0x277CDF028]);
  sub_24F923668();
  v7 = sub_24E602068(&qword_27F24E1B0, &qword_27F218C78, &unk_24F94A170, MEMORY[0x277CDD7A8]);
  MEMORY[0x25304AA30](v6, v3, v7);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_24F71D5F8(uint64_t a1)
{
  v7 = *(a1 + 16);
  v8 = *(a1 + 32);
  v6 = *(a1 + 40);
  v2 = swift_allocObject();
  v3 = *(a1 + 16);
  v2[1] = *a1;
  v2[2] = v3;
  v2[3] = *(a1 + 32);

  sub_24E60169C(&v7, v5, &qword_27F24E1E0, &qword_24FA22448);
  sub_24E60169C(&v6, v5, &qword_27F24E1E8, &qword_24FA22450);
  return sub_24F926F88();
}

double sub_24F71D6F8(uint64_t a1)
{
  type metadata accessor for GSKDebugMetricsViewModel(0);
  sub_24F71E974(&qword_27F24E1B8, type metadata accessor for GSKDebugMetricsViewModel, &unk_24FA22344);
  v1 = *(sub_24F923628() + OBJC_IVAR____TtC12GameStoreKitP33_9C9779645A20418DC2ED597E8CE649E824GSKDebugMetricsViewModel_recorder);
  if (v1)
  {
    v2 = *(v1 + OBJC_IVAR____TtC12GameStoreKit28GSKDebugMetricsEventRecorder_stateLock);

    [v2 lock];
    swift_getKeyPath();
    swift_getKeyPath();

    sub_24F9230A8();
    [v2 unlock];
  }

  else
  {
  }

  return result;
}

uint64_t sub_24F71D854@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24F926DF8();
  *a1 = result;
  return result;
}

uint64_t makeDebugMetricsView()()
{
  sub_24E6EB850();

  return sub_24F924048();
}

uint64_t sub_24F71D924@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F211250 != -1)
  {
    swift_once();
  }

  v2 = qword_27F39E538;

  result = sub_24F923268();
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = sub_24F71BBEC;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = result;
  return result;
}

uint64_t sub_24F71D9D8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  return v1;
}

double sub_24F71DA4C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F468, &qword_24F962020);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v22 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E1F0, &qword_24FA224A8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E1F8, &unk_24FA224B0);
  v25 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v22 - v10;
  if (MEMORY[0x277D84F90] >> 62 && sub_24F92C738())
  {
    sub_24E804ACC(MEMORY[0x277D84F90]);
    v12 = v21;
  }

  else
  {
    v12 = MEMORY[0x277D84FA0];
  }

  v13 = OBJC_IVAR____TtC12GameStoreKitP33_9C9779645A20418DC2ED597E8CE649E824GSKDebugMetricsViewModel_cancellables;
  swift_beginAccess();
  *(v1 + v13) = v12;

  v15 = *(v1 + OBJC_IVAR____TtC12GameStoreKitP33_9C9779645A20418DC2ED597E8CE649E824GSKDebugMetricsViewModel_recorder);
  if (v15)
  {
    swift_beginAccess();
    v24 = v15;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242C08, &qword_24F9F4218);
    sub_24F923068();
    swift_endAccess();
    sub_24E74EC40();
    v16 = sub_24F92BEF8();
    v23 = v9;
    v17 = v16;
    v26 = v16;
    v18 = sub_24F92BEB8();
    (*(*(v18 - 8) + 56))(v4, 1, 1, v18);
    sub_24E602068(&qword_27F24E200, &qword_27F24E1F0, &qword_24FA224A8, MEMORY[0x277CBCEC8]);
    v22 = v1;
    v19 = v25;
    sub_24F71E974(&qword_27F21F498, sub_24E74EC40, MEMORY[0x277D85228]);
    sub_24F923118();
    sub_24E601704(v4, &qword_27F21F468, &qword_24F962020);

    (*(v6 + 8))(v8, v5);
    swift_allocObject();
    swift_weakInit();
    sub_24E602068(&qword_27F24E208, &qword_27F24E1F8, &unk_24FA224B0, MEMORY[0x277CBCD60]);
    v20 = v23;
    sub_24F923148();

    (*(v19 + 8))(v11, v20);
    swift_beginAccess();
    sub_24F922F58();
    swift_endAccess();
  }

  return result;
}

uint64_t sub_24F71DEA4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    sub_24EF1C7FC(v3);
    swift_getKeyPath();
    swift_getKeyPath();
    return sub_24F9230A8();
  }

  return result;
}

double sub_24F71DF40()
{
  v1 = OBJC_IVAR____TtC12GameStoreKitP33_9C9779645A20418DC2ED597E8CE649E824GSKDebugMetricsViewModel__eventsSnapshot;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242C08, &qword_24F9F4218);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_deallocClassInstance();
  return result;
}

uint64_t type metadata accessor for GSKDebugMetricsViewModel(uint64_t a1)
{
  result = qword_27F24E128;
  if (!qword_27F24E128)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F71E05C(uint64_t a1)
{
  sub_24F40F884(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_24F71E164()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242C08, &qword_24F9F4218);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - v3;
  v5 = OBJC_IVAR____TtC12GameStoreKitP33_9C9779645A20418DC2ED597E8CE649E824GSKDebugMetricsViewModel__eventsSnapshot;
  v6 = MEMORY[0x277D84F90];
  v9[1] = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242C00, qword_24F9F4150);
  sub_24F923058();
  (*(v2 + 32))(v0 + v5, v4, v1);
  if (v6 >> 62 && sub_24F92C738())
  {
    sub_24E804ACC(MEMORY[0x277D84F90]);
  }

  else
  {
    v7 = MEMORY[0x277D84FA0];
  }

  *(v0 + OBJC_IVAR____TtC12GameStoreKitP33_9C9779645A20418DC2ED597E8CE649E824GSKDebugMetricsViewModel_cancellables) = v7;
  *(v0 + OBJC_IVAR____TtC12GameStoreKitP33_9C9779645A20418DC2ED597E8CE649E824GSKDebugMetricsViewModel_recorder) = 0;
  return v0;
}

unint64_t sub_24F71E2D4()
{
  result = qword_27F24E198;
  if (!qword_27F24E198)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24E188, &qword_24FA22410);
    sub_24E602068(&qword_27F24E1A0, &qword_27F24E1A8, &unk_24FA22420, MEMORY[0x277CDE5A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24E198);
  }

  return result;
}

uint64_t sub_24F71E3C0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242C00, qword_24F9F4150);
  sub_24F91F6B8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E1D8, &qword_24FA22438);
  sub_24E602068(&qword_27F24E210, &qword_27F242C00, qword_24F9F4150, MEMORY[0x277D83980]);
  sub_24E602068(&qword_27F24E1D0, &qword_27F24E1D8, &qword_24FA22438, MEMORY[0x277CDD938]);
  sub_24F71E974(&qword_27F24E218, type metadata accessor for GSKDebugMetricsEvent, &unk_24FA27390);
  return sub_24F927238();
}

unint64_t sub_24F71E564()
{
  result = qword_27F24E1C8;
  if (!qword_27F24E1C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24E1C0, &qword_24FA22430);
    sub_24E602068(&qword_27F24E1D0, &qword_27F24E1D8, &qword_24FA22438, MEMORY[0x277CDD938]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24E1C8);
  }

  return result;
}

uint64_t objectdestroyTm_84()
{

  sub_24E683950(*(v0 + 32), *(v0 + 40));

  return swift_deallocObject();
}

uint64_t sub_24F71E6D0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_24F71E760()
{

  return swift_deallocObject();
}

unint64_t sub_24F71E7A0()
{
  result = qword_27F24E230;
  if (!qword_27F24E230)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24E228, &unk_24FA22510);
    sub_24F71E974(&qword_27F24E238, type metadata accessor for GSKDebugMetricsCompactSummaryView, &unk_24FA0F3C4);
    sub_24F71E974(&qword_27F220A30, type metadata accessor for GSKDebugMetricsExpandedSummaryView, &unk_24FA0BAB4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24E230);
  }

  return result;
}

unint64_t sub_24F71E88C()
{
  result = qword_27F24E240;
  if (!qword_27F24E240)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24E220, &qword_24FA22508);
    sub_24F71E974(&qword_27F24E248, type metadata accessor for GSKDebugMetricsEventDetailView, &unk_24F964900);
    sub_24E602068(&qword_27F218BC8, &qword_27F218BD0, &qword_24F94A0E0, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24E240);
  }

  return result;
}

uint64_t sub_24F71E974(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24F71E9BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F71EA24(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24F71EA88()
{
  result = qword_27F24E258;
  if (!qword_27F24E258)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27F24E260, &qword_24FA22530);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24E180, &qword_24FA22408);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24E188, &qword_24FA22410);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24E190, &qword_24FA22418);
    sub_24F71E2D4();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F218C78, &unk_24F94A170);
    sub_24E602068(&qword_27F24E1B0, &qword_27F218C78, &unk_24F94A170, MEMORY[0x277CDD7A8]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24E160, &qword_24FA223E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24E158, &qword_24FA223E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24E150, &qword_24FA223D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24E178, &qword_24FA22400);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24E258);
  }

  return result;
}

uint64_t sub_24F71ED20()
{
  v0 = sub_24F9289E8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216F40, &unk_24F9487C0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v13 - v2;
  v4 = sub_24F928AD8();
  MEMORY[0x28223BE20](v4 - 8);
  sub_24F928A98();
  v5 = sub_24F92A628();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  v6._countAndFlagsBits = 0xD000000000000031;
  v6._object = 0x800000024FA777B0;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  localizedString(_:comment:)(v6, v7);
  v8._countAndFlagsBits = 0xD000000000000033;
  v8._object = 0x800000024FA777F0;
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  localizedString(_:comment:)(v8, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213DB8, &qword_24F93BA00);
  sub_24F92A618();
  *(swift_allocObject() + 16) = xmmword_24F93DE60;
  v10._object = 0x800000024FA580D0;
  v10._countAndFlagsBits = 0xD00000000000001FLL;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  localizedString(_:comment:)(v10, v11);
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  sub_24F92A608();
  sub_24F9289D8();
  return sub_24F92A5E8();
}

id AddFriendActionImplementation.perform(_:asPartOf:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v35 = a2;
  v5 = sub_24F928AE8();
  v32 = *(v5 - 8);
  v33 = v5;
  MEMORY[0x28223BE20](v5);
  v31 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v30 - v11;
  if (qword_27F2113E8 != -1)
  {
    swift_once();
  }

  v13 = sub_24F9220D8();
  __swift_project_value_buffer(v13, qword_27F39E808);
  v14 = sub_24F9220B8();
  v15 = sub_24F92BD98();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_24E5DD000, v14, v15, "Performing AddFriendActionImplementation", v16, 2u);
    MEMORY[0x2530542D0](v16, -1, -1);
  }

  result = [objc_opt_self() shared];
  if (result)
  {
    v18 = result;
    v19 = [result isAddingFriendsRestricted];

    if (v19)
    {
      v20 = sub_24F9220B8();
      v21 = sub_24F92BD98();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_24E5DD000, v20, v21, "Sending friend requests is restricted via ScreenTime.", v22, 2u);
        MEMORY[0x2530542D0](v22, -1, -1);
      }

      v23 = sub_24F92B858();
      (*(*(v23 - 8) + 56))(v12, 1, 1, v23);
      (*(v7 + 16))(&v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v34, a3);
      v24 = (*(v7 + 80) + 40) & ~*(v7 + 80);
      v25 = swift_allocObject();
      *(v25 + 2) = 0;
      *(v25 + 3) = 0;
      *(v25 + 4) = *(a3 + 16);
      (*(v7 + 32))(&v25[v24], &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a3);
      *&v25[(v8 + v24 + 7) & 0xFFFFFFFFFFFFFFF8] = v35;

      sub_24F1D4600(0, 0, v12, &unk_24FA22540, v25);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510, &unk_24F93C690);
      (*(v32 + 104))(v31, *MEMORY[0x277D21CA8], v33);
      return sub_24F92A988();
    }

    else
    {
      v26 = *a1;
      v27 = a1[1];
      if (*(a1 + 48))
      {
        if (*(a1 + 48) == 1)
        {
          return sub_24F71FA74(v26, v27, a1[2], a1[3], a1[4], a1[5], a1, v35, a3);
        }

        else
        {
          v29 = v35;

          return sub_24F71FE00(v26, a1, v29, a3);
        }
      }

      else
      {
        v28 = v35;

        return sub_24F71F72C(v26, v27, a1, v28, a3);
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24F71F49C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[7] = a1;
  v6[8] = a4;
  return MEMORY[0x2822009F8](sub_24F71F4C0, 0, 0);
}

uint64_t sub_24F71F4C0()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = sub_24F92A638();
  v4 = MEMORY[0x277D223B8];
  v0[5] = v3;
  v0[6] = v4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  (*(*(v3 - 8) + 16))(boxed_opaque_existential_1, v2, v3);
  v6 = swift_task_alloc();
  v0[11] = v6;
  v9 = type metadata accessor for AddFriendActionImplementation(0, v1, v7, v8);
  WitnessTable = swift_getWitnessTable();
  *v6 = v0;
  v6[1] = sub_24F71F5F0;
  v11 = v0[9];
  v12 = v0[7];

  return sub_24F1487B0(v12, (v0 + 2), v11, v9, WitnessTable);
}

uint64_t sub_24F71F5F0()
{
  v2 = *v1;
  v2[12] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24F726904, 0, 0);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v2 + 2);
    v3 = v2[1];

    return v3();
  }
}

uint64_t sub_24F71F72C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v32 = a2;
  v33 = a4;
  v31 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  MEMORY[0x28223BE20](v9 - 8);
  v34 = &v31 - v10;
  v11 = type metadata accessor for AddFriendAction(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a5 - 8);
  v16 = *(v15 + 64);
  v18 = MEMORY[0x28223BE20](v17);
  v19 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v19, v6, a5, v18);
  sub_24F7259FC(a3, v14, type metadata accessor for AddFriendAction);
  v20 = (*(v15 + 80) + 40) & ~*(v15 + 80);
  v21 = (v16 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = (*(v12 + 80) + v21 + 8) & ~*(v12 + 80);
  v23 = swift_allocObject();
  v24 = v31;
  v25 = v32;
  *(v23 + 2) = *(a5 + 16);
  *(v23 + 3) = v24;
  *(v23 + 4) = v25;
  (*(v15 + 32))(&v23[v20], v19, a5);
  *&v23[v21] = v33;
  sub_24F725BE4(v14, &v23[v22], type metadata accessor for AddFriendAction);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510, &unk_24F93C690);

  v26 = sub_24F92A9E8();
  v27 = sub_24F92B858();
  v28 = v34;
  (*(*(v27 - 8) + 56))(v34, 1, 1, v27);
  v29 = swift_allocObject();
  v29[2] = 0;
  v29[3] = 0;
  v29[4] = &unk_24FA225C8;
  v29[5] = v23;
  v29[6] = v26;

  sub_24E6959D8(0, 0, v28, &unk_24F94D7B0, v29);

  return v26;
}

uint64_t sub_24F71FA74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v44 = a2;
  v45 = a8;
  v41 = a5;
  v42 = a6;
  v39 = a3;
  v40 = a4;
  v43 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  MEMORY[0x28223BE20](v11 - 8);
  v46 = &v37 - v12;
  v13 = type metadata accessor for AddFriendAction(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v38 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a9 - 8);
  v17 = *(v16 + 64);
  v19 = MEMORY[0x28223BE20](v18);
  v20 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v20, v9, a9, v19);
  sub_24F7259FC(a7, &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AddFriendAction);
  v21 = (*(v16 + 80) + 40) & ~*(v16 + 80);
  v22 = (v17 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = (*(v14 + 80) + v22 + 16) & ~*(v14 + 80);
  v24 = (v15 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  v26 = v39;
  v27 = v40;
  *(v25 + 2) = *(a9 + 16);
  *(v25 + 3) = v26;
  *(v25 + 4) = v27;
  (*(v16 + 32))(&v25[v21], v20, a9);
  v28 = &v25[v22];
  v29 = v42;
  *v28 = v41;
  v28[1] = v29;
  sub_24F725BE4(v38, &v25[v23], type metadata accessor for AddFriendAction);
  v30 = v44;
  *&v25[v24] = v45;
  v31 = &v25[(v24 + 15) & 0xFFFFFFFFFFFFFFF8];
  *v31 = v43;
  v31[1] = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510, &unk_24F93C690);

  v32 = sub_24F92A9E8();
  v33 = sub_24F92B858();
  v34 = v46;
  (*(*(v33 - 8) + 56))(v46, 1, 1, v33);
  v35 = swift_allocObject();
  v35[2] = 0;
  v35[3] = 0;
  v35[4] = &unk_24FA22608;
  v35[5] = v25;
  v35[6] = v32;

  sub_24E6959D8(0, 0, v34, &unk_24FA22610, v35);

  return v32;
}

uint64_t sub_24F71FE00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v30 = a1;
  v31 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  MEMORY[0x28223BE20](v8 - 8);
  v32 = &v29 - v9;
  v10 = type metadata accessor for AddFriendAction(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v29 = a4;
  v13 = *(a4 - 8);
  v14 = *(v13 + 64);
  v16 = MEMORY[0x28223BE20](v15);
  v17 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v17, v5, v16);
  sub_24F7259FC(a2, &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AddFriendAction);
  v18 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v19 = (v14 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v19 + 15) & 0xFFFFFFFFFFFFFFF8;
  v21 = (*(v11 + 80) + v20 + 8) & ~*(v11 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = *(v29 + 16);
  (*(v13 + 32))(v22 + v18, v17);
  v23 = v30;
  *(v22 + v19) = v31;
  *(v22 + v20) = v23;
  sub_24F725BE4(&v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21, type metadata accessor for AddFriendAction);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510, &unk_24F93C690);

  v24 = sub_24F92A9E8();
  v25 = sub_24F92B858();
  v26 = v32;
  (*(*(v25 - 8) + 56))(v32, 1, 1, v25);
  v27 = swift_allocObject();
  v27[2] = 0;
  v27[3] = 0;
  v27[4] = &unk_24FA22628;
  v27[5] = v22;
  v27[6] = v24;

  sub_24E6959D8(0, 0, v26, &unk_24FA22630, v27);

  return v24;
}

uint64_t sub_24F720168(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v4[4];
  v8 = *(type metadata accessor for AddFriendActionImplementation(0, v7, a3, a4) - 8);
  v9 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v10 = v4[2];
  v11 = v4[3];
  v12 = *(v4 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_24E6541E4;

  return sub_24F71F49C(a1, v10, v11, v4 + v9, v12, v7);
}

uint64_t sub_24F72029C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[254] = a7;
  v7[253] = a6;
  v7[247] = a5;
  v7[241] = a4;
  v7[235] = a3;
  v7[229] = a2;
  v7[223] = a1;
  v9 = *(type metadata accessor for ReportFriendRequestDidSendAction(0) - 8);
  v7[255] = v9;
  v7[256] = *(v9 + 64);
  v7[257] = swift_task_alloc();
  v7[258] = swift_task_alloc();
  v12 = type metadata accessor for AddFriendActionImplementation(0, a7, v10, v11);
  v7[259] = v12;
  v13 = *(v12 - 8);
  v7[260] = v13;
  v7[261] = *(v13 + 64);
  v7[262] = swift_task_alloc();
  v7[263] = swift_task_alloc();
  v14 = sub_24F928AE8();
  v7[264] = v14;
  v7[265] = *(v14 - 8);
  v7[266] = swift_task_alloc();
  v7[267] = swift_task_alloc();
  v7[268] = swift_task_alloc();
  v15 = type metadata accessor for RemoveFriendSuggestionAction(0);
  v7[269] = v15;
  v16 = *(v15 - 8);
  v7[270] = v16;
  v7[271] = *(v16 + 64);
  v7[272] = swift_task_alloc();
  v7[273] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24F7204E0, 0, 0);
}

uint64_t sub_24F7204E0()
{
  v1 = [objc_opt_self() proxyForLocalPlayer];
  v2 = [v1 friendServicePrivate];
  v0[274] = v2;

  v3 = sub_24F92B098();
  v0[275] = v3;
  v0[162] = v0;
  v0[163] = sub_24F720664;
  v4 = swift_continuation_init();
  v0[182] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B618, &unk_24FA08730);
  v0[179] = v4;
  v0[175] = MEMORY[0x277D85DD0];
  v0[176] = 1107296256;
  v0[177] = sub_24F722498;
  v0[178] = &block_descriptor_172;
  [v2 sendFriendInvitationWithPlayerID:v3 contactAssociationID:0 completion:v0 + 175];

  return MEMORY[0x282200938](v0 + 162);
}

uint64_t sub_24F720664()
{
  v1 = *(*v0 + 1328);
  *(*v0 + 2208) = v1;
  if (v1)
  {
    v2 = sub_24F72124C;
  }

  else
  {
    v2 = sub_24F720774;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F720774()
{
  v1 = *(v0 + 2200);
  v2 = *(v0 + 2184);
  v25 = *(v0 + 2168);
  v22 = *(v0 + 2176);
  v23 = *(v0 + 2160);
  v3 = *(v0 + 2104);
  v26 = *(v0 + 2088);
  v4 = *(v0 + 2080);
  v5 = *(v0 + 2072);
  v21 = v5;
  v29 = *(v0 + 2064);
  v30 = *(v0 + 2096);
  v31 = *(v0 + 2056);
  v33 = *(v0 + 2048);
  v32 = *(v0 + 2040);
  v35 = *(v0 + 2032);
  v34 = *(v0 + 2024);
  v6 = *(v0 + 1928);
  v28 = *(v0 + 1976);
  v7 = *(v0 + 1880);
  v8 = *(v0 + 1832);
  swift_unknownObjectRelease();

  sub_24F928A98();
  *v2 = v8;
  *(v2 + 8) = v7;
  *(v2 + 16) = 1;
  v27 = *(v4 + 16);
  v27(v3, v6, v5);
  sub_24F7259FC(v2, v22, type metadata accessor for RemoveFriendSuggestionAction);
  v24 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v9 = (v24 + v26 + *(v23 + 80)) & ~*(v23 + 80);
  v10 = swift_allocObject();
  *(v0 + 2216) = v10;
  *(v10 + 16) = v35;
  v11 = *(v4 + 32);
  v11(v10 + v24, v3, v21);
  sub_24F725BE4(v22, v10 + v9, type metadata accessor for RemoveFriendSuggestionAction);
  *(v10 + ((v25 + v9 + 7) & 0xFFFFFFFFFFFFFFF8)) = v28;

  swift_asyncLet_begin();
  sub_24F928A98();
  v27(v30, v6, v21);
  sub_24F7259FC(v29, v31, type metadata accessor for ReportFriendRequestDidSendAction);
  v12 = (v24 + v26 + *(v32 + 80)) & ~*(v32 + 80);
  v13 = swift_allocObject();
  *(v0 + 2224) = v13;
  *(v13 + 16) = v35;
  v11(v13 + v24, v30, v21);
  sub_24F725BE4(v31, v13 + v12, type metadata accessor for ReportFriendRequestDidSendAction);
  *(v13 + ((v33 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = v28;

  swift_asyncLet_begin();
  sub_24E60169C(v34 + 56, v0 + 1704, qword_27F24EC90, &unk_24F93C1D0);
  if (*(v0 + 1728))
  {
    sub_24E612C80((v0 + 1704), v0 + 1624);
    v14 = swift_task_alloc();
    *(v0 + 2232) = v14;
    WitnessTable = swift_getWitnessTable();
    *v14 = v0;
    v14[1] = sub_24F720BE0;
    v16 = *(v0 + 2128);
    v17 = *(v0 + 2072);
    v18 = *(v0 + 1976);

    return sub_24F1487B0(v16, v0 + 1624, v18, v17, WitnessTable);
  }

  else
  {
    sub_24E601704(v0 + 1704, qword_27F21B590, &unk_24F93BE30);
    v20 = *(v0 + 2144);

    return MEMORY[0x282200930](v0 + 16, v20, sub_24F720D7C, v0 + 1360);
  }
}

uint64_t sub_24F720BE0()
{
  v2 = *v1;
  *(*v1 + 2240) = v0;

  if (v0)
  {
    v3 = sub_24F7215C0;
  }

  else
  {
    (*(v2[265] + 8))(v2[266], v2[264]);
    v3 = sub_24F720D10;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24F720D10()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 1624));
  v1 = *(v0 + 2144);

  return MEMORY[0x282200930](v0 + 16, v1, sub_24F720D7C, v0 + 1360);
}

uint64_t sub_24F720D7C()
{
  *(v1 + 2248) = v0;
  if (v0)
  {
    return MEMORY[0x282200920](v1 + 656, *(v1 + 2136), sub_24F721A98, v1 + 1504);
  }

  else
  {
    return MEMORY[0x282200930](v1 + 656, *(v1 + 2136), sub_24F720DC4, v1 + 1664);
  }
}

uint64_t sub_24F720DC4()
{
  *(v1 + 2256) = v0;
  if (v0)
  {
    return MEMORY[0x282200920](v1 + 656, *(v1 + 2136), sub_24F721F04, v1 + 1744);
  }

  else
  {
    return MEMORY[0x282200920](v1 + 656, *(v1 + 2136), sub_24F720E0C, v1 + 1840);
  }
}

uint64_t sub_24F720E28()
{
  sub_24F725DCC(*(v0 + 2064), type metadata accessor for ReportFriendRequestDidSendAction);
  v1 = *(v0 + 2144);

  return MEMORY[0x282200920](v0 + 16, v1, sub_24F720EA8, v0 + 1888);
}

uint64_t sub_24F720EC4()
{
  sub_24F725DCC(v0[273], type metadata accessor for RemoveFriendSuggestionAction);
  v1 = v0[278];
  v2 = v0[277];
  (*(v0[265] + 104))(v0[223], *MEMORY[0x277D21CA8], v0[264]);
  sub_24E824448(&unk_24FA225E0, v2);
  sub_24E824448(&unk_24FA225F0, v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_24F721024()
{
  *(*v1 + 2312) = v0;

  if (v0)
  {
    v2 = sub_24F722370;
  }

  else
  {
    v2 = sub_24F721138;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F721138()
{
  v1 = *(v0 + 2296);
  v2 = *(v0 + 2288);
  v3 = *(v0 + 2280);
  v4 = *(v0 + 2272);

  __swift_destroy_boxed_opaque_existential_1((v0 + 1464));
  sub_24E824448(v4, v3);
  sub_24E824448(v2, v1);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_24F72124C(uint64_t a1)
{
  v2 = *(v1 + 2200);
  swift_willThrow();
  swift_unknownObjectRelease();

  v3 = *(v1 + 2208);
  *(v1 + 2272) = 0u;
  *(v1 + 2288) = 0u;
  *(v1 + 2264) = v3;
  if (qword_27F2113E8 != -1)
  {
    swift_once();
  }

  v4 = sub_24F9220D8();
  __swift_project_value_buffer(v4, qword_27F39E808);
  v5 = v3;
  v6 = sub_24F9220B8();
  v7 = sub_24F92BDB8();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v3;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_24E5DD000, v6, v7, "AddFriendActionImplementation addByPlayerID Couldn't send friend invitation: %@", v8, 0xCu);
    sub_24E601704(v9, &qword_27F227B20, &qword_24F944D30);
    MEMORY[0x2530542D0](v9, -1, -1);
    MEMORY[0x2530542D0](v8, -1, -1);
  }

  v12 = *(v1 + 2024);

  sub_24E60169C(v12 + 96, v1 + 1544, qword_27F24EC90, &unk_24F93C1D0);
  if (*(v1 + 1568))
  {
    sub_24E612C80((v1 + 1544), v1 + 1464);
    v13 = swift_task_alloc();
    *(v1 + 2304) = v13;
    WitnessTable = swift_getWitnessTable();
    *v13 = v1;
    v13[1] = sub_24F721024;
    v15 = *(v1 + 2072);
    v16 = *(v1 + 1976);
    v17 = *(v1 + 1784);

    return sub_24F1487B0(v17, v1 + 1464, v16, v15, WitnessTable);
  }

  else
  {

    sub_24E601704(v1 + 1544, qword_27F21B590, &unk_24F93BE30);
    (*(*(v1 + 2120) + 104))(*(v1 + 1784), *MEMORY[0x277D21CA8], *(v1 + 2112));
    sub_24E824448(0, 0);
    sub_24E824448(0, 0);

    v19 = *(v1 + 8);

    return v19();
  }
}

uint64_t sub_24F7215C0()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 1624));
  v1 = *(v0 + 2136);

  return MEMORY[0x282200920](v0 + 656, v1, sub_24F72162C, v0 + 1936);
}

uint64_t sub_24F721648()
{
  sub_24F725DCC(*(v0 + 2064), type metadata accessor for ReportFriendRequestDidSendAction);
  v1 = *(v0 + 2144);

  return MEMORY[0x282200920](v0 + 16, v1, sub_24F7216C8, v0 + 1984);
}

uint64_t sub_24F7216E4()
{
  sub_24F725DCC(*(v0 + 2184), type metadata accessor for RemoveFriendSuggestionAction);
  v1 = *(v0 + 2240);
  v2 = *(v0 + 2224);
  v3 = *(v0 + 2216);
  *(v0 + 2296) = v2;
  *(v0 + 2288) = &unk_24FA225F0;
  *(v0 + 2280) = v3;
  *(v0 + 2272) = &unk_24FA225E0;
  *(v0 + 2264) = v1;
  if (qword_27F2113E8 != -1)
  {
    swift_once();
  }

  v4 = sub_24F9220D8();
  __swift_project_value_buffer(v4, qword_27F39E808);
  v5 = v1;
  v6 = sub_24F9220B8();
  v7 = sub_24F92BDB8();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v1;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_24E5DD000, v6, v7, "AddFriendActionImplementation addByPlayerID Couldn't send friend invitation: %@", v8, 0xCu);
    sub_24E601704(v9, &qword_27F227B20, &qword_24F944D30);
    MEMORY[0x2530542D0](v9, -1, -1);
    MEMORY[0x2530542D0](v8, -1, -1);
  }

  v12 = *(v0 + 2024);

  sub_24E60169C(v12 + 96, v0 + 1544, qword_27F24EC90, &unk_24F93C1D0);
  if (*(v0 + 1568))
  {
    sub_24E612C80((v0 + 1544), v0 + 1464);
    v13 = swift_task_alloc();
    *(v0 + 2304) = v13;
    WitnessTable = swift_getWitnessTable();
    *v13 = v0;
    v13[1] = sub_24F721024;
    v15 = *(v0 + 2072);
    v16 = *(v0 + 1976);
    v17 = *(v0 + 1784);

    return sub_24F1487B0(v17, v0 + 1464, v16, v15, WitnessTable);
  }

  else
  {

    sub_24E601704(v0 + 1544, qword_27F21B590, &unk_24F93BE30);
    (*(*(v0 + 2120) + 104))(*(v0 + 1784), *MEMORY[0x277D21CA8], *(v0 + 2112));
    sub_24E824448(&unk_24FA225E0, v3);
    sub_24E824448(&unk_24FA225F0, v2);

    v19 = *(v0 + 8);

    return v19();
  }
}

uint64_t sub_24F721AB4()
{
  sub_24F725DCC(*(v0 + 2064), type metadata accessor for ReportFriendRequestDidSendAction);
  v1 = *(v0 + 2144);

  return MEMORY[0x282200920](v0 + 16, v1, sub_24F721B34, v0 + 1584);
}

uint64_t sub_24F721B50()
{
  sub_24F725DCC(*(v0 + 2184), type metadata accessor for RemoveFriendSuggestionAction);
  v1 = *(v0 + 2248);
  v2 = *(v0 + 2224);
  v3 = *(v0 + 2216);
  *(v0 + 2296) = v2;
  *(v0 + 2288) = &unk_24FA225F0;
  *(v0 + 2280) = v3;
  *(v0 + 2272) = &unk_24FA225E0;
  *(v0 + 2264) = v1;
  if (qword_27F2113E8 != -1)
  {
    swift_once();
  }

  v4 = sub_24F9220D8();
  __swift_project_value_buffer(v4, qword_27F39E808);
  v5 = v1;
  v6 = sub_24F9220B8();
  v7 = sub_24F92BDB8();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v1;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_24E5DD000, v6, v7, "AddFriendActionImplementation addByPlayerID Couldn't send friend invitation: %@", v8, 0xCu);
    sub_24E601704(v9, &qword_27F227B20, &qword_24F944D30);
    MEMORY[0x2530542D0](v9, -1, -1);
    MEMORY[0x2530542D0](v8, -1, -1);
  }

  v12 = *(v0 + 2024);

  sub_24E60169C(v12 + 96, v0 + 1544, qword_27F24EC90, &unk_24F93C1D0);
  if (*(v0 + 1568))
  {
    sub_24E612C80((v0 + 1544), v0 + 1464);
    v13 = swift_task_alloc();
    *(v0 + 2304) = v13;
    WitnessTable = swift_getWitnessTable();
    *v13 = v0;
    v13[1] = sub_24F721024;
    v15 = *(v0 + 2072);
    v16 = *(v0 + 1976);
    v17 = *(v0 + 1784);

    return sub_24F1487B0(v17, v0 + 1464, v16, v15, WitnessTable);
  }

  else
  {

    sub_24E601704(v0 + 1544, qword_27F21B590, &unk_24F93BE30);
    (*(*(v0 + 2120) + 104))(*(v0 + 1784), *MEMORY[0x277D21CA8], *(v0 + 2112));
    sub_24E824448(&unk_24FA225E0, v3);
    sub_24E824448(&unk_24FA225F0, v2);

    v19 = *(v0 + 8);

    return v19();
  }
}

uint64_t sub_24F721F20()
{
  sub_24F725DCC(*(v0 + 2064), type metadata accessor for ReportFriendRequestDidSendAction);
  v1 = *(v0 + 2144);

  return MEMORY[0x282200920](v0 + 16, v1, sub_24F721FA0, v0 + 1792);
}

uint64_t sub_24F721FBC()
{
  sub_24F725DCC(*(v0 + 2184), type metadata accessor for RemoveFriendSuggestionAction);
  v1 = *(v0 + 2256);
  v2 = *(v0 + 2224);
  v3 = *(v0 + 2216);
  *(v0 + 2296) = v2;
  *(v0 + 2288) = &unk_24FA225F0;
  *(v0 + 2280) = v3;
  *(v0 + 2272) = &unk_24FA225E0;
  *(v0 + 2264) = v1;
  if (qword_27F2113E8 != -1)
  {
    swift_once();
  }

  v4 = sub_24F9220D8();
  __swift_project_value_buffer(v4, qword_27F39E808);
  v5 = v1;
  v6 = sub_24F9220B8();
  v7 = sub_24F92BDB8();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v1;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_24E5DD000, v6, v7, "AddFriendActionImplementation addByPlayerID Couldn't send friend invitation: %@", v8, 0xCu);
    sub_24E601704(v9, &qword_27F227B20, &qword_24F944D30);
    MEMORY[0x2530542D0](v9, -1, -1);
    MEMORY[0x2530542D0](v8, -1, -1);
  }

  v12 = *(v0 + 2024);

  sub_24E60169C(v12 + 96, v0 + 1544, qword_27F24EC90, &unk_24F93C1D0);
  if (*(v0 + 1568))
  {
    sub_24E612C80((v0 + 1544), v0 + 1464);
    v13 = swift_task_alloc();
    *(v0 + 2304) = v13;
    WitnessTable = swift_getWitnessTable();
    *v13 = v0;
    v13[1] = sub_24F721024;
    v15 = *(v0 + 2072);
    v16 = *(v0 + 1976);
    v17 = *(v0 + 1784);

    return sub_24F1487B0(v17, v0 + 1464, v16, v15, WitnessTable);
  }

  else
  {

    sub_24E601704(v0 + 1544, qword_27F21B590, &unk_24F93BE30);
    (*(*(v0 + 2120) + 104))(*(v0 + 1784), *MEMORY[0x277D21CA8], *(v0 + 2112));
    sub_24E824448(&unk_24FA225E0, v3);
    sub_24E824448(&unk_24FA225F0, v2);

    v19 = *(v0 + 8);

    return v19();
  }
}

uint64_t sub_24F722370()
{
  v1 = *(v0 + 2296);
  v2 = *(v0 + 2288);
  v3 = *(v0 + 2280);
  v4 = *(v0 + 2272);

  __swift_destroy_boxed_opaque_existential_1((v0 + 1464));
  sub_24E824448(v4, v3);
  sub_24E824448(v2, v1);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_24F722498(uint64_t a1, void *a2)
{
  sub_24F928FD8();
  v4 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v5 = *v4;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F228600, &qword_24F93B7C0);
    v6 = swift_allocError();
    *v7 = a2;
    v8 = a2;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    v9 = *v4;

    return MEMORY[0x282200950](v9);
  }
}

uint64_t sub_24F722550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  return MEMORY[0x2822009F8](sub_24F722578, 0, 0);
}

uint64_t sub_24F722578()
{
  v1 = v0[11];
  v2 = v0[9];
  v0[5] = type metadata accessor for RemoveFriendSuggestionAction(0);
  v0[6] = sub_24F7268B4(&qword_27F216348, type metadata accessor for RemoveFriendSuggestionAction, &protocol conformance descriptor for RemoveFriendSuggestionAction);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_24F7259FC(v2, boxed_opaque_existential_1, type metadata accessor for RemoveFriendSuggestionAction);
  v4 = swift_task_alloc();
  v0[12] = v4;
  v7 = type metadata accessor for AddFriendActionImplementation(0, v1, v5, v6);
  WitnessTable = swift_getWitnessTable();
  *v4 = v0;
  v4[1] = sub_24F7226C4;
  v9 = v0[10];
  v10 = v0[7];

  return sub_24F1487B0(v10, (v0 + 2), v9, v7, WitnessTable);
}

uint64_t sub_24F7226C4()
{
  v2 = *v1;
  v2[13] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24F726900, 0, 0);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v2 + 2);
    v3 = v2[1];

    return v3();
  }
}

uint64_t sub_24F722800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  return MEMORY[0x2822009F8](sub_24F722828, 0, 0);
}

uint64_t sub_24F722828()
{
  v1 = v0[11];
  v2 = v0[9];
  v0[5] = type metadata accessor for ReportFriendRequestDidSendAction(0);
  v0[6] = sub_24F7268B4(&qword_27F216350, type metadata accessor for ReportFriendRequestDidSendAction, &unk_24F953504);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_24F7259FC(v2, boxed_opaque_existential_1, type metadata accessor for ReportFriendRequestDidSendAction);
  v4 = swift_task_alloc();
  v0[12] = v4;
  v7 = type metadata accessor for AddFriendActionImplementation(0, v1, v5, v6);
  WitnessTable = swift_getWitnessTable();
  *v4 = v0;
  v4[1] = sub_24F722974;
  v9 = v0[10];
  v10 = v0[7];

  return sub_24F1487B0(v10, (v0 + 2), v9, v7, WitnessTable);
}

uint64_t sub_24F722974()
{
  v2 = *v1;
  v2[13] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24F722AB0, 0, 0);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v2 + 2);
    v3 = v2[1];

    return v3();
  }
}

uint64_t sub_24F722AB0()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F722B14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 384) = v13;
  *(v8 + 368) = v12;
  *(v8 + 352) = a7;
  *(v8 + 360) = a8;
  *(v8 + 336) = a5;
  *(v8 + 344) = a6;
  *(v8 + 320) = a3;
  *(v8 + 328) = a4;
  *(v8 + 304) = a1;
  *(v8 + 312) = a2;
  *(v8 + 392) = type metadata accessor for ReportFriendRequestDidSendAction(0);
  *(v8 + 400) = swift_task_alloc();
  v9 = sub_24F928AE8();
  *(v8 + 408) = v9;
  *(v8 + 416) = *(v9 - 8);
  *(v8 + 424) = swift_task_alloc();
  *(v8 + 432) = swift_task_alloc();
  *(v8 + 440) = type metadata accessor for RemoveFriendSuggestionAction(0);
  *(v8 + 448) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24F722C60, 0, 0);
}

uint64_t sub_24F722C60()
{
  v1 = [objc_opt_self() proxyForLocalPlayer];
  v2 = [v1 friendServicePrivate];
  v0[57] = v2;

  v3 = sub_24F92B098();
  v0[58] = v3;
  v0[2] = v0;
  v0[3] = sub_24F722DDC;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B618, &unk_24FA08730);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_24F722498;
  v0[13] = &block_descriptor_48_0;
  v0[14] = v4;
  [v2 sendFriendInvitationWithPlayerID:0 contactAssociationID:v3 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_24F722DDC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 472) = v1;
  if (v1)
  {
    v2 = sub_24F7237A0;
  }

  else
  {
    v2 = sub_24F722EEC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F722EEC()
{
  v1 = v0[58];
  v3 = v0[55];
  v2 = v0[56];
  v5 = v0[47];
  v4 = v0[48];
  v6 = v0[46];
  swift_unknownObjectRelease();

  sub_24F928A98();
  *v2 = v6;
  *(v2 + 8) = v5;
  *(v2 + 16) = 0;
  v0[21] = v3;
  v0[22] = sub_24F7268B4(&qword_27F216348, type metadata accessor for RemoveFriendSuggestionAction, &protocol conformance descriptor for RemoveFriendSuggestionAction);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 18);
  sub_24F7259FC(v2, boxed_opaque_existential_1, type metadata accessor for RemoveFriendSuggestionAction);
  v8 = swift_task_alloc();
  v0[60] = v8;
  v11 = type metadata accessor for AddFriendActionImplementation(0, v4, v9, v10);
  v0[61] = v11;
  WitnessTable = swift_getWitnessTable();
  v0[62] = WitnessTable;
  *v8 = v0;
  v8[1] = sub_24F723070;
  v13 = v0[54];
  v14 = v0[45];

  return sub_24F1487B0(v13, (v0 + 18), v14, v11, WitnessTable);
}

uint64_t sub_24F723070()
{
  v2 = *v1;
  *(*v1 + 504) = v0;

  if (v0)
  {
    v3 = sub_24F723C5C;
  }

  else
  {
    v4 = v2[54];
    v5 = v2[51];
    v6 = v2[52];
    v7 = *(v6 + 8);
    v2[64] = v7;
    v2[65] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v7(v4, v5);
    __swift_destroy_boxed_opaque_existential_1(v2 + 18);
    v3 = sub_24F7231B4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24F7231B4(uint64_t a1)
{
  v2 = v1[49];
  v3 = v1[50];
  sub_24F928A98();
  v1[26] = v2;
  v1[27] = sub_24F7268B4(&qword_27F216350, type metadata accessor for ReportFriendRequestDidSendAction, &unk_24F953504);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 23);
  sub_24F7259FC(v3, boxed_opaque_existential_1, type metadata accessor for ReportFriendRequestDidSendAction);
  v5 = swift_task_alloc();
  v1[66] = v5;
  *v5 = v1;
  v5[1] = sub_24F7232C8;
  v6 = v1[61];
  v7 = v1[62];
  v8 = v1[53];
  v9 = v1[45];

  return sub_24F1487B0(v8, (v1 + 23), v9, v6, v7);
}

uint64_t sub_24F7232C8()
{
  v2 = *v1;
  *(*v1 + 536) = v0;

  if (v0)
  {
    v3 = sub_24F723D0C;
  }

  else
  {
    (*(v2 + 512))(*(v2 + 424), *(v2 + 408));
    __swift_destroy_boxed_opaque_existential_1((v2 + 184));
    v3 = sub_24F7233F8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24F7233F8()
{
  sub_24E60169C(*(v0 + 352) + 56, v0 + 264, qword_27F24EC90, &unk_24F93C1D0);
  if (*(v0 + 288))
  {
    sub_24E612C80((v0 + 264), v0 + 224);
    v1 = swift_task_alloc();
    *(v0 + 544) = v1;
    *v1 = v0;
    v1[1] = sub_24F7235B8;
    v2 = *(v0 + 488);
    v3 = *(v0 + 496);
    v4 = *(v0 + 360);
    v5 = *(v0 + 304);

    return sub_24F1487B0(v5, v0 + 224, v4, v2, v3);
  }

  else
  {
    v7 = *(v0 + 448);
    v8 = *(v0 + 408);
    v9 = *(v0 + 416);
    v10 = *(v0 + 304);
    sub_24F725DCC(*(v0 + 400), type metadata accessor for ReportFriendRequestDidSendAction);
    sub_24F725DCC(v7, type metadata accessor for RemoveFriendSuggestionAction);
    sub_24E601704(v0 + 264, qword_27F21B590, &unk_24F93BE30);
    (*(v9 + 104))(v10, *MEMORY[0x277D21CA8], v8);

    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_24F7235B8()
{
  *(*v1 + 552) = v0;

  if (v0)
  {
    v2 = sub_24F723DDC;
  }

  else
  {
    v2 = sub_24F7236CC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F7236CC()
{
  v1 = v0[56];
  v2 = v0[50];
  __swift_destroy_boxed_opaque_existential_1(v0 + 28);
  sub_24F725DCC(v2, type metadata accessor for ReportFriendRequestDidSendAction);
  sub_24F725DCC(v1, type metadata accessor for RemoveFriendSuggestionAction);

  v3 = v0[1];

  return v3();
}

uint64_t sub_24F7237A0(uint64_t a1)
{
  v2 = v1[58];
  swift_willThrow();
  swift_unknownObjectRelease();

  if (qword_27F2113E8 != -1)
  {
    swift_once();
  }

  v3 = v1[59];
  v4 = sub_24F9220D8();
  __swift_project_value_buffer(v4, qword_27F39E808);
  v5 = v3;
  v6 = sub_24F9220B8();
  v7 = sub_24F92BDB8();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v1[59];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v8;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_24E5DD000, v6, v7, "AddFriendActionImplementation addByContact Couldn't send friend invitation, falling back to 1.0: %@", v9, 0xCu);
    sub_24E601704(v10, &qword_27F227B20, &qword_24F944D30);
    MEMORY[0x2530542D0](v10, -1, -1);
    MEMORY[0x2530542D0](v9, -1, -1);
  }

  v13 = v1[48];
  v15 = v1[44];
  v14 = v1[45];
  v17 = v1[42];
  v16 = v1[43];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2357E0, &qword_24F93B8F0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_24F93DE60;
  *(v18 + 32) = v17;
  *(v18 + 40) = v16;
  v21 = type metadata accessor for AddFriendActionImplementation(0, v13, v19, v20);

  v1[70] = sub_24F71FE00(v18, v15, v14, v21);

  v22 = swift_task_alloc();
  v1[71] = v22;
  *v22 = v1;
  v22[1] = sub_24F723A0C;
  v23 = v1[38];

  return MEMORY[0x282180668](v23);
}

uint64_t sub_24F723A0C()
{
  *(*v1 + 576) = v0;

  if (v0)
  {
    v2 = sub_24F723BBC;
  }

  else
  {

    v2 = sub_24F723B28;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F723B28()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F723BBC()
{
  v1 = *(v0 + 472);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24F723C5C()
{
  sub_24F725DCC(v0[56], type metadata accessor for RemoveFriendSuggestionAction);
  __swift_destroy_boxed_opaque_existential_1(v0 + 18);

  v1 = v0[1];

  return v1();
}

uint64_t sub_24F723D0C()
{
  v1 = v0[56];
  sub_24F725DCC(v0[50], type metadata accessor for ReportFriendRequestDidSendAction);
  sub_24F725DCC(v1, type metadata accessor for RemoveFriendSuggestionAction);
  __swift_destroy_boxed_opaque_existential_1(v0 + 23);

  v2 = v0[1];

  return v2();
}

uint64_t sub_24F723DDC()
{
  v1 = v0[56];
  v2 = v0[50];
  __swift_destroy_boxed_opaque_existential_1(v0 + 28);
  sub_24F725DCC(v2, type metadata accessor for ReportFriendRequestDidSendAction);
  sub_24F725DCC(v1, type metadata accessor for RemoveFriendSuggestionAction);

  v3 = v0[1];

  return v3();
}

uint64_t sub_24F723EB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[57] = a5;
  v6[58] = a6;
  v6[55] = a3;
  v6[56] = a4;
  v6[53] = a1;
  v6[54] = a2;
  v7 = type metadata accessor for AddFriendActionImplementation(0, a6, a3, a4);
  v6[59] = v7;
  v8 = *(v7 - 8);
  v6[60] = v8;
  v6[61] = *(v8 + 64);
  v6[62] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  v6[63] = swift_task_alloc();
  v9 = sub_24F91F6B8();
  v6[64] = v9;
  v6[65] = *(v9 - 8);
  v6[66] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  v6[67] = swift_task_alloc();
  v10 = sub_24F928AD8();
  v6[68] = v10;
  v6[69] = *(v10 - 8);
  v6[70] = swift_task_alloc();
  v6[71] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24F7240B8, 0, 0);
}

uint64_t sub_24F7240B8()
{
  type metadata accessor for FriendRequestComposeViewController();
  *(v0 + 576) = swift_getObjCClassFromMetadata();
  sub_24F92B7F8();
  *(v0 + 584) = sub_24F92B7E8();
  v2 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24F72415C, v2, v1);
}

uint64_t sub_24F72415C()
{
  v1 = *(v0 + 576);

  *(v0 + 640) = [v1 canSendText];

  return MEMORY[0x2822009F8](sub_24F7241DC, 0, 0);
}

uint64_t sub_24F7241DC()
{
  if (*(v0 + 640) == 1)
  {
    if (qword_27F211190 != -1)
    {
      swift_once();
    }

    v1 = *(v0 + 568);
    v2 = *(v0 + 552);
    v59 = *(v0 + 544);
    v60 = *(v0 + 560);
    v3 = *(v0 + 536);
    v4 = *(v0 + 448);
    v5 = *(v0 + 456);
    sub_24E65864C(qword_27F39E460, v0 + 16);
    sub_24F928A98();
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    sub_24E60169C(v5 + 56, v0 + 56, qword_27F24EC90, &unk_24F93C1D0);
    *(v6 + 40) = 0u;
    *(v6 + 56) = 0;
    *(v6 + 24) = 0u;

    sub_24E7D5870(v0 + 56, v6 + 24);
    sub_24E60169C(v5 + 96, v0 + 96, qword_27F24EC90, &unk_24F93C1D0);
    *(v6 + 80) = 0u;
    *(v6 + 96) = 0;
    *(v6 + 64) = 0u;
    sub_24E7D5870(v0 + 96, v6 + 64);
    v7 = sub_24F929D08();
    v9 = v8;
    sub_24E60169C(v0 + 16, v0 + 136, &qword_27F235830, &qword_24F93B8C0);
    v10 = sub_24F91F4A8();
    (*(*(v10 - 8) + 56))(v3, 1, 1, v10);
    *(v0 + 400) = &type metadata for FlowDestination;
    *(v0 + 376) = v6 | 0x2000000000000000;
    v11 = *(v2 + 16);
    v11(v60, v1, v59);
    v61 = type metadata accessor for FlowAction(0);
    v12 = swift_allocObject();
    *(v0 + 592) = v12;
    *(v12 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageDataPageRenderMetrics) = 0;
    v13 = v12 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageData;
    *v13 = 0u;
    *(v13 + 16) = 0u;
    *(v13 + 32) = 0;
    v14 = (v12 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_appStateController);
    *v14 = 0;
    v14[1] = 0;
    *(v12 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_page) = 54;
    sub_24E60169C(v3, v12 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageUrl, &qword_27F228530, &unk_24F93C6E0);
    v15 = (v12 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_referrerUrl);
    *v15 = 0;
    v15[1] = 0;
    v16 = v12 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_referrerData;
    *v16 = xmmword_24F9406F0;
    *(v16 + 24) = 0;
    *(v16 + 32) = 0;
    *(v16 + 16) = 0;
    *(v16 + 40) = 0;
    *(v12 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_presentationContext) = 0;
    *(v12 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_animationBehavior) = 0;
    *(v12 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_origin) = 0;
    v17 = (v12 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_presentation);
    *v17 = v7;
    v17[1] = v9;
    sub_24E60169C(v0 + 136, v0 + 176, &qword_27F235830, &qword_24F93B8C0);
    v11(v12 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v60, v59);
    v18 = OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics;
    v19 = sub_24F929608();
    (*(*(v19 - 8) + 56))(v12 + v18, 1, 1, v19);
    v20 = (v12 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
    *v20 = 0u;
    v20[1] = 0u;
    v21 = v12 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
    sub_24E60169C(v0 + 176, v0 + 216, &qword_27F235830, &qword_24F93B8C0);
    if (*(v0 + 240))
    {
      v22 = *(v0 + 232);
      *v21 = *(v0 + 216);
      *(v21 + 16) = v22;
      *(v21 + 32) = *(v0 + 248);
    }

    else
    {
      v42 = *(v0 + 528);
      v43 = *(v0 + 520);
      v44 = *(v0 + 512);
      sub_24F91F6A8();
      v45 = sub_24F91F668();
      v47 = v46;
      (*(v43 + 8))(v42, v44);
      *(v0 + 408) = v45;
      *(v0 + 416) = v47;
      sub_24F92C7F8();
      sub_24E601704(v0 + 216, &qword_27F235830, &qword_24F93B8C0);
    }

    v48 = *(v0 + 568);
    v49 = *(v0 + 560);
    v50 = *(v0 + 552);
    v51 = *(v0 + 544);
    v52 = *(v0 + 536);
    sub_24E601704(v0 + 176, &qword_27F235830, &qword_24F93B8C0);
    *(v12 + 16) = 0u;
    *(v12 + 32) = 0u;

    FlowAction.setPageData(_:)(v0 + 376);

    v53 = *(v50 + 8);
    v53(v48, v51);
    sub_24E601704(v0 + 16, &qword_27F235830, &qword_24F93B8C0);
    v53(v49, v51);
    sub_24E601704(v52, &qword_27F228530, &unk_24F93C6E0);
    sub_24E601704(v0 + 136, &qword_27F235830, &qword_24F93B8C0);
    sub_24E601704(v0 + 376, &qword_27F2129B0, &unk_24F945320);
    *(v0 + 280) = v61;
    *(v0 + 288) = sub_24F7268B4(&qword_27F216400, type metadata accessor for FlowAction, &protocol conformance descriptor for Action);
    *(v0 + 256) = v12;

    v54 = swift_task_alloc();
    *(v0 + 600) = v54;
    WitnessTable = swift_getWitnessTable();
    *(v0 + 608) = WitnessTable;
    *v54 = v0;
    v54[1] = sub_24F724A88;
    v56 = *(v0 + 472);
    v57 = *(v0 + 440);
    v58 = *(v0 + 424);

    return sub_24F1487B0(v58, v0 + 256, v57, v56, WitnessTable);
  }

  else
  {
    if (qword_27F2113E8 != -1)
    {
      swift_once();
    }

    v23 = sub_24F9220D8();
    __swift_project_value_buffer(v23, qword_27F39E808);
    v24 = sub_24F9220B8();
    v25 = sub_24F92BD98();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_24E5DD000, v24, v25, "Sending messages is restricted.", v26, 2u);
      MEMORY[0x2530542D0](v26, -1, -1);
    }

    v28 = *(v0 + 496);
    v27 = *(v0 + 504);
    v29 = *(v0 + 480);
    v30 = *(v0 + 488);
    v31 = *(v0 + 464);
    v32 = *(v0 + 472);
    v34 = *(v0 + 432);
    v33 = *(v0 + 440);
    v62 = *(v0 + 424);

    v35 = sub_24F92B858();
    (*(*(v35 - 8) + 56))(v27, 1, 1, v35);
    (*(v29 + 16))(v28, v34, v32);
    v36 = (*(v29 + 80) + 40) & ~*(v29 + 80);
    v37 = swift_allocObject();
    *(v37 + 2) = 0;
    *(v37 + 3) = 0;
    *(v37 + 4) = v31;
    (*(v29 + 32))(&v37[v36], v28, v32);
    *&v37[(v30 + v36 + 7) & 0xFFFFFFFFFFFFFFF8] = v33;

    sub_24F1D4600(0, 0, v27, &unk_24FA22648, v37);

    v38 = *MEMORY[0x277D21CA8];
    v39 = sub_24F928AE8();
    (*(*(v39 - 8) + 104))(v62, v38, v39);

    v40 = *(v0 + 8);

    return v40();
  }
}

uint64_t sub_24F724A88()
{
  v2 = *v1;
  *(*v1 + 616) = v0;

  if (v0)
  {
    v3 = sub_24F724E28;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1((v2 + 256));
    v3 = sub_24F724BA4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24F724BA4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F724C58()
{
  *(*v1 + 632) = v0;

  if (v0)
  {
    v2 = sub_24F725008;
  }

  else
  {
    v2 = sub_24F724D6C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F724D6C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 296));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F724E28()
{
  v1 = *(v0 + 456);

  __swift_destroy_boxed_opaque_existential_1((v0 + 256));
  sub_24E60169C(v1 + 96, v0 + 336, qword_27F24EC90, &unk_24F93C1D0);
  if (*(v0 + 360))
  {
    sub_24E612C80((v0 + 336), v0 + 296);
    v2 = swift_task_alloc();
    *(v0 + 624) = v2;
    *v2 = v0;
    v2[1] = sub_24F724C58;
    v3 = *(v0 + 608);
    v4 = *(v0 + 472);
    v5 = *(v0 + 440);
    v6 = *(v0 + 424);

    return sub_24F1487B0(v6, v0 + 296, v5, v4, v3);
  }

  else
  {
    v8 = *(v0 + 424);

    sub_24E601704(v0 + 336, qword_27F21B590, &unk_24F93BE30);
    v9 = *MEMORY[0x277D21CA8];
    v10 = sub_24F928AE8();
    (*(*(v10 - 8) + 104))(v8, v9, v10);

    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_24F725008()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 296));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F7250C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[7] = a1;
  v6[8] = a4;
  return MEMORY[0x2822009F8](sub_24F7250EC, 0, 0);
}

uint64_t sub_24F7250EC()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = sub_24F92A638();
  v4 = MEMORY[0x277D223B8];
  v0[5] = v3;
  v0[6] = v4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  (*(*(v3 - 8) + 16))(boxed_opaque_existential_1, v2, v3);
  v6 = swift_task_alloc();
  v0[11] = v6;
  v9 = type metadata accessor for AddFriendActionImplementation(0, v1, v7, v8);
  WitnessTable = swift_getWitnessTable();
  *v6 = v0;
  v6[1] = sub_24F63E150;
  v11 = v0[9];
  v12 = v0[7];

  return sub_24F1487B0(v12, (v0 + 2), v11, v9, WitnessTable);
}

uint64_t sub_24F72527C(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F92A638();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24F7252FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F92A638();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_24F72536C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(type metadata accessor for AddFriendActionImplementation(0, *(v4 + 16), a3, a4) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = type metadata accessor for AddFriendAction(0);
  v9 = (v7 + *(*(v8 - 8) + 80) + 8) & ~*(*(v8 - 8) + 80);

  v10 = sub_24F92A638();
  (*(*(v10 - 8) + 8))(v4 + v6, v10);

  v11 = (v4 + v9);
  sub_24F4821EC(*(v4 + v9), *(v4 + v9 + 8), *(v4 + v9 + 16), *(v4 + v9 + 24), *(v4 + v9 + 32), *(v4 + v9 + 40), *(v4 + v9 + 48));
  if (*(v4 + v9 + 80))
  {
    __swift_destroy_boxed_opaque_existential_1(v11 + 7);
  }

  if (*(v11 + 15))
  {
    __swift_destroy_boxed_opaque_existential_1(v11 + 12);
  }

  v12 = *(v8 + 28);
  v13 = sub_24F928AD8();
  (*(*(v13 - 8) + 8))(&v11[v12], v13);

  return swift_deallocObject();
}

uint64_t sub_24F725540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v5;
  v8 = v4[2];
  v9 = *(type metadata accessor for AddFriendActionImplementation(0, v8, a3, a4) - 8);
  v10 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(type metadata accessor for AddFriendAction(0) - 8);
  v13 = (v11 + *(v12 + 80) + 8) & ~*(v12 + 80);
  v14 = v4[3];
  v15 = v4[4];
  v16 = *(v4 + v11);
  v17 = swift_task_alloc();
  *(v6 + 16) = v17;
  *v17 = v6;
  v17[1] = sub_24E6541E4;

  return sub_24F72029C(a1, v14, v15, v4 + v10, v16, v4 + v13, v8);
}

uint64_t sub_24F7256E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(type metadata accessor for AddFriendActionImplementation(0, *(v4 + 16), a3, a4) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = (type metadata accessor for RemoveFriendSuggestionAction(0) - 8);
  v9 = (v6 + v7 + *(*v8 + 80)) & ~*(*v8 + 80);
  v10 = sub_24F92A638();
  (*(*(v10 - 8) + 8))(v4 + v6, v10);
  sub_24E63FFA4(*(v4 + v9), *(v4 + v9 + 8));
  v11 = v8[7];
  v12 = sub_24F928AD8();
  (*(*(v12 - 8) + 8))(v4 + v9 + v11, v12);

  return swift_deallocObject();
}

uint64_t sub_24F72587C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v5;
  v8 = *(v4 + 16);
  v9 = *(type metadata accessor for AddFriendActionImplementation(0, v8, a3, a4) - 8);
  v10 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v11 = *(v9 + 64);
  v12 = *(type metadata accessor for RemoveFriendSuggestionAction(0) - 8);
  v13 = (v10 + v11 + *(v12 + 80)) & ~*(v12 + 80);
  v14 = *(v4 + ((*(v12 + 64) + v13 + 7) & 0xFFFFFFFFFFFFFFF8));
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_24E6541E4;

  return sub_24F722550(a1, v4 + v10, v4 + v13, v14, v8);
}

uint64_t sub_24F7259FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F725A64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(type metadata accessor for AddFriendActionImplementation(0, *(v4 + 16), a3, a4) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(*(type metadata accessor for ReportFriendRequestDidSendAction(0) - 8) + 80);
  v9 = (v6 + v7 + v8) & ~v8;
  v10 = sub_24F92A638();
  (*(*(v10 - 8) + 8))(v4 + v6, v10);
  v11 = sub_24F928AD8();
  (*(*(v11 - 8) + 8))(v4 + v9, v11);

  return swift_deallocObject();
}

uint64_t sub_24F725BE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F725C4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v5;
  v8 = *(v4 + 16);
  v9 = *(type metadata accessor for AddFriendActionImplementation(0, v8, a3, a4) - 8);
  v10 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v11 = *(v9 + 64);
  v12 = *(type metadata accessor for ReportFriendRequestDidSendAction(0) - 8);
  v13 = (v10 + v11 + *(v12 + 80)) & ~*(v12 + 80);
  v14 = *(v4 + ((*(v12 + 64) + v13 + 7) & 0xFFFFFFFFFFFFFFF8));
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_24E614970;

  return sub_24F722800(a1, v4 + v10, v4 + v13, v14, v8);
}

uint64_t sub_24F725DCC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F725E2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(type metadata accessor for AddFriendActionImplementation(0, *(v4 + 16), a3, a4) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = type metadata accessor for AddFriendAction(0);
  v9 = (v7 + *(*(v8 - 8) + 80) + 16) & ~*(*(v8 - 8) + 80);

  v10 = sub_24F92A638();
  (*(*(v10 - 8) + 8))(v4 + v6, v10);

  v11 = (v4 + v9);
  sub_24F4821EC(*(v4 + v9), *(v4 + v9 + 8), *(v4 + v9 + 16), *(v4 + v9 + 24), *(v4 + v9 + 32), *(v4 + v9 + 40), *(v4 + v9 + 48));
  if (*(v4 + v9 + 80))
  {
    __swift_destroy_boxed_opaque_existential_1(v11 + 7);
  }

  if (*(v11 + 15))
  {
    __swift_destroy_boxed_opaque_existential_1(v11 + 12);
  }

  v12 = *(v8 + 28);
  v13 = sub_24F928AD8();
  (*(*(v13 - 8) + 8))(&v11[v12], v13);

  return swift_deallocObject();
}

uint64_t sub_24F72602C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v5;
  v7 = *(type metadata accessor for AddFriendActionImplementation(0, v4[2], a3, a4) - 8);
  v8 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(type metadata accessor for AddFriendAction(0) - 8);
  v11 = (v9 + *(v10 + 80) + 16) & ~*(v10 + 80);
  v18 = v4[4];
  v19 = v4[3];
  v12 = (v4 + v9);
  v13 = *(v4 + ((*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8));
  v14 = *v12;
  v15 = v12[1];
  v16 = swift_task_alloc();
  *(v6 + 16) = v16;
  *v16 = v6;
  v16[1] = sub_24E6541E4;

  return sub_24F722B14(a1, v19, v18, v4 + v8, v14, v15, v4 + v11, v13);
}

uint64_t sub_24F726200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(type metadata accessor for AddFriendActionImplementation(0, *(v4 + 16), a3, a4) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = (((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = type metadata accessor for AddFriendAction(0);
  v9 = (v7 + *(*(v8 - 8) + 80) + 8) & ~*(*(v8 - 8) + 80);
  v10 = sub_24F92A638();
  (*(*(v10 - 8) + 8))(v4 + v6, v10);

  v11 = (v4 + v9);
  sub_24F4821EC(*(v4 + v9), *(v4 + v9 + 8), *(v4 + v9 + 16), *(v4 + v9 + 24), *(v4 + v9 + 32), *(v4 + v9 + 40), *(v4 + v9 + 48));
  if (*(v4 + v9 + 80))
  {
    __swift_destroy_boxed_opaque_existential_1(v11 + 7);
  }

  if (*(v11 + 15))
  {
    __swift_destroy_boxed_opaque_existential_1(v11 + 12);
  }

  v12 = *(v8 + 28);
  v13 = sub_24F928AD8();
  (*(*(v13 - 8) + 8))(&v11[v12], v13);

  return swift_deallocObject();
}

uint64_t sub_24F7263E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v5;
  v8 = *(v4 + 16);
  v9 = *(type metadata accessor for AddFriendActionImplementation(0, v8, a3, a4) - 8);
  v10 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(type metadata accessor for AddFriendAction(0) - 8);
  v14 = (v12 + *(v13 + 80) + 8) & ~*(v13 + 80);
  v15 = *(v4 + v11);
  v16 = *(v4 + v12);
  v17 = swift_task_alloc();
  *(v6 + 16) = v17;
  *v17 = v6;
  v17[1] = sub_24E6541E4;

  return sub_24F723EB0(a1, v4 + v10, v15, v16, v4 + v14, v8);
}

uint64_t sub_24F726560(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24E6541E4;

  return sub_24E694534(a1, v4, v5, v6, v7, v8);
}

uint64_t objectdestroyTm_85(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(type metadata accessor for AddFriendActionImplementation(0, *(v4 + 32), a3, a4) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  swift_unknownObjectRelease();
  v7 = sub_24F92A638();
  (*(*(v7 - 8) + 8))(v4 + v6, v7);

  return swift_deallocObject();
}

uint64_t sub_24F726728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v4[4];
  v8 = *(type metadata accessor for AddFriendActionImplementation(0, v7, a3, a4) - 8);
  v9 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v10 = v4[2];
  v11 = v4[3];
  v12 = *(v4 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_24E6541E4;

  return sub_24F7250C8(a1, v10, v11, v4 + v9, v12, v7);
}

uint64_t sub_24F72685C()
{

  if (v0[6])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 3);
  }

  if (v0[11])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 8);
  }

  return swift_deallocObject();
}

uint64_t sub_24F7268B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void __swiftcall ActivityFeedSection.init(title:items:metricsKey:)(GameStoreKit::ActivityFeedSection *__return_ptr retstr, Swift::String_optional title, Swift::OpaquePointer items, Swift::String_optional metricsKey)
{
  retstr->title = title;
  retstr->items = items;
  retstr->metricsKey = metricsKey;
}

uint64_t ActivityFeedSection.title.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ActivityFeedSection.metricsKey.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

unint64_t ActivityFeedSection.jsRepresentation(in:)@<X0>(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v12 = v1[3];
  v5 = v1[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88, &unk_24F93A430);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F9479A0;
  *(inited + 32) = 0x656C746974;
  *(inited + 40) = 0xE500000000000000;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23B740, &qword_24F93EC10);
  *(inited + 72) = v7;
  v8 = sub_24E605DB4();
  *(inited + 48) = v2;
  *(inited + 56) = v3;
  *(inited + 80) = v8;
  *(inited + 88) = 0x736D657469;
  *(inited + 96) = 0xE500000000000000;
  *(inited + 128) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E2E8, &qword_24FA22650);
  v9 = sub_24F7271EC(&qword_27F24E2F0, &qword_27F24E2F8, &protocol conformance descriptor for ActivityFeedItem, MEMORY[0x277D22590]);
  *(inited + 104) = v4;
  *(inited + 136) = v9;
  *(inited + 144) = 0x4B7363697274656DLL;
  *(inited + 184) = v7;
  *(inited + 192) = v8;
  *(inited + 152) = 0xEA00000000007965;
  *(inited + 160) = v12;
  *(inited + 168) = v5;

  v10 = sub_24E607E40(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0, &unk_24F93A440);
  swift_arrayDestroy();
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20, &qword_24F93E370);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v10;
  return result;
}

uint64_t sub_24F726B70()
{
  v1 = 0x736D657469;
  if (*v0 != 1)
  {
    v1 = 0x4B7363697274656DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656C746974;
  }
}

uint64_t sub_24F726BC8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24F7273E0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24F726BF0(uint64_t a1)
{
  v2 = sub_24F727198();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F726C2C(uint64_t a1)
{
  v2 = sub_24F727198();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ActivityFeedSection.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E300, &qword_24FA22658);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v10 - v5;
  v7 = v1[2];
  v10[2] = v1[3];
  v11 = v7;
  v10[1] = v1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F727198();
  sub_24F92D128();
  v16 = 0;
  v8 = v12;
  sub_24F92CCA8();
  if (!v8)
  {
    v13 = v11;
    v15 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E2E8, &qword_24FA22650);
    sub_24F7271EC(&qword_27F24E310, &qword_27F24E318, &protocol conformance descriptor for ActivityFeedItem, MEMORY[0x277D83948]);
    sub_24F92CD48();
    v14 = 2;
    sub_24F92CCA8();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t ActivityFeedSection.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E320, &qword_24FA22660);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F727198();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v25 = 0;
  v9 = sub_24F92CBC8();
  v11 = v10;
  v20 = a2;
  v21 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E2E8, &qword_24FA22650);
  v24 = 1;
  sub_24F7271EC(&qword_27F24E328, &qword_27F24E330, &protocol conformance descriptor for ActivityFeedItem, MEMORY[0x277D83978]);
  sub_24F92CC68();
  v12 = v22;
  v23 = 2;
  v13 = sub_24F92CBC8();
  v15 = v14;
  v16 = v13;
  (*(v6 + 8))(v8, v5);
  v17 = v20;
  *v20 = v21;
  v17[1] = v11;
  v17[2] = v12;
  v17[3] = v16;
  v17[4] = v15;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_24F727198()
{
  result = qword_27F24E308;
  if (!qword_27F24E308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24E308);
  }

  return result;
}

uint64_t sub_24F7271EC(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24E2E8, &qword_24FA22650);
    sub_24F727274(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24F727274(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ActivityFeedItem(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24F7272DC()
{
  result = qword_27F24E338;
  if (!qword_27F24E338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24E338);
  }

  return result;
}

unint64_t sub_24F727334()
{
  result = qword_27F24E340;
  if (!qword_27F24E340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24E340);
  }

  return result;
}

unint64_t sub_24F72738C()
{
  result = qword_27F24E348;
  if (!qword_27F24E348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24E348);
  }

  return result;
}

uint64_t sub_24F7273E0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x736D657469 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4B7363697274656DLL && a2 == 0xEA00000000007965)
  {

    return 2;
  }

  else
  {
    v6 = sub_24F92CE08();

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

uint64_t sub_24F72750C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218CB0, &unk_24F94A2B0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_24F7275E8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218CB0, &unk_24F94A2B0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t _s9ViewModelVMa(uint64_t a1)
{
  result = qword_27F24E350;
  if (!qword_27F24E350)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F7276E4(uint64_t a1)
{
  sub_24F7277FC(319, &qword_27F24E360, type metadata accessor for LockupViewModel);
  if (v1 <= 0x3F)
  {
    sub_24F7277FC(319, &qword_27F24E368, type metadata accessor for IconRowViewModel);
    if (v2 <= 0x3F)
    {
      sub_24E6BCB04();
      if (v3 <= 0x3F)
      {
        sub_24F7277FC(319, &qword_27F230A10, type metadata accessor for Action);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_24F7277FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_24F92C4A8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_24F727864()
{
  result = qword_27F24E370;
  if (!qword_27F24E370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24E370);
  }

  return result;
}

uint64_t sub_24F7278B8@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v34 = a2;
  v36 = a4;
  v6 = type metadata accessor for IconRowViewModel(0);
  v7 = *(v6 - 1);
  MEMORY[0x28223BE20](v6);
  v9 = &v33[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218CB0, &unk_24F94A2B0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v33[-v11];
  v13 = *(a1 + 72);
  type metadata accessor for LockupViewModel(0);
  swift_allocObject();

  v35 = sub_24F41AF18(v13, 2, 0, 0, 1, 5, a3);
  v14 = *(a1 + 80);
  v37 = 0x4044000000000000;
  sub_24E66ED98();

  sub_24F9237C8();
  v15 = v6[5];
  v37 = 0x4051800000000000;
  sub_24F9237C8();
  if (!v14)
  {
    goto LABEL_11;
  }

  if (v14 >> 62)
  {
    if (sub_24F92C738())
    {
      v9[v6[6]] = 1;
      *&v9[v6[7]] = v14;
      v16 = sub_24F92C738();
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_10:

LABEL_11:

    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215DE0, &qword_24F9847E0);
    v19 = *(*(v18 - 8) + 8);
    v19(v9, v18);
    v19(&v9[v15], v18);
    (*(v7 + 56))(v12, 1, 1, v6);
    goto LABEL_12;
  }

  v9[v6[6]] = 1;
  *&v9[v6[7]] = v14;
  v16 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:

  v17 = 4;
  if (v16 < 4)
  {
    v17 = v16;
  }

  *&v9[v6[8]] = v17;
  sub_24E6EC964(v9, v12);
  (*(v7 + 56))(v12, 0, 1, v6);
  sub_24F728184(v9);
LABEL_12:
  v20 = *(*(a1 + 32) + OBJC_IVAR____TtC12GameStoreKit15BreakoutDetails_callToActionButtonAction);
  if (v20)
  {
    v21 = *(v20 + 16);
    v22 = *(v20 + 24);

    v23 = v20;
  }

  else
  {
    swift_beginAccess();
    v23 = *(a1 + 128);

    v22 = 0;
    v21 = 0;
  }

  v24 = *(a1 + 89);

  v25 = (*(v7 + 48))(v12, 1, v6);
  if (v22)
  {
    v26 = v23 != 0;
    v27 = v35;
    if (v24)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v27 = v35;
    if (v24)
    {
      goto LABEL_20;
    }

    v26 = 0;
  }

  if (v27)
  {
    v28 = 0;
    goto LABEL_27;
  }

  if (v25 != 1 && (v34 & 1) == 0)
  {
    v28 = 1;
    goto LABEL_27;
  }

LABEL_17:
  if (!v26)
  {
LABEL_20:
    v28 = 4;
    goto LABEL_27;
  }

  v28 = 3;
LABEL_27:
  v29 = v36;
  *v36 = v28;
  *(v29 + 1) = v27;
  v30 = _s9ViewModelVMa(0);
  result = sub_24E6EC890(v12, &v29[v30[6]]);
  v32 = &v29[v30[7]];
  *v32 = v21;
  *(v32 + 1) = v22;
  *&v29[v30[8]] = v23;
  return result;
}

uint64_t sub_24F727CE4@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for IconRowViewModel(0);
  v9 = *(v8 - 1);
  MEMORY[0x28223BE20](v8);
  v11 = &v36[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218CB0, &unk_24F94A2B0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v36[-v13];
  v15 = *(a1 + 40);
  if (v15)
  {
    v39 = a1;
    v40 = v14;
    v37 = a2;
    v16 = *(v15 + OBJC_IVAR____TtC12GameStoreKit23HeroCarouselItemOverlay_lockup);
    type metadata accessor for LockupViewModel(0);
    swift_allocObject();

    v38 = sub_24F41AF18(v16, 2, 0, 0, 1, 5, a3);
    v17 = *(v15 + OBJC_IVAR____TtC12GameStoreKit23HeroCarouselItemOverlay_collectionIcons);
    v41 = 0x4044000000000000;
    sub_24E66ED98();

    sub_24F9237C8();
    v18 = v8[5];
    v41 = 0x4051800000000000;
    sub_24F9237C8();
    if (v17)
    {
      if (v17 >> 62)
      {
        if (sub_24F92C738())
        {
          v11[v8[6]] = 1;
          *&v11[v8[7]] = v17;
          v19 = sub_24F92C738();
          goto LABEL_6;
        }
      }

      else if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v11[v8[6]] = 1;
        *&v11[v8[7]] = v17;
        v19 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_6:

        v20 = 4;
        if (v19 < 4)
        {
          v20 = v19;
        }

        *&v11[v8[8]] = v20;
        v21 = v40;
        sub_24E6EC964(v11, v40);
        (*(v9 + 56))(v21, 0, 1, v8);
        sub_24F728184(v11);
LABEL_14:
        v28 = *(v15 + OBJC_IVAR____TtC12GameStoreKit23HeroCarouselItemOverlay_callToActionText);
        v29 = *(v15 + OBJC_IVAR____TtC12GameStoreKit23HeroCarouselItemOverlay_callToActionText + 8);
        v24 = *(v15 + OBJC_IVAR____TtC12GameStoreKit23HeroCarouselItemOverlay_clickAction);

        v30 = *(v39 + 98);

        v31 = (*(v9 + 48))(v21, 1, v8);
        if (v29)
        {
          v32 = v24 != 0;
          v33 = v38;
          if (v30)
          {
            goto LABEL_16;
          }
        }

        else
        {
          v33 = v38;
          if (v30)
          {
            goto LABEL_19;
          }

          v32 = 0;
        }

        if (v33)
        {
          v34 = 0;
          goto LABEL_26;
        }

        if (v31 != 1 && (v37 & 1) == 0)
        {
          v34 = 1;
          goto LABEL_26;
        }

LABEL_16:
        if (v32)
        {
          v34 = 2;
LABEL_26:
          *a4 = v34;
          *(a4 + 8) = v33;
          v22 = _s9ViewModelVMa(0);
          result = sub_24E6EC890(v21, a4 + v22[6]);
          v35 = (a4 + v22[7]);
          *v35 = v28;
          v35[1] = v29;
          goto LABEL_27;
        }

LABEL_19:
        v34 = 4;
        goto LABEL_26;
      }
    }

    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215DE0, &qword_24F9847E0);
    v27 = *(*(v26 - 8) + 8);
    v27(v11, v26);
    v27(&v11[v18], v26);
    v21 = v40;
    (*(v9 + 56))(v40, 1, 1, v8);
    goto LABEL_14;
  }

  v22 = _s9ViewModelVMa(0);
  result = (*(v9 + 56))(a4 + v22[6], 1, 1, v8);
  v24 = 0;
  *a4 = 4;
  *(a4 + 8) = 0;
  v25 = (a4 + v22[7]);
  *v25 = 0;
  v25[1] = 0;
LABEL_27:
  *(a4 + v22[8]) = v24;
  return result;
}

uint64_t sub_24F728184(uint64_t a1)
{
  v2 = type metadata accessor for IconRowViewModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_24F7281E0(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214148, &qword_24F93C520);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v25 - v4;
  v6 = sub_24F926E08();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_24F921C08())
  {
    (*(v7 + 104))(v9, *MEMORY[0x277CE0FE0], v6);
    v10 = 0;
    v11 = sub_24F926E88();
    (*(v7 + 8))(v9, v6);
    sub_24F028328(v1, v5);
    v12 = sub_24F922348();
    v13 = *(v12 - 8);
    v14 = (*(v13 + 48))(v5, 1, v12);
    if (v14 == 1)
    {
      sub_24F0F8BDC(v5);
    }

    else
    {
      sub_24F9222E8();
      v10 = v17;
      (*(v13 + 8))(v5, v12);
    }

    if (*(v1 + *(type metadata accessor for AspectRatioMediaArtworkStyle(0) + 20)))
    {
      v18 = 256;
    }

    else
    {
      v18 = 0;
    }

    *&v25 = v11;
    if (v14 == 1)
    {
      ++v18;
    }

    *(&v25 + 1) = v10;
    LOWORD(v26) = v18;
    BYTE2(v26) = 0;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218B00, &unk_24F952720);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B988, &qword_24F9878E0);
    sub_24E6E97A8();
    sub_24E760378();
    sub_24F924E28();
    v19 = v27;
    v20 = v29;
    v21 = v28;
    v25 = v27;
    HIWORD(v26) = v29 != 0;
    LOWORD(v26) = v28;
    sub_24E760544(v27, *(&v27 + 1), v28, v29);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B968, &unk_24F952710);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B970, &unk_24F9878D0);
    sub_24E7602EC();
    sub_24E760484();
    sub_24F924E28();

    sub_24E760584(v19, *(&v19 + 1), v21, v20);
  }

  else
  {
    v15 = sub_24F921BF8();
    if (!v15)
    {
      v25 = sub_24F9251B8();
      v26 = 0x1000000;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B968, &unk_24F952710);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B970, &unk_24F9878D0);
      sub_24E7602EC();
      sub_24E760484();
      sub_24F924E28();
      goto LABEL_14;
    }

    v16 = v15;
    *&v25 = swift_getKeyPath();
    *(&v25 + 1) = v16;
    LOWORD(v26) = 0;
    BYTE2(v26) = 1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218B00, &unk_24F952720);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B988, &qword_24F9878E0);
    sub_24E6E97A8();
    sub_24E760378();
    sub_24F924E28();
    v25 = v27;
    HIWORD(v26) = v29 != 0;
    LOWORD(v26) = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B968, &unk_24F952710);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B970, &unk_24F9878D0);
    sub_24E7602EC();
    sub_24E760484();
    sub_24F924E28();
  }

LABEL_14:
  v22 = *(&v27 + 1);
  v23 = v28 | (v29 << 16);
  v24 = v30;
  *a1 = v27;
  *(a1 + 8) = v22;
  *(a1 + 16) = v23;
  *(a1 + 18) = BYTE2(v23);
  *(a1 + 19) = v24;
}

uint64_t sub_24F728728@<X0>(uint64_t a2@<X3>, char a3@<W4>, uint64_t a4@<X8>)
{
  v14[1] = a4;
  v6 = type metadata accessor for AspectRatioMediaArtworkStyle(0);
  MEMORY[0x28223BE20](v6);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F9289E8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F923998();
  sub_24F9289C8();
  sub_24F028328(a2, v8);
  v8[*(v6 + 20)] = a3 & 1;
  sub_24F72896C(&qword_27F214C28, MEMORY[0x277D21C48], MEMORY[0x277D7EEB8]);
  sub_24F72896C(&qword_27F2175C8, type metadata accessor for AspectRatioMediaArtworkStyle, &unk_24FA22900);
  sub_24F925ED8();
  sub_24F7289B4(v8);
  return (*(v10 + 8))(v12, v9);
}

uint64_t type metadata accessor for AspectRatioMediaArtworkStyle(uint64_t a1)
{
  result = qword_27F24E378;
  if (!qword_27F24E378)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F72896C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24F7289B4(uint64_t a1)
{
  v2 = type metadata accessor for AspectRatioMediaArtworkStyle(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24F728A24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214148, &qword_24F93C520);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return v10 - 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_24F728AFC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214148, &qword_24F93C520);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

void sub_24F728BC0(uint64_t a1)
{
  sub_24F028EF0(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_24F728C6C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x7974706D65;
  }

  else
  {
    v3 = 0x676E6964616F6CLL;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  if (*a2)
  {
    v5 = 0x7974706D65;
  }

  else
  {
    v5 = 0x676E6964616F6CLL;
  }

  if (*a2)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24F92CE08();
  }

  return v8 & 1;
}

uint64_t sub_24F728D10()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F728D90(uint64_t a1)
{
  sub_24F92B218();
}

uint64_t sub_24F728DFC()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

void sub_24F728E84(uint64_t *a1@<X8>)
{
  v2 = 0x676E6964616F6CLL;
  if (*v1)
  {
    v2 = 0x7974706D65;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_24F728F70(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x7974706D65;
  }

  else
  {
    v3 = 0x6C62617972746572;
  }

  if (v2)
  {
    v4 = 0xEE00726F72724565;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  if (*a2)
  {
    v5 = 0x7974706D65;
  }

  else
  {
    v5 = 0x6C62617972746572;
  }

  if (*a2)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xEE00726F72724565;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24F92CE08();
  }

  return v8 & 1;
}

uint64_t sub_24F729020()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F7290AC(uint64_t a1)
{
  sub_24F92B218();
}

uint64_t sub_24F729124()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

void sub_24F7291B8(uint64_t *a1@<X8>)
{
  v2 = 0x6C62617972746572;
  if (*v1)
  {
    v2 = 0x7974706D65;
  }

  v3 = 0xEE00726F72724565;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_24F7292B0@<X0>(__int16 a1@<W1>, unint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EC10, &unk_24F94D880);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A400;
  *(inited + 32) = 0x53676E6964616F6CLL;
  v5 = 0x676E6964616F6CLL;
  if (a1)
  {
    v5 = 0x7974706D65;
  }

  v6 = 0xE700000000000000;
  if (a1)
  {
    v6 = 0xE500000000000000;
  }

  *(inited + 40) = 0xEC000000656C7974;
  *(inited + 48) = v5;
  *(inited + 56) = v6;
  *(inited + 64) = 0x797453726F727265;
  v7 = 0x6C62617972746572;
  if ((a1 & 0x100) != 0)
  {
    v7 = 0x7974706D65;
  }

  v8 = 0xEE00726F72724565;
  if ((a1 & 0x100) != 0)
  {
    v8 = 0xE500000000000000;
  }

  *(inited + 72) = 0xEA0000000000656CLL;
  *(inited + 80) = v7;
  *(inited + 88) = v8;
  v9 = sub_24E6086DC(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219F90, &qword_24F955020);
  swift_arrayDestroy();
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227A20, &qword_24F9482B0);
  result = sub_24E776F6C();
  a2[4] = result;
  *a2 = v9;
  return result;
}

uint64_t sub_24F729420(void *a1, __int16 a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E3A8, &unk_24FA22A58);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F7299D4();
  sub_24F92D128();
  v10[15] = a2 & 1;
  v10[14] = 0;
  sub_24F729AD0();
  sub_24F92CD48();
  if (!v2)
  {
    v10[13] = HIBYTE(a2) & 1;
    v10[12] = 1;
    sub_24F729B24();
    sub_24F92CD48();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_24F7295B4()
{
  if (*v0)
  {
    return 0x797453726F727265;
  }

  else
  {
    return 0x53676E6964616F6CLL;
  }
}

uint64_t sub_24F7295FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x53676E6964616F6CLL && a2 == 0xEC000000656C7974;
  if (v6 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x797453726F727265 && a2 == 0xEA0000000000656CLL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24F92CE08();

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

uint64_t sub_24F7296E4(uint64_t a1)
{
  v2 = sub_24F7299D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F729720(uint64_t a1)
{
  v2 = sub_24F7299D4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F72975C@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_24F7297F4(a2);
  if (!v2)
  {
    *a1 = result & 1;
    a1[1] = BYTE1(result) & 1;
  }

  return result;
}

uint64_t sub_24F729794(void *a1)
{
  if (v1[1])
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return sub_24F729420(a1, v2 | *v1);
}

unint64_t sub_24F7297C4@<X0>(unint64_t *a1@<X8>)
{
  if (v1[1])
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return sub_24F7292B0(v2 | *v1, a1);
}

uint64_t sub_24F7297F4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E388, &qword_24FA22A50);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F7299D4();
  sub_24F92D108();
  if (v1)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v11[14] = 0;
  sub_24F729A28();
  sub_24F92CC68();
  v7 = v11[15];
  v11[12] = 1;
  sub_24F729A7C();
  sub_24F92CC68();
  (*(v4 + 8))(v6, v3);
  v9 = v11[13];
  __swift_destroy_boxed_opaque_existential_1(a1);
  if (v9)
  {
    v10 = 256;
  }

  else
  {
    v10 = 0;
  }

  return v10 | v7;
}

unint64_t sub_24F7299D4()
{
  result = qword_27F24E390;
  if (!qword_27F24E390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24E390);
  }

  return result;
}

unint64_t sub_24F729A28()
{
  result = qword_27F24E398;
  if (!qword_27F24E398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24E398);
  }

  return result;
}

unint64_t sub_24F729A7C()
{
  result = qword_27F24E3A0;
  if (!qword_27F24E3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24E3A0);
  }

  return result;
}

unint64_t sub_24F729AD0()
{
  result = qword_27F24E3B0;
  if (!qword_27F24E3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24E3B0);
  }

  return result;
}

unint64_t sub_24F729B24()
{
  result = qword_27F24E3B8;
  if (!qword_27F24E3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24E3B8);
  }

  return result;
}

unint64_t sub_24F729BAC()
{
  result = qword_27F24E3C0;
  if (!qword_27F24E3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24E3C0);
  }

  return result;
}

unint64_t sub_24F729C04()
{
  result = qword_27F24E3C8;
  if (!qword_27F24E3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24E3C8);
  }

  return result;
}

unint64_t sub_24F729C5C()
{
  result = qword_27F24E3D0;
  if (!qword_27F24E3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24E3D0);
  }

  return result;
}

unint64_t sub_24F729CB4()
{
  result = qword_27F24E3D8;
  if (!qword_27F24E3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24E3D8);
  }

  return result;
}

unint64_t sub_24F729D0C()
{
  result = qword_27F24E3E0;
  if (!qword_27F24E3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24E3E0);
  }

  return result;
}

unint64_t sub_24F729D60()
{
  result = qword_27F24E3E8;
  if (!qword_27F24E3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24E3E8);
  }

  return result;
}

unint64_t sub_24F729DB4()
{
  result = qword_27F24E3F0[0];
  if (!qword_27F24E3F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F24E3F0);
  }

  return result;
}

uint64_t sub_24F729E68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  v3[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CC20, &unk_24F992000);
  v3[7] = swift_task_alloc();
  v4 = type metadata accessor for AvatarData(0);
  v3[8] = v4;
  v5 = *(v4 - 8);
  v3[9] = v5;
  v3[10] = *(v5 + 64);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24F729FB0, 0, 0);
}

uint64_t sub_24F729FB0()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[7];
  sub_24F72B55C(v0[4], v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_24E601704(v0[7], &qword_27F22CC20, &unk_24F992000);
    if (qword_27F211438 != -1)
    {
      swift_once();
    }

    v4 = sub_24F9220D8();
    __swift_project_value_buffer(v4, qword_27F39E8F8);
    v5 = sub_24F9220B8();
    v6 = sub_24F92BD98();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_24E5DD000, v5, v6, "There is no avatar to save.", v7, 2u);
      MEMORY[0x2530542D0](v7, -1, -1);
    }

    v8 = v0[3];

    v9 = *MEMORY[0x277D21CA8];
    v10 = sub_24F928AE8();
    (*(*(v10 - 8) + 104))(v8, v9, v10);

    v11 = v0[1];

    return v11();
  }

  else
  {
    sub_24F72B5CC(v0[7], v0[12], type metadata accessor for AvatarData);
    v13 = type metadata accessor for LocalPlayerProvider(0);
    v14 = swift_task_alloc();
    v0[13] = v14;
    *v14 = v0;
    v14[1] = sub_24F72A234;

    return MEMORY[0x28217F228](v0 + 2, v13, v13);
  }
}

uint64_t sub_24F72A234()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_24F72A7D8;
  }

  else
  {
    v2 = sub_24F72A348;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F72A348()
{
  v1 = v0[12];
  v0[15] = v0[2];
  v3 = *v1;
  v2 = v1[1];
  v4 = swift_task_alloc();
  v0[16] = v4;
  *v4 = v0;
  v4[1] = sub_24F72A3F4;

  return sub_24F557274(v2, v3);
}

uint64_t sub_24F72A3F4()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_24F72AA08;
  }

  else
  {
    v2 = sub_24F72A508;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F72A508()
{
  if (qword_27F211438 != -1)
  {
    swift_once();
  }

  v1 = sub_24F9220D8();
  __swift_project_value_buffer(v1, qword_27F39E8F8);
  v2 = sub_24F9220B8();
  v3 = sub_24F92BD98();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24E5DD000, v2, v3, "Avatar has been saved.", v4, 2u);
    MEMORY[0x2530542D0](v4, -1, -1);
  }

  v5 = v0[15];
  v7 = v0[11];
  v6 = v0[12];
  v8 = v0[9];
  v9 = v0[6];

  v10 = sub_24F92B858();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  sub_24F72B8EC(v6, v7, type metadata accessor for AvatarData);
  sub_24F92B7F8();

  v11 = sub_24F92B7E8();
  v12 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  v13[2] = v11;
  v13[3] = v14;
  v13[4] = v5;
  sub_24F72B5CC(v7, v13 + v12, type metadata accessor for AvatarData);
  sub_24EA998B8(0, 0, v9, &unk_24FA22E10, v13);

  sub_24F72B9A4(v6, type metadata accessor for AvatarData);
  v15 = v0[3];
  v16 = *MEMORY[0x277D21CA8];
  v17 = sub_24F928AE8();
  (*(*(v17 - 8) + 104))(v15, v16, v17);

  v18 = v0[1];

  return v18();
}

uint64_t sub_24F72A7D8()
{
  v1 = v0[14];
  if (qword_27F211438 != -1)
  {
    swift_once();
  }

  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E8F8);
  v3 = v1;
  v4 = sub_24F9220B8();
  v5 = sub_24F92BD98();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_24E5DD000, v4, v5, "Failed saving the avatar, reason: %@", v6, 0xCu);
    sub_24E601704(v7, &qword_27F227B20, &qword_24F944D30);
    MEMORY[0x2530542D0](v7, -1, -1);
    MEMORY[0x2530542D0](v6, -1, -1);
  }

  else
  {
  }

  sub_24F72B9A4(v0[12], type metadata accessor for AvatarData);
  v10 = v0[3];
  v11 = *MEMORY[0x277D21CA8];
  v12 = sub_24F928AE8();
  (*(*(v12 - 8) + 104))(v10, v11, v12);

  v13 = v0[1];

  return v13();
}

uint64_t sub_24F72AA08()
{

  v1 = v0[17];
  if (qword_27F211438 != -1)
  {
    swift_once();
  }

  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E8F8);
  v3 = v1;
  v4 = sub_24F9220B8();
  v5 = sub_24F92BD98();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_24E5DD000, v4, v5, "Failed saving the avatar, reason: %@", v6, 0xCu);
    sub_24E601704(v7, &qword_27F227B20, &qword_24F944D30);
    MEMORY[0x2530542D0](v7, -1, -1);
    MEMORY[0x2530542D0](v6, -1, -1);
  }

  else
  {
  }

  sub_24F72B9A4(v0[12], type metadata accessor for AvatarData);
  v10 = v0[3];
  v11 = *MEMORY[0x277D21CA8];
  v12 = sub_24F928AE8();
  (*(*(v12 - 8) + 104))(v10, v11, v12);

  v13 = v0[1];

  return v13();
}

uint64_t sub_24F72AC40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v6 = sub_24F9289E8();
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v5[7] = swift_task_alloc();
  type metadata accessor for PlayerAvatar(0);
  v5[8] = swift_task_alloc();
  sub_24F92B7F8();
  v5[9] = sub_24F92B7E8();
  v8 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24F72AD60, v8, v7);
}

uint64_t sub_24F72AD60()
{
  v1 = v0[8];
  v2 = v0[6];
  v3 = v0[4];
  v11 = v0[5];
  v12 = v0[7];
  v4 = v0[3];

  v5 = type metadata accessor for AvatarData(0);
  sub_24F72B8EC(v3 + *(v5 + 28), v1, type metadata accessor for PlayerAvatar);
  swift_getKeyPath();
  v6 = swift_task_alloc();
  *(v6 + 16) = v4;
  *(v6 + 24) = v1;
  v0[2] = v4;
  sub_24F72B95C(&qword_27F247200, type metadata accessor for LocalPlayerProvider, &protocol conformance descriptor for LocalPlayerProvider);
  sub_24F91FD78();

  sub_24F72B9A4(v1, type metadata accessor for PlayerAvatar);
  (*(v2 + 16))(v12, v3 + *(v5 + 24), v11);
  LocalPlayerProvider.avatarMediaArtwork.setter(v12);
  v7 = *v3;
  v8 = *v3;
  sub_24F556BB0(v7);

  v9 = v0[1];

  return v9();
}

uint64_t sub_24F72AF48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v18 - v7;
  v9 = type metadata accessor for SaveAvatarAction(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  sub_24F72B8EC(a1, &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SaveAvatarAction);
  v12 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  sub_24F72B5CC(&v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for SaveAvatarAction);
  *(v13 + ((v11 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510, &unk_24F93C690);

  v14 = sub_24F92A9E8();
  v15 = sub_24F92B858();
  (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_24FA22E00;
  v16[5] = v13;
  v16[6] = v14;

  sub_24E6959D8(0, 0, v8, &unk_24F94D7B0, v16);

  return v14;
}

uint64_t sub_24F72B1B0()
{
  v1 = type metadata accessor for SaveAvatarAction(0);
  v2 = (v0 + ((*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80)));
  v3 = type metadata accessor for AvatarData(0);
  if (!(*(*(v3 - 8) + 48))(v2, 1, v3))
  {

    v4 = *(v3 + 24);
    v5 = sub_24F9289E8();
    v14 = *(*(v5 - 8) + 8);
    v15 = v5;
    v14(v2 + v4);
    v6 = v2 + *(v3 + 28);

    v7 = type metadata accessor for PlayerAvatar(0);
    v8 = *(v7 + 20);
    v9 = type metadata accessor for PlayerAvatar.Overlay(0);
    if (!(*(*(v9 - 8) + 48))(&v6[v8], 1, v9) && !swift_getEnumCaseMultiPayload())
    {
      (v14)(&v6[v8], v15);
    }

    v10 = &v6[*(v7 + 24)];
    if (*(v10 + 3))
    {
      __swift_destroy_boxed_opaque_existential_1(v10);
    }
  }

  v11 = *(v1 + 20);
  v12 = sub_24F928AD8();
  (*(*(v12 - 8) + 8))(v2 + v11, v12);

  return swift_deallocObject();
}

uint64_t sub_24F72B3F8(uint64_t a1)
{
  v4 = *(type metadata accessor for SaveAvatarAction(0) - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24E614970;

  return sub_24F729E68(a1, v1 + v5, v6);
}

uint64_t sub_24F72B514()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24F72B55C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CC20, &unk_24F992000);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F72B5CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F72B634()
{
  v1 = (type metadata accessor for AvatarData(0) - 8);
  v2 = (*(*v1 + 80) + 40) & ~*(*v1 + 80);
  swift_unknownObjectRelease();

  v3 = v1[8];
  v4 = sub_24F9289E8();
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v2 + v3, v4);
  v6 = v0 + v2 + v1[9];

  v7 = type metadata accessor for PlayerAvatar(0);
  v8 = *(v7 + 20);
  v9 = type metadata accessor for PlayerAvatar.Overlay(0);
  if (!(*(*(v9 - 8) + 48))(v6 + v8, 1, v9) && !swift_getEnumCaseMultiPayload())
  {
    v5(v6 + v8, v4);
  }

  v10 = (v6 + *(v7 + 24));
  if (v10[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v10);
  }

  return swift_deallocObject();
}

uint64_t sub_24F72B7F4(uint64_t a1)
{
  v4 = *(type metadata accessor for AvatarData(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24E614970;

  return sub_24F72AC40(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_24F72B8EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F72B95C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24F72B9A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F72BA18(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_24F91F648();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24F72BAD8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_24F91F648();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for ChallengeCardTextSubtitle(uint64_t a1)
{
  result = qword_27F24E478;
  if (!qword_27F24E478)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F72BBC8(uint64_t a1)
{
  sub_24F91F648();
  if (v1 <= 0x3F)
  {
    sub_24E7C6468(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

double sub_24F72BC78@<D0>(char *a1@<X1>, _OWORD *a2@<X8>)
{
  v78 = a2;
  v3 = sub_24F91F7C8();
  v76 = *(v3 - 8);
  v77 = v3;
  MEMORY[0x28223BE20](v3);
  v73 = v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24F91F7A8();
  v74 = *(v5 - 8);
  v75 = v5;
  MEMORY[0x28223BE20](v5);
  v72 = v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_24F925D38();
  v70 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v68 = v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_24F925D58();
  v67 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v66 = v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F925D78();
  MEMORY[0x28223BE20](v9 - 8);
  v65 = v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24F924A78();
  MEMORY[0x28223BE20](v11 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = v63 - v13;
  v15 = sub_24F91F648();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v64 = v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = v63 - v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21BAE0, &qword_24F9EAF10);
  sub_24F923808();
  v21 = *(type metadata accessor for ChallengeCardTextSubtitle(0) + 20);
  sub_24E7C79D8();
  v22 = sub_24F92AF78();
  v23 = *(v16 + 8);
  v23(v20, v15);
  if (v22)
  {
    v24 = *(a1 + 1);
    *&v84 = *a1;
    *(&v84 + 1) = v24;
    sub_24E600AEC();

    v79 = sub_24F925E18();
    v80 = v26;
    v81 = v25 & 1;
    v82 = v27;
    v83 = 1;
  }

  else
  {
    sub_24F924A68();
    sub_24F924A58();
    sub_24F924A48();
    sub_24F924A58();
    sub_24F924A68();
    sub_24F924A58();
    v28 = *(v16 + 16);
    v63[1] = v14;
    v28(v64, &a1[v21], v15);
    sub_24F91F638();
    sub_24F91F558();
    v23(v20, v15);
    (*(v70 + 104))(v68, *MEMORY[0x277CE0BB0], v71);
    v29 = v66;
    sub_24F925D48();
    sub_24F925D68();
    (*(v67 + 8))(v29, v69);
    v30 = sub_24F925DD8();
    v32 = v31;
    v34 = v33;
    sub_24F924A28();
    sub_24E600B40(v30, v32, v34 & 1);

    sub_24F924A58();
    sub_24F924A98();
    if (qword_27F211820 != -1)
    {
      swift_once();
    }

    v35 = qword_27F24F280;
    v36 = sub_24F925DE8();
    v38 = v37;
    v40 = v39;
    sub_24F924A28();
    sub_24E600B40(v36, v38, v40 & 1);

    sub_24F924A58();
    sub_24F924A98();
    v41 = v35;
    v42 = sub_24F925DE8();
    v44 = v43;
    v46 = v45;
    v48 = v47;
    v49 = v73;
    sub_24F91F778();
    sub_24F91F708();
    (*(v76 + 8))(v49, v77);
    v50 = v72;
    sub_24F91F788();
    v51 = sub_24F91F798();
    (*(v74 + 8))(v50, v75);
    if (v51 == 2)
    {
      v52 = sub_24F925C78();
      v54 = v53;
      v56 = v55;
      v58 = v57;
    }

    else
    {
      sub_24E5FD138(v42, v44, v46 & 1);

      v52 = v42;
      v54 = v44;
      v56 = v46;
      v58 = v48;
    }

    sub_24E600B40(v42, v44, v46 & 1);

    v79 = v52;
    v80 = v54;
    v81 = v56 & 1;
    v82 = v58;
    v83 = 0;
  }

  sub_24F924E28();
  result = *&v84;
  v60 = v85;
  v61 = v86;
  v62 = v78;
  *v78 = v84;
  v62[1] = v60;
  *(v62 + 32) = v61;
  return result;
}

uint64_t sub_24F72C50C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v19 = a2;
  v4 = a1 - 8;
  v18 = *(a1 - 8);
  v5 = *(v18 + 64);
  MEMORY[0x28223BE20](a1);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D620, &unk_24F958EC0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v17 - v11;
  v20 = *(v3 + *(v4 + 32));

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D628, &unk_24F99E560);
  sub_24E602068(&qword_27F21D630, &qword_27F21D628, &unk_24F99E560, MEMORY[0x277D83970]);
  sub_24F9253C8();
  sub_24F72C7FC(v3, &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = (*(v18 + 80) + 16) & ~*(v18 + 80);
  v14 = swift_allocObject();
  sub_24F72C95C(&v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  (*(v7 + 16))(v9, v12, v6);
  v15 = swift_allocObject();
  *(v15 + 16) = sub_24F72C9C0;
  *(v15 + 24) = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2233E0, &qword_24FA02720);
  sub_24E602068(&qword_27F21D640, &qword_27F21D620, &unk_24F958EC0, MEMORY[0x277CE06D8]);
  sub_24E8C5A10();
  sub_24F923828();
  return (*(v7 + 8))(v12, v6);
}

uint64_t sub_24F72C7FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChallengeCardTextSubtitle(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F72C860()
{
  v1 = (type metadata accessor for ChallengeCardTextSubtitle(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[7];
  v4 = sub_24F91F648();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_24F72C95C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChallengeCardTextSubtitle(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_24F72C9C0@<D0>(_OWORD *a1@<X8>)
{
  v3 = *(type metadata accessor for ChallengeCardTextSubtitle(0) - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return sub_24F72BC78(v4, a1);
}

uint64_t sub_24F72CA40()
{

  return swift_deallocObject();
}

BOOL GameControllerObserver.controllerConnected.getter()
{
  swift_getKeyPath();
  v3 = v0;
  sub_24F733018(&qword_27F220F48, type metadata accessor for GameControllerObserver, &protocol conformance descriptor for GameControllerObserver);
  sub_24F91FD88();

  v1 = OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver__controller;
  swift_beginAccess();
  return *(v3 + v1) != 0;
}

uint64_t GameControllerObserver.batteryState.getter()
{
  swift_getKeyPath();
  v3 = v0;
  sub_24F733018(&qword_27F220F48, type metadata accessor for GameControllerObserver, &protocol conformance descriptor for GameControllerObserver);
  sub_24F91FD88();

  v1 = OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver__batteryState;
  swift_beginAccess();
  return *(v3 + v1);
}

void *GameControllerObserver.controller.getter()
{
  swift_getKeyPath();
  v5 = v0;
  sub_24F733018(&qword_27F220F48, type metadata accessor for GameControllerObserver, &protocol conformance descriptor for GameControllerObserver);
  sub_24F91FD88();

  v1 = OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver__controller;
  swift_beginAccess();
  v2 = *(v5 + v1);
  v3 = v2;
  return v2;
}

float sub_24F72CCE8(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_24F733018(&qword_27F220F48, type metadata accessor for GameControllerObserver, &protocol conformance descriptor for GameControllerObserver);
  sub_24F91FD88();

  v4 = v2 + *a2;
  swift_beginAccess();
  return *v4;
}

id sub_24F72CE18()
{
  result = [objc_allocWithZone(type metadata accessor for GameControllerObserver(0)) init];
  qword_27F24E488 = result;
  return result;
}

id static GameControllerObserver.shared.getter()
{
  if (qword_27F211808 != -1)
  {
    swift_once();
  }

  v1 = qword_27F24E488;

  return v1;
}

id sub_24F72CEA8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24F733018(&qword_27F220F48, type metadata accessor for GameControllerObserver, &protocol conformance descriptor for GameControllerObserver);
  sub_24F91FD88();

  v4 = OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver__controller;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

void sub_24F72CF80(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  GameControllerObserver.controller.setter(v1);
}

void sub_24F72CFB0(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  GameControllerObserver.controller.setter(v1);
}

uint64_t type metadata accessor for GameControllerObserver(uint64_t a1)
{
  result = qword_27F24E520;
  if (!qword_27F24E520)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void GameControllerObserver.controller.setter(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver__controller;
  swift_beginAccess();
  v5 = *(v1 + v4);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24F733018(&qword_27F220F48, type metadata accessor for GameControllerObserver, &protocol conformance descriptor for GameControllerObserver);
    sub_24F91FD78();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_24E69A5C4(0, &qword_27F235C38, 0x277CCB038);
  v6 = v5;
  v7 = a1;
  v8 = sub_24F92C408();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

void sub_24F72D1B8(uint64_t a1, void *a2)
{
  v4 = OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver__controller;
  swift_beginAccess();
  v5 = *(a1 + v4);
  *(a1 + v4) = a2;
  v6 = a2;
}

uint64_t (*GameControllerObserver.controller.modify(uint64_t *a1))()
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
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_24F733018(&qword_27F220F48, type metadata accessor for GameControllerObserver, &protocol conformance descriptor for GameControllerObserver);
  sub_24F91FD88();

  *v4 = v1;
  swift_getKeyPath();
  sub_24F91FDA8();

  swift_beginAccess();
  return sub_24F72D370;
}

uint64_t (*GameControllerObserver.aButton.modify(uint64_t *a1))()
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
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_24F733018(&qword_27F220F48, type metadata accessor for GameControllerObserver, &protocol conformance descriptor for GameControllerObserver);
  sub_24F91FD88();

  *v4 = v1;
  swift_getKeyPath();
  sub_24F91FDA8();

  swift_beginAccess();
  return sub_24F72D53C;
}

float sub_24F72D570@<S0>(uint64_t *a1@<X0>, void *a3@<X4>, _DWORD *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_24F733018(&qword_27F220F48, type metadata accessor for GameControllerObserver, &protocol conformance descriptor for GameControllerObserver);
  sub_24F91FD88();

  v7 = (v6 + *a3);
  swift_beginAccess();
  result = *v7;
  *a4 = *v7;
  return result;
}

void sub_24F72D68C(void *a1, uint64_t a2, uint64_t a3, float a4)
{
  v6 = (v4 + *a1);
  swift_beginAccess();
  if (*v6 == a4)
  {
    *v6 = a4;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24F733018(&qword_27F220F48, type metadata accessor for GameControllerObserver, &protocol conformance descriptor for GameControllerObserver);
    sub_24F91FD78();
  }
}

uint64_t (*GameControllerObserver.bButton.modify(uint64_t *a1))()
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
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_24F733018(&qword_27F220F48, type metadata accessor for GameControllerObserver, &protocol conformance descriptor for GameControllerObserver);
  sub_24F91FD88();

  *v4 = v1;
  swift_getKeyPath();
  sub_24F91FDA8();

  swift_beginAccess();
  return sub_24F72D8FC;
}

uint64_t (*GameControllerObserver.xButton.modify(uint64_t *a1))()
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
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_24F733018(&qword_27F220F48, type metadata accessor for GameControllerObserver, &protocol conformance descriptor for GameControllerObserver);
  sub_24F91FD88();

  *v4 = v1;
  swift_getKeyPath();
  sub_24F91FDA8();

  swift_beginAccess();
  return sub_24F72DAC8;
}

uint64_t (*GameControllerObserver.yButton.modify(uint64_t *a1))()
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
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_24F733018(&qword_27F220F48, type metadata accessor for GameControllerObserver, &protocol conformance descriptor for GameControllerObserver);
  sub_24F91FD88();

  *v4 = v1;
  swift_getKeyPath();
  sub_24F91FDA8();

  swift_beginAccess();
  return sub_24F72DC94;
}

uint64_t sub_24F72DCB4(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_24F733018(&qword_27F220F48, type metadata accessor for GameControllerObserver, &protocol conformance descriptor for GameControllerObserver);
  sub_24F91FD88();

  v4 = *a2;
  swift_beginAccess();
  return *(v2 + v4);
}

uint64_t (*GameControllerObserver.aButtonPressed.modify(uint64_t *a1))()
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
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_24F733018(&qword_27F220F48, type metadata accessor for GameControllerObserver, &protocol conformance descriptor for GameControllerObserver);
  sub_24F91FD88();

  *v4 = v1;
  swift_getKeyPath();
  sub_24F91FDA8();

  swift_beginAccess();
  return sub_24F72DF14;
}

void sub_24F72DF48(uint64_t *a1@<X0>, uint64_t *a3@<X4>, _BYTE *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_24F733018(&qword_27F220F48, type metadata accessor for GameControllerObserver, &protocol conformance descriptor for GameControllerObserver);
  sub_24F91FD88();

  v7 = *a3;
  swift_beginAccess();
  *a4 = *(v6 + v7);
}

void sub_24F72E060(char a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = a1 & 1;
  v6 = *a2;
  swift_beginAccess();
  if (*(v4 + v6) == v5)
  {
    *(v4 + v6) = v5;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24F733018(&qword_27F220F48, type metadata accessor for GameControllerObserver, &protocol conformance descriptor for GameControllerObserver);
    sub_24F91FD78();
  }
}

uint64_t (*GameControllerObserver.bButtonPressed.modify(uint64_t *a1))()
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
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_24F733018(&qword_27F220F48, type metadata accessor for GameControllerObserver, &protocol conformance descriptor for GameControllerObserver);
  sub_24F91FD88();

  *v4 = v1;
  swift_getKeyPath();
  sub_24F91FDA8();

  swift_beginAccess();
  return sub_24F72E2C4;
}

uint64_t (*GameControllerObserver.xButtonPressed.modify(uint64_t *a1))()
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
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_24F733018(&qword_27F220F48, type metadata accessor for GameControllerObserver, &protocol conformance descriptor for GameControllerObserver);
  sub_24F91FD88();

  *v4 = v1;
  swift_getKeyPath();
  sub_24F91FDA8();

  swift_beginAccess();
  return sub_24F72E47C;
}

uint64_t (*GameControllerObserver.yButtonPressed.modify(uint64_t *a1))()
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
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_24F733018(&qword_27F220F48, type metadata accessor for GameControllerObserver, &protocol conformance descriptor for GameControllerObserver);
  sub_24F91FD88();

  *v4 = v1;
  swift_getKeyPath();
  sub_24F91FDA8();

  swift_beginAccess();
  return sub_24F72E648;
}

uint64_t (*GameControllerObserver.dpadXAxis.modify(uint64_t *a1))()
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
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_24F733018(&qword_27F220F48, type metadata accessor for GameControllerObserver, &protocol conformance descriptor for GameControllerObserver);
  sub_24F91FD88();

  *v4 = v1;
  swift_getKeyPath();
  sub_24F91FDA8();

  swift_beginAccess();
  return sub_24F72E800;
}

uint64_t (*GameControllerObserver.dpadYAxis.modify(uint64_t *a1))()
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
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_24F733018(&qword_27F220F48, type metadata accessor for GameControllerObserver, &protocol conformance descriptor for GameControllerObserver);
  sub_24F91FD88();

  *v4 = v1;
  swift_getKeyPath();
  sub_24F91FDA8();

  swift_beginAccess();
  return sub_24F72E9B8;
}

uint64_t (*GameControllerObserver.leftThumbstickXAxis.modify(uint64_t *a1))()
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
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_24F733018(&qword_27F220F48, type metadata accessor for GameControllerObserver, &protocol conformance descriptor for GameControllerObserver);
  sub_24F91FD88();

  *v4 = v1;
  swift_getKeyPath();
  sub_24F91FDA8();

  swift_beginAccess();
  return sub_24F72EB70;
}

uint64_t (*GameControllerObserver.leftThumbstickYAxis.modify(uint64_t *a1))()
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
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_24F733018(&qword_27F220F48, type metadata accessor for GameControllerObserver, &protocol conformance descriptor for GameControllerObserver);
  sub_24F91FD88();

  *v4 = v1;
  swift_getKeyPath();
  sub_24F91FDA8();

  swift_beginAccess();
  return sub_24F72ED28;
}

uint64_t (*GameControllerObserver.rightThumbstickXAxis.modify(uint64_t *a1))()
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
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_24F733018(&qword_27F220F48, type metadata accessor for GameControllerObserver, &protocol conformance descriptor for GameControllerObserver);
  sub_24F91FD88();

  *v4 = v1;
  swift_getKeyPath();
  sub_24F91FDA8();

  swift_beginAccess();
  return sub_24F72EEE0;
}

uint64_t (*GameControllerObserver.rightThumbstickYAxis.modify(uint64_t *a1))()
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
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_24F733018(&qword_27F220F48, type metadata accessor for GameControllerObserver, &protocol conformance descriptor for GameControllerObserver);
  sub_24F91FD88();

  *v4 = v1;
  swift_getKeyPath();
  sub_24F91FDA8();

  swift_beginAccess();
  return sub_24F72F098;
}

uint64_t (*GameControllerObserver.batteryLevel.modify(uint64_t *a1))()
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
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_24F733018(&qword_27F220F48, type metadata accessor for GameControllerObserver, &protocol conformance descriptor for GameControllerObserver);
  sub_24F91FD88();

  *v4 = v1;
  swift_getKeyPath();
  sub_24F91FDA8();

  swift_beginAccess();
  return sub_24F72F250;
}

void sub_24F72F25C(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24F733018(&qword_27F220F48, type metadata accessor for GameControllerObserver, &protocol conformance descriptor for GameControllerObserver);
  sub_24F91FD88();

  v4 = OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver__batteryState;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

double GameControllerObserver.batteryState.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver__batteryState;
  swift_beginAccess();
  if (*(v1 + v3) != a1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24F733018(&qword_27F220F48, type metadata accessor for GameControllerObserver, &protocol conformance descriptor for GameControllerObserver);
    sub_24F91FD78();
  }

  return result;
}

uint64_t (*GameControllerObserver.batteryState.modify(uint64_t *a1))()
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
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_24F733018(&qword_27F220F48, type metadata accessor for GameControllerObserver, &protocol conformance descriptor for GameControllerObserver);
  sub_24F91FD88();

  *v4 = v1;
  swift_getKeyPath();
  sub_24F91FDA8();

  swift_beginAccess();
  return sub_24F72FA6C;
}

id sub_24F72FA78()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver__controller] = 0;
  *&v0[OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver__aButton] = 0;
  *&v0[OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver__bButton] = 0;
  *&v0[OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver__xButton] = 0;
  *&v0[OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver__yButton] = 0;
  v0[OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver__aButtonPressed] = 0;
  v0[OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver__bButtonPressed] = 0;
  v0[OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver__xButtonPressed] = 0;
  v0[OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver__yButtonPressed] = 0;
  *&v0[OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver__dpadXAxis] = 0;
  *&v0[OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver__dpadYAxis] = 0;
  *&v0[OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver__leftThumbstickXAxis] = 0;
  *&v0[OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver__leftThumbstickYAxis] = 0;
  *&v0[OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver__rightThumbstickXAxis] = 0;
  *&v0[OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver__rightThumbstickYAxis] = 0;
  *&v0[OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver__batteryLevel] = 0;
  *&v0[OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver__batteryState] = -1;
  sub_24F91FDB8();
  v13.receiver = v0;
  v13.super_class = ObjectType;
  v2 = objc_msgSendSuper2(&v13, sel_init);
  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 controllers];
  sub_24E69A5C4(0, &qword_27F235C38, 0x277CCB038);
  v6 = sub_24F92B5A8();

  if (!(v6 >> 62))
  {
    result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:

    v9 = 0;
    goto LABEL_9;
  }

  result = sub_24F92C738();
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v6 & 0xC000000000000001) != 0)
  {
    v8 = MEMORY[0x253052270](0, v6);
    goto LABEL_6;
  }

  if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v8 = *(v6 + 32);
LABEL_6:
    v9 = v8;

LABEL_9:
    GameControllerObserver.controller.setter(v9);
    v10 = objc_opt_self();
    v11 = [v10 defaultCenter];
    [v11 addObserver:v4 selector:sel_handleControllerDidConnect_ name:*MEMORY[0x277CCAF48] object:0];

    v12 = [v10 defaultCenter];
    [v12 addObserver:v4 selector:sel_handleControllerDidDisconnect_ name:*MEMORY[0x277CCAF50] object:0];

    sub_24F72FD2C();
    return v4;
  }

  __break(1u);
  return result;
}

void sub_24F72FD2C()
{
  v1 = v0;
  swift_getKeyPath();
  aBlock = v0;
  sub_24F733018(&qword_27F220F48, type metadata accessor for GameControllerObserver, &protocol conformance descriptor for GameControllerObserver);
  sub_24F91FD88();

  v2 = OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver__controller;
  swift_beginAccess();
  v3 = *(aBlock + v2);
  if (v3)
  {
    v4 = v3;
    v5 = [v4 extendedGamepad];
    if (v5)
    {
      v6 = v5;
      v7 = [v5 dpad];
      v8 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v48 = sub_24F733098;
      v49 = v8;
      aBlock = MEMORY[0x277D85DD0];
      v45 = 1107296256;
      v46 = sub_24F732068;
      v47 = &block_descriptor_173;
      v9 = _Block_copy(&aBlock);

      [v7 setValueChangedHandler_];
      _Block_release(v9);

      v10 = [v6 leftThumbstick];
      v11 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v48 = sub_24F7330B8;
      v49 = v11;
      aBlock = MEMORY[0x277D85DD0];
      v45 = 1107296256;
      v46 = sub_24F732068;
      v47 = &block_descriptor_84;
      v12 = _Block_copy(&aBlock);

      [v10 setValueChangedHandler_];
      _Block_release(v12);

      v13 = [v6 rightThumbstick];
      v14 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v48 = sub_24F7330C0;
      v49 = v14;
      aBlock = MEMORY[0x277D85DD0];
      v45 = 1107296256;
      v46 = sub_24F732068;
      v47 = &block_descriptor_88_2;
      v15 = _Block_copy(&aBlock);

      [v13 setValueChangedHandler_];
      _Block_release(v15);

      v16 = [v6 buttonA];
      v17 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v48 = sub_24F7330C8;
      v49 = v17;
      aBlock = MEMORY[0x277D85DD0];
      v45 = 1107296256;
      v46 = sub_24F859E6C;
      v47 = &block_descriptor_92_0;
      v18 = _Block_copy(&aBlock);

      [v16 setValueChangedHandler_];
      _Block_release(v18);

      v19 = [v6 buttonB];
      v20 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v48 = sub_24F733108;
      v49 = v20;
      aBlock = MEMORY[0x277D85DD0];
      v45 = 1107296256;
      v46 = sub_24F859E6C;
      v47 = &block_descriptor_96_0;
      v21 = _Block_copy(&aBlock);

      [v19 setValueChangedHandler_];
      _Block_release(v21);

      v22 = [v6 buttonX];
      v23 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v48 = sub_24F733148;
      v49 = v23;
      aBlock = MEMORY[0x277D85DD0];
      v45 = 1107296256;
      v46 = sub_24F859E6C;
      v47 = &block_descriptor_100;
      v24 = _Block_copy(&aBlock);

      [v22 setValueChangedHandler_];
      _Block_release(v24);

      v25 = [v6 buttonY];
      v26 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v48 = sub_24F733188;
      v49 = v26;
      aBlock = MEMORY[0x277D85DD0];
      v45 = 1107296256;
      v46 = sub_24F859E6C;
      v47 = &block_descriptor_104;
      v27 = _Block_copy(&aBlock);

      [v25 setValueChangedHandler_];
      _Block_release(v27);

      v28 = [v6 buttonA];
      v29 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v48 = sub_24F7331C8;
      v49 = v29;
      aBlock = MEMORY[0x277D85DD0];
      v45 = 1107296256;
      v46 = sub_24F859E6C;
      v47 = &block_descriptor_108_0;
      v30 = _Block_copy(&aBlock);

      [v28 setPressedChangedHandler_];
      _Block_release(v30);

      v31 = [v6 buttonB];
      v32 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v48 = sub_24F733208;
      v49 = v32;
      aBlock = MEMORY[0x277D85DD0];
      v45 = 1107296256;
      v46 = sub_24F859E6C;
      v47 = &block_descriptor_112;
      v33 = _Block_copy(&aBlock);

      [v31 setPressedChangedHandler_];
      _Block_release(v33);

      v34 = [v6 buttonX];
      v35 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v48 = sub_24F733248;
      v49 = v35;
      aBlock = MEMORY[0x277D85DD0];
      v45 = 1107296256;
      v46 = sub_24F859E6C;
      v47 = &block_descriptor_116_0;
      v36 = _Block_copy(&aBlock);

      [v34 setPressedChangedHandler_];
      _Block_release(v36);

      v37 = [v6 buttonY];
      v38 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v48 = sub_24F733288;
      v49 = v38;
      aBlock = MEMORY[0x277D85DD0];
      v45 = 1107296256;
      v46 = sub_24F859E6C;
      v47 = &block_descriptor_120;
      v39 = _Block_copy(&aBlock);

      [v37 setPressedChangedHandler_];
      _Block_release(v39);

      v40 = [v4 battery];
      if (v40)
      {
        v41 = v40;
        v42 = sub_24F92B098();
        [v41 addObserver:v1 forKeyPath:v42 options:7 context:0];

        v43 = sub_24F92B098();
        [v41 addObserver:v1 forKeyPath:v43 options:7 context:0];

        v4 = v6;
        v6 = v43;
      }

      v4 = v6;
    }
  }
}

id GameControllerObserver.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  if (qword_27F2113F0 != -1)
  {
    swift_once();
  }

  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E820);
  v3 = v0;
  v4 = sub_24F9220B8();
  v5 = sub_24F92BDA8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v3;
    *v7 = v3;
    v8 = v3;
    _os_log_impl(&dword_24E5DD000, v4, v5, "Destroying %@", v6, 0xCu);
    sub_24E601704(v7, &qword_27F227B20, &qword_24F944D30);
    MEMORY[0x2530542D0](v7, -1, -1);
    MEMORY[0x2530542D0](v6, -1, -1);
  }

  sub_24F730858();
  v10.receiver = v3;
  v10.super_class = ObjectType;
  return objc_msgSendSuper2(&v10, sel_dealloc);
}

void sub_24F730858()
{
  v1 = v0;
  swift_getKeyPath();
  sub_24F733018(&qword_27F220F48, type metadata accessor for GameControllerObserver, &protocol conformance descriptor for GameControllerObserver);
  sub_24F91FD88();

  v2 = OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver__controller;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (v3)
  {
    v4 = v3;
    v5 = [v4 extendedGamepad];
    if (v5)
    {
      v6 = v5;
      v50 = v4;
      v7 = [v5 dpad];
      [v7 setValueChangedHandler_];

      v8 = [v6 leftThumbstick];
      [v8 setValueChangedHandler_];

      v9 = [v6 rightThumbstick];
      [v9 setValueChangedHandler_];

      v10 = [v6 buttonA];
      [v10 setValueChangedHandler_];

      v11 = [v6 buttonB];
      [v11 setValueChangedHandler_];

      v12 = [v6 buttonX];
      [v12 setValueChangedHandler_];

      v13 = [v6 buttonY];
      [v13 setValueChangedHandler_];

      v14 = [v6 buttonA];
      [v14 setPressedChangedHandler_];

      v15 = [v6 buttonB];
      [v15 setPressedChangedHandler_];

      v16 = [v6 buttonX];
      [v16 setPressedChangedHandler_];

      v17 = [v6 buttonY];
      [v17 setPressedChangedHandler_];

      v18 = (v1 + OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver__aButton);
      swift_beginAccess();
      if (*v18 == 0.0)
      {
        *v18 = 0.0;
      }

      else
      {
        KeyPath = swift_getKeyPath();
        MEMORY[0x28223BE20](KeyPath);
        sub_24F91FD78();
      }

      v20 = (v1 + OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver__bButton);
      swift_beginAccess();
      if (*v20 == 0.0)
      {
        *v20 = 0.0;
      }

      else
      {
        v21 = swift_getKeyPath();
        MEMORY[0x28223BE20](v21);
        sub_24F91FD78();
      }

      v22 = (v1 + OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver__xButton);
      swift_beginAccess();
      if (*v22 == 0.0)
      {
        *v22 = 0.0;
      }

      else
      {
        v23 = swift_getKeyPath();
        MEMORY[0x28223BE20](v23);
        sub_24F91FD78();
      }

      v24 = (v1 + OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver__yButton);
      swift_beginAccess();
      if (*v24 == 0.0)
      {
        *v24 = 0.0;
      }

      else
      {
        v25 = swift_getKeyPath();
        MEMORY[0x28223BE20](v25);
        sub_24F91FD78();
      }

      v26 = OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver__aButtonPressed;
      swift_beginAccess();
      if (*(v1 + v26))
      {
        v27 = swift_getKeyPath();
        MEMORY[0x28223BE20](v27);
        sub_24F91FD78();
      }

      else
      {
        *(v1 + v26) = 0;
      }

      v28 = OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver__bButtonPressed;
      swift_beginAccess();
      if (*(v1 + v28))
      {
        v29 = swift_getKeyPath();
        MEMORY[0x28223BE20](v29);
        sub_24F91FD78();
      }

      else
      {
        *(v1 + v28) = 0;
      }

      v30 = OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver__xButtonPressed;
      swift_beginAccess();
      if (*(v1 + v30))
      {
        v31 = swift_getKeyPath();
        MEMORY[0x28223BE20](v31);
        sub_24F91FD78();
      }

      else
      {
        *(v1 + v30) = 0;
      }

      v32 = OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver__yButtonPressed;
      swift_beginAccess();
      if (*(v1 + v32))
      {
        v33 = swift_getKeyPath();
        MEMORY[0x28223BE20](v33);
        sub_24F91FD78();
      }

      else
      {
        *(v1 + v32) = 0;
      }

      v34 = (v1 + OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver__dpadXAxis);
      swift_beginAccess();
      if (*v34 == 0.0)
      {
        *v34 = 0.0;
      }

      else
      {
        v35 = swift_getKeyPath();
        MEMORY[0x28223BE20](v35);
        sub_24F91FD78();
      }

      v36 = (v1 + OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver__dpadYAxis);
      swift_beginAccess();
      if (*v36 == 0.0)
      {
        *v36 = 0.0;
      }

      else
      {
        v37 = swift_getKeyPath();
        MEMORY[0x28223BE20](v37);
        sub_24F91FD78();
      }

      v38 = (v1 + OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver__leftThumbstickXAxis);
      swift_beginAccess();
      if (*v38 == 0.0)
      {
        *v38 = 0.0;
      }

      else
      {
        v39 = swift_getKeyPath();
        MEMORY[0x28223BE20](v39);
        sub_24F91FD78();
      }

      v40 = (v1 + OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver__leftThumbstickYAxis);
      swift_beginAccess();
      if (*v40 == 0.0)
      {
        *v40 = 0.0;
      }

      else
      {
        v41 = swift_getKeyPath();
        MEMORY[0x28223BE20](v41);
        sub_24F91FD78();
      }

      v42 = (v1 + OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver__rightThumbstickXAxis);
      swift_beginAccess();
      if (*v42 == 0.0)
      {
        *v42 = 0.0;
      }

      else
      {
        v43 = swift_getKeyPath();
        MEMORY[0x28223BE20](v43);
        sub_24F91FD78();
      }

      v44 = (v1 + OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver__rightThumbstickYAxis);
      swift_beginAccess();
      if (*v44 == 0.0)
      {
        *v44 = 0.0;
      }

      else
      {
        v45 = swift_getKeyPath();
        MEMORY[0x28223BE20](v45);
        sub_24F91FD78();
      }

      v46 = (v1 + OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver__batteryLevel);
      swift_beginAccess();
      if (*v46 == 0.0)
      {
        *v46 = 0.0;
      }

      else
      {
        v47 = swift_getKeyPath();
        MEMORY[0x28223BE20](v47);
        sub_24F91FD78();
      }

      v48 = OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver__batteryState;
      swift_beginAccess();
      if (*(v1 + v48) == -1)
      {

        *(v1 + v48) = -1;
      }

      else
      {
        v49 = swift_getKeyPath();
        MEMORY[0x28223BE20](v49);
        sub_24F91FD78();
      }
    }

    else
    {
    }
  }
}

void sub_24F7316B4()
{
  sub_24F91EB38();
  if (v17[3])
  {
    sub_24E69A5C4(0, &qword_27F235C38, 0x277CCB038);
    if (swift_dynamicCast())
    {
      if (qword_27F2113F0 != -1)
      {
        swift_once();
      }

      v1 = sub_24F9220D8();
      __swift_project_value_buffer(v1, qword_27F39E820);
      v2 = v0;
      v3 = v16;
      v4 = sub_24F9220B8();
      v5 = sub_24F92BD98();

      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        v7 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        v17[0] = v8;
        *v6 = 138412546;
        *(v6 + 4) = v2;
        *v7 = v2;
        *(v6 + 12) = 2080;
        v9 = v2;
        v10 = [v3 description];
        v11 = sub_24F92B0D8();
        v13 = v12;

        v14 = sub_24E7620D4(v11, v13, v17);

        *(v6 + 14) = v14;
        _os_log_impl(&dword_24E5DD000, v4, v5, "%@ New controller connected: %s", v6, 0x16u);
        sub_24E601704(v7, &qword_27F227B20, &qword_24F944D30);
        MEMORY[0x2530542D0](v7, -1, -1);
        __swift_destroy_boxed_opaque_existential_1(v8);
        MEMORY[0x2530542D0](v8, -1, -1);
        MEMORY[0x2530542D0](v6, -1, -1);
      }

      sub_24F730858();
      v15 = v3;
      GameControllerObserver.controller.setter(v3);
      sub_24F72FD2C();
    }
  }

  else
  {
    sub_24E601704(v17, &qword_27F2129B0, &unk_24F945320);
  }
}

void sub_24F73193C()
{
  sub_24F91EB38();
  if (v22[3])
  {
    sub_24E69A5C4(0, &qword_27F235C38, 0x277CCB038);
    if ((swift_dynamicCast() & 1) == 0)
    {
      return;
    }

    if (qword_27F2113F0 != -1)
    {
      swift_once();
    }

    v1 = sub_24F9220D8();
    __swift_project_value_buffer(v1, qword_27F39E820);
    v2 = v0;
    v3 = v21;
    v4 = sub_24F9220B8();
    v5 = sub_24F92BD98();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v22[0] = v8;
      *v6 = 138412546;
      *(v6 + 4) = v2;
      *v7 = v2;
      *(v6 + 12) = 2080;
      v9 = v2;
      v10 = [v3 description];
      v11 = sub_24F92B0D8();
      v13 = v12;

      v14 = sub_24E7620D4(v11, v13, v22);

      *(v6 + 14) = v14;
      _os_log_impl(&dword_24E5DD000, v4, v5, "%@ Controller disconnected: %s", v6, 0x16u);
      sub_24E601704(v7, &qword_27F227B20, &qword_24F944D30);
      MEMORY[0x2530542D0](v7, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v8);
      MEMORY[0x2530542D0](v8, -1, -1);
      MEMORY[0x2530542D0](v6, -1, -1);
    }

    swift_getKeyPath();
    v22[0] = v2;
    sub_24F733018(&qword_27F220F48, type metadata accessor for GameControllerObserver, &protocol conformance descriptor for GameControllerObserver);
    v15 = v3;
    sub_24F91FD88();

    v16 = OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver__controller;
    swift_beginAccess();
    v17 = *&v2[v16];
    if (v17)
    {
      v18 = v17;
      v19 = sub_24F92C408();

      if (v19)
      {
        sub_24F730858();
        if (*&v2[v16])
        {
          KeyPath = swift_getKeyPath();
          MEMORY[0x28223BE20](KeyPath);
          sub_24F91FD78();

          return;
        }
      }
    }

    else
    {
    }
  }

  else
  {
    sub_24E601704(v22, &qword_27F2129B0, &unk_24F945320);
  }
}

uint64_t sub_24F731D14(void *a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v6 = sub_24F91EB58();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F91EB08();
  v10 = a1;
  a4(v9);

  return (*(v7 + 8))(v9, v6);
}

void sub_24F731E04(float a1, float a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = (Strong + OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver__dpadXAxis);
    swift_beginAccess();
    if (*v8 == a1)
    {
      *v8 = a1;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      sub_24F733018(&qword_27F220F48, type metadata accessor for GameControllerObserver, &protocol conformance descriptor for GameControllerObserver);
      sub_24F91FD78();
    }

    v10 = &v7[OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver__dpadYAxis];
    swift_beginAccess();
    if (*v10 == a2)
    {
      *v10 = a2;
    }

    else
    {
      v11 = swift_getKeyPath();
      MEMORY[0x28223BE20](v11);
      sub_24F733018(&qword_27F220F48, type metadata accessor for GameControllerObserver, &protocol conformance descriptor for GameControllerObserver);
      sub_24F91FD78();
    }
  }
}

void sub_24F732068(uint64_t a1, void *a2, float a3, float a4)
{
  v7 = *(a1 + 32);

  v8 = a2;
  v7(a3, a4);
}

void sub_24F7320E8(float a1, float a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = (Strong + OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver__leftThumbstickXAxis);
    swift_beginAccess();
    if (*v8 == a1)
    {
      *v8 = a1;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      sub_24F733018(&qword_27F220F48, type metadata accessor for GameControllerObserver, &protocol conformance descriptor for GameControllerObserver);
      sub_24F91FD78();
    }

    v10 = &v7[OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver__leftThumbstickYAxis];
    swift_beginAccess();
    if (*v10 == a2)
    {
      *v10 = a2;
    }

    else
    {
      v11 = swift_getKeyPath();
      MEMORY[0x28223BE20](v11);
      sub_24F733018(&qword_27F220F48, type metadata accessor for GameControllerObserver, &protocol conformance descriptor for GameControllerObserver);
      sub_24F91FD78();
    }
  }
}

void sub_24F73234C(float a1, float a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = (Strong + OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver__rightThumbstickXAxis);
    swift_beginAccess();
    if (*v8 == a1)
    {
      *v8 = a1;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      sub_24F733018(&qword_27F220F48, type metadata accessor for GameControllerObserver, &protocol conformance descriptor for GameControllerObserver);
      sub_24F91FD78();
    }

    v10 = &v7[OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver__rightThumbstickYAxis];
    swift_beginAccess();
    if (*v10 == a2)
    {
      *v10 = a2;
    }

    else
    {
      v11 = swift_getKeyPath();
      MEMORY[0x28223BE20](v11);
      sub_24F733018(&qword_27F220F48, type metadata accessor for GameControllerObserver, &protocol conformance descriptor for GameControllerObserver);
      sub_24F91FD78();
    }
  }
}

void sub_24F7325B0(float a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = (Strong + *a5);
    swift_beginAccess();
    if (*v11 == a1)
    {
      *v11 = a1;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      sub_24F733018(&qword_27F220F48, type metadata accessor for GameControllerObserver, &protocol conformance descriptor for GameControllerObserver);
      sub_24F91FD78();
    }
  }
}

void sub_24F73270C(uint64_t a1, char a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = *a4;
    swift_beginAccess();
    if (v9[v10] == (a2 & 1))
    {
      v9[v10] = a2 & 1;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      sub_24F733018(&qword_27F220F48, type metadata accessor for GameControllerObserver, &protocol conformance descriptor for GameControllerObserver);
      sub_24F91FD78();
    }
  }
}

uint64_t GameControllerObserver.description.getter()
{
  sub_24F92C888();
  MEMORY[0x253050C20](0xD000000000000018, 0x800000024FA7C9A0);
  sub_24F92CA38();
  MEMORY[0x253050C20](0x6C6F72746E6F6320, 0xEC0000003D72656CLL);
  swift_getKeyPath();
  v8 = v0;
  sub_24F733018(&qword_27F220F48, type metadata accessor for GameControllerObserver, &protocol conformance descriptor for GameControllerObserver);
  sub_24F91FD88();

  v1 = OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver__controller;
  swift_beginAccess();
  v2 = *(v8 + v1);
  if (v2)
  {
    v3 = [v2 description];
    v4 = sub_24F92B0D8();
    v6 = v5;
  }

  else
  {
    v6 = 0xE300000000000000;
    v4 = 7104878;
  }

  MEMORY[0x253050C20](v4, v6);

  MEMORY[0x253050C20](62, 0xE100000000000000);
  return 0;
}

void _s12GameStoreKit0A18ControllerObserverC12observeValue10forKeyPath2of6change7contextySSSg_ypSgSDySo05NSKeyg6ChangeI0aypGSgSvSgtF_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 && (a1 == 0x4C79726574746162 && a2 == 0xEC0000006C657665 || (sub_24F92CE08() & 1) != 0 || a1 == 0x5379726574746162 && a2 == 0xEC00000065746174 || (sub_24F92CE08() & 1) != 0))
  {
    sub_24E94E17C(a3, v16);
    if (v17)
    {
      sub_24E69A5C4(0, &qword_27F24E530, 0x277CCB040);
      if (swift_dynamicCast())
      {
        [v15 batteryLevel];
        v8 = v7;
        v9 = (v3 + OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver__batteryLevel);
        swift_beginAccess();
        LODWORD(v10) = *v9;
        if (*v9 == v8)
        {
          *v9 = v8;
        }

        else
        {
          KeyPath = swift_getKeyPath();
          MEMORY[0x28223BE20](KeyPath);
          sub_24F733018(&qword_27F220F48, type metadata accessor for GameControllerObserver, &protocol conformance descriptor for GameControllerObserver);
          sub_24F91FD78();
        }

        v12 = [v15 batteryState];
        v13 = OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver__batteryState;
        swift_beginAccess();
        if (*(v3 + v13) == v12)
        {

          *(v3 + v13) = v12;
        }

        else
        {
          v14 = swift_getKeyPath();
          MEMORY[0x28223BE20](v14);
          sub_24F733018(&qword_27F220F48, type metadata accessor for GameControllerObserver, &protocol conformance descriptor for GameControllerObserver);
          sub_24F91FD78();
        }
      }
    }

    else
    {
      sub_24E601704(v16, &qword_27F2129B0, &unk_24F945320);
    }
  }
}

uint64_t sub_24F732F40(uint64_t a1)
{
  result = sub_24F91FDC8();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_24F733018(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24F733060()
{
  MEMORY[0x2530543E0](v0 + 16);

  return swift_deallocObject();
}

uint64_t block_copy_helper_173(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_24F7332C8(void *a1)
{
  v2 = *(v1 + 24);
  v3 = (*(v1 + 16) + *a1);
  swift_beginAccess();
  *v3 = v2;
}

void sub_24F733324()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver__batteryState;
  swift_beginAccess();
  *(v2 + v3) = v1;
}

void sub_24F73337C(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *a1;
  swift_beginAccess();
  *(v2 + v4) = v3;
}

uint64_t GameAchievementsListDataIntent.playerID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t GameAchievementsListDataIntent.gameBundleID.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_24F733638(uint64_t a1)
{
  v2 = sub_24F733844();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F733674(uint64_t a1)
{
  v2 = sub_24F733844();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t GameAchievementsListDataIntent.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E538, &qword_24FA23200);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v10 - v5;
  v7 = *(v1 + 16);
  v10[1] = *(v1 + 24);
  v10[2] = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F733844();
  sub_24F92D128();
  v12 = 0;
  v8 = v10[3];
  sub_24F92CD08();
  if (!v8)
  {
    v11 = 1;
    sub_24F92CD08();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_24F733844()
{
  result = qword_27F24E540;
  if (!qword_27F24E540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24E540);
  }

  return result;
}

uint64_t GameAchievementsListDataIntent.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E548, &qword_24FA23208);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F733844();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = 0;
  v9 = sub_24F92CC28();
  v11 = v10;
  v17 = v9;
  v18 = 1;
  v12 = sub_24F92CC28();
  v14 = v13;
  (*(v6 + 8))(v8, v5);
  *a2 = v17;
  a2[1] = v11;
  a2[2] = v12;
  a2[3] = v14;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_24F733B0C()
{
  result = qword_27F24E550;
  if (!qword_27F24E550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24E550);
  }

  return result;
}

unint64_t sub_24F733B64()
{
  result = qword_27F24E558;
  if (!qword_27F24E558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24E558);
  }

  return result;
}

unint64_t sub_24F733BBC()
{
  result = qword_27F24E560;
  if (!qword_27F24E560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24E560);
  }

  return result;
}

unint64_t AchievementsCountData.jsRepresentation(in:)@<X0>(unint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88, &unk_24F93A430);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A400;
  *(inited + 32) = 0xD00000000000001DLL;
  *(inited + 40) = 0x800000024FA75860;
  v6 = MEMORY[0x277D83B88];
  *(inited + 72) = MEMORY[0x277D83B88];
  v7 = sub_24E65901C();
  *(inited + 48) = v3;
  *(inited + 80) = v7;
  *(inited + 88) = 0xD000000000000019;
  *(inited + 128) = v6;
  *(inited + 136) = v7;
  *(inited + 96) = 0x800000024FA75880;
  *(inited + 104) = v4;
  v8 = sub_24E607E40(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0, &unk_24F93A440);
  swift_arrayDestroy();
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20, &qword_24F93E370);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v8;
  return result;
}

unint64_t sub_24F733D3C()
{
  if (*v0)
  {
    return 0xD000000000000019;
  }

  else
  {
    return 0xD00000000000001DLL;
  }
}

uint64_t sub_24F733D78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 0xD00000000000001DLL && 0x800000024FA75860 == a2;
  if (v5 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000019 && 0x800000024FA75880 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24F92CE08();

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

uint64_t sub_24F733E5C(uint64_t a1)
{
  v2 = sub_24F73435C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F733E98(uint64_t a1)
{
  v2 = sub_24F73435C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AchievementsCountData.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E568, &qword_24FA23408);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v9 - v6;
  v9[1] = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F73435C();
  sub_24F92D128();
  v11 = 0;
  sub_24F92CD38();
  if (!v2)
  {
    v10 = 1;
    sub_24F92CD38();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t AchievementsCountData.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E578, &qword_24FA23410);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F73435C();
  sub_24F92D108();
  if (!v2)
  {
    v14 = 0;
    v9 = sub_24F92CC58();
    v13 = 1;
    v10 = sub_24F92CC58();
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    a2[1] = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_24F734230@<X0>(unint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88, &unk_24F93A430);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A400;
  *(inited + 32) = 0xD00000000000001DLL;
  *(inited + 40) = 0x800000024FA75860;
  v6 = MEMORY[0x277D83B88];
  *(inited + 72) = MEMORY[0x277D83B88];
  v7 = sub_24E65901C();
  *(inited + 48) = v3;
  *(inited + 80) = v7;
  *(inited + 88) = 0xD000000000000019;
  *(inited + 128) = v6;
  *(inited + 136) = v7;
  *(inited + 96) = 0x800000024FA75880;
  *(inited + 104) = v4;
  v8 = sub_24E607E40(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0, &unk_24F93A440);
  swift_arrayDestroy();
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20, &qword_24F93E370);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v8;
  return result;
}

unint64_t sub_24F73435C()
{
  result = qword_27F24E570;
  if (!qword_27F24E570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24E570);
  }

  return result;
}

unint64_t sub_24F7343D4()
{
  result = qword_27F24E580;
  if (!qword_27F24E580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24E580);
  }

  return result;
}

unint64_t sub_24F73442C()
{
  result = qword_27F24E588;
  if (!qword_27F24E588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24E588);
  }

  return result;
}

unint64_t sub_24F734484()
{
  result = qword_27F24E590;
  if (!qword_27F24E590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24E590);
  }

  return result;
}

uint64_t sub_24F7344EC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for Game(0);
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
      v13 = type metadata accessor for Player(0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_24F734624(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for Game(0);
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
      v13 = type metadata accessor for Player(0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t type metadata accessor for FriendsPlayingShelfConstructionIntent(uint64_t a1)
{
  result = qword_27F24E598;
  if (!qword_27F24E598)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F734794(uint64_t a1)
{
  type metadata accessor for Game(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Player(319);
    if (v2 <= 0x3F)
    {
      sub_24F734848();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_24F734848()
{
  if (!qword_27F24E5A8)
  {
    v0 = sub_24F92C4A8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F24E5A8);
    }
  }
}

unint64_t sub_24F734898@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F08, &unk_24F93A2A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F942000;
  *(inited + 32) = 0x444965676170;
  *(inited + 40) = 0xE600000000000000;
  v4 = *v1;
  v5 = v1[1];
  v6 = MEMORY[0x277D22580];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = v6;
  *(inited + 48) = v4;
  *(inited + 56) = v5;
  *(inited + 88) = 0x726579616C70;
  *(inited + 96) = 0xE600000000000000;
  v7 = type metadata accessor for FriendsPlayingShelfConstructionIntent(0);
  v8 = v7[6];
  *(inited + 128) = type metadata accessor for Player(0);
  *(inited + 136) = sub_24E751390(&qword_27F215388, type metadata accessor for Player, &protocol conformance descriptor for Player);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 104));
  sub_24F7355EC(v1 + v8, boxed_opaque_existential_1, type metadata accessor for Player);
  *(inited + 144) = 1701667175;
  *(inited + 152) = 0xE400000000000000;
  v10 = v7[5];
  *(inited + 184) = type metadata accessor for Game(0);
  *(inited + 192) = sub_24E751390(&qword_27F217960, type metadata accessor for Game, &protocol conformance descriptor for Game);
  v11 = __swift_allocate_boxed_opaque_existential_1((inited + 160));
  sub_24F7355EC(v1 + v10, v11, type metadata accessor for Game);
  *(inited + 200) = 1953656691;
  *(inited + 208) = 0xE400000000000000;
  LOBYTE(v8) = *(v1 + v7[8]);
  *(inited + 240) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E5D8, &qword_24FA23708);
  v12 = sub_24F735654();
  *(inited + 216) = v8;
  *(inited + 248) = v12;
  *(inited + 256) = 0xD000000000000010;
  *(inited + 264) = 0x800000024FA46670;
  v13 = *(v1 + v7[7]);
  v14 = MEMORY[0x277D22598];
  *(inited + 296) = MEMORY[0x277D839B0];
  *(inited + 304) = v14;
  *(inited + 272) = v13;

  v15 = sub_24E607D0C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F18, &unk_24F93A2B0);
  swift_arrayDestroy();
  v16 = sub_24E80FFAC(v15);

  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20, &qword_24F93E370);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v16;
  return result;
}

uint64_t sub_24F734B44(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E5C8, &unk_24FA236F8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F735490();
  sub_24F92D128();
  v11[15] = 0;
  sub_24F92CD08();
  if (!v2)
  {
    v9 = type metadata accessor for FriendsPlayingShelfConstructionIntent(0);
    v11[14] = 1;
    type metadata accessor for Game(0);
    sub_24E751390(&qword_27F214950, type metadata accessor for Game, &protocol conformance descriptor for Game);
    sub_24F92CD48();
    v11[13] = 2;
    type metadata accessor for Player(0);
    sub_24E751390(&qword_27F213E28, type metadata accessor for Player, &protocol conformance descriptor for Player);
    sub_24F92CD48();
    v11[12] = 3;
    sub_24F92CD18();
    v11[11] = *(v3 + *(v9 + 32));
    v11[10] = 4;
    sub_24F735598();
    sub_24F92CCF8();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_24F734DE4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v20 = type metadata accessor for Player(0);
  MEMORY[0x28223BE20](v20);
  v19 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for Game(0);
  MEMORY[0x28223BE20](v22);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E5B0, &qword_24FA236F0);
  v21 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v7 = &v17 - v6;
  v8 = type metadata accessor for FriendsPlayingShelfConstructionIntent(0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F735490();
  v11 = v24;
  sub_24F92D108();
  if (v11)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12 = v21;
  v30 = 0;
  v13 = v10;
  *v10 = sub_24F92CC28();
  v10[1] = v14;
  v24 = v14;
  v29 = 1;
  sub_24E751390(&qword_27F214968, type metadata accessor for Game, &protocol conformance descriptor for Game);
  sub_24F92CC68();
  sub_24E691974(v5, v10 + v8[5], type metadata accessor for Game);
  v28 = 2;
  sub_24E751390(&qword_27F213E38, type metadata accessor for Player, &protocol conformance descriptor for Player);
  v15 = v19;
  sub_24F92CC68();
  sub_24E691974(v15, v13 + v8[6], type metadata accessor for Player);
  v27 = 3;
  *(v13 + v8[7]) = sub_24F92CC38() & 1;
  v25 = 4;
  sub_24F7354E4();
  sub_24F92CC18();
  (*(v12 + 8))(v7, v23);
  *(v13 + v8[8]) = v26;
  sub_24F7355EC(v13, v18, type metadata accessor for FriendsPlayingShelfConstructionIntent);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_24F735538(v13, type metadata accessor for FriendsPlayingShelfConstructionIntent);
}

uint64_t sub_24F735300()
{
  v1 = *v0;
  v2 = 0x444965676170;
  v3 = 0x726579616C70;
  v4 = 0xD000000000000010;
  if (v1 != 3)
  {
    v4 = 1953656691;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1701667175;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24F735388@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24F735844(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24F7353B0(uint64_t a1)
{
  v2 = sub_24F735490();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F7353EC(uint64_t a1)
{
  v2 = sub_24F735490();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_24F735490()
{
  result = qword_27F24E5B8;
  if (!qword_27F24E5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24E5B8);
  }

  return result;
}

unint64_t sub_24F7354E4()
{
  result = qword_27F24E5C0;
  if (!qword_27F24E5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24E5C0);
  }

  return result;
}

uint64_t sub_24F735538(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24F735598()
{
  result = qword_27F24E5D0;
  if (!qword_27F24E5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24E5D0);
  }

  return result;
}

uint64_t sub_24F7355EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_24F735654()
{
  result = qword_27F24E5E0;
  if (!qword_27F24E5E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24E5D8, &qword_24FA23708);
    sub_24F7356D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24E5E0);
  }

  return result;
}

unint64_t sub_24F7356D8()
{
  result = qword_27F24E5E8;
  if (!qword_27F24E5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24E5E8);
  }

  return result;
}

unint64_t sub_24F735740()
{
  result = qword_27F24E5F0;
  if (!qword_27F24E5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24E5F0);
  }

  return result;
}

unint64_t sub_24F735798()
{
  result = qword_27F24E5F8;
  if (!qword_27F24E5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24E5F8);
  }

  return result;
}

unint64_t sub_24F7357F0()
{
  result = qword_27F24E600;
  if (!qword_27F24E600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24E600);
  }

  return result;
}

uint64_t sub_24F735844(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x444965676170 && a2 == 0xE600000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667175 && a2 == 0xE400000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726579616C70 && a2 == 0xE600000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024FA46670 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1953656691 && a2 == 0xE400000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_24F735A08(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for Game(0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
  }

  else
  {
    v10 = type metadata accessor for Leaderboard(0);
    if (*(*(v10 - 8) + 84) == a2)
    {
      v7 = v10;
      v8 = *(v10 - 8);
      v9 = a3[6];
    }

    else
    {
      v11 = type metadata accessor for Player(0);
      if (*(*(v11 - 8) + 84) != a2)
      {
        v14 = *(a1 + a3[8]);
        if (v14 >= 2)
        {
          return v14 - 1;
        }

        else
        {
          return 0;
        }
      }

      v7 = v11;
      v8 = *(v11 - 8);
      v9 = a3[7];
    }
  }

  v12 = *(v8 + 48);

  return v12(a1 + v9, a2, v7);
}

uint64_t sub_24F735B68(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for Game(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
  }

  else
  {
    v12 = type metadata accessor for Leaderboard(0);
    if (*(*(v12 - 8) + 84) == a3)
    {
      v9 = v12;
      v10 = *(v12 - 8);
      v11 = a4[6];
    }

    else
    {
      result = type metadata accessor for Player(0);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[8]) = a2 + 1;
        return result;
      }

      v9 = result;
      v10 = *(result - 8);
      v11 = a4[7];
    }
  }

  v14 = *(v10 + 56);

  return v14(a1 + v11, a2, a2, v9);
}

void sub_24F735CD4(uint64_t a1)
{
  type metadata accessor for Game(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Leaderboard(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Player(319);
      if (v3 <= 0x3F)
      {
        sub_24E659BE8();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_24F735DE4(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C820, &unk_24F9567F0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_24F735EB4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C820, &unk_24F9567F0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24F735F84(uint64_t a1)
{
  sub_24F736048(319, &qword_27F22B398, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_24F736048(319, &qword_27F234AD8, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24F736048(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for LeaderboardEntry(255);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_24F7360A8@<X0>(_BYTE *a1@<X8>)
{
  sub_24EDE0BC4();
  result = sub_24F924868();
  *a1 = v3;
  return result;
}

uint64_t InternalSettingsViewModifier.init(objectGraph:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = swift_getKeyPath();
  *(a2 + 16) = 0;
  *a2 = a1;
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_24F73617C@<X0>(_BYTE *a1@<X8>)
{
  sub_24EDE0BC4();
  result = sub_24F924868();
  *a1 = v3;
  return result;
}

uint64_t InternalSettingsViewModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = *(v2 + 8);
  v7 = *(v2 + 16);
  v8 = sub_24F927618();
  v10 = v9;
  v11 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E628, &qword_24FA238E8) + 36);
  sub_24F73630C(v5, v6, v7, v11);
  v12 = (v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E630, &qword_24FA238F0) + 36));
  *v12 = v8;
  v12[1] = v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E638, &qword_24FA238F8);
  v14 = *(*(v13 - 8) + 16);

  return v14(a2, a1, v13);
}

uint64_t sub_24F73630C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E678, &qword_24FA23B20);
  v41 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v40 = (&v34 - v9);
  v39 = sub_24F923A08();
  v37 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E680, &qword_24FA23B28);
  MEMORY[0x28223BE20](v36);
  v13 = &v34 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E688, &qword_24FA23B30);
  v38 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v34 - v18;
  if (sub_24F737A14())
  {
    v34 = v8;
    v35 = a4;
    v20 = swift_allocObject();
    *(v20 + 16) = a1;
    *(v20 + 24) = a2;
    *(v20 + 32) = a3 & 1;
    v42 = 0;
    v43 = 0xE000000000000000;
    v21 = swift_allocObject();
    *(v21 + 16) = a1;
    *(v21 + 24) = a2;
    *(v21 + 32) = a3 & 1;

    sub_24E62AB1C(a2, a3 & 1);

    sub_24E62AB1C(a2, a3 & 1);
    sub_24E600AEC();
    sub_24F926FB8();
    sub_24F9239F8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E690, &unk_24FA23B38);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_24F93A400;
    v23 = sub_24F923B58();
    *(inited + 32) = v23;
    v24 = sub_24F923B48();
    *(inited + 40) = v24;
    sub_24F923B68();
    sub_24F923B68();
    if (sub_24F923B68() != v23)
    {
      sub_24F923B68();
    }

    sub_24F923B68();
    if (sub_24F923B68() != v24)
    {
      sub_24F923B68();
    }

    v25 = v34;
    sub_24F737DA0();
    sub_24F926498();
    (*(v37 + 8))(v11, v39);
    sub_24E601704(v13, &qword_27F24E680, &qword_24FA23B28);
    v26 = v38;
    v27 = *(v38 + 16);
    v27(v16, v19, v14);
    v28 = v40;
    *v40 = sub_24F737F04;
    *(v28 + 8) = v20;
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E6A0, &qword_24FA23B48);
    v27((v28 + *(v29 + 48)), v16, v14);
    v30 = *(v26 + 8);

    v30(v19, v14);
    v30(v16, v14);

    v31 = v35;
    sub_24F737E58(v28, v35);
    return (*(v41 + 56))(v31, 0, 1, v25);
  }

  else
  {
    v33 = *(v41 + 56);

    return v33(a4, 1, 1, v8);
  }
}

uint64_t sub_24F736834()
{
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E8D0, &qword_24F951650);
  v62 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v61 = &v54 - v1;
  v56 = sub_24F91F6B8();
  v55 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v54 = &v54 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v3 - 8);
  v66 = &v54 - v4;
  v5 = sub_24F924848();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F928AD8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v65 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v54 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B580, &unk_24F965710);
  v60 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v16 = *v0;
  v17 = v0[1];
  v18 = *(v0 + 16);
  v59 = &v54 - v19;
  v57 = v20;
  v58 = v16;
  sub_24F928F28();
  if (qword_27F2111A8 != -1)
  {
    swift_once();
  }

  sub_24E65864C(qword_27F39E4D8, v75);
  sub_24F928A98();
  v21 = swift_allocObject();
  *(v21 + 40) = &type metadata for InternalSettingsPageIntent;
  *(v21 + 48) = sub_24E7C5830();
  v64 = v14;
  if (v18)
  {
    if ((v17 & 1) == 0)
    {
LABEL_5:
      v22 = sub_24F929D08();
      goto LABEL_8;
    }
  }

  else
  {

    sub_24F92BDC8();
    v24 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E62A5EC(v17, 0);
    (*(v6 + 8))(v8, v5);
    if (v74[0] != 1)
    {
      goto LABEL_5;
    }
  }

  v22 = sub_24F929D18();
LABEL_8:
  v25 = v22;
  v26 = v23;
  sub_24E60169C(v75, v74, &qword_27F235830, &qword_24F93B8C0);
  v27 = sub_24F91F4A8();
  v28 = v66;
  (*(*(v27 - 8) + 56))(v66, 1, 1, v27);
  v73[3] = &type metadata for FlowDestination;
  v73[0] = v21 | 4;
  v29 = *(v10 + 16);
  v30 = v65;
  v29(v65, v64, v9);
  v31 = type metadata accessor for FlowAction(0);
  v32 = swift_allocObject();
  *(v32 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageDataPageRenderMetrics) = 0;
  v33 = v32 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageData;
  *v33 = 0u;
  *(v33 + 16) = 0u;
  *(v33 + 32) = 0;
  v34 = (v32 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_appStateController);
  *v34 = 0;
  v34[1] = 0;
  *(v32 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_page) = 54;
  sub_24E60169C(v28, v32 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageUrl, &qword_27F228530, &unk_24F93C6E0);
  v35 = (v32 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_referrerUrl);
  *v35 = 0;
  v35[1] = 0;
  v36 = v32 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_referrerData;
  *v36 = xmmword_24F9406F0;
  *(v36 + 24) = 0;
  *(v36 + 32) = 0;
  *(v36 + 16) = 0;
  *(v36 + 40) = 0;
  *(v32 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_presentationContext) = 0;
  *(v32 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_animationBehavior) = 0;
  *(v32 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_origin) = 0;
  v37 = (v32 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_presentation);
  *v37 = v25;
  v37[1] = v26;
  sub_24E60169C(v74, v72, &qword_27F235830, &qword_24F93B8C0);
  v29((v32 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics), v30, v9);
  v38 = OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics;
  v39 = sub_24F929608();
  (*(*(v39 - 8) + 56))(v32 + v38, 1, 1, v39);
  v40 = (v32 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v40 = 0u;
  v40[1] = 0u;
  v41 = v32 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  sub_24E60169C(v72, &v69, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v70 + 1))
  {
    v42 = v70;
    *v41 = v69;
    *(v41 + 16) = v42;
    *(v41 + 32) = v71;
  }

  else
  {
    v43 = v54;
    sub_24F91F6A8();
    v44 = sub_24F91F668();
    v46 = v45;
    (*(v55 + 8))(v43, v56);
    v67 = v44;
    v68 = v46;
    sub_24F92C7F8();
    sub_24E601704(&v69, &qword_27F235830, &qword_24F93B8C0);
  }

  sub_24E601704(v72, &qword_27F235830, &qword_24F93B8C0);
  *(v32 + 16) = 0u;
  *(v32 + 32) = 0u;

  FlowAction.setPageData(_:)(v73);

  v47 = *(v10 + 8);
  v47(v64, v9);
  sub_24E601704(v75, &qword_27F235830, &qword_24F93B8C0);
  v47(v65, v9);
  sub_24E601704(v66, &qword_27F228530, &unk_24F93C6E0);
  sub_24E601704(v74, &qword_27F235830, &qword_24F93B8C0);
  sub_24E601704(v73, &qword_27F2129B0, &unk_24F945320);
  v75[3] = v31;
  v75[4] = sub_24F49AEC0();
  v75[0] = v32;
  v48 = v62;
  v49 = v61;
  v50 = v63;
  (*(v62 + 104))(v61, *MEMORY[0x277D21E18], v63);
  v51 = v57;
  v52 = v59;
  sub_24F929288();

  (*(v48 + 8))(v49, v50);
  (*(v60 + 8))(v52, v51);
  return __swift_destroy_boxed_opaque_existential_1(v75);
}

uint64_t sub_24F737190@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = *(v2 + 8);
  v7 = *(v2 + 16);
  v8 = sub_24F927618();
  v10 = v9;
  v11 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E628, &qword_24FA238E8) + 36);
  sub_24F73630C(v5, v6, v7, v11);
  v12 = (v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E630, &qword_24FA238F0) + 36));
  *v12 = v8;
  v12[1] = v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E638, &qword_24FA238F8);
  v14 = *(*(v13 - 8) + 16);

  return v14(a2, a1, v13);
}

uint64_t View.withInternalSettingsGesture(using:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = a1;
  KeyPath = swift_getKeyPath();
  v10 = 0;

  MEMORY[0x25304C420](&v8, a2, &type metadata for InternalSettingsViewModifier, a3);
  v5 = KeyPath;
  v6 = v10;

  return sub_24E62A5EC(v5, v6);
}

id sub_24F737344()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = type metadata accessor for InternalSettingsView();
  v4 = objc_allocWithZone(v3);
  v5 = &v4[OBJC_IVAR____TtC12GameStoreKitP33_000593A25936563060AC4864E1E5232D20InternalSettingsView_perform];
  *v5 = v2;
  *(v5 + 1) = v1;
  v7.receiver = v4;
  v7.super_class = v3;

  return objc_msgSendSuper2(&v7, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
}

uint64_t sub_24F7373C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F737C6C();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_24F737428(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F737C6C();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_24F73748C(uint64_t a1)
{
  sub_24F737C6C();
  sub_24F924DC8();
  __break(1u);
}

void sub_24F7374B4(void *a1)
{
  v9.receiver = v1;
  v9.super_class = type metadata accessor for InternalSettingsView();
  objc_msgSendSuper2(&v9, sel_willMoveToWindow_, a1);
  if (a1)
  {
    v3 = [a1 windowScene];
    if (v3)
    {
      v4 = v3;
      v5 = [v3 statusBarManager];

      if (v5)
      {
        v6 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v8[4] = sub_24F737CF8;
        v8[5] = v6;
        v8[0] = MEMORY[0x277D85DD0];
        v8[1] = 1107296256;
        v8[2] = sub_24EAF8248;
        v8[3] = &block_descriptor_174;
        v7 = _Block_copy(v8);

        [v5 setDebugMenuHandler_];
        _Block_release(v7);
      }
    }
  }
}

double sub_24F7375F8(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + OBJC_IVAR____TtC12GameStoreKitP33_000593A25936563060AC4864E1E5232D20InternalSettingsView_perform);
    v4 = Strong;

    v3();
  }

  return result;
}

id sub_24F73779C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InternalSettingsView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_24F737810()
{
  result = qword_27F24E648;
  if (!qword_27F24E648)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24E628, &qword_24FA238E8);
    sub_24E602068(&qword_27F24E650, &qword_27F24E638, &qword_24FA238F8, MEMORY[0x277CE04B0]);
    sub_24E602068(&qword_27F24E658, &qword_27F24E630, &qword_24FA238F0, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24E648);
  }

  return result;
}

uint64_t sub_24F7378F4(void *a1)
{
  sub_24F924038();
  sub_24F737958();
  return swift_getWitnessTable();
}

unint64_t sub_24F737958()
{
  result = qword_27F24E660;
  if (!qword_27F24E660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24E660);
  }

  return result;
}

unint64_t sub_24F7379C0()
{
  result = qword_27F24E668;
  if (!qword_27F24E668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24E668);
  }

  return result;
}

uint64_t sub_24F737A14()
{
  v0 = 0xEA00000000006E6FLL;
  v1 = 0x6C616E7265746E69;
  has_internal_content = os_variant_has_internal_content();
  if (has_internal_content)
  {
    v3 = 0x6C616E7265746E69;
  }

  else
  {
    v3 = 0x69746375646F7270;
  }

  if (has_internal_content)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xEA00000000006E6FLL;
  }

  if (byte_2861BFC68 > 1u)
  {
    if (byte_2861BFC68 == 2)
    {
      v8 = 0x6C616E7265746E69;
    }

    else
    {
      v8 = 0x69746375646F7270;
    }

    if (byte_2861BFC68 == 2)
    {
      v0 = 0xE800000000000000;
    }

    if (v8 == v3 && v0 == v4)
    {
      goto LABEL_33;
    }
  }

  v5 = sub_24F92CE08();

  if ((v5 & 1) == 0)
  {
    if (byte_2861BFC69 <= 1u)
    {
      goto LABEL_10;
    }

    if (byte_2861BFC69 == 2)
    {
      v9 = 0xE800000000000000;
      if (v3 != 0x6C616E7265746E69)
      {
LABEL_10:
        v6 = sub_24F92CE08();

        if (v6)
        {
          goto LABEL_11;
        }

        if (byte_2861BFC6A <= 1u || (byte_2861BFC6A != 2 ? (v1 = 0x69746375646F7270, v10 = 0xEA00000000006E6FLL) : (v10 = 0xE800000000000000), v1 != v3 || v10 != v4))
        {
          v7 = sub_24F92CE08();
LABEL_34:

          return v7 & 1;
        }

LABEL_33:
        v7 = 1;
        goto LABEL_34;
      }
    }

    else
    {
      v9 = 0xEA00000000006E6FLL;
      if (v3 != 0x69746375646F7270)
      {
        goto LABEL_10;
      }
    }

    if (v9 == v4)
    {
      goto LABEL_33;
    }

    goto LABEL_10;
  }

LABEL_11:
  v7 = 1;
  return v7 & 1;
}

unint64_t sub_24F737C6C()
{
  result = qword_27F24E670;
  if (!qword_27F24E670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24E670);
  }

  return result;
}

uint64_t sub_24F737CC0()
{
  MEMORY[0x2530543E0](v0 + 16);

  return swift_deallocObject();
}

uint64_t block_copy_helper_174(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_9Tm_3()
{

  sub_24E62A5EC(*(v0 + 24), *(v0 + 32));

  return swift_deallocObject();
}

unint64_t sub_24F737DA0()
{
  result = qword_27F24E698;
  if (!qword_27F24E698)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24E680, &qword_24FA23B28);
    sub_24E602068(&qword_27F222D00, &qword_27F222D08, &unk_24F973580, MEMORY[0x277CDF028]);
    sub_24F02EAD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24E698);
  }

  return result;
}

uint64_t sub_24F737E58(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E678, &qword_24FA23B20);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F737EC8()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_24F737F1C(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = type metadata accessor for FriendSuggestion(0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  v12 = type metadata accessor for PlayerAvatar(0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_11;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0, &qword_24F93E6B0);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[9];
    goto LABEL_11;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[14];

  return v16(v17, a2, v15);
}

uint64_t sub_24F7380FC(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for FriendSuggestion(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(v5 + v11, a2, a2, v9);
  }

  v12 = type metadata accessor for PlayerAvatar(0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_9;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0, &qword_24F93E6B0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[9];
    goto LABEL_9;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  v16 = *(*(v15 - 8) + 56);
  v17 = v5 + a4[14];

  return v16(v17, a2, a2, v15);
}

void sub_24F7382E8(uint64_t a1)
{
  sub_24E61C7D0(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for FriendSuggestion(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for PlayerAvatar(319);
      if (v3 <= 0x3F)
      {
        sub_24F73886C(319, &qword_27F213FD0, MEMORY[0x277D21C48], MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_24F7388D0(319, &qword_27F21BF30, sub_24E678D94, &type metadata for ActionKinds, MEMORY[0x277D21FC8]);
          if (v5 <= 0x3F)
          {
            sub_24F73886C(319, &qword_27F213EB0, MEMORY[0x277D21F70], MEMORY[0x277D83D88]);
            if (v6 <= 0x3F)
            {
              sub_24E61C8D4(319);
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_24F738494(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24F7384F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0, &unk_24F943470);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215DE0, &qword_24F9847E0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 32));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_24F738628(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0, &unk_24F943470);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215DE0, &qword_24F9847E0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 32)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

void sub_24F738768(uint64_t a1)
{
  sub_24F73886C(319, &qword_27F2168C8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_24F7388D0(319, &qword_27F215E10, sub_24E66ED98, MEMORY[0x277D85048], MEMORY[0x277CDF5B0]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24F73886C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_24F7388D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_24F7389B8(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v5 = 0x6974634165646968;
    v6 = 0xD000000000000011;
    if (a1 != 10)
    {
      v6 = 0x6575676573;
    }

    if (a1 != 9)
    {
      v5 = v6;
    }

    v7 = 0xD000000000000011;
    v8 = 0x6341657469766E69;
    if (a1 != 7)
    {
      v8 = 0x6974617469766E69;
    }

    if (a1 != 6)
    {
      v7 = v8;
    }

    if (a1 <= 8u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 25705;
    v2 = 0x726174617661;
    if (a1 != 3)
    {
      v2 = 0x656C746974627573;
    }

    v3 = 0x6974736567677573;
    if (a1 != 1)
    {
      v3 = 1701667182;
    }

    if (a1)
    {
      v1 = v3;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_24F738B50(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E7C0, &qword_24FA23EC8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F73D49C();
  sub_24F92D128();
  v8[31] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18, &qword_24F93BE20);
  sub_24E602068(&qword_27F214040, &qword_27F213F18, &qword_24F93BE20, MEMORY[0x277D21DB8]);
  sub_24F92CD48();
  if (!v1)
  {
    type metadata accessor for InviteFriendsRow(0);
    v8[30] = 1;
    type metadata accessor for FriendSuggestion(0);
    sub_24F738494(&qword_27F24D7B8, type metadata accessor for FriendSuggestion, &protocol conformance descriptor for FriendSuggestion);
    sub_24F92CD48();
    v8[29] = 2;
    sub_24F92CD08();
    v8[28] = 3;
    type metadata accessor for PlayerAvatar(0);
    sub_24F738494(&qword_27F218A38, type metadata accessor for PlayerAvatar, &protocol conformance descriptor for PlayerAvatar);
    sub_24F92CD48();
    v8[27] = 4;
    sub_24F92CD08();
    v8[26] = 5;
    sub_24F9289E8();
    sub_24F738494(&qword_27F214060, MEMORY[0x277D21C48], MEMORY[0x277D21C50]);
    sub_24F92CCF8();
    v8[25] = 6;
    sub_24F92CD08();
    v8[24] = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213EA8, &unk_24F93D030);
    sub_24E602068(&qword_27F21BE88, &qword_27F213EA8, &unk_24F93D030, MEMORY[0x277D21FE0]);
    sub_24F92CD48();
    v8[15] = 8;
    sub_24F92CD18();
    v8[14] = 9;
    sub_24F92CD48();
    v8[13] = 10;
    sub_24F929608();
    sub_24F738494(&qword_27F214058, MEMORY[0x277D21F70], MEMORY[0x277D21F78]);
    sub_24F92CCF8();
    v8[12] = 11;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90, &unk_24F93C1D0);
    sub_24E620EE4(&qword_27F214048, &qword_27F214050, MEMORY[0x277D21FD8], MEMORY[0x277D21D30]);
    sub_24F92CD48();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_24F7390B8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v3 - 8);
  v44 = &v43 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0, &qword_24F93E6B0);
  MEMORY[0x28223BE20](v5 - 8);
  v45 = &v43 - v6;
  v46 = type metadata accessor for PlayerAvatar(0);
  MEMORY[0x28223BE20](v46);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FriendSuggestion(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E7B0, &qword_24FA23EC0);
  v47 = *(v12 - 8);
  v48 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v43 - v13;
  v15 = type metadata accessor for InviteFriendsRow(0);
  MEMORY[0x28223BE20](v15);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = &v17[*(v18 + 44)];
  v59 = 0;
  v57 = 0u;
  v58 = 0u;
  *v19 = 0u;
  *(v19 + 16) = 0u;
  *(v19 + 32) = 0;
  v55 = v19;
  sub_24E61DA68(&v57, v19, qword_27F21B590, &unk_24F93BE30);
  v20 = &v17[*(v15 + 52)];
  v59 = 0;
  v57 = 0u;
  v58 = 0u;
  *v20 = 0u;
  *(v20 + 16) = 0u;
  *(v20 + 32) = 0;
  v54 = v20;
  sub_24E61DA68(&v57, v20, qword_27F21B590, &unk_24F93BE30);
  v50 = v15;
  v21 = *(v15 + 60);
  v56 = v17;
  v22 = &v17[v21];
  v59 = 0;
  v57 = 0u;
  v58 = 0u;
  *v22 = 0u;
  *(v22 + 1) = 0u;
  *(v22 + 4) = 0;
  v53 = &v17[v21];
  sub_24E61DA68(&v57, &v17[v21], qword_27F21B590, &unk_24F93BE30);
  v23 = a1[3];
  v52 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v23);
  sub_24F73D49C();
  v49 = v14;
  v24 = v51;
  sub_24F92D108();
  if (v24)
  {
    v26 = v55;
    __swift_destroy_boxed_opaque_existential_1(v52);
    sub_24E601704(v26, &qword_27F213EA8, &unk_24F93D030);
    sub_24E601704(v54, &qword_27F213EA8, &unk_24F93D030);
    return sub_24E601704(v53, qword_27F24EC90, &unk_24F93C1D0);
  }

  else
  {
    v25 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18, &qword_24F93BE20);
    v60 = 0;
    sub_24E602068(&qword_27F213F30, &qword_27F213F18, &qword_24F93BE20, MEMORY[0x277D21DC0]);
    sub_24F92CC68();
    v27 = v58;
    v28 = v56;
    *v56 = v57;
    v28[1] = v27;
    *(v28 + 4) = v59;
    LOBYTE(v57) = 1;
    sub_24F738494(&qword_27F22F168, type metadata accessor for FriendSuggestion, &protocol conformance descriptor for FriendSuggestion);
    sub_24F92CC68();
    v29 = v55;
    v30 = v50;
    sub_24F73C64C(v11, v28 + v50[5], type metadata accessor for FriendSuggestion);
    LOBYTE(v57) = 2;
    v51 = 0;
    v31 = sub_24F92CC28();
    v32 = (v28 + v30[6]);
    *v32 = v31;
    v32[1] = v33;
    LOBYTE(v57) = 3;
    sub_24F738494(&qword_27F2185A0, type metadata accessor for PlayerAvatar, &protocol conformance descriptor for PlayerAvatar);
    sub_24F92CC68();
    sub_24F73C64C(v25, v28 + v30[7], type metadata accessor for PlayerAvatar);
    LOBYTE(v57) = 4;
    v34 = sub_24F92CC28();
    v35 = (v28 + v30[8]);
    *v35 = v34;
    v35[1] = v36;
    sub_24F9289E8();
    LOBYTE(v57) = 5;
    sub_24F738494(&qword_27F214018, MEMORY[0x277D21C48], MEMORY[0x277D21C60]);
    v37 = v45;
    sub_24F92CC18();
    sub_24E6009C8(v37, v28 + v30[9], &qword_27F213FB0, &qword_24F93E6B0);
    LOBYTE(v57) = 6;
    v38 = sub_24F92CC28();
    v39 = (v28 + v30[10]);
    *v39 = v38;
    v39[1] = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213EA8, &unk_24F93D030);
    v60 = 7;
    sub_24E602068(&qword_27F21BEE8, &qword_27F213EA8, &unk_24F93D030, MEMORY[0x277D21FE8]);
    sub_24F92CC68();
    sub_24E61DA68(&v57, v29, &qword_27F213EA8, &unk_24F93D030);
    LOBYTE(v57) = 8;
    *(v28 + v50[12]) = sub_24F92CC38() & 1;
    v60 = 9;
    sub_24F92CC68();
    sub_24E61DA68(&v57, v54, &qword_27F213EA8, &unk_24F93D030);
    sub_24F929608();
    LOBYTE(v57) = 10;
    sub_24F738494(&qword_27F213F48, MEMORY[0x277D21F70], MEMORY[0x277D21F88]);
    sub_24F92CC18();
    sub_24E6009C8(v44, v56 + v50[14], &qword_27F213E68, &unk_24F93BC80);
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90, &unk_24F93C1D0);
    v60 = 11;
    sub_24E620EE4(&qword_27F213F38, &qword_27F213F40, MEMORY[0x277D21FD0], MEMORY[0x277D21D38]);
    sub_24F92CC68();
    (*(v47 + 8))(v49, v48);
    sub_24E61DA68(&v57, v53, qword_27F24EC90, &unk_24F93C1D0);
    v41 = v56;
    sub_24F73C5E0(v56, v43, type metadata accessor for InviteFriendsRow);
    __swift_destroy_boxed_opaque_existential_1(v52);
    return sub_24F73D4F0(v41, type metadata accessor for InviteFriendsRow);
  }
}

uint64_t sub_24F739CE0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24F73D808(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24F739D08(uint64_t a1)
{
  v2 = sub_24F73D49C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F739D44(uint64_t a1)
{
  v2 = sub_24F73D49C();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_24F739D80@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_24E60169C(v2 + *(a1 + 60), v6, qword_27F24EC90, &unk_24F93C1D0);
  result = *v6;
  v5 = v6[1];
  *a2 = v6[0];
  *(a2 + 16) = v5;
  *(a2 + 32) = v7;
  return result;
}

uint64_t sub_24F739E0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v52 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E6E8, &qword_24FA23D10);
  MEMORY[0x28223BE20](v5 - 8);
  v46 = (&v46 - v6);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E6F0, &qword_24FA23D18);
  v51 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v48 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v47 = &v46 - v9;
  v10 = sub_24F923E98();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = (&v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E6F8, &qword_24FA23D20);
  MEMORY[0x28223BE20](v14 - 8);
  v50 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v46 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E700, &qword_24FA23D28);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v46 - v23;
  v25 = *(a1 + *(type metadata accessor for InviteFriendsRowComponent(0) + 24));
  *v24 = sub_24F9249A8();
  *(v24 + 1) = v25;
  v24[16] = 0;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E708, &qword_24FA23D30);
  v27 = a2;
  sub_24F73A340(a2, a1, &v24[*(v26 + 44)]);
  sub_24F769788(v13);
  LOBYTE(a2) = _s12GameStoreKit15PageEnvironmentV4isAXSbvg_0();
  v28 = v13;
  v29 = v49;
  (*(v11 + 8))(v28, v10);
  v30 = 1;
  if (a2)
  {
    v31 = sub_24F924C98();
    v32 = v46;
    *v46 = v31;
    v32[1] = 0;
    *(v32 + 16) = 1;
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E718, &qword_24FA23D40);
    sub_24F73B82C(v27, a1, v32 + *(v33 + 44));
    sub_24F927628();
    sub_24F9242E8();
    v34 = v32;
    v35 = v48;
    sub_24E6009C8(v34, v48, &qword_27F24E6E8, &qword_24FA23D10);
    v36 = (v35 + *(v29 + 36));
    v37 = v58;
    v36[4] = v57;
    v36[5] = v37;
    v36[6] = v59;
    v38 = v54;
    *v36 = v53;
    v36[1] = v38;
    v39 = v56;
    v36[2] = v55;
    v36[3] = v39;
    v40 = v35;
    v41 = v47;
    sub_24E6009C8(v40, v47, &qword_27F24E6F0, &qword_24FA23D18);
    sub_24E6009C8(v41, v18, &qword_27F24E6F0, &qword_24FA23D18);
    v30 = 0;
  }

  (*(v51 + 56))(v18, v30, 1, v29);
  sub_24E60169C(v24, v21, &qword_27F24E700, &qword_24FA23D28);
  v42 = v50;
  sub_24E60169C(v18, v50, &qword_27F24E6F8, &qword_24FA23D20);
  v43 = v52;
  sub_24E60169C(v21, v52, &qword_27F24E700, &qword_24FA23D28);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E710, &qword_24FA23D38);
  sub_24E60169C(v42, v43 + *(v44 + 48), &qword_27F24E6F8, &qword_24FA23D20);
  sub_24E601704(v18, &qword_27F24E6F8, &qword_24FA23D20);
  sub_24E601704(v24, &qword_27F24E700, &qword_24FA23D28);
  sub_24E601704(v42, &qword_27F24E6F8, &qword_24FA23D20);
  return sub_24E601704(v21, &qword_27F24E700, &qword_24FA23D28);
}

uint64_t sub_24F73A340@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v152 = a2;
  v154 = a1;
  v149 = a3;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CCC8, &qword_24F957520);
  MEMORY[0x28223BE20](v121);
  v141 = &v116 - v3;
  v4 = sub_24F924C38();
  v139 = *(v4 - 8);
  v140 = v4;
  MEMORY[0x28223BE20](v4);
  v138 = &v116 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for InviteFriendsRowComponent(0);
  v131 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v132 = v7;
  v133 = &v116 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = type metadata accessor for InviteFriendsRow(0);
  v128 = *(v153 - 1);
  MEMORY[0x28223BE20](v153);
  v129 = v8;
  v130 = &v116 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254FA0, &unk_24F945290);
  MEMORY[0x28223BE20](v9 - 8);
  v134 = &v116 - v10;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E740, &qword_24FA23DD8);
  MEMORY[0x28223BE20](v136);
  v135 = &v116 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E748, &qword_24FA23DE0);
  v119 = *(v12 - 8);
  v120 = v12;
  MEMORY[0x28223BE20](v12);
  v137 = &v116 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E750, &qword_24FA23DE8);
  v123 = *(v14 - 8);
  v124 = v14;
  MEMORY[0x28223BE20](v14);
  v122 = &v116 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E758, &qword_24FA23DF0);
  v145 = *(v16 - 8);
  v146 = v16;
  MEMORY[0x28223BE20](v16);
  v125 = &v116 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E760, &qword_24FA23DF8);
  MEMORY[0x28223BE20](v18 - 8);
  v148 = &v116 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v147 = &v116 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E6E8, &qword_24FA23D10);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v116 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E6F0, &qword_24FA23D18);
  v26 = *(v25 - 8);
  v150 = v25;
  v151 = v26;
  MEMORY[0x28223BE20](v25);
  v118 = &v116 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v117 = &v116 - v29;
  v30 = sub_24F923E98();
  v31 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v33 = (&v116 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E6F8, &qword_24FA23D20);
  MEMORY[0x28223BE20](v34 - 8);
  v144 = &v116 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v38 = &v116 - v37;
  v39 = type metadata accessor for PlayerAvatar(0);
  MEMORY[0x28223BE20](v39 - 8);
  v41 = (&v116 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2233D0, &qword_24F958810);
  v43 = v42 - 8;
  MEMORY[0x28223BE20](v42);
  v143 = &v116 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v45);
  v47 = &v116 - v46;
  sub_24F73C5E0(v154 + v153[7], v41, type metadata accessor for PlayerAvatar);
  LOBYTE(v165[0]) = 7;
  sub_24F8319B8(v41, v165, v47);
  v48 = v152;
  sub_24F927618();
  sub_24F9238C8();
  v49 = *(v43 + 44);
  v142 = v47;
  v50 = &v47[v49];
  v51 = v163;
  *v50 = v162;
  *(v50 + 1) = v51;
  *(v50 + 2) = v164;
  sub_24F769788(v33);
  LOBYTE(v43) = _s12GameStoreKit15PageEnvironmentV4isAXSbvg_0();
  v126 = v31;
  v127 = v30;
  v52 = v31;
  v53 = v150;
  (*(v52 + 8))(v33, v30);
  v54 = 1;
  if ((v43 & 1) == 0)
  {
    *v24 = sub_24F924C98();
    *(v24 + 1) = 0;
    v24[16] = 1;
    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E718, &qword_24FA23D40);
    sub_24F73B82C(v154, v48, &v24[*(v55 + 44)]);
    sub_24F927628();
    sub_24F9242E8();
    v56 = v118;
    sub_24E6009C8(v24, v118, &qword_27F24E6E8, &qword_24FA23D10);
    v57 = (v56 + *(v53 + 36));
    v58 = v165[5];
    v57[4] = v165[4];
    v57[5] = v58;
    v57[6] = v165[6];
    v59 = v165[1];
    *v57 = v165[0];
    v57[1] = v59;
    v60 = v165[3];
    v57[2] = v165[2];
    v57[3] = v60;
    v61 = v56;
    v62 = v117;
    sub_24E6009C8(v61, v117, &qword_27F24E6F0, &qword_24FA23D18);
    sub_24E6009C8(v62, v38, &qword_27F24E6F0, &qword_24FA23D18);
    v54 = 0;
  }

  v63 = *(v151 + 7);
  v151 = v38;
  v63(v38, v54, 1, v53);
  sub_24E60169C(v154 + v153[11], &v157, &qword_27F213EA8, &unk_24F93D030);
  if (!v159)
  {
    sub_24E601704(&v157, qword_27F21B590, &unk_24F93BE30);
    v104 = v147;
    (*(v145 + 56))(v147, 1, 1, v146);
    goto LABEL_8;
  }

  sub_24E612C80(&v157, v161);
  v64 = sub_24F9232F8();
  (*(*(v64 - 8) + 56))(v134, 1, 1, v64);
  sub_24E615E00(v161, &v157);
  v65 = v130;
  sub_24F73C5E0(v154, v130, type metadata accessor for InviteFriendsRow);
  v66 = v133;
  sub_24F73C5E0(v48, v133, type metadata accessor for InviteFriendsRowComponent);
  v67 = (*(v128 + 80) + 16) & ~*(v128 + 80);
  v68 = (v129 + *(v131 + 80) + v67) & ~*(v131 + 80);
  v69 = swift_allocObject();
  sub_24F73C64C(v65, v69 + v67, type metadata accessor for InviteFriendsRow);
  sub_24F73C64C(v66, v69 + v68, type metadata accessor for InviteFriendsRowComponent);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E770, &qword_24FA23E08);
  v70 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F217790, &qword_24F946350);
  v71 = sub_24E6AF8AC();
  v155 = v70;
  v156 = v71;
  swift_getOpaqueTypeConformance2();
  v72 = v135;
  sub_24F921788();
  v73 = v136;
  v74 = (v72 + *(v136 + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222BA8, &unk_24F96B940);
  sub_24F924328();
  *v74 = swift_getKeyPath();
  v75 = v138;
  sub_24F924C28();
  v76 = sub_24F73D398();
  v77 = sub_24F738494(&qword_27F21A8C0, MEMORY[0x277CDDEE0], MEMORY[0x277CDDED0]);
  v78 = v137;
  v79 = v140;
  sub_24F926178();
  (*(v139 + 8))(v75, v79);
  sub_24E601704(v72, &qword_27F24E740, &qword_24FA23DD8);
  v80 = v141;
  (*(v126 + 104))(v141, *MEMORY[0x277CDF988], v127);
  sub_24F738494(&qword_27F22DF90, MEMORY[0x277CDFA28], MEMORY[0x277CDFA48]);
  if ((sub_24F92AFF8() & 1) == 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  *&v157 = v73;
  *(&v157 + 1) = v79;
  v158 = v76;
  v159 = v77;
  swift_getOpaqueTypeConformance2();
  sub_24E602068(&unk_27F22DFA0, &qword_27F21CCC8, &qword_24F957520, MEMORY[0x277D84470]);
  v73 = v122;
  v81 = v120;
  sub_24F9263F8();
  sub_24E601704(v80, &qword_27F21CCC8, &qword_24F957520);
  (*(v119 + 8))(v78, v81);
  v159 = sub_24F9271D8();
  v160 = sub_24F738494(&qword_27F214E38, MEMORY[0x277CE1260], MEMORY[0x277CE1248]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v157);
  v83 = *MEMORY[0x277CE0118];
  v84 = sub_24F924B38();
  (*(*(v84 - 8) + 104))(boxed_opaque_existential_1, v83, v84);
  v77 = v125;
  sub_24E60169C(&v157, v125, &qword_27F24E790, &qword_24FA23E48);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E798, &qword_24FA23E50);
  v72 = v123;
  v78 = v124;
  (*(v123 + 16))(v77 + v85[9], v73, v124);
  v86 = v77 + v85[10];
  *v86 = sub_24F923398() & 1;
  *(v86 + 8) = v87;
  *(v86 + 16) = v88 & 1;
  v89 = v77 + v85[11];
  *v89 = swift_getKeyPath();
  *(v89 + 8) = 0;
  if (qword_27F211808 != -1)
  {
LABEL_10:
    swift_once();
  }

  v90 = qword_27F24E488;
  v91 = sub_24F923398();
  v93 = v92;
  v95 = v94;
  v96 = v77 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E7A0, &qword_24FA23E80) + 36);
  *v96 = v90;
  *(v96 + 8) = v91 & 1;
  *(v96 + 16) = v93;
  *(v96 + 24) = v95 & 1;
  LOBYTE(v90) = sub_24F923398();
  v98 = v97;
  LOBYTE(v93) = v99;
  sub_24E601704(&v157, &qword_27F24E790, &qword_24FA23E48);
  (*(v72 + 8))(v73, v78);
  __swift_destroy_boxed_opaque_existential_1(v161);
  v100 = v77 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E7A8, &qword_24FA23E88) + 36);
  *v100 = v90 & 1;
  *(v100 + 8) = v98;
  *(v100 + 16) = v93 & 1;
  LOBYTE(v98) = *(v154 + v153[12]);
  KeyPath = swift_getKeyPath();
  v102 = swift_allocObject();
  *(v102 + 16) = v98;
  v103 = v146;
  v104 = v147;
  v105 = (v77 + *(v146 + 36));
  *v105 = KeyPath;
  v105[1] = sub_24E600A48;
  v105[2] = v102;
  sub_24E6009C8(v77, v104, &qword_27F24E758, &qword_24FA23DF0);
  (*(v145 + 56))(v104, 0, 1, v103);
LABEL_8:
  v107 = v142;
  v106 = v143;
  sub_24E60169C(v142, v143, &qword_27F2233D0, &qword_24F958810);
  v108 = v151;
  v109 = v144;
  sub_24E60169C(v151, v144, &qword_27F24E6F8, &qword_24FA23D20);
  v110 = v148;
  sub_24E60169C(v104, v148, &qword_27F24E760, &qword_24FA23DF8);
  v111 = v149;
  sub_24E60169C(v106, v149, &qword_27F2233D0, &qword_24F958810);
  v112 = v104;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E768, &qword_24FA23E00);
  sub_24E60169C(v109, v111 + v113[12], &qword_27F24E6F8, &qword_24FA23D20);
  v114 = v111 + v113[16];
  *v114 = 0;
  *(v114 + 8) = 1;
  sub_24E60169C(v110, v111 + v113[20], &qword_27F24E760, &qword_24FA23DF8);
  sub_24E601704(v112, &qword_27F24E760, &qword_24FA23DF8);
  sub_24E601704(v108, &qword_27F24E6F8, &qword_24FA23D20);
  sub_24E601704(v107, &qword_27F2233D0, &qword_24F958810);
  sub_24E601704(v110, &qword_27F24E760, &qword_24FA23DF8);
  sub_24E601704(v109, &qword_27F24E6F8, &qword_24FA23D20);
  return sub_24E601704(v106, &qword_27F2233D0, &qword_24F958810);
}

uint64_t sub_24F73B510@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v38 = a3;
  v37 = sub_24F9248C8();
  v36 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (a1 + *(type metadata accessor for InviteFriendsRow(0) + 40));
  v7 = v6[1];
  *&v47 = *v6;
  *(&v47 + 1) = v7;
  sub_24E600AEC();

  v8 = sub_24F925E18();
  v10 = v9;
  v12 = v11;
  type metadata accessor for InviteFriendsRowComponent(0);
  v13 = sub_24F925C98();
  v15 = v14;
  v17 = v16;
  sub_24E600B40(v8, v10, v12 & 1);

  v18 = sub_24F925C88();
  v20 = v19;
  v22 = v21;
  sub_24E600B40(v13, v15, v17 & 1);

  *&v47 = _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  v23 = sub_24F925C58();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  sub_24E600B40(v18, v20, v22 & 1);

  LOBYTE(v13) = sub_24F9257F8();
  sub_24F923318();
  v46 = v27 & 1;
  v43 = 0;
  *&v47 = v23;
  *(&v47 + 1) = v25;
  LOBYTE(v48) = v27 & 1;
  *(&v48 + 1) = *v45;
  DWORD1(v48) = *&v45[3];
  *(&v48 + 1) = v29;
  LOBYTE(v49) = v13;
  *(&v49 + 1) = *v44;
  DWORD1(v49) = *&v44[3];
  *(&v49 + 1) = v30;
  *v50 = v31;
  *&v50[8] = v32;
  *&v50[16] = v33;
  v50[24] = 0;
  sub_24F9248B8();
  v41 = v49;
  v42[0] = *v50;
  *(v42 + 9) = *&v50[9];
  v40 = v48;
  v39 = v47;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217790, &qword_24F946350);
  sub_24E6AF8AC();
  _s7SwiftUI4ViewP12GameStoreKitE18componentFocusable_12interactionsQrSb_AA17FocusInteractionsVtF_0();
  (*(v36 + 8))(v5, v37);
  return sub_24E601704(&v47, &qword_27F217790, &qword_24F946350);
}

uint64_t sub_24F73B82C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v51 = a2;
  v52 = a1;
  v63 = a3;
  v4 = type metadata accessor for InviteFriendsRowComponent(0);
  v59 = *(v4 - 8);
  v60 = *(v59 + 64);
  MEMORY[0x28223BE20](v4);
  v56 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for InviteFriendsRow(0);
  v7 = v6 - 8;
  v55 = *(v6 - 8);
  v54 = *(v55 + 64);
  MEMORY[0x28223BE20](v6);
  v53 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E720, &qword_24FA23D48);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v62 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v51 - v13;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2128D0, &qword_24F941F30);
  v58 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v57 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v64 = &v51 - v17;
  v18 = (a1 + *(v7 + 32));
  v19 = v18[1];
  v65 = *v18;
  v66 = v19;
  sub_24E600AEC();

  v20 = sub_24F925E18();
  v22 = v21;
  v24 = v23;
  v25 = sub_24F925C98();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  sub_24E600B40(v20, v22, v24 & 1);

  v65 = v25;
  v66 = v27;
  v67 = v29 & 1;
  v68 = v31;
  v32 = v64;
  sub_24F9268B8();
  sub_24E600B40(v25, v27, v29 & 1);

  v33 = v53;
  sub_24F73C5E0(v52, v53, type metadata accessor for InviteFriendsRow);
  v34 = v56;
  sub_24F73C5E0(v51, v56, type metadata accessor for InviteFriendsRowComponent);
  v35 = (*(v55 + 80) + 16) & ~*(v55 + 80);
  v36 = (v54 + *(v59 + 80) + v35) & ~*(v59 + 80);
  v37 = swift_allocObject();
  sub_24F73C64C(v33, v37 + v35, type metadata accessor for InviteFriendsRow);
  sub_24F73C64C(v34, v37 + v36, type metadata accessor for InviteFriendsRowComponent);
  v38 = sub_24F924C98();
  v39 = sub_24F9249A8();
  v40 = *(v10 + 60);
  *&v14[v40] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898, &unk_24F944150);
  swift_storeEnumTagMultiPayload();
  *v14 = sub_24F73C6B4;
  *(v14 + 1) = v37;
  *(v14 + 2) = v38;
  *(v14 + 3) = 0;
  v14[32] = 1;
  *(v14 + 5) = v39;
  *(v14 + 6) = 0;
  v14[56] = 1;
  v41 = v57;
  v42 = v58;
  v43 = *(v58 + 16);
  v44 = v32;
  v45 = v61;
  v43(v57, v44, v61);
  v46 = v62;
  sub_24E60169C(v14, v62, &qword_27F24E720, &qword_24FA23D48);
  v47 = v63;
  v43(v63, v41, v45);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E728, &unk_24FA23D80);
  sub_24E60169C(v46, &v47[*(v48 + 48)], &qword_27F24E720, &qword_24FA23D48);
  sub_24E601704(v14, &qword_27F24E720, &qword_24FA23D48);
  v49 = *(v42 + 8);
  v49(v64, v45);
  sub_24E601704(v46, &qword_27F24E720, &qword_24FA23D48);
  return (v49)(v41, v45);
}

uint64_t sub_24F73BD90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v51 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216760, &qword_24F945460);
  v6 = *(v5 - 8);
  v48 = v5;
  v49 = v6;
  MEMORY[0x28223BE20](v5);
  v8 = &v44 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0, &qword_24F93E6B0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v44 - v10;
  v12 = sub_24F9289E8();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E730, &qword_24FA23D90);
  MEMORY[0x28223BE20](v16 - 8);
  v50 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v44 - v19;
  v47 = type metadata accessor for InviteFriendsRow(0);
  sub_24E60169C(a1 + *(v47 + 36), v11, &qword_27F213FB0, &qword_24F93E6B0);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_24E601704(v11, &qword_27F213FB0, &qword_24F93E6B0);
    v21 = 1;
    v22 = v48;
  }

  else
  {
    v23 = *(v13 + 32);
    v45 = v15;
    v23(v15, v11, v12);
    (*(v13 + 16))(v8, v15, v12);
    (*(v13 + 56))(v8, 0, 1, v12);
    v24 = type metadata accessor for GameIcon(0);
    v25 = v24[8];
    *&v8[v25] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2167A0, &unk_24F942EF0);
    swift_storeEnumTagMultiPayload();
    v8[v24[5]] = 1;
    v8[v24[6]] = 1;
    v8[v24[7]] = 0;
    type metadata accessor for InviteFriendsRowComponent(0);
    v46 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215DE0, &qword_24F9847E0);
    sub_24F9237D8();
    sub_24F9237D8();
    sub_24F927618();
    sub_24F9238C8();
    (*(v13 + 8))(v45, v12);
    v26 = v48;
    v27 = &v8[*(v48 + 36)];
    v28 = v54;
    *v27 = v53;
    *(v27 + 1) = v28;
    *(v27 + 2) = v55;
    sub_24E6009C8(v8, v20, &qword_27F216760, &qword_24F945460);
    v21 = 0;
    v22 = v26;
  }

  (*(v49 + 56))(v20, v21, 1, v22);
  type metadata accessor for InviteFriendsRowComponent(0);

  v29 = sub_24F925C98();
  v31 = v30;
  v33 = v32;

  v52[0] = sub_24F9251C8();
  v34 = sub_24F925C58();
  v36 = v35;
  v38 = v37;
  v40 = v39;
  sub_24E600B40(v29, v31, v33 & 1);

  v41 = v50;
  sub_24E60169C(v20, v50, &qword_27F24E730, &qword_24FA23D90);
  sub_24E60169C(v41, a3, &qword_27F24E730, &qword_24FA23D90);
  v42 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E738, &qword_24FA23D98) + 48);
  *v42 = v34;
  *(v42 + 8) = v36;
  *(v42 + 16) = v38 & 1;
  *(v42 + 24) = v40;
  *(v42 + 32) = 256;
  sub_24E5FD138(v34, v36, v38 & 1);

  sub_24E601704(v20, &qword_27F24E730, &qword_24FA23D90);
  sub_24E600B40(v34, v36, v38 & 1);

  return sub_24E601704(v41, &qword_27F24E730, &qword_24FA23D90);
}

uint64_t sub_24F73C34C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_24F924C88();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E6D8, &qword_24FA23D00);
  sub_24F739E0C(v2, a1, a2 + *(v5 + 44));
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E6E0, &qword_24FA23D08);
  *(a2 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_24F73C3CC(uint64_t a1)
{
  MEMORY[0x28223BE20](v1);
  sub_24F73C5E0(v3, &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for InviteFriendsRowComponent);
  sub_24F738494(&qword_27F231A70, type metadata accessor for InviteFriendsRowComponent, &unk_24FA23C94);
  return sub_24F9218E8();
}

uint64_t sub_24F73C5E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F73C64C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroyTm_86()
{
  v1 = v0;
  v2 = type metadata accessor for InviteFriendsRow(0);
  v3 = *(*(v2 - 1) + 80);
  v66 = *(*(v2 - 1) + 64);
  v4 = type metadata accessor for InviteFriendsRowComponent(0);
  v68 = *(*(v4 - 8) + 80);
  v67 = (v3 + 16) & ~v3;
  v5 = v0 + v67;
  __swift_destroy_boxed_opaque_existential_1((v0 + v67));
  v6 = v0 + v67 + v2[5];
  type metadata accessor for FriendSuggestion(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {
    v62 = v4;
    v8 = type metadata accessor for Player(0);
    v9 = v8[6];
    v10 = sub_24F9289E8();
    v11 = (*(v10 - 8) + 8);
    v64 = *v11;
    v65 = *(v10 - 8);
    (*v11)(v6 + v9, v10);

    if (*(v6 + v8[9] + 8) != 1)
    {
    }

    v12 = v6 + v8[13];
    v13 = type metadata accessor for CallProviderConversationHandleSet(0);
    v63 = v1;
    if (!(*(*(v13 - 8) + 48))(v12, 1, v13))
    {
      v14 = type metadata accessor for CallProviderConversationHandle(0);
      v15 = *(*(v14 - 8) + 48);
      if (!v15(v12, 1, v14))
      {

        v16 = *(type metadata accessor for CallProvider(0) + 24);
        if (!(*(v65 + 48))(v12 + v16, 1, v10))
        {
          v64(v12 + v16, v10);
        }
      }

      v17 = v12 + *(v13 + 20);
      if (!v15(v17, 1, v14))
      {

        v18 = *(type metadata accessor for CallProvider(0) + 24);
        if (!(*(v65 + 48))(v17 + v18, 1, v10))
        {
          v64(v17 + v18, v10);
        }
      }
    }

    if (*(v6 + v8[15] + 8))
    {
    }

    v19 = v6 + v8[16];
    PlayedTogetherInfo = type metadata accessor for Player.LastPlayedTogetherInfo(0);
    if (!(*(*(PlayedTogetherInfo - 8) + 48))(v19, 1, PlayedTogetherInfo))
    {

      v21 = type metadata accessor for Game(0);
      v64(v19 + v21[18], v10);
      v22 = v21[19];
      if (!(*(v65 + 48))(v19 + v22, 1, v10))
      {
        v64(v19 + v22, v10);
      }

      v23 = v21[21];
      v24 = sub_24F920818();
      v25 = *(v24 - 8);
      if (!(*(v25 + 48))(v19 + v23, 1, v24))
      {
        (*(v25 + 8))(v19 + v23, v24);
      }
    }

    v26 = v6 + v8[17];
    ChallengeInfo = type metadata accessor for Player.LastChallengeInfo(0);
    if (!(*(*(ChallengeInfo - 8) + 48))(v26, 1, ChallengeInfo))
    {

      v28 = type metadata accessor for Game(0);
      v64(v26 + v28[18], v10);
      v29 = v28[19];
      if (!(*(v65 + 48))(v26 + v29, 1, v10))
      {
        v64(v26 + v29, v10);
      }

      v30 = v28[21];
      v31 = sub_24F920818();
      v32 = *(v31 - 8);
      if (!(*(v32 + 48))(v26 + v30, 1, v31))
      {
        (*(v32 + 8))(v26 + v30, v31);
      }
    }

    v33 = type metadata accessor for ActivityFriendSuggestion(0);
    v34 = v6 + *(v33 + 24);

    v35 = type metadata accessor for Game(0);
    v64(v34 + v35[18], v10);
    v36 = v35[19];
    if (!(*(v65 + 48))(v34 + v36, 1, v10))
    {
      v64(v34 + v36, v10);
    }

    v37 = v35[21];
    v38 = sub_24F920818();
    v39 = *(v38 - 8);
    if (!(*(v39 + 48))(v34 + v37, 1, v38))
    {
      (*(v39 + 8))(v34 + v37, v38);
    }

    v40 = *(v33 + 28);
    v41 = sub_24F91F648();
    (*(*(v41 - 8) + 8))(v6 + v40, v41);
    v4 = v62;
    v1 = v63;
  }

  else
  {
  }

  v42 = v5 + v2[7];

  v43 = type metadata accessor for PlayerAvatar(0);
  v44 = *(v43 + 20);
  v45 = type metadata accessor for PlayerAvatar.Overlay(0);
  if (!(*(*(v45 - 8) + 48))(v42 + v44, 1, v45) && !swift_getEnumCaseMultiPayload())
  {
    v46 = sub_24F9289E8();
    (*(*(v46 - 8) + 8))(v42 + v44, v46);
  }

  v47 = (v42 + *(v43 + 24));
  if (v47[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v47);
  }

  v48 = v2[9];
  v49 = sub_24F9289E8();
  v50 = *(v49 - 8);
  if (!(*(v50 + 48))(v5 + v48, 1, v49))
  {
    (*(v50 + 8))(v5 + v48, v49);
  }

  v51 = (v5 + v2[11]);
  if (v51[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v51);
  }

  v52 = (v5 + v2[13]);
  if (v52[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v52);
  }

  v53 = v2[14];
  v54 = sub_24F929608();
  v55 = *(v54 - 8);
  if (!(*(v55 + 48))(v5 + v53, 1, v54))
  {
    (*(v55 + 8))(v5 + v53, v54);
  }

  v56 = (v67 + v66 + v68) & ~v68;
  v57 = (v5 + v2[15]);
  if (v57[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v57);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898, &unk_24F944150);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v58 = sub_24F923E98();
    (*(*(v58 - 8) + 8))(v1 + v56, v58);
  }

  else
  {
  }

  v59 = *(v4 + 20);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215DE0, &qword_24F9847E0);
  (*(*(v60 - 8) + 8))(v1 + v56 + v59, v60);

  return swift_deallocObject();
}

uint64_t sub_24F73D2A8(uint64_t (*a1)(unint64_t, uint64_t))
{
  v2 = *(type metadata accessor for InviteFriendsRow(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(type metadata accessor for InviteFriendsRowComponent(0) - 8);
  v6 = v1 + ((v3 + v4 + *(v5 + 80)) & ~*(v5 + 80));

  return a1(v1 + v3, v6);
}

unint64_t sub_24F73D398()
{
  result = qword_27F24E778;
  if (!qword_27F24E778)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24E740, &qword_24FA23DD8);
    sub_24E602068(&qword_27F24E780, &qword_27F24E788, &qword_24FA23E40, MEMORY[0x277D7EB00]);
    sub_24E602068(&qword_27F222BB0, &qword_27F222BA8, &unk_24F96B940, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24E778);
  }

  return result;
}

unint64_t sub_24F73D49C()
{
  result = qword_27F24E7B8;
  if (!qword_27F24E7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24E7B8);
  }

  return result;
}

uint64_t sub_24F73D4F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24F73D564()
{
  result = qword_27F24E7C8;
  if (!qword_27F24E7C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24E6E0, &qword_24FA23D08);
    sub_24F73D61C();
    sub_24E602068(&qword_27F212A60, &qword_27F223340, &qword_24F939830, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24E7C8);
  }

  return result;
}

unint64_t sub_24F73D61C()
{
  result = qword_27F24E7D0;
  if (!qword_27F24E7D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24E7D8, &qword_24FA23EE0);
    sub_24E602068(&qword_27F24E7E0, &qword_27F24E7E8, &qword_24FA23EE8, MEMORY[0x277CE1198]);
    sub_24E602068(&unk_27F2129E0, &unk_27F22E040, &unk_24F940690, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24E7D0);
  }

  return result;
}

unint64_t sub_24F73D704()
{
  result = qword_27F24E7F0;
  if (!qword_27F24E7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24E7F0);
  }

  return result;
}

unint64_t sub_24F73D75C()
{
  result = qword_27F24E7F8;
  if (!qword_27F24E7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24E7F8);
  }

  return result;
}

unint64_t sub_24F73D7B4()
{
  result = qword_27F24E800;
  if (!qword_27F24E800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24E800);
  }

  return result;
}

uint64_t sub_24F73D808(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6974736567677573 && a2 == 0xEA00000000006E6FLL || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x726174617661 && a2 == 0xE600000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xEC00000074786554 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xEF74656C63696843 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA7CC50 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6341657469766E69 && a2 == 0xEC0000006E6F6974 || (sub_24F92CE08() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6974617469766E69 && a2 == 0xEE00746E65536E6FLL || (sub_24F92CE08() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6974634165646968 && a2 == 0xEA00000000006E6FLL || (sub_24F92CE08() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA451D0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000)
  {

    return 11;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }
}