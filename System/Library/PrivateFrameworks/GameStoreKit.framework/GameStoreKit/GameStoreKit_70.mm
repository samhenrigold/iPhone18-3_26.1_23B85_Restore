uint64_t sub_24ED2A440(uint64_t a1, uint64_t *a2)
{
  sub_24E60169C(a1, v5, &qword_27F2129B0, &unk_24F945320);
  v3 = *a2;
  swift_beginAccess();
  sub_24E8E7708(v5, v3 + 136);
  return swift_endAccess();
}

uint64_t sub_24ED2A504(uint64_t a1)
{
  swift_beginAccess();
  sub_24E8E7708(a1, v1 + 136);
  return swift_endAccess();
}

id *TitledParagraph.deinit()
{

  sub_24E6585F8((v0 + 11));

  sub_24E601704((v0 + 17), &qword_27F2129B0, &unk_24F945320);
  return v0;
}

uint64_t TitledParagraph.__deallocating_deinit()
{
  TitledParagraph.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_24ED2A658@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24ED2A6F0(a2, a3);
  if (!v3)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_24ED2A684@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  return sub_24E60169C(v3 + 136, a1, &qword_27F2129B0, &unk_24F945320);
}

uint64_t sub_24ED2A6F0(uint64_t a1, uint64_t a2)
{
  v77 = a2;
  v69 = sub_24F91F6B8();
  v68 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v4 = &v67 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24F928388();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v76 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v75 = &v67 - v9;
  MEMORY[0x28223BE20](v10);
  v12 = &v67 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v67 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v67 - v17;
  sub_24F928398();
  v73 = sub_24F928348();
  v74 = v19;
  v22 = *(v6 + 8);
  v20 = (v6 + 8);
  v21 = v22;
  v22(v18, v5);
  sub_24F928398();
  sub_24EA87AA4();
  sub_24F928208();
  v22(v18, v5);
  LODWORD(v72) = v83[0];
  v78 = a1;
  sub_24F928398();
  v23 = sub_24F928348();
  v67 = v4;
  if (v24)
  {
    *&v80 = v23;
    *(&v80 + 1) = v24;
  }

  else
  {
    sub_24F91F6A8();
    v25 = sub_24F91F668();
    v27 = v26;
    (*(v68 + 8))(v4, v69);
    *&v80 = v25;
    *(&v80 + 1) = v27;
  }

  sub_24F92C7F8();
  v28.n128_f64[0] = v21(v15, v5);
  v29 = v21;
  LOBYTE(v80) = v72;
  LOBYTE(v79[0]) = 0;
  v71 = _s12GameStoreKit9ParagraphC7prepare4text2of4withSo18NSAttributedStringCSSSg_AA10StyledTextC9MediaTypeOAC5StyleOtFZ_0(v73, v74, &v80, v79, v28);

  v30 = v78;
  sub_24F928398();
  v31 = sub_24F928278();
  v29(v12, v5);
  v32 = v5;
  v33 = v29;
  v70 = (v31 == 2) | v31;
  v34 = v75;
  sub_24F928398();
  v35 = sub_24F928348();
  v73 = v36;
  v29(v34, v32);
  v37 = v76;
  sub_24F928398();
  v38 = sub_24F928348();
  v72 = v39;
  v33(v37, v32);
  sub_24F928398();
  sub_24ED2B3B8();
  sub_24F928208();
  v75 = v20;
  v76 = v32;
  v74 = v33;
  v33(v18, v32);
  v84 = v85;
  type metadata accessor for TitledParagraph();
  v40 = swift_allocObject();
  *(v40 + 24) = 0;
  *(v40 + 40) = 0;
  *(v40 + 128) = 0u;
  *(v40 + 144) = 0u;
  *(v40 + 160) = 0;
  sub_24E60169C(v83, &v80, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v81 + 1))
  {
    v41 = v81;
    *(v40 + 88) = v80;
    *(v40 + 104) = v41;
    *(v40 + 120) = v82;
  }

  else
  {
    v42 = v38;
    v43 = v67;
    sub_24F91F6A8();
    v44 = sub_24F91F668();
    v46 = v45;
    v47 = v43;
    v38 = v42;
    (*(v68 + 8))(v47, v69);
    v79[0] = v44;
    v79[1] = v46;
    sub_24F92C7F8();
    sub_24E601704(&v80, &qword_27F235830, &qword_24F93B8C0);
  }

  swift_beginAccess();
  v48 = byte_27F236A29;
  v49 = type metadata accessor for LanguageAwareString();
  objc_allocWithZone(v49);
  v50 = v71;
  v51 = sub_24EFF0E44(v50, 0, v48);

  *(v40 + 16) = v51;
  if (v70)
  {
    v52 = [objc_allocWithZone(MEMORY[0x277CCAB48]) initWithAttributedString_];
    v71 = v35;
    v53 = v52;
    v54 = [v52 length];
    v55 = [v53 mutableString];
    v56 = sub_24F92B098();
    v57 = v38;
    v58 = sub_24F92B098();
    [v55 replaceOccurrencesOfString:v56 withString:v58 options:1024 range:{0, v54}];

    LOBYTE(v58) = byte_27F236A29;
    v59 = objc_allocWithZone(v49);
    v60 = v58;
    v38 = v57;
    v61 = sub_24EFF0E44(v53, 0, v60);

    v35 = v71;
    v62 = sub_24F9285B8();
    (*(*(v62 - 8) + 8))(v77, v62);
    v74(v78, v76);
    sub_24E601704(v83, &qword_27F235830, &qword_24F93B8C0);
  }

  else
  {

    v63 = sub_24F9285B8();
    (*(*(v63 - 8) + 8))(v77, v63);
    v74(v30, v76);
    sub_24E601704(v83, &qword_27F235830, &qword_24F93B8C0);
    v61 = v51;
  }

  *(v40 + 32) = v61;
  v64 = v72;
  v65 = v73;
  *(v40 + 48) = v35;
  *(v40 + 56) = v65;
  *(v40 + 64) = v38;
  *(v40 + 72) = v64;
  *(v40 + 80) = v84;
  return v40;
}

unint64_t sub_24ED2AF00()
{
  result = qword_27F22E8F0;
  if (!qword_27F22E8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22E8F0);
  }

  return result;
}

unint64_t sub_24ED2AF58()
{
  result = qword_27F22E8F8;
  if (!qword_27F22E8F8)
  {
    type metadata accessor for TitledParagraph();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22E8F8);
  }

  return result;
}

id sub_24ED2AFD0@<X0>(void *a1@<X8>)
{
  result = sub_24ED29B14();
  *a1 = result;
  return result;
}

void sub_24ED2AFFC(void **a1, uint64_t a2)
{
  v2 = *a1;
  v4 = *(*a2 + 24);
  *(*a2 + 24) = *a1;
  v3 = v2;
}

id sub_24ED2B044@<X0>(void *a1@<X8>)
{
  result = sub_24ED29BDC();
  *a1 = result;
  return result;
}

void sub_24ED2B070(void **a1, uint64_t a2)
{
  v2 = *a1;
  v4 = *(*a2 + 40);
  *(*a2 + 40) = *a1;
  v3 = v2;
}

uint64_t sub_24ED2B0B8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 128);
}

uint64_t sub_24ED2B108@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  return sub_24E60169C(v3 + 136, a2, &qword_27F2129B0, &unk_24F945320);
}

unint64_t sub_24ED2B3B8()
{
  result = qword_27F22E900;
  if (!qword_27F22E900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22E900);
  }

  return result;
}

uint64_t EdgeInsetsDimension.init(top:left:bottom:right:source:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  sub_24E612E28(a1, a6);
  sub_24E612E28(a2, a6 + 40);
  sub_24E612E28(a3, a6 + 80);
  sub_24E612E28(a4, a6 + 120);
  v11 = *(type metadata accessor for EdgeInsetsDimension(0) + 32);
  v12 = sub_24F922118();
  v13 = *(*(v12 - 8) + 32);

  return v13(a6 + v11, a5, v12);
}

uint64_t type metadata accessor for EdgeInsetsDimension(uint64_t a1)
{
  result = qword_27F22E908;
  if (!qword_27F22E908)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t EdgeInsetsDimension.source.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EdgeInsetsDimension(0) + 32);
  v4 = sub_24F922118();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

double EdgeInsetsDimension.value(in:rounded:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  v4 = sub_24F9223A8();
  __swift_project_boxed_opaque_existential_1(v3 + 5, v3[8]);
  sub_24F9223A8();
  __swift_project_boxed_opaque_existential_1(v3 + 10, v3[13]);
  sub_24F9223A8();
  __swift_project_boxed_opaque_existential_1(v3 + 15, v3[18]);
  sub_24F9223A8();
  return v4;
}

uint64_t EdgeInsetsDimension.debugDescription.getter()
{
  sub_24F92C888();
  MEMORY[0x253050C20](0xD000000000000019, 0x800000024FA5B810);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226E28, &qword_24F999F80);
  sub_24F92CA38();
  MEMORY[0x253050C20](0x203A7466656C202CLL, 0xE800000000000000);
  sub_24F92CA38();
  MEMORY[0x253050C20](0x6D6F74746F62202CLL, 0xEA0000000000203ALL);
  sub_24F92CA38();
  MEMORY[0x253050C20](0x3A7468676972202CLL, 0xE900000000000020);
  sub_24F92CA38();
  MEMORY[0x253050C20](0x656372756F73202CLL, 0xEA0000000000203ALL);
  type metadata accessor for EdgeInsetsDimension(0);
  sub_24F922118();
  sub_24F92CA38();
  MEMORY[0x253050C20](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_24ED2B8AC(uint64_t a1, uint64_t a2, uint64_t a3)
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

  else
  {
    v8 = sub_24F922118();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24ED2B96C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_24F922118();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24ED2BA10(uint64_t a1)
{
  result = sub_24ED2BA98();
  if (v2 <= 0x3F)
  {
    result = sub_24F922118();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_24ED2BA98()
{
  result = qword_27F237A40;
  if (!qword_27F237A40)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27F237A40);
  }

  return result;
}

uint64_t AccountAction.Kind.hashValue.getter()
{
  v1 = *v0;
  sub_24F92D068();
  MEMORY[0x253052A00](v1);
  return sub_24F92D0B8();
}

void *AccountAction.__allocating_init(kind:title:actionMetrics:)(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_24F91F6B8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  *(v12 + OBJC_IVAR____TtC12GameStoreKit13AccountAction_kind) = *a1;
  v36 = 0;
  memset(v35, 0, sizeof(v35));
  v13 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v14 = sub_24F928AD8();
  v15 = *(v14 - 8);
  (*(v15 + 16))(v12 + v13, a4, v14);
  v16 = OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics;
  v17 = sub_24F929608();
  (*(*(v17 - 8) + 56))(v12 + v16, 1, 1, v17);
  v18 = (v12 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v18 = 0u;
  v18[1] = 0u;
  v19 = v12 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  sub_24E65E064(v35, &v32);
  if (*(&v33 + 1))
  {
    v20 = v33;
    *v19 = v32;
    *(v19 + 1) = v20;
    *(v19 + 4) = v34;
  }

  else
  {
    sub_24F91F6A8();
    v21 = sub_24F91F668();
    v22 = v8;
    v23 = a4;
    v24 = a2;
    v25 = a3;
    v26 = v21;
    v27 = v9;
    v29 = v28;
    (*(v27 + 8))(v11, v22);
    v31[1] = v26;
    v31[2] = v29;
    a3 = v25;
    a2 = v24;
    a4 = v23;
    sub_24F92C7F8();
    sub_24E601704(&v32, &qword_27F235830, &qword_24F93B8C0);
  }

  (*(v15 + 8))(a4, v14);
  sub_24E601704(v35, &qword_27F235830, &qword_24F93B8C0);
  v12[2] = a2;
  v12[3] = a3;
  v12[4] = 0;
  v12[5] = 0;
  return v12;
}

void *AccountAction.init(kind:title:actionMetrics:)(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_24F91F6B8();
  v31 = *(v10 - 8);
  v32 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v30 - v14;
  v16 = sub_24F928AD8();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v5 + OBJC_IVAR____TtC12GameStoreKit13AccountAction_kind) = *a1;
  v42 = 0;
  memset(v41, 0, sizeof(v41));
  (*(v17 + 16))(v19, a4, v16);
  v20 = sub_24F929608();
  (*(*(v20 - 8) + 56))(v15, 1, 1, v20);
  v21 = (v5 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v21 = 0u;
  v21[1] = 0u;
  sub_24E65E064(v41, &v35);
  if (*(&v36 + 1))
  {
    v38 = v35;
    v39 = v36;
    v40 = v37;
  }

  else
  {
    sub_24F91F6A8();
    v22 = sub_24F91F668();
    v30 = a4;
    v23 = a2;
    v24 = a3;
    v26 = v25;
    (*(v31 + 8))(v12, v32);
    v33 = v22;
    v34 = v26;
    a3 = v24;
    a2 = v23;
    a4 = v30;
    sub_24F92C7F8();
    sub_24E601704(&v35, &qword_27F235830, &qword_24F93B8C0);
  }

  (*(v17 + 8))(a4, v16);
  sub_24E601704(v41, &qword_27F235830, &qword_24F93B8C0);
  v27 = v5 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  *(v27 + 4) = v40;
  v28 = v39;
  *v27 = v38;
  *(v27 + 1) = v28;
  sub_24E65E0D4(v15, v5 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics);
  v5[2] = a2;
  v5[3] = a3;
  v5[4] = 0;
  v5[5] = 0;
  (*(v17 + 32))(v5 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v19, v16);
  return v5;
}

uint64_t AccountAction.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0, &unk_24F945320);
  return v0;
}

uint64_t AccountAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0, &unk_24F945320);

  return swift_deallocClassInstance();
}

unint64_t sub_24ED2C434()
{
  result = qword_27F22E918;
  if (!qword_27F22E918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22E918);
  }

  return result;
}

uint64_t type metadata accessor for AccountAction(uint64_t a1)
{
  result = qword_27F22E920;
  if (!qword_27F22E920)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24ED2C590(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1F0, &unk_24F9549C0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24ED2C61C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1F0, &unk_24F9549C0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for PlayTogetherPageIntent(uint64_t a1)
{
  result = qword_27F22E930;
  if (!qword_27F22E930)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24ED2C6E4(uint64_t a1)
{
  sub_24E637694(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_24ED2C750@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1F0, &unk_24F9549C0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E940, &qword_24F99A190);
  v17 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v15 - v8;
  v10 = type metadata accessor for PlayTogetherPageIntent(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24ED2CCB4();
  sub_24F92D108();
  if (!v2)
  {
    v13 = v16;
    type metadata accessor for Player(0);
    sub_24E61C064(&qword_27F213E38, &protocol conformance descriptor for Player);
    sub_24F92CC18();
    (*(v17 + 8))(v9, v7);
    sub_24E6365D4(v6, v12);
    sub_24ED2CD08(v12, v13);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_24ED2C98C(uint64_t a1)
{
  v2 = sub_24ED2CCB4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24ED2C9C8(uint64_t a1)
{
  v2 = sub_24ED2CCB4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24ED2CA3C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E950, &unk_24F99A198);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24ED2CCB4();
  sub_24F92D128();
  type metadata accessor for Player(0);
  sub_24E61C064(&qword_27F213E28, &protocol conformance descriptor for Player);
  sub_24F92CCF8();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_24ED2CBA0@<X0>(void *a1@<X8>)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F08, &unk_24F93A2A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93DE60;
  *(inited + 32) = 0x726579616C70;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1F0, &unk_24F9549C0);
  *(inited + 80) = sub_24E7EDBB4();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 48));
  sub_24E6364A0(v2, boxed_opaque_existential_1);
  v6 = sub_24E607D0C(inited);
  swift_setDeallocating();
  sub_24ED2CD6C(inited + 32);
  v7 = sub_24E80FFAC(v6);

  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20, &qword_24F93E370);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v7;
  return result;
}

unint64_t sub_24ED2CCB4()
{
  result = qword_27F22E948;
  if (!qword_27F22E948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22E948);
  }

  return result;
}

uint64_t sub_24ED2CD08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlayTogetherPageIntent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24ED2CD6C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F18, &unk_24F93A2B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24ED2CDE8()
{
  result = qword_27F22E958;
  if (!qword_27F22E958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22E958);
  }

  return result;
}

unint64_t sub_24ED2CE40()
{
  result = qword_27F22E960;
  if (!qword_27F22E960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22E960);
  }

  return result;
}

unint64_t sub_24ED2CE98()
{
  result = qword_27F22E968;
  if (!qword_27F22E968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22E968);
  }

  return result;
}

uint64_t sub_24ED2CEEC(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v5 = *a1;
  v6[0] = v2;
  *(v6 + 9) = *(a1 + 25);
  v3 = a2[1];
  v7 = *a2;
  v8[0] = v3;
  *(v8 + 9) = *(a2 + 25);
  return sub_24ED2F6DC(&v5, &v7) & 1;
}

double static StreamlinedInAppPurchaseOfferButtonPresenter.activeStateDataSource.setter(uint64_t a1)
{
  swift_beginAccess();
  qword_27F22E970 = a1;

  return result;
}

double sub_24ED2D028(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  qword_27F22E970 = v1;

  return result;
}

uint64_t static StreamlinedInAppPurchaseOfferButtonPresenter.use(stateDataSource:)(uint64_t a1)
{
  swift_beginAccess();
  qword_27F22E970 = a1;
}

uint64_t sub_24ED2D120(void *a1)
{
  v1 = a1[1];
  v2 = swift_unknownObjectRetain();
  sub_24ED30548(v2, v1);

  return swift_unknownObjectRelease();
}

uint64_t StreamlinedInAppPurchaseOfferButtonPresenter.view.setter(uint64_t a1, __n128 a2, uint64_t a3)
{
  sub_24ED30548(a1, a3);

  return swift_unknownObjectRelease();
}

void (*StreamlinedInAppPurchaseOfferButtonPresenter.view.modify(uint64_t *a1))(void **a1, char a2, __n128 a3)
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
  return sub_24ED2D240;
}

void sub_24ED2D240(void **a1, char a2, __n128 a3)
{
  v3 = *a1;
  v4 = *(*a1 + 4);
  v5 = *(*a1 + 3);
  if (a2)
  {
    v6 = swift_unknownObjectRetain();
    sub_24ED30548(v6, v4);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_24ED30548(v5, v4);
  }

  swift_unknownObjectRelease();

  free(v3);
}

id StreamlinedInAppPurchaseOfferButtonPresenter.theme.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 128);
  v3 = *(v1 + 136);
  *a1 = *(v1 + 120);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  return sub_24E9534EC(v2, v3);
}

void StreamlinedInAppPurchaseOfferButtonPresenter.alignment.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 148);
  *a1 = *(v1 + 144);
  *(a1 + 4) = v2;
}

void StreamlinedInAppPurchaseOfferButtonPresenter.subtitlePosition.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 154);
  *a1 = *(v1 + 150);
  *(a1 + 4) = v2;
}

uint64_t StreamlinedInAppPurchaseOfferButtonPresenter.__allocating_init(displayProperties:buttonAction:appStateController:restrictions:subtitlePosition:alignment:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6, unsigned int *a7)
{
  v14 = swift_allocObject();
  StreamlinedInAppPurchaseOfferButtonPresenter.init(displayProperties:buttonAction:appStateController:restrictions:subtitlePosition:alignment:)(a1, a2, a3, a4, a5, a6, a7);
  return v14;
}

uint64_t StreamlinedInAppPurchaseOfferButtonPresenter.init(displayProperties:buttonAction:appStateController:restrictions:subtitlePosition:alignment:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6, unsigned int *a7)
{
  v85 = *a6;
  v11 = a6[1];
  v12 = a6[2];
  v13 = a6[3];
  v14 = a6[4];
  v83 = a6[5];
  v80 = *a7 | (*(a7 + 2) << 32);
  *(v7 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v7 + 88) = 0;
  *(v7 + 96) = 0;
  *(v7 + 160) = 0u;
  *(v7 + 176) = 0u;
  *(v7 + 192) = 0;
  *(v7 + 200) = -258;
  *(v7 + 208) = 0u;
  *(v7 + 224) = 0u;
  *(v7 + 240) = 0;
  *(v7 + 248) = -258;
  *(v7 + 272) = 1;
  *(v7 + 280) = 0u;
  *(v7 + 296) = 0u;
  v69 = v7 + 280;
  *(v7 + 312) = 0x2000;
  *(v7 + 314) = 0;
  swift_beginAccess();
  v87 = qword_27F22E970;
  v76 = v13;
  v73 = v14;
  if (!qword_27F22E970)
  {
    if (qword_27F210568 != -1)
    {
      swift_once();
    }

    v15 = sub_24F92AAE8();
    __swift_project_value_buffer(v15, qword_27F39C398);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    sub_24F9283A8();
    sub_24F92A5A8();
  }

  *(v7 + 32) = a2;
  *(v7 + 40) = a1;
  *(v7 + 72) = type metadata accessor for Restrictions();
  *(v7 + 80) = &protocol witness table for Restrictions;
  *(v7 + 48) = a5;
  *(v7 + 150) = v85;
  v71 = v11;
  *(v7 + 151) = v11;
  *(v7 + 152) = v12;
  *(v7 + 153) = v13;
  *(v7 + 154) = v14;
  *(v7 + 155) = v83;
  *(v7 + 256) = a3;
  *(v7 + 264) = a4;
  ObjectType = swift_getObjectType();
  v88 = v7;
  v17 = *(a1 + 32);
  *&v92 = *(a1 + 24);
  *(&v92 + 1) = v17;
  v18 = *(a4 + 56);

  v19 = a1;

  swift_unknownObjectRetain();

  v70 = v18;
  v20 = v18(&v92, ObjectType, a4);
  v22 = v21;

  *(v7 + 104) = v20;
  *(v7 + 112) = v22;
  v24 = v80;
  if (v80 == 3)
  {
    LOBYTE(v90[0]) = v85;
    BYTE1(v90[0]) = v71;
    BYTE2(v90[0]) = v12;
    BYTE3(v90[0]) = v76;
    BYTE4(v90[0]) = v73;
    BYTE5(v90[0]) = v83;
    sub_24E9536D8(v90, &v92, v23);
    v24 = v92;
    v25.i32[0] = *(&v92 + 1);
    v26 = vmovl_u8(v25).u64[0];
    v27 = BYTE5(v92);
  }

  else
  {
    v28.i64[0] = 0xFFFFFFFFFFFFLL;
    v28.i64[1] = 0xFFFFFFFFFFFFLL;
    v29 = vandq_s8(vdupq_n_s64(v80), v28);
    v26 = vmovn_s32(vuzp1q_s32(vshlq_u64(v29, xmmword_24F99A2D0), vshlq_u64(v29, xmmword_24F99A2C0)));
    v27 = BYTE5(v80);
  }

  *(v7 + 144) = v24;
  *(v7 + 145) = vuzp1_s8(v26, v26).u32[0];
  *(v7 + 149) = v27;
  v30 = v19;
  v32 = *(v19 + 104);
  v31 = *(v19 + 112);
  *(v88 + 120) = *(v19 + 96);
  *(v88 + 128) = v32;
  *(v88 + 136) = v31;
  if (v87)
  {
    v33 = *(v19 + 64);
    if (v33)
    {
      v84 = *(v19 + 56);
      v34 = *(v19 + 176);
      v35 = *(v19 + 184);
      v36 = swift_allocObject();
      swift_weakInit();
      v37 = swift_allocObject();
      v37[2] = v36;
      v37[3] = v87;
      v37[4] = v19;
      v37[5] = v34;
      v77 = v34;
      v86 = v37;
      v37[6] = v35;
      *&v92 = v84;
      *(&v92 + 1) = v33;

      sub_24E9534EC(v32, v31);

      v74 = v36;

      v38 = v70(&v92, ObjectType, a4);
      v40 = v39;

      *(v88 + 88) = v38;
      *(v88 + 96) = v40;
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      if (*(v88 + 88))
      {
        v41 = *(v88 + 96);
        v42 = swift_getObjectType();
        v43 = *(v41 + 16);
        swift_unknownObjectRetain();
        v43(v90, v42, v41);
        swift_unknownObjectRelease();
        v92 = v90[0];
        v93 = v90[1];
        v94 = v90[2];
        v95 = v91;
        if (v91 >> 60)
        {
          if (v91 >> 60 != 8)
          {
            goto LABEL_22;
          }

          v44 = *(&v94 + 1) | *(&v95 + 1);
          v45 = *(&v93 + 1) | v93 | *(&v92 + 1);
          if (v91 == 0x8000000000000000 && !(v44 | *&v90[0] | v94 | v45))
          {
            goto LABEL_15;
          }

          if (v91 != 0x8000000000000000 || *&v90[0] != 4 || (v46 = v44 | v94 | v45) != 0)
          {
LABEL_22:
            sub_24E88D2AC(&v92);
            LOBYTE(v46) = 1;
          }
        }

        else
        {
          LOBYTE(v46) = LOBYTE(v90[0]) != 1;
        }

LABEL_23:
        *(v88 + 314) = v46;
        v47 = swift_getObjectType();
        v48 = swift_allocObject();
        swift_weakInit();
        v49 = swift_allocObject();
        v49[2] = v48;
        v49[3] = sub_24ED306C4;
        v49[4] = v86;
        v50 = *(v40 + 72);

        v50(v88, sub_24ED30714, v49, v47, v40);

        v51 = swift_allocObject();
        *(v51 + 16) = sub_24ED306C4;
        *(v51 + 24) = v86;

        InAppPurchaseStateDataSource.addObserver(_:action:)(v88, sub_24E97225C, v51);

        v52 = *(v88 + 112);
        v53 = swift_getObjectType();
        v54 = swift_allocObject();
        *(v54 + 16) = sub_24ED306C4;
        *(v54 + 24) = v86;
        v55 = *(v52 + 72);

        swift_unknownObjectRetain();
        v55(v88, sub_24E97225C, v54, v53, v52);
        swift_unknownObjectRelease();

        sub_24ED2DE04(v74, v87, v30, v77, v35);

        if (sub_24ED2E338())
        {
          v56 = *(v88 + 96);
          v57 = swift_unknownObjectRetain();
          sub_24ED2E538(v57, v56, &v92);
          v82 = v92;
          v78 = v93;
          v79 = *(&v92 + 1);
          v75 = *(&v93 + 1);
          v72 = v94;
          v58 = WORD4(v94);
          swift_unknownObjectRelease();
          v60 = *(v88 + 272);
          v59 = *(v88 + 280);
          v61 = *(v88 + 288);
          v62 = *(v88 + 296);
          v63 = *(v88 + 304);
          v64 = *(v88 + 312);
          if ((~v58 & 0xFEFE) != 0)
          {
            v65 = v93;
            *(v88 + 272) = v92;
            *(v88 + 288) = v65;
            *(v88 + 304) = v94;
            *(v88 + 312) = v58;
            sub_24ED307F0(v82, v79, v78, v75, v72, v58);
            sub_24ED30758(v60, v59, v61, v62, v63, v64);
            sub_24E601704(&v92, &qword_27F22E978, &qword_24F99A2E8);
            if (*(v30 + 136))
            {
              goto LABEL_27;
            }

            goto LABEL_29;
          }

          *(v88 + 272) = 1;
          *v69 = 0u;
          *(v69 + 16) = 0u;
          *(v69 + 32) = 0;
          sub_24ED30758(v60, v59, v61, v62, v63, v64);
        }

        if (*(v30 + 136))
        {
LABEL_27:
          swift_unknownObjectRelease();

          swift_unknownObjectRelease();

          goto LABEL_30;
        }

LABEL_29:
        v66 = [objc_opt_self() defaultCenter];

        v67 = sub_24F92B098();

        [v66 addObserver:v88 selector:sel_restrictionsDidChange_ name:v67 object:a5];

        swift_unknownObjectRelease();

        swift_unknownObjectRelease();

        goto LABEL_30;
      }

LABEL_15:
      LOBYTE(v46) = 0;
      goto LABEL_23;
    }

    sub_24E9534EC(v32, v31);

    swift_unknownObjectRelease();
  }

  else
  {
    sub_24E9534EC(v32, v31);
    swift_unknownObjectRelease();
  }

LABEL_30:

  return v88;
}

double sub_24ED2DE04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = *(a3 + 24);
    v13 = *(a3 + 32);
    swift_beginAccess();
    sub_24E615E00(a2 + 16, &v30);
    v14 = *&v31[8];
    __swift_project_boxed_opaque_existential_1(&v30, *&v31[8]);
    v28[0] = v12;
    v28[1] = v13;
    (*(*(&v14 + 1) + 32))(v29, v28, a4, a5, v14, *(&v14 + 1));
    __swift_destroy_boxed_opaque_existential_1(&v30);
    sub_24ED2DFD4(v29, &v30);
    v15 = *(v11 + 272);
    v16 = *(v11 + 280);
    v17 = *(v11 + 288);
    v18 = *(v11 + 296);
    v19 = *(v11 + 304);
    v20 = *v31;
    *(v11 + 272) = v30;
    *(v11 + 288) = v20;
    v21 = *(v11 + 312);
    *(v11 + 298) = *&v31[10];
    sub_24ED307F0(v15, v16, v17, v18, v19, v21);
    sub_24ED30BE4(&v30, v28);
    sub_24ED30758(v15, v16, v17, v18, v19, v21);
    v22 = *(v11 + 160);
    v23 = *(v11 + 168);
    v24 = *(v11 + 176);
    v25 = *(v11 + 184);
    v26 = *(v11 + 192);
    *(v11 + 160) = v15;
    *(v11 + 168) = v16;
    *(v11 + 176) = v17;
    *(v11 + 184) = v18;
    *(v11 + 192) = v19;
    v27 = *(v11 + 200);
    *(v11 + 200) = v21;
    sub_24ED30888(v22, v23, v24, v25, v26, v27);
    sub_24ED307F0(v15, v16, v17, v18, v19, v21);
    _s12GameStoreKit44StreamlinedInAppPurchaseOfferButtonPresenterC6update13ignoringCacheySb_tF_0();
    sub_24ED30758(v15, v16, v17, v18, v19, v21);
    sub_24ED30C1C(&v30);
  }

  return result;
}

