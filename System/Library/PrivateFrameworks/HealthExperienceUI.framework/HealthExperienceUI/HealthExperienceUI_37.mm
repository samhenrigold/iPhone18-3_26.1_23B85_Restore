id sub_1BA2F250C(uint64_t a1)
{
  v30 = a1;
  v31 = sub_1BA4A1728();
  v1 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31, v2);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1BA4A18A8();
  v5 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29, v6);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BA4A1148();
  v32 = *(v9 - 8);
  v33 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A1878();
  sub_1BA2F3480(0, &qword_1EBBEC248, MEMORY[0x1E6969AD0], MEMORY[0x1E69E6F90]);
  v13 = sub_1BA4A1898();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v16 = swift_allocObject();
  v28 = xmmword_1BA4B5480;
  *(v16 + 16) = xmmword_1BA4B5480;
  (*(v14 + 104))(v16 + v15, *MEMORY[0x1E6969A68], v13);
  sub_1B9FF6D00(v16);
  swift_setDeallocating();
  (*(v14 + 8))(v16 + v15, v13);
  swift_deallocClassInstance();
  sub_1BA4A1718();
  sub_1BA4A17F8();

  (*(v1 + 8))(v4, v31);
  (*(v5 + 8))(v8, v29);
  v17 = sub_1BA4A1138();
  v18 = 0;
  if ((v19 & 1) == 0)
  {
    v34 = v17;
    v18 = sub_1BA4A8328();
  }

  sub_1B9F0ADF8(0, &qword_1EDC6E360, 0x1E696AD98);
  v20 = [swift_getObjCClassFromMetadata() valueWithWeakObject_];
  swift_unknownObjectRelease();
  if (v20)
  {
    v21 = [objc_allocWithZone(MEMORY[0x1E696ADA0]) init];
    v22 = [v21 stringFromNumber_];

    if (v22)
    {
      v23 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v25 = v24;

      sub_1B9F1B6F0(0, &qword_1EDC6B410, &qword_1EDC6B3D0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
      v26 = swift_allocObject();
      *(v26 + 16) = v28;
      *(v26 + 56) = MEMORY[0x1E69E6158];
      *(v26 + 64) = sub_1B9F1BE20();
      *(v26 + 32) = v23;
      *(v26 + 40) = v25;
      v22 = sub_1BA4A67D8();
    }
  }

  else
  {
    v22 = 0;
  }

  (*(v32 + 8))(v12, v33);
  return v22;
}

uint64_t sub_1BA2F29B4(uint64_t a1, uint64_t a2)
{
  sub_1B9F1B6F0(0, &qword_1EBBF03B0, &qword_1EBBE9AF0, &protocol descriptor for HealthDetailsItem, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BA2F2A44(uint64_t a1)
{
  sub_1B9F1B6F0(0, &qword_1EBBF03B0, &qword_1EBBE9AF0, &protocol descriptor for HealthDetailsItem, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BA2F2ACC(uint64_t a1, uint64_t a2)
{
  sub_1B9F1B6F0(0, &qword_1EBBF03B0, &qword_1EBBE9AF0, &protocol descriptor for HealthDetailsItem, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1BA2F2B5C(uint64_t a1)
{
  if (!qword_1EBBF03B8)
  {
    v1 = MEMORY[0x1E695BED0];
    sub_1BA2F2C28(255, &qword_1EBBF03C0, MEMORY[0x1E695BED0]);
    sub_1BA2F2CA8(255);
    sub_1B9F3DC3C(&qword_1EBBF03D0, &qword_1EBBF03C0, v1, MEMORY[0x1E695BED8]);
    v2 = sub_1BA4A4B78();
    if (!v3)
    {
      atomic_store(v2, &qword_1EBBF03B8);
    }
  }
}

void sub_1BA2F2C28(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void, void))
{
  if (!*a2)
  {
    v6 = sub_1B9F0ADF8(255, &unk_1EDC5E240, 0x1E69A4360);
    v7 = a3(a1, v6, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7410]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1BA2F2CA8(uint64_t a1)
{
  if (!qword_1EBBF03C8)
  {
    sub_1B9F1B6F0(255, &qword_1EDC5E710, &qword_1EDC6AD50, MEMORY[0x1E69A3310], MEMORY[0x1E69E62F8]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EBBF03C8);
    }
  }
}

uint64_t sub_1BA2F2DC8(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1BA2F2F14(255, a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1BA2F2E18(uint64_t a1)
{
  if (!qword_1EBBF03E8)
  {
    v2 = sub_1BA4A1148();
    v3 = sub_1BA2F39EC(&qword_1EBBE9D50, MEMORY[0x1E6968278], &protocol conformance descriptor for DateComponents);
    v5 = type metadata accessor for HealthDetailsDemographicsItem(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1EBBF03E8);
    }
  }
}

void sub_1BA2F2EAC(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v4 = *(a1 + 8);
  sub_1BA2F2F14(0, &qword_1EBBF03F8, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548]);
  sub_1BA2F139C(v3, v4, v2);
}

void sub_1BA2F2F14(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (!*a2)
  {
    v5 = type metadata accessor for HealthDetailsDemographicsItem(0, a3, a4, a4);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t *sub_1BA2F2F64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned __int8 a11)
{
  v12 = v11;
  v32 = a11;
  v33 = a6;
  v30 = a9;
  v31 = a5;
  v18 = *v12;
  v34 = a7;
  v35 = v18;
  v36 = sub_1BA4A1798();
  v19 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36, v20);
  v22 = &v29 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[16] = 0;
  v12[15] = 0;
  v12[4] = a1;
  v12[5] = a2;
  v12[13] = a3;
  v12[14] = a4;
  swift_beginAccess();
  v12[15] = a3;
  v12[16] = a4;
  v12[6] = v31;
  *(v12 + 56) = v33 & 1;
  v12[8] = v34;
  v12[9] = a8;
  v12[10] = v30;
  v12[11] = a10;
  *(v12 + 96) = v32;
  *(v12 + 136) = 0;

  v37 = sub_1BA4A85D8();
  v38 = v23;
  MEMORY[0x1BFAF1350](95, 0xE100000000000000);
  sub_1BA4A1788();
  v24 = sub_1BA4A1748();
  v26 = v25;
  (*(v19 + 8))(v22, v36);
  MEMORY[0x1BFAF1350](v24, v26);

  v27 = v38;
  v12[2] = v37;
  v12[3] = v27;
  return v12;
}

uint64_t *sub_1BA2F315C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned __int8 a11)
{
  v12 = v11;
  v32 = a11;
  v33 = a6;
  v30 = a9;
  v31 = a5;
  v18 = *v12;
  v34 = a7;
  v35 = v18;
  v36 = sub_1BA4A1798();
  v19 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36, v20);
  v22 = &v29 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[15] = 0;
  *(v12 + 128) = 1;
  v12[4] = a1;
  v12[5] = a2;
  v12[13] = a3;
  *(v12 + 112) = a4 & 1;
  swift_beginAccess();
  v12[15] = a3;
  *(v12 + 128) = a4 & 1;
  v12[6] = v31;
  *(v12 + 56) = v33 & 1;
  v12[8] = v34;
  v12[9] = a8;
  v12[10] = v30;
  v12[11] = a10;
  *(v12 + 96) = v32;
  *(v12 + 129) = 0;

  v37 = sub_1BA4A85D8();
  v38 = v23;
  MEMORY[0x1BFAF1350](95, 0xE100000000000000);
  sub_1BA4A1788();
  v24 = sub_1BA4A1748();
  v26 = v25;
  (*(v19 + 8))(v22, v36);
  MEMORY[0x1BFAF1350](v24, v26);

  v27 = v38;
  v12[2] = v37;
  v12[3] = v27;
  return v12;
}

void sub_1BA2F3388(uint64_t a1, SEL *a2, uint64_t (*a3)(void, __n128), char *a4, const char *a5)
{
  v10 = *(v5 + 16);
  v11 = *a1;
  v12 = *(a1 + 8);
  sub_1BA2F2F14(0, &qword_1EBBF03F8, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548]);
  sub_1BA2EE5BC(v11, v12, v10, a2, a3, a4, a5);
}

void sub_1BA2F3480(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1BA2F34E4(uint64_t a1)
{
  v3 = *(v1 + 16);
  sub_1BA2F2E18(0);
  return sub_1BA2F1DCC(a1, v3);
}

uint64_t *sub_1BA2F3524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10)
{
  v11 = v10;
  v33 = a6;
  v34 = a8;
  v31 = a10;
  v32 = a5;
  v35 = *v11;
  v36 = sub_1BA4A1798();
  v17 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36, v18);
  v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v35 + 152);
  v22 = sub_1BA4A1148();
  (*(*(v22 - 8) + 56))(v11 + v21, 1, 1, v22);
  v11[4] = a1;
  v11[5] = a2;
  sub_1BA018958(a3, v11 + *(*v11 + 144));
  swift_beginAccess();
  sub_1BA2F37B8(a3, v11 + v21);
  swift_endAccess();
  v11[6] = a4;
  *(v11 + 56) = v32 & 1;
  v23 = v34;
  v11[8] = v33;
  v11[9] = a7;
  v11[10] = v23;
  v11[11] = a9;
  *(v11 + 96) = v31;
  *(v11 + *(*v11 + 160)) = 0;

  v37 = sub_1BA4A85D8();
  v38 = v24;
  MEMORY[0x1BFAF1350](95, 0xE100000000000000);
  sub_1BA4A1788();
  v25 = sub_1BA4A1748();
  v27 = v26;
  (*(v17 + 8))(v20, v36);
  MEMORY[0x1BFAF1350](v25, v27);

  v28 = v37;
  v29 = v38;
  sub_1BA2F397C(a3, &qword_1EBBEA478, MEMORY[0x1E6968278]);
  v11[2] = v28;
  v11[3] = v29;
  return v11;
}

uint64_t sub_1BA2F37B8(uint64_t a1, uint64_t a2)
{
  sub_1BA2F3480(0, &qword_1EBBEA478, MEMORY[0x1E6968278], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_1BA2F3854(uint64_t a1)
{
  if (!qword_1EBBF0408)
  {
    sub_1BA2F3480(255, &qword_1EBBEA078, MEMORY[0x1E69A3910], MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EBBF0408);
    }
  }
}

uint64_t sub_1BA2F38E8(uint64_t a1, uint64_t a2)
{
  sub_1BA2F3480(0, &qword_1EBBEA078, MEMORY[0x1E69A3910], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BA2F397C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1BA2F3480(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1BA2F39EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t DataTypeDetailConfiguration.GetMoreFromHealthComponent.init(hkType:additionalPredicate:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

id DataTypeDetailConfiguration.GetMoreFromHealthComponent.hkType.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

void *DataTypeDetailConfiguration.GetMoreFromHealthComponent.additionalPredicate.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

uint64_t DataTypeDetailConfiguration.GetMoreFromHealthComponent.makeDataSource(context:)(uint64_t a1)
{
  sub_1B9F0C9D8(0, &qword_1EDC6E2A0, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v43 - v5;
  if ((*(a1 + 48) & 0xFE) == 2)
  {
    type metadata accessor for EmptyDataSource(0);
    swift_allocObject();
    v7 = EmptyDataSource.init()();
    sub_1BA2F41C0(0);
    v8 = swift_allocObject();
    v9 = *(v7 + 24);
    *(v8 + 16) = *(v7 + 16);
    *(v8 + 24) = v9;
    *(v8 + 32) = v7;
    *(v8 + 40) = 0;
  }

  else
  {
    v11 = *v1;
    v10 = *(v1 + 8);
    __swift_project_boxed_opaque_existential_1(a1, *(a1 + 24));
    v12 = sub_1BA4A1B68();
    sub_1B9F1C048(0, &qword_1EDC6B450, MEMORY[0x1E69A3C58]);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1BA4B5460;
    *(v13 + 32) = sub_1BA4A6F38();
    *(v13 + 40) = 0;
    v44 = objc_allocWithZone(type metadata accessor for GetMoreFromHealthResultsController(0));
    sub_1B9F0C9D8(0, &qword_1EDC6B460, MEMORY[0x1E69A3C08], MEMORY[0x1E69E6F90]);
    v14 = sub_1BA4A1C68();
    v15 = *(v14 - 8);
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1BA4B5480;
    (*(v15 + 104))(v17 + v16, *MEMORY[0x1E69A3C00], v14);
    v18 = MEMORY[0x1E69E7C98];
    if (v11)
    {
      sub_1B9F1C048(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_1BA4B5470;
      *(v19 + 32) = v11;
    }

    else
    {
      v19 = 0;
    }

    sub_1BA4A27B8();
    v20 = sub_1BA4A0FA8();
    (*(*(v20 - 8) + 56))(v6, 1, 1, v20);
    v21 = v12;
    v22 = v11;
    v23 = MEMORY[0x1BFAED020](v17, v19, v6, v13);

    sub_1B9F1C1B0(v6);
    if (v10)
    {
      sub_1B9F1C048(0, &qword_1EDC6B400, v18 + 8);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_1BA4B7510;
      *(v24 + 32) = v23;
      *(v24 + 40) = v10;
      sub_1B9F0ADF8(0, &qword_1EDC6B630, 0x1E696AE18);
      v25 = v10;
      v26 = v23;
      v27 = sub_1BA4A6AE8();

      v28 = [objc_opt_self() andPredicateWithSubpredicates_];
    }

    else
    {
      v28 = v23;
    }

    v29 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
    v30 = v28;
    v31 = sub_1BA4A6758();
    v32 = [v29 initWithKey:v31 ascending:0];

    v33 = MEMORY[0x1BFAED110]();
    [v33 setPredicate_];

    sub_1B9F1C048(0, &qword_1EDC6B400, v18 + 8);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_1BA4B5470;
    *(v34 + 32) = v32;
    sub_1B9F0ADF8(0, &qword_1EDC6E3E0, 0x1E696AEB0);
    v35 = v32;
    v36 = sub_1BA4A6AE8();

    [v33 setSortDescriptors_];

    [v33 setFetchLimit_];
    v37 = [objc_allocWithZone(MEMORY[0x1E695D600]) initWithFetchRequest:v33 managedObjectContext:v21 sectionNameKeyPath:0 cacheName:0];
    v38 = &v44[qword_1EDC61AF0];
    *v38 = sub_1BA236D80;
    v38[1] = 0;
    v39 = _s18HealthExperienceUI33FeedItemSuggestedActionDataSourceCyACSo26NSFetchedResultsControllerCy0A8Platform0dE0CGcfc_0(v37);

    sub_1BA2F4160(0);
    swift_allocObject();
    v40 = sub_1BA0488BC();

    sub_1BA2F41C0(0);
    v8 = swift_allocObject();
    v41 = *(v40 + 48);
    *(v8 + 16) = *(v40 + 40);
    *(v8 + 24) = v41;
    *(v8 + 32) = v40;
    *(v8 + 40) = 1;
  }

  return v8;
}

void sub_1BA2F4160(uint64_t a1)
{
  if (!qword_1EDC63990[0])
  {
    MoreFromHealthResultsController = type metadata accessor for GetMoreFromHealthResultsController(255);
    v4 = type metadata accessor for DataSourceWithSectionItemLimit(a1, MoreFromHealthResultsController, &protocol witness table for FetchedResultsControllerDataSource<A>, v3);
    if (!v5)
    {
      atomic_store(v4, qword_1EDC63990);
    }
  }
}

void sub_1BA2F41C0(uint64_t a1)
{
  if (!qword_1EDC66CF8)
  {
    v2 = type metadata accessor for EmptyDataSource(255);
    sub_1BA2F4160(255);
    v6[0] = v2;
    v6[1] = v3;
    v6[2] = &protocol witness table for EmptyDataSource;
    v6[3] = &protocol witness table for DataSourceWithSectionItemLimit<A>;
    v4 = type metadata accessor for _ConditionalDataSource(a1, v6);
    if (!v5)
    {
      atomic_store(v4, &qword_1EDC66CF8);
    }
  }
}

char *sub_1BA2F4270(void (*a1)(uint64_t *__return_ptr, uint64_t *, __n128), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = (a3 + 72);
  v31 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v7 = *(v6 - 1);
    v8 = *v6;
    v10 = *(v6 - 3);
    v9 = *(v6 - 2);
    v11 = *(v6 - 4);
    v30[0] = *(v6 - 5);
    v30[1] = v11;
    v30[2] = v10;
    v30[3] = v9;
    v30[4] = v7;
    v30[5] = v8;

    (a1)(&v24, v30);
    if (v4)
    {
      break;
    }

    v13 = v24;
    v12 = v25;
    v14 = v26;
    v15 = v27;
    if (v26)
    {
      v22 = v28;
      v23 = v29;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v31 = sub_1B9F21540(0, *(v31 + 2) + 1, 1, v31);
      }

      v17 = *(v31 + 2);
      v16 = *(v31 + 3);
      if (v17 >= v16 >> 1)
      {
        v31 = sub_1B9F21540((v16 > 1), v17 + 1, 1, v31);
      }

      v18 = v31;
      *(v31 + 2) = v17 + 1;
      v19 = &v18[48 * v17];
      *(v19 + 4) = v13;
      *(v19 + 5) = v12;
      *(v19 + 6) = v14;
      *(v19 + 7) = v15;
      *(v19 + 8) = v22;
      *(v19 + 9) = v23;
    }

    else
    {
      sub_1BA0F7D80(v24, v25, 0, v27, v28, v29);
    }

    v6 += 6;
    if (!--v5)
    {
      return v31;
    }
  }

  return v31;
}

uint64_t sub_1BA2F4458(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v5 = result;
  v6 = 0;
  v7 = a3 + 32;
  v8 = MEMORY[0x1E69E7CC0];
  do
  {
    v9 = v7 + 40 * v6;
    for (i = v6; ; ++i)
    {
      if (i >= v4)
      {
        __break(1u);
LABEL_20:
        __break(1u);
        return result;
      }

      v6 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_20;
      }

      result = v5(&v14, v9, a2);
      if (v3)
      {

        return v8;
      }

      if (v14)
      {
        break;
      }

      v9 += 40;
      if (v6 == v4)
      {
        return v8;
      }
    }

    v13 = v14;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1B9F1E00C();
      v8 = result;
    }

    v11 = *(v8 + 16);
    v12 = v13;
    if (v11 >= *(v8 + 24) >> 1)
    {
      result = sub_1B9F1E00C();
      v12 = v13;
      v8 = result;
    }

    *(v8 + 16) = v11 + 1;
    *(v8 + 16 * v11 + 32) = v12;
  }

  while (v6 != v4);
  return v8;
}

void *sub_1BA2F45C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19[0] = a1;
  v19[1] = a2;
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v5 = a3 + 32;
  v6 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    (v19[0])(&v20, v5);
    if (v3)
    {
      break;
    }

    if (v21)
    {
      sub_1B9F1134C(&v20, v23);
      sub_1B9F1134C(v23, &v20);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v24 = v6;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v6 = sub_1BA27EFB4(0, v6[2] + 1, 1, v6);
        v24 = v6;
      }

      v9 = v6[2];
      v8 = v6[3];
      if (v9 >= v8 >> 1)
      {
        v10 = sub_1BA27EFB4((v8 > 1), v9 + 1, 1, v6);
        v24 = v10;
      }

      else
      {
        v10 = v6;
      }

      v11 = v21;
      v12 = v22;
      v13 = __swift_mutable_project_boxed_opaque_existential_1(&v20, v21);
      v14 = MEMORY[0x1EEE9AC00](v13, v13);
      v16 = v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v17 + 16))(v16, v14);
      sub_1B9F1C4F4(v9, v16, &v24, v11, v12);
      __swift_destroy_boxed_opaque_existential_1(&v20);
      v6 = v10;
    }

    else
    {
      sub_1B9F43A50(&v20, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
    }

    v5 += 40;
    if (!--v4)
    {
      return v6;
    }
  }

  return v6;
}

void *sub_1BA2F47E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19[0] = a1;
  v19[1] = a2;
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v5 = a3 + 32;
  v6 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    (v19[0])(&v20, v5);
    if (v3)
    {
      break;
    }

    if (v21)
    {
      sub_1B9F1134C(&v20, v23);
      sub_1B9F1134C(v23, &v20);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v24 = v6;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v6 = sub_1B9F281E8(0, v6[2] + 1, 1, v6);
        v24 = v6;
      }

      v9 = v6[2];
      v8 = v6[3];
      if (v9 >= v8 >> 1)
      {
        v10 = sub_1B9F281E8((v8 > 1), v9 + 1, 1, v6);
        v24 = v10;
      }

      else
      {
        v10 = v6;
      }

      v11 = v21;
      v12 = v22;
      v13 = __swift_mutable_project_boxed_opaque_existential_1(&v20, v21);
      v14 = MEMORY[0x1EEE9AC00](v13, v13);
      v16 = v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v17 + 16))(v16, v14);
      sub_1B9F1C4F4(v9, v16, &v24, v11, v12);
      __swift_destroy_boxed_opaque_existential_1(&v20);
      v6 = v10;
    }

    else
    {
      sub_1B9F43A50(&v20, &qword_1EDC6AD40, &qword_1EDC6AD50, MEMORY[0x1E69A3310]);
    }

    v5 += 40;
    if (!--v4)
    {
      return v6;
    }
  }

  return v6;
}

