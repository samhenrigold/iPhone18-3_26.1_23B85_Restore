uint64_t sub_24EF2D334(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F224FA8, &qword_24F974A80);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for SearchHintsPresenter(uint64_t a1)
{
  result = qword_27F234058;
  if (!qword_27F234058)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_24EF2D3F0()
{
  result = qword_27F234040;
  if (!qword_27F234040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F234040);
  }

  return result;
}

uint64_t sub_24EF2D454()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t objectdestroy_3Tm()
{

  return swift_deallocObject();
}

uint64_t sub_24EF2D4E8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC12GameStoreKit20SearchHintsPresenter_view;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_24EF2D544(uint64_t *a1, void *a2)
{
  v2 = a1[1];
  v3 = *a2 + OBJC_IVAR____TtC12GameStoreKit20SearchHintsPresenter_view;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

double sub_24EF2D5A8@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12GameStoreKit20SearchHintsPresenter_hints;
  swift_beginAccess();
  *a2 = *(v3 + v4);

  return result;
}

double sub_24EF2D660@<D0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC12GameStoreKit20SearchHintsPresenter_term);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;

  return result;
}

unint64_t sub_24EF2DA5C()
{
  result = qword_27F234068;
  if (!qword_27F234068)
  {
    type metadata accessor for SearchHintSet(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F234068);
  }

  return result;
}

uint64_t sub_24EF2DABC()
{

  return swift_deallocObject();
}

GameStoreKit::ComponentDecoration_optional __swiftcall ComponentDecoration.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

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

uint64_t ComponentDecoration.rawValue.getter()
{
  if (*v0)
  {
    return 0xD000000000000016;
  }

  else
  {
    return 0x656461637261;
  }
}

uint64_t sub_24EF2DE1C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000016;
  }

  else
  {
    v3 = 0x656461637261;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0x800000024FA421F0;
  }

  if (*a2)
  {
    v5 = 0xD000000000000016;
  }

  else
  {
    v5 = 0x656461637261;
  }

  if (*a2)
  {
    v6 = 0x800000024FA421F0;
  }

  else
  {
    v6 = 0xE600000000000000;
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

unint64_t sub_24EF2DEC8()
{
  result = qword_27F234070;
  if (!qword_27F234070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F234070);
  }

  return result;
}

uint64_t sub_24EF2DF1C()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EF2DFA0(uint64_t a1)
{
  sub_24F92B218();
}

uint64_t sub_24EF2E010()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EF2E090@<X0>(char *a2@<X8>)
{
  v3 = sub_24F92CB88();

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

void sub_24EF2E0F0(unint64_t *a1@<X8>)
{
  v2 = 0x800000024FA421F0;
  v3 = 0x656461637261;
  if (*v1)
  {
    v3 = 0xD000000000000016;
  }

  else
  {
    v2 = 0xE600000000000000;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_24EF2E158(uint64_t a1, unint64_t a2, int a3, uint64_t a4)
{
  v39 = a4;
  v40 = a2;
  v38 = a3;
  v41 = a1;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216D58, &unk_24F9B2030);
  v4 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v6 = &v36 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216D60, &unk_24F9440B0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v36 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237700, &unk_24F9759D0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v36 - v13;
  type metadata accessor for OfferButtonViewModel(0);
  v15 = swift_allocObject();
  v16 = OBJC_IVAR____TtC12GameStoreKit20OfferButtonViewModel__disabled;
  LOBYTE(v44) = 0;
  sub_24F923058();
  (*(v12 + 32))(v15 + v16, v14, v11);
  v17 = OBJC_IVAR____TtC12GameStoreKit20OfferButtonViewModel__action;
  *&v44 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216DA8, &unk_24F944110);
  sub_24F923058();
  (*(v8 + 32))(v15 + v17, v10, v7);
  v18 = OBJC_IVAR____TtC12GameStoreKit20OfferButtonViewModel__theme;
  v44 = xmmword_24F943570;
  v45 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216DB0, &qword_24F9B2040);
  sub_24F923058();
  (*(v4 + 32))(v15 + v18, v6, v37);
  v19 = v15 + OBJC_IVAR____TtC12GameStoreKit20OfferButtonViewModel_presenter;
  *v19 = 0u;
  *(v19 + 16) = 0u;
  *(v19 + 32) = 0;
  v20 = (v15 + OBJC_IVAR____TtC12GameStoreKit20OfferButtonViewModel_redownloadSymbolName);
  *v20 = 0xD000000000000015;
  v20[1] = 0x800000024FA3FE10;
  v21 = (v15 + OBJC_IVAR____TtC12GameStoreKit20OfferButtonViewModel_accessibilityOfferButtonString);
  *v21 = 0;
  v21[1] = 0;
  *(v15 + OBJC_IVAR____TtC12GameStoreKit20OfferButtonViewModel_placement) = v38;
  v22 = OBJC_IVAR____TtC12GameStoreKit20OfferButtonViewModel_objectGraph;
  *(v15 + OBJC_IVAR____TtC12GameStoreKit20OfferButtonViewModel_objectGraph) = v39;
  v23 = OBJC_IVAR____TtC12GameStoreKit20OfferButtonViewModel__action;
  swift_beginAccess();
  v24 = *(v8 + 8);

  v24(v15 + v23, v7);
  v51 = v40;
  v25 = v40;

  sub_24F923058();
  swift_endAccess();
  swift_beginAccess();
  v44 = xmmword_24F943590;
  v45 = 0;
  v46 = 0;
  v47 = 4;
  v49 = 0;
  v48 = 0;
  v50 = 0;
  v26 = v25;
  sub_24F923058();
  swift_endAccess();
  v27 = v41;
  *(v15 + OBJC_IVAR____TtC12GameStoreKit20OfferButtonViewModel_displayProperties) = v41;
  type metadata accessor for ArcadeSubscriptionManager();
  sub_24F928FD8();

  sub_24F92A758();

  v28 = v44;
  if (OfferDisplayProperties.isArcadeOffer.getter())
  {
    v29 = swift_allocObject();
    swift_weakInit();
    v30 = swift_allocObject();
    swift_weakInit();
    v31 = swift_allocObject();
    *(v31 + 16) = v30;
    *(v31 + 24) = v29;
    *(v31 + 32) = v27;
    *(v31 + 40) = v25;
    *(v31 + 48) = 0;
    *(v31 + 60) = 0;
    *(v31 + 56) = 3;
    *(v31 + 62) = 16843009;
    *(v31 + 66) = 257;
    v32 = *&v28[OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_stateLock];

    [v32 lock];
    sub_24F213714(v15, sub_24E690EC8, v31, v28);
    [v32 unlock];
  }

  v33 = &v28[OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_subscriptionState];
  swift_beginAccess();
  LOBYTE(v33) = (v33[8] & 0xC0) == 128;
  WORD2(v51) = 0;
  LODWORD(v51) = 3;
  v43 = 257;
  v42 = 16843009;
  v34 = *(v15 + v22);

  sub_24EEFB79C(v33, v27, v26, 0, &v51, &v42, v34);

  return v15;
}

uint64_t sub_24EF2E784()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_24EF2E7BC()
{

  return swift_deallocObject();
}

uint64_t sub_24EF2E814@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v50 = a1;
  v3 = type metadata accessor for OfferButtonDesign.Size(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OfferButtonDesign(0);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = (&v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_24F9234F8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v42 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v43 = &v42 - v14;
  MEMORY[0x28223BE20](v15);
  v48 = &v42 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2340A8, &qword_24F9B20B0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v42 - v18;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2340B0, &qword_24F9B20B8);
  MEMORY[0x28223BE20](v47);
  v49 = &v42 - v20;
  v45 = v19;
  sub_24EF2EE34(v2, v19);
  type metadata accessor for OfferButtonView(0);
  sub_24F769CA8(v9);
  v21 = *v2;
  v22 = type metadata accessor for OfferButtonViewModel(0);
  sub_24EF36D04(&qword_27F234098, type metadata accessor for OfferButtonViewModel, &unk_24F9AED60);
  v46 = v21;
  v44 = v22;
  v23 = *(sub_24F923628() + OBJC_IVAR____TtC12GameStoreKit20OfferButtonViewModel_placement);

  sub_24EF36FC8(v9 + *(v7 + 28), v5, type metadata accessor for OfferButtonDesign.Size);
  sub_24EF37030(v9, type metadata accessor for OfferButtonDesign);
  if ((*(v11 + 48))(v5, 1, v10) == 1)
  {
    v5 = v42;
    (*(v11 + 104))(v42, **(&unk_27968E270 + v23), v10);
  }

  v24 = *(v11 + 32);
  v25 = v43;
  v24(v43, v5, v10);
  v26 = v48;
  v24(v48, v25, v10);
  KeyPath = swift_getKeyPath();
  v28 = v49;
  v29 = &v49[*(v47 + 36)];
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217118, &qword_24F950C70);
  v24(v29 + *(v30 + 28), v26, v10);
  *v29 = KeyPath;
  sub_24E6009C8(v45, v28, &qword_27F2340A8, &qword_24F9B20B0);
  sub_24F923628();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  v31 = v51[0];
  if (v51[0])
  {
    v32 = type metadata accessor for Action(0);
    v33 = sub_24EF36D04(&qword_27F216DE8, type metadata accessor for Action, &protocol conformance descriptor for Action);
  }

  else
  {
    v32 = 0;
    v33 = 0;
    v51[1] = 0;
    v51[2] = 0;
  }

  v34 = v50;
  v51[0] = v31;
  v51[3] = v32;
  v51[4] = v33;
  v35 = v34 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2340B8, &unk_24F9B2140) + 36);
  sub_24E60169C(v51, v35, qword_27F21B590, &unk_24F93BE30);
  if (qword_27F211808 != -1)
  {
    swift_once();
  }

  v36 = qword_27F24E488;
  *(v35 + 40) = qword_27F24E488;
  *(v35 + 48) = swift_getKeyPath();
  *(v35 + 88) = 0;
  v37 = type metadata accessor for FocusedAlternativeSelectionButtonModifier(0);
  v38 = *(v37 + 28);
  *(v35 + v38) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212938, &qword_24F939770);
  swift_storeEnumTagMultiPayload();
  v39 = v35 + *(v37 + 32);
  *v39 = swift_getKeyPath();
  *(v39 + 8) = 0;
  *(v39 + 16) = 0;
  sub_24E6009C8(v28, v34, &qword_27F2340B0, &qword_24F9B20B8);
  v40 = v36;
  return sub_24E601704(v51, qword_27F21B590, &unk_24F93BE30);
}

uint64_t sub_24EF2EE34@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2340C0, &qword_24F9B21E0);
  MEMORY[0x28223BE20](v47);
  v43 = (&v41 - v3);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2340C8, &qword_24F9B21E8);
  MEMORY[0x28223BE20](v44);
  v46 = &v41 - v4;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2340D0, &qword_24F9B21F0);
  MEMORY[0x28223BE20](v55);
  v48 = &v41 - v5;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2340D8, &qword_24F9B21F8);
  MEMORY[0x28223BE20](v45);
  v42 = (&v41 - v6);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2340E0, &qword_24F9B2200);
  MEMORY[0x28223BE20](v56);
  v59 = &v41 - v7;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2340E8, &qword_24F9B2208);
  MEMORY[0x28223BE20](v52);
  v54 = &v41 - v8;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2340F0, &qword_24F9B2210);
  MEMORY[0x28223BE20](v49);
  v50 = &v41 - v9;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2340F8, &qword_24F9B2218);
  MEMORY[0x28223BE20](v53);
  v51 = &v41 - v10;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234100, &qword_24F9B2220);
  MEMORY[0x28223BE20](v57);
  v58 = &v41 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234108, &qword_24F9B2228);
  MEMORY[0x28223BE20](v12);
  v14 = &v41 - v13;
  v15 = sub_24F923E98();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = (&v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for OfferButtonViewModel(0);
  sub_24EF36D04(&qword_27F234098, type metadata accessor for OfferButtonViewModel, &unk_24F9AED60);
  sub_24F923628();
  type metadata accessor for OfferButtonView(0);
  sub_24F769788(v18);
  sub_24EEFA964(v18, v61);

  (*(v16 + 8))(v18, v15);
  if (v61[0] > 1u)
  {
    if (v61[0] == 2)
    {
      v34 = sub_24F9249A8();
      v35 = v42;
      *v42 = v34;
      *(v35 + 8) = 0x4028000000000000;
      *(v35 + 16) = 0;
      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234160, &qword_24F9B2248);
      sub_24EF30124(a1, v35 + *(v36 + 44));
      v22 = &qword_24F9B21F8;
      sub_24E60169C(v35, v46, &qword_27F2340D8, &qword_24F9B21F8);
      swift_storeEnumTagMultiPayload();
      v37 = MEMORY[0x277CE1138];
      sub_24E602068(&qword_27F234130, &qword_27F2340D8, &qword_24F9B21F8, MEMORY[0x277CE1138]);
      sub_24E602068(&qword_27F234138, &qword_27F2340C0, &qword_24F9B21E0, v37);
      v38 = v48;
      sub_24F924E28();
      sub_24E60169C(v38, v54, &qword_27F2340D0, &qword_24F9B21F0);
      swift_storeEnumTagMultiPayload();
      sub_24EF36D4C();
      sub_24EF36DFC();
      v39 = v58;
      sub_24F924E28();
      sub_24E601704(v38, &qword_27F2340D0, &qword_24F9B21F0);
      sub_24E60169C(v39, v59, &qword_27F234100, &qword_24F9B2220);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234140, &qword_24F9B2238);
      sub_24EF36EDC();
      sub_24E602068(&qword_27F234150, &qword_27F234140, &qword_24F9B2238, MEMORY[0x277CE1198]);
      sub_24F924E28();
      sub_24E601704(v39, &qword_27F234100, &qword_24F9B2220);
      v26 = v35;
      v27 = &qword_27F2340D8;
      goto LABEL_10;
    }

    if (v61[0] == 3)
    {
      v19 = sub_24F9249A8();
      v20 = v43;
      *v43 = v19;
      *(v20 + 8) = 0x4028000000000000;
      *(v20 + 16) = 0;
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234158, &qword_24F9B2240);
      sub_24EF3088C(a1, v20 + *(v21 + 44));
      v22 = &qword_24F9B21E0;
      sub_24E60169C(v20, v46, &qword_27F2340C0, &qword_24F9B21E0);
      swift_storeEnumTagMultiPayload();
      v23 = MEMORY[0x277CE1138];
      sub_24E602068(&qword_27F234130, &qword_27F2340D8, &qword_24F9B21F8, MEMORY[0x277CE1138]);
      sub_24E602068(&qword_27F234138, &qword_27F2340C0, &qword_24F9B21E0, v23);
      v24 = v48;
      sub_24F924E28();
      sub_24E60169C(v24, v54, &qword_27F2340D0, &qword_24F9B21F0);
      swift_storeEnumTagMultiPayload();
      sub_24EF36D4C();
      sub_24EF36DFC();
      v25 = v58;
      sub_24F924E28();
      sub_24E601704(v24, &qword_27F2340D0, &qword_24F9B21F0);
      sub_24E60169C(v25, v59, &qword_27F234100, &qword_24F9B2220);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234140, &qword_24F9B2238);
      sub_24EF36EDC();
      sub_24E602068(&qword_27F234150, &qword_27F234140, &qword_24F9B2238, MEMORY[0x277CE1198]);
      sub_24F924E28();
      sub_24E601704(v25, &qword_27F234100, &qword_24F9B2220);
      v26 = v20;
      v27 = &qword_27F2340C0;
LABEL_10:
      v33 = v22;
      return sub_24E601704(v26, v27, v33);
    }

    goto LABEL_7;
  }

  if (v61[0])
  {
LABEL_7:
    *v14 = sub_24F924C88();
    *(v14 + 1) = 0x4014000000000000;
    v14[16] = 0;
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234110, &qword_24F9B2230);
    sub_24EF2F9C0(a1, 1, 0, &v14[*(v29 + 44)]);
    sub_24E60169C(v14, v50, &qword_27F234108, &qword_24F9B2228);
    goto LABEL_8;
  }

  *v14 = sub_24F924C88();
  *(v14 + 1) = 0x4014000000000000;
  v14[16] = 0;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234110, &qword_24F9B2230);
  sub_24EF2F9C0(a1, 0, 1, &v14[*(v28 + 44)]);
  sub_24E60169C(v14, v50, &qword_27F234108, &qword_24F9B2228);
LABEL_8:
  swift_storeEnumTagMultiPayload();
  v30 = MEMORY[0x277CE1198];
  sub_24E602068(&qword_27F234118, &qword_27F234108, &qword_24F9B2228, MEMORY[0x277CE1198]);
  v31 = v51;
  sub_24F924E28();
  sub_24E60169C(v31, v54, &qword_27F2340F8, &qword_24F9B2218);
  swift_storeEnumTagMultiPayload();
  sub_24EF36D4C();
  sub_24EF36DFC();
  v32 = v58;
  sub_24F924E28();
  sub_24E601704(v31, &qword_27F2340F8, &qword_24F9B2218);
  sub_24E60169C(v32, v59, &qword_27F234100, &qword_24F9B2220);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234140, &qword_24F9B2238);
  sub_24EF36EDC();
  sub_24E602068(&qword_27F234150, &qword_27F234140, &qword_24F9B2238, v30);
  sub_24F924E28();
  sub_24E601704(v32, &qword_27F234100, &qword_24F9B2220);
  v26 = v14;
  v27 = &qword_27F234108;
  v33 = &qword_24F9B2228;
  return sub_24E601704(v26, v27, v33);
}

uint64_t sub_24EF2F9C0@<X0>(uint64_t *a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v60 = a3;
  LODWORD(v53) = a2;
  v63 = a4;
  v5 = type metadata accessor for OfferButtonView.OfferButton(0);
  MEMORY[0x28223BE20](v5);
  v7 = v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = (v52 - v9);
  v65 = type metadata accessor for OfferButtonView.Subtitle(0);
  MEMORY[0x28223BE20](v65);
  v61 = v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v62 = v52 - v13;
  MEMORY[0x28223BE20](v14);
  v16 = v52 - v15;
  MEMORY[0x28223BE20](v17);
  v59 = v52 - v18;
  MEMORY[0x28223BE20](v19);
  v21 = v52 - v20;
  MEMORY[0x28223BE20](v22);
  v66 = v52 - v23;
  v24 = *a1;
  v25 = a1[1];
  LODWORD(a1) = *(a1 + 16);
  v26 = type metadata accessor for OfferButtonViewModel(0);
  v27 = sub_24EF36D04(&qword_27F234098, type metadata accessor for OfferButtonViewModel, &unk_24F9AED60);
  v56 = v25;
  v57 = v24;
  v55 = a1;
  v54 = v26;
  sub_24F923628();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  v64 = v7;
  v58 = v5;
  v52[2] = v27;
  if (v74 <= 2u)
  {
    v28 = v69;
    v29 = v70;
    if (!v74)
    {

      goto LABEL_8;
    }

    v30 = v71;
    if (v74 == 1)
    {

      v28 = v29;
      v29 = v30;
      goto LABEL_8;
    }

    sub_24EEFE350(v67, v68, v69, v70, v71, v72 | (v73 << 32), 2);
  }

  v28 = 0;
  v29 = 0;
LABEL_8:
  v31 = *(v65 + 24);
  *&v21[v31] = swift_getKeyPath();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B398, &qword_24F96B8D0);
  swift_storeEnumTagMultiPayload();
  v67 = 0x4020000000000000;
  v33 = sub_24E62C088();
  sub_24F9237C8();
  v67 = 0x4022000000000000;
  v52[1] = v33;
  sub_24F9237C8();
  *v21 = v28;
  *(v21 + 1) = v29;
  v21[16] = v53;
  sub_24EF38190(v21, v66, type metadata accessor for OfferButtonView.Subtitle);
  sub_24F923628();
  *v10 = sub_24F923C28();
  v10[1] = v34;
  v35 = v58;
  v36 = v58[5];
  *(v10 + v36) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898, &unk_24F944150);
  swift_storeEnumTagMultiPayload();
  v37 = v35[6];
  *(v10 + v37) = swift_getKeyPath();
  v53 = v32;
  swift_storeEnumTagMultiPayload();
  v38 = v35[7];
  *(v10 + v38) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216DB8, &unk_24F96B930);
  swift_storeEnumTagMultiPayload();
  v39 = v10 + v35[8];
  *v39 = swift_getKeyPath();
  *(v39 + 1) = 0;
  v39[16] = 0;
  sub_24F923628();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  if (v74 > 2u)
  {
    v40 = 0;
    v41 = 0;
    v43 = v63;
    v42 = v64;
  }

  else
  {
    v40 = v69;
    v41 = v70;
    v43 = v63;
    v42 = v64;
    if (v74)
    {
      v44 = v71;
      if (v74 == 1)
      {

        v40 = v41;
        v41 = v44;
      }

      else
      {
        sub_24EEFE350(v67, v68, v69, v70, v71, v72 | (v73 << 32), 2);
        v40 = 0;
        v41 = 0;
      }
    }

    else
    {
    }
  }

  v45 = *(v65 + 24);
  *&v16[v45] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v67 = 0x4020000000000000;
  sub_24F9237C8();
  v67 = 0x4022000000000000;
  sub_24F9237C8();
  *v16 = v40;
  *(v16 + 1) = v41;
  v16[16] = v60;
  v46 = v59;
  sub_24EF38190(v16, v59, type metadata accessor for OfferButtonView.Subtitle);
  v47 = v66;
  v48 = v62;
  sub_24EF36FC8(v66, v62, type metadata accessor for OfferButtonView.Subtitle);
  sub_24EF36FC8(v10, v42, type metadata accessor for OfferButtonView.OfferButton);
  v49 = v61;
  sub_24EF36FC8(v46, v61, type metadata accessor for OfferButtonView.Subtitle);
  sub_24EF36FC8(v48, v43, type metadata accessor for OfferButtonView.Subtitle);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234168, &qword_24F9B2338);
  sub_24EF36FC8(v42, v43 + *(v50 + 48), type metadata accessor for OfferButtonView.OfferButton);
  sub_24EF36FC8(v49, v43 + *(v50 + 64), type metadata accessor for OfferButtonView.Subtitle);
  sub_24EF37030(v46, type metadata accessor for OfferButtonView.Subtitle);
  sub_24EF37030(v10, type metadata accessor for OfferButtonView.OfferButton);
  sub_24EF37030(v47, type metadata accessor for OfferButtonView.Subtitle);
  sub_24EF37030(v49, type metadata accessor for OfferButtonView.Subtitle);
  sub_24EF37030(v42, type metadata accessor for OfferButtonView.OfferButton);
  return sub_24EF37030(v48, type metadata accessor for OfferButtonView.Subtitle);
}

uint64_t sub_24EF30124@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v57 = type metadata accessor for OfferButtonView.OfferButton(0);
  MEMORY[0x28223BE20](v57);
  v4 = v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = (v46 - v6);
  v8 = type metadata accessor for OfferButtonView.Subtitle(0);
  MEMORY[0x28223BE20](v8);
  v10 = v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234170, &qword_24F9B2340);
  MEMORY[0x28223BE20](v47);
  v54 = v46 - v11;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234178, &qword_24F9B2348);
  MEMORY[0x28223BE20](v49);
  v56 = v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v46 - v14;
  MEMORY[0x28223BE20](v16);
  v55 = v46 - v17;
  v18 = *a1;
  v19 = a1[1];
  v20 = *(a1 + 16);
  v21 = type metadata accessor for OfferButtonViewModel(0);
  v22 = sub_24EF36D04(&qword_27F234098, type metadata accessor for OfferButtonViewModel, &unk_24F9AED60);
  v52 = v18;
  v51 = v19;
  v50 = v20;
  v53 = v21;
  v48 = v22;
  sub_24F923628();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  v59 = v4;
  if (BYTE14(v62) > 2u)
  {
    goto LABEL_7;
  }

  v24 = *(&v61 + 1);
  v23 = v61;
  if (!BYTE14(v62))
  {

    goto LABEL_8;
  }

  v25 = v62;
  if (BYTE14(v62) != 1)
  {
    sub_24EEFE350(v60, *(&v60 + 1), v61, *(&v61 + 1), v62, DWORD2(v62) | (WORD6(v62) << 32), 2);
LABEL_7:
    v23 = 0;
    v24 = 0;
    goto LABEL_8;
  }

  v23 = v24;
  v24 = v25;
LABEL_8:
  v26 = *(v8 + 24);
  *&v10[v26] = swift_getKeyPath();
  v46[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B398, &qword_24F96B8D0);
  swift_storeEnumTagMultiPayload();
  *&v60 = 0x4020000000000000;
  sub_24E62C088();
  sub_24F9237C8();
  *&v60 = 0x4022000000000000;
  sub_24F9237C8();
  *v10 = v23;
  *(v10 + 1) = v24;
  v10[16] = 0;
  KeyPath = swift_getKeyPath();
  v28 = v54;
  sub_24EF38190(v10, v54, type metadata accessor for OfferButtonView.Subtitle);
  v29 = v28 + *(v47 + 36);
  *v29 = KeyPath;
  *(v29 + 8) = 2;
  type metadata accessor for OfferButtonView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234078, &unk_24FA0C030);
  sub_24F9237D8();
  sub_24F927638();
  sub_24F9242E8();
  sub_24E6009C8(v28, v15, &qword_27F234170, &qword_24F9B2340);
  v30 = &v15[*(v49 + 36)];
  v31 = v65;
  *(v30 + 4) = v64;
  *(v30 + 5) = v31;
  *(v30 + 6) = v66;
  v32 = v61;
  *v30 = v60;
  *(v30 + 1) = v32;
  v33 = v63;
  *(v30 + 2) = v62;
  *(v30 + 3) = v33;
  v34 = v55;
  sub_24E6009C8(v15, v55, &qword_27F234178, &qword_24F9B2348);
  sub_24F923628();
  *v7 = sub_24F923C28();
  v7[1] = v35;
  v36 = v57;
  v37 = *(v57 + 20);
  *(v7 + v37) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898, &unk_24F944150);
  swift_storeEnumTagMultiPayload();
  v38 = v36[6];
  *(v7 + v38) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v39 = v36[7];
  *(v7 + v39) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216DB8, &unk_24F96B930);
  swift_storeEnumTagMultiPayload();
  v40 = v7 + v36[8];
  *v40 = swift_getKeyPath();
  *(v40 + 1) = 0;
  v40[16] = 0;
  v41 = v56;
  sub_24E60169C(v34, v56, &qword_27F234178, &qword_24F9B2348);
  v42 = v59;
  sub_24EF36FC8(v7, v59, type metadata accessor for OfferButtonView.OfferButton);
  v43 = v58;
  sub_24E60169C(v41, v58, &qword_27F234178, &qword_24F9B2348);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234180, &qword_24F9B2380);
  sub_24EF36FC8(v42, v43 + *(v44 + 48), type metadata accessor for OfferButtonView.OfferButton);
  sub_24EF37030(v7, type metadata accessor for OfferButtonView.OfferButton);
  sub_24E601704(v34, &qword_27F234178, &qword_24F9B2348);
  sub_24EF37030(v42, type metadata accessor for OfferButtonView.OfferButton);
  return sub_24E601704(v41, &qword_27F234178, &qword_24F9B2348);
}

uint64_t sub_24EF3088C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v38 = type metadata accessor for OfferButtonView.Subtitle(0);
  MEMORY[0x28223BE20](v38);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234188, &qword_24F9B2388);
  MEMORY[0x28223BE20](v40);
  v44 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v41 = &v37 - v8;
  MEMORY[0x28223BE20](v9);
  v42 = &v37 - v10;
  v11 = type metadata accessor for OfferButtonView.OfferButton(0);
  v12 = (v11 - 8);
  MEMORY[0x28223BE20](v11);
  v43 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = (&v37 - v15);
  v39 = a1;
  type metadata accessor for OfferButtonViewModel(0);
  sub_24EF36D04(&qword_27F234098, type metadata accessor for OfferButtonViewModel, &unk_24F9AED60);
  sub_24F923628();
  *v16 = sub_24F923C28();
  v16[1] = v17;
  v18 = v12[7];
  *(v16 + v18) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898, &unk_24F944150);
  swift_storeEnumTagMultiPayload();
  v19 = v12[8];
  *(v16 + v19) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B398, &qword_24F96B8D0);
  swift_storeEnumTagMultiPayload();
  v20 = v12[9];
  *(v16 + v20) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216DB8, &unk_24F96B930);
  swift_storeEnumTagMultiPayload();
  v21 = v16 + v12[10];
  *v21 = swift_getKeyPath();
  *(v21 + 1) = 0;
  v21[16] = 0;
  sub_24F923628();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  if (BYTE14(v48) > 2u)
  {
    goto LABEL_7;
  }

  v22 = *(&v47 + 1);
  v23 = v47;
  if (!BYTE14(v48))
  {

    goto LABEL_8;
  }

  v24 = v48;
  if (BYTE14(v48) != 1)
  {
    sub_24EEFE350(v46, *(&v46 + 1), v47, *(&v47 + 1), v48, DWORD2(v48) | (WORD6(v48) << 32), 2);
LABEL_7:
    v23 = 0;
    v22 = 0;
    goto LABEL_8;
  }

  v23 = v22;
  v22 = v24;