uint64_t sub_24ED2DFD4@<X0>(unsigned __int8 *a1@<X0>, int8x16_t *a2@<X8>)
{
  v4 = *a1;
  v5 = *(v2 + 96);
  v6 = swift_unknownObjectRetain();
  sub_24ED2E538(v6, v5, v22);
  v19 = v22[1];
  v20 = v22[0];
  v7 = v23;
  v8 = v24;
  swift_unknownObjectRelease();
  v9 = *(v2 + 112);
  ObjectType = swift_getObjectType();
  v11 = *(v9 + 16);
  swift_unknownObjectRetain();
  v11(v25, ObjectType, v9);
  result = swift_unknownObjectRelease();
  if (v4 > 0x3F)
  {
    v14 = v4 >> 6;
    if (v26 >> 60)
    {
      if (v26 >> 60 == 1)
      {
        v15 = vdup_n_s32((v8 & 0xFEFEFEFE) == 65278);
        v16.i64[0] = v15.u32[0];
        v16.i64[1] = v15.u32[1];
        v17 = vcgezq_s64(vshlq_n_s64(v16, 0x3FuLL));
        v18 = vandq_s8(v19, v17);
        v13 = vandq_s8(v20, v17);
        if ((v8 & 0xFEFEFEFE) == 0xFEFE)
        {
          v7 = 0;
          LOWORD(v8) = 0x4000;
        }

        goto LABEL_17;
      }

      sub_24E8B9478(v25, v21);
      sub_24E601704(v22, &qword_27F22E978, &qword_24F99A2E8);
      if (v14 == 1)
      {
        sub_24E88D2AC(v25);
        result = sub_24E88D2AC(v25);
        v7 = 0;
        v18 = 0uLL;
        v13 = (v4 & 1);
        LOWORD(v8) = 0x2000;
        goto LABEL_17;
      }
    }

    else
    {
      result = sub_24E601704(v22, &qword_27F22E978, &qword_24F99A2E8);
      if (v14 == 1)
      {
        goto LABEL_3;
      }
    }

    if (v14 != 2)
    {
      sub_24E88D2AC(v25);
      result = sub_24E88D2AC(v25);
      v7 = 0;
      v13 = 0uLL;
      LOWORD(v8) = -16384;
      goto LABEL_16;
    }

    sub_24E88D2AC(v25);
    result = sub_24E88D2AC(v25);
    v7 = 0;
    v18 = 0uLL;
    v13 = (v4 & 1);
    LOWORD(v8) = 0x4000;
  }

  else
  {
    result = sub_24E88D2AC(v25);
    if ((~v8 & 0xFEFE) == 0)
    {
LABEL_3:
      v7 = 0;
      v13 = 0uLL;
      LOWORD(v8) = 0x4000;
LABEL_16:
      v18 = 0uLL;
      goto LABEL_17;
    }

    v18 = v19;
    v13 = v20;
  }

LABEL_17:
  *a2 = v13;
  a2[1] = v18;
  a2[2].i64[0] = v7;
  a2[2].i16[4] = v8;
  return result;
}

double sub_24ED2E1F8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    ObjectType = swift_getObjectType();
    (*(a2 + 16))(v13, ObjectType, a2);
    if (v16 >> 60)
    {
      if (v16 >> 60 != 8)
      {
LABEL_9:
        sub_24E88D2AC(v13);
LABEL_12:
        LOBYTE(v12) = 1;
        goto LABEL_13;
      }

      v10 = v15 | v17;
      v11 = v13[3] | v13[2] | v13[1];
      if (v16 != 0x8000000000000000 || v10 | v13[0] | v14 | v11)
      {
        if (v16 == 0x8000000000000000 && v13[0] == 4)
        {
          v12 = v10 | v14 | v11;
          if (!v12)
          {
            goto LABEL_13;
          }
        }

        goto LABEL_9;
      }
    }

    else if (LOBYTE(v13[0]) != 1)
    {
      goto LABEL_12;
    }

    LOBYTE(v12) = 0;
LABEL_13:
    *(v8 + 314) = v12;
    _s12GameStoreKit44StreamlinedInAppPurchaseOfferButtonPresenterC6update13ignoringCacheySb_tF_0();
    a4();
  }

  return result;
}

BOOL sub_24ED2E338()
{
  v1 = *(v0 + 112);
  ObjectType = swift_getObjectType();
  v3 = *(v1 + 16);
  swift_unknownObjectRetain();
  v3(v21, ObjectType, v1);
  swift_unknownObjectRelease();
  if (v24 >> 60)
  {
    if (v24 >> 60 != 8 || ((v4 = v23 | v25, v5 = v21[3] | v21[2] | v21[1], v24 != 0x8000000000000000) || v4 | v21[0] | v22 | v5) && (v24 != 0x8000000000000000 || v21[0] != 4 || v4 | v22 | v5))
    {
      sub_24E88D2AC(v21);
      return 1;
    }
  }

  else if (LOBYTE(v21[0]) != 1)
  {
    return 1;
  }

  swift_beginAccess();
  v6 = *(v0 + 40);
  if (!v6)
  {
    return 0;
  }

  v7 = qword_27F22E970;
  if (!qword_27F22E970)
  {
    return 0;
  }

  v8 = v6[22];
  v9 = v6[23];
  v11 = v6[3];
  v10 = v6[4];
  swift_beginAccess();
  sub_24E615E00(v7 + 16, v17);
  v12 = v18;
  v13 = v19;
  __swift_project_boxed_opaque_existential_1(v17, v18);
  v16[0] = v11;
  v16[1] = v10;
  v14 = *(v13 + 32);

  v14(&v20, v16, v8, v9, v12, v13);

  __swift_destroy_boxed_opaque_existential_1(v17);
  return v20 < 0x40u;
}

uint64_t sub_24ED2E538@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (!result)
  {
    goto LABEL_14;
  }

  ObjectType = swift_getObjectType();
  v6 = *(a2 + 40);
  swift_unknownObjectRetain();
  v6(&v24, 0, ObjectType, a2);
  if (!sub_24ED2E338())
  {
    goto LABEL_12;
  }

  v7 = v32 | (v33 << 16);
  v8 = v7 >> 20;
  if (v7 >> 20 <= 3)
  {
    if (v7 >> 20 <= 1)
    {
LABEL_13:
      result = swift_unknownObjectRelease();
LABEL_14:
      v9 = 0;
      v10 = 0;
      v14 = 0;
      v11 = 0;
      v12 = 0;
      v16 = -258;
      goto LABEL_15;
    }

    if (v8 == 2)
    {
      sub_24E88D2AC(&v24);
      result = swift_unknownObjectRelease();
      v10 = 0;
      v14 = 0;
      v11 = 0;
      v12 = 0;
      v16 = -16384;
      v9 = 2;
      goto LABEL_15;
    }

LABEL_12:
    sub_24E88D2AC(&v24);
    goto LABEL_13;
  }

  v9 = v24;
  v10 = v26;
  v11 = v28;
  v12 = v29;
  v13 = v30;
  if (v7 >> 20 <= 5)
  {
    if (v8 != 4)
    {
      swift_unknownObjectRelease();
      v22 = v11;
      v23 = v10;
      result = sub_24E88D2AC(&v24);
      v14 = 0;
      v16 = v13 & 1 | 0x6000;
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  v14 = v27;
  if (v8 == 6)
  {
    swift_unknownObjectRelease();
    v17 = v11;
    v18 = v10;
    v19 = v14;
    result = sub_24E88D2AC(&v24);
    v16 = v13 & 1 | 0x8000;
    goto LABEL_15;
  }

  if (v8 != 7)
  {
    v20 = v30 | ((v31 | ((*&v7 & 0xFFFFFFLL) << 32)) << 8);
    v21 = v20 == 0x8000000000000000 && (v26 | v25 | v24 | v27 | v28 | v29 | v34) == 0;
    if (v21 || v24 != 1 || v26 | v25 | v27 | v28 | v29 || v20 != 0x8000000000000000 || v34)
    {
      goto LABEL_13;
    }
  }

  v9 = sub_24ED2ED44();
  v10 = v15;
  sub_24E88D2AC(&v24);
  result = swift_unknownObjectRelease();
  v14 = 0;
  v11 = 0;
  v12 = 0;
  v16 = -24576;
LABEL_15:
  *a3 = v9;
  *(a3 + 8) = v10;
  *(a3 + 16) = v14;
  *(a3 + 24) = v11;
  *(a3 + 32) = v12;
  *(a3 + 40) = v16;
  return result;
}

uint64_t StreamlinedInAppPurchaseOfferButtonPresenter.deinit()
{
  v1 = v0;
  swift_beginAccess();
  if (qword_27F22E970)
  {

    InAppPurchaseStateDataSource.removeObserver(_:)(v0);
  }

  v2 = [objc_opt_self() defaultCenter];
  [v2 removeObserver_];

  sub_24E883630(v1 + 16);

  __swift_destroy_boxed_opaque_existential_1((v1 + 48));
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_24E97D004(*(v1 + 128), *(v1 + 136));
  sub_24ED30888(*(v1 + 160), *(v1 + 168), *(v1 + 176), *(v1 + 184), *(v1 + 192), *(v1 + 200));
  sub_24ED30888(*(v1 + 208), *(v1 + 216), *(v1 + 224), *(v1 + 232), *(v1 + 240), *(v1 + 248));
  swift_unknownObjectRelease();
  sub_24ED30758(*(v1 + 272), *(v1 + 280), *(v1 + 288), *(v1 + 296), *(v1 + 304), *(v1 + 312));
  return v1;
}

uint64_t StreamlinedInAppPurchaseOfferButtonPresenter.__deallocating_deinit()
{
  StreamlinedInAppPurchaseOfferButtonPresenter.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_24ED2E8FC()
{
  result = 0;
  v2 = *(v0 + 168);
  v3 = *(v0 + 200);
  if ((~v3 & 0xFEFE) == 0 || (v3 & 0xE000) != 0x8000)
  {
    return result;
  }

  v4 = *(v0 + 160);
  v6 = *(v0 + 176);
  v5 = *(v0 + 184);
  v7 = *(v0 + 192);
  if (*&v4 >= 0.97 || (*(v0 + 312) & 0xE000) != 0xA000)
  {
    sub_24ED307F0(v4, *(v0 + 168), *(v0 + 176), *(v0 + 184), v7, v3);
    goto LABEL_10;
  }

  v8 = v3 & 0x100;
  *(v0 + 160) = 0x3FF0000000000000;
  *(v0 + 168) = 0u;
  *(v0 + 184) = 0u;
  *(v0 + 200) = v3 & 0x100 | 0x8000;
  v9 = v4;
  v10 = v7;
  v11 = v3;
  sub_24ED307F0(v4, v2, v6, v5, v7, v3);
  sub_24ED30888(v9, v2, v6, v5, v10, v11);
  v12 = objc_opt_self();
  if ([v12 disableActions])
  {
LABEL_10:

    return 0;
  }

  [v12 begin];
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v13 = *(v0 + 24);
    ObjectType = swift_getObjectType();
    v14 = *(v0 + 148);
    v28 = *(v0 + 144);
    v29 = v14;
    v15 = *(v0 + 128);
    v16 = *(v0 + 136);
    LOWORD(aBlock) = *(v0 + 120);
    v23 = v15;
    v24 = v16;
    v17 = *(v13 + 64);
    sub_24E9534EC(v15, v16);
    v17(0, 0, &v28, &aBlock, v8 != 0, ObjectType, v13, 1.0);
    swift_unknownObjectRelease();
    sub_24E97D004(v23, v24);
  }

  v18 = swift_allocObject();
  swift_weakInit();
  v19 = swift_allocObject();
  *(v19 + 16) = 0x3FD6666666666666;
  *(v19 + 24) = v18;
  v26 = sub_24ED30C4C;
  v27 = v19;
  aBlock = MEMORY[0x277D85DD0];
  v23 = 1107296256;
  v24 = sub_24EAF8248;
  v25 = &block_descriptor_70;
  v20 = _Block_copy(&aBlock);

  [v12 setCompletionBlock_];
  _Block_release(v20);
  [v12 commit];

  return 1;
}

uint64_t sub_24ED2EBD8(char a1)
{
  v2 = v1;
  if ((a1 & 1) != 0 || (result = sub_24ED2EEA0(), !v4))
  {
    v5 = *(v1 + 40);
    if (v5)
    {
      v6 = *(v5 + 72);
      if (*(v6 + 16))
      {

        v7 = sub_24E76DB58(0);
        if (v8)
        {
          v9 = *(*(v6 + 56) + 16 * v7);

          return v9;
        }
      }
    }

    v10 = *(v2 + 32);
    if (v10 && *(v10 + 24))
    {
      v11 = *(v10 + 16);

      return v11;
    }

    else
    {
      v12._object = 0x800000024FA5BAC0;
      v12._countAndFlagsBits = 0xD000000000000015;
      v13._countAndFlagsBits = 0;
      v13._object = 0xE000000000000000;
      return localizedString(_:comment:)(v12, v13)._countAndFlagsBits;
    }
  }

  return result;
}

uint64_t sub_24ED2ECB4(char a1)
{
  if ((a1 & 1) != 0 || (result = sub_24ED2EF58(), !v3))
  {
    v4 = *(v1 + 40);
    if (v4)
    {
      v5 = *(v4 + 88);
      if (*(v5 + 16))
      {

        v6 = sub_24E76DB58(0);
        if (v7)
        {
          v8 = *(*(v5 + 56) + 16 * v6);

          return v8;
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_24ED2ED44()
{
  v1 = *(v0 + 40);
  if (!v1)
  {
    goto LABEL_8;
  }

  v2 = *(v1 + 72);
  if (*(v2 + 16))
  {

    v3 = sub_24E76DB58(4);
    if (v4)
    {
      v5 = *(*(v2 + 56) + 16 * v3);

      return v5;
    }
  }

  if (*(v1 + 16) > 2u)
  {

    goto LABEL_10;
  }

  v7 = sub_24F92CE08();

  if (v7)
  {
LABEL_10:
    v9 = 0xD00000000000001DLL;
    v8 = 0x800000024FA5BA20;
    goto LABEL_11;
  }

LABEL_8:
  v8 = 0x800000024FA5BA00;
  v9 = 0xD000000000000016;
LABEL_11:
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  return localizedString(_:comment:)(*&v9, v10)._countAndFlagsBits;
}

uint64_t sub_24ED2EEA0()
{
  v1 = *(v0 + 40);
  if (!v1 || *(v1 + 125) != 1)
  {
    return 0;
  }

  v2 = *(v0 + 314);
  v3 = *(v1 + 72);
  v4 = *(v3 + 16);
  if (v2 != 1)
  {
    if (!v4)
    {
      return 0;
    }

    v5 = sub_24E76DB58(3);
    if ((v7 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_9;
  }

  if (v4)
  {

    v5 = sub_24E76DB58(2);
    if ((v6 & 1) == 0)
    {
LABEL_6:

      return 0;
    }

LABEL_9:
    v8 = *(*(v3 + 56) + 16 * v5);

    return v8;
  }

  return 0;
}

uint64_t sub_24ED2EF58()
{
  v1 = *(v0 + 40);
  if (!v1 || *(v1 + 125) != 1)
  {
    return 0;
  }

  v2 = *(v0 + 314);
  v3 = *(v1 + 88);
  v4 = *(v3 + 16);
  if (v2 != 1)
  {
    if (!v4)
    {
      return 0;
    }

    v5 = sub_24E76DB58(3);
    if ((v7 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_9;
  }

  if (v4)
  {

    v5 = sub_24E76DB58(2);
    if ((v6 & 1) == 0)
    {
LABEL_6:

      return 0;
    }

LABEL_9:
    v8 = *(*(v3 + 56) + 16 * v5);

    return v8;
  }

  return 0;
}

void sub_24ED2F010()
{
  v1 = v0[4];
  if (v1 && *(v0 + 120) != 5 && ((*(v0 + 156) >> 13) | 4) == 5)
  {
    v2 = *v0;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v3 = v0[3];
      ObjectType = swift_getObjectType();
      v7[3] = v2;
      v7[0] = v0;
      v5 = *(v3 + 8);
      v6 = *(v5 + 8);

      v6(v1, v7, ObjectType, v5);

      swift_unknownObjectRelease();
      sub_24E601704(v7, &qword_27F2129B0, &unk_24F945320);
    }
  }
}

uint64_t sub_24ED2F1C8(uint64_t a1, double a2)
{
  v21 = a1;
  v2 = sub_24F927D88();
  v24 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24F927DC8();
  v22 = *(v5 - 8);
  v23 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F927DE8();
  v20 = v8;
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v19 - v13;
  sub_24E69A5C4(0, &qword_27F222300, 0x277D85C78);
  v15 = sub_24F92BEF8();
  sub_24F927DD8();
  sub_24F927E58();
  v16 = *(v9 + 8);
  v16(v11, v8);
  aBlock[4] = sub_24ED30C70;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24EAF8248;
  aBlock[3] = &block_descriptor_25_0;
  v17 = _Block_copy(aBlock);

  sub_24F927DA8();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_24E858250();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310, &unk_24F951080);
  sub_24E8582A8();
  sub_24F92C6A8();
  MEMORY[0x253051820](v14, v7, v4, v17);
  _Block_release(v17);

  (*(v24 + 8))(v4, v2);
  (*(v22 + 8))(v7, v23);
  return (v16)(v14, v20);
}

double sub_24ED2F538(uint64_t a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    _s12GameStoreKit44StreamlinedInAppPurchaseOfferButtonPresenterC6update13ignoringCacheySb_tF_0();
  }

  return result;
}

uint64_t sub_24ED2F5D8(uint64_t a1, __n128 a2, uint64_t a3)
{
  sub_24ED30548(a1, a3);

  return swift_unknownObjectRelease();
}

void (*sub_24ED2F614(uint64_t *a1))(void **a1, char a2, __n128 a3)
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
  v5 = *v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v7;
  return sub_24ED2D240;
}

uint64_t sub_24ED2F6DC(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2)
  {
    if (!v3)
    {
      goto LABEL_20;
    }

    v4 = a1;
    v5 = a2;
    sub_24E69A5C4(0, &qword_27F22E980, 0x277CCAC48);
    v6 = v3;
    v7 = v2;
    v8 = sub_24F92C408();

    a1 = v4;
    a2 = v5;
    if ((v8 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  else if (v3)
  {
    goto LABEL_20;
  }

  v10 = *(a1 + 16);
  v11 = *(a2 + 16);
  if (v10)
  {
    if (!v11)
    {
      goto LABEL_20;
    }

    v12 = a1;
    v13 = a2;
    sub_24E69A5C4(0, &qword_27F22E980, 0x277CCAC48);
    v14 = v11;
    v15 = v10;
    v16 = sub_24F92C408();

    a1 = v12;
    a2 = v13;
    if ((v16 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  else if (v11)
  {
    goto LABEL_20;
  }

  v17 = *(a1 + 24);
  v18 = *(a2 + 24);
  if (!v17)
  {
    if (!v18)
    {
      goto LABEL_18;
    }

LABEL_20:
    v24 = 0;
    return v24 & 1;
  }

  if (!v18)
  {
    goto LABEL_20;
  }

  v19 = a1;
  v20 = a2;
  sub_24E69A5C4(0, &qword_27F22E980, 0x277CCAC48);
  v21 = v18;
  v22 = v17;
  v23 = sub_24F92C408();

  a1 = v19;
  a2 = v20;
  if ((v23 & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_18:
  if (*(a1 + 32) != *(a2 + 32))
  {
    goto LABEL_20;
  }

  v24 = *(a1 + 40) ^ *(a2 + 40) ^ 1;
  return v24 & 1;
}

void _s12GameStoreKit44StreamlinedInAppPurchaseOfferButtonPresenterC6update13ignoringCacheySb_tF_0()
{
  if (sub_24ED2E8FC())
  {
    return;
  }

  v1 = *(v0 + 272);
  v2 = *(v0 + 312);
  v3 = v2 >> 13;
  if (v2 >> 13 <= 2)
  {
    if (!v3)
    {
      v34 = 0xD00000000000001CLL;
      if (v1)
      {
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v35 = *(v0 + 24);
          ObjectType = swift_getObjectType();
          v37._object = 0x800000024FA5BA80;
          v37._countAndFlagsBits = 0xD00000000000001CLL;
          v38._countAndFlagsBits = 0;
          v38._object = 0xE000000000000000;
          v39 = localizedString(_:comment:)(v37, v38);
          if (qword_27F210000 != -1)
          {
            swift_once();
          }

          LOWORD(v124) = word_27F222780;
          v125 = qword_27F222788;
          v126 = qword_27F222790;
          v40 = *(v35 + 32);
          sub_24E9534EC(qword_27F222788, qword_27F222790);
          v40(v39._countAndFlagsBits, v39._object, 0, 0, &v124, ObjectType, v35);
          swift_unknownObjectRelease();

          sub_24E97D004(v125, v126);
        }

        if (!swift_unknownObjectWeakLoadStrong())
        {
          goto LABEL_73;
        }

        v41 = "OfferButton.Title.Purchased";
      }

      else
      {
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v55 = *(v0 + 24);
          v56 = swift_getObjectType();
          v57._countAndFlagsBits = 0xD00000000000001BLL;
          v57._object = 0x800000024FA5BA60;
          v58._countAndFlagsBits = 0;
          v58._object = 0xE000000000000000;
          v59 = localizedString(_:comment:)(v57, v58);
          if (qword_27F210000 != -1)
          {
            swift_once();
          }

          LOWORD(v124) = word_27F222780;
          v125 = qword_27F222788;
          v126 = qword_27F222790;
          v60 = *(v55 + 32);
          sub_24E9534EC(qword_27F222788, qword_27F222790);
          v60(v59._countAndFlagsBits, v59._object, 0, 0, &v124, v56, v55);
          swift_unknownObjectRelease();

          sub_24E97D004(v125, v126);
        }

        if (!swift_unknownObjectWeakLoadStrong())
        {
          goto LABEL_73;
        }

        v41 = "OfferButton.Hint.Downloading";
        v34 = 0xD00000000000001BLL;
      }

      v61 = *(v0 + 24);
      v62 = swift_getObjectType();
      v63._object = (v41 | 0x8000000000000000);
      v63._countAndFlagsBits = v34;
      v64._countAndFlagsBits = 0;
      v64._object = 0xE000000000000000;
      v65 = localizedString(_:comment:)(v63, v64);
      (*(v61 + 128))(v65._countAndFlagsBits, v65._object, v62, v61);
      goto LABEL_50;
    }

    if (v3 != 1)
    {
      swift_beginAccess();
      if (!swift_unknownObjectWeakLoadStrong())
      {
        return;
      }

      v42 = *(v0 + 24);
      v43 = swift_getObjectType();
      v44 = *(v0 + 148);
      v122 = *(v0 + 144);
      v123 = v44;
      v45 = *(v0 + 128);
      v46 = *(v0 + 136);
      LOWORD(v124) = *(v0 + 120);
      v125 = v45;
      v126 = v46;
      v47 = *(v42 + 56);
      sub_24E9534EC(v45, v46);
      v48 = v1 & 1;
      goto LABEL_26;
    }

    v15 = sub_24ED2EBD8(v1 & 1);
    v17 = v16;
    v18 = sub_24ED2ECB4(v1 & 1);
    if (v19)
    {
      v20 = v18;
      v21 = v19;
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v22 = *(v0 + 24);
        v23 = swift_getObjectType();
        v24 = *(v0 + 154);
        v122 = *(v0 + 150);
        v123 = v24;
        v25 = *(v0 + 128);
        v26 = *(v0 + 136);
        LOWORD(v124) = *(v0 + 120);
        v125 = v25;
        v126 = v26;
        v27 = *(v22 + 24);
        sub_24E9534EC(v25, v26);
        v27(v15, v17, v20, v21, &v122, 0, 0, &v124, v23, v22);
        swift_unknownObjectRelease();
        sub_24E97D004(v125, v126);
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        v28 = *(v0 + 24);
        v29 = swift_getObjectType();
        v124 = v15;
        v125 = v17;
        MEMORY[0x253050C20](8236, 0xE200000000000000);
        MEMORY[0x253050C20](v20, v21);

        (*(v28 + 128))(v124, v125, v29, v28);
LABEL_50:
        swift_unknownObjectRelease();
LABEL_73:
        swift_beginAccess();
        if (!swift_unknownObjectWeakLoadStrong())
        {
          return;
        }

        v108 = *(v0 + 24);
        if ((*(v0 + 312) & 0xE000) == 0x2000)
        {
          __swift_project_boxed_opaque_existential_1((v0 + 48), *(v0 + 72));
          LOBYTE(v122) = 0;
          v109 = RestrictionsProtocol.doesAllow(_:properties:)(&v122, *(v0 + 40));
        }

        else
        {
          v109 = 1;
        }

        v110 = swift_getObjectType();
        (*(v108 + 16))(v109, v110, v108);
        goto LABEL_78;
      }
    }

    else
    {
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v69 = *(v0 + 24);
        v70 = swift_getObjectType();
        v71 = *(v0 + 128);
        v72 = *(v0 + 136);
        LOWORD(v124) = *(v0 + 120);
        v125 = v71;
        v126 = v72;
        v73 = *(v69 + 32);
        sub_24E9534EC(v71, v72);
        v73(v15, v17, 0, 0, &v124, v70, v69);
        swift_unknownObjectRelease();
        sub_24E97D004(v125, v126);
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        v74 = *(v0 + 24);
        v75 = swift_getObjectType();
        (*(v74 + 128))(v15, v17, v75, v74);
        goto LABEL_50;
      }
    }

    goto LABEL_73;
  }

  v5 = *(v0 + 280);
  v4 = *(v0 + 288);
  v6 = *(v0 + 296);
  v7 = *(v0 + 304);
  if (v2 >> 13 > 4)
  {
    if (v3 == 5)
    {
      v118 = *(v0 + 288);
      v121 = *(v0 + 296);
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v30 = *(v0 + 24);
        v31 = swift_getObjectType();
        v33 = *(v0 + 128);
        v32 = *(v0 + 136);
        LOWORD(v124) = *(v0 + 120);
        v125 = v33;
        v126 = v32;
        v115 = *(v30 + 32);
        v117 = v31;
        sub_24ED307F0(v1, v5, v118, v121, v7, v2);
        sub_24E9534EC(v33, v32);
        v115(v1, v5, 0, 0, &v124, v117, v30);
        swift_unknownObjectRelease();
        sub_24E97D004(v125, v126);
      }

      else
      {
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        v86 = *(v0 + 24);
        v87 = swift_getObjectType();
        (*(v86 + 128))(v1, v5, v87, v86);
        swift_unknownObjectRelease();
      }

      else
      {
        sub_24ED30758(v1, v5, v118, v121, v7, v2);
      }

      if (!swift_unknownObjectWeakLoadStrong())
      {
        return;
      }

      v98 = *(v0 + 24);
      v99 = swift_getObjectType();
      (*(v98 + 144))(1852141679, 0xE400000000000000, v99, v98);
LABEL_78:
      swift_unknownObjectRelease();
      return;
    }

    if (!(v4 | v5 | v1 | v6 | v7) && v2 == 49152)
    {
      swift_beginAccess();
      if (!swift_unknownObjectWeakLoadStrong())
      {
        return;
      }

      v53 = *(v0 + 24);
      v54 = swift_getObjectType();
      (*(v53 + 16))(0, v54, v53);
      goto LABEL_78;
    }

    if (v2 != 49152 || v1 != 1 || v4 | v5 | v6 | v7)
    {
      swift_beginAccess();
      if (!swift_unknownObjectWeakLoadStrong())
      {
        return;
      }

      v100 = *(v0 + 24);
      v101 = swift_getObjectType();
      v102._countAndFlagsBits = 0xD000000000000018;
      v102._object = 0x800000024FA5BAA0;
      v103._countAndFlagsBits = 0;
      v103._object = 0xE000000000000000;
      v104 = localizedString(_:comment:)(v102, v103);
      v105 = *(v0 + 128);
      v106 = *(v0 + 136);
      LOWORD(v124) = *(v0 + 120);
      v125 = v105;
      v126 = v106;
      v107 = *(v100 + 32);
      sub_24E9534EC(v105, v106);
      v107(v104._countAndFlagsBits, v104._object, 0, 0, &v124, v101, v100);
      swift_unknownObjectRelease();

LABEL_27:
      sub_24E97D004(v125, v126);
      return;
    }

    swift_beginAccess();
    if (!swift_unknownObjectWeakLoadStrong())
    {
      return;
    }

    v42 = *(v0 + 24);
    v43 = swift_getObjectType();
    v66 = *(v0 + 148);
    v122 = *(v0 + 144);
    v123 = v66;
    v67 = *(v0 + 128);
    v68 = *(v0 + 136);
    LOWORD(v124) = *(v0 + 120);
    v125 = v67;
    v126 = v68;
    v47 = *(v42 + 56);
    sub_24E9534EC(v67, v68);
    v48 = 0;
LABEL_26:
    v47(0, 0, &v122, &v124, v48, v43, v42);
    swift_unknownObjectRelease();
    goto LABEL_27;
  }

  v120 = *(v0 + 280);
  if (v3 == 3)
  {
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v8 = *(v0 + 24);
      v114 = swift_getObjectType();
      v9 = *(v0 + 148);
      v122 = *(v0 + 144);
      v123 = v9;
      v10 = v4;
      v12 = *(v0 + 128);
      v11 = *(v0 + 136);
      LOWORD(v124) = *(v0 + 120);
      v125 = v12;
      v126 = v11;
      v112 = *(v8 + 64);
      v13 = v5;
      v14 = v10;
      sub_24ED307F0(v1, v13, v10, v6, v7, v2);
      sub_24E9534EC(v12, v11);
      v112(0, 0, &v122, &v124, (v2 >> 8) & 1, v114, v8, *&v1);
      swift_unknownObjectRelease();
      sub_24E97D004(v125, v126);
    }

    else
    {
      v76 = v6;
      v77 = v5;
      v14 = v4;
      v78 = v4;
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      v79 = *(v0 + 24);
      v80 = swift_getObjectType();
      v81._object = 0x800000024FA5BA40;
      v81._countAndFlagsBits = 0xD00000000000001CLL;
      v82._countAndFlagsBits = 0;
      v82._object = 0xE000000000000000;
      v83 = localizedString(_:comment:)(v81, v82);
      (*(v79 + 128))(v83._countAndFlagsBits, v83._object, v80, v79);
      swift_unknownObjectRelease();
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      v84 = *(v0 + 24);
      v85 = swift_getObjectType();
      (*(v84 + 144))(0x64616F6C6E776F64, 0xEB00000000676E69, v85, v84);
      swift_unknownObjectRelease();
    }
  }

  else
  {
    swift_beginAccess();
    v119 = v4;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v111 = v7;
      v49 = *(v0 + 24);
      v116 = swift_getObjectType();
      v50 = *(v0 + 148);
      v122 = *(v0 + 144);
      v123 = v50;
      v51 = *(v0 + 128);
      v52 = *(v0 + 136);
      LOWORD(v124) = *(v0 + 120);
      v125 = v51;
      v126 = v52;
      v113 = *(v49 + 64);
      sub_24ED307F0(v1, v5, v4, v6, v111, v2);
      sub_24E9534EC(v51, v52);
      v113(0, 0, &v122, &v124, (v2 >> 8) & 1, v116, v49, *&v1);
      swift_unknownObjectRelease();
      sub_24E97D004(v125, v126);
    }

    else
    {
      v88 = v6;
      v89 = v5;
      v90 = v4;
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      v91 = *(v0 + 24);
      v92 = swift_getObjectType();
      v93._object = 0x800000024FA5BA40;
      v93._countAndFlagsBits = 0xD00000000000001CLL;
      v94._countAndFlagsBits = 0;
      v94._object = 0xE000000000000000;
      v95 = localizedString(_:comment:)(v93, v94);
      (*(v91 + 128))(v95._countAndFlagsBits, v95._object, v92, v91);
      swift_unknownObjectRelease();
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      v96 = *(v0 + 24);
      v97 = swift_getObjectType();
      (*(v96 + 144))(0x696C6C6174736E69, 0xEA0000000000676ELL, v97, v96);
      swift_unknownObjectRelease();
    }
  }
}

void sub_24ED30548(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v2 + 24);
    ObjectType = swift_getObjectType();
    (*(v4 + 112))(v2, ObjectType, v4);
    swift_unknownObjectRelease();
  }

  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v2 + 24);
    v7 = swift_getObjectType();
    (*(v6 + 104))(v2, sel_offerButtonTapped, v7, v6);
    swift_unknownObjectRelease();
  }

  _s12GameStoreKit44StreamlinedInAppPurchaseOfferButtonPresenterC6update13ignoringCacheySb_tF_0();
}

uint64_t sub_24ED3063C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_24ED30674()
{

  return swift_deallocObject();
}

uint64_t sub_24ED306D4()
{

  return swift_deallocObject();
}

uint64_t sub_24ED30720()
{

  return swift_deallocObject();
}

void sub_24ED30758(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, unsigned __int16 a6)
{
  v6 = a6 >> 13;
  if (v6 == 5)
  {
  }

  else if (v6 == 4 || v6 == 3)
  {
  }
}

double sub_24ED307F0(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, unsigned __int16 a6)
{
  v7 = a6 >> 13;
  if (v7 == 5)
  {
  }

  else if (v7 == 4 || v7 == 3)
  {
    v8 = a4;
    v9 = a2;

    v10 = a3;
  }

  return result;
}

void sub_24ED30888(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, int a6)
{
  if ((~a6 & 0xFEFE) != 0)
  {
    sub_24ED30758(a1, a2, a3, a4, a5, a6);
  }
}

uint64_t sub_24ED3089C@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = qword_27F22E970;
}

uint64_t sub_24ED308F0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 24);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t get_enum_tag_for_layout_string_12GameStoreKit24StreamlinedPurchaseStateO(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 >> 14 <= 2)
  {
    return v1 >> 13;
  }

  else
  {
    return (*a1 + 6);
  }
}