uint64_t sub_1BA2F49FC(void (*a1)(uint64_t *__return_ptr, id *), uint64_t a2, unint64_t a3)
{
  v15 = MEMORY[0x1E69E7CC0];
  if (a3 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BA4A7CC8())
  {
    v6 = 0;
    v11 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1BFAF2860](v6, a3);
      }

      else
      {
        if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v7 = *(a3 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v14 = v7;
      a1(&v13, &v14);
      if (v3)
      {

        return v11;
      }

      if (v13)
      {
        MEMORY[0x1BFAF1510]();
        if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1BA4A6B68();
        }

        sub_1BA4A6BB8();
        v11 = v15;
      }

      ++v6;
      if (v9 == i)
      {
        return v11;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

HealthExperienceUI::DataTypeDetailConfiguration::VerticalGroupComponent __swiftcall DataTypeDetailConfiguration.VerticalGroupComponent.init(identifier:childComponents:)(Swift::String identifier, Swift::OpaquePointer childComponents)
{
  *v2 = identifier;
  *(v2 + 16) = childComponents;
  result.identifier = identifier;
  result.childComponents = childComponents;
  return result;
}

uint64_t DataTypeDetailChildComponentMutating.replaceComponent(_:with:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = (*(a5 + 8))(a4, a5);
  v11 = 0;
  v12 = *(v10 + 16);
  while (1)
  {
    v13 = v12;
    v14 = 0uLL;
    v15 = 0uLL;
    v16 = 0uLL;
    if (v11 == v12)
    {
      goto LABEL_5;
    }

    if (v11 >= *(v10 + 16))
    {
      break;
    }

    v13 = (v11 + 1);
    v47.n128_u64[0] = v11;
    sub_1B9F0A534(v10 + 32 + 40 * v11, &v47.n128_i64[1]);
    v14 = v47;
    v15 = v48;
    v16 = v49;
LABEL_5:
    v50[0] = v14;
    v50[1] = v15;
    v7 = v16;
    v50[2] = v16;
    if (!v16)
    {

      return v7 != 0;
    }

    v39 = v14;
    sub_1B9F1134C((v50 + 8), v44);
    sub_1B9F0A534(v44, v43);
    sub_1B9F0D950(0, &unk_1EDC66C80, &protocol descriptor for DataTypeDetailComponent);
    sub_1BA2F68FC(0, &qword_1EDC60ED0, &protocol descriptor for DataTypeDetailChildComponentMutating, &protocol descriptor for DataTypeDetailComponent, 1);
    if (swift_dynamicCast())
    {
      sub_1BA0956E8(&v40, &v47);
      v17 = *(&v48 + 1);
      v18 = v49;
      __swift_mutable_project_boxed_opaque_existential_1(&v47, *(&v48 + 1));
      if ((*(v18 + 32))(a1, a2, a3, v17, v18))
      {

        v29 = *(&v48 + 1);
        v30 = *(&v49 + 1);
        v31 = __swift_project_boxed_opaque_existential_1(&v47, *(&v48 + 1));
        *(&v41 + 1) = v29;
        *&v42 = v30;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v40);
        (*(*(v29 - 8) + 16))(boxed_opaque_existential_1, v31, v29);
        v5 = (*(a5 + 24))(v43, a4);
        v13 = v33;
        v6 = *v33;
        result = swift_isUniquelyReferenced_nonNull_native();
        *v13 = v6;
        if (result)
        {
          goto LABEL_25;
        }

        goto LABEL_35;
      }

      __swift_destroy_boxed_opaque_existential_1(&v47);
    }

    else
    {
      v41 = 0u;
      v42 = 0u;
      v40 = 0u;
      sub_1BA0955CC(&v40);
    }

    v19 = v45;
    v20 = v46;
    __swift_project_boxed_opaque_existential_1(v44, v45);
    v21 = (*(v20 + 24))(v19, v20);
    v6 = v22;
    if (v21 == a1 && v22 == a2)
    {

LABEL_18:

      sub_1B9F374E8(a3, &v40, &qword_1EDC66C78, &unk_1EDC66C80, &protocol descriptor for DataTypeDetailComponent);
      if (*(&v41 + 1))
      {
        sub_1B9F1134C(&v40, &v47);
        v5 = (*(a5 + 24))(&v40, a4);
        v13 = v24;
        v6 = *v24;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v13 = v6;
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_20;
        }

        goto LABEL_32;
      }

      sub_1B9F43A50(&v40, &qword_1EDC66C78, &unk_1EDC66C80, &protocol descriptor for DataTypeDetailComponent);
      v28 = (*(a5 + 24))(&v40, a4);
      sub_1BA0F0A1C(v39.n128_u64[0], &v47);
      __swift_destroy_boxed_opaque_existential_1(&v47);
      v28(&v40, 0);
LABEL_29:
      __swift_destroy_boxed_opaque_existential_1(v44);
      return v7 != 0;
    }

    v5 = sub_1BA4A8338();

    if (v5)
    {
      goto LABEL_18;
    }

    __swift_destroy_boxed_opaque_existential_1(v44);
    v11 = v13;
  }

  __break(1u);
LABEL_32:
  v6 = sub_1BA2F67AC(v6);
  *v13 = v6;
LABEL_20:
  if ((v39.n128_u64[0] & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v39.n128_u64[0] < v6[2])
  {
    v26.n128_f64[0] = __swift_assign_boxed_opaque_existential_1(&v6[5 * v39.n128_u64[0] + 4], &v47, v39);
    v27 = &v40;
LABEL_28:
    (v5)(v27, 0, v26);
    __swift_destroy_boxed_opaque_existential_1(&v47);
    goto LABEL_29;
  }

  __break(1u);
LABEL_35:
  result = sub_1BA2F67AC(v6);
  v6 = result;
  *v13 = result;
LABEL_25:
  if ((v39.n128_u64[0] & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v39.n128_u64[0] < v6[2])
  {
    v35 = &v6[5 * v39.n128_u64[0]];
    __swift_destroy_boxed_opaque_existential_1(v35 + 4);
    sub_1B9F1134C(&v40, (v35 + 4));
    v27 = v43;
    goto LABEL_28;
  }

  __break(1u);
  return result;
}

uint64_t DataTypeDetailConfiguration.Context.init(healthExperienceStore:healthStore:mode:pinnedContentManager:chartContext:restorationUserActivity:)@<X0>(void *a1@<X0>, void *a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  sub_1B9F0A534(a1, a7);
  *(a7 + 40) = a2;
  *(a7 + 48) = a3;
  sub_1BA4A2488();
  swift_allocObject();
  v14 = a2;
  *(a7 + 56) = sub_1BA4A2468();
  sub_1B9F374E8(a4, &v18, &unk_1EDC6ADB0, &qword_1EDC6ADC0, MEMORY[0x1E69A3D48]);
  if (v19)
  {

    sub_1B9F43A50(a4, &unk_1EDC6ADB0, &qword_1EDC6ADC0, MEMORY[0x1E69A3D48]);
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_1B9F1134C(&v18, &v20);
  }

  else
  {
    v15 = sub_1BA4A22B8();
    v16 = sub_1BA4A22A8();
    v21 = v15;
    v22 = MEMORY[0x1E69A3CF8];
    *&v20 = v16;
    sub_1B9F43A50(a4, &unk_1EDC6ADB0, &qword_1EDC6ADC0, MEMORY[0x1E69A3D48]);
    __swift_destroy_boxed_opaque_existential_1(a1);
    if (v19)
    {
      sub_1B9F43A50(&v18, &unk_1EDC6ADB0, &qword_1EDC6ADC0, MEMORY[0x1E69A3D48]);
    }
  }

  result = sub_1B9F1134C(&v20, a7 + 64);
  *(a7 + 104) = a5;
  *(a7 + 112) = a6;
  return result;
}

uint64_t DataTypeDetailConfiguration.makeDataSource(context:)(uint64_t a1)
{
  v2 = *(*v1 + 16);
  if (v2)
  {
    v4 = *v1 + 32;
    v5 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1B9F0A534(v4, v15);
      v6 = v16;
      v7 = v17;
      __swift_project_boxed_opaque_existential_1(v15, v16);
      (*(v7 + 32))(a1, v6, v7);
      __swift_destroy_boxed_opaque_existential_1(v15);
      swift_getAssociatedTypeWitness();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      swift_getObjectType();
      nullsub_1();
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      ObjectType = swift_getObjectType();
      nullsub_1();
      v11 = v10;
      swift_unknownObjectRetain();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v18 = v5;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v5 = sub_1B9F1E00C();
        v18 = v5;
      }

      v13 = *(v5 + 16);
      if (v13 >= *(v5 + 24) >> 1)
      {
        v5 = sub_1B9F1E00C();
        swift_unknownObjectRelease();
        v18 = v5;
      }

      else
      {
        swift_unknownObjectRelease();
      }

      sub_1BA1BA008(v13, v11, &v18, ObjectType, AssociatedConformanceWitness);
      v4 += 40;
      --v2;
    }

    while (v2);
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  type metadata accessor for CompoundSectionedDataSource(0);
  swift_allocObject();
  return CompoundSectionedDataSource.init(_:)(v5);
}

uint64_t sub_1BA2F54B0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = 0;
  v9 = *(v4 + 16);
  v30 = (v4 + 16);
  v10 = v9[2];
  v31 = a4 & 1;
  while (1)
  {
    v11 = v10;
    v12 = 0uLL;
    v13 = 0uLL;
    v14 = 0uLL;
    if (v8 != v10)
    {
      if (v8 >= v9[2])
      {
        __break(1u);
        goto LABEL_29;
      }

      v11 = v8 + 1;
      *&v41 = v8;
      sub_1B9F0A534(&v9[5 * v8 + 4], &v41 + 8);
      v12 = v41;
      v13 = v42;
      v14 = v43;
    }

    v44[0] = v12;
    v44[1] = v13;
    v5 = v14;
    v44[2] = v14;
    if (!v14)
    {
      return v5 != 0;
    }

    v33 = v12;
    sub_1B9F1134C((v44 + 8), v38);
    sub_1B9F0A534(v38, v37);
    sub_1B9F0D950(0, &unk_1EDC66C80, &protocol descriptor for DataTypeDetailComponent);
    sub_1BA2F68FC(0, &qword_1EDC60ED0, &protocol descriptor for DataTypeDetailChildComponentMutating, &protocol descriptor for DataTypeDetailComponent, 1);
    if (swift_dynamicCast())
    {
      break;
    }

    v35 = 0u;
    v36 = 0u;
    v34 = 0u;
    sub_1BA0955CC(&v34);
LABEL_10:
    v17 = v39;
    v18 = v40;
    __swift_project_boxed_opaque_existential_1(v38, v39);
    if ((*(v18 + 24))(v17, v18) == a2 && v19 == a3)
    {

LABEL_17:
      v22 = v33;
      if (a4)
      {
        v22 = v33 + 1;
        if (__OFADD__(v33, 1))
        {
          goto LABEL_31;
        }
      }

      if (v9[2] >= v22)
      {
        if ((v22 & 0x8000000000000000) == 0)
        {
          sub_1B9F0A534(a1, &v41);
          sub_1BA0F135C(v22, v22, &v41);
LABEL_26:
          __swift_destroy_boxed_opaque_existential_1(v38);
          return v5 != 0;
        }

LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v21 = sub_1BA4A8338();

    if (v21)
    {
      goto LABEL_17;
    }

    __swift_destroy_boxed_opaque_existential_1(v38);
    v8 = v11;
  }

  sub_1BA0956E8(&v34, &v41);
  LOBYTE(v34) = v31;
  v15 = *(&v42 + 1);
  v16 = v43;
  __swift_mutable_project_boxed_opaque_existential_1(&v41, *(&v42 + 1));
  if (((*(v16 + 40))(a1, a2, a3, &v34, v15, v16) & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1(&v41);
    goto LABEL_10;
  }

  v23 = *(&v42 + 1);
  v24 = *(&v43 + 1);
  v25 = __swift_project_boxed_opaque_existential_1(&v41, *(&v42 + 1));
  *(&v35 + 1) = v23;
  *&v36 = v24;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v34);
  (*(*(v23 - 8) + 16))(boxed_opaque_existential_1, v25, v23);
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    goto LABEL_23;
  }

LABEL_32:
  result = sub_1BA2F67AC(v9);
  v9 = result;
LABEL_23:
  if ((v33 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v33 < v9[2])
  {
    v28 = &v9[5 * v33];
    __swift_destroy_boxed_opaque_existential_1(v28 + 4);
    sub_1B9F1134C(&v34, (v28 + 4));
    *v30 = v9;
    __swift_destroy_boxed_opaque_existential_1(&v41);
    goto LABEL_26;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BA2F5814(uint64_t a1, uint64_t a2, uint64_t *a3, char a4)
{
  v8 = 0;
  v9 = *v4;
  v10 = *(*v4 + 16);
  v33 = *v4 + 32;
  v32 = a4 & 1;
  while (1)
  {
    v11 = v10;
    v12 = 0uLL;
    v13 = 0uLL;
    v14 = 0uLL;
    if (v8 != v10)
    {
      if (v8 >= v9[2])
      {
        __break(1u);
        goto LABEL_32;
      }

      v11 = v8 + 1;
      *&v43 = v8;
      sub_1B9F0A534(v33 + 40 * v8, &v43 + 8);
      v12 = v43;
      v13 = v44;
      v14 = v45;
    }

    v46[0] = v12;
    v46[1] = v13;
    v5 = v14;
    v46[2] = v14;
    if (!v14)
    {
      return v5 != 0;
    }

    v35 = v12;
    sub_1B9F1134C((v46 + 8), v40);
    sub_1B9F0A534(v40, v39);
    sub_1B9F0D950(0, &unk_1EDC66C80, &protocol descriptor for DataTypeDetailComponent);
    sub_1BA2F68FC(0, &qword_1EDC60ED0, &protocol descriptor for DataTypeDetailChildComponentMutating, &protocol descriptor for DataTypeDetailComponent, 1);
    if (swift_dynamicCast())
    {
      sub_1BA0956E8(&v36, &v43);
      LOBYTE(v36) = v32;
      v16 = *(&v44 + 1);
      v15 = v45;
      __swift_mutable_project_boxed_opaque_existential_1(&v43, *(&v44 + 1));
      if ((*(v15 + 40))(a1, a2, a3, &v36, v16, v15))
      {
        v24 = *(&v44 + 1);
        v25 = *(&v45 + 1);
        v26 = __swift_project_boxed_opaque_existential_1(&v43, *(&v44 + 1));
        *(&v37 + 1) = v24;
        *&v38 = v25;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v36);
        (*(*(v24 - 8) + 16))(boxed_opaque_existential_1, v26, v24);
        result = swift_isUniquelyReferenced_nonNull_native();
        v4 = v31;
        *v31 = v9;
        if ((result & 1) == 0)
        {
          goto LABEL_34;
        }

        goto LABEL_26;
      }

      __swift_destroy_boxed_opaque_existential_1(&v43);
    }

    else
    {
      v37 = 0u;
      v38 = 0u;
      v36 = 0u;
      sub_1BA0955CC(&v36);
    }

    v17 = v41;
    v18 = v42;
    __swift_project_boxed_opaque_existential_1(v40, v41);
    v19 = (*(v18 + 24))(v17, v18);
    v4 = v20;
    if (v19 == a2 && v20 == a3)
    {
      break;
    }

    v22 = sub_1BA4A8338();

    if (v22)
    {
      goto LABEL_17;
    }

    __swift_destroy_boxed_opaque_existential_1(v40);
    v8 = v11;
  }

LABEL_17:
  v23 = v35;
  if ((a4 & 1) == 0)
  {
LABEL_21:
    v4 = v31;
    goto LABEL_22;
  }

  v23 = v35 + 1;
  v4 = v31;
  if (__OFADD__(v35, 1))
  {
    __break(1u);
    goto LABEL_21;
  }

LABEL_22:
  if (v9[2] < v23)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if ((v23 & 0x8000000000000000) == 0)
  {
    sub_1B9F0A534(a1, &v43);
    sub_1BA0F135C(v23, v23, &v43);
LABEL_29:
    __swift_destroy_boxed_opaque_existential_1(v40);
    return v5 != 0;
  }

LABEL_33:
  __break(1u);
LABEL_34:
  result = sub_1BA2F67AC(v9);
  v9 = result;
  *v4 = result;
LABEL_26:
  if ((v35 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v35 < v9[2])
  {
    v29 = &v9[5 * v35];
    __swift_destroy_boxed_opaque_existential_1(v29 + 4);
    sub_1B9F1134C(&v36, (v29 + 4));
    *v4 = v9;
    __swift_destroy_boxed_opaque_existential_1(&v43);
    goto LABEL_29;
  }

  __break(1u);
  return result;
}

uint64_t DataTypeDetailChildComponentMutating.insertComponent(_:at:direction:)(uint64_t a1, uint64_t a2, void *a3, unsigned __int8 *a4, uint64_t a5, uint64_t a6)
{
  v40 = *a4;
  v35 = *(a6 + 8);
  v11 = v35(a5, a6);
  v12 = 0;
  v13 = *(v11 + 16);
  while (1)
  {
    v14 = v13;
    v15 = 0uLL;
    v16 = 0uLL;
    v17 = 0uLL;
    if (v12 != v13)
    {
      if (v12 >= *(v11 + 16))
      {
        __break(1u);
        goto LABEL_30;
      }

      v14 = v12 + 1;
      *&v49 = v12;
      sub_1B9F0A534(v11 + 32 + 40 * v12, &v49 + 8);
      v15 = v49;
      v16 = v50;
      v17 = v51;
    }

    v52[0] = v15;
    v52[1] = v16;
    v8 = v17;
    v52[2] = v17;
    if (!v17)
    {

      return v8 != 0;
    }

    v41 = v15;
    sub_1B9F1134C((v52 + 8), v46);
    sub_1B9F0A534(v46, v45);
    sub_1B9F0D950(0, &unk_1EDC66C80, &protocol descriptor for DataTypeDetailComponent);
    sub_1BA2F68FC(0, &qword_1EDC60ED0, &protocol descriptor for DataTypeDetailChildComponentMutating, &protocol descriptor for DataTypeDetailComponent, 1);
    if (swift_dynamicCast())
    {
      sub_1BA0956E8(&v42, &v49);
      LOBYTE(v42) = v40;
      v18 = *(&v50 + 1);
      v19 = v51;
      __swift_mutable_project_boxed_opaque_existential_1(&v49, *(&v50 + 1));
      if ((*(v19 + 40))(a1, a2, a3, &v42, v18, v19))
      {

        v28 = *(&v50 + 1);
        v29 = *(&v51 + 1);
        v30 = __swift_project_boxed_opaque_existential_1(&v49, *(&v50 + 1));
        *(&v43 + 1) = v28;
        *&v44 = v29;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v42);
        (*(*(v28 - 8) + 16))(boxed_opaque_existential_1, v30, v28);
        v6 = (*(a6 + 24))(v45, a5);
        v14 = v32;
        v7 = *v32;
        result = swift_isUniquelyReferenced_nonNull_native();
        *v14 = v7;
        if ((result & 1) == 0)
        {
          goto LABEL_33;
        }

        goto LABEL_24;
      }

      __swift_destroy_boxed_opaque_existential_1(&v49);
    }

    else
    {
      v43 = 0u;
      v44 = 0u;
      v42 = 0u;
      sub_1BA0955CC(&v42);
    }

    v20 = v47;
    v21 = v48;
    __swift_project_boxed_opaque_existential_1(v46, v47);
    v22 = (*(v21 + 24))(v20, v21);
    v7 = v23;
    if (v22 == a2 && v23 == a3)
    {
      break;
    }

    v6 = sub_1BA4A8338();

    if (v6)
    {
      goto LABEL_18;
    }

    __swift_destroy_boxed_opaque_existential_1(v46);
    v12 = v14;
  }

LABEL_18:

  v14 = v41;
  v6 = a6;
  v7 = v36;
  if (v40)
  {
    v35(a5, a6);

    v14 = v41 + 1;
    if (__OFADD__(v41, 1))
    {
      goto LABEL_32;
    }
  }

  v25 = (*(a6 + 24))(&v42, a5, a6);
  if (*(*v26 + 16) < v14)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if ((v14 & 0x8000000000000000) == 0)
  {
    v27 = v25;
    sub_1B9F0A534(a1, &v49);
    sub_1BA0F135C(v14, v14, &v49);
    v27(&v42, 0);
    goto LABEL_27;
  }

LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  result = sub_1BA2F67AC(v7);
  v7 = result;
  *v14 = result;
LABEL_24:
  if ((v41 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v41 < v7[2])
  {
    v34 = &v7[5 * v41];
    __swift_destroy_boxed_opaque_existential_1(v34 + 4);
    sub_1B9F1134C(&v42, (v34 + 4));
    (v6)(v45, 0);
    __swift_destroy_boxed_opaque_existential_1(&v49);
LABEL_27:
    __swift_destroy_boxed_opaque_existential_1(v46);
    return v8 != 0;
  }

  __break(1u);
  return result;
}

uint64_t DataTypeDetailConfiguration.Context.healthExperienceStore.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1);

  return sub_1B9F1134C(a1, v1);
}

uint64_t DataTypeDetailConfiguration.Context.pinnedContentManager.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 64));

  return sub_1B9F1134C(a1, v1 + 64);
}

void *DataTypeDetailConfiguration.Context.chartContext.getter()
{
  v1 = *(v0 + 104);
  v2 = v1;
  return v1;
}

void *DataTypeDetailConfiguration.Context.restorationUserActivity.getter()
{
  v1 = *(v0 + 112);
  v2 = v1;
  return v1;
}

uint64_t DataTypeDetailConfiguration.HorizontalGroupComponent.makeDataSource(context:)(uint64_t a1)
{
  v3 = *(v1 + 16);
  type metadata accessor for MultiColumnDataSource(0);
  v14 = a1;
  v4 = sub_1BA2F4458(sub_1BA2F6B98, v13, v3);
  v5 = MultiColumnDataSource.__allocating_init(_:)(v4);
  v12[2] = a1;
  v6 = sub_1BA2F4458(sub_1BA2F6888, v12, v3);
  type metadata accessor for CompoundSectionedDataSource(0);
  swift_allocObject();
  v7 = CompoundSectionedDataSource.init(_:)(v6);
  sub_1BA2F68A4(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4B5460;
  *(inited + 32) = 1;
  *(inited + 56) = &protocol witness table for CompoundSectionedDataSource;
  *(inited + 64) = 2;
  *(inited + 40) = v7;
  *(inited + 48) = &protocol witness table for CompoundSectionedDataSource;
  *(inited + 72) = v5;
  *(inited + 80) = &protocol witness table for MutableArrayDataSourceWithLayout;
  *(inited + 88) = &protocol witness table for MutableArrayDataSource;
  v9 = sub_1B9F28D90(inited);
  swift_setDeallocating();
  sub_1B9F1ABA4(0);

  swift_arrayDestroy();
  type metadata accessor for SizeClassResponsiveDataSource();
  swift_allocObject();
  v10 = sub_1B9F1D348(v9, v7, &protocol witness table for CompoundSectionedDataSource, &protocol witness table for CompoundSectionedDataSource);

  return v10;
}

uint64_t sub_1BA2F648C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  v7 = (*(v6 + 32))(a2, v5, v6);
  swift_getAssociatedTypeWitness();
  result = swift_getAssociatedConformanceWitness();
  *a3 = v7;
  a3[1] = result;
  return result;
}

uint64_t DataTypeDetailConfiguration.VerticalGroupComponent.identifier.getter()
{
  v1 = *v0;

  return v1;
}

void DataTypeDetailConfiguration.VerticalGroupComponent.identifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t DataTypeDetailConfiguration.VerticalGroupComponent.makeDataSource(context:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  v6[2] = a1;
  sub_1BA24A478(sub_1BA2F6958, v6, v2);
  v4 = v3;
  type metadata accessor for CompoundSectionedDataSource(0);
  swift_allocObject();
  return CompoundSectionedDataSource.init(_:)(v4);
}

uint64_t sub_1BA2F66A0(uint64_t a1)
{
  v2 = *(v1 + 16);
  v6[2] = a1;
  sub_1BA24A478(sub_1BA2F6BC4, v6, v2);
  v4 = v3;
  type metadata accessor for CompoundSectionedDataSource(0);
  swift_allocObject();
  return CompoundSectionedDataSource.init(_:)(v4);
}

uint64_t DataTypeDetailConfiguration.MutationDirection.hashValue.getter()
{
  v1 = *v0;
  sub_1BA4A8488();
  MEMORY[0x1BFAF2ED0](v1);
  return sub_1BA4A84D8();
}

void sub_1BA2F68A4(uint64_t a1)
{
  if (!qword_1EDC5DB98)
  {
    sub_1B9F1ABA4(255);
    v1 = sub_1BA4A82E8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC5DB98);
    }
  }
}

uint64_t sub_1BA2F68FC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, char a5)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_1BA2F69B4()
{
  result = qword_1EBBF0410;
  if (!qword_1EBBF0410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF0410);
  }

  return result;
}

uint64_t sub_1BA2F6A40(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_1BA2F6A88(uint64_t result, int a2, int a3)
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double CategoryViewController.typeGroup.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = v1 + OBJC_IVAR____TtC18HealthExperienceUI22CategoryViewController_typeGroup;
  v4 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI22CategoryViewController_typeGroup);
  v3 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI22CategoryViewController_typeGroup + 8);
  v5 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI22CategoryViewController_typeGroup + 32);
  v6 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI22CategoryViewController_typeGroup + 40);
  *a1 = v4;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(v2 + 16);
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;

  return result;
}

uint64_t sub_1BA2F6D60()
{
  v4 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI22CategoryViewController_typeGroup);
  v5 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI22CategoryViewController_typeGroup + 8);
  v6 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI22CategoryViewController_typeGroup + 16);
  v7 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI22CategoryViewController_typeGroup + 32);
  v1 = HKTypeGroup.displayCategory.getter();
  v2 = [v1 categoryID];

  return HKDisplayCategoryIdentifier.sidebarFeedItemIdentifier.getter(v2);
}

uint64_t sub_1BA2F6DD4()
{
  v0 = sub_1B9F3B7C8();
  sub_1BA2F9758(0, &qword_1EDC5DC30, sub_1B9F3BF3C, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4B5460;
  v2 = sub_1BA4A4438();
  v3 = MEMORY[0x1E69DC130];
  *(inited + 32) = v2;
  *(inited + 40) = v3;
  v4 = sub_1BA0C3AC4();
  *(inited + 48) = &type metadata for TraitRootNavigationMode;
  *(inited + 56) = v4;
  sub_1B9F3BC30(inited);
  return v0;
}

void sub_1BA2F6E90(__int128 *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI22CategoryViewController_gradientView;
  swift_beginAccess();
  v5 = *(v3 + v4);
  v6 = *a1;
  *(v3 + v4) = *a1;
  v7 = v6;
}

id sub_1BA2F6EF8()
{
  v1 = (v0 + OBJC_IVAR____TtC18HealthExperienceUI22CategoryViewController_gradientView);
  swift_beginAccess();
  v2 = *v1;
  v3 = *v1;
  return v2;
}

void sub_1BA2F6F4C(uint64_t a1, uint64_t a2)
{
  v5 = v2 + OBJC_IVAR____TtC18HealthExperienceUI22CategoryViewController_gradientView;
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  *(v5 + 8) = a2;
}

double sub_1BA2F700C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI22CategoryViewController_gradientSubscriber;
  swift_beginAccess();
  *(v3 + v4) = v2;

  return result;
}

double sub_1BA2F7074()
{
  swift_beginAccess();

  return result;
}

double sub_1BA2F70BC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI22CategoryViewController_gradientSubscriber;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

uint64_t sub_1BA2F7174(uint64_t a1, uint64_t *a2)
{
  sub_1B9F0A534(a1, v6);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI22CategoryViewController_gradientColorProvider;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v3 + v4));
  sub_1B9F1134C(v6, v3 + v4);
  return swift_endAccess();
}

uint64_t sub_1BA2F71E0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI22CategoryViewController_gradientColorProvider;
  swift_beginAccess();
  return sub_1B9F0A534(v1 + v3, a1);
}

uint64_t sub_1BA2F7238(__int128 *a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI22CategoryViewController_gradientColorProvider;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v1 + v3));
  sub_1B9F1134C(a1, v1 + v3);
  return swift_endAccess();
}

double CategoryViewController.navigationBarStyle.getter@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI22CategoryViewController_navigationBarStyle);

  return result;
}

char *CategoryViewController.__allocating_init(typeGroup:healthStore:healthExperienceStore:pinnedContentManager:)(uint64_t *a1, void *a2, void *a3, void *a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = sub_1BA2F93F4(a1, a2, a3, a4);

  return v10;
}

char *CategoryViewController.init(typeGroup:healthStore:healthExperienceStore:pinnedContentManager:)(uint64_t *a1, void *a2, void *a3, void *a4)
{
  v5 = sub_1BA2F93F4(a1, a2, a3, a4);

  return v5;
}

id CategoryViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void CategoryViewController.init(coder:)()
{
  v1 = (v0 + OBJC_IVAR____TtC18HealthExperienceUI22CategoryViewController_gradientView);
  type metadata accessor for CategoryGradientView();
  *v1 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v1[1] = &protocol witness table for CategoryGradientView;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI22CategoryViewController_gradientSubscriber) = 0;
  sub_1BA4A8018();
  __break(1u);
}

id sub_1BA2F7534()
{
  v1 = sub_1BA4A6758();
  [v0 setTitle_];

  sub_1BA2F7CC0();
  result = [v0 collectionView];
  if (result)
  {
    v3 = result;
    sub_1B9F216C8(0, &qword_1EDC6E330, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1BA4B9FD0;
    *(v4 + 32) = 0xD000000000000016;
    *(v4 + 40) = 0x80000001BA4D09D0;
    v5 = HKDisplayCategoryIdentifierToString();
    if (v5)
    {
      v6 = v5;
      v7 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v9 = v8;
    }

    else
    {
      v9 = 0xE700000000000000;
      v7 = 0x6E776F6E6B6E55;
    }

    *(v4 + 48) = v7;
    *(v4 + 56) = v9;
    strcpy((v4 + 64), "CollectionView");
    *(v4 + 79) = -18;
    v10 = sub_1BA4A6AE8();

    v11 = HKUIJoinStringsForAutomationIdentifier();

    [v3 setAccessibilityIdentifier_];
    v12.receiver = v0;
    v12.super_class = type metadata accessor for CategoryViewController();
    return objc_msgSendSuper2(&v12, sel_viewDidLoad);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BA2F773C(char a1)
{
  v2 = v1;
  v4 = sub_1BA4A4018();
  MEMORY[0x1EEE9AC00](v4, v5);
  sub_1BA4A71E8();
  LOBYTE(v13[0]) = 3;
  sub_1B9F3AEE8();
  sub_1BA4A4008();
  sub_1BA4A71F8();
  v6 = type metadata accessor for CategoryViewController();
  v14.receiver = v1;
  v14.super_class = v6;
  objc_msgSendSuper2(&v14, sel_viewIsAppearing_, a1 & 1);
  result = [v1 collectionView];
  if (result)
  {
    v8 = result;
    v9 = [objc_opt_self() clearColor];
    [v8 setBackgroundColor_];

    sub_1BA17A850();
    v10 = OBJC_IVAR____TtC18HealthExperienceUI22CategoryViewController_gradientColorProvider;
    swift_beginAccess();
    sub_1B9F0A534(v2 + v10, v13);
    v11 = v13[4];
    __swift_project_boxed_opaque_existential_1(v13, v13[3]);
    v12 = [v2 traitCollection];
    (*(v11 + 16))();

    return __swift_destroy_boxed_opaque_existential_1(v13);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1BA2F7968(uint64_t a1)
{
  v17.receiver = v1;
  v17.super_class = type metadata accessor for CategoryViewController();
  objc_msgSendSuper2(&v17, sel_viewWillLayoutSubviews);
  v2 = [v1 collectionView];
  if (!v2)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = v2;
  [v2 contentOffset];
  v5 = v4;

  v6 = OBJC_IVAR____TtC18HealthExperienceUI22CategoryViewController_gradientView;
  swift_beginAccess();
  v7 = *&v1[v6];
  v8 = [v1 view];
  if (!v8)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v9 = v8;
  [v8 bounds];
  v11 = v10;

  v12 = [v1 view];
  if (!v12)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v13 = v12;
  if (v5 > 0.0)
  {
    v14 = -v5;
  }

  else
  {
    v14 = -0.0;
  }

  [v12 bounds];
  v16 = v15;

  [v7 setFrame_];
}

void sub_1BA2F7B18()
{
  v1 = v0;
  sub_1B9F36938();
  v2 = [v0 collectionView];
  if (!v2)
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = v2;
  type metadata accessor for DataTypeNoDataAvailableCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  swift_beginAccess();

  v5 = sub_1BA4A6758();

  [v3 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v5];

  v6 = [v1 collectionView];
  if (!v6)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v7 = v6;
  sub_1B9FF515C();

  v8 = [v1 collectionView];
  if (v8)
  {
    v9 = v8;
    sub_1B9FF5190();

    return;
  }

LABEL_7:
  __break(1u);
}

void sub_1BA2F7CC0()
{
  v1 = v0;
  sub_1BA142B40(0);
  v3 = v2;
  v4 = *(v2 - 8);
  *&v6 = MEMORY[0x1EEE9AC00](v2, v5).n128_u64[0];
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [v0 navigationItem];
  [v9 setLargeTitleDisplayMode_];

  v10 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI22CategoryViewController_navigationBarStyle];
  if (v10)
  {
    v18 = *(v10 + qword_1EDC6A560);
    v11 = MEMORY[0x1E695BF98];
    sub_1BA2F9FCC(0, &qword_1EDC6B720, MEMORY[0x1E695BF98]);
    sub_1BA2F9F88(&qword_1EDC6B730, &qword_1EDC6B720, v11, MEMORY[0x1E695BFB0]);

    v18 = sub_1BA4A4F98();
    v12 = MEMORY[0x1E695BED0];
    sub_1BA2F9FCC(0, &qword_1EDC6B738, MEMORY[0x1E695BED0]);
    sub_1B9F0CDE8(0, &qword_1EDC6E1E0, &qword_1EDC6E1F0, MEMORY[0x1E69A3208]);
    sub_1BA2F9F88(&qword_1EDC6B740, &qword_1EDC6B738, v12, MEMORY[0x1E695BED8]);
    sub_1BA4A4FE8();
    sub_1BA2FA06C(&qword_1EBBEC7C0, sub_1BA142B40, MEMORY[0x1E695BD60]);
    v13 = sub_1BA4A4F98();

    (*(v4 + 8))(v8, v3);
    v14 = objc_allocWithZone(type metadata accessor for ProfileNavigationBarView());
    v15 = sub_1BA25A190(v13, 0);
    v16 = [v1 navigationItem];
    [v16 setTitleView_];
  }
}

void sub_1BA2F7FC0()
{
  v1 = v0;
  v2 = sub_1BA4A35F8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BA4A3678();
  v8 = *(v7 - 8);
  *&v10 = MEMORY[0x1EEE9AC00](v7, v9).n128_u64[0];
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [v1 title];
  if (v13)
  {
    v14 = v13;
    _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  }

  (*(v8 + 104))(v12, *MEMORY[0x1E69A2C60], v7);
  v15 = sub_1BA4A35B8();

  (*(v8 + 8))(v12, v7);
  v16 = [v15 userInfo];
  if (v16)
  {
    v17 = v16;
    v18 = sub_1BA4A6628();

    (*(v3 + 104))(v6, *MEMORY[0x1E69A2B98], v2);
    v19 = sub_1BA4A35E8();
    v21 = v20;
    (*(v3 + 8))(v6, v2);
    v32 = v19;
    v33 = v21;
    sub_1BA4A7D58();
    v22 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI22CategoryViewController_typeGroup + 8];
    v32 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI22CategoryViewController_typeGroup];
    v33 = v22;
    v23 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI22CategoryViewController_typeGroup + 32];
    v34 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI22CategoryViewController_typeGroup + 16];
    v35 = v23;
    v24 = HKTypeGroup.displayCategory.getter();
    v25 = [v24 categoryID];

    v37 = MEMORY[0x1E69E6530];
    *&v36 = v25;
    sub_1B9F46920(&v36, v31);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v30 = v18;
    sub_1B9FF1AE4(v31, v38, isUniquelyReferenced_nonNull_native);
    sub_1B9FDC768(v38);
    if (v30)
    {
      v27 = sub_1BA4A6618();
    }

    else
    {
      v27 = 0;
    }

    [v15 setUserInfo_];
  }

  else
  {
    [v15 setUserInfo_];
  }

  v28 = [*&v1[OBJC_IVAR____TtC18HealthExperienceUI22CategoryViewController_providedHealthStore] profileIdentifier];
  sub_1BA4A7098();

  [v1 setUserActivity_];
}