LABEL_8:
  v25 = *(v38 + 24);
  *&v5[v25] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  *&v46 = 0x4020000000000000;
  sub_24E62C088();
  sub_24F9237C8();
  *&v46 = 0x4022000000000000;
  sub_24F9237C8();
  *v5 = v23;
  *(v5 + 1) = v22;
  v5[16] = 0;
  type metadata accessor for OfferButtonView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234078, &unk_24FA0C030);
  sub_24F9237D8();
  sub_24F927628();
  sub_24F9242E8();
  v26 = v41;
  sub_24EF38190(v5, v41, type metadata accessor for OfferButtonView.Subtitle);
  v27 = (v26 + *(v40 + 36));
  v28 = v51;
  v27[4] = v50;
  v27[5] = v28;
  v27[6] = v52;
  v29 = v47;
  *v27 = v46;
  v27[1] = v29;
  v30 = v49;
  v27[2] = v48;
  v27[3] = v30;
  v31 = v42;
  sub_24E6009C8(v26, v42, &qword_27F234188, &qword_24F9B2388);
  v32 = v43;
  sub_24EF36FC8(v16, v43, type metadata accessor for OfferButtonView.OfferButton);
  v33 = v44;
  sub_24E60169C(v31, v44, &qword_27F234188, &qword_24F9B2388);
  v34 = v45;
  sub_24EF36FC8(v32, v45, type metadata accessor for OfferButtonView.OfferButton);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234190, &unk_24F9B2390);
  sub_24E60169C(v33, v34 + *(v35 + 48), &qword_27F234188, &qword_24F9B2388);
  sub_24E601704(v31, &qword_27F234188, &qword_24F9B2388);
  sub_24EF37030(v16, type metadata accessor for OfferButtonView.OfferButton);
  sub_24E601704(v33, &qword_27F234188, &qword_24F9B2388);
  return sub_24EF37030(v32, type metadata accessor for OfferButtonView.OfferButton);
}

uint64_t sub_24EF30F18@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_24F923D48();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24F924848();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v1 + *(type metadata accessor for OfferButtonView.OfferButton(0) + 32);
  v12 = *v11;
  v13 = *(v11 + 8);
  if (*(v11 + 16) == 1)
  {

    if (v13)
    {
LABEL_3:

      sub_24F923D38();
      v14 = type metadata accessor for CapsuleButtonContent.Symbol(0);
      sub_24F923D18();

      (*(v4 + 8))(v6, v3);
      *a1 = v12;
      a1[1] = v13;
      *(a1 + *(v14 + 24)) = 0;
      return (*(*(v14 - 8) + 56))(a1, 0, 1, v14);
    }
  }

  else
  {

    sub_24F92BDC8();
    v16 = sub_24F9257A8();
    v23 = v7;
    v17 = a1;
    v18 = v4;
    v19 = v3;
    v20 = v16;
    sub_24F921FD8();

    v3 = v19;
    v4 = v18;
    a1 = v17;
    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E74C370(v12, v13, 0);
    (*(v8 + 8))(v10, v23);
    v12 = v24;
    v13 = v25;
    if (v25)
    {
      goto LABEL_3;
    }
  }

  v21 = type metadata accessor for CapsuleButtonContent.Symbol(0);
  return (*(*(v21 - 8) + 56))(a1, 1, 1, v21);
}

uint64_t sub_24EF311F0@<X0>(uint64_t a1@<X8>)
{
  v85 = a1;
  v84 = sub_24F929888();
  v83 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v82 = v62 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for OfferButtonDesign.Size(0);
  MEMORY[0x28223BE20](v3 - 8);
  v65 = v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_24F9234F8();
  v72 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v69 = v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v70 = v62 - v7;
  v88 = sub_24F923E98();
  v75 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v73 = (v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v11 = (v62 - v10);
  v64 = type metadata accessor for OfferButtonDesign.Context(0);
  MEMORY[0x28223BE20](v64);
  v13 = v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for OfferButtonDesign(0);
  MEMORY[0x28223BE20](v63);
  v15 = (v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = type metadata accessor for OfferButtonDesign.Metrics(0);
  MEMORY[0x28223BE20](v16 - 8);
  v66 = v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2341E8, &qword_24F9B2470);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = v62 - v19;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2341F0, &qword_24F9B2478);
  MEMORY[0x28223BE20](v67);
  v71 = v62 - v21;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2341F8, &qword_24F9B2480);
  MEMORY[0x28223BE20](v77);
  v76 = v62 - v22;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234200, &qword_24F9B2488);
  v80 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v78 = v62 - v23;
  v68 = v20;
  sub_24EF31D54(v1, v20);
  v24 = type metadata accessor for OfferButtonView.OfferButton(0);
  v86 = v15;
  sub_24F769CA8(v15);
  v62[1] = *(v24 + 20);
  sub_24F769788(v11);
  v79 = v1;
  v25 = *(v1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v87 = v25;
  sub_24F923098();

  v26 = v98;
  v27 = v99;
  v28 = v100;
  v29 = DWORD2(v100) | (WORD6(v100) << 32);
  v30 = BYTE14(v100);
  if ((BYTE14(v100) | 2) == 2)
  {

    v31 = sub_24F92B228();
  }

  else
  {
    v31 = 0;
  }

  sub_24EEFE350(v26, *(&v26 + 1), v27, *(&v27 + 1), v28, v29, v30);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  v32 = v97 != 0;
  sub_24EEFE350(v92, *(&v92 + 1), v93, *(&v93 + 1), v94, v95 | (v96 << 32), v97);
  v33 = v75;
  (*(v75 + 32))(v13, v11, v88);
  v34 = v64;
  v13[*(v64 + 20)] = 8;
  *&v13[*(v34 + 24)] = v31;
  v13[*(v34 + 28)] = v32;
  v35 = *v86;
  v36 = v65;
  sub_24EF36FC8(v86 + *(v63 + 20), v65, type metadata accessor for OfferButtonDesign.Size);
  v37 = v72;
  v38 = v74;
  if ((*(v72 + 48))(v36, 1, v74) == 1)
  {
    v39 = v69;
    (*(v37 + 104))(v69, *MEMORY[0x277CDF440], v38);
    v40 = *(v37 + 32);
  }

  else
  {
    v41 = v36;
    v40 = *(v37 + 32);
    v39 = v69;
    v40(v69, v41, v38);
  }

  v42 = v70;
  v40(v70, v39, v38);
  v43 = v66;
  v35(v13, v42);
  (*(v37 + 8))(v42, v38);
  sub_24EF37030(v13, type metadata accessor for OfferButtonDesign.Context);
  sub_24EF37030(v86, type metadata accessor for OfferButtonDesign);
  sub_24EF37030(v43, type metadata accessor for OfferButtonDesign.Metrics);
  v44 = v73;
  sub_24F769788(v73);
  v45 = v87;
  sub_24EEFAD30(v44);
  (*(v33 + 8))(v44, v88);
  sub_24F9238C8();
  v46 = v71;
  sub_24E6009C8(v68, v71, &qword_27F2341E8, &qword_24F9B2470);
  v47 = (v46 + *(v67 + 36));
  v48 = v99;
  *v47 = v98;
  v47[1] = v48;
  v47[2] = v100;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  LOBYTE(v43) = v92;
  KeyPath = swift_getKeyPath();
  v50 = swift_allocObject();
  *(v50 + 16) = v43;
  v51 = v76;
  sub_24E6009C8(v46, v76, &qword_27F2341F0, &qword_24F9B2478);
  v52 = v77;
  v53 = (v51 + *(v77 + 36));
  *v53 = KeyPath;
  v53[1] = sub_24E600A48;
  v53[2] = v50;
  v92 = 0u;
  v93 = 0u;
  memset(v91, 0, sizeof(v91));
  v54 = v82;
  sub_24F9297B8();
  sub_24E601704(v91, &qword_27F2129B0, &unk_24F945320);
  sub_24E601704(&v92, &qword_27F2129B0, &unk_24F945320);
  v55 = sub_24EF37D08();
  v56 = v78;
  sub_24F925EE8();
  (*(v83 + 8))(v54, v84);
  sub_24E601704(v51, &qword_27F2341F8, &qword_24F9B2480);
  v57 = (v45 + OBJC_IVAR____TtC12GameStoreKit20OfferButtonViewModel_accessibilityOfferButtonString);
  swift_beginAccess();
  if (v57[1])
  {
    v58 = *v57;
    v59 = v57[1];
  }

  else
  {
    v58 = 0;
    v59 = 0xE000000000000000;
  }

  *&v91[0] = v58;
  *(&v91[0] + 1) = v59;

  v89 = v52;
  v90 = v55;
  swift_getOpaqueTypeConformance2();
  sub_24E600AEC();
  v60 = v81;
  sub_24F926538();

  return (*(v80 + 8))(v56, v60);
}

uint64_t sub_24EF31D54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v158 = a2;
  v159 = type metadata accessor for OfferButtonView.ProgressButton(0);
  MEMORY[0x28223BE20](v159);
  v135 = (&v131 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v4);
  v137 = &v131 - v5;
  v143 = type metadata accessor for OfferButtonView.IndeterminateProgressButton(0);
  MEMORY[0x28223BE20](v143);
  v138 = (&v131 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234270, &qword_24F9B2540);
  MEMORY[0x28223BE20](v139);
  v141 = &v131 - v7;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234258, &unk_24F9B2530);
  MEMORY[0x28223BE20](v153);
  v144 = &v131 - v8;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234278, &qword_24F9B2548);
  MEMORY[0x28223BE20](v155);
  v157 = &v131 - v9;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234280, &qword_24F9B2550);
  MEMORY[0x28223BE20](v150);
  v152 = &v131 - v10;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234288, &unk_24F9B2558);
  MEMORY[0x28223BE20](v140);
  v142 = &v131 - v11;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234248, &unk_24F9B2520);
  MEMORY[0x28223BE20](v151);
  v13 = &v131 - v12;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234238, &qword_24F9B2518);
  MEMORY[0x28223BE20](v156);
  v154 = &v131 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216C78, &qword_24F943EE0);
  v145 = *(v15 - 8);
  MEMORY[0x28223BE20](v15 - 8);
  v160 = (&v131 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v146 = v16;
  MEMORY[0x28223BE20](v17);
  v148 = (&v131 - v18);
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216C80, &qword_24F943EE8);
  MEMORY[0x28223BE20](v149);
  v20 = (&v131 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v21);
  v136 = &v131 - v22;
  MEMORY[0x28223BE20](v23);
  v25 = (&v131 - v24);
  MEMORY[0x28223BE20](v26);
  v28 = &v131 - v27;
  MEMORY[0x28223BE20](v29);
  v31 = (&v131 - v30);
  MEMORY[0x28223BE20](v32);
  v34 = &v131 - v33;
  v147 = a1;
  v35 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v36 = v35;
  sub_24F923098();

  v37 = v167;
  v38 = v168;
  if (v169 <= 1u)
  {
    v141 = v34;
    v143 = v28;
    v137 = v164;
    v138 = v165;
    v144 = v13;
    if (!v169)
    {

      swift_getKeyPath();
      swift_getKeyPath();
      sub_24F923098();

      v143 = v161;
      if (v161)
      {
        v139 = type metadata accessor for Action(0);
        v136 = sub_24EF36D04(&qword_27F216DE8, type metadata accessor for Action, &protocol conformance descriptor for Action);
      }

      else
      {
        v136 = 0;
        v139 = 0;
      }

      v85 = type metadata accessor for CapsuleButtonContent.Symbol(0);
      (*(*(v85 - 8) + 56))(v148, 1, 1, v85);
      sub_24EF30F18(v160);
      LODWORD(v147) = *(v35 + OBJC_IVAR____TtC12GameStoreKit20OfferButtonViewModel_placement);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_24F923098();

      v86 = v161;
      v87 = v162;
      v134 = v161;
      v133 = v162;
      v88 = v163;
      v135 = v163;
      v89 = swift_allocObject();
      v89[2] = v86;
      v89[3] = v87;
      v89[4] = v88;
      v90 = *(v145 + 80);
      v91 = (v90 + 16) & ~v90;
      v92 = (v146 + v91 + 7) & 0xFFFFFFFFFFFFFFF8;
      v93 = (v90 + 16 + v92) & ~v90;
      v94 = v93 + v146;
      v95 = (v93 + v146) & 0xFFFFFFFFFFFFFFF8;
      v96 = swift_allocObject();
      sub_24E6009C8(v148, v96 + v91, &qword_27F216C78, &qword_24F943EE0);
      v97 = (v96 + v92);
      v98 = v138;
      *v97 = v137;
      v97[1] = v98;
      sub_24E6009C8(v160, v96 + v93, &qword_27F216C78, &qword_24F943EE0);
      *(v96 + v94) = v147;
      v99 = (v96 + v95);
      v100 = v134;
      v101 = v133;
      v99[1] = v134;
      v99[2] = v101;
      v102 = v135;
      v99[3] = v135;
      v103 = *(v149 + 44);
      *(v31 + v103) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216950, &unk_24F943F20);
      swift_storeEnumTagMultiPayload();
      *v31 = v143;
      v31[1] = 0;
      v104 = v139;
      v31[2] = 0;
      v31[3] = v104;
      v31[4] = v136;
      v31[5] = sub_24EF3A5E8;
      v31[6] = v96;
      v31[7] = sub_24E6910A4;
      v31[8] = v89;
      v105 = v141;
      sub_24E6009C8(v31, v141, &qword_27F216C80, &qword_24F943EE8);
      sub_24E60169C(v105, v142, &qword_27F216C80, &qword_24F943EE8);
      swift_storeEnumTagMultiPayload();
      sub_24E969B2C(v100, v101, v102);
      sub_24E602068(&qword_27F216C90, &qword_27F216C80, &qword_24F943EE8, &unk_24F96B7D8);
      v106 = v144;
      sub_24F924E28();
      sub_24E60169C(v106, v152, &qword_27F234248, &unk_24F9B2520);
      swift_storeEnumTagMultiPayload();
      sub_24EF37FB8();
      sub_24EF38068();
      v107 = v154;
      sub_24F924E28();
      sub_24E601704(v106, &qword_27F234248, &unk_24F9B2520);
      sub_24E60169C(v107, v157, &qword_27F234238, &qword_24F9B2518);
      swift_storeEnumTagMultiPayload();
      sub_24EF37F2C();
      sub_24EF36D04(&qword_27F234268, type metadata accessor for OfferButtonView.ProgressButton, &unk_24F9B2658);
      sub_24F924E28();
      sub_24E601704(v107, &qword_27F234238, &qword_24F9B2518);
      v108 = v105;
      return sub_24E601704(v108, &qword_27F216C80, &qword_24F943EE8);
    }

    v59 = v166;

    swift_getKeyPath();
    swift_getKeyPath();
    sub_24F923098();

    v141 = v161;
    if (v161)
    {
      v139 = type metadata accessor for Action(0);
      v136 = sub_24EF36D04(&qword_27F216DE8, type metadata accessor for Action, &protocol conformance descriptor for Action);
    }

    else
    {
      v139 = 0;
      v136 = 0;
    }

    v109 = type metadata accessor for CapsuleButtonContent.Symbol(0);
    v110 = v148;
    sub_24F923D28();
    v111 = v138;
    *v110 = v137;
    v110[1] = v111;
    *(v110 + *(v109 + 24)) = v59;
    (*(*(v109 - 8) + 56))(v110, 0, 1, v109);
    sub_24EF30F18(v160);
    LODWORD(v147) = *(v35 + OBJC_IVAR____TtC12GameStoreKit20OfferButtonViewModel_placement);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_24F923098();

    v112 = v161;
    v113 = v162;
    v137 = v161;
    v135 = v162;
    v114 = v163;
    v138 = v163;
    v115 = swift_allocObject();
    v115[2] = v112;
    v115[3] = v113;
    v115[4] = v114;
    v116 = *(v145 + 80);
    v117 = (v116 + 16) & ~v116;
    v118 = (v146 + v117 + 7) & 0xFFFFFFFFFFFFFFF8;
    v119 = (v116 + 16 + v118) & ~v116;
    v120 = v119 + v146;
    v121 = (v119 + v146) & 0xFFFFFFFFFFFFFFF8;
    v122 = swift_allocObject();
    sub_24E6009C8(v110, v122 + v117, &qword_27F216C78, &qword_24F943EE0);
    v123 = (v122 + v118);
    *v123 = 0;
    v123[1] = 0;
    sub_24E6009C8(v160, v122 + v119, &qword_27F216C78, &qword_24F943EE0);
    *(v122 + v120) = v147;
    v124 = (v122 + v121);
    v125 = v137;
    v126 = v135;
    v124[1] = v137;
    v124[2] = v126;
    v127 = v138;
    v124[3] = v138;
    v128 = *(v149 + 44);
    *(v25 + v128) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216950, &unk_24F943F20);
    swift_storeEnumTagMultiPayload();
    *v25 = v141;
    v25[1] = 0;
    v129 = v139;
    v25[2] = 0;
    v25[3] = v129;
    v25[4] = v136;
    v25[5] = sub_24EF3A5E8;
    v25[6] = v122;
    v25[7] = sub_24E6910A4;
    v25[8] = v115;
    v81 = v143;
    sub_24E6009C8(v25, v143, &qword_27F216C80, &qword_24F943EE8);
    sub_24E60169C(v81, v142, &qword_27F216C80, &qword_24F943EE8);
    swift_storeEnumTagMultiPayload();
    sub_24E969B2C(v125, v126, v127);
    sub_24E602068(&qword_27F216C90, &qword_27F216C80, &qword_24F943EE8, &unk_24F96B7D8);
    v82 = v144;
    sub_24F924E28();
    v83 = &qword_27F234248;
    v84 = &unk_24F9B2520;
    sub_24E60169C(v82, v152, &qword_27F234248, &unk_24F9B2520);
LABEL_22:
    swift_storeEnumTagMultiPayload();
    sub_24EF37FB8();
    sub_24EF38068();
    v130 = v154;
    sub_24F924E28();
    sub_24E601704(v82, v83, v84);
    sub_24E60169C(v130, v157, &qword_27F234238, &qword_24F9B2518);
    swift_storeEnumTagMultiPayload();
    sub_24EF37F2C();
    sub_24EF36D04(&qword_27F234268, type metadata accessor for OfferButtonView.ProgressButton, &unk_24F9B2658);
    sub_24F924E28();
    sub_24E601704(v130, &qword_27F234238, &qword_24F9B2518);
    v108 = v81;
    return sub_24E601704(v108, &qword_27F216C80, &qword_24F943EE8);
  }

  if (v169 == 2)
  {
    v48 = v166;
    v137 = v164;
    v138 = v165;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_24F923098();

    v142 = v161;
    if (v161)
    {
      v140 = type metadata accessor for Action(0);
      v135 = sub_24EF36D04(&qword_27F216DE8, type metadata accessor for Action, &protocol conformance descriptor for Action);
    }

    else
    {
      v140 = 0;
      v135 = 0;
    }

    v60 = type metadata accessor for CapsuleButtonContent.Symbol(0);
    v61 = v148;
    sub_24F923D28();
    *v61 = v48;
    v61[1] = v37;
    *(v61 + *(v60 + 24)) = v38;
    (*(*(v60 - 8) + 56))(v61, 0, 1, v60);
    sub_24EF30F18(v160);
    LODWORD(v147) = *(v36 + OBJC_IVAR____TtC12GameStoreKit20OfferButtonViewModel_placement);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_24F923098();

    v62 = v161;
    v63 = v162;
    v133 = v161;
    v132 = v162;
    v64 = v163;
    v134 = v163;
    v65 = swift_allocObject();
    v65[2] = v62;
    v65[3] = v63;
    v65[4] = v64;
    v66 = *(v145 + 80);
    v67 = (v66 + 16) & ~v66;
    v68 = (v146 + v67 + 7) & 0xFFFFFFFFFFFFFFF8;
    v69 = (v66 + 16 + v68) & ~v66;
    v70 = v69 + v146;
    v71 = (v69 + v146) & 0xFFFFFFFFFFFFFFF8;
    v72 = swift_allocObject();
    sub_24E6009C8(v61, v72 + v67, &qword_27F216C78, &qword_24F943EE0);
    v73 = (v72 + v68);
    v74 = v138;
    *v73 = v137;
    v73[1] = v74;
    sub_24E6009C8(v160, v72 + v69, &qword_27F216C78, &qword_24F943EE0);
    *(v72 + v70) = v147;
    v75 = (v72 + v71);
    v76 = v133;
    v77 = v132;
    v75[1] = v133;
    v75[2] = v77;
    v78 = v134;
    v75[3] = v134;
    v79 = *(v149 + 44);
    *(v20 + v79) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216950, &unk_24F943F20);
    swift_storeEnumTagMultiPayload();
    *v20 = v142;
    v20[1] = 0;
    v80 = v140;
    v20[2] = 0;
    v20[3] = v80;
    v20[4] = v135;
    v20[5] = sub_24E68FFB4;
    v20[6] = v72;
    v20[7] = sub_24E68FFA8;
    v20[8] = v65;
    v81 = v136;
    sub_24E6009C8(v20, v136, &qword_27F216C80, &qword_24F943EE8);
    sub_24E60169C(v81, v141, &qword_27F216C80, &qword_24F943EE8);
    swift_storeEnumTagMultiPayload();
    sub_24E969B2C(v76, v77, v78);
    sub_24E602068(&qword_27F216C90, &qword_27F216C80, &qword_24F943EE8, &unk_24F96B7D8);
    sub_24EF36D04(&qword_27F234260, type metadata accessor for OfferButtonView.IndeterminateProgressButton, &unk_24F9B26A8);
    v82 = v144;
    sub_24F924E28();
    v83 = &qword_27F234258;
    v84 = &unk_24F9B2530;
    sub_24E60169C(v82, v152, &qword_27F234258, &unk_24F9B2530);
    goto LABEL_22;
  }

  if (v169 == 3)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_24F923098();

    v39 = v138;
    *v138 = v161;
    v40 = v143;
    v41 = *(v143 + 5);
    *(v39 + v41) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B398, &qword_24F96B8D0);
    swift_storeEnumTagMultiPayload();
    v42 = *(v40 + 24);
    *(v39 + v42) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898, &unk_24F944150);
    swift_storeEnumTagMultiPayload();
    v43 = *(v40 + 28);
    *(v39 + v43) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216DB8, &unk_24F96B930);
    swift_storeEnumTagMultiPayload();
    sub_24EF36FC8(v39, v141, type metadata accessor for OfferButtonView.IndeterminateProgressButton);
    swift_storeEnumTagMultiPayload();
    sub_24E602068(&qword_27F216C90, &qword_27F216C80, &qword_24F943EE8, &unk_24F96B7D8);
    sub_24EF36D04(&qword_27F234260, type metadata accessor for OfferButtonView.IndeterminateProgressButton, &unk_24F9B26A8);
    v44 = v144;
    sub_24F924E28();
    sub_24E60169C(v44, v152, &qword_27F234258, &unk_24F9B2530);
    swift_storeEnumTagMultiPayload();
    sub_24EF37FB8();
    sub_24EF38068();
    v45 = v154;
    sub_24F924E28();
    sub_24E601704(v44, &qword_27F234258, &unk_24F9B2530);
    sub_24E60169C(v45, v157, &qword_27F234238, &qword_24F9B2518);
    swift_storeEnumTagMultiPayload();
    sub_24EF37F2C();
    sub_24EF36D04(&qword_27F234268, type metadata accessor for OfferButtonView.ProgressButton, &unk_24F9B2658);
    sub_24F924E28();
    sub_24E601704(v45, &qword_27F234238, &qword_24F9B2518);
    v46 = type metadata accessor for OfferButtonView.IndeterminateProgressButton;
    v47 = v39;
  }

  else
  {
    v49 = BYTE6(v165);
    v50 = v164;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_24F923098();

    v51 = 15.0;
    if (*(v35 + OBJC_IVAR____TtC12GameStoreKit20OfferButtonViewModel_placement) == 1)
    {
      v51 = 10.0;
    }

    v52 = v135;
    *v135 = v161;
    *(v52 + 8) = v50;
    *(v52 + 16) = v51;
    *(v52 + 24) = v49 & 1;
    v53 = v159;
    v54 = *(v159 + 32);
    *(v52 + v54) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B398, &qword_24F96B8D0);
    swift_storeEnumTagMultiPayload();
    v55 = *(v53 + 36);
    *(v52 + v55) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898, &unk_24F944150);
    swift_storeEnumTagMultiPayload();
    v56 = *(v53 + 40);
    *(v52 + v56) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216DB8, &unk_24F96B930);
    swift_storeEnumTagMultiPayload();
    v57 = v137;
    sub_24EF38190(v52, v137, type metadata accessor for OfferButtonView.ProgressButton);
    sub_24EF36FC8(v57, v157, type metadata accessor for OfferButtonView.ProgressButton);
    swift_storeEnumTagMultiPayload();
    sub_24EF37F2C();
    sub_24EF36D04(&qword_27F234268, type metadata accessor for OfferButtonView.ProgressButton, &unk_24F9B2658);
    sub_24F924E28();
    v46 = type metadata accessor for OfferButtonView.ProgressButton;
    v47 = v57;
  }

  return sub_24EF37030(v47, v46);
}

uint64_t sub_24EF33674@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214698, &unk_24F95F810);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v43 - v5;
  v7 = sub_24F9234F8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (&v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = v1[1];
  if (v11)
  {
    v47 = *v2;
    v48 = v11;
    sub_24E600AEC();

    v12 = sub_24F925E18();
    v45 = v13;
    v46 = v12;
    v15 = v14;
    type metadata accessor for OfferButtonView.Subtitle(0);
    sub_24F76A05C(v10);
    v16 = (*(v8 + 88))(v10, v7);
    v17 = v16 == *MEMORY[0x277CDF418] || v16 == *MEMORY[0x277CDF438];
    v44 = v2;
    if (v17)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234078, &unk_24FA0C030);
      sub_24F9237D8();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234078, &unk_24FA0C030);
      sub_24F9237D8();
      (*(v8 + 8))(v10, v7);
    }

    v25 = sub_24F925908();
    (*(*(v25 - 8) + 56))(v6, 1, 1, v25);
    sub_24F925968();
    sub_24E601704(v6, &qword_27F214698, &unk_24F95F810);
    v26 = v46;
    v27 = v15;
    v28 = v45;
    v29 = sub_24F925C98();
    v31 = v30;
    v33 = v32;

    sub_24E600B40(v26, v28, v27 & 1);

    sub_24F925938();
    v34 = sub_24F925B78();
    v36 = v35;
    v38 = v37;
    sub_24E600B40(v29, v31, v33 & 1);

    if (*(v44 + 16) == 1)
    {
      v47 = sub_24F926C98();
    }

    else
    {
      LOBYTE(v47) = 1;
      sub_24ED1A304();
    }

    v47 = sub_24F9238D8();
    v18 = sub_24F925C58();
    v19 = v39;
    v41 = v40;
    v21 = v42;
    sub_24E600B40(v34, v36, v38 & 1);

    result = swift_getKeyPath();
    LOBYTE(v47) = v41 & 1;
    v49 = 0;
    v20 = v41 & 1;
    v24 = 0x10000;
    v23 = 3;
  }

  else
  {
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    result = 0;
    v23 = 0;
    v24 = 0;
  }

  *a1 = v18;
  *(a1 + 8) = v19;
  *(a1 + 16) = v20;
  *(a1 + 24) = v21;
  *(a1 + 32) = result;
  *(a1 + 40) = v23;
  *(a1 + 48) = v24;
  *(a1 + 50) = BYTE2(v24);
  return result;
}

uint64_t sub_24EF33AB4@<X0>(uint64_t a1@<X8>)
{
  v73 = a1;
  v2 = sub_24F9241F8();
  v71 = *(v2 - 8);
  v72 = v2;
  MEMORY[0x28223BE20](v2);
  v70 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OfferButtonView.IndeterminateProgressButton(0);
  v57 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v58 = v5;
  v59 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254FA0, &unk_24F945290);
  MEMORY[0x28223BE20](v6 - 8);
  v60 = &v54 - v7;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2342E0, &qword_24F9B2700);
  v67 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v65 = &v54 - v8;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2342E8, &qword_24F9B2708);
  v66 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v64 = &v54 - v9;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2342F0, &qword_24F9B2710);
  MEMORY[0x28223BE20](v62);
  v63 = &v54 - v10;
  v11 = type metadata accessor for OfferButtonDesign.Size(0);
  MEMORY[0x28223BE20](v11 - 8);
  v55 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24F9234F8();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v74 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v56 = &v54 - v17;
  v18 = type metadata accessor for OfferButtonDesign.Context(0);
  v19 = (v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = (&v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = type metadata accessor for OfferButtonDesign(0);
  v23 = v22 - 8;
  MEMORY[0x28223BE20](v22);
  v25 = (&v54 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = type metadata accessor for OfferButtonDesign.Metrics(0);
  MEMORY[0x28223BE20](v26 - 8);
  v28 = (&v54 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_24F769CA8(v25);
  v29 = v55;
  v61 = v1;
  sub_24F769788(v21);
  *(v21 + v19[7]) = 8;
  *(v21 + v19[8]) = 0;
  *(v21 + v19[9]) = 1;
  v30 = *v25;
  sub_24EF36FC8(v25 + *(v23 + 28), v29, type metadata accessor for OfferButtonDesign.Size);
  if ((*(v14 + 48))(v29, 1, v13) == 1)
  {
    (*(v14 + 104))(v74, *MEMORY[0x277CDF440], v13);
    v31 = *(v14 + 32);
  }

  else
  {
    v31 = *(v14 + 32);
    v31(v74, v29, v13);
  }

  v32 = v56;
  v31(v56, v74, v13);
  v30(v21, v32);
  (*(v14 + 8))(v32, v13);
  sub_24EF37030(v21, type metadata accessor for OfferButtonDesign.Context);
  sub_24EF37030(v25, type metadata accessor for OfferButtonDesign);
  v33 = *v28;
  sub_24EF37030(v28, type metadata accessor for OfferButtonDesign.Metrics);
  v34 = sub_24F9232F8();
  (*(*(v34 - 8) + 56))(v60, 1, 1, v34);
  v35 = v61;
  v36 = *v61;
  if (*v61)
  {
    v37 = type metadata accessor for Action(0);
    v38 = sub_24EF36D04(&qword_27F216DE8, type metadata accessor for Action, &protocol conformance descriptor for Action);
  }

  else
  {
    v37 = 0;
    v38 = 0;
    *(&v75 + 1) = 0;
    *&v76 = 0;
  }

  *&v75 = v36;
  *(&v76 + 1) = v37;
  *&v77 = v38;
  v39 = v59;
  sub_24EF36FC8(v35, v59, type metadata accessor for OfferButtonView.IndeterminateProgressButton);
  v40 = (*(v57 + 80) + 24) & ~*(v57 + 80);
  v41 = swift_allocObject();
  *(v41 + 16) = v33;
  sub_24EF38190(v39, v41 + v40, type metadata accessor for OfferButtonView.IndeterminateProgressButton);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2342F8, &qword_24F9B2718);
  sub_24EF390D0();
  v42 = v65;
  sub_24F921788();
  v43 = v70;
  sub_24F9241E8();
  sub_24E602068(&qword_27F234310, &qword_27F2342E0, &qword_24F9B2700, MEMORY[0x277D7EB00]);
  sub_24EF36D04(&qword_27F212838, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
  v44 = v64;
  v45 = v69;
  v46 = v72;
  sub_24F926178();
  (*(v71 + 8))(v43, v46);
  (*(v67 + 8))(v42, v45);
  sub_24F927618();
  sub_24F9238C8();
  v47 = v63;
  (*(v66 + 32))(v63, v44, v68);
  v48 = &v47[*(v62 + 36)];
  v49 = v76;
  *v48 = v75;
  *(v48 + 1) = v49;
  *(v48 + 2) = v77;
  v50 = v47;
  v51 = v73;
  sub_24E6009C8(v50, v73, &qword_27F2342F0, &qword_24F9B2710);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234318, &qword_24F9B2720);
  v53 = v51 + *(result + 36);
  *v53 = 0x4020000000000000;
  *(v53 + 8) = 1;
  return result;
}

uint64_t sub_24EF34438@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v4 = sub_24EF3454C();
  sub_24F926F28();
  *a1 = v17;
  *(a1 + 8) = v18;
  v5 = *(type metadata accessor for IndeterminateProgressSpinner(0) + 28);
  *(a1 + v5) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90, &qword_24F93E920);
  swift_storeEnumTagMultiPayload();
  *(a1 + 16) = a2;
  *(a1 + 24) = v4;
  sub_24EF3454C();
  v6 = sub_24F925808();
  sub_24F923318();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2342F8, &qword_24F9B2718);
  v16 = a1 + *(result + 36);
  *v16 = v6;
  *(v16 + 8) = v8;
  *(v16 + 16) = v10;
  *(v16 + 24) = v12;
  *(v16 + 32) = v14;
  *(v16 + 40) = 0;
  return result;
}