__n128 __swift_memcpy42_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 26) = *(a2 + 26);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_24ED309C8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3FFA && *(a1 + 42))
  {
    return (*a1 + 16378);
  }

  v3 = ((*(a1 + 40) >> 13) | (8 * ((*(a1 + 40) >> 2) & 0x780 | (*(a1 + 40) >> 1)))) ^ 0x3FFF;
  if (v3 >= 0x3FF9)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_24ED30A30(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3FF9)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 16378;
    if (a3 >= 0x3FFA)
    {
      *(result + 42) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FFA)
    {
      *(result + 42) = 0;
    }

    if (a2)
    {
      v3 = ((-a2 >> 3) & 0x7FF) - (a2 << 11);
      *(result + 32) = 0;
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 40) = (4 * v3) & 0xFE00 | (2 * (v3 & 0x7F));
    }
  }

  return result;
}

uint64_t sub_24ED30AC0(uint64_t result, unsigned int a2)
{
  if (a2 < 6)
  {
    *(result + 40) = *(result + 40) & 0x101 | (a2 << 13);
  }

  else
  {
    *result = a2 - 6;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = -16384;
  }

  return result;
}

uint64_t sub_24ED30B08()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = *(v0 + 24);
    if ((*(v0 + 312) & 0xE000) == 0x2000)
    {
      __swift_project_boxed_opaque_existential_1((v0 + 48), *(v0 + 72));
      v5 = 0;
      v3 = RestrictionsProtocol.doesAllow(_:properties:)(&v5, *(v0 + 40));
    }

    else
    {
      v3 = 1;
    }

    ObjectType = swift_getObjectType();
    (*(v2 + 16))(v3, ObjectType, v2);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t block_copy_helper_70(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24ED30CAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0, &unk_24F943470);
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

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_24ED30D98(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0, &unk_24F943470);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t type metadata accessor for ImageLockupView(uint64_t a1)
{
  result = qword_27F22E988;
  if (!qword_27F22E988)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24ED30EAC(uint64_t a1)
{
  sub_24E6CAF48(319);
  if (v1 <= 0x3F)
  {
    sub_24ED30F30();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24ED30F30()
{
  if (!qword_27F218018)
  {
    v0 = sub_24F926F68();
    if (!v1)
    {
      atomic_store(v0, &qword_27F218018);
    }
  }
}

uint64_t sub_24ED31000@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a1;
  v4 = sub_24F923E98();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_24F922348();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v25 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v25 - v16;
  v26 = v2;
  sub_24F769788(v7);
  _s12GameStoreKit15PageEnvironmentV4isAXSbvg_0();
  v18 = v4;
  v19 = v25;
  (*(v5 + 8))(v7, v18);
  if (*(v19 + 24))
  {
    _sSo6CGSizeV12GameStoreKitE11aspectRatio5JetUI06AspectF0Vvg_0();
    v20 = *(v9 + 32);
    v20(v14, v11, v8);
  }

  else
  {
    _sSo6CGSizeV12GameStoreKitE11aspectRatio5JetUI06AspectF0Vvg_0();
    v20 = *(v9 + 32);
  }

  v20(v17, v14, v8);
  sub_24F9222E8();
  v22 = v21;
  (*(v9 + 8))(v17, v8);
  *a2 = sub_24F924C98();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E9A8, &qword_24F99A630);
  return sub_24ED31290(v19, v26, (a2 + *(v23 + 44)), v22);
}

uint64_t sub_24ED31290@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>, double a4@<D0>)
{
  v50 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E9B0, &qword_24F99A638);
  MEMORY[0x28223BE20](v7);
  v55 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = (&v48 - v10);
  if (*(a1 + 40) != 1)
  {
    v52 = 0;
    v53 = 0;
    v51 = 0;
    v18 = 0;
    v54 = 0;
    v17 = 1;
    goto LABEL_23;
  }

  v48 = a2;
  v49 = v7;
  v12 = *(a1 + 16);
  v13 = v12[3];
  v14 = v12[4];
  if (!v14)
  {
    goto LABEL_9;
  }

  v15 = v13 & 0xFFFFFFFFFFFFLL;
  if ((v14 & 0x2000000000000000) != 0)
  {
    v15 = HIBYTE(v14) & 0xF;
  }

  if (v15)
  {

    v16 = v13;
    v17 = v14;
    v18 = v12[6];
    if (!v18)
    {
LABEL_7:
      v19 = 0;
      goto LABEL_15;
    }
  }

  else
  {
LABEL_9:
    v16 = 0;
    v17 = 0;
    v18 = v12[6];
    if (!v18)
    {
      goto LABEL_7;
    }
  }

  v19 = v12[5];
  v20 = HIBYTE(v18) & 0xF;
  if ((v18 & 0x2000000000000000) == 0)
  {
    v20 = v19 & 0xFFFFFFFFFFFFLL;
  }

  if (v20)
  {

    v21 = 1;
    goto LABEL_16;
  }

  v19 = 0;
  v18 = 0;
LABEL_15:
  v21 = 2;
LABEL_16:
  v52 = v19;
  v53 = v16;
  v51 = v21;
  if (!v14)
  {
    goto LABEL_21;
  }

  v22 = v13 & 0xFFFFFFFFFFFFLL;
  if ((v14 & 0x2000000000000000) != 0)
  {
    v22 = HIBYTE(v14) & 0xF;
  }

  if (v22)
  {
    v23 = 1;
  }

  else
  {
LABEL_21:
    v23 = 2;
  }

  v54 = v23;
  a2 = v48;
  v7 = v49;
LABEL_23:
  *v11 = sub_24F927608();
  v11[1] = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E9B8, &qword_24F99A640);
  sub_24ED31658(a1, a2, v11 + *(v25 + 44), a4);
  v26 = v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E9C0, &qword_24F99A648) + 36);
  v27 = *(sub_24F924258() + 20);
  v28 = *MEMORY[0x277CE0118];
  v29 = sub_24F924B38();
  v30 = *(*(v29 - 8) + 104);
  v30(&v26[v27], v28, v29);
  __asm { FMOV            V0.2D, #28.0 }

  *v26 = _Q0;
  *&v26[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2164C8, &qword_24F9423C0) + 36)] = 256;
  *(v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E9C8, &qword_24F99A650) + 36)) = 0x403C000000000000;
  v36 = v11 + *(v7 + 36);
  v37 = type metadata accessor for RoundedRectWithOutsetsModifer(0);
  v30(&v36[v37[6]], v28, v29);
  *v36 = 0u;
  *(v36 + 1) = 0u;
  *(v36 + 4) = 0x403C000000000000;
  v36[v37[7]] = 1;
  v38 = &v36[v37[8]];
  *v38 = 0;
  v38[8] = 1;
  v39 = v55;
  sub_24E60169C(v11, v55, &qword_27F22E9B0, &qword_24F99A638);
  v41 = v52;
  v40 = v53;
  v42 = v11;
  v43 = v50;
  v44 = v51;
  *v50 = v53;
  v43[1] = v17;
  v43[2] = v44;
  v43[3] = v41;
  v45 = v54;
  v43[4] = v18;
  v43[5] = v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E9D0, &qword_24F99A658);
  sub_24E60169C(v39, v43 + *(v46 + 48), &qword_27F22E9B0, &qword_24F99A638);
  sub_24ED33418(v40, v17);
  sub_24E601704(v42, &qword_27F22E9B0, &qword_24F99A638);
  sub_24E601704(v39, &qword_27F22E9B0, &qword_24F99A638);
  return sub_24ED33460(v40, v17);
}

uint64_t sub_24ED31658@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v169 = a2;
  v164 = a1;
  v158 = a3;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CCC8, &qword_24F957520);
  MEMORY[0x28223BE20](v139);
  v152 = &v134 - v6;
  v150 = sub_24F9234D8();
  v148 = *(v150 - 8);
  MEMORY[0x28223BE20](v150);
  v147 = &v134 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = type metadata accessor for LockupContentView(0);
  MEMORY[0x28223BE20](v141);
  v142 = (&v134 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E9D8, &qword_24F9A85B0);
  MEMORY[0x28223BE20](v143);
  v145 = &v134 - v9;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E9E0, &qword_24F99A660);
  MEMORY[0x28223BE20](v144);
  v146 = &v134 - v10;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E9E8, &qword_24F99A668);
  MEMORY[0x28223BE20](v149);
  v151 = &v134 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E9F0, &qword_24F99A670);
  v137 = *(v12 - 8);
  v138 = v12;
  MEMORY[0x28223BE20](v12);
  v136 = &v134 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E9F8, &qword_24F99A678);
  v155 = *(v14 - 8);
  v156 = v14;
  MEMORY[0x28223BE20](v14);
  v135 = &v134 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v134 = &v134 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EA00, &qword_24F99A680);
  MEMORY[0x28223BE20](v18 - 8);
  v157 = &v134 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v154 = &v134 - v21;
  v22 = type metadata accessor for ImageLockupView(0);
  v23 = *(v22 - 8);
  v160 = v22 - 8;
  v166 = v23;
  v167 = *(v23 + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v168 = &v134 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for SwiftUIArtworkView(0);
  v26 = (v25 - 8);
  MEMORY[0x28223BE20](v25);
  v28 = &v134 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EA08, &qword_24F99A688);
  v30 = v29 - 8;
  MEMORY[0x28223BE20](v29);
  v32 = &v134 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EA10, &qword_24F99A690);
  v34 = v33 - 8;
  MEMORY[0x28223BE20](v33);
  v159 = &v134 - v35;
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EA18, &qword_24F99A698) - 8;
  MEMORY[0x28223BE20](v162);
  v161 = &v134 - v36;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EA20, &qword_24F99A6A0) - 8;
  MEMORY[0x28223BE20](v165);
  v153 = &v134 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v163 = &v134 - v39;
  MEMORY[0x28223BE20](v40);
  v170 = &v134 - v41;
  v42 = *(a1 + 16);
  v43 = *(v42 + 16);
  v44 = v26[8];
  v45 = *MEMORY[0x277CE1010];
  v46 = sub_24F926E68();
  (*(*(v46 - 8) + 104))(&v28[v44], v45, v46);
  *(v28 + 1) = 0;
  *(v28 + 2) = 0;
  *v28 = v43;
  v47 = 1;
  v28[24] = 1;
  v48 = &v28[v26[9]];
  *v48 = 0;
  *(v48 + 1) = 0;
  v48[16] = 1;
  v28[v26[10]] = 2;
  v49 = v169;
  v28[v26[11]] = 0;

  sub_24F927618();
  sub_24F9242E8();
  sub_24ED33598(v28, v32, type metadata accessor for SwiftUIArtworkView);
  v50 = &v32[*(v30 + 44)];
  v51 = v174[12];
  *(v50 + 4) = v174[11];
  *(v50 + 5) = v51;
  *(v50 + 6) = v174[13];
  v52 = v174[8];
  *v50 = v174[7];
  *(v50 + 1) = v52;
  v53 = v174[10];
  *(v50 + 2) = v174[9];
  *(v50 + 3) = v53;
  v54 = v159;
  sub_24E6009C8(v32, v159, &qword_27F22EA08, &qword_24F99A688);
  v55 = v54 + *(v34 + 44);
  *v55 = a4;
  *(v55 + 8) = 256;
  v140 = v42;
  v56 = *(v42 + 64);
  v57 = v160;
  v58 = (v49 + *(v160 + 28));
  v59 = *v58;
  v60 = v58[1];
  *&v174[0] = v59;
  *(&v174[0] + 1) = v60;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216550, &qword_24F9424D0);
  sub_24F926F38();
  v61 = *v172;
  v62 = (v49 + *(v57 + 32));
  v63 = *v62;
  v64 = v62[1];
  *&v174[0] = v63;
  *(&v174[0] + 1) = v64;
  sub_24F926F38();
  sub_24EEF3C58(v56, v172, v61, *v172);
  v171 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B9C0, &qword_24F95B820);
  sub_24F926F28();
  v65 = v174[0];
  *(&v174[3] + 6) = v172[3];
  *(&v174[4] + 6) = v172[4];
  *(&v174[5] + 6) = v173[0];
  *(&v174[5] + 15) = *(v173 + 9);
  *(v174 + 6) = v172[0];
  *(&v174[1] + 6) = v172[1];
  *(&v174[2] + 6) = v172[2];
  v66 = v161;
  sub_24E6009C8(v54, v161, &qword_27F22EA10, &qword_24F99A690);
  v67 = v66 + *(v162 + 44);
  v68 = v174[2];
  *(v67 + 50) = v174[3];
  v69 = v174[5];
  *(v67 + 66) = v174[4];
  *(v67 + 82) = v69;
  *(v67 + 97) = *(&v174[5] + 15);
  v70 = v174[1];
  *(v67 + 2) = v174[0];
  *(v67 + 18) = v70;
  *v67 = 257;
  *(v67 + 34) = v68;
  *(v67 + 120) = v65;
  v71 = v168;
  sub_24ED334A8(v49, v168);
  v72 = *(v166 + 80);
  v73 = swift_allocObject();
  sub_24ED33598(v71, v73 + ((v72 + 16) & ~v72), type metadata accessor for ImageLockupView);
  v74 = v163;
  sub_24E6009C8(v66, v163, &qword_27F22EA18, &qword_24F99A698);
  v75 = (v74 + *(v165 + 44));
  *v75 = sub_24E8D4880;
  v75[1] = 0;
  v75[2] = sub_24ED33510;
  v75[3] = v73;
  sub_24E6009C8(v74, v170, &qword_27F22EA20, &qword_24F99A6A0);
  v76 = *(v164 + 32);
  if (!v76)
  {
    v123 = v156;
    v128 = v154;
    goto LABEL_11;
  }

  v165 = v72;
  v166 = (v72 + 16) & ~v72;
  v171 = 0x4044000000000000;
  sub_24E66ED98();
  swift_retain_n();
  v77 = v142;
  sub_24F9237C8();
  v171 = 0x404B000000000000;
  sub_24F9237C8();
  v171 = 0x4051800000000000;
  sub_24F9237C8();
  v171 = 0x4055800000000000;
  sub_24F9237C8();
  type metadata accessor for LockupViewModel(0);
  sub_24ED33808(&qword_27F2282E0, type metadata accessor for LockupViewModel, &unk_24F997C58);
  v164 = v76;
  *v77 = sub_24F923C28();
  v77[1] = v78;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217E08, &qword_24F9476F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A400;
  v80 = sub_24F9257F8();
  *(inited + 32) = v80;
  v81 = sub_24F925828();
  *(inited + 33) = v81;
  v82 = sub_24F925848();
  sub_24F925848();
  if (sub_24F925848() != v80)
  {
    v82 = sub_24F925848();
  }

  sub_24F925848();
  v83 = sub_24F925848();
  v84 = v149;
  if (v83 != v81)
  {
    v82 = sub_24F925848();
  }

  v85 = v151;
  v86 = v152;
  sub_24F923318();
  v88 = v87;
  v90 = v89;
  v92 = v91;
  v94 = v93;
  v95 = v145;
  sub_24ED33598(v77, v145, type metadata accessor for LockupContentView);
  v96 = v95 + *(v143 + 36);
  *v96 = v82;
  *(v96 + 8) = v88;
  *(v96 + 16) = v90;
  *(v96 + 24) = v92;
  *(v96 + 32) = v94;
  *(v96 + 40) = 0;
  v97 = sub_24F925818();
  sub_24F923318();
  v99 = v98;
  v101 = v100;
  v103 = v102;
  v105 = v104;
  v106 = v146;
  sub_24E6009C8(v95, v146, &qword_27F22E9D8, &qword_24F9A85B0);
  v107 = v106 + *(v144 + 36);
  *v107 = v97;
  *(v107 + 8) = v99;
  *(v107 + 16) = v101;
  *(v107 + 24) = v103;
  *(v107 + 32) = v105;
  *(v107 + 40) = 0;
  v108 = v147;
  v109 = v148;
  v110 = MEMORY[0x277CDF3C0];
  if (!*(v140 + 64))
  {
    v110 = MEMORY[0x277CDF3D0];
  }

  v111 = v150;
  (*(v148 + 104))(v147, *v110, v150);
  KeyPath = swift_getKeyPath();
  v113 = (v85 + *(v84 + 36));
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212858, &qword_24F950980);
  (*(v109 + 32))(v113 + *(v114 + 28), v108, v111);
  *v113 = KeyPath;
  sub_24E6009C8(v106, v85, &qword_27F22E9E0, &qword_24F99A660);
  v115 = *MEMORY[0x277CDF998];
  v116 = sub_24F923E98();
  (*(*(v116 - 8) + 104))(v86, v115, v116);
  sub_24ED33808(&qword_27F22DF90, MEMORY[0x277CDFA28], MEMORY[0x277CDFA48]);
  result = sub_24F92AFF8();
  if (result)
  {
    sub_24ED33608();
    sub_24E602068(&unk_27F22DFA0, &qword_27F21CCC8, &qword_24F957520, MEMORY[0x277D84470]);
    v118 = v136;
    sub_24F9263F8();

    sub_24E601704(v86, &qword_27F21CCC8, &qword_24F957520);
    sub_24E601704(v85, &qword_27F22E9E8, &qword_24F99A668);
    v119 = v168;
    sub_24ED334A8(v169, v168);
    v120 = v166;
    v121 = swift_allocObject();
    sub_24ED33598(v119, v121 + v120, type metadata accessor for ImageLockupView);
    v122 = v135;
    (*(v137 + 32))(v135, v118, v138);
    v123 = v156;
    v124 = &v122[*(v156 + 36)];
    *v124 = sub_24E8D4880;
    *(v124 + 1) = 0;
    *(v124 + 2) = sub_24ED33984;
    *(v124 + 3) = v121;
    v125 = v122;
    v126 = v134;
    sub_24E6009C8(v125, v134, &qword_27F22E9F8, &qword_24F99A678);
    v127 = v126;
    v128 = v154;
    sub_24E6009C8(v127, v154, &qword_27F22E9F8, &qword_24F99A678);
    v47 = 0;
LABEL_11:
    (*(v155 + 56))(v128, v47, 1, v123);
    v129 = v170;
    v130 = v153;
    sub_24ED33528(v170, v153);
    v131 = v157;
    sub_24E60169C(v128, v157, &qword_27F22EA00, &qword_24F99A680);
    v132 = v158;
    sub_24ED33528(v130, v158);
    v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EA28, &qword_24F99A6A8);
    sub_24E60169C(v131, v132 + *(v133 + 48), &qword_27F22EA00, &qword_24F99A680);
    sub_24E601704(v128, &qword_27F22EA00, &qword_24F99A680);
    sub_24E601704(v129, &qword_27F22EA20, &qword_24F99A6A0);
    sub_24E601704(v131, &qword_27F22EA00, &qword_24F99A680);
    return sub_24E601704(v130, &qword_27F22EA20, &qword_24F99A6A0);
  }

  __break(1u);
  return result;
}

void *sub_24ED326EC(double *a1, uint64_t a2)
{
  v2 = *a1;
  type metadata accessor for ImageLockupView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216550, &qword_24F9424D0);
  result = sub_24F926F38();
  if (v2 != v4)
  {
    return sub_24F926F48();
  }

  return result;
}

void *sub_24ED32790(double *a1, uint64_t a2)
{
  v2 = *a1;
  type metadata accessor for ImageLockupView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216550, &qword_24F9424D0);
  result = sub_24F926F38();
  if (v2 != v4)
  {
    return sub_24F926F48();
  }

  return result;
}

uint64_t sub_24ED32834@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v114 = a2;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EA68, &qword_24F99A780);
  MEMORY[0x28223BE20](v100);
  v103 = &v96 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EA70, &qword_24F99A788);
  v111 = *(v4 - 8);
  v112 = v4;
  MEMORY[0x28223BE20](v4);
  v102 = &v96 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v101 = &v96 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EA78, &qword_24F99A790);
  MEMORY[0x28223BE20](v8 - 8);
  v113 = &v96 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v96 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EA80, &qword_24F99A798);
  v108 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v107 = &v96 - v14;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EA88, &qword_24F99A7A0);
  MEMORY[0x28223BE20](v105);
  v16 = &v96 - v15;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EA90, &qword_24F99A7A8);
  MEMORY[0x28223BE20](v106);
  v18 = &v96 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EA98, &qword_24F99A7B0);
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v96 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v104 = &v96 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EAA0, &qword_24F99A7B8);
  MEMORY[0x28223BE20](v25 - 8);
  v109 = &v96 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v30 = a1[1];
  v110 = v12;
  v115 = &v96 - v28;
  v99 = v30;
  if (v30)
  {
    v96 = v13;
    v97 = v20;
    v98 = v19;
    v31 = *a1;
  }

  else
  {
    v59 = a1[4];
    if (v59)
    {
      (*(v20 + 56))(&v96 - v28, 1, 1, v19, v29);
      goto LABEL_7;
    }

    v96 = v13;
    v97 = v20;
    v98 = v19;
    v31 = 0;
    v30 = 0xE000000000000000;
  }

  v32 = a1;
  v116 = v31;
  v117 = v30;
  sub_24E600AEC();

  v33 = sub_24F925E18();
  v35 = v34;
  v116 = v33;
  v117 = v34;
  v37 = v36 & 1;
  v118 = v36 & 1;
  v119 = v38;
  v39 = v107;
  sub_24F926B88();
  sub_24E600B40(v33, v35, v37);

  v40 = sub_24F9258D8();
  KeyPath = swift_getKeyPath();
  (*(v108 + 32))(v16, v39, v96);
  v42 = &v16[*(v105 + 36)];
  *v42 = KeyPath;
  v42[1] = v40;
  v43 = sub_24F926D38();
  v44 = swift_getKeyPath();
  sub_24E6009C8(v16, v18, &qword_27F22EA88, &qword_24F99A7A0);
  v45 = &v18[*(v106 + 36)];
  *v45 = v44;
  v45[1] = v43;
  LOBYTE(v43) = sub_24F925828();
  sub_24F923318();
  v47 = v46;
  v49 = v48;
  v51 = v50;
  v53 = v52;
  sub_24E6009C8(v18, v22, &qword_27F22EA90, &qword_24F99A7A8);
  v54 = v98;
  v55 = &v22[*(v98 + 36)];
  *v55 = v43;
  *(v55 + 1) = v47;
  *(v55 + 2) = v49;
  *(v55 + 3) = v51;
  *(v55 + 4) = v53;
  v55[40] = 0;
  v56 = v22;
  v57 = v104;
  sub_24E6009C8(v56, v104, &qword_27F22EA98, &qword_24F99A7B0);
  v58 = v115;
  sub_24E6009C8(v57, v115, &qword_27F22EA98, &qword_24F99A7B0);
  (*(v97 + 56))(v58, 0, 1, v54);
  v59 = v32[4];
  a1 = v32;
  if (v59)
  {
LABEL_7:
    v116 = a1[3];
    v117 = v59;
    sub_24E600AEC();

    v63 = sub_24F925E18();
    v65 = v64;
    v67 = v66;
    sub_24F9258D8();
    v68 = sub_24F925C98();
    v70 = v69;
    v72 = v71;
    v74 = v73;

    sub_24E600B40(v63, v65, v67 & 1);

    v116 = v68;
    v117 = v70;
    v118 = v72 & 1;
    v119 = v74;
    v75 = v103;
    sub_24F926B88();
    sub_24E600B40(v68, v70, v72 & 1);
    v58 = v115;

    v76 = sub_24F926D18();
    v77 = swift_getKeyPath();
    v78 = (v75 + *(v100 + 36));
    *v78 = v77;
    v78[1] = v76;
    LOBYTE(v76) = sub_24F925828();
    sub_24F923318();
    v80 = v79;
    v82 = v81;
    v84 = v83;
    v86 = v85;
    v87 = v102;
    sub_24E6009C8(v75, v102, &qword_27F22EA68, &qword_24F99A780);
    v60 = v112;
    v88 = v87 + *(v112 + 36);
    *v88 = v76;
    *(v88 + 8) = v80;
    *(v88 + 16) = v82;
    *(v88 + 24) = v84;
    *(v88 + 32) = v86;
    *(v88 + 40) = 0;
    v89 = v87;
    v90 = v101;
    sub_24E6009C8(v89, v101, &qword_27F22EA70, &qword_24F99A788);
    v61 = v110;
    sub_24E6009C8(v90, v110, &qword_27F22EA70, &qword_24F99A788);
    v62 = 0;
    goto LABEL_8;
  }

  v60 = v112;
  v61 = v110;
  v62 = 1;
LABEL_8:
  (*(v111 + 56))(v61, v62, 1, v60);
  v91 = v109;
  sub_24E60169C(v58, v109, &qword_27F22EAA0, &qword_24F99A7B8);
  v92 = v113;
  sub_24E60169C(v61, v113, &qword_27F22EA78, &qword_24F99A790);
  v93 = v114;
  sub_24E60169C(v91, v114, &qword_27F22EAA0, &qword_24F99A7B8);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EAA8, &qword_24F99A7C0);
  sub_24E60169C(v92, v93 + *(v94 + 48), &qword_27F22EA78, &qword_24F99A790);
  sub_24E601704(v61, &qword_27F22EA78, &qword_24F99A790);
  sub_24E601704(v58, &qword_27F22EAA0, &qword_24F99A7B8);
  sub_24E601704(v92, &qword_27F22EA78, &qword_24F99A790);
  return sub_24E601704(v91, &qword_27F22EAA0, &qword_24F99A7B8);
}

uint64_t sub_24ED33194@<X0>(uint64_t a2@<X8>)
{
  v4 = v2[1];
  v17[0] = *v2;
  v17[1] = v4;
  v17[2] = v2[2];
  *a2 = sub_24F924C98();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EA58, &qword_24F99A770);
  sub_24ED32834(v17, a2 + *(v5 + 44));
  v6 = sub_24F925828();
  sub_24F923318();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EA60, &qword_24F99A778);
  v16 = a2 + *(result + 36);
  *v16 = v6;
  *(v16 + 8) = v8;
  *(v16 + 16) = v10;
  *(v16 + 24) = v12;
  *(v16 + 32) = v14;
  *(v16 + 40) = 0;
  return result;
}

uint64_t sub_24ED33260(uint64_t a1)
{
  MEMORY[0x28223BE20](v1);
  sub_24ED334A8(v3, &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_24ED33808(&qword_27F215C30, type metadata accessor for ImageLockupView, &unk_24F99A5C8);
  return sub_24F9218E8();
}

double sub_24ED33418(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_24ED33460(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_24ED334A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImageLockupView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24ED33528(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EA20, &qword_24F99A6A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24ED33598(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_24ED33608()
{
  result = qword_27F22EA30;
  if (!qword_27F22EA30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22E9E8, &qword_24F99A668);
    sub_24ED336C0();
    sub_24E602068(&qword_27F21B308, &qword_27F212858, &qword_24F950980, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22EA30);
  }

  return result;
}

unint64_t sub_24ED336C0()
{
  result = qword_27F22EA38;
  if (!qword_27F22EA38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22E9E0, &qword_24F99A660);
    sub_24ED3374C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22EA38);
  }

  return result;
}

unint64_t sub_24ED3374C()
{
  result = qword_27F22EA40;
  if (!qword_27F22EA40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22E9D8, &qword_24F9A85B0);
    sub_24ED33808(&qword_27F2281F0, type metadata accessor for LockupContentView, &unk_24FA0C744);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22EA40);
  }

  return result;
}