uint64_t sub_1BA2F8384(void (**a1)(char *, uint64_t))
{
  ObjectType = swift_getObjectType();
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  v108 = v2;
  v109 = v3;
  MEMORY[0x1EEE9AC00](v2, v4);
  v102 = &v98 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v98 - v8;
  MEMORY[0x1EEE9AC00](v10, v11);
  v106 = &v98 - v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v101 = (&v98 - v15);
  sub_1BA2F9758(0, &qword_1EBBED070, MEMORY[0x1E69A2C78], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v19 = &v98 - v18;
  v20 = sub_1BA4A3678();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v22);
  v100 = &v98 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v103 = &v98 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v98 - v29;
  *&v33 = MEMORY[0x1EEE9AC00](v31, v32).n128_u64[0];
  v35 = &v98 - v34;
  v105 = a1;
  v36 = [a1 activityType];
  _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

  sub_1BA4A3688();
  v37 = v20;
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    sub_1B9F0DE60(v19, &qword_1EBBED070, MEMORY[0x1E69A2C78], MEMORY[0x1E69E6720], sub_1BA2F9758);
    sub_1BA4A3E48();
    v38 = sub_1BA4A3E88();
    v39 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *&v115[0] = v41;
      *v40 = 136446210;
      *&v123[0] = ObjectType;
      swift_getMetatypeMetadata();
      v42 = sub_1BA4A6808();
      v44 = sub_1B9F0B82C(v42, v43, v115);

      *(v40 + 4) = v44;
      _os_log_impl(&dword_1B9F07000, v38, v39, "[%{public}s] user activity passed in does not have a valid activity type", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v41);
      MEMORY[0x1BFAF43A0](v41, -1, -1);
      MEMORY[0x1BFAF43A0](v40, -1, -1);
    }

    return (*(v109 + 8))(v9, v108);
  }

  else
  {
    (*(v21 + 32))(v35, v19, v20);
    v46 = *(v21 + 16);
    v46(v30, v35, v20);
    v47 = (*(v21 + 88))(v30, v20);
    if (v47 == *MEMORY[0x1E69A2C08] || v47 == *MEMORY[0x1E69A2C00])
    {
      v99 = v35;
      v70 = v104;
      v71 = UIViewController.resolvedHealthStore.getter();
      if (v71)
      {
        v72 = v71;
        UIViewController.resolvedHealthExperienceStore.getter(v122);
        v73 = v72;
        v74 = [v73 profileIdentifier];
        LOBYTE(v115[0]) = 15;
        LOBYTE(v72) = _s18HealthExperienceUI18DataTypeDetailModeO07defaultG03for12presentationACSo19HKProfileIdentifierC_AA12PresentationOSgtFZ_0(v74, v115);

        sub_1B9F0A534(v70 + OBJC_IVAR____TtC18HealthExperienceUI22CategoryViewController_pinnedContentManager, v121);
        sub_1B9F0A534(v122, v115);
        *(&v116 + 1) = v73;
        LOBYTE(v117) = v72;
        sub_1BA4A2488();
        swift_allocObject();
        v75 = v73;
        *(&v117 + 1) = sub_1BA4A2468();
        sub_1BA10F7B4(v121, &v110);
        if (v111)
        {

          sub_1B9F0DE60(v121, &unk_1EDC6ADB0, &qword_1EDC6ADC0, MEMORY[0x1E69A3D48], sub_1B9F0CDE8);
          __swift_destroy_boxed_opaque_existential_1(v122);
          sub_1B9F1134C(&v110, &v112);
          v76 = v99;
          v77 = v105;
        }

        else
        {
          v93 = sub_1BA4A22B8();
          v94 = sub_1BA4A22A8();
          v113 = v93;
          v114 = MEMORY[0x1E69A3CF8];
          *&v112 = v94;
          sub_1B9F0DE60(v121, &unk_1EDC6ADB0, &qword_1EDC6ADC0, MEMORY[0x1E69A3D48], sub_1B9F0CDE8);
          __swift_destroy_boxed_opaque_existential_1(v122);
          v76 = v99;
          v77 = v105;
          if (v111)
          {
            sub_1B9F0DE60(&v110, &unk_1EDC6ADB0, &qword_1EDC6ADC0, MEMORY[0x1E69A3D48], sub_1B9F0CDE8);
          }
        }

        sub_1B9F1134C(&v112, v118);
        v120 = 0;
        v123[4] = v118[0];
        v123[5] = v118[1];
        v123[0] = v115[0];
        v123[1] = v115[1];
        v123[2] = v116;
        v123[3] = v117;
        v124 = 0;
        v123[6] = v119;
        v95 = HKTDataTypeDetailFactory.createViewController(userActivity:context:)(v77, v123);
        v96 = [v70 navigationController];
        if (v96)
        {
          v97 = v96;
          [v96 pushViewController:v95 animated:0];
        }

        [v95 restoreUserActivityState_];

        sub_1BA114E30(v123);
        return (*(v21 + 8))(v76, v37);
      }

      else
      {
        v78 = v101;
        sub_1BA4A3DD8();
        v79 = v105;
        v80 = sub_1BA4A3E88();
        v81 = sub_1BA4A6FA8();

        if (os_log_type_enabled(v80, v81))
        {
          v82 = swift_slowAlloc();
          v83 = swift_slowAlloc();
          v105 = v21;
          v84 = v83;
          *&v115[0] = v83;
          *v82 = 136446466;
          *&v123[0] = ObjectType;
          swift_getMetatypeMetadata();
          v85 = sub_1BA4A6808();
          v87 = sub_1B9F0B82C(v85, v86, v115);

          *(v82 + 4) = v87;
          *(v82 + 12) = 2080;
          v88 = [v79 activityType];
          v89 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
          v91 = v90;

          v92 = sub_1B9F0B82C(v89, v91, v115);

          *(v82 + 14) = v92;
          _os_log_impl(&dword_1B9F07000, v80, v81, "[%{public}s]: Failed to create viewcontrollers from UserActivity %s", v82, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1BFAF43A0](v84, -1, -1);
          MEMORY[0x1BFAF43A0](v82, -1, -1);

          (*(v109 + 8))(v101, v108);
          return (v105[1])(v99, v37);
        }

        else
        {

          (*(v109 + 8))(v78, v108);
          return (*(v21 + 8))(v99, v20);
        }
      }
    }

    else
    {
      v48 = v106;
      sub_1BA4A3DD8();
      v49 = v103;
      v46(v103, v35, v37);
      v50 = sub_1BA4A3E88();
      LODWORD(v104) = sub_1BA4A6F98();
      if (os_log_type_enabled(v50, v104))
      {
        v51 = swift_slowAlloc();
        v101 = v50;
        v52 = v51;
        v102 = swift_slowAlloc();
        *&v115[0] = v102;
        *v52 = 136446466;
        *&v123[0] = ObjectType;
        swift_getMetatypeMetadata();
        v53 = sub_1BA4A6808();
        v55 = sub_1B9F0B82C(v53, v54, v115);
        v105 = v21;
        v56 = v49;
        v57 = v37;
        v58 = v55;

        *(v52 + 4) = v58;
        v99 = v35;
        v59 = v57;
        *(v52 + 12) = 2080;
        v46(v100, v56, v57);
        v60 = sub_1BA4A6808();
        v61 = v30;
        v63 = v62;
        v64 = v105[1];
        v64(v56, v59);
        v65 = sub_1B9F0B82C(v60, v63, v115);
        v30 = v61;

        *(v52 + 14) = v65;
        v66 = v101;
        _os_log_impl(&dword_1B9F07000, v101, v104, "[%{public}s]: no restoration configured for %s", v52, 0x16u);
        v67 = v102;
        swift_arrayDestroy();
        MEMORY[0x1BFAF43A0](v67, -1, -1);
        MEMORY[0x1BFAF43A0](v52, -1, -1);

        (*(v109 + 8))(v106, v108);
        v68 = v99;
        v37 = v59;
        v69 = v59;
      }

      else
      {

        v64 = *(v21 + 8);
        v64(v49, v37);
        (*(v109 + 8))(v48, v108);
        v68 = v35;
        v69 = v37;
      }

      v64(v68, v69);
      return (v64)(v30, v37);
    }
  }
}

id CategoryViewController.__allocating_init(collectionViewLayout:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCollectionViewLayout_];

  return v3;
}

double sub_1BA2F91C8()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC18HealthExperienceUI22CategoryViewController_healthExperienceStore));

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC18HealthExperienceUI22CategoryViewController_pinnedContentManager));

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC18HealthExperienceUI22CategoryViewController_gradientColorProvider));

  return result;
}

id CategoryViewController.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for CategoryViewController();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

char *sub_1BA2F93F4(uint64_t *a1, void *a2, void *a3, void *a4)
{
  v5 = v4;
  v9 = *a1;
  v8 = a1[1];
  v11 = a1[2];
  v10 = a1[3];
  v12 = a1[4];
  v13 = a1[5];
  v14 = (v5 + OBJC_IVAR____TtC18HealthExperienceUI22CategoryViewController_gradientView);
  type metadata accessor for CategoryGradientView();
  *v14 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v14[1] = &protocol witness table for CategoryGradientView;
  *(v5 + OBJC_IVAR____TtC18HealthExperienceUI22CategoryViewController_gradientSubscriber) = 0;
  v15 = (v5 + OBJC_IVAR____TtC18HealthExperienceUI22CategoryViewController_typeGroup);
  *v15 = v9;
  v15[1] = v8;
  v15[2] = v11;
  v15[3] = v10;
  v15[4] = v12;
  v15[5] = v13;
  *(v5 + OBJC_IVAR____TtC18HealthExperienceUI22CategoryViewController_providedHealthStore) = a2;
  sub_1B9F0A534(a3, v5 + OBJC_IVAR____TtC18HealthExperienceUI22CategoryViewController_healthExperienceStore);
  sub_1B9F0A534(a4, v5 + OBJC_IVAR____TtC18HealthExperienceUI22CategoryViewController_pinnedContentManager);
  v32 = v11;
  *&v34 = v9;
  *(&v34 + 1) = v8;
  v35 = v11;
  v16 = v10;
  v17 = a3;
  v36 = v16;
  v37 = v12;
  v38 = v13;
  v18 = a2;

  v19 = HKTypeGroup.displayCategory.getter();
  sub_1B9F0A534(v17, v33);
  type metadata accessor for CategoryViewControllerDataSource(0);
  swift_allocObject();
  v20 = v18;
  v21 = sub_1BA21FD1C(v19, v20, v33);

  *(v5 + OBJC_IVAR____TtC18HealthExperienceUI22CategoryViewController_categoryViewDataSource) = v21;
  v22 = [v20 profileIdentifier];
  __swift_project_boxed_opaque_existential_1(v17, v17[3]);
  v23 = sub_1BA4A1B68();
  if ([v22 type] == 1)
  {

    v24 = 0;
  }

  else
  {
    type metadata accessor for HealthKitProfileInformationDataSource(0);
    swift_allocObject();
    v24 = sub_1BA2B8F0C(v23, v22, 0, 0, 0, 0);
  }

  *(v5 + OBJC_IVAR____TtC18HealthExperienceUI22CategoryViewController_navigationBarStyle) = v24;
  *&v34 = v9;
  *(&v34 + 1) = v8;
  v35 = v32;
  v36 = v16;
  v37 = v12;
  v38 = v13;
  v25 = HKTypeGroup.displayCategory.getter();

  v26 = [v25 color];

  if (!v26)
  {
    v26 = [objc_opt_self() clearColor];
  }

  v36 = &type metadata for CategoryGradientColorProvider;
  v37 = &protocol witness table for CategoryGradientColorProvider;
  v33[0] = MEMORY[0x1E69E7CC0];
  sub_1B9F10B50(0);
  swift_allocObject();
  v27 = sub_1BA4A4DF8();
  *&v34 = v26;
  *(&v34 + 1) = v27;
  sub_1B9F1134C(&v34, v5 + OBJC_IVAR____TtC18HealthExperienceUI22CategoryViewController_gradientColorProvider);

  v29 = CompoundDataSourceCollectionViewController.init(dataSource:)(v28);
  __swift_destroy_boxed_opaque_existential_1(a4);
  __swift_destroy_boxed_opaque_existential_1(v17);
  return v29;
}

void sub_1BA2F9758(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

char *_s18HealthExperienceUI22CategoryViewControllerC04makedeF012userActivity11healthStore0jbK020pinnedContentManagerACSgSo06NSUserI0C_So08HKHealthK0C0A8Platform0abK0_pAN06PinnedM8Managing_ptFZ_0(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1BA4A3EA8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1BA4A35F8();
  v14 = *(v13 - 8);
  v16 = MEMORY[0x1EEE9AC00](v13, v15);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 104))(v18, *MEMORY[0x1E69A2B98], v13, v16);
  sub_1BA2FA06C(&qword_1EDC6ACD8, MEMORY[0x1E69A2BC0], MEMORY[0x1E69A2BD8]);
  sub_1BA4A70C8();
  (*(v14 + 8))(v18, v13);
  if (v40[3])
  {
    if (swift_dynamicCast())
    {
      v19 = [objc_opt_self() categoryWithID_];
      if (v19)
      {
        v20 = v19;
        static HKTypeGroup.typeGroup(for:)(v40);
        sub_1B9F0A534(a3, v39);
        sub_1B9F0A534(a4, v38);
        v21 = objc_allocWithZone(type metadata accessor for CategoryViewController());
        v22 = a2;
        v23 = sub_1BA2F93F4(v40, v22, v39, v38);

        return v23;
      }
    }
  }

  else
  {
    sub_1B9F0DE60(v40, &qword_1EDC6E300, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1B9F216C8);
  }

  sub_1BA4A3DD8();
  v25 = a1;
  v26 = sub_1BA4A3E88();
  v27 = sub_1BA4A6FB8();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v40[0] = v29;
    *v28 = 136446210;
    v30 = v25;
    v31 = [v30 description];
    v32 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v37 = v8;
    v34 = v33;

    v35 = sub_1B9F0B82C(v32, v34, v40);

    *(v28 + 4) = v35;
    _os_log_impl(&dword_1B9F07000, v26, v27, "Couldn't unpack the type group from the sending NSUserActivity. sender = %{public}s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v29);
    MEMORY[0x1BFAF43A0](v29, -1, -1);
    MEMORY[0x1BFAF43A0](v28, -1, -1);

    (*(v9 + 8))(v12, v37);
  }

  else
  {

    (*(v9 + 8))(v12, v8);
  }

  return 0;
}

uint64_t sub_1BA2F9ED4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BA2F9F24(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1BA2F9F88(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void, void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1BA2F9FCC(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1BA2F9FCC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void, void))
{
  if (!*a2)
  {
    sub_1BA2F9758(255, &qword_1EDC6E200, MEMORY[0x1E69A3108], MEMORY[0x1E69E6720]);
    v7 = a3(a1, v6, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7410]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1BA2FA06C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BA2FA100(uint64_t a1)
{
  v2 = v1;
  sub_1B9FF522C();
  v4 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  sub_1BA162E6C(v4, v5);

  v6 = sub_1B9F119F8(*(v2 + OBJC_IVAR____TtC18HealthExperienceUI22PluginSearchDataSource_pluginBundleName), *(v2 + OBJC_IVAR____TtC18HealthExperienceUI22PluginSearchDataSource_pluginBundleName + 8));
  if (v6 && (v14[0] = v6, v14[1] = v7, sub_1B9F0D9AC(0, qword_1EDC681A8, &protocol descriptor for PluginAppDelegate, 0), sub_1B9F0D9AC(0, qword_1EDC64E28, &protocol descriptor for PluginSearchResultProviding, 1), (swift_dynamicCast() & 1) != 0))
  {
    if (*(&v12 + 1))
    {
      sub_1B9F1134C(&v11, v14);
      v8 = v15;
      v9 = v16;
      __swift_project_boxed_opaque_existential_1(v14, v15);
      (*(v9 + 16))(a1, v8, v9);
      return __swift_destroy_boxed_opaque_existential_1(v14);
    }
  }

  else
  {
    v13 = 0;
    v11 = 0u;
    v12 = 0u;
  }

  return sub_1BA2FA864(&v11);
}

void sub_1BA2FA238(uint64_t a1@<X2>, void *a2@<X8>)
{
  v3 = v2;
  v69 = a1;
  v5 = sub_1BA4A4428();
  v67 = *(v5 - 8);
  v68 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v65 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v66 = &v55 - v10;
  sub_1B9F12538();
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  swift_beginAccess();
  (*(v13 + 16))(v16, v3 + v17, v12);
  v18 = sub_1BA4A4578();
  (*(v13 + 8))(v16, v12);
  v19 = *(v18 + 16);
  v20 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_sections;
  swift_beginAccess();
  if (v19)
  {
    v21 = 0;
    v22 = v18 + 40;
    v62 = v19 - 1;
    v23 = MEMORY[0x1E69E7CC0];
    v63 = v18 + 40;
    v64 = a2;
    while (1)
    {
      v24 = (v22 + 16 * v21);
      v25 = v21;
      while (1)
      {
        if (v25 >= *(v18 + 16))
        {
          __break(1u);
          goto LABEL_27;
        }

        v26 = *(v3 + v20);
        if (*(v26 + 16))
        {
          break;
        }

LABEL_4:
        ++v25;
        v24 += 2;
        if (v19 == v25)
        {
          a2 = v64;
          goto LABEL_18;
        }
      }

      v27 = *(v24 - 1);
      v28 = *v24;

      v29 = sub_1B9F24A34(v27, v28);
      if ((v30 & 1) == 0)
      {
        break;
      }

      v31 = (*(v26 + 56) + 48 * v29);
      v32 = *v31;
      v60 = v31[1];
      v61 = v32;
      v34 = v31[2];
      v33 = v31[3];
      v35 = v31[4];
      v56 = v31[5];
      v57 = v35;

      v59 = v34;

      v58 = v33;
      v36 = v56;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = sub_1B9F21540(0, *(v23 + 2) + 1, 1, v23);
      }

      v22 = v63;
      v38 = *(v23 + 2);
      v37 = *(v23 + 3);
      if (v38 >= v37 >> 1)
      {
        v23 = sub_1B9F21540((v37 > 1), v38 + 1, 1, v23);
      }

      v21 = v25 + 1;
      *(v23 + 2) = v38 + 1;
      v39 = &v23[48 * v38];
      v40 = v60;
      *(v39 + 4) = v61;
      *(v39 + 5) = v40;
      v41 = v58;
      *(v39 + 6) = v59;
      *(v39 + 7) = v41;
      *(v39 + 8) = v57;
      *(v39 + 9) = v36;
      v42 = v62 == v25;
      a2 = v64;
      if (v42)
      {
        goto LABEL_18;
      }
    }

    goto LABEL_4;
  }

  v23 = MEMORY[0x1E69E7CC0];
LABEL_18:

  v43 = sub_1BA4A1968();
  if ((v43 & 0x8000000000000000) != 0)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v43 >= *(v23 + 2))
  {
LABEL_28:
    __break(1u);
    return;
  }

  v44 = &v23[48 * v43];
  v46 = *(v44 + 4);
  v45 = *(v44 + 5);

  if (v45)
  {
    v47 = v46;
  }

  else
  {
    v47 = 0;
  }

  if (!v45)
  {
    v45 = 0xE000000000000000;
  }

  v48 = v66;
  _s18HealthExperienceUI29CollectionViewHeaderProvidingPAAE24makeDefaultConfiguration5UIKit013UIListContentJ0VyFZ_0();
  v50 = v67;
  v49 = v68;
  v51 = v65;
  (*(v67 + 16))(v65, v48, v68);
  v52 = type metadata accessor for HeaderItem(0);
  swift_allocObject();
  HeaderItem.init(title:buttonText:buttonWasTapped:configuration:automationIdentifier:)(v47, v45, 0, 0, 0, 0, v51, 0, 0);
  v54 = v53;
  (*(v50 + 8))(v48, v49);
  a2[3] = v52;
  a2[4] = sub_1BA011754();
  *a2 = v54;
}

uint64_t sub_1BA2FA71C()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1BA2FA864(uint64_t a1)
{
  sub_1B9F14FAC(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id CloudSyncFlow.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1BA2FA944(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC18HealthExperienceUI13CloudSyncFlow_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1BA2FA9B0(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC18HealthExperienceUI13CloudSyncFlow_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1BA001DB4;
}

uint64_t sub_1BA2FAA50(uint64_t a1)
{
  sub_1BA011090(0);
  v160 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v156 = &v146 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v155 = &v146 - v7;
  MEMORY[0x1EEE9AC00](v8, v9);
  v157 = &v146 - v10;
  MEMORY[0x1EEE9AC00](v11, v12);
  v152 = &v146 - v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  v150 = &v146 - v16;
  MEMORY[0x1EEE9AC00](v17, v18);
  v151 = &v146 - v19;
  MEMORY[0x1EEE9AC00](v20, v21);
  v159 = &v146 - v22;
  v23 = sub_1BA4A3EA8();
  v24 = *(v23 - 8);
  v162 = v23;
  v163 = v24;
  MEMORY[0x1EEE9AC00](v23, v25);
  v158 = &v146 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v28);
  v154 = &v146 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v153 = &v146 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v36 = &v146 - v35;
  MEMORY[0x1EEE9AC00](v37, v38);
  v149 = &v146 - v39;
  MEMORY[0x1EEE9AC00](v40, v41);
  v147 = &v146 - v42;
  MEMORY[0x1EEE9AC00](v43, v44);
  v148 = &v146 - v45;
  MEMORY[0x1EEE9AC00](v46, v47);
  v49 = &v146 - v48;
  v50 = sub_1BA4A2918();
  MEMORY[0x1EEE9AC00](v50, v51);
  v53 = &v146 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v54, v55);
  v57 = &v146 - v56;
  MEMORY[0x1EEE9AC00](v58, v59);
  v61 = &v146 - v60;
  MEMORY[0x1EEE9AC00](v62, v63);
  v65 = &v146 - v64;
  MEMORY[0x1EEE9AC00](v66, v67);
  v69 = &v146 - v68;
  v70 = a1;
  sub_1BA2FC0F4(a1, &v146 - v68, MEMORY[0x1E69A3190]);
  v71 = v69;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_1BA4A3E68();
      v99 = sub_1BA4A3E88();
      v100 = sub_1BA4A6FC8();
      if (os_log_type_enabled(v99, v100))
      {
        v101 = swift_slowAlloc();
        *v101 = 0;
        _os_log_impl(&dword_1B9F07000, v99, v100, "Executing flow iCloud Settings", v101, 2u);
        MEMORY[0x1BFAF43A0](v101, -1, -1);
      }

      (*(v163 + 8))(v36, v162);
      if (qword_1EBBE8798 != -1)
      {
        swift_once();
      }

      v102 = __swift_project_value_buffer(v160, qword_1EBBF0460);
      v103 = v157;
LABEL_62:
      sub_1BA2FC0F4(v102, v103, sub_1BA011090);
      v138 = sub_1BA4A15D8();
      v139 = *(v138 - 8);
      if ((*(v139 + 48))(v103, 1, v138) == 1)
      {
        sub_1BA2FC15C(v103, sub_1BA011090);
      }

      else
      {
        sub_1BA4A1538();
        (*(v139 + 8))(v103, v138);
      }

      v127 = v161;
      v140 = v161 + OBJC_IVAR____TtC18HealthExperienceUI13CloudSyncFlow_delegate;
      swift_beginAccess();
      if (!swift_unknownObjectWeakLoadStrong())
      {
        goto LABEL_68;
      }

      v128 = *(v140 + 8);
LABEL_67:
      ObjectType = swift_getObjectType();
      (*(v128 + 16))(v127, ObjectType, v128);
      swift_unknownObjectRelease();
LABEL_68:
      v117 = MEMORY[0x1E69A3190];
      v118 = v71;
      return sub_1BA2FC15C(v118, v117);
    }

    v74 = v69;
    if (EnumCaseMultiPayload != 4)
    {
      goto LABEL_15;
    }
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      sub_1BA2FC0F4(v69, v57, MEMORY[0x1E69A3190]);
      if (*v57 == 1)
      {
        v93 = v153;
        sub_1BA4A3E68();
        v94 = sub_1BA4A3E88();
        v95 = sub_1BA4A6FC8();
        if (os_log_type_enabled(v94, v95))
        {
          v96 = swift_slowAlloc();
          *v96 = 0;
          _os_log_impl(&dword_1B9F07000, v94, v95, "Executing flow iCloud needs update", v96, 2u);
          MEMORY[0x1BFAF43A0](v96, -1, -1);
        }

        (*(v163 + 8))(v93, v162);
        v97 = v155;
        if (qword_1EBBE87B0 != -1)
        {
          swift_once();
        }

        v98 = qword_1EBBF04A8;
      }

      else
      {
        v119 = v154;
        sub_1BA4A3E68();
        v120 = sub_1BA4A3E88();
        v121 = sub_1BA4A6FC8();
        if (os_log_type_enabled(v120, v121))
        {
          v122 = swift_slowAlloc();
          *v122 = 0;
          _os_log_impl(&dword_1B9F07000, v120, v121, "Executing flow iCloud Settings", v122, 2u);
          MEMORY[0x1BFAF43A0](v122, -1, -1);
        }

        (*(v163 + 8))(v119, v162);
        v97 = v156;
        if (qword_1EBBE8798 != -1)
        {
          swift_once();
        }

        v98 = qword_1EBBF0460;
      }

      v123 = __swift_project_value_buffer(v160, v98);
      sub_1BA2FC0F4(v123, v97, sub_1BA011090);
      v124 = sub_1BA4A15D8();
      v125 = *(v124 - 8);
      if ((*(v125 + 48))(v97, 1, v124) == 1)
      {
        sub_1BA2FC15C(v97, sub_1BA011090);
      }

      else
      {
        sub_1BA4A1538();
        (*(v125 + 8))(v97, v124);
      }

      v126 = OBJC_IVAR____TtC18HealthExperienceUI13CloudSyncFlow_delegate;
      v127 = v161;
      swift_beginAccess();
      if (!swift_unknownObjectWeakLoadStrong())
      {
        goto LABEL_68;
      }

      v128 = *(v127 + v126 + 8);
      goto LABEL_67;
    }

    if (EnumCaseMultiPayload == 1)
    {
      sub_1BA2FC0F4(v69, v61, MEMORY[0x1E69A3190]);
      v73 = *v61;
      if (*v61)
      {
        if (v73 != 1)
        {
          v74 = v69;
          if (v73 == 2)
          {
            v75 = v148;
            sub_1BA4A3E68();
            v76 = sub_1BA4A3E88();
            v77 = sub_1BA4A6FC8();
            if (os_log_type_enabled(v76, v77))
            {
              v78 = swift_slowAlloc();
              *v78 = 0;
              _os_log_impl(&dword_1B9F07000, v76, v77, "Executing flow software update", v78, 2u);
              MEMORY[0x1BFAF43A0](v78, -1, -1);
            }

            (*(v163 + 8))(v75, v162);
            v79 = v151;
            if (qword_1EBBE87A0 != -1)
            {
              swift_once();
            }

            v80 = __swift_project_value_buffer(v160, qword_1EBBF0478);
            sub_1BA2FC0F4(v80, v79, sub_1BA011090);
            v81 = sub_1BA4A15D8();
            v82 = *(v81 - 8);
            if ((*(v82 + 48))(v79, 1, v81) == 1)
            {
              sub_1BA2FC15C(v79, sub_1BA011090);
            }

            else
            {
              sub_1BA4A1538();
              (*(v82 + 8))(v79, v81);
            }

            v142 = v161;
            v143 = v161 + OBJC_IVAR____TtC18HealthExperienceUI13CloudSyncFlow_delegate;
            swift_beginAccess();
            if (swift_unknownObjectWeakLoadStrong())
            {
              v144 = *(v143 + 8);
              v145 = swift_getObjectType();
              (*(v144 + 16))(v142, v145, v144);
              swift_unknownObjectRelease();
            }

            goto LABEL_40;
          }

LABEL_15:
          v83 = v158;
          sub_1BA4A3E68();
          sub_1BA2FC0F4(v70, v53, MEMORY[0x1E69A3190]);
          v84 = sub_1BA4A3E88();
          v85 = sub_1BA4A6FB8();
          if (os_log_type_enabled(v84, v85))
          {
            v86 = swift_slowAlloc();
            v87 = swift_slowAlloc();
            v164[0] = v87;
            *v86 = 136446210;
            v88 = MEMORY[0x1E69A3190];
            sub_1BA2FC0F4(v53, v65, MEMORY[0x1E69A3190]);
            v89 = sub_1BA4A6808();
            v91 = v90;
            sub_1BA2FC15C(v53, v88);
            v92 = sub_1B9F0B82C(v89, v91, v164);

            *(v86 + 4) = v92;
            _os_log_impl(&dword_1B9F07000, v84, v85, "Unexpected cloud sync state received: %{public}s", v86, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v87);
            MEMORY[0x1BFAF43A0](v87, -1, -1);
            MEMORY[0x1BFAF43A0](v86, -1, -1);
          }

          else
          {

            sub_1BA2FC15C(v53, MEMORY[0x1E69A3190]);
          }

          (*(v163 + 8))(v83, v162);
LABEL_40:
          v117 = MEMORY[0x1E69A3190];
          v118 = v74;
          return sub_1BA2FC15C(v118, v117);
        }

        v129 = v149;
        sub_1BA4A3E68();
        v130 = sub_1BA4A3E88();
        v131 = sub_1BA4A6FC8();
        if (os_log_type_enabled(v130, v131))
        {
          v132 = swift_slowAlloc();
          *v132 = 0;
          _os_log_impl(&dword_1B9F07000, v130, v131, "Executing flow iCloud login UI", v132, 2u);
          MEMORY[0x1BFAF43A0](v132, -1, -1);
        }

        (*(v163 + 8))(v129, v162);
        v103 = v152;
        if (qword_1EBBE87A8 != -1)
        {
          swift_once();
        }

        v133 = qword_1EBBF0490;
      }

      else
      {
        v134 = v147;
        sub_1BA4A3E68();
        v135 = sub_1BA4A3E88();
        v136 = sub_1BA4A6FC8();
        if (os_log_type_enabled(v135, v136))
        {
          v137 = swift_slowAlloc();
          *v137 = 0;
          _os_log_impl(&dword_1B9F07000, v135, v136, "Executing flow iCloud storage UI", v137, 2u);
          MEMORY[0x1BFAF43A0](v137, -1, -1);
        }

        (*(v163 + 8))(v134, v162);
        v103 = v150;
        if (qword_1EBBE87B8 != -1)
        {
          swift_once();
        }

        v133 = qword_1EBBF04C0;
      }

      v102 = __swift_project_value_buffer(v160, v133);
      goto LABEL_62;
    }

    v74 = v69;
    sub_1BA2FC0F4(v69, v65, MEMORY[0x1E69A3190]);
    v104 = sub_1BA4A1728();
    (*(*(v104 - 8) + 8))(v65, v104);
  }

  sub_1BA2FC15C(v74, MEMORY[0x1E69A3190]);
  sub_1BA4A3E68();
  v105 = sub_1BA4A3E88();
  v106 = sub_1BA4A6FC8();
  if (os_log_type_enabled(v105, v106))
  {
    v107 = swift_slowAlloc();
    *v107 = 0;
    _os_log_impl(&dword_1B9F07000, v105, v106, "Executing flow learn more", v107, 2u);
    MEMORY[0x1BFAF43A0](v107, -1, -1);
  }

  (*(v163 + 8))(v49, v162);
  if (qword_1EBBE87C0 != -1)
  {
    swift_once();
  }

  v108 = __swift_project_value_buffer(v160, qword_1EBBF04D8);
  v109 = v159;
  sub_1BA2FC0F4(v108, v159, sub_1BA011090);
  v110 = sub_1BA4A15D8();
  v111 = *(v110 - 8);
  if ((*(v111 + 48))(v109, 1, v110) == 1)
  {
    sub_1BA2FC15C(v109, sub_1BA011090);
  }

  else
  {
    sub_1BA4A1538();
    (*(v111 + 8))(v109, v110);
  }

  v112 = v161;
  v113 = v161 + OBJC_IVAR____TtC18HealthExperienceUI13CloudSyncFlow_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v115 = *(v113 + 8);
    v116 = swift_getObjectType();
    (*(v115 + 16))(v112, v116, v115);
    return swift_unknownObjectRelease();
  }

  return result;
}