double sub_24EF3454C()
{
  v1 = sub_24F924848();
  v19 = *(v1 - 8);
  v20 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B398, &qword_24F96B8D0);
  MEMORY[0x28223BE20](v4);
  v6 = &v19 - v5;
  v7 = sub_24F9234F8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v19 - v12;
  v14 = type metadata accessor for OfferButtonView.IndeterminateProgressButton(0);
  sub_24E60169C(v0 + *(v14 + 20), v6, &qword_27F21B398, &qword_24F96B8D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = *(v8 + 32);
    v15(v13, v6, v7);
  }

  else
  {
    sub_24F92BDC8();
    v16 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();

    (*(v19 + 8))(v3, v20);
    v15 = *(v8 + 32);
  }

  v15(v10, v13, v7);
  v17 = (*(v8 + 88))(v10, v7);
  result = 3.0;
  if (v17 != *MEMORY[0x277CDF418] && v17 != *MEMORY[0x277CDF438])
  {
    result = 4.0;
    if (v17 != *MEMORY[0x277CDF440] && v17 != *MEMORY[0x277CDF420] && v17 != *MEMORY[0x277CDF410])
    {
      (*(v8 + 8))(v10, v7, 4.0);
      return 4.0;
    }
  }

  return result;
}

uint64_t sub_24EF34898@<X0>(uint64_t a1@<X8>)
{
  v74 = a1;
  v2 = sub_24F9241F8();
  v72 = *(v2 - 8);
  v73 = v2;
  MEMORY[0x28223BE20](v2);
  v71 = &v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OfferButtonView.ProgressButton(0);
  v58 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v59 = v5;
  v60 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254FA0, &unk_24F945290);
  MEMORY[0x28223BE20](v6 - 8);
  v61 = &v55 - v7;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234320, &qword_24F9B2760);
  v68 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v66 = &v55 - v8;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234328, &qword_24F9B2768);
  v67 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v65 = &v55 - v9;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234330, &qword_24F9B2770);
  MEMORY[0x28223BE20](v63);
  v64 = &v55 - v10;
  v11 = type metadata accessor for OfferButtonDesign.Size(0);
  MEMORY[0x28223BE20](v11 - 8);
  v56 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24F9234F8();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v75 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v57 = &v55 - v17;
  v18 = type metadata accessor for OfferButtonDesign.Context(0);
  v19 = (v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = (&v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = type metadata accessor for OfferButtonDesign(0);
  v23 = v22 - 8;
  MEMORY[0x28223BE20](v22);
  v25 = (&v55 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = type metadata accessor for OfferButtonDesign.Metrics(0);
  MEMORY[0x28223BE20](v26 - 8);
  v28 = (&v55 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_24F769CA8(v25);
  v29 = v56;
  v62 = v1;
  sub_24F769788(v21);
  *(v21 + v19[7]) = 8;
  *(v21 + v19[8]) = 0;
  *(v21 + v19[9]) = 1;
  v30 = *v25;
  sub_24EF36FC8(v25 + *(v23 + 28), v29, type metadata accessor for OfferButtonDesign.Size);
  if ((*(v14 + 48))(v29, 1, v13) == 1)
  {
    (*(v14 + 104))(v75, *MEMORY[0x277CDF440], v13);
    v31 = *(v14 + 32);
  }

  else
  {
    v31 = *(v14 + 32);
    v31(v75, v29, v13);
  }

  v32 = v57;
  v31(v57, v75, v13);
  v30(v21, v32);
  (*(v14 + 8))(v32, v13);
  sub_24EF37030(v21, type metadata accessor for OfferButtonDesign.Context);
  sub_24EF37030(v25, type metadata accessor for OfferButtonDesign);
  v33 = *v28;
  sub_24EF37030(v28, type metadata accessor for OfferButtonDesign.Metrics);
  v34 = sub_24F9232F8();
  (*(*(v34 - 8) + 56))(v61, 1, 1, v34);
  v35 = v62;
  v36 = *v62;
  if (*v62)
  {
    v37 = type metadata accessor for Action(0);
    v38 = sub_24EF36D04(&qword_27F216DE8, type metadata accessor for Action, &protocol conformance descriptor for Action);
  }

  else
  {
    v37 = 0;
    v38 = 0;
    *(&v76 + 1) = 0;
    *&v77 = 0;
  }

  *&v76 = v36;
  *(&v77 + 1) = v37;
  *&v78 = v38;
  v39 = v60;
  sub_24EF36FC8(v35, v60, type metadata accessor for OfferButtonView.ProgressButton);
  v40 = (*(v58 + 80) + 16) & ~*(v58 + 80);
  v41 = (v59 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
  v42 = swift_allocObject();
  sub_24EF38190(v39, v42 + v40, type metadata accessor for OfferButtonView.ProgressButton);
  *(v42 + v41) = v33;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234338, &qword_24F9B2778);
  sub_24EF394B4();
  v43 = v66;
  sub_24F921788();
  v44 = v71;
  sub_24F9241E8();
  sub_24E602068(&qword_27F234350, &qword_27F234320, &qword_24F9B2760, MEMORY[0x277D7EB00]);
  sub_24EF36D04(&qword_27F212838, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
  v45 = v65;
  v46 = v70;
  v47 = v73;
  sub_24F926178();
  (*(v72 + 8))(v44, v47);
  (*(v68 + 8))(v43, v46);
  sub_24F927618();
  sub_24F9238C8();
  v48 = v64;
  (*(v67 + 32))(v64, v45, v69);
  v49 = &v48[*(v63 + 36)];
  v50 = v77;
  *v49 = v76;
  *(v49 + 1) = v50;
  *(v49 + 2) = v78;
  v51 = v48;
  v52 = v74;
  sub_24E6009C8(v51, v74, &qword_27F234330, &qword_24F9B2770);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234358, &unk_24F9B2780);
  v54 = v52 + *(result + 36);
  *v54 = 0x4020000000000000;
  *(v54 + 8) = 1;
  return result;
}

uint64_t sub_24EF35228@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v4 = a1;
  v6 = *(a1 + 8);
  v7 = sub_24EF35334();
  v8 = sub_24EF3567C();
  v9 = *(v4 + 16);
  v10 = *(v4 + 24);
  v11 = *(type metadata accessor for ProgressSpinner(0) + 40);
  *(a2 + v11) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90, &qword_24F93E920);
  swift_storeEnumTagMultiPayload();
  *a2 = v6;
  *(a2 + 8) = a3;
  *(a2 + 16) = v7;
  *(a2 + 24) = v8;
  *(a2 + 32) = v9;
  *(a2 + 40) = v10;
  sub_24EF35334();
  LOBYTE(v4) = sub_24F925808();
  sub_24F923318();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234338, &qword_24F9B2778);
  v21 = a2 + *(result + 36);
  *v21 = v4;
  *(v21 + 8) = v13;
  *(v21 + 16) = v15;
  *(v21 + 24) = v17;
  *(v21 + 32) = v19;
  *(v21 + 40) = 0;
  return result;
}

double sub_24EF35334()
{
  v1 = sub_24F924848();
  v19 = *(v1 - 8);
  v20 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B398, &qword_24F96B8D0);
  MEMORY[0x28223BE20](v4);
  v6 = &v19 - v5;
  v7 = sub_24F9234F8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v19 - v12;
  v14 = type metadata accessor for OfferButtonView.ProgressButton(0);
  sub_24E60169C(v0 + *(v14 + 32), v6, &qword_27F21B398, &qword_24F96B8D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = *(v8 + 32);
    v15(v13, v6, v7);
  }

  else
  {
    sub_24F92BDC8();
    v16 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();

    (*(v19 + 8))(v3, v20);
    v15 = *(v8 + 32);
  }

  v15(v10, v13, v7);
  v17 = (*(v8 + 88))(v10, v7);
  result = 3.0;
  if (v17 != *MEMORY[0x277CDF418] && v17 != *MEMORY[0x277CDF438])
  {
    result = 4.0;
    if (v17 != *MEMORY[0x277CDF440] && v17 != *MEMORY[0x277CDF420] && v17 != *MEMORY[0x277CDF410])
    {
      (*(v8 + 8))(v10, v7, 4.0);
      return 4.0;
    }
  }

  return result;
}

double sub_24EF3567C()
{
  v16 = sub_24F924848();
  v1 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B398, &qword_24F96B8D0);
  MEMORY[0x28223BE20](v4);
  v6 = &v15 - v5;
  v7 = sub_24F9234F8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for OfferButtonView.ProgressButton(0);
  sub_24E60169C(v0 + *(v11 + 32), v6, &qword_27F21B398, &qword_24F96B8D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v8 + 32))(v10, v6, v7);
  }

  else
  {
    sub_24F92BDC8();
    v12 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();

    (*(v1 + 8))(v3, v16);
  }

  v13 = (*(v8 + 88))(v10, v7);
  result = 5.0;
  if (v13 != *MEMORY[0x277CDF418])
  {
    result = 8.0;
    if (v13 != *MEMORY[0x277CDF438])
    {
      result = 12.0;
      if (v13 != *MEMORY[0x277CDF440])
      {
        result = 14.0;
        if (v13 != *MEMORY[0x277CDF420] && v13 != *MEMORY[0x277CDF410])
        {
          (*(v8 + 8))(v10, v7, 14.0);
          return 12.0;
        }
      }
    }
  }

  return result;
}

void sub_24EF35994(uint64_t a1@<X8>)
{
  sub_24F923658();
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[3];
  v6 = v1[2];

  sub_24F9278A8();
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v9;
  *(a1 + 32) = v10;
  *(a1 + 48) = v11;
  *(a1 + 56) = v5;
  *(a1 + 64) = 256;
  *(a1 + 72) = v6;
  *(a1 + 80) = v7;
  *(a1 + 88) = v8;
}

uint64_t sub_24EF35A74@<X0>(void *a1@<X8>)
{
  v3 = sub_24F924848();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90, &qword_24F93E920);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for IndeterminateProgressSpinner(0);
  sub_24E60169C(v1 + *(v10 + 28), v9, &qword_27F214D90, &qword_24F93E920);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_24F923F78();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_24F92BDC8();
    v13 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

double sub_24EF35C7C@<D0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for IndeterminateProgressSpinner(0);
  v33 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v34 = v4;
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24F923F78();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = (&v29 - v10);
  v13 = *(v1 + 8);
  v40 = *v1;
  v12 = v40;
  v41 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220, &qword_24F93F6B0);
  sub_24F926F38();
  v31 = v39;
  v32 = _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  v14 = *(v1 + 24);
  sub_24F927618();
  sub_24F9238C8();
  sub_24EF35A74(v11);
  (*(v6 + 104))(v8, *MEMORY[0x277CDFA90], v5);
  v30 = sub_24F923F68();
  v15 = *(v6 + 8);
  v15(v8, v5);
  v15(v11, v5);
  sub_24F9278A8();
  v17 = v16;
  v19 = v18;
  v40 = v12;
  v41 = v13;
  sub_24F926F38();
  v20 = 0;
  if (v39 == 1)
  {
    sub_24F9276B8();
    v20 = sub_24F927658();
  }

  if (v30)
  {
    v21 = -1.0;
  }

  else
  {
    v21 = 1.0;
  }

  if (v31)
  {
    v22 = 6.28318531;
  }

  else
  {
    v22 = 0.0;
  }

  v40 = v12;
  v41 = v13;
  sub_24F926F38();
  v23 = v39;
  v24 = v35;
  sub_24EF36FC8(v1, v35, type metadata accessor for IndeterminateProgressSpinner);
  v25 = (*(v33 + 80) + 16) & ~*(v33 + 80);
  v26 = swift_allocObject();
  sub_24EF38190(v24, v26 + v25, type metadata accessor for IndeterminateProgressSpinner);
  *a1 = xmmword_24F9B2010;
  *(a1 + 16) = v22;
  *(a1 + 24) = v32;
  *(a1 + 32) = v14;
  v27 = v37;
  *(a1 + 40) = v36;
  *(a1 + 56) = v27;
  result = v38[0];
  *(a1 + 72) = *v38;
  *(a1 + 88) = v21;
  *(a1 + 96) = 0x3FF0000000000000;
  *(a1 + 104) = v17;
  *(a1 + 112) = v19;
  *(a1 + 120) = v20;
  *(a1 + 128) = v23;
  *(a1 + 136) = sub_24EF3A030;
  *(a1 + 144) = v26;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  return result;
}

uint64_t sub_24EF360A8@<X0>(void *a1@<X8>)
{
  v3 = sub_24F924848();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90, &qword_24F93E920);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for ProgressSpinner(0);
  sub_24E60169C(v1 + *(v10 + 40), v9, &qword_27F214D90, &qword_24F93E920);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_24F923F78();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_24F92BDC8();
    v13 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

double sub_24EF362B0@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_24F923F78();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v22 - v8;
  sub_24EF360A8((&v22 - v8));
  (*(v4 + 104))(v6, *MEMORY[0x277CDFA90], v3);
  v10 = sub_24F923F68();
  v11 = *(v4 + 8);
  v11(v6, v3);
  v11(v9, v3);
  if (v10)
  {
    v12 = 1.57079633;
  }

  else
  {
    v12 = -1.57079633;
  }

  v13 = sub_24F9276B8();
  v14 = sub_24F927618();
  v16 = v15;
  sub_24EF3656C(v1, &v34, v12);
  v29 = v39;
  v30 = v40;
  v31 = v41;
  v24 = v34;
  v25 = v35;
  v26 = v36;
  v27 = v37;
  v28 = v38;
  v32[0] = v34;
  v32[1] = v35;
  v32[2] = v36;
  v32[3] = v37;
  v32[4] = v38;
  v32[5] = v39;
  v32[6] = v40;
  v33 = v41;
  sub_24E60169C(&v24, v23, &qword_27F2343B0, &qword_24F9B2870);
  sub_24E601704(v32, &qword_27F2343B0, &qword_24F9B2870);
  v38 = v28;
  v39 = v29;
  v40 = v30;
  v34 = v24;
  v35 = v25;
  v41 = v31;
  v36 = v26;
  v37 = v27;
  sub_24F927618();
  sub_24F9238C8();
  v17 = v39;
  *(a1 + 80) = v38;
  *(a1 + 96) = v17;
  *(a1 + 112) = v40;
  v18 = v35;
  *(a1 + 16) = v34;
  *(a1 + 32) = v18;
  v19 = v37;
  *(a1 + 48) = v36;
  *(a1 + 64) = v19;
  v20 = v23[1];
  *(a1 + 136) = v23[0];
  result = *v1;
  *a1 = v14;
  *(a1 + 8) = v16;
  *(a1 + 128) = v41;
  *(a1 + 152) = v20;
  *(a1 + 168) = v23[2];
  *(a1 + 184) = v13;
  *(a1 + 192) = result;
  return result;
}

void sub_24EF3656C(double *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214698, &unk_24F95F810);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v19 - v7;
  _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  v9 = sub_24F926D08();

  v10 = *(a1 + 2);
  if (a1[5])
  {
    v11 = 0;
    KeyPath = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
  }

  else
  {
    v11 = sub_24F926DF8();
    v13 = _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
    KeyPath = swift_getKeyPath();
    v16 = sub_24F925908();
    (*(*(v16 - 8) + 56))(v8, 1, 1, v16);
    v15 = sub_24F925968();
    sub_24E601704(v8, &qword_27F214698, &unk_24F95F810);
    v14 = swift_getKeyPath();
  }

  v17 = *a1;
  v18 = _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();

  sub_24E6DC040(v11, KeyPath, v13, v14, v15);

  sub_24E6DC0B0(v11, KeyPath, v13, v14, v15);
  *a2 = xmmword_24F98B440;
  *(a2 + 16) = a3;
  *(a2 + 24) = v9;
  *(a2 + 32) = v10;
  *(a2 + 40) = v11;
  *(a2 + 48) = KeyPath;
  *(a2 + 56) = v13;
  *(a2 + 64) = v14;
  *(a2 + 72) = v15;
  *(a2 + 80) = 0;
  *(a2 + 88) = v17;
  *(a2 + 96) = a3;
  *(a2 + 104) = v18;
  *(a2 + 112) = v10;

  sub_24E6DC0B0(v11, KeyPath, v13, v14, v15);
}

uint64_t sub_24EF367F4(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 16);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234078, &unk_24FA0C030);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0, &unk_24F943470);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B348, &qword_24F950A78);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[7];

  return v15(v16, a2, v14);
}

uint64_t sub_24EF36990(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 16) = -a2;
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234078, &unk_24FA0C030);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0, &unk_24F943470);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B348, &qword_24F950A78);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[7];

  return v15(v16, a2, a2, v14);
}

void sub_24EF36B3C(uint64_t a1)
{
  sub_24EF37558(319, &qword_27F234090, MEMORY[0x277CDF4A0]);
  if (v1 <= 0x3F)
  {
    sub_24EF36C6C(319);
    if (v2 <= 0x3F)
    {
      sub_24EF39818(319, &qword_27F2168C8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        sub_24EF39818(319, &qword_27F21B360, type metadata accessor for OfferButtonDesign, MEMORY[0x277CDF468]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_24EF36C6C(uint64_t a1)
{
  if (!qword_27F2340A0)
  {
    sub_24E62C088();
    v1 = sub_24F9237E8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F2340A0);
    }
  }
}

uint64_t sub_24EF36D04(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24EF36D4C()
{
  result = qword_27F234120;
  if (!qword_27F234120)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2340F8, &qword_24F9B2218);
    sub_24E602068(&qword_27F234118, &qword_27F234108, &qword_24F9B2228, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F234120);
  }

  return result;
}

unint64_t sub_24EF36DFC()
{
  result = qword_27F234128;
  if (!qword_27F234128)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2340D0, &qword_24F9B21F0);
    v1 = MEMORY[0x277CE1138];
    sub_24E602068(&qword_27F234130, &qword_27F2340D8, &qword_24F9B21F8, MEMORY[0x277CE1138]);
    sub_24E602068(&qword_27F234138, &qword_27F2340C0, &qword_24F9B21E0, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F234128);
  }

  return result;
}

unint64_t sub_24EF36EDC()
{
  result = qword_27F234148;
  if (!qword_27F234148)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F234100, &qword_24F9B2220);
    sub_24EF36D4C();
    sub_24EF36DFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F234148);
  }

  return result;
}

uint64_t sub_24EF36FC8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24EF37030(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24EF370AC(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0, &unk_24F943470);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F222B18, &qword_24F96B758);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B348, &qword_24F950A78);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[7];

  return v15(v16, a2, v14);
}

uint64_t sub_24EF37250(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0, &unk_24F943470);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F222B18, &qword_24F96B758);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B348, &qword_24F950A78);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[7];

  return v15(v16, a2, a2, v14);
}

void sub_24EF373E0(uint64_t a1)
{
  sub_24EF37558(319, &qword_27F2341A8, MEMORY[0x277CDF860]);
  if (v1 <= 0x3F)
  {
    sub_24EF39818(319, &qword_27F2168C8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      sub_24EF39818(319, &qword_27F222BA0, MEMORY[0x277CDF450], MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        sub_24EF39818(319, &qword_27F21B360, type metadata accessor for OfferButtonDesign, MEMORY[0x277CDF468]);
        if (v4 <= 0x3F)
        {
          sub_24EF375F4(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_24EF37558(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for OfferButtonViewModel(255);
    v7 = sub_24EF36D04(&qword_27F234098, type metadata accessor for OfferButtonViewModel, &unk_24F9AED60);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_24EF375F4(uint64_t a1)
{
  if (!qword_27F21B368)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F23B740, &qword_24F93EC10);
    v1 = sub_24F923578();
    if (!v2)
    {
      atomic_store(v1, &qword_27F21B368);
    }
  }
}

uint64_t sub_24EF3766C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F222B18, &qword_24F96B758);
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 24);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234078, &unk_24FA0C030);
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 28);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_24EF377C8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F222B18, &qword_24F96B758);
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234078, &unk_24FA0C030);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_24EF37904(uint64_t a1)
{
  sub_24E7EA96C(319, &qword_27F254DE0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_24EF39818(319, &qword_27F222BA0, MEMORY[0x277CDF450], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      sub_24EF36C6C(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_24EF37A00()
{
  result = qword_27F2341C0;
  if (!qword_27F2341C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2340B8, &unk_24F9B2140);
    sub_24EF37ABC();
    sub_24EF36D04(&qword_27F21B3C8, type metadata accessor for FocusedAlternativeSelectionButtonModifier, &unk_24F9BE940);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2341C0);
  }

  return result;
}

unint64_t sub_24EF37ABC()
{
  result = qword_27F2341C8;
  if (!qword_27F2341C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2340B0, &qword_24F9B20B8);
    sub_24EF37B74();
    sub_24E602068(&qword_27F236280, &qword_27F217118, &qword_24F950C70, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2341C8);
  }

  return result;
}

unint64_t sub_24EF37B74()
{
  result = qword_27F2341D0;
  if (!qword_27F2341D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2340A8, &qword_24F9B20B0);
    sub_24EF37BF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2341D0);
  }

  return result;
}

unint64_t sub_24EF37BF8()
{
  result = qword_27F2341D8;
  if (!qword_27F2341D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2341E0, qword_24F9B23C8);
    sub_24EF36EDC();
    sub_24E602068(&qword_27F234150, &qword_27F234140, &qword_24F9B2238, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2341D8);
  }

  return result;
}

unint64_t sub_24EF37D08()
{
  result = qword_27F234208;
  if (!qword_27F234208)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2341F8, &qword_24F9B2480);
    sub_24EF3A2B0(&qword_27F234210, &qword_27F2341F0, &qword_24F9B2478, sub_24EF37DEC);
    sub_24E602068(&qword_27F2129F0, &qword_27F255320, &unk_24F9397C0, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F234208);
  }

  return result;
}

unint64_t sub_24EF37DEC()
{
  result = qword_27F234218;
  if (!qword_27F234218)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2341E8, &qword_24F9B2470);
    sub_24EF37E70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F234218);
  }

  return result;
}

unint64_t sub_24EF37E70()
{
  result = qword_27F234220;
  if (!qword_27F234220)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F234228, &qword_24F9B2510);
    sub_24EF37F2C();
    sub_24EF36D04(&qword_27F234268, type metadata accessor for OfferButtonView.ProgressButton, &unk_24F9B2658);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F234220);
  }

  return result;
}

unint64_t sub_24EF37F2C()
{
  result = qword_27F234230;
  if (!qword_27F234230)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F234238, &qword_24F9B2518);
    sub_24EF37FB8();
    sub_24EF38068();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F234230);
  }

  return result;
}

unint64_t sub_24EF37FB8()
{
  result = qword_27F234240;
  if (!qword_27F234240)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F234248, &unk_24F9B2520);
    sub_24E602068(&qword_27F216C90, &qword_27F216C80, &qword_24F943EE8, &unk_24F96B7D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F234240);
  }

  return result;
}

unint64_t sub_24EF38068()
{
  result = qword_27F234250;
  if (!qword_27F234250)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F234258, &unk_24F9B2530);
    sub_24E602068(&qword_27F216C90, &qword_27F216C80, &qword_24F943EE8, &unk_24F96B7D8);
    sub_24EF36D04(&qword_27F234260, type metadata accessor for OfferButtonView.IndeterminateProgressButton, &unk_24F9B26A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F234250);
  }

  return result;
}

uint64_t sub_24EF38190(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24EF3822C(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
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

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F222B18, &qword_24F96B758);
  if (*(*(v9 - 8) + 84) == a2)
  {
    v10 = v9;
    v11 = *(v9 - 8);
    v12 = a3[8];
LABEL_11:
    v14 = *(v11 + 48);

    return v14(&a1[v12], a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0, &unk_24F943470);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v10 = v13;
    v11 = *(v13 - 8);
    v12 = a3[9];
    goto LABEL_11;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B348, &qword_24F950A78);
  v16 = *(*(v15 - 8) + 48);
  v17 = &a1[a3[10]];

  return v16(v17, a2, v15);
}

char *sub_24EF383DC(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F222B18, &qword_24F96B758);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[8];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0, &unk_24F943470);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[9];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B348, &qword_24F950A78);
  v15 = *(*(v14 - 8) + 56);
  v16 = &v5[a4[10]];

  return v15(v16, a2, a2, v14);
}

void sub_24EF3856C(uint64_t a1)
{
  sub_24EF39818(319, &qword_27F230A10, type metadata accessor for Action, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_24EF39818(319, &qword_27F222BA0, MEMORY[0x277CDF450], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      sub_24EF39818(319, &qword_27F2168C8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        sub_24EF39818(319, &qword_27F21B360, type metadata accessor for OfferButtonDesign, MEMORY[0x277CDF468]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_24EF38708(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
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

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F222B18, &qword_24F96B758);
  if (*(*(v9 - 8) + 84) == a2)
  {
    v10 = v9;
    v11 = *(v9 - 8);
    v12 = a3[5];
LABEL_11:
    v14 = *(v11 + 48);

    return v14(&a1[v12], a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0, &unk_24F943470);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v10 = v13;
    v11 = *(v13 - 8);
    v12 = a3[6];
    goto LABEL_11;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B348, &qword_24F950A78);
  v16 = *(*(v15 - 8) + 48);
  v17 = &a1[a3[7]];

  return v16(v17, a2, v15);
}

char *sub_24EF388B8(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F222B18, &qword_24F96B758);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0, &unk_24F943470);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B348, &qword_24F950A78);
  v15 = *(*(v14 - 8) + 56);
  v16 = &v5[a4[7]];

  return v15(v16, a2, a2, v14);
}

void sub_24EF38A48(uint64_t a1)
{
  sub_24EF39818(319, &qword_27F230A10, type metadata accessor for Action, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_24EF39818(319, &qword_27F222BA0, MEMORY[0x277CDF450], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      sub_24EF39818(319, &qword_27F2168C8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        sub_24EF39818(319, &qword_27F21B360, type metadata accessor for OfferButtonDesign, MEMORY[0x277CDF468]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_24EF38BC0()
{
  result = qword_27F2342B0;
  if (!qword_27F2342B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2342B8, &qword_24F9B2640);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2341F8, &qword_24F9B2480);
    sub_24EF37D08();
    swift_getOpaqueTypeConformance2();
    sub_24EF36D04(&qword_27F2141E0, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2342B0);
  }

  return result;
}

unint64_t sub_24EF38CBC()
{
  result = qword_27F2342C0;
  if (!qword_27F2342C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2342C8, &qword_24F9B2648);
    sub_24EF38D40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2342C0);
  }

  return result;
}

unint64_t sub_24EF38D40()
{
  result = qword_27F2342D0;
  if (!qword_27F2342D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2342D8, &qword_24F9B2650);
    sub_24E67283C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2342D0);
  }

  return result;
}

uint64_t sub_24EF38E04()
{
  v1 = type metadata accessor for OfferButtonView.IndeterminateProgressButton(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 24) & ~*(*(v1 - 1) + 80));

  v3 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B398, &qword_24F96B8D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_24F9234F8();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  v5 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898, &unk_24F944150);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_24F923E98();
    (*(*(v6 - 8) + 8))(v2 + v5, v6);
  }

  else
  {
  }

  v7 = v2 + v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216DB8, &unk_24F96B930);
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    v8 = *(type metadata accessor for OfferButtonDesign(0) + 20);
    v9 = sub_24F9234F8();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(v7 + v8, 1, v9))
    {
      (*(v10 + 8))(v7 + v8, v9);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_24EF3905C@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for OfferButtonView.IndeterminateProgressButton(0);
  v3 = *(v1 + 16);

  return sub_24EF34438(a1, v3);
}