uint64_t sub_24ED33808(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroyTm_34()
{
  v1 = *(type metadata accessor for ImageLockupView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898, &unk_24F944150);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = sub_24F923E98();
    (*(*(v3 - 8) + 8))(v0 + v2, v3);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_24ED3399C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for ImageLockupView(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_24ED33A20(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
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

uint64_t sub_24ED33A7C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_24ED33B60()
{
  result = qword_27F22EAB0;
  if (!qword_27F22EAB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22EA60, &qword_24F99A778);
    sub_24E602068(&qword_27F22EAB8, &qword_27F22EAC0, &qword_24F99A828, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22EAB0);
  }

  return result;
}

uint64_t sub_24ED33C1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a3;
  v25 = a4;
  v23 = a1;
  v5 = sub_24F927D88();
  v28 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F927DC8();
  v26 = *(v8 - 8);
  v27 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24F927D98();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EB50, &qword_24F99A948);
  v15 = sub_24F92A9E8();
  sub_24E69A5C4(0, &qword_27F222300, 0x277D85C78);
  (*(v12 + 104))(v14, *MEMORY[0x277D851C8], v11);
  v16 = sub_24F92BF48();
  (*(v12 + 8))(v14, v11);
  v17 = swift_allocObject();
  v18 = v24;
  v17[2] = v23;
  v17[3] = a2;
  v19 = v25;
  v17[4] = v18;
  v17[5] = v19;
  v17[6] = v15;
  aBlock[4] = sub_24ED35C1C;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24EAF8248;
  aBlock[3] = &block_descriptor_71;
  v20 = _Block_copy(aBlock);

  sub_24F927DA8();
  v29 = MEMORY[0x277D84F90];
  sub_24E858250();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310, &unk_24F951080);
  sub_24E602068(&qword_27F222940, &qword_27F222310, &unk_24F951080, MEMORY[0x277D83970]);
  sub_24F92C6A8();
  MEMORY[0x2530518B0](0, v10, v7, v20);
  _Block_release(v20);

  (*(v28 + 8))(v7, v5);
  (*(v26 + 8))(v10, v27);

  return v15;
}

uint64_t sub_24ED33FE4(uint64_t (*a1)(void), uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  v7 = a1();
  a3(v7);
  v8 = swift_allocObject();
  *(v8 + 16) = sub_24ED35C44;
  *(v8 + 24) = a5;
  v10[3] = sub_24F929638();
  v10[4] = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_1(v10);
  swift_retain_n();
  sub_24F929628();
  sub_24F92A958();

  return __swift_destroy_boxed_opaque_existential_1(v10);
}

uint64_t ASKBootstrapV2.TargetType.hashValue.getter()
{
  v1 = *v0;
  sub_24F92D068();
  MEMORY[0x253052A00](v1);
  return sub_24F92D0B8();
}

__n128 ASKBootstrapV2.init(bagProfile:bagOfflinePolicy:appStateControllerFactory:targetType:tokenServiceClient:processTreatmentNamespace:prerequisites:jetpackURL:languageSource:)@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a8@<X7>, _BYTE *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v15 = *a2;
  v16 = a2[1];
  v17 = *(a2 + 16);
  v18 = *a4;
  v19 = type metadata accessor for ASKBootstrapV2(0);
  v20 = &a9[v19[8]];
  *(v20 + 4) = 0;
  *v20 = 0u;
  *(v20 + 1) = 0u;
  v21 = &a9[v19[9]];
  *v21 = 0;
  v21[1] = 0;
  v22 = v19[5];
  v23 = sub_24F92A468();
  v24 = *(v23 - 8);
  (*(v24 + 16))(&a9[v22], a1, v23);
  v25 = &a9[v19[6]];
  *v25 = v15;
  *(v25 + 1) = v16;
  v25[16] = v17;
  *a9 = v18;
  sub_24E615E00(a3, &a9[v19[7]]);
  v26 = [objc_opt_self() currentProcess];
  if (a8)
  {
    v27 = sub_24F92B098();
    [v26 setTreatmentNamespace_];
  }

  __swift_destroy_boxed_opaque_existential_1(a3);
  (*(v24 + 8))(a1, v23);
  *&a9[v19[10]] = v26;
  v28 = &a9[v19[11]];
  *v28 = a10;
  v28[1] = a11;
  v29 = &a9[v19[12]];
  *v29 = a5;
  v29[1] = a6;
  sub_24E6009C8(a12, &a9[v19[13]], &qword_27F228530, &unk_24F93C6E0);
  v30 = &a9[v19[14]];
  result = *a13;
  v32 = *(a13 + 16);
  *v30 = *a13;
  *(v30 + 1) = v32;
  *(v30 + 4) = *(a13 + 32);
  return result;
}

uint64_t ASKBootstrapV2.bagProfile.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ASKBootstrapV2(0) + 20);
  v4 = sub_24F92A468();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

__n128 ASKBootstrapV2.bagOfflinePolicy.getter@<Q0>(__n128 *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ASKBootstrapV2(0) + 24));
  v4 = v3[1].n128_u8[0];
  result = *v3;
  *a1 = *v3;
  a1[1].n128_u8[0] = v4;
  return result;
}

uint64_t sub_24ED344A8@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (a1 + *(type metadata accessor for ASKBootstrapV2(0) + 36));
  v4 = *v3;
  v5 = v3[1];
  if (*v3)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_24ED35BA8;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;

  return sub_24E5FCA4C(v4, v5);
}

void sub_24ED3453C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_24ED35B70;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (a2 + *(type metadata accessor for ASKBootstrapV2(0) + 36));
  v8 = *v7;
  v9 = v7[1];
  sub_24E5FCA4C(v3, v4);
  sub_24E824448(v8, v9);
  *v7 = v6;
  v7[1] = v5;
}

uint64_t ASKBootstrapV2.metricsRecorderProducer.getter()
{
  v1 = (v0 + *(type metadata accessor for ASKBootstrapV2(0) + 36));
  v2 = *v1;
  sub_24E5FCA4C(*v1, v1[1]);
  return v2;
}

id ASKBootstrapV2.process.getter()
{
  v1 = *(v0 + *(type metadata accessor for ASKBootstrapV2(0) + 40));

  return v1;
}

uint64_t sub_24ED34660@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for ASKBootstrapV2(0) + 44));
  v5 = *v3;
  v4 = v3[1];
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *a2 = &unk_24F99A940;
  a2[1] = v6;
}

uint64_t sub_24ED346E0(uint64_t a1, uint64_t *a2, int *a3)
{
  *(v3 + 16) = a1;
  v4 = *a2;
  v7 = (a3 + *a3);
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = sub_24E67D244;

  return v7(v4);
}

void sub_24ED347D8(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = (a2 + *(type metadata accessor for ASKBootstrapV2(0) + 44));

  *v6 = &unk_24F99A930;
  v6[1] = v5;
}

uint64_t sub_24ED34858(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 32) = v3;
  *v3 = v2;
  v3[1] = sub_24ED34958;

  return v5(v2 + 24, v2 + 16);
}

uint64_t sub_24ED34958()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = *(v2 + 24);
    v7 = *(v3 + 8);

    return v7(v6);
  }
}

uint64_t ASKBootstrapV2.prerequisites.getter()
{
  v1 = *(v0 + *(type metadata accessor for ASKBootstrapV2(0) + 44));

  return v1;
}

uint64_t ASKBootstrapV2.withMetricsEventRecorder(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_24ED34B58(v2, a2);
  v5 = a2 + *(type metadata accessor for ASKBootstrapV2(0) + 32);

  return sub_24ED34BBC(a1, v5);
}

uint64_t sub_24ED34B58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ASKBootstrapV2(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24ED34BBC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EAC8, &qword_24F99A860);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void ASKBootstrapV2.withMetricsEventRecorderProducer(_:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_24ED34B58(v3, a3);
  v7 = (a3 + *(type metadata accessor for ASKBootstrapV2(0) + 36));
  v8 = *v7;
  v9 = v7[1];
  sub_24E5FCA4C(a1, a2);
  sub_24E824448(v8, v9);
  *v7 = a1;
  v7[1] = a2;
}

uint64_t ASKBootstrapV2.start()()
{
  v1 = type metadata accessor for ASKBootstrapV2(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  if (qword_27F210570 != -1)
  {
    swift_once();
  }

  v4 = sub_24F92AAE8();
  __swift_project_value_buffer(v4, qword_27F39C3B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93DE60;
  sub_24F9283A8();
  sub_24F92A588();

  if (qword_27F210010 != -1)
  {
    swift_once();
  }

  UserEngagementManager.startDefaultTabRequest()();
  sub_24ED34B58(v0, &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v6 = swift_allocObject();
  sub_24ED352E4(&v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  v7 = sub_24ED33C1C(sub_24ED34F20, 0, sub_24ED35348, v6);

  return v7;
}

id sub_24ED34F20()
{
  v0 = sub_24F91F648();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24F270AC8(v4);
  sub_24F2709B4(v5);
  if (qword_27F210618 != -1)
  {
    swift_once();
  }

  v6 = qword_27F22D9A8;
  [qword_27F22D9A8 lock];
  if (qword_27F210610 != -1)
  {
    swift_once();
  }

  v7 = off_27F22D9A0;
  if (off_27F22D9A0)
  {
    swift_beginAccess();
    if (*(v7 + 80) == 1)
    {

      sub_24F91F638();
      sub_24F91F5E8();
      v9 = v8;
      (*(v1 + 8))(v3, v0);
      v7[9] = v9;
      *(v7 + 80) = 0;
    }
  }

  return [v6 unlock];
}

uint64_t sub_24ED350D0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v14 - v3;
  v5 = type metadata accessor for ASKBootstrapV2(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  sub_24ED34B58(a1, &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v9 = swift_allocObject();
  sub_24ED352E4(&v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EB50, &qword_24F99A948);
  v10 = sub_24F92A9E8();
  v11 = sub_24F92B858();
  (*(*(v11 - 8) + 56))(v4, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_24F99A958;
  v12[5] = v9;
  v12[6] = v10;

  sub_24E6959D8(0, 0, v4, &unk_24F99A960, v12);

  return v10;
}

uint64_t sub_24ED352E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ASKBootstrapV2(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24ED35364()
{
  result = qword_27F22EAD8;
  if (!qword_27F22EAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22EAD8);
  }

  return result;
}

uint64_t sub_24ED353DC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_24F92A468();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[5];

    return v9(v10, a2, v8);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[7] + 24);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + a3[13];

    return v14(v15, a2, v13);
  }
}

uint64_t sub_24ED35528(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_24F92A468();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[5];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[7] + 24) = (a2 - 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[13];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

void sub_24ED35660(uint64_t a1)
{
  sub_24F92A468();
  if (v1 <= 0x3F)
  {
    sub_24ED357FC();
    if (v2 <= 0x3F)
    {
      sub_24ED3584C();
      if (v3 <= 0x3F)
      {
        sub_24E8EF898(319, &unk_27F22EB08, &qword_27F222260, &unk_24F93B540);
        if (v4 <= 0x3F)
        {
          sub_24E8EF898(319, &qword_27F22EB18, &unk_27F22EB20, qword_24F9C4E60);
          if (v5 <= 0x3F)
          {
            sub_24E69A5C4(319, &qword_27F2222A8, 0x277CEE620);
            if (v6 <= 0x3F)
            {
              sub_24E6C5550();
              if (v7 <= 0x3F)
              {
                sub_24E6D4C08(319);
                if (v8 <= 0x3F)
                {
                  sub_24E8EF898(319, &qword_27F22EB40, &qword_27F22EB48, &qword_24F99A908);
                  if (v9 <= 0x3F)
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
  }
}

void sub_24ED357FC()
{
  if (!qword_27F22EAF8)
  {
    v0 = sub_24F92C4A8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F22EAF8);
    }
  }
}

unint64_t sub_24ED3584C()
{
  result = qword_27F22EB00;
  if (!qword_27F22EB00)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27F22EB00);
  }

  return result;
}

uint64_t sub_24ED358C0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24ED35974;

  return sub_24ED34858(a1, v4);
}

uint64_t sub_24ED35974(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_24ED35A70()
{

  return swift_deallocObject();
}

uint64_t sub_24ED35AA8(uint64_t a1, uint64_t *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_24E6541E4;

  return sub_24ED346E0(a1, a2, v6);
}

uint64_t sub_24ED35B70(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t sub_24ED35BD4()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_71(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24ED35C6C(uint64_t a1, uint64_t a2)
{
  v2[23] = a1;
  v2[24] = a2;
  v3 = *(type metadata accessor for ASKBootstrapV2(0) - 8);
  v2[25] = v3;
  v2[26] = *(v3 + 64);
  v2[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24ED35D30, 0, 0);
}

uint64_t sub_24ED35D30()
{
  v1 = v0[27];
  v2 = v0[24];
  v3 = v0[25];
  sub_24F928FD8();
  sub_24F928F78();
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  sub_24ED34B58(v2, v1);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = swift_allocObject();
  sub_24ED352E4(v1, v5 + v4);
  sub_24F929E28();

  __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
  sub_24ED34B58(v2, v1);
  v6 = swift_allocObject();
  sub_24ED352E4(v1, v6 + v4);
  sub_24F929E28();

  __swift_project_boxed_opaque_existential_1(v0 + 12, v0[15]);
  sub_24ED34B58(v2, v1);
  v7 = swift_allocObject();
  sub_24ED352E4(v1, v7 + v4);
  sub_24F929E28();

  v9 = v0[20];
  v8 = v0[21];
  __swift_project_boxed_opaque_existential_1(v0 + 17, v9);
  v10 = swift_task_alloc();
  v0[28] = v10;
  *v10 = v0;
  v10[1] = sub_24ED35FA8;

  return MEMORY[0x28217FD10](v9, v8);
}

uint64_t sub_24ED35FA8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 232) = v1;

  if (v1)
  {
    v5 = sub_24ED361F8;
  }

  else
  {
    *(v4 + 240) = a1;
    v5 = sub_24ED360D0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_24ED360D0()
{
  v1 = v0[23];
  v0[22] = sub_24ED43EB8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EB60, &qword_24F992808);
  sub_24E602068(&qword_27F22CE28, &unk_27F22EB60, &qword_24F992808, MEMORY[0x277D83970]);
  v2 = sub_24F928F48();

  __swift_destroy_boxed_opaque_existential_1(v0 + 17);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  *v1 = v2;

  v3 = v0[1];

  return v3();
}

uint64_t sub_24ED361F8()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 17);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v1 = v0[1];

  return v1();
}

uint64_t objectdestroyTm_35()
{
  v1 = type metadata accessor for ASKBootstrapV2(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  v3 = v1[5];
  v4 = sub_24F92A468();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);
  __swift_destroy_boxed_opaque_existential_1((v2 + v1[7]));
  v5 = (v2 + v1[8]);
  if (v5[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v5);
  }

  if (*(v2 + v1[9]))
  {
  }

  v6 = v1[13];
  v7 = sub_24F91F4A8();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v2 + v6, 1, v7))
  {
    (*(v8 + 8))(v2 + v6, v7);
  }

  v9 = (v2 + v1[14]);
  if (v9[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v9);
  }

  return swift_deallocObject();
}

uint64_t sub_24ED36460(uint64_t a1)
{
  v4 = *(type metadata accessor for ASKBootstrapV2(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24E6541E4;

  return sub_24ED35C6C(a1, v1 + v5);
}

uint64_t sub_24ED3653C()
{
  sub_24ED365A8();

  sub_24ED369D0();

  v0 = sub_24F928FA8();

  return v0;
}

uint64_t sub_24ED365A8()
{
  v1 = v0;
  v2 = type metadata accessor for ASKBootstrapV2(0);
  v33 = *(v2 - 8);
  v3 = *(v33 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24F928188();
  v6 = *(v5 - 8);
  v35 = v5;
  v36 = v6;
  v7 = v6;
  MEMORY[0x28223BE20](v5);
  v34 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v32 = &v31 - v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v31 - v12;
  MEMORY[0x28223BE20](v14);
  v37 = &v31 - v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EB90, &unk_24F990A40);
  v16 = _s12GameStoreKit20NWPathNetworkInquiryCACycfC_0();
  v39 = type metadata accessor for NWPathNetworkInquiry(0);
  v40 = &protocol witness table for NWPathNetworkInquiry;
  v38 = v16;
  sub_24F928168();
  v17 = type metadata accessor for InitialBag(0);
  sub_24ED34B58(v0, v4);
  v18 = (*(v33 + 80) + 16) & ~*(v33 + 80);
  v19 = swift_allocObject();
  sub_24ED352E4(v4, v19 + v18);
  MEMORY[0x25304DAD0](v17, &unk_24F99AA18, v19, v17);
  v20 = sub_24F92A498();
  v21 = v32;
  MEMORY[0x25304DAD0](v20, &unk_24F99AA20, 0, v20);
  v22 = type metadata accessor for ASKBagContract(0);
  sub_24ED34B58(v1, v4);
  v23 = swift_allocObject();
  sub_24ED352E4(v4, v23 + v18);
  v24 = v34;
  MEMORY[0x25304DAD0](v22, &unk_24F99AA30, v23, v22);
  sub_24F928FD8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213AF8, &qword_24F9BF190);
  v25 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_24F93DE60;
  v27 = v35;
  (*(v7 + 16))(v26 + v25, v37, v35);
  sub_24F928F68();
  sub_24F928F88();
  sub_24F928F88();
  v28 = sub_24F928F88();

  v29 = *(v7 + 8);
  v29(v24, v27);
  v29(v21, v27);
  v29(v13, v27);
  v29(v37, v27);
  return v28;
}

uint64_t sub_24ED369D0()
{
  v1 = v0;
  v2 = type metadata accessor for ASKBootstrapV2(0);
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  v41 = v5;
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24F928188();
  v45 = *(v7 - 8);
  v46 = v7;
  v8 = v45;
  MEMORY[0x28223BE20](v7);
  v44 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v42 = &v38 - v11;
  MEMORY[0x28223BE20](v12);
  v43 = &v38 - v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v38 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EBF8, &qword_24F99A9C0);
  sub_24ED34B58(v1, v6);
  v18 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v19 = swift_allocObject();
  sub_24ED352E4(v6, v19 + v18);
  v40 = v16;
  MEMORY[0x25304DAD0](v17, &unk_24F99A9D0, v19, v17);
  v20 = type metadata accessor for JSInvalidSignatureReporter();
  MEMORY[0x25304DAD0](v20, &unk_24F99A9D8, 0, v20);
  v21 = *(v3 + 64);
  v22 = type metadata accessor for AppStoreLocalizerFactory(0);
  v23 = v39;
  sub_24E60169C(v39 + v21, v47, &unk_27F22EC00, &qword_24F99A9E8);
  v24 = swift_allocObject();
  v25 = v47[1];
  *(v24 + 16) = v47[0];
  *(v24 + 32) = v25;
  *(v24 + 48) = v48;
  v26 = v42;
  MEMORY[0x25304DAD0](v22, &unk_24F99A9F0, v24, v22);
  v27 = sub_24F929958();
  sub_24ED34B58(v23, v6);
  v28 = swift_allocObject();
  sub_24ED352E4(v6, v28 + v18);
  v29 = v44;
  MEMORY[0x25304DAD0](v27, &unk_24F99AA00, v28, v27);
  sub_24F928FD8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213AF8, &qword_24F9BF190);
  v30 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_24F93DE60;
  v32 = v16;
  v33 = v46;
  (*(v8 + 16))(v31 + v30, v32, v46);
  sub_24F928F68();
  v34 = v43;
  sub_24F928F88();
  sub_24F928F88();
  v35 = sub_24F928F88();

  v36 = *(v8 + 8);
  v36(v29, v33);
  v36(v26, v33);
  v36(v34, v33);
  v36(v40, v33);
  return v35;
}

uint64_t sub_24ED36E48()
{
  v1 = v0;
  v2 = type metadata accessor for ASKBootstrapV2(0);
  v3 = *(v2 - 8);
  v101 = (v2 - 8);
  v105 = v3;
  v4 = *(v3 + 8);
  MEMORY[0x28223BE20](v2 - 8);
  v95 = sub_24F928188();
  v5 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v109 = v94 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v130 = v94 - v8;
  MEMORY[0x28223BE20](v9);
  v129 = v94 - v10;
  MEMORY[0x28223BE20](v11);
  v128 = v94 - v12;
  MEMORY[0x28223BE20](v13);
  v127 = v94 - v14;
  MEMORY[0x28223BE20](v15);
  v108 = v94 - v16;
  MEMORY[0x28223BE20](v17);
  v126 = v94 - v18;
  MEMORY[0x28223BE20](v19);
  v107 = v94 - v20;
  MEMORY[0x28223BE20](v21);
  v106 = v94 - v22;
  MEMORY[0x28223BE20](v23);
  v125 = v94 - v24;
  MEMORY[0x28223BE20](v25);
  v124 = v94 - v26;
  MEMORY[0x28223BE20](v27);
  v123 = v94 - v28;
  MEMORY[0x28223BE20](v29);
  v122 = v94 - v30;
  MEMORY[0x28223BE20](v31);
  v121 = v94 - v32;
  MEMORY[0x28223BE20](v33);
  v120 = v94 - v34;
  MEMORY[0x28223BE20](v35);
  v119 = v94 - v36;
  MEMORY[0x28223BE20](v37);
  v118 = v94 - v38;
  MEMORY[0x28223BE20](v39);
  v117 = v94 - v40;
  MEMORY[0x28223BE20](v41);
  v116 = v94 - v42;
  MEMORY[0x28223BE20](v43);
  v115 = v94 - v44;
  MEMORY[0x28223BE20](v45);
  v114 = v94 - v46;
  MEMORY[0x28223BE20](v47);
  v113 = v94 - v48;
  MEMORY[0x28223BE20](v49);
  v112 = v94 - v50;
  MEMORY[0x28223BE20](v51);
  v111 = v94 - v52;
  MEMORY[0x28223BE20](v53);
  v100 = v94 - v54;
  MEMORY[0x28223BE20](v55);
  v57 = v94 - v56;
  MEMORY[0x28223BE20](v58);
  v110 = v94 - v59;
  MEMORY[0x28223BE20](v60);
  v62 = v94 - v61;
  MEMORY[0x28223BE20](v63);
  v65 = v94 - v64;
  MEMORY[0x28223BE20](v66);
  v68 = v94 - v67;
  MEMORY[0x28223BE20](v69);
  v71 = v94 - v70;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EBA8, &qword_24F99A968);
  v102 = v71;
  sub_24F928158();
  sub_24E69A5C4(0, &qword_27F222D10, 0x277CEE6F0);
  sub_24ED34B58(v1, v94 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v72 = (v105[80] + 16) & ~v105[80];
  v97 = v105[80];
  v96 = v72 + v4;
  v73 = swift_allocObject();
  v98 = v72;
  v99 = v94 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24ED352E4(v99, v73 + v72);
  v103 = v68;
  sub_24F928158();
  type metadata accessor for ArtworkLoaderURLSession();
  v104 = v65;
  sub_24F928158();
  sub_24F92AB98();
  v131 = sub_24F92AB88();
  v105 = v62;
  sub_24F928168();
  sub_24E69A5C4(0, &qword_27F2222A8, 0x277CEE620);
  v131 = *(v1 + *(v101 + 12));
  v74 = v131;
  sub_24F928168();
  sub_24E69A5C4(0, &qword_27F221568, 0x277CB8F48);
  v131 = [objc_opt_self() ams_sharedAccountStore];
  v101 = v57;
  sub_24F928168();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EB90, &unk_24F990A40);
  v75 = _s12GameStoreKit20NWPathNetworkInquiryCACycfC_0();
  v132 = type metadata accessor for NWPathNetworkInquiry(0);
  v133 = &protocol witness table for NWPathNetworkInquiry;
  v131 = v75;
  sub_24F928168();
  type metadata accessor for UserEngagementManager();
  if (qword_27F210010 != -1)
  {
    swift_once();
  }

  v131 = qword_27F2227C0;

  sub_24F928168();
  v131 = [objc_allocWithZone(type metadata accessor for JSTimeoutManager()) init];
  sub_24F928168();
  sub_24E69A5C4(0, &qword_27F222258, 0x277CEE498);
  sub_24F928158();
  sub_24F929E08();
  sub_24F928158();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222260, &unk_24F93B540);
  v76 = v99;
  sub_24ED34B58(v1, v99);
  v77 = swift_allocObject();
  v78 = v98;
  sub_24ED352E4(v76, v77 + v98);
  sub_24F928158();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222250, &unk_24F969080);
  sub_24ED34B58(v1, v76);
  v79 = swift_allocObject();
  sub_24ED352E4(v76, v79 + v78);
  sub_24F928158();
  type metadata accessor for Restrictions();
  sub_24F928158();
  type metadata accessor for ThreeDimensionalMediaArtworkImageDownloader();
  sub_24F928158();
  sub_24ED34B58(v1, v76);
  v80 = swift_allocObject();
  sub_24ED352E4(v76, v80 + v78);
  MEMORY[0x25304DAD0](&type metadata for ASKPrerequisites, &unk_24F99A980, v80, &type metadata for ASKPrerequisites);
  v81 = type metadata accessor for JSService();
  sub_24ED34B58(v1, v76);
  v82 = swift_allocObject();
  sub_24ED352E4(v76, v82 + v78);
  MEMORY[0x25304DAD0](v81, &unk_24F99A990, v82, v81);
  v83 = type metadata accessor for JSIntentDispatcher();
  MEMORY[0x25304DAD0](v83, &unk_24F99A998, 0, v83);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EBA0, &unk_24F980F50);
  sub_24ED34B58(v1, v76);
  v84 = swift_allocObject();
  sub_24ED352E4(v76, v84 + v78);
  sub_24F928158();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EB80, &unk_24F9AEF00);
  sub_24F928158();
  v85 = type metadata accessor for Commerce();
  MEMORY[0x25304DAD0](v85, &unk_24F99A9A0, 0, v85);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222D18, &unk_24F96BD90);
  sub_24F928158();
  type metadata accessor for MetricsIdStore();
  sub_24F928158();
  type metadata accessor for AppleSilicon();
  sub_24F928158();
  type metadata accessor for GameCenter();
  sub_24F928158();
  type metadata accessor for GameCenterFriendRequestCoordinator();
  sub_24F928158();
  type metadata accessor for AppStoreOnDeviceRecommendationsManager();
  sub_24F928158();
  type metadata accessor for OnDeviceSearchHistoryManager();
  sub_24F928158();
  type metadata accessor for OnDevicePersonalizationDataManager();
  sub_24F928158();
  type metadata accessor for AdsService();
  v86 = swift_allocObject();
  type metadata accessor for AdProcessingPipelineProxy();
  v87 = swift_allocObject();
  *(v87 + 16) = 0;
  *(v87 + 24) = 0;
  *(v86 + 16) = v87;
  *(v86 + 24) = 0u;
  *(v86 + 40) = 0u;
  *(v86 + 56) = 0;
  v131 = v86;
  sub_24F928168();
  type metadata accessor for NetworkActivity();
  sub_24F928158();
  sub_24F928FD8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213AF8, &qword_24F9BF190);
  v88 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v89 = swift_allocObject();
  *(v89 + 16) = xmmword_24F93DE60;
  v90 = v95;
  (*(v5 + 16))(v89 + v88, v102, v95);
  v98 = sub_24F928F68();
  v97 = sub_24F928F88();
  v96 = sub_24F928F88();
  v94[19] = sub_24F928F88();
  v94[18] = sub_24F928F88();
  v94[17] = sub_24F928F88();
  v94[16] = sub_24F928F88();
  v94[15] = sub_24F928F88();
  v94[14] = sub_24F928F88();
  v94[13] = sub_24F928F88();
  v94[12] = sub_24F928F88();
  v94[11] = sub_24F928F88();
  v94[10] = sub_24F928F88();
  v94[9] = sub_24F928F88();
  v94[8] = sub_24F928F88();
  v94[7] = sub_24F928F88();
  v94[6] = sub_24F928F88();
  v94[5] = sub_24F928F88();
  v94[4] = sub_24F928F88();
  v94[3] = sub_24F928F88();
  v94[2] = sub_24F928F88();
  v94[1] = sub_24F928F88();
  v94[0] = sub_24F928F88();
  sub_24F928F88();
  sub_24F928F88();
  sub_24F928F88();
  sub_24F928F88();
  sub_24F928F88();
  sub_24F928F88();
  sub_24F928F88();
  v91 = v109;
  v99 = sub_24F928F88();

  v92 = *(v5 + 8);
  v92(v91, v90);
  v92(v130, v90);
  v92(v129, v90);
  v92(v128, v90);
  v92(v127, v90);
  v92(v108, v90);
  v92(v126, v90);
  v92(v107, v90);
  v92(v106, v90);
  v92(v125, v90);
  v92(v124, v90);
  v92(v123, v90);
  v92(v122, v90);
  v92(v121, v90);
  v92(v120, v90);
  v92(v119, v90);
  v92(v118, v90);
  v92(v117, v90);
  v92(v116, v90);
  v92(v115, v90);
  v92(v114, v90);
  v92(v113, v90);
  v92(v112, v90);
  v92(v111, v90);
  v92(v100, v90);
  v92(v101, v90);
  v92(v110, v90);
  v92(v105, v90);
  v92(v104, v90);
  v92(v103, v90);
  v92(v102, v90);
  return v99;
}

uint64_t sub_24ED38354()
{
  v0 = sub_24F928188();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v18 - v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v18 - v11;
  sub_24F929F48();
  sub_24F928158();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EBB0, &qword_24F99A970);
  sub_24F928158();
  sub_24F9290F8();
  sub_24F928158();
  sub_24F929158();
  sub_24F928158();
  sub_24F928FD8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213AF8, &qword_24F9BF190);
  v13 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_24F93DE60;
  (*(v1 + 16))(v14 + v13, v12, v0);
  sub_24F928F68();
  sub_24F928F88();
  sub_24F928F88();
  v15 = sub_24F928F88();

  v16 = *(v1 + 8);
  v16(v3, v0);
  v16(v6, v0);
  v16(v9, v0);
  v16(v12, v0);
  return v15;
}

