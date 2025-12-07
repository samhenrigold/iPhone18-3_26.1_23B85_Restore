uint64_t sub_261CBCFE8()
{
  v0 = type metadata accessor for AppEntityID(0);
  MEMORY[0x28223BE20](v0);
  v2 = v10 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for ListEntity(0);
  MEMORY[0x28223BE20](v3);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = 0;
  v12 = 0xE000000000000000;
  sub_261D00334();
  MEMORY[0x26671C210](0xD000000000000013, 0x8000000261D17970);
  sub_261CFCBB4();
  if (v10[1])
  {
    v6 = sub_261CFFAB4();
    v8 = v7;
  }

  else
  {
    v8 = 0xE300000000000000;
    v6 = 7104878;
  }

  MEMORY[0x26671C210](v6, v8);

  MEMORY[0x26671C210](0x203A7473696C202CLL, 0xE800000000000000);
  sub_261CFCBB4();
  sub_261CBD5B4(&v5[*(v3 + 20)], v2, type metadata accessor for AppEntityID);
  sub_261CBD61C(v5, type metadata accessor for ListEntity);
  sub_261D00404();
  sub_261CBD61C(v2, type metadata accessor for AppEntityID);
  MEMORY[0x26671C210](8200233, 0xE300000000000000);
  return v11;
}

void sub_261CBD204(id a1@<X2>, id a2@<X4>, char a5@<W3>, uint64_t *a6@<X8>)
{
  if (a5)
  {
    v8 = [a2 updateSmartList_];
    v9 = [v8 sectionsContextChangeItem];
    if (v9)
    {
      v10 = v9;
      v11 = &selRef_addSmartListSectionWithDisplayName_toSmartListSectionContextChangeItem_;
LABEL_8:
      v15 = sub_261CFFA54();
      v16 = [a2 *v11];

      v17 = [v16 objectID];
      v18 = [v17 entityName];
      v19 = sub_261CFFA74();
      v21 = v20;

      v22 = [v17 uuid];
      v23 = type metadata accessor for AppEntityID(0);
      sub_261CFD834();

      v24 = *(v23 + 24);
      v25 = type metadata accessor for RecurrentInstanceSpecifier(0);
      (*(*(v25 - 8) + 56))(a6 + v24, 1, 1, v25);
      *a6 = v19;
      a6[1] = v21;
      type metadata accessor for SectionEntityID(0);
      swift_storeEnumTagMultiPayload();
      return;
    }
  }

  else
  {
    if ([a1 isGroup])
    {
      sub_261B01D70();
      swift_allocError();
      *v13 = 28;
      swift_willThrow();
      return;
    }

    v8 = [a2 updateList_];
    v14 = [v8 sectionsContextChangeItem];
    if (v14)
    {
      v10 = v14;
      v11 = &selRef_addListSectionWithDisplayName_toListSectionContextChangeItem_;
      goto LABEL_8;
    }
  }

  sub_261B01D70();
  swift_allocError();
  *v26 = 28;
  swift_willThrow();
}

uint64_t sub_261CBD498(uint64_t a1, _OWORD *a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_261AF43A8;

  return REMStoreIntentPerformer.perform(_:)(a1, a2);
}

void sub_261CBD544(id a1, char a2)
{
  if (a2 != -1)
  {
  }
}

id sub_261CBD558(id result, char a2)
{
  if (a2 != -1)
  {
    return result;
  }

  return result;
}

uint64_t sub_261CBD56C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_261CBD5B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_261CBD61C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t SectionEntityID.entityIdentifierString.getter()
{
  v1 = type metadata accessor for AppEntityID(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for SectionEntityID(0);
  MEMORY[0x28223BE20](v4);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_261B3C0DC(v0, v6);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_261CBE768(v6, v3, type metadata accessor for AppEntityID);
  if (EnumCaseMultiPayload == 1)
  {
    v11[0] = AppEntityID.entityIdentifierString.getter();
    v11[1] = v8;
    MEMORY[0x26671C210](47, 0xE100000000000000);
    MEMORY[0x26671C210](0xD000000000000013, 0x8000000261D230E0);
    v9 = v11[0];
  }

  else
  {
    v9 = AppEntityID.entityIdentifierString.getter();
  }

  sub_261CBF218(v3, type metadata accessor for AppEntityID);
  return v9;
}

uint64_t type metadata accessor for SectionEntityID(uint64_t a1)
{
  result = qword_280D22200;
  if (!qword_280D22200)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SectionEntityID.hash(into:)(uint64_t a1)
{
  v28 = type metadata accessor for RecurrentInstanceSpecifier(0);
  v2 = *(v28 - 8);
  v3 = MEMORY[0x28223BE20](v28);
  v27 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v26 = &v25 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA108, &unk_261D020C0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v25 - v10;
  v12 = type metadata accessor for AppEntityID(0);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v25 - v16;
  v18 = type metadata accessor for SectionEntityID(0);
  MEMORY[0x28223BE20](v18);
  v20 = &v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_261B3C0DC(v1, v20);
  v21 = (v2 + 48);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_261CBE768(v20, v15, type metadata accessor for AppEntityID);
    MEMORY[0x26671CDA0](1);
    sub_261CFFB14();
    sub_261CFD844();
    sub_261CBE8B4(&qword_27FEDBEE8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    sub_261CFF944();
    sub_261AE7A78(&v15[*(v12 + 24)], v9);
    if ((*v21)(v9, 1, v28) == 1)
    {
      sub_261D006E4();
    }

    else
    {
      v22 = v27;
      sub_261CBE768(v9, v27, type metadata accessor for RecurrentInstanceSpecifier);
      sub_261D006E4();
      sub_261CFD4E4();
      sub_261CBE8B4(&qword_27FEDA170, MEMORY[0x277CC8990], MEMORY[0x277CC89A0]);
      sub_261CFF944();
      sub_261D006E4();
      sub_261CBF218(v22, type metadata accessor for RecurrentInstanceSpecifier);
    }

    v17 = v15;
  }

  else
  {
    sub_261CBE768(v20, v17, type metadata accessor for AppEntityID);
    MEMORY[0x26671CDA0](0);
    sub_261CFFB14();
    sub_261CFD844();
    sub_261CBE8B4(&qword_27FEDBEE8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    sub_261CFF944();
    sub_261AE7A78(&v17[*(v12 + 24)], v11);
    if ((*v21)(v11, 1, v28) == 1)
    {
      sub_261D006E4();
    }

    else
    {
      v23 = v26;
      sub_261CBE768(v11, v26, type metadata accessor for RecurrentInstanceSpecifier);
      sub_261D006E4();
      sub_261CFD4E4();
      sub_261CBE8B4(&qword_27FEDA170, MEMORY[0x277CC8990], MEMORY[0x277CC89A0]);
      sub_261CFF944();
      sub_261D006E4();
      sub_261CBF218(v23, type metadata accessor for RecurrentInstanceSpecifier);
    }
  }

  return sub_261CBF218(v17, type metadata accessor for AppEntityID);
}

uint64_t SectionEntityID.hashValue.getter()
{
  sub_261D006C4();
  SectionEntityID.hash(into:)(v1);
  return sub_261D006F4();
}

uint64_t sub_261CBDDE8()
{
  sub_261D006C4();
  SectionEntityID.hash(into:)(v1);
  return sub_261D006F4();
}

uint64_t sub_261CBDE2C(uint64_t a1)
{
  sub_261D006C4();
  SectionEntityID.hash(into:)(v2);
  return sub_261D006F4();
}

uint64_t SectionEntityID.description.getter()
{
  v1 = type metadata accessor for SectionEntityID(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AppEntityID(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_261B3C0DC(v0, v3);
  sub_261CBE768(v3, v6, type metadata accessor for AppEntityID);
  v7 = AppEntityID.entityIdentifierString.getter();
  sub_261CBF218(v6, type metadata accessor for AppEntityID);
  return v7;
}

uint64_t sub_261CBDF7C(uint64_t a1)
{
  MEMORY[0x28223BE20](a1 - 8);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AppEntityID(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_261B3C0DC(v1, v3);
  sub_261CBE768(v3, v6, type metadata accessor for AppEntityID);
  v7 = AppEntityID.entityIdentifierString.getter();
  sub_261CBF218(v6, type metadata accessor for AppEntityID);
  return v7;
}

uint64_t static SectionEntityID.entityIdentifier(for:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v36 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAA00, &qword_261D035A8);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = (&v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v10 = (&v35 - v9);
  v11 = type metadata accessor for AppEntityID(0);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v35 - v16;
  v18 = sub_261CFFBC4();
  sub_261CFD104();
  if ((v18 & 1) == 0)
  {
    AppEntityID.init(entityIdentifierString:)(a1, a2, v8);
    if ((*(v12 + 48))(v8, 1, v11) == 1)
    {
      sub_261AE6A40(v8, &qword_27FEDAA00, &qword_261D035A8);
      goto LABEL_12;
    }

    sub_261CBE768(v8, v15, type metadata accessor for AppEntityID);
    if ((sub_261CFFBC4() & 1) == 0)
    {
      sub_261CBF218(v15, type metadata accessor for AppEntityID);
      goto LABEL_12;
    }

    v32 = v36;
    sub_261CBE768(v15, v36, type metadata accessor for AppEntityID);
    v33 = type metadata accessor for SectionEntityID(0);
LABEL_10:
    swift_storeEnumTagMultiPayload();
    return (*(*(v33 - 8) + 56))(v32, 0, 1, v33);
  }

  v19 = sub_261CFFB24();
  v20 = __OFADD__(v19, 1);
  result = v19 + 1;
  if (v20)
  {
    __break(1u);
    return result;
  }

  v22 = sub_261CBE7D0(result, a1, a2);
  v24 = v23;
  v26 = v25;
  v28 = v27;

  v29 = MEMORY[0x26671C1B0](v22, v24, v26, v28);
  v31 = v30;

  AppEntityID.init(entityIdentifierString:)(v29, v31, v10);
  if ((*(v12 + 48))(v10, 1, v11) != 1)
  {
    sub_261CBE768(v10, v17, type metadata accessor for AppEntityID);
    v32 = v36;
    sub_261CBE768(v17, v36, type metadata accessor for AppEntityID);
    v33 = type metadata accessor for SectionEntityID(0);
    goto LABEL_10;
  }

  sub_261AE6A40(v10, &qword_27FEDAA00, &qword_261D035A8);
LABEL_12:
  v34 = type metadata accessor for SectionEntityID(0);
  return (*(*(v34 - 8) + 56))(v36, 1, 1, v34);
}

BOOL _s19RemindersAppIntents15SectionEntityIDO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppEntityID(0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = (&v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v9 = (&v24 - v8);
  v10 = type metadata accessor for SectionEntityID(0);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = (&v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v15 = (&v24 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE218, &unk_261D11320);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = &v24 - v18;
  v20 = *(v17 + 56);
  sub_261B3C0DC(a1, &v24 - v18);
  sub_261B3C0DC(a2, &v19[v20]);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_261B3C0DC(v19, v15);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_261CBE768(&v19[v20], v9, type metadata accessor for AppEntityID);
      v21 = _s19RemindersAppIntents0B8EntityIDV2eeoiySbAC_ACtFZ_0(v15, v9);
      sub_261CBF218(v9, type metadata accessor for AppEntityID);
      v22 = v15;
      goto LABEL_6;
    }

LABEL_8:
    sub_261CBF218(v15, type metadata accessor for AppEntityID);
    sub_261AE6A40(v19, &qword_27FEDE218, &unk_261D11320);
    return 0;
  }

  sub_261B3C0DC(v19, v13);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v15 = v13;
    goto LABEL_8;
  }

  sub_261CBE768(&v19[v20], v7, type metadata accessor for AppEntityID);
  v21 = _s19RemindersAppIntents0B8EntityIDV2eeoiySbAC_ACtFZ_0(v13, v7);
  sub_261CBF218(v7, type metadata accessor for AppEntityID);
  v22 = v13;
LABEL_6:
  sub_261CBF218(v22, type metadata accessor for AppEntityID);
  sub_261CBF218(v19, type metadata accessor for SectionEntityID);
  return v21;
}

uint64_t sub_261CBE768(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_261CBE7D0(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_261CFFB34();

    return sub_261CFFBF4();
  }

  return result;
}

uint64_t sub_261CBE8B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

char *initializeBufferWithCopyOfBuffer for SectionEntityID(char *a1, char *a2, uint64_t a3)
{
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) == 0)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v7 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 1) = v7;
    v8 = type metadata accessor for AppEntityID(0);
    v9 = *(v8 + 20);
    v10 = sub_261CFD844();
    v11 = *(*(v10 - 8) + 16);
    sub_261CFD104();
    v11(&a1[v9], &a2[v9], v10);
    v12 = *(v8 + 24);
    v13 = &a1[v12];
    v14 = &a2[v12];
    v15 = type metadata accessor for RecurrentInstanceSpecifier(0);
    v16 = *(v15 - 8);
    v17 = (*(v16 + 48))(v14, 1, v15);
    if (EnumCaseMultiPayload == 1)
    {
      if (v17)
      {
        goto LABEL_7;
      }
    }

    else if (v17)
    {
LABEL_7:
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA108, &unk_261D020C0);
      memcpy(v13, v14, *(*(v19 - 8) + 64));
LABEL_9:
      swift_storeEnumTagMultiPayload();
      return a1;
    }

    v20 = sub_261CFD4E4();
    (*(*(v20 - 8) + 16))(v13, v14, v20);
    v13[*(v15 + 20)] = v14[*(v15 + 20)];
    (*(v16 + 56))(v13, 0, 1, v15);
    goto LABEL_9;
  }

  v18 = *a2;
  *a1 = *a2;
  a1 = (v18 + ((v4 + 16) & ~v4));
  sub_261CFCDA4();
  return a1;
}

uint64_t destroy for SectionEntityID(uint64_t a1)
{

  v2 = type metadata accessor for AppEntityID(0);
  v3 = *(v2 + 20);
  v4 = sub_261CFD844();
  (*(*(v4 - 8) + 8))(a1 + v3, v4);
  v5 = *(v2 + 24);
  v6 = type metadata accessor for RecurrentInstanceSpecifier(0);
  result = (*(*(v6 - 8) + 48))(a1 + v5, 1, v6);
  if (!result)
  {
    v8 = sub_261CFD4E4();
    v9 = *(*(v8 - 8) + 8);

    return v9(a1 + v5, v8);
  }

  return result;
}

char *initializeWithCopy for SectionEntityID(char *a1, char *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v6 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;
  v7 = type metadata accessor for AppEntityID(0);
  v8 = *(v7 + 20);
  v9 = sub_261CFD844();
  v10 = *(*(v9 - 8) + 16);
  sub_261CFD104();
  v10(&a1[v8], &a2[v8], v9);
  v11 = *(v7 + 24);
  v12 = &a1[v11];
  v13 = &a2[v11];
  v14 = type metadata accessor for RecurrentInstanceSpecifier(0);
  v15 = *(v14 - 8);
  v16 = (*(v15 + 48))(v13, 1, v14);
  if (EnumCaseMultiPayload == 1)
  {
    if (v16)
    {
      goto LABEL_5;
    }

LABEL_6:
    v18 = sub_261CFD4E4();
    (*(*(v18 - 8) + 16))(v12, v13, v18);
    v12[*(v14 + 20)] = v13[*(v14 + 20)];
    (*(v15 + 56))(v12, 0, 1, v14);
    goto LABEL_7;
  }

  if (!v16)
  {
    goto LABEL_6;
  }

LABEL_5:
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA108, &unk_261D020C0);
  memcpy(v12, v13, *(*(v17 - 8) + 64));
LABEL_7:
  swift_storeEnumTagMultiPayload();
  return a1;
}

char *assignWithCopy for SectionEntityID(char *a1, char *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    sub_261CBF218(a1, type metadata accessor for SectionEntityID);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    *a1 = *a2;
    *(a1 + 1) = *(a2 + 1);
    v6 = type metadata accessor for AppEntityID(0);
    v7 = *(v6 + 20);
    v8 = sub_261CFD844();
    v9 = *(*(v8 - 8) + 16);
    sub_261CFD104();
    v9(&a1[v7], &a2[v7], v8);
    v10 = *(v6 + 24);
    v11 = &a1[v10];
    v12 = &a2[v10];
    v13 = type metadata accessor for RecurrentInstanceSpecifier(0);
    v14 = *(v13 - 8);
    v15 = (*(v14 + 48))(v12, 1, v13);
    if (EnumCaseMultiPayload == 1)
    {
      if (v15)
      {
        goto LABEL_6;
      }
    }

    else if (v15)
    {
LABEL_6:
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA108, &unk_261D020C0);
      memcpy(v11, v12, *(*(v16 - 8) + 64));
LABEL_8:
      swift_storeEnumTagMultiPayload();
      return a1;
    }

    v17 = sub_261CFD4E4();
    (*(*(v17 - 8) + 16))(v11, v12, v17);
    v11[*(v13 + 20)] = v12[*(v13 + 20)];
    (*(v14 + 56))(v11, 0, 1, v13);
    goto LABEL_8;
  }

  return a1;
}

uint64_t sub_261CBF218(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

char *initializeWithTake for SectionEntityID(char *a1, char *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  *a1 = *a2;
  v6 = type metadata accessor for AppEntityID(0);
  v7 = *(v6 + 20);
  v8 = sub_261CFD844();
  (*(*(v8 - 8) + 32))(&a1[v7], &a2[v7], v8);
  v9 = *(v6 + 24);
  v10 = &a1[v9];
  v11 = &a2[v9];
  v12 = type metadata accessor for RecurrentInstanceSpecifier(0);
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);
  if (EnumCaseMultiPayload == 1)
  {
    if (v14)
    {
      goto LABEL_5;
    }

LABEL_6:
    v16 = sub_261CFD4E4();
    (*(*(v16 - 8) + 32))(v10, v11, v16);
    v10[*(v12 + 20)] = v11[*(v12 + 20)];
    (*(v13 + 56))(v10, 0, 1, v12);
    goto LABEL_7;
  }

  if (!v14)
  {
    goto LABEL_6;
  }

LABEL_5:
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA108, &unk_261D020C0);
  memcpy(v10, v11, *(*(v15 - 8) + 64));
LABEL_7:
  swift_storeEnumTagMultiPayload();
  return a1;
}

char *assignWithTake for SectionEntityID(char *a1, char *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    sub_261CBF218(a1, type metadata accessor for SectionEntityID);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    *a1 = *a2;
    v6 = type metadata accessor for AppEntityID(0);
    v7 = *(v6 + 20);
    v8 = sub_261CFD844();
    (*(*(v8 - 8) + 32))(&a1[v7], &a2[v7], v8);
    v9 = *(v6 + 24);
    v10 = &a1[v9];
    v11 = &a2[v9];
    v12 = type metadata accessor for RecurrentInstanceSpecifier(0);
    v13 = *(v12 - 8);
    v14 = (*(v13 + 48))(v11, 1, v12);
    if (EnumCaseMultiPayload == 1)
    {
      if (v14)
      {
        goto LABEL_6;
      }
    }

    else if (v14)
    {
LABEL_6:
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA108, &unk_261D020C0);
      memcpy(v10, v11, *(*(v15 - 8) + 64));
LABEL_8:
      swift_storeEnumTagMultiPayload();
      return a1;
    }

    v16 = sub_261CFD4E4();
    (*(*(v16 - 8) + 32))(v10, v11, v16);
    v10[*(v12 + 20)] = v11[*(v12 + 20)];
    (*(v13 + 56))(v10, 0, 1, v12);
    goto LABEL_8;
  }

  return a1;
}

uint64_t sub_261CBF77C(uint64_t a1)
{
  result = type metadata accessor for AppEntityID(319);
  if (v2 <= 0x3F)
  {
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

uint64_t sub_261CBF804(uint64_t a1, uint64_t a2)
{
  v3 = sub_261CFDD34();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_261CC111C(&qword_27FEDE240, MEMORY[0x277D45C70]), v7 = sub_261CFF934(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_261CC111C(&qword_27FEDE248, MEMORY[0x277D45C78]);
      v15 = sub_261CFF974();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_261CBF9F4()
{
  v0 = sub_261CFF7A4();
  __swift_allocate_value_buffer(v0, qword_27FEDE220);
  v1 = __swift_project_value_buffer(v0, qword_27FEDE220);
  if (qword_280D22880 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D26FF8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_261CBFAE0(uint64_t a1, char a2)
{
  *(v3 + 136) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v4 = sub_261CFE5A4();
  *(v3 + 32) = v4;
  *(v3 + 40) = *(v4 - 8);
  *(v3 + 48) = swift_task_alloc();
  v5 = sub_261CFE504();
  *(v3 + 56) = v5;
  *(v3 + 64) = *(v5 - 8);
  *(v3 + 72) = swift_task_alloc();
  *(v3 + 80) = swift_task_alloc();
  *(v3 + 88) = swift_task_alloc();
  sub_261CFFD24();
  *(v3 + 96) = sub_261CFFD14();
  v7 = sub_261CFFCF4();
  *(v3 + 104) = v7;
  *(v3 + 112) = v6;

  return MEMORY[0x2822009F8](sub_261CBFC4C, v7, v6);
}

uint64_t sub_261CBFC4C()
{
  if (qword_27FED9D20 != -1)
  {
    swift_once();
  }

  v1 = sub_261CFF7A4();
  __swift_project_value_buffer(v1, qword_27FEDE220);
  v2 = sub_261CFF784();
  v3 = sub_261CFFE84();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 136);
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_261AE2000, v2, v3, "ReminderEditingUI: commit editing {allowingUserConfirmation: %{BOOL}d}", v5, 8u);
    MEMORY[0x26671D560](v5, -1, -1);
  }

  v6 = *(v0 + 24);

  v7 = *(v6 + 40);
  *(v0 + 120) = v7;
  if (v7)
  {
    v8 = *(*(v0 + 24) + 48);
    v9 = MEMORY[0x277D45E08];
    if (*(v0 + 136))
    {
      v9 = MEMORY[0x277D45E10];
    }

    (*(*(v0 + 40) + 104))(*(v0 + 48), *v9, *(v0 + 32));
    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();
    v11 = swift_task_alloc();
    *(v0 + 128) = v11;
    *v11 = v0;
    v11[1] = sub_261C74548;
    v12 = *(v0 + 88);
    v13 = *(v0 + 48);

    return MEMORY[0x2821A8630](v12, v13, ObjectType, v8);
  }

  else
  {

    **(v0 + 16) = 1;

    v14 = *(v0 + 8);

    return v14();
  }
}

uint64_t sub_261CBFE90(uint64_t a1, char a2)
{
  *(v3 + 136) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v4 = sub_261CFE5A4();
  *(v3 + 32) = v4;
  *(v3 + 40) = *(v4 - 8);
  *(v3 + 48) = swift_task_alloc();
  v5 = sub_261CFE504();
  *(v3 + 56) = v5;
  *(v3 + 64) = *(v5 - 8);
  *(v3 + 72) = swift_task_alloc();
  *(v3 + 80) = swift_task_alloc();
  *(v3 + 88) = swift_task_alloc();
  sub_261CFFD24();
  *(v3 + 96) = sub_261CFFD14();
  v7 = sub_261CFFCF4();
  *(v3 + 104) = v7;
  *(v3 + 112) = v6;

  return MEMORY[0x2822009F8](sub_261CBFFFC, v7, v6);
}

uint64_t sub_261CBFFFC()
{
  if (qword_27FED9D20 != -1)
  {
    swift_once();
  }

  v1 = sub_261CFF7A4();
  __swift_project_value_buffer(v1, qword_27FEDE220);
  v2 = sub_261CFF784();
  v3 = sub_261CFFE84();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 136);
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_261AE2000, v2, v3, "ReminderEditingUI: cancel editing {allowingUserConfirmation: %{BOOL}d}", v5, 8u);
    MEMORY[0x26671D560](v5, -1, -1);
  }

  v6 = *(v0 + 24);

  v7 = *(v6 + 40);
  *(v0 + 120) = v7;
  if (v7)
  {
    v8 = *(*(v0 + 24) + 48);
    v9 = MEMORY[0x277D45E08];
    if (*(v0 + 136))
    {
      v9 = MEMORY[0x277D45E10];
    }

    (*(*(v0 + 40) + 104))(*(v0 + 48), *v9, *(v0 + 32));
    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();
    v11 = swift_task_alloc();
    *(v0 + 128) = v11;
    *v11 = v0;
    v11[1] = sub_261C74A7C;
    v12 = *(v0 + 88);
    v13 = *(v0 + 48);

    return MEMORY[0x2821A8628](v12, v13, ObjectType, v8);
  }

  else
  {

    **(v0 + 16) = 1;

    v14 = *(v0 + 8);

    return v14();
  }
}

void (*sub_261CC0240(uint64_t *a1))(uint64_t a1, char a2)
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
  return sub_261C74EF0;
}

uint64_t sub_261CC02D4()
{
  if (!*(v0 + 40))
  {
    return 0;
  }

  swift_getObjectType();
  swift_unknownObjectRetain();
  v1 = sub_261CFE634();
  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_261CC0388(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*(v3 + 40))
  {
    return 0;
  }

  v5 = *(v3 + 48);
  ObjectType = swift_getObjectType();
  swift_unknownObjectRetain();
  LOBYTE(a3) = a3(ObjectType, v5);
  swift_unknownObjectRelease();
  return a3 & 1;
}

uint64_t sub_261CC0404(uint64_t result)
{
  if (*(v1 + 40))
  {
    ObjectType = swift_getObjectType();
    MEMORY[0x28223BE20](ObjectType);
    swift_unknownObjectRetain();
    sub_261CFE5F4();
    return swift_unknownObjectRelease();
  }

  return v3;
}

uint64_t sub_261CC04B4(uint64_t a1, char a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_261AF4BDC;

  return sub_261CBFAE0(a1, a2);
}

uint64_t sub_261CC055C(uint64_t a1, char a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_261AF43A8;

  return sub_261CBFE90(a1, a2);
}

uint64_t sub_261CC0604(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE238, &qword_261D113F8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v31 - v8;
  v10 = sub_261CFED34();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  v31 = a2;
  if (sub_261CFE644())
  {
    sub_261CFF674();
    v14 = *MEMORY[0x277D45920];
    v15 = sub_261CFF644();
    (*(*(v15 - 8) + 104))(v13, v14, v15);
    (*(v11 + 104))(v13, *MEMORY[0x277D44EA8], v10);
    MEMORY[0x26671BD30](v13);
    (*(v11 + 8))(v13, v10);
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v17 = *(v3 + 24);
    sub_261CC0CA8(a3, v9);
    v18 = sub_261CFE704();
    v19 = *(v18 - 8);
    if ((*(v19 + 48))(v9, 1, v18) == 1)
    {
      sub_261AE6A40(v9, &qword_27FEDE238, &qword_261D113F8);
    }

    else
    {
      v20 = sub_261CFE6F4();
      (*(v19 + 8))(v9, v18);
      if (v20)
      {
        v21 = sub_261CFE5E4();
        sub_261BE05D8(v20, v21, *(v4 + 32));

        _s24AuthorizationStatusStoreCMa();
        inited = swift_initStaticObject();
        v23 = v20;
        v24 = sub_261CFE654();
        sub_261CC0D18(v23, v24, inited);

        ObjectType = swift_getObjectType();
        (*(v17 + 24))(v4, &off_287447638, v23, ObjectType, v17);

        return swift_unknownObjectRelease();
      }
    }

    if (qword_27FED9D20 != -1)
    {
      swift_once();
    }

    v26 = sub_261CFF7A4();
    __swift_project_value_buffer(v26, qword_27FEDE220);
    v27 = sub_261CFF784();
    v28 = sub_261CFFE64();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_261AE2000, v27, v28, "ReminderEditingUI: unexpectedly got optimisticReminder=nil from reminderDetailDidCommit", v29, 2u);
      MEMORY[0x26671D560](v29, -1, -1);
    }

    qword_27FED9E08 = 0;
    v30 = swift_getObjectType();
    (*(v17 + 16))(v4, &off_287447638, v30, v17);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_261CC0A60()
{
  v0 = sub_261CFED34();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_261CFF674();
  v4 = *MEMORY[0x277D45910];
  v5 = sub_261CFF644();
  (*(*(v5 - 8) + 104))(v3, v4, v5);
  (*(v1 + 104))(v3, *MEMORY[0x277D44EA8], v0);
  MEMORY[0x26671BD30](v3);
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_261CC0BA4()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = *(v0 + 24);
    ObjectType = swift_getObjectType();
    (*(v2 + 8))(v0, &off_287447638, ObjectType, v2);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_261CC0C3C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_261CFE314();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_261CC0CA8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE238, &qword_261D113F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_261CC0D18(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDDAB0, &qword_261D0F650);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v36 - v7;
  v9 = sub_261CFDD34();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40[1] = a1;
  v13 = *(a2 + 16);
  v39 = a1;
  if (v13)
  {
    v14 = qword_27FED9C08;
    v15 = a1;
    if (v14 != -1)
    {
      swift_once();
    }

    v16 = sub_261CFF7A4();
    __swift_project_value_buffer(v16, qword_27FEDD7E0);
    sub_261CFD104();
    v17 = sub_261CFF784();
    v18 = sub_261CFFE54();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v38 = a3;
      v20 = v19;
      v21 = swift_slowAlloc();
      v37 = v8;
      v22 = v21;
      v40[0] = v21;
      *v20 = 136315138;
      sub_261CC111C(&qword_27FEDE240, MEMORY[0x277D45C70]);
      v23 = sub_261CFFD74();
      v25 = sub_261B879C8(v23, v24, v40);

      *(v20 + 4) = v25;
      _os_log_impl(&dword_261AE2000, v17, v18, "RemindersInCalendar: detected authorization related property changes {flags: %s}", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      v26 = v22;
      v8 = v37;
      MEMORY[0x26671D560](v26, -1, -1);
      v27 = v20;
      a3 = v38;
      MEMORY[0x26671D560](v27, -1, -1);
    }
  }

  else
  {
    v28 = a1;
  }

  v29 = *(v10 + 104);
  v29(v12, *MEMORY[0x277D45C60], v9);
  v30 = sub_261CBF804(v12, a2);
  v31 = *(v10 + 8);
  v31(v12, v9);
  if (v30)
  {
    v32 = [v39 displayDate];
    if (v32)
    {

      *(a3 + 16) |= 1uLL;
    }
  }

  v29(v12, *MEMORY[0x277D45C68], v9);
  v33 = sub_261CBF804(v12, a2);
  v31(v12, v9);
  if (v33)
  {
    sub_261B05020(0, &qword_27FEDDF20, 0x277D44750);
    sub_261CFE1E4();

    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDDAB8, &qword_261D0F658);
    v35 = (*(*(v34 - 8) + 48))(v8, 1, v34);
    sub_261AE6A40(v8, &qword_27FEDDAB0, &qword_261D0F650);
    if (v35 != 1)
    {
      *(a3 + 16) |= 2uLL;
    }
  }

  else
  {
  }
}