unint64_t sub_24EF390D0()
{
  result = qword_27F234300;
  if (!qword_27F234300)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2342F8, &qword_24F9B2718);
    sub_24EF36D04(&qword_27F234308, type metadata accessor for IndeterminateProgressSpinner, &unk_24F9B2818);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F234300);
  }

  return result;
}

uint64_t sub_24EF391B4()
{
  v1 = type metadata accessor for OfferButtonView.ProgressButton(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  v3 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B398, &qword_24F96B8D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_24F9234F8();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  v5 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898, &unk_24F944150);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_24F923E98();
    (*(*(v6 - 8) + 8))(v2 + v5, v6);
  }

  else
  {
  }

  v7 = v2 + v1[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216DB8, &unk_24F96B930);
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    v8 = *(type metadata accessor for OfferButtonDesign(0) + 20);
    v9 = sub_24F9234F8();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(v7 + v8, 1, v9))
    {
      (*(v10 + 8))(v7 + v8, v9);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_24EF39418@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for OfferButtonView.ProgressButton(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_24EF35228(v1 + v4, a1, v5);
}

unint64_t sub_24EF394B4()
{
  result = qword_27F234340;
  if (!qword_27F234340)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F234338, &qword_24F9B2778);
    sub_24EF36D04(&qword_27F234348, type metadata accessor for ProgressSpinner, &unk_24F9B27C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F234340);
  }

  return result;
}

uint64_t sub_24EF395A4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A8, &qword_24F943480);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 28);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_24EF39680(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A8, &qword_24F943480);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24EF39730(uint64_t a1)
{
  sub_24E7EA96C(319, &qword_27F254E10, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
  if (v1 <= 0x3F)
  {
    sub_24EF39818(319, &qword_27F2168D0, MEMORY[0x277CDFAA0], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24EF39818(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_24EF39890(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 40);
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
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A8, &qword_24F943480);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 40);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_24EF39960(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 40) = a2 + 1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A8, &qword_24F943480);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24EF39A0C(uint64_t a1)
{
  sub_24EF39818(319, &qword_27F2168D0, MEMORY[0x277CDFAA0], MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_24EF39AD0()
{
  result = qword_27F234380;
  if (!qword_27F234380)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F234318, &qword_24F9B2720);
    sub_24EF39B88();
    sub_24E602068(&qword_27F234390, &qword_27F234398, &qword_24F9B27C0, &unk_24F98AA00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F234380);
  }

  return result;
}

unint64_t sub_24EF39B88()
{
  result = qword_27F234388;
  if (!qword_27F234388)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2342F0, &qword_24F9B2710);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2342E0, &qword_24F9B2700);
    sub_24F9241F8();
    sub_24E602068(&qword_27F234310, &qword_27F2342E0, &qword_24F9B2700, MEMORY[0x277D7EB00]);
    sub_24EF36D04(&qword_27F212838, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F234388);
  }

  return result;
}

unint64_t sub_24EF39CD8()
{
  result = qword_27F2343A0;
  if (!qword_27F2343A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F234358, &unk_24F9B2780);
    sub_24EF39D90();
    sub_24E602068(&qword_27F234390, &qword_27F234398, &qword_24F9B27C0, &unk_24F98AA00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2343A0);
  }

  return result;
}

unint64_t sub_24EF39D90()
{
  result = qword_27F2343A8;
  if (!qword_27F2343A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F234330, &qword_24F9B2770);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F234320, &qword_24F9B2760);
    sub_24F9241F8();
    sub_24E602068(&qword_27F234350, &qword_27F234320, &qword_24F9B2760, MEMORY[0x277D7EB00]);
    sub_24EF36D04(&qword_27F212838, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2343A8);
  }

  return result;
}

uint64_t sub_24EF39F14()
{
  v1 = (type metadata accessor for IndeterminateProgressSpinner(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90, &qword_24F93E920);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_24F923F78();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_24EF3A030()
{
  v1 = *(type metadata accessor for IndeterminateProgressSpinner(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_24EF36044(v2);
}

unint64_t sub_24EF3A0B4()
{
  result = qword_27F2343B8;
  if (!qword_27F2343B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2343C0, &qword_24F9B2908);
    sub_24EF3A140();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2343B8);
  }

  return result;
}

unint64_t sub_24EF3A140()
{
  result = qword_27F2343C8;
  if (!qword_27F2343C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2343D0, &qword_24F9B2910);
    sub_24EF3A1F8();
    sub_24E602068(&qword_27F218870, &unk_27F2364C0, qword_24F962AC0, MEMORY[0x277CE01A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2343C8);
  }

  return result;
}

unint64_t sub_24EF3A1F8()
{
  result = qword_27F2343D8;
  if (!qword_27F2343D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2343E0, &qword_24F9B2918);
    sub_24EF3A2B0(&qword_27F2343E8, &qword_27F2343F0, &unk_24F9B2920, sub_24EF3A334);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2343D8);
  }

  return result;
}

uint64_t sub_24EF3A2B0(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24EF3A334()
{
  result = qword_27F2343F8;
  if (!qword_27F2343F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2343F8);
  }

  return result;
}

unint64_t sub_24EF3A38C()
{
  result = qword_27F234400;
  if (!qword_27F234400)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F234408, &qword_24F9B2930);
    sub_24EF3A444();
    sub_24E602068(&qword_27F229228, &qword_27F229230, qword_24F984808, MEMORY[0x277CE01A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F234400);
  }

  return result;
}

unint64_t sub_24EF3A444()
{
  result = qword_27F234410;
  if (!qword_27F234410)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F234418, &qword_24F9B2938);
    sub_24E602068(&qword_27F234420, &qword_27F234428, &unk_24F9B2940, MEMORY[0x277CE11A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F234410);
  }

  return result;
}

unint64_t sub_24EF3A51C()
{
  result = qword_27F234430;
  if (!qword_27F234430)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F234438, &qword_24F9B29A0);
    sub_24E602068(&qword_27F234440, &qword_27F234448, &qword_24F9B29A8, MEMORY[0x277CDF3A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F234430);
  }

  return result;
}

char *ClearAppUsageDataAction.__allocating_init(id:title:artwork:presentationStyle:actionMetrics:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v32 = a4;
  v33 = a5;
  v30 = a2;
  v31 = a3;
  v10 = sub_24F91F6B8();
  v27 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  v29 = a1;
  sub_24E60169C(a1, v39, &qword_27F235830, &qword_24F93B8C0);
  v14 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v15 = sub_24F928AD8();
  v16 = *(v15 - 8);
  v17 = *(v16 + 16);
  v28 = a6;
  v17(&v13[v14], a6, v15);
  sub_24E60169C(a7, &v13[OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics], &qword_27F213E68, &unk_24F93BC80);
  v18 = &v13[OBJC_IVAR____TtC12GameStoreKit6Action_clickSender];
  *v18 = 0u;
  *(v18 + 1) = 0u;
  v19 = &v13[OBJC_IVAR____TtC12GameStoreKit6Action_id];
  sub_24E60169C(v39, &v36, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v37 + 1))
  {
    v20 = v37;
    *v19 = v36;
    *(v19 + 1) = v20;
    *(v19 + 4) = v38;
  }

  else
  {
    sub_24F91F6A8();
    v21 = sub_24F91F668();
    v23 = v22;
    (*(v27 + 8))(v12, v10);
    v34 = v21;
    v35 = v23;
    sub_24F92C7F8();
    sub_24E601704(&v36, &qword_27F235830, &qword_24F93B8C0);
  }

  sub_24E601704(a7, &qword_27F213E68, &unk_24F93BC80);
  (*(v16 + 8))(v28, v15);
  sub_24E601704(v29, &qword_27F235830, &qword_24F93B8C0);
  sub_24E601704(v39, &qword_27F235830, &qword_24F93B8C0);
  v24 = v31;
  *(v13 + 2) = v30;
  *(v13 + 3) = v24;
  v25 = v33;
  *(v13 + 4) = v32;
  *(v13 + 5) = v25;
  return v13;
}

void *ClearAppUsageDataAction.init(id:title:artwork:presentationStyle:actionMetrics:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v38 = a7;
  v42 = a4;
  v43 = a5;
  v41 = a3;
  v40 = a2;
  v37 = sub_24F91F6B8();
  v36 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v35 - v14;
  v16 = sub_24F928AD8();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = a1;
  v20 = a1;
  v21 = a6;
  v22 = v38;
  sub_24E60169C(v20, v52, &qword_27F235830, &qword_24F93B8C0);
  (*(v17 + 16))(v19, v21, v16);
  sub_24E60169C(v22, v15, &qword_27F213E68, &unk_24F93BC80);
  v23 = (v8 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v23 = 0u;
  v23[1] = 0u;
  sub_24E60169C(v52, &v46, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v47 + 1))
  {
    v49 = v46;
    v50 = v47;
    v51 = v48;
  }

  else
  {
    sub_24F91F6A8();
    v24 = v22;
    v25 = sub_24F91F668();
    v26 = v15;
    v28 = v27;
    (*(v36 + 8))(v12, v37);
    v44 = v25;
    v45 = v28;
    v22 = v24;
    v15 = v26;
    sub_24F92C7F8();
    sub_24E601704(&v46, &qword_27F235830, &qword_24F93B8C0);
  }

  sub_24E601704(v22, &qword_27F213E68, &unk_24F93BC80);
  (*(v17 + 8))(v21, v16);
  sub_24E601704(v39, &qword_27F235830, &qword_24F93B8C0);
  sub_24E601704(v52, &qword_27F235830, &qword_24F93B8C0);
  v29 = v8 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  *(v29 + 4) = v51;
  v30 = v50;
  *v29 = v49;
  *(v29 + 1) = v30;
  sub_24E65E0D4(v15, v8 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics);
  v31 = v41;
  v32 = v42;
  v8[2] = v40;
  v8[3] = v31;
  v33 = v43;
  v8[4] = v32;
  v8[5] = v33;
  (*(v17 + 32))(v8 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v19, v16);
  return v8;
}

char *ClearAppUsageDataAction.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F9285B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F928388();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  v12 = *(v9 + 16);
  v16 = a1;
  v12(v11, a1, v8);
  (*(v5 + 16))(v7, a2, v4);
  v13 = Action.init(deserializing:using:)(v11, v7);
  (*(v5 + 8))(a2, v4);
  (*(v9 + 8))(v16, v8);
  return v13;
}

char *ClearAppUsageDataAction.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F9285B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F928388();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v9 + 16);
  v17 = a1;
  v13(v12, a1, v8, v10);
  (*(v5 + 16))(v7, a2, v4);
  v14 = Action.init(deserializing:using:)(v12, v7);
  (*(v5 + 8))(a2, v4);
  (*(v9 + 8))(v17, v8);
  return v14;
}

uint64_t ClearAppUsageDataAction.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0, &unk_24F945320);
  return v0;
}

uint64_t ClearAppUsageDataAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0, &unk_24F945320);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ClearAppUsageDataAction(uint64_t a1)
{
  result = qword_27F234450;
  if (!qword_27F234450)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24EF3B2AC@<X0>(uint64_t *a1@<X8>)
{
  v80 = a1;
  v2 = sub_24F924B38();
  v76 = *(v2 - 8);
  v77 = v2;
  MEMORY[0x28223BE20](v2);
  v75 = &v67 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_24F9241F8();
  v73 = *(v74 - 1);
  MEMORY[0x28223BE20](v74);
  v72 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223968, &unk_24F9B2B00);
  v69 = *(v70 - 1);
  MEMORY[0x28223BE20](v70);
  v68 = &v67 - v5;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223970, &unk_24F96ECB0);
  MEMORY[0x28223BE20](v67);
  v7 = &v67 - v6;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223978, &unk_24F9B2B10);
  MEMORY[0x28223BE20](v71);
  v9 = &v67 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223980, &unk_24F96ECC0);
  v78 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v81 = &v67 - v11;
  v12 = *(v1 + 64);
  v88 = v12;
  v13 = *(v1 + 48);
  v86[2] = *(v1 + 32);
  v87 = v13;
  v14 = *(v1 + 16);
  v86[0] = *v1;
  v86[1] = v14;
  v15 = *(&v87 + 1);
  v79 = v16;
  if (*(&v87 + 1))
  {
    v17 = swift_allocObject();
    *(v17 + 16) = v15;
    *(v17 + 24) = v12;
    v18 = sub_24E972460;
  }

  else
  {
    v18 = CGSizeMake;
    v17 = 0;
  }

  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  *(v19 + 24) = v17;
  MEMORY[0x28223BE20](v19);
  *(&v67 - 2) = v86;
  sub_24E5FCA4C(v15, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223988, &unk_24F9B2B20);
  v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F223990, &unk_24F96ECD0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F223998, &unk_24F9B2B30);
  v22 = sub_24E602068(&qword_27F2239A0, &qword_27F223998, &unk_24F9B2B30, MEMORY[0x277CE11A8]);
  v82 = v21;
  v83 = v22;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v82 = v20;
  v83 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v24 = v68;
  sub_24F926F88();
  v25 = v87;
  v26 = sub_24F927618();
  v28 = v27;
  (*(v69 + 32))(v7, v24, v70);
  v29 = &v7[*(v67 + 36)];
  *v29 = v25;
  *(v29 + 1) = v26;
  *(v29 + 2) = v28;
  v30 = &v9[*(v71 + 36)];
  v31 = *MEMORY[0x277CE0118];
  v32 = v76;
  v70 = *(v76 + 104);
  v33 = v77;
  v70(v30, v31, v77);
  *&v30[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2552C0, &qword_24F951970) + 36)] = 256;
  sub_24E6009C8(v7, v9, &qword_27F223970, &unk_24F96ECB0);

  v34 = v72;
  sub_24F9241E8();
  sub_24E9A0198();
  sub_24E9A0334(&qword_27F212838, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
  v35 = v74;
  sub_24F926178();
  (*(v73 + 8))(v34, v35);
  sub_24E601704(v9, &qword_27F223978, &unk_24F9B2B10);
  v84 = sub_24F9271D8();
  v85 = sub_24E9A0334(&qword_27F214E38, MEMORY[0x277CE1260], MEMORY[0x277CE1248]);
  v36 = __swift_allocate_boxed_opaque_existential_1(&v82);
  v37 = v70;
  v70(v36, v31, v33);
  __swift_project_boxed_opaque_existential_1(&v82, v84);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v74 = &v67;
  v39 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v41 = (&v67 - v40);
  v42 = v75;
  (v37)(v75, *MEMORY[0x277CE0128], v33, v39);
  LOBYTE(v25) = sub_24F924B28();
  v43 = v33;
  v44 = v81;
  (*(v32 + 8))(v42, v43);
  *v41 = ((v25 & 1) == 0) | 0xC00C000000000000;
  swift_getAssociatedConformanceWitness();
  v45 = sub_24F927348();
  v46 = _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  __swift_destroy_boxed_opaque_existential_1(&v82);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2239D0, &qword_24F96ECE0);
  v49 = v78;
  v48 = v79;
  v50 = v80;
  (*(v78 + 16))(v80 + v47[9], v44, v79);
  *v50 = v45;
  v50[1] = v46;
  v50[2] = 0x4008000000000000;
  v51 = v50 + v47[10];

  *v51 = sub_24F923398() & 1;
  *(v51 + 1) = v52;
  v51[16] = v53 & 1;
  v54 = v50 + v47[11];
  *v54 = swift_getKeyPath();
  v54[8] = 0;
  if (qword_27F211808 != -1)
  {
    swift_once();
  }

  v55 = qword_27F24E488;
  v56 = sub_24F923398();
  v58 = v57;
  v60 = v59;
  v61 = v50 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2239D8, &unk_24F96ED10) + 36);
  *v61 = v55;
  v61[8] = v56 & 1;
  *(v61 + 2) = v58;
  v61[24] = v60 & 1;
  LOBYTE(v55) = sub_24F923398();
  v63 = v62;
  LOBYTE(v58) = v64;

  (*(v49 + 8))(v44, v48);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2239E0, &unk_24F9B2B80);
  v66 = v50 + *(result + 36);
  *v66 = v55 & 1;
  *(v66 + 1) = v63;
  v66[16] = v58 & 1;
  return result;
}

uint64_t sub_24EF3BC30@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v20 = sub_24F9248C8();
  v3 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223998, &unk_24F9B2B30);
  MEMORY[0x28223BE20](v6);
  v8 = (&v17 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223990, &unk_24F96ECD0);
  v18 = *(v9 - 8);
  v19 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v17 - v10;
  *v8 = sub_24F927618();
  v8[1] = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2239E8, &unk_24F96ED20);
  sub_24EF3BF24(a1, v8 + *(v13 + 44));
  sub_24F9248B8();
  v14 = sub_24E602068(&qword_27F2239A0, &qword_27F223998, &unk_24F9B2B30, MEMORY[0x277CE11A8]);
  _s7SwiftUI4ViewP12GameStoreKitE18componentFocusable_12interactionsQrSb_AA17FocusInteractionsVtF_0();
  (*(v3 + 8))(v5, v20);
  sub_24E601704(v8, &qword_27F223998, &unk_24F9B2B30);
  v22 = *a1;
  v23 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215670, &unk_24F961D00);
  sub_24F923348();
  *&v22 = v6;
  *(&v22 + 1) = v14;
  swift_getOpaqueTypeConformance2();
  v15 = v19;
  sub_24F9269C8();

  return (*(v18 + 8))(v11, v15);
}

uint64_t sub_24EF3BF24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a2;
  v3 = sub_24F924848();
  v55 = *(v3 - 8);
  v56 = v3;
  MEMORY[0x28223BE20](v3);
  v54 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214698, &unk_24F95F810);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v53 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2239F0, &unk_24F9B2B90);
  v62 = *(v8 - 8);
  v63 = v8;
  MEMORY[0x28223BE20](v8);
  v60 = &v53 - v9;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2239F8, &unk_24F96ED30);
  MEMORY[0x28223BE20](v59);
  v64 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v58 = &v53 - v12;
  MEMORY[0x28223BE20](v13);
  v61 = &v53 - v14;
  v15 = sub_24F9271D8();
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223A00, &unk_24F9B2BA0);
  MEMORY[0x28223BE20](v18);
  v20 = &v53 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223A08, &qword_24F96ED40);
  MEMORY[0x28223BE20](v21);
  v57 = &v53 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v53 - v24;
  MEMORY[0x28223BE20](v26);
  v28 = &v53 - v27;
  v29 = *MEMORY[0x277CE0118];
  v30 = sub_24F924B38();
  (*(*(v30 - 8) + 104))(v17, v29, v30);
  v31 = a1;
  if (*(a1 + 48))
  {
    v32 = *(a1 + 48);
  }

  else
  {
    _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
    v32 = sub_24F926D08();
  }

  sub_24E9A0384(v17, v20);
  *&v20[*(v18 + 36)] = v32;

  sub_24F927618();
  sub_24F9238C8();
  sub_24E6009C8(v20, v25, &qword_27F223A00, &unk_24F9B2BA0);
  v33 = &v25[*(v21 + 36)];
  v34 = v71;
  *v33 = v70;
  *(v33 + 1) = v34;
  *(v33 + 2) = v72;
  sub_24E6009C8(v25, v28, &qword_27F223A08, &qword_24F96ED40);
  v35 = v31;
  LOBYTE(v67) = *(v31 + 34);
  SystemImage.rawValue.getter();
  v36 = sub_24F926DF8();
  v37 = sub_24F925908();
  (*(*(v37 - 8) + 56))(v7, 1, 1, v37);
  v38 = sub_24F925968();
  sub_24E601704(v7, &qword_27F214698, &unk_24F95F810);
  KeyPath = swift_getKeyPath();
  v67 = v36;
  v68 = KeyPath;
  v69 = v38;
  sub_24F925958();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F212AA0, &unk_24F9B2BE0);
  sub_24E60156C();
  v40 = v60;
  sub_24F9260C8();

  v41 = *(v35 + 24);
  v67 = v41;
  LOBYTE(v68) = *(v35 + 32);
  if (v68 == 1)
  {
    if ((v41 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else
  {

    sub_24F92BDC8();
    v42 = sub_24F9257A8();
    sub_24F921FD8();

    v43 = v54;
    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E601704(&v67, &qword_27F223A10, &qword_24F9B2BF0);
    (*(v55 + 8))(v43, v56);
    if (v66 != 1)
    {
      goto LABEL_12;
    }
  }

  v44 = *(v35 + 40);
  if (!v44)
  {
    if (*(v35 + 33))
    {
      v45 = sub_24F926C88();
LABEL_13:
      v44 = v45;
      goto LABEL_14;
    }

LABEL_12:
    v45 = _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
    goto LABEL_13;
  }

LABEL_14:
  v46 = v58;
  (*(v62 + 32))(v58, v40, v63);
  *(v46 + *(v59 + 36)) = v44;
  v47 = v61;
  sub_24E6009C8(v46, v61, &qword_27F2239F8, &unk_24F96ED30);
  v48 = v57;
  sub_24E9A03F0(v28, v57);
  v49 = v64;
  sub_24EF3C6E0(v47, v64);
  v50 = v65;
  sub_24E9A03F0(v48, v65);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223A18, &unk_24F96ED80);
  sub_24EF3C6E0(v49, v50 + *(v51 + 48));
  sub_24E601704(v47, &qword_27F2239F8, &unk_24F96ED30);
  sub_24E601704(v28, &qword_27F223A08, &qword_24F96ED40);
  sub_24E601704(v49, &qword_27F2239F8, &unk_24F96ED30);
  return sub_24E601704(v48, &qword_27F223A08, &qword_24F96ED40);
}

uint64_t sub_24EF3C690()
{

  return swift_deallocObject();
}

uint64_t sub_24EF3C6E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2239F8, &unk_24F96ED30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t SmallBreakout.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  SmallBreakout.init(deserializing:using:)(a1, a2);
  return v4;
}

void *SmallBreakout.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v68 = a2;
  v62 = *v3;
  v72 = sub_24F9285B8();
  v69 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v71 = v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v79 = v60 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v8 - 8);
  v64 = v60 - v9;
  v10 = sub_24F91F6B8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24F928388();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = v60 - v19;
  v3[6] = 0;
  v63 = v3 + 6;
  v73 = a1;
  sub_24F928398();
  v21 = sub_24F928348();
  v67 = v14;
  v65 = v15;
  if (v22)
  {
    v74 = v21;
    v75 = v22;
    sub_24F92C7F8();
    v23 = *(v15 + 8);
    v24 = v20;
    v25 = v14;
  }

  else
  {
    sub_24F91F6A8();
    v26 = sub_24F91F668();
    v27 = v11;
    v28 = v14;
    v30 = v29;
    (*(v27 + 8))(v13, v10);
    v74 = v26;
    v75 = v30;
    sub_24F92C7F8();
    v23 = *(v15 + 8);
    v24 = v20;
    v25 = v28;
  }

  v66 = v23;
  v23(v24, v25);
  v31 = v77;
  *(v3 + 4) = v76;
  *(v3 + 5) = v31;
  v3[12] = v78;
  sub_24F929608();
  sub_24F928398();
  v32 = v69 + 16;
  v33 = *(v69 + 16);
  v34 = v72;
  (v33)(v79, v68, v72);
  v35 = v64;
  sub_24F929548();
  v70 = v3;
  v61 = OBJC_IVAR____TtC12GameStoreKit13SmallBreakout_impressionMetrics;
  sub_24E65E0D4(v35, v3 + OBJC_IVAR____TtC12GameStoreKit13SmallBreakout_impressionMetrics);
  v36 = v34;
  v37 = v71;
  v33();
  type metadata accessor for BreakoutDetails(0);
  sub_24F928398();
  v38 = v37;
  v39 = v33;
  v40 = v32;
  (v33)(v79, v38, v36);
  sub_24EF3D434(&qword_27F225B08, type metadata accessor for BreakoutDetails, &protocol conformance descriptor for BreakoutDetails);
  sub_24F929548();
  v41 = v76;
  if (v76)
  {
    v70[2] = v76;
    v64 = v41;
    type metadata accessor for OfferDisplayProperties();

    v42 = v73;
    sub_24F928398();
    v43 = v79;
    v44 = v72;
    (v39)(v79, v71, v72);
    v60[1] = v40;
    v60[0] = v39;
    sub_24EF3D434(&qword_27F225B10, type metadata accessor for OfferDisplayProperties, &protocol conformance descriptor for OfferDisplayProperties);
    sub_24F929548();
    v70[3] = v76;
    type metadata accessor for Artwork(0);
    sub_24F928398();
    v45 = v71;
    (v39)(v43, v71, v44);
    sub_24EF3D434(&qword_27F219660, type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
    sub_24F929548();
    v46 = v70;
    v70[4] = v76;
    v47 = v42;
    sub_24F928398();
    v48 = JSONObject.appStoreColor.getter();
    v49 = v66;
    v50 = v67;
    v66(v17, v67);
    v46[5] = v48;
    v51 = v46;
    type metadata accessor for Action(0);
    sub_24F928398();
    v52 = static Action.tryToMakeInstance(byDeserializing:using:)(v17, v45);
    v49(v17, v50);
    swift_beginAccess();
    v46[6] = v52;

    type metadata accessor for FlowPreviewActionsConfiguration();
    sub_24F928398();
    v53 = v72;
    (v60[0])(v79, v45, v72);
    sub_24EF3D434(&qword_27F222748, type metadata accessor for FlowPreviewActionsConfiguration, &protocol conformance descriptor for FlowPreviewActionsConfiguration);
    sub_24F929548();

    v54 = *(v69 + 8);
    v54(v68, v53);
    v49(v47, v67);
    v54(v45, v53);
    v46[7] = v74;
  }

  else
  {
    v55 = sub_24F92AC38();
    sub_24EF3D434(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    *v56 = 0x736C6961746564;
    v56[1] = 0xE700000000000000;
    v56[2] = v62;
    (*(*(v55 - 8) + 104))(v56, *MEMORY[0x277D22530], v55);
    swift_willThrow();
    v57 = *(v69 + 8);
    v58 = v72;
    v57(v68, v72);
    v66(v73, v67);
    v57(v71, v58);
    v51 = v70;

    sub_24E6585F8((v51 + 8));
    sub_24EB05BC8(v51 + v61);
    type metadata accessor for SmallBreakout(0);
    swift_deallocPartialClassInstance();
  }

  return v51;
}

uint64_t type metadata accessor for SmallBreakout(uint64_t a1)
{
  result = qword_27F234468;
  if (!qword_27F234468)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *SmallBreakout.backgroundColor.getter()
{
  v1 = *(v0 + 40);
  v2 = v1;
  return v1;
}

double sub_24EF3D1DC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 48) = v2;

  return result;
}

double sub_24EF3D274(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 48) = a1;

  return result;
}

uint64_t SmallBreakout.deinit()
{

  sub_24E6585F8(v0 + 64);
  sub_24EB05BC8(v0 + OBJC_IVAR____TtC12GameStoreKit13SmallBreakout_impressionMetrics);
  return v0;
}

uint64_t SmallBreakout.__deallocating_deinit()
{
  SmallBreakout.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_24EF3D434(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_24EF3D48C@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for SmallBreakout(0);
  v7 = swift_allocObject();
  result = SmallBreakout.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t sub_24EF3D554@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 48);
}

void sub_24EF3D5AC(uint64_t a1)
{
  sub_24E61C938(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_24EF3D760(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_24EF3D7B8()
{
  result = qword_27F216298;
  if (!qword_27F216298)
  {
    type metadata accessor for GameCenterSignOutAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216298);
  }

  return result;
}

uint64_t sub_24EF3D810(uint64_t a1, uint64_t a2)
{
  v2[8] = a1;
  v2[9] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1F0, &unk_24F9549C0);
  v2[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24EF3D8AC, 0, 0);
}

uint64_t sub_24EF3D8AC()
{
  v1 = v0[10];
  v2 = [objc_opt_self() local];
  v0[6] = sub_24EF3DC28;
  v0[7] = 0;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_24E9FABA0;
  v0[5] = &block_descriptor_93;
  v3 = _Block_copy(v0 + 2);
  [v2 signOutAndOptOut:1 completionHandler:v3];
  _Block_release(v3);

  v4 = type metadata accessor for Player(0);
  (*(*(v4 - 8) + 56))(v1, 1, 1, v4);
  v0[12] = 0;
  v5 = swift_task_alloc();
  v0[11] = v5;
  *v5 = v0;
  v5[1] = sub_24EF3DA44;
  v6 = v0[10];

  return sub_24F64B8C4(v6, v0 + 12);
}

uint64_t sub_24EF3DA44()
{
  v1 = *(*v0 + 80);

  sub_24E601704(v1, &unk_27F23E1F0, &unk_24F9549C0);

  return MEMORY[0x2822009F8](sub_24EF3DB6C, 0, 0);
}

uint64_t sub_24EF3DB6C()
{
  v1 = *(v0 + 64);
  v2 = *MEMORY[0x277D21CA8];
  v3 = sub_24F928AE8();
  (*(*(v3 - 8) + 104))(v1, v2, v3);

  v4 = *(v0 + 8);

  return v4();
}

void sub_24EF3DC28(NSObject *a1)
{
  if (!a1)
  {
    if (qword_27F211430 != -1)
    {
      swift_once();
    }

    v10 = sub_24F9220D8();
    __swift_project_value_buffer(v10, qword_27F39E8E0);
    oslog = sub_24F9220B8();
    v11 = sub_24F92BD98();
    if (os_log_type_enabled(oslog, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_24E5DD000, oslog, v11, "Sign out succeeded.", v12, 2u);
      MEMORY[0x2530542D0](v12, -1, -1);
    }

    goto LABEL_10;
  }

  v2 = a1;
  if (qword_27F211430 != -1)
  {
    swift_once();
  }

  v3 = sub_24F9220D8();
  __swift_project_value_buffer(v3, qword_27F39E8E0);
  v4 = a1;
  oslog = sub_24F9220B8();
  v5 = sub_24F92BDB8();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = a1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_24E5DD000, oslog, v5, "Sign out error but continue to proceed: %@", v6, 0xCu);
    sub_24E601704(v7, &qword_27F227B20, &qword_24F944D30);
    MEMORY[0x2530542D0](v7, -1, -1);
    MEMORY[0x2530542D0](v6, -1, -1);

LABEL_10:
    v13 = oslog;

    goto LABEL_12;
  }

  v13 = a1;