uint64_t sub_24ED38658(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_24F922028();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24ED38724, 0, 0);
}

uint64_t sub_24ED38724()
{
  if (qword_27F211060 != -1)
  {
    swift_once();
  }

  v1 = sub_24F922058();
  __swift_project_value_buffer(v1, qword_27F23DAC0);
  sub_24F922038();
  sub_24F921FF8();
  v2 = sub_24F922038();
  v3 = sub_24F92C058();
  if (sub_24F92C478())
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = sub_24F922008();
    _os_signpost_emit_with_name_impl(&dword_24E5DD000, v2, v3, v5, "CreateInitialBag", "", v4, 2u);
    MEMORY[0x2530542D0](v4, -1, -1);
  }

  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[4];
  v9 = v0[5];
  v10 = v0[3];

  (*(v9 + 16))(v6, v7, v8);
  sub_24F922098();
  swift_allocObject();
  v0[8] = sub_24F922088();
  (*(v9 + 8))(v7, v8);
  v11 = type metadata accessor for ASKBootstrapV2(0);
  v12 = *(v11 + 20);
  v13 = *(v10 + *(v11 + 40));
  v14 = swift_task_alloc();
  v0[9] = v14;
  *v14 = v0;
  v14[1] = sub_24ED38928;
  v15 = v0[2];

  return sub_24ED38B64(v15, v10 + v12, v13);
}

uint64_t sub_24ED38928()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_24ED38AD0;
  }

  else
  {
    v2 = sub_24ED38A3C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24ED38A3C()
{
  sub_24ED3F994(*(v0 + 64), "CreateInitialBag");

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24ED38AD0()
{
  sub_24ED3F994(*(v0 + 64), "CreateInitialBag");

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24ED38B64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[29] = a3;
  v4[30] = v3;
  v4[28] = a1;
  v5 = sub_24F91F648();
  v4[31] = v5;
  v4[32] = *(v5 - 8);
  v4[33] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30, &qword_24F939880);
  v4[34] = swift_task_alloc();
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();
  v4[37] = swift_task_alloc();
  sub_24F928418();
  v4[38] = swift_task_alloc();
  v4[39] = swift_task_alloc();
  v4[40] = swift_task_alloc();
  v6 = sub_24F92AAE8();
  v4[41] = v6;
  v4[42] = *(v6 - 8);
  v4[43] = swift_task_alloc();
  v4[44] = swift_task_alloc();
  sub_24F921FA8();
  v4[45] = swift_task_alloc();
  sub_24F921F58();
  v4[46] = swift_task_alloc();
  sub_24F921F88();
  v4[47] = swift_task_alloc();
  v7 = sub_24F921FC8();
  v4[48] = v7;
  v4[49] = *(v7 - 8);
  v4[50] = swift_task_alloc();
  v8 = sub_24F92A498();
  v4[51] = v8;
  v4[52] = *(v8 - 8);
  v4[53] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24ED38E6C, 0, 0);
}

uint64_t sub_24ED38E6C()
{
  v1 = v0[30];
  v2 = (v1 + *(type metadata accessor for ASKBootstrapV2(0) + 24));
  if (v2[1])
  {
    if (qword_27F210518 != -1)
    {
      swift_once();
    }

    v2 = &xmmword_27F22D048;
  }

  v4 = v0[49];
  v3 = v0[50];
  v10 = v0[48];
  v0[54] = *(v2 + 1);
  v0[55] = *v2;
  sub_24ECA2090();
  sub_24F921F78();
  sub_24F921F48();
  sub_24F921F98();
  sub_24F921FB8();
  v0[56] = sub_24F92A338();
  (*(v4 + 8))(v3, v10);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224F78, &qword_24F974A28);
  v6 = sub_24E602068(&qword_27F22EC40, &qword_27F224F78, &qword_24F974A28, MEMORY[0x277D224B8]);
  v7 = swift_task_alloc();
  v0[57] = v7;
  *v7 = v0;
  v7[1] = sub_24ED39080;
  v8 = v0[53];

  return MEMORY[0x282180360](v8, v5, v6);
}

uint64_t sub_24ED39080()
{
  *(*v1 + 464) = v0;

  if (v0)
  {
    v2 = sub_24ED391B4;
  }

  else
  {
    v2 = sub_24ED39598;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24ED391B4()
{
  if (qword_27F210618 != -1)
  {
    swift_once();
  }

  v1 = qword_27F22D9A8;
  [qword_27F22D9A8 lock];
  if (qword_27F210610 != -1)
  {
    swift_once();
  }

  v2 = off_27F22D9A0;
  if (off_27F22D9A0)
  {
    v4 = v0[32];
    v3 = v0[33];
    v5 = v0[31];

    sub_24F91F638();
    sub_24F91F5E8();
    v7 = v6;
    (*(v4 + 8))(v3, v5);
    swift_beginAccess();
    v2[11] = v7;
    *(v2 + 96) = 0;
  }

  [v1 unlock];
  if (qword_27F210570 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v0[41], qword_27F39C3B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93DE60;
  sub_24F928408();
  sub_24F9283F8();
  swift_getErrorValue();
  v8 = v0[18];
  v9 = v0[19];
  v0[5] = v9;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  (*(*(v9 - 8) + 16))(boxed_opaque_existential_1, v8, v9);
  sub_24F9283D8();
  sub_24E601704((v0 + 2), &qword_27F2129B0, &unk_24F945320);
  sub_24F9283F8();
  sub_24F928428();
  sub_24F92A5A8();

  swift_willThrow();

  v11 = v0[1];

  return v11();
}

uint64_t sub_24ED39598()
{
  if (qword_27F210570 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 352);
  v2 = *(v0 + 328);
  v3 = *(v0 + 336);
  v4 = __swift_project_value_buffer(v2, qword_27F39C3B0);
  *(v0 + 472) = v4;
  v5 = *(v3 + 16);
  *(v0 + 480) = v5;
  *(v0 + 488) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  *(v0 + 496) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
  v6 = *(sub_24F928468() - 8);
  *(v0 + 504) = *(v6 + 72);
  v7 = *(v6 + 80);
  *(v0 + 560) = v7;
  v36 = (v7 + 32) & ~v7;
  *(swift_allocObject() + 16) = xmmword_24F93DE60;
  sub_24F928408();
  sub_24F9283F8();
  v8 = [sub_24F92A328() expirationDate];
  swift_unknownObjectRelease();
  if (v8)
  {
    sub_24F91F608();

    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  v11 = *(v0 + 288);
  v10 = *(v0 + 296);
  v12 = *(v0 + 248);
  v13 = *(v0 + 256);
  v14 = *(v13 + 56);
  *(v0 + 512) = v14;
  v14(v11, v9, 1, v12);
  sub_24E6009C8(v11, v10, &unk_27F22EC30, &qword_24F939880);
  v15 = *(v13 + 48);
  *(v0 + 520) = v15;
  *(v0 + 528) = (v13 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v16 = v15(v10, 1, v12);
  v17 = *(v0 + 296);
  if (v16 == 1)
  {
    sub_24E601704(*(v0 + 296), &unk_27F22EC30, &qword_24F939880);
    *(v0 + 48) = 0u;
    *(v0 + 64) = 0u;
  }

  else
  {
    v18 = *(v0 + 248);
    v19 = *(v0 + 256);
    *(v0 + 72) = v18;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 48));
    (*(v19 + 32))(boxed_opaque_existential_1, v17, v18);
  }

  v21 = *(v0 + 432);
  v22 = *(v0 + 352);
  v23 = *(v0 + 328);
  v24 = *(v0 + 336);
  sub_24F9283D8();
  sub_24E601704(v0 + 48, &qword_27F2129B0, &unk_24F945320);
  sub_24F9283F8();
  v25 = COERCE_DOUBLE(sub_24ECA2090());
  if (v26)
  {
    v25 = v21;
  }

  *(v0 + 104) = MEMORY[0x277D839F8];
  *(v0 + 80) = v25;
  sub_24F9283D8();
  sub_24E601704(v0 + 80, &qword_27F2129B0, &unk_24F945320);
  sub_24F9283F8();
  sub_24F928428();
  sub_24F92A588();

  v27 = *(v24 + 8);
  *(v0 + 536) = v27;
  *(v0 + 544) = (v24 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v27(v22, v23);
  v28 = swift_task_alloc();
  *(v0 + 552) = v28;
  *v28 = v0;
  v28[1] = sub_24ED399C4;
  v30 = *(v0 + 432);
  v29 = *(v0 + 440);
  v31 = *(v0 + 424);
  v33 = *(v0 + 232);
  v32 = *(v0 + 240);
  v34 = *(v0 + 224);

  return sub_24ED41650(v34, v31, v32, v33, v29, v30);
}

uint64_t sub_24ED399C4()
{

  return MEMORY[0x2822009F8](sub_24ED39AC0, 0, 0);
}

uint64_t sub_24ED39AC0()
{
  if (qword_27F210618 != -1)
  {
    swift_once();
  }

  v30 = qword_27F22D9A8;
  [qword_27F22D9A8 lock];
  if (qword_27F210610 != -1)
  {
    swift_once();
  }

  v1 = off_27F22D9A0;
  if (off_27F22D9A0)
  {
    v3 = *(v0 + 256);
    v2 = *(v0 + 264);
    v4 = *(v0 + 248);

    sub_24F91F638();
    sub_24F91F5E8();
    v6 = v5;
    (*(v3 + 8))(v2, v4);
    swift_beginAccess();
    v1[13] = v6;
    *(v1 + 112) = 0;
  }

  v7 = *(v0 + 480);
  v8 = *(v0 + 472);
  v9 = *(v0 + 344);
  v10 = *(v0 + 328);
  [v30 unlock];
  v7(v9, v8, v10);
  *(swift_allocObject() + 16) = xmmword_24F93DE60;
  v11 = 1;
  sub_24F928408();
  sub_24F9283F8();
  v12 = [sub_24F92A328() expirationDate];
  swift_unknownObjectRelease();
  if (v12)
  {
    sub_24F91F608();

    v11 = 0;
  }

  v13 = *(v0 + 520);
  v15 = *(v0 + 272);
  v14 = *(v0 + 280);
  v16 = *(v0 + 248);
  (*(v0 + 512))(v15, v11, 1, v16);
  sub_24E6009C8(v15, v14, &unk_27F22EC30, &qword_24F939880);
  v17 = v13(v14, 1, v16);
  v18 = *(v0 + 280);
  if (v17 == 1)
  {
    sub_24E601704(*(v0 + 280), &unk_27F22EC30, &qword_24F939880);
    *(v0 + 112) = 0u;
    *(v0 + 128) = 0u;
  }

  else
  {
    v19 = *(v0 + 248);
    v20 = *(v0 + 256);
    *(v0 + 136) = v19;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 112));
    (*(v20 + 32))(boxed_opaque_existential_1, v18, v19);
  }

  v22 = *(v0 + 536);
  v24 = *(v0 + 416);
  v23 = *(v0 + 424);
  v29 = *(v0 + 408);
  v25 = *(v0 + 344);
  v26 = *(v0 + 328);
  sub_24F9283D8();
  sub_24E601704(v0 + 112, &qword_27F2129B0, &unk_24F945320);
  sub_24F9283F8();
  sub_24F928428();
  sub_24F92A588();

  v22(v25, v26);
  (*(v24 + 8))(v23, v29);

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_24ED39F18(uint64_t a1)
{
  v1[2] = a1;
  v1[3] = type metadata accessor for InitialBag(0);
  v1[4] = swift_task_alloc();
  v2 = sub_24F922028();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24ED3A014, 0, 0);
}

uint64_t sub_24ED3A014()
{
  if (qword_27F211060 != -1)
  {
    swift_once();
  }

  v1 = sub_24F922058();
  __swift_project_value_buffer(v1, qword_27F23DAC0);
  sub_24F922038();
  sub_24F921FF8();
  v2 = sub_24F922038();
  v3 = sub_24F92C058();
  if (sub_24F92C478())
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = sub_24F922008();
    _os_signpost_emit_with_name_impl(&dword_24E5DD000, v2, v3, v5, "CreateBag", "", v4, 2u);
    MEMORY[0x2530542D0](v4, -1, -1);
  }

  v6 = v0[7];
  v7 = v0[8];
  v8 = v0[5];
  v9 = v0[6];

  (*(v9 + 16))(v6, v7, v8);
  sub_24F922098();
  swift_allocObject();
  v0[9] = sub_24F922088();
  (*(v9 + 8))(v7, v8);
  sub_24F928FD8();
  v0[10] = sub_24F928FB8();
  v10 = swift_task_alloc();
  v0[11] = v10;
  *v10 = v0;
  v10[1] = sub_24ED3A218;
  v12 = v0[3];
  v11 = v0[4];

  return MEMORY[0x28217F228](v11, v12, v12);
}

uint64_t sub_24ED3A218()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_24ED3A418;
  }

  else
  {
    v2 = sub_24ED3A32C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24ED3A32C()
{
  v1 = v0[9];
  v2 = v0[4];
  v3 = v0[2];

  v4 = sub_24F92A498();
  (*(*(v4 - 8) + 32))(v3, v2, v4);
  sub_24ED3F994(v1, "CreateBag");

  v5 = v0[1];

  return v5();
}

uint64_t sub_24ED3A418()
{
  v1 = *(v0 + 72);

  sub_24ED3F994(v1, "CreateBag");

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24ED3A4BC(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_24F92A498();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v2[8] = type metadata accessor for InitialBag(0);
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24ED3A5B8, 0, 0);
}

uint64_t sub_24ED3A5B8()
{
  v0[10] = sub_24F928FD8();
  v0[11] = sub_24F928FB8();
  v1 = swift_task_alloc();
  v0[12] = v1;
  *v1 = v0;
  v1[1] = sub_24ED3A670;
  v3 = v0[8];
  v2 = v0[9];

  return MEMORY[0x28217F228](v2, v3, v3);
}

uint64_t sub_24ED3A670()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_24ED3AAC0;
  }

  else
  {

    v2 = sub_24ED3A78C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24ED3A78C()
{
  v1 = *(v0 + 72);
  *(v0 + 136) = *(v1 + *(*(v0 + 64) + 20));
  sub_24ED45088(v1);
  *(v0 + 112) = sub_24F928FB8();
  v2 = swift_task_alloc();
  *(v0 + 120) = v2;
  *v2 = v0;
  v2[1] = sub_24ED3A850;
  v3 = *(v0 + 56);
  v4 = *(v0 + 32);

  return MEMORY[0x28217F228](v3, v4, v4);
}

uint64_t sub_24ED3A850()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_24ED3AB4C;
  }

  else
  {

    v2 = sub_24ED3A96C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24ED3A96C()
{
  v14 = *(v0 + 136);
  v1 = *(v0 + 48);
  v2 = *(v0 + 32);
  v3 = *(v0 + 24);
  v13 = *(v0 + 16);
  v4 = *(*(v0 + 40) + 32);
  v4(v1, *(v0 + 56), v2);
  v5 = (v3 + *(type metadata accessor for ASKBootstrapV2(0) + 24));
  v6 = *v5;
  v7 = v5[1];
  v8 = *(v5 + 16);
  type metadata accessor for ASKBagContract(0);
  v9 = swift_allocObject();
  v4(v9 + OBJC_IVAR____TtC12GameStoreKit14ASKBagContract_bag, v1, v2);
  *(v9 + OBJC_IVAR____TtC12GameStoreKit14ASKBagContract_isOfflineBag) = v14;
  v10 = v9 + OBJC_IVAR____TtC12GameStoreKit14ASKBagContract_bagOfflinePolicy;
  *v10 = v6;
  *(v10 + 8) = v7;
  *(v10 + 16) = v8;
  *v13 = v9;

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_24ED3AAC0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24ED3AB4C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24ED3ABD8(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_24F92A498();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = sub_24F922028();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24ED3AD00, 0, 0);
}

uint64_t sub_24ED3AD00()
{
  if (qword_27F211060 != -1)
  {
    swift_once();
  }

  v1 = sub_24F922058();
  __swift_project_value_buffer(v1, qword_27F23DAC0);
  sub_24F922038();
  sub_24F921FF8();
  v2 = sub_24F922038();
  v3 = sub_24F92C058();
  if (sub_24F92C478())
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = sub_24F922008();
    _os_signpost_emit_with_name_impl(&dword_24E5DD000, v2, v3, v5, "CreateJSPackageFetcher", "", v4, 2u);
    MEMORY[0x2530542D0](v4, -1, -1);
  }

  v6 = v0[9];
  v7 = v0[10];
  v8 = v0[7];
  v9 = v0[8];

  (*(v9 + 16))(v6, v7, v8);
  sub_24F922098();
  swift_allocObject();
  v0[11] = sub_24F922088();
  (*(v9 + 8))(v7, v8);
  sub_24F928FD8();
  v0[12] = sub_24F928FB8();
  v10 = swift_task_alloc();
  v0[13] = v10;
  *v10 = v0;
  v10[1] = sub_24ED3AF08;
  v11 = v0[6];
  v12 = v0[4];

  return MEMORY[0x28217F228](v11, v12, v12);
}