uint64_t sub_261CC111C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_261CFDD34();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_261CC1160()
{
  qword_27FED9E08 = 0;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = *(v0 + 24);
    ObjectType = swift_getObjectType();
    (*(v2 + 16))(v0, &off_287447638, ObjectType, v2);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_261CC11F4(void *a1)
{
  if (a1)
  {
    v2 = *(v1 + 32);
    v10 = a1;
    if ([v2 canUndo])
    {
      v3 = v10;
      v4 = [v3 groupsByEvent];
      if (!v4)
      {
        MEMORY[0x28223BE20](v4);
        sub_261CFFE44();

        return;
      }

      swift_getObjectType();
      v5 = sub_261CFE534();
      sub_261CFFE34();

      v6 = [v2 undoActionName];
      if (!v6)
      {
        sub_261CFFA74();
        v11 = sub_261CFFA54();

        v6 = v11;
      }

      [v3 setActionName:v6];
    }

    else
    {
      if (qword_27FED9D28 != -1)
      {
        swift_once();
      }

      v7 = sub_261CFF7A4();
      __swift_project_value_buffer(v7, qword_27FEDE250);
      v3 = sub_261CFF784();
      v8 = sub_261CFFE84();
      if (os_log_type_enabled(v3, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&dword_261AE2000, v3, v8, "RemindersInCalendar: no undo actions to register", v9, 2u);
        MEMORY[0x26671D560](v9, -1, -1);
      }
    }
  }
}

uint64_t sub_261CC1438()
{
  v0 = sub_261CFF7A4();
  __swift_allocate_value_buffer(v0, qword_27FEDE250);
  v1 = __swift_project_value_buffer(v0, qword_27FEDE250);
  if (qword_280D22880 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D26FF8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_261CC1500(uint64_t a1)
{
  v30 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB240, &qword_261D05720);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v28 - v2;
  v4 = sub_261CFDBE4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE268, &qword_261D11438);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v28 - v9;
  v11 = sub_261CFE474();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = objc_allocWithZone(MEMORY[0x277D45F18]);
  v16 = sub_261CFFA54();
  v17 = [v15 initWithDebugIdentifier_];

  v18 = sub_261CFDC24();
  (*(*(v18 - 8) + 56))(v10, 1, 1, v18);
  v19 = v17;
  sub_261CFE464();
  v20 = v29;
  *(v29 + 32) = v19;
  (*(v5 + 104))(v7, *MEMORY[0x277D45C20], v4);
  (*(v12 + 16))(v3, v14, v11);
  (*(v12 + 56))(v3, 0, 1, v11);
  v21 = sub_261CFE5B4();
  v22 = v19;
  v23 = sub_261CFE494();
  v32 = v21;
  v33 = MEMORY[0x277D45E18];
  v31 = v23;
  v24 = objc_allocWithZone(sub_261CFE424());
  v25 = sub_261CFE414();

  (*(v12 + 8))(v14, v11);
  v26 = MEMORY[0x277D45DA8];
  result = v20;
  *(v20 + 16) = v25;
  *(v20 + 24) = v26;
  return result;
}

void sub_261CC1860(void *a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  swift_getObjectType();
  v4 = sub_261CFE534();
  sub_261CFFE34();

  v5 = [v3 undoActionName];
  if (!v5)
  {
    sub_261CFFA74();
    v6 = sub_261CFFA54();

    v5 = v6;
  }

  v7 = v5;
  [a1 setActionName_];
}

uint64_t sub_261CC1924()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

id AppEntityID.objectID.getter()
{
  type metadata accessor for AppEntityID(0);
  v0 = objc_allocWithZone(MEMORY[0x277D44700]);
  v1 = sub_261CFD814();
  v2 = sub_261CFFA54();
  v3 = [v0 initWithUUID:v1 entityName:v2];

  return v3;
}

uint64_t AppEntityID.init(objectID:recurrentInstanceSpecifier:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = [a1 entityName];
  v7 = sub_261CFFA74();
  v9 = v8;

  v10 = [a1 uuid];
  v11 = type metadata accessor for AppEntityID(0);
  sub_261CFD834();

  *a3 = v7;
  a3[1] = v9;
  v12 = a3 + *(v11 + 24);

  return sub_261C88050(a2, v12);
}

uint64_t sub_261CC1B58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 176) = a6;
  *(v6 + 48) = a3;
  *(v6 + 56) = a4;
  *(v6 + 32) = a1;
  *(v6 + 40) = a2;
  v7 = sub_261CFF734();
  *(v6 + 64) = v7;
  *(v6 + 72) = *(v7 - 8);
  *(v6 + 80) = swift_task_alloc();
  v8 = sub_261CFF6F4();
  *(v6 + 88) = v8;
  *(v6 + 96) = *(v8 - 8);
  *(v6 + 104) = swift_task_alloc();
  *(v6 + 112) = swift_task_alloc();
  *(v6 + 120) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261CC1C94, 0, 0);
}

uint64_t sub_261CC1C94()
{
  if (qword_280D21E40 != -1)
  {
    swift_once();
  }

  v1 = sub_261CFF724();
  *(v0 + 128) = __swift_project_value_buffer(v1, qword_280D26FD0);
  sub_261CFF704();
  sub_261CFF6C4();
  v2 = sub_261CFF704();
  v3 = sub_261CFFFE4();
  result = sub_261D00144();
  if ((result & 1) == 0)
  {
    goto LABEL_12;
  }

  v5 = *(v0 + 56);
  if (*(v0 + 176))
  {
LABEL_7:
    if (v5 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v5 & 0xFFFFF800) == 0xD800)
      {
LABEL_17:
        __break(1u);
        return result;
      }

      if (v5 >> 16 <= 0x10)
      {
        v5 = (v0 + 24);
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

  if (!v5)
  {
    __break(1u);
    goto LABEL_7;
  }

LABEL_11:
  v6 = swift_slowAlloc();
  *v6 = 0;
  v7 = sub_261CFF6D4();
  _os_signpost_emit_with_name_impl(&dword_261AE2000, v2, v3, v7, v5, "", v6, 2u);
  MEMORY[0x26671D560](v6, -1, -1);
LABEL_12:

  v8 = *(v0 + 120);
  v9 = *(v0 + 88);
  v10 = *(v0 + 96);
  v11 = *(v0 + 40);
  (*(v10 + 16))(*(v0 + 112), v8, v9);
  sub_261CFF764();
  swift_allocObject();
  *(v0 + 136) = sub_261CFF754();
  v12 = *(v10 + 8);
  *(v0 + 144) = v12;
  *(v0 + 152) = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v12(v8, v9);
  v15 = (v11 + *v11);
  v13 = swift_task_alloc();
  *(v0 + 160) = v13;
  *v13 = v0;
  v13[1] = sub_261CC1F2C;
  v14 = *(v0 + 32);

  return v15(v14);
}

uint64_t sub_261CC1F2C()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_261CC2244;
  }

  else
  {
    v2 = sub_261CC2040;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_261CC2040(uint64_t a1)
{
  v2 = sub_261CFF704();
  sub_261CFF744();
  v3 = sub_261CFFFD4();
  result = sub_261D00144();
  if (result)
  {
    v5 = *(v1 + 56);
    if ((*(v1 + 176) & 1) == 0)
    {
      if (v5)
      {
LABEL_9:
        v7 = *(v1 + 72);
        v6 = *(v1 + 80);
        v8 = *(v1 + 64);
        sub_261CFCDA4();
        sub_261CFF774();

        if ((*(v7 + 88))(v6, v8) == *MEMORY[0x277D85B00])
        {
          v9 = "[Error] Interval already ended";
        }

        else
        {
          (*(*(v1 + 72) + 8))(*(v1 + 80), *(v1 + 64));
          v9 = "";
        }

        v10 = swift_slowAlloc();
        *v10 = 0;
        v11 = sub_261CFF6D4();
        _os_signpost_emit_with_name_impl(&dword_261AE2000, v2, v3, v11, v5, v9, v10, 2u);
        MEMORY[0x26671D560](v10, -1, -1);
        goto LABEL_13;
      }

      __break(1u);
    }

    if (v5 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v5 & 0xFFFFF800) == 0xD800)
      {
LABEL_18:
        __break(1u);
        return result;
      }

      if (v5 >> 16 <= 0x10)
      {
        v5 = (v1 + 16);
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_13:
  v12 = *(v1 + 144);
  v13 = *(v1 + 104);
  v14 = *(v1 + 88);

  v12(v13, v14);

  v15 = *(v1 + 8);

  return v15();
}

uint64_t sub_261CC2244()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_261CC22DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 176) = a5;
  *(v5 + 48) = a2;
  *(v5 + 56) = a3;
  *(v5 + 40) = a1;
  v6 = sub_261CFF734();
  *(v5 + 64) = v6;
  *(v5 + 72) = *(v6 - 8);
  *(v5 + 80) = swift_task_alloc();
  v7 = sub_261CFF6F4();
  *(v5 + 88) = v7;
  *(v5 + 96) = *(v7 - 8);
  *(v5 + 104) = swift_task_alloc();
  *(v5 + 112) = swift_task_alloc();
  *(v5 + 120) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261CC2418, 0, 0);
}

uint64_t sub_261CC2418()
{
  if (qword_280D21E40 != -1)
  {
    swift_once();
  }

  v1 = sub_261CFF724();
  *(v0 + 128) = __swift_project_value_buffer(v1, qword_280D26FD0);
  sub_261CFF704();
  sub_261CFF6C4();
  v2 = sub_261CFF704();
  v3 = sub_261CFFFE4();
  result = sub_261D00144();
  if ((result & 1) == 0)
  {
    goto LABEL_12;
  }

  v5 = *(v0 + 56);
  if (*(v0 + 176))
  {
LABEL_7:
    if (v5 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v5 & 0xFFFFF800) == 0xD800)
      {
LABEL_17:
        __break(1u);
        return result;
      }

      if (v5 >> 16 <= 0x10)
      {
        v5 = (v0 + 32);
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

  if (!v5)
  {
    __break(1u);
    goto LABEL_7;
  }

LABEL_11:
  v6 = swift_slowAlloc();
  *v6 = 0;
  v7 = sub_261CFF6D4();
  _os_signpost_emit_with_name_impl(&dword_261AE2000, v2, v3, v7, v5, "", v6, 2u);
  MEMORY[0x26671D560](v6, -1, -1);
LABEL_12:

  v8 = *(v0 + 120);
  v9 = *(v0 + 88);
  v10 = *(v0 + 96);
  v11 = *(v0 + 40);
  (*(v10 + 16))(*(v0 + 112), v8, v9);
  sub_261CFF764();
  swift_allocObject();
  *(v0 + 136) = sub_261CFF754();
  v12 = *(v10 + 8);
  *(v0 + 144) = v12;
  *(v0 + 152) = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v12(v8, v9);
  v14 = (v11 + *v11);
  v13 = swift_task_alloc();
  *(v0 + 160) = v13;
  *v13 = v0;
  v13[1] = sub_261CC26B0;

  return v14(v0 + 16);
}

uint64_t sub_261CC26B0()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_261CC2244;
  }

  else
  {
    v2 = sub_261CC27C4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_261CC27C4(uint64_t a1)
{
  v2 = sub_261CFF704();
  sub_261CFF744();
  v3 = sub_261CFFFD4();
  result = sub_261D00144();
  if (result)
  {
    v5 = *(v1 + 56);
    if ((*(v1 + 176) & 1) == 0)
    {
      if (v5)
      {
LABEL_9:
        v7 = *(v1 + 72);
        v6 = *(v1 + 80);
        v8 = *(v1 + 64);
        sub_261CFCDA4();
        sub_261CFF774();

        if ((*(v7 + 88))(v6, v8) == *MEMORY[0x277D85B00])
        {
          v9 = "[Error] Interval already ended";
        }

        else
        {
          (*(*(v1 + 72) + 8))(*(v1 + 80), *(v1 + 64));
          v9 = "";
        }

        v10 = swift_slowAlloc();
        *v10 = 0;
        v11 = sub_261CFF6D4();
        _os_signpost_emit_with_name_impl(&dword_261AE2000, v2, v3, v11, v5, v9, v10, 2u);
        MEMORY[0x26671D560](v10, -1, -1);
        goto LABEL_13;
      }

      __break(1u);
    }

    if (v5 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v5 & 0xFFFFF800) == 0xD800)
      {
LABEL_18:
        __break(1u);
        return result;
      }

      if (v5 >> 16 <= 0x10)
      {
        v5 = (v1 + 24);
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_13:
  v12 = *(v1 + 144);
  v13 = *(v1 + 104);
  v14 = *(v1 + 88);

  v12(v13, v14);
  v15 = *(v1 + 16);

  v16 = *(v1 + 8);

  return v16(v15);
}

uint64_t sub_261CC29F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0C0, &unk_261D02500);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - v8;
  sub_261B425D4(a1, &v17 - v8);
  v10 = *(a2 + 176);
  v19[10] = *(a2 + 160);
  v19[11] = v10;
  v19[12] = *(a2 + 192);
  v20 = *(a2 + 208);
  v11 = *(a2 + 112);
  v19[6] = *(a2 + 96);
  v19[7] = v11;
  v12 = *(a2 + 144);
  v19[8] = *(a2 + 128);
  v19[9] = v12;
  v13 = *(a2 + 48);
  v19[2] = *(a2 + 32);
  v19[3] = v13;
  v14 = *(a2 + 80);
  v19[4] = *(a2 + 64);
  v19[5] = v14;
  v15 = *(a2 + 16);
  v19[0] = *a2;
  v19[1] = v15;
  sub_261B425D4(v9, v7);
  sub_261B49630(v19, &v18);
  sub_261CFCBC4();
  sub_261B59E9C(v9);
  return sub_261B4968C(v19);
}

uint64_t ReminderEntityQuery.init()@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDBD10, &qword_261D083B0);
  swift_getKeyPath();
  *a1 = sub_261CFD204();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDDE90, &qword_261D11470);
  sub_261AE4630();
  sub_261D002D4();
  sub_261CFC6B4();
  sub_261CFC6A4();
  result = sub_261CFC684();
  a1[1] = result;
  return result;
}

uint64_t sub_261CC2C0C()
{
  sub_261CFCDA4();
  sub_261CFCDA4();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_261BCEF88;
  v2 = v0[2];
  v3 = v0[3];

  return sub_261C60A58("ReminderEntityQuery.suggestedHashtagLabels", 42, 2, v2, v3);
}

uint64_t ReminderEntityQuery.entities(for:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = *v1;
  return MEMORY[0x2822009F8](sub_261CC2D04, 0, 0);
}

uint64_t sub_261CC2D04()
{
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFD104();
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_261BAEC14;
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];

  return sub_261C611D0("ReminderEntityQuery.entitiesForIdentifiers", 42, 2, v2, v3, v4);
}

uint64_t sub_261CC2DE8@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDBD10, &qword_261D083B0);
  swift_getKeyPath();
  *a1 = sub_261CFD204();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDDE90, &qword_261D11470);
  sub_261AE4630();
  sub_261D002D4();
  sub_261CFC6B4();
  sub_261CFC6A4();
  result = sub_261CFC684();
  a1[1] = result;
  return result;
}

uint64_t sub_261CC2EA0(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = *v1;
  return MEMORY[0x2822009F8](sub_261CC2EC8, 0, 0);
}

uint64_t sub_261CC2EC8()
{
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFD104();
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_261BADD64;
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];

  return sub_261C611D0("ReminderEntityQuery.entitiesForIdentifiers", 42, 2, v2, v3, v4);
}

uint64_t sub_261CC2FAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_261AF43A8;

  return MEMORY[0x28210B608](a1, a2, a3);
}

uint64_t sub_261CC3060(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_261CC3CFC();
  *v5 = v2;
  v5[1] = sub_261AF4BDC;

  return MEMORY[0x28210B618](a1, a2, v6);
}

uint64_t ReminderEntityQuery.entities(matching:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0C0, &unk_261D02500);
  *(v3 + 32) = swift_task_alloc();
  *(v3 + 40) = *v2;

  return MEMORY[0x2822009F8](sub_261CC31B8, 0, 0);
}

uint64_t sub_261CC31B8(uint64_t a1)
{
  if (sub_261CFD1F4())
  {
    swift_getKeyPath();
    sub_261C0F51C();
    sub_261CFCD54();

    v2 = 0;
  }

  else
  {
    v2 = 1;
  }

  v4 = *(v1 + 24);
  v3 = *(v1 + 32);
  v5 = *(v1 + 16);
  v6 = type metadata accessor for ListEntity(0);
  v10 = *(v1 + 40);
  (*(*(v6 - 8) + 56))(v3, v2, 1, v6);
  v7 = swift_task_alloc();
  *(v1 + 56) = v7;
  *(v7 + 16) = v10;
  *(v7 + 32) = v5;
  *(v7 + 40) = v4;
  *(v7 + 48) = v3;
  v8 = swift_task_alloc();
  *(v1 + 64) = v8;
  *v8 = v1;
  v8[1] = sub_261CC3354;

  return sub_261CC22DC(&unk_261D114A0, v7, "ReminderEntityQuery.entitiesMatchingString", 42, 2);
}

uint64_t sub_261CC3354(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v5 = sub_261CC34F8;
  }

  else
  {
    *(v4 + 80) = a1;

    v5 = sub_261CC3484;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_261CC3484()
{
  sub_261B59E9C(v0[4]);

  v1 = v0[1];
  v2 = v0[10];

  return v1(v2);
}

uint64_t sub_261CC34F8()
{
  v1 = *(v0 + 32);

  sub_261B59E9C(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_261CC3570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[13] = a5;
  v6[14] = a6;
  v6[11] = a3;
  v6[12] = a4;
  v6[9] = a1;
  v6[10] = a2;
  return MEMORY[0x2822009F8](sub_261CC3598, 0, 0);
}

uint64_t sub_261CC3598(uint64_t a1)
{
  v3 = v1[10];
  v2 = v1[11];
  sub_261CFC664();
  v4 = v1[5];
  v5 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v4);
  v1[7] = v3;
  v1[8] = v2;
  v11 = (*(v5 + 16) + **(v5 + 16));
  v6 = swift_task_alloc();
  v1[15] = v6;
  *v6 = v1;
  v6[1] = sub_261CC36F4;
  v7 = v1[13];
  v8 = v1[14];
  v9 = v1[12];

  return v11(v1 + 7, v9, v7, v8, v4, v5);
}

uint64_t sub_261CC36F4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 128) = v1;

  if (v1)
  {
    v5 = sub_261CC388C;
  }

  else
  {
    *(v4 + 136) = a1;
    v5 = sub_261CC381C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_261CC381C()
{
  **(v0 + 72) = *(v0 + 136);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_261CC388C()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_261CC38F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_261BA64E4;

  return ReminderEntityQuery.entities(matching:)(a2, a3);
}

uint64_t sub_261CC3998(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_261AF43A8;

  return sub_261CC3570(a1, v4, v5, v6, v7, v8);
}

unint64_t sub_261CC3A64()
{
  result = qword_27FEDE270;
  if (!qword_27FEDE270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDE270);
  }

  return result;
}

unint64_t sub_261CC3ABC()
{
  result = qword_27FEDE278;
  if (!qword_27FEDE278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDE278);
  }

  return result;
}

unint64_t sub_261CC3B5C()
{
  result = qword_27FEDE280;
  if (!qword_27FEDE280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDE280);
  }

  return result;
}

uint64_t sub_261CC3BF8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_261CC3C44()
{
  result = qword_27FEDE288;
  if (!qword_27FEDE288)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27FEDE0D0, qword_261D11550);
    sub_261CC3BF8(&qword_280D22350, type metadata accessor for ReminderEntity, &protocol conformance descriptor for ReminderEntity);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDE288);
  }

  return result;
}

unint64_t sub_261CC3CFC()
{
  result = qword_27FEDE290;
  if (!qword_27FEDE290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDE290);
  }

  return result;
}

uint64_t dispatch thunk of ReminderEntityReminderQueryPerforming.entities(query:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_261B0E3FC;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of ReminderEntityReminderQueryPerforming.entities(query:matching:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 16) + **(a6 + 16));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_261B0E3FC;

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of ReminderEntityReminderQueryPerforming.suggestedHashtagLabels(query:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 24) + **(a3 + 24));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_261B01F5C;

  return v9(a1, a2, a3);
}

RemindersAppIntents::AppIntentsDependencyKey_optional __swiftcall AppIntentsDependencyKey.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_261D00554();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t AppIntentsDependencyKey.rawValue.getter()
{
  if (*v0)
  {
    return 0x65726F74536D6572;
  }

  else
  {
    return 0x6550746E65746E69;
  }
}

uint64_t sub_261CC424C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x65726F74536D6572;
  }

  else
  {
    v3 = 0x6550746E65746E69;
  }

  if (v2)
  {
    v4 = 0xEF72656D726F6672;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x65726F74536D6572;
  }

  else
  {
    v5 = 0x6550746E65746E69;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xEF72656D726F6672;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_261D00614();
  }

  return v8 & 1;
}

uint64_t sub_261CC4300@<X0>(char *a2@<X8>)
{
  v3 = sub_261D00554();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_261CC4360(uint64_t *a1@<X8>)
{
  v2 = 0x6550746E65746E69;
  if (*v1)
  {
    v2 = 0x65726F74536D6572;
  }

  v3 = 0xEF72656D726F6672;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_261CC43AC(uint64_t a1)
{
  sub_261CFFB14();
}

uint64_t sub_261CC4428(uint64_t a1)
{
  sub_261D006C4();
  sub_261CFFB14();

  return sub_261D006F4();
}

id sub_261CC44C0@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = v2;
  return v2;
}

uint64_t sub_261CC44DC()
{
  v0 = sub_261CFF7A4();
  __swift_allocate_value_buffer(v0, qword_27FEDE2A8);
  v1 = __swift_project_value_buffer(v0, qword_27FEDE2A8);
  if (qword_280D22880 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D26FF8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t RemindersInCalendarUtilities.DeleteRemindersRequest.reminderIDs.getter()
{
  sub_261CFD104();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDDEB8, &qword_261D10990);
  sub_261B57A9C();
  sub_261CA04A0(&unk_27FEDDEC8, &unk_27FEDDEB8, &qword_261D10990);
  sub_261CC49A8(&qword_27FEDA570, sub_261B57A9C, MEMORY[0x277D85378]);
  v0 = sub_261CFFC24();

  return v0;
}

uint64_t sub_261CC46A4@<X0>(uint64_t *a2@<X8>)
{
  sub_261CFD104();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDDEB8, &qword_261D10990);
  sub_261B57A9C();
  sub_261CA04A0(&unk_27FEDDEC8, &unk_27FEDDEB8, &qword_261D10990);
  sub_261CC49A8(&qword_27FEDA570, sub_261B57A9C, MEMORY[0x277D85378]);
  v3 = sub_261CFFC24();

  *a2 = v3;
  return result;
}

uint64_t sub_261CC47A8(uint64_t a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDDED8, &qword_261D10998);
  type metadata accessor for RemindersInCalendarUtilities.ReminderSpecifier(0);
  sub_261CA04A0(&qword_27FEDDEE0, &qword_27FEDDED8, &qword_261D10998);
  sub_261CC49A8(&qword_27FEDDEE8, type metadata accessor for RemindersInCalendarUtilities.ReminderSpecifier, &protocol conformance descriptor for RemindersInCalendarUtilities.ReminderSpecifier);
  v3 = sub_261CFFC24();

  *a2 = v3;
  return result;
}

uint64_t RemindersInCalendarUtilities.DeleteRemindersRequest.reminderIDs.setter(uint64_t a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDDED8, &qword_261D10998);
  type metadata accessor for RemindersInCalendarUtilities.ReminderSpecifier(0);
  sub_261CA04A0(&qword_27FEDDEE0, &qword_27FEDDED8, &qword_261D10998);
  sub_261CC49A8(&qword_27FEDDEE8, type metadata accessor for RemindersInCalendarUtilities.ReminderSpecifier, &protocol conformance descriptor for RemindersInCalendarUtilities.ReminderSpecifier);
  v3 = sub_261CFFC24();

  *v2 = v3;
  return result;
}

uint64_t sub_261CC49A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void (*RemindersInCalendarUtilities.DeleteRemindersRequest.reminderIDs.modify(uint64_t **a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[2] = v1;
  v5 = *v1;
  v3[3] = *v1;
  v3[1] = v5;
  sub_261CFD104();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDDEB8, &qword_261D10990);
  sub_261B57A9C();
  sub_261CA04A0(&unk_27FEDDEC8, &unk_27FEDDEB8, &qword_261D10990);
  sub_261CC49A8(&qword_27FEDA570, sub_261B57A9C, MEMORY[0x277D85378]);
  v6 = sub_261CFFC24();
  v4[4] = 0;

  *v4 = v6;
  return sub_261CC4B4C;
}

void sub_261CC4B4C(uint64_t **a1, char a2)
{
  v2 = *a1;
  (*a1)[1] = **a1;
  v3 = v2[2];
  if (a2)
  {
    sub_261CFD104();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDDED8, &qword_261D10998);
    type metadata accessor for RemindersInCalendarUtilities.ReminderSpecifier(0);
    sub_261CA04A0(&qword_27FEDDEE0, &qword_27FEDDED8, &qword_261D10998);
    sub_261CC49A8(&qword_27FEDDEE8, type metadata accessor for RemindersInCalendarUtilities.ReminderSpecifier, &protocol conformance descriptor for RemindersInCalendarUtilities.ReminderSpecifier);
    v4 = sub_261CFFC24();

    *v3 = v4;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDDED8, &qword_261D10998);
    type metadata accessor for RemindersInCalendarUtilities.ReminderSpecifier(0);
    sub_261CA04A0(&qword_27FEDDEE0, &qword_27FEDDED8, &qword_261D10998);
    sub_261CC49A8(&qword_27FEDDEE8, type metadata accessor for RemindersInCalendarUtilities.ReminderSpecifier, &protocol conformance descriptor for RemindersInCalendarUtilities.ReminderSpecifier);
    v5 = sub_261CFFC24();

    *v3 = v5;
  }

  free(v2);
}

uint64_t RemindersInCalendarUtilities.DeleteRemindersRequest.reminderSpecifiers.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

void *RemindersInCalendarUtilities.DeleteRemindersRequest.undoManager.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

uint64_t RemindersInCalendarUtilities.DeleteRemindersRequest.init(reminderIDs:)@<X0>(uint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDDED8, &qword_261D10998);
  type metadata accessor for RemindersInCalendarUtilities.ReminderSpecifier(0);
  sub_261CA04A0(&qword_27FEDDEE0, &qword_27FEDDED8, &qword_261D10998);
  sub_261CC49A8(&qword_27FEDDEE8, type metadata accessor for RemindersInCalendarUtilities.ReminderSpecifier, &protocol conformance descriptor for RemindersInCalendarUtilities.ReminderSpecifier);
  v3 = sub_261CFFC24();

  *a2 = v3;
  a2[1] = 0;
  return result;
}

uint64_t RemindersInCalendarUtilities.DeleteRemindersRequest.init(reminderSpecifiers:)@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  *a2 = result;
  a2[1] = 0;
  return result;
}

uint64_t sub_261CC5018()
{
  v34 = v0;
  if (qword_27FED9D30 != -1)
  {
    swift_once();
  }

  v1 = v0[14];
  v2 = sub_261CFF7A4();
  __swift_project_value_buffer(v2, qword_27FEDE2A8);
  v3 = v1;
  sub_261CFD104();
  v4 = sub_261CFF784();
  v5 = sub_261CFFE84();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v33 = v7;
    *v6 = 136315138;
    type metadata accessor for RemindersInCalendarUtilities.ReminderSpecifier(0);
    sub_261CC49A8(&qword_27FEDDEE8, type metadata accessor for RemindersInCalendarUtilities.ReminderSpecifier, &protocol conformance descriptor for RemindersInCalendarUtilities.ReminderSpecifier);
    sub_261CFD104();
    v8 = sub_261CFFD74();
    v10 = v9;

    v11 = sub_261B879C8(v8, v10, &v33);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_261AE2000, v4, v5, "RemindersInCalendar: delete reminders {specifiers: %s}", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x26671D560](v7, -1, -1);
    MEMORY[0x26671D560](v6, -1, -1);
  }

  v13 = v0[11];
  v12 = v0[12];
  v14 = v0[10];
  sub_261CFF674();
  v15 = *MEMORY[0x277D45930];
  v16 = sub_261CFF644();
  (*(*(v16 - 8) + 104))(v12, v15, v16);
  (*(v13 + 104))(v12, *MEMORY[0x277D44EA8], v14);
  MEMORY[0x26671BD30](v12);
  (*(v13 + 8))(v12, v14);
  v17 = sub_261CFF784();
  v18 = sub_261CFFE54();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_261AE2000, v17, v18, "RemindersInCalendar: fetching reminders for deletion", v19, 2u);
    MEMORY[0x26671D560](v19, -1, -1);
  }

  v20 = v0[13];

  v0[7] = v20;
  sub_261CFD104();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDDEB8, &qword_261D10990);
  sub_261B57A9C();
  sub_261CA04A0(&unk_27FEDDEC8, &unk_27FEDDEB8, &qword_261D10990);
  sub_261CC49A8(&qword_27FEDA570, sub_261B57A9C, MEMORY[0x277D85378]);
  v21 = sub_261CFFC24();

  v22 = sub_261BC6FC4(v21);
  v0[18] = v22;
  v23 = v22;
  v24 = v0[13];

  v25 = sub_261B045AC(v23, v24);
  v0[19] = v25;
  if (qword_280D21E90 != -1)
  {
    swift_once();
  }

  v26 = qword_280D21E98;
  _s29RemindersListInteractorHelperCMa();
  v0[20] = swift_initStackObject();
  v27 = sub_261CC1500(v26);
  v0[21] = v27;
  v0[22] = *(v27 + 16);
  sub_261CFDC14();
  swift_allocObject();
  swift_unknownObjectRetain_n();
  v0[23] = sub_261CFDC04();
  v28 = sub_261BC53A8();
  v30 = v29;
  v0[24] = v28;
  v31 = swift_task_alloc();
  v0[25] = v31;
  *v31 = v0;
  v31[1] = sub_261CC55C4;
  v36 = v30;

  return MEMORY[0x2821A8058](v23, 0, v25, 1, 0, nullsub_1, 0, v28);
}