LABEL_12:
}

uint64_t sub_24EF3DE84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510, &unk_24F93C690);

  v9 = sub_24F92A9E8();
  v10 = sub_24F92B858();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_24F9B2E30;
  v11[5] = v8;
  v11[6] = v9;

  sub_24E6959D8(0, 0, v7, &unk_24F94D7B0, v11);

  return v9;
}

uint64_t sub_24EF3E008()
{

  return swift_deallocObject();
}

uint64_t sub_24EF3E040(uint64_t a1)
{
  v4 = *(v1 + 24);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24E614970;

  return sub_24EF3D810(a1, v4);
}

uint64_t sub_24EF3E0EC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t block_copy_helper_93(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24EF3E178@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PlayerAvatarView.Overlay(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v109 = &v96 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DF80, &unk_24F942E50);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v96 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v120 = &v96 - v11;
  v119 = type metadata accessor for PlayerAvatar(0);
  MEMORY[0x28223BE20](v119);
  v129 = (&v96 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v128 = type metadata accessor for PlayerAvatarView(0);
  v118 = *(v128 - 8);
  MEMORY[0x28223BE20](v128);
  v117 = &v96 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v96 - v15;
  v17 = sub_24F929888();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v104 = &v96 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v96 - v21;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CCC8, &qword_24F957520);
  MEMORY[0x28223BE20](v103);
  v106 = &v96 - v23;
  v108 = type metadata accessor for OverlappingPlayerAvatarsView(0);
  MEMORY[0x28223BE20](v108);
  v105 = &v96 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2344F8, &qword_24F9B2ED0);
  v101 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v107 = &v96 - v25;
  v26 = type metadata accessor for Player(0) - 8;
  MEMORY[0x28223BE20](v26);
  v115 = (&v96 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v28);
  v116 = &v96 - v30;
  v31 = *(a1 + 16);
  if (v31)
  {
    v97 = v22;
    v98 = v18;
    v99 = v17;
    v100 = a2;
    v32 = a1 + ((*(v29 + 80) + 32) & ~*(v29 + 80));
    v111 = (v5 + 56);
    v127 = *(v29 + 72);
    v33 = MEMORY[0x277D84F90];
    v96 = v32;
    v34 = v32;
    v35 = v31;
    v114 = v31;
    v113 = v4;
    v112 = v16;
    v110 = v9;
    do
    {
      v124 = v35;
      v125 = v34;
      v126 = v33;
      v36 = v116;
      sub_24E70D960(v34, v116);
      v37 = *(v36 + 24);
      v122 = *(v36 + 16);
      v38 = type metadata accessor for PlayerAvatar.Overlay(0);
      v39 = *(v38 - 8);
      v40 = *(v39 + 56);
      v41 = v120;
      v123 = v38;
      v40(v120, 1, 1, v38);
      v135 = 0;
      v133 = 0u;
      v134 = 0u;
      v42 = v119;
      v121 = *(v119 + 20);
      v43 = v129;
      v40(v129 + v121, 1, 1, v38);
      v44 = v43 + *(v42 + 24);
      v132 = 0;
      v130 = 0u;
      v131 = 0u;
      *v44 = 0u;
      *(v44 + 16) = 0u;
      *(v44 + 32) = 0;

      sub_24E61DA68(&v130, v44, qword_27F21B590, &unk_24F93BE30);
      *v43 = v122;
      v43[1] = v37;

      v45 = v121;
      sub_24E61DA68(v41, v43 + v121, &qword_27F22DF80, &unk_24F942E50);
      sub_24E61DA68(&v133, v44, qword_27F21B590, &unk_24F93BE30);
      v46 = v117;
      sub_24F928948();
      sub_24EF3F088(v36, type metadata accessor for Player);
      type metadata accessor for PlayerAvatarView.AvatarType(0);
      swift_storeEnumTagMultiPayload();
      v47 = v43 + v45;
      v48 = v110;
      sub_24E60169C(v47, v110, &qword_27F22DF80, &unk_24F942E50);
      v49 = *(v128 + 20);
      if ((*(v39 + 48))(v48, 1, v123) == 1)
      {
        sub_24E601704(v48, &qword_27F22DF80, &unk_24F942E50);
        v50 = 1;
        v51 = v113;
      }

      else
      {
        v52 = v109;
        sub_24EF3F0E8(v48, v109, type metadata accessor for PlayerAvatar.Overlay);
        v51 = v113;
        v53 = v52 + *(v113 + 20);
        *v53 = 0;
        *(v53 + 8) = 1;
        v54 = (v52 + *(v51 + 24));
        *v54 = 0;
        v54[1] = 0;
        sub_24EF3F0E8(v52, v46 + v49, type metadata accessor for PlayerAvatarView.Overlay);
        v50 = 0;
      }

      v55 = v112;
      (*v111)(v46 + v49, v50, 1, v51);
      v56 = v128;
      v57 = v46 + *(v128 + 24);
      sub_24E60169C(v44, &v133, qword_27F24EC90, &unk_24F93C1D0);
      sub_24EF3F088(v129, type metadata accessor for PlayerAvatar);
      v58 = v134;
      *v57 = v133;
      *(v57 + 16) = v58;
      *(v57 + 32) = v135;
      *(v46 + *(v56 + 28)) = 7;
      sub_24EF3F0E8(v46, v55, type metadata accessor for PlayerAvatarView);
      v33 = v126;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v60 = v114;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v33 = sub_24E619074(0, v33[2] + 1, 1, v33);
      }

      v62 = v33[2];
      v61 = v33[3];
      if (v62 >= v61 >> 1)
      {
        v33 = sub_24E619074((v61 > 1), v62 + 1, 1, v33);
      }

      v63 = v124;
      v33[2] = v62 + 1;
      sub_24EF3F0E8(v55, v33 + ((*(v118 + 80) + 32) & ~*(v118 + 80)) + *(v118 + 72) * v62, type metadata accessor for PlayerAvatarView);
      v34 = v125 + v127;
      v35 = v63 - 1;
    }

    while (v35);
    *&v133 = 0x4010000000000000;
    sub_24E66ED98();
    v64 = v105;
    sub_24F9237C8();
    v65 = v108;
    *(v64 + *(v108 + 20)) = v33;
    v66 = v64 + *(v65 + 24);
    *v66 = 3;
    *(v66 + 8) = 0;
    *(v64 + *(v65 + 28)) = 2;
    v67 = *MEMORY[0x277CDFA10];
    v68 = sub_24F923E98();
    v69 = v106;
    (*(*(v68 - 8) + 104))(v106, v67, v68);
    sub_24EF3F040(&qword_27F22DF90, MEMORY[0x277CDFA28], MEMORY[0x277CDFA48]);
    result = sub_24F92AFF8();
    if (result)
    {
      v71 = sub_24EF3F040(&qword_27F234500, type metadata accessor for OverlappingPlayerAvatarsView, &unk_24FA0B6F0);
      v72 = sub_24E602068(&unk_27F22DFA0, &qword_27F21CCC8, &qword_24F957520, MEMORY[0x277D84470]);
      v73 = v103;
      v129 = v71;
      sub_24F9263F8();
      sub_24E601704(v69, &qword_27F21CCC8, &qword_24F957520);
      sub_24EF3F088(v64, type metadata accessor for OverlappingPlayerAvatarsView);
      v133 = 0u;
      v134 = 0u;
      v130 = 0u;
      v131 = 0u;
      v74 = v104;
      sub_24F929828();
      sub_24E601704(&v130, &qword_27F2129B0, &unk_24F945320);
      sub_24E601704(&v133, &qword_27F2129B0, &unk_24F945320);
      v75 = MEMORY[0x277D84F90];
      v76 = v96;
      do
      {
        v77 = v76;
        v78 = v115;
        sub_24E70D960(v76, v115);
        v80 = *v78;
        v79 = v78[1];

        sub_24EF3F088(v78, type metadata accessor for Player);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v75 = sub_24E615CF4(0, *(v75 + 2) + 1, 1, v75);
        }

        v82 = *(v75 + 2);
        v81 = *(v75 + 3);
        if (v82 >= v81 >> 1)
        {
          v75 = sub_24E615CF4((v81 > 1), v82 + 1, 1, v75);
        }

        *(v75 + 2) = v82 + 1;
        v83 = &v75[16 * v82];
        *(v83 + 4) = v80;
        *(v83 + 5) = v79;
        v76 = v77 + v127;
        --v60;
      }

      while (v60);
      *&v133 = v75;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0, &qword_24F93B070);
      sub_24E602068(&qword_27F23E240, &unk_27F2285F0, &qword_24F93B070, MEMORY[0x277D83958]);
      v84 = sub_24F92AF68();
      v86 = v85;

      *(&v134 + 1) = MEMORY[0x277D837D0];
      *&v133 = v84;
      *(&v133 + 1) = v86;
      v87 = v97;
      sub_24F929868();
      v88 = *(v98 + 8);
      v89 = v99;
      v88(v74, v99);
      sub_24E601704(&v133, &qword_27F2129B0, &unk_24F945320);
      *&v133 = v108;
      *(&v133 + 1) = v73;
      *&v134 = v129;
      *(&v134 + 1) = v72;
      swift_getOpaqueTypeConformance2();
      v90 = v100;
      v91 = v102;
      v92 = v107;
      sub_24F925EE8();
      v88(v87, v89);
      (*(v101 + 8))(v92, v91);
      v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234508, &qword_24F9B2ED8);
      return (*(*(v93 - 8) + 56))(v90, 0, 1, v93);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234508, &qword_24F9B2ED8);
    v95 = *(*(v94 - 8) + 56);

    return v95(a2, 1, 1, v94);
  }

  return result;
}

uint64_t sub_24EF3F040(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24EF3F088(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24EF3F0E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_24EF3F154()
{
  result = qword_27F234510;
  if (!qword_27F234510)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27F234518, &unk_24F9B2EE0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2344F8, &qword_24F9B2ED0);
    type metadata accessor for OverlappingPlayerAvatarsView(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21CCC8, &qword_24F957520);
    sub_24EF3F040(&qword_27F234500, type metadata accessor for OverlappingPlayerAvatarsView, &unk_24FA0B6F0);
    sub_24E602068(&unk_27F22DFA0, &qword_27F21CCC8, &qword_24F957520, MEMORY[0x277D84470]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F234510);
  }

  return result;
}

unint64_t sub_24EF3F2F8()
{
  result = qword_27F2163D8;
  if (!qword_27F2163D8)
  {
    type metadata accessor for UpdateImpedimentCompletionStatesAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2163D8);
  }

  return result;
}

uint64_t sub_24EF3F350(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a1;
  v3[4] = a3;
  v4 = type metadata accessor for ImpedimentFlowDestinationStates(0);
  v5 = swift_task_alloc();
  v3[5] = v5;
  *v5 = v3;
  v5[1] = sub_24EF3F404;

  return MEMORY[0x28217F228](v3 + 2, v4, v4);
}

uint64_t sub_24EF3F404()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_24EF3F85C;
  }

  else
  {
    v2 = sub_24EF3F518;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24EF3F518()
{
  v1 = v0[4];
  v2 = v0[2];
  v3 = *v1;
  if (v3 != 2)
  {
    v4 = v3 & 1;
    v2[16] = v3 & 1;
    if (qword_27F211430 != -1)
    {
      swift_once();
    }

    v5 = sub_24F9220D8();
    __swift_project_value_buffer(v5, qword_27F39E8E0);
    v6 = sub_24F9220B8();
    v7 = sub_24F92BD98();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 67109120;
      *(v8 + 4) = v4;
      _os_log_impl(&dword_24E5DD000, v6, v7, "completedWelcome is set to %{BOOL}d", v8, 8u);
      MEMORY[0x2530542D0](v8, -1, -1);
    }

    v1 = v0[4];
  }

  v9 = v1[1];
  if (v9 != 2)
  {
    v10 = v9 & 1;
    v2[17] = v9 & 1;
    if (qword_27F211430 != -1)
    {
      swift_once();
    }

    v11 = sub_24F9220D8();
    __swift_project_value_buffer(v11, qword_27F39E8E0);
    v12 = sub_24F9220B8();
    v13 = sub_24F92BD98();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 67109120;
      *(v14 + 4) = v10;
      _os_log_impl(&dword_24E5DD000, v12, v13, "completedCrossUse is set to %{BOOL}d", v14, 8u);
      MEMORY[0x2530542D0](v14, -1, -1);
    }

    v1 = v0[4];
  }

  v15 = v1[2];
  if (v15 != 2)
  {
    v16 = v15 & 1;
    v2[18] = v15 & 1;
    if (qword_27F211430 != -1)
    {
      swift_once();
    }

    v17 = sub_24F9220D8();
    __swift_project_value_buffer(v17, qword_27F39E8E0);
    v18 = sub_24F9220B8();
    v19 = sub_24F92BD98();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 67109120;
      *(v20 + 4) = v16;
      _os_log_impl(&dword_24E5DD000, v18, v19, "completedProfileCreation is set to %{BOOL}d", v20, 8u);
      MEMORY[0x2530542D0](v20, -1, -1);
    }
  }

  v21 = v0[3];
  v22 = *MEMORY[0x277D21CA8];
  v23 = sub_24F928AE8();
  (*(*(v23 - 8) + 104))(v21, v22, v23);
  v24 = v0[1];

  return v24();
}

uint64_t sub_24EF3F87C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v18 - v7;
  updated = type metadata accessor for UpdateImpedimentCompletionStatesAction(0);
  v10 = *(updated - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](updated - 8);
  sub_24EF3FAAC(a1, &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a2;
  sub_24EB65B58(&v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510, &unk_24F93C690);

  v14 = sub_24F92A9E8();
  v15 = sub_24F92B858();
  (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_24F9B2F88;
  v16[5] = v13;
  v16[6] = v14;

  sub_24E6959D8(0, 0, v8, &unk_24F94D7B0, v16);

  return v14;
}

uint64_t sub_24EF3FAAC(uint64_t a1, uint64_t a2)
{
  updated = type metadata accessor for UpdateImpedimentCompletionStatesAction(0);
  (*(*(updated - 8) + 16))(a2, a1, updated);
  return a2;
}

uint64_t sub_24EF3FB10()
{
  v1 = (type metadata accessor for UpdateImpedimentCompletionStatesAction(0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);

  v3 = v0 + v1[9];
  v4 = sub_24F928AD8();
  (*(*(v4 - 8) + 8))(v3 + v2, v4);

  return swift_deallocObject();
}

uint64_t sub_24EF3FBF8(uint64_t a1)
{
  v4 = *(type metadata accessor for UpdateImpedimentCompletionStatesAction(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 24);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24E614970;

  return sub_24EF3F350(a1, v6, v1 + v5);
}

uint64_t sub_24EF3FCEC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

void (*ArcadePage.init(deserializing:using:)(uint64_t a1, uint64_t a2))(char *, uint64_t, uint64_t)
{
  v3 = v2;
  v71 = a2;
  v63 = sub_24F9285B8();
  v5 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v59 = (&v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v64 = &v54 - v8;
  MEMORY[0x28223BE20](v9);
  v11 = &v54 - v10;
  v12 = sub_24F928388();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v57 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v56 = &v54 - v16;
  MEMORY[0x28223BE20](v17);
  v62 = &v54 - v18;
  MEMORY[0x28223BE20](v19);
  v21 = &v54 - v20;
  v75 = a1;
  sub_24F928398();
  v22 = sub_24F928348();
  v24 = v23;
  v58 = v13;
  v25 = *(v13 + 8);
  v69 = v13 + 8;
  v70 = v12;
  v68 = v25;
  v25(v21, v12);
  v26 = (v3 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_tabTitle);
  *v26 = v22;
  v26[1] = v24;
  v60 = v26;
  type metadata accessor for ArcadeFooter(0);
  sub_24F928398();
  v66 = v5;
  v27 = *(v5 + 16);
  v28 = v71;
  v29 = v63;
  v27(v11, v71, v63);
  sub_24EF4062C(&qword_27F232A28, type metadata accessor for ArcadeFooter, &protocol conformance descriptor for ArcadeFooter);
  v55 = v11;
  sub_24F929548();
  v30 = v3;
  *(v3 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_footer) = *&v72[0];
  v31 = v62;
  sub_24F928398();
  v32 = v64;
  v33 = v28;
  v34 = v29;
  v61 = v5 + 16;
  v67 = v27;
  v27(v64, v33, v29);
  v35 = v65;
  sub_24EE5B05C(v31, v32, v72);
  if (v35)
  {
    (*(v66 + 8))(v71, v29);
    v68(v75, v70);

    type metadata accessor for ArcadePage(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v36 = v73;
    v37 = v74;
    v38 = v30 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_titleEffect;
    v39 = v72[1];
    *v38 = v72[0];
    *(v38 + 16) = v39;
    *(v38 + 32) = v36;
    *(v38 + 40) = v37;
    v64 = type metadata accessor for Action(0);
    v65 = 0;
    sub_24F928398();
    v40 = v71;
    v41 = static Action.tryToMakeInstance(byDeserializing:using:)(v21, v71);
    v68(v21, v70);
    *(v30 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_subscriptionOfferAction) = v41;
    type metadata accessor for OfferDisplayProperties();
    sub_24F928398();
    v42 = v55;
    v43 = v40;
    v67(v55, v40, v34);
    sub_24EF4062C(&qword_27F225B10, type metadata accessor for OfferDisplayProperties, &protocol conformance descriptor for OfferDisplayProperties);
    sub_24F929548();
    *(v30 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_subscriptionOfferDisplayProperties) = *&v72[0];
    type metadata accessor for ArcadeLockup(0);
    v44 = v75;
    sub_24F928398();
    v67(v42, v43, v34);
    sub_24EF4062C(&qword_27F2294D8, type metadata accessor for ArcadeLockup, &protocol conformance descriptor for ArcadeLockup);
    v45 = v34;
    sub_24F929548();
    *(v30 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_subscriptionLockup) = *&v72[0];
    sub_24F928398();
    v46 = static Action.tryToMakeInstance(byDeserializing:using:)(v21, v43);
    v47 = v70;
    v48 = v68;
    v68(v21, v70);
    *(v30 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_autoUpsellAction) = v46;
    v49 = v56;
    sub_24F928398();
    LOBYTE(v46) = sub_24F928278();
    v48(v49, v47);
    *(v30 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_shouldForceAutoUpsell) = v46 & 1;
    v50 = v57;
    (*(v58 + 16))(v57, v44, v47);
    v34 = v59;
    v67(v59, v43, v45);
    v51 = v65;
    v52 = GenericPage.init(deserializing:using:)(v50, v34);
    if (!v51)
    {
      v34 = v52;
    }

    (*(v66 + 8))(v43, v45);
    v68(v44, v70);
  }

  return v34;
}

uint64_t type metadata accessor for ArcadePage(uint64_t a1)
{
  result = qword_27F2345A0;
  if (!qword_27F2345A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24EF4062C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t ArcadePage.__allocating_init(shelves:title:shareAction:presentationOptions:nextPage:isIncomplete:uber:loadCompletedAction:pageRefreshPolicy:pageMetrics:pageRenderEvent:footer:titleEffect:autoUpsellAction:shouldForceAutoUpsell:subscriptionLockup:subscriptionOfferAction:subscriptionOfferDisplayProperties:context:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unsigned __int8 a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v97 = a8;
  LODWORD(v84) = a7;
  v103 = a6;
  v83 = a5;
  v96 = a4;
  v80 = a2;
  v81 = a1;
  v98 = a20;
  v95 = a15;
  v91 = a12;
  v100 = a11;
  v89 = a10;
  v90 = a9;
  LODWORD(v88) = a16;
  v94 = a13;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218B0, &unk_24F975980);
  MEMORY[0x28223BE20](v22 - 8);
  v78 = &v77 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v82 = &v77 - v25;
  MEMORY[0x28223BE20](v26);
  v93 = &v77 - v27;
  MEMORY[0x28223BE20](v28);
  v92 = &v77 - v29;
  v101 = sub_24F928818();
  v30 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v99 = &v77 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v34 = &v77 - v33;
  v102 = &v77 - v33;
  v35 = swift_allocObject();
  v36 = *(a14 + 32);
  v37 = (v35 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_tabTitle);
  *v37 = a2;
  v37[1] = a3;
  *(v35 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_footer) = a13;
  LOBYTE(v37) = *(a14 + 40);
  v38 = v35 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_titleEffect;
  v39 = *(a14 + 16);
  *v38 = *a14;
  *(v38 + 16) = v39;
  *(v38 + 32) = v36;
  *(v38 + 40) = v37;
  *(v35 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_subscriptionOfferAction) = a18;
  *(v35 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_subscriptionOfferDisplayProperties) = a19;
  *(v35 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_subscriptionLockup) = a17;
  *(v35 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_autoUpsellAction) = v95;
  *(v35 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_shouldForceAutoUpsell) = v88;
  sub_24E60169C(v103, v105, &qword_27F2129B0, &unk_24F945320);
  v85 = v30;
  v79 = *(v30 + 16);
  v40 = v34;
  v41 = v101;
  v79(v40, v100, v101);
  v42 = v92;
  sub_24E60169C(v98, v92, &qword_27F2218B0, &unk_24F975980);
  v43 = OBJC_IVAR____TtC12GameStoreKit11GenericPage_uber;
  *(v35 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_uber) = 0;

  v44 = a3;

  v86 = a18;

  v87 = a19;

  v88 = a17;
  v45 = v93;

  v46 = sub_24EEF0A68(v81);
  v48 = v47;

  *(v35 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfOrdering) = v46;
  v49 = v42;
  *(v35 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfMapping) = v48;
  v50 = (v35 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_title);
  *v50 = v80;
  v50[1] = v44;
  *(v35 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_shareAction) = v96;
  *(v35 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_presentationOptions) = v83;
  sub_24E60169C(v105, v35 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_nextPage, &qword_27F2129B0, &unk_24F945320);
  *(v35 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_isIncomplete) = v84;
  swift_beginAccess();
  *(v35 + v43) = v97;
  *(v35 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_loadCompletedAction) = 0;
  v51 = v99;
  v52 = v79;
  v79(v99, v102, v41);
  sub_24E60169C(v49, v45, &qword_27F2218B0, &unk_24F975980);
  *(v35 + 16) = 0;
  v52(v35 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics, v51, v41);
  *(v35 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageRenderEvent) = v91;
  v53 = v45;
  v54 = v45;
  v55 = v82;
  sub_24E60169C(v54, v82, &qword_27F2218B0, &unk_24F975980);
  v56 = sub_24F9285B8();
  v84 = *(v56 - 8);
  v57 = *(v84 + 48);
  v58 = v55;
  if (v57(v55, 1, v56) == 1)
  {

    sub_24E601704(v98, &qword_27F2218B0, &unk_24F975980);
    v59 = *(v85 + 8);
    v60 = v101;
    v59(v100, v101);
    sub_24E601704(v103, &qword_27F2129B0, &unk_24F945320);
    sub_24E601704(v53, &qword_27F2218B0, &unk_24F975980);
    v59(v99, v60);
    sub_24E601704(v49, &qword_27F2218B0, &unk_24F975980);
    v59(v102, v60);
    sub_24E601704(v105, &qword_27F2129B0, &unk_24F945320);
    v61 = v55;
    v62 = &qword_27F2218B0;
    v63 = &unk_24F975980;
  }

  else
  {
    v64 = qword_27F2105F0;

    if (v64 != -1)
    {
      swift_once();
    }

    v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221578, &qword_24F97ADF0);
    __swift_project_value_buffer(v65, qword_27F22D8D8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221570, &unk_24F966930);
    sub_24F9285C8();
    v66 = v104;
    v67 = v93;
    if (v104)
    {
    }

    v68 = *(v84 + 8);
    v68(v58, v56);
    if (v66)
    {
      v69 = v78;
      sub_24E60169C(v67, v78, &qword_27F2218B0, &unk_24F975980);
      if (v57(v69, 1, v56) != 1)
      {
        sub_24ECDF110();

        sub_24E601704(v98, &qword_27F2218B0, &unk_24F975980);
        v75 = *(v85 + 8);
        v76 = v101;
        v75(v100, v101);
        sub_24E601704(v103, &qword_27F2129B0, &unk_24F945320);
        sub_24E601704(v93, &qword_27F2218B0, &unk_24F975980);
        v75(v99, v76);
        sub_24E601704(v92, &qword_27F2218B0, &unk_24F975980);
        v75(v102, v76);
        sub_24E601704(v105, &qword_27F2129B0, &unk_24F945320);
        v68(v78, v56);
        return v35;
      }

      sub_24E601704(v98, &qword_27F2218B0, &unk_24F975980);
      v70 = *(v85 + 8);
      v71 = v101;
      v70(v100, v101);
      sub_24E601704(v103, &qword_27F2129B0, &unk_24F945320);
      sub_24E601704(v93, &qword_27F2218B0, &unk_24F975980);
      v70(v99, v71);
      sub_24E601704(v92, &qword_27F2218B0, &unk_24F975980);
      v70(v102, v71);
      sub_24E601704(v105, &qword_27F2129B0, &unk_24F945320);
      v61 = v69;
      v62 = &qword_27F2218B0;
      v63 = &unk_24F975980;
    }

    else
    {

      sub_24E601704(v98, &qword_27F2218B0, &unk_24F975980);
      v72 = *(v85 + 8);
      v73 = v101;
      v72(v100, v101);
      sub_24E601704(v103, &qword_27F2129B0, &unk_24F945320);
      sub_24E601704(v67, &qword_27F2218B0, &unk_24F975980);
      v72(v99, v73);
      sub_24E601704(v92, &qword_27F2218B0, &unk_24F975980);
      v72(v102, v73);
      v61 = v105;
      v62 = &qword_27F2129B0;
      v63 = &unk_24F945320;
    }
  }

  sub_24E601704(v61, v62, v63);
  return v35;
}

uint64_t ArcadePage.init(shelves:title:shareAction:presentationOptions:nextPage:isIncomplete:uber:loadCompletedAction:pageRefreshPolicy:pageMetrics:pageRenderEvent:footer:titleEffect:autoUpsellAction:shouldForceAutoUpsell:subscriptionLockup:subscriptionOfferAction:subscriptionOfferDisplayProperties:context:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unsigned __int8 a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v21 = v20;
  v90 = a8;
  LODWORD(v84) = a7;
  v101 = a6;
  v82 = a5;
  v95 = a4;
  v80 = a2;
  v81 = a1;
  v96 = a20;
  v102 = a19;
  v93 = a17;
  v94 = a15;
  v89 = a12;
  v98 = a11;
  v87 = a10;
  v88 = a9;
  LODWORD(v86) = a16;
  v91 = a13;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218B0, &unk_24F975980);
  MEMORY[0x28223BE20](v24 - 8);
  v79 = &v78 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v83 = &v78 - v27;
  MEMORY[0x28223BE20](v28);
  v99 = &v78 - v29;
  MEMORY[0x28223BE20](v30);
  v100 = &v78 - v31;
  v32 = sub_24F928818();
  v92 = v32;
  v33 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v97 = &v78 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v37 = &v78 - v36;
  v38 = *(a14 + 32);
  v39 = (v21 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_tabTitle);
  *v39 = a2;
  v39[1] = a3;
  *(v21 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_footer) = a13;
  LOBYTE(v39) = *(a14 + 40);
  v40 = v21 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_titleEffect;
  v41 = *(a14 + 16);
  *v40 = *a14;
  *(v40 + 16) = v41;
  *(v40 + 32) = v38;
  *(v40 + 40) = v39;
  *(v21 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_subscriptionOfferAction) = a18;
  v42 = v101;
  *(v21 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_subscriptionOfferDisplayProperties) = v102;
  *(v21 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_subscriptionLockup) = a17;
  *(v21 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_autoUpsellAction) = v94;
  *(v21 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_shouldForceAutoUpsell) = v86;
  sub_24E60169C(v42, v104, &qword_27F2129B0, &unk_24F945320);
  v85 = v33;
  v43 = *(v33 + 16);
  v43(v37, v98, v32);
  v44 = v100;
  sub_24E60169C(v96, v100, &qword_27F2218B0, &unk_24F975980);
  v45 = OBJC_IVAR____TtC12GameStoreKit11GenericPage_uber;
  *(v21 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_uber) = 0;

  v86 = a18;

  v46 = sub_24EEF0A68(v81);
  v48 = v47;

  *(v21 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfOrdering) = v46;
  *(v21 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfMapping) = v48;
  v49 = (v21 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_title);
  *v49 = v80;
  v49[1] = a3;
  *(v21 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_shareAction) = v95;
  *(v21 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_presentationOptions) = v82;
  v50 = v92;
  sub_24E60169C(v104, v21 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_nextPage, &qword_27F2129B0, &unk_24F945320);
  *(v21 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_isIncomplete) = v84;
  swift_beginAccess();
  *(v21 + v45) = v90;

  *(v21 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_loadCompletedAction) = 0;
  v51 = v97;
  v43(v97, v37, v50);
  v52 = v99;
  sub_24E60169C(v44, v99, &qword_27F2218B0, &unk_24F975980);
  *(v21 + 16) = 0;
  v53 = v50;
  v54 = v83;
  v43((v21 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics), v51, v53);
  *(v21 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageRenderEvent) = v89;
  sub_24E60169C(v52, v54, &qword_27F2218B0, &unk_24F975980);
  v55 = sub_24F9285B8();
  v56 = *(v55 - 8);
  v57 = *(v56 + 48);
  if (v57(v54, 1, v55) == 1)
  {

    sub_24E601704(v96, &qword_27F2218B0, &unk_24F975980);
    v58 = *(v85 + 8);
    v59 = v92;
    v58(v98, v92);
    sub_24E601704(v101, &qword_27F2129B0, &unk_24F945320);
    sub_24E601704(v99, &qword_27F2218B0, &unk_24F975980);
    v58(v97, v59);
    sub_24E601704(v100, &qword_27F2218B0, &unk_24F975980);
    v58(v37, v59);
    sub_24E601704(v104, &qword_27F2129B0, &unk_24F945320);
    v60 = v54;
    v61 = &qword_27F2218B0;
    v62 = &unk_24F975980;
  }

  else
  {
    v84 = v37;
    v63 = v85;
    v64 = qword_27F2105F0;

    if (v64 != -1)
    {
      swift_once();
    }

    v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221578, &qword_24F97ADF0);
    __swift_project_value_buffer(v65, qword_27F22D8D8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221570, &unk_24F966930);
    sub_24F9285C8();
    v66 = v103;
    if (v103)
    {
    }

    v67 = *(v56 + 8);
    v67(v54, v55);
    v68 = v99;
    if (v66)
    {
      v69 = v79;
      sub_24E60169C(v99, v79, &qword_27F2218B0, &unk_24F975980);
      if (v57(v69, 1, v55) != 1)
      {
        sub_24ECDF110();

        sub_24E601704(v96, &qword_27F2218B0, &unk_24F975980);
        v75 = *(v63 + 8);
        v76 = v68;
        v77 = v92;
        v75(v98, v92);
        sub_24E601704(v101, &qword_27F2129B0, &unk_24F945320);
        sub_24E601704(v76, &qword_27F2218B0, &unk_24F975980);
        v75(v97, v77);
        sub_24E601704(v100, &qword_27F2218B0, &unk_24F975980);
        v75(v84, v77);
        sub_24E601704(v104, &qword_27F2129B0, &unk_24F945320);
        v67(v79, v55);
        return v21;
      }

      sub_24E601704(v96, &qword_27F2218B0, &unk_24F975980);
      v70 = *(v63 + 8);
      v71 = v92;
      v70(v98, v92);
      sub_24E601704(v101, &qword_27F2129B0, &unk_24F945320);
      sub_24E601704(v68, &qword_27F2218B0, &unk_24F975980);
      v70(v97, v71);
      sub_24E601704(v100, &qword_27F2218B0, &unk_24F975980);
      v70(v84, v71);
      sub_24E601704(v104, &qword_27F2129B0, &unk_24F945320);
      v60 = v69;
      v61 = &qword_27F2218B0;
      v62 = &unk_24F975980;
    }

    else
    {

      sub_24E601704(v96, &qword_27F2218B0, &unk_24F975980);
      v72 = *(v63 + 8);
      v73 = v92;
      v72(v98, v92);
      sub_24E601704(v101, &qword_27F2129B0, &unk_24F945320);
      sub_24E601704(v68, &qword_27F2218B0, &unk_24F975980);
      v72(v97, v73);
      sub_24E601704(v100, &qword_27F2218B0, &unk_24F975980);
      v72(v84, v73);
      v60 = v104;
      v61 = &qword_27F2129B0;
      v62 = &unk_24F945320;
    }
  }

  sub_24E601704(v60, v61, v62);
  return v21;
}

uint64_t ArcadePage.__allocating_init(shelves:title:shareAction:presentationOptions:nextPage:isIncomplete:uber:loadCompletedAction:pageRefreshPolicy:pageMetrics:pageRenderEvent:context:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v99 = a8;
  LODWORD(v84) = a7;
  v83 = a5;
  v97 = a4;
  v81 = a3;
  v80 = a2;
  v82 = a1;
  v93 = a12;
  v86 = a10;
  v87 = a9;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218B0, &unk_24F975980);
  MEMORY[0x28223BE20](v15 - 8);
  v79 = &v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v98 = &v78 - v18;
  MEMORY[0x28223BE20](v19);
  v96 = &v78 - v20;
  MEMORY[0x28223BE20](v21);
  v95 = &v78 - v22;
  MEMORY[0x28223BE20](v23);
  v25 = &v78 - v24;
  v26 = sub_24F928818();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v94 = &v78 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v31 = &v78 - v30;
  v100 = &v78 - v30;
  MEMORY[0x28223BE20](v32);
  v34 = &v78 - v33;
  v90 = a6;
  sub_24E60169C(a6, v103, &qword_27F2129B0, &unk_24F945320);
  v85 = v27;
  v35 = *(v27 + 16);
  v89 = a11;
  v35(v34, a11, v26);
  v88 = a13;
  sub_24E60169C(a13, v25, &qword_27F2218B0, &unk_24F975980);
  type metadata accessor for ArcadePage(0);
  v36 = swift_allocObject();
  v37 = (v36 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_tabTitle);
  *v37 = a2;
  v38 = v81;
  v37[1] = v81;
  *(v36 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_footer) = 0;
  v39 = v36 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_titleEffect;
  *(v39 + 32) = 0;
  *v39 = 0u;
  *(v39 + 16) = 0u;
  *(v39 + 40) = 3;
  *(v36 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_subscriptionOfferAction) = 0;
  *(v36 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_subscriptionOfferDisplayProperties) = 0;
  *(v36 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_subscriptionLockup) = 0;
  *(v36 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_autoUpsellAction) = 0;
  *(v36 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_shouldForceAutoUpsell) = 0;
  sub_24E60169C(v103, v102, &qword_27F2129B0, &unk_24F945320);
  v91 = v34;
  v35(v31, v34, v26);
  v92 = v25;
  v40 = v95;
  sub_24E60169C(v25, v95, &qword_27F2218B0, &unk_24F975980);
  v41 = OBJC_IVAR____TtC12GameStoreKit11GenericPage_uber;
  *(v36 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_uber) = 0;

  v42 = sub_24EEF0A68(v82);
  v44 = v43;
  v45 = v26;

  *(v36 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfOrdering) = v42;
  *(v36 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfMapping) = v44;
  v46 = (v36 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_title);
  *v46 = v80;
  v46[1] = v38;
  v47 = v40;
  *(v36 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_shareAction) = v97;
  *(v36 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_presentationOptions) = v83;
  sub_24E60169C(v102, v36 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_nextPage, &qword_27F2129B0, &unk_24F945320);
  *(v36 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_isIncomplete) = v84;
  swift_beginAccess();
  v48 = v100;
  *(v36 + v41) = v99;
  *(v36 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_loadCompletedAction) = 0;
  v49 = v94;
  v35(v94, v48, v26);
  v50 = v96;
  sub_24E60169C(v40, v96, &qword_27F2218B0, &unk_24F975980);
  *(v36 + 16) = 0;
  v35((v36 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics), v49, v26);
  *(v36 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageRenderEvent) = v93;
  v51 = v50;
  v52 = v50;
  v53 = v98;
  sub_24E60169C(v52, v98, &qword_27F2218B0, &unk_24F975980);
  v54 = sub_24F9285B8();
  v84 = *(v54 - 8);
  v55 = *(v84 + 48);
  v56 = v53;
  v57 = v54;
  v58 = v56;
  if (v55() == 1)
  {

    sub_24E601704(v88, &qword_27F2218B0, &unk_24F975980);
    v59 = *(v85 + 8);
    v59(v89, v45);
    sub_24E601704(v90, &qword_27F2129B0, &unk_24F945320);
    sub_24E601704(v51, &qword_27F2218B0, &unk_24F975980);
    v59(v49, v45);
    sub_24E601704(v47, &qword_27F2218B0, &unk_24F975980);
    v59(v100, v45);
    sub_24E601704(v102, &qword_27F2129B0, &unk_24F945320);
    sub_24E601704(v92, &qword_27F2218B0, &unk_24F975980);
    v59(v91, v45);
    sub_24E601704(v103, &qword_27F2129B0, &unk_24F945320);
    v60 = v58;
    v61 = &qword_27F2218B0;
    v62 = &unk_24F975980;
  }

  else
  {
    v63 = v85;
    v64 = qword_27F2105F0;

    if (v64 != -1)
    {
      swift_once();
    }

    v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221578, &qword_24F97ADF0);
    __swift_project_value_buffer(v65, qword_27F22D8D8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221570, &unk_24F966930);
    sub_24F9285C8();
    v66 = v101;
    v67 = v45;
    v68 = v84;
    if (v101)
    {
    }

    v71 = *(v68 + 8);
    v69 = v68 + 8;
    v70 = v71;
    v71(v98, v57);
    v72 = v96;
    if (v66)
    {
      v73 = v79;
      sub_24E60169C(v96, v79, &qword_27F2218B0, &unk_24F975980);
      if ((v55)(v73, 1, v57) != 1)
      {
        sub_24ECDF110();

        sub_24E601704(v88, &qword_27F2218B0, &unk_24F975980);
        v77 = *(v63 + 8);
        v77(v89, v67);
        v84 = v69;
        sub_24E601704(v90, &qword_27F2129B0, &unk_24F945320);
        sub_24E601704(v96, &qword_27F2218B0, &unk_24F975980);
        v77(v94, v67);
        sub_24E601704(v95, &qword_27F2218B0, &unk_24F975980);
        v77(v100, v67);
        sub_24E601704(v102, &qword_27F2129B0, &unk_24F945320);
        sub_24E601704(v92, &qword_27F2218B0, &unk_24F975980);
        v77(v91, v67);
        sub_24E601704(v103, &qword_27F2129B0, &unk_24F945320);
        v70(v79, v57);
        return v36;
      }

      sub_24E601704(v88, &qword_27F2218B0, &unk_24F975980);
      v74 = *(v63 + 8);
      v74(v89, v67);
      sub_24E601704(v90, &qword_27F2129B0, &unk_24F945320);
      sub_24E601704(v96, &qword_27F2218B0, &unk_24F975980);
      v74(v94, v67);
      sub_24E601704(v95, &qword_27F2218B0, &unk_24F975980);
      v74(v100, v67);
      sub_24E601704(v102, &qword_27F2129B0, &unk_24F945320);
      sub_24E601704(v92, &qword_27F2218B0, &unk_24F975980);
      v74(v91, v67);
      sub_24E601704(v103, &qword_27F2129B0, &unk_24F945320);
      v60 = v73;
      v61 = &qword_27F2218B0;
      v62 = &unk_24F975980;
    }

    else
    {

      sub_24E601704(v88, &qword_27F2218B0, &unk_24F975980);
      v75 = *(v63 + 8);
      v75(v89, v67);
      sub_24E601704(v90, &qword_27F2129B0, &unk_24F945320);
      sub_24E601704(v72, &qword_27F2218B0, &unk_24F975980);
      v75(v94, v67);
      sub_24E601704(v95, &qword_27F2218B0, &unk_24F975980);
      v75(v100, v67);
      sub_24E601704(v102, &qword_27F2129B0, &unk_24F945320);
      sub_24E601704(v92, &qword_27F2218B0, &unk_24F975980);
      v75(v91, v67);
      v60 = v103;
      v61 = &qword_27F2129B0;
      v62 = &unk_24F945320;
    }
  }

  sub_24E601704(v60, v61, v62);
  return v36;
}

uint64_t ArcadePage.tabTitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_tabTitle);

  return v1;
}