uint64_t sub_24ED3AF08()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_24ED3B304;
  }

  else
  {

    v2 = sub_24ED3B024;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24ED3B024()
{
  v1 = *(v0 + 24);
  v2 = type metadata accessor for ASKBootstrapV2(0);
  v3 = *&v1[*(v2 + 40)];
  *(v0 + 136) = *v1;
  v4 = *(v2 + 52);
  v5 = swift_task_alloc();
  *(v0 + 120) = v5;
  *v5 = v0;
  v5[1] = sub_24ED3B0F4;
  v6 = *(v0 + 48);
  v7 = *(v0 + 16);

  return sub_24EC647DC(v7, v6, v3, (v0 + 136), &v1[v4]);
}

uint64_t sub_24ED3B0F4()
{
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  *(*v1 + 128) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_24ED3B3A4;
  }

  else
  {
    v5 = sub_24ED3B264;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_24ED3B264()
{
  sub_24ED3F994(*(v0 + 88), "CreateJSPackageFetcher");

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24ED3B304()
{
  v1 = *(v0 + 88);

  sub_24ED3F994(v1, "CreateJSPackageFetcher");

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24ED3B3A4()
{
  sub_24ED3F994(*(v0 + 88), "CreateJSPackageFetcher");

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24ED3B440(uint64_t a1)
{
  v1[2] = a1;
  v1[3] = type metadata accessor for InitialBag(0);
  v1[4] = swift_task_alloc();
  v2 = sub_24F92A498();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24ED3B53C, 0, 0);
}

uint64_t sub_24ED3B53C()
{
  sub_24F928FD8();
  v0[9] = sub_24F928FB8();
  v1 = swift_task_alloc();
  v0[10] = v1;
  *v1 = v0;
  v1[1] = sub_24ED3B5F0;
  v3 = v0[3];
  v2 = v0[4];

  return MEMORY[0x28217F228](v2, v3, v3);
}

uint64_t sub_24ED3B5F0()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_24ED3B984;
  }

  else
  {

    v2 = sub_24ED3B70C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24ED3B70C()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[5];
  v20 = v0[6];
  v21 = v0[2];
  v4 = *(v20 + 32);
  v4(v2);
  v5 = *(v20 + 16);
  v5(v1, v2, v3);
  v6 = v5;
  v19 = v5;
  type metadata accessor for ASKBagContract(0);
  v7 = swift_allocObject();
  (v4)(v7 + OBJC_IVAR____TtC12GameStoreKit14ASKBagContract_bag, v1, v3);
  *(v7 + OBJC_IVAR____TtC12GameStoreKit14ASKBagContract_isOfflineBag) = 0;
  v8 = v7 + OBJC_IVAR____TtC12GameStoreKit14ASKBagContract_bagOfflinePolicy;
  *v8 = 0;
  *(v8 + 8) = 0;
  *(v8 + 16) = 1;
  sub_24F929E08();
  v6(v1, v2, v3);
  v9 = MetricsTopicProvider.currentMetricsTopic.getter();
  v11 = v10;
  v12 = ASKBagContract.anonymousMetricsTopics.getter();
  v13 = sub_24F45D828(v12);

  MEMORY[0x25304F780](v1, v9, v11, v13);

  sub_24F929DE8();

  v19(v1, v2, v3);
  type metadata accessor for JSInvalidSignatureReporter();
  v14 = swift_allocObject();

  v16 = sub_24ED43B44(v15, v1, v14);

  (*(v20 + 8))(v2, v3);
  *v21 = v16;

  v17 = v0[1];

  return v17();
}

uint64_t sub_24ED3B984()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24ED3BA10(uint64_t a1, uint64_t a2)
{
  v2[17] = a1;
  v2[18] = a2;
  v3 = sub_24F92A498();
  v2[19] = v3;
  v4 = *(v3 - 8);
  v2[20] = v4;
  v2[21] = *(v4 + 64);
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24ED3BAE4, 0, 0);
}

uint64_t sub_24ED3BAE4()
{
  sub_24F928FD8();
  *(v0 + 192) = sub_24F928FB8();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EBF8, &qword_24F99A9C0);
  v2 = swift_task_alloc();
  *(v0 + 200) = v2;
  *v2 = v0;
  v2[1] = sub_24ED3BBB4;

  return MEMORY[0x28217F228](v0 + 16, v1, v1);
}

uint64_t sub_24ED3BBB4()
{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = sub_24ED3C27C;
  }

  else
  {
    v2 = sub_24ED3BCC8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24ED3BCC8()
{
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v1 = off_2861EE948;
  v2 = type metadata accessor for JSJetpackFetcher(0);
  v0[27] = v1(v2, &off_2861EE928);
  v3 = swift_task_alloc();
  v0[28] = v3;
  *v3 = v0;
  v3[1] = sub_24ED3BDAC;
  v4 = v0[23];
  v5 = v0[19];

  return MEMORY[0x28217F228](v4, v5, v5);
}

uint64_t sub_24ED3BDAC()
{
  *(*v1 + 232) = v0;

  if (v0)
  {
    v2 = sub_24ED3C2F0;
  }

  else
  {
    v2 = sub_24ED3BEC0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24ED3BEC0()
{
  v2 = *(v0 + 184);
  v1 = *(v0 + 192);
  v4 = *(v0 + 168);
  v3 = *(v0 + 176);
  v5 = *(v0 + 152);
  v6 = *(v0 + 160);
  sub_24E60169C(*(v0 + 144), v0 + 56, &unk_27F22EC00, &qword_24F99A9E8);
  (*(v6 + 16))(v3, v2, v5);
  v7 = (*(v6 + 80) + 56) & ~*(v6 + 80);
  v8 = swift_allocObject();
  v9 = *(v0 + 72);
  *(v8 + 16) = *(v0 + 56);
  *(v8 + 32) = v9;
  *(v8 + 48) = *(v0 + 88);
  (*(v6 + 32))(v8 + v7, v3, v5);
  *(v8 + ((v4 + v7 + 7) & 0xFFFFFFFFFFFFFFF8)) = v1;
  v10 = sub_24F929638();
  v11 = MEMORY[0x277D21FB0];
  *(v0 + 120) = v10;
  *(v0 + 128) = v11;
  __swift_allocate_boxed_opaque_existential_1((v0 + 96));

  sub_24F929628();
  type metadata accessor for AppStoreLocalizerFactory(0);
  *(v0 + 240) = sub_24F92A938();

  __swift_destroy_boxed_opaque_existential_1((v0 + 96));
  v12 = swift_task_alloc();
  *(v0 + 248) = v12;
  *v12 = v0;
  v12[1] = sub_24ED3C094;
  v13 = *(v0 + 136);

  return MEMORY[0x282180668](v13);
}

uint64_t sub_24ED3C094()
{
  *(*v1 + 256) = v0;

  if (v0)
  {
    v2 = sub_24ED3C378;
  }

  else
  {
    v2 = sub_24ED3C1C4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24ED3C1C4()
{
  v1 = v0[23];
  v2 = v0[19];
  v3 = v0[20];

  (*(v3 + 8))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_24ED3C27C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24ED3C2F0()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24ED3C378()
{
  v1 = v0[23];
  v2 = v0[19];
  v3 = v0[20];

  (*(v3 + 8))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_24ED3C424@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v28 = a3;
  v29 = a4;
  v30 = a2;
  v34 = a5;
  v7 = sub_24F92A498();
  v27 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24F928078();
  MEMORY[0x28223BE20](v10 - 8);
  v11 = sub_24F929D48();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = v26 - v16;
  sub_24E615E00(a1, v33);
  sub_24F928088();
  result = sub_24F929D38();
  if (!v5)
  {
    v20 = v27;
    v19 = v28;
    v21 = v29;
    v26[1] = 0;
    sub_24E60169C(v30, &v31, &unk_27F22EC00, &qword_24F99A9E8);
    if (v32)
    {
      sub_24E612C80(&v31, v33);
    }

    else
    {
      (*(v20 + 16))(v9, v19, v7);
      v33[3] = sub_24F929518();
      v33[4] = MEMORY[0x277D21F40];
      __swift_allocate_boxed_opaque_existential_1(v33);
      sub_24F929508();
      if (v32)
      {
        sub_24E601704(&v31, &unk_27F22EC00, &qword_24F99A9E8);
      }
    }

    (*(v12 + 16))(v14, v17, v11);
    sub_24E615E00(v33, &v31);
    type metadata accessor for AppStoreLocalizerFactory(0);
    v22 = swift_allocObject();
    v23 = v22 + OBJC_IVAR____TtC12GameStoreKit24AppStoreLocalizerFactory_cachedDefaultLocalizer;
    *v23 = 0u;
    *(v23 + 16) = 0u;
    *(v23 + 32) = 0;
    v24 = OBJC_IVAR____TtC12GameStoreKit24AppStoreLocalizerFactory_localizerCache;
    v25 = sub_24E60EAE0(MEMORY[0x277D84F90]);
    (*(v12 + 8))(v17, v11);
    *(v22 + v24) = v25;
    (*(v12 + 32))(v22 + OBJC_IVAR____TtC12GameStoreKit24AppStoreLocalizerFactory_jetpackResourceBundle, v14, v11);
    sub_24E612C80(&v31, v22 + OBJC_IVAR____TtC12GameStoreKit24AppStoreLocalizerFactory_defaultLanguageSource);
    *(v22 + OBJC_IVAR____TtC12GameStoreKit24AppStoreLocalizerFactory_objectGraph) = v21;

    result = __swift_destroy_boxed_opaque_existential_1(v33);
    *v34 = v22;
  }

  return result;
}

uint64_t sub_24ED3C7A4(uint64_t a1, uint64_t a2)
{
  v2[23] = a1;
  v2[24] = a2;
  v3 = *(type metadata accessor for ASKBootstrapV2(0) - 8);
  v2[25] = v3;
  v2[26] = *(v3 + 64);
  v2[27] = swift_task_alloc();
  v4 = sub_24F92A498();
  v2[28] = v4;
  v2[29] = *(v4 - 8);
  v2[30] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24ED3C8C4, 0, 0);
}

uint64_t sub_24ED3C8C4()
{
  sub_24F928FD8();
  v0[31] = sub_24F928FB8();
  v1 = swift_task_alloc();
  v0[32] = v1;
  *v1 = v0;
  v1[1] = sub_24ED3C97C;
  v2 = v0[30];
  v3 = v0[28];

  return MEMORY[0x28217F228](v2, v3, v3);
}

uint64_t sub_24ED3C97C()
{
  v2 = *v1;
  *(v2 + 264) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24ED3D1E8, 0, 0);
  }

  else
  {
    v3 = type metadata accessor for ASKBagContract(0);
    v4 = swift_task_alloc();
    *(v2 + 272) = v4;
    *v4 = v2;
    v4[1] = sub_24ED3CB14;

    return MEMORY[0x28217F228](v2 + 176, v3, v3);
  }
}

uint64_t sub_24ED3CB14()
{
  *(*v1 + 280) = v0;

  if (v0)
  {
    v2 = sub_24ED3D260;
  }

  else
  {
    v2 = sub_24ED3CC28;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24ED3CC28()
{
  v0[36] = v0[22];
  sub_24F929928();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EBF8, &qword_24F99A9C0);
  v2 = swift_task_alloc();
  v0[37] = v2;
  *v2 = v0;
  v2[1] = sub_24ED3CCF8;

  return MEMORY[0x28217F228](v0 + 7, v1, v1);
}

uint64_t sub_24ED3CCF8()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_24ED3D2FC;
  }

  else
  {
    v2 = sub_24ED3CE0C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24ED3CE0C()
{
  v1 = *(v0 + 288);
  v3 = *(v0 + 208);
  v2 = *(v0 + 216);
  v4 = *(v0 + 192);
  v5 = *(v0 + 200);
  __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
  v6 = off_2861EE938[0];
  v7 = type metadata accessor for JSJetpackFetcher(0);
  v6(v7, &off_2861EE928);
  sub_24ED34B58(v4, v2);
  sub_24E615E00(v0 + 16, v0 + 96);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = (v3 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = swift_allocObject();
  sub_24ED352E4(v2, v10 + v8);
  sub_24E612C80((v0 + 96), v10 + v9);
  *(v10 + ((v9 + 47) & 0xFFFFFFFFFFFFFFF8)) = v1;
  v11 = sub_24F929638();
  v12 = MEMORY[0x277D21FB0];
  *(v0 + 160) = v11;
  *(v0 + 168) = v12;
  __swift_allocate_boxed_opaque_existential_1((v0 + 136));

  sub_24F929628();
  sub_24F929958();
  *(v0 + 312) = sub_24F92A938();

  __swift_destroy_boxed_opaque_existential_1((v0 + 136));
  v13 = swift_task_alloc();
  *(v0 + 320) = v13;
  *v13 = v0;
  v13[1] = sub_24ED3CFF8;
  v14 = *(v0 + 184);

  return MEMORY[0x282180668](v14);
}

uint64_t sub_24ED3CFF8()
{
  *(*v1 + 328) = v0;

  if (v0)
  {
    v2 = sub_24ED3D3AC;
  }

  else
  {
    v2 = sub_24ED3D128;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24ED3D128()
{
  v1 = v0[30];
  v2 = v0[28];
  v3 = v0[29];

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  (*(v3 + 8))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);

  v4 = v0[1];

  return v4();
}

uint64_t sub_24ED3D1E8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24ED3D260()
{
  v1 = v0[30];
  v2 = v0[28];
  v3 = v0[29];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_24ED3D2FC()
{
  v1 = v0[30];
  v2 = v0[28];
  v3 = v0[29];

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_24ED3D3AC()
{
  v1 = v0[30];
  v2 = v0[28];
  v3 = v0[29];

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  (*(v3 + 8))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);

  v4 = v0[1];

  return v4();
}

void sub_24ED3D464(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v30 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2156F0, &unk_24F969070);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v24 - v7;
  sub_24ED3D864(*a1, a1[1], v32);
  v28 = v32[2];
  v26 = v32[0];
  v27 = v32[3];
  v25 = v32[4];
  v29 = v32[5];
  sub_24E615E00(a2, v32);
  if (qword_27F2108E0 != -1)
  {
    swift_once();
  }

  sub_24F92A448();
  sub_24F92A408();
  v9 = *(v6 + 8);
  v9(v8, v5);
  if (qword_27F2108E8 != -1)
  {
    swift_once();
  }

  sub_24F92A448();
  sub_24F92A408();
  v9(v8, v5);

  sub_24F929918();
  sub_24F929908();

  v10 = v29;
  if (v29)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EC10, &unk_24F94D880);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_24F93DE60;
    *(inited + 32) = 0x746E6169726176;
    v12 = inited + 32;
    v13 = v25;
    *(inited + 40) = 0xE700000000000000;
    *(inited + 48) = v13;
    *(inited + 56) = v10;
    sub_24E6086DC(inited);
    swift_setDeallocating();
    sub_24E601704(v12, &qword_27F219F90, &qword_24F955020);
    sub_24F929948();
    v14 = [objc_opt_self() ams_sharedAccountStore];
    v15 = [v14 ams_localiTunesAccount];

    if (v15)
    {
      v16 = [v15 ams_storefront];

      if (v16)
      {
        v17 = sub_24F92B0D8();
        v19 = v18;

        v21 = sub_24F929938();
        if (*v20)
        {
          v22 = v20;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v31 = *v22;
          *v22 = 0x8000000000000000;
          sub_24E81D324(v17, v19, 0x6F726665726F7473, 0xEA0000000000746ELL, isUniquelyReferenced_nonNull_native);
          *v22 = v31;
        }

        else
        {
        }

        v21(v32, 0);
      }
    }
  }
}

uint64_t sub_24ED3D864@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = result;
  if (!a2)
  {
    v20 = 0;
    v21 = 0;
    v4 = 0xE900000000000029;
    v22 = 0x6E776F6E6B6E7528;
    v23 = result;
LABEL_18:
    *a3 = v22;
    a3[1] = v4;
    a3[2] = v3;
    a3[3] = v20;
    a3[4] = v23;
    a3[5] = v21;
    return result;
  }

  v4 = a2;
  v32 = a3;
  sub_24E600AEC();

  v5 = sub_24F92C618();
  v6 = *(v5 + 16);
  if (v6)
  {
    v30 = v3;
    v31 = v4;
    v33 = MEMORY[0x277D84F90];
    result = sub_24F4578E0(0, v6, 0);
    v7 = 0;
    v8 = v33;
    v9 = (v5 + 56);
    while (v7 < *(v5 + 16))
    {
      v10 = *(v9 - 3);
      v11 = *(v9 - 2);
      v12 = *(v9 - 1);
      v13 = *v9;

      v14 = MEMORY[0x253050B50](v10, v11, v12, v13);
      v16 = v15;

      v18 = *(v33 + 16);
      v17 = *(v33 + 24);
      if (v18 >= v17 >> 1)
      {
        result = sub_24F4578E0((v17 > 1), v18 + 1, 1);
      }

      ++v7;
      *(v33 + 16) = v18 + 1;
      v19 = v33 + 16 * v18;
      *(v19 + 32) = v14;
      *(v19 + 40) = v16;
      v9 += 4;
      if (v6 == v7)
      {

        v3 = v30;
        v4 = v31;
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

  v8 = MEMORY[0x277D84F90];
LABEL_11:
  v24 = *(v8 + 16);
  if (v24 < 3)
  {

    v20 = 0;
    v23 = 0;
    v21 = 0;
    v22 = v3;
    v3 = 0;
LABEL_17:
    a3 = v32;
    goto LABEL_18;
  }

  if (*(v8 + 16) < v24 - 2)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EC18, &qword_24F99AA08);
  sub_24E602068(&unk_27F22EC20, &qword_27F22EC18, &qword_24F99AA08, MEMORY[0x277D83FA0]);
  v22 = sub_24F92AF68();
  v4 = v25;

  v26 = *(v8 + 16);
  if (v24 - 2 >= v26)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v24 <= v26)
  {
    v27 = 16 * v24;
    v28 = (v8 + 16 * v24);
    v3 = *v28;
    v20 = v28[1];
    v29 = v8 + 32 + v27;
    v23 = *(v29 - 16);
    v21 = *(v29 - 8);

    goto LABEL_17;
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_24ED3DB38@<X0>(uint64_t *a1@<X8>)
{
  sub_24F928FD8();
  sub_24F928FB8();
  v2 = sub_24F92A068();
  v3 = MEMORY[0x277D22258];
  a1[3] = v2;
  a1[4] = v3;
  __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_24F92A058();
}

uint64_t sub_24ED3DB94@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for InitialBag(0);
  MEMORY[0x28223BE20](v4);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24F92A498();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F928FD8();
  sub_24F928FB8();
  sub_24F928F28();

  (*(v8 + 32))(v10, v6, v7);
  v11 = objc_opt_self();
  v12 = *(a1 + *(type metadata accessor for ASKBootstrapV2(0) + 40));
  v13 = [v11 ams:v12 configurationWithProcessInfo:sub_24F92A328() bag:?];
  swift_unknownObjectRelease();
  v14 = [objc_opt_self() minimalSessionUsing_];
  sub_24F928FB8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222250, &unk_24F969080);
  sub_24F928F28();

  v15 = [objc_allocWithZone(type metadata accessor for MediaAuthenticationProtocolHandler()) initWithTokenService_];
  swift_unknownObjectRelease();
  [v14 setProtocolHandler_];

  [v14 setResponseDecoder_];
  result = (*(v8 + 8))(v10, v7);
  *a2 = v14;
  return result;
}

uint64_t sub_24ED3DE20@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for InitialBag(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24F92A498();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F928FD8();
  sub_24F928FB8();
  sub_24F928F28();

  (*(v6 + 32))(v8, v4, v5);
  v9 = [objc_opt_self() defaultSessionConfiguration];
  [v9 setHTTPShouldUsePipelining_];
  [v9 setNetworkServiceType_];
  type metadata accessor for ArtworkLoaderURLSession();
  v10 = [swift_getObjCClassFromMetadata() minimalSessionUsing_];
  sub_24F2A6B24(v8);

  result = (*(v6 + 8))(v8, v5);
  *a1 = v10;
  return result;
}

uint64_t sub_24ED3E004@<X0>(void *a1@<X8>)
{
  v2 = sub_24F92A498();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F928FD8();
  sub_24F928FB8();
  sub_24F928F28();

  v6 = sub_24F92A328();
  (*(v3 + 8))(v5, v2);
  v7 = [objc_allocWithZone(MEMORY[0x277CEE498]) initWithBag_];
  result = swift_unknownObjectRelease();
  *a1 = v7;
  return result;
}

uint64_t sub_24ED3E12C@<X0>(uint64_t *a1@<X8>)
{
  v19 = a1;
  v1 = sub_24F92A498();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = v18 - v6;
  sub_24F928FD8();
  v18[1] = sub_24F928FB8();
  sub_24F928F28();
  v8 = *(v2 + 16);
  v8(v4, v7, v1);
  type metadata accessor for ASKBagContract(0);
  v9 = swift_allocObject();
  (*(v2 + 32))(v9 + OBJC_IVAR____TtC12GameStoreKit14ASKBagContract_bag, v4, v1);
  *(v9 + OBJC_IVAR____TtC12GameStoreKit14ASKBagContract_isOfflineBag) = 0;
  v10 = v9 + OBJC_IVAR____TtC12GameStoreKit14ASKBagContract_bagOfflinePolicy;
  *v10 = 0;
  *(v10 + 8) = 0;
  *(v10 + 16) = 1;
  sub_24F929E08();
  v8(v4, v7, v1);
  v20 = v9;
  v11 = MetricsTopicProvider.currentMetricsTopic.getter();
  v13 = v12;
  v14 = ASKBagContract.anonymousMetricsTopics.getter();
  v15 = sub_24F45D828(v14);

  MEMORY[0x25304F780](v4, v11, v13, v15);

  v16 = sub_24F929DE8();

  result = (*(v2 + 8))(v7, v1);
  *v19 = v16;
  return result;
}

void sub_24ED3E394(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v24 = a2;
  sub_24F928FD8();
  v3 = sub_24F928FB8();
  v4 = sub_24F929E08();
  v23[2] = v3;
  sub_24F928F28();
  v33[8] = v4;
  v33[9] = MEMORY[0x277D221A8];
  v33[5] = v30;
  v5 = type metadata accessor for ASKBootstrapV2(0);
  sub_24E60169C(a1 + *(v5 + 32), v34, &unk_27F22EAC8, &qword_24F99A860);
  v6 = *(a1 + *(v5 + 36));
  v23[1] = v30;
  if (v6)
  {

    sub_24F928FB8();
    v6();
  }

  else
  {
    v36 = 0;
    *&v34[40] = 0u;
    v35 = 0u;
  }

  v7 = MEMORY[0x277D84F90];
  for (i = 4; i != 19; i += 5)
  {
    sub_24E60169C(&v33[i + 1], &v30, &unk_27F22EAC8, &qword_24F99A860);
    v25[0] = v30;
    v25[1] = v31;
    v26 = v32;
    if (*(&v31 + 1))
    {
      sub_24E612C80(v25, &v27);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v33[0] = v7;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v7 = sub_24E6191F0(0, v7[2] + 1, 1, v7);
        v33[0] = v7;
      }

      v11 = v7[2];
      v10 = v7[3];
      if (v11 >= v10 >> 1)
      {
        v7 = sub_24E6191F0((v10 > 1), v11 + 1, 1, v7);
        v33[0] = v7;
      }

      v12 = v28;
      v13 = v29;
      v14 = __swift_mutable_project_boxed_opaque_existential_1(&v27, v28);
      v15 = MEMORY[0x28223BE20](v14);
      v17 = v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v18 + 16))(v17, v15);
      sub_24ED43E20(v11, v17, v33, v12, v13);
      __swift_destroy_boxed_opaque_existential_1(&v27);
    }

    else
    {
      sub_24E601704(v25, &unk_27F22EAC8, &qword_24F99A860);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EAC8, &qword_24F99A860);
  swift_arrayDestroy();
  if (v7[2] == 1)
  {
    sub_24E615E00((v7 + 4), &v27);

    sub_24E612C80(&v27, &v30);
    sub_24E612C80(&v30, v24);
  }

  else
  {
    v19 = sub_24F92A248();
    swift_allocObject();
    v20 = sub_24F92A238();
    v21 = MEMORY[0x277D222E8];
    v22 = v24;
    v24[3] = v19;
    v22[4] = v21;

    *v22 = v20;
  }
}

void sub_24ED3E718(uint64_t *a2@<X8>)
{
  v3 = sub_24F92A498();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F928FD8();
  sub_24F928FB8();
  type metadata accessor for ASKBootstrapV2(0);
  sub_24F928F28();
  v7 = sub_24F92A328();
  (*(v4 + 8))(v6, v3);
  v8 = objc_allocWithZone(MEMORY[0x277CEE578]);
  v9 = sub_24F92B098();
  v10 = [v8 initWithClientIdentifier:v9 bag:v7];

  swift_unknownObjectRelease();
  sub_24F92AB98();
  sub_24F928F28();
  v11 = v14[1];
  v12 = objc_allocWithZone(type metadata accessor for PersonalizedMediaTokenService());
  v13 = sub_24EECF800(v10, v11);

  *a2 = v13;
}

void sub_24ED3E8C8(void *a1@<X8>)
{
  sub_24F928FD8();
  sub_24F928FB8();
  sub_24E69A5C4(0, &qword_27F221568, 0x277CB8F48);
  sub_24F928F28();

  type metadata accessor for RestrictionsFetcher();
  v2 = swift_allocObject();
  *(v2 + 16) = v4;
  type metadata accessor for Restrictions();
  swift_allocObject();
  v3 = sub_24E857D9C(v2);

  *a1 = v3;
}

uint64_t sub_24ED3E988@<X0>(uint64_t *a1@<X8>)
{
  sub_24F928FD8();
  sub_24F928FB8();
  type metadata accessor for ArtworkLoaderURLSession();
  sub_24F928F28();

  v2 = [v4 session];

  type metadata accessor for ThreeDimensionalMediaArtworkImageDownloader();
  result = swift_allocObject();
  *(result + 16) = v2;
  *a1 = result;
  return result;
}

uint64_t sub_24ED3EA28(uint64_t a1, uint64_t a2)
{
  *(v2 + 176) = a1;
  *(v2 + 184) = a2;
  return MEMORY[0x2822009F8](sub_24ED3EA48, 0, 0);
}

uint64_t sub_24ED3EA48()
{
  sub_24F928FD8();
  *(v0 + 192) = sub_24F928FB8();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EBF8, &qword_24F99A9C0);
  v2 = swift_task_alloc();
  *(v0 + 200) = v2;
  *v2 = v0;
  v2[1] = sub_24ED3EB18;

  return MEMORY[0x28217F228](v0 + 16, v1, v1);
}

uint64_t sub_24ED3EB18()
{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = sub_24ED3F25C;
  }

  else
  {
    v2 = sub_24ED3EC2C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24ED3EC2C()
{
  v1 = *(v0 + 184);
  sub_24E615E00(v0 + 16, v0 + 56);
  v2 = *(v0 + 80);
  v3 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 56, v2);
  v4 = *(v2 - 8);
  v5 = swift_task_alloc();
  (*(v4 + 16))(v5, v3, v2);
  v6 = *v5;
  v7 = type metadata accessor for JSJetpackFetcher(0);
  *(v0 + 120) = v7;
  *(v0 + 128) = &off_2861EE928;
  *(v0 + 96) = v6;
  type metadata accessor for JSPackageProvisioner();
  v8 = swift_allocObject();
  *(v0 + 216) = v8;
  v9 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 96, v7);
  v10 = *(v7 - 8);
  v11 = swift_task_alloc();
  (*(v10 + 16))(v11, v9, v7);
  v12 = *v11;
  *(v0 + 160) = v7;
  *(v0 + 168) = &off_2861EE928;
  *(v0 + 136) = v12;
  sub_24E612C80((v0 + 136), v8 + 16);
  __swift_destroy_boxed_opaque_existential_1((v0 + 96));

  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  v13 = (v1 + *(type metadata accessor for ASKBootstrapV2(0) + 44));
  v17 = (*v13 + **v13);
  v14 = swift_task_alloc();
  *(v0 + 224) = v14;
  *v14 = v0;
  v14[1] = sub_24ED3EED0;
  v15 = *(v0 + 192);

  return v17(v15);
}

uint64_t sub_24ED3EED0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 232) = v1;

  if (v1)
  {
    v5 = sub_24ED3F2C0;
  }

  else
  {
    *(v4 + 240) = a1;
    v5 = sub_24ED3EFF8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_24ED3EFF8()
{
  v0[31] = sub_24E93C118(v0[24], v0[30]);

  v1 = swift_task_alloc();
  v0[32] = v1;
  *v1 = v0;
  v1[1] = sub_24ED3F0B4;
  v2 = v0[22];

  return MEMORY[0x282180668](v2);
}

uint64_t sub_24ED3F0B4()
{
  *(*v1 + 264) = v0;

  if (v0)
  {
    v2 = sub_24ED3F338;
  }

  else
  {
    v2 = sub_24ED3F1E4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24ED3F1E4()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24ED3F25C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24ED3F2C0()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24ED3F338()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24ED3F3B0(uint64_t a1, uint64_t a2)
{
  v2[22] = a1;
  v2[23] = a2;
  v3 = sub_24F922028();
  v2[24] = v3;
  v2[25] = *(v3 - 8);
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24ED3F47C, 0, 0);
}

uint64_t sub_24ED3F47C()
{
  if (qword_27F211060 != -1)
  {
    swift_once();
  }

  v1 = sub_24F922058();
  __swift_project_value_buffer(v1, qword_27F23DAC0);
  sub_24F922038();
  sub_24F921FF8();
  v2 = sub_24F922038();
  v3 = sub_24F92C058();
  if (sub_24F92C478())
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = sub_24F922008();
    _os_signpost_emit_with_name_impl(&dword_24E5DD000, v2, v3, v5, "JSService", "", v4, 2u);
    MEMORY[0x2530542D0](v4, -1, -1);
  }

  v6 = v0[26];
  v7 = v0[27];
  v8 = v0[24];
  v9 = v0[25];

  (*(v9 + 16))(v6, v7, v8);
  sub_24F922098();
  swift_allocObject();
  v0[28] = sub_24F922088();
  (*(v9 + 8))(v7, v8);
  v0[29] = sub_24F928FD8();
  v0[30] = sub_24F928FB8();
  v10 = swift_task_alloc();
  v0[31] = v10;
  *v10 = v0;
  v10[1] = sub_24ED3F68C;

  return MEMORY[0x28217F228](v0 + 2, &type metadata for ASKPrerequisites, &type metadata for ASKPrerequisites);
}

uint64_t sub_24ED3F68C()
{
  *(*v1 + 256) = v0;

  if (v0)
  {
    v2 = sub_24ED3F8F8;
  }

  else
  {

    v2 = sub_24ED3F7A8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24ED3F7A8()
{
  v11 = v0;
  v1 = *(v0 + 256);
  v2 = *(v0 + 184);
  sub_24ED44718(v0 + 16, v0 + 96);
  v3 = sub_24F928FB8();
  v10[0] = *v2;
  type metadata accessor for JSService();
  swift_allocObject();
  v4 = sub_24F29517C((v0 + 96), v3, v10);
  if (v1)
  {
    sub_24ED44774(v0 + 16);
    sub_24ED3F994(*(v0 + 224), "JSService");
  }

  else
  {
    v6 = v4;
    v7 = *(v0 + 224);
    v8 = *(v0 + 176);
    sub_24ED44774(v0 + 16);
    *v8 = v6;
    sub_24ED3F994(v7, "JSService");
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_24ED3F8F8()
{

  sub_24ED3F994(*(v0 + 224), "JSService");

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24ED3F994(uint64_t a1, const char *a2)
{
  v18 = a2;
  v2 = sub_24F922068();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24F922028();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F211060 != -1)
  {
    swift_once();
  }

  v10 = sub_24F922058();
  __swift_project_value_buffer(v10, qword_27F23DAC0);
  v11 = sub_24F922038();
  sub_24F922078();
  v12 = sub_24F92C048();
  if (sub_24F92C478())
  {

    sub_24F9220A8();

    if ((*(v3 + 88))(v5, v2) == *MEMORY[0x277D85B00])
    {
      v13 = "[Error] Interval already ended";
    }

    else
    {
      (*(v3 + 8))(v5, v2);
      v13 = "";
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = sub_24F922008();
    _os_signpost_emit_with_name_impl(&dword_24E5DD000, v11, v12, v15, v18, v13, v14, 2u);
    MEMORY[0x2530542D0](v14, -1, -1);
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_24ED3FC44()
{
  sub_24F928FD8();
  v0[9] = sub_24F928FB8();
  v1 = type metadata accessor for JSService();
  v0[10] = v1;
  v2 = swift_task_alloc();
  v0[11] = v2;
  *v2 = v0;
  v2[1] = sub_24ED3FD0C;

  return MEMORY[0x28217F228](v0 + 7, v1, v1);
}

uint64_t sub_24ED3FD0C()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_24ED3FF6C;
  }

  else
  {

    v2 = sub_24ED3FE28;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24ED3FE28()
{
  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[8];
  v0[5] = v1;
  v0[6] = &off_286215198;
  v0[2] = v2;
  type metadata accessor for JSIntentDispatcher();
  v4 = swift_allocObject();
  v5 = __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v1);
  v6 = *(v1 - 8);
  v7 = swift_task_alloc();
  (*(v6 + 16))(v7, v5, v1);
  v8 = *v7;
  v4[5] = v1;
  v4[6] = &off_286215198;
  v4[2] = v8;
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  *v3 = v4;
  v9 = v0[1];

  return v9();
}

uint64_t sub_24ED3FF6C()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_24ED3FFD0(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for ASKBootstrapV2(0) + 28));
  v4 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_24F928FD8();
  sub_24F928FB8();
  v5 = (*(v4 + 8))();
  v7 = v6;

  *a2 = v5;
  a2[1] = v7;
}

void *sub_24ED4006C@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for LegacyAppStoreInstallStateMonitor();
  swift_allocObject();
  result = sub_24ECF8B58();
  a1[3] = v2;
  a1[4] = &off_2861EEB70;
  *a1 = result;
  return result;
}

uint64_t sub_24ED400E4()
{
  sub_24F928FD8();
  *(v0 + 32) = sub_24F928FB8();
  v1 = type metadata accessor for JSIntentDispatcher();
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_24ED401A8;

  return MEMORY[0x28217F228](v0 + 16, v1, v1);
}

uint64_t sub_24ED401A8()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_24EB7F064;
  }

  else
  {
    v2 = sub_24ED402BC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24ED402BC()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  type metadata accessor for Commerce();
  swift_allocObject();
  v4 = sub_24F13BA90(v1, v3);

  *v2 = v4;
  v5 = v0[1];

  return v5();
}

void sub_24ED40360(uint64_t a1@<X8>)
{
  sub_24F928FD8();
  sub_24F928FB8();
  type metadata accessor for AppleSilicon();
  sub_24F928F28();

  v2 = OBJC_IVAR____TtC12GameStoreKit12AppleSilicon_isSupportEnabled;
  swift_beginAccess();
  v3 = v4[v2];
  *(a1 + 24) = &type metadata for PurchaseHistory;
  *(a1 + 32) = &protocol witness table for PurchaseHistory;
  PurchaseHistory.init(isAppleSiliconSupportEnabled:)(v3, a1);
}

void sub_24ED40408(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - v3;
  sub_24F928FD8();
  sub_24F928FB8();
  sub_24E69A5C4(0, &qword_27F221568, 0x277CB8F48);
  sub_24F928F28();
  v5 = v12;
  sub_24F928FB8();
  type metadata accessor for ASKBagContract(0);
  sub_24F928F28();

  v6 = v12;
  type metadata accessor for MetricsIdStore();
  swift_allocObject();
  v7 = v5;

  v8 = sub_24EF78FD0(v7, v6);

  sub_24F92B838();
  v9 = sub_24F92B858();
  (*(*(v9 - 8) + 56))(v4, 0, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v8;

  sub_24F1D4328(0, 0, v4, &unk_24F99A9B8, v10);

  *a1 = v8;
}

void sub_24ED405FC(void *a1@<X8>)
{
  sub_24F928FD8();
  sub_24F928FB8();
  type metadata accessor for ASKBagContract(0);
  sub_24F928F28();

  v2 = type metadata accessor for AppleSilicon();
  v3 = objc_allocWithZone(v2);
  v3[OBJC_IVAR____TtC12GameStoreKit12AppleSilicon_isSupportEnabled] = 0;
  v4 = [objc_allocWithZone(MEMORY[0x277CCA930]) initWithCondition_];
  *&v3[OBJC_IVAR____TtC12GameStoreKit12AppleSilicon_rosettaAvailabilityConditionLock] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EBF0, &qword_24F99A9B0);
  swift_allocObject();
  *&v3[OBJC_IVAR____TtC12GameStoreKit12AppleSilicon_isRosettaAvailableBox] = sub_24EA4ED84(0);
  v6.receiver = v3;
  v6.super_class = v2;
  v5 = objc_msgSendSuper2(&v6, sel_init);
  sub_24F07C3A0();

  *a1 = v5;
}

void sub_24ED40720(void *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EBE0, &qword_24F95E500);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - v4;
  sub_24F928FD8();
  sub_24F928FB8();
  type metadata accessor for ASKBagContract(0);
  sub_24F928F28();

  if (qword_27F210A10 != -1)
  {
    swift_once();
  }

  sub_24F92A398();
  sub_24F92A408();
  (*(v3 + 8))(v5, v2);
  v6 = v13;
  v7 = type metadata accessor for GameCenter();
  v8 = objc_allocWithZone(v7);
  type metadata accessor for GameCenterCache();
  v9 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F235880, &qword_24F99A9A8);
  *(v9 + 16) = sub_24F92A9E8();
  *(v9 + 24) = 0;
  *(v9 + 32) = v6;
  *&v8[OBJC_IVAR____TtC12GameStoreKit10GameCenter_cache] = v9;
  v12.receiver = v8;
  v12.super_class = v7;
  v10 = objc_msgSendSuper2(&v12, sel_init);

  *a1 = v10;
}

void *sub_24ED40928@<X0>(void *a1@<X8>)
{
  sub_24F928FD8();
  sub_24F928FB8();
  type metadata accessor for ASKBagContract(0);
  sub_24F928F28();

  v2 = v8;
  v3 = type metadata accessor for GameCenterFriendRequestCoordinator();
  v4 = objc_allocWithZone(v3);
  v5 = OBJC_IVAR____TtC12GameStoreKit34GameCenterFriendRequestCoordinator_onFriendRequestCountDidUpdate;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226D0, &unk_24F989C70);
  swift_allocObject();
  *&v4[v5] = sub_24F92ADA8();
  *&v4[OBJC_IVAR____TtC12GameStoreKit34GameCenterFriendRequestCoordinator_currentFriendRequestCount] = 0;
  *&v4[OBJC_IVAR____TtC12GameStoreKit34GameCenterFriendRequestCoordinator_bag] = v2;
  v7.receiver = v4;
  v7.super_class = v3;
  result = objc_msgSendSuper2(&v7, sel_init);
  *a1 = result;
  return result;
}

void sub_24ED40A14(void *a1@<X8>)
{
  sub_24F928FD8();
  sub_24F928FB8();
  sub_24E69A5C4(0, &qword_27F221568, 0x277CB8F48);
  sub_24F928F28();
  v2 = v10;
  type metadata accessor for ASKBagContract(0);
  sub_24F928F28();
  v3 = v10;
  v4 = type metadata accessor for AppStoreOnDeviceRecommendationsManager();
  v5 = objc_allocWithZone(v4);
  v6 = OBJC_IVAR____TtC12GameStoreKit38AppStoreOnDeviceRecommendationsManager_amsEngagement;
  *&v5[v6] = [objc_allocWithZone(MEMORY[0x277CEE498]) init];
  *&v5[OBJC_IVAR____TtC12GameStoreKit38AppStoreOnDeviceRecommendationsManager_activeStoreAccount] = 0;
  *&v5[OBJC_IVAR____TtC12GameStoreKit38AppStoreOnDeviceRecommendationsManager_accountStore] = v2;
  *&v5[OBJC_IVAR____TtC12GameStoreKit38AppStoreOnDeviceRecommendationsManager_bag] = v3;
  v9.receiver = v5;
  v9.super_class = v4;
  v7 = v2;

  v8 = objc_msgSendSuper2(&v9, sel_init);

  *a1 = v8;
}

void *sub_24ED40B48@<X0>(void *a1@<X8>)
{
  sub_24F928FD8();
  sub_24F928FB8();
  type metadata accessor for ASKBagContract(0);
  sub_24F928F28();

  v2 = v10;
  v3 = type metadata accessor for OnDeviceSearchHistoryManager();
  v4 = objc_allocWithZone(v3);
  v5 = OBJC_IVAR____TtC12GameStoreKit28OnDeviceSearchHistoryManager_defaults;
  *&v4[v5] = [objc_opt_self() standardUserDefaults];
  v6 = &v4[OBJC_IVAR____TtC12GameStoreKit28OnDeviceSearchHistoryManager_searchHistoryDefaultsKey];
  strcpy(&v4[OBJC_IVAR____TtC12GameStoreKit28OnDeviceSearchHistoryManager_searchHistoryDefaultsKey], "searchHistory");
  *(v6 + 7) = -4864;
  *&v4[OBJC_IVAR____TtC12GameStoreKit28OnDeviceSearchHistoryManager_maxAllowed] = 30;
  v7 = OBJC_IVAR____TtC12GameStoreKit28OnDeviceSearchHistoryManager_onChange;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EBD0, &qword_24F9C0540);
  swift_allocObject();
  *&v4[v7] = sub_24F92ADA8();
  *&v4[OBJC_IVAR____TtC12GameStoreKit28OnDeviceSearchHistoryManager_bag] = v2;
  v9.receiver = v4;
  v9.super_class = v3;
  result = objc_msgSendSuper2(&v9, sel_init);
  *a1 = result;
  return result;
}

void sub_24ED40C90(void *a1@<X8>)
{
  sub_24F928FD8();
  sub_24F928FB8();
  sub_24E69A5C4(0, &qword_27F221568, 0x277CB8F48);
  sub_24F928F28();
  type metadata accessor for ASKBagContract(0);
  sub_24F928F28();
  v2 = objc_allocWithZone(type metadata accessor for OnDevicePersonalizationDataManager());
  v3 = OnDevicePersonalizationDataManager.init(accountStore:bag:)(v4, v4);

  *a1 = v3;
}

uint64_t sub_24ED40D48@<X0>(void *a1@<X8>)
{
  type metadata accessor for NetworkActivity();
  v2 = swift_allocObject();
  v2[2] = [objc_allocWithZone(MEMORY[0x277D225F0]) init];
  v2[4] = 0;
  swift_unknownObjectWeakInit();
  v3 = sub_24E69A5C4(0, &qword_27F222300, 0x277D85C78);
  result = sub_24F92BEF8();
  v5 = MEMORY[0x277D225C0];
  v2[8] = v3;
  v2[9] = v5;
  v2[5] = result;
  v2[10] = 0;
  *a1 = v2;
  return result;
}