uint64_t sub_261CC55C4(char a1)
{
  v4 = *v2;
  *(*v2 + 208) = v1;

  if (v1)
  {
    v5 = *(v4 + 128);
    v6 = *(v4 + 136);
    v7 = sub_261CC57DC;
  }

  else
  {
    swift_unknownObjectRelease();
    *(v4 + 216) = a1 & 1;
    v5 = *(v4 + 128);
    v6 = *(v4 + 136);
    v7 = sub_261CC5718;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_261CC5718()
{
  v1 = *(v0 + 216);

  if (v1 == 1)
  {
    sub_261CC11F4(*(v0 + 112));
  }

  v2 = *(v0 + 216);
  **(v0 + 64) = v2 ^ 1;
  sub_261CC5878(v2);

  swift_unknownObjectRelease();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_261CC57DC()
{

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

void sub_261CC5878(char a1)
{
  if (qword_27FED9D30 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFF7A4();
  __swift_project_value_buffer(v2, qword_27FEDE2A8);
  oslog = sub_261CFF784();
  v3 = sub_261CFFE84();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 67109120;
    *(v4 + 4) = a1 & 1;
    _os_log_impl(&dword_261AE2000, oslog, v3, "RemindersInCalendar: delete reminders request finished {deleted: %{BOOL}d)}", v4, 8u);
    MEMORY[0x26671D560](v4, -1, -1);
  }
}

void _s22DeleteRemindersRequestVwxx(void *a1)
{

  v2 = a1[1];
}

uint64_t *_s22DeleteRemindersRequestVwca(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;
  sub_261CFD104();

  v4 = a1[1];
  v5 = a2[1];
  a1[1] = v5;
  v6 = v5;

  return a1;
}

void *_s22DeleteRemindersRequestVwta(void *a1, _OWORD *a2)
{

  v4 = a1[1];
  *a1 = *a2;

  return a1;
}

uint64_t _s21DeleteRemindersResultOwet(unsigned __int8 *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = a2 + 255;
  if ((a2 + 255) >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      return v4;
    }

    v4 = a1[1];
    if (!a1[1])
    {
      return v4;
    }

    return (*a1 | (v4 << 8)) - 255;
  }

  if (v4 == 2)
  {
    v4 = *(a1 + 1);
    if (!*(a1 + 1))
    {
      return v4;
    }

    return (*a1 | (v4 << 8)) - 255;
  }

  v4 = *(a1 + 1);
  if (v4)
  {
    return (*a1 | (v4 << 8)) - 255;
  }

  return v4;
}

uint64_t _s21DeleteRemindersResultOwst(uint64_t result, int a2, int a3)
{
  v3 = a3 + 255;
  if ((a3 + 255) >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (!a3)
  {
    v5 = 0;
  }

  if (a2)
  {
    v6 = ((a2 - 1) >> 8) + 1;
    *result = a2 - 1;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }
  }

  else if (v5 > 1)
  {
    if (v5 == 2)
    {
      *(result + 1) = 0;
    }

    else
    {
      *(result + 1) = 0;
    }
  }

  else if (v5)
  {
    *(result + 1) = 0;
  }

  return result;
}

uint64_t sub_261CC5BA8()
{
  v0 = sub_261CFF7A4();
  __swift_allocate_value_buffer(v0, qword_27FEDE2C0);
  v1 = __swift_project_value_buffer(v0, qword_27FEDE2C0);
  if (qword_280D22888 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D27010);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t SiriUtilities.ListID.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  if (!*(v1 + 8))
  {
    v3 = 0;
    goto LABEL_5;
  }

  if (*(v1 + 8) == 1)
  {
    v3 = 1;
LABEL_5:
    MEMORY[0x26671CDA0](v3);
    return sub_261D00104();
  }

  MEMORY[0x26671CDA0](2);
  return MEMORY[0x26671CDA0](v2);
}

uint64_t SiriUtilities.ListID.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_261D006C4();
  if (v2)
  {
    if (v2 != 1)
    {
      MEMORY[0x26671CDA0](2);
      MEMORY[0x26671CDA0](v1);
      return sub_261D006F4();
    }

    v3 = 1;
  }

  else
  {
    v3 = 0;
  }

  MEMORY[0x26671CDA0](v3);
  sub_261D00104();
  return sub_261D006F4();
}

uint64_t sub_261CC5D8C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_261D006C4();
  if (v2)
  {
    if (v2 != 1)
    {
      MEMORY[0x26671CDA0](2);
      MEMORY[0x26671CDA0](v1);
      return sub_261D006F4();
    }

    v3 = 1;
  }

  else
  {
    v3 = 0;
  }

  MEMORY[0x26671CDA0](v3);
  sub_261D00104();
  return sub_261D006F4();
}

uint64_t sub_261CC5E18(uint64_t a1)
{
  v2 = *v1;
  if (!*(v1 + 8))
  {
    v3 = 0;
    goto LABEL_5;
  }

  if (*(v1 + 8) == 1)
  {
    v3 = 1;
LABEL_5:
    MEMORY[0x26671CDA0](v3);
    return sub_261D00104();
  }

  MEMORY[0x26671CDA0](2);
  return MEMORY[0x26671CDA0](v2);
}

uint64_t sub_261CC5E8C(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  sub_261D006C4();
  if (v3)
  {
    if (v3 != 1)
    {
      MEMORY[0x26671CDA0](2);
      MEMORY[0x26671CDA0](v2);
      return sub_261D006F4();
    }

    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  MEMORY[0x26671CDA0](v4);
  sub_261D00104();
  return sub_261D006F4();
}

uint64_t SiriUtilities.Day.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_261CFD7E4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

double SiriUtilities.Day.reminders.getter()
{
  type metadata accessor for SiriUtilities.Day(0);

  sub_261CFD104();
  return result;
}

uint64_t SiriUtilities.Day.init(date:reminders:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_261CFD7E4();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for SiriUtilities.Day(0);
  *(a3 + *(result + 20)) = a2;
  return result;
}

void static SiriUtilities.Day.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (sub_261CFD7B4())
  {
    v4 = *(type metadata accessor for SiriUtilities.Day(0) + 20);
    v5 = *(a1 + v4);
    v6 = *(a2 + v4);

    sub_261CC60D4(v5, v6);
  }
}

void sub_261CC60D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16) && v2 && a1 != a2)
  {
    sub_261B05020(0, &qword_27FEDA1B0, 0x277D82BB8);
    v5 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v7 = *(v5 - 1);
      v8 = *v5;
      v10 = *(i - 1);
      v9 = *i;
      sub_261CFD104();
      v11 = v7;
      sub_261CFD104();
      v12 = v10;
      if ((sub_261D000F4() & 1) == 0)
      {
        break;
      }

      if (v8)
      {
        if (!v9)
        {
          break;
        }

        sub_261CFD104();
        sub_261CC60D4(v8, v9);
        v14 = v13;

        swift_bridgeObjectRelease_n();
        if ((v14 & 1) == 0)
        {
          return;
        }
      }

      else
      {

        if (v9)
        {
          goto LABEL_15;
        }
      }

      v5 += 2;
      if (!--v2)
      {
        return;
      }
    }

LABEL_15:
  }
}

uint64_t sub_261CC6238(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SiriUtilities.Grouping(0) - 8;
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v16 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      do
      {
        sub_261CD38A8(v13, v10, type metadata accessor for SiriUtilities.Grouping);
        sub_261CD38A8(v14, v7, type metadata accessor for SiriUtilities.Grouping);
        v16 = _s19RemindersAppIntents13SiriUtilitiesO8GroupingO2eeoiySbAE_AEtFZ_0(v10, v7);
        sub_261CD1888(v7, type metadata accessor for SiriUtilities.Grouping);
        sub_261CD1888(v10, type metadata accessor for SiriUtilities.Grouping);
        if ((v16 & 1) == 0)
        {
          break;
        }

        v14 += v15;
        v13 += v15;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_261CC63F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SiriUtilities.Day(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v10 = &v19 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
LABEL_11:
    v17 = 0;
    return v17 & 1;
  }

  if (v11 && a1 != a2)
  {
    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v15 = *(v8 + 72);
    while (1)
    {
      sub_261CD38A8(v13, v10, type metadata accessor for SiriUtilities.Day);
      sub_261CD38A8(v14, v7, type metadata accessor for SiriUtilities.Day);
      if ((sub_261CFD7B4() & 1) == 0)
      {
        break;
      }

      sub_261CC60D4(*&v10[*(v4 + 20)], *&v7[*(v4 + 20)]);
      v17 = v16;
      sub_261CD1888(v7, type metadata accessor for SiriUtilities.Day);
      sub_261CD1888(v10, type metadata accessor for SiriUtilities.Day);
      if (v17)
      {
        v14 += v15;
        v13 += v15;
        if (--v11)
        {
          continue;
        }
      }

      return v17 & 1;
    }

    sub_261CD1888(v7, type metadata accessor for SiriUtilities.Day);
    sub_261CD1888(v10, type metadata accessor for SiriUtilities.Day);
    goto LABEL_11;
  }

  v17 = 1;
  return v17 & 1;
}

uint64_t sub_261CC65F8(unint64_t a1, unint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      v18 = 1;
      return v18 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    v4 = sub_261B05020(0, &qword_27FEDDF20, 0x277D44750);
    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v13 = v12 - 4;
        v14 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x26671CA10](v12 - 4, v3);
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v13 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v15 = *(v3 + 8 * v12);
          if (!v11)
          {
LABEL_24:
            if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v16 = *(a2 + 8 * v12);
            goto LABEL_26;
          }
        }

        v16 = MEMORY[0x26671CA10](v12 - 4, a2);
LABEL_26:
        v17 = v16;
        v18 = sub_261D000F4();

        if (v18)
        {
          ++v12;
          if (v14 != v5)
          {
            continue;
          }
        }

        return v18 & 1;
      }
    }

    v19 = (v3 + 32);
    v20 = (a2 + 32);
    v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = v5 - 1;
    while (1)
    {
      if (!v21)
      {
        goto LABEL_40;
      }

      if (!v22)
      {
        break;
      }

      v25 = *v19++;
      v24 = v25;
      v26 = *v20++;
      a2 = v24;
      v3 = v26;
      v18 = sub_261D000F4();

      v28 = v23-- != 0;
      if (v18)
      {
        --v22;
        --v21;
        if (v28)
        {
          continue;
        }
      }

      return v18 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = sub_261D00274();
  }

  result = sub_261D00274();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v18 = 0;
  return v18 & 1;
}

void sub_261CC6848(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_261CFD7B4())
  {
    v6 = *(a3 + 20);
    v7 = *(a1 + v6);
    v8 = *(a2 + v6);

    sub_261CC60D4(v7, v8);
  }
}

id SiriUtilities.ListContents.listID.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  v3 = *(v1 + 8);
  *(a1 + 8) = v3;
  return sub_261CCFD68(v2, v3);
}

uint64_t static SiriUtilities.fetchListContents(store:listID:prefetchRemindersCount:)@<X0>(void (*a1)(char *, uint64_t)@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDDBA0, &qword_261D0F9E8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v18 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAB68, &unk_261D11C90);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v18 - v12;
  v14 = *(a2 + 8);
  v18 = *a2;
  v19 = v14;
  v15 = sub_261CFD7E4();
  (*(*(v15 - 8) + 56))(v13, 1, 1, v15);
  v16 = sub_261CFDA84();
  (*(*(v16 - 8) + 56))(v10, 1, 1, v16);
  static SiriUtilities.fetchListContents(store:listID:prefetchRemindersCount:now:calendar:currentUserShareParticipantIDsOverride:)(a1, &v18, a3, v13, v10, 0, a4);
  sub_261AE6A40(v10, &qword_27FEDDBA0, &qword_261D0F9E8);
  return sub_261AE6A40(v13, &qword_27FEDAB68, &unk_261D11C90);
}