id ArcadePage.titleEffect.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_titleEffect;
  v3 = *(v1 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_titleEffect);
  v4 = *(v1 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_titleEffect + 8);
  v5 = *(v1 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_titleEffect + 16);
  v6 = *(v1 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_titleEffect + 24);
  v7 = *(v1 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_titleEffect + 32);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  v8 = *(v2 + 40);
  *(a1 + 40) = v8;
  return sub_24ED21BB0(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_24EF429AC(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218B0, &unk_24F975980);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v113 = &v87 - v9;
  MEMORY[0x28223BE20](v10);
  v115 = &v87 - v11;
  MEMORY[0x28223BE20](v12);
  v118 = &v87 - v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v87 - v15;
  v17 = sub_24F928818();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v114 = &v87 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v87 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = &v87 - v24;
  v26 = swift_dynamicCastClass();
  if (v26)
  {
    v27 = v26;
    v111 = v22;
    v112 = v16;
    v110 = a1;

    v28 = ShelfBasedPage.shelves.getter(v4, &protocol witness table for GenericPage);
    v29 = ShelfBasedPage.shelves.getter(v4, &protocol witness table for GenericPage);
    v121 = v28;
    sub_24EA0AE3C(v29);
    v100 = v121;
    v30 = *(v2 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_title + 8);
    if (v30)
    {
      v109 = *(v2 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_title);
      v108 = v30;
    }

    else
    {
      v31 = *(v27 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_title + 8);
      v109 = *(v27 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_title);
      v108 = v31;
    }

    v99 = *(v2 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_presentationOptions);
    sub_24E60169C(v27 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_nextPage, &v121, &qword_27F2129B0, &unk_24F945320);
    v32 = v110;
    if (*(v2 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_isIncomplete) == 1)
    {
      v98 = *(v27 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_isIncomplete);
    }

    else
    {
      v98 = 0;
    }

    v33 = OBJC_IVAR____TtC12GameStoreKit11GenericPage_uber;
    swift_beginAccess();
    v34 = *(v2 + v33);
    if (!v34)
    {
      swift_beginAccess();
    }

    v102 = v34;
    v35 = *(v2 + 16);
    v88 = v7;
    if (v35)
    {
      v36 = *(v32 + 16);

      v101 = sub_24ED64DBC(v36);
    }

    else
    {
      v101 = *(v32 + 16);
    }

    v37 = OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics;
    swift_beginAccess();
    v38 = *(v18 + 16);
    v105 = v18 + 16;
    v106 = v38;
    v38(v25, (v2 + v37), v17);
    v96 = *(v2 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageRenderEvent);
    v39 = v18;
    v92 = *(v2 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_footer);
    v40 = v92;
    v41 = *(v2 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_titleEffect);
    v42 = *(v2 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_titleEffect + 8);
    v43 = v17;
    v44 = *(v2 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_titleEffect + 16);
    v93 = *(v2 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_titleEffect + 24);
    v95 = *(v2 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_autoUpsellAction);
    v97 = v39;
    v94 = *(v2 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_shouldForceAutoUpsell);
    v104 = *(v2 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_subscriptionLockup);
    v45 = *(v2 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_subscriptionOfferAction);
    v117 = v43;
    v90 = *(v2 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_titleEffect + 32);
    v46 = v90;
    v91 = *(v2 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_subscriptionOfferDisplayProperties);
    v47 = v91;
    v107 = v25;
    v48 = *(v2 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_titleEffect + 40);
    v89 = v48;
    v103 = sub_24F9285B8();
    v116 = *(v103 - 8);
    v49 = v112;
    (*(v116 + 56))(v112, 1, 1, v103);
    type metadata accessor for ArcadePage(0);
    v2 = swift_allocObject();
    v50 = (v2 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_tabTitle);
    v51 = v108;
    *v50 = v109;
    v50[1] = v51;
    *(v2 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_footer) = v40;
    v52 = v2 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_titleEffect;
    *v52 = v41;
    *(v52 + 8) = v42;
    v53 = v93;
    *(v52 + 16) = v44;
    *(v52 + 24) = v53;
    *(v52 + 32) = v46;
    *(v52 + 40) = v48;
    *(v2 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_subscriptionOfferAction) = v45;
    *(v2 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_subscriptionOfferDisplayProperties) = v47;
    *(v2 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_subscriptionLockup) = v104;
    *(v2 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_autoUpsellAction) = v95;
    *(v2 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_shouldForceAutoUpsell) = v94;
    sub_24E60169C(&v121, v120, &qword_27F2129B0, &unk_24F945320);
    v54 = v111;
    v106(v111, v107, v117);
    v55 = v118;
    sub_24E60169C(v49, v118, &qword_27F2218B0, &unk_24F975980);
    v56 = OBJC_IVAR____TtC12GameStoreKit11GenericPage_uber;
    *(v2 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_uber) = 0;
    v57 = v44;
    v58 = v55;
    v59 = v117;
    sub_24ED21BB0(v41, v42, v57, v53, v90, v89);

    v60 = v108;

    v61 = sub_24EEF0A68(v100);
    v63 = v62;

    *(v2 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfOrdering) = v61;
    *(v2 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfMapping) = v63;
    v64 = (v2 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_title);
    *v64 = v109;
    v64[1] = v60;
    *(v2 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_shareAction) = 0;
    *(v2 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_presentationOptions) = v99;
    sub_24E60169C(v120, v2 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_nextPage, &qword_27F2129B0, &unk_24F945320);
    *(v2 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_isIncomplete) = v98;
    swift_beginAccess();
    *(v2 + v56) = v102;
    *(v2 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_loadCompletedAction) = 0;
    v65 = v114;
    v66 = v106;
    v106(v114, v54, v59);
    v67 = v58;
    v68 = v115;
    sub_24E60169C(v67, v115, &qword_27F2218B0, &unk_24F975980);
    *(v2 + 16) = 0;
    v66(v2 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics, v65, v59);
    *(v2 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageRenderEvent) = v96;
    v69 = v113;
    sub_24E60169C(v68, v113, &qword_27F2218B0, &unk_24F975980);
    v70 = *(v116 + 48);
    if (v70(v69, 1, v103) == 1)
    {

      sub_24E601704(v68, &qword_27F2218B0, &unk_24F975980);
      v71 = v69;
      v72 = *(v97 + 8);
      v72(v65, v59);
      sub_24E601704(v118, &qword_27F2218B0, &unk_24F975980);
      v72(v111, v59);
      sub_24E601704(v120, &qword_27F2129B0, &unk_24F945320);
      sub_24E601704(v112, &qword_27F2218B0, &unk_24F975980);
      v72(v107, v59);
    }

    else
    {
      v73 = v97;
      v74 = qword_27F2105F0;

      if (v74 != -1)
      {
        swift_once();
      }

      v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221578, &qword_24F97ADF0);
      __swift_project_value_buffer(v75, qword_27F22D8D8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221570, &unk_24F966930);
      sub_24F9285C8();
      v76 = v119;
      v71 = v88;
      if (v119)
      {
      }

      v77 = *(v116 + 8);
      v78 = v103;
      v116 += 8;
      v77(v113, v103);
      v79 = v115;
      if (!v76)
      {

        sub_24E601704(v79, &qword_27F2218B0, &unk_24F975980);
        v83 = *(v73 + 8);
        v84 = v117;
        v83(v114, v117);
        sub_24E601704(v118, &qword_27F2218B0, &unk_24F975980);
        v83(v111, v84);
        sub_24E601704(v120, &qword_27F2129B0, &unk_24F945320);
        sub_24E601704(v112, &qword_27F2218B0, &unk_24F975980);
        v83(v107, v84);
        sub_24E601704(&v121, &qword_27F2129B0, &unk_24F945320);
        return v2;
      }

      sub_24E60169C(v115, v71, &qword_27F2218B0, &unk_24F975980);
      v80 = v70(v71, 1, v78);
      v81 = v117;
      if (v80 != 1)
      {
        sub_24ECDF110();

        sub_24E601704(v79, &qword_27F2218B0, &unk_24F975980);
        v85 = *(v73 + 8);
        v85(v114, v81);
        sub_24E601704(v118, &qword_27F2218B0, &unk_24F975980);
        v85(v111, v81);
        sub_24E601704(v120, &qword_27F2129B0, &unk_24F945320);
        sub_24E601704(v112, &qword_27F2218B0, &unk_24F975980);
        v85(v107, v81);
        sub_24E601704(&v121, &qword_27F2129B0, &unk_24F945320);
        v77(v71, v103);
        return v2;
      }

      sub_24E601704(v79, &qword_27F2218B0, &unk_24F975980);
      v82 = *(v73 + 8);
      v82(v114, v81);
      sub_24E601704(v118, &qword_27F2218B0, &unk_24F975980);
      v82(v111, v81);
      sub_24E601704(v120, &qword_27F2129B0, &unk_24F945320);
      sub_24E601704(v112, &qword_27F2218B0, &unk_24F975980);
      v82(v107, v81);
    }

    sub_24E601704(&v121, &qword_27F2129B0, &unk_24F945320);
    sub_24E601704(v71, &qword_27F2218B0, &unk_24F975980);
  }

  else
  {
  }

  return v2;
}

double sub_24EF43814()
{

  sub_24EF43964(*(v0 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_titleEffect), *(v0 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_titleEffect + 8), *(v0 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_titleEffect + 16), *(v0 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_titleEffect + 24), *(v0 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_titleEffect + 32), *(v0 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_titleEffect + 40));

  return result;
}

uint64_t ArcadePage.deinit()
{
  v0 = GenericPage.deinit();

  sub_24EF43964(*(v0 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_titleEffect), *(v0 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_titleEffect + 8), *(v0 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_titleEffect + 16), *(v0 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_titleEffect + 24), *(v0 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_titleEffect + 32), *(v0 + OBJC_IVAR____TtC12GameStoreKit10ArcadePage_titleEffect + 40));

  return v0;
}

void *sub_24EF43964(void *result, void *a2, void *a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 - 1 >= 2)
  {
    if (a6)
    {
      return result;
    }
  }

  else
  {

    result = a2;
    a2 = a3;
  }
}

uint64_t ArcadePage.__deallocating_deinit()
{
  ArcadePage.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_24EF43B1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a4;
  v5[7] = v4;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  v5[8] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CDE0, &qword_24F957888);
  v5[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24EF43BC4, 0, 0);
}

uint64_t sub_24EF43BC4()
{
  type metadata accessor for ArtworkLoader();
  sub_24F928FD8();
  sub_24F92A758();
  v0[10] = v0[2];
  sub_24F92B7F8();
  v0[11] = sub_24F92B7E8();
  v2 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24EF43C90, v2, v1);
}

uint64_t sub_24EF43C90()
{
  v1 = *(v0 + 56);

  *(v0 + 96) = sub_24E7E9768(v1, v2, 128.0, 128.0);

  return MEMORY[0x2822009F8](sub_24EF43D14, 0, 0);
}

uint64_t sub_24EF43D14()
{
  v1 = v0[12];
  if (v1)
  {
    v3 = v0[6];
    v2 = v0[7];
    v4 = v0[5];
    v5 = swift_allocObject();
    v0[13] = v5;
    swift_weakInit();
    v6 = swift_task_alloc();
    v0[14] = v6;
    v6[2] = v5;
    v6[3] = v3;
    v6[4] = v4;
    v6[5] = v1;
    v6[6] = v2;
    v7 = swift_task_alloc();
    v0[15] = v7;
    *v7 = v0;
    v7[1] = sub_24EF43EF8;
    v9 = v0[8];
    v8 = v0[9];

    return MEMORY[0x2822007B8](v8, 0, 0, 0xD000000000000027, 0x800000024FA64A00, sub_24EF456D8, v6, v9);
  }

  else
  {
    v10 = v0[5];
    v11 = v0[6];
    v12 = v0[3];

    v13 = sub_24F91F6B8();
    (*(*(v13 - 8) + 16))(v12, v10, v13);
    v14 = v0[6];
    v15 = v11;

    v16 = v0[1];

    return v16(0, v14);
  }
}

uint64_t sub_24EF43EF8()
{

  return MEMORY[0x2822009F8](sub_24EF4402C, 0, 0);
}

uint64_t sub_24EF4402C()
{
  v1 = v0[9];
  v2 = v0[8];
  v3 = v0[3];

  v4 = *v1;
  v5 = *(v1 + 1);
  v6 = *(v2 + 64);
  v7 = sub_24F91F6B8();
  (*(*(v7 - 8) + 32))(v3, &v1[v6], v7);

  v8 = v0[1];

  return v8(v4, v5);
}

uint64_t sub_24EF44104(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v32 = a6;
  v33 = a5;
  v34 = a3;
  v35 = a1;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2345B0, &unk_24F9B3070);
  v7 = *(v36 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v36);
  v37 = v31 - v9;
  v10 = sub_24F91F6B8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CDE0, &qword_24F957888);
  MEMORY[0x28223BE20](v13);
  v15 = v31 - v14;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v17 = *(v11 + 16);
    v31[1] = Strong;
    v17(v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a4, v10);
    sub_24EF456E8();
    sub_24F92C7F8();
    v18 = *(v7 + 16);
    v19 = v10;
    v31[0] = v10;
    v20 = v36;
    v18(v37, v35, v36);
    v17(v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a4, v19);
    v21 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v22 = (v8 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
    v23 = v34;
    v24 = (*(v11 + 80) + v22 + 8) & ~*(v11 + 80);
    v25 = swift_allocObject();
    (*(v7 + 32))(v25 + v21, v37, v20);
    *(v25 + v22) = v23;
    (*(v11 + 32))(v25 + v24, v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v31[0]);
    *(v25 + ((v12 + v24 + 7) & 0xFFFFFFFFFFFFFFF8)) = v32;
    v26 = v23;

    ArtworkLoader.fetchArtwork(using:closestMatch:handlerKey:completionHandler:)(v33, 0, v38, sub_24EF458BC, v25);

    return sub_24E601704(v38, &qword_27F235830, &qword_24F93B8C0);
  }

  else
  {
    v28 = *(v13 + 64);
    v29 = v34;
    *v15 = 0;
    *(v15 + 1) = v29;
    (*(v11 + 16))(&v15[v28], a4, v10);
    v30 = v29;
    return sub_24F92B798();
  }
}

uint64_t sub_24EF4447C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CDE0, &qword_24F957888);
  MEMORY[0x28223BE20](v12);
  v15 = &v24 - v14;
  if (a1)
  {
    v16 = *(a8 + 48);
    v17 = *(v13 + 64);
    *v15 = a1;
    *(v15 + 1) = v16;
    v18 = sub_24F91F6B8();
    (*(*(v18 - 8) + 16))(&v15[v17], a7, v18);
    v19 = v16;
    a6 = a1;
  }

  else
  {
    v20 = *(v13 + 64);
    *v15 = 0;
    *(v15 + 1) = a6;
    v21 = sub_24F91F6B8();
    (*(*(v21 - 8) + 16))(&v15[v20], a7, v21);
  }

  v22 = a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2345B0, &unk_24F9B3070);
  return sub_24F92B798();
}

uint64_t sub_24EF445D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_24EF44694;

  return sub_24EF43B1C(a1, a2, a3, a4);
}

uint64_t sub_24EF44694(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

uint64_t sub_24EF44798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a1;
  v5[4] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2190D8, &unk_24F94BD70);
  v5[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  v5[8] = swift_task_alloc();
  v5[9] = swift_task_alloc();
  v6 = sub_24F91F4A8();
  v5[10] = v6;
  v5[11] = *(v6 - 8);
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();
  v7 = type metadata accessor for ThreeDimensionalMediaArtworkImageDownloader();
  v8 = swift_task_alloc();
  v5[14] = v8;
  *v8 = v5;
  v8[1] = sub_24EF44938;

  return MEMORY[0x28217F228](v5 + 2, v7, v7);
}

uint64_t sub_24EF44938()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_24EF45144;
  }

  else
  {
    v2 = sub_24EF44A4C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24EF44A4C()
{
  v2 = v0 + 9;
  v1 = v0[9];
  v3 = v0[10];
  v4 = v0[11];
  v0[16] = v0[2];
  sub_24F928968();
  v5 = *(v4 + 48);
  if (v5(v1, 1, v3) == 1)
  {
    goto LABEL_4;
  }

  v2 = v0 + 8;
  v6 = v0[8];
  v7 = v0[10];
  v8 = *(v0[11] + 32);
  v8(v0[13], v0[9], v7);
  sub_24F91F398();
  sub_24F91F488();

  if (v5(v6, 1, v7) == 1)
  {
    (*(v0[11] + 8))(v0[13], v0[10]);
LABEL_4:
    sub_24E601704(*v2, &qword_27F228530, &unk_24F93C6E0);
    if (qword_27F211460 != -1)
    {
      swift_once();
    }

    v9 = sub_24F9220D8();
    __swift_project_value_buffer(v9, qword_27F39E970);
    v10 = sub_24F9220B8();
    v11 = sub_24F92BDB8();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_24E5DD000, v10, v11, "Invalid URL for artwork", v12, 2u);
      MEMORY[0x2530542D0](v12, -1, -1);
    }

    v13 = v0[4];
    v14 = v0[5];
    v15 = v0[3];

    v16 = sub_24F91F6B8();
    (*(*(v16 - 8) + 16))(v15, v13, v16);
    v17 = v0[5];
    v18 = v14;

    v19 = v0[1];

    return v19(0, v17);
  }

  v8(v0[12], v0[8], v0[10]);
  v21 = swift_task_alloc();
  v0[17] = v21;
  *v21 = v0;
  v21[1] = sub_24EF44D84;
  v22 = v0[12];

  return sub_24F40FAE0(v22);
}