uint64_t sub_24ED40DEC@<X0>(uint64_t a1@<X8>)
{
  v18 = a1;
  v2 = sub_24F929F48();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24F92A498();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v17 - v11;
  sub_24F928FD8();
  v13 = sub_24F928FB8();
  sub_24F928F28();
  type metadata accessor for ASKBagContract(0);
  sub_24F928F28();
  v17[1] = v19;
  (*(v7 + 16))(v9, v12, v6);
  v14 = [objc_opt_self() ams_sharedAccountStore];
  v20 = sub_24E69A5C4(0, &qword_27F221568, 0x277CB8F48);
  v21 = MEMORY[0x277D225B8];
  v19 = v14;
  v15 = [objc_opt_self() mainBundle];
  sub_24F929F38();
  (*(v3 + 16))(v18, v5, v2);
  sub_24ECCF650(v13);

  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v12, v6);
}

unint64_t sub_24ED41094@<X0>(uint64_t *a1@<X8>)
{
  sub_24F928FD8();
  v2 = sub_24F928FB8();
  type metadata accessor for JSIntentDispatcher();
  sub_24F928F28();
  a1[3] = &type metadata for JSMetricsEventLinter;
  result = sub_24ED44258();
  a1[4] = result;
  *a1 = v2;
  a1[1] = v4;
  return result;
}

uint64_t sub_24ED41108@<X0>(uint64_t a1@<X8>)
{
  v35 = a1;
  v34 = sub_24F929F48();
  v36 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v33 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_24F9290F8();
  v37 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v30 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v31 = &v28 - v5;
  v6 = sub_24F92A498();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v28 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v28 - v14;
  sub_24F928FD8();
  sub_24F928FB8();
  sub_24F928F28();
  v16 = *(v7 + 16);
  v29 = v15;
  v16(v12, v15, v6);
  type metadata accessor for ASKBagContract(0);
  v17 = swift_allocObject();
  (*(v7 + 32))(v17 + OBJC_IVAR____TtC12GameStoreKit14ASKBagContract_bag, v12, v6);
  v18 = v17 + OBJC_IVAR____TtC12GameStoreKit14ASKBagContract_bagOfflinePolicy;
  *v18 = 0;
  *(v18 + 8) = 0;
  *(v18 + 16) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EBB0, &qword_24F99A970);
  sub_24F928F28();
  v16(v9, v15, v6);
  sub_24E615E00(v39, v38);
  v19 = ASKBagContract.anonymousMetricsTopics.getter();
  sub_24F45D828(v19);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222260, &unk_24F93B540);
  sub_24F928F28();
  v20 = v30;
  sub_24F9290E8();
  sub_24ED44204();
  v21 = v31;
  sub_24F9290D8();
  v22 = *(v37 + 8);
  v37 += 8;
  v23 = v32;
  v22(v20, v32);
  v25 = v33;
  v24 = v34;
  sub_24F928F28();
  sub_24F9290C8();
  swift_setDeallocating();
  v26 = *(v7 + 8);
  v26(v17 + OBJC_IVAR____TtC12GameStoreKit14ASKBagContract_bag, v6);
  swift_deallocClassInstance();

  (*(v36 + 8))(v25, v24);
  v22(v21, v23);
  __swift_destroy_boxed_opaque_existential_1(v39);
  return (v26)(v29, v6);
}

uint64_t sub_24ED415A0()
{
  v0 = sub_24F9290F8();
  MEMORY[0x28223BE20](v0);
  sub_24F928FD8();
  sub_24F928FB8();
  sub_24F928F28();

  return sub_24F929118();
}

uint64_t sub_24ED41650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  *(v6 + 240) = a3;
  *(v6 + 248) = a4;
  *(v6 + 224) = a5;
  *(v6 + 232) = a6;
  *(v6 + 208) = a1;
  *(v6 + 216) = a2;
  v7 = sub_24F92AAE8();
  *(v6 + 256) = v7;
  *(v6 + 264) = *(v7 - 8);
  *(v6 + 272) = swift_task_alloc();
  *(v6 + 280) = swift_task_alloc();
  sub_24F921FA8();
  *(v6 + 288) = swift_task_alloc();
  sub_24F921F58();
  *(v6 + 296) = swift_task_alloc();
  sub_24F921F88();
  *(v6 + 304) = swift_task_alloc();
  v8 = sub_24F921FC8();
  *(v6 + 312) = v8;
  *(v6 + 320) = *(v8 - 8);
  *(v6 + 328) = swift_task_alloc();
  v9 = sub_24F92A498();
  *(v6 + 336) = v9;
  *(v6 + 344) = *(v9 - 8);
  *(v6 + 352) = swift_task_alloc();
  sub_24F928418();
  *(v6 + 360) = swift_task_alloc();
  *(v6 + 368) = swift_task_alloc();
  *(v6 + 376) = swift_task_alloc();
  *(v6 + 384) = swift_task_alloc();
  v10 = type metadata accessor for ASKBootstrapV2(0);
  *(v6 + 392) = v10;
  v11 = *(v10 - 8);
  *(v6 + 400) = v11;
  *(v6 + 408) = *(v11 + 64);
  *(v6 + 416) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  *(v6 + 424) = swift_task_alloc();
  v12 = sub_24F91F648();
  *(v6 + 432) = v12;
  *(v6 + 440) = *(v12 - 8);
  *(v6 + 448) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30, &qword_24F939880);
  *(v6 + 456) = swift_task_alloc();
  *(v6 + 464) = swift_task_alloc();
  *(v6 + 472) = swift_task_alloc();
  *(v6 + 480) = swift_task_alloc();
  *(v6 + 488) = swift_task_alloc();
  *(v6 + 496) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24ED41A1C, 0, 0);
}

uint64_t sub_24ED41A1C()
{
  v1 = v0;
  if (sub_24F92A488())
  {
    v2 = [sub_24F92A328() expirationDate];
    swift_unknownObjectRelease();
    if (v2)
    {
      sub_24F91F608();

      v3 = 0;
    }

    else
    {
      v3 = 1;
    }

    v10 = *(v0 + 61);
    v11 = *(v0 + 62);
    v12 = *(v0 + 54);
    v13 = *(v0 + 55);
    (*(*(v1 + 55) + 56))(*(v1 + 62), v3, 1, *(v1 + 54));
    sub_24E60169C(v11, v10, &unk_27F22EC30, &qword_24F939880);
    v14 = *(v13 + 48);
    *(v1 + 63) = v14;
    *(v1 + 64) = (v13 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    v15 = v14(v10, 1, v12);
    v17 = *(v1 + 61);
    v16 = *(v1 + 62);
    if (v15 == 1)
    {
      sub_24E601704(*(v1 + 62), &unk_27F22EC30, &qword_24F939880);
      sub_24E601704(v17, &unk_27F22EC30, &qword_24F939880);
LABEL_21:
      if (qword_27F210570 != -1)
      {
        swift_once();
      }

      v45 = *(v1 + 40);
      v44 = *(v1 + 41);
      v55 = *(v1 + 39);
      v46 = v1[28];
      *(v1 + 65) = __swift_project_value_buffer(*(v1 + 32), qword_27F39C3B0);
      *(v1 + 66) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
      v47 = *(sub_24F928468() - 8);
      v1[67] = *(v47 + 72);
      *(v1 + 142) = *(v47 + 80);
      *(swift_allocObject() + 16) = xmmword_24F93DE60;
      sub_24F928408();
      sub_24F9283F8();
      v48 = COERCE_DOUBLE(sub_24ECA1F58());
      if (v49)
      {
        v48 = v46;
      }

      *(v1 + 5) = MEMORY[0x277D839F8];
      v1[2] = v48;
      sub_24F9283D8();
      sub_24E601704((v1 + 2), &qword_27F2129B0, &unk_24F945320);
      sub_24F9283F8();
      sub_24F928428();
      sub_24F92A588();

      sub_24F921F68();
      sub_24F921F48();
      sub_24F921F98();
      sub_24F921FB8();
      *(v1 + 68) = sub_24F92A338();
      (*(v45 + 8))(v44, v55);
      v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224F78, &qword_24F974A28);
      v51 = sub_24E602068(&qword_27F22EC40, &qword_27F224F78, &qword_24F974A28, MEMORY[0x277D224B8]);
      v52 = swift_task_alloc();
      *(v1 + 69) = v52;
      *v52 = v1;
      v52[1] = sub_24ED42450;
      v53 = *(v1 + 44);

      return MEMORY[0x282180360](v53, v50, v51);
    }

    v19 = *(v1 + 55);
    v18 = *(v1 + 56);
    v20 = *(v1 + 54);
    v21 = v1[28];
    (*(v19 + 32))(v18, *(v1 + 61), v20);
    sub_24F91F5C8();
    v23 = v22;
    *&v24 = COERCE_DOUBLE(sub_24ECA1F58());
    v26 = v25;
    (*(v19 + 8))(v18, v20);
    sub_24E601704(v16, &unk_27F22EC30, &qword_24F939880);
    v27 = *&v24;
    if (v26)
    {
      v27 = v21;
    }

    if (v27 <= -v23)
    {
      goto LABEL_21;
    }

    v28 = *(v1 + 52);
    v29 = *(v1 + 53);
    v31 = *(v1 + 50);
    v30 = *(v1 + 51);
    v32 = *(v1 + 30);
    v33 = *(v1 + 31);
    v34 = sub_24F92B858();
    (*(*(v34 - 8) + 56))(v29, 1, 1, v34);
    sub_24ED34B58(v32, v28);
    v35 = (*(v31 + 80) + 32) & ~*(v31 + 80);
    v36 = swift_allocObject();
    *(v36 + 16) = 0;
    *(v36 + 24) = 0;
    sub_24ED352E4(v28, v36 + v35);
    *(v36 + ((v30 + v35 + 7) & 0xFFFFFFFFFFFFFFF8)) = v33;
    v37 = v33;
    sub_24F1F2908(0, 0, v29, &unk_24F99AA50, v36);

    sub_24E601704(v29, &unk_27F21B570, &qword_24F93B020);
    if (qword_27F210570 != -1)
    {
      swift_once();
    }

    v38 = *(v1 + 43);
    v54 = *(v1 + 42);
    v39 = v1[28];
    v41 = *(v1 + 26);
    v40 = *(v1 + 27);
    __swift_project_value_buffer(*(v1 + 32), qword_27F39C3B0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    sub_24F928408();
    sub_24F9283F8();
    v42 = COERCE_DOUBLE(sub_24ECA1F58());
    if (v43)
    {
      v42 = v39;
    }

    *(v1 + 21) = MEMORY[0x277D839F8];
    v1[18] = v42;
    sub_24F9283D8();
    sub_24E601704((v1 + 18), &qword_27F2129B0, &unk_24F945320);
    sub_24F9283F8();
    sub_24F928428();
    sub_24F92A588();

    (*(v38 + 16))(v41, v40, v54);
  }

  else
  {
    if (qword_27F210570 != -1)
    {
      swift_once();
    }

    v4 = *(v0 + 42);
    v5 = *(v0 + 43);
    v7 = *(v1 + 26);
    v6 = *(v1 + 27);
    __swift_project_value_buffer(*(v1 + 32), qword_27F39C3B0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    sub_24F9283A8();
    sub_24F92A588();

    (*(v5 + 16))(v7, v6, v4);
  }

  *(*(v1 + 26) + *(type metadata accessor for InitialBag(0) + 20)) = 0;

  v8 = *(v1 + 1);

  return v8();
}

uint64_t sub_24ED42450()
{
  *(*v1 + 560) = v0;

  if (v0)
  {
    v2 = sub_24ED42920;
  }

  else
  {
    v2 = sub_24ED42580;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24ED42580()
{
  (*(*(v0 + 264) + 16))(*(v0 + 280), *(v0 + 520), *(v0 + 256));
  *(swift_allocObject() + 16) = xmmword_24F93DE60;
  v1 = 1;
  sub_24F928408();
  sub_24F9283F8();
  v2 = [sub_24F92A328() expirationDate];
  swift_unknownObjectRelease();
  if (v2)
  {
    sub_24F91F608();

    v1 = 0;
  }

  v3 = *(v0 + 504);
  v5 = *(v0 + 472);
  v4 = *(v0 + 480);
  v6 = *(v0 + 432);
  (*(*(v0 + 440) + 56))(v5, v1, 1, v6);
  sub_24E6009C8(v5, v4, &unk_27F22EC30, &qword_24F939880);
  v7 = v3(v4, 1, v6);
  v8 = *(v0 + 480);
  if (v7 == 1)
  {
    sub_24E601704(*(v0 + 480), &unk_27F22EC30, &qword_24F939880);
    *(v0 + 112) = 0u;
    *(v0 + 128) = 0u;
  }

  else
  {
    v9 = *(v0 + 432);
    v10 = *(v0 + 440);
    *(v0 + 136) = v9;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 112));
    (*(v10 + 32))(boxed_opaque_existential_1, v8, v9);
  }

  v13 = *(v0 + 344);
  v12 = *(v0 + 352);
  v14 = *(v0 + 336);
  v15 = *(v0 + 280);
  v16 = *(v0 + 256);
  v17 = *(v0 + 264);
  v18 = *(v0 + 208);
  sub_24F9283D8();
  sub_24E601704(v0 + 112, &qword_27F2129B0, &unk_24F945320);
  sub_24F9283F8();
  sub_24F928428();
  sub_24F92A588();

  (*(v17 + 8))(v15, v16);
  (*(v13 + 32))(v18, v12, v14);
  *(*(v0 + 208) + *(type metadata accessor for InitialBag(0) + 20)) = 0;

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_24ED42920()
{
  (*(*(v0 + 264) + 16))(*(v0 + 272), *(v0 + 520), *(v0 + 256));
  *(swift_allocObject() + 16) = xmmword_24F93DE60;
  sub_24F928408();
  sub_24F9283F8();
  v1 = [sub_24F92A328() expirationDate];
  swift_unknownObjectRelease();
  if (v1)
  {
    sub_24F91F608();

    v2 = 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = *(v0 + 504);
  v5 = *(v0 + 456);
  v4 = *(v0 + 464);
  v6 = *(v0 + 432);
  (*(*(v0 + 440) + 56))(v5, v2, 1, v6);
  sub_24E6009C8(v5, v4, &unk_27F22EC30, &qword_24F939880);
  v7 = v3(v4, 1, v6);
  v8 = *(v0 + 464);
  if (v7 == 1)
  {
    sub_24E601704(*(v0 + 464), &unk_27F22EC30, &qword_24F939880);
    *(v0 + 48) = 0u;
    *(v0 + 64) = 0u;
  }

  else
  {
    v10 = *(v0 + 432);
    v9 = *(v0 + 440);
    *(v0 + 72) = v10;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 48));
    (*(v9 + 32))(boxed_opaque_existential_1, v8, v10);
  }

  v12 = *(v0 + 560);
  v13 = *(v0 + 344);
  v14 = *(v0 + 264);
  v15 = *(v0 + 272);
  v16 = *(v0 + 256);
  v23 = *(v0 + 216);
  v24 = *(v0 + 336);
  v22 = *(v0 + 208);
  sub_24F9283D8();
  sub_24E601704(v0 + 48, &qword_27F2129B0, &unk_24F945320);
  sub_24F9283F8();
  swift_getErrorValue();
  v17 = *(v0 + 176);
  v18 = *(v0 + 184);
  *(v0 + 104) = v18;
  v19 = __swift_allocate_boxed_opaque_existential_1((v0 + 80));
  (*(*(v18 - 8) + 16))(v19, v17, v18);
  sub_24F9283D8();
  sub_24E601704(v0 + 80, &qword_27F2129B0, &unk_24F945320);
  sub_24F9283F8();
  sub_24F928428();
  sub_24F92A5A8();

  (*(v14 + 8))(v15, v16);
  (*(v13 + 16))(v22, v23, v24);
  *(*(v0 + 208) + *(type metadata accessor for InitialBag(0) + 20)) = 1;

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_24ED42D5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[14] = a4;
  v5[15] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30, &qword_24F939880);
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();
  sub_24F928418();
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  v6 = sub_24F92AAE8();
  v5[20] = v6;
  v5[21] = *(v6 - 8);
  v5[22] = swift_task_alloc();
  sub_24F921FA8();
  v5[23] = swift_task_alloc();
  sub_24F921F58();
  v5[24] = swift_task_alloc();
  sub_24F921F88();
  v5[25] = swift_task_alloc();
  v7 = sub_24F921FC8();
  v5[26] = v7;
  v5[27] = *(v7 - 8);
  v5[28] = swift_task_alloc();
  v8 = sub_24F92A498();
  v5[29] = v8;
  v5[30] = *(v8 - 8);
  v5[31] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24ED42FD4, 0, 0);
}

uint64_t sub_24ED42FD4()
{
  v2 = v0[27];
  v1 = v0[28];
  v3 = v0[26];
  type metadata accessor for ASKBootstrapV2(0);
  sub_24F921F68();
  sub_24F921F48();
  sub_24F921F98();
  sub_24F921FB8();
  v0[32] = sub_24F92A338();
  (*(v2 + 8))(v1, v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224F78, &qword_24F974A28);
  v5 = sub_24E602068(&qword_27F22EC40, &qword_27F224F78, &qword_24F974A28, MEMORY[0x277D224B8]);
  v6 = swift_task_alloc();
  v0[33] = v6;
  *v6 = v0;
  v6[1] = sub_24ED4315C;
  v7 = v0[31];

  return MEMORY[0x282180360](v7, v4, v5);
}

uint64_t sub_24ED4315C()
{
  *(*v1 + 272) = v0;

  if (v0)
  {
    v2 = sub_24ED4366C;
  }

  else
  {
    v2 = sub_24ED4328C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24ED4328C()
{
  if (qword_27F210570 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 168);
  v1 = *(v0 + 176);
  v3 = *(v0 + 160);
  v4 = __swift_project_value_buffer(v3, qword_27F39C3B0);
  (*(v2 + 16))(v1, v4, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93DE60;
  v5 = 1;
  sub_24F928408();
  sub_24F9283F8();
  v6 = [sub_24F92A328() expirationDate];
  swift_unknownObjectRelease();
  if (v6)
  {
    sub_24F91F608();

    v5 = 0;
  }

  v8 = *(v0 + 128);
  v7 = *(v0 + 136);
  v9 = sub_24F91F648();
  v10 = *(v9 - 8);
  (*(v10 + 56))(v8, v5, 1, v9);
  sub_24E6009C8(v8, v7, &unk_27F22EC30, &qword_24F939880);
  v11 = (*(v10 + 48))(v7, 1, v9);
  v12 = *(v0 + 136);
  if (v11 == 1)
  {
    sub_24E601704(*(v0 + 136), &unk_27F22EC30, &qword_24F939880);
    *(v0 + 48) = 0u;
    *(v0 + 64) = 0u;
  }

  else
  {
    *(v0 + 72) = v9;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 48));
    (*(v10 + 32))(boxed_opaque_existential_1, v12, v9);
  }

  v15 = *(v0 + 240);
  v14 = *(v0 + 248);
  v16 = *(v0 + 232);
  v18 = *(v0 + 168);
  v17 = *(v0 + 176);
  v19 = *(v0 + 160);
  sub_24F9283D8();
  sub_24E601704(v0 + 48, &qword_27F2129B0, &unk_24F945320);
  sub_24F9283F8();
  sub_24F928428();
  sub_24F92A588();

  (*(v18 + 8))(v17, v19);
  (*(v15 + 8))(v14, v16);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_24ED4366C()
{
  if (qword_27F210570 != -1)
  {
    swift_once();
  }

  v1 = v0[34];
  __swift_project_value_buffer(v0[20], qword_27F39C3B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93DE60;
  sub_24F928408();
  sub_24F9283F8();
  swift_getErrorValue();
  v2 = v0[10];
  v3 = v0[11];
  v0[5] = v3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  (*(*(v3 - 8) + 16))(boxed_opaque_existential_1, v2, v3);
  sub_24F9283D8();
  sub_24E601704((v0 + 2), &qword_27F2129B0, &unk_24F945320);
  sub_24F9283F8();
  sub_24F928428();
  sub_24F92A5A8();

  v5 = v0[1];

  return v5();
}

uint64_t sub_24ED43900()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24ED43948(uint64_t a1)
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

  return sub_24E6956F4(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_24ED43A3C(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for ASKBootstrapV2(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_24ED43B44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F91F6B8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22[3] = sub_24F929E08();
  v22[4] = MEMORY[0x277D221A8];
  v22[0] = a1;
  *(a3 + 32) = 0u;
  *(a3 + 16) = 0u;
  sub_24F91F6A8();
  v10 = sub_24F91F668();
  v12 = v11;
  (*(v7 + 8))(v9, v6);
  *(a3 + 88) = v10;
  *(a3 + 96) = v12;
  sub_24E615E00(v22, a3 + 48);
  v13 = [objc_opt_self() defaultCenter];

  v14 = sub_24F92BFF8();
  [v13 addObserver:a3 selector:sel_signatureVerificationFailed_ name:v14 object:0];

  v15 = [objc_opt_self() sharedCoordinator];
  aBlock[4] = sub_24ED44EC8;
  aBlock[5] = a3;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24EAF8248;
  aBlock[3] = &block_descriptor_117_0;
  v16 = _Block_copy(aBlock);

  v17 = [v15 registerCleanupHandler_];
  _Block_release(v16);

  sub_24F92C648();
  swift_unknownObjectRelease();
  v18 = sub_24F92A498();
  (*(*(v18 - 8) + 8))(a2, v18);
  __swift_destroy_boxed_opaque_existential_1(v22);
  swift_beginAccess();
  sub_24E8E7708(aBlock, a3 + 16);
  swift_endAccess();
  return a3;
}

uint64_t sub_24ED43E20(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_24E612C80(&v12, v10 + 40 * a1 + 32);
}

char *sub_24ED43EB8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EB70, &unk_24F93B720);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F99A850;
  *(inited + 32) = sub_24E69A5C4(0, &qword_27F222D10, 0x277CEE6F0);
  *(inited + 40) = type metadata accessor for ArtworkLoaderURLSession();
  *(inited + 48) = sub_24E69A5C4(0, &qword_27F2222A8, 0x277CEE620);
  *(inited + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222250, &unk_24F969080);
  *(inited + 64) = sub_24E69A5C4(0, &qword_27F221568, 0x277CB8F48);
  *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EB80, &unk_24F9AEF00);
  *(inited + 80) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222D18, &unk_24F96BD90);
  *(inited + 88) = type metadata accessor for AppleSilicon();
  *(inited + 96) = sub_24F92A498();
  *(inited + 104) = type metadata accessor for NetworkActivity();
  *(inited + 112) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EB90, &unk_24F990A40);
  *(inited + 120) = sub_24F929158();
  *(inited + 128) = sub_24E69A5C4(0, &qword_27F222258, 0x277CEE498);
  *(inited + 136) = sub_24F929E08();
  *(inited + 144) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222260, &unk_24F93B540);
  *(inited + 152) = sub_24F929F48();
  *(inited + 160) = sub_24F9290F8();
  *(inited + 168) = type metadata accessor for ASKBagContract(0);
  *(inited + 176) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EBA0, &unk_24F980F50);
  *(inited + 184) = sub_24F929F58();
  *(inited + 192) = type metadata accessor for Commerce();
  *(inited + 200) = type metadata accessor for Restrictions();
  *(inited + 208) = type metadata accessor for GameCenter();
  *(inited + 216) = type metadata accessor for GameCenterFriendRequestCoordinator();
  *(inited + 224) = type metadata accessor for UserEngagementManager();
  *(inited + 232) = type metadata accessor for JSInvalidSignatureReporter();
  *(inited + 240) = type metadata accessor for AdsService();
  *(inited + 248) = type metadata accessor for AppStoreOnDeviceRecommendationsManager();
  *(inited + 256) = type metadata accessor for OnDeviceSearchHistoryManager();
  *(inited + 264) = type metadata accessor for OnDevicePersonalizationDataManager();
  *(inited + 272) = type metadata accessor for JSIntentDispatcher();
  *(inited + 280) = type metadata accessor for MetricsIdStore();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EBA8, &qword_24F99A968);
  v2 = sub_24E6190C4(1, 33, 1, inited);
  *(v2 + 2) = 33;
  *(v2 + 36) = v1;
  v3 = *(v2 + 3);
  if (v3 <= 0x43)
  {
    v2 = sub_24E6190C4((v3 > 1), 34, 1, v2);
  }

  v4 = type metadata accessor for ThreeDimensionalMediaArtworkImageDownloader();
  *(v2 + 2) = 34;
  *(v2 + 37) = v4;
  v5 = *(v2 + 3);
  if (v5 <= 0x45)
  {
    v2 = sub_24E6190C4((v5 > 1), 35, 1, v2);
  }

  *(v2 + 2) = 35;
  *(v2 + 38) = &type metadata for ASKPrerequisites;
  return v2;
}

unint64_t sub_24ED44204()
{
  result = qword_27F22EBC0;
  if (!qword_27F22EBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22EBC0);
  }

  return result;
}

unint64_t sub_24ED44258()
{
  result = qword_27F22EBC8;
  if (!qword_27F22EBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22EBC8);
  }

  return result;
}