id static SiriUtilities.fetchListContents(store:listID:prefetchRemindersCount:now:calendar:currentUserShareParticipantIDsOverride:)@<X0>(void (*a1)(char *, uint64_t)@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v497 = a6;
  v502 = a5;
  v555 = a4;
  v599 = a3;
  v603 = a2;
  v608 = a1;
  v569 = a7;
  v617 = *MEMORY[0x277D85DE8];
  v560 = sub_261CFF464();
  v584 = *(v560 - 8);
  MEMORY[0x28223BE20](v560);
  v566 = &v453 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v481 = sub_261CFF484();
  v506 = *(v481 - 8);
  v8 = MEMORY[0x28223BE20](v481);
  v458 = &v453 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v478 = &v453 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDDBA0, &qword_261D0F9E8);
  MEMORY[0x28223BE20](v11 - 8);
  v498 = &v453 - v12;
  v501 = sub_261CFDA84();
  v500 = *(v501 - 8);
  MEMORY[0x28223BE20](v501);
  v499 = &v453 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v504 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE2D8, &qword_261D11880);
  v456 = *(v504 - 8);
  MEMORY[0x28223BE20](v504);
  v518 = &v453 - v14;
  v567 = sub_261CFF164();
  v587 = *(v567 - 8);
  MEMORY[0x28223BE20](v567);
  v573 = &v453 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v486 = sub_261CFF174();
  v512 = *(v486 - 8);
  v16 = MEMORY[0x28223BE20](v486);
  v477 = &v453 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v473 = &v453 - v18;
  v485 = sub_261CFF234();
  v487 = *(v485 - 8);
  v19 = MEMORY[0x28223BE20](v485);
  v476 = &v453 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v469 = &v453 - v21;
  v513 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE2E0, &qword_261D11888);
  v479 = *(v513 - 8);
  MEMORY[0x28223BE20](v513);
  v516 = &v453 - v22;
  v472 = sub_261CFF564();
  v471 = *(v472 - 8);
  v23 = MEMORY[0x28223BE20](v472);
  v470 = &v453 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v466 = &v453 - v25;
  v483 = sub_261CFF1D4();
  v468 = *(v483 - 8);
  v26 = MEMORY[0x28223BE20](v483);
  v467 = &v453 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v465 = &v453 - v28;
  v509 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE2E8, &qword_261D11890);
  v460 = *(v509 - 8);
  MEMORY[0x28223BE20](v509);
  v530 = &v453 - v29;
  v572 = sub_261CFF3D4();
  v586 = *(v572 - 8);
  MEMORY[0x28223BE20](v572);
  v574 = &v453 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v484 = sub_261CFF404();
  v510 = *(v484 - 8);
  v31 = MEMORY[0x28223BE20](v484);
  v474 = &v453 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v463 = &v453 - v33;
  v511 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDD8F8, &qword_261D0F108);
  v475 = *(v511 - 8);
  MEMORY[0x28223BE20](v511);
  v515 = &v453 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE2F0, &qword_261D11898);
  v36 = MEMORY[0x28223BE20](v35 - 8);
  v577 = &v453 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v558 = (&v453 - v38);
  v559 = sub_261CFF4D4();
  v583 = *(v559 - 8);
  MEMORY[0x28223BE20](v559);
  v582 = &v453 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v480 = sub_261CFF4F4();
  v505 = *(v480 - 8);
  v40 = MEMORY[0x28223BE20](v480);
  v457 = &v453 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v462 = &v453 - v42;
  v496 = sub_261CFF504();
  v495 = *(v496 - 8);
  MEMORY[0x28223BE20](v496);
  v494 = &v453 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v503 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE2F8, &qword_261D118A0);
  v455 = *(v503 - 8);
  MEMORY[0x28223BE20](v503);
  v517 = &v453 - v44;
  v581 = sub_261CFF2A4();
  v454 = *(v581 - 8);
  MEMORY[0x28223BE20](v581);
  v580 = &v453 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v602 = sub_261CFF2D4();
  v585 = *(v602 - 1);
  MEMORY[0x28223BE20](v602);
  v601 = &v453 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v611 = type metadata accessor for SiriUtilities.Grouping(0);
  v607 = *(v611 - 8);
  v47 = MEMORY[0x28223BE20](v611);
  v576 = &v453 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = MEMORY[0x28223BE20](v47);
  v557 = &v453 - v50;
  v51 = MEMORY[0x28223BE20](v49);
  v565 = (&v453 - v52);
  v53 = MEMORY[0x28223BE20](v51);
  v589 = &v453 - v54;
  v55 = MEMORY[0x28223BE20](v53);
  v564 = (&v453 - v56);
  v57 = MEMORY[0x28223BE20](v55);
  v588 = &v453 - v58;
  v59 = MEMORY[0x28223BE20](v57);
  v575 = &v453 - v60;
  v61 = MEMORY[0x28223BE20](v59);
  v556 = &v453 - v62;
  MEMORY[0x28223BE20](v61);
  v578 = &v453 - v63;
  v482 = sub_261CFF304();
  v508 = *(v482 - 8);
  v64 = MEMORY[0x28223BE20](v482);
  v464 = &v453 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v64);
  v461 = &v453 - v66;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAB68, &unk_261D11C90);
  v68 = MEMORY[0x28223BE20](v67 - 8);
  v490 = &v453 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = MEMORY[0x28223BE20](v68);
  v491 = &v453 - v71;
  MEMORY[0x28223BE20](v70);
  v488 = &v453 - v72;
  v562 = sub_261CFD7E4();
  v561 = *(v562 - 8);
  v73 = MEMORY[0x28223BE20](v562);
  v493 = &v453 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = MEMORY[0x28223BE20](v73);
  v492 = &v453 - v76;
  MEMORY[0x28223BE20](v75);
  v489 = &v453 - v77;
  v507 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE300, &qword_261D118A8);
  v459 = *(v507 - 8);
  MEMORY[0x28223BE20](v507);
  v514 = &v453 - v78;
  v543 = sub_261CFF054();
  v528 = *(v543 - 8);
  v79 = MEMORY[0x28223BE20](v543);
  v527 = &v453 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v79);
  v525 = &v453 - v81;
  v544 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB0A0, &qword_261D050D0);
  v529 = *(v544 - 8);
  MEMORY[0x28223BE20](v544);
  v571 = &v453 - v82;
  v563 = sub_261CFF274();
  v546 = *(v563 - 8);
  v83 = MEMORY[0x28223BE20](v563);
  v524 = &v453 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = MEMORY[0x28223BE20](v83);
  v523 = &v453 - v86;
  MEMORY[0x28223BE20](v85);
  v545 = &v453 - v87;
  v522 = sub_261CFF114();
  v521 = *(v522 - 8);
  v88 = MEMORY[0x28223BE20](v522);
  v520 = &v453 - ((v89 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v88);
  v519 = &v453 - v90;
  v542 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDB0F0, &qword_261D050F8);
  v526 = *(v542 - 8);
  MEMORY[0x28223BE20](v542);
  v570 = &v453 - v91;
  v606 = sub_261CFF334();
  v598 = *(v606 - 8);
  v92 = MEMORY[0x28223BE20](v606);
  v541 = (&v453 - ((v93 + 15) & 0xFFFFFFFFFFFFFFF0));
  v94 = MEMORY[0x28223BE20](v92);
  v540 = (&v453 - v95);
  v96 = MEMORY[0x28223BE20](v94);
  v539 = (&v453 - v97);
  v98 = MEMORY[0x28223BE20](v96);
  v538 = (&v453 - v99);
  v100 = MEMORY[0x28223BE20](v98);
  v537 = (&v453 - v101);
  v102 = MEMORY[0x28223BE20](v100);
  v536 = (&v453 - v103);
  v104 = MEMORY[0x28223BE20](v102);
  v579 = (&v453 - v105);
  v106 = MEMORY[0x28223BE20](v104);
  v597 = &v453 - v107;
  MEMORY[0x28223BE20](v106);
  v109 = (&v453 - v108);
  v613 = sub_261CFF284();
  v605 = *(v613 - 1);
  v110 = MEMORY[0x28223BE20](v613);
  v554 = &v453 - ((v111 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = MEMORY[0x28223BE20](v110);
  v553 = &v453 - v113;
  v114 = MEMORY[0x28223BE20](v112);
  v552 = &v453 - v115;
  v116 = MEMORY[0x28223BE20](v114);
  v550 = &v453 - v117;
  v118 = MEMORY[0x28223BE20](v116);
  v551 = &v453 - v119;
  v120 = MEMORY[0x28223BE20](v118);
  v549 = &v453 - v121;
  v122 = MEMORY[0x28223BE20](v120);
  v592 = &v453 - v123;
  v124 = MEMORY[0x28223BE20](v122);
  v596 = &v453 - v125;
  MEMORY[0x28223BE20](v124);
  v127 = &v453 - v126;
  v614 = sub_261CFF244();
  v610 = *(v614 - 1);
  v128 = MEMORY[0x28223BE20](v614);
  v535 = &v453 - ((v129 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = MEMORY[0x28223BE20](v128);
  v534 = &v453 - v131;
  v132 = MEMORY[0x28223BE20](v130);
  v533 = &v453 - v133;
  v134 = MEMORY[0x28223BE20](v132);
  v548 = &v453 - v135;
  v136 = MEMORY[0x28223BE20](v134);
  v532 = &v453 - v137;
  v138 = MEMORY[0x28223BE20](v136);
  v531 = &v453 - v139;
  v140 = MEMORY[0x28223BE20](v138);
  v591 = &v453 - v141;
  v142 = MEMORY[0x28223BE20](v140);
  v595 = &v453 - v143;
  MEMORY[0x28223BE20](v142);
  v145 = &v453 - v144;
  v612 = sub_261CFF204();
  v604 = *(v612 - 8);
  v146 = MEMORY[0x28223BE20](v612);
  v547 = &v453 - ((v147 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = MEMORY[0x28223BE20](v146);
  v150 = &v453 - v149;
  v151 = MEMORY[0x28223BE20](v148);
  v153 = &v453 - v152;
  v154 = MEMORY[0x28223BE20](v151);
  v156 = &v453 - v155;
  v157 = MEMORY[0x28223BE20](v154);
  v159 = &v453 - v158;
  v160 = MEMORY[0x28223BE20](v157);
  v162 = &v453 - v161;
  v163 = MEMORY[0x28223BE20](v160);
  v590 = &v453 - v164;
  v165 = MEMORY[0x28223BE20](v163);
  v609 = &v453 - v166;
  MEMORY[0x28223BE20](v165);
  v168 = &v453 - v167;
  v169 = sub_261CFF374();
  v170 = MEMORY[0x28223BE20](v169);
  v171 = MEMORY[0x28223BE20](v170);
  v172 = MEMORY[0x28223BE20](v171);
  v173 = MEMORY[0x28223BE20](v172);
  v174 = MEMORY[0x28223BE20](v173);
  v176 = &v453 - v175;
  v177 = MEMORY[0x28223BE20](v174);
  v178 = MEMORY[0x28223BE20](v177);
  v179 = MEMORY[0x28223BE20](v178);
  v187 = *v603;
  v188 = *(v603 + 8);
  v594 = v189;
  v593 = v179;
  v568 = v187;
  LODWORD(v603) = v188;
  if (!v188)
  {
    v611 = v145;
    v607 = (&v453 - v184);
    v615 = 0;
    v198 = [v608 fetchListWithObjectID_error_];
    if (v198)
    {
      v199 = v198;
      v200 = v615;
      v201 = [v199 sortingStyle];
      v202 = v168;
      sub_261CFF1E4();
      (*(v610 + 104))(v611, *MEMORY[0x277D45450], v614);
      v203 = v605;
      v204 = v127;
      (*(v605 + 104))(v127, *MEMORY[0x277D45470], v613);
      v602 = v199;
      if (v599 < 1)
      {
        v205 = MEMORY[0x277D45500];
      }

      else
      {
        *v109 = v599;
        v205 = MEMORY[0x277D45508];
      }

      v242 = v598;
      v243 = *v205;
      v244 = *(v598 + 104);
      v453 = v109;
      v245 = v606;
      v244(v109, v243, v606);
      v246 = v604;
      v604[2](v609, v202, v612);
      (*(v203 + 16))(v596, v204, v613);
      v247 = *(v242 + 16);
      v599 = v204;
      v247(v597, v109, v245);
      v601 = v202;
      v248 = v610;
      (*(v610 + 16))(v595, v611, v614);
      v227 = v607;
      sub_261CFF364();
      (*(v242 + 8))(v453, v245);
      (*(v203 + 8))(v599, v613);
      (*(v248 + 8))(v611, v614);
      (v246[1])(v601, v612);
      v228 = v602;
      v249 = v600;
      sub_261CFF0C4();
      if (v249)
      {
        goto LABEL_23;
      }

      v250 = v519;
      v251 = sub_261CFF534();
      v252 = v545;
      MEMORY[0x26671B7D0](v251);
      v614 = *(v521 + 8);
      v253 = v250;
      v254 = v522;
      v614(v253, v522);
      v255 = sub_261CFF264();
      v613 = *(v546 + 8);
      v613(v252, v563);
      v235 = sub_261CCBA28(v255);

      v256 = v520;
      v257 = sub_261CFF534();
      v258 = v523;
      MEMORY[0x26671B7D0](v257);
      v614(v256, v254);
      v259 = sub_261CFF254();
      v613(v258, v563);
      if (v259 >> 62)
      {
        sub_261B05020(0, &qword_27FEDDF20, 0x277D44750);
        sub_261CFD104();
        v240 = sub_261D004F4();
      }

      else
      {
        sub_261CFD104();
        sub_261D00624();
        sub_261B05020(0, &qword_27FEDDF20, 0x277D44750);

        v240 = v259;
      }

      v260 = v526;

      (*(v260 + 8))(v570, v542);
      (*(v594 + 8))(v607, v593);
      goto LABEL_168;
    }

    v221 = v615;
    sub_261CFD654();

    return swift_willThrow();
  }

  if (v188 != 1)
  {
    v206 = v613;
    if (v187 > 2u)
    {
      if (v187 != 3)
      {
        v212 = MEMORY[0x277D45420];
        v213 = MEMORY[0x277D45458];
        v214 = v604;
        if (v187 == 4)
        {
          v602 = v180;
          v604[13](v150, *MEMORY[0x277D45420], v612);
          v215 = v605;
          (*(v605 + 104))(v553, *MEMORY[0x277D45470], v206);
          (*(v610 + 104))(v534, *v213, v614);
          v216 = v598;
          if (v599 < 1)
          {
            v218 = MEMORY[0x277D45500];
            v219 = v573;
            v217 = v540;
          }

          else
          {
            v217 = v540;
            *v540 = v599;
            v218 = MEMORY[0x277D45508];
            v219 = v573;
          }

          v343 = v606;
          (*(v216 + 104))(v217, *v218, v606);
          v214[2](v609, v150, v612);
          (*(v215 + 16))(v596, v553, v206);
          (*(v216 + 16))(v597, v217, v343);
          v344 = v610;
          v345 = v534;
          v346 = v614;
          (*(v610 + 16))(v595, v534, v614);
          v289 = v602;
          sub_261CFF364();
          (*(v216 + 8))(v540, v606);
          (*(v344 + 8))(v345, v346);
          (*(v605 + 8))(v553, v613);
          (v604[1])(v150, v612);
          v347 = v516;
          v348 = v600;
          sub_261CFF294();
          if (v348)
          {
            return (*(v594 + 8))(v289, v593);
          }

          v349 = v469;
          v350 = sub_261CFF534();
          v351 = v473;
          MEMORY[0x26671B8F0](v350);
          v352 = v487 + 8;
          v353 = *(v487 + 8);
          v353(v349, v485);
          v354 = sub_261CFF134();
          v355 = *(v512 + 8);
          v512 += 8;
          v609 = v355;
          (v355)(v351, v486);
          v356 = *(v354 + 16);
          if (v356)
          {
            v608 = v353;
            v487 = v352;
            v357 = *(v587 + 16);
            v358 = *(v587 + 80);
            v606 = v354;
            v359 = v354 + ((v358 + 32) & ~v358);
            v612 = *(v587 + 72);
            v613 = v357;
            v587 += 16;
            v610 = v587 - 8;
            v235 = MEMORY[0x277D84F90];
            v360 = v567;
            v614 = 0;
            (v357)(v219, v359, v567);
            while (1)
            {
              v361 = sub_261CFF144();
              sub_261CCC89C(v361, &v615);
              v362 = v616;
              if (v616 == 255)
              {
                (*v610)(v219, v360);
              }

              else
              {
                v363 = v615;
                v364 = sub_261CFF154();
                v365 = sub_261CCBD0C(v364);

                (*v610)(v219, v360);
                v366 = v565;
                *v565 = v363;
                *(v366 + 8) = v362;
                *(v366 + 16) = v365;
                swift_storeEnumTagMultiPayload();
                sub_261CD3840(v366, v589, type metadata accessor for SiriUtilities.Grouping);
                v367 = v235;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v367 = sub_261B423D0(0, v235[2] + 1, 1, v235);
                }

                v369 = v367[2];
                v368 = v367[3];
                v360 = v567;
                v235 = v369 >= v368 >> 1 ? sub_261B423D0((v368 > 1), v369 + 1, 1, v367) : v367;
                v235[2] = v369 + 1;
                sub_261CD3840(v589, v235 + ((*(v607 + 80) + 32) & ~*(v607 + 80)) + v607[9] * v369, type metadata accessor for SiriUtilities.Grouping);
                v219 = v573;
              }

              v359 += v612;
              if (!--v356)
              {
                break;
              }

              (v613)(v219, v359, v360);
            }

            v347 = v516;
            v353 = v608;
          }

          else
          {

            v235 = MEMORY[0x277D84F90];
          }

          v436 = v476;
          v437 = sub_261CFF534();
          v438 = v477;
          MEMORY[0x26671B8F0](v437);
          v353(v436, v485);
          v439 = sub_261CFF124();
          (v609)(v438, v486);
          if (v439 >> 62)
          {
            sub_261B05020(0, &qword_27FEDDF20, 0x277D44750);
            sub_261CFD104();
            v240 = sub_261D004F4();
          }

          else
          {
            sub_261CFD104();
            sub_261D00624();
            sub_261B05020(0, &qword_27FEDDF20, 0x277D44750);
            v240 = v439;
          }

          (*(v479 + 8))(v347, v513);
        }

        else
        {
          v602 = v185;
          (*(v605 + 104))(v554, *MEMORY[0x277D45468], v613);
          v214[13](v547, *v212, v612);
          (*(v610 + 104))(v535, *v213, v614);
          if (v599 < 1)
          {
            v275 = MEMORY[0x277D45500];
            v276 = v566;
            v274 = v541;
          }

          else
          {
            v274 = v541;
            *v541 = v599;
            v275 = MEMORY[0x277D45508];
            v276 = v566;
          }

          v391 = v598;
          v392 = v606;
          (*(v598 + 104))(v274, *v275, v606);
          v214[2](v609, v547, v612);
          (*(v605 + 16))(v596, v554, v613);
          (*(v391 + 16))(v597, v274, v392);
          v393 = v610;
          v394 = v535;
          v395 = v614;
          (*(v610 + 16))(v595, v535, v614);
          sub_261CFF364();
          (*(v391 + 8))(v541, v606);
          (*(v393 + 8))(v394, v395);
          (v214[1])(v547, v612);
          (*(v605 + 8))(v554, v613);
          v396 = v490;
          sub_261AFB668(v555, v490, &qword_27FEDAB68, &unk_261D11C90);
          v397 = v561;
          v398 = *(v561 + 48);
          v399 = v562;
          if (v398(v396, 1, v562) == 1)
          {
            v400 = v493;
            sub_261CFD7D4();
            v401 = v398(v396, 1, v399);
            v402 = v500;
            v403 = v501;
            v404 = v499;
            if (v401 != 1)
            {
              sub_261AE6A40(v396, &qword_27FEDAB68, &unk_261D11C90);
            }
          }

          else
          {
            v405 = *(v397 + 32);
            v400 = v493;
            v405(v493, v396, v399);
            v402 = v500;
            v403 = v501;
            v404 = v499;
          }

          v406 = v498;
          sub_261AFB668(v502, v498, &qword_27FEDDBA0, &qword_261D0F9E8);
          v407 = *(v402 + 48);
          v408 = v407(v406, 1, v403);
          v409 = v600;
          if (v408 == 1)
          {
            sub_261CFDA74();
            if (v407(v406, 1, v403) != 1)
            {
              sub_261AE6A40(v406, &qword_27FEDDBA0, &qword_261D0F9E8);
            }
          }

          else
          {
            (*(v402 + 32))(v404, v406, v403);
          }

          v289 = v602;
          sub_261CFF514();
          if (v409)
          {
            (*(v402 + 8))(v404, v403);
            (*(v561 + 8))(v400, v562);
            return (*(v594 + 8))(v289, v593);
          }

          (*(v402 + 8))(v404, v403);
          (*(v561 + 8))(v400, v562);
          v422 = v478;
          sub_261CFF534();
          v423 = sub_261CFF264();
          v424 = *(v506 + 8);
          v506 += 8;
          v612 = v424;
          v424(v422, v481);
          v614 = *(v423 + 16);
          if (v614)
          {
            v425 = 0;
            v613 = (v584 + 16);
            v426 = (v584 + 8);
            v427 = (v607 + 6);
            v235 = MEMORY[0x277D84F90];
            v428 = v560;
            while (v425 < *(v423 + 16))
            {
              (*(v584 + 16))(v276, v423 + ((*(v584 + 80) + 32) & ~*(v584 + 80)) + *(v584 + 72) * v425, v428);
              v429 = v577;
              sub_261CCCB28(v276, v577);
              (*v426)(v276, v428);
              if ((*v427)(v429, 1, v611) == 1)
              {
                sub_261AE6A40(v429, &qword_27FEDE2F0, &qword_261D11898);
              }

              else
              {
                v430 = v557;
                sub_261CD3840(v429, v557, type metadata accessor for SiriUtilities.Grouping);
                sub_261CD3840(v430, v576, type metadata accessor for SiriUtilities.Grouping);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v235 = sub_261B423D0(0, v235[2] + 1, 1, v235);
                }

                v432 = v235[2];
                v431 = v235[3];
                if (v432 >= v431 >> 1)
                {
                  v235 = sub_261B423D0((v431 > 1), v432 + 1, 1, v235);
                }

                v235[2] = v432 + 1;
                sub_261CD3840(v576, v235 + ((*(v607 + 80) + 32) & ~*(v607 + 80)) + v607[9] * v432, type metadata accessor for SiriUtilities.Grouping);
                v428 = v560;
                v276 = v566;
              }

              if (v614 == ++v425)
              {
                goto LABEL_164;
              }
            }

            goto LABEL_170;
          }

          v235 = MEMORY[0x277D84F90];
LABEL_164:

          v446 = v458;
          v447 = v518;
          sub_261CFF534();
          v448 = sub_261CFF254();
          (v612)(v446, v481);
          if (v448 >> 62)
          {
            sub_261B05020(0, &qword_27FEDDF20, 0x277D44750);
            sub_261CFD104();
            v240 = sub_261D004F4();
          }

          else
          {
            sub_261CFD104();
            sub_261D00624();
            sub_261B05020(0, &qword_27FEDDF20, 0x277D44750);
            v240 = v448;
          }

          v449 = v456;

          (*(v449 + 8))(v447, v504);
        }

LABEL_167:
        (*(v594 + 8))(v602, v593);
        goto LABEL_168;
      }

      v602 = v182;
      v266 = v604;
      v604[13](v153, *MEMORY[0x277D45420], v612);
      (*(v605 + 104))(v552, *MEMORY[0x277D45470], v206);
      (*(v610 + 104))(v533, *MEMORY[0x277D45458], v614);
      if (v599 < 1)
      {
        v268 = MEMORY[0x277D45500];
        v267 = v539;
      }

      else
      {
        v267 = v539;
        *v539 = v599;
        v268 = MEMORY[0x277D45508];
      }

      v291 = v598;
      v292 = v606;
      (*(v598 + 104))(v267, *v268, v606);
      v266[2](v609, v153, v612);
      v293 = v605;
      (*(v605 + 16))(v596, v552, v206);
      (*(v291 + 16))(v597, v267, v292);
      v294 = v610;
      v295 = v533;
      v296 = v614;
      (*(v610 + 16))(v595, v533, v614);
      v289 = v602;
      sub_261CFF364();
      (*(v291 + 8))(v539, v606);
      (*(v294 + 8))(v295, v296);
      (*(v293 + 8))(v552, v613);
      (v604[1])(v153, v612);
      v297 = v600;
      sub_261CFF214();
      if (!v297)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA578, &qword_261D03160);
        v316 = (*(v607 + 80) + 32) & ~*(v607 + 80);
        v235 = swift_allocObject();
        *(v235 + 1) = xmmword_261D03450;
        v317 = v465;
        v318 = sub_261CFF534();
        v319 = v466;
        MEMORY[0x26671B890](v318);
        v614 = *(v468 + 8);
        v614(v317, v483);
        v320 = sub_261CFF264();
        v321 = *(v471 + 8);
        v322 = v472;
        v321(v319, v472);
        v323 = sub_261CCBD0C(v320);

        *(v235 + v316) = v323;
        swift_storeEnumTagMultiPayload();
        v324 = v467;
        v325 = sub_261CFF534();
        v326 = v470;
        MEMORY[0x26671B890](v325);
        v614(v324, v483);
        v327 = sub_261CFF254();
        v321(v326, v322);
        if (v327 >> 62)
        {
          sub_261B05020(0, &qword_27FEDDF20, 0x277D44750);
          sub_261CFD104();
          v240 = sub_261D004F4();
        }

        else
        {
          sub_261CFD104();
          sub_261D00624();
          sub_261B05020(0, &qword_27FEDDF20, 0x277D44750);
          v240 = v327;
        }

        v328 = v460;

        (*(v328 + 8))(v530, v509);
        (*(v594 + 8))(v602, v593);
        goto LABEL_168;
      }
    }

    else
    {
      if (v187)
      {
        v207 = v605;
        if (v187 == 1)
        {
          v602 = v176;
          v208 = v604;
          v604[13](v159, *MEMORY[0x277D45420], v612);
          (*(v207 + 104))(v551, *MEMORY[0x277D45470], v206);
          (*(v610 + 104))(v532, *MEMORY[0x277D45458], v614);
          if (v599 < 1)
          {
            v210 = MEMORY[0x277D45500];
            v211 = v598;
            v209 = v537;
          }

          else
          {
            v209 = v537;
            *v537 = v599;
            v210 = MEMORY[0x277D45508];
            v211 = v598;
          }

          v329 = v606;
          (*(v211 + 104))(v209, *v210, v606);
          v208[2](v609, v159, v612);
          (*(v207 + 16))(v596, v551, v206);
          (*(v211 + 16))(v597, v209, v329);
          v330 = v610;
          v331 = v532;
          v332 = v614;
          (*(v610 + 16))(v595, v532, v614);
          sub_261CFF364();
          (*(v211 + 8))(v537, v606);
          (*(v330 + 8))(v331, v332);
          (*(v207 + 8))(v551, v613);
          (v604[1])(v159, v612);
          v333 = v495;
          v334 = v494;
          v335 = v496;
          (*(v495 + 104))(v494, *MEMORY[0x277D455D8], v496);
          v336 = v491;
          sub_261AFB668(v555, v491, &qword_27FEDAB68, &unk_261D11C90);
          v337 = v561;
          v338 = *(v561 + 48);
          v339 = v562;
          if (v338(v336, 1, v562) == 1)
          {
            v340 = v492;
            sub_261CFD7D4();
            v341 = v338(v336, 1, v339);
            v342 = v600;
            if (v341 != 1)
            {
              sub_261AE6A40(v336, &qword_27FEDAB68, &unk_261D11C90);
            }
          }

          else
          {
            v340 = v492;
            (*(v337 + 32))(v492, v336, v339);
            v342 = v600;
          }

          v289 = v602;
          sub_261CFF524();
          if (v342)
          {
            (*(v337 + 8))(v340, v339);
            (*(v333 + 8))(v334, v335);
            return (*(v594 + 8))(v289, v593);
          }

          (*(v337 + 8))(v340, v339);
          (*(v333 + 8))(v334, v335);
          v410 = v462;
          sub_261CFF534();
          v411 = sub_261CFF264();
          v412 = *(v505 + 8);
          v505 += 8;
          v612 = v412;
          v412(v410, v480);
          v614 = *(v411 + 16);
          if (v614)
          {
            v413 = 0;
            v613 = (v583 + 16);
            v414 = (v583 + 8);
            v415 = (v607 + 6);
            v235 = MEMORY[0x277D84F90];
            v416 = v559;
            v417 = v558;
            v418 = v582;
            while (v413 < *(v411 + 16))
            {
              (*(v583 + 16))(v418, v411 + ((*(v583 + 80) + 32) & ~*(v583 + 80)) + *(v583 + 72) * v413, v416);
              sub_261CCBEF0(v418, v417);
              (*v414)(v418, v416);
              if ((*v415)(v417, 1, v611) == 1)
              {
                sub_261AE6A40(v417, &qword_27FEDE2F0, &qword_261D11898);
              }

              else
              {
                v419 = v556;
                sub_261CD3840(v417, v556, type metadata accessor for SiriUtilities.Grouping);
                sub_261CD3840(v419, v575, type metadata accessor for SiriUtilities.Grouping);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v235 = sub_261B423D0(0, v235[2] + 1, 1, v235);
                }

                v421 = v235[2];
                v420 = v235[3];
                if (v421 >= v420 >> 1)
                {
                  v235 = sub_261B423D0((v420 > 1), v421 + 1, 1, v235);
                }

                v235[2] = v421 + 1;
                sub_261CD3840(v575, v235 + ((*(v607 + 80) + 32) & ~*(v607 + 80)) + v607[9] * v421, type metadata accessor for SiriUtilities.Grouping);
                v416 = v559;
                v417 = v558;
              }

              ++v413;
              v418 = v582;
              if (v614 == v413)
              {
                goto LABEL_160;
              }
            }

            __break(1u);
LABEL_170:
            __break(1u);
LABEL_171:
            sub_261B05020(0, &qword_27FEDDF20, 0x277D44750);
            sub_261CFD104();
            v240 = sub_261D004F4();

            goto LABEL_26;
          }

          v235 = MEMORY[0x277D84F90];
LABEL_160:

          v442 = v457;
          v443 = v517;
          sub_261CFF534();
          v444 = sub_261CFF254();
          (v612)(v442, v480);
          if (v444 >> 62)
          {
            sub_261B05020(0, &qword_27FEDDF20, 0x277D44750);
            sub_261CFD104();
            v240 = sub_261D004F4();
          }

          else
          {
            sub_261CFD104();
            sub_261D00624();
            sub_261B05020(0, &qword_27FEDDF20, 0x277D44750);
            v240 = v444;
          }

          v445 = v455;

          (*(v445 + 8))(v443, v503);
        }

        else
        {
          v602 = v181;
          (*(v610 + 104))(v548, *MEMORY[0x277D45450], v614);
          v604[13](v156, *MEMORY[0x277D45420], v612);
          (*(v207 + 104))(v550, *MEMORY[0x277D45470], v206);
          v269 = v206;
          if (v599 < 1)
          {
            v271 = MEMORY[0x277D45500];
            v272 = v572;
            v273 = v574;
            v270 = v538;
          }

          else
          {
            v270 = v538;
            *v538 = v599;
            v271 = MEMORY[0x277D45508];
            v272 = v572;
            v273 = v574;
          }

          v370 = v598;
          v371 = v606;
          (*(v598 + 104))(v270, *v271, v606);
          v604[2](v609, v156, v612);
          (*(v207 + 16))(v596, v550, v269);
          (*(v370 + 16))(v597, v270, v371);
          v372 = v610;
          (*(v610 + 16))(v595, v548, v614);
          v289 = v602;
          sub_261CFF364();
          (*(v370 + 8))(v538, v606);
          (*(v207 + 8))(v550, v613);
          (v604[1])(v156, v612);
          (*(v372 + 8))(v548, v614);
          v373 = v515;
          v374 = v600;
          sub_261CFF344();
          if (v374)
          {
            return (*(v594 + 8))(v289, v593);
          }

          v375 = v463;
          sub_261CFF534();
          v376 = sub_261CFF134();
          v377 = *(v510 + 8);
          v510 += 8;
          (v377)(v375, v484);
          v378 = *(v376 + 2);
          if (v378)
          {
            v609 = v377;
            v379 = *(v586 + 16);
            v380 = *(v586 + 80);
            v608 = v376;
            v381 = v376 + ((v380 + 32) & ~v380);
            v612 = *(v586 + 72);
            v613 = v379;
            v586 += 16;
            v610 = v586 - 8;
            v235 = MEMORY[0x277D84F90];
            v614 = 0;
            (v379)(v273, v381, v272);
            while (1)
            {
              v382 = sub_261CFF394();
              sub_261CCC89C(v382, &v615);
              v383 = v616;
              if (v616 == 255)
              {
                (*v610)(v273, v272);
              }

              else
              {
                v384 = v615;
                v385 = sub_261CFF1A4();
                v386 = sub_261CCBA28(v385);

                (*v610)(v273, v272);
                v387 = v564;
                *v564 = v384;
                *(v387 + 8) = v383;
                *(v387 + 16) = v386;
                swift_storeEnumTagMultiPayload();
                sub_261CD3840(v387, v588, type metadata accessor for SiriUtilities.Grouping);
                v388 = v235;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v388 = sub_261B423D0(0, v235[2] + 1, 1, v235);
                }

                v390 = v388[2];
                v389 = v388[3];
                v235 = v390 >= v389 >> 1 ? sub_261B423D0((v389 > 1), v390 + 1, 1, v388) : v388;
                v273 = v574;
                v235[2] = v390 + 1;
                sub_261CD3840(v588, v235 + ((*(v607 + 80) + 32) & ~*(v607 + 80)) + v607[9] * v390, type metadata accessor for SiriUtilities.Grouping);
                v272 = v572;
              }

              v381 += v612;
              if (!--v378)
              {
                break;
              }

              (v613)(v273, v381, v272);
            }

            v373 = v515;
            v377 = v609;
          }

          else
          {

            v235 = MEMORY[0x277D84F90];
          }

          v440 = v474;
          sub_261CFF534();
          v441 = sub_261CFF124();
          (v377)(v440, v484);
          if (v441 >> 62)
          {
            sub_261B05020(0, &qword_27FEDDF20, 0x277D44750);
            sub_261CFD104();
            v240 = sub_261D004F4();
          }

          else
          {
            sub_261CFD104();
            sub_261D00624();
            sub_261B05020(0, &qword_27FEDDF20, 0x277D44750);
            v240 = v441;
          }

          (*(v475 + 8))(v373, v511);
        }

        goto LABEL_167;
      }

      v592 = v186;
      v261 = v604;
      v604[13](v162, *MEMORY[0x277D45420], v612);
      v262 = v605;
      (*(v605 + 104))(v549, *MEMORY[0x277D45470], v206);
      (*(v610 + 104))(v531, *MEMORY[0x277D45458], v614);
      if (v599 < 1)
      {
        v264 = MEMORY[0x277D45500];
        v265 = v598;
        v263 = v536;
      }

      else
      {
        v263 = v536;
        *v536 = v599;
        v264 = MEMORY[0x277D45508];
        v265 = v598;
      }

      v277 = v606;
      (*(v265 + 104))(v263, *v264, v606);
      v261[2](v609, v162, v612);
      (*(v262 + 16))(v596, v549, v206);
      (*(v265 + 16))(v597, v263, v277);
      v278 = v261;
      v279 = v610;
      v280 = v531;
      v281 = v614;
      (*(v610 + 16))(v595, v531, v614);
      sub_261CFF364();
      (*(v265 + 8))(v536, v606);
      (*(v279 + 8))(v280, v281);
      (*(v605 + 8))(v549, v613);
      (v278[1])(v162, v612);
      v282 = v488;
      sub_261AFB668(v555, v488, &qword_27FEDAB68, &unk_261D11C90);
      v283 = v561;
      v284 = *(v561 + 48);
      v285 = v562;
      if (v284(v282, 1, v562) == 1)
      {
        v286 = v489;
        sub_261CFD7D4();
        v287 = v284(v282, 1, v285);
        v288 = v514;
        if (v287 != 1)
        {
          sub_261AE6A40(v282, &qword_27FEDAB68, &unk_261D11C90);
        }
      }

      else
      {
        v286 = v489;
        (*(v283 + 32))(v489, v282, v285);
        v288 = v514;
      }

      v289 = v592;
      v290 = v600;
      sub_261CFF354();
      if (!v290)
      {
        (*(v283 + 8))(v286, v285);
        v298 = v461;
        sub_261CFF534();
        v299 = sub_261CFF2F4();
        v300 = *(v508 + 8);
        v508 += 8;
        (v300)(v298, v482);
        v301 = *(v299 + 16);
        if (v301)
        {
          v604 = v300;
          v615 = MEMORY[0x277D84F90];
          sub_261B3A3E0(0, v301, 0);
          v235 = v615;
          v302 = *(v585 + 16);
          v303 = (*(v585 + 80) + 32) & ~*(v585 + 80);
          v600 = v299;
          v304 = v299 + v303;
          v612 = *(v585 + 72);
          v613 = v302;
          v305 = (v454 + 88);
          LODWORD(v610) = *MEMORY[0x277D454B0];
          LODWORD(v609) = *MEMORY[0x277D45498];
          LODWORD(v608) = *MEMORY[0x277D454A0];
          LODWORD(v606) = *MEMORY[0x277D454C0];
          LODWORD(v605) = *MEMORY[0x277D454D0];
          LODWORD(v599) = *MEMORY[0x277D454C8];
          LODWORD(v598) = *MEMORY[0x277D454B8];
          v596 = (v454 + 8);
          v585 += 16;
          v306 = (v585 - 8);
          LODWORD(v597) = *MEMORY[0x277D454A8];
          v614 = 0;
          do
          {
            (v613)(v601, v304, v602);
            v307 = v580;
            sub_261CFF2B4();
            v308 = (*v305)(v307, v581);
            if (v308 == v610)
            {
              v309 = 0;
            }

            else if (v308 == v609)
            {
              v309 = 1;
            }

            else if (v308 == v608)
            {
              v309 = 2;
            }

            else if (v308 == v606)
            {
              v309 = 3;
            }

            else if (v308 == v605)
            {
              v309 = 4;
            }

            else if (v308 == v599)
            {
              v309 = 5;
            }

            else if (v308 == v598)
            {
              v309 = 6;
            }

            else
            {
              if (v308 != v597)
              {
                (*v596)(v580, v581);
              }

              v309 = 7;
            }

            v310 = v601;
            v311 = sub_261CFF2C4();
            v312 = sub_261CCBD0C(v311);

            (*v306)(v310, v602);
            v313 = v578;
            *v578 = v309;
            *(v313 + 8) = v312;
            swift_storeEnumTagMultiPayload();
            v615 = v235;
            v315 = v235[2];
            v314 = v235[3];
            if (v315 >= v314 >> 1)
            {
              sub_261B3A3E0((v314 > 1), v315 + 1, 1);
              v235 = v615;
            }

            v235[2] = v315 + 1;
            sub_261CD3840(v313, v235 + ((*(v607 + 80) + 32) & ~*(v607 + 80)) + v607[9] * v315, type metadata accessor for SiriUtilities.Grouping);
            v304 += v612;
            --v301;
          }

          while (v301);

          v288 = v514;
          v300 = v604;
        }

        else
        {

          v235 = MEMORY[0x277D84F90];
        }

        v433 = v464;
        sub_261CFF534();
        v434 = sub_261CFF2E4();
        (v300)(v433, v482);
        if (v434 >> 62)
        {
          sub_261B05020(0, &qword_27FEDDF20, 0x277D44750);
          sub_261CFD104();
          v240 = sub_261D004F4();
        }

        else
        {
          sub_261CFD104();
          sub_261D00624();
          sub_261B05020(0, &qword_27FEDDF20, 0x277D44750);
          v240 = v434;
        }

        v435 = v459;

        (*(v435 + 8))(v288, v507);
        (*(v594 + 8))(v592, v593);
        goto LABEL_168;
      }

      (*(v283 + 8))(v286, v285);
    }

    return (*(v594 + 8))(v289, v593);
  }

  v611 = v183;
  v615 = 0;
  v190 = [v608 fetchCustomSmartListWithObjectID_error_];
  v191 = v613;
  if (!v190)
  {
    v220 = v615;
    sub_261CFD654();

    return swift_willThrow();
  }

  v192 = v190;
  v193 = v615;
  v607 = v192;
  v194 = [v192 sortingStyle];
  sub_261CFF1E4();
  (*(v610 + 104))(v591, *MEMORY[0x277D45450], v614);
  v195 = v605;
  (*(v605 + 104))(v592, *MEMORY[0x277D45470], v191);
  if (v599 < 1)
  {
    v197 = MEMORY[0x277D45500];
    v196 = v579;
  }

  else
  {
    v196 = v579;
    *v579 = v599;
    v197 = MEMORY[0x277D45508];
  }

  v223 = v598;
  v224 = v606;
  (*(v598 + 104))(v196, *v197, v606);
  v225 = v604;
  v604[2](v609, v590, v612);
  (*(v195 + 16))(v596, v592, v191);
  (*(v223 + 16))(v597, v196, v224);
  v226 = v610;
  (*(v610 + 16))(v595, v591, v614);
  v227 = v611;
  sub_261CFF364();
  (*(v223 + 8))(v579, v224);
  (*(v195 + 8))(v592, v613);
  (*(v226 + 8))(v591, v614);
  (v225[1])(v590, v612);
  v228 = v607;
  v229 = v600;
  sub_261CFF0B4();
  if (v229)
  {
LABEL_23:

    return (*(v594 + 8))(v227, v593);
  }

  v230 = v525;
  v231 = sub_261CFF534();
  v232 = v545;
  MEMORY[0x26671B710](v231);
  v614 = *(v528 + 8);
  v614(v230, v543);
  v233 = sub_261CFF264();
  v613 = *(v546 + 8);
  v234 = v563;
  v613(v232, v563);
  v235 = sub_261CCBA28(v233);

  v236 = v527;
  v237 = sub_261CFF534();
  v238 = v524;
  MEMORY[0x26671B710](v237);
  v614(v236, v543);
  v239 = sub_261CFF254();
  v613(v238, v234);
  if (v239 >> 62)
  {
    goto LABEL_171;
  }

  sub_261CFD104();
  sub_261D00624();
  sub_261B05020(0, &qword_27FEDDF20, 0x277D44750);

  v240 = v239;
LABEL_26:
  v241 = v529;

  (*(v241 + 8))(v571, v544);
  (*(v594 + 8))(v611, v593);
LABEL_168:
  v450 = v569;
  v451 = v568;
  *v569 = v568;
  v452 = v603;
  *(v450 + 8) = v603;
  v450[2] = v235;
  v450[3] = v240;
  return sub_261CCFD68(v451, v452);
}

void *sub_261CCBA28(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE2F0, &qword_261D11898);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v19 - v3;
  v5 = type metadata accessor for SiriUtilities.Grouping(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v21 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v20 = &v19 - v9;
  v10 = *(a1 + 16);
  if (!v10)
  {
    return MEMORY[0x277D84F90];
  }

  v11 = *(sub_261CFF1B4() - 8);
  v12 = a1 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
  v13 = *(v11 + 72);
  v14 = MEMORY[0x277D84F90];
  v19 = v13;
  do
  {
    sub_261CCD860(v12, v4);
    if ((*(v6 + 48))(v4, 1, v5) == 1)
    {
      sub_261AE6A40(v4, &qword_27FEDE2F0, &qword_261D11898);
    }

    else
    {
      v15 = v20;
      sub_261CD3840(v4, v20, type metadata accessor for SiriUtilities.Grouping);
      sub_261CD3840(v15, v21, type metadata accessor for SiriUtilities.Grouping);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = sub_261B423D0(0, v14[2] + 1, 1, v14);
      }

      v17 = v14[2];
      v16 = v14[3];
      if (v17 >= v16 >> 1)
      {
        v14 = sub_261B423D0((v16 > 1), v17 + 1, 1, v14);
      }

      v14[2] = v17 + 1;
      sub_261CD3840(v21, v14 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v17, type metadata accessor for SiriUtilities.Grouping);
      v13 = v19;
    }

    v12 += v13;
    --v10;
  }

  while (v10);
  return v14;
}

uint64_t sub_261CCBD0C(uint64_t a1)
{
  v2 = sub_261CFF0F4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v24 = MEMORY[0x277D84F90];
    sub_261B3A3C0(0, v6, 0);
    v7 = v24;
    v9 = *(v3 + 16);
    v8 = v3 + 16;
    v10 = a1 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
    v21 = *(v8 + 56);
    v22 = v9;
    v20 = (v8 - 8);
    v23 = v8;
    do
    {
      v22(v5, v10, v2);
      v11 = sub_261CFF0E4();
      if (v11)
      {
        v12 = sub_261CCBD0C(v11);
      }

      else
      {
        v12 = 0;
      }

      v13 = sub_261CFF0D4();
      v14 = v2;
      (*v20)(v5, v2);
      v24 = v7;
      v16 = *(v7 + 16);
      v15 = *(v7 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_261B3A3C0((v15 > 1), v16 + 1, 1);
        v7 = v24;
      }

      *(v7 + 16) = v16 + 1;
      v17 = v7 + 16 * v16;
      *(v17 + 32) = v13;
      *(v17 + 40) = v12;
      v10 += v21;
      --v6;
      v2 = v14;
    }

    while (v6);
  }

  return v7;
}