id CloudSyncFlow.init()()
{
  *&v0[OBJC_IVAR____TtC18HealthExperienceUI13CloudSyncFlow_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CloudSyncFlow();
  return objc_msgSendSuper2(&v2, sel_init);
}

id CloudSyncFlow.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for CloudSyncFlow();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

double sub_1BA2FBBF8()
{
  sub_1BA011090(0);
  v1 = v0;
  __swift_allocate_value_buffer(v0, qword_1EBBF0460);
  __swift_project_value_buffer(v1, qword_1EBBF0460);
  sub_1BA4A7DF8();
  v2 = [objc_opt_self() internalAppleAccountSettingsURLString];
  _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

  MEMORY[0x1BFAF1350](0xD00000000000002ALL, 0x80000001BA4FCC00);
  sub_1BA4A15C8();

  return result;
}

double sub_1BA2FBCF4()
{
  sub_1BA011090(0);
  v1 = v0;
  __swift_allocate_value_buffer(v0, qword_1EBBF0478);
  __swift_project_value_buffer(v1, qword_1EBBF0478);
  sub_1BA4A7DF8();
  v2 = [objc_opt_self() internalGeneralSettingsURLString];
  _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

  MEMORY[0x1BFAF1350](0xD000000000000015, 0x80000001BA4FCB90);
  sub_1BA4A15C8();

  return result;
}

double sub_1BA2FBDF0()
{
  sub_1BA011090(0);
  v1 = v0;
  __swift_allocate_value_buffer(v0, qword_1EBBF0490);
  __swift_project_value_buffer(v1, qword_1EBBF0490);
  v2 = [objc_opt_self() internalSettingsURLString];
  _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

  sub_1BA4A15C8();

  return result;
}

double sub_1BA2FBE98()
{
  sub_1BA011090(0);
  v1 = v0;
  __swift_allocate_value_buffer(v0, qword_1EBBF04A8);
  __swift_project_value_buffer(v1, qword_1EBBF04A8);
  sub_1BA4A7DF8();
  v2 = [objc_opt_self() internalAppleAccountSettingsURLString];
  _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

  MEMORY[0x1BFAF1350](0xD00000000000001ELL, 0x80000001BA4FCBE0);
  sub_1BA4A15C8();

  return result;
}

double sub_1BA2FBF94()
{
  sub_1BA011090(0);
  v1 = v0;
  __swift_allocate_value_buffer(v0, qword_1EBBF04C0);
  __swift_project_value_buffer(v1, qword_1EBBF04C0);
  sub_1BA4A7DF8();
  v2 = [objc_opt_self() internalAppleAccountSettingsURLString];
  _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

  MEMORY[0x1BFAF1350](0xD000000000000022, 0x80000001BA4FCBB0);
  sub_1BA4A15C8();

  return result;
}

uint64_t sub_1BA2FC090()
{
  sub_1BA011090(0);
  v1 = v0;
  __swift_allocate_value_buffer(v0, qword_1EBBF04D8);
  __swift_project_value_buffer(v1, qword_1EBBF04D8);
  return sub_1BA4A15C8();
}

uint64_t sub_1BA2FC0F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BA2FC15C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t PDFDebugContainer.init(renderable:color:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1B9F25598(a1, a3);
  *(a3 + 40) = a2;
  return result;
}

uint64_t PDFDebugContainer.render(context:document:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1BA4A3EA8();
  v48 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v2[3];
  v11 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v10);
  (*(v11 + 24))(a2, v10, v11);
  v13 = v12;
  v15 = v14;
  v53.origin.x = PDFBuilder.Document.drawingContext.getter();
  MinX = CGRectGetMinX(v53);
  MinY = CGRectGetMinY(*(a2 + 168));
  v18 = [a1 CGContext];
  UIGraphicsPushContext(v18);

  v19 = [a1 CGContext];
  CGContextSaveGState(v19);

  v20 = [a1 CGContext];
  v21 = v3[5];
  v22 = [v21 CGColor];
  CGContextSetStrokeColorWithColor(v20, v22);

  v23 = [a1 CGContext];
  v54.origin.x = MinX;
  v54.origin.y = MinY;
  v54.size.width = v13;
  v54.size.height = v15;
  CGContextClipToRect(v23, v54);

  v24 = [a1 CGContext];
  v55.origin.x = MinX;
  v55.origin.y = MinY;
  v55.size.width = v13;
  v55.size.height = v15;
  CGContextStrokeRectWithWidth(v24, v55, 2.0);

  v25 = [a1 CGContext];
  v26 = [v21 colorWithAlphaComponent_];
  v27 = [v26 CGColor];

  CGContextSetFillColorWithColor(v25, v27);
  v28 = [a1 CGContext];
  sub_1BA2FC848(0);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1BA4B5480;
  *(v29 + 32) = MinX;
  *(v29 + 40) = MinY;
  *(v29 + 48) = v13;
  *(v29 + 56) = v15;
  sub_1BA4A6EF8();

  v30 = [a1 CGContext];
  CGContextRestoreGState(v30);

  UIGraphicsPopContext();
  sub_1BA4A3DD8();
  sub_1BA2FC8A0(v3, v52);
  v47 = v9;
  v31 = sub_1BA4A3E88();
  v32 = sub_1BA4A6F98();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v51 = v34;
    *v33 = 136446722;
    *(v33 + 4) = sub_1B9F0B82C(0xD000000000000011, 0x80000001BA4D0B60, &v51);
    v46 = v6;
    *(v33 + 12) = 2080;
    sub_1B9F0A534(v52, v49);
    v35 = v48;
    __swift_project_boxed_opaque_existential_1(v49, v50);
    swift_getDynamicType();
    __swift_destroy_boxed_opaque_existential_1(v49);
    v36 = sub_1BA4A85D8();
    v38 = v37;
    sub_1BA2FC8D8(v52);
    v39 = sub_1B9F0B82C(v36, v38, &v51);

    *(v33 + 14) = v39;
    *(v33 + 22) = 2080;
    *v49 = MinX;
    *&v49[1] = MinY;
    *&v49[2] = v13;
    v50 = *&v15;
    type metadata accessor for CGRect(0);
    v40 = sub_1BA4A6808();
    v42 = sub_1B9F0B82C(v40, v41, &v51);

    *(v33 + 24) = v42;
    _os_log_impl(&dword_1B9F07000, v31, v32, "[%{public}s] [%s] %s", v33, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v34, -1, -1);
    MEMORY[0x1BFAF43A0](v33, -1, -1);

    (*(v35 + 8))(v47, v46);
  }

  else
  {

    sub_1BA2FC8D8(v52);
    (*(v48 + 8))(v47, v6);
  }

  v43 = v3[3];
  v44 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v43);
  return (*(v44 + 16))(a1, a2, v43, v44);
}

void sub_1BA2FC848(uint64_t a1)
{
  if (!qword_1EDC5DB90)
  {
    type metadata accessor for CGRect(255);
    v1 = sub_1BA4A82E8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC5DB90);
    }
  }
}

uint64_t PDFDebugContainer.boundingRectForContent(in:)(uint64_t a1)
{
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  return (*(v4 + 24))(a1, v3, v4);
}

uint64_t PDFDebugContainer.minimumBoundingRectForContent(in:)(uint64_t a1)
{
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  return (*(v4 + 32))(a1, v3, v4);
}

uint64_t sub_1BA2FC9C4(uint64_t a1)
{
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  return (*(v4 + 24))(a1, v3, v4);
}

uint64_t sub_1BA2FCA20(uint64_t a1)
{
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  return (*(v4 + 32))(a1, v3, v4);
}

uint64_t sub_1BA2FCA7C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1BA2FCAC4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_1BA2FCB20@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_1BA4A3EA8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = NSBundle.getPluginAppDelegateClass()();
  v38[0] = v8;
  v38[1] = v9;
  v35 = v9;
  sub_1B9F0D9AC(0, qword_1EDC681A8, &protocol descriptor for PluginAppDelegate, 0);
  v10 = sub_1B9F0D9AC(0, &qword_1EBBE92D8, &protocol descriptor for PluginDetailViewDebugActionProviding, 1);
  swift_unknownObjectRetain();
  if (swift_dynamicCast())
  {
    swift_unknownObjectRelease();
    sub_1B9F1134C(v36, a1);
  }

  else
  {
    v37 = 0;
    memset(v36, 0, sizeof(v36));
    sub_1BA30AB74(v36, &qword_1EBBE92D0, &qword_1EBBE92D8, &protocol descriptor for PluginDetailViewDebugActionProviding, MEMORY[0x1E69E6720]);
    sub_1BA4A3E08();
    swift_unknownObjectRetain();
    v12 = v1;
    v13 = sub_1BA4A3E88();
    v14 = sub_1BA4A6FC8();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v13, v14))
    {
      v32 = v14;
      v33 = v10;
      v34 = v13;
      v15 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v38[0] = v31;
      *v15 = 136446722;
      v16 = [v12 bundleIdentifier];
      if (v16)
      {
        v17 = v16;
        v18 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v20 = v19;
      }

      else
      {
        v20 = 0xE500000000000000;
        v18 = 0x3E6C696E3CLL;
      }

      v21 = sub_1B9F0B82C(v18, v20, v38);

      *(v15 + 4) = v21;
      *(v15 + 12) = 2082;
      *&v36[0] = v8;
      *(&v36[0] + 1) = v35;
      swift_unknownObjectRetain();
      v22 = sub_1BA4A6808();
      v24 = sub_1B9F0B82C(v22, v23, v38);

      *(v15 + 14) = v24;
      *(v15 + 22) = 2082;
      *&v36[0] = v33;
      sub_1BA30A6D0(0, &qword_1EBBF0620, &qword_1EBBE92D8, &protocol descriptor for PluginDetailViewDebugActionProviding, 1);
      v25 = sub_1BA4A6808();
      v27 = sub_1B9F0B82C(v25, v26, v38);

      *(v15 + 24) = v27;
      v28 = v34;
      _os_log_impl(&dword_1B9F07000, v34, v32, "[%{public}s]: %{public}s cannot be cast to %{public}s", v15, 0x20u);
      v29 = v31;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v29, -1, -1);
      MEMORY[0x1BFAF43A0](v15, -1, -1);
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }

    (*(v4 + 8))(v7, v3);
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

double sub_1BA2FCEE4@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_1BA4A3EA8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = NSBundle.getPluginAppDelegateClass()();
  v38[0] = v8;
  v38[1] = v9;
  v35 = v9;
  sub_1B9F0D9AC(0, qword_1EDC681A8, &protocol descriptor for PluginAppDelegate, 0);
  v10 = sub_1B9F0D9AC(0, &qword_1EDC65730, &protocol descriptor for PluginDetailViewProviding, 1);
  swift_unknownObjectRetain();
  if (swift_dynamicCast())
  {
    swift_unknownObjectRelease();
    sub_1B9F1134C(v36, a1);
  }

  else
  {
    v37 = 0;
    memset(v36, 0, sizeof(v36));
    sub_1BA30AB74(v36, &qword_1EBBF0610, &qword_1EDC65730, &protocol descriptor for PluginDetailViewProviding, MEMORY[0x1E69E6720]);
    sub_1BA4A3E08();
    swift_unknownObjectRetain();
    v12 = v1;
    v13 = sub_1BA4A3E88();
    v14 = sub_1BA4A6FC8();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v13, v14))
    {
      v32 = v14;
      v33 = v10;
      v34 = v13;
      v15 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v38[0] = v31;
      *v15 = 136446722;
      v16 = [v12 bundleIdentifier];
      if (v16)
      {
        v17 = v16;
        v18 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v20 = v19;
      }

      else
      {
        v20 = 0xE500000000000000;
        v18 = 0x3E6C696E3CLL;
      }

      v21 = sub_1B9F0B82C(v18, v20, v38);

      *(v15 + 4) = v21;
      *(v15 + 12) = 2082;
      *&v36[0] = v8;
      *(&v36[0] + 1) = v35;
      swift_unknownObjectRetain();
      v22 = sub_1BA4A6808();
      v24 = sub_1B9F0B82C(v22, v23, v38);

      *(v15 + 14) = v24;
      *(v15 + 22) = 2082;
      *&v36[0] = v33;
      sub_1BA30A6D0(0, &qword_1EBBF0618, &qword_1EDC65730, &protocol descriptor for PluginDetailViewProviding, 1);
      v25 = sub_1BA4A6808();
      v27 = sub_1B9F0B82C(v25, v26, v38);

      *(v15 + 24) = v27;
      v28 = v34;
      _os_log_impl(&dword_1B9F07000, v34, v32, "[%{public}s]: %{public}s cannot be cast to %{public}s", v15, 0x20u);
      v29 = v31;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v29, -1, -1);
      MEMORY[0x1BFAF43A0](v15, -1, -1);
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }

    (*(v4 + 8))(v7, v3);
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1BA2FD2A8()
{
  v1 = sub_1BA4A3EA8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = NSBundle.getPluginAppDelegateClass()();
  v8 = v7;
  v9 = v6;
  swift_getObjectType();
  v10 = swift_conformsToProtocol2();
  result = v9;
  if (!v10 || !v9)
  {
    sub_1BA4A3E08();
    v12 = v0;
    swift_unknownObjectRetain();
    v13 = sub_1BA4A3E88();
    v14 = sub_1BA4A6FC8();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v13, v14))
    {
      v30 = v14;
      v15 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v33[0] = v29;
      *v15 = 136446722;
      v16 = [v12 bundleIdentifier];
      if (v16)
      {
        v17 = v16;
        v18 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v20 = v19;
      }

      else
      {
        v20 = 0xE500000000000000;
        v18 = 0x3E6C696E3CLL;
      }

      v21 = sub_1B9F0B82C(v18, v20, v33);

      *(v15 + 4) = v21;
      *(v15 + 12) = 2082;
      v31 = v9;
      v32 = v8;
      sub_1B9F0D9AC(0, qword_1EDC681A8, &protocol descriptor for PluginAppDelegate, 0);
      swift_unknownObjectRetain();
      v22 = sub_1BA4A6808();
      v24 = sub_1B9F0B82C(v22, v23, v33);

      *(v15 + 14) = v24;
      *(v15 + 22) = 2082;
      v31 = sub_1B9F0D9AC(0, &qword_1EBBF0600, &protocol descriptor for PluginAccountsDelegate, 0);
      sub_1BA30A6D0(0, &qword_1EBBF0608, &qword_1EBBF0600, &protocol descriptor for PluginAccountsDelegate, 0);
      v25 = sub_1BA4A6808();
      v27 = sub_1B9F0B82C(v25, v26, v33);

      *(v15 + 24) = v27;
      _os_log_impl(&dword_1B9F07000, v13, v30, "[%{public}s]: %{public}s cannot be cast to %{public}s", v15, 0x20u);
      v28 = v29;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v28, -1, -1);
      MEMORY[0x1BFAF43A0](v15, -1, -1);
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }

    (*(v2 + 8))(v5, v1);
    return 0;
  }

  return result;
}

double sub_1BA2FD600@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_1BA4A3EA8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = NSBundle.getPluginAppDelegateClass()();
  v38[0] = v8;
  v38[1] = v9;
  v35 = v9;
  sub_1B9F0D9AC(0, qword_1EDC681A8, &protocol descriptor for PluginAppDelegate, 0);
  v10 = sub_1B9F0D9AC(0, &qword_1EBBF05E8, &protocol descriptor for PluginCategoryViewProviding, 1);
  swift_unknownObjectRetain();
  if (swift_dynamicCast())
  {
    swift_unknownObjectRelease();
    sub_1B9F1134C(v36, a1);
  }

  else
  {
    v37 = 0;
    memset(v36, 0, sizeof(v36));
    sub_1BA30AB74(v36, &qword_1EBBF05F0, &qword_1EBBF05E8, &protocol descriptor for PluginCategoryViewProviding, MEMORY[0x1E69E6720]);
    sub_1BA4A3E08();
    swift_unknownObjectRetain();
    v12 = v1;
    v13 = sub_1BA4A3E88();
    v14 = sub_1BA4A6FC8();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v13, v14))
    {
      v32 = v14;
      v33 = v10;
      v34 = v13;
      v15 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v38[0] = v31;
      *v15 = 136446722;
      v16 = [v12 bundleIdentifier];
      if (v16)
      {
        v17 = v16;
        v18 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v20 = v19;
      }

      else
      {
        v20 = 0xE500000000000000;
        v18 = 0x3E6C696E3CLL;
      }

      v21 = sub_1B9F0B82C(v18, v20, v38);

      *(v15 + 4) = v21;
      *(v15 + 12) = 2082;
      *&v36[0] = v8;
      *(&v36[0] + 1) = v35;
      swift_unknownObjectRetain();
      v22 = sub_1BA4A6808();
      v24 = sub_1B9F0B82C(v22, v23, v38);

      *(v15 + 14) = v24;
      *(v15 + 22) = 2082;
      *&v36[0] = v33;
      sub_1BA30A6D0(0, &qword_1EBBF05F8, &qword_1EBBF05E8, &protocol descriptor for PluginCategoryViewProviding, 1);
      v25 = sub_1BA4A6808();
      v27 = sub_1B9F0B82C(v25, v26, v38);

      *(v15 + 24) = v27;
      v28 = v34;
      _os_log_impl(&dword_1B9F07000, v34, v32, "[%{public}s]: %{public}s cannot be cast to %{public}s", v15, 0x20u);
      v29 = v31;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v29, -1, -1);
      MEMORY[0x1BFAF43A0](v15, -1, -1);
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }

    (*(v4 + 8))(v7, v3);
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1BA2FD9C4()
{
  v1 = sub_1BA4A3EA8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = NSBundle.getPluginAppDelegateClass()();
  v8 = v7;
  v9 = v6;
  swift_getObjectType();
  v10 = swift_conformsToProtocol2();
  result = v9;
  if (!v10 || !v9)
  {
    sub_1BA4A3E08();
    v12 = v0;
    swift_unknownObjectRetain();
    v13 = sub_1BA4A3E88();
    v14 = sub_1BA4A6FC8();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v13, v14))
    {
      v30 = v14;
      v15 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v33[0] = v29;
      *v15 = 136446722;
      v16 = [v12 bundleIdentifier];
      if (v16)
      {
        v17 = v16;
        v18 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v20 = v19;
      }

      else
      {
        v20 = 0xE500000000000000;
        v18 = 0x3E6C696E3CLL;
      }

      v21 = sub_1B9F0B82C(v18, v20, v33);

      *(v15 + 4) = v21;
      *(v15 + 12) = 2082;
      v31 = v9;
      v32 = v8;
      sub_1B9F0D9AC(0, qword_1EDC681A8, &protocol descriptor for PluginAppDelegate, 0);
      swift_unknownObjectRetain();
      v22 = sub_1BA4A6808();
      v24 = sub_1B9F0B82C(v22, v23, v33);

      *(v15 + 14) = v24;
      *(v15 + 22) = 2082;
      v31 = sub_1B9F0D9AC(0, &qword_1EBBED790, &protocol descriptor for PluginSharingAuthorizationDelegate, 0);
      sub_1BA30A6D0(0, &qword_1EBBF05C0, &qword_1EBBED790, &protocol descriptor for PluginSharingAuthorizationDelegate, 0);
      v25 = sub_1BA4A6808();
      v27 = sub_1B9F0B82C(v25, v26, v33);

      *(v15 + 24) = v27;
      _os_log_impl(&dword_1B9F07000, v13, v30, "[%{public}s]: %{public}s cannot be cast to %{public}s", v15, 0x20u);
      v28 = v29;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v28, -1, -1);
      MEMORY[0x1BFAF43A0](v15, -1, -1);
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }

    (*(v2 + 8))(v5, v1);
    return 0;
  }

  return result;
}

double sub_1BA2FDD1C@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_1BA4A3EA8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = NSBundle.getPluginAppDelegateClass()();
  v38[0] = v8;
  v38[1] = v9;
  v35 = v9;
  sub_1B9F0D9AC(0, qword_1EDC681A8, &protocol descriptor for PluginAppDelegate, 0);
  v10 = sub_1B9F0D9AC(0, &qword_1EBBEAA28, &protocol descriptor for PluginAlertDetailViewProviding, 1);
  swift_unknownObjectRetain();
  if (swift_dynamicCast())
  {
    swift_unknownObjectRelease();
    sub_1B9F1134C(v36, a1);
  }

  else
  {
    v37 = 0;
    memset(v36, 0, sizeof(v36));
    sub_1BA30AB74(v36, &qword_1EBBEAA20, &qword_1EBBEAA28, &protocol descriptor for PluginAlertDetailViewProviding, MEMORY[0x1E69E6720]);
    sub_1BA4A3E08();
    swift_unknownObjectRetain();
    v12 = v1;
    v13 = sub_1BA4A3E88();
    v14 = sub_1BA4A6FC8();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v13, v14))
    {
      v32 = v14;
      v33 = v10;
      v34 = v13;
      v15 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v38[0] = v31;
      *v15 = 136446722;
      v16 = [v12 bundleIdentifier];
      if (v16)
      {
        v17 = v16;
        v18 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v20 = v19;
      }

      else
      {
        v20 = 0xE500000000000000;
        v18 = 0x3E6C696E3CLL;
      }

      v21 = sub_1B9F0B82C(v18, v20, v38);

      *(v15 + 4) = v21;
      *(v15 + 12) = 2082;
      *&v36[0] = v8;
      *(&v36[0] + 1) = v35;
      swift_unknownObjectRetain();
      v22 = sub_1BA4A6808();
      v24 = sub_1B9F0B82C(v22, v23, v38);

      *(v15 + 14) = v24;
      *(v15 + 22) = 2082;
      *&v36[0] = v33;
      sub_1BA30A6D0(0, &qword_1EBBF0628, &qword_1EBBEAA28, &protocol descriptor for PluginAlertDetailViewProviding, 1);
      v25 = sub_1BA4A6808();
      v27 = sub_1B9F0B82C(v25, v26, v38);

      *(v15 + 24) = v27;
      v28 = v34;
      _os_log_impl(&dword_1B9F07000, v34, v32, "[%{public}s]: %{public}s cannot be cast to %{public}s", v15, 0x20u);
      v29 = v31;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v29, -1, -1);
      MEMORY[0x1BFAF43A0](v15, -1, -1);
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }

    (*(v4 + 8))(v7, v3);
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1BA2FE0E0()
{
  v1 = sub_1BA4A3EA8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = NSBundle.getPluginAppDelegateClass()();
  v8 = v7;
  v9 = v6;
  swift_getObjectType();
  v10 = swift_conformsToProtocol2();
  result = v9;
  if (!v10 || !v9)
  {
    sub_1BA4A3E08();
    v12 = v0;
    swift_unknownObjectRetain();
    v13 = sub_1BA4A3E88();
    v14 = sub_1BA4A6FC8();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v13, v14))
    {
      v30 = v14;
      v15 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v33[0] = v29;
      *v15 = 136446722;
      v16 = [v12 bundleIdentifier];
      if (v16)
      {
        v17 = v16;
        v18 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v20 = v19;
      }

      else
      {
        v20 = 0xE500000000000000;
        v18 = 0x3E6C696E3CLL;
      }

      v21 = sub_1B9F0B82C(v18, v20, v33);

      *(v15 + 4) = v21;
      *(v15 + 12) = 2082;
      v31 = v9;
      v32 = v8;
      sub_1B9F0D9AC(0, qword_1EDC681A8, &protocol descriptor for PluginAppDelegate, 0);
      swift_unknownObjectRetain();
      v22 = sub_1BA4A6808();
      v24 = sub_1B9F0B82C(v22, v23, v33);

      *(v15 + 14) = v24;
      *(v15 + 22) = 2082;
      v31 = sub_1B9F0D9AC(0, &qword_1EDC603E0, &protocol descriptor for PluginNotificationCenterDelegateProviding, 0);
      sub_1BA30A6D0(0, &qword_1EDC603D8, &qword_1EDC603E0, &protocol descriptor for PluginNotificationCenterDelegateProviding, 0);
      v25 = sub_1BA4A6808();
      v27 = sub_1B9F0B82C(v25, v26, v33);

      *(v15 + 24) = v27;
      _os_log_impl(&dword_1B9F07000, v13, v30, "[%{public}s]: %{public}s cannot be cast to %{public}s", v15, 0x20u);
      v28 = v29;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v28, -1, -1);
      MEMORY[0x1BFAF43A0](v15, -1, -1);
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }

    (*(v2 + 8))(v5, v1);
    return 0;
  }

  return result;
}