uint64_t sub_24ED442AC@<X0>(void *a1@<X8>)
{
  v3 = *(type metadata accessor for ASKBootstrapV2(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_24ED3DB94(v4, a1);
}

void sub_24ED4431C(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for ASKBootstrapV2(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_24ED3E394(v4, a1);
}

void sub_24ED4438C(uint64_t *a1@<X8>)
{
  type metadata accessor for ASKBootstrapV2(0);

  sub_24ED3E718(a1);
}

uint64_t sub_24ED443FC(uint64_t a1)
{
  v4 = *(type metadata accessor for ASKBootstrapV2(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24E6541E4;

  return sub_24ED3EA28(a1, v1 + v5);
}

uint64_t sub_24ED444D8(uint64_t a1)
{
  v4 = *(type metadata accessor for ASKBootstrapV2(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24E6541E4;

  return sub_24ED3F3B0(a1, v1 + v5);
}

void sub_24ED445B4(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for ASKBootstrapV2(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_24ED3FFD0(v4, a1);
}

uint64_t sub_24ED44624()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24ED44664(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24E614970;

  return sub_24EF75A64(a1, v4, v5, v6);
}

uint64_t sub_24ED447F0(uint64_t a1)
{
  v4 = *(type metadata accessor for ASKBootstrapV2(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24E6541E4;

  return sub_24ED3ABD8(a1, v1 + v5);
}

uint64_t sub_24ED448CC()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  }

  return swift_deallocObject();
}

uint64_t sub_24ED4490C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24E6541E4;

  return sub_24ED3BA10(a1, v1 + 16);
}

uint64_t sub_24ED449A8(uint64_t a1)
{
  v4 = *(type metadata accessor for ASKBootstrapV2(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24E6541E4;

  return sub_24ED3C7A4(a1, v1 + v5);
}

uint64_t sub_24ED44A84()
{
  v1 = type metadata accessor for ASKBootstrapV2(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = v0 + v2;
  v5 = v1[5];
  v6 = sub_24F92A468();
  (*(*(v6 - 8) + 8))(v0 + v2 + v5, v6);
  __swift_destroy_boxed_opaque_existential_1((v0 + v2 + v1[7]));
  v7 = (v0 + v2 + v1[8]);
  if (v7[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v7);
  }

  if (*(v4 + v1[9]))
  {
  }

  v8 = v1[13];
  v9 = sub_24F91F4A8();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v4 + v8, 1, v9))
  {
    (*(v10 + 8))(v4 + v8, v9);
  }

  v11 = (v4 + v1[14]);
  if (v11[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v11);
  }

  __swift_destroy_boxed_opaque_existential_1((v0 + ((v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8)));

  return swift_deallocObject();
}

uint64_t sub_24ED44D3C()
{
  v1 = sub_24F92A498();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  }

  (*(v2 + 8))(v0 + ((v3 + 56) & ~v3), v1);

  return swift_deallocObject();
}

uint64_t sub_24ED44E1C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(sub_24F92A498() - 8);
  v6 = (*(v5 + 80) + 56) & ~*(v5 + 80);
  return sub_24ED3C424(a1, v2 + 16, v2 + v6, *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8)), a2);
}

uint64_t sub_24ED44ED0(uint64_t a1)
{
  v4 = *(type metadata accessor for ASKBootstrapV2(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24E6541E4;

  return sub_24ED38658(a1, v1 + v5);
}

uint64_t sub_24ED44FAC(uint64_t a1)
{
  v4 = *(type metadata accessor for ASKBootstrapV2(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24E6541E4;

  return sub_24ED3A4BC(a1, v1 + v5);
}

uint64_t sub_24ED45088(uint64_t a1)
{
  v2 = type metadata accessor for InitialBag(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24ED450E4()
{
  v1 = type metadata accessor for ASKBootstrapV2(0);
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();
  v4 = v0 + v2;
  v5 = v1[5];
  v6 = sub_24F92A468();
  (*(*(v6 - 8) + 8))(v0 + v2 + v5, v6);
  __swift_destroy_boxed_opaque_existential_1((v0 + v2 + v1[7]));
  v7 = (v0 + v2 + v1[8]);
  if (v7[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v7);
  }

  if (*(v4 + v1[9]))
  {
  }

  v8 = v1[13];
  v9 = sub_24F91F4A8();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v4 + v8, 1, v9))
  {
    (*(v10 + 8))(v4 + v8, v9);
  }

  v11 = (v4 + v1[14]);
  if (v11[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v11);
  }

  return swift_deallocObject();
}

uint64_t sub_24ED452E0(uint64_t a1)
{
  v4 = *(type metadata accessor for ASKBootstrapV2(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24E614970;

  return sub_24ED42D5C(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_24ED45414(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F92A498();
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
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_24ED454F4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_24F92A498();
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

uint64_t sub_24ED455AC(uint64_t a1)
{
  result = sub_24F92A498();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_24ED4570C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v117 = a7;
  v119 = a6;
  v118 = a5;
  v133 = a4;
  v116 = a3;
  v132 = a2;
  v135 = a1;
  v124 = sub_24F927D88();
  v123 = *(v124 - 8);
  MEMORY[0x28223BE20](v124);
  v122 = &v102 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F927DC8();
  v121 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v120 = &v102 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_24F927D98();
  v114 = *(v115 - 8);
  MEMORY[0x28223BE20](v115);
  v113 = &v102 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = sub_24F929158();
  v138 = *(v136 - 8);
  MEMORY[0x28223BE20](v136);
  v134 = &v102 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = v12;
  MEMORY[0x28223BE20](v13);
  v137 = &v102 - v14;
  v127 = sub_24F927E38();
  v126 = *(v127 - 1);
  MEMORY[0x28223BE20](v127);
  v125 = (&v102 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = sub_24F9287F8();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v102 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v102 - v21;
  v23 = sub_24F928818();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = &v102 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v139 = v7;
  sub_24E60169C(v7 + 40, &aBlock, &qword_27F224F98, &unk_24F974A70);
  if (!v145)
  {
    sub_24E601704(&aBlock, &qword_27F224F98, &unk_24F974A70);
    return;
  }

  v103 = v9;
  __swift_project_boxed_opaque_existential_1(&aBlock, v145);
  sub_24F92AD48();
  v110 = sub_24F928768();
  v27 = *(v24 + 8);
  v129 = v26;
  v104 = v27;
  v27(v26, v23);
  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  v28 = *(v17 + 16);
  v109 = v17 + 16;
  v108 = v28;
  v28(v22, v135, v16);
  sub_24F9287E8();
  sub_24ED5EA84(&qword_27F21E610, MEMORY[0x277D21BE0], MEMORY[0x277D21BF0]);
  v29 = sub_24F92AFF8();
  v112 = v17;
  v30 = *(v17 + 8);
  v30(v19, v16);
  v128 = v16;
  v111 = v19;
  v106 = v23;
  v105 = v24 + 8;
  if (v29)
  {
    v30(v22, v16);
    v31 = v136;
    if (qword_27F210278 != -1)
    {
      swift_once();
    }

    v32 = off_27F229AB8;
    sub_24E60169C(v139 + 40, &aBlock, &qword_27F224F98, &unk_24F974A70);
    v33 = v145;
    v34 = v138;
    v35 = v137;
    v36 = v129;
    if (v145)
    {
      __swift_project_boxed_opaque_existential_1(&aBlock, v145);
      sub_24F92AD48();
      v33 = sub_24F9286C8();
      v104(v36, v106);
      __swift_destroy_boxed_opaque_existential_1(&aBlock);
    }

    else
    {
      sub_24E601704(&aBlock, &qword_27F224F98, &unk_24F974A70);
    }

    sub_24E74EC40();
    v44 = sub_24F92BEF8();
    v45 = v125;
    *v125 = v44;
    v46 = v126;
    v38 = v127;
    (*(v126 + 104))(v45, *MEMORY[0x277D85200], v127);
    v47 = sub_24F927E68();
    v49 = *(v46 + 8);
    v48 = (v46 + 8);
    v49(v45, v38);
    if (v47)
    {
      v38 = &qword_27F210000;
      swift_beginAccess();
      v32[12] = v33;

      v48 = [objc_opt_self() defaultCenter];
      if (qword_27F210288 == -1)
      {
LABEL_24:
        [v48 postNotificationName:qword_27F229AE0 object:v32];

        swift_beginAccess();
        v50 = v32[20];
        if (v50 != 2 && (v50 != 1 || v32[26] != 1))
        {
          v52 = sub_24EB6B1B0(v140);
          if (*(v51 + 8) != 2)
          {
            *(v51 + 90) = 1;
          }

          (v52)(v140, 0);
        }

        goto LABEL_34;
      }
    }

    else
    {
      __break(1u);
    }

    swift_once();
    goto LABEL_24;
  }

  sub_24F9287C8();
  v37 = sub_24F92AFF8();
  v30(v19, v16);
  v31 = v136;
  if (v37)
  {
    v30(v22, v16);
    v38 = &qword_27F210000;
    v35 = v137;
    if (qword_27F210278 != -1)
    {
      swift_once();
    }

    sub_24EB6CB08();
    v34 = v138;
    v36 = v129;
    goto LABEL_34;
  }

  v35 = v137;
  if (qword_27F210040 != -1)
  {
    swift_once();
  }

  v39 = v128;
  __swift_project_value_buffer(v128, qword_27F2230B8);
  v40 = sub_24F92AFF8();
  v30(v22, v39);
  v34 = v138;
  v36 = v129;
  v38 = &qword_27F210000;
  if ((v40 & 1) == 0)
  {
    goto LABEL_34;
  }

  if (!*(*(*(v139 + qword_27F39B4A8) + 16) + 16))
  {
    goto LABEL_34;
  }

  v41 = sub_24F929BA8();

  if ((v41 & 1) == 0)
  {
    goto LABEL_34;
  }

  if (qword_27F210278 != -1)
  {
    swift_once();
  }

  v42 = off_27F229AB8;
  sub_24E60169C(v139 + 40, &aBlock, &qword_27F224F98, &unk_24F974A70);
  v43 = v145;
  if (v145)
  {
    __swift_project_boxed_opaque_existential_1(&aBlock, v145);
    sub_24F92AD48();
    v43 = sub_24F9286C8();
    v104(v36, v106);
    __swift_destroy_boxed_opaque_existential_1(&aBlock);
  }

  else
  {
    sub_24E601704(&aBlock, &qword_27F224F98, &unk_24F974A70);
  }

  sub_24E74EC40();
  v53 = sub_24F92BEF8();
  v54 = v125;
  *v125 = v53;
  v55 = v126;
  v56 = v127;
  (*(v126 + 104))(v54, *MEMORY[0x277D85200], v127);
  v57 = sub_24F927E68();
  (*(v55 + 8))(v54, v56);
  if ((v57 & 1) == 0)
  {
    __break(1u);
    goto LABEL_49;
  }

  swift_beginAccess();
  v42[12] = v43;

  v56 = [objc_opt_self() defaultCenter];
  if (qword_27F210288 != -1)
  {
LABEL_49:
    swift_once();
  }

  [v56 postNotificationName:qword_27F229AE0 object:v42];

  v38 = &qword_27F210000;
LABEL_34:
  if (v38[79] != -1)
  {
    swift_once();
  }

  v58 = off_27F229AB8;
  swift_beginAccess();
  v59 = v58[20];
  LODWORD(v125) = *(v58 + 242);
  v107 = v59 != 2;
  v60 = qword_27F39B498;
  v61 = v139;
  swift_beginAccess();
  v62 = *(v34 + 16);
  v62(v35, v61 + v60, v31);
  v63 = (v61 + qword_27F39B4A0);
  v64 = *v63;
  swift_getObjectType();
  v65 = swift_conformsToProtocol2();
  v127 = v62;
  if (v65 && v64)
  {
    v66 = v65;
    ObjectType = swift_getObjectType();
    v68 = v31;
    v69 = v35;
    v70 = *(v66 + 16);
    swift_unknownObjectRetain();
    v71 = ObjectType;
    v36 = v129;
    v72 = v70(v71, v66);
    v35 = v69;
    v73 = v72;
    v126 = v74;
    swift_unknownObjectRelease();
    v64 = v73;
  }

  else
  {
    v68 = v31;
    v126 = v63[1];
    swift_unknownObjectRetain();
  }

  v75 = v134;
  LODWORD(v125) = v107 & v125;
  sub_24E60169C(v139 + 40, &aBlock, &qword_27F224F98, &unk_24F974A70);
  v109 = v64;
  if (v145)
  {
    __swift_project_boxed_opaque_existential_1(&aBlock, v145);
    swift_unknownObjectRetain();
    sub_24F92AD48();
    v129 = sub_24F9286C8();
    v104(v36, v106);
    __swift_destroy_boxed_opaque_existential_1(&aBlock);
  }

  else
  {
    swift_unknownObjectRetain();
    sub_24E601704(&aBlock, &qword_27F224F98, &unk_24F974A70);
    v129 = 0;
  }

  v76 = v111;
  v77 = v128;
  v108(v111, v135, v128);
  v78 = v75;
  v79 = v68;
  (v127)(v78, v35, v68);
  v80 = v112;
  v81 = (*(v112 + 80) + 24) & ~*(v112 + 80);
  v82 = (v130 + v81 + 7) & 0xFFFFFFFFFFFFFFF8;
  v135 = (v82 + 15) & 0xFFFFFFFFFFFFFFF8;
  v83 = (v82 + 39) & 0xFFFFFFFFFFFFFFF8;
  v84 = v138;
  v85 = (*(v138 + 80) + v83 + 8) & ~*(v138 + 80);
  v86 = swift_allocObject();
  *(v86 + 16) = v110;
  (*(v80 + 32))(v86 + v81, v76, v77);
  v87 = v84;
  *(v86 + v82) = v139;
  v88 = v86 + v135;
  v89 = v126;
  *v88 = v109;
  *(v88 + 8) = v89;
  *(v88 + 16) = v125;
  *(v86 + v83) = v129;
  (*(v84 + 32))(v86 + v85, v134, v79);

  if (ASKBuildTypeIsUnitTesting())
  {
    sub_24E74EC40();
    v90 = v114;
    v91 = v113;
    v92 = v115;
    (*(v114 + 104))(v113, *MEMORY[0x277D851C8], v115);
    v139 = sub_24F92BF48();
    (*(v90 + 8))(v91, v92);
    v93 = swift_allocObject();
    *(v93 + 16) = v133;
    *(v93 + 24) = v86;
    v146 = v118;
    v147 = v93;
    aBlock = MEMORY[0x277D85DD0];
    v143 = 1107296256;
    v144 = sub_24EAF8248;
    v145 = v119;
    v94 = _Block_copy(&aBlock);

    v95 = v120;
    sub_24F927DA8();
    v141 = MEMORY[0x277D84F90];
    sub_24ED5EA84(&qword_27F222930, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310, &unk_24F951080);
    sub_24E9723D4(&qword_27F222940, &qword_27F222310, &unk_24F951080);
    v96 = v122;
    v97 = v124;
    sub_24F92C6A8();
    v98 = v139;
    MEMORY[0x2530518B0](0, v95, v96, v94);
    _Block_release(v94);

    swift_unknownObjectRelease();

    (*(v123 + 8))(v96, v97);
    (*(v121 + 8))(v95, v103);
    (*(v87 + 8))(v137, v136);
  }

  else
  {
    v99 = [objc_opt_self() processInfo];
    v100 = sub_24F92B098();
    v146 = v133;
    v147 = v86;
    aBlock = MEMORY[0x277D85DD0];
    v143 = 1107296256;
    v144 = sub_24EBFFB64;
    v145 = v117;
    v101 = _Block_copy(&aBlock);

    [v99 performExpiringActivityWithReason:v100 usingBlock:v101];
    swift_unknownObjectRelease();
    _Block_release(v101);

    (*(v87 + 8))(v137, v136);
  }
}

void sub_24ED46B90(uint64_t a1, void (*a2)(void), void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v107 = a8;
  v106 = a7;
  v120 = a6;
  v105 = a5;
  v119 = a4;
  v115 = a3;
  v114 = a2;
  v125 = a1;
  v112 = sub_24F927D88();
  v111 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v110 = &v93 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24F927DC8();
  v109 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v108 = &v93 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_24F927D98();
  v103 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v102 = &v93 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = sub_24F929158();
  v124 = *(v126 - 8);
  MEMORY[0x28223BE20](v126);
  v118 = &v93 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = v15;
  MEMORY[0x28223BE20](v16);
  v123 = &v93 - v17;
  v18 = sub_24F9287F8();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v93 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v93 - v23;
  v25 = sub_24F928818();
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v28 = &v93 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v127 = v10;
  sub_24E60169C(v10 + 40, &aBlock, &qword_27F224F98, &unk_24F974A70);
  if (!v133)
  {
    sub_24E601704(&aBlock, &qword_27F224F98, &unk_24F974A70);
    return;
  }

  v94 = v12;
  __swift_project_boxed_opaque_existential_1(&aBlock, v133);
  sub_24F92AD48();
  v99 = sub_24F928768();
  v29 = *(v26 + 8);
  v96 = v28;
  v113 = v25;
  v121 = v26 + 8;
  v95 = v29;
  v29(v28, v25);
  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  v30 = *(v19 + 16);
  v98 = v19 + 16;
  v97 = v30;
  v30(v24, v125, v18);
  sub_24F9287E8();
  sub_24ED5EA84(&qword_27F21E610, MEMORY[0x277D21BE0], MEMORY[0x277D21BF0]);
  v31 = sub_24F92AFF8();
  v32 = *(v19 + 8);
  v32(v21, v18);
  if (v31)
  {
    v32(v24, v18);
    if (qword_27F210278 != -1)
    {
      swift_once();
    }

    v33 = &qword_27F229000;
    v34 = off_27F229AB8;
    sub_24E60169C(v127 + 40, &aBlock, &qword_27F224F98, &unk_24F974A70);
    v35 = v113;
    if (v133)
    {
      __swift_project_boxed_opaque_existential_1(&aBlock, v133);
      v33 = &qword_27F229000;
      v36 = v96;
      sub_24F92AD48();
      v37 = sub_24F9286C8();
      v95(v36, v35);
      __swift_destroy_boxed_opaque_existential_1(&aBlock);
    }

    else
    {
      sub_24E601704(&aBlock, &qword_27F224F98, &unk_24F974A70);
      v37 = 0;
    }

    sub_24EB6AC9C(v37, v38);
    swift_beginAccess();
    v46 = v34[20];
    if (v46 != 2 && (v46 != 1 || v34[26] != 1))
    {
      v48 = sub_24EB6B1B0(v128);
      if (*(v47 + 8) != 2)
      {
        *(v47 + 90) = 1;
      }

      (v48)(v128, 0);
    }
  }

  else
  {
    sub_24F9287C8();
    v39 = sub_24F92AFF8();
    v32(v21, v18);
    if (v39)
    {
      v32(v24, v18);
      if (qword_27F210278 != -1)
      {
        swift_once();
      }

      v33 = &qword_27F229000;
      sub_24EB6CB08();
      v35 = v113;
    }

    else
    {
      if (qword_27F210040 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v18, qword_27F2230B8);
      v40 = sub_24F92AFF8();
      v32(v24, v18);
      v35 = v113;
      v33 = &qword_27F229000;
      v41 = &qword_27F210000;
      if ((v40 & 1) == 0)
      {
        goto LABEL_29;
      }

      if (!*(*(*(v127 + *a10) + 16) + 16))
      {
        goto LABEL_29;
      }

      v42 = sub_24F929BA8();

      v41 = &qword_27F210000;
      if ((v42 & 1) == 0)
      {
        goto LABEL_29;
      }

      if (qword_27F210278 != -1)
      {
        swift_once();
      }

      sub_24E60169C(v127 + 40, &aBlock, &qword_27F224F98, &unk_24F974A70);
      if (v133)
      {
        __swift_project_boxed_opaque_existential_1(&aBlock, v133);
        v33 = &qword_27F229000;
        v43 = v96;
        sub_24F92AD48();
        v44 = sub_24F9286C8();
        v95(v43, v35);
        __swift_destroy_boxed_opaque_existential_1(&aBlock);
      }

      else
      {
        sub_24E601704(&aBlock, &qword_27F224F98, &unk_24F974A70);
        v44 = 0;
      }

      sub_24EB6AC9C(v44, v45);
    }
  }

  v41 = &qword_27F210000;
LABEL_29:
  v100 = v21;
  v101 = v19;
  if (v41[79] != -1)
  {
    swift_once();
  }

  v49 = v33[343];
  swift_beginAccess();
  v50 = *(v49 + 242);
  v51 = *(v49 + 160) != 2;
  v52 = v127;
  swift_beginAccess();
  v53 = v123;
  v114 = *(v124 + 16);
  v114();
  v54 = (v52 + *v115);
  v55 = *v54;
  swift_getObjectType();
  v56 = swift_conformsToProtocol2();
  v122 = v18;
  if (v56 && v55)
  {
    v57 = v56;
    v58 = v51;
    ObjectType = swift_getObjectType();
    v60 = v53;
    v61 = *(v57 + 16);
    swift_unknownObjectRetain();
    v62 = ObjectType;
    v51 = v58;
    v63 = v61(v62, v57);
    v53 = v60;
    v35 = v113;
    v55 = v63;
    v115 = v64;
    swift_unknownObjectRelease();
  }

  else
  {
    v115 = v54[1];
    swift_unknownObjectRetain();
  }

  v65 = v125;
  LODWORD(v125) = v51 & v50;
  sub_24E60169C(v127 + 40, &aBlock, &qword_27F224F98, &unk_24F974A70);
  v121 = v55;
  if (v133)
  {
    __swift_project_boxed_opaque_existential_1(&aBlock, v133);
    swift_unknownObjectRetain();
    v66 = v35;
    v67 = v96;
    sub_24F92AD48();
    v113 = sub_24F9286C8();
    v95(v67, v66);
    __swift_destroy_boxed_opaque_existential_1(&aBlock);
  }

  else
  {
    swift_unknownObjectRetain();
    sub_24E601704(&aBlock, &qword_27F224F98, &unk_24F974A70);
    v113 = 0;
  }

  v68 = v100;
  v97(v100, v65, v122);
  v69 = v118;
  v70 = v126;
  (v114)(v118, v53, v126);
  v71 = v101;
  v72 = (*(v101 + 80) + 24) & ~*(v101 + 80);
  v73 = (v116 + v72 + 7) & 0xFFFFFFFFFFFFFFF8;
  v116 = (v73 + 15) & 0xFFFFFFFFFFFFFFF8;
  v74 = (v73 + 39) & 0xFFFFFFFFFFFFFFF8;
  v75 = v124;
  v76 = (*(v124 + 80) + v74 + 8) & ~*(v124 + 80);
  v77 = swift_allocObject();
  *(v77 + 16) = v99;
  (*(v71 + 32))(v77 + v72, v68, v122);
  *(v77 + v73) = v127;
  v78 = v77 + v116;
  v79 = v115;
  *v78 = v121;
  *(v78 + 8) = v79;
  *(v78 + 16) = v125;
  *(v77 + v74) = v113;
  v80 = v70;
  (*(v75 + 32))(v77 + v76, v69, v70);

  if (ASKBuildTypeIsUnitTesting())
  {
    sub_24E74EC40();
    v81 = v103;
    v82 = v102;
    v83 = v104;
    (*(v103 + 104))(v102, *MEMORY[0x277D851C8], v104);
    v127 = sub_24F92BF48();
    (*(v81 + 8))(v82, v83);
    v84 = swift_allocObject();
    *(v84 + 16) = v120;
    *(v84 + 24) = v77;
    v134 = v106;
    v135 = v84;
    aBlock = MEMORY[0x277D85DD0];
    v131 = 1107296256;
    v132 = sub_24EAF8248;
    v133 = v107;
    v85 = _Block_copy(&aBlock);

    v86 = v108;
    sub_24F927DA8();
    v129 = MEMORY[0x277D84F90];
    sub_24ED5EA84(&qword_27F222930, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310, &unk_24F951080);
    sub_24E9723D4(&qword_27F222940, &qword_27F222310, &unk_24F951080);
    v87 = v110;
    v88 = v112;
    sub_24F92C6A8();
    v89 = v127;
    MEMORY[0x2530518B0](0, v86, v87, v85);
    _Block_release(v85);

    swift_unknownObjectRelease();

    (*(v111 + 8))(v87, v88);
    (*(v109 + 8))(v86, v94);
    (*(v75 + 8))(v123, v126);
  }

  else
  {
    v90 = [objc_opt_self() processInfo];
    v91 = sub_24F92B098();
    v134 = v120;
    v135 = v77;
    aBlock = MEMORY[0x277D85DD0];
    v131 = 1107296256;
    v132 = sub_24EBFFB64;
    v133 = a9;
    v92 = _Block_copy(&aBlock);

    [v90 performExpiringActivityWithReason:v91 usingBlock:v92];
    swift_unknownObjectRelease();
    _Block_release(v92);

    (*(v75 + 8))(v123, v80);
  }
}

void sub_24ED48270(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v96 = a8;
  LODWORD(v100) = a7;
  v85 = a6;
  v95 = a5;
  v84 = a4;
  v103 = a3;
  v83 = sub_24F927D88();
  v14 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v82 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_24F927DC8();
  v99 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v80 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_24F929158();
  v86 = *(v79 - 8);
  v17 = *(v86 + 64);
  MEMORY[0x28223BE20](v79);
  v94 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_24F9287F8();
  v63 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = &v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_24F928738();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v93 = &v62 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v62 - v25;
  if ((a1 & 1) == 0)
  {
    v92 = dispatch_group_create();
    v91 = *(a2 + 16);
    if (v91)
    {
      v27 = 0;
      v29 = *(v22 + 16);
      v28 = v22 + 16;
      v30 = *(v28 + 64);
      v77 = ~v30;
      v90 = a2 + ((v30 + 32) & ~v30);
      v102 = v63 + 16;
      v101 = (v63 + 8);
      v76 = a12;
      v75 = a11;
      v89 = (v28 - 8);
      v74 = v86 + 16;
      v78 = v30;
      v73 = v17 + v30;
      v72 = v23 + 7;
      v31 = v29;
      v71 = a10;
      v70 = a9;
      v69 = v100 & 1;
      v68 = v86 + 32;
      v67 = (v28 + 16);
      v66 = v105;
      v65 = (v14 + 8);
      v64 = (v99 + 8);
      v88 = *(v28 + 56);
      v98 = v28;
      v99 = v26;
      v97 = v29;
      while (1)
      {
        v100 = v27;
        v31(v26, v90 + v88 * v27, v21);
        v32 = *(sub_24F9286D8() + 16);

        if (!v32)
        {
          goto LABEL_14;
        }

        v33 = sub_24F9286D8();
        if (*(v33 + 16))
        {
          sub_24ED5EA84(&qword_27F21E608, MEMORY[0x277D21BE0], MEMORY[0x277D21BE8]);
          v34 = sub_24F92AEE8();
          v35 = -1 << *(v33 + 32);
          v36 = v34 & ~v35;
          if ((*(v33 + 56 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36))
          {
            break;
          }
        }

LABEL_4:

        v26 = v99;
        (*v89)(v99, v21);
LABEL_5:
        v27 = v100 + 1;
        v31 = v97;
        if (v100 + 1 == v91)
        {
          goto LABEL_15;
        }
      }

      v37 = ~v35;
      v38 = *(v63 + 72);
      v39 = *(v63 + 16);
      while (1)
      {
        v39(v20, *(v33 + 48) + v38 * v36, v18);
        sub_24ED5EA84(&qword_27F21E610, MEMORY[0x277D21BE0], MEMORY[0x277D21BF0]);
        v40 = sub_24F92AFF8();
        (*v101)(v20, v18);
        if (v40)
        {
          break;
        }

        v36 = (v36 + 1) & v37;
        if (((*(v33 + 56 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36) & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      v31 = v97;
LABEL_14:
      dispatch_group_enter(v92);
      v41 = v84;
      v42 = *(*v84 + 192);
      swift_beginAccess();
      sub_24E60169C(v41 + v42, v108, &qword_27F224FA0, &qword_24F975FD0);
      sub_24E74EC40();
      v87 = sub_24F92BEF8();
      sub_24E60169C(v108, v106, &qword_27F224FA0, &qword_24F975FD0);
      v43 = v86;
      v44 = v21;
      v45 = v79;
      (*(v86 + 16))(v94, v70, v79);
      v31(v93, v99, v44);
      v46 = (*(v43 + 80) + 96) & ~*(v43 + 80);
      v47 = (v73 + v46) & v77;
      v48 = (v72 + v47) & 0xFFFFFFFFFFFFFFF8;
      v49 = swift_allocObject();
      v50 = v85;
      *(v49 + 16) = v95;
      *(v49 + 24) = v50;
      *(v49 + 32) = v41;
      *(v49 + 40) = v69;
      *(v49 + 48) = v96;
      v51 = v106[1];
      *(v49 + 56) = v106[0];
      *(v49 + 72) = v51;
      *(v49 + 88) = v107;
      v52 = *(v43 + 32);
      v26 = v99;
      v53 = v45;
      v21 = v44;
      v52(v49 + v46, v94, v53);
      (*v67)(v49 + v47, v93, v44);
      v54 = v92;
      *(v49 + v48) = v92;
      v105[2] = v75;
      v105[3] = v49;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      v105[0] = sub_24EAF8248;
      v105[1] = v76;
      v55 = _Block_copy(aBlock);
      swift_unknownObjectRetain();

      v56 = v54;

      v57 = v80;
      sub_24F927DA8();
      aBlock[0] = MEMORY[0x277D84F90];
      sub_24ED5EA84(&qword_27F222930, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310, &unk_24F951080);
      sub_24E9723D4(&qword_27F222940, &qword_27F222310, &unk_24F951080);
      v58 = v82;
      v59 = v83;
      sub_24F92C6A8();
      v60 = v87;
      MEMORY[0x2530518B0](0, v57, v58, v55);
      _Block_release(v55);

      (*v65)(v58, v59);
      (*v64)(v57, v81);
      sub_24E601704(v108, &qword_27F224FA0, &qword_24F975FD0);
      (*v89)(v26, v21);
      goto LABEL_5;
    }

LABEL_15:
    v61 = v92;
    sub_24F92BE58();
  }
}

void sub_24ED48CF8(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v96 = a8;
  LODWORD(v101) = a7;
  v86 = a6;
  v95 = a5;
  v100 = a4;
  v104 = a3;
  v85 = sub_24F927D88();
  v14 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v84 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_24F927DC8();
  v99 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v82 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_24F929158();
  v87 = *(v81 - 8);
  v17 = *(v87 + 64);
  MEMORY[0x28223BE20](v81);
  v80 = &v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_24F9287F8();
  v64 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = &v63 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_24F928738();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v94 = &v63 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v63 - v25;
  if ((a1 & 1) == 0)
  {
    v93 = dispatch_group_create();
    v92 = *(a2 + 16);
    if (v92)
    {
      v27 = 0;
      v29 = *(v22 + 16);
      v28 = v22 + 16;
      v30 = *(v28 + 64);
      v78 = ~v30;
      v91 = a2 + ((v30 + 32) & ~v30);
      v103 = v64 + 16;
      v102 = (v64 + 8);
      v77 = a12;
      v76 = a11;
      v90 = (v28 - 8);
      v75 = v87 + 16;
      v79 = v30;
      v74 = v17 + v30;
      v73 = v23 + 7;
      v31 = v29;
      v72 = a10;
      v71 = a9;
      v70 = v101 & 1;
      v69 = v87 + 32;
      v68 = (v28 + 16);
      v67 = v106;
      v66 = (v14 + 8);
      v65 = (v99 + 8);
      v89 = *(v28 + 56);
      v98 = v28;
      v99 = v26;
      v97 = v29;
      while (1)
      {
        v101 = v27;
        v31(v26, v91 + v89 * v27, v21);
        v32 = *(sub_24F9286D8() + 16);

        if (!v32)
        {
          goto LABEL_14;
        }

        v33 = sub_24F9286D8();
        if (*(v33 + 16))
        {
          sub_24ED5EA84(&qword_27F21E608, MEMORY[0x277D21BE0], MEMORY[0x277D21BE8]);
          v34 = sub_24F92AEE8();
          v35 = -1 << *(v33 + 32);
          v36 = v34 & ~v35;
          if ((*(v33 + 56 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36))
          {
            break;
          }
        }

LABEL_4:

        v26 = v99;
        (*v90)(v99, v21);
LABEL_5:
        v27 = v101 + 1;
        v31 = v97;
        if (v101 + 1 == v92)
        {
          goto LABEL_15;
        }
      }

      v37 = ~v35;
      v38 = *(v64 + 72);
      v39 = *(v64 + 16);
      while (1)
      {
        v39(v20, *(v33 + 48) + v38 * v36, v18);
        sub_24ED5EA84(&qword_27F21E610, MEMORY[0x277D21BE0], MEMORY[0x277D21BF0]);
        v40 = sub_24F92AFF8();
        (*v102)(v20, v18);
        if (v40)
        {
          break;
        }

        v36 = (v36 + 1) & v37;
        if (((*(v33 + 56 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36) & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      v31 = v97;
LABEL_14:
      dispatch_group_enter(v93);
      v41 = OBJC_IVAR____TtC12GameStoreKit13BasePresenter_advertRotationData;
      v42 = v100;
      swift_beginAccess();
      sub_24E60169C(v42 + v41, v109, &qword_27F224FA0, &qword_24F975FD0);
      sub_24E74EC40();
      v88 = sub_24F92BEF8();
      sub_24E60169C(v109, v107, &qword_27F224FA0, &qword_24F975FD0);
      v43 = v87;
      v44 = v80;
      v45 = v21;
      v46 = v81;
      (*(v87 + 16))(v80, v71, v81);
      v31(v94, v99, v45);
      v47 = (*(v43 + 80) + 96) & ~*(v43 + 80);
      v48 = (v74 + v47) & v78;
      v49 = (v73 + v48) & 0xFFFFFFFFFFFFFFF8;
      v50 = swift_allocObject();
      v51 = v86;
      *(v50 + 16) = v95;
      *(v50 + 24) = v51;
      *(v50 + 32) = v100;
      *(v50 + 40) = v70;
      *(v50 + 48) = v96;
      v52 = v107[1];
      *(v50 + 56) = v107[0];
      *(v50 + 72) = v52;
      *(v50 + 88) = v108;
      v53 = v44;
      v26 = v99;
      v54 = v46;
      v21 = v45;
      (*(v43 + 32))(v50 + v47, v53, v54);
      (*v68)(v50 + v48, v94, v45);
      v55 = v93;
      *(v50 + v49) = v93;
      v106[2] = v76;
      v106[3] = v50;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      v106[0] = sub_24EAF8248;
      v106[1] = v77;
      v56 = _Block_copy(aBlock);
      swift_unknownObjectRetain();

      v57 = v55;

      v58 = v82;
      sub_24F927DA8();
      aBlock[0] = MEMORY[0x277D84F90];
      sub_24ED5EA84(&qword_27F222930, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310, &unk_24F951080);
      sub_24E9723D4(&qword_27F222940, &qword_27F222310, &unk_24F951080);
      v59 = v84;
      v60 = v85;
      sub_24F92C6A8();
      v61 = v88;
      MEMORY[0x2530518B0](0, v58, v59, v56);
      _Block_release(v56);

      (*v66)(v59, v60);
      (*v65)(v58, v83);
      sub_24E601704(v109, &qword_27F224FA0, &qword_24F975FD0);
      (*v90)(v26, v21);
      goto LABEL_5;
    }

LABEL_15:
    v62 = v93;
    sub_24F92BE58();
  }
}