uint64_t sub_261CCBEF0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_261CFF4C4();
  v59 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_261CFD7E4();
  v61 = *(v7 - 8);
  v62 = v7;
  MEMORY[0x28223BE20](v7);
  v60 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_261CFF4D4();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v56 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v57 = &v56 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = (&v56 - v15);
  v17 = *(v10 + 16);
  v58 = a1;
  v17(&v56 - v15, a1, v9);
  v18 = (*(v10 + 88))(v16, v9);
  if (v18 == *MEMORY[0x277D455D0])
  {
    (*(v10 + 96))(v16, v9);
    v19 = sub_261CCD5D4(*v16, MEMORY[0x277D455A8], MEMORY[0x277D45598], MEMORY[0x277D455A0]);

    *a2 = v19;
    type metadata accessor for SiriUtilities.ScheduledGroup(0);
LABEL_8:
    swift_storeEnumTagMultiPayload();
    v30 = type metadata accessor for SiriUtilities.Grouping(0);
    swift_storeEnumTagMultiPayload();
    return (*(*(v30 - 8) + 56))(a2, 0, 1, v30);
  }

  if (v18 == *MEMORY[0x277D455B0])
  {
    goto LABEL_7;
  }

  if (v18 == *MEMORY[0x277D455B8])
  {
    (*(v10 + 96))(v16, v9);
    v20 = v59;
    v21 = (*(v59 + 32))(v6, v16, v4);
    MEMORY[0x26671BB70](v21);
    v22 = sub_261CFF4B4();
    v23 = sub_261CCBD0C(v22);

    (*(v20 + 8))(v6, v4);
    *(a2 + *(type metadata accessor for SiriUtilities.Day(0) + 20)) = v23;
    type metadata accessor for SiriUtilities.ScheduledGroup(0);
    goto LABEL_8;
  }

  if (v18 == *MEMORY[0x277D455C8])
  {
LABEL_7:
    (*(v10 + 96))(v16, v9);
    v24 = *(v16 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE370, &qword_261D11C60) + 48));
    v26 = v60;
    v25 = v61;
    v27 = v62;
    (v61[4])(v60, v16, v62);
    v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE330, &qword_261D11B80) + 48);
    (v25[2])(a2, v26, v27);
    v29 = sub_261CCD5D4(v24, MEMORY[0x277D455A8], MEMORY[0x277D45598], MEMORY[0x277D455A0]);

    (v25[1])(v26, v27);
    *(a2 + v28) = v29;
    type metadata accessor for SiriUtilities.ScheduledGroup(0);
    goto LABEL_8;
  }

  v32 = a2;
  if (v18 == *MEMORY[0x277D455C0])
  {
    (*(v10 + 96))(v16, v9);
    v33 = *(v16 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE370, &qword_261D11C60) + 48));
    v35 = v60;
    v34 = v61;
    v36 = v16;
    v37 = v62;
    (v61[4])(v60, v36, v62);
    v38 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE330, &qword_261D11B80) + 48);
    (v34[2])(a2, v35, v37);
    v39 = sub_261CCD5D4(v33, MEMORY[0x277D455A8], MEMORY[0x277D45598], MEMORY[0x277D455A0]);

    (v34[1])(v35, v37);
    *(a2 + v38) = v39;
    type metadata accessor for SiriUtilities.ScheduledGroup(0);
    swift_storeEnumTagMultiPayload();
    v40 = type metadata accessor for SiriUtilities.Grouping(0);
    swift_storeEnumTagMultiPayload();
    return (*(*(v40 - 8) + 56))(a2, 0, 1, v40);
  }

  else
  {
    if (qword_27FED9D38 != -1)
    {
      swift_once();
    }

    v41 = sub_261CFF7A4();
    __swift_project_value_buffer(v41, qword_27FEDE2C0);
    v42 = v57;
    v17(v57, v58, v9);
    v43 = sub_261CFF784();
    LODWORD(v62) = sub_261CFFE64();
    if (os_log_type_enabled(v43, v62))
    {
      v44 = swift_slowAlloc();
      v60 = v44;
      v61 = swift_slowAlloc();
      v63 = v61;
      *v44 = 136315138;
      v17(v56, v42, v9);
      v45 = sub_261CFFAB4();
      v46 = v42;
      v47 = v45;
      v49 = v48;
      v50 = *(v10 + 8);
      v50(v46, v9);
      v51 = sub_261B879C8(v47, v49, &v63);
      v32 = a2;

      v52 = v60;
      *(v60 + 4) = v51;
      v53 = v52;
      _os_log_impl(&dword_261AE2000, v43, v62, "Unhandled bucket: %s", v52, 0xCu);
      v54 = v61;
      __swift_destroy_boxed_opaque_existential_0(v61);
      MEMORY[0x26671D560](v54, -1, -1);
      MEMORY[0x26671D560](v53, -1, -1);
    }

    else
    {

      v50 = *(v10 + 8);
      v50(v42, v9);
    }

    v55 = type metadata accessor for SiriUtilities.Grouping(0);
    (*(*(v55 - 8) + 56))(v32, 1, 1, v55);
    return (v50)(v16, v9);
  }
}

void sub_261CCC89C(void *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  v4 = [a1 entityName];
  v5 = sub_261CFFA74();
  v7 = v6;

  v8 = v5 == 0x73694C44434D4552 && v7 == 0xE900000000000074;
  if (v8 || (sub_261D00614() & 1) != 0)
  {

    v9 = 0;
  }

  else if (v5 == 0x616D5344434D4552 && v7 == 0xEE007473694C7472)
  {

    v9 = 1;
  }

  else
  {
    v11 = sub_261D00614();

    if (v11)
    {
      v9 = 1;
    }

    else
    {
      if (qword_27FED9D38 != -1)
      {
        swift_once();
      }

      v12 = sub_261CFF7A4();
      __swift_project_value_buffer(v12, qword_27FEDE2C0);
      v13 = v2;
      v14 = sub_261CFF784();
      v15 = sub_261CFFE64();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v23 = v17;
        *v16 = 136315138;
        v18 = [v13 entityName];
        v19 = sub_261CFFA74();
        v21 = v20;

        v22 = sub_261B879C8(v19, v21, &v23);

        *(v16 + 4) = v22;
        _os_log_impl(&dword_261AE2000, v14, v15, "Unable to handle entity type %s", v16, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v17);
        MEMORY[0x26671D560](v17, -1, -1);
        MEMORY[0x26671D560](v16, -1, -1);
      }

      else
      {
      }

      v2 = 0;
      v9 = -1;
    }
  }

  *a2 = v2;
  *(a2 + 8) = v9;
}

uint64_t sub_261CCCB28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_261CFF324();
  v72 = *(v4 - 8);
  v73 = v4;
  MEMORY[0x28223BE20](v4);
  v71 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_261CFD7E4();
  v76 = *(v6 - 1);
  v77 = v6;
  MEMORY[0x28223BE20](v6);
  v75 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_261CFF454();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_261CFF464();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v69 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v74 = &v69 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v69 - v18;
  v20 = *(v13 + 16);
  v70 = a1;
  v21 = a1;
  v22 = v20;
  v20(&v69 - v18, v21, v12);
  v23 = (*(v13 + 88))(v19, v12);
  if (v23 == *MEMORY[0x277D45580])
  {
    (*(v13 + 96))(v19, v12);
    v24 = (*(v9 + 32))(v11, v19, v8);
    MEMORY[0x26671BB00](v24);
    v25 = sub_261CFF444();
    v26 = sub_261CCBD0C(v25);

    (*(v9 + 8))(v11, v8);
    *(a2 + *(type metadata accessor for SiriUtilities.Day(0) + 20)) = v26;
    type metadata accessor for SiriUtilities.CompletedGroup(0);
LABEL_5:
    swift_storeEnumTagMultiPayload();
    v33 = type metadata accessor for SiriUtilities.Grouping(0);
    swift_storeEnumTagMultiPayload();
    return (*(*(v33 - 8) + 56))(a2, 0, 1, v33);
  }

  if (v23 == *MEMORY[0x277D45570])
  {
    (*(v13 + 96))(v19, v12);
    v27 = *&v19[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE380, &qword_261D11C70) + 48)];
    v29 = v75;
    v28 = v76;
    v30 = v77;
    (*(v76 + 32))(v75, v19, v77);
    v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE330, &qword_261D11B80) + 48);
    (*(v28 + 16))(a2, v29, v30);
    v32 = sub_261CCD5D4(v27, MEMORY[0x277D45568], MEMORY[0x277D45558], MEMORY[0x277D45560]);

    (*(v28 + 8))(v29, v30);
    *(a2 + v31) = v32;
    type metadata accessor for SiriUtilities.CompletedGroup(0);
    goto LABEL_5;
  }

  v35 = a2;
  if (v23 == *MEMORY[0x277D45578] || v23 == *MEMORY[0x277D45590])
  {
    (*(v13 + 96))(v19, v12);
    v36 = *&v19[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE380, &qword_261D11C70) + 48)];
    v38 = v75;
    v37 = v76;
    v39 = v19;
    v40 = v77;
    (*(v76 + 32))(v75, v39, v77);
    v41 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE330, &qword_261D11B80) + 48);
    (*(v37 + 16))(v35, v38, v40);
    v42 = sub_261CCD5D4(v36, MEMORY[0x277D45568], MEMORY[0x277D45558], MEMORY[0x277D45560]);

    (*(v37 + 8))(v38, v40);
    *(v35 + v41) = v42;
    type metadata accessor for SiriUtilities.CompletedGroup(0);
LABEL_11:
    swift_storeEnumTagMultiPayload();
    v50 = type metadata accessor for SiriUtilities.Grouping(0);
    swift_storeEnumTagMultiPayload();
    return (*(*(v50 - 8) + 56))(v35, 0, 1, v50);
  }

  if (v23 == *MEMORY[0x277D45588])
  {
    (*(v13 + 96))(v19, v12);
    v43 = *&v19[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE378, &qword_261D11C68) + 48)];
    v45 = v71;
    v44 = v72;
    v46 = v19;
    v47 = v73;
    (*(v72 + 32))(v71, v46, v73);
    v48 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE330, &qword_261D11B80) + 48);
    MEMORY[0x26671B9E0]();
    v49 = sub_261CCD5D4(v43, MEMORY[0x277D45568], MEMORY[0x277D45558], MEMORY[0x277D45560]);

    (*(v44 + 8))(v45, v47);
    *(v35 + v48) = v49;
    type metadata accessor for SiriUtilities.CompletedGroup(0);
    goto LABEL_11;
  }

  if (qword_27FED9D38 != -1)
  {
    swift_once();
  }

  v51 = sub_261CFF7A4();
  __swift_project_value_buffer(v51, qword_27FEDE2C0);
  v22(v74, v70, v12);
  v52 = sub_261CFF784();
  v53 = sub_261CFFE64();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v75 = v54;
    v77 = swift_slowAlloc();
    v78 = v77;
    *v54 = 136315138;
    LODWORD(v76) = v53;
    v55 = v74;
    v22(v69, v74, v12);
    v56 = sub_261CFFAB4();
    v57 = v55;
    v58 = v56;
    v60 = v59;
    v61 = *(v13 + 8);
    v61(v57, v12);
    v62 = sub_261B879C8(v58, v60, &v78);

    v63 = v75;
    *(v75 + 4) = v62;
    v64 = v61;
    v65 = v63;
    _os_log_impl(&dword_261AE2000, v52, v76, "Unhandled bucket: %s", v63, 0xCu);
    v66 = v77;
    __swift_destroy_boxed_opaque_existential_0(v77);
    MEMORY[0x26671D560](v66, -1, -1);
    v67 = v65;
    v35 = a2;
    MEMORY[0x26671D560](v67, -1, -1);
  }

  else
  {

    v64 = *(v13 + 8);
    v64(v74, v12);
  }

  v68 = type metadata accessor for SiriUtilities.Grouping(0);
  (*(*(v68 - 8) + 56))(v35, 1, 1, v68);
  return (v64)(v19, v12);
}

uint64_t sub_261CCD5D4(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  v31 = a3;
  v32 = a4;
  v30 = a2(0);
  v5 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v7 = &v26 - v6;
  v8 = type metadata accessor for SiriUtilities.Day(0);
  v28 = *(v8 - 8);
  v29 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 16);
  v12 = MEMORY[0x277D84F90];
  if (v11)
  {
    v33 = MEMORY[0x277D84F90];
    sub_261B3A424(0, v11, 0);
    v12 = v33;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v15 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v26 = *(v13 + 56);
    v27 = v14;
    v16 = (v13 - 8);
    do
    {
      v17 = v30;
      v18 = v13;
      v19 = v27(v7, v15, v30);
      v20 = v31(v19);
      v21 = v32(v20);
      v22 = sub_261CCBD0C(v21);

      (*v16)(v7, v17);
      *&v10[*(v29 + 20)] = v22;
      v33 = v12;
      v24 = *(v12 + 16);
      v23 = *(v12 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_261B3A424((v23 > 1), v24 + 1, 1);
        v12 = v33;
      }

      *(v12 + 16) = v24 + 1;
      sub_261CD3840(v10, v12 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v24, type metadata accessor for SiriUtilities.Day);
      v15 += v26;
      --v11;
      v13 = v18;
    }

    while (v11);
  }

  return v12;
}

uint64_t sub_261CCD860@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_261CFF1B4();
  v48 = *(v4 - 8);
  *&v49 = v4;
  MEMORY[0x28223BE20](v4);
  v47 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_261CFD674();
  v44 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v45 = (&v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_261CFD884();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_261CFFA44();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = sub_261CFF184();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v43 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v41 - v13;
  v15 = sub_261CFF1A4();
  v16 = sub_261CCBD0C(v15);
  v17 = v9;

  sub_261CFF194();
  v18 = (*(v10 + 88))(v14, v9);
  if (v18 == *MEMORY[0x277D453E0])
  {
    (*(v10 + 96))(v14, v9);
    v49 = *v14;
    v19 = *(v14 + 2);

    *a2 = v49;
    *(a2 + 16) = v19;
    *(a2 + 24) = v16;
    v20 = type metadata accessor for SiriUtilities.Grouping(0);
    swift_storeEnumTagMultiPayload();
    return (*(*(v20 - 8) + 56))(a2, 0, 1, v20);
  }

  else
  {
    v42 = a2;
    if (v18 == *MEMORY[0x277D453D8])
    {
      v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE358, &qword_261D11BD0) + 48);
      sub_261CFF9B4();
      sub_261CFD874();
      (*(v44 + 104))(v45, *MEMORY[0x277CC9110], v46);
      v23 = v42;
      sub_261CFD6C4();
      *(v23 + v22) = v16;
      v24 = type metadata accessor for SiriUtilities.Grouping(0);
      swift_storeEnumTagMultiPayload();
      return (*(*(v24 - 8) + 56))(v23, 0, 1, v24);
    }

    else
    {

      if (qword_27FED9D38 != -1)
      {
        swift_once();
      }

      v25 = sub_261CFF7A4();
      __swift_project_value_buffer(v25, qword_27FEDE2C0);
      v27 = v47;
      v26 = v48;
      v28 = v49;
      (*(v48 + 16))(v47, a1, v49);
      v29 = sub_261CFF784();
      v30 = sub_261CFFE64();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v46 = v17;
        v50 = v45;
        *v31 = 136315138;
        sub_261CFF194();
        v32 = sub_261CFFAB4();
        v33 = v27;
        v34 = v32;
        v36 = v35;
        (*(v26 + 8))(v33, v49);
        v37 = sub_261B879C8(v34, v36, &v50);

        *(v31 + 4) = v37;
        _os_log_impl(&dword_261AE2000, v29, v30, "Unhandled section type: %s", v31, 0xCu);
        v38 = v45;
        __swift_destroy_boxed_opaque_existential_0(v45);
        v17 = v46;
        MEMORY[0x26671D560](v38, -1, -1);
        MEMORY[0x26671D560](v31, -1, -1);
      }

      else
      {

        (*(v26 + 8))(v27, v28);
      }

      v39 = v42;
      v40 = type metadata accessor for SiriUtilities.Grouping(0);
      (*(*(v40 - 8) + 56))(v39, 1, 1, v40);
      return (*(v10 + 8))(v14, v17);
    }
  }
}

BOOL _s19RemindersAppIntents13SiriUtilitiesO6ListIDO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  if (!*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      sub_261B05020(0, &qword_27FEDA1B0, 0x277D82BB8);
      sub_261CCFD68(v4, 0);
      sub_261CCFD68(v2, 0);
      v6 = sub_261D000F4();
      sub_261CCFEB4(v2, 0);
      v7 = v4;
      v8 = 0;
      goto LABEL_11;
    }

    goto LABEL_6;
  }

  if (v3 != 1)
  {
    if (v5 == 2)
    {
      sub_261CCFEB4(*a1, 2u);
      sub_261CCFEB4(v4, 2u);
      return v4 == v2;
    }

    goto LABEL_9;
  }

  if (v5 != 1)
  {
LABEL_6:
    v9 = v2;
LABEL_9:
    sub_261CCFD68(v4, v5);
    sub_261CCFEB4(v2, v3);
    sub_261CCFEB4(v4, v5);
    return 0;
  }

  sub_261B05020(0, &qword_27FEDA1B0, 0x277D82BB8);
  sub_261CCFD68(v4, 1u);
  sub_261CCFD68(v2, 1u);
  LOBYTE(v6) = sub_261D000F4();
  sub_261CCFEB4(v2, 1u);
  v7 = v4;
  v8 = 1;
LABEL_11:
  sub_261CCFEB4(v7, v8);
  return v6 & 1;
}

uint64_t _s19RemindersAppIntents13SiriUtilitiesO14ScheduledGroupO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v73 = a1;
  v74 = a2;
  v67 = type metadata accessor for SiriUtilities.Day(0);
  MEMORY[0x28223BE20](v67);
  v70 = &v67 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_261CFD7E4();
  v4 = *(v3 - 8);
  v71 = v3;
  v72 = v4;
  v5 = MEMORY[0x28223BE20](v3);
  v69 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v68 = &v67 - v8;
  MEMORY[0x28223BE20](v7);
  v10 = &v67 - v9;
  v11 = type metadata accessor for SiriUtilities.ScheduledGroup(0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v67 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v67 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v67 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = (&v67 - v24);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE398, &qword_261D11C88);
  v27 = MEMORY[0x28223BE20](v26 - 8);
  v29 = &v67 - v28;
  v30 = (&v67 + *(v27 + 56) - v28);
  sub_261CD38A8(v73, &v67 - v28, type metadata accessor for SiriUtilities.ScheduledGroup);
  sub_261CD38A8(v74, v30, type metadata accessor for SiriUtilities.ScheduledGroup);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_261CD38A8(v29, v23, type metadata accessor for SiriUtilities.ScheduledGroup);
      v56 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE330, &qword_261D11B80) + 48);
      v57 = *&v23[v56];
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v58 = v29;
        v59 = *(v30 + v56);
        v61 = v71;
        v60 = v72;
        (*(v72 + 32))(v10, v30, v71);
        v62 = sub_261CFD7B4();
        v63 = *(v60 + 8);
        v63(v23, v61);
        if (v62)
        {
          v42 = sub_261CC63F0(v57, v59);

          v63(v10, v61);
          sub_261CD1888(v58, type metadata accessor for SiriUtilities.ScheduledGroup);
          return v42 & 1;
        }

        v63(v10, v61);

        sub_261CD1888(v58, type metadata accessor for SiriUtilities.ScheduledGroup);
LABEL_27:
        v42 = 0;
        return v42 & 1;
      }

      (*(v72 + 8))(v23, v71);
    }

    else
    {
      sub_261CD38A8(v29, v25, type metadata accessor for SiriUtilities.ScheduledGroup);
      v45 = *v25;
      if (!swift_getEnumCaseMultiPayload())
      {
        v42 = sub_261CC63F0(v45, *v30);

        sub_261CD1888(v29, type metadata accessor for SiriUtilities.ScheduledGroup);
        return v42 & 1;
      }
    }

LABEL_26:
    sub_261AE6A40(v29, &qword_27FEDE398, &qword_261D11C88);
    goto LABEL_27;
  }

  if (EnumCaseMultiPayload != 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v32 = v29;
      sub_261CD38A8(v29, v17, type metadata accessor for SiriUtilities.ScheduledGroup);
      v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE330, &qword_261D11B80) + 48);
      v34 = *&v17[v33];
      v35 = swift_getEnumCaseMultiPayload();
      v37 = v71;
      v36 = v72;
      if (v35 == 3)
      {
        v38 = *(v30 + v33);
        v39 = v68;
        (*(v72 + 32))(v68, v30, v71);
        v40 = sub_261CFD7B4();
        v41 = *(v36 + 8);
        v41(v17, v37);
        if (v40)
        {
          v42 = sub_261CC63F0(v34, v38);

          v43 = v39;
          v44 = v37;
LABEL_17:
          v41(v43, v44);
          sub_261CD1888(v32, type metadata accessor for SiriUtilities.ScheduledGroup);
          return v42 & 1;
        }

        v65 = v39;
        v66 = v37;
LABEL_33:
        v41(v65, v66);

        sub_261CD1888(v32, type metadata accessor for SiriUtilities.ScheduledGroup);
        goto LABEL_27;
      }

      (*(v36 + 8))(v17, v37);
    }

    else
    {
      v32 = v29;
      sub_261CD38A8(v29, v14, type metadata accessor for SiriUtilities.ScheduledGroup);
      v48 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE330, &qword_261D11B80) + 48);
      v49 = *&v14[v48];
      v50 = swift_getEnumCaseMultiPayload();
      v52 = v71;
      v51 = v72;
      if (v50 == 4)
      {
        v53 = *(v30 + v48);
        v54 = v69;
        (*(v72 + 32))(v69, v30, v71);
        v55 = sub_261CFD7B4();
        v41 = *(v51 + 8);
        v41(v14, v52);
        if (v55)
        {
          v42 = sub_261CC63F0(v49, v53);

          v43 = v54;
          v44 = v52;
          goto LABEL_17;
        }

        v65 = v54;
        v66 = v52;
        goto LABEL_33;
      }

      (*(v51 + 8))(v14, v52);
    }

    v29 = v32;
    goto LABEL_26;
  }

  sub_261CD38A8(v29, v20, type metadata accessor for SiriUtilities.ScheduledGroup);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_261CD1888(v20, type metadata accessor for SiriUtilities.Day);
    goto LABEL_26;
  }

  v46 = v70;
  sub_261CD3840(v30, v70, type metadata accessor for SiriUtilities.Day);
  if ((sub_261CFD7B4() & 1) == 0 || (sub_261CC60D4(*&v20[*(v67 + 20)], *(v46 + *(v67 + 20))), (v47 & 1) == 0))
  {
    sub_261CD1888(v46, type metadata accessor for SiriUtilities.Day);
    sub_261CD1888(v20, type metadata accessor for SiriUtilities.Day);
    sub_261CD1888(v29, type metadata accessor for SiriUtilities.ScheduledGroup);
    goto LABEL_27;
  }

  sub_261CD1888(v46, type metadata accessor for SiriUtilities.Day);
  sub_261CD1888(v20, type metadata accessor for SiriUtilities.Day);
  sub_261CD1888(v29, type metadata accessor for SiriUtilities.ScheduledGroup);
  v42 = 1;
  return v42 & 1;
}

uint64_t _s19RemindersAppIntents13SiriUtilitiesO14CompletedGroupO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_261CFD7E4();
  v5 = *(v4 - 8);
  v84 = v4;
  v85 = v5;
  v6 = MEMORY[0x28223BE20](v4);
  v80 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v79 = &v77 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v78 = &v77 - v11;
  MEMORY[0x28223BE20](v10);
  v83 = &v77 - v12;
  v13 = type metadata accessor for SiriUtilities.Day(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for SiriUtilities.CompletedGroup(0);
  v17 = MEMORY[0x28223BE20](v16);
  v82 = &v77 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v81 = &v77 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v77 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v77 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = &v77 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE390, &qword_261D11C80);
  v30 = MEMORY[0x28223BE20](v29 - 8);
  v32 = &v77 + *(v30 + 56) - v31;
  v33 = a1;
  v34 = &v77 - v31;
  sub_261CD38A8(v33, &v77 - v31, type metadata accessor for SiriUtilities.CompletedGroup);
  v35 = a2;
  v36 = v32;
  sub_261CD38A8(v35, v32, type metadata accessor for SiriUtilities.CompletedGroup);
  v86 = v34;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v49 = v83;
    if (EnumCaseMultiPayload)
    {
      sub_261CD38A8(v86, v26, type metadata accessor for SiriUtilities.CompletedGroup);
      v66 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE330, &qword_261D11B80) + 48);
      v67 = *&v26[v66];
      if (swift_getEnumCaseMultiPayload() != 1)
      {

        v73 = v84;
        v71 = *(v85 + 8);
        v72 = v26;
        goto LABEL_27;
      }

      v68 = *&v32[v66];
      v53 = v84;
      v69 = v85;
      (*(v85 + 32))(v49, v36, v84);
      v70 = sub_261CFD7B4();
      v58 = *(v69 + 8);
      v58(v26, v53);
      if (v70)
      {
        v48 = sub_261CC63F0(v67, v68);

        v59 = v49;
        goto LABEL_20;
      }

      v75 = v49;
LABEL_37:
      v58(v75, v53);
      goto LABEL_38;
    }

    sub_261CD38A8(v86, v28, type metadata accessor for SiriUtilities.CompletedGroup);
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_261CD3840(v32, v15, type metadata accessor for SiriUtilities.Day);
      if (sub_261CFD7B4())
      {
        sub_261CC60D4(*&v28[*(v13 + 20)], *&v15[*(v13 + 20)]);
        if (v74)
        {
          sub_261CD1888(v15, type metadata accessor for SiriUtilities.Day);
          sub_261CD1888(v28, type metadata accessor for SiriUtilities.Day);
          sub_261CD1888(v86, type metadata accessor for SiriUtilities.CompletedGroup);
          v48 = 1;
          return v48 & 1;
        }
      }

      sub_261CD1888(v15, type metadata accessor for SiriUtilities.Day);
      sub_261CD1888(v28, type metadata accessor for SiriUtilities.Day);
      goto LABEL_40;
    }

    sub_261CD1888(v28, type metadata accessor for SiriUtilities.Day);
LABEL_28:
    sub_261AE6A40(v86, &qword_27FEDE390, &qword_261D11C80);
LABEL_41:
    v48 = 0;
    return v48 & 1;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_261CD38A8(v86, v23, type metadata accessor for SiriUtilities.CompletedGroup);
    v50 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE330, &qword_261D11B80) + 48);
    v51 = *&v23[v50];
    v52 = swift_getEnumCaseMultiPayload();
    v53 = v84;
    if (v52 == 2)
    {
      v54 = *&v32[v50];
      v55 = v85;
      v56 = v78;
      (*(v85 + 32))(v78, v36, v84);
      v57 = sub_261CFD7B4();
      v58 = *(v55 + 8);
      v58(v23, v53);
      if (v57)
      {
        v48 = sub_261CC63F0(v51, v54);

        v59 = v56;
LABEL_20:
        v58(v59, v53);
        goto LABEL_21;
      }

      v75 = v56;
      goto LABEL_37;
    }

    (*(v85 + 8))(v23, v53);
    goto LABEL_28;
  }

  v38 = v84;
  v39 = v32;
  if (EnumCaseMultiPayload != 3)
  {
    v60 = v82;
    sub_261CD38A8(v86, v82, type metadata accessor for SiriUtilities.CompletedGroup);
    v61 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE330, &qword_261D11B80) + 48);
    v62 = *(v60 + v61);
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      v63 = *&v32[v61];
      v64 = v85;
      v45 = v80;
      (*(v85 + 32))(v80, v39, v38);
      v65 = sub_261CFD7B4();
      v47 = *(v64 + 8);
      v47(v60, v38);
      if (v65)
      {
        v48 = sub_261CC63F0(v62, v63);

        goto LABEL_16;
      }

      v47(v45, v38);

      goto LABEL_39;
    }

    v71 = *(v85 + 8);
    v72 = v60;
    goto LABEL_25;
  }

  v40 = v81;
  sub_261CD38A8(v86, v81, type metadata accessor for SiriUtilities.CompletedGroup);
  v41 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE330, &qword_261D11B80) + 48);
  v42 = *(v40 + v41);
  if (swift_getEnumCaseMultiPayload() != 3)
  {

    v71 = *(v85 + 8);
    v72 = v40;
LABEL_25:
    v73 = v38;
LABEL_27:
    v71(v72, v73);
    goto LABEL_28;
  }

  v43 = *&v39[v41];
  v44 = v85;
  v45 = v79;
  (*(v85 + 32))(v79, v39, v38);
  v46 = sub_261CFD7B4();
  v47 = *(v44 + 8);
  v47(v40, v38);
  if ((v46 & 1) == 0)
  {
    v47(v45, v38);
LABEL_38:

LABEL_39:

LABEL_40:
    sub_261CD1888(v86, type metadata accessor for SiriUtilities.CompletedGroup);
    goto LABEL_41;
  }

  v48 = sub_261CC63F0(v42, v43);

LABEL_16:

  v47(v45, v38);
LABEL_21:
  sub_261CD1888(v86, type metadata accessor for SiriUtilities.CompletedGroup);
  return v48 & 1;
}