double sub_1BA2FE438@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_1BA4A3EA8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = NSBundle.getPluginAppDelegateClass()();
  v38[0] = v8;
  v38[1] = v9;
  v35 = v9;
  sub_1B9F0D9AC(0, qword_1EDC681A8, &protocol descriptor for PluginAppDelegate, 0);
  v10 = sub_1B9F0D9AC(0, &qword_1EBBF05D0, &protocol descriptor for PluginMeasureDetailViewProviding, 1);
  swift_unknownObjectRetain();
  if (swift_dynamicCast())
  {
    swift_unknownObjectRelease();
    sub_1B9F1134C(v36, a1);
  }

  else
  {
    v37 = 0;
    memset(v36, 0, sizeof(v36));
    sub_1BA30AB74(v36, &qword_1EBBF05D8, &qword_1EBBF05D0, &protocol descriptor for PluginMeasureDetailViewProviding, MEMORY[0x1E69E6720]);
    sub_1BA4A3E08();
    swift_unknownObjectRetain();
    v12 = v1;
    v13 = sub_1BA4A3E88();
    v14 = sub_1BA4A6FC8();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v13, v14))
    {
      v32 = v14;
      v33 = v10;
      v34 = v13;
      v15 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v38[0] = v31;
      *v15 = 136446722;
      v16 = [v12 bundleIdentifier];
      if (v16)
      {
        v17 = v16;
        v18 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v20 = v19;
      }

      else
      {
        v20 = 0xE500000000000000;
        v18 = 0x3E6C696E3CLL;
      }

      v21 = sub_1B9F0B82C(v18, v20, v38);

      *(v15 + 4) = v21;
      *(v15 + 12) = 2082;
      *&v36[0] = v8;
      *(&v36[0] + 1) = v35;
      swift_unknownObjectRetain();
      v22 = sub_1BA4A6808();
      v24 = sub_1B9F0B82C(v22, v23, v38);

      *(v15 + 14) = v24;
      *(v15 + 22) = 2082;
      *&v36[0] = v33;
      sub_1BA30A6D0(0, &qword_1EBBF05E0, &qword_1EBBF05D0, &protocol descriptor for PluginMeasureDetailViewProviding, 1);
      v25 = sub_1BA4A6808();
      v27 = sub_1B9F0B82C(v25, v26, v38);

      *(v15 + 24) = v27;
      v28 = v34;
      _os_log_impl(&dword_1B9F07000, v34, v32, "[%{public}s]: %{public}s cannot be cast to %{public}s", v15, 0x20u);
      v29 = v31;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v29, -1, -1);
      MEMORY[0x1BFAF43A0](v15, -1, -1);
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }

    (*(v4 + 8))(v7, v3);
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

double sub_1BA2FE7FC()
{
  v1 = v0;
  v2 = *(v0 + qword_1EDC84BB8);
  v3 = *(v2 + qword_1EDC84BB8);
  v4 = *(*v2 + 512);
  swift_beginAccess();
  v5 = *(v2 + v4);
  v6 = *(v2 + *(*v2 + 520));
  v7 = *(v2 + qword_1EDC64EB0);
  v8 = *(v2 + qword_1EDC64EB0 + 8);
  v9 = *(v2 + qword_1EDC64EB0 + 16);

  v10 = v3;
  sub_1BA1E433C(v10, v5, v6, v7, v8, v9);
  v12 = v11;

  sub_1BA0E7F10(v12, 1);

  LOBYTE(v5) = *(v1 + *(*v1 + 520));
  v13 = *(v1 + qword_1EDC64EB0);
  v14 = *(v1 + qword_1EDC64EB0 + 8);
  LOBYTE(v8) = *(v1 + qword_1EDC64EB0 + 16);

  sub_1BA1E45B0(v15, v5, v13, v14, v8);
  v17 = v16;

  sub_1BA0E7F10(v17, 1);

  return result;
}

uint64_t sub_1BA2FE964()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBF04F8 = result;
  unk_1EBBF0500 = v1;
  return result;
}

uint64_t sub_1BA2FEA18()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBF0508 = result;
  unk_1EBBF0510 = v1;
  return result;
}

uint64_t sub_1BA2FEAC4()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBF0518 = result;
  unk_1EBBF0520 = v1;
  return result;
}

uint64_t sub_1BA2FEB84()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBF0528 = result;
  unk_1EBBF0530 = v1;
  return result;
}

uint64_t sub_1BA2FEC44()
{
  v1 = OBJC_IVAR____TtCC18HealthExperienceUI41SummarySharingDataTypeSelectionDataSourceP33_90A4BE97C9AD775CAB10EB5F12011C5813Configuration_id;
  v2 = sub_1BA4A1798();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtCC18HealthExperienceUI41SummarySharingDataTypeSelectionDataSourceP33_90A4BE97C9AD775CAB10EB5F12011C5813Configuration_healthExperienceStore));

  sub_1BA30A8C0(v0 + OBJC_IVAR____TtCC18HealthExperienceUI41SummarySharingDataTypeSelectionDataSourceP33_90A4BE97C9AD775CAB10EB5F12011C5813Configuration_selectionFlow, type metadata accessor for SummarySharingSelectionFlow);

  sub_1BA30A978(*(v0 + OBJC_IVAR____TtCC18HealthExperienceUI41SummarySharingDataTypeSelectionDataSourceP33_90A4BE97C9AD775CAB10EB5F12011C5813Configuration_sectionHeaderIconConfig), *(v0 + OBJC_IVAR____TtCC18HealthExperienceUI41SummarySharingDataTypeSelectionDataSourceP33_90A4BE97C9AD775CAB10EB5F12011C5813Configuration_sectionHeaderIconConfig + 8));
  sub_1B9FAB600(v0 + OBJC_IVAR____TtCC18HealthExperienceUI41SummarySharingDataTypeSelectionDataSourceP33_90A4BE97C9AD775CAB10EB5F12011C5813Configuration_selectedDataTypesDelegate);

  return swift_deallocClassInstance();
}

uint64_t sub_1BA2FED78()
{
  v1 = type metadata accessor for SummarySharingSelectionFlow(0);
  MEMORY[0x1EEE9AC00](v1, v2);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA30A858(v0, v4, type metadata accessor for SummarySharingSelectionFlow);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1BA30A8C0(v4, type metadata accessor for SummarySharingSelectionFlow);
    }

    sub_1BA30A78C(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1BA4B8B60;
    v7 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
    v8 = sub_1BA4A6758();
    v9 = [v7 initWithKey:v8 ascending:1];

    *(v6 + 32) = v9;
    v10 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
    v11 = sub_1BA4A6758();
    v12 = [v10 initWithKey:v11 ascending:0];

    *(v6 + 40) = v12;
    v13 = (v6 + 48);
  }

  else
  {
    sub_1BA30A78C(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1BA4B7510;
    v14 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
    v15 = sub_1BA4A6758();
    v16 = [v14 initWithKey:v15 ascending:0];

    *(v6 + 32) = v16;
    v13 = (v6 + 40);
  }

  v17 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v18 = sub_1BA4A6758();
  v19 = [v17 initWithKey:v18 ascending:1 selector:sel_localizedStandardCompare_];

  *v13 = v19;
  return v6;
}