uint64_t sub_24EF44D84(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 144) = a1;
  *(v3 + 152) = v1;

  if (v1)
  {
    v4 = sub_24EF45374;
  }

  else
  {
    v4 = sub_24EF44E98;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_24EF44E98()
{
  v1 = sub_24F9289A8();
  if (!v1)
  {
    goto LABEL_6;
  }

  if (qword_27F20FEE0 != -1)
  {
    v24 = v1;
    swift_once();
    v1 = v24;
  }

  v2 = v0[7];
  v3 = v1;
  v4 = sub_24F926BD8();
  ColorGrouping.colorGroup(for:)(v4);
  v5 = type metadata accessor for ColorGroup(0);
  if ((*(*(v5 - 8) + 48))(v2, 1, v5) == 1)
  {
    sub_24E601704(v0[7], &qword_27F2190D8, &unk_24F94BD70);

LABEL_6:

    v6 = v0[13];
    v7 = v0[10];
    v8 = v0[5];
    v9 = *(v0[11] + 8);
    v9(v0[12], v7);
    v9(v6, v7);
    v10 = v8;
    v11 = v0[5];
    goto LABEL_8;
  }

  v13 = v0[12];
  v12 = v0[13];
  v14 = v0[10];
  v15 = v0[11];
  v16 = v0[7];

  sub_24E77D068(v16);

  sub_24E77ACC8();
  v11 = sub_24F92C3B8();

  v17 = *(v15 + 8);
  v17(v13, v14);
  v17(v12, v14);
LABEL_8:
  v18 = v0[18];
  v20 = v0[3];
  v19 = v0[4];
  v21 = sub_24F91F6B8();
  (*(*(v21 - 8) + 16))(v20, v19, v21);

  v22 = v0[1];

  return v22(v18, v11);
}

uint64_t sub_24EF45144()
{
  v1 = v0[15];
  if (qword_27F211460 != -1)
  {
    swift_once();
  }

  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E970);
  v3 = v1;
  v4 = sub_24F9220B8();
  v5 = sub_24F92BDB8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_24E5DD000, v4, v5, "Error downloading image: %@", v6, 0xCu);
    sub_24E601704(v7, &qword_27F227B20, &qword_24F944D30);
    MEMORY[0x2530542D0](v7, -1, -1);
    MEMORY[0x2530542D0](v6, -1, -1);
  }

  else
  {
  }

  v10 = v0[4];
  v11 = v0[5];
  v12 = v0[3];
  v13 = sub_24F91F6B8();
  (*(*(v13 - 8) + 16))(v12, v10, v13);
  v14 = v0[5];
  v15 = v11;

  v16 = v0[1];

  return v16(0, v14);
}

uint64_t sub_24EF45374()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[10];
  v4 = v0[11];

  v5 = *(v4 + 8);
  v5(v1, v3);
  v5(v2, v3);
  v6 = v0[19];
  if (qword_27F211460 != -1)
  {
    swift_once();
  }

  v7 = sub_24F9220D8();
  __swift_project_value_buffer(v7, qword_27F39E970);
  v8 = v6;
  v9 = sub_24F9220B8();
  v10 = sub_24F92BDB8();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    v13 = v6;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    _os_log_impl(&dword_24E5DD000, v9, v10, "Error downloading image: %@", v11, 0xCu);
    sub_24E601704(v12, &qword_27F227B20, &qword_24F944D30);
    MEMORY[0x2530542D0](v12, -1, -1);
    MEMORY[0x2530542D0](v11, -1, -1);
  }

  else
  {
  }

  v15 = v0[4];
  v16 = v0[5];
  v17 = v0[3];
  v18 = sub_24F91F6B8();
  (*(*(v18 - 8) + 16))(v17, v15, v18);
  v19 = v0[5];
  v20 = v16;

  v21 = v0[1];

  return v21(0, v19);
}

uint64_t sub_24EF455E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_24EF45A00;

  return sub_24EF44798(a1, a2, a3, a4);
}

uint64_t sub_24EF456A0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

unint64_t sub_24EF456E8()
{
  result = qword_27F2551B0;
  if (!qword_27F2551B0)
  {
    sub_24F91F6B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2551B0);
  }

  return result;
}

uint64_t sub_24EF45740()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2345B0, &unk_24F9B3070);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = sub_24F91F6B8();
  v6 = *(v5 - 8);
  v7 = (v4 + *(v6 + 80) + 8) & ~*(v6 + 80);
  (*(v2 + 8))(v0 + v3, v1);

  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_24EF458BC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2345B0, &unk_24F9B3070) - 8);
  v10 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(sub_24F91F6B8() - 8);
  v13 = (v11 + *(v12 + 80) + 8) & ~*(v12 + 80);
  v14 = *(v4 + v11);
  v15 = *(v4 + ((*(v12 + 64) + v13 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_24EF4447C(a1, a2, a3, a4, v4 + v10, v14, v4 + v13, v15);
}

uint64_t UnimplementedAdvertInteractionMetricsReporter.advertWasInteracted(with:completion:)(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  if (a2)
  {
    return a2(a1);
  }

  return a1;
}

uint64_t sub_24EF45A64(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  if (a2)
  {
    return a2(a1);
  }

  return a1;
}

unint64_t sub_24EF45B78()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2280C0, &unk_24F973400);
  v0 = swift_allocObject();
  *(v0 + 16) = sub_24EAEB0D4;
  *(v0 + 24) = 0;
  v1 = swift_allocObject();
  *(v1 + 16) = sub_24EF46E60;
  *(v1 + 24) = 0;
  v2 = swift_allocObject();
  *(v2 + 16) = sub_24EF46E60;
  *(v2 + 24) = 0;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_24EAEB320;
  *(v3 + 24) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234670, &unk_24F980F40);
  qword_27F2345D8 = v4;
  result = sub_24E9E955C();
  qword_27F2345C0 = v3;
  qword_27F234600 = v4;
  unk_27F234608 = result;
  qword_27F2345E0 = result;
  unk_27F2345E8 = v0;
  qword_27F234628 = v4;
  unk_27F234630 = result;
  qword_27F234610 = v1;
  qword_27F234650 = v4;
  unk_27F234658 = result;
  qword_27F234638 = v2;
  return result;
}

uint64_t static TagFacetRibbonLayout.Metrics.standard.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = a1;
  if (qword_27F210C70 != -1)
  {
    swift_once();
    v2 = a1;
  }

  return sub_24EF45D0C(&qword_27F2345C0, v2);
}

__n128 TagFacetRibbonLayout.init(tagFacetViews:maxRowsStandard:maxRowsAX:metrics:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *(a4 + 112);
  *(a5 + 120) = *(a4 + 96);
  *(a5 + 136) = v5;
  v6 = *(a4 + 144);
  *(a5 + 152) = *(a4 + 128);
  *(a5 + 168) = v6;
  v7 = *(a4 + 48);
  *(a5 + 56) = *(a4 + 32);
  *(a5 + 72) = v7;
  v8 = *(a4 + 80);
  *(a5 + 88) = *(a4 + 64);
  *(a5 + 104) = v8;
  result = *a4;
  v10 = *(a4 + 16);
  *(a5 + 24) = *a4;
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 40) = v10;
  return result;
}

void TagFacetRibbonLayout.placeChildren(relativeTo:in:)(void *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v7 = v6;
  v46 = sub_24F92CDB8();
  v14 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v48 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v17 = MEMORY[0x28223BE20](v16).n128_u64[0];
  v47 = &v37 - v18;
  v19 = *v7;
  if (*(*v7 + 16))
  {
    v39 = a2;
    v20 = [a1 traitCollection];
    v38 = sub_24F92BFB8();

    v45 = a1;
    v21 = [a1 traitCollection];
    v22.n128_f64[0] = a3;
    v49 = sub_24EF46264(v19, v21, v22, a4, a5, a6);

    v23 = *(v19 + 16);

    v44 = v23;
    if (v23)
    {
      v24 = 0;
      v25 = v19 + 32;
      v42 = *MEMORY[0x277D84688];
      v41 = (v14 + 104);
      v40 = *MEMORY[0x277D84680];
      v26 = (v14 + 8);
      v43 = v19;
      v27 = v48;
      while (v24 < *(v19 + 16))
      {
        sub_24E615E00(v25, v53);
        v28 = v49[2];
        if (v24 == v28)
        {

          __swift_destroy_boxed_opaque_existential_1(v53);
          goto LABEL_13;
        }

        if (v24 >= v28)
        {
          goto LABEL_15;
        }

        v29 = &v49[4 * v24];
        v30 = v29[3];
        v51 = v29[2];
        v52 = v30;
        sub_24E612E28(v53, v54);
        v56 = v52;
        v55 = v51;
        v50 = v54[4];
        __swift_project_boxed_opaque_existential_1(v54, v54[3]);
        v31 = *v41;
        v32 = v47;
        v33 = v46;
        (*v41)(v47, v42, v46);
        v31(v27, v40, v33);
        CGPoint.rounded(_:)(v32, v51.n128_f64[0], v51.n128_f64[1]);
        CGSize.rounded(_:)(v27, v52.n128_f64[0], v52.n128_f64[1]);
        v34 = *v26;
        (*v26)(v27, v33);
        v34(v32, v33);
        v35 = [v45 traitCollection];
        sub_24F92BF88();
        sub_24F92C1E8(a3, a4, a5, a6);

        sub_24F922228();
        sub_24EF46798(v54);
        v25 += 40;
        ++v24;
        v19 = v43;
        if (v44 == v24)
        {
          goto LABEL_8;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
    }

    else
    {
LABEL_8:

LABEL_13:
      v36 = v38;
      sub_24F922128();
    }
  }

  else
  {

    sub_24F922128();
  }
}

void *sub_24EF46264(char *a1, __int128 *a2, __n128 a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v8 = v6;
  v13 = a3.n128_f64[0];
  v65 = MEMORY[0x277D84F90];
  v15 = sub_24F92BF98();
  v16 = 1;
  if (v15)
  {
    v16 = 2;
  }

  v57 = v6[v16];
  v17 = sub_24EF469CC(a1, a2, v13, a4, a5, a6);
  v66.origin.x = v13;
  v66.origin.y = a4;
  v66.size.width = a5;
  v66.size.height = a6;
  CGRectGetMinY(v66);
  if (v17 < 0)
  {
    goto LABEL_53;
  }

  v7 = *(a1 + 2);
  if (v7 < v17)
  {
    goto LABEL_54;
  }

  v55 = a2;
  a2 = (a1 + 32);
  if (v7 == v17)
  {

    v60 = a1;
  }

  else
  {
    sub_24E6B8918(a1, (a1 + 32), 0, (2 * v17) | 1);
    v60 = v19;
  }

  v6 = ((2 * v7) | 1);
  v18 = a1;
  if (v17)
  {
    goto LABEL_55;
  }

  for (i = a1; ; i = v51)
  {
    v53 = a2;
    if (v57 < 1 || !v17)
    {
      break;
    }

    v52 = v6;
    v21 = 0;
    v6 = 0;
    MinX = v13;
    v23 = a4;
    Width = a5;
    Height = a6;
    a2 = v55;
    v54 = v8;
    while (1)
    {
      v59 = v6;
      v26 = v7;
      v27 = a1;

      v7 = v60;
      a1 = sub_24EF46AD4(v60, a2, MinX, v23, Width, Height);

      v6 = &v65;
      v18 = sub_24EA0ABE0(a1);
      v28 = __OFADD__(v21, v17);
      v21 += v17;
      if (v28)
      {
        break;
      }

      v6 = sub_24EF469CC(i, a2, v13, a4, a5, a6);

      v58 = v6;
      v17 = v6 + v21;
      if (__OFADD__(v21, v6))
      {
        goto LABEL_48;
      }

      if (v17 < v21)
      {
        goto LABEL_49;
      }

      if (v26 < v21)
      {
        goto LABEL_50;
      }

      if (v21 < 0)
      {
        goto LABEL_51;
      }

      if (v26 < v17)
      {
        goto LABEL_52;
      }

      v29 = v8;
      v30 = a2;
      v31 = v27;
      if (v26 != v6)
      {
        sub_24E6B8918(v27, v53, v21, (2 * v17) | 1);
        v31 = v44;
      }

      v60 = v31;
      v32 = v65;
      v33 = v65[2];
      v56 = v65;
      if (v33)
      {
        *&v64[0] = MEMORY[0x277D84F90];
        sub_24F45824C(0, v33, 0);
        v34 = *&v64[0];
        v35 = v32 + 7;
        v7 = v26;
        do
        {
          MaxY = CGRectGetMaxY(*(v35 - 3));
          *&v64[0] = v34;
          v38 = *(v34 + 16);
          v37 = *(v34 + 24);
          if (v38 >= v37 >> 1)
          {
            v39 = MaxY;
            sub_24F45824C((v37 > 1), v38 + 1, 1);
            MaxY = v39;
            v34 = *&v64[0];
          }

          *(v34 + 16) = v38 + 1;
          *(v34 + 8 * v38 + 32) = MaxY;
          v35 += 4;
          --v33;
        }

        while (v33);
        v8 = v54;
        a2 = v55;
      }

      else
      {
        v34 = MEMORY[0x277D84F90];
        a2 = v30;
        v8 = v29;
        v7 = v26;
      }

      *&v40 = COERCE_DOUBLE(sub_24ED6EC84(v34));
      v42 = v41;

      if (v42)
      {
        __swift_project_boxed_opaque_existential_1(v8 + 8, v8[11]);
        sub_24F9223B8();
        v23 = v43 + 0.0;
      }

      else
      {
        v23 = *&v40;
      }

      a1 = v27;

      v67.origin.x = v13;
      v67.origin.y = a4;
      v67.size.width = a5;
      v67.size.height = a6;
      MinX = CGRectGetMinX(v67);
      v68.origin.x = v13;
      v68.origin.y = a4;
      v68.size.width = a5;
      v68.size.height = a6;
      Width = CGRectGetWidth(v68);
      v69.origin.x = v13;
      v69.origin.y = a4;
      v69.size.width = a5;
      v69.size.height = a6;
      Height = CGRectGetHeight(v69);
      i = v27;
      if (v17)
      {
        sub_24E6B8918(v27, v53, v17, v52);
        i = v45;
      }

      v6 = (v59 + 1);
      if ((v59 + 1) != v57)
      {
        v17 = v58;
        if (v58 > 0)
        {
          continue;
        }
      }

      goto LABEL_37;
    }

LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    sub_24E6B8918(v18, a2, v17, v6);
  }

  v56 = MEMORY[0x277D84F90];
LABEL_37:

  v46 = 0;
  a1 = &v61;
  v8 = v56;
  while (1)
  {
    v47 = 0uLL;
    v17 = v7;
    v48 = 0uLL;
    v49 = 0uLL;
    if (v46 != v7)
    {
      if (v46 >= v7)
      {
        __break(1u);
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }

      v17 = v46 + 1;
      if (__OFADD__(v46, 1))
      {
        goto LABEL_46;
      }

      *&v61 = v46;
      sub_24E615E00(v53 + 40 * v46, &v61 + 8);
      v47 = v61;
      v48 = v62;
      v49 = v63;
    }

    v64[0] = v47;
    v64[1] = v48;
    v64[2] = v49;
    if (!v49)
    {
      return v56;
    }

    v60 = v47;
    sub_24E612E28((v64 + 8), &v61);
    a2 = *(&v62 + 1);
    v6 = __swift_project_boxed_opaque_existential_1(&v61, *(&v62 + 1));
    sub_24F922248();
    v18 = __swift_destroy_boxed_opaque_existential_1(&v61);
    v46 = v17;
  }
}

uint64_t sub_24EF46798(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F234660, &qword_24F9B3100);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

CGFloat TagFacetRibbonLayout.measurements(fitting:in:)(void *a1, CGFloat a2, CGFloat a3)
{
  v4 = *v3;
  if (!*(*v3 + 2))
  {
    return *MEMORY[0x277D22A78];
  }

  v8 = [a1 traitCollection];
  v9 = sub_24F92BFB8();

  v10 = [a1 traitCollection];
  v11.n128_u64[0] = 0;
  v12 = sub_24EF46264(v4, v10, v11, 0.0, a2, a3);

  v13 = *(v12 + 2);
  if (v13)
  {
    v25 = a2;
    v14 = v12[4];
    v15 = v12[5];
    v16 = v12[6];
    v17 = v12[7];
    v18 = v13 - 1;
    if (v13 != 1)
    {
      v19 = v12 + 11;
      do
      {
        v20 = *(v19 - 3);
        v21 = *(v19 - 2);
        v23 = *(v19 - 1);
        v22 = *v19;
        v27.origin.x = v14;
        v27.origin.y = v15;
        v27.size.width = v16;
        v27.size.height = v17;
        MaxY = CGRectGetMaxY(v27);
        v28.origin.x = v20;
        v28.origin.y = v21;
        v28.size.width = v23;
        v28.size.height = v22;
        if (MaxY < CGRectGetMaxY(v28))
        {
          v14 = v20;
          v15 = v21;
          v16 = v23;
          v17 = v22;
        }

        v19 += 4;
        --v18;
      }

      while (v18);
    }

    v29.origin.x = v14;
    v29.origin.y = v15;
    v29.size.width = v16;
    v29.size.height = v17;
    CGRectGetMaxY(v29);

    return v25;
  }

  else
  {
  }

  return a2;
}

uint64_t sub_24EF469CC(uint64_t a1, uint64_t a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v11 = 0;
  v12 = *(a1 + 16);
  v13 = 0.0;
  v14 = (a1 + 32);
  while (v12 != v11)
  {
    ++v11;
    __swift_project_boxed_opaque_existential_1(v14, v14[3]);
    sub_24F9222A8();
    v16 = v13 + v15;
    __swift_project_boxed_opaque_existential_1((v6 + 24), *(v6 + 48));
    sub_24F9223B8();
    v13 = v16 + v17;
    v19.origin.x = a3;
    v19.origin.y = a4;
    v19.size.width = a5;
    v19.size.height = a6;
    v14 += 5;
    if (v13 > CGRectGetWidth(v19))
    {
      return v11 - 1;
    }
  }

  return v12;
}

char *sub_24EF46AD4(uint64_t a1, uint64_t a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v7 = v6;
  Width = CGRectGetWidth(*&a3);
  v32 = a3;
  v33 = a4;
  v38.origin.x = a3;
  v38.origin.y = a4;
  v38.size.width = a5;
  v38.size.height = a6;
  MinX = CGRectGetMinX(v38);
  v13 = *(a1 + 16);
  if (!v13)
  {
    return MEMORY[0x277D84F90];
  }

  v14 = a1 + 32;
  v15 = MEMORY[0x277D84F90];
  do
  {
    sub_24E615E00(v14, v36);
    __swift_project_boxed_opaque_existential_1(v36, v37);
    sub_24F9222A8();
    v17 = v16;
    v19 = v18;
    v39.origin.x = v32;
    v39.origin.y = v33;
    v39.size.width = a5;
    v39.size.height = a6;
    MinY = CGRectGetMinY(v39);
    __swift_project_boxed_opaque_existential_1(v7 + 13, v7[16]);
    sub_24F9223B8();
    v22 = MinY + v21;
    v40.origin.x = v32;
    v40.origin.y = v33;
    v40.size.width = a5;
    v40.size.height = a6;
    CGRectGetWidth(v40);
    if (v17 > Width)
    {
      v23 = 0.0;
    }

    else
    {
      v23 = MinX;
    }

    if (v17 <= Width)
    {
      v24 = v17;
    }

    else
    {
      v22 = 0.0;
      v24 = 0.0;
    }

    if (v17 > Width)
    {
      v25 = 0.0;
    }

    else
    {
      v25 = v19;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = sub_24E617B8C(0, *(v15 + 2) + 1, 1, v15);
    }

    v27 = *(v15 + 2);
    v26 = *(v15 + 3);
    if (v27 >= v26 >> 1)
    {
      v15 = sub_24E617B8C((v26 > 1), v27 + 1, 1, v15);
    }

    *(v15 + 2) = v27 + 1;
    v28 = &v15[32 * v27];
    v28[4] = v23;
    v28[5] = v22;
    v28[6] = v24;
    v28[7] = v25;
    if (v24 > 0.0)
    {
      __swift_project_boxed_opaque_existential_1(v7 + 3, v7[6]);
      sub_24F9223B8();
      v30 = v29;
      v41.origin.x = v23;
      v41.origin.y = v22;
      v41.size.width = v24;
      v41.size.height = v25;
      MinX = MinX + v30 + CGRectGetWidth(v41);
      v42.origin.x = v23;
      v42.origin.y = v22;
      v42.size.width = v24;
      v42.size.height = v25;
      Width = Width - (v30 + CGRectGetWidth(v42));
    }

    __swift_project_boxed_opaque_existential_1(v36, v37);
    sub_24F922248();
    __swift_destroy_boxed_opaque_existential_1(v36);
    v14 += 40;
    --v13;
  }

  while (v13);
  return v15;
}

uint64_t sub_24EF46D88(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 184))
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

uint64_t sub_24EF46DD0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
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
      *(result + 184) = 1;
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

    *(result + 184) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

BOOL sub_24EF46EA0(uint64_t a1, uint64_t a2)
{
  v3 = sub_24F925218();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254F20, &qword_24F940790);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v10 = &v23 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215598, &qword_24F945EF0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v23 - v16;
  (*(v4 + 104))(&v23 - v16, *MEMORY[0x277CE0558], v3, v15);
  (*(v4 + 56))(v17, 0, 1, v3);
  v18 = *(v8 + 56);
  sub_24EDEBCCC(a2, v10);
  sub_24EDEBCCC(v17, &v10[v18]);
  v19 = *(v4 + 48);
  if (v19(v10, 1, v3) != 1)
  {
    sub_24EDEBCCC(v10, v13);
    if (v19(&v10[v18], 1, v3) != 1)
    {
      (*(v4 + 32))(v6, &v10[v18], v3);
      sub_24EDEBD3C();
      v21 = sub_24F92AFF8();
      v22 = *(v4 + 8);
      v22(v6, v3);
      sub_24E601704(v17, &qword_27F215598, &qword_24F945EF0);
      v22(v13, v3);
      sub_24E601704(v10, &qword_27F215598, &qword_24F945EF0);
      return (v21 & 1) != 0;
    }

    sub_24E601704(v17, &qword_27F215598, &qword_24F945EF0);
    (*(v4 + 8))(v13, v3);
LABEL_6:
    sub_24E601704(v10, &unk_27F254F20, &qword_24F940790);
    return 0;
  }

  sub_24E601704(v17, &qword_27F215598, &qword_24F945EF0);
  if (v19(&v10[v18], 1, v3) != 1)
  {
    goto LABEL_6;
  }

  sub_24E601704(v10, &qword_27F215598, &qword_24F945EF0);
  return 1;
}

unint64_t sub_24EF47230()
{
  result = qword_27F234678;
  if (!qword_27F234678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F234678);
  }

  return result;
}

GameStoreKit::ComponentSeparator::Position_optional __swiftcall ComponentSeparator.Position.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ComponentSeparator.Position.rawValue.getter()
{
  v1 = 7368564;
  v2 = 0x676E696461656CLL;
  if (*v0 != 2)
  {
    v2 = 0x676E696C69617274;
  }

  if (*v0)
  {
    v1 = 0x6D6F74746F62;
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

_BYTE *ComponentSeparator.init(position:leadingInset:trailingInset:color:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  *a3 = *result;
  *(a3 + 8) = a4;
  *(a3 + 16) = a5;
  *(a3 + 24) = a2;
  return result;
}

void *ComponentSeparator.color.getter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

void static ComponentSeparator.thickness(compatibleWith:)(void *a1, __n128 a2)
{
  if ((sub_24F92BF98() & 1) == 0)
  {
    [a1 displayScale];
    if (v3 <= 0.0)
    {
      v4 = [objc_opt_self() mainScreen];
      [v4 scale];
    }
  }
}

double ComponentSeparator.height(in:)(void *a1)
{
  v1 = [a1 traitCollection];
  sub_24F922D08();
  v3 = v2;

  return v3;
}

double ComponentSeparator.frame(forBoundingRect:in:)(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v10 = *v5;
  v11 = [a1 traitCollection];
  if ((sub_24F92BF98() & 1) == 0)
  {
    [v11 displayScale];
    if (v12 <= 0.0)
    {
      v13 = [objc_opt_self() mainScreen];
      [v13 scale];
    }
  }

  if (v10 == 2)
  {
    goto LABEL_13;
  }

  v14 = sub_24F92CE08();

  if (v14)
  {
    v15 = 1;
    if (v10 > 1)
    {
      goto LABEL_14;
    }

    goto LABEL_7;
  }

  if (v10 > 1)
  {
LABEL_13:

    v15 = 1;
    goto LABEL_14;
  }

  v15 = sub_24F92CE08();

LABEL_7:
  if (!v10)
  {
LABEL_19:

LABEL_20:
    v29.origin.x = a2;
    v29.origin.y = a3;
    v29.size.width = a4;
    v29.size.height = a5;
    CGRectGetWidth(v29);
    if ((v15 & 1) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

LABEL_14:
  v16 = sub_24F92CE08();

  if (v16)
  {
    goto LABEL_20;
  }

  if (v10 == 1)
  {
    goto LABEL_19;
  }

  v17 = sub_24F92CE08();

  if (v17)
  {
    goto LABEL_20;
  }

  if ((v15 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_21:
  v30.origin.x = a2;
  v30.origin.y = a3;
  v30.size.width = a4;
  v30.size.height = a5;
  CGRectGetHeight(v30);
LABEL_22:
  v18 = a2;
  v19 = a3;
  v20 = a4;
  v21 = a5;
  if (v10 >= 2)
  {
    if (v10 == 2)
    {
      CGRectGetMinX(*&v18);
    }

    else
    {
      CGRectGetMaxX(*&v18);
    }

    v31.origin.x = a2;
    v31.origin.y = a3;
    v31.size.width = a4;
    v31.size.height = a5;
    CGRectGetMinY(v31);
  }

  else
  {
    CGRectGetMinX(*&v18);
    v22 = a2;
    v23 = a3;
    v24 = a4;
    v25 = a5;
    if (v10)
    {
      CGRectGetMaxY(*&v22);
    }

    else
    {
      CGRectGetMinY(*&v22);
    }
  }

  sub_24F92C1D8();
  v27 = v26;

  return v27;
}

BOOL static ComponentSeparator.== infix(_:_:)(double *a1, double *a2)
{
  v3 = a1[1];
  v2 = a1[2];
  v5 = a2[1];
  v4 = a2[2];
  v6 = sub_24F0D1ECC();
  result = 0;
  if ((v6 & 1) != 0 && v3 == v5)
  {
    return v2 == v4;
  }

  return result;
}

unint64_t sub_24EF47984()
{
  result = qword_27F234680;
  if (!qword_27F234680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F234680);
  }

  return result;
}

double CGPoint.rounded(_:)(uint64_t a1, double a2, double a3)
{
  v6 = sub_24F92CDB8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v21 - v12;
  v24 = a2;
  v14 = *(v7 + 16);
  v14(&v21 - v12, a1, v6, v11);
  v15 = *(v7 + 88);
  v16 = v15(v13, v6);
  v17 = *MEMORY[0x277D84678];
  if (v16 == *MEMORY[0x277D84678])
  {
    v18 = round(a2);
    v24 = v18;
  }

  else if (v16 == *MEMORY[0x277D84670])
  {
    v18 = rint(a2);
    v24 = v18;
  }

  else
  {
    if (v16 == *MEMORY[0x277D84680])
    {
      goto LABEL_6;
    }

    if (v16 == *MEMORY[0x277D84688])
    {
      goto LABEL_8;
    }

    if (v16 == *MEMORY[0x277D84660])
    {
      v18 = trunc(a2);
      v24 = v18;
      goto LABEL_15;
    }

    if (v16 != *MEMORY[0x277D84668])
    {
      v22 = a1;
      sub_24F92BA48();
      a1 = v22;
      (*(v7 + 8))(v13, v6);
      v18 = v24;
      goto LABEL_15;
    }

    if ((*&a2 & 0x8000000000000000) != 0)
    {
LABEL_8:
      v18 = floor(a2);
      v24 = v18;
    }

    else
    {
LABEL_6:
      v18 = ceil(a2);
      v24 = v18;
    }
  }

LABEL_15:
  v23 = a3;
  (v14)(v9, a1, v6);
  v19 = v15(v9, v6);
  if (v19 != v17 && v19 != *MEMORY[0x277D84670] && v19 != *MEMORY[0x277D84680] && v19 != *MEMORY[0x277D84688] && v19 != *MEMORY[0x277D84660] && v19 != *MEMORY[0x277D84668])
  {
    sub_24F92BA48();
    (*(v7 + 8))(v9, v6);
  }

  return v18;
}

double CGPoint.rounded(_:toScaleOf:)(uint64_t a1, id a2, double a3, double a4)
{
  v7 = [a2 traitCollection];
  [v7 displayScale];
  if (v8 <= 0.0)
  {
    if (qword_27F211070 != -1)
    {
      swift_once();
    }

    v9 = *&qword_27F23DC18;
  }

  else
  {
    [v7 displayScale];
  }

  v10 = CGFloat.rounded(_:toScale:)(a1, v9, a3);
  [v7 displayScale];
  if (v11 <= 0.0)
  {
    if (qword_27F211070 != -1)
    {
      swift_once();
    }

    v12 = *&qword_27F23DC18;
  }

  else
  {
    [v7 displayScale];
  }

  CGFloat.rounded(_:toScale:)(a1, v12, a4);

  return v10;
}

{
  [a2 displayScale];
  if (v8 <= 0.0)
  {
    if (qword_27F211070 != -1)
    {
      swift_once();
    }

    v9 = *&qword_27F23DC18;
  }

  else
  {
    [a2 displayScale];
  }

  v10 = CGFloat.rounded(_:toScale:)(a1, v9, a3);
  [a2 displayScale];
  if (v11 <= 0.0)
  {
    if (qword_27F211070 != -1)
    {
      swift_once();
    }

    v12 = *&qword_27F23DC18;
  }

  else
  {
    [a2 displayScale];
  }

  CGFloat.rounded(_:toScale:)(a1, v12, a4);
  return v10;
}

uint64_t sub_24EF47F7C(uint64_t a1)
{
  v2 = sub_24F9234D8();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_24F9244A8();
}

uint64_t sub_24EF48044@<X0>(void *a1@<X8>)
{
  sub_24E6E4B8C();
  result = sub_24F924868();
  *a1 = v3;
  return result;
}

uint64_t sub_24EF48094(uint64_t *a1)
{
  sub_24E6E4B8C();

  return sub_24F924878();
}

uint64_t ProductPageCardBackgroundView.init()@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216950, &unk_24F943F20);
  swift_storeEnumTagMultiPayload();
  v2 = a1 + *(type metadata accessor for ProductPageCardBackgroundView(0) + 20);
  result = swift_getKeyPath();
  *v2 = result;
  v2[8] = 0;
  return result;
}

uint64_t type metadata accessor for ProductPageCardBackgroundView(uint64_t a1)
{
  result = qword_27F2346C0;
  if (!qword_27F2346C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24EF481E0@<X0>(void *a1@<X8>)
{
  sub_24E6E4B8C();
  result = sub_24F924868();
  *a1 = v3;
  return result;
}

uint64_t sub_24EF48234@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_24F924848();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216950, &unk_24F943F20);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_24EF49304(v2, &v14 - v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_24F9234D8();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_24F92BDC8();
    v13 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_24EF4841C()
{
  v1 = sub_24F924848();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for ProductPageCardBackgroundView(0) + 20));
  v6 = *v5;
  v7 = *(v5 + 8);

  if ((v7 & 1) == 0)
  {
    sub_24F92BDC8();
    v8 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    return v10[1];
  }

  return v6;
}

uint64_t ProductPageCardBackgroundView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v49 = a1;
  v1 = sub_24F9234D8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v43 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234688, &qword_24F9B3480);
  MEMORY[0x28223BE20](v8);
  v10 = &v43 - v9;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234690, &qword_24F9B3488);
  MEMORY[0x28223BE20](v44);
  v12 = &v43 - v11;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234698, &qword_24F9B3490);
  MEMORY[0x28223BE20](v45);
  v48 = &v43 - v13;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2346A0, &qword_24F9B3498);
  MEMORY[0x28223BE20](v47);
  v46 = &v43 - v14;
  v15 = sub_24F924258();
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v18 + 28);
  v20 = *MEMORY[0x277CE0118];
  v21 = sub_24F924B38();
  (*(*(v21 - 8) + 104))(&v17[v19], v20, v21);
  __asm { FMOV            V0.2D, #20.0 }

  *v17 = _Q0;
  sub_24EF48234(v7);
  (*(v2 + 104))(v4, *MEMORY[0x277CDF3D0], v1);
  LOBYTE(v20) = sub_24F9234C8();
  v27 = *(v2 + 8);
  v27(v4, v1);
  v27(v7, v1);
  if ((v20 & 1) == 0)
  {
    v51 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2346A8, &qword_24F9B34A0);
    sub_24E602068(&qword_27F2346B0, &qword_27F2346A8, &qword_24F9B34A0, MEMORY[0x277CE0848]);
  }

  v28 = sub_24F9238D8();
  sub_24E6EB910(v17, v10);
  *&v10[*(v8 + 52)] = v28;
  *&v10[*(v8 + 56)] = 256;
  v29 = sub_24F927618();
  v31 = v30;
  v32 = &v12[*(v44 + 36)];
  sub_24EF48B24(v17, v32);
  v33 = (v32 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2346B8, &qword_24F9B34A8) + 36));
  *v33 = v29;
  v33[1] = v31;
  sub_24E6009C8(v10, v12, &qword_27F234688, &qword_24F9B3480);
  v34 = sub_24EF4841C();
  swift_getKeyPath();
  v51 = v34;
  sub_24EF48D98();
  sub_24F91FD88();

  swift_beginAccess();
  LODWORD(v31) = *(v34 + 16);

  if ((v31 - 1) >= 2)
  {
    v35 = 1.0;
  }

  else
  {
    v35 = 0.0;
  }

  v36 = v48;
  sub_24E6009C8(v12, v48, &qword_27F234690, &qword_24F9B3488);
  *(v36 + *(v45 + 36)) = v35;
  v37 = sub_24F9276C8();
  v38 = sub_24EF4841C();
  swift_getKeyPath();
  v50 = v38;
  sub_24F91FD88();

  swift_beginAccess();
  v39 = *(v38 + 16);

  v40 = v46;
  sub_24E6009C8(v36, v46, &qword_27F234698, &qword_24F9B3490);
  v41 = v40 + *(v47 + 36);
  *v41 = v37;
  *(v41 + 8) = v39;
  sub_24E6009C8(v40, v49, &qword_27F2346A0, &qword_24F9B3498);
  return sub_24E6EB974(v17);
}