uint64_t _s19RemindersAppIntents13SiriUtilitiesO8GroupingO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v94 = a1;
  v3 = type metadata accessor for SiriUtilities.CompletedGroup(0);
  MEMORY[0x28223BE20](v3 - 8);
  v88 = &v85 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SiriUtilities.ScheduledGroup(0);
  MEMORY[0x28223BE20](v5 - 8);
  v86 = &v85 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_261CFD6A4();
  v92 = *(v7 - 8);
  v93 = v7;
  MEMORY[0x28223BE20](v7);
  v87 = &v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SiriUtilities.Grouping(0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = (&v85 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v85 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v85 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v91 = &v85 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v90 = &v85 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v85 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v89 = &v85 - v27;
  MEMORY[0x28223BE20](v26);
  v29 = (&v85 - v28);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE388, &qword_261D11C78);
  v31 = MEMORY[0x28223BE20](v30 - 8);
  v33 = &v85 - v32;
  v34 = &v85 + *(v31 + 56) - v32;
  sub_261CD38A8(v94, &v85 - v32, type metadata accessor for SiriUtilities.Grouping);
  v35 = a2;
  v36 = v34;
  sub_261CD38A8(v35, v34, type metadata accessor for SiriUtilities.Grouping);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload != 6)
      {
        sub_261CD38A8(v33, v12, type metadata accessor for SiriUtilities.Grouping);
        v46 = *v12;
        if (swift_getEnumCaseMultiPayload() != 7)
        {
          goto LABEL_31;
        }

        v47 = *v34;
LABEL_29:
        sub_261CC60D4(v46, v47);
        v71 = v33;
        v45 = v72;

        goto LABEL_30;
      }

      sub_261CD38A8(v33, v15, type metadata accessor for SiriUtilities.Grouping);
      v48 = *v15;
      v49 = v15[8];
      v50 = *(v15 + 2);
      if (swift_getEnumCaseMultiPayload() == 6)
      {
        v51 = *v34;
        v52 = v34[8];
        v53 = *(v34 + 2);
        v97 = v48;
        v98 = v49;
        v95 = v51;
        v96 = v52;
        if (_s19RemindersAppIntents13SiriUtilitiesO6ListIDO2eeoiySbAE_AEtFZ_0(&v97, &v95))
        {
          sub_261CC60D4(v50, v53);
LABEL_24:
          v68 = v33;
          v45 = v54;
          sub_261CCFEB4(v51, v52);
          sub_261CCFEB4(v48, v49);

          sub_261CD1888(v68, type metadata accessor for SiriUtilities.Grouping);
          return v45 & 1;
        }

LABEL_35:

        sub_261CCFEB4(v51, v52);
        sub_261CCFEB4(v48, v49);
        goto LABEL_36;
      }
    }

    else
    {
      if (EnumCaseMultiPayload == 4)
      {
        v42 = v91;
        sub_261CD38A8(v33, v91, type metadata accessor for SiriUtilities.Grouping);
        if (swift_getEnumCaseMultiPayload() == 4)
        {
          v43 = v88;
          sub_261CD3840(v34, v88, type metadata accessor for SiriUtilities.CompletedGroup);
          v44 = v33;
          v45 = _s19RemindersAppIntents13SiriUtilitiesO14CompletedGroupO2eeoiySbAE_AEtFZ_0(v42, v43);
          sub_261CD1888(v43, type metadata accessor for SiriUtilities.CompletedGroup);
          sub_261CD1888(v42, type metadata accessor for SiriUtilities.CompletedGroup);
          sub_261CD1888(v44, type metadata accessor for SiriUtilities.Grouping);
          return v45 & 1;
        }

        v73 = type metadata accessor for SiriUtilities.CompletedGroup;
        v74 = v42;
        goto LABEL_38;
      }

      sub_261CD38A8(v33, v18, type metadata accessor for SiriUtilities.Grouping);
      v48 = *v18;
      v49 = v18[8];
      v66 = *(v18 + 2);
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        v51 = *v34;
        v52 = v34[8];
        v67 = *(v34 + 2);
        v97 = v48;
        v98 = v49;
        v95 = v51;
        v96 = v52;
        if (_s19RemindersAppIntents13SiriUtilitiesO6ListIDO2eeoiySbAE_AEtFZ_0(&v97, &v95))
        {
          v54 = sub_261CC6238(v66, v67);
          goto LABEL_24;
        }

        goto LABEL_35;
      }
    }

    sub_261CCFEB4(v48, v49);
    goto LABEL_39;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_261CD38A8(v33, v25, type metadata accessor for SiriUtilities.Grouping);
      v46 = *(v25 + 1);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_31;
      }

      v47 = *(v34 + 1);
      if (*v25 != *v34)
      {

LABEL_36:
        sub_261CD1888(v33, type metadata accessor for SiriUtilities.Grouping);
LABEL_40:
        v45 = 0;
        return v45 & 1;
      }

      goto LABEL_29;
    }

    v69 = v90;
    sub_261CD38A8(v33, v90, type metadata accessor for SiriUtilities.Grouping);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v70 = v86;
      sub_261CD3840(v34, v86, type metadata accessor for SiriUtilities.ScheduledGroup);
      v71 = v33;
      v45 = _s19RemindersAppIntents13SiriUtilitiesO14ScheduledGroupO2eeoiySbAE_AEtFZ_0(v69, v70);
      sub_261CD1888(v70, type metadata accessor for SiriUtilities.ScheduledGroup);
      sub_261CD1888(v69, type metadata accessor for SiriUtilities.ScheduledGroup);
LABEL_30:
      sub_261CD1888(v71, type metadata accessor for SiriUtilities.Grouping);
      return v45 & 1;
    }

    v73 = type metadata accessor for SiriUtilities.ScheduledGroup;
    v74 = v69;
LABEL_38:
    sub_261CD1888(v74, v73);
    goto LABEL_39;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_261CD38A8(v33, v29, type metadata accessor for SiriUtilities.Grouping);
    v39 = *v29;
    v38 = v29[1];
    v41 = v29[2];
    v40 = v29[3];
    if (swift_getEnumCaseMultiPayload())
    {

LABEL_31:

LABEL_39:
      sub_261AE6A40(v33, &qword_27FEDE388, &qword_261D11C78);
      goto LABEL_40;
    }

    v76 = v33;
    v77 = v36;
    v79 = *v36;
    v78 = *(v36 + 1);
    v80 = *(v36 + 2);
    v81 = *(v77 + 3);
    sub_261B05020(0, &qword_27FEDA1B0, 0x277D82BB8);
    v82 = sub_261D000F4();

    if (v82)
    {
      if (v38 == v78 && v41 == v80)
      {

LABEL_50:
        sub_261CC60D4(v40, v81);
        v45 = v84;

        sub_261CD1888(v76, type metadata accessor for SiriUtilities.Grouping);
        return v45 & 1;
      }

      v83 = sub_261D00614();

      if (v83)
      {
        goto LABEL_50;
      }
    }

    else
    {
    }

    sub_261CD1888(v76, type metadata accessor for SiriUtilities.Grouping);
    goto LABEL_40;
  }

  v55 = v33;
  v56 = v89;
  sub_261CD38A8(v33, v89, type metadata accessor for SiriUtilities.Grouping);
  v57 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE358, &qword_261D11BD0) + 48);
  v58 = *(v56 + v57);
  if (swift_getEnumCaseMultiPayload() != 1)
  {

    (*(v92 + 8))(v56, v93);
    v33 = v55;
    goto LABEL_39;
  }

  v59 = *&v34[v57];
  v61 = v92;
  v60 = v93;
  v62 = v87;
  (*(v92 + 32))(v87, v34, v93);
  v63 = MEMORY[0x266719D60](v56, v62);
  v64 = *(v61 + 8);
  v64(v56, v60);
  if ((v63 & 1) == 0)
  {
    v64(v62, v60);

    sub_261CD1888(v55, type metadata accessor for SiriUtilities.Grouping);
    goto LABEL_40;
  }

  sub_261CC60D4(v58, v59);
  v45 = v65;

  v64(v62, v60);
  sub_261CD1888(v55, type metadata accessor for SiriUtilities.Grouping);
  return v45 & 1;
}

uint64_t _s19RemindersAppIntents13SiriUtilitiesO12ListContentsV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t a2)
{
  v3 = a1[2];
  v2 = a1[3];
  v4 = *a2;
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  v7 = *(a1 + 8);
  v8 = *(a2 + 8);
  v12 = *a1;
  v13 = v7;
  v10 = v4;
  v11 = v8;
  sub_261CCFD68(v12, v7);
  sub_261CCFD68(v4, v8);
  LOBYTE(v4) = _s19RemindersAppIntents13SiriUtilitiesO6ListIDO2eeoiySbAE_AEtFZ_0(&v12, &v10);
  sub_261CCFEB4(v10, v11);
  sub_261CCFEB4(v12, v13);
  if ((v4 & 1) == 0 || (sub_261CC6238(v3, v6) & 1) == 0)
  {
    return 0;
  }

  return sub_261CC65F8(v2, v5);
}

uint64_t _s19RemindersAppIntents13SiriUtilitiesO12ReminderLiteV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  sub_261B05020(0, &qword_27FEDA1B0, 0x277D82BB8);
  if (sub_261D000F4())
  {
    if (v2)
    {
      if (v3)
      {
        sub_261CFD104();
        sub_261CC60D4(v2, v3);
        v5 = v4;

        if (v5)
        {
          return 1;
        }
      }
    }

    else if (!v3)
    {
      return 1;
    }
  }

  return 0;
}

id sub_261CCFD68(id result, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
    return result;
  }

  return result;
}

unint64_t sub_261CCFDA0()
{
  result = qword_27FEDE308;
  if (!qword_27FEDE308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDE308);
  }

  return result;
}

unint64_t sub_261CCFDF8()
{
  result = qword_27FEDE310;
  if (!qword_27FEDE310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDE310);
  }

  return result;
}

unint64_t sub_261CCFE50()
{
  result = qword_27FEDE318;
  if (!qword_27FEDE318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDE318);
  }

  return result;
}

void sub_261CCFEB4(id a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
  }
}

uint64_t _s6ListIDOwca(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  sub_261CCFD68(*a2, v4);
  v5 = *a1;
  *a1 = v3;
  v6 = *(a1 + 8);
  *(a1 + 8) = v4;
  sub_261CCFEB4(v5, v6);
  return a1;
}

uint64_t _s6ListIDOwta(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v4 = *a1;
  *a1 = *a2;
  v5 = *(a1 + 8);
  *(a1 + 8) = v3;
  sub_261CCFEB4(v4, v5);
  return a1;
}

uint64_t _s12ReminderLiteVwxx(id *a1)
{
}

uint64_t _s12ReminderLiteVwca(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  *(a1 + 8) = *(a2 + 8);
  sub_261CFD104();

  return a1;
}

id *_s12ReminderLiteVwta(id *a1, _OWORD *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t _s14TodayGroupTypeOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s14TodayGroupTypeOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t *_s3DayVwCP(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v8 = *a2;
    *a1 = *a2;
    a1 = (v8 + ((v5 + 16) & ~v5));
    sub_261CFCDA4();
  }

  else
  {
    v7 = sub_261CFD7E4();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
    sub_261CFD104();
  }

  return a1;
}

uint64_t _s3DayVwxx(uint64_t a1, uint64_t a2)
{
  v3 = sub_261CFD7E4();
  (*(*(v3 - 8) + 8))(a1, v3);
}

uint64_t _s3DayVwcp(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_261CFD7E4();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  sub_261CFD104();
  return a1;
}

uint64_t _s3DayVwca(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_261CFD7E4();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  sub_261CFD104();

  return a1;
}

uint64_t _s3DayVwtk(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_261CFD7E4();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

uint64_t _s3DayVwta(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_261CFD7E4();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));

  return a1;
}

uint64_t sub_261CD0538(uint64_t a1)
{
  result = sub_261CFD7E4();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *_s14ScheduledGroupOwCP(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v9 = *a2;
    *a1 = *a2;
    a1 = (v9 + ((v5 + 16) & ~v5));
    sub_261CFCDA4();
    return a1;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      *a1 = *a2;
      goto LABEL_5;
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v10 = sub_261CFD7E4();
    (*(*(v10 - 8) + 16))(a1, a2, v10);
    v11 = type metadata accessor for SiriUtilities.Day(0);
    *(a1 + *(v11 + 20)) = *(a2 + *(v11 + 20));
    goto LABEL_5;
  }

  v7 = sub_261CFD7E4();
  (*(*(v7 - 8) + 16))(a1, a2, v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE330, &qword_261D11B80);
  *(a1 + *(v8 + 48)) = *(a2 + *(v8 + 48));
LABEL_5:
  sub_261CFD104();
  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t _s14ScheduledGroupOwxx(uint64_t *a1, uint64_t a2)
{
  result = swift_getEnumCaseMultiPayload();
  if (result <= 1)
  {
    if (!result)
    {
      goto LABEL_10;
    }

    if (result != 1)
    {
      return result;
    }
  }

  else
  {
    if (result == 2)
    {
      v5 = sub_261CFD7E4();
      (*(*(v5 - 8) + 8))(a1, v5);
      type metadata accessor for SiriUtilities.Day(0);
      goto LABEL_10;
    }

    if (result != 3 && result != 4)
    {
      return result;
    }
  }

  v4 = sub_261CFD7E4();
  (*(*(v4 - 8) + 8))(a1, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE330, &qword_261D11B80);
LABEL_10:
}

uint64_t *_s14ScheduledGroupOwcp(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      *a1 = *a2;
      goto LABEL_4;
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v8 = sub_261CFD7E4();
    (*(*(v8 - 8) + 16))(a1, a2, v8);
    v9 = type metadata accessor for SiriUtilities.Day(0);
    *(a1 + *(v9 + 20)) = *(a2 + *(v9 + 20));
    goto LABEL_4;
  }

  v6 = sub_261CFD7E4();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE330, &qword_261D11B80);
  *(a1 + *(v7 + 48)) = *(a2 + *(v7 + 48));
LABEL_4:
  sub_261CFD104();
  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t *_s14ScheduledGroupOwca(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    sub_261CD1888(a1, type metadata accessor for SiriUtilities.ScheduledGroup);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 1)
    {
      if (!EnumCaseMultiPayload)
      {
        *a1 = *a2;
        goto LABEL_5;
      }
    }

    else if (EnumCaseMultiPayload == 2)
    {
      v8 = sub_261CFD7E4();
      (*(*(v8 - 8) + 16))(a1, a2, v8);
      v9 = type metadata accessor for SiriUtilities.Day(0);
      *(a1 + *(v9 + 20)) = *(a2 + *(v9 + 20));
      goto LABEL_5;
    }

    v6 = sub_261CFD7E4();
    (*(*(v6 - 8) + 16))(a1, a2, v6);
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE330, &qword_261D11B80);
    *(a1 + *(v7 + 48)) = *(a2 + *(v7 + 48));
LABEL_5:
    sub_261CFD104();
    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

char *_s14ScheduledGroupOwtk(char *a1, char *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload != 3 && EnumCaseMultiPayload != 4)
    {
      goto LABEL_7;
    }

LABEL_10:
    v11 = sub_261CFD7E4();
    (*(*(v11 - 8) + 32))(a1, a2, v11);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE330, &qword_261D11B80);
    *&a1[*(v12 + 48)] = *&a2[*(v12 + 48)];
    goto LABEL_11;
  }

  if (EnumCaseMultiPayload == 1)
  {
    goto LABEL_10;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v7 = sub_261CFD7E4();
    (*(*(v7 - 8) + 32))(a1, a2, v7);
    v8 = type metadata accessor for SiriUtilities.Day(0);
    *&a1[*(v8 + 20)] = *&a2[*(v8 + 20)];
LABEL_11:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

LABEL_7:
  v9 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v9);
}

char *_s14ScheduledGroupOwta(char *a1, char *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_261CD1888(a1, type metadata accessor for SiriUtilities.ScheduledGroup);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload != 3 && EnumCaseMultiPayload != 4)
    {
      goto LABEL_8;
    }

LABEL_11:
    v11 = sub_261CFD7E4();
    (*(*(v11 - 8) + 32))(a1, a2, v11);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE330, &qword_261D11B80);
    *&a1[*(v12 + 48)] = *&a2[*(v12 + 48)];
    goto LABEL_12;
  }

  if (EnumCaseMultiPayload == 1)
  {
    goto LABEL_11;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v7 = sub_261CFD7E4();
    (*(*(v7 - 8) + 32))(a1, a2, v7);
    v8 = type metadata accessor for SiriUtilities.Day(0);
    *&a1[*(v8 + 20)] = *&a2[*(v8 + 20)];
LABEL_12:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

LABEL_8:
  v9 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v9);
}

uint64_t sub_261CD12A8(uint64_t a1)
{
  v7 = MEMORY[0x277D833F0] + 64;
  result = sub_261CFD7E4();
  if (v2 <= 0x3F)
  {
    swift_getTupleTypeLayout2();
    v8 = &v6;
    result = type metadata accessor for SiriUtilities.Day(319);
    if (v3 <= 0x3F)
    {
      v9 = *(result - 8) + 64;
      swift_getTupleTypeLayout2();
      v10 = &v5;
      swift_getTupleTypeLayout2();
      v11 = &v4;
      swift_initEnumMetadataMultiPayload();
      return 0;
    }
  }

  return result;
}

uint64_t *_s14CompletedGroupOwCP(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v9 = *a2;
    *a1 = *a2;
    a1 = (v9 + ((v5 + 16) & ~v5));
    sub_261CFCDA4();
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v7 = sub_261CFD7E4();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE330, &qword_261D11B80);
        *(a1 + *(v11 + 48)) = *(a2 + *(v11 + 48));
      }

      else
      {
        v10 = type metadata accessor for SiriUtilities.Day(0);
        *(a1 + *(v10 + 20)) = *(a2 + *(v10 + 20));
      }

      sub_261CFD104();
    }

    else
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE330, &qword_261D11B80);
      *(a1 + *(v8 + 48)) = *(a2 + *(v8 + 48));
      sub_261CFD104();
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t _s14CompletedGroupOwxx(uint64_t a1, uint64_t a2)
{
  result = swift_getEnumCaseMultiPayload();
  if (result <= 1)
  {
    if (!result)
    {
      v5 = sub_261CFD7E4();
      (*(*(v5 - 8) + 8))(a1, v5);
      type metadata accessor for SiriUtilities.Day(0);
      goto LABEL_6;
    }

    if (result != 1)
    {
      return result;
    }
  }

  else if (result != 2 && result != 3 && result != 4)
  {
    return result;
  }

  v4 = sub_261CFD7E4();
  (*(*(v4 - 8) + 8))(a1, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE330, &qword_261D11B80);
LABEL_6:
}

uint64_t _s14CompletedGroupOwcp(uint64_t a1, uint64_t a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v6 = sub_261CFD7E4();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  if (EnumCaseMultiPayload)
  {
    v7 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE330, &qword_261D11B80) + 48);
  }

  else
  {
    v7 = (type metadata accessor for SiriUtilities.Day(0) + 20);
  }

  *(a1 + *v7) = *(a2 + *v7);
  sub_261CFD104();
  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t _s14CompletedGroupOwca(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    sub_261CD1888(a1, type metadata accessor for SiriUtilities.CompletedGroup);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v6 = sub_261CFD7E4();
    (*(*(v6 - 8) + 16))(a1, a2, v6);
    if (EnumCaseMultiPayload)
    {
      v7 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE330, &qword_261D11B80) + 48);
    }

    else
    {
      v7 = (type metadata accessor for SiriUtilities.Day(0) + 20);
    }

    *(a1 + *v7) = *(a2 + *v7);
    sub_261CFD104();
    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t sub_261CD1888(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s14CompletedGroupOwtk(uint64_t a1, uint64_t a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v6 = sub_261CFD7E4();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  if (EnumCaseMultiPayload)
  {
    v7 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE330, &qword_261D11B80) + 48);
  }

  else
  {
    v7 = (type metadata accessor for SiriUtilities.Day(0) + 20);
  }

  *(a1 + *v7) = *(a2 + *v7);
  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t _s14CompletedGroupOwta(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    sub_261CD1888(a1, type metadata accessor for SiriUtilities.CompletedGroup);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v6 = sub_261CFD7E4();
    (*(*(v6 - 8) + 32))(a1, a2, v6);
    if (EnumCaseMultiPayload)
    {
      v7 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE330, &qword_261D11B80) + 48);
    }

    else
    {
      v7 = (type metadata accessor for SiriUtilities.Day(0) + 20);
    }

    *(a1 + *v7) = *(a2 + *v7);
    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t sub_261CD1AEC(uint64_t a1)
{
  result = type metadata accessor for SiriUtilities.Day(319);
  if (v2 <= 0x3F)
  {
    v8 = *(result - 8) + 64;
    result = sub_261CFD7E4();
    if (v3 <= 0x3F)
    {
      swift_getTupleTypeLayout2();
      v9 = &v7;
      swift_getTupleTypeLayout2();
      v10 = &v6;
      swift_getTupleTypeLayout2();
      v11 = &v5;
      swift_getTupleTypeLayout2();
      v12 = &v4;
      swift_initEnumMetadataMultiPayload();
      return 0;
    }
  }

  return result;
}

char *_s8GroupingOwCP(char *a1, char **a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) == 0)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 3)
    {
      if (EnumCaseMultiPayload <= 5)
      {
        if (EnumCaseMultiPayload == 4)
        {
          type metadata accessor for SiriUtilities.CompletedGroup(0);
          v13 = swift_getEnumCaseMultiPayload();
          v14 = sub_261CFD7E4();
          (*(*(v14 - 8) + 16))(a1, a2, v14);
          if (v13)
          {
            v24 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE330, &qword_261D11B80) + 48);
          }

          else
          {
            v24 = (type metadata accessor for SiriUtilities.Day(0) + 20);
          }

          *&a1[*v24] = *(a2 + *v24);
          sub_261CFD104();
          swift_storeEnumTagMultiPayload();
        }

        else
        {
          v19 = *a2;
          v20 = *(a2 + 8);
          sub_261CCFD68(*a2, v20);
          *a1 = v19;
          a1[8] = v20;
          *(a1 + 2) = a2[2];
          sub_261CFD104();
        }

        goto LABEL_29;
      }

      if (EnumCaseMultiPayload == 6)
      {
        v15 = *a2;
        v16 = *(a2 + 8);
        sub_261CCFD68(*a2, v16);
        *a1 = v15;
        a1[8] = v16;
        *(a1 + 2) = a2[2];
      }

      else
      {
        *a1 = *a2;
      }

      goto LABEL_6;
    }

    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        v17 = sub_261CFD6A4();
        (*(*(v17 - 8) + 16))(a1, a2, v17);
        v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE358, &qword_261D11BD0);
        *&a1[*(v18 + 48)] = *(a2 + *(v18 + 48));
      }

      else
      {
        v7 = *a2;
        v8 = a2[1];
        *a1 = *a2;
        *(a1 + 1) = v8;
        v10 = a2[2];
        v9 = a2[3];
        *(a1 + 2) = v10;
        *(a1 + 3) = v9;
        v11 = v7;
        sub_261CFD104();
      }

LABEL_6:
      sub_261CFD104();
LABEL_29:
      swift_storeEnumTagMultiPayload();
      return a1;
    }

    if (EnumCaseMultiPayload == 2)
    {
      *a1 = *a2;
      *(a1 + 1) = a2[1];
      sub_261CFD104();
      goto LABEL_29;
    }

    type metadata accessor for SiriUtilities.ScheduledGroup(0);
    v21 = swift_getEnumCaseMultiPayload();
    if (v21 <= 1)
    {
      if (!v21)
      {
        *a1 = *a2;
        goto LABEL_21;
      }
    }

    else if (v21 == 2)
    {
      v25 = sub_261CFD7E4();
      (*(*(v25 - 8) + 16))(a1, a2, v25);
      v26 = type metadata accessor for SiriUtilities.Day(0);
      *&a1[*(v26 + 20)] = *(a2 + *(v26 + 20));
      goto LABEL_21;
    }

    v22 = sub_261CFD7E4();
    (*(*(v22 - 8) + 16))(a1, a2, v22);
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE330, &qword_261D11B80);
    *&a1[*(v23 + 48)] = *(a2 + *(v23 + 48));
LABEL_21:
    sub_261CFD104();
    swift_storeEnumTagMultiPayload();
    goto LABEL_29;
  }

  v12 = *a2;
  *a1 = *a2;
  a1 = (v12 + ((v5 + 16) & ~v5));
  sub_261CFCDA4();
  return a1;
}

uint64_t _s8GroupingOwxx(uint64_t a1, uint64_t a2)
{
  result = swift_getEnumCaseMultiPayload();
  if (result > 3)
  {
    if (result > 5)
    {
      if (result != 6)
      {
        if (result != 7)
        {
          return result;
        }

        goto LABEL_30;
      }
    }

    else if (result == 4)
    {
      type metadata accessor for SiriUtilities.CompletedGroup(0);
      result = swift_getEnumCaseMultiPayload();
      if (result > 1)
      {
        if (result != 2)
        {
LABEL_20:
          if (result != 3 && result != 4)
          {
            return result;
          }
        }

LABEL_22:
        v7 = sub_261CFD7E4();
        (*(*(v7 - 8) + 8))(a1, v7);
        v5 = &qword_27FEDE330;
        v6 = &qword_261D11B80;
LABEL_23:
        __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
        goto LABEL_30;
      }

      if (!result)
      {
LABEL_26:
        v8 = sub_261CFD7E4();
        (*(*(v8 - 8) + 8))(a1, v8);
        type metadata accessor for SiriUtilities.Day(0);
        goto LABEL_30;
      }

LABEL_28:
      if (result != 1)
      {
        return result;
      }

      goto LABEL_22;
    }

    sub_261CCFEB4(*a1, *(a1 + 8));
    goto LABEL_30;
  }

  if (result > 1)
  {
    if (result == 2)
    {
      goto LABEL_30;
    }

    type metadata accessor for SiriUtilities.ScheduledGroup(0);
    result = swift_getEnumCaseMultiPayload();
    if (result > 1)
    {
      if (result == 2)
      {
        goto LABEL_26;
      }

      goto LABEL_20;
    }

    if (!result)
    {
      goto LABEL_30;
    }

    goto LABEL_28;
  }

  if (result)
  {
    if (result != 1)
    {
      return result;
    }

    v4 = sub_261CFD6A4();
    (*(*(v4 - 8) + 8))(a1, v4);
    v5 = &qword_27FEDE358;
    v6 = &qword_261D11BD0;
    goto LABEL_23;
  }

LABEL_30:
}

void *_s8GroupingOwcp(void *a1, uint64_t a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        v15 = sub_261CFD6A4();
        (*(*(v15 - 8) + 16))(a1, a2, v15);
        v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE358, &qword_261D11BD0);
        *(a1 + *(v16 + 48)) = *(a2 + *(v16 + 48));
      }

      else
      {
        v6 = *a2;
        v7 = *(a2 + 8);
        *a1 = *a2;
        a1[1] = v7;
        v9 = *(a2 + 16);
        v8 = *(a2 + 24);
        a1[2] = v9;
        a1[3] = v8;
        v10 = v6;
        sub_261CFD104();
      }

LABEL_5:
      sub_261CFD104();
      goto LABEL_27;
    }

    if (EnumCaseMultiPayload == 2)
    {
      *a1 = *a2;
      a1[1] = *(a2 + 8);
      sub_261CFD104();
      goto LABEL_27;
    }

    type metadata accessor for SiriUtilities.ScheduledGroup(0);
    v19 = swift_getEnumCaseMultiPayload();
    if (v19 <= 1)
    {
      if (!v19)
      {
        *a1 = *a2;
        goto LABEL_19;
      }
    }

    else if (v19 == 2)
    {
      v23 = sub_261CFD7E4();
      (*(*(v23 - 8) + 16))(a1, a2, v23);
      v24 = type metadata accessor for SiriUtilities.Day(0);
      *(a1 + *(v24 + 20)) = *(a2 + *(v24 + 20));
      goto LABEL_19;
    }

    v20 = sub_261CFD7E4();
    (*(*(v20 - 8) + 16))(a1, a2, v20);
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE330, &qword_261D11B80);
    *(a1 + *(v21 + 48)) = *(a2 + *(v21 + 48));
LABEL_19:
    sub_261CFD104();
    swift_storeEnumTagMultiPayload();
    goto LABEL_27;
  }

  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload == 6)
    {
      v13 = *a2;
      v14 = *(a2 + 8);
      sub_261CCFD68(*a2, v14);
      *a1 = v13;
      *(a1 + 8) = v14;
      a1[2] = *(a2 + 16);
    }

    else
    {
      *a1 = *a2;
    }

    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 4)
  {
    type metadata accessor for SiriUtilities.CompletedGroup(0);
    v11 = swift_getEnumCaseMultiPayload();
    v12 = sub_261CFD7E4();
    (*(*(v12 - 8) + 16))(a1, a2, v12);
    if (v11)
    {
      v22 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE330, &qword_261D11B80) + 48);
    }

    else
    {
      v22 = (type metadata accessor for SiriUtilities.Day(0) + 20);
    }

    *(a1 + *v22) = *(a2 + *v22);
    sub_261CFD104();
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v17 = *a2;
    v18 = *(a2 + 8);
    sub_261CCFD68(*a2, v18);
    *a1 = v17;
    *(a1 + 8) = v18;
    a1[2] = *(a2 + 16);
    sub_261CFD104();
  }

LABEL_27:
  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t _s8GroupingOwca(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    sub_261CD1888(a1, type metadata accessor for SiriUtilities.Grouping);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 3)
    {
      if (EnumCaseMultiPayload <= 5)
      {
        if (EnumCaseMultiPayload == 4)
        {
          type metadata accessor for SiriUtilities.CompletedGroup(0);
          v8 = swift_getEnumCaseMultiPayload();
          v9 = sub_261CFD7E4();
          (*(*(v9 - 8) + 16))(a1, a2, v9);
          if (v8)
          {
            v19 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE330, &qword_261D11B80) + 48);
          }

          else
          {
            v19 = (type metadata accessor for SiriUtilities.Day(0) + 20);
          }

          *(a1 + *v19) = *(a2 + *v19);
          sub_261CFD104();
          swift_storeEnumTagMultiPayload();
        }

        else
        {
          v14 = *a2;
          v15 = *(a2 + 8);
          sub_261CCFD68(*a2, v15);
          *a1 = v14;
          *(a1 + 8) = v15;
          *(a1 + 16) = *(a2 + 16);
          sub_261CFD104();
        }

        goto LABEL_28;
      }

      if (EnumCaseMultiPayload == 6)
      {
        v10 = *a2;
        v11 = *(a2 + 8);
        sub_261CCFD68(*a2, v11);
        *a1 = v10;
        *(a1 + 8) = v11;
        *(a1 + 16) = *(a2 + 16);
      }

      else
      {
        *a1 = *a2;
      }

      goto LABEL_6;
    }

    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        v12 = sub_261CFD6A4();
        (*(*(v12 - 8) + 16))(a1, a2, v12);
        v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE358, &qword_261D11BD0);
        *(a1 + *(v13 + 48)) = *(a2 + *(v13 + 48));
      }

      else
      {
        v6 = *a2;
        *a1 = *a2;
        *(a1 + 8) = *(a2 + 8);
        *(a1 + 16) = *(a2 + 16);
        *(a1 + 24) = *(a2 + 24);
        v7 = v6;
        sub_261CFD104();
      }