void sub_1BA2FF03C(uint64_t *a1@<X0>, uint64_t (*a2)(uint64_t a1)@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v145 = type metadata accessor for SummarySharingSelectionFlow(0);
  MEMORY[0x1EEE9AC00](v145, v8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v14 = *a1;
  v13 = a1[1];
  v15 = a1[2];
  v16 = a1[3];
  v17 = a1[4];
  v18 = a1[5];
  v146 = a3;
  v147 = a2;
  v19 = *(a3 + OBJC_IVAR____TtCC18HealthExperienceUI41SummarySharingDataTypeSelectionDataSourceP33_90A4BE97C9AD775CAB10EB5F12011C5813Configuration_shouldOnlyFetchProminentDataTypes);
  v134 = v14;
  v135 = v17;
  if (v19 == 1)
  {
    v137 = &v126 - v11;
    v138 = v12;
    v132 = a4;
    v20 = MEMORY[0x1E69E7CC0];
    *&v153 = MEMORY[0x1E69E7CC0];
    v127 = *(v15 + 16);
    v130 = v13;
    v131 = v18;
    v129 = v16;
    v133 = v15;
    if (v127)
    {
      v21 = v15 + 32;

      v22 = MEMORY[0x1E69E7CC0];
      v23 = MEMORY[0x1E69A3310];
      v24 = v127;
      do
      {
        sub_1B9F0A534(v21, &v150);
        sub_1B9F1134C(&v150, &v155);
        sub_1B9F0D9AC(0, &qword_1EDC6AD50, v23, 1);
        sub_1BA4A27B8();
        if ((swift_dynamicCast() & 1) != 0 && v149[0])
        {
          MEMORY[0x1BFAF1510]();
          if (*((v153 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v153 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1BA4A6B68();
          }

          sub_1BA4A6BB8();
          v22 = v153;
        }

        v21 += 40;
        --v24;
      }

      while (v24);
    }

    else
    {

      v22 = MEMORY[0x1E69E7CC0];
    }

    *&v155 = v20;
    v128 = v22;
    if (v22 >> 62)
    {
      goto LABEL_130;
    }

    v40 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_24:
    v41 = v147;
    v43 = v137;
    v42 = v138;
    v144 = OBJC_IVAR____TtCC18HealthExperienceUI41SummarySharingDataTypeSelectionDataSourceP33_90A4BE97C9AD775CAB10EB5F12011C5813Configuration_selectionFlow;
    if (v40)
    {
      v44 = 0;
      v142 = v128 & 0xFFFFFFFFFFFFFF8;
      v143 = v128 & 0xC000000000000001;
      v140 = v128 + 32;
      v136 = xmmword_1BA4B5460;
      v141 = v40;
      do
      {
        if (v143)
        {
          v53 = MEMORY[0x1BFAF2860](v44, v128);
        }

        else
        {
          if (v44 >= *(v142 + 16))
          {
            goto LABEL_127;
          }

          v53 = *(v140 + 8 * v44);
        }

        v54 = v53;
        if (__OFADD__(v44++, 1))
        {
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          v40 = sub_1BA4A7CC8();
          goto LABEL_24;
        }

        sub_1BA30A858(v146 + v144, v43, type metadata accessor for SummarySharingSelectionFlow);
        if (swift_unknownObjectWeakLoadStrong())
        {
          v56 = *(v41 + 3);
          ObjectType = swift_getObjectType();
          v58 = (*(v56 + 8))(ObjectType, v56);
          swift_unknownObjectRelease();
        }

        else
        {
          v58 = 0;
        }

        sub_1BA30A858(v43, v42, type metadata accessor for SummarySharingSelectionFlow);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload)
        {
          if (EnumCaseMultiPayload != 1)
          {
            v139 = v58;
            sub_1BA30A78C(0, &qword_1EDC6E330, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
            inited = swift_initStackObject();
            *(inited + 16) = v136;
            *(inited + 32) = sub_1BA4A2178();
            *(inited + 40) = v46;
            *(inited + 48) = sub_1BA4A1FD8();
            *(inited + 56) = v47;
            v48 = sub_1B9F12EB8(inited);
            swift_setDeallocating();
            swift_arrayDestroy();
            v49 = sub_1BA4A2768();
            v50 = sub_1BA10C350(v48, v49);

            sub_1BA30A8C0(v43, type metadata accessor for SummarySharingSelectionFlow);
            v51 = v50[2];

            v52 = v141;
            if (!v51)
            {
              goto LABEL_80;
            }

            goto LABEL_27;
          }

          if (!v58)
          {

            sub_1BA30A8C0(v43, type metadata accessor for SummarySharingSelectionFlow);
            sub_1BA30A8C0(v42, type metadata accessor for SummarySharingSelectionFlow);
            v52 = v141;
            continue;
          }

          v60 = [v54 uniqueIdentifier];
          v61 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
          v63 = v62;

          swift_beginAccess();
          v64 = *(v58 + 32);
          if (*(v64 + 16))
          {
            sub_1BA4A8488();

            sub_1BA4A68C8();
            v65 = sub_1BA4A84D8();
            v66 = -1 << *(v64 + 32);
            v67 = v65 & ~v66;
            if ((*(v64 + 56 + ((v67 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v67))
            {
              v68 = ~v66;
              while (1)
              {
                v69 = (*(v64 + 48) + 16 * v67);
                v70 = *v69 == v61 && v69[1] == v63;
                if (v70 || (sub_1BA4A8338() & 1) != 0)
                {
                  break;
                }

                v67 = (v67 + 1) & v68;
                if (((*(v64 + 56 + ((v67 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v67) & 1) == 0)
                {
                  goto LABEL_48;
                }
              }

              LODWORD(v139) = 1;
            }

            else
            {
LABEL_48:
              LODWORD(v139) = 0;
            }
          }

          else
          {
            LODWORD(v139) = 0;
          }

          v76 = [v54 uniqueIdentifier];
          v77 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
          v79 = v78;

          swift_beginAccess();
          v80 = *(v58 + 40);
          if (!*(v80 + 16))
          {

LABEL_79:

            v43 = v137;
            sub_1BA30A8C0(v137, type metadata accessor for SummarySharingSelectionFlow);
            v42 = v138;
            sub_1BA30A8C0(v138, type metadata accessor for SummarySharingSelectionFlow);
            v41 = v147;
            v52 = v141;
            if ((v139 & 1) == 0)
            {
LABEL_80:

              continue;
            }

            goto LABEL_27;
          }

          sub_1BA4A8488();

          sub_1BA4A68C8();
          v81 = sub_1BA4A84D8();
          v82 = -1 << *(v80 + 32);
          v83 = v81 & ~v82;
          if (((*(v80 + 56 + ((v83 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v83) & 1) == 0)
          {
LABEL_77:

            goto LABEL_79;
          }

          v84 = ~v82;
          while (1)
          {
            v85 = (*(v80 + 48) + 16 * v83);
            v86 = *v85 == v77 && v85[1] == v79;
            if (v86 || (sub_1BA4A8338() & 1) != 0)
            {
              break;
            }

            v83 = (v83 + 1) & v84;
            if (((*(v80 + 56 + ((v83 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v83) & 1) == 0)
            {
              goto LABEL_77;
            }
          }

          v43 = v137;
          sub_1BA30A8C0(v137, type metadata accessor for SummarySharingSelectionFlow);
          v42 = v138;
          v87 = v138;
        }

        else
        {
          v71 = *v42;
          v72 = sub_1BA4A2768();
          v73 = v71 >> 6;
          if (v71 >> 6 > 1)
          {
            if (v73 == 3)
            {
              if (v71 == 192)
              {
                v74 = sub_1BA4A2228();
              }

              else if (v71 == 193)
              {
                v74 = sub_1BA4A2268();
              }

              else
              {
                v74 = sub_1BA4A2218();
              }
            }

            else if (v71 > 129)
            {
              if (v71 == 130)
              {
                v74 = sub_1BA4A2238();
              }

              else
              {
                v74 = sub_1BA4A2278();
              }
            }

            else if (v71 == 128)
            {
              v74 = sub_1BA4A2248();
            }

            else
            {
              v74 = sub_1BA4A2258();
            }
          }

          else if (v73)
          {
            if ((v71 & 0x3F) != 0)
            {
              if ((v71 & 0x3F) == 1)
              {
                v74 = sub_1BA4A21C8();
              }

              else
              {
                v74 = sub_1BA4A21A8();
              }
            }

            else
            {
              v74 = sub_1BA4A21B8();
            }
          }

          else if (v71 > 1)
          {
            if (v71 == 2)
            {
              v74 = sub_1BA4A1FC8();
            }

            else
            {
              v74 = sub_1BA4A1F98();
            }
          }

          else if (v71)
          {
            v74 = sub_1BA4A1FA8();
          }

          else
          {
            v74 = sub_1BA4A1FD8();
          }

          v88 = v74;
          v89 = v75;
          if (!*(v72 + 16) || (sub_1BA4A8488(), sub_1BA4A68C8(), v90 = sub_1BA4A84D8(), v91 = -1 << *(v72 + 32), v92 = v90 & ~v91, ((*(v72 + 56 + ((v92 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v92) & 1) == 0))
          {
LABEL_103:

            v43 = v137;
            sub_1BA30A8C0(v137, type metadata accessor for SummarySharingSelectionFlow);
            v41 = v147;
            v42 = v138;
            v52 = v141;

            continue;
          }

          v93 = ~v91;
          while (1)
          {
            v94 = (*(v72 + 48) + 16 * v92);
            v95 = *v94 == v88 && v94[1] == v89;
            if (v95 || (sub_1BA4A8338() & 1) != 0)
            {
              break;
            }

            v92 = (v92 + 1) & v93;
            if (((*(v72 + 56 + ((v92 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v92) & 1) == 0)
            {
              goto LABEL_103;
            }
          }

          v43 = v137;
          v42 = v138;
          v87 = v137;
        }

        v52 = v141;
        sub_1BA30A8C0(v87, type metadata accessor for SummarySharingSelectionFlow);
        v41 = v147;
LABEL_27:
        sub_1BA4A7ED8();
        sub_1BA4A7F18();
        sub_1BA4A7F28();
        sub_1BA4A7EE8();
      }

      while (v44 != v52);
    }

    v96 = v155;
    if ((v155 & 0x8000000000000000) != 0 || (v155 & 0x4000000000000000) != 0)
    {
      v97 = sub_1BA4A7CC8();
      if (v97)
      {
LABEL_110:
        v98 = 0;
        v145 = v96 & 0xC000000000000001;
        v99 = MEMORY[0x1E69E7CC0];
        v143 = v97;
        while (1)
        {
          if (v145)
          {
            v100 = MEMORY[0x1BFAF2860](v98, v96);
          }

          else
          {
            if (v98 >= *(v96 + 16))
            {
              goto LABEL_129;
            }

            v100 = *(v96 + 8 * v98 + 32);
          }

          v101 = v100;
          v102 = v98 + 1;
          if (__OFADD__(v98, 1))
          {
            goto LABEL_128;
          }

          *(&v151 + 1) = sub_1BA4A27B8();
          v152 = sub_1B9F15730();
          *&v150 = v101;
          v103 = v101;
          sub_1BA3013D0(&v150, v41, &v155);

          __swift_destroy_boxed_opaque_existential_1(&v150);
          if (v156)
          {
            sub_1B9F1134C(&v155, &v150);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v148[0] = v99;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v99 = sub_1B9F281E8(0, v99[2] + 1, 1, v99);
              v148[0] = v99;
            }

            v106 = v99[2];
            v105 = v99[3];
            if (v106 >= v105 >> 1)
            {
              v99 = sub_1B9F281E8((v105 > 1), v106 + 1, 1, v99);
              v148[0] = v99;
            }

            v107 = *(&v151 + 1);
            v108 = v152;
            v109 = __swift_mutable_project_boxed_opaque_existential_1(&v150, *(&v151 + 1));
            v110 = MEMORY[0x1EEE9AC00](v109, v109);
            v112 = &v126 - ((v111 + 15) & 0xFFFFFFFFFFFFFFF0);
            (*(v113 + 16))(v112, v110);
            sub_1B9F1C4F4(v106, v112, v148, v107, v108);
            __swift_destroy_boxed_opaque_existential_1(&v150);
            v41 = v147;
            v97 = v143;
          }

          else
          {
            sub_1BA30AB74(&v155, &qword_1EDC6AD40, &qword_1EDC6AD50, MEMORY[0x1E69A3310], MEMORY[0x1E69E6720]);
          }

          ++v98;
          if (v102 == v97)
          {
            goto LABEL_133;
          }
        }
      }
    }

    else
    {
      v97 = *(v155 + 16);
      if (v97)
      {
        goto LABEL_110;
      }
    }

    v99 = MEMORY[0x1E69E7CC0];
LABEL_133:

    if (v99[2])
    {

      v116 = Array<A>.identifierToIndexDict()(v99);

      v117 = v132;
      v118 = v130;
      *v132 = v134;
      v117[1] = v118;
      v117[2] = v99;
LABEL_145:
      v125 = v135;
      v117[3] = v116;
      v117[4] = v125;
      v117[5] = v131;
      return;
    }

    if (!v127)
    {
      v152 = 0;
      v150 = 0u;
      v151 = 0u;
LABEL_139:
      sub_1BA30A59C(&v150, &v155, &qword_1EDC6AD40, MEMORY[0x1E69E6720]);
      if (v156)
      {
        sub_1B9F0D9AC(0, &qword_1EDC6AD50, MEMORY[0x1E69A3310], 1);
        sub_1BA4A27B8();
        if (swift_dynamicCast())
        {
          v119 = v148[0];
          v120 = sub_1BA4A2648();

LABEL_144:
          v121 = MEMORY[0x1E69A3310];
          sub_1BA309A30(0, &qword_1EDC5DCA0, &qword_1EDC6AD50, MEMORY[0x1E69A3310], MEMORY[0x1E69E6F90]);
          v122 = swift_allocObject();
          *(v122 + 16) = xmmword_1BA4B5480;
          *(v122 + 56) = &type metadata for SummarySharingIconWithNameItem;
          *(v122 + 64) = sub_1BA14D884();
          v123 = swift_allocObject();
          *(v122 + 32) = v123;
          sub_1BA38B994(v146 + v144, v120, (v123 + 16));

          v116 = Array<A>.identifierToIndexDict()(v122);

          sub_1BA30AB74(&v150, &qword_1EDC6AD40, &qword_1EDC6AD50, v121, MEMORY[0x1E69E6720]);

          v117 = v132;
          v124 = v130;
          *v132 = v134;
          v117[1] = v124;
          v117[2] = v122;
          goto LABEL_145;
        }
      }

      else
      {
        sub_1BA30AB74(&v155, &qword_1EDC6AD40, &qword_1EDC6AD50, MEMORY[0x1E69A3310], MEMORY[0x1E69E6720]);
      }

      v120 = 0;
      goto LABEL_144;
    }

    if (*(v133 + 16))
    {
      sub_1B9F0A534(v133 + 32, &v150);
      goto LABEL_139;
    }

    __break(1u);
  }

  else
  {
    v25 = *(v15 + 16);
    if (v25)
    {
      v132 = a4;
      v26 = v15 + 32;
      v130 = v13;

      v133 = v15;

      v129 = v16;

      v131 = v18;

      v27 = MEMORY[0x1E69E7CC0];
      do
      {
        sub_1B9F0A534(v26, &v150);
        sub_1BA3013D0(&v150, a2, &v153);
        __swift_destroy_boxed_opaque_existential_1(&v150);
        if (v154)
        {
          sub_1B9F1134C(&v153, &v155);
          v28 = swift_isUniquelyReferenced_nonNull_native();
          v149[0] = v27;
          if ((v28 & 1) == 0)
          {
            v27 = sub_1B9F281E8(0, v27[2] + 1, 1, v27);
            v149[0] = v27;
          }

          v30 = v27[2];
          v29 = v27[3];
          if (v30 >= v29 >> 1)
          {
            v27 = sub_1B9F281E8((v29 > 1), v30 + 1, 1, v27);
            v149[0] = v27;
          }

          v31 = v156;
          v32 = v157;
          v33 = __swift_mutable_project_boxed_opaque_existential_1(&v155, v156);
          v34 = MEMORY[0x1EEE9AC00](v33, v33);
          v36 = &v126 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v37 + 16))(v36, v34);
          sub_1B9F1C4F4(v30, v36, v149, v31, v32);
          __swift_destroy_boxed_opaque_existential_1(&v155);
          a2 = v147;
        }

        else
        {
          sub_1BA30AB74(&v153, &qword_1EDC6AD40, &qword_1EDC6AD50, MEMORY[0x1E69A3310], MEMORY[0x1E69E6720]);
        }

        v26 += 40;
        --v25;
      }

      while (v25);

      v38 = v131;
      a4 = v132;
      v39 = v130;
    }

    else
    {
      v39 = v13;

      v38 = v18;
      v27 = MEMORY[0x1E69E7CC0];
    }

    v114 = Array<A>.identifierToIndexDict()(v27);

    v115 = v135;
    *a4 = v134;
    a4[1] = v39;
    a4[2] = v27;
    a4[3] = v114;
    a4[4] = v115;
    a4[5] = v38;
  }
}

void sub_1BA3000F8(void *a1@<X0>, _BYTE *a2@<X2>, void *a3@<X8>)
{
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = a1[4];
  v9 = a1[5];
  *a3 = *a1;
  a3[1] = v5;
  a3[2] = v6;
  a3[3] = v7;
  a3[4] = v8;
  a3[5] = v9;

  sub_1BA300180(a3, a2);
  sub_1BA30072C(a3, a2);
}

void sub_1BA300180(void *a1, _BYTE *a2)
{
  v4 = sub_1BA4A3EA8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[2];
  if (*(v9 + 16))
  {
    sub_1B9F0A534(v9 + 32, v49);
  }

  else
  {
    v50 = 0;
    memset(v49, 0, sizeof(v49));
  }

  sub_1BA30A59C(v49, v48, &qword_1EDC6AD40, MEMORY[0x1E69E6720]);
  if (!v48[3])
  {
    sub_1BA30AB74(v48, &qword_1EDC6AD40, &qword_1EDC6AD50, MEMORY[0x1E69A3310], MEMORY[0x1E69E6720]);
    v43 = 0u;
    v44 = 0u;
    v45 = 0;
    goto LABEL_11;
  }

  sub_1B9F0D9AC(0, &qword_1EDC6AD50, MEMORY[0x1E69A3310], 1);
  sub_1B9F0D9AC(0, &qword_1EBBF05A8, &protocol descriptor for SummarySharingSelectionCategoryProviding, 1);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v45 = 0;
    v43 = 0u;
    v44 = 0u;
    goto LABEL_11;
  }

  v10 = *(&v44 + 1);
  if (!*(&v44 + 1))
  {
LABEL_11:
    sub_1BA30AB74(&v43, &qword_1EBBF05B0, &qword_1EBBF05A8, &protocol descriptor for SummarySharingSelectionCategoryProviding, MEMORY[0x1E69E6720]);
    goto LABEL_12;
  }

  v11 = v4;
  v12 = v45;
  __swift_project_boxed_opaque_existential_1(&v43, *(&v44 + 1));
  v13 = *(v12 + 8);
  v14 = v12;
  v4 = v11;
  v15 = v13(v10, v14);
  __swift_destroy_boxed_opaque_existential_1(&v43);
  if (v15)
  {
    v16 = a1[1];
    v18 = a1[2];
    v17 = a1[3];
    v19 = a1[4];
    v20 = a1[5];
    *&v43 = *a1;
    *(&v43 + 1) = v16;
    *&v44 = v18;
    *(&v44 + 1) = v17;
    v45 = v19;
    v46 = v20;

    sub_1BA3026E4(v15, &v43, a2, v48);

    sub_1B9F0A534(v48, &v43);
    sub_1BA0F1330(0, 0, &v43);
    v21 = Array<A>.identifierToIndexDict()(a1[2]);

    __swift_destroy_boxed_opaque_existential_1(v48);
    sub_1BA30AB74(v49, &qword_1EDC6AD40, &qword_1EDC6AD50, MEMORY[0x1E69A3310], MEMORY[0x1E69E6720]);

    a1[3] = v21;
    return;
  }

LABEL_12:
  sub_1BA4A3D88();
  sub_1BA30A59C(v49, &v43, &qword_1EDC6AD40, MEMORY[0x1E69E6720]);
  v22 = sub_1BA4A3E88();
  v23 = sub_1BA4A6FA8();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v47 = v42;
    *v24 = 136315394;
    v25 = sub_1BA4A85D8();
    v27 = sub_1B9F0B82C(v25, v26, &v47);

    *(v24 + 4) = v27;
    *(v24 + 12) = 2080;
    v28 = MEMORY[0x1E69E6720];
    sub_1BA30A59C(&v43, v48, &qword_1EDC6AD40, MEMORY[0x1E69E6720]);
    v29 = MEMORY[0x1E69A3310];
    v41 = v8;
    sub_1BA309A30(0, &qword_1EDC6AD40, &qword_1EDC6AD50, MEMORY[0x1E69A3310], v28);
    v30 = sub_1BA4A6808();
    v40 = v4;
    v32 = v31;
    sub_1BA30AB74(&v43, &qword_1EDC6AD40, &qword_1EDC6AD50, v29, v28);
    v33 = sub_1B9F0B82C(v30, v32, &v47);

    *(v24 + 14) = v33;
    _os_log_impl(&dword_1B9F07000, v22, v23, "[%s] Unable to determine category for section, omitting header item: %s", v24, 0x16u);
    v34 = v42;
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v34, -1, -1);
    MEMORY[0x1BFAF43A0](v24, -1, -1);

    (*(v5 + 8))(v41, v40);
    v35 = v29;
    v36 = v28;
  }

  else
  {

    v37 = MEMORY[0x1E69A3310];
    v38 = MEMORY[0x1E69E6720];
    sub_1BA30AB74(&v43, &qword_1EDC6AD40, &qword_1EDC6AD50, MEMORY[0x1E69A3310], MEMORY[0x1E69E6720]);
    (*(v5 + 8))(v8, v4);
    v35 = v37;
    v36 = v38;
  }

  sub_1BA30AB74(v49, &qword_1EDC6AD40, &qword_1EDC6AD50, v35, v36);
}

void sub_1BA30072C(uint64_t a1, _BYTE *a2)
{
  v4 = sub_1BA4A3EA8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SummarySharingSelectionFlow(0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 16);
  v14 = v13[2];
  if (!v14)
  {
    v63 = 0u;
    v64 = 0u;
    v65 = 0;
    goto LABEL_17;
  }

  sub_1B9F0A534(&v13[5 * v14 - 1], &v60);
  sub_1B9F0D9AC(0, &qword_1EDC6AD50, MEMORY[0x1E69A3310], 1);
  sub_1B9F0D9AC(0, &qword_1EBBF05A8, &protocol descriptor for SummarySharingSelectionCategoryProviding, 1);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v65 = 0;
    v63 = 0u;
    v64 = 0u;
    goto LABEL_17;
  }

  v58 = a2;
  v15 = *(&v64 + 1);
  if (!*(&v64 + 1))
  {
LABEL_17:
    sub_1BA30AB74(&v63, &qword_1EBBF05B0, &qword_1EBBF05A8, &protocol descriptor for SummarySharingSelectionCategoryProviding, MEMORY[0x1E69E6720]);
    goto LABEL_18;
  }

  v56 = a1;
  v57 = v12;
  v16 = v65;
  __swift_project_boxed_opaque_existential_1(&v63, *(&v64 + 1));
  v17 = (*(v16 + 8))(v15, v16);
  __swift_destroy_boxed_opaque_existential_1(&v63);
  if (v17)
  {
    v18 = v57;
    sub_1BA30A858(&v58[OBJC_IVAR____TtCC18HealthExperienceUI41SummarySharingDataTypeSelectionDataSourceP33_90A4BE97C9AD775CAB10EB5F12011C5813Configuration_selectionFlow], v57, type metadata accessor for SummarySharingSelectionFlow);
    if (swift_getEnumCaseMultiPayload() != 1)
    {

      return;
    }

    if (v58[OBJC_IVAR____TtCC18HealthExperienceUI41SummarySharingDataTypeSelectionDataSourceP33_90A4BE97C9AD775CAB10EB5F12011C5813Configuration_shouldOnlyFetchProminentDataTypes] != 1)
    {

      sub_1BA30A8C0(v18, type metadata accessor for SummarySharingSelectionFlow);
      return;
    }

    if (qword_1EBBE87D0 != -1)
    {
      swift_once();
    }

    sub_1BA309A30(0, &qword_1EDC6B410, &qword_1EDC6B3D0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1BA4B5480;
    v20 = [v17 displayName];
    v21 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v23 = v22;

    *(v19 + 56) = MEMORY[0x1E69E6158];
    *(v19 + 64) = sub_1B9F1BE20();
    *(v19 + 32) = v21;
    *(v19 + 40) = v23;
    v24 = sub_1BA4A67D8();
    v26 = v25;
    v27 = objc_opt_self();
    v55 = [v27 secondarySystemBackgroundColor];
    v28 = swift_allocObject();
    v29 = v58;
    v28[2] = v59;
    v28[3] = v17;
    v28[4] = v29;
    v59 = v17;

    v58 = [v27 linkColor];
    *&v63 = 0x6D6574496B6E694CLL;
    *(&v63 + 1) = 0xE90000000000005FLL;
    MEMORY[0x1BFAF1350](v24, v26);
    v30 = *(&v63 + 1);
    v54 = v63;
    v31 = v13[2];
    if (v31)
    {
      sub_1B9F0A534(&v13[5 * v31 - 1], &v63);
      sub_1B9F0D9AC(0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348], 1);
      v32 = swift_dynamicCast();
      v33 = v56;
      if (v32)
      {
        if (*(&v61 + 1))
        {
          sub_1B9F1134C(&v60, &v63);
          __swift_project_boxed_opaque_existential_1(&v63, *(&v64 + 1));
          v34 = sub_1BA4A2E58();
          v36 = v35;
          *&v60 = type metadata accessor for SummarySharingIconWithNameCell();
          sub_1BA309B50(0, &qword_1EBBE9DF0, type metadata accessor for SummarySharingIconWithNameCell);
          if (v34 == sub_1BA4A6808() && v36 == v37)
          {

            v33 = v56;
          }

          else
          {
            v50 = sub_1BA4A8338();

            v33 = v56;
            if ((v50 & 1) == 0)
            {
LABEL_36:
              __swift_destroy_boxed_opaque_existential_1(&v63);
              goto LABEL_26;
            }
          }

          if (v13[2])
          {
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v51 = v13[2];
              if (v51)
              {
LABEL_35:
                v52 = v51 - 1;
                __swift_destroy_boxed_opaque_existential_1(&v13[5 * v51 - 1]);
                v13[2] = v52;
                *(v33 + 16) = v13;
                v53 = Array<A>.identifierToIndexDict()(v13);

                *(v33 + 24) = v53;
                goto LABEL_36;
              }

LABEL_39:
              __break(1u);
              return;
            }
          }

          else
          {
            __break(1u);
          }

          v13 = sub_1BA2F67D4(v13);
          v51 = v13[2];
          if (v51)
          {
            goto LABEL_35;
          }

          goto LABEL_39;
        }
      }

      else
      {
        v62 = 0;
        v60 = 0u;
        v61 = 0u;
      }
    }

    else
    {
      v60 = 0u;
      v61 = 0u;
      v62 = 0;
      v33 = v56;
    }

    sub_1BA30AB74(&v60, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348], MEMORY[0x1E69E6720]);
LABEL_26:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = sub_1B9F281E8(0, v13[2] + 1, 1, v13);
    }

    v46 = v13[2];
    v45 = v13[3];
    if (v46 >= v45 >> 1)
    {
      v13 = sub_1B9F281E8((v45 > 1), v46 + 1, 1, v13);
    }

    *(&v64 + 1) = &type metadata for LinkButtonItem;
    v65 = sub_1BA1724E4();
    v47 = swift_allocObject();
    *&v63 = v47;
    v47[2] = v54;
    v47[3] = v30;
    v47[4] = v24;
    v47[5] = v26;
    v48 = v55;
    v47[6] = v58;
    v47[7] = v48;
    v47[8] = sub_1BA309A9C;
    v47[9] = v28;
    v13[2] = v46 + 1;
    sub_1B9F1134C(&v63, &v13[5 * v46 + 4]);
    *(v33 + 16) = v13;
    v49 = Array<A>.identifierToIndexDict()(v13);

    *(v33 + 24) = v49;
    sub_1BA30A8C0(v57, type metadata accessor for SummarySharingSelectionFlow);
    return;
  }

LABEL_18:
  sub_1BA4A3D88();
  v38 = sub_1BA4A3E88();
  v39 = sub_1BA4A6FA8();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *&v63 = v41;
    *v40 = 136315138;
    v42 = sub_1BA4A85D8();
    v44 = sub_1B9F0B82C(v42, v43, &v63);

    *(v40 + 4) = v44;
    _os_log_impl(&dword_1B9F07000, v38, v39, "[%s] Unable to determine category for section, omitting footer item", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v41);
    MEMORY[0x1BFAF43A0](v41, -1, -1);
    MEMORY[0x1BFAF43A0](v40, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
}

uint64_t sub_1BA300FB0()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_1B9F18460(*(v0 + qword_1EDC64EB0), *(v0 + qword_1EDC64EB0 + 8), *(v0 + qword_1EDC64EB0 + 16));

  return v0;
}

uint64_t sub_1BA301094()
{
  sub_1BA300FB0();

  return swift_deallocClassInstance();
}

uint64_t sub_1BA301134(uint64_t a1)
{
  result = sub_1BA4A1798();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for SummarySharingSelectionFlow(319);
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

void *sub_1BA30123C(uint64_t a1)
{
  v2 = type metadata accessor for ListLayoutConfiguration(0);
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 8);
  if (qword_1EDC6CB88 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v2, qword_1EDC6CB90);
  sub_1BA30A858(v7, v5, type metadata accessor for ListLayoutConfiguration);
  v8 = *(v2 + 88);
  v9 = sub_1BA4A47D8();
  v10 = *(v9 - 8);
  (*(v10 + 8))(&v5[v8], v9);
  (*(v10 + 104))(&v5[v8], *MEMORY[0x1E69DC288], v9);
  *(v5 + 8) = 0x4034000000000000;
  v11 = ListLayoutConfiguration.layout(for:)(v6);
  sub_1BA30A8C0(v5, type metadata accessor for ListLayoutConfiguration);
  return v11;
}

void sub_1BA3013D0(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t a1)@<X1>, uint64_t a3@<X8>)
{
  v182 = a2;
  v188[5] = *MEMORY[0x1E69E9840];
  v5 = type metadata accessor for SummarySharingSelectableDataTypeItem(0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v161 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent(0);
  v181 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v177 = &v161 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v161 - v14;
  sub_1BA1728B8(0);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v179 = &v161 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v176 = &v161 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v178 = &v161 - v24;
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v161 - v27;
  sub_1BA17294C(0);
  MEMORY[0x1EEE9AC00](v29 - 8, v30);
  v32 = &v161 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F0A534(a1, v188);
  sub_1B9F0D9AC(0, &qword_1EDC6AD50, MEMORY[0x1E69A3310], 1);
  sub_1BA4A27B8();
  if (!swift_dynamicCast())
  {
    sub_1B9F0A534(a1, a3);
    return;
  }

  v174 = v32;
  v180 = v187;
  v33 = sub_1BA4A2758();
  v34 = v33;
  v175 = a3;
  v168 = v8;
  v171 = v15;
  v170 = v5;
  v172 = v28;
  v169 = v9;
  if ((v33 & 0xC000000000000001) != 0)
  {
    v35 = MEMORY[0x1E69E7CD0];
    v188[0] = MEMORY[0x1E69E7CD0];
    sub_1BA4A7C88();
    v36 = sub_1BA4A7CF8();
    if (v36)
    {
      v37 = v36;
      sub_1B9F0ADF8(0, &qword_1EDC6E920, 0x1E696C2E0);
      v38 = v37;
      v183 = 0x80000001BA4E9230;
      v173 = 0x80000001BA4E9260;
      v167 = 0x80000001BA4E92A0;
      v166 = 0x80000001BA4E92D0;
      v165 = 0x80000001BA4E9310;
      v164 = 0x80000001BA4E9340;
      v163 = 0x80000001BA4E9480;
      v162 = 0x80000001BA4E94B0;
      v39 = -1;
      v40 = 1;
      while (1)
      {
        v186 = v38;
        swift_dynamicCast();
        v41 = [v187 identifier];
        v42 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v44 = v43;

        v45 = v42 == 0xD00000000000002ALL && 0x80000001BA4E9200 == v44;
        if (v45 || (sub_1BA4A8338() & 1) != 0)
        {
          break;
        }

        v46 = v42 == 0xD000000000000029 && v183 == v44;
        if (v46 || (sub_1BA4A8338() & 1) != 0 || v42 == 0xD000000000000031 && v173 == v44)
        {
          break;
        }

        v59 = sub_1BA4A8338();
        v60 = v42 == 0xD00000000000002ALL && v167 == v44;
        v61 = v60;
        if ((v59 & 1) != 0 || v61 || (sub_1BA4A8338() & 1) != 0 || v42 == 0xD000000000000033 && v166 == v44)
        {
          break;
        }

        if ((sub_1BA4A8338() & 1) != 0 || v42 == 0xD00000000000002DLL && v165 == v44)
        {
          break;
        }

        v62 = sub_1BA4A8338();
        v63 = v42 == 0xD000000000000033 && v164 == v44;
        v64 = v63;
        if ((v62 & 1) != 0 || v64 || (sub_1BA4A8338() & 1) != 0 || v42 == 0xD000000000000027 && v163 == v44)
        {
          break;
        }

        v65 = sub_1BA4A8338();
        v66 = v42 == 0xD000000000000029 && v162 == v44;
        v67 = v66;
        if ((v65 & 1) != 0 || v67)
        {
          break;
        }

        v68 = sub_1BA4A8338();

        if (v68)
        {
          goto LABEL_18;
        }

LABEL_31:
        v38 = sub_1BA4A7CF8();
        if (!v38)
        {
          goto LABEL_69;
        }
      }

LABEL_18:
      v47 = v187;
      v48 = *(v35 + 16);
      if (*(v35 + 24) <= v48)
      {
        sub_1BA305B7C(v48 + 1);
      }

      v35 = v188[0];
      v49 = sub_1BA4A7788();
      v50 = v35 + 56;
      v51 = -1 << *(v35 + 32);
      v52 = v49 & ~v51;
      v53 = v52 >> 6;
      if (((-1 << v52) & ~*(v35 + 56 + 8 * (v52 >> 6))) != 0)
      {
        v54 = __clz(__rbit64((-1 << v52) & ~*(v35 + 56 + 8 * (v52 >> 6)))) | v52 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v55 = 0;
        v56 = (63 - v51) >> 6;
        do
        {
          if (++v53 == v56 && (v55 & 1) != 0)
          {
            __break(1u);
            goto LABEL_106;
          }

          v57 = v53 == v56;
          if (v53 == v56)
          {
            v53 = 0;
          }

          v55 |= v57;
          v58 = *(v50 + 8 * v53);
        }

        while (v58 == -1);
        v54 = __clz(__rbit64(~v58)) + (v53 << 6);
      }

      *(v50 + ((v54 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v54;
      *(*(v35 + 48) + 8 * v54) = v47;
      ++*(v35 + 16);
      goto LABEL_31;
    }

LABEL_69:
  }

  else
  {
    v69 = *(v33 + 32);
    v70 = ((1 << v69) + 63) >> 6;
    v71 = 8 * v70;
    if ((v69 & 0x3Fu) > 0xD)
    {
      goto LABEL_116;
    }

    while (1)
    {
      v183 = v70;
      v173 = &v161;
      MEMORY[0x1EEE9AC00](v33, v71);
      v73 = &v161 - ((v72 + 15) & 0x3FFFFFFFFFFFFFF0);
      bzero(v73, v72);
      v74 = 0;
      v75 = 0;
      v76 = 1 << *(v34 + 32);
      v77 = -1;
      if (v76 < 64)
      {
        v77 = ~(-1 << v76);
      }

      v70 = v77 & *(v34 + 56);
      v78 = (v76 + 63) >> 6;
      while (v70)
      {
        v79 = __clz(__rbit64(v70));
        v70 &= v70 - 1;
LABEL_81:
        v82 = v79 | (v75 << 6);
        v83 = *(*(v34 + 48) + 8 * v82);
        v84 = HKObjectType.isHealthSharingAlert.getter();

        if (v84)
        {
          *&v73[(v82 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v82;
          if (__OFADD__(v74++, 1))
          {
            __break(1u);
LABEL_85:
            v35 = sub_1BA30795C(v73, v183, v74, v34);
            goto LABEL_86;
          }
        }
      }

      v80 = v75;
      while (1)
      {
        v75 = v80 + 1;
        if (__OFADD__(v80, 1))
        {
          break;
        }

        if (v75 >= v78)
        {
          goto LABEL_85;
        }

        v81 = *(v34 + 56 + 8 * v75);
        ++v80;
        if (v81)
        {
          v79 = __clz(__rbit64(v81));
          v70 = (v81 - 1) & v81;
          goto LABEL_81;
        }
      }

      __break(1u);
LABEL_116:
      v159 = v71;

      if (!swift_stdlib_isStackAllocationSafe())
      {
        break;
      }

      v71 = v159;
    }

    v160 = swift_slowAlloc();
    v35 = sub_1BA306E34(v160, v70, v34, sub_1BA3026B4);

    MEMORY[0x1BFAF43A0](v160, -1, -1);
  }

LABEL_86:
  v39 = v182;
  v86 = v180;
  if ((v35 & 0xC000000000000001) != 0)
  {
    v87 = sub_1BA4A7CC8();
  }

  else
  {
    v87 = *(v35 + 16);
  }

  if (v87)
  {
    v88 = v175;
    *(v175 + 32) = 0;
    *v88 = 0u;
    v88[1] = 0u;

    return;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  v35 = v175;
  if (Strong)
  {
    v90 = *(v39 + 24);
    ObjectType = swift_getObjectType();
    v92 = (*(v90 + 8))(ObjectType, v90);
    swift_unknownObjectRelease();
    v93 = [v86 uniqueIdentifier];
    v94 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v96 = v95;

    swift_beginAccess();
    v97 = *(v92 + 32);

    v98 = sub_1BA3D30B0(v94, v96, v97);
  }

  else
  {
    v98 = 0;
  }

  v99 = v174;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v100 = *(v39 + 24);
    v101 = swift_getObjectType();
    v102 = (*(v100 + 8))(v101, v100);
    swift_unknownObjectRelease();
    v103 = OBJC_IVAR____TtC18HealthExperienceUI38SummarySharingSelectedDataTypesContext_selectionFlow;
    swift_beginAccess();
    sub_1BA30A858(v102 + v103, v99, sub_1BA17294C);
  }

  else
  {
    v104 = type metadata accessor for SummarySharingSelectionFlow(0);
    (*(*(v104 - 8) + 56))(v99, 1, 1, v104);
  }

  if (!FeedItem.pluginInfo.getter())
  {
    sub_1BA30A8C0(v99, sub_1BA17294C);
LABEL_105:

    *(v35 + 32) = 0;
    *v35 = 0u;
    *(v35 + 16) = 0u;
    return;
  }

  v105 = sub_1BA4A3AD8();

  v106 = sub_1BA2FD9C4();
  if (!v106)
  {
    sub_1BA30A8C0(v174, sub_1BA17294C);

    v86 = v105;
    goto LABEL_105;
  }

  v108 = v106;
  v40 = v107;
  v109 = swift_unknownObjectWeakLoadStrong();
  LODWORD(v165) = v98;
  v173 = v105;
  v183 = v108;
  if (v109)
  {
    v110 = *(v39 + 24);
    v111 = swift_getObjectType();
    v112 = (*(v110 + 8))(v111, v110);
    swift_unknownObjectRelease();
    v113 = [v86 uniqueIdentifier];
    v114 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v116 = v115;

    swift_beginAccess();
    v117 = *(v112 + 16);

    if (*(v117 + 16))
    {
      v118 = sub_1B9F24A34(v114, v116);
      v120 = v119;

      if (v120)
      {
        v121 = v181;
        sub_1BA30A858(*(v117 + 56) + *(v181 + 72) * v118, v172, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);

        v122 = 0;
        goto LABEL_109;
      }
    }

    else
    {
LABEL_106:
    }
  }

  v122 = 1;
  v121 = v181;
LABEL_109:
  v123 = *(v121 + 56);
  v124 = v172;
  v125 = v169;
  v167 = v121 + 56;
  v166 = v123;
  v123(v172, v122, 1, v169);
  v126 = v178;
  sub_1BA30A858(v124, v178, sub_1BA1728B8);
  v127 = *(v121 + 48);
  v128 = v125;
  v181 = v121 + 48;
  v129 = v127(v126, 1, v125);
  sub_1BA30A8C0(v126, sub_1BA1728B8);
  if (v129 == 1)
  {
    v130 = swift_getObjectType();
    v131 = v176;
    (*(v40 + 40))(v180, v174, v130, v40);
    sub_1BA30A8C0(v124, sub_1BA1728B8);
    sub_1BA309BDC(v131, v124, sub_1BA1728B8);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v132 = *(v39 + 24);
      v133 = swift_getObjectType();
      (*(v132 + 8))(v133, v132);
      swift_unknownObjectRelease();
      v134 = [v180 uniqueIdentifier];
      v135 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v137 = v136;

      v138 = v176;
      sub_1BA30A858(v124, v176, sub_1BA1728B8);
      swift_beginAccess();
      v139 = v137;
      v39 = v182;
      sub_1B9FEF480(v138, v135, v139);
      swift_endAccess();
    }
  }

  v140 = v179;
  sub_1BA30A858(v124, v179, sub_1BA1728B8);
  v141 = v128;
  if (v127(v140, 1, v128) == 1)
  {

    swift_unknownObjectRelease();
    sub_1BA30A8C0(v124, sub_1BA1728B8);
    sub_1BA30A8C0(v174, sub_1BA17294C);
    sub_1BA30A8C0(v140, sub_1BA1728B8);
    *v35 = 0u;
    *(v35 + 16) = 0u;
    *(v35 + 32) = 0;
  }

  else
  {
    v182 = type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent;
    v142 = v171;
    sub_1BA309BDC(v140, v171, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
    sub_1BA30A858(v142, v177, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
    v181 = swift_unknownObjectWeakLoadStrong();
    v179 = *(v39 + 24);
    v184 = type metadata accessor for SummarySharingSelectableDataTypeCell();
    sub_1BA309B50(0, &qword_1EBBE9DF8, type metadata accessor for SummarySharingSelectableDataTypeCell);
    v143 = sub_1BA4A6808();
    v145 = v144;
    v146 = v168;
    *(v168 + 5) = 0;
    swift_unknownObjectWeakInit();
    v147 = *(v170 + 40);
    v166(v146 + v147, 1, 1, v128);
    *v146 = v143;
    *(v146 + 8) = v145;
    v184 = 0xD000000000000025;
    v185 = 0x80000001BA4E3640;
    v148 = v180;
    v149 = [v148 uniqueIdentifier];
    v150 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v152 = v151;

    MEMORY[0x1BFAF1350](v150, v152);

    v153 = v185;
    *(v146 + 16) = v184;
    *(v146 + 24) = v153;
    v154 = [v148 uniqueIdentifier];
    v155 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v157 = v156;

    *(v146 + 56) = v155;
    *(v146 + 64) = v157;
    sub_1BA30A8C0(v146 + v147, sub_1BA1728B8);
    sub_1BA309BDC(v177, v146 + v147, v182);
    v166(v146 + v147, 0, 1, v141);
    *(v146 + 49) = v165 & 1;
    *(v146 + 40) = v179;
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    *(v146 + 48) = 1;
    *(v35 + 24) = v170;
    *(v35 + 32) = sub_1B9F254C0(&unk_1EBBE9B38, type metadata accessor for SummarySharingSelectableDataTypeItem, &protocol conformance descriptor for SummarySharingSelectableDataTypeItem);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v35);
    sub_1BA309BDC(v146, boxed_opaque_existential_1, type metadata accessor for SummarySharingSelectableDataTypeItem);

    swift_unknownObjectRelease();
    sub_1BA30A8C0(v171, type metadata accessor for SummarySharingSelectableDataTypeItem.PluginViewModelContent);
    sub_1BA30A8C0(v124, sub_1BA1728B8);
    sub_1BA30A8C0(v174, sub_1BA17294C);
  }
}

void sub_1BA3026E4(void *a1@<X0>, void *a2@<X1>, _BYTE *a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = type metadata accessor for SummarySharingSelectionFlow(0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v14 = MEMORY[0x1EEE9AC00](v12, v13).n128_u64[0];
  v16 = &v93 - v15;
  v17 = a2[1];
  *&v94 = *a2;
  *(&v94 + 1) = v17;
  v18 = a2[3];
  *&v95 = a2[2];
  *(&v95 + 1) = v18;
  v19 = a2[5];
  *&v96 = a2[4];
  *(&v96 + 1) = v19;
  v99 = a1;
  v20 = [a1 displayName];
  v21 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v23 = v22;

  v24 = OBJC_IVAR____TtCC18HealthExperienceUI41SummarySharingDataTypeSelectionDataSourceP33_90A4BE97C9AD775CAB10EB5F12011C5813Configuration_selectionFlow;
  sub_1BA30A858(&a3[OBJC_IVAR____TtCC18HealthExperienceUI41SummarySharingDataTypeSelectionDataSourceP33_90A4BE97C9AD775CAB10EB5F12011C5813Configuration_selectionFlow], v16, type metadata accessor for SummarySharingSelectionFlow);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {

    v28 = *v16;
    if (v28 >> 6)
    {
      if (v28 >> 6 == 1)
      {
        LOBYTE(v112) = v28 & 0x3F;
        v29 = sub_1BA2867D8();
      }

      else
      {
        if (qword_1EDC5E100 != -1)
        {
          swift_once();
        }

        v29 = sub_1BA4A1318();
      }

LABEL_27:
      v80 = v29;
      v81 = v30;
      if (a3[OBJC_IVAR____TtCC18HealthExperienceUI41SummarySharingDataTypeSelectionDataSourceP33_90A4BE97C9AD775CAB10EB5F12011C5813Configuration_hasShowAllButton] == 1)
      {
        v112 = v94;
        v113 = v95;
        v114 = v96;
        a4[3] = &type metadata for CollectionViewHeaderWithLinkItem;
        a4[4] = sub_1BA09A7A4();
        v82 = swift_allocObject();
        *a4 = v82;
        sub_1BA3041A0(v80, v81, &v112, a3, v82 + 16);

        return;
      }

      a4[3] = &type metadata for CollectionViewHeaderItem;
      a4[4] = sub_1BA0473B0();
      v72 = swift_allocObject();
      *a4 = v72;
      *&v112 = type metadata accessor for CollectionViewHeaderCell();
      sub_1BA309B50(0, &qword_1EDC664A8, type metadata accessor for CollectionViewHeaderCell);
      *(v72 + 16) = sub_1BA4A6808();
      *(v72 + 24) = v83;
      *(v72 + 32) = v80;
      *(v72 + 40) = v81;
      *(v72 + 48) = j___s18HealthExperienceUI29CollectionViewHeaderProvidingPAAE24makeDefaultConfiguration5UIKit013UIListContentJ0VyFZ_0;
      *(v72 + 56) = 0;
      *(v72 + 64) = 1;
      *(v72 + 72) = 1;
      *(v72 + 144) = 0;
      *(v72 + 80) = 0u;
      *(v72 + 96) = 0u;
      *(v72 + 112) = 0u;
      *(v72 + 121) = 0u;
      *&v112 = v80;
      *(&v112 + 1) = v81;
      *&v107 = 32;
      *(&v107 + 1) = 0xE100000000000000;
      v105 = 0;
      v106 = 0xE000000000000000;
      sub_1B9F252FC();
      v84 = MEMORY[0x1E69E6158];
      v85 = sub_1BA4A7B58();
      v87 = v86;
      sub_1BA30A78C(0, &qword_1EDC6E330, v84, MEMORY[0x1E69E6F90]);
      v88 = swift_allocObject();
      *(v88 + 16) = xmmword_1BA4B5480;
      *(v88 + 32) = v85;
      *(v88 + 40) = v87;

      v89 = sub_1BA4A6AE8();

      v79 = HKUIJoinStringsForAutomationIdentifier();

      if (!v79)
      {
        __break(1u);
LABEL_32:
        __break(1u);
        return;
      }

LABEL_30:

      v90 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v92 = v91;

      *(v72 + 152) = v90;
      *(v72 + 160) = v92;
      return;
    }

LABEL_23:
    LOBYTE(v112) = v28;
    v29 = sub_1BA286570();
    goto LABEL_27;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_1BA30A8C0(v16, type metadata accessor for SummarySharingSelectionFlow);
  }

  v97 = a4;
  v26 = *&a3[OBJC_IVAR____TtCC18HealthExperienceUI41SummarySharingDataTypeSelectionDataSourceP33_90A4BE97C9AD775CAB10EB5F12011C5813Configuration_sectionHeader + 8];
  v93 = v21;
  if (v26)
  {
    a4 = v23;
    v21 = *&a3[OBJC_IVAR____TtCC18HealthExperienceUI41SummarySharingDataTypeSelectionDataSourceP33_90A4BE97C9AD775CAB10EB5F12011C5813Configuration_sectionHeader];
    v27 = v26;
  }

  else
  {

    a4 = v23;
    v27 = v23;
  }

  v31 = a3[OBJC_IVAR____TtCC18HealthExperienceUI41SummarySharingDataTypeSelectionDataSourceP33_90A4BE97C9AD775CAB10EB5F12011C5813Configuration_shouldOnlyFetchProminentDataTypes];

  if ((v31 & 1) == 0)
  {

    if (a3[OBJC_IVAR____TtCC18HealthExperienceUI41SummarySharingDataTypeSelectionDataSourceP33_90A4BE97C9AD775CAB10EB5F12011C5813Configuration_hasShowAllButton] == 1)
    {
      v112 = v94;
      v113 = v95;
      v114 = v96;
      v54 = v97;
      v97[3] = &type metadata for CollectionViewHeaderWithLinkItem;
      v54[4] = sub_1BA09A7A4();
      v55 = swift_allocObject();
      *v54 = v55;
      sub_1BA3041A0(v21, v27, &v112, a3, v55 + 16);

      return;
    }

    v71 = v97;
    v97[3] = &type metadata for CollectionViewHeaderItem;
    v71[4] = sub_1BA0473B0();
    v72 = swift_allocObject();
    *v71 = v72;
    *&v112 = type metadata accessor for CollectionViewHeaderCell();
    sub_1BA309B50(0, &qword_1EDC664A8, type metadata accessor for CollectionViewHeaderCell);
    *(v72 + 16) = sub_1BA4A6808();
    *(v72 + 24) = v73;
    *(v72 + 32) = v21;
    *(v72 + 40) = v27;
    *(v72 + 48) = j___s18HealthExperienceUI29CollectionViewHeaderProvidingPAAE24makeDefaultConfiguration5UIKit013UIListContentJ0VyFZ_0;
    *(v72 + 56) = 0;
    *(v72 + 64) = 1;
    *(v72 + 72) = 1;
    *(v72 + 144) = 0;
    *(v72 + 80) = 0u;
    *(v72 + 96) = 0u;
    *(v72 + 112) = 0u;
    *(v72 + 121) = 0u;
    *&v112 = v21;
    *(&v112 + 1) = v27;
    *&v107 = 32;
    *(&v107 + 1) = 0xE100000000000000;
    v105 = 0;
    v106 = 0xE000000000000000;
    sub_1B9F252FC();
    v74 = MEMORY[0x1E69E6158];
    v75 = sub_1BA4A7B58();
    v77 = v76;
    sub_1BA30A78C(0, &qword_1EDC6E330, v74, MEMORY[0x1E69E6F90]);
    v78 = swift_allocObject();
    *(v78 + 16) = xmmword_1BA4B5480;
    *(v78 + 32) = v75;
    *(v78 + 40) = v77;

    a3 = sub_1BA4A6AE8();

    v79 = HKUIJoinStringsForAutomationIdentifier();

    if (v79)
    {
      goto LABEL_30;
    }

    __break(1u);
    goto LABEL_23;
  }

  v32 = v99;
  v33 = [v99 largeListIcon];
  if (!v33)
  {
    v33 = [v32 listIcon];
  }

  v34 = v33;
  v35 = v33;
  v36 = [v32 color];
  LOBYTE(v107) = 1;
  LOBYTE(v105) = 1;
  LOBYTE(v102) = 1;
  *&v112 = v34;
  *(&v112 + 1) = v36;
  *&v113 = 0;
  BYTE8(v113) = 1;
  v114 = 0uLL;
  LOBYTE(v115) = 1;
  *(&v115 + 1) = 0;
  v116 = 1;
  sub_1BA30A858(&a3[v24], v11, type metadata accessor for SummarySharingSelectionFlow);
  v37 = a4;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1BA30A8C0(v11, type metadata accessor for SummarySharingSelectionFlow);
    v109 = v114;
    v110 = v115;
    v111 = v116;
    v107 = v112;
    v108 = v113;
    v38 = v97;
    v97[3] = &type metadata for CollectionViewHeaderItem;
    v38[4] = sub_1BA0473B0();
    v39 = swift_allocObject();
    *v38 = v39;
    v102 = type metadata accessor for CollectionViewHeaderCell();
    sub_1BA1725A0(&v112, &v105);
    sub_1BA1725A0(&v112, &v105);
    sub_1BA309B50(0, &qword_1EDC664A8, type metadata accessor for CollectionViewHeaderCell);
    *(v39 + 16) = sub_1BA4A6808();
    *(v39 + 24) = v40;
    v41 = v93;
    *(v39 + 32) = v93;
    *(v39 + 40) = a4;
    v42 = v107;
    *(v39 + 88) = v108;
    v43 = v110;
    *(v39 + 104) = v109;
    *(v39 + 120) = v43;
    *(v39 + 48) = sub_1BA09AE24;
    *(v39 + 56) = 0;
    *(v39 + 64) = 1;
    *(v39 + 136) = v111;
    *(v39 + 72) = v42;
    *(v39 + 144) = 0;
    v105 = v41;
    v106 = a4;
    v102 = 32;
    v103 = 0xE100000000000000;
    v100 = 0;
    v101 = 0xE000000000000000;
    sub_1B9F252FC();

    v44 = MEMORY[0x1E69E6158];
    v45 = sub_1BA4A7B58();
    v47 = v46;
    sub_1BA30A78C(0, &qword_1EDC6E330, v44, MEMORY[0x1E69E6F90]);
    v48 = swift_allocObject();
    *(v48 + 16) = xmmword_1BA4B5480;
    *(v48 + 32) = v45;
    *(v48 + 40) = v47;

    v49 = sub_1BA4A6AE8();

    v50 = HKUIJoinStringsForAutomationIdentifier();

    if (v50)
    {

      v51 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v53 = v52;

      sub_1BA1725FC(&v112);

      *(v39 + 152) = v51;
      *(v39 + 160) = v53;
      sub_1BA1725FC(&v112);
      return;
    }

    goto LABEL_32;
  }

  *(&v96 + 1) = v35;
  sub_1BA30A8C0(v11, type metadata accessor for SummarySharingSelectionFlow);
  v109 = v114;
  v110 = v115;
  v111 = v116;
  v107 = v112;
  v108 = v113;
  sub_1BA1725A0(&v112, &v105);
  v56 = v97;
  if (qword_1EBBE87C8 != -1)
  {
    swift_once();
  }

  v57 = qword_1EBBF04F8;
  v58 = unk_1EBBF0500;
  v59 = swift_allocObject();
  v60 = v99;
  v59[2] = v98;
  v59[3] = v60;
  v59[4] = a3;
  v56[3] = &type metadata for CollectionViewHeaderWithLinkItem;
  v56[4] = sub_1BA09A7A4();
  v61 = swift_allocObject();
  *v56 = v61;
  v102 = type metadata accessor for CollectionViewHeaderWithLinkCell();
  sub_1BA1725A0(&v112, &v105);
  sub_1BA309B50(0, &qword_1EBBE9DC0, type metadata accessor for CollectionViewHeaderWithLinkCell);
  v62 = v60;

  v63 = sub_1BA4A6808();
  v65 = v64;
  *&v104[23] = v108;
  *&v104[39] = v109;
  *&v104[55] = v110;
  v104[71] = v111;
  *&v104[7] = v107;
  v105 = 0;
  v106 = 0xE000000000000000;

  sub_1BA4A7DF8();

  v105 = 0xD000000000000013;
  v106 = 0x80000001BA4E76C0;
  v66 = v93;
  MEMORY[0x1BFAF1350](v93, v37);

  MEMORY[0x1BFAF1350](95, 0xE100000000000000);
  MEMORY[0x1BFAF1350](v57, v58);

  sub_1BA1725FC(&v112);
  sub_1BA1725FC(&v112);

  v67 = v105;
  v68 = v106;
  *(v61 + 16) = v63;
  *(v61 + 24) = v65;
  *(v61 + 32) = v67;
  *(v61 + 40) = v68;
  *(v61 + 48) = v66;
  *(v61 + 56) = v37;
  v69 = *v104;
  *(v61 + 97) = *&v104[16];
  v70 = *&v104[48];
  *(v61 + 113) = *&v104[32];
  *(v61 + 129) = v70;
  *(v61 + 64) = sub_1BA09AE24;
  *(v61 + 72) = 0;
  *(v61 + 80) = 1;
  *(v61 + 145) = *&v104[64];
  *(v61 + 81) = v69;
  *(v61 + 160) = 0;
  *(v61 + 168) = v57;
  *(v61 + 176) = v58;
  *(v61 + 184) = 1;
  *(v61 + 192) = sub_1BA309A9C;
  *(v61 + 200) = v59;
  *(v61 + 208) = 0;
  *(v61 + 216) = 0;
}

void sub_1BA303368(void *a1, void *a2, uint64_t a3)
{
  v99 = sub_1BA4A3EA8();
  v6 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99, v7);
  v9 = &v92 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SummarySharingSelectionFlow(0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v92 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v92 - v16;
  MEMORY[0x1EEE9AC00](v18, v19);
  v97 = (&v92 - v20);
  if (!a2 || ((swift_getObjectType(), (v21 = swift_conformsToProtocol2()) != 0) ? (v22 = a2) : (v22 = 0), !v21))
  {
    sub_1BA4A3D88();
    v45 = a2;
    v46 = sub_1BA4A3E88();
    v47 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v100 = v49;
      *v48 = 136315394;
      v50 = sub_1BA4A85D8();
      v52 = sub_1B9F0B82C(v50, v51, &v100);

      *(v48 + 4) = v52;
      *(v48 + 12) = 2080;
      v105 = a2;
      sub_1BA096EEC(0);
      v53 = v45;
      v54 = sub_1BA4A6808();
      v56 = sub_1B9F0B82C(v54, v55, &v100);

      *(v48 + 14) = v56;
      _os_log_impl(&dword_1B9F07000, v46, v47, "[%s] Parent view controller %s does not conform to SummarySharingSelectedDataTypesDelegate", v48, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v49, -1, -1);
      MEMORY[0x1BFAF43A0](v48, -1, -1);
    }

    (*(v6 + 8))(v9, v99);
    return;
  }

  v23 = v21;
  v94 = v22;
  sub_1B9F0A534(a3 + OBJC_IVAR____TtCC18HealthExperienceUI41SummarySharingDataTypeSelectionDataSourceP33_90A4BE97C9AD775CAB10EB5F12011C5813Configuration_healthExperienceStore, &v105);
  ObjectType = swift_getObjectType();
  v99 = v10;
  v25 = *(v23 + 8);
  v93 = a2;
  v92 = v23;
  v26 = v25(ObjectType, v23);
  sub_1BA30A78C(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v27 = swift_allocObject();
  v96 = xmmword_1BA4B5470;
  *(v27 + 16) = xmmword_1BA4B5470;
  *(v27 + 32) = a1;
  v28 = v97;
  sub_1BA30A858(a3 + OBJC_IVAR____TtCC18HealthExperienceUI41SummarySharingDataTypeSelectionDataSourceP33_90A4BE97C9AD775CAB10EB5F12011C5813Configuration_selectionFlow, v97, type metadata accessor for SummarySharingSelectionFlow);
  v29 = objc_allocWithZone(MEMORY[0x1E696C1C0]);
  v30 = a1;
  v31 = [v29 init];
  v32 = objc_allocWithZone(type metadata accessor for SummarySharingDataTypeSelectionViewController(0));
  *&v32[OBJC_IVAR____TtC18HealthExperienceUI45SummarySharingDataTypeSelectionViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v32[OBJC_IVAR____TtC18HealthExperienceUI45SummarySharingDataTypeSelectionViewController_cancellables] = MEMORY[0x1E69E7CC0];
  sub_1B9F0A534(&v105, &v32[OBJC_IVAR____TtC18HealthExperienceUI45SummarySharingDataTypeSelectionViewController_healthExperienceStore]);
  *&v32[OBJC_IVAR____TtC18HealthExperienceUI45SummarySharingDataTypeSelectionViewController_selectedCategories] = v27;
  sub_1BA30A858(v28, &v32[OBJC_IVAR____TtC18HealthExperienceUI45SummarySharingDataTypeSelectionViewController_selectionFlow], type metadata accessor for SummarySharingSelectionFlow);
  v33 = &v32[OBJC_IVAR____TtC18HealthExperienceUI45SummarySharingDataTypeSelectionViewController_selectedContact];
  *v33 = 0u;
  *(v33 + 1) = 0u;
  *(v33 + 4) = 0;
  *&v32[OBJC_IVAR____TtC18HealthExperienceUI45SummarySharingDataTypeSelectionViewController_selectedContactPhotoPublisher] = 0;
  v98 = v32;
  *&v32[OBJC_IVAR____TtC18HealthExperienceUI45SummarySharingDataTypeSelectionViewController_selectedDataTypesContext] = v26;
  v34 = swift_allocObject();
  *(v34 + 16) = v96;
  sub_1B9F0A534(&v105, v104);
  sub_1BA30A858(v28, v17, type metadata accessor for SummarySharingSelectionFlow);
  v100 = 1;
  type metadata accessor for SummarySharingDataTypeSelectionDataSource(0);
  memset(v103, 0, sizeof(v103));
  v101 = 0u;
  v102 = 0u;
  swift_allocObject();
  swift_bridgeObjectRetain_n();
  *&v96 = v26;

  v95 = v31;
  *(v34 + 32) = sub_1BA3094BC(v104, v31, MEMORY[0x1E69E7CC0], 0, v27, v17, MEMORY[0x1E69E7CC0], 0, 0, &v100, 1u);
  sub_1BA30A858(v28, v13, type metadata accessor for SummarySharingSelectionFlow);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1BA30A8C0(v13, type metadata accessor for SummarySharingSelectionFlow);
    }

    v36 = objc_opt_self();
    v37 = [v36 categoryWithID_];
    v39 = v37;
    if (v37)
    {
      v100 = v37;
      MEMORY[0x1EEE9AC00](v37, v38);
      v91 = &v100;
      v40 = v39;
      v41 = sub_1BA0117F8(sub_1BA30AC8C, &v89, v27);

      if (v41)
      {
        MEMORY[0x1EEE9AC00](v42, v43);
        *(&v92 - 6) = &v105;
        *(&v92 - 5) = v95;
        LOBYTE(v89) = 0;
        v90 = v27;
        v91 = v97;
        sub_1BA24F180(sub_1BA1E5264, (&v92 - 8), &unk_1F37FD0B8);
        v34 = v44;

        goto LABEL_20;
      }
    }

    v57 = [v36 categoryWithID_];
    v59 = v57;
    if (v57)
    {
      v100 = v57;
      MEMORY[0x1EEE9AC00](v57, v58);
      v91 = &v100;
      v60 = v59;
      v61 = sub_1BA0117F8(sub_1BA309ACC, &v89, v27);

      if (v61)
      {
        MEMORY[0x1EEE9AC00](v62, v63);
        *(&v92 - 6) = &v105;
        *(&v92 - 5) = v95;
        LOBYTE(v89) = 0;
        v90 = v27;
        v91 = v97;
        sub_1BA24F180(sub_1BA1E5238, (&v92 - 8), &unk_1F37FD0E0);
        v34 = v64;

        goto LABEL_20;
      }
    }

    sub_1BA30A78C(0, &qword_1EDC6E330, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BA4B5460;
    *(inited + 32) = sub_1BA4A2178();
    *(inited + 40) = v66;
    v67 = sub_1BA4A2168();
    *(inited + 48) = v67;
    *(inited + 56) = v68;
    MEMORY[0x1EEE9AC00](v67, v68);
    *(&v92 - 6) = &v105;
    *(&v92 - 5) = v95;
    LOBYTE(v89) = 0;
    v90 = v27;
    v91 = v97;
    sub_1BA24A670(sub_1BA1E51F0, (&v92 - 8), inited);
    v34 = v69;

    swift_setDeallocating();
    swift_arrayDestroy();
  }

LABEL_20:
  *(v98 + OBJC_IVAR____TtC18HealthExperienceUI45SummarySharingDataTypeSelectionViewController_dataTypeSelectionDataSources) = v34;

  v70 = sub_1B9FE98D4();

  v100 = v70;
  sub_1B9FE20B8(MEMORY[0x1E69E7CC0]);
  v71 = v100;
  type metadata accessor for CompoundSectionedDataSource(0);
  swift_allocObject();
  v72 = CompoundSectionedDataSource.init(_:)(v71);
  v73 = CompoundDataSourceCollectionViewController.init(dataSource:)(v72);
  v100 = *(v96 + 48);
  v74 = MEMORY[0x1E695BF70];
  sub_1BA10E0E4(0, &qword_1EBBEB1A0, MEMORY[0x1E695BF70]);
  sub_1BA10E150(&qword_1EBBEB1A8, &qword_1EBBEB1A0, v74, MEMORY[0x1E695BF88]);
  v75 = v73;
  v100 = sub_1BA4A4F98();
  v76 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v77 = swift_allocObject();
  *(v77 + 16) = sub_1BA10E0DC;
  *(v77 + 24) = v76;
  v78 = MEMORY[0x1E695BED0];
  sub_1BA10E0E4(0, &qword_1EBBEB1B0, MEMORY[0x1E695BED0]);
  sub_1BA10E150(&qword_1EBBEB1B8, &qword_1EBBEB1B0, v78, MEMORY[0x1E695BED8]);
  sub_1BA4A5148();

  swift_beginAccess();
  sub_1BA30A728(0, &qword_1EDC5E6C0, MEMORY[0x1E695BF10], MEMORY[0x1E69E62F8]);
  sub_1BA091D04();
  sub_1BA4A4D38();
  swift_endAccess();

  v79 = *&v75[OBJC_IVAR____TtC18HealthExperienceUI45SummarySharingDataTypeSelectionViewController_dataTypeSelectionDataSources];
  if (v79 >> 62)
  {
    goto LABEL_34;
  }

  v80 = *((v79 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_22:

  if (v80)
  {
    v81 = 0;
    v99 = v79 & 0xC000000000000001;
    v98 = v79 & 0xFFFFFFFFFFFFFF8;
    do
    {
      if (v99)
      {
        v82 = MEMORY[0x1BFAF2860](v81, v79);
        v83 = v81 + 1;
        if (__OFADD__(v81, 1))
        {
LABEL_31:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v81 >= *(v98 + 16))
        {
          __break(1u);
LABEL_34:
          v80 = sub_1BA4A7CC8();
          goto LABEL_22;
        }

        v82 = *(v79 + 8 * v81 + 32);

        v83 = v81 + 1;
        if (__OFADD__(v81, 1))
        {
          goto LABEL_31;
        }
      }

      *(*(v82 + qword_1EBBF0538) + OBJC_IVAR____TtCC18HealthExperienceUI41SummarySharingDataTypeSelectionDataSourceP33_90A4BE97C9AD775CAB10EB5F12011C5813Configuration_selectedDataTypesDelegate + 8) = &protocol witness table for SummarySharingDataTypeSelectionViewController;
      swift_unknownObjectWeakAssign();
      type metadata accessor for SummarySharingSelectionContextDelegate();
      v84 = swift_allocObject();
      *(v84 + 24) = 0;
      swift_unknownObjectWeakInit();
      *(v84 + 24) = &protocol witness table for SummarySharingDataTypeSelectionViewController;
      swift_unknownObjectWeakAssign();
      v85 = v75;
      sub_1BA29AAC4(v84);
      sub_1BA2FE7FC();

      ++v81;
    }

    while (v83 != v80);
  }

  sub_1BA30A8C0(v97, type metadata accessor for SummarySharingSelectionFlow);
  __swift_destroy_boxed_opaque_existential_1(&v105);
  v86 = &v75[OBJC_IVAR____TtC18HealthExperienceUI45SummarySharingDataTypeSelectionViewController_delegate];
  swift_beginAccess();
  *(v86 + 1) = v92;
  v87 = v94;
  swift_unknownObjectWeakAssign();
  v88 = [objc_allocWithZone(MEMORY[0x1E69A4420]) initWithRootViewController_];
  [v87 presentViewController:v88 animated:1 completion:0];
}

void sub_1BA304108()
{
  v0 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  sub_1B9F43830(v0, v1);

  v2 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  sub_1BA162EA0(v2, v3);

  v4 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  sub_1BA162E6C(v4, v5);

  sub_1B9FF51C4();
  sub_1B9FF51F8();
  sub_1B9FF522C();
  sub_1B9FF5260();
  sub_1B9FF5294();
}

void sub_1BA3041A0(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v81 = a4;
  v83 = a5;
  v84 = a2;
  v82 = a1;
  v6 = type metadata accessor for SummarySharingSelectableDataTypeItem(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v88 = v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA172538(0);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = v80 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = v80 - v16;
  MEMORY[0x1EEE9AC00](v18, v19);
  v91 = v80 - v20;
  sub_1BA17256C(0);
  v22 = v21;
  MEMORY[0x1EEE9AC00](v21, v23);
  v86 = v80 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v85 = v80 - v27;
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = v80 - v30;
  MEMORY[0x1EEE9AC00](v32, v33);
  v35 = v80 - v34;
  v36 = a3[2];
  v108 = a3[1];
  v109 = v36;
  v107 = *a3;
  v110[0] = v108;
  v87 = v108 + 32;
  v37 = *(v108 + 16);
  v95 = (v38 + 56);
  v93 = (v7 + 56);
  v94 = (v38 + 48);
  v92 = (v7 + 48);

  v39 = 0;
  v89 = v37;
  v90 = v13;
  while (1)
  {
    while (1)
    {
      if (v39 == v37)
      {
        *&v104 = 0;
        v40 = v37;
        v102 = 0u;
        v103 = 0u;
      }

      else
      {
        if (v39 >= v37)
        {
          __break(1u);
LABEL_27:
          __break(1u);
          goto LABEL_28;
        }

        sub_1B9F0A534(v87 + 40 * v39, &v102);
        v41 = __OFADD__(v39, 1);
        v40 = v39 + 1;
        if (v41)
        {
          goto LABEL_27;
        }
      }

      v96 = v40;
      v99[0] = v102;
      v99[1] = v103;
      v100 = v104;
      if (*(&v103 + 1))
      {
        sub_1B9F1134C(v99, v98);
        sub_1B9F0A534(v98, &v97);
        sub_1B9F0D9AC(0, &qword_1EDC6AD50, MEMORY[0x1E69A3310], 1);
        v42 = swift_dynamicCast();
        (*v93)(v17, v42 ^ 1u, 1, v6);
        __swift_destroy_boxed_opaque_existential_1(v98);
        v43 = *v95;
        (*v95)(v17, 0, 1, v22);
      }

      else
      {
        v43 = *v95;
        (*v95)(v17, 1, 1, v22);
      }

      v44 = *v94;
      if ((*v94)(v17, 1, v22) == 1)
      {
        sub_1BA30A8C0(v17, sub_1BA172538);
        v45 = 1;
        goto LABEL_14;
      }

      sub_1BA309BDC(v17, v31, sub_1BA17256C);
      if ((*v92)(v31, 1, v6) != 1)
      {
        break;
      }

      sub_1BA30A8C0(v31, sub_1BA17256C);
      v39 = v96;
    }

    sub_1BA309BDC(v31, v91, sub_1BA17256C);
    v45 = 0;
LABEL_14:
    v46 = v91;
    v43(v91, v45, 1, v22);
    v47 = v46;
    v48 = v90;
    sub_1BA309BDC(v47, v90, sub_1BA172538);
    v49 = v44(v48, 1, v22);
    v50 = v92;
    if (v49 == 1)
    {
      (*v93)(v35, 1, 1, v6);
      v51 = *v50;
      goto LABEL_18;
    }

    v52 = v17;
    v53 = v22;
    v54 = v31;
    v55 = v6;
    v56 = v85;
    sub_1BA309BDC(v48, v85, sub_1BA17256C);
    v57 = v86;
    sub_1BA30A858(v56, v86, sub_1BA17256C);
    v51 = *v50;
    if (v51(v57, 1, v55) == 1)
    {
      break;
    }

    sub_1BA309BDC(v57, v35, type metadata accessor for SummarySharingSelectableDataTypeItem);
    sub_1BA30A8C0(v56, sub_1BA17256C);
    (*v93)(v35, 0, 1, v55);
    v6 = v55;
    v31 = v54;
    v22 = v53;
    v17 = v52;
LABEL_18:
    v37 = v89;
    if (v51(v35, 1, v6) == 1)
    {
      sub_1BA30AB74(v110, &qword_1EDC5E710, &qword_1EDC6AD50, MEMORY[0x1E69A3310], MEMORY[0x1E69E62F8]);
      if (qword_1EBBE87E0 == -1)
      {
LABEL_24:
        v60 = &qword_1EBBF0528;
LABEL_25:
        v62 = v83;
        v61 = v84;
        v63 = v60[1];
        v96 = *v60;

        *&v102 = 0;
        *(&v102 + 1) = 0xE000000000000000;
        sub_1BA4A7DF8();
        v64 = v80[1];
        v65 = sub_1BA4A85D8();
        v67 = v66;

        *&v102 = v65;
        *(&v102 + 1) = v67;
        MEMORY[0x1BFAF1350](95, 0xE100000000000000);
        v68 = v81;
        v69 = sub_1BA4A1748();
        MEMORY[0x1BFAF1350](v69);

        MEMORY[0x1BFAF1350](0x497265646165485FLL, 0xEB000000006D6574);
        v70 = v102;
        v71 = *(v68 + OBJC_IVAR____TtCC18HealthExperienceUI41SummarySharingDataTypeSelectionDataSourceP33_90A4BE97C9AD775CAB10EB5F12011C5813Configuration_sectionHeaderIconConfig + 48);
        v104 = *(v68 + OBJC_IVAR____TtCC18HealthExperienceUI41SummarySharingDataTypeSelectionDataSourceP33_90A4BE97C9AD775CAB10EB5F12011C5813Configuration_sectionHeaderIconConfig + 32);
        v105 = v71;
        v106 = *(v68 + OBJC_IVAR____TtCC18HealthExperienceUI41SummarySharingDataTypeSelectionDataSourceP33_90A4BE97C9AD775CAB10EB5F12011C5813Configuration_sectionHeaderIconConfig + 64);
        v72 = *(v68 + OBJC_IVAR____TtCC18HealthExperienceUI41SummarySharingDataTypeSelectionDataSourceP33_90A4BE97C9AD775CAB10EB5F12011C5813Configuration_sectionHeaderIconConfig + 16);
        v102 = *(v68 + OBJC_IVAR____TtCC18HealthExperienceUI41SummarySharingDataTypeSelectionDataSourceP33_90A4BE97C9AD775CAB10EB5F12011C5813Configuration_sectionHeaderIconConfig);
        v103 = v72;
        v73 = swift_allocObject();
        *(v73 + 16) = v68;
        *(v73 + 24) = v64;
        v74 = v108;
        *(v73 + 32) = v107;
        *(v73 + 48) = v74;
        *(v73 + 64) = v109;
        *(v73 + 80) = v64;
        v98[0] = type metadata accessor for CollectionViewHeaderWithLinkCell();
        sub_1BA309C54(&v102, v99);

        sub_1BA0F7D24(&v107, v99);
        sub_1BA309B50(0, &qword_1EBBE9DC0, type metadata accessor for CollectionViewHeaderWithLinkCell);
        v75 = sub_1BA4A6808();
        *&v101[39] = v104;
        *&v101[23] = v103;
        *&v101[55] = v105;
        v101[71] = v106;
        *&v101[7] = v102;
        *v62 = v75;
        *(v62 + 8) = v76;
        *(v62 + 16) = v70;
        *(v62 + 32) = v82;
        *(v62 + 40) = v61;
        v77 = *v101;
        *(v62 + 81) = *&v101[16];
        v78 = *&v101[48];
        *(v62 + 97) = *&v101[32];
        *(v62 + 113) = v78;
        *(v62 + 48) = sub_1BA09AE24;
        *(v62 + 56) = 0;
        *(v62 + 64) = 1;
        *(v62 + 129) = *&v101[64];
        *(v62 + 65) = v77;
        v79 = v96;
        *(v62 + 144) = 0;
        *(v62 + 152) = v79;
        *(v62 + 160) = v63;
        *(v62 + 168) = 1;
        *(v62 + 176) = sub_1BA309C44;
        *(v62 + 184) = v73;
        *(v62 + 192) = 0;
        *(v62 + 200) = 0;

        return;
      }

LABEL_28:
      swift_once();
      goto LABEL_24;
    }

    v58 = v88;
    sub_1BA309BDC(v35, v88, type metadata accessor for SummarySharingSelectableDataTypeItem);
    v59 = *(v58 + 49);
    sub_1BA30A8C0(v58, type metadata accessor for SummarySharingSelectableDataTypeItem);
    v39 = v96;
    if ((v59 & 1) == 0)
    {
      sub_1BA30AB74(v110, &qword_1EDC5E710, &qword_1EDC6AD50, MEMORY[0x1E69A3310], MEMORY[0x1E69E62F8]);
      if (qword_1EBBE87D8 != -1)
      {
        swift_once();
      }

      v60 = &qword_1EBBF0518;
      goto LABEL_25;
    }
  }

  __break(1u);
}

uint64_t sub_1BA304AE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1BA4A3EA8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a2 + OBJC_IVAR____TtCC18HealthExperienceUI41SummarySharingDataTypeSelectionDataSourceP33_90A4BE97C9AD775CAB10EB5F12011C5813Configuration_selectedDataTypesDelegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v13 = *(v12 + 8);
    ObjectType = swift_getObjectType();
    v15 = (*(v13 + 8))(ObjectType, v13);
    sub_1BA309D18(a4, v15, &unk_1F38163D0, sub_1BA30A590, &unk_1F38163F8, sub_1BA30AC84);

    return swift_unknownObjectRelease();
  }

  else
  {
    sub_1BA4A3D88();
    v17 = sub_1BA4A3E88();
    v18 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v25 = v20;
      *v19 = 136315138;
      v21 = sub_1BA4A85D8();
      v23 = sub_1B9F0B82C(v21, v22, &v25);

      *(v19 + 4) = v23;
      _os_log_impl(&dword_1B9F07000, v17, v18, "[%s] Attempting to toggle data type selection without a context to apply changes", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      MEMORY[0x1BFAF43A0](v20, -1, -1);
      MEMORY[0x1BFAF43A0](v19, -1, -1);
    }

    return (*(v8 + 8))(v11, v7);
  }
}

void sub_1BA304D58(uint64_t a1)
{
  v2 = v1;
  v38 = sub_1BA4A1C68();
  v3 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38, v4);
  v37 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_1BA30AAC0(0, &qword_1EBBEBE88, MEMORY[0x1E69A3C08], sub_1BA30AA8C, MEMORY[0x1E69E6A10]);
  v7 = sub_1BA4A7D78();
  v8 = v7;
  if (*(v6 + 16))
  {
    v32 = v1;
    v33 = v6;
    v9 = 0;
    v10 = (v6 + 56);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v36 = v3 + 32;
    v15 = v7 + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v6 + 48) + *(v3 + 72) * (v17 | (v9 << 6));
      v21 = *(v3 + 32);
      v34 = *(v3 + 72);
      v35 = v21;
      v21(v37, v20, v38);
      sub_1BA30AA8C();
      v22 = sub_1BA4A6698();
      v23 = -1 << *(v8 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v15 + 8 * v25);
          if (v29 != -1)
          {
            v16 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v35(*(v8 + 48) + v16 * v34, v37, v38);
      ++*(v8 + 16);
      v6 = v33;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    v30 = 1 << *(v6 + 32);
    if (v30 >= 64)
    {
      bzero(v10, ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v30;
    }

    v2 = v32;
    *(v6 + 16) = 0;
  }

  *v2 = v8;
}

void sub_1BA3050BC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1BA0E790C();
  v4 = sub_1BA4A7D78();
  v5 = v4;
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
    v12 = v4 + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_1BA4A8488();
      sub_1BA4A68C8();
      v21 = sub_1BA4A84D8();
      v22 = -1 << *(v5 + 32);
      v23 = v21 & ~v22;
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
        return;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
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
      bzero((v3 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_1BA305310(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for SummarySharingSelectableDataTypeItem(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  sub_1BA30AAC0(0, &qword_1EBBEBE50, type metadata accessor for SummarySharingSelectableDataTypeItem, sub_1BA30AB40, MEMORY[0x1E69E6A10]);
  v9 = sub_1BA4A7D78();
  v10 = v9;
  if (*(v8 + 16))
  {
    v11 = 0;
    v12 = *(v8 + 56);
    v33 = v1;
    v34 = (v8 + 56);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & v12;
    v16 = (v13 + 63) >> 6;
    v17 = v9 + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v22 = *(v8 + 48);
      v36 = *(v4 + 72);
      sub_1BA309BDC(v22 + v36 * (v19 | (v11 << 6)), v7, type metadata accessor for SummarySharingSelectableDataTypeItem);
      sub_1BA4A8488();
      if (*(v7 + 8))
      {
        v35 = v15;
        sub_1BA4A84A8();
        v15 = v35;
        sub_1BA4A68C8();
      }

      else
      {
        sub_1BA4A84A8();
      }

      v23 = sub_1BA4A84D8();
      v24 = -1 << *(v10 + 32);
      v25 = v23 & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v17 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v17 + 8 * v26);
          if (v30 != -1)
          {
            v18 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return;
      }

      v18 = __clz(__rbit64((-1 << v25) & ~*(v17 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      sub_1BA309BDC(v7, *(v10 + 48) + v18 * v36, type metadata accessor for SummarySharingSelectableDataTypeItem);
      ++*(v10 + 16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v34[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    v31 = 1 << *(v8 + 32);
    if (v31 >= 64)
    {
      bzero(v34, ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v34 = -1 << v31;
    }

    v2 = v33;
    *(v8 + 16) = 0;
  }

  *v2 = v10;
}

void sub_1BA30569C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1BA30ABD0(0, &qword_1EBBEBE48, sub_1BA0251E0, &type metadata for SummarySharingSelectionSuggestedCategory);
  v4 = sub_1BA4A7D78();
  if (*(v3 + 16))
  {
    v5 = 0;
    v6 = (v3 + 56);
    v7 = 1 << *(v3 + 32);
    v8 = -1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    while (v9)
    {
      v11 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_11:
      sub_1BA306CAC(*(*(v3 + 48) + (v11 | (v5 << 6))), v4);
    }

    v12 = v5;
    while (1)
    {
      v5 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        return;
      }

      if (v5 >= v10)
      {
        break;
      }

      v13 = v6[v5];
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v9 = (v13 - 1) & v13;
        goto LABEL_11;
      }
    }

    v14 = 1 << *(v3 + 32);
    if (v14 >= 64)
    {
      bzero((v3 + 56), ((v14 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v14;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v4;
}

void sub_1BA305818(uint64_t a1)
{
  v2 = v1;
  v38 = sub_1BA4A3A28();
  v3 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38, v4);
  v37 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_1BA30AAC0(0, &qword_1EBBEBE58, MEMORY[0x1E69A3910], sub_1BA08FE28, MEMORY[0x1E69E6A10]);
  v7 = sub_1BA4A7D78();
  v8 = v7;
  if (*(v6 + 16))
  {
    v32 = v1;
    v33 = v6;
    v9 = 0;
    v10 = (v6 + 56);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v36 = v3 + 32;
    v15 = v7 + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v6 + 48) + *(v3 + 72) * (v17 | (v9 << 6));
      v21 = *(v3 + 32);
      v34 = *(v3 + 72);
      v35 = v21;
      v21(v37, v20, v38);
      sub_1BA08FE28();
      v22 = sub_1BA4A6698();
      v23 = -1 << *(v8 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v15 + 8 * v25);
          if (v29 != -1)
          {
            v16 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v35(*(v8 + 48) + v16 * v34, v37, v38);
      ++*(v8 + 16);
      v6 = v33;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    v30 = 1 << *(v6 + 32);
    if (v30 >= 64)
    {
      bzero(v10, ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v30;
    }

    v2 = v32;
    *(v6 + 16) = 0;
  }

  *v2 = v8;
}

void sub_1BA305B7C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1BA0E75E0(0);
  v4 = sub_1BA4A7D78();
  v5 = v4;
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
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      v18 = sub_1BA4A7788();
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
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

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_1BA305D98(uint64_t a1)
{
  v2 = v1;
  v38 = sub_1BA4A1E88();
  v3 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38, v4);
  v37 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_1BA30AAC0(0, &qword_1EBBEBE80, MEMORY[0x1E69A3C80], sub_1BA30AA58, MEMORY[0x1E69E6A10]);
  v7 = sub_1BA4A7D78();
  v8 = v7;
  if (*(v6 + 16))
  {
    v32 = v1;
    v33 = v6;
    v9 = 0;
    v10 = (v6 + 56);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v36 = v3 + 32;
    v15 = v7 + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v6 + 48) + *(v3 + 72) * (v17 | (v9 << 6));
      v21 = *(v3 + 32);
      v34 = *(v3 + 72);
      v35 = v21;
      v21(v37, v20, v38);
      sub_1BA30AA58();
      v22 = sub_1BA4A6698();
      v23 = -1 << *(v8 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v15 + 8 * v25);
          if (v29 != -1)
          {
            v16 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v35(*(v8 + 48) + v16 * v34, v37, v38);
      ++*(v8 + 16);
      v6 = v33;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    v30 = 1 << *(v6 + 32);
    if (v30 >= 64)
    {
      bzero(v10, ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v30;
    }

    v2 = v32;
    *(v6 + 16) = 0;
  }

  *v2 = v8;
}

void sub_1BA3060FC(uint64_t a1, __n128 a2)
{
  v3 = v2;
  v4 = *v2;
  sub_1BA30AAC0(0, &qword_1EDC5E060, MEMORY[0x1E69A3DD0], sub_1BA30AA24, MEMORY[0x1E69E6A10]);
  v5 = sub_1BA4A7D78();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = v5 + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(*(v4 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = sub_1BA4A7788();
      v20 = -1 << *(v6 + 32);
      v21 = v19 & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v4 + 32);
    if (v27 >= 64)
    {
      bzero((v4 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    *(v4 + 16) = 0;
  }

  *v3 = v6;
}

void sub_1BA30635C(uint64_t a1)
{
  v2 = v1;
  v38 = sub_1BA4A15D8();
  v3 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38, v4);
  v37 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_1BA30AAC0(0, &qword_1EBBEBE78, MEMORY[0x1E6968FB0], sub_1BA30A9F0, MEMORY[0x1E69E6A10]);
  v7 = sub_1BA4A7D78();
  v8 = v7;
  if (*(v6 + 16))
  {
    v32 = v1;
    v33 = v6;
    v9 = 0;
    v10 = (v6 + 56);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v36 = v3 + 32;
    v15 = v7 + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v6 + 48) + *(v3 + 72) * (v17 | (v9 << 6));
      v21 = *(v3 + 32);
      v34 = *(v3 + 72);
      v35 = v21;
      v21(v37, v20, v38);
      sub_1BA30A9F0();
      v22 = sub_1BA4A6698();
      v23 = -1 << *(v8 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v15 + 8 * v25);
          if (v29 != -1)
          {
            v16 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v35(*(v8 + 48) + v16 * v34, v37, v38);
      ++*(v8 + 16);
      v6 = v33;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    v30 = 1 << *(v6 + 32);
    if (v30 >= 64)
    {
      bzero(v10, ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v30;
    }

    v2 = v32;
    *(v6 + 16) = 0;
  }

  *v2 = v8;
}

void sub_1BA3066C0(uint64_t a1)
{
  v2 = v1;
  v38 = sub_1BA4A3B48();
  v3 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38, v4);
  v37 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_1BA30AAC0(0, &qword_1EDC6B478, MEMORY[0x1E69A3E18], sub_1BA091A20, MEMORY[0x1E69E6A10]);
  v7 = sub_1BA4A7D78();
  v8 = v7;
  if (*(v6 + 16))
  {
    v32 = v1;
    v33 = v6;
    v9 = 0;
    v10 = (v6 + 56);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v36 = v3 + 32;
    v15 = v7 + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v6 + 48) + *(v3 + 72) * (v17 | (v9 << 6));
      v21 = *(v3 + 32);
      v34 = *(v3 + 72);
      v35 = v21;
      v21(v37, v20, v38);
      sub_1BA091A20();
      v22 = sub_1BA4A6698();
      v23 = -1 << *(v8 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v15 + 8 * v25);
          if (v29 != -1)
          {
            v16 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v35(*(v8 + 48) + v16 * v34, v37, v38);
      ++*(v8 + 16);
      v6 = v33;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    v30 = 1 << *(v6 + 32);
    if (v30 >= 64)
    {
      bzero(v10, ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v30;
    }

    v2 = v32;
    *(v6 + 16) = 0;
  }

  *v2 = v8;
}

void sub_1BA306A24(uint64_t a1, __n128 a2)
{
  v3 = v2;
  v4 = *v2;
  sub_1BA30AAC0(0, &qword_1EBBEBE60, type metadata accessor for _HKDataTypeCode, sub_1BA30A9BC, MEMORY[0x1E69E6A10]);
  v5 = sub_1BA4A7D78();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = v5 + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(*(v4 + 48) + 8 * (v15 | (v7 << 6)));
      sub_1BA4A8488();
      MEMORY[0x1BFAF2ED0](v18);
      v19 = sub_1BA4A84D8();
      v20 = -1 << *(v6 + 32);
      v21 = v19 & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v4 + 32);
    if (v27 >= 64)
    {
      bzero((v4 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v3 = v2;
    *(v4 + 16) = 0;
  }

  *v3 = v6;
}

unint64_t sub_1BA306CAC(unsigned __int8 a1, uint64_t a2)
{
  sub_1BA4A8488();
  if ((a1 >> 6) > 1u)
  {
    if (a1 >> 6 == 3)
    {
      v4 = 0x80504u >> (8 * (a1 + 64));
    }

    else
    {
      LOBYTE(v4) = a1 ^ 0x80;
    }
  }

  else if (a1 >> 6)
  {
    LOBYTE(v4) = a1 & 0x3F;
    MEMORY[0x1BFAF2ED0](7);
  }

  else
  {
    MEMORY[0x1BFAF2ED0](6);
    LOBYTE(v4) = a1;
  }

  MEMORY[0x1BFAF2ED0](v4);
  sub_1BA4A84D8();
  result = sub_1BA4A7C68();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + result) = a1;
  ++*(a2 + 16);
  return result;
}

unint64_t sub_1BA306DB0(uint64_t a1, uint64_t a2)
{
  sub_1BA4A7788();
  result = sub_1BA4A7C68();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void *sub_1BA306E34(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    sub_1BA308200(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

uint64_t sub_1BA306EC4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_1BA30ABD0(0, &qword_1EBBF0630, sub_1BA30AC30, &type metadata for PDFFileNameGenerator.Options);
  result = sub_1BA4A7D98();
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
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + (v13 | (v11 << 6)));
    sub_1BA4A8488();
    MEMORY[0x1BFAF2ED0](v16);
    result = sub_1BA4A84D8();
    v17 = -1 << *(v9 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v9 + 48) + v20) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

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

uint64_t sub_1BA3070E4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = sub_1BA4A3A28();
  v8 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36, v9);
  v35 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_1BA30AAC0(0, &qword_1EBBEBE58, MEMORY[0x1E69A3910], sub_1BA08FE28, MEMORY[0x1E69E6A10]);
  result = sub_1BA4A7D98();
  v11 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v15 = result + 56;
  v31 = (v8 + 32);
  v32 = v8 + 16;
  v30 = a4;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v33 = (v13 - 1) & v13;
LABEL_16:
    v19 = *(a4 + 48);
    v34 = *(v8 + 72);
    (*(v8 + 16))(v35, v19 + v34 * (v16 | (v14 << 6)), v36);
    sub_1BA08FE28();
    result = sub_1BA4A6698();
    v20 = -1 << *(v11 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v15 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v15 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v15 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v15 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    result = (*v31)(*(v11 + 48) + v23 * v34, v35, v36);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v30;
    v13 = v33;
    if (!a3)
    {
LABEL_28:

      return v11;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_28;
    }

    v18 = a1[v14];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v33 = (v18 - 1) & v18;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1BA307414(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_1BA0E790C();
  result = sub_1BA4A7D98();
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
    sub_1BA4A8488();

    sub_1BA4A68C8();
    result = sub_1BA4A84D8();
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

uint64_t sub_1BA30762C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = sub_1BA4A1E88();
  v8 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36, v9);
  v35 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_1BA30AAC0(0, &qword_1EBBEBE80, MEMORY[0x1E69A3C80], sub_1BA30AA58, MEMORY[0x1E69E6A10]);
  result = sub_1BA4A7D98();
  v11 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v15 = result + 56;
  v31 = (v8 + 32);
  v32 = v8 + 16;
  v30 = a4;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v33 = (v13 - 1) & v13;
LABEL_16:
    v19 = *(a4 + 48);
    v34 = *(v8 + 72);
    (*(v8 + 16))(v35, v19 + v34 * (v16 | (v14 << 6)), v36);
    sub_1BA30AA58();
    result = sub_1BA4A6698();
    v20 = -1 << *(v11 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v15 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v15 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v15 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v15 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    result = (*v31)(*(v11 + 48) + v23 * v34, v35, v36);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v30;
    v13 = v33;
    if (!a3)
    {
LABEL_28:

      return v11;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_28;
    }

    v18 = a1[v14];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v33 = (v18 - 1) & v18;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1BA30795C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_1BA0E75E0(0);
  result = sub_1BA4A7D98();
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
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    result = sub_1BA4A7788();
    v17 = -1 << *(v9 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v9 + 48) + 8 * v20) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

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

uint64_t sub_1BA307B44(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  v5 = a4;
  if (!a3)
  {
    v10 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v10;
  }

  v6 = a3;
  if (*(a4 + 16) == a3)
  {
    return v5;
  }

  sub_1BA30AAC0(0, &qword_1EDC5E060, MEMORY[0x1E69A3DD0], sub_1BA30AA24, MEMORY[0x1E69E6A10]);
  result = sub_1BA4A7D98();
  v10 = result;
  if (a2 < 1)
  {
    v11 = 0;
  }

  else
  {
    v11 = *a1;
  }

  v12 = 0;
  v13 = result + 56;
  while (v11)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_17:
    v17 = *(*(v5 + 48) + 8 * (v14 | (v12 << 6)));
    result = sub_1BA4A7788();
    v18 = -1 << *(v10 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v13 + 8 * (v19 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v13 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v13 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v13 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(*(v10 + 48) + 8 * v21) = v17;
    ++*(v10 + 16);
    if (__OFSUB__(v6--, 1))
    {
      goto LABEL_32;
    }

    if (!v6)
    {
      goto LABEL_6;
    }
  }

  v15 = v12;
  while (1)
  {
    v12 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v12 >= a2)
    {
      goto LABEL_6;
    }

    v16 = a1[v12];
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v11 = (v16 - 1) & v16;
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

uint64_t sub_1BA307D70(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = sub_1BA4A3B48();
  v8 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36, v9);
  v35 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_1BA30AAC0(0, &qword_1EDC6B478, MEMORY[0x1E69A3E18], sub_1BA091A20, MEMORY[0x1E69E6A10]);
  result = sub_1BA4A7D98();
  v11 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v15 = result + 56;
  v31 = (v8 + 32);
  v32 = v8 + 16;
  v30 = a4;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v33 = (v13 - 1) & v13;
LABEL_16:
    v19 = *(a4 + 48);
    v34 = *(v8 + 72);
    (*(v8 + 16))(v35, v19 + v34 * (v16 | (v14 << 6)), v36);
    sub_1BA091A20();
    result = sub_1BA4A6698();
    v20 = -1 << *(v11 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v15 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v15 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v15 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v15 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    result = (*v31)(*(v11 + 48) + v23 * v34, v35, v36);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v30;
    v13 = v33;
    if (!a3)
    {
LABEL_28:

      return v11;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_28;
    }

    v18 = a1[v14];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v33 = (v18 - 1) & v18;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void sub_1BA308104(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1BA17256C(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA30A858(a1, v7, sub_1BA17256C);
  v8 = type metadata accessor for SummarySharingSelectableDataTypeItem(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1BA309BDC(v7, a2, type metadata accessor for SummarySharingSelectableDataTypeItem);
  }
}

void sub_1BA308200(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
{
  v20 = 0;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v23 = *(*(a3 + 48) + 8 * v14);
    v15 = v23;
    v16 = a4(&v23);

    if (v4)
    {
      return;
    }

    if (v16)
    {
      *(a1 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v20++, 1))
      {
        __break(1u);
LABEL_16:

        sub_1BA30795C(a1, a2, v20, a3);
        return;
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_16;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_1BA30836C(uint64_t *a1)
{
  sub_1BA172538(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v86 = &v74 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v74 - v7;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v74 - v11;
  sub_1BA17256C(0);
  v96 = v13;
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v79 = &v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v74 - v19;
  MEMORY[0x1EEE9AC00](v21, v22);
  v85 = &v74 - v23;
  v83 = type metadata accessor for SummarySharingSelectableDataTypeItem(0);
  v24 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83, v25);
  v87 = &v74 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = *(v24 + 80);
  v90 = MEMORY[0x1E69E7CC0];
  v75 = (v76 + 32) & ~v76;
  v89 = MEMORY[0x1E69E7CC0] + v75;
  v27 = *a1;
  v92 = a1[1];
  v28 = a1[2];
  v30 = a1[4];
  v29 = a1[5];
  v94 = a1[3];
  v95 = v30;
  v78 = v29;
  v77 = a1[6];
  v103 = v27;
  v31 = *(v27 + 16);
  sub_1BA30A59C(&v103, &v100, &qword_1EDC5E710, MEMORY[0x1E69E62F8]);
  v91 = v27 + 32;
  v32 = (v14 + 56);
  v33 = (v14 + 48);
  v82 = (v24 + 56);
  v84 = v24;
  v81 = (v24 + 48);
  v93 = v28;

  v34 = 0;
  v35 = 0;
  v80 = v12;
  while (2)
  {
    v88 = v34;
    v36 = v35 >= v31;
    if (v35 == v31)
    {
LABEL_3:
      v102 = 0;
      v35 = v31;
      v100 = 0u;
      v101 = 0u;
      goto LABEL_6;
    }

    while (1)
    {
      if (v36)
      {
        __break(1u);
LABEL_44:
        __break(1u);
        goto LABEL_45;
      }

      sub_1B9F0A534(v91 + 40 * v35, &v100);
      v37 = __OFADD__(v35++, 1);
      if (v37)
      {
        goto LABEL_44;
      }

LABEL_6:
      v98[0] = v100;
      v98[1] = v101;
      v99 = v102;
      if (*(&v101 + 1))
      {
        sub_1B9F1134C(v98, v97);
        v92(v97);
        __swift_destroy_boxed_opaque_existential_1(v97);
        v38 = *v32;
        v39 = v8;
        v40 = 0;
      }

      else
      {
        v38 = *v32;
        v39 = v8;
        v40 = 1;
      }

      v41 = v96;
      v38(v39, v40, 1, v96);
      v42 = *v33;
      if ((*v33)(v8, 1, v41) == 1)
      {
        sub_1BA30A8C0(v8, sub_1BA172538);
        v43 = 1;
        v44 = v12;
        goto LABEL_15;
      }

      sub_1BA309BDC(v8, v20, sub_1BA17256C);
      if (v94(v20))
      {
        break;
      }

      sub_1BA30A8C0(v20, sub_1BA17256C);
      v36 = v35 >= v31;
      if (v35 == v31)
      {
        goto LABEL_3;
      }
    }

    v44 = v12;
    sub_1BA309BDC(v20, v12, sub_1BA17256C);
    v43 = 0;
LABEL_15:
    v45 = v44;
    v46 = v96;
    v38(v45, v43, 1, v96);
    v47 = v86;
    sub_1BA309BDC(v80, v86, sub_1BA172538);
    v48 = v42(v47, 1, v46);
    v49 = 1;
    if (v48 != 1)
    {
      v50 = v79;
      sub_1BA309BDC(v86, v79, sub_1BA17256C);
      v78(v50);
      sub_1BA30A8C0(v50, sub_1BA17256C);
      v49 = 0;
    }

    v51 = v85;
    v52 = v83;
    (*v82)(v85, v49, 1, v83);
    v53 = (*v81)(v51, 1, v52);
    v54 = v88;
    if (v53 != 1)
    {
      sub_1BA309BDC(v51, v87, type metadata accessor for SummarySharingSelectableDataTypeItem);
      if (v54)
      {
        v55 = v90;
        v37 = __OFSUB__(v54, 1);
        v34 = v54 - 1;
        if (!v37)
        {
          goto LABEL_38;
        }

LABEL_45:
        __break(1u);
        goto LABEL_46;
      }

      v56 = v90[3];
      if (((v56 >> 1) + 0x4000000000000000) < 0)
      {
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
        goto LABEL_49;
      }

      v57 = v56 & 0xFFFFFFFFFFFFFFFELL;
      if (v57 <= 1)
      {
        v58 = 1;
      }

      else
      {
        v58 = v57;
      }

      sub_1BA30A728(0, &qword_1EBBEA670, type metadata accessor for SummarySharingSelectableDataTypeItem, MEMORY[0x1E69E6F90]);
      v59 = *(v84 + 72);
      v60 = v75;
      v89 = v58;
      v55 = swift_allocObject();
      v61 = _swift_stdlib_malloc_size(v55);
      if (!v59)
      {
        goto LABEL_47;
      }

      v62 = v61 - v60;
      v63 = v60;
      if (v61 - v60 == 0x8000000000000000 && v59 == -1)
      {
        goto LABEL_48;
      }

      v64 = v62 / v59;
      v55[2] = v89;
      v55[3] = 2 * (v62 / v59);
      v65 = v55 + v60;
      v66 = v90[3] >> 1;
      v67 = v66 * v59;
      if (!v90[2])
      {
LABEL_37:
        v89 = v65 + v67;
        v69 = (v64 & 0x7FFFFFFFFFFFFFFFLL) - v66;

        v37 = __OFSUB__(v69, 1);
        v34 = v69 - 1;
        if (!v37)
        {
LABEL_38:
          v70 = v89;
          sub_1BA309BDC(v87, v89, type metadata accessor for SummarySharingSelectableDataTypeItem);
          v89 = v70 + *(v84 + 72);
          v90 = v55;
          continue;
        }

        goto LABEL_45;
      }

      if (v55 < v90 || v65 >= v90 + v63 + v67)
      {
        v68 = v90[3] >> 1;
        v88 = v64;
        v89 = v65;
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (v55 == v90)
        {
LABEL_36:
          v90[2] = 0;
          goto LABEL_37;
        }

        v68 = v90[3] >> 1;
        v88 = v64;
        v89 = v65;
        swift_arrayInitWithTakeBackToFront();
      }

      v66 = v68;
      v65 = v89;
      v64 = v88;
      goto LABEL_36;
    }

    break;
  }

  sub_1BA30AB74(&v103, &qword_1EDC5E710, &qword_1EDC6AD50, MEMORY[0x1E69A3310], MEMORY[0x1E69E62F8]);

  sub_1BA30A8C0(v51, sub_1BA17256C);
  v71 = v90[3];
  if (v71 < 2)
  {
    return;
  }

  v72 = v71 >> 1;
  v37 = __OFSUB__(v72, v54);
  v73 = v72 - v54;
  if (!v37)
  {
    v90[2] = v73;
    return;
  }

LABEL_49:
  __break(1u);
}