uint64_t sub_24EF48B24@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v21 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A1C8, &unk_24F97E300);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v20 - v5;
  v7 = sub_24F9234D8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v20 - v12;
  sub_24EF48234((&v20 - v12));
  (*(v8 + 104))(v10, *MEMORY[0x277CDF3D0], v7);
  v14 = sub_24F9234C8();
  v15 = *(v8 + 8);
  v15(v10, v7);
  v15(v13, v7);
  if (v14)
  {
    sub_24F926C88();
    v16 = sub_24F926D08();

    sub_24E6EB910(v21, v6);
    v17 = &v6[*(v3 + 36)];
    *v17 = v16;
    *(v17 + 8) = xmmword_24F9B3410;
    *(v17 + 3) = 0x4010000000000000;
    sub_24E6009C8(v6, a2, &qword_27F21A1C8, &unk_24F97E300);
    v18 = 0;
  }

  else
  {
    v18 = 1;
  }

  return (*(v4 + 56))(a2, v18, 1, v3);
}

unint64_t sub_24EF48D98()
{
  result = qword_27F2189A8;
  if (!qword_27F2189A8)
  {
    type metadata accessor for FlowPreviewEnvironment(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2189A8);
  }

  return result;
}

uint64_t sub_24EF48E24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F222A88, &qword_24F96B720);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_24EF48F00(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F222A88, &qword_24F96B720);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = -a2;
  }

  return result;
}

void sub_24EF48FC8(uint64_t a1)
{
  sub_24EF49084(319, &qword_27F222B10, MEMORY[0x277CDF3E0]);
  if (v1 <= 0x3F)
  {
    sub_24EF49084(319, &qword_27F2346D0, type metadata accessor for FlowPreviewEnvironment);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24EF49084(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_24F923578();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_24EF490DC()
{
  result = qword_27F2346D8;
  if (!qword_27F2346D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2346A0, &qword_24F9B3498);
    sub_24EF49194();
    sub_24E602068(&qword_27F234700, qword_27F234708, &unk_24F9B3550, MEMORY[0x277CE01A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2346D8);
  }

  return result;
}

unint64_t sub_24EF49194()
{
  result = qword_27F2346E0;
  if (!qword_27F2346E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F234698, &qword_24F9B3490);
    sub_24EF49220();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2346E0);
  }

  return result;
}

unint64_t sub_24EF49220()
{
  result = qword_27F2346E8;
  if (!qword_27F2346E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F234690, &qword_24F9B3488);
    sub_24E602068(&qword_27F2346F0, &qword_27F234688, &qword_24F9B3480, MEMORY[0x277CDF3A0]);
    sub_24E602068(&qword_27F2346F8, &qword_27F2346B8, &qword_24F9B34A8, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2346E8);
  }

  return result;
}

uint64_t sub_24EF49304(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216950, &unk_24F943F20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EF49374(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[18] = a2;
  v3[19] = a3;
  v3[17] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219FA0, &unk_24F94D8A0);
  v3[20] = v4;
  v3[21] = *(v4 - 8);
  v3[22] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2139D8, &qword_24F93B580);
  v3[23] = v5;
  v3[24] = *(v5 - 8);
  v3[25] = swift_task_alloc();
  type metadata accessor for RefreshChallengeDetailAction(0);
  v3[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24EF494D8, 0, 0);
}

uint64_t sub_24EF494D8()
{
  v17 = v0;
  if (qword_27F2113B8 != -1)
  {
    swift_once();
  }

  v1 = v0[26];
  v2 = v0[18];
  v3 = sub_24F9220D8();
  v0[27] = __swift_project_value_buffer(v3, qword_27F39E778);
  sub_24ECB334C(v2, v1);
  v4 = sub_24F9220B8();
  v5 = sub_24F92BD98();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[26];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136315138;
    v10 = *v7;
    v11 = v7[1];

    sub_24ECB33B0(v7);
    v12 = sub_24E7620D4(v10, v11, &v16);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_24E5DD000, v4, v5, "RefreshChallengeDetailActionImplementation refreshing challenge: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x2530542D0](v9, -1, -1);
    MEMORY[0x2530542D0](v8, -1, -1);
  }

  else
  {

    sub_24ECB33B0(v7);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2142C0, &unk_24F93C710);
  v14 = swift_task_alloc();
  v0[28] = v14;
  *v14 = v0;
  v14[1] = sub_24EF496F8;

  return MEMORY[0x28217F228](v0 + 7, v13, v13);
}

uint64_t sub_24EF496F8()
{
  *(*v1 + 232) = v0;

  if (v0)
  {
    v2 = sub_24EF49E30;
  }

  else
  {
    v2 = sub_24EF4980C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24EF4980C()
{
  __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
  sub_24F9204F8();
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v0[30] = sub_24F92B7F8();
  v0[31] = sub_24F92B7E8();
  v2 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24EF498D8, v2, v1);
}

uint64_t sub_24EF498D8()
{

  type metadata accessor for LocalPlayerProvider(0);
  sub_24F928F28();
  *(v0 + 256) = *(v0 + 120);

  return MEMORY[0x2822009F8](sub_24EF49960, 0, 0);
}

uint64_t sub_24EF49960(uint64_t a1)
{
  *(v1 + 264) = sub_24F92B7E8();
  v3 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24EF499EC, v3, v2);
}

uint64_t sub_24EF499EC()
{
  v1 = v0[32];
  v3 = v0[24];
  v2 = v0[25];
  v4 = v0[23];

  swift_getKeyPath();
  v0[16] = v1;
  sub_24EF4A86C(&qword_27F247200, type metadata accessor for LocalPlayerProvider, &protocol conformance descriptor for LocalPlayerProvider);
  sub_24F91FD88();

  v5 = OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider__playerRef;
  swift_beginAccess();
  (*(v3 + 16))(v2, v1 + v5, v4);

  return MEMORY[0x2822009F8](sub_24EF49B24, 0, 0);
}

uint64_t sub_24EF49B24()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[20];

  sub_24F920FF8();
  v4 = v0[5];
  v12 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234790, &unk_24F9B3620);
  v5 = sub_24F920878();
  v6 = *(v5 - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = swift_allocObject();
  v0[34] = v8;
  *(v8 + 16) = xmmword_24F93DE60;
  (*(v2 + 16))(v8 + v7, v1, v3);
  (*(v6 + 104))(v8 + v7, *MEMORY[0x277D0CFA0], v5);
  v9 = swift_task_alloc();
  v0[35] = v9;
  *v9 = v0;
  v9[1] = sub_24EF49D00;
  v10 = v0[25];

  return MEMORY[0x282165180](v10, v8, v4, v12);
}

uint64_t sub_24EF49D00()
{
  *(*v1 + 288) = v0;

  if (v0)
  {
    v2 = sub_24EF4A100;
  }

  else
  {
    v2 = sub_24EF49FEC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24EF49E30()
{
  v1 = v0[29];
  v2 = v1;
  v3 = sub_24F9220B8();
  v4 = sub_24F92BDB8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_24E5DD000, v3, v4, "RefreshChallengeDetailActionImplementation failed to refresh challenge: %@", v5, 0xCu);
    sub_24E6D44CC(v6);
    MEMORY[0x2530542D0](v6, -1, -1);
    MEMORY[0x2530542D0](v5, -1, -1);
  }

  else
  {
  }

  v9 = v0[17];
  v10 = *MEMORY[0x277D21CA8];
  v11 = sub_24F928AE8();
  (*(*(v11 - 8) + 104))(v9, v10, v11);

  v12 = v0[1];

  return v12();
}

uint64_t sub_24EF49FEC()
{
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[23];
  (*(v0[21] + 8))(v0[22], v0[20]);
  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v4 = v0[17];
  v5 = *MEMORY[0x277D21CA8];
  v6 = sub_24F928AE8();
  (*(*(v6 - 8) + 104))(v4, v5, v6);

  v7 = v0[1];

  return v7();
}

uint64_t sub_24EF4A100()
{
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[23];
  (*(v0[21] + 8))(v0[22], v0[20]);
  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v4 = v0[36];
  v5 = v4;
  v6 = sub_24F9220B8();
  v7 = sub_24F92BDB8();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v4;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_24E5DD000, v6, v7, "RefreshChallengeDetailActionImplementation failed to refresh challenge: %@", v8, 0xCu);
    sub_24E6D44CC(v9);
    MEMORY[0x2530542D0](v9, -1, -1);
    MEMORY[0x2530542D0](v8, -1, -1);
  }

  else
  {
  }

  v12 = v0[17];
  v13 = *MEMORY[0x277D21CA8];
  v14 = sub_24F928AE8();
  (*(*(v14 - 8) + 104))(v12, v13, v14);

  v15 = v0[1];

  return v15();
}

uint64_t sub_24EF4A360(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v18 - v7;
  refreshed = type metadata accessor for RefreshChallengeDetailAction(0);
  v10 = *(refreshed - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](refreshed - 8);
  sub_24ECB334C(a1, &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  sub_24EF4A69C(&v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);
  *(v13 + ((v11 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510, &unk_24F93C690);

  v14 = sub_24F92A9E8();
  v15 = sub_24F92B858();
  (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_24F9B35F0;
  v16[5] = v13;
  v16[6] = v14;

  sub_24E6959D8(0, 0, v8, &unk_24F94D7B0, v16);

  return v14;
}

uint64_t sub_24EF4A5A0()
{
  v1 = (type metadata accessor for RefreshChallengeDetailAction(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 24) & ~*(*v1 + 80));

  v3 = v1[7];
  v4 = sub_24F928AD8();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_24EF4A69C(uint64_t a1, uint64_t a2)
{
  refreshed = type metadata accessor for RefreshChallengeDetailAction(0);
  (*(*(refreshed - 8) + 32))(a2, a1, refreshed);
  return a2;
}

uint64_t sub_24EF4A700(uint64_t a1)
{
  v4 = *(type metadata accessor for RefreshChallengeDetailAction(0) - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24E614970;

  return sub_24EF49374(a1, v1 + v5, v6);
}

uint64_t sub_24EF4A81C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24EF4A86C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t InAppPurchaseInstallPageIntent.init(url:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0xD00000000000001ELL;
  *(a2 + 1) = 0x800000024F9B3610;
  v4 = *(type metadata accessor for InAppPurchaseInstallPageIntent(0) + 20);
  v5 = sub_24F91F4A8();
  v6 = *(*(v5 - 8) + 32);

  return v6(&a2[v4], a1, v5);
}

uint64_t type metadata accessor for InAppPurchaseInstallPageIntent(uint64_t a1)
{
  result = qword_27F2347A8;
  if (!qword_27F2347A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t InAppPurchaseInstallPageIntent.kind.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t InAppPurchaseInstallPageIntent.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for InAppPurchaseInstallPageIntent(0) + 20);
  v4 = sub_24F91F4A8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

JSValue __swiftcall InAppPurchaseInstallPageIntent.makeValue(in:)(JSContext in)
{
  v2 = objc_opt_self();
  result.super.isa = [v2 valueWithNewObjectInContext_];
  if (result.super.isa)
  {
    isa = result.super.isa;
    type metadata accessor for InAppPurchaseInstallPageIntent(0);
    v5 = isa;
    v8 = sub_24F91F398();
    v7 = [v2 valueWithObject:sub_24F92CF68() inContext:{in.super.isa, v8, v6}];
    result.super.isa = swift_unknownObjectRelease();
    if (v7)
    {
      sub_24F92C328();

      return v5;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_24EF4AC14(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24EF4AC74(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_24F91F4A8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24EF4AD34(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_24F91F4A8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24EF4ADD8()
{
  sub_24E9421D0();
  result = sub_24F92C3D8();
  qword_27F39D090 = result;
  return result;
}

void sub_24EF4AE14(uint64_t a1)
{
  v2 = [objc_opt_self() defaultCenter];
  [v2 removeObserver_];
}

uint64_t sub_24EF4AE84()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  sub_24E857CC8(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1((v0 + 48));

  return swift_deallocClassInstance();
}

uint64_t sub_24EF4AF0C()
{
  v1 = v0;
  v2 = sub_24F928418();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_24F929758();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_opt_self() defaultCenter];
  [v7 removeObserver_];

  v8 = sub_24F91EB48();
  if (v8)
  {
    sub_24E9E1CDC(v8);
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = MEMORY[0x277D837D0];
  v33 = MEMORY[0x277D837D0];
  *&v32 = 6778732;
  *(&v32 + 1) = 0xE300000000000000;
  sub_24E612B0C(&v32, v31);
  v12 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v30 = v12;
  sub_24E81C1D4(v31, 0x707954746E657665, 0xE900000000000065, isUniquelyReferenced_nonNull_native);
  v14 = v30;
  if (qword_27F210C78 != -1)
  {
    swift_once();
  }

  v15 = qword_27F39D090;
  v33 = sub_24E9421D0();
  *&v32 = v15;
  sub_24E612B0C(&v32, v31);
  v16 = v15;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v30 = v14;
  sub_24E81C1D4(v31, 0x726556746E657665, 0xEC0000006E6F6973, v17);
  v18 = v30;
  v33 = v11;
  *&v32 = 0xD00000000000001BLL;
  *(&v32 + 1) = 0x800000024FA64AF0;
  sub_24E612B0C(&v32, v31);
  v19 = swift_isUniquelyReferenced_nonNull_native();
  v30 = v18;
  sub_24E81C1D4(v31, 0x614E726567676F6CLL, 0xEA0000000000656DLL, v19);
  v20 = v30;
  v21 = v1[11];
  v22 = v1[12];
  v33 = v11;
  *&v32 = v21;
  *(&v32 + 1) = v22;
  sub_24E612B0C(&v32, v31);

  v23 = swift_isUniquelyReferenced_nonNull_native();
  v30 = v20;
  sub_24E81C1D4(v31, 0x726574726F706572, 0xEC00000044495555, v23);
  v24 = v30;
  if (v10)
  {

    v25 = swift_isUniquelyReferenced_nonNull_native();
    *&v32 = v24;
    sub_24EF4B5B4(v10, sub_24F05AC64, 0, v25, &v32);
  }

  sub_24F929728();
  if (qword_27F210570 != -1)
  {
    swift_once();
  }

  v26 = sub_24F92AAE8();
  __swift_project_value_buffer(v26, qword_27F39C3B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93DE60;
  sub_24F928408();
  sub_24F9283F8();
  v33 = v3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v32);
  (*(v4 + 16))(boxed_opaque_existential_1, v6, v3);
  sub_24F9283D8();
  sub_24E857CC8(&v32);
  sub_24F9283F8();
  sub_24F928428();
  sub_24F92A588();

  __swift_project_boxed_opaque_existential_1(v1 + 6, v1[9]);
  sub_24F9299F8();
  __swift_project_boxed_opaque_existential_1(v1 + 6, v1[9]);
  sub_24F9299E8();

  return (*(v4 + 8))(v6, v3);
}

void sub_24EF4B5B4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v49 = a1;
  v50 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v51 = v8;
  v52 = 0;
  v53 = v11 & v9;
  v54 = a2;
  v55 = a3;

  sub_24F0F1D50(&v47);
  v12 = *(&v47 + 1);
  if (!*(&v47 + 1))
  {
    goto LABEL_25;
  }

  v13 = v47;
  sub_24E612B0C(v48, v46);
  v14 = *a5;
  v15 = sub_24E76D644(v13, v12);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v21 = v16;
  if (*(v14 + 24) < v20)
  {
    sub_24E89873C(v20, a4 & 1);
    v15 = sub_24E76D644(v13, v12);
    if ((v21 & 1) == (v22 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    v15 = sub_24F92CF88();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v26 = v15;
    sub_24E8AD8E4();
    v15 = v26;
    if (v21)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  if (v21)
  {
LABEL_11:
    v23 = *a5;
    v24 = 32 * v15;
    sub_24E643A9C(*(*a5 + 56) + 32 * v15, v45);
    __swift_destroy_boxed_opaque_existential_1(v46);

    v25 = *(v23 + 56);
    __swift_destroy_boxed_opaque_existential_1((v25 + v24));
    sub_24E612B0C(v45, (v25 + v24));
    goto LABEL_15;
  }

LABEL_13:
  v27 = *a5;
  *(*a5 + 8 * (v15 >> 6) + 64) |= 1 << v15;
  v28 = (v27[6] + 16 * v15);
  *v28 = v13;
  v28[1] = v12;
  sub_24E612B0C(v46, (v27[7] + 32 * v15));
  v29 = v27[2];
  v19 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (!v19)
  {
    v27[2] = v30;
LABEL_15:
    sub_24F0F1D50(&v47);
    v12 = *(&v47 + 1);
    if (*(&v47 + 1))
    {
      v21 = 1;
      do
      {
        v13 = v47;
        sub_24E612B0C(v48, v46);
        v34 = *a5;
        v35 = sub_24E76D644(v13, v12);
        v37 = *(v34 + 16);
        v38 = (v36 & 1) == 0;
        v19 = __OFADD__(v37, v38);
        v39 = v37 + v38;
        if (v19)
        {
          goto LABEL_26;
        }

        a4 = v36;
        if (*(v34 + 24) < v39)
        {
          sub_24E89873C(v39, 1);
          v35 = sub_24E76D644(v13, v12);
          if ((a4 & 1) != (v40 & 1))
          {
            goto LABEL_8;
          }
        }

        if (a4)
        {
          v31 = *a5;
          v32 = 32 * v35;
          sub_24E643A9C(*(*a5 + 56) + 32 * v35, v45);
          __swift_destroy_boxed_opaque_existential_1(v46);

          v33 = *(v31 + 56);
          __swift_destroy_boxed_opaque_existential_1((v33 + v32));
          sub_24E612B0C(v45, (v33 + v32));
        }

        else
        {
          v41 = *a5;
          *(*a5 + 8 * (v35 >> 6) + 64) |= 1 << v35;
          v42 = (v41[6] + 16 * v35);
          *v42 = v13;
          v42[1] = v12;
          sub_24E612B0C(v46, (v41[7] + 32 * v35));
          v43 = v41[2];
          v19 = __OFADD__(v43, 1);
          v44 = v43 + 1;
          if (v19)
          {
            goto LABEL_27;
          }

          v41[2] = v44;
        }

        sub_24F0F1D50(&v47);
        v12 = *(&v47 + 1);
      }

      while (*(&v47 + 1));
    }

LABEL_25:
    sub_24E6586B4(v49);

    return;
  }

LABEL_27:
  __break(1u);
}

uint64_t WidgetTodayCardTemplate.storyId.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t WidgetTodayCardTemplate.heading.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t WidgetTodayCardTemplate.title.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

void *WidgetTodayCardTemplate.backgroundColor.getter()
{
  v1 = *(v0 + 88);
  v2 = v1;
  return v1;
}

uint64_t WidgetTodayCardTemplate.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  WidgetTodayCardTemplate.init(deserializing:using:)(a1, a2);
  return v4;
}

void *WidgetTodayCardTemplate.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v75 = a2;
  v69 = *v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30, &qword_24F939880);
  MEMORY[0x28223BE20](v5 - 8);
  v65 = &v60 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v7 - 8);
  v64 = &v60 - v8;
  v9 = sub_24F9285B8();
  v73 = *(v9 - 8);
  v74 = v9;
  MEMORY[0x28223BE20](v9);
  v62 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2213B0, &qword_24F965EC0);
  MEMORY[0x28223BE20](v11 - 8);
  v67 = &v60 - v12;
  v13 = sub_24F92AC28();
  v71 = *(v13 - 8);
  v72 = v13;
  MEMORY[0x28223BE20](v13);
  v68 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_24F928388();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v66 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v60 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v60 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v60 - v25;
  v70 = a1;
  sub_24F928398();
  v27 = sub_24F928348();
  v29 = v28;
  v30 = v26;
  v31 = v15;
  v32 = *(v16 + 8);
  v32(v30, v31);
  if (!v29)
  {
    v48 = sub_24F92AC38();
    sub_24EF4D75C(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    *v49 = 0x644979726F7473;
    v49[1] = 0xE700000000000000;
    v49[2] = v69;
    (*(*(v48 - 8) + 104))(v49, *MEMORY[0x277D22530], v48);
    swift_willThrow();
    v32(v70, v31);
    v47 = v75;
    goto LABEL_5;
  }

  v3[2] = v27;
  v3[3] = v29;
  v33 = v3;
  v34 = v70;
  sub_24F928398();
  v35 = sub_24F928348();
  v37 = v36;
  v32(v23, v31);
  v33[4] = v35;
  v33[5] = v37;
  sub_24F928398();
  v38 = sub_24F928348();
  v40 = v39;
  v32(v23, v31);
  v33[6] = v38;
  v33[7] = v40;
  sub_24F928398();
  LOBYTE(v38) = sub_24F928278();
  v32(v20, v31);
  *(v33 + 64) = (v38 == 2) | v38 & 1;
  v41 = v66;
  sub_24F928398();
  v42 = v67;
  sub_24F9282B8();
  v66 = v31;
  v32(v41, v31);
  v43 = v34;
  if ((*(v71 + 48))(v42, 1, v72) == 1)
  {
    sub_24E601704(v42, &qword_27F2213B0, &qword_24F965EC0);
    v44 = sub_24F92AC38();
    sub_24EF4D75C(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    *v45 = 0x777472416E6F6369;
    v46 = v69;
    v45[1] = 0xEB000000006B726FLL;
    v45[2] = v46;
    (*(*(v44 - 8) + 104))(v45, *MEMORY[0x277D22530], v44);
    swift_willThrow();
    v32(v34, v66);

    v47 = v75;
    v3 = v33;
LABEL_5:
    swift_deallocPartialClassInstance();
    (*(v73 + 8))(v47, v74);
    return v3;
  }

  v3 = v33;
  v61 = v32;
  v50 = (*(v71 + 32))(v68, v42, v72);
  MEMORY[0x28223BE20](v50);
  v51 = v75;
  *(&v60 - 2) = v75;
  type metadata accessor for Artwork(0);
  v52 = v63;
  v53 = sub_24F92ABB8();
  if (!v52)
  {
    v33[9] = v53;
    sub_24F928398();
    (*(v73 + 16))(v62, v51, v74);
    sub_24EF4D75C(&qword_27F219660, type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
    sub_24F929548();
    v33[10] = v76;
    sub_24F928398();
    v54 = JSONObject.appStoreColor.getter();
    v55 = v66;
    v56 = v61;
    v61(v23, v66);
    v3[11] = v54;
    sub_24F928398();
    v57 = v64;
    sub_24F928268();
    v56(v23, v55);
    sub_24E6009C8(v57, v3 + OBJC_IVAR____TtC12GameStoreKit23WidgetTodayCardTemplate_url, &qword_27F228530, &unk_24F93C6E0);
    sub_24F928398();
    v58 = v65;
    sub_24F928288();
    v56(v43, v55);
    v56(v23, v55);
    (*(v71 + 8))(v68, v72);
    sub_24E6009C8(v58, v3 + OBJC_IVAR____TtC12GameStoreKit23WidgetTodayCardTemplate_eventStartDate, &unk_27F22EC30, &qword_24F939880);
    (*(v73 + 8))(v75, v74);
    return v3;
  }

  result = swift_deallocPartialClassInstance();
  __break(1u);
  return result;
}

uint64_t sub_24EF4C4C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v14[1] = a3;
  v5 = sub_24F9285B8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F928388();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Artwork(0);
  (*(v10 + 16))(v12, a1, v9);
  (*(v6 + 16))(v8, a2, v5);
  sub_24EF4D75C(&qword_27F219660, type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
  return sub_24F929548();
}

uint64_t WidgetTodayCardTemplate.hash(into:)(uint64_t a1)
{
  v2 = sub_24F91F648();
  v20 = *(v2 - 8);
  v21 = v2;
  MEMORY[0x28223BE20](v2);
  v19 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30, &qword_24F939880);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v18 - v5;
  v7 = sub_24F91F4A8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v18 - v12;
  sub_24F92B218();
  if (*(v1 + 40))
  {
    sub_24F92D088();
    sub_24F92B218();
    if (*(v1 + 56))
    {
LABEL_3:
      sub_24F92D088();
      sub_24F92B218();
      goto LABEL_6;
    }
  }

  else
  {
    sub_24F92D088();
    if (*(v1 + 56))
    {
      goto LABEL_3;
    }
  }

  sub_24F92D088();
LABEL_6:
  v14 = v20;
  sub_24F92D088();
  sub_24E60169C(v1 + OBJC_IVAR____TtC12GameStoreKit23WidgetTodayCardTemplate_url, v13, &qword_27F228530, &unk_24F93C6E0);
  if ((*(v8 + 48))(v13, 1, v7) == 1)
  {
    sub_24F92D088();
  }

  else
  {
    (*(v8 + 32))(v10, v13, v7);
    sub_24F92D088();
    sub_24EF4D75C(&qword_27F2252E0, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
    sub_24F92AEF8();
    (*(v8 + 8))(v10, v7);
  }

  sub_24E60169C(v1 + OBJC_IVAR____TtC12GameStoreKit23WidgetTodayCardTemplate_eventStartDate, v6, &unk_27F22EC30, &qword_24F939880);
  v15 = v21;
  if ((*(v14 + 48))(v6, 1, v21) == 1)
  {
    return sub_24F92D088();
  }

  v17 = v19;
  (*(v14 + 32))(v19, v6, v15);
  sub_24F92D088();
  sub_24EF4D75C(&qword_27F2252E8, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_24F92AEF8();
  return (*(v14 + 8))(v17, v15);
}