LABEL_6:
      sub_261CFD104();
LABEL_28:
      swift_storeEnumTagMultiPayload();
      return a1;
    }

    if (EnumCaseMultiPayload == 2)
    {
      *a1 = *a2;
      *(a1 + 8) = *(a2 + 8);
      sub_261CFD104();
      goto LABEL_28;
    }

    type metadata accessor for SiriUtilities.ScheduledGroup(0);
    v16 = swift_getEnumCaseMultiPayload();
    if (v16 <= 1)
    {
      if (!v16)
      {
        *a1 = *a2;
        goto LABEL_20;
      }
    }

    else if (v16 == 2)
    {
      v20 = sub_261CFD7E4();
      (*(*(v20 - 8) + 16))(a1, a2, v20);
      v21 = type metadata accessor for SiriUtilities.Day(0);
      *(a1 + *(v21 + 20)) = *(a2 + *(v21 + 20));
      goto LABEL_20;
    }

    v17 = sub_261CFD7E4();
    (*(*(v17 - 8) + 16))(a1, a2, v17);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE330, &qword_261D11B80);
    *(a1 + *(v18 + 48)) = *(a2 + *(v18 + 48));
LABEL_20:
    sub_261CFD104();
    swift_storeEnumTagMultiPayload();
    goto LABEL_28;
  }

  return a1;
}

char *_s8GroupingOwtk(char *a1, char *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 4:
      type metadata accessor for SiriUtilities.CompletedGroup(0);
      v13 = swift_getEnumCaseMultiPayload();
      v14 = sub_261CFD7E4();
      (*(*(v14 - 8) + 32))(a1, a2, v14);
      if (v13)
      {
        v17 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE330, &qword_261D11B80) + 48);
      }

      else
      {
        v17 = (type metadata accessor for SiriUtilities.Day(0) + 20);
      }

      *&a1[*v17] = *&a2[*v17];
      swift_storeEnumTagMultiPayload();
      goto LABEL_22;
    case 3:
      v9 = type metadata accessor for SiriUtilities.ScheduledGroup(0);
      v10 = swift_getEnumCaseMultiPayload();
      if (v10 > 2)
      {
        if (v10 != 3 && v10 != 4)
        {
          goto LABEL_19;
        }
      }

      else if (v10 != 1)
      {
        if (v10 == 2)
        {
          v11 = sub_261CFD7E4();
          (*(*(v11 - 8) + 32))(a1, a2, v11);
          v12 = type metadata accessor for SiriUtilities.Day(0);
          *&a1[*(v12 + 20)] = *&a2[*(v12 + 20)];
LABEL_21:
          swift_storeEnumTagMultiPayload();
          goto LABEL_22;
        }

LABEL_19:
        memcpy(a1, a2, *(*(v9 - 8) + 64));
        goto LABEL_22;
      }

      v18 = sub_261CFD7E4();
      (*(*(v18 - 8) + 32))(a1, a2, v18);
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE330, &qword_261D11B80);
      *&a1[*(v19 + 48)] = *&a2[*(v19 + 48)];
      goto LABEL_21;
    case 1:
      v7 = sub_261CFD6A4();
      (*(*(v7 - 8) + 32))(a1, a2, v7);
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE358, &qword_261D11BD0);
      *&a1[*(v8 + 48)] = *&a2[*(v8 + 48)];
LABEL_22:
      swift_storeEnumTagMultiPayload();
      return a1;
  }

  v15 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v15);
}

char *_s8GroupingOwta(char *a1, char *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_261CD1888(a1, type metadata accessor for SiriUtilities.Grouping);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 4:
      type metadata accessor for SiriUtilities.CompletedGroup(0);
      v13 = swift_getEnumCaseMultiPayload();
      v14 = sub_261CFD7E4();
      (*(*(v14 - 8) + 32))(a1, a2, v14);
      if (v13)
      {
        v17 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE330, &qword_261D11B80) + 48);
      }

      else
      {
        v17 = (type metadata accessor for SiriUtilities.Day(0) + 20);
      }

      *&a1[*v17] = *&a2[*v17];
      swift_storeEnumTagMultiPayload();
      goto LABEL_23;
    case 3:
      v9 = type metadata accessor for SiriUtilities.ScheduledGroup(0);
      v10 = swift_getEnumCaseMultiPayload();
      if (v10 > 2)
      {
        if (v10 != 3 && v10 != 4)
        {
          goto LABEL_20;
        }
      }

      else if (v10 != 1)
      {
        if (v10 == 2)
        {
          v11 = sub_261CFD7E4();
          (*(*(v11 - 8) + 32))(a1, a2, v11);
          v12 = type metadata accessor for SiriUtilities.Day(0);
          *&a1[*(v12 + 20)] = *&a2[*(v12 + 20)];
LABEL_22:
          swift_storeEnumTagMultiPayload();
          goto LABEL_23;
        }

LABEL_20:
        memcpy(a1, a2, *(*(v9 - 8) + 64));
        goto LABEL_23;
      }

      v18 = sub_261CFD7E4();
      (*(*(v18 - 8) + 32))(a1, a2, v18);
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE330, &qword_261D11B80);
      *&a1[*(v19 + 48)] = *&a2[*(v19 + 48)];
      goto LABEL_22;
    case 1:
      v7 = sub_261CFD6A4();
      (*(*(v7 - 8) + 32))(a1, a2, v7);
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE358, &qword_261D11BD0);
      *&a1[*(v8 + 48)] = *&a2[*(v8 + 48)];
LABEL_23:
      swift_storeEnumTagMultiPayload();
      return a1;
  }

  v15 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v15);
}

uint64_t sub_261CD34D8(uint64_t a1)
{
  v6[4] = " ";
  result = sub_261CFD6A4();
  if (v2 <= 0x3F)
  {
    v3 = MEMORY[0x277D833F0];
    swift_getTupleTypeLayout2();
    v6[5] = v6;
    v6[6] = &unk_261D11C00;
    result = type metadata accessor for SiriUtilities.ScheduledGroup(319);
    if (v4 <= 0x3F)
    {
      v6[7] = *(result - 8) + 64;
      result = type metadata accessor for SiriUtilities.CompletedGroup(319);
      if (v5 <= 0x3F)
      {
        v6[8] = *(result - 8) + 64;
        v6[9] = &unk_261D11C18;
        v6[10] = &unk_261D11C18;
        v6[11] = v3 + 64;
        swift_initEnumMetadataMultiPayload();
        return 0;
      }
    }
  }

  return result;
}

uint64_t _s12ListContentsVwxx(uint64_t a1)
{
  sub_261CCFEB4(*a1, *(a1 + 8));
}

uint64_t _s12ListContentsVwcp(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  sub_261CCFD68(*a2, v5);
  *a1 = v4;
  *(a1 + 8) = v5;
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  sub_261CFD104();
  sub_261CFD104();
  return a1;
}

uint64_t _s12ListContentsVwca(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  sub_261CCFD68(*a2, v5);
  v6 = *a1;
  *a1 = v4;
  v7 = *(a1 + 8);
  *(a1 + 8) = v5;
  sub_261CCFEB4(v6, v7);
  *(a1 + 16) = *(a2 + 16);
  sub_261CFD104();

  *(a1 + 24) = *(a2 + 24);
  sub_261CFD104();

  return a1;
}

uint64_t _s12ListContentsVwta(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = *a1;
  *a1 = *a2;
  v6 = *(a1 + 8);
  *(a1 + 8) = v4;
  sub_261CCFEB4(v5, v6);

  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t _s12ListContentsVwet(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t _s12ListContentsVwst(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_261CD3840(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_261CD38A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t ReminderEntity.title.getter()
{
  type metadata accessor for ReminderEntity(0);
  sub_261CFCA04();
  return v1;
}

uint64_t ReminderEntity.notes.getter()
{
  type metadata accessor for ReminderEntity(0);
  sub_261CFCA04();
  return v1;
}

uint64_t ReminderEntity.hashtags.getter()
{
  type metadata accessor for ReminderEntity(0);
  sub_261CFCA04();
  return v1;
}

uint64_t ReminderEntity.urls.getter()
{
  type metadata accessor for ReminderEntity(0);
  sub_261CFCA04();
  return v1;
}

uint64_t ReminderEntity.images.getter()
{
  type metadata accessor for ReminderEntity(0);
  sub_261CFCA04();
  return v1;
}

uint64_t ReminderEntity.isCompleted.getter()
{
  type metadata accessor for ReminderEntity(0);
  sub_261CFCA04();
  return v1;
}

uint64_t ReminderEntity.init(id:title:list:isCompleted:completionDate:creationDate:lastModifiedDate:dueDate:earlyAlert:recurrence:spatialEventTrigger:contactPerson:assignedPerson:note:flags:priorityLevel:parent:subtasks:tags:images:urls:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, __int128 *a11, uint64_t a12, uint64_t *a13, uint64_t a14, uint64_t a15, uint64_t a16, unsigned __int8 *a17, unsigned __int8 *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  v211 = a8;
  v212 = a7;
  v213 = a6;
  v186 = a5;
  v214 = a4;
  *(&v198 + 1) = a3;
  *&v198 = a2;
  v215 = a1;
  v197 = a23;
  v196 = a22;
  v199 = a21;
  v202 = a20;
  v209 = a15;
  v210 = a14;
  v205 = a10;
  v178 = a11;
  v208 = a19;
  v191 = a16;
  v206 = a12;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1E0, &unk_261D02300);
  v25 = MEMORY[0x28223BE20](v24 - 8);
  v201 = v144 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v200 = v144 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE110, &unk_261D035B0);
  v29 = MEMORY[0x28223BE20](v28 - 8);
  v193 = v144 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v192 = v144 - v31;
  v145 = sub_261CFD504();
  MEMORY[0x28223BE20](v145);
  v144[1] = v144 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA9A8, &qword_261D034B0);
  v34 = MEMORY[0x28223BE20](v33 - 8);
  v195 = v144 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x28223BE20](v34);
  v194 = v144 - v37;
  MEMORY[0x28223BE20](v36);
  v176 = v144 - v38;
  v177 = sub_261CFD524();
  v190 = *(v177 - 8);
  MEMORY[0x28223BE20](v177);
  v144[0] = v144 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDB0B0, &unk_261D035D0);
  v41 = MEMORY[0x28223BE20](v40 - 8);
  v182 = v144 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v181 = v144 - v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA9A0, &unk_261D034A0);
  v45 = MEMORY[0x28223BE20](v44 - 8);
  v171 = v144 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v45);
  v207 = v144 - v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA160, &qword_261D02220);
  v49 = MEMORY[0x28223BE20](v48 - 8);
  v169 = v144 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v49);
  v204 = v144 - v51;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAB68, &unk_261D11C90);
  v53 = MEMORY[0x28223BE20](v52 - 8);
  v172 = v144 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v53);
  v170 = v144 - v55;
  v56 = type metadata accessor for ListEntity(0);
  v57 = MEMORY[0x28223BE20](v56 - 8);
  v168 = v144 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v57);
  v167 = v144 - v59;
  v218 = sub_261CFD674();
  v60 = *(v218 - 8);
  MEMORY[0x28223BE20](v218);
  v62 = v144 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_261CFD884();
  MEMORY[0x28223BE20](v63 - 8);
  v64 = sub_261CFFA44();
  MEMORY[0x28223BE20](v64 - 8);
  v65 = sub_261CFD6A4();
  MEMORY[0x28223BE20](v65 - 8);
  v67 = v144 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = a13[1];
  v175 = *a13;
  v174 = v68;
  v173 = a13[2];
  v179 = *a17;
  v180 = *a18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC998, &qword_261D0B628);
  v184 = sub_261CFCAB4();
  *a9 = v184;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC9A0, &unk_261D11CA0);
  v183 = sub_261CFCB24();
  a9[1] = v183;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC9A8, &qword_261D0B630);
  v185 = sub_261CFCAA4();
  a9[2] = v185;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC9B0, &unk_261D11CB0);
  v188 = sub_261CFCAF4();
  a9[3] = v188;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC9B8, &qword_261D0B638);
  sub_261AE83CC(&qword_280D224E0, type metadata accessor for SectionEntity, &protocol conformance descriptor for SectionEntity);
  v189 = sub_261CFCA64();
  a9[4] = v189;
  v221 = a9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC9C0, &unk_261D11CC0);
  v159 = sub_261AE83CC(&qword_280D22358, type metadata accessor for ReminderEntity, &protocol conformance descriptor for ReminderEntity);
  v187 = sub_261CFCA64();
  a9[5] = v187;
  v69 = type metadata accessor for ReminderEntity(0);
  v164 = *(v69 + 44);
  v222 = v69;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD8C0, &qword_261D01468);
  sub_261CFF9B4();
  sub_261CFD874();
  v70 = *(v60 + 104);
  v220 = *MEMORY[0x277CC9110];
  v160 = "e Property Creation Date";
  v71 = v178[1];
  v166 = *v178;
  v165 = v71;
  v203 = v62;
  v72 = v218;
  v70(v62);
  v219 = v70;
  v73 = v60 + 104;
  sub_261CFD6C4();
  v178 = sub_261CFCB14();
  *(v221 + v164) = v178;
  v163 = *(v69 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC9C8, &unk_261D11CD0);
  sub_261CFF9B4();
  sub_261CFD874();
  v74 = v203;
  v75 = v220;
  v76 = v72;
  (v70)(v203, v220, v72);
  v217 = v73;
  sub_261CFD6C4();
  sub_261AE83CC(&qword_280D227A0, type metadata accessor for ListEntity, &protocol conformance descriptor for ListEntity);
  v164 = sub_261CFCA54();
  v78 = v221;
  v77 = v222;
  *(v221 + v163) = v164;
  v162 = v77[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC9D0, &qword_261D0B640);
  sub_261CFF9B4();
  sub_261CFD874();
  v79 = v75;
  v80 = v219;
  (v219)(v74, v79, v76);
  sub_261CFD6C4();
  v163 = sub_261CFCB34();
  *(v78 + v162) = v163;
  v161 = v77[14];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC9D8, &unk_261D11CE0);
  sub_261CFF9B4();
  sub_261CFD874();
  v81 = v220;
  (v80)(v74, v220, v76);
  sub_261CFD6C4();
  v162 = sub_261CFCAD4();
  *(v78 + v161) = v162;
  v157 = v222[15];
  sub_261CFF9B4();
  sub_261CFD874();
  v82 = v203;
  (v80)(v203, v81, v76);
  v83 = v67;
  sub_261CFD6C4();
  v161 = sub_261CFCAD4();
  *(v78 + v157) = v161;
  v84 = v222;
  v157 = v222[16];
  sub_261CFF9B4();
  sub_261CFD874();
  v85 = v218;
  (v80)(v82, v81, v218);
  v216 = v83;
  sub_261CFD6C4();
  v160 = sub_261CFCAD4();
  v86 = v221;
  *(v221 + v157) = v160;
  v157 = v84[17];
  sub_261CFF9B4();
  sub_261CFD874();
  (v80)(v82, v81, v85);
  sub_261CFD6C4();
  v158 = sub_261CFCA94();
  *(v86 + v157) = v158;
  v155 = v84[18];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC9E0, &qword_261D0B648);
  sub_261CFF9B4();
  sub_261CFD874();
  v87 = v218;
  v88 = v219;
  (v219)(v82, v81, v218);
  sub_261CFD6C4();
  sub_261B51818();
  v157 = sub_261CFCA54();
  v89 = v221;
  *(v221 + v155) = v157;
  v155 = v84[19];
  sub_261CFF9B4();
  sub_261CFD874();
  v88(v82, v81, v87);
  sub_261CFD6C4();
  v156 = sub_261CFCAE4();
  *(v89 + v155) = v156;
  v155 = v222[20];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC9E8, &unk_261D11CF0);
  sub_261CFF9B4();
  sub_261CFD874();
  v90 = v87;
  v91 = v219;
  (v219)(v82, v81, v90);
  sub_261CFD6C4();
  sub_261B5186C();
  v154 = sub_261CFCA54();
  *(v89 + v155) = v154;
  v92 = v222;
  v155 = v222[21];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC9F0, &qword_261D0B650);
  sub_261CFF9B4();
  sub_261CFD874();
  v93 = v218;
  v91(v82, v81, v218);
  sub_261CFD6C4();
  v153 = sub_261CFCA84();
  v94 = v221;
  *(v221 + v155) = v153;
  v155 = v92[22];
  sub_261CFF9B4();
  sub_261CFD874();
  v95 = v81;
  v96 = v93;
  v97 = v219;
  (v219)(v82, v95, v93);
  sub_261CFD6C4();
  v151 = sub_261CFCA84();
  *(v94 + v155) = v151;
  v152 = v92[23];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA848, &unk_261D074E0);
  sub_261CFF9B4();
  sub_261CFD874();
  (v97)(v82, v220, v93);
  v98 = v97;
  sub_261CFD6C4();
  v155 = sub_261CFCB14();
  v99 = v221;
  *(v221 + v152) = v155;
  v150 = v92[24];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC9F8, &qword_261D0B658);
  sub_261CFF9B4();
  sub_261CFD874();
  v100 = v220;
  (v98)(v82, v220, v93);
  sub_261CFD6C4();
  sub_261B52470();
  v152 = sub_261CFCA34();
  *(v99 + v150) = v152;
  v149 = v222[25];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCA00, &unk_261D11D00);
  sub_261CFF9B4();
  sub_261CFD874();
  v101 = v219;
  (v219)(v82, v100, v96);
  sub_261CFD6C4();
  sub_261B524C4();
  v150 = sub_261CFCA34();
  *(v99 + v149) = v150;
  v102 = v222;
  v148 = v222[26];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCA08, &qword_261D0B660);
  sub_261CFF9B4();
  sub_261CFD874();
  v103 = v220;
  v104 = v218;
  (v101)(v82, v220, v218);
  sub_261CFD6C4();
  v149 = sub_261CFCA54();
  *(v221 + v148) = v149;
  v148 = v102[27];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD8E0, &unk_261D11D10);
  sub_261CFF9B4();
  sub_261CFD874();
  v105 = v104;
  (v219)(v82, v103, v104);
  sub_261CFD6C4();
  v159 = sub_261CFCA54();
  v106 = v221;
  *(v221 + v148) = v159;
  v147 = v222[28];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCA10, &qword_261D0B668);
  sub_261CFF9B4();
  sub_261CFD874();
  v107 = v219;
  (v219)(v82, v103, v105);
  sub_261CFD6C4();
  v148 = sub_261CFCB14();
  *(v106 + v147) = v148;
  v108 = v222;
  v146 = v222[29];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCA18, &unk_261D11D20);
  sub_261CFF9B4();
  sub_261CFD874();
  (v107)(v82, v220, v105);
  sub_261CFD6C4();
  v147 = sub_261CFCA74();
  *(v106 + v146) = v147;
  v109 = v108[30];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCA20, &qword_261D0B670);
  sub_261CFF9B4();
  sub_261CFD874();
  (v107)(v82, v220, v218);
  v110 = v171;
  sub_261CFD6C4();
  v111 = v177;
  v112 = sub_261CFCAC4();
  v113 = v106;
  *(v106 + v109) = v112;
  v114 = v169;
  sub_261B01DC4(v215, v113 + v108[10], type metadata accessor for AppEntityID);
  v115 = v167;
  sub_261B01DC4(v214, v167, type metadata accessor for ListEntity);
  sub_261B01DC4(v115, v168, type metadata accessor for ListEntity);
  sub_261CFCA14();
  sub_261CDF898(v115, type metadata accessor for ListEntity);
  LOBYTE(v223) = v186;
  sub_261CFCA14();
  v116 = v170;
  sub_261AFB668(v213, v170, &qword_27FEDAB68, &unk_261D11C90);
  v117 = v172;
  sub_261AFB668(v116, v172, &qword_27FEDAB68, &unk_261D11C90);
  sub_261CFCA14();
  sub_261AE6A40(v116, &qword_27FEDAB68, &unk_261D11C90);
  sub_261AFB668(v212, v116, &qword_27FEDAB68, &unk_261D11C90);
  sub_261AFB668(v116, v117, &qword_27FEDAB68, &unk_261D11C90);
  sub_261CFCA14();
  sub_261AE6A40(v116, &qword_27FEDAB68, &unk_261D11C90);
  sub_261AFB668(v211, v116, &qword_27FEDAB68, &unk_261D11C90);
  sub_261AFB668(v116, v117, &qword_27FEDAB68, &unk_261D11C90);
  sub_261CFCA14();
  sub_261AE6A40(v116, &qword_27FEDAB68, &unk_261D11C90);
  v118 = v204;
  sub_261AFB668(v205, v204, &qword_27FEDA160, &qword_261D02220);
  sub_261AFB668(v118, v114, &qword_27FEDA160, &qword_261D02220);
  sub_261CFCA14();
  sub_261AE6A40(v118, &qword_27FEDA160, &qword_261D02220);
  v223 = v166;
  v224 = v165;
  sub_261CFCA14();
  v119 = v207;
  sub_261AFB668(v206, v207, &qword_27FEDA9A0, &unk_261D034A0);
  sub_261AFB668(v119, v110, &qword_27FEDA9A0, &unk_261D034A0);
  sub_261CFCA14();
  sub_261AE6A40(v119, &qword_27FEDA9A0, &unk_261D034A0);
  *&v223 = v175;
  *(&v223 + 1) = v174;
  *&v224 = v173;
  sub_261CFCA14();
  v120 = v181;
  sub_261AFB668(v210, v181, &unk_27FEDB0B0, &unk_261D035D0);
  v121 = v182;
  sub_261AFB668(v120, v182, &unk_27FEDB0B0, &unk_261D035D0);
  sub_261CFCA14();
  sub_261AE6A40(v120, &unk_27FEDB0B0, &unk_261D035D0);
  sub_261AFB668(v209, v120, &unk_27FEDB0B0, &unk_261D035D0);
  sub_261AFB668(v120, v121, &unk_27FEDB0B0, &unk_261D035D0);
  sub_261CFCA14();
  sub_261AE6A40(v120, &unk_27FEDB0B0, &unk_261D035D0);
  v122 = v191;
  v123 = v176;
  sub_261AFB668(v191, v176, &qword_27FEDA9A8, &qword_261D034B0);
  v124 = v190;
  if ((*(v190 + 48))(v123, 1, v111) == 1)
  {
    sub_261AE6A40(v123, &qword_27FEDA9A8, &qword_261D034B0);
    v125 = 0;
    v126 = 0;
  }

  else
  {
    v127 = v144[0];
    (*(v124 + 32))(v144[0], v123, v111);
    sub_261CFD4F4();
    sub_261AE83CC(&qword_27FEDCA28, MEMORY[0x277CC8B30], MEMORY[0x277CC8B40]);
    v125 = sub_261CFFBD4();
    v126 = v128;
    (*(v124 + 8))(v127, v111);
  }

  *&v223 = v125;
  *(&v223 + 1) = v126;
  sub_261CFCA14();
  LOBYTE(v223) = v179;
  sub_261CFCA14();
  LOBYTE(v223) = v180;
  sub_261CFCA14();
  v129 = v192;
  sub_261AFB668(v208, v192, &unk_27FEDE110, &unk_261D035B0);
  sub_261AFB668(v129, v193, &unk_27FEDE110, &unk_261D035B0);
  sub_261CFCA14();
  sub_261AE6A40(v129, &unk_27FEDE110, &unk_261D035B0);
  v130 = v202;
  *&v223 = v202;
  sub_261CFD104();
  sub_261CFCA14();
  v131 = v199;
  *&v223 = v199;
  sub_261CFD104();
  sub_261CFCA14();
  v132 = MEMORY[0x277D84F90];
  v133 = v196;
  if (!v196)
  {
    v133 = MEMORY[0x277D84F90];
  }

  *&v223 = v133;
  sub_261CFCA14();
  v134 = v197;
  if (!v197)
  {
    v134 = v132;
  }

  *&v223 = v134;
  sub_261CFCA14();
  v223 = v198;
  sub_261CFCA14();
  v135 = v122;
  v136 = v194;
  sub_261AFB668(v122, v194, &qword_27FEDA9A8, &qword_261D034B0);
  sub_261AFB668(v136, v195, &qword_27FEDA9A8, &qword_261D034B0);
  sub_261CFCA14();
  sub_261AE6A40(v136, &qword_27FEDA9A8, &qword_261D034B0);
  *&v223 = v131;
  sub_261CFCA14();
  v137 = v205;
  v138 = v204;
  sub_261AFB668(v205, v204, &qword_27FEDA160, &qword_261D02220);
  sub_261AFB668(v138, v114, &qword_27FEDA160, &qword_261D02220);
  sub_261CFCA14();
  sub_261AE6A40(v138, &qword_27FEDA160, &qword_261D02220);
  v139 = v206;
  v140 = v207;
  sub_261AFB668(v206, v207, &qword_27FEDA9A0, &unk_261D034A0);
  sub_261AFB668(v140, v110, &qword_27FEDA9A0, &unk_261D034A0);
  sub_261CFCA14();
  sub_261AE6A40(v140, &qword_27FEDA9A0, &unk_261D034A0);
  v141 = type metadata accessor for SectionEntity(0);
  v142 = v200;
  (*(*(v141 - 8) + 56))(v200, 1, 1, v141);
  sub_261AFB668(v142, v201, &qword_27FEDA1E0, &unk_261D02300);
  sub_261CFCA14();
  sub_261AE6A40(v142, &qword_27FEDA1E0, &unk_261D02300);
  *&v223 = v130;
  sub_261CFCA14();
  sub_261AE6A40(v208, &unk_27FEDE110, &unk_261D035B0);
  sub_261AE6A40(v135, &qword_27FEDA9A8, &qword_261D034B0);
  sub_261AE6A40(v209, &unk_27FEDB0B0, &unk_261D035D0);
  sub_261AE6A40(v210, &unk_27FEDB0B0, &unk_261D035D0);
  sub_261AE6A40(v139, &qword_27FEDA9A0, &unk_261D034A0);
  sub_261AE6A40(v137, &qword_27FEDA160, &qword_261D02220);
  sub_261AE6A40(v211, &qword_27FEDAB68, &unk_261D11C90);
  sub_261AE6A40(v212, &qword_27FEDAB68, &unk_261D11C90);
  sub_261AE6A40(v213, &qword_27FEDAB68, &unk_261D11C90);
  sub_261CDF898(v214, type metadata accessor for ListEntity);
  return sub_261CDF898(v215, type metadata accessor for AppEntityID);
}

RemindersAppIntents::ReminderEntity::PriorityLevel_optional __swiftcall ReminderEntity.PriorityLevel.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_261D00554();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

RemindersAppIntents::ReminderEntity::Flags_optional __swiftcall ReminderEntity.Flags.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_261D00554();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ReminderEntity.PriorityLevel.rawValue.getter()
{
  v1 = 1701736302;
  v2 = 0x6D756964656DLL;
  if (*v0 != 2)
  {
    v2 = 1751607656;
  }

  if (*v0)
  {
    v1 = 7827308;
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

uint64_t ReminderEntity.Flags.rawValue.getter()
{
  v1 = 0x6767616C46746F6ELL;
  if (*v0 != 1)
  {
    v1 = 0x64656767616C66;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

uint64_t ReminderEntity.init(id:title:list:isCompleted:completionDate:creationDate:lastModifiedDate:dueDateComponents:earlyAlert:recurrenceRule:spatialEventTrigger:contactPerson:assignedPerson:notes:flags:priorityLevel:parent:subtasks:hashtags:images:urls:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, __int128 *a11, uint64_t a12, uint64_t *a13, uint64_t a14, uint64_t a15, __int128 a16, unsigned __int8 *a17, unsigned __int8 *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  v210 = a8;
  v211 = a7;
  v212 = a6;
  v186 = a5;
  v213 = a4;
  *(&v200 + 1) = a3;
  *&v200 = a2;
  v214 = a1;
  v199 = a23;
  v198 = a22;
  v197 = a21;
  v195 = a20;
  v206 = a19;
  v192 = a16;
  v208 = a15;
  v209 = a14;
  v207 = a10;
  v171 = a11;
  v189 = a12;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1E0, &unk_261D02300);
  v25 = MEMORY[0x28223BE20](v24 - 8);
  v202 = &v147 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v201 = &v147 - v27;
  v28 = sub_261CFD564();
  MEMORY[0x28223BE20](v28 - 8);
  v194 = &v147 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA9A8, &qword_261D034B0);
  v31 = MEMORY[0x28223BE20](v30 - 8);
  v196 = &v147 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v193 = &v147 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE110, &unk_261D035B0);
  v35 = MEMORY[0x28223BE20](v34 - 8);
  v191 = &v147 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v190 = &v147 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDB0B0, &unk_261D035D0);
  v39 = MEMORY[0x28223BE20](v38 - 8);
  v188 = &v147 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v185 = &v147 - v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA9A0, &unk_261D034A0);
  v43 = MEMORY[0x28223BE20](v42 - 8);
  v179 = &v147 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43);
  v205 = &v147 - v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA160, &qword_261D02220);
  v47 = MEMORY[0x28223BE20](v46 - 8);
  v204 = &v147 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v47);
  v203 = &v147 - v49;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAB68, &unk_261D11C90);
  v51 = MEMORY[0x28223BE20](v50 - 8);
  v173 = &v147 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v51);
  v172 = &v147 - v53;
  v54 = type metadata accessor for ListEntity(0);
  v55 = MEMORY[0x28223BE20](v54 - 8);
  v170 = &v147 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v55);
  v169 = &v147 - v57;
  v218 = sub_261CFD674();
  v58 = *(v218 - 8);
  MEMORY[0x28223BE20](v218);
  v60 = &v147 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_261CFD884();
  MEMORY[0x28223BE20](v61 - 8);
  v63 = &v147 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_261CFFA44();
  MEMORY[0x28223BE20](v64 - 8);
  v65 = sub_261CFD6A4();
  MEMORY[0x28223BE20](v65 - 8);
  v67 = &v147 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = a13[1];
  v176 = *a13;
  v175 = v68;
  v174 = a13[2];
  v177 = *a17;
  v178 = *a18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC998, &qword_261D0B628);
  v180 = sub_261CFCAB4();
  *a9 = v180;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC9A0, &unk_261D11CA0);
  v181 = sub_261CFCB24();
  a9[1] = v181;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC9A8, &qword_261D0B630);
  v182 = sub_261CFCAA4();
  a9[2] = v182;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC9B0, &unk_261D11CB0);
  v184 = sub_261CFCAF4();
  a9[3] = v184;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC9B8, &qword_261D0B638);
  sub_261AE83CC(&qword_280D224E0, type metadata accessor for SectionEntity, &protocol conformance descriptor for SectionEntity);
  v187 = sub_261CFCA64();
  a9[4] = v187;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC9C0, &unk_261D11CC0);
  v162 = sub_261AE83CC(&qword_280D22358, type metadata accessor for ReminderEntity, &protocol conformance descriptor for ReminderEntity);
  v183 = sub_261CFCA64();
  a9[5] = v183;
  v219 = a9;
  v69 = type metadata accessor for ReminderEntity(0);
  v166 = *(v69 + 44);
  v216 = v69;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD8C0, &qword_261D01468);
  sub_261CFF9B4();
  sub_261CFD874();
  v70 = *(v58 + 104);
  LODWORD(v221) = *MEMORY[0x277CC9110];
  v161 = "e Property Creation Date";
  v71 = v171[1];
  v168 = *v171;
  v167 = v71;
  v72 = v218;
  v70(v60);
  v217 = v70;
  v220 = v58 + 104;
  sub_261CFD6C4();
  v171 = sub_261CFCB14();
  *(a9 + v166) = v171;
  v165 = *(v69 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC9C8, &unk_261D11CD0);
  sub_261CFF9B4();
  v73 = v63;
  sub_261CFD874();
  v74 = v60;
  v75 = v72;
  (v70)(v60, v221, v72);
  v76 = v73;
  v77 = v74;
  sub_261CFD6C4();
  sub_261AE83CC(&qword_280D227A0, type metadata accessor for ListEntity, &protocol conformance descriptor for ListEntity);
  v166 = sub_261CFCA54();
  v78 = v219;
  *(v219 + v165) = v166;
  v79 = v216;
  v164 = v216[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC9D0, &qword_261D0B640);
  sub_261CFF9B4();
  sub_261CFD874();
  v80 = v221;
  (v217)(v77, v221, v75);
  sub_261CFD6C4();
  v165 = sub_261CFCB34();
  *(v78 + v164) = v165;
  v163 = v79[14];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC9D8, &unk_261D11CE0);
  sub_261CFF9B4();
  sub_261CFD874();
  v81 = v75;
  v82 = v217;
  (v217)(v77, v80, v75);
  v215 = v67;
  sub_261CFD6C4();
  v164 = sub_261CFCAD4();
  v83 = v219;
  *(v219 + v163) = v164;
  v84 = v216;
  v159 = v216[15];
  sub_261CFF9B4();
  sub_261CFD874();
  v82(v77, v80, v81);
  sub_261CFD6C4();
  v163 = sub_261CFCAD4();
  *(v83 + v159) = v163;
  v159 = v84[16];
  sub_261CFF9B4();
  sub_261CFD874();
  v85 = v221;
  v86 = v218;
  v82(v77, v221, v218);
  v87 = v77;
  sub_261CFD6C4();
  v161 = sub_261CFCAD4();
  *(v219 + v159) = v161;
  v159 = v84[17];
  sub_261CFF9B4();
  v88 = v76;
  sub_261CFD874();
  v89 = v87;
  v90 = v87;
  v91 = v85;
  v92 = v86;
  v93 = v217;
  (v217)(v90, v91, v86);
  sub_261CFD6C4();
  v160 = sub_261CFCA94();
  v94 = v219;
  *(v219 + v159) = v160;
  v157 = v84[18];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC9E0, &qword_261D0B648);
  sub_261CFF9B4();
  sub_261CFD874();
  (v93)(v89, v221, v92);
  sub_261CFD6C4();
  sub_261B51818();
  v159 = sub_261CFCA54();
  *(v94 + v157) = v159;
  v95 = v94;
  v157 = v84[19];
  sub_261CFF9B4();
  sub_261CFD874();
  v96 = v221;
  v97 = v217;
  v98 = v218;
  (v217)(v89, v221, v218);
  sub_261CFD6C4();
  v158 = sub_261CFCAE4();
  *(v95 + v157) = v158;
  v156 = v84[20];
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC9E8, &unk_261D11CF0);
  sub_261CFF9B4();
  sub_261CFD874();
  v97(v89, v96, v98);
  v99 = v97;
  sub_261CFD6C4();
  sub_261B5186C();
  v157 = sub_261CFCA54();
  v100 = v219;
  *(v219 + v156) = v157;
  v101 = v216;
  v155 = v216[21];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC9F0, &qword_261D0B650);
  sub_261CFF9B4();
  v147 = v88;
  sub_261CFD874();
  v102 = v221;
  v103 = v218;
  v99(v89, v221, v218);
  sub_261CFD6C4();
  v156 = sub_261CFCA84();
  *(v100 + v155) = v156;
  v154 = v101[22];
  sub_261CFF9B4();
  sub_261CFD874();
  v104 = v103;
  v99(v89, v102, v103);
  sub_261CFD6C4();
  v155 = sub_261CFCA84();
  v105 = v219;
  *(v219 + v154) = v155;
  v153 = v101[23];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA848, &unk_261D074E0);
  sub_261CFF9B4();
  sub_261CFD874();
  v106 = v221;
  (v217)(v89, v221, v104);
  sub_261CFD6C4();
  v154 = sub_261CFCB14();
  *(v105 + v153) = v154;
  v152 = v101[24];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC9F8, &qword_261D0B658);
  sub_261CFF9B4();
  sub_261CFD874();
  v107 = v106;
  v108 = v106;
  v109 = v217;
  v110 = v218;
  (v217)(v89, v108, v218);
  sub_261CFD6C4();
  sub_261B52470();
  v153 = sub_261CFCA34();
  v111 = v219;
  *(v219 + v152) = v153;
  v151 = v101[25];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCA00, &unk_261D11D00);
  sub_261CFF9B4();
  sub_261CFD874();
  v109(v89, v107, v110);
  sub_261CFD6C4();
  sub_261B524C4();
  v152 = sub_261CFCA34();
  *(v111 + v151) = v152;
  v112 = v216;
  v150 = v216[26];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCA08, &qword_261D0B660);
  sub_261CFF9B4();
  sub_261CFD874();
  v109(v89, v107, v110);
  sub_261CFD6C4();
  v151 = sub_261CFCA54();
  v113 = v219;
  *(v219 + v150) = v151;
  v114 = v112;
  v150 = v112[27];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD8E0, &unk_261D11D10);
  sub_261CFF9B4();
  sub_261CFD874();
  v115 = v218;
  v109(v89, v221, v218);
  sub_261CFD6C4();
  v162 = sub_261CFCA54();
  *(v113 + v150) = v162;
  v149 = v114[28];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCA10, &qword_261D0B668);
  sub_261CFF9B4();
  sub_261CFD874();
  v116 = v221;
  v109(v89, v221, v115);
  sub_261CFD6C4();
  v150 = sub_261CFCB14();
  v117 = v219;
  *(v219 + v149) = v150;
  v148 = v114[29];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCA18, &unk_261D11D20);
  sub_261CFF9B4();
  sub_261CFD874();
  v118 = v218;
  v109(v89, v116, v218);
  sub_261CFD6C4();
  v149 = sub_261CFCA74();
  *(v117 + v148) = v149;
  v119 = v117;
  v120 = v216;
  v121 = v216[30];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCA20, &qword_261D0B670);
  sub_261CFF9B4();
  sub_261CFD874();
  v109(v89, v221, v118);
  sub_261CFD6C4();
  v220 = sub_261CFCAC4();
  *(v119 + v121) = v220;
  sub_261B01DC4(v214, v119 + v120[10], type metadata accessor for AppEntityID);
  v122 = v169;
  sub_261B01DC4(v213, v169, type metadata accessor for ListEntity);
  sub_261B01DC4(v122, v170, type metadata accessor for ListEntity);
  sub_261CFCA14();
  v221 = type metadata accessor for ListEntity;
  sub_261CDF898(v122, type metadata accessor for ListEntity);
  LOBYTE(v222) = v186;
  sub_261CFCA14();
  v123 = v172;
  sub_261AFB668(v212, v172, &qword_27FEDAB68, &unk_261D11C90);
  v124 = v173;
  sub_261AFB668(v123, v173, &qword_27FEDAB68, &unk_261D11C90);
  sub_261CFCA14();
  sub_261AE6A40(v123, &qword_27FEDAB68, &unk_261D11C90);
  sub_261AFB668(v211, v123, &qword_27FEDAB68, &unk_261D11C90);
  sub_261AFB668(v123, v124, &qword_27FEDAB68, &unk_261D11C90);
  sub_261CFCA14();
  sub_261AE6A40(v123, &qword_27FEDAB68, &unk_261D11C90);
  sub_261AFB668(v210, v123, &qword_27FEDAB68, &unk_261D11C90);
  sub_261AFB668(v123, v124, &qword_27FEDAB68, &unk_261D11C90);
  sub_261CFCA14();
  sub_261AE6A40(v123, &qword_27FEDAB68, &unk_261D11C90);
  v125 = v203;
  sub_261AFB668(v207, v203, &qword_27FEDA160, &qword_261D02220);
  sub_261AFB668(v125, v204, &qword_27FEDA160, &qword_261D02220);
  sub_261CFCA14();
  sub_261AE6A40(v125, &qword_27FEDA160, &qword_261D02220);
  v222 = v168;
  v223 = v167;
  sub_261CFCA14();
  v126 = v189;
  v127 = v205;
  sub_261AFB668(v189, v205, &qword_27FEDA9A0, &unk_261D034A0);
  v128 = v179;
  sub_261AFB668(v127, v179, &qword_27FEDA9A0, &unk_261D034A0);
  sub_261CFCA14();
  sub_261AE6A40(v127, &qword_27FEDA9A0, &unk_261D034A0);
  *&v222 = v176;
  *(&v222 + 1) = v175;
  *&v223 = v174;
  sub_261CFCA14();
  v129 = v185;
  sub_261AFB668(v209, v185, &unk_27FEDB0B0, &unk_261D035D0);
  v130 = v188;
  sub_261AFB668(v129, v188, &unk_27FEDB0B0, &unk_261D035D0);
  sub_261CFCA14();
  sub_261AE6A40(v129, &unk_27FEDB0B0, &unk_261D035D0);
  sub_261AFB668(v208, v129, &unk_27FEDB0B0, &unk_261D035D0);
  sub_261AFB668(v129, v130, &unk_27FEDB0B0, &unk_261D035D0);
  sub_261CFCA14();
  sub_261AE6A40(v129, &unk_27FEDB0B0, &unk_261D035D0);
  v222 = v192;
  sub_261CFD104();
  sub_261CFCA14();
  LOBYTE(v222) = v177;
  sub_261CFCA14();
  LOBYTE(v222) = v178;
  sub_261CFCA14();
  v131 = v190;
  sub_261AFB668(v206, v190, &unk_27FEDE110, &unk_261D035B0);
  sub_261AFB668(v131, v191, &unk_27FEDE110, &unk_261D035B0);
  sub_261CFCA14();
  sub_261AE6A40(v131, &unk_27FEDE110, &unk_261D035B0);
  v132 = v195;
  *&v222 = v195;
  sub_261CFD104();
  sub_261CFCA14();
  *&v222 = v197;
  v133 = v197;
  sub_261CFD104();
  sub_261CFCA14();
  v134 = v198;
  if (!v198)
  {
    v134 = MEMORY[0x277D84F90];
  }

  v135 = MEMORY[0x277D84F90];
  *&v222 = v134;
  sub_261CFCA14();
  v136 = v199;
  if (!v199)
  {
    v136 = v135;
  }

  *&v222 = v136;
  sub_261CFCA14();
  v222 = v200;
  sub_261CFCA14();
  sub_261CFD554();
  v137 = v193;
  sub_261CFD534();
  v138 = sub_261CFD524();
  (*(*(v138 - 8) + 56))(v137, 0, 1, v138);
  sub_261AFB668(v137, v196, &qword_27FEDA9A8, &qword_261D034B0);
  sub_261CFCA14();
  sub_261AE6A40(v137, &qword_27FEDA9A8, &qword_261D034B0);
  if (v133)
  {
    v139 = v133;
  }

  else
  {
    v139 = v135;
  }

  *&v222 = v139;
  sub_261CFCA14();
  v140 = v207;
  v141 = v203;
  sub_261AFB668(v207, v203, &qword_27FEDA160, &qword_261D02220);
  sub_261AFB668(v141, v204, &qword_27FEDA160, &qword_261D02220);
  sub_261CFCA14();
  sub_261AE6A40(v141, &qword_27FEDA160, &qword_261D02220);
  v142 = v205;
  sub_261AFB668(v126, v205, &qword_27FEDA9A0, &unk_261D034A0);
  sub_261AFB668(v142, v128, &qword_27FEDA9A0, &unk_261D034A0);
  sub_261CFCA14();
  sub_261AE6A40(v142, &qword_27FEDA9A0, &unk_261D034A0);
  v143 = type metadata accessor for SectionEntity(0);
  v144 = v201;
  (*(*(v143 - 8) + 56))(v201, 1, 1, v143);
  sub_261AFB668(v144, v202, &qword_27FEDA1E0, &unk_261D02300);
  sub_261CFCA14();
  sub_261AE6A40(v144, &qword_27FEDA1E0, &unk_261D02300);
  v145 = MEMORY[0x277D84F90];
  if (v132)
  {
    v145 = v132;
  }

  *&v222 = v145;
  sub_261CFCA14();
  sub_261AE6A40(v206, &unk_27FEDE110, &unk_261D035B0);
  sub_261AE6A40(v208, &unk_27FEDB0B0, &unk_261D035D0);
  sub_261AE6A40(v209, &unk_27FEDB0B0, &unk_261D035D0);
  sub_261AE6A40(v126, &qword_27FEDA9A0, &unk_261D034A0);
  sub_261AE6A40(v140, &qword_27FEDA160, &qword_261D02220);
  sub_261AE6A40(v210, &qword_27FEDAB68, &unk_261D11C90);
  sub_261AE6A40(v211, &qword_27FEDAB68, &unk_261D11C90);
  sub_261AE6A40(v212, &qword_27FEDAB68, &unk_261D11C90);
  sub_261CDF898(v213, v221);
  return sub_261CDF898(v214, type metadata accessor for AppEntityID);
}

uint64_t sub_261CD8004(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA9A8, &qword_261D034B0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v9 - v6;
  sub_261AFB668(a1, &v9 - v6, &qword_27FEDA9A8, &qword_261D034B0);
  sub_261AFB668(v7, v5, &qword_27FEDA9A8, &qword_261D034B0);
  sub_261CFCA14();
  return sub_261AE6A40(v7, &qword_27FEDA9A8, &qword_261D034B0);
}

uint64_t ReminderEntity.note.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA9A8, &qword_261D034B0);
  MEMORY[0x28223BE20](v2 - 8);
  sub_261AFB668(a1, &v5 - v3, &qword_27FEDA9A8, &qword_261D034B0);
  sub_261CFCA14();
  return sub_261AE6A40(a1, &qword_27FEDA9A8, &qword_261D034B0);
}

uint64_t (*ReminderEntity.note.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_261CFC9F4();
  return sub_261B02064;
}

uint64_t (*ReminderEntity.tags.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_261CFC9F4();
  return sub_261B02064;
}

uint64_t sub_261CD8314(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA160, &qword_261D02220);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v9 - v6;
  sub_261AFB668(a1, &v9 - v6, &qword_27FEDA160, &qword_261D02220);
  sub_261AFB668(v7, v5, &qword_27FEDA160, &qword_261D02220);
  sub_261CFCA14();
  return sub_261AE6A40(v7, &qword_27FEDA160, &qword_261D02220);
}

uint64_t ReminderEntity.dueDate.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA160, &qword_261D02220);
  MEMORY[0x28223BE20](v2 - 8);
  sub_261AFB668(a1, &v5 - v3, &qword_27FEDA160, &qword_261D02220);
  sub_261CFCA14();
  return sub_261AE6A40(a1, &qword_27FEDA160, &qword_261D02220);
}

uint64_t (*ReminderEntity.dueDate.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_261CFC9F4();
  return sub_261B02064;
}

uint64_t sub_261CD8558(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA9A0, &unk_261D034A0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v9 - v6;
  sub_261AFB668(a1, &v9 - v6, &qword_27FEDA9A0, &unk_261D034A0);
  sub_261AFB668(v7, v5, &qword_27FEDA9A0, &unk_261D034A0);
  sub_261CFCA14();
  return sub_261AE6A40(v7, &qword_27FEDA9A0, &unk_261D034A0);
}

uint64_t ReminderEntity.recurrence.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA9A0, &unk_261D034A0);
  MEMORY[0x28223BE20](v2 - 8);
  sub_261AFB668(a1, &v5 - v3, &qword_27FEDA9A0, &unk_261D034A0);
  sub_261CFCA14();
  return sub_261AE6A40(a1, &qword_27FEDA9A0, &unk_261D034A0);
}

uint64_t (*ReminderEntity.recurrence.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_261CFC9F4();
  return sub_261B02064;
}

uint64_t sub_261CD879C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1E0, &unk_261D02300);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v9 - v6;
  sub_261AFB668(a1, &v9 - v6, &qword_27FEDA1E0, &unk_261D02300);
  sub_261AFB668(v7, v5, &qword_27FEDA1E0, &unk_261D02300);
  sub_261CFCA14();
  return sub_261AE6A40(v7, &qword_27FEDA1E0, &unk_261D02300);
}

uint64_t ReminderEntity.section.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1E0, &unk_261D02300);
  MEMORY[0x28223BE20](v2 - 8);
  sub_261AFB668(a1, &v5 - v3, &qword_27FEDA1E0, &unk_261D02300);
  sub_261CFCA14();
  return sub_261AE6A40(a1, &qword_27FEDA1E0, &unk_261D02300);
}

uint64_t (*ReminderEntity.section.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_261CFC9F4();
  return sub_261B02064;
}

uint64_t (*ReminderEntity.subtasks.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_261CFC9F4();
  return sub_261B02064;
}

uint64_t sub_261CD8AAC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_261CFD674();
  v3 = *(v12[0] - 8);
  MEMORY[0x28223BE20](v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_261CFD884();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_261CFFA44();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_261CFD6A4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = sub_261CFD234();
  __swift_allocate_value_buffer(v10, qword_27FEDE3A0);
  __swift_project_value_buffer(v10, qword_27FEDE3A0);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v3 + 104))(v5, *MEMORY[0x277CC9110], v12[0]);
  sub_261CFD6C4();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_261CFD224();
}

uint64_t sub_261CD8DB4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA6F0, &qword_261D01450);
  MEMORY[0x28223BE20](v0 - 8);
  v34 = v27 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  MEMORY[0x28223BE20](v2 - 8);
  v43 = v27 - v3;
  v42 = sub_261CFD674();
  v44 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v31 = v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_261CFD884();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_261CFFA44();
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_261CFD6A4();
  v11 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE4F8, &unk_261D125E0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDD220, &qword_261D0DB50);
  v12 = *(*(v29 - 8) + 72);
  v13 = (*(*(v29 - 8) + 80) + 32) & ~*(*(v29 - 8) + 80);
  v32 = 2 * v12;
  v14 = swift_allocObject();
  v33 = v14;
  *(v14 + 16) = xmmword_261D01420;
  v15 = v14 + v13;
  *(v14 + v13) = 0;
  v27[0] = v10;
  sub_261CFF9B4();
  v27[2] = v7;
  sub_261CFD874();
  v41 = *MEMORY[0x277CC9110];
  v28 = *(v44 + 104);
  v44 += 104;
  v16 = v31;
  v28(v31);
  sub_261CFD6C4();
  v17 = *(v11 + 56);
  v38 = v11 + 56;
  v39 = v17;
  v18 = v30;
  v17(v43, 1, 1, v30);
  v36 = sub_261CFD074();
  v19 = *(v36 - 8);
  v35 = *(v19 + 56);
  v37 = v19 + 56;
  v20 = v34;
  v35(v34, 1, 1, v36);
  v40 = v15;
  sub_261CFD0A4();
  v21 = v29;
  v27[1] = *(v29 + 48);
  *(v15 + v12) = 1;
  sub_261CFF9B4();
  sub_261CFD874();
  v22 = v28;
  (v28)(v16, v41, v42);
  sub_261CFD6C4();
  v23 = v43;
  v39(v43, 1, 1, v18);
  v35(v20, 1, 1, v36);
  sub_261CFD0A4();
  v24 = (v40 + v32);
  v32 = *(v21 + 48);
  *v24 = 2;
  sub_261CFF9B4();
  sub_261CFD874();
  (v22)(v16, v41, v42);
  sub_261CFD6C4();
  v39(v23, 1, 1, v18);
  v35(v20, 1, 1, v36);
  sub_261CFD0A4();
  v25 = sub_261C3AC70(v33);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_27FEDE3B8 = v25;
  return result;
}

uint64_t sub_261CD9490(uint64_t a1)
{
  v2 = sub_261B52470();

  return MEMORY[0x28210B458](a1, v2);
}

uint64_t sub_261CD9500(uint64_t a1)
{
  v2 = sub_261CDE180();

  return MEMORY[0x28210C300](a1, v2);
}

uint64_t sub_261CD954C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_261CFD674();
  v3 = *(v12[0] - 8);
  MEMORY[0x28223BE20](v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_261CFD884();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_261CFFA44();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_261CFD6A4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = sub_261CFD234();
  __swift_allocate_value_buffer(v10, qword_27FEDE3C0);
  __swift_project_value_buffer(v10, qword_27FEDE3C0);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v3 + 104))(v5, *MEMORY[0x277CC9110], v12[0]);
  sub_261CFD6C4();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_261CFD224();
}

uint64_t sub_261CD984C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA6F0, &qword_261D01450);
  MEMORY[0x28223BE20](v0 - 8);
  v58 = v41 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  MEMORY[0x28223BE20](v2 - 8);
  v46 = v41 - v3;
  v50 = sub_261CFD674();
  v4 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v6 = v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_261CFD884();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_261CFFA44();
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_261CFD6A4();
  v14 = *(v13 - 8);
  v59 = v13;
  v60 = v14;
  MEMORY[0x28223BE20](v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE4F0, &unk_261D125D0);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDD210, &qword_261D0DB40);
  v15 = *(v54 - 8);
  v51 = *(v15 + 72);
  v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v17 = swift_allocObject();
  v47 = v17;
  *(v17 + 16) = xmmword_261D01430;
  v57 = v17 + v16;
  *(v17 + v16) = 0;
  sub_261CFF9B4();
  sub_261CFD874();
  v49 = *MEMORY[0x277CC9110];
  v18 = v4 + 104;
  v56 = *(v4 + 104);
  v19 = v6;
  v56(v6);
  v20 = v9;
  sub_261CFD6C4();
  v48 = *(v60 + 56);
  v60 += 56;
  v21 = v46;
  v48(v46, 1, 1, v59);
  v52 = sub_261CFD074();
  v22 = *(v52 - 8);
  v53 = *(v22 + 56);
  v55 = v22 + 56;
  v53(v58, 1, 1, v52);
  v23 = v57;
  sub_261CFD0A4();
  v24 = v51;
  v25 = (v23 + v51);
  v26 = v54;
  v27 = *(v54 + 48);
  v43 = v25;
  v44 = v27;
  *v25 = 1;
  v41[1] = v12;
  sub_261CFF9B4();
  v41[2] = v20;
  sub_261CFD874();
  v42 = v19;
  v28 = v19;
  v29 = v49;
  v30 = v50;
  v45 = v18;
  (v56)(v28, v49, v50);
  sub_261CFD6C4();
  v31 = v48;
  v48(v21, 1, 1, v59);
  v53(v58, 1, 1, v52);
  sub_261CFD0A4();
  v43 = *(v26 + 48);
  v44 = 2 * v24;
  *(v57 + 2 * v24) = 2;
  sub_261CFF9B4();
  sub_261CFD874();
  v32 = v42;
  (v56)(v42, v29, v30);
  sub_261CFD6C4();
  v33 = v21;
  v31(v21, 1, 1, v59);
  v34 = v58;
  v36 = v52;
  v35 = v53;
  v53(v58, 1, 1, v52);
  v37 = v33;
  sub_261CFD0A4();
  v38 = (v57 + v44 + v51);
  v51 = *(v54 + 48);
  *v38 = 3;
  sub_261CFF9B4();
  sub_261CFD874();
  (v56)(v32, v49, v50);
  sub_261CFD6C4();
  v48(v37, 1, 1, v59);
  v35(v34, 1, 1, v36);
  sub_261CFD0A4();
  v39 = sub_261C3AE58(v47);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_27FEDE3D8 = v39;
  return result;
}

uint64_t sub_261CDA010(uint64_t a1)
{
  v2 = sub_261B524C4();

  return MEMORY[0x28210B458](a1, v2);
}

uint64_t sub_261CDA080(uint64_t a1)
{
  v2 = sub_261CDE51C();

  return MEMORY[0x28210C300](a1, v2);
}

uint64_t ReminderEntity.id.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for ReminderEntity(0) + 40);

  return sub_261AF92C8(a1, v3);
}

uint64_t sub_261CDA1A4(uint64_t *a1)
{
  type metadata accessor for ReminderEntity(0);
  sub_261CFD104();
  return sub_261CFCA14();
}

uint64_t (*ReminderEntity.title.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for ReminderEntity(0);
  *(v3 + 32) = sub_261CFC9F4();
  return sub_261B02064;
}

uint64_t sub_261CDA300(uint64_t a1)
{
  v2 = type metadata accessor for ListEntity(0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v9 - v6;
  sub_261B01DC4(a1, &v9 - v6, type metadata accessor for ListEntity);
  type metadata accessor for ReminderEntity(0);
  sub_261B01DC4(v7, v5, type metadata accessor for ListEntity);
  sub_261CFCA14();
  return sub_261CDF898(v7, type metadata accessor for ListEntity);
}

uint64_t ReminderEntity.list.setter(uint64_t a1)
{
  v2 = type metadata accessor for ListEntity(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ReminderEntity(0);
  sub_261B01DC4(a1, v4, type metadata accessor for ListEntity);
  sub_261CFCA14();
  return sub_261CDF898(a1, type metadata accessor for ListEntity);
}

uint64_t (*ReminderEntity.list.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for ReminderEntity(0);
  *(v3 + 32) = sub_261CFC9F4();
  return sub_261B02064;
}

uint64_t (*ReminderEntity.isCompleted.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for ReminderEntity(0);
  *(v3 + 32) = sub_261CFC9F4();
  return sub_261B02064;
}

uint64_t sub_261CDA6AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAB68, &unk_261D11C90);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v9 - v6;
  sub_261AFB668(a1, &v9 - v6, &qword_27FEDAB68, &unk_261D11C90);
  type metadata accessor for ReminderEntity(0);
  sub_261AFB668(v7, v5, &qword_27FEDAB68, &unk_261D11C90);
  sub_261CFCA14();
  return sub_261AE6A40(v7, &qword_27FEDAB68, &unk_261D11C90);
}

uint64_t ReminderEntity.completionDate.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAB68, &unk_261D11C90);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - v3;
  type metadata accessor for ReminderEntity(0);
  sub_261AFB668(a1, v4, &qword_27FEDAB68, &unk_261D11C90);
  sub_261CFCA14();
  return sub_261AE6A40(a1, &qword_27FEDAB68, &unk_261D11C90);
}

uint64_t (*ReminderEntity.completionDate.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for ReminderEntity(0);
  *(v3 + 32) = sub_261CFC9F4();
  return sub_261B02064;
}

uint64_t sub_261CDA95C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAB68, &unk_261D11C90);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v9 - v6;
  sub_261AFB668(a1, &v9 - v6, &qword_27FEDAB68, &unk_261D11C90);
  type metadata accessor for ReminderEntity(0);
  sub_261AFB668(v7, v5, &qword_27FEDAB68, &unk_261D11C90);
  sub_261CFCA14();
  return sub_261AE6A40(v7, &qword_27FEDAB68, &unk_261D11C90);
}

uint64_t ReminderEntity.creationDate.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAB68, &unk_261D11C90);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - v3;
  type metadata accessor for ReminderEntity(0);
  sub_261AFB668(a1, v4, &qword_27FEDAB68, &unk_261D11C90);
  sub_261CFCA14();
  return sub_261AE6A40(a1, &qword_27FEDAB68, &unk_261D11C90);
}

uint64_t (*ReminderEntity.creationDate.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for ReminderEntity(0);
  *(v3 + 32) = sub_261CFC9F4();
  return sub_261B02064;
}

uint64_t sub_261CDAC0C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAB68, &unk_261D11C90);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v9 - v6;
  sub_261AFB668(a1, &v9 - v6, &qword_27FEDAB68, &unk_261D11C90);
  type metadata accessor for ReminderEntity(0);
  sub_261AFB668(v7, v5, &qword_27FEDAB68, &unk_261D11C90);
  sub_261CFCA14();
  return sub_261AE6A40(v7, &qword_27FEDAB68, &unk_261D11C90);
}