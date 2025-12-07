uint64_t sub_1BC726440(uint64_t a1)
{
  v2 = sub_1BC75AE70();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE258, &qword_1BC769BF0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9[-v5];
  sub_1BC75AE40();
  v10 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE468, &qword_1BC76A338);
  sub_1BC633C54(&qword_1EBCDE470, &qword_1EBCDE468, &qword_1BC76A338, MEMORY[0x1E697D680]);
  sub_1BC75A770();
  v7 = sub_1BC633C54(&qword_1EBCDE260, &qword_1EBCDE258, &qword_1BC769BF0, MEMORY[0x1E697BEF0]);
  MEMORY[0x1BFB25A80](v6, v3, v7);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1BC72662C(uint64_t a1)
{
  v2 = type metadata accessor for MediaPreviewScreen(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = sub_1BC75A650();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BC75A640();
  sub_1BC721FD8(a1, &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MediaPreviewScreen);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  sub_1BC722A58(&v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for MediaPreviewScreen);
  return MEMORY[0x1BFB26270](v7, sub_1BC728288, v9);
}

uint64_t sub_1BC7267A8(uint64_t a1)
{
  v2 = type metadata accessor for ReportScreen.Control(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + *(type metadata accessor for MediaPreviewScreen(0) + 20));
  swift_storeEnumTagMultiPayload();
  v5(v4);
  return sub_1BC7282E8(v4, type metadata accessor for ReportScreen.Control);
}

unint64_t sub_1BC726890()
{
  result = qword_1EBCDEA30;
  if (!qword_1EBCDEA30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDEA08, &qword_1BC76CBE8);
    sub_1BC726914();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDEA30);
  }

  return result;
}

unint64_t sub_1BC726914()
{
  result = qword_1EBCDEA38;
  if (!qword_1EBCDEA38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDEA40, &qword_1BC76CC10);
    sub_1BC7269FC(&qword_1EBCDEA48, type metadata accessor for Video, &unk_1BC76CF0C);
    sub_1BC633C54(&qword_1EBCDEA50, &qword_1EBCDEA58, &qword_1BC76CC18, MEMORY[0x1E697BD90]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDEA38);
  }

  return result;
}

uint64_t sub_1BC7269FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1BC726A44()
{
  result = qword_1EBCDEA60;
  if (!qword_1EBCDEA60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDEA28, &qword_1BC76CC08);
    sub_1BC7269FC(&unk_1EDDCE5C0, type metadata accessor for SensitiveContentOverlay.Background, &protocol conformance descriptor for SensitiveContentOverlay.Background);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDEA60);
  }

  return result;
}

unint64_t sub_1BC726B00()
{
  result = qword_1EBCDEA70;
  if (!qword_1EBCDEA70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDEA18, &qword_1BC76CBF8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDEA10, &qword_1BC76CBF0);
    v1 = sub_1BC633C54(&qword_1EBCDEA68, &qword_1EBCDEA10, &qword_1BC76CBF0, MEMORY[0x1E6981870]);
    sub_1BC651EB8(v1, v2, v3);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDEA70);
  }

  return result;
}

uint64_t sub_1BC726C10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BC75B5D0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Video(0);
  v15 = *(a1 + *(v8 + 24));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEAE0, &unk_1BC76D060);
  result = sub_1BC75B640();
  v10 = v14;
  if (v14)
  {
    v11 = v14;
    sub_1BC75B5B0();
    (*(v5 + 104))(v7, *MEMORY[0x1E6981630], v4);
    v12 = sub_1BC75B610();

    result = (*(v5 + 8))(v7, v4);
    if (*(a1 + *(v8 + 20)))
    {
      v10 = 1;
    }

    else
    {
      v10 = 257;
    }
  }

  else
  {
    v12 = 0;
  }

  *a2 = v12;
  *(a2 + 8) = 0;
  *(a2 + 16) = v10;
  return result;
}

uint64_t sub_1BC726DBC(uint64_t a1)
{
  v1[5] = a1;
  sub_1BC75BDE0();
  v1[6] = sub_1BC75BDD0();
  v3 = sub_1BC75BD80();
  v1[7] = v3;
  v1[8] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1BC726E54, v3, v2);
}

uint64_t sub_1BC726E54()
{
  v1 = objc_allocWithZone(MEMORY[0x1E6988168]);
  v2 = sub_1BC759770();
  v3 = [v1 initWithURL:v2 options:0];
  v0[9] = v3;

  v0[10] = [objc_allocWithZone(MEMORY[0x1E6987E68]) initWithAsset_];
  v4 = *MEMORY[0x1E6960CC0];
  v5 = *(MEMORY[0x1E6960CC0] + 8);
  v6 = *(MEMORY[0x1E6960CC0] + 16);
  v7 = swift_task_alloc();
  v0[11] = v7;
  *v7 = v0;
  v7[1] = sub_1BC726F6C;

  return MEMORY[0x1EEE68118](v4, v5, v6);
}

uint64_t sub_1BC726F6C(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {

    v5 = v4[7];
    v6 = v4[8];
    v7 = sub_1BC727194;
  }

  else
  {
    v4[12] = a1;
    v5 = v4[7];
    v6 = v4[8];
    v7 = sub_1BC727098;
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t sub_1BC727098()
{
  v1 = v0[12];

  v2 = v0[9];
  v3 = v0[10];
  v4 = v0[5];
  v5 = v4 + *(type metadata accessor for Video(0) + 24);
  v7 = *v5;
  v6 = *(v5 + 8);
  v0[2] = *v5;
  v0[3] = v6;
  v0[4] = v1;
  v8 = v1;
  v9 = v7;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEAE0, &unk_1BC76D060);
  sub_1BC75B650();

  v10 = v0[1];

  return v10();
}

uint64_t sub_1BC727194()
{

  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[5];
  v4 = v3 + *(type metadata accessor for Video(0) + 24);
  v5 = *v4;
  v6 = *(v4 + 8);
  v0[2] = *v4;
  v0[3] = v6;
  v0[4] = 0;
  v7 = v5;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEAE0, &unk_1BC76D060);
  sub_1BC75B650();

  v8 = v0[1];

  return v8();
}

uint64_t sub_1BC727278(uint64_t a1)
{
  result = sub_1BC7269FC(&qword_1EBCDEA80, _s9YouScreenVMa, &unk_1BC76CC54);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1BC7272EC(uint64_t a1)
{
  result = sub_1BC7269FC(&qword_1EBCDEA88, _s13SuspectScreenVMa, &unk_1BC76CCC0);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1BC727360(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1BC727388(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1BC727388(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCDEA90;
  if (!qword_1EBCDEA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDEA90);
  }

  return result;
}

unint64_t sub_1BC7273F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1BC727420(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1BC727420(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCDEA98;
  if (!qword_1EBCDEA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDEA98);
  }

  return result;
}

uint64_t sub_1BC7274AC(uint64_t a1)
{
  result = sub_1BC7269FC(&qword_1EBCDE9F8, type metadata accessor for MediaPreviewScreen, &unk_1BC76CE54);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1BC727524(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCDEAA0;
  if (!qword_1EBCDEAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDEAA0);
  }

  return result;
}

uint64_t sub_1BC727594@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1 - 8);
  v7 = sub_1BC75ACD0();
  sub_1BC726C10(v3, v16);
  v8 = v16[0];
  v9 = v16[1];
  v10 = v17;
  sub_1BC721FD8(v3, &v16[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Video);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  sub_1BC722A58(&v16[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11, type metadata accessor for Video);
  v13 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEA78, qword_1BC76CC30) + 36));
  sub_1BC75A860();
  result = sub_1BC75BDF0();
  *v13 = &unk_1BC76D058;
  v13[1] = v12;
  *a2 = v7;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 24) = v8;
  *(a2 + 32) = v9;
  *(a2 + 40) = v10;
  return result;
}

void sub_1BC727774(uint64_t a1)
{
  if (!qword_1EBCDDFB0)
  {
    type metadata accessor for Report.Evidence(255);
    v1 = sub_1BC75B760();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBCDDFB0);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm_1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDE00, &qword_1BC769490);
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

uint64_t __swift_store_extra_inhabitant_indexTm_1(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDE00, &qword_1BC769490);
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

void sub_1BC727988(uint64_t a1)
{
  sub_1BC727774(319);
  if (v1 <= 0x3F)
  {
    sub_1BC6FF248(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1BC727A14(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1BC727A5C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1BC727AB8(uint64_t *a1, int a2)
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

uint64_t sub_1BC727B00(uint64_t result, int a2, int a3)
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

uint64_t __swift_get_extra_inhabitant_index_44Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Report.Media(0);
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

uint64_t __swift_store_extra_inhabitant_index_45Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Report.Media(0);
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

uint64_t sub_1BC727D40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(319, a2, a3);
  if (v7 <= 0x3F)
  {
    result = a5(319);
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1BC727DF8(uint64_t a1)
{
  sub_1BC759800();
  if (v1 <= 0x3F)
  {
    sub_1BC727E84(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1BC727E84(uint64_t a1)
{
  if (!qword_1EBCDEAA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDEA00, &qword_1BC76CBE0);
    v1 = sub_1BC75B670();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBCDEAA8);
    }
  }
}

uint64_t get_witness_table_qd__7SwiftUI4ViewHD2_AaBPAAE15navigationTitleyQrAA4TextVFQOy024SensitiveContentAnalysisB06ReportC4ListVy_AaJVys5NeverOAI7SectionVy_AA05TupleC0VyAI3RowV_ATtGAA05EmptyC0VGGG_Qo_HOTm(uint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
  sub_1BC633C54(a4, a2, a3, &unk_1BC769590);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_1BC727F88()
{
  result = qword_1EBCDEAC0;
  if (!qword_1EBCDEAC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDEA78, qword_1BC76CC30);
    sub_1BC633C54(&qword_1EBCDEAC8, &qword_1EBCDEAD0, &qword_1BC76D038, MEMORY[0x1E6981870]);
    sub_1BC7269FC(qword_1EDDCEEC0, MEMORY[0x1E697C028], MEMORY[0x1E697C010]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDEAC0);
  }

  return result;
}

void type metadata accessor for CGImage()
{
  if (!qword_1EBCDEAD8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1EBCDEAD8);
    }
  }
}

uint64_t objectdestroy_15Tm()
{
  v1 = (type metadata accessor for Video(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_1BC759800();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1BC7281B4()
{
  v2 = *(type metadata accessor for Video(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1BC65281C;

  return sub_1BC726DBC(v0 + v3);
}

uint64_t sub_1BC728288()
{
  v1 = *(type metadata accessor for MediaPreviewScreen(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1BC7267A8(v2);
}

uint64_t sub_1BC7282E8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1BC728348()
{
  result = qword_1EBCDEAF8;
  if (!qword_1EBCDEAF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDEAF0, &unk_1BC76D088);
    sub_1BC680F34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDEAF8);
  }

  return result;
}

unint64_t sub_1BC7283F4()
{
  result = qword_1EBCDEB18;
  if (!qword_1EBCDEB18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDEB08, &qword_1BC76D0A0);
    sub_1BC728478();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDEB18);
  }

  return result;
}

unint64_t sub_1BC728478()
{
  result = qword_1EBCDEB20;
  if (!qword_1EBCDEB20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDEB28, &qword_1BC76D0B0);
    sub_1BC728530();
    sub_1BC633C54(&qword_1EBCDEB40, &qword_1EBCDEB48, &qword_1BC76D0C0, MEMORY[0x1E697BD90]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDEB20);
  }

  return result;
}

unint64_t sub_1BC728530()
{
  result = qword_1EBCDEB30;
  if (!qword_1EBCDEB30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDEB38, &qword_1BC76D0B8);
    sub_1BC7269FC(&qword_1EBCDEA48, type metadata accessor for Video, &unk_1BC76CF0C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDEB30);
  }

  return result;
}

unint64_t sub_1BC7285EC()
{
  result = qword_1EBCDEB78;
  if (!qword_1EBCDEB78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDEB70, &qword_1BC76D0F0);
    sub_1BC728678();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDEB78);
  }

  return result;
}

unint64_t sub_1BC728678()
{
  result = qword_1EBCDEB80;
  if (!qword_1EBCDEB80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDEB88, &qword_1BC76D0F8);
    sub_1BC680F34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDEB80);
  }

  return result;
}

uint64_t sub_1BC728718()
{
  v1 = *(v0 + 32);
  v2 = swift_allocObject();
  *(v2 + 16) = *(v0 + 16);
  *(v2 + 32) = v1;
  swift_bridgeObjectRetain_n();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCFC8, &qword_1BC764A50);
  _s9MediaCellVMa(0);
  sub_1BC633C54(&qword_1EBCDEBA8, &qword_1EBCDCFC8, &qword_1BC764A50, MEMORY[0x1E69E6338]);
  sub_1BC7269FC(&qword_1EBCDEBA0, _s9MediaCellVMa, &unk_1BC76CDE8);
  sub_1BC7269FC(&qword_1EBCDEBB0, type metadata accessor for Report.Media, &protocol conformance descriptor for Report.Media);
  return sub_1BC75B780();
}

unint64_t sub_1BC728894()
{
  result = qword_1EBCDEB98;
  if (!qword_1EBCDEB98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDEB90, &unk_1BC76D100);
    sub_1BC7269FC(&qword_1EBCDEBA0, _s9MediaCellVMa, &unk_1BC76CDE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDEB98);
  }

  return result;
}

uint64_t objectdestroy_9Tm_0()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1BC728988@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 24);
  v4 = *(v2 + 32);
  sub_1BC721FD8(a1, a2, type metadata accessor for Report.Media);
  v6 = (a2 + *(_s9MediaCellVMa(0) + 20));
  *v6 = v5;
  v6[1] = v4;
}

uint64_t sub_1BC7289F8@<X0>(uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v39 = sub_1BC75ACD0();
  v37 = v4;
  v43 = *(v4 + 8);
  v42 = *(v4 + 8);
  sub_1BC6FF5EC(&v43, &v41);
  v7 = sub_1BC651E78(&v42, v5, v6);
  v9 = v8;
  v11 = v10;
  sub_1BC75B0F0();
  v12 = sub_1BC75B190();
  v14 = v13;
  LOBYTE(v4) = v15;

  sub_1BC680E6C(v7, v9, v11 & 1);

  v16 = sub_1BC75B180();
  v35 = v17;
  v36 = v16;
  v34 = v18;
  v38 = v19;
  sub_1BC680E6C(v12, v14, v4 & 1);

  v41 = *(v37 + 24);
  v42 = v41;
  sub_1BC6FF5EC(&v42, v40);
  v22 = sub_1BC651E78(&v41, v20, v21);
  v24 = v23;
  LOBYTE(v14) = v25;
  sub_1BC75B0D0();
  v26 = sub_1BC75B190();
  v28 = v27;
  v30 = v29;
  v32 = v31;

  sub_1BC680E6C(v22, v24, v14 & 1);

  LOBYTE(v41) = v34 & 1;
  v40[0] = v30 & 1;
  sub_1BC680FFC(v36, v35, v34 & 1);

  sub_1BC680FFC(v26, v28, v30 & 1);

  sub_1BC680E6C(v26, v28, v30 & 1);

  sub_1BC680E6C(v36, v35, v34 & 1);

  *a2 = v39;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 24) = v36;
  *(a2 + 32) = v35;
  *(a2 + 40) = v34 & 1;
  *(a2 + 48) = v38;
  *(a2 + 56) = v26;
  *(a2 + 64) = v28;
  *(a2 + 72) = v30 & 1;
  *(a2 + 80) = v32;
  return result;
}

uint64_t objectdestroy_5Tm_0()
{

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1BC728C98()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCEA0, &qword_1BC764A00);
  sub_1BC759910();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEBE8, &unk_1BC76D128);
  sub_1BC633C54(&qword_1EBCDEBF0, &qword_1EBCDCEA0, &qword_1BC764A00, MEMORY[0x1E69E6338]);
  sub_1BC633C54(&qword_1EBCDEBE0, &qword_1EBCDEBE8, &unk_1BC76D128, MEMORY[0x1E6981870]);
  sub_1BC7269FC(&qword_1EBCDEBF8, type metadata accessor for Report.Message, &protocol conformance descriptor for Report.Message);
  return sub_1BC75B780();
}

unint64_t sub_1BC728DF8()
{
  result = qword_1EBCDEBD8;
  if (!qword_1EBCDEBD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDEBD0, &qword_1BC76D120);
    sub_1BC633C54(&qword_1EBCDEBE0, &qword_1EBCDEBE8, &unk_1BC76D128, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDEBD8);
  }

  return result;
}

void static SensitiveContentTipState.donate(tipState:)(unsigned __int8 *a1)
{
  v2 = sub_1BC759F50();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  (*(v3 + 104))(v5, *MEMORY[0x1E697B570], v2);
  v7 = sub_1BC759F40();
  (*(v3 + 8))(v5, v2);
  if (v7)
  {
    if (qword_1EBCF1E90 != -1)
    {
      swift_once();
    }

    v8 = qword_1EBCF1E98;
    v9 = sub_1BC75BB30();
    [v8 setInteger:v6 forKey:v9];
  }
}

void static SensitiveContentTipState.ignore()()
{
  v0 = sub_1BC759F50();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v3, *MEMORY[0x1E697B570], v0);
  v4 = sub_1BC759F40();
  (*(v1 + 8))(v3, v0);
  if (v4)
  {
    if (qword_1EBCF1E90 != -1)
    {
      swift_once();
    }

    v5 = qword_1EBCF1E98;
    v6 = sub_1BC75BB30();
    [v5 setInteger:0 forKey:v6];
  }
}

SensitiveContentAnalysisUI::SensitiveContentTipState_optional __swiftcall SensitiveContentTipState.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

id static NSUserDefaults.sensitiveContentAnalysis.getter()
{
  if (qword_1EBCF1E90 != -1)
  {
    swift_once();
  }

  v1 = qword_1EBCF1E98;

  return v1;
}

uint64_t sub_1BC729334@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a3;
  *(a4 + 8) = result;
  *(a4 + 16) = a2;
  *a4 = v4;
  return result;
}

void sub_1BC729344(uint64_t *a1@<X8>)
{
  v3 = sub_1BC759D00();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SCLocalizedStringKey.StringInterpolation(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v1;
  v11 = *(v1 + 1);
  Array<A>.mostSalientTipState.getter(v11, &v39);
  v12 = *(v11 + 16);
  if (v12)
  {
    countAndFlagsBits_low = LOBYTE(v39._countAndFlagsBits);
    if (v10 == 3)
    {
      v14 = 0;
    }

    else
    {
      v14 = v10;
    }

    if (LOBYTE(v39._countAndFlagsBits) == 3)
    {
      countAndFlagsBits_low = v14;
    }

    if (countAndFlagsBits_low)
    {
      if (countAndFlagsBits_low == 1)
      {
        if (v12 == 2)
        {
          SCLocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
          v22._countAndFlagsBits = 0;
          v22._object = 0xE000000000000000;
          SCLocalizedStringKey.StringInterpolation.appendLiteral(_:)(v22);
          if (*(v11 + 16))
          {
            v23 = *(v4 + 16);
            v37 = v11 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
            v38 = v23;
            (v23)(v6);
            swift_getKeyPath();
            sub_1BC759CD0();

            v36 = *(v4 + 8);
            v36(v6, v3);
            SCLocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v39);

            v24._countAndFlagsBits = 32;
            v24._object = 0xE100000000000000;
            SCLocalizedStringKey.StringInterpolation.appendLiteral(_:)(v24);
            if (*(v11 + 16) >= 2uLL)
            {
              v38(v6, v37 + *(v4 + 72), v3);
              swift_getKeyPath();
              sub_1BC759CD0();

              v36(v6, v3);
              SCLocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v39);

              v16 = "RE_PARTICIPANTS_TO_ME";
              v17 = 0xD000000000000034;
              goto LABEL_33;
            }

            goto LABEL_41;
          }

          goto LABEL_36;
        }

        if (v12 == 1)
        {
          SCLocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
          v15._countAndFlagsBits = 0;
          v15._object = 0xE000000000000000;
          SCLocalizedStringKey.StringInterpolation.appendLiteral(_:)(v15);
          if (*(v11 + 16))
          {
            (*(v4 + 16))(v6, v11 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v3);
            swift_getKeyPath();
            sub_1BC759CD0();

            (*(v4 + 8))(v6, v3);
            SCLocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v39);

            v16 = "O_PARTICIPANTS_TO_ME";
            v17 = 0xD000000000000033;
LABEL_33:
            v28 = v16 | 0x8000000000000000;
            goto LABEL_34;
          }

          __break(1u);
LABEL_36:
          __break(1u);
LABEL_37:
          __break(1u);
          goto LABEL_38;
        }

        SCLocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v25._countAndFlagsBits = 0;
        v25._object = 0xE000000000000000;
        SCLocalizedStringKey.StringInterpolation.appendLiteral(_:)(v25);
        if (!*(v11 + 16))
        {
LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          __break(1u);
          goto LABEL_42;
        }

        v26 = *(v4 + 16);
        v37 = v11 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
        v38 = v26;
        (v26)(v6);
        swift_getKeyPath();
        sub_1BC759CD0();

        v36 = *(v4 + 8);
        v36(v6, v3);
        SCLocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v39);

        v27._countAndFlagsBits = 32;
        v27._object = 0xE100000000000000;
        SCLocalizedStringKey.StringInterpolation.appendLiteral(_:)(v27);
        if (*(v11 + 16) < 2uLL)
        {
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
LABEL_44:
          __break(1u);
          return;
        }

        v38(v6, v37 + *(v4 + 72), v3);
        swift_getKeyPath();
        sub_1BC759CD0();

        v36(v6, v3);
        SCLocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v39);

        v21 = " TIP_TITLE_LAST_FACETIME_CALL_MORE_PARTICIPANTS_TO_ME";
      }

      else
      {
        if (v12 == 2)
        {
          SCLocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
          v29._countAndFlagsBits = 0;
          v29._object = 0xE000000000000000;
          SCLocalizedStringKey.StringInterpolation.appendLiteral(_:)(v29);
          if (*(v11 + 16))
          {
            v30 = *(v4 + 16);
            v37 = v11 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
            v38 = v30;
            (v30)(v6);
            swift_getKeyPath();
            sub_1BC759CD0();

            v36 = *(v4 + 8);
            v36(v6, v3);
            SCLocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v39);

            v31._countAndFlagsBits = 32;
            v31._object = 0xE100000000000000;
            SCLocalizedStringKey.StringInterpolation.appendLiteral(_:)(v31);
            if (*(v11 + 16) >= 2uLL)
            {
              v38(v6, v37 + *(v4 + 72), v3);
              swift_getKeyPath();
              sub_1BC759CD0();

              v36(v6, v3);
              SCLocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v39);

              v16 = "RE_PARTICIPANTS_FROM_ME";
              v17 = 0xD000000000000036;
              goto LABEL_33;
            }

            goto LABEL_43;
          }

          goto LABEL_39;
        }

        if (v12 != 1)
        {
          SCLocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
          v32._countAndFlagsBits = 0;
          v32._object = 0xE000000000000000;
          SCLocalizedStringKey.StringInterpolation.appendLiteral(_:)(v32);
          if (*(v11 + 16))
          {
            v33 = *(v4 + 16);
            v37 = v11 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
            v38 = v33;
            (v33)(v6);
            swift_getKeyPath();
            sub_1BC759CD0();

            v36 = *(v4 + 8);
            v36(v6, v3);
            SCLocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v39);

            v34._countAndFlagsBits = 32;
            v34._object = 0xE100000000000000;
            SCLocalizedStringKey.StringInterpolation.appendLiteral(_:)(v34);
            if (*(v11 + 16) >= 2uLL)
            {
              v38(v6, v37 + *(v4 + 72), v3);
              swift_getKeyPath();
              sub_1BC759CD0();

              v36(v6, v3);
              SCLocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v39);

              v16 = "E_PARTICIPANT_TO_ME";
              v17 = 0xD000000000000037;
              goto LABEL_33;
            }

            goto LABEL_44;
          }

          goto LABEL_40;
        }

        SCLocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v20._countAndFlagsBits = 0;
        v20._object = 0xE000000000000000;
        SCLocalizedStringKey.StringInterpolation.appendLiteral(_:)(v20);
        if (!*(v11 + 16))
        {
          goto LABEL_37;
        }

        (*(v4 + 16))(v6, v11 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v3);
        swift_getKeyPath();
        sub_1BC759CD0();

        (*(v4 + 8))(v6, v3);
        SCLocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v39);

        v21 = " TIP_TITLE_LAST_FACETIME_CALL_ONE_PARTICIPANT_FROM_ME";
      }

      v28 = (v21 - 32) | 0x8000000000000000;
      v17 = 0xD000000000000035;
LABEL_34:
      SCLocalizedStringKey.StringInterpolation.appendLiteral(_:)(*&v17);
      SCLocalizedStringKey.init(stringInterpolation:)(v9, a1);
      return;
    }
  }

  v18 = 0xD00000000000002CLL;
  v19 = 0x80000001BC774310;

  SCLocalizedStringKey.init(stringLiteral:)(*&v18);
}

uint64_t Array<A>.mostSalientTipState.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_1BC759C40();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v19 - v9;
  v11 = sub_1BC759CA0();
  v12 = *(v11 - 8);
  result = MEMORY[0x1EEE9AC00](v11);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16))
  {
    sub_1BC759D00();
    sub_1BC759CF0();
    sub_1BC759C90();
    (*(v12 + 8))(v15, v11);
    sub_1BC759C30();
    sub_1BC6741B0();
    v16 = sub_1BC75C170();
    v17 = *(v5 + 8);
    v17(v8, v4);
    result = (v17)(v10, v4);
    if (v16)
    {
      v18 = 2;
    }

    else
    {
      v18 = 1;
    }
  }

  else
  {
    v18 = 3;
  }

  *a2 = v18;
  return result;
}

uint64_t sub_1BC729E54()
{
  v30 = sub_1BC75A5F0();
  v1 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v3 = v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(v0 + 16);
  v5 = *(v4 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v7 = v3;
    v37 = MEMORY[0x1E69E7CC0];
    sub_1BC72A4E4(0, v5, 0);
    v6 = v37;
    v27[1] = v1 + 32;
    v28 = v7;
    v8 = v4 + 48;
    v29 = v1;
    do
    {
      v35 = v6;
      v36 = v5;
      v10 = *(v8 - 16);
      v12 = *v8;
      v11 = *(v8 + 8);
      v13 = *(v8 + 16);
      v14 = *(v8 + 24);
      v15 = *(v8 + 32);
      v31 = *(v8 - 8);
      v9 = v31;
      v32 = v14;
      v34 = *(v8 + 40);
      v16 = v34;
      v17 = swift_allocObject();
      *(v17 + 16) = v15;
      *(v17 + 24) = v16;
      v18 = swift_allocObject();
      *(v18 + 16) = v10;
      *(v18 + 24) = v9;
      v33 = v10;
      *(v18 + 32) = v12;
      *(v18 + 40) = v11;
      *(v18 + 48) = v13;
      v19 = v32;
      *(v18 + 56) = v32;
      *(v18 + 64) = sub_1BC68CB30;
      *(v18 + 72) = v17;
      v20 = swift_allocObject();
      *(v20 + 16) = v10;
      *(v20 + 24) = v31;
      *(v20 + 32) = v12;
      *(v20 + 40) = v11;
      *(v20 + 48) = v13;
      *(v20 + 56) = v19;
      *(v20 + 64) = sub_1BC68CB30;
      v21 = v28;
      *(v20 + 72) = v17;
      swift_bridgeObjectRetain_n();
      sub_1BC680FFC(v12, v11, v13);

      v22 = v13;
      v6 = v35;
      sub_1BC680FFC(v12, v11, v22);

      sub_1BC75A5A0();
      v37 = v6;
      v24 = *(v6 + 16);
      v23 = *(v6 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_1BC72A4E4((v23 > 1), v24 + 1, 1);
        v6 = v37;
      }

      *(v6 + 16) = v24 + 1;
      (*(v29 + 32))(v6 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v24, v21, v30);
      v8 += 64;
      v5 = v36 - 1;
    }

    while (v36 != 1);
  }

  v25 = sub_1BC72A764(v6);

  return v25;
}

uint64_t sub_1BC72A148()
{
  v0._countAndFlagsBits = 0;
  v0._object = 0xE000000000000000;
  v1 = SCLocalizedStringKey.init(stringLiteral:)(v0);
  v4[0] = v4[2];
  v4[1] = v4[3];
  return sub_1BC651E78(v4, v1.localized._object, v2);
}

uint64_t sub_1BC72A188()
{
  v6 = *v0;
  v7 = *(v0 + 8);
  sub_1BC729344(v5);
  v4[0] = v5[0];
  v4[1] = v5[1];
  return sub_1BC651E78(v4, v1, v2);
}

uint64_t sub_1BC72A200()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEC28, &qword_1BC76D158);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v16 - v2;
  v4 = sub_1BC75A580();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEC30, &qword_1BC76D160);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  sub_1BC75A590();
  v12 = MEMORY[0x1E6982B20];
  MEMORY[0x1BFB25130](v7, v4, MEMORY[0x1E6982B20]);
  (*(v5 + 8))(v7, v4);
  v16 = v4;
  v17 = v12;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x1BFB25150](v11, v8, OpaqueTypeConformance2);
  v16 = v8;
  v17 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v14 = sub_1BC75A560();
  (*(v1 + 8))(v3, v0);
  (*(v9 + 8))(v11, v8);
  return v14;
}

uint64_t sub_1BC72A4A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v6 = sub_1BC6D1E10(a1, a2, a3);
  result = MEMORY[0x1BFB250D0](a1, v6);
  *a4 = result;
  a4[1] = v8;
  return result;
}

void *sub_1BC72A4E4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1BC72A504(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1BC72A504(void *result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEC48, &qword_1BC76D380);
  v10 = *(sub_1BC75A5F0() - 8);
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
  v15 = *(sub_1BC75A5F0() - 8);
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

uint64_t sub_1BC72A704()
{
  v1 = *(v0 + 32);
  sub_1BC680FFC(v1, *(v0 + 40), *(v0 + 48));

  return v1;
}

uint64_t sub_1BC72A764(uint64_t a1)
{
  v2 = sub_1BC75A5F0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEC40, &qword_1BC76D378);
  v6 = MEMORY[0x1EEE9AC00](v30);
  v29 = (&v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v24 - v8;
  v31 = MEMORY[0x1E69E7CC0];
  sub_1BC72A4E4(0, 0, 0);
  v10 = v31;
  v28 = *(a1 + 16);
  if (v28)
  {
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v14 = *(v12 + 56);
    v26 = (*(v12 + 64) + 32) & ~*(v12 + 64);
    v27 = v13;
    v15 = a1 + v26;
    v24 = (v12 + 16);
    v25 = v14;
    do
    {
      v16 = v29;
      v17 = *(v30 + 48);
      *v29 = v11;
      v18 = v12;
      v27(v16 + v17, v15, v2);
      sub_1BC72AA40(v16, v9);
      sub_1BC75A5C0();
      sub_1BC72AAB0(v9);
      v31 = v10;
      v19 = v2;
      v21 = *(v10 + 16);
      v20 = *(v10 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_1BC72A4E4((v20 > 1), v21 + 1, 1);
        v10 = v31;
      }

      ++v11;
      *(v10 + 16) = v21 + 1;
      v22 = v25;
      (*v24)(v10 + v26 + v21 * v25, v5, v19);
      v15 += v22;
      v2 = v19;
      v12 = v18;
    }

    while (v28 != v11);
  }

  return v10;
}

unint64_t sub_1BC72A9DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCDEC38;
  if (!qword_1EBCDEC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDEC38);
  }

  return result;
}

uint64_t sub_1BC72AA40(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEC40, &qword_1BC76D378);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BC72AAB0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEC40, &qword_1BC76D378);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BC72AC18(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t sub_1BC72AC78@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x60))();
  *a2 = result;
  return result;
}

uint64_t sub_1BC72ACD4(void *a1, void **a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x68);
  v3 = swift_unknownObjectRetain();
  return v2(v3);
}

void (*sub_1BC72AD38(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC26SensitiveContentAnalysisUI26InterventionViewController_interventionDelegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1BC72ADD0;
}

void sub_1BC72ADD0(void **a1, char a2)
{
  v3 = *a1;
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

id InterventionViewController.__allocating_init(with:nestedIn:)(uint64_t a1, void *a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = sub_1BC72B47C(a1, a2);

  return v6;
}

id InterventionViewController.init(with:nestedIn:)(uint64_t a1, void *a2)
{
  v3 = sub_1BC72B47C(a1, a2);

  return v3;
}

uint64_t *sub_1BC72AED0()
{
  if (qword_1EBCF2230 != -1)
  {
    swift_once();
  }

  return &qword_1EBCF4708;
}

id InterventionViewController.__allocating_init(navigationBarClass:toolbarClass:)(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if (a1)
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    if (!v3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  ObjCClassFromMetadata = 0;
  if (a2)
  {
LABEL_3:
    v3 = swift_getObjCClassFromMetadata();
  }

LABEL_4:
  v5 = objc_allocWithZone(v2);

  return [v5 initWithNavigationBarClass:ObjCClassFromMetadata toolbarClass:v3];
}

id InterventionViewController.__allocating_init(rootViewController:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithRootViewController_];

  return v3;
}

id InterventionViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1BC75BB30();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id InterventionViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InterventionViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t InterventionViewController.contextDictionary.getter()
{
  type metadata accessor for InterventionConfig(0);
}

unint64_t sub_1BC72B3B0()
{
  result = sub_1BC72B8F4();
  qword_1EBCF4700 = result;
  return result;
}

uint64_t *sub_1BC72B3D4()
{
  if (qword_1EBCF2228 != -1)
  {
    swift_once();
  }

  return &qword_1EBCF4700;
}

uint64_t sub_1BC72B424()
{
  if (qword_1EBCF2228 != -1)
  {
    result = swift_once();
  }

  qword_1EBCF4708 = qword_1EBCF4700;
  return result;
}

id sub_1BC72B47C(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = type metadata accessor for InterventionConfig(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectWeakInit();
  sub_1BC6E86E8(a1, v3 + OBJC_IVAR____TtC26SensitiveContentAnalysisUI26InterventionViewController_config);
  type metadata accessor for InterventionScreenModel(0);
  sub_1BC6E86E8(a1, v8);
  v9 = InterventionScreenModel.__allocating_init(screen:config:participantContactCache:)(0, v8, 0);
  if (qword_1EBCF2230 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v10 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithModel_];
  v11 = type metadata accessor for InterventionViewController(0);
  v27.receiver = v3;
  v27.super_class = v11;
  v12 = objc_msgSendSuper2(&v27, sel_initWithRootViewController_, v10);
  v13 = v12;
  v14 = a2;
  if (!a2)
  {
    v14 = v12;
  }

  v15 = v13;
  v16 = a2;
  [v10 setContainer_];

  v17 = v15;
  v18 = [v17 navigationBar];
  v19 = [v18 standardAppearance];

  v20 = [v19 copy];
  [v20 configureWithTransparentBackground];
  v21 = [v17 navigationBar];
  v22 = v20;
  [v21 setScrollEdgeAppearance_];

  v23 = [v17 navigationBar];
  [v23 setStandardAppearance_];

  v24 = [v17 navigationBar];
  [v24 setCompactAppearance_];

  sub_1BC6980C0(a1);
  return v17;
}

uint64_t type metadata accessor for InterventionViewController(uint64_t a1)
{
  result = qword_1EBCF2238;
  if (!qword_1EBCF2238)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BC72B794(uint64_t a1)
{
  result = type metadata accessor for InterventionConfig(319);
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

unint64_t sub_1BC72B8F4()
{
  result = qword_1EBCDC278;
  if (!qword_1EBCDC278)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBCDC278);
  }

  return result;
}

uint64_t sub_1BC72B940()
{
  v0 = swift_allocObject();
  sub_1BC75A4D0();
  v1 = sub_1BC75BB30();
  v2 = [objc_opt_self() containerWithIdentifier_];

  v3 = [v2 publicCloudDatabase];
  *(v0 + 16) = v3;
  return v0;
}

uint64_t sub_1BC72BA2C(uint64_t a1)
{
  v2[23] = a1;
  v2[24] = v1;
  v3 = sub_1BC759940();
  v2[25] = v3;
  v2[26] = *(v3 - 8);
  v2[27] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BC72BAEC, 0, 0);
}

uint64_t sub_1BC72BAEC()
{
  v1 = v0[26];
  v2 = v0[27];
  v3 = v0[25];
  v10 = v0[24];
  sub_1BC65F664(0, &qword_1EBCDEC50, 0x1E695BA60);
  sub_1BC65F664(0, &qword_1EBCDEC58, 0x1E695BA70);
  sub_1BC759930();
  sub_1BC759920();
  (*(v1 + 8))(v2, v3);
  sub_1BC65F664(0, &qword_1EBCDEC60, 0x1E695BA90);
  sub_1BC75BF90();
  sub_1BC75BEF0();
  v4 = sub_1BC75C000();
  v0[28] = v4;
  type metadata accessor for CloudKitReport(0);
  v5 = objc_allocWithZone(MEMORY[0x1E695B878]);
  v6 = sub_1BC759770();
  [v5 initWithFileURL_];

  sub_1BC75C010();
  sub_1BC65F664(0, &qword_1EBCDD110, 0x1E695B878);
  sub_1BC75BCF0();
  sub_1BC75C010();
  v7 = *(v10 + 16);
  v0[2] = v0;
  v0[7] = v0 + 21;
  v0[3] = sub_1BC72BDBC;
  v8 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEC68, &unk_1BC76D440);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1BC72C1BC;
  v0[13] = &block_descriptor_4;
  v0[14] = v8;
  [v7 saveRecord:v4 completionHandler:?];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1BC72BDBC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 232) = v1;
  if (v1)
  {
    v2 = sub_1BC72C028;
  }

  else
  {
    v2 = sub_1BC72BECC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1BC72BECC()
{
  v1 = *(v0 + 168);
  v2 = sub_1BC75A4C0();
  v3 = sub_1BC75BF50();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    v6 = [v1 recordID];
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&dword_1BC630000, v2, v3, "Successfully uploaded encrypted report with ID: %@", v4, 0xCu);
    sub_1BC72C350(v5);
    MEMORY[0x1BFB27EF0](v5, -1, -1);
    MEMORY[0x1BFB27EF0](v4, -1, -1);
  }

  v7 = *(v0 + 8);

  return v7(v1);
}

uint64_t sub_1BC72C028(uint64_t a1)
{
  v15 = v1;
  v2 = v1[29];
  swift_willThrow();
  v3 = v2;
  v4 = sub_1BC75A4C0();
  v5 = sub_1BC75BF60();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = sub_1BC75C6A0();
    v10 = sub_1BC674BD8(v8, v9, &v14);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1BC630000, v4, v5, "Failed to upload encrypted report: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1BFB27EF0](v7, -1, -1);
    MEMORY[0x1BFB27EF0](v6, -1, -1);
  }

  v11 = v1[28];
  swift_willThrow();

  v12 = v1[1];

  return v12();
}

uint64_t sub_1BC72C1BC(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE120, &unk_1BC763ED0);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return MEMORY[0x1EEE6DEE8](v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x1EEE6DEE0](v5);
  }
}

uint64_t sub_1BC72C2AC()
{
  v1 = OBJC_IVAR____TtC26SensitiveContentAnalysisUI15CloudKitWrapper_logger;
  v2 = sub_1BC75A4E0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1BC72C350(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE130, &qword_1BC7679C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for CloudKitWrapper(uint64_t a1)
{
  result = qword_1EBCF2250;
  if (!qword_1EBCF2250)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BC72C40C(uint64_t a1)
{
  result = sub_1BC75A4E0();
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

uint64_t sub_1BC72C4C0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BC759910();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t type metadata accessor for Report.Message(uint64_t a1)
{
  result = qword_1EBCF2500;
  if (!qword_1EBCF2500)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Report.Message.media.getter()
{
  type metadata accessor for Report.Message(0);
}

uint64_t Report.Message.media.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Report.Message(0) + 32);

  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1BC72C630()
{
  if (qword_1EBCF2260 != -1)
  {
    swift_once();
  }

  v0 = qword_1EBCF2268;
  v1 = sub_1BC7598C0();
  v2 = [v0 stringFromDate_];

  v3 = sub_1BC75BB60();
  return v3;
}

uint64_t Report.Message.encode(to:configuration:)(void *a1, uint64_t a2)
{
  v4 = v2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEC70, &unk_1BC76D490);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v20 - v9;
  v11 = type metadata accessor for Report.Authority(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BC730448(a2, v13, type metadata accessor for Report.Authority);
  v14 = type metadata accessor for Report.Authority.DirectAuthorityDetails(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    v15 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1BC72E3D8(v15, v16, v17);
    sub_1BC75C740();
    sub_1BC6B8D2C();
    v24 = 0;
    sub_1BC75C530();
    if (v3)
    {
      (*(v8 + 8))(v10, v7);
    }

    else
    {

      v23 = 1;
      sub_1BC759910();
      sub_1BC730CE8(&qword_1EBCDCE60, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
      sub_1BC75C560();
      v19 = type metadata accessor for Report.Message(0);
      v22 = 2;
      sub_1BC75C530();
      v20[1] = *(v4 + *(v19 + 32));
      v21 = 3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCFC8, &qword_1BC764A50);
      sub_1BC72E480(&qword_1EBCDEC78, &qword_1EBCDEC80, &protocol conformance descriptor for Report.Media, MEMORY[0x1E6969E18]);
      sub_1BC75C4F0();
      return (*(v8 + 8))(v10, v7);
    }
  }

  else
  {
    Report.Message.encode(to:)(a1);
    return sub_1BC7304B0(v13, type metadata accessor for Report.Authority);
  }
}

uint64_t Report.Message.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEC88, &qword_1BC76D4A0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14[-v7];
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BC72E42C(v9, v10, v11);
  sub_1BC75C740();
  v19 = 0;
  sub_1BC759910();
  sub_1BC730CE8(&qword_1EBCDCE60, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
  sub_1BC75C560();
  if (!v2)
  {
    v12 = type metadata accessor for Report.Message(0);
    v18 = 1;
    sub_1BC75C530();
    v17 = 2;
    sub_1BC75C530();
    v16 = 3;
    sub_1BC75C530();
    v15 = *(v3 + *(v12 + 32));
    v14[15] = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCFC8, &qword_1BC764A50);
    sub_1BC72E480(&qword_1EBCDCFD0, &qword_1EBCDCFD8, &protocol conformance descriptor for Report.Media, MEMORY[0x1E69E6300]);
    sub_1BC75C560();
    v14[14] = 5;
    sub_1BC75C540();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1BC72CD4C()
{
  v1 = *v0;
  v2 = 1702125924;
  v3 = 2036625250;
  v4 = 0x616964656DLL;
  if (v1 != 4)
  {
    v4 = 0xD000000000000012;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x63417265646E6573;
  if (v1 != 1)
  {
    v5 = 0xD000000000000011;
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

uint64_t sub_1BC72CE00@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1BC7308A0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1BC72CE28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1BC72E42C(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1BC72CE64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1BC72E42C(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t Report.Message.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v4 = sub_1BC759910();
  v29 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v31 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEC90, &qword_1BC76D4A8);
  v30 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v7 = &v27 - v6;
  v8 = type metadata accessor for Report.Message(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BC72E42C(v11, v12, v13);
  v33 = v7;
  sub_1BC75C730();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v14 = v30;
  v40 = 0;
  sub_1BC730CE8(&qword_1EBCDCF18, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
  v15 = v31;
  sub_1BC75C4C0();
  (*(v29 + 32))(v10, v15, v4);
  v39 = 1;
  v16 = sub_1BC75C4A0();
  v17 = &v10[v8[5]];
  *v17 = v16;
  v17[1] = v18;
  v38 = 2;
  v19 = sub_1BC75C4A0();
  v20 = &v10[v8[6]];
  *v20 = v19;
  v20[1] = v21;
  v37 = 3;
  v22 = sub_1BC75C4A0();
  v23 = &v10[v8[7]];
  *v23 = v22;
  v23[1] = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCFC8, &qword_1BC764A50);
  v36 = 4;
  sub_1BC72E480(&qword_1EBCDD1B0, &qword_1EBCDD1B8, &protocol conformance descriptor for Report.Media, MEMORY[0x1E69E6330]);
  sub_1BC75C4C0();
  *&v10[v8[8]] = v34;
  v35 = 5;
  v25 = sub_1BC75C4B0();
  (*(v14 + 8))(v33, v32);
  v10[v8[9]] = v25 & 1;
  sub_1BC730448(v10, v28, type metadata accessor for Report.Message);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1BC7304B0(v10, type metadata accessor for Report.Message);
}

uint64_t sub_1BC72D454(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Report.Message(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  isUniquelyReferenced_nonNull_native = &v47 - v10;
  if (a2 >> 62)
  {
    goto LABEL_44;
  }

  v12 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v49 = a1;
  v50 = v5;
  v47 = v8;
  v48 = v9;
  if (v12)
  {
    v13 = 0;
    v53 = a2 & 0xFFFFFFFFFFFFFF8;
    v54 = a2 & 0xC000000000000001;
    v14 = MEMORY[0x1E69E7CC8];
    v51 = v12;
    v52 = a2;
    while (1)
    {
      if (v54)
      {
        v9 = MEMORY[0x1BFB26EB0](v13, a2);
      }

      else
      {
        if (v13 >= *(v53 + 16))
        {
          goto LABEL_39;
        }

        v9 = *(a2 + 8 * v13 + 32);
      }

      v5 = v9;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        v39 = v9;
        v12 = sub_1BC75C3F0();
        v9 = v39;
        goto LABEL_3;
      }

      v55 = v13 + 1;
      a1 = isUniquelyReferenced_nonNull_native;
      v17 = [v9 identifier];
      a2 = sub_1BC75BB60();
      v19 = v18;

      v20 = v5;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v57 = v14;
      v5 = v14;
      v8 = sub_1BC65B77C(a2, v19);
      v22 = v14[2];
      v23 = (v21 & 1) == 0;
      v9 = (v22 + v23);
      if (__OFADD__(v22, v23))
      {
        goto LABEL_40;
      }

      v24 = v21;
      if (v14[3] >= v9)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          isUniquelyReferenced_nonNull_native = a1;
          if (v21)
          {
            goto LABEL_5;
          }
        }

        else
        {
          v5 = &v57;
          sub_1BC72FFBC();
          isUniquelyReferenced_nonNull_native = a1;
          if (v24)
          {
            goto LABEL_5;
          }
        }
      }

      else
      {
        sub_1BC72FD18(v9, isUniquelyReferenced_nonNull_native);
        v5 = v57;
        v25 = sub_1BC65B77C(a2, v19);
        if ((v24 & 1) != (v26 & 1))
        {
          goto LABEL_56;
        }

        v8 = v25;
        isUniquelyReferenced_nonNull_native = a1;
        if (v24)
        {
LABEL_5:

          v14 = v57;
          v15 = *(v57 + 56);
          v16 = *(v15 + 8 * v8);
          *(v15 + 8 * v8) = v20;

          goto LABEL_6;
        }
      }

      v14 = v57;
      *(v57 + 8 * (v8 >> 6) + 64) |= 1 << v8;
      v27 = (v14[6] + 16 * v8);
      *v27 = a2;
      v27[1] = v19;
      *(v14[7] + 8 * v8) = v20;

      v28 = v14[2];
      v29 = __OFADD__(v28, 1);
      v30 = v28 + 1;
      if (v29)
      {
        goto LABEL_42;
      }

      v14[2] = v30;
LABEL_6:
      ++v13;
      a2 = v52;
      if (v55 == v51)
      {
        goto LABEL_24;
      }
    }
  }

  v14 = MEMORY[0x1E69E7CC8];
LABEL_24:

  v57 = sub_1BC730128(v31);
  sub_1BC72EBE4(&v57);

  v8 = v57;
  v32 = v50;
  if ((v57 & 0x8000000000000000) != 0 || (v57 & 0x4000000000000000) != 0)
  {
    a1 = sub_1BC75C3F0();
    if (a1)
    {
LABEL_27:
      v57 = MEMORY[0x1E69E7CC0];
      v9 = sub_1BC720E80(0, a1 & ~(a1 >> 63), 0);
      if ((a1 & 0x8000000000000000) == 0)
      {
        v33 = 0;
        v5 = v57;
        v55 = v8 & 0xC000000000000001;
        while (1)
        {
          a2 = v33 + 1;
          if (__OFADD__(v33, 1))
          {
            goto LABEL_41;
          }

          if (v55)
          {
            v34 = MEMORY[0x1BFB26EB0](v33, v8);
          }

          else
          {
            if (v33 >= *(v8 + 16))
            {
              goto LABEL_43;
            }

            v34 = *(v8 + 8 * v33 + 32);
          }

          v35 = v34;
          v56[0] = v34;
          sub_1BC72D9B0(v56, v14, isUniquelyReferenced_nonNull_native);

          v57 = v5;
          v36 = isUniquelyReferenced_nonNull_native;
          v38 = v5[2];
          v37 = v5[3];
          if (v38 >= v37 >> 1)
          {
            sub_1BC720E80((v37 > 1), v38 + 1, 1);
            v5 = v57;
          }

          v5[2] = v38 + 1;
          v9 = sub_1BC730BD0(v36, v5 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + v32[9] * v38, type metadata accessor for Report.Message);
          ++v33;
          isUniquelyReferenced_nonNull_native = v36;
          if (a2 == a1)
          {

            goto LABEL_47;
          }
        }
      }

      goto LABEL_55;
    }
  }

  else
  {
    a1 = *(v57 + 16);
    if (a1)
    {
      goto LABEL_27;
    }
  }

  v5 = MEMORY[0x1E69E7CC0];
LABEL_47:
  v40 = v5[2];
  v42 = v47;
  v41 = v48;
  if (!v40)
  {
LABEL_52:
    v43 = 0;
LABEL_53:
    v45 = Array.keeping(upTo:beforeAndAfter:)(10, v43, v5, v41);

    return v45;
  }

  v43 = 0;
  while (v43 < v5[2])
  {
    v8 = type metadata accessor for Report.Message;
    sub_1BC730448(v5 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + v32[9] * v43, v42, type metadata accessor for Report.Message);
    v44 = *(v42 + *(v41 + 36));
    sub_1BC7304B0(v42, type metadata accessor for Report.Message);
    if (v44)
    {
      goto LABEL_53;
    }

    if (v40 == ++v43)
    {
      goto LABEL_52;
    }
  }

  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  sub_1BC75C640();
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1BC72D9B0@<X0>(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v92 = a3;
  v5 = sub_1BC759910();
  v90 = *(v5 - 8);
  v91 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v89 = &v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCFE0, &unk_1BC76D070);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v96 = &v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v103 = &v87 - v10;
  v11 = sub_1BC759800();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v105 = &v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD1E8, &unk_1BC76D820);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v101 = &v87 - v14;
  v104 = type metadata accessor for Report.Media(0);
  v95 = *(v104 - 8);
  v15 = MEMORY[0x1EEE9AC00](v104);
  v87 = &v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v102 = &v87 - v17;
  v88 = *a1;
  v18 = [v88 attachmentIdentifiers];
  v19 = sub_1BC75BD00();

  v20 = MEMORY[0x1E69E7CC0];
  v106 = MEMORY[0x1E69E7CC0];
  v21 = *(v19 + 16);
  if (!v21)
  {
    goto LABEL_12;
  }

  v22 = 0;
  do
  {
    v23 = (v19 + 40 + 16 * v22);
    v24 = v22;
    while (1)
    {
      if (v24 >= *(v19 + 16))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (!*(a2 + 16))
      {
        goto LABEL_4;
      }

      v25 = *(v23 - 1);
      v26 = *v23;

      v27 = sub_1BC65B77C(v25, v26);
      if (v28)
      {
        break;
      }

LABEL_4:
      ++v24;
      v23 += 2;
      if (v21 == v24)
      {
        goto LABEL_12;
      }
    }

    v29 = *(*(a2 + 56) + 8 * v27);

    MEMORY[0x1BFB268C0](v30);
    if (*((v106 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v106 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1BC75BD20();
    }

    v22 = v24 + 1;
    sub_1BC75BD50();
    v20 = v106;
  }

  while (v21 - 1 != v24);
LABEL_12:

  if (v20 >> 62)
  {
    goto LABEL_37;
  }

  v31 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = v96; v31; i = v96)
  {
    v33 = 0;
    v99 = v20 & 0xFFFFFFFFFFFFFF8;
    v100 = v20 & 0xC000000000000001;
    v94 = *MEMORY[0x1E697B5F0];
    v97 = (v95 + 48);
    v34 = MEMORY[0x1E69E7CC0];
    v93 = *MEMORY[0x1E697B5F8];
    v98 = v31;
    while (1)
    {
      if (v100)
      {
        v36 = MEMORY[0x1BFB26EB0](v33, v20);
      }

      else
      {
        if (v33 >= *(v99 + 16))
        {
          goto LABEL_36;
        }

        v36 = *(v20 + 8 * v33 + 32);
      }

      v37 = v36;
      v38 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        break;
      }

      v39 = v20;
      v40 = v34;
      v41 = [v36 url];
      sub_1BC7597C0();

      v42 = [v37 UTIType];
      v43 = sub_1BC75BB60();
      v45 = v44;

      v46 = [v37 isSensitive];
      if (v46)
      {
        v47 = v46;
        v48 = [v46 BOOLValue];

        v49 = sub_1BC75A050();
        v50 = *(v49 - 8);
        v51 = (v50 + 56);
        if (v48)
        {
          i = v96;
          v52 = v96;
          v53 = v93;
        }

        else
        {
          i = v96;
          v52 = v96;
          v53 = v94;
        }

        (*(v50 + 104))(v52, v53, v49);
        (*v51)(i, 0, 1, v49);
      }

      else
      {
        v54 = sub_1BC75A050();
        (*(*(v54 - 8) + 56))(i, 1, 1, v54);
      }

      v55 = v103;
      sub_1BC730AF8(i, v103);
      v56 = [v37 wasImpetusOfReport];
      v57 = v43;
      v58 = v101;
      Report.Media.init(url:utiType:sensitivity:wasImpetusOfReport:)(v105, v57, v45, v55, v56, v101);

      v34 = v40;
      if ((*v97)(v58, 1, v104) == 1)
      {
        sub_1BC730B68(v58);
        v20 = v39;
        v35 = v98;
      }

      else
      {
        sub_1BC730BD0(v58, v102, type metadata accessor for Report.Media);
        v20 = v39;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v34 = sub_1BC6BAE4C(0, v34[2] + 1, 1, v34);
        }

        v35 = v98;
        v60 = v34[2];
        v59 = v34[3];
        if (v60 >= v59 >> 1)
        {
          v34 = sub_1BC6BAE4C((v59 > 1), v60 + 1, 1, v34);
        }

        v34[2] = v60 + 1;
        sub_1BC730BD0(v102, v34 + ((*(v95 + 80) + 32) & ~*(v95 + 80)) + *(v95 + 72) * v60, type metadata accessor for Report.Media);
      }

      ++v33;
      if (v38 == v35)
      {
        goto LABEL_39;
      }
    }

LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    v31 = sub_1BC75C3F0();
  }

  v34 = MEMORY[0x1E69E7CC0];
LABEL_39:

  v61 = v88;
  v62 = [v88 date];
  v63 = v89;
  sub_1BC7598F0();

  v64 = [v61 senderAccountID];
  v65 = sub_1BC75BB60();
  v67 = v66;

  v68 = [v61 senderDisplayName];
  v69 = sub_1BC75BB60();
  v71 = v70;

  v72 = [v61 body];
  v73 = sub_1BC75BB60();
  v75 = v74;

  v76 = v92;
  (*(v90 + 16))(v92, v63, v91);
  v77 = type metadata accessor for Report.Message(0);
  v78 = (v76 + v77[5]);
  *v78 = v65;
  v78[1] = v67;
  v79 = (v76 + v77[6]);
  *v79 = v69;
  v79[1] = v71;
  v80 = (v76 + v77[7]);
  *v80 = v73;
  v80[1] = v75;
  *(v76 + v77[8]) = v34;
  v81 = v34[2];
  if (v81)
  {
    v82 = v34 + ((*(v95 + 80) + 32) & ~*(v95 + 80));
    v83 = *(v95 + 72);

    v84 = 0;
    v85 = v87;
    do
    {
      sub_1BC730448(v82, v85, type metadata accessor for Report.Media);
      if (v84)
      {
        v84 = 1;
      }

      else
      {
        v84 = *(v85 + *(v104 + 28));
      }

      sub_1BC7304B0(v85, type metadata accessor for Report.Media);
      v82 += v83;
      --v81;
    }

    while (v81);
  }

  else
  {
    v84 = 0;
  }

  result = (*(v90 + 8))(v89, v91);
  *(v92 + v77[9]) = v84;
  return result;
}

uint64_t sub_1BC72E2A0@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 isSensitive];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 BOOLValue];

    v6 = sub_1BC75A050();
    v7 = *(v6 - 8);
    v15 = (v7 + 56);
    if (v5)
    {
      v8 = MEMORY[0x1E697B5F8];
    }

    else
    {
      v8 = MEMORY[0x1E697B5F0];
    }

    (*(v7 + 104))(a1, *v8, v6);
    v10 = *v15;
    v12 = a1;
    v13 = 0;
    v11 = v6;
  }

  else
  {
    v9 = sub_1BC75A050();
    v10 = *(*(v9 - 8) + 56);
    v11 = v9;
    v12 = a1;
    v13 = 1;
  }

  return v10(v12, v13, 1, v11);
}

unint64_t sub_1BC72E3D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCF2270;
  if (!qword_1EBCF2270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF2270);
  }

  return result;
}

unint64_t sub_1BC72E42C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCF2278[0];
  if (!qword_1EBCF2278[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCF2278);
  }

  return result;
}

uint64_t sub_1BC72E480(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDCFC8, &qword_1BC764A50);
    sub_1BC730CE8(a2, type metadata accessor for Report.Media, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_1BC72E51C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  [v5 setDateStyle_];
  result = [v5 setTimeStyle_];
  *a3 = v5;
  return result;
}

uint64_t sub_1BC72E598(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEE00746E65746E6FLL;
  v3 = 0x436567617373656DLL;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x63417265646E6573;
    }

    else
    {
      v5 = 0x656D686361747461;
    }

    if (v4 == 2)
    {
      v6 = 0xEF4449746E756F63;
    }

    else
    {
      v6 = 0xEB0000000073746ELL;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x6563655265746164;
    }

    else
    {
      v5 = 0x436567617373656DLL;
    }

    if (v4)
    {
      v6 = 0xEC00000064657669;
    }

    else
    {
      v6 = 0xEE00746E65746E6FLL;
    }
  }

  v7 = 0x63417265646E6573;
  v8 = 0xEF4449746E756F63;
  if (a2 != 2)
  {
    v7 = 0x656D686361747461;
    v8 = 0xEB0000000073746ELL;
  }

  if (a2)
  {
    v3 = 0x6563655265746164;
    v2 = 0xEC00000064657669;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1BC75C5E0();
  }

  return v11 & 1;
}

uint64_t sub_1BC72E71C()
{
  sub_1BC75C700();
  sub_1BC75BBE0();

  return sub_1BC75C720();
}

uint64_t sub_1BC72E808(uint64_t a1)
{
  sub_1BC75BBE0();
}

uint64_t sub_1BC72E8E0(uint64_t a1)
{
  sub_1BC75C700();
  sub_1BC75BBE0();

  return sub_1BC75C720();
}

unint64_t sub_1BC72E9C8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1BC730AAC(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1BC72E9F8(uint64_t *a1@<X8>)
{
  v2 = 0xEE00746E65746E6FLL;
  v3 = 0x436567617373656DLL;
  v4 = 0xEF4449746E756F63;
  v5 = 0x63417265646E6573;
  if (*v1 != 2)
  {
    v5 = 0x656D686361747461;
    v4 = 0xEB0000000073746ELL;
  }

  if (*v1)
  {
    v3 = 0x6563655265746164;
    v2 = 0xEC00000064657669;
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

uint64_t sub_1BC72EAA0()
{
  v1 = 0x436567617373656DLL;
  v2 = 0x63417265646E6573;
  if (*v0 != 2)
  {
    v2 = 0x656D686361747461;
  }

  if (*v0)
  {
    v1 = 0x6563655265746164;
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

unint64_t sub_1BC72EB44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BC730AAC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BC72EB6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1BC72E3D8(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1BC72EBA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1BC72E3D8(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1BC72EBE4(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1BC73033C(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1BC72ECE8(v6);
  return sub_1BC75C330();
}

void *sub_1BC72EC60(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDC60, &qword_1BC761180);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void sub_1BC72ECE8(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1BC75C580();
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
        sub_1BC730C38();
        v6 = sub_1BC75BD40();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_1BC72F00C(v8, v9, a1, v4);
      *(v7 + 16) = 0;

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
    sub_1BC72EDEC(0, v2, 1, a1);
  }
}

void sub_1BC72EDEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v35 = sub_1BC759910();
  v8 = MEMORY[0x1EEE9AC00](v35);
  v34 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v29 - v11;
  v30 = a2;
  if (a3 != a2)
  {
    v13 = (v10 + 8);
    v36 = *a4;
    v14 = v36 + 8 * a3 - 8;
    v15 = a1 - a3;
LABEL_5:
    v32 = v14;
    v33 = a3;
    v16 = *(v36 + 8 * a3);
    v31 = v15;
    v17 = v15;
    while (1)
    {
      v18 = *v14;
      v19 = v16;
      v20 = v18;
      v21 = [v19 date];
      sub_1BC7598F0();

      v22 = [v20 date];
      v23 = v34;
      sub_1BC7598F0();

      LOBYTE(v22) = sub_1BC7598D0();
      v24 = *v13;
      v25 = v23;
      v26 = v35;
      (*v13)(v25, v35);
      v24(v12, v26);

      if ((v22 & 1) == 0)
      {
LABEL_4:
        a3 = v33 + 1;
        v14 = v32 + 8;
        v15 = v31 - 1;
        if (v33 + 1 == v30)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v36)
      {
        break;
      }

      v27 = *v14;
      v16 = *(v14 + 8);
      *v14 = v16;
      *(v14 + 8) = v27;
      v14 -= 8;
      if (__CFADD__(v17++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1BC72F00C(unint64_t *a1, uint64_t a2, void *a3, unint64_t a4)
{
  v6 = v4;
  v116 = a1;
  v125 = sub_1BC759910();
  v9 = MEMORY[0x1EEE9AC00](v125);
  v124 = &v110 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v123 = &v110 - v12;
  v13 = a3[1];
  if (v13 < 1)
  {
    v15 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *v116;
    if (!*v116)
    {
      goto LABEL_127;
    }

    a4 = v15;
    v16 = a3;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v105 = a4;
    }

    else
    {
LABEL_121:
      v105 = sub_1BC6BC448(a4);
    }

    v126 = v105;
    v106 = *(v105 + 2);
    if (v106 >= 2)
    {
      while (*v16)
      {
        a4 = *&v105[16 * v106];
        v107 = v105;
        v108 = *&v105[16 * v106 + 24];
        sub_1BC72F87C((*v16 + 8 * a4), (*v16 + 8 * *&v105[16 * v106 + 16]), (*v16 + 8 * v108), v5);
        if (v6)
        {
          goto LABEL_99;
        }

        if (v108 < a4)
        {
          goto LABEL_114;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v107 = sub_1BC6BC448(v107);
        }

        if (v106 - 2 >= *(v107 + 2))
        {
          goto LABEL_115;
        }

        v109 = &v107[16 * v106];
        *v109 = a4;
        *(v109 + 1) = v108;
        v126 = v107;
        sub_1BC6BC3BC(v106 - 1);
        v105 = v126;
        v106 = *(v126 + 2);
        if (v106 <= 1)
        {
          goto LABEL_99;
        }
      }

      goto LABEL_125;
    }

LABEL_99:

    return;
  }

  v14 = 0;
  v122 = (v11 + 8);
  v15 = MEMORY[0x1E69E7CC0];
  v115 = a4;
  v111 = a3;
  while (1)
  {
    v16 = v14++;
    if (v14 < v13)
    {
      v120 = v13;
      v113 = v15;
      v114 = v6;
      v17 = *a3;
      v18 = *(*a3 + 8 * v14);
      v119 = 8 * v16;
      v19 = (v17 + 8 * v16);
      v20 = *v19;
      v5 = (v19 + 2);
      v21 = v18;
      v22 = v20;
      v23 = [v21 date];
      v24 = v123;
      sub_1BC7598F0();

      v25 = [v22 date];
      v26 = v124;
      sub_1BC7598F0();

      LODWORD(v121) = sub_1BC7598D0();
      v27 = *v122;
      v28 = v125;
      (*v122)(v26, v125);
      v27(v24, v28);

      v112 = v16;
      v29 = (v16 + 2);
      while (1)
      {
        v14 = v120;
        if (v120 == v29)
        {
          break;
        }

        v30 = *(v5 - 8);
        v31 = *v5;
        v32 = v30;
        v33 = [v31 date];
        v34 = v123;
        sub_1BC7598F0();

        v35 = [v32 date];
        v36 = v124;
        sub_1BC7598F0();

        LODWORD(v35) = sub_1BC7598D0() & 1;
        v37 = v36;
        v38 = v125;
        v27(v37, v125);
        v27(v34, v38);

        ++v29;
        v5 += 8;
        if ((v121 & 1) != v35)
        {
          v14 = (v29 - 1);
          break;
        }
      }

      v15 = v113;
      v6 = v114;
      a4 = v115;
      v16 = v112;
      v39 = v119;
      if (v121)
      {
        if (v14 < v112)
        {
          goto LABEL_118;
        }

        a3 = v111;
        if (v112 < v14)
        {
          v40 = 8 * v14 - 8;
          v41 = v14;
          v42 = v112;
          do
          {
            if (v42 != --v41)
            {
              v44 = *a3;
              if (!*a3)
              {
                goto LABEL_124;
              }

              v43 = *(v44 + v39);
              *(v44 + v39) = *(v44 + v40);
              *(v44 + v40) = v43;
            }

            v42 = (v42 + 1);
            v40 -= 8;
            v39 += 8;
          }

          while (v42 < v41);
        }
      }

      else
      {
        a3 = v111;
      }
    }

    v45 = a3[1];
    if (v14 < v45)
    {
      if (__OFSUB__(v14, v16))
      {
        goto LABEL_117;
      }

      if (v14 - v16 < a4)
      {
        v46 = (v16 + a4);
        if (__OFADD__(v16, a4))
        {
          goto LABEL_119;
        }

        if (v46 >= v45)
        {
          v46 = a3[1];
        }

        if (v46 < v16)
        {
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (v14 != v46)
        {
          break;
        }
      }
    }

LABEL_36:
    if (v14 < v16)
    {
      goto LABEL_116;
    }

    v61 = v15;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v15 = v61;
    }

    else
    {
      v15 = sub_1BC6BB23C(0, *(v61 + 2) + 1, 1, v61);
    }

    a4 = *(v15 + 2);
    v62 = *(v15 + 3);
    v5 = a4 + 1;
    if (a4 >= v62 >> 1)
    {
      v15 = sub_1BC6BB23C((v62 > 1), a4 + 1, 1, v15);
    }

    *(v15 + 2) = v5;
    v63 = &v15[16 * a4];
    *(v63 + 4) = v16;
    *(v63 + 5) = v14;
    v64 = *v116;
    if (!*v116)
    {
      goto LABEL_126;
    }

    if (a4)
    {
      while (1)
      {
        v65 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v66 = *(v15 + 4);
          v67 = *(v15 + 5);
          v76 = __OFSUB__(v67, v66);
          v68 = v67 - v66;
          v69 = v76;
LABEL_56:
          if (v69)
          {
            goto LABEL_105;
          }

          v82 = &v15[16 * v5];
          v84 = *v82;
          v83 = *(v82 + 1);
          v85 = __OFSUB__(v83, v84);
          v86 = v83 - v84;
          v87 = v85;
          if (v85)
          {
            goto LABEL_108;
          }

          v88 = &v15[16 * v65 + 32];
          v90 = *v88;
          v89 = *(v88 + 1);
          v76 = __OFSUB__(v89, v90);
          v91 = v89 - v90;
          if (v76)
          {
            goto LABEL_111;
          }

          if (__OFADD__(v86, v91))
          {
            goto LABEL_112;
          }

          if (v86 + v91 >= v68)
          {
            if (v68 < v91)
            {
              v65 = v5 - 2;
            }

            goto LABEL_77;
          }

          goto LABEL_70;
        }

        v92 = &v15[16 * v5];
        v94 = *v92;
        v93 = *(v92 + 1);
        v76 = __OFSUB__(v93, v94);
        v86 = v93 - v94;
        v87 = v76;
LABEL_70:
        if (v87)
        {
          goto LABEL_107;
        }

        v95 = &v15[16 * v65];
        v97 = *(v95 + 4);
        v96 = *(v95 + 5);
        v76 = __OFSUB__(v96, v97);
        v98 = v96 - v97;
        if (v76)
        {
          goto LABEL_110;
        }

        if (v98 < v86)
        {
          goto LABEL_3;
        }

LABEL_77:
        a4 = v65 - 1;
        if (v65 - 1 >= v5)
        {
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
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
          goto LABEL_120;
        }

        if (!*a3)
        {
          goto LABEL_123;
        }

        v103 = v15;
        v5 = *&v15[16 * a4 + 32];
        v16 = *&v15[16 * v65 + 40];
        sub_1BC72F87C((*a3 + 8 * v5), (*a3 + 8 * *&v15[16 * v65 + 32]), (*a3 + 8 * v16), v64);
        if (v6)
        {
          goto LABEL_99;
        }

        if (v16 < v5)
        {
          goto LABEL_101;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v103 = sub_1BC6BC448(v103);
        }

        if (a4 >= *(v103 + 2))
        {
          goto LABEL_102;
        }

        v104 = &v103[16 * a4];
        *(v104 + 4) = v5;
        *(v104 + 5) = v16;
        v126 = v103;
        a4 = &v126;
        sub_1BC6BC3BC(v65);
        v15 = v126;
        v5 = *(v126 + 2);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v70 = &v15[16 * v5 + 32];
      v71 = *(v70 - 64);
      v72 = *(v70 - 56);
      v76 = __OFSUB__(v72, v71);
      v73 = v72 - v71;
      if (v76)
      {
        goto LABEL_103;
      }

      v75 = *(v70 - 48);
      v74 = *(v70 - 40);
      v76 = __OFSUB__(v74, v75);
      v68 = v74 - v75;
      v69 = v76;
      if (v76)
      {
        goto LABEL_104;
      }

      v77 = &v15[16 * v5];
      v79 = *v77;
      v78 = *(v77 + 1);
      v76 = __OFSUB__(v78, v79);
      v80 = v78 - v79;
      if (v76)
      {
        goto LABEL_106;
      }

      v76 = __OFADD__(v68, v80);
      v81 = v68 + v80;
      if (v76)
      {
        goto LABEL_109;
      }

      if (v81 >= v73)
      {
        v99 = &v15[16 * v65 + 32];
        v101 = *v99;
        v100 = *(v99 + 1);
        v76 = __OFSUB__(v100, v101);
        v102 = v100 - v101;
        if (v76)
        {
          goto LABEL_113;
        }

        if (v68 < v102)
        {
          v65 = v5 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_56;
    }

LABEL_3:
    v13 = a3[1];
    a4 = v115;
    if (v14 >= v13)
    {
      goto LABEL_88;
    }
  }

  v113 = v15;
  v114 = v6;
  v121 = *a3;
  v47 = v121 + 8 * v14 - 8;
  v112 = v16;
  a4 = v16 - v14;
  v117 = v46;
LABEL_29:
  v119 = v47;
  v120 = v14;
  v48 = *(v121 + 8 * v14);
  v118 = a4;
  v49 = v47;
  while (1)
  {
    v50 = *v49;
    v5 = v48;
    v51 = v50;
    v52 = [v5 date];
    v53 = v123;
    sub_1BC7598F0();

    v54 = [v51 date];
    v55 = v124;
    sub_1BC7598F0();

    LOBYTE(v54) = sub_1BC7598D0();
    v56 = *v122;
    v57 = v55;
    v58 = v125;
    (*v122)(v57, v125);
    v56(v53, v58);

    if ((v54 & 1) == 0)
    {
LABEL_28:
      v14 = v120 + 1;
      v47 = v119 + 8;
      a4 = v118 - 1;
      if ((v120 + 1) != v117)
      {
        goto LABEL_29;
      }

      v14 = v117;
      v15 = v113;
      v6 = v114;
      a3 = v111;
      v16 = v112;
      goto LABEL_36;
    }

    if (!v121)
    {
      break;
    }

    v59 = *v49;
    v48 = *(v49 + 8);
    *v49 = v48;
    *(v49 + 8) = v59;
    v49 -= 8;
    if (__CFADD__(a4++, 1))
    {
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
}

uint64_t sub_1BC72F87C(id *a1, id *a2, id *a3, void **a4)
{
  v56 = sub_1BC759910();
  v8 = *(v56 - 8);
  v9 = MEMORY[0x1EEE9AC00](v56);
  v55 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v54 = &v49 - v11;
  v12 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v12 = a2 - a1;
  }

  v13 = v12 >> 3;
  v14 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v14 = a3 - a2;
  }

  v15 = v14 >> 3;
  if (v13 >= v14 >> 3)
  {
    v57 = a1;
    a1 = a2;
    if (a4 != a2 || &a2[v15] <= a4)
    {
      memmove(a4, a2, 8 * v15);
    }

    v58 = &a4[v15];
    if (a3 - a2 >= 8 && a2 > v57)
    {
      v50 = (v8 + 8);
LABEL_27:
      v49 = a1;
      v30 = a1 - 1;
      v31 = a3 - 1;
      v32 = v58;
      v51 = a1 - 1;
      do
      {
        v33 = a4;
        v34 = v31;
        v35 = v31 + 1;
        v36 = *--v32;
        v37 = *v30;
        v38 = v36;
        v53 = v38;
        v39 = v37;
        v52 = v39;
        v40 = [v38 date];
        v41 = v54;
        sub_1BC7598F0();

        v42 = [v39 date];
        v43 = v55;
        sub_1BC7598F0();

        LOBYTE(v42) = sub_1BC7598D0();
        v44 = *v50;
        v45 = v43;
        v46 = v56;
        (*v50)(v45, v56);
        v44(v41, v46);

        if (v42)
        {
          a4 = v33;
          a3 = v34;
          v47 = v51;
          if (v35 != v49)
          {
            *v34 = *v51;
          }

          if (v58 <= v33 || (a1 = v47, v47 <= v57))
          {
            a1 = v47;
            goto LABEL_39;
          }

          goto LABEL_27;
        }

        a4 = v33;
        if (v35 != v58)
        {
          *v34 = *v32;
        }

        v31 = v34 - 1;
        v58 = v32;
        v30 = v51;
      }

      while (v32 > v33);
      v58 = v32;
      a1 = v49;
    }
  }

  else
  {
    if (a4 != a1 || &a1[v13] <= a4)
    {
      memmove(a4, a1, 8 * v13);
    }

    v58 = &a4[v13];
    if (a2 - a1 >= 8 && a2 < a3)
    {
      v53 = a3;
      v16 = (v8 + 8);
      while (1)
      {
        v57 = a1;
        v17 = *a4;
        v18 = *a2;
        v19 = v17;
        v20 = [v18 date];
        v21 = v54;
        sub_1BC7598F0();

        v22 = [v19 date];
        v23 = v55;
        sub_1BC7598F0();

        LOBYTE(v22) = sub_1BC7598D0();
        v24 = *v16;
        v25 = v23;
        v26 = v56;
        (*v16)(v25, v56);
        v24(v21, v26);

        if ((v22 & 1) == 0)
        {
          break;
        }

        v27 = a2;
        v28 = v57;
        v29 = v57 == a2++;
        if (!v29)
        {
          goto LABEL_17;
        }

LABEL_18:
        a1 = v28 + 1;
        if (a4 >= v58 || a2 >= v53)
        {
          goto LABEL_39;
        }
      }

      v27 = a4;
      v28 = v57;
      v29 = v57 == a4++;
      if (v29)
      {
        goto LABEL_18;
      }

LABEL_17:
      *v28 = *v27;
      goto LABEL_18;
    }
  }

LABEL_39:
  if (a1 != a4 || a1 >= (a4 + ((v58 - a4 + (v58 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(a1, a4, 8 * (v58 - a4));
  }

  return 1;
}

uint64_t sub_1BC72FD18(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDECB8, &qword_1BC76D838);
  v35 = v4;
  result = sub_1BC75C410();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
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
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      sub_1BC75C700();
      sub_1BC75BBE0();
      result = sub_1BC75C720();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

id sub_1BC72FFBC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDECB8, &qword_1BC76D838);
  v2 = *v0;
  v3 = sub_1BC75C400();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
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

  return result;
}

void *sub_1BC730128(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v3 = sub_1BC75C3F0();
  if (!v3)
  {
LABEL_7:

    return MEMORY[0x1E69E7CC0];
  }

  v4 = v3;
  v5 = sub_1BC72EC60(v3, 0);
  sub_1BC7301BC((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1BC7301BC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1BC75C3F0();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1BC75C3F0();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1BC730C84();
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDECA8, &qword_1BC76D830);
            v9 = sub_1BC6BCD84(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1BC730C38();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t _s26SensitiveContentAnalysisUI6ReportC7MessageV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if (sub_1BC7598E0() & 1) != 0 && ((v4 = type metadata accessor for Report.Message(0), v5 = v4[5], v6 = *(a1 + v5), v7 = *(a1 + v5 + 8), v8 = (a2 + v5), v6 == *v8) ? (v9 = v7 == v8[1]) : (v9 = 0), (v9 || (sub_1BC75C5E0()) && ((v10 = v4[6], v11 = *(a1 + v10), v12 = *(a1 + v10 + 8), v13 = (a2 + v10), v11 == *v13) ? (v14 = v12 == v13[1]) : (v14 = 0), (v14 || (sub_1BC75C5E0()) && ((v15 = v4[7], v16 = *(a1 + v15), v17 = *(a1 + v15 + 8), v18 = (a2 + v15), v16 == *v18) ? (v19 = v17 == v18[1]) : (v19 = 0), (v19 || (sub_1BC75C5E0()) && sub_1BC6B0604(*(a1 + v4[8]), *(a2 + v4[8]))))))
  {
    v20 = *(a1 + v4[9]) ^ *(a2 + v4[9]) ^ 1;
  }

  else
  {
    v20 = 0;
  }

  return v20 & 1;
}

uint64_t sub_1BC730448(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BC7304B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1BC730580(uint64_t a1)
{
  sub_1BC759910();
  if (v1 <= 0x3F)
  {
    sub_1BC730618(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1BC730618(uint64_t a1)
{
  if (!qword_1EBCDECA0)
  {
    type metadata accessor for Report.Media(255);
    v1 = sub_1BC75BD70();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBCDECA0);
    }
  }
}

unint64_t sub_1BC730694(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCF2690[0];
  if (!qword_1EBCF2690[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCF2690);
  }

  return result;
}

unint64_t sub_1BC7306EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCF28A0[0];
  if (!qword_1EBCF28A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCF28A0);
  }

  return result;
}

unint64_t sub_1BC730744(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCF29B0;
  if (!qword_1EBCF29B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF29B0);
  }

  return result;
}

unint64_t sub_1BC73079C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCF29B8[0];
  if (!qword_1EBCF29B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCF29B8);
  }

  return result;
}

unint64_t sub_1BC7307F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCF2A40;
  if (!qword_1EBCF2A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF2A40);
  }

  return result;
}

unint64_t sub_1BC73084C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDDD1738;
  if (!qword_1EDDD1738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDD1738);
  }

  return result;
}

uint64_t sub_1BC7308A0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702125924 && a2 == 0xE400000000000000;
  if (v3 || (sub_1BC75C5E0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x63417265646E6573 && a2 == 0xEF4449746E756F63 || (sub_1BC75C5E0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001BC774530 == a2 || (sub_1BC75C5E0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 2036625250 && a2 == 0xE400000000000000 || (sub_1BC75C5E0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x616964656DLL && a2 == 0xE500000000000000 || (sub_1BC75C5E0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001BC772D30 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_1BC75C5E0();

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

unint64_t sub_1BC730AAC(uint64_t a1, uint64_t a2)
{
  v2 = sub_1BC75C440();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1BC730AF8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCFE0, &unk_1BC76D070);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BC730B68(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD1E8, &unk_1BC76D820);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BC730BD0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1BC730C38()
{
  result = qword_1EBCDCE38;
  if (!qword_1EBCDCE38)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBCDCE38);
  }

  return result;
}

unint64_t sub_1BC730C84()
{
  result = qword_1EBCDECB0;
  if (!qword_1EBCDECB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDECA8, &qword_1BC76D830);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDECB0);
  }

  return result;
}

uint64_t sub_1BC730CE8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t View.prefetchSensitiveContentPolicy()(uint64_t a1, uint64_t a2)
{
  sub_1BC75A030();
  v4 = sub_1BC75A000();
  View.prefetchSensitiveContentPolicy(policyCache:)(v4, a1, a2);
}

uint64_t View.prefetchSensitiveContentPolicy(policyCache:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SensitiveContentPolicyPrefetcher(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v8 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC8C0, &qword_1BC762DC0);
  swift_storeEnumTagMultiPayload();
  sub_1BC75A030();
  sub_1BC731804();
  v9 = sub_1BC75A730();
  v10 = v8 + *(v6 + 20);
  *v10 = v9;
  v10[8] = v11 & 1;
  *(v8 + *(v6 + 24)) = a1;

  MEMORY[0x1BFB25FF0](v8, a2, v6, a3);
  return sub_1BC731F28(v8, type metadata accessor for SensitiveContentPolicyPrefetcher);
}

uint64_t View.forceSensitiveContentPolicy(forcedPolicy:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v58 = a1;
  v62 = a3;
  v63 = a4;
  v56 = *(a2 - 8);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v54 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v53 = &v49 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDECC0, &qword_1BC76D870);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v49 - v9;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDECC8, &unk_1BC76D878);
  v11 = sub_1BC75A960();
  v57 = *(v11 - 8);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v52 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v55 = &v49 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCDBD90, &unk_1BC75F850);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v49 - v16;
  v18 = sub_1BC759EE0();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a2;
  v23 = sub_1BC75AE10();
  v61 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v60 = &v49 - v24;
  sub_1BC660024(v58, v17, &unk_1EBCDBD90, &unk_1BC75F850);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_1BC66008C(v17, &unk_1EBCDBD90, &unk_1BC75F850);
    v25 = v56;
    v26 = *(v56 + 16);
    v27 = v53;
    v28 = v22;
    v26(v53, v59, v22);
    v29 = v54;
    v26(v54, v27, v28);
    v30 = sub_1BC633C54(&qword_1EBCDECD0, &qword_1EBCDECC8, &unk_1BC76D878, MEMORY[0x1E6980A18]);
    v31 = v62;
    v70 = v62;
    v71 = v30;
    WitnessTable = swift_getWitnessTable();
    v33 = v60;
    sub_1BC633720(v29, v11, v28, WitnessTable, v31);
    v34 = *(v25 + 8);
    v34(v29, v28);
    v34(v27, v28);
  }

  else
  {
    v35 = *(v19 + 32);
    v51 = v21;
    v35(v21, v17, v18);
    swift_getKeyPath();
    v36 = *(v19 + 16);
    v50 = v18;
    v36(v10, v21, v18);
    (*(v19 + 56))(v10, 0, 1, v18);
    v37 = type metadata accessor for EnvironmentPrefetchState(0);
    (*(*(v37 - 8) + 56))(v10, 0, 1, v37);
    v38 = v52;
    v49 = v22;
    v58 = v23;
    v39 = v62;
    sub_1BC75B220();

    sub_1BC66008C(v10, &qword_1EBCDECC0, &qword_1BC76D870);
    v40 = sub_1BC633C54(&qword_1EBCDECD0, &qword_1EBCDECC8, &unk_1BC76D878, MEMORY[0x1E6980A18]);
    v64 = v39;
    v65 = v40;
    v41 = swift_getWitnessTable();
    v42 = v57;
    v43 = *(v57 + 16);
    v44 = v55;
    v43(v55, v38, v11);
    v45 = *(v42 + 8);
    v45(v38, v11);
    v43(v38, v44, v11);
    v31 = v39;
    v23 = v58;
    v33 = v60;
    sub_1BC633818(v38, v11, v49, v41, v31);
    v45(v38, v11);
    v45(v44, v11);
    (*(v19 + 8))(v51, v50);
  }

  v46 = sub_1BC633C54(&qword_1EBCDECD0, &qword_1EBCDECC8, &unk_1BC76D878, MEMORY[0x1E6980A18]);
  v68 = v31;
  v69 = v46;
  v66 = swift_getWitnessTable();
  v67 = v31;
  swift_getWitnessTable();
  v47 = v61;
  (*(v61 + 16))(v63, v33, v23);
  return (*(v47 + 8))(v33, v23);
}

uint64_t sub_1BC731678(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1BC733614(a1, a2, a3);

  return sub_1BC75ABC0();
}

uint64_t sub_1BC731700(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDECC0, &qword_1BC76D870);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - v6;
  sub_1BC660024(a1, &v12 - v6, &qword_1EBCDECC0, &qword_1BC76D870);
  v8 = sub_1BC660024(v7, v5, &qword_1EBCDECC0, &qword_1BC76D870);
  sub_1BC733614(v8, v9, v10);
  sub_1BC75ABD0();
  return sub_1BC66008C(v7, &qword_1EBCDECC0, &qword_1BC76D870);
}

unint64_t sub_1BC731804()
{
  result = qword_1EDDCF1C0;
  if (!qword_1EDDCF1C0)
  {
    sub_1BC75A030();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDCF1C0);
  }

  return result;
}

uint64_t sub_1BC73187C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDECC0, &qword_1BC76D870);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BC7318EC()
{
  v1 = sub_1BC75ABB0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for PolicyProperty(0) + 20));
  v6 = *v5;
  v7 = *(v5 + 8);

  if ((v7 & 1) == 0)
  {
    sub_1BC75BF70();
    v8 = sub_1BC75AFC0();
    sub_1BC75A4B0();

    sub_1BC75ABA0();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    return v10[1];
  }

  return v6;
}

uint64_t PolicyProperty.init()@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC8C0, &qword_1BC762DC0);
  swift_storeEnumTagMultiPayload();
  v2 = a1 + *(type metadata accessor for PolicyProperty(0) + 20);
  sub_1BC75A030();
  sub_1BC731804();
  result = sub_1BC75A740();
  *v2 = result;
  v2[8] = v4 & 1;
  return result;
}

Swift::Void __swiftcall PolicyProperty.update()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDECD8, &qword_1BC76D888);
  v0 = MEMORY[0x1E697DCD0];
  sub_1BC633C54(&qword_1EBCDECE0, &qword_1EBCDECD8, &qword_1BC76D888, MEMORY[0x1E697DCD0]);
  sub_1BC75A950();
  type metadata accessor for PolicyProperty(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDECE8, &qword_1BC76D890);
  sub_1BC633C54(&qword_1EBCDECF0, &qword_1EBCDECE8, &qword_1BC76D890, v0);
  sub_1BC75A950();
}

uint64_t PolicyProperty.wrappedValue.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BC75ABB0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC8C0, &qword_1BC762DC0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDECC0, &qword_1BC76D870);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v18 - v11;
  sub_1BC660024(v1, v9, &qword_1EBCDC8C0, &qword_1BC762DC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1BC73187C(v9, v12);
  }

  else
  {
    sub_1BC75BF70();
    v13 = sub_1BC75AFC0();
    sub_1BC75A4B0();

    sub_1BC75ABA0();
    swift_getAtKeyPath();

    (*(v4 + 8))(v6, v3);
  }

  v14 = type metadata accessor for EnvironmentPrefetchState(0);
  if ((*(*(v14 - 8) + 48))(v12, 1, v14) == 1)
  {
    sub_1BC66008C(v12, &qword_1EBCDECC0, &qword_1BC76D870);
LABEL_8:
    sub_1BC7318EC();
    sub_1BC759FF0();
  }

  v15 = sub_1BC759EE0();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v12, 1, v15) == 1)
  {
    sub_1BC731F28(v12, type metadata accessor for EnvironmentPrefetchState);
    goto LABEL_8;
  }

  (*(v16 + 32))(a1, v12, v15);
  return (*(v16 + 56))(a1, 0, 1, v15);
}

uint64_t sub_1BC731F28(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BC731F9C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDECD8, &qword_1BC76D888);
  v0 = MEMORY[0x1E697DCD0];
  sub_1BC633C54(&qword_1EBCDECE0, &qword_1EBCDECD8, &qword_1BC76D888, MEMORY[0x1E697DCD0]);
  sub_1BC75A950();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDECE8, &qword_1BC76D890);
  sub_1BC633C54(&qword_1EBCDECF0, &qword_1EBCDECE8, &qword_1BC76D890, v0);
  return sub_1BC75A950();
}

void sub_1BC732098(uint64_t a1)
{
  sub_1BC67DE5C(319, &qword_1EBCDECF8, &qword_1EBCDECC0, &qword_1BC76D870);
  if (v1 <= 0x3F)
  {
    sub_1BC63317C(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1BC73215C(uint64_t a1)
{
  v1 = sub_1BC759EE0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

unint64_t sub_1BC7321B4()
{
  result = qword_1EBCF2B20;
  if (!qword_1EBCF2B20)
  {
    type metadata accessor for SensitiveContentPolicyPrefetcher(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF2B20);
  }

  return result;
}

void sub_1BC732234(uint64_t a1)
{
  sub_1BC67DE5C(319, &qword_1EBCDECF8, &qword_1EBCDECC0, &qword_1BC76D870);
  if (v1 <= 0x3F)
  {
    sub_1BC67DE5C(319, &qword_1EBCDED00, &qword_1EBCDED08, &qword_1BC76D948);
    if (v2 <= 0x3F)
    {
      sub_1BC75A030();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1BC73231C@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_1BC75ABB0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC8C0, &qword_1BC762DC0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13 - v9;
  sub_1BC660024(v2, &v13 - v9, &qword_1EBCDC8C0, &qword_1BC762DC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1BC73187C(v10, a1);
  }

  sub_1BC75BF70();
  v12 = sub_1BC75AFC0();
  sub_1BC75A4B0();

  sub_1BC75ABA0();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1BC7324EC()
{
  v1 = sub_1BC75ABB0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for SensitiveContentPolicyPrefetcher(0) + 20);
  v6 = *v5;
  v7 = *(v5 + 8);

  if ((v7 & 1) == 0)
  {
    sub_1BC75BF70();
    v8 = sub_1BC75AFC0();
    sub_1BC75A4B0();

    sub_1BC75ABA0();
    swift_getAtKeyPath();
    j__swift_release(v6);
    (*(v2 + 8))(v4, v1);
    return v10[1];
  }

  return v6;
}

uint64_t sub_1BC732640@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a1;
  v56 = a2;
  v50 = type metadata accessor for SensitiveContentPolicyPrefetcher(0);
  v47 = *(v50 - 8);
  v3 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v50);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDED10, &qword_1BC76D9A0);
  MEMORY[0x1EEE9AC00](v55);
  v5 = &v45 - v4;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDED18, &qword_1BC76D9A8);
  v48 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v7 = &v45 - v6;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDED20, &qword_1BC76D9B0);
  MEMORY[0x1EEE9AC00](v53);
  v51 = &v45 - v8;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDED28, &qword_1BC76D9B8);
  v9 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v11 = &v45 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDECC0, &qword_1BC76D870);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v45 - v13;
  sub_1BC73231C((&v45 - v13));
  v15 = type metadata accessor for EnvironmentPrefetchState(0);
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    v17 = &v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDED30, &qword_1BC76D9C0) + 36)];
    v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDED38, &qword_1BC76D9C8) + 40);
    v19 = sub_1BC759EA0();
    (*(*(v19 - 8) + 56))(&v17[v18], 1, 1, v19);
    sub_1BC7332E0(v2, &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
    v20 = *(v47 + 80);
    v46 = v7;
    v21 = (v20 + 16) & ~v20;
    v22 = swift_allocObject();
    sub_1BC733348(&v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21);
    sub_1BC75BDF0();
    *v17 = &unk_1BC76D9D8;
    *(v17 + 1) = v22;
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDED40, &qword_1BC76D9E0);
    (*(*(v47 - 8) + 16))(v5, v49, v47);
    KeyPath = swift_getKeyPath();
    v24 = v55;
    v25 = &v5[*(v55 + 36)];
    v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDECC8, &unk_1BC76D878) + 28);
    v27 = sub_1BC759EE0();
    (*(*(v27 - 8) + 56))(v25 + v26, 1, 1, v27);
    (*(v16 + 56))(v25 + v26, 0, 1, v15);
    *v25 = KeyPath;
    v28 = sub_1BC75A030();
    v29 = sub_1BC733478();
    v30 = sub_1BC731804();
    v31 = v46;
    sub_1BC75B210();
    sub_1BC66008C(v5, &qword_1EBCDED10, &qword_1BC76D9A0);
    v32 = v48;
    v33 = v52;
    (*(v48 + 16))(v51, v31, v52);
    swift_storeEnumTagMultiPayload();
    v34 = sub_1BC633C54(&qword_1EBCDED58, &qword_1EBCDED40, &qword_1BC76D9E0, MEMORY[0x1E697FDF8]);
    v57 = v47;
    v58 = v28;
    v59 = v34;
    v60 = v30;
    swift_getOpaqueTypeConformance2();
    v57 = v24;
    v58 = v28;
    v59 = v29;
    v60 = v30;
    swift_getOpaqueTypeConformance2();
    sub_1BC75AE00();
    return (*(v32 + 8))(v31, v33);
  }

  else
  {
    v36 = v51;
    v37 = sub_1BC759EE0();
    if ((*(*(v37 - 8) + 48))(v14, 1, v37) != 1)
    {
      sub_1BC731F28(v14, type metadata accessor for EnvironmentPrefetchState);
    }

    if (!sub_1BC7324EC())
    {
    }

    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDED40, &qword_1BC76D9E0);
    v39 = sub_1BC75A030();
    v40 = sub_1BC633C54(&qword_1EBCDED58, &qword_1EBCDED40, &qword_1BC76D9E0, MEMORY[0x1E697FDF8]);
    v41 = sub_1BC731804();
    sub_1BC75B210();

    v42 = v36;
    v43 = v54;
    (*(v9 + 16))(v42, v11, v54);
    swift_storeEnumTagMultiPayload();
    v57 = v38;
    v58 = v39;
    v59 = v40;
    v60 = v41;
    swift_getOpaqueTypeConformance2();
    v44 = sub_1BC733478();
    v57 = v55;
    v58 = v39;
    v59 = v44;
    v60 = v41;
    swift_getOpaqueTypeConformance2();
    sub_1BC75AE00();
    return (*(v9 + 8))(v11, v43);
  }
}

uint64_t sub_1BC732E44(uint64_t a1)
{
  v1[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDED68, &qword_1BC76D9E8);
  v1[3] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCDBD90, &unk_1BC75F850);
  v1[4] = swift_task_alloc();
  sub_1BC75BDE0();
  v1[5] = sub_1BC75BDD0();
  v3 = sub_1BC75BD80();
  v1[6] = v3;
  v1[7] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1BC732F4C, v3, v2);
}

uint64_t sub_1BC732F4C()
{
  v1 = v0[3];
  type metadata accessor for SensitiveContentPolicyPrefetcher(0);
  v2 = sub_1BC759EA0();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_1BC733038;
  v5 = v0[3];
  v4 = v0[4];

  return MEMORY[0x1EEDD8CD8](v4, v5);
}

uint64_t sub_1BC733038()
{
  v2 = *v1;

  if (v0)
  {
    v3 = v2[3];

    sub_1BC66008C(v3, &qword_1EBCDED68, &qword_1BC76D9E8);
    v4 = v2[6];
    v5 = v2[7];
    v6 = sub_1BC733214;
  }

  else
  {
    v7 = v2[4];
    sub_1BC66008C(v2[3], &qword_1EBCDED68, &qword_1BC76D9E8);
    sub_1BC66008C(v7, &unk_1EBCDBD90, &unk_1BC75F850);
    v4 = v2[6];
    v5 = v2[7];
    v6 = sub_1BC7331A4;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

uint64_t sub_1BC7331A4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BC733214()
{
  v1 = *(v0 + 32);

  v2 = sub_1BC759EE0();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  sub_1BC66008C(v1, &unk_1EBCDBD90, &unk_1BC75F850);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1BC7332E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SensitiveContentPolicyPrefetcher(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BC733348(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SensitiveContentPolicyPrefetcher(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BC7333AC()
{
  v2 = *(type metadata accessor for SensitiveContentPolicyPrefetcher(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1BC65281C;

  return sub_1BC732E44(v0 + v3);
}

unint64_t sub_1BC733478()
{
  result = qword_1EBCDED48;
  if (!qword_1EBCDED48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDED10, &qword_1BC76D9A0);
    sub_1BC733530();
    sub_1BC633C54(&qword_1EBCDECD0, &qword_1EBCDECC8, &unk_1BC76D878, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDED48);
  }

  return result;
}

unint64_t sub_1BC733530()
{
  result = qword_1EBCDED50;
  if (!qword_1EBCDED50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDED30, &qword_1BC76D9C0);
    sub_1BC633C54(&qword_1EBCDED58, &qword_1EBCDED40, &qword_1BC76D9E0, MEMORY[0x1E697FDF8]);
    sub_1BC633C54(&qword_1EBCDED60, &qword_1EBCDED38, &qword_1BC76D9C8, MEMORY[0x1E697C520]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDED50);
  }

  return result;
}

unint64_t sub_1BC733614(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCF2BC0[0];
  if (!qword_1EBCF2BC0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCF2BC0);
  }

  return result;
}

unint64_t sub_1BC733678()
{
  result = qword_1EBCDED70;
  if (!qword_1EBCDED70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDED78, &qword_1BC76DA10);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDED40, &qword_1BC76D9E0);
    sub_1BC75A030();
    sub_1BC633C54(&qword_1EBCDED58, &qword_1EBCDED40, &qword_1BC76D9E0, MEMORY[0x1E697FDF8]);
    sub_1BC731804();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDED10, &qword_1BC76D9A0);
    sub_1BC733478();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDED70);
  }

  return result;
}

uint64_t sub_1BC7337CC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDECC0, &qword_1BC76D870);
  __swift_allocate_value_buffer(v0, qword_1EBCF2A58);
  v1 = __swift_project_value_buffer(v0, qword_1EBCF2A58);
  v2 = type metadata accessor for EnvironmentPrefetchState(0);
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 1, 1, v2);
}

uint64_t sub_1BC73386C@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBCF2A50 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDECC0, &qword_1BC76D870);
  v3 = __swift_project_value_buffer(v2, qword_1EBCF2A58);
  return sub_1BC660024(v3, a1, &qword_1EBCDECC0, &qword_1BC76D870);
}

uint64_t sub_1BC7338FC()
{
  v0 = sub_1BC75A4E0();
  __swift_allocate_value_buffer(v0, qword_1EBCF2C58);
  __swift_project_value_buffer(v0, qword_1EBCF2C58);
  return sub_1BC75A4D0();
}

uint64_t sub_1BC7339DC@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  (*(*v1 + 192))();

  v3 = OBJC_IVAR____TtC26SensitiveContentAnalysisUI28ReportToAuthoritiesViewModel__evidence;
  swift_beginAccess();
  return sub_1BC660024(v1 + v3, a1, &qword_1EBCDED80, &unk_1BC76A3C0);
}

uint64_t sub_1BC733AC4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDED80, &unk_1BC76A3C0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v8 - v5;
  sub_1BC660024(a1, &v8 - v5, &qword_1EBCDED80, &unk_1BC76A3C0);
  return (*(**a2 + 152))(v6);
}

uint64_t sub_1BC733B90(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDED80, &unk_1BC76A3C0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v11[-v4];
  v6 = OBJC_IVAR____TtC26SensitiveContentAnalysisUI28ReportToAuthoritiesViewModel__evidence;
  swift_beginAccess();
  sub_1BC660024(v1 + v6, v5, &qword_1EBCDED80, &unk_1BC76A3C0);
  v7 = sub_1BC738D1C(v5, a1);
  sub_1BC66008C(v5, &qword_1EBCDED80, &unk_1BC76A3C0);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    v9 = MEMORY[0x1EEE9AC00](KeyPath);
    *&v11[-16] = v1;
    *&v11[-8] = a1;
    (*(*v1 + 200))(v9, sub_1BC7390AC);
  }

  else
  {
    sub_1BC660024(a1, v5, &qword_1EBCDED80, &unk_1BC76A3C0);
    swift_beginAccess();
    sub_1BC73903C(v5, v1 + v6);
    swift_endAccess();
  }

  return sub_1BC66008C(a1, &qword_1EBCDED80, &unk_1BC76A3C0);
}

uint64_t (*sub_1BC733D64(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  (*(*v1 + 192))();

  v4[5] = OBJC_IVAR____TtC26SensitiveContentAnalysisUI28ReportToAuthoritiesViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1BC739218(&qword_1EBCDED88, type metadata accessor for ReportToAuthoritiesViewModel, &unk_1BC76DAB0);
  sub_1BC759A70();

  v4[7] = sub_1BC73397C(v4);
  return sub_1BC733EA0;
}

void sub_1BC733EA0(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  sub_1BC759A60();

  free(v1);
}

uint64_t sub_1BC733F34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v9 = OBJC_IVAR____TtC26SensitiveContentAnalysisUI28ReportToAuthoritiesViewModel__evidence;
  v10 = type metadata accessor for Report.Evidence(0);
  (*(*(v10 - 8) + 56))(v8 + v9, 1, 1, v10);
  sub_1BC759A80();
  sub_1BC69B938(a1, v8 + OBJC_IVAR____TtC26SensitiveContentAnalysisUI28ReportToAuthoritiesViewModel_authority, type metadata accessor for Report.Authority);
  v11 = (v8 + OBJC_IVAR____TtC26SensitiveContentAnalysisUI28ReportToAuthoritiesViewModel_evidenceBlock);
  *v11 = a3;
  v11[1] = a4;
  *(v8 + OBJC_IVAR____TtC26SensitiveContentAnalysisUI28ReportToAuthoritiesViewModel_interventionType) = a2;
  return v8;
}

uint64_t sub_1BC734028()
{
  v1[2] = v0;
  v1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDED80, &unk_1BC76A3C0);
  v1[4] = swift_task_alloc();
  v1[5] = swift_task_alloc();
  v1[6] = sub_1BC75BDE0();
  v1[7] = sub_1BC75BDD0();
  v3 = sub_1BC75BD80();
  v1[8] = v3;
  v1[9] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1BC73410C, v3, v2);
}

uint64_t sub_1BC73410C()
{
  v1 = *(v0 + 40);
  (*(**(v0 + 16) + 144))();
  v2 = type metadata accessor for Report.Evidence(0);
  v3 = (*(*(v2 - 8) + 48))(v1, 1, v2);
  v4 = *(v0 + 40);
  if (v3 == 1)
  {
    v5 = *(v0 + 16);
    sub_1BC66008C(*(v0 + 40), &qword_1EBCDED80, &unk_1BC76A3C0);
    v6 = *(v5 + OBJC_IVAR____TtC26SensitiveContentAnalysisUI28ReportToAuthoritiesViewModel_interventionType);
    v7 = sub_1BC75BDD0();
    *(v0 + 80) = v7;
    v8 = swift_task_alloc();
    *(v0 + 88) = v8;
    *(v8 + 16) = v5;
    *(v8 + 24) = v6;
    v9 = swift_task_alloc();
    *(v0 + 96) = v9;
    *v9 = v0;
    v9[1] = sub_1BC734320;
    v11 = *(v0 + 24);
    v10 = *(v0 + 32);
    v12 = MEMORY[0x1E69E85E0];

    return MEMORY[0x1EEE6DE38](v10, v7, v12, 0xD000000000000015, 0x80000001BC774550, sub_1BC739134, v8, v11);
  }

  else
  {

    sub_1BC66008C(v4, &qword_1EBCDED80, &unk_1BC76A3C0);

    v13 = *(v0 + 8);

    return v13();
  }
}

uint64_t sub_1BC734320()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = sub_1BC7344E8;
  }

  else
  {

    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = sub_1BC734444;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1BC734444()
{
  v1 = v0[4];
  v2 = v0[2];

  (*(*v2 + 152))(v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1BC7344E8()
{
  v1 = *(v0 + 104);

  sub_1BC73913C(v2, v3, v4);
  swift_allocError();
  *v5 = v1 | 0x4000000000000000;
  swift_willThrow();

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1BC7345B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEE78, &qword_1BC76DB60);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBB20, &qword_1BC75F0D0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v21 - v12;
  v14 = sub_1BC75BE10();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  (*(v7 + 16))(v10, a1, v6);
  sub_1BC75BDE0();

  v15 = sub_1BC75BDD0();
  v16 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v17 = (v8 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  v19 = MEMORY[0x1E69E85E0];
  *(v18 + 2) = v15;
  *(v18 + 3) = v19;
  *(v18 + 4) = a2;
  (*(v7 + 32))(&v18[v16], v10, v6);
  *&v18[v17] = a3;
  sub_1BC652910(0, 0, v13, &unk_1BC76DB70, v18);
}

uint64_t sub_1BC7347D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEE78, &qword_1BC76DB60);
  v6[5] = v7;
  v8 = *(v7 - 8);
  v6[6] = v8;
  v6[7] = *(v8 + 64);
  v6[8] = swift_task_alloc();
  sub_1BC75BDE0();
  v6[9] = sub_1BC75BDD0();
  v10 = sub_1BC75BD80();

  return MEMORY[0x1EEE6DFA0](sub_1BC7348E4, v10, v9);
}

uint64_t sub_1BC7348E4()
{
  v1 = v0[8];
  v3 = v0[6];
  v2 = v0[7];
  v5 = v0[4];
  v4 = v0[5];
  v6 = v0[2];
  v7 = v0[3];

  v8 = *(v6 + OBJC_IVAR____TtC26SensitiveContentAnalysisUI28ReportToAuthoritiesViewModel_evidenceBlock);
  (*(v3 + 16))(v1, v7, v4);
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  (*(v3 + 32))(v10 + v9, v1, v4);
  *(v10 + ((v2 + v9 + 7) & 0xFFFFFFFFFFFFFFF8)) = v5;
  v8(sub_1BC739760, v10);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1BC734A20(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDED80, &unk_1BC76A3C0);
  result = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = v13 - v9;
  if (a1)
  {
    Report.Evidence.init(_:interventionType:)(a1, a4, v10);
    v11 = type metadata accessor for Report.Evidence(0);
    (*(*(v11 - 8) + 56))(v10, 0, 1, v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEE78, &qword_1BC76DB60);
    return sub_1BC75BDA0();
  }

  else if (a2)
  {
    v13[1] = a2;
    v12 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEE78, &qword_1BC76DB60);
    return sub_1BC75BD90();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BC734B5C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for Report.Authority.DirectAuthorityDetails(0);
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  type metadata accessor for Report.Authority(0);
  v3[8] = swift_task_alloc();
  sub_1BC75BDE0();
  v3[9] = sub_1BC75BDD0();
  v6 = sub_1BC75BD80();
  v3[10] = v6;
  v3[11] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1BC734C80, v6, v5);
}

uint64_t sub_1BC734C80()
{
  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[6];
  sub_1BC7391B0(v0[4] + OBJC_IVAR____TtC26SensitiveContentAnalysisUI28ReportToAuthoritiesViewModel_authority, v1, type metadata accessor for Report.Authority);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = swift_task_alloc();
    v0[17] = v4;
    *v4 = v0;
    v4[1] = sub_1BC735008;
    v6 = v0[2];
    v5 = v0[3];

    return sub_1BC73532C(v6, v5);
  }

  else
  {
    sub_1BC69B938(v0[8], v0[7], type metadata accessor for Report.Authority.DirectAuthorityDetails);
    v0[12] = [objc_allocWithZone(type metadata accessor for DirectReportNetworkManager(0)) init];
    v8 = swift_task_alloc();
    v0[13] = v8;
    *v8 = v0;
    v8[1] = sub_1BC734E24;
    v9 = v0[7];
    v10 = v0[2];

    return sub_1BC73714C(v10, v9);
  }
}

uint64_t sub_1BC734E24(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 112) = v2;

  if (v2)
  {
    v7 = v6[10];
    v8 = v6[11];
    v9 = sub_1BC73521C;
  }

  else
  {
    v6[15] = a2;
    v6[16] = a1;
    v7 = v6[10];
    v8 = v6[11];
    v9 = sub_1BC734F58;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_1BC734F58()
{
  v1 = v0[12];
  v2 = v0[7];

  sub_1BC739260(v2, type metadata accessor for Report.Authority.DirectAuthorityDetails);
  v3 = v0[15];
  v4 = v0[16];

  v5 = v0[1];

  return v5(v4, v3);
}

uint64_t sub_1BC735008(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 144) = v1;

  if (v1)
  {
    v5 = v4[10];
    v6 = v4[11];
    v7 = sub_1BC7352B8;
  }

  else
  {
    v4[19] = a1;
    v5 = v4[10];
    v6 = v4[11];
    v7 = sub_1BC735130;
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t sub_1BC735130()
{
  v1 = *(v0 + 152);

  v2 = [v1 recordID];
  v3 = [v2 recordName];

  sub_1BC75BB60();
  nullsub_1();
  v5 = v4;
  v7 = v6;

  v8 = *(v0 + 8);

  return v8(v5, v7);
}

uint64_t sub_1BC73521C()
{
  v1 = v0[12];
  v2 = v0[7];

  sub_1BC739260(v2, type metadata accessor for Report.Authority.DirectAuthorityDetails);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1BC7352B8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BC73532C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDED98, &qword_1BC76DAA0);
  v2[4] = swift_task_alloc();
  v3 = sub_1BC75B8B0();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  type metadata accessor for CloudKitReport(0);
  v2[9] = swift_task_alloc();
  type metadata accessor for Report.Evidence(0);
  v2[10] = swift_task_alloc();
  v4 = sub_1BC75B9E0();
  v2[11] = v4;
  v2[12] = *(v4 - 8);
  v2[13] = swift_task_alloc();
  v5 = sub_1BC759800();
  v2[14] = v5;
  v2[15] = *(v5 - 8);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BC73554C, 0, 0);
}

uint64_t sub_1BC73554C()
{
  v1 = v0[16];
  v2 = v0[14];
  v3 = v0[15];
  v4 = NSTemporaryDirectory();
  sub_1BC75BB60();

  sub_1BC759750();

  sub_1BC759790();
  v5 = *(v3 + 8);
  v0[18] = v5;
  v0[19] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v2);
  v0[20] = sub_1BC75B8A0();
  v0[21] = sub_1BC75B880();
  v6 = swift_task_alloc();
  v0[22] = v6;
  *v6 = v0;
  v6[1] = sub_1BC735698;
  v7 = v0[13];

  return sub_1BC736C54(v7);
}

uint64_t sub_1BC735698()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_1BC736538;
  }

  else
  {
    v2 = sub_1BC7357AC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1BC7357AC()
{
  v1 = v0[23];
  v2 = v0[17];
  v3 = v0[13];
  v5 = v0[9];
  v4 = v0[10];
  v6 = v0[2];

  sub_1BC7391B0(v6, v4, type metadata accessor for Report.Evidence);
  Report.Evidence.prepareForCK(with:at:progress:)(v3, v2, v5);
  if (v1)
  {
    v8 = v0[12];
    v7 = v0[13];
    v9 = v0[11];
    sub_1BC739260(v0[10], type metadata accessor for Report.Evidence);
    (*(v8 + 8))(v7, v9);
    v10 = v0[18];
    v11 = v0[17];
    v12 = v0[14];
    sub_1BC7369C0();
    v10(v11, v12);

    v13 = v0[1];

    return v13();
  }

  else
  {
    type metadata accessor for CloudKitWrapper(0);
    v15 = sub_1BC72B940();
    v0[24] = v15;
    v18 = (*(*v15 + 104) + **(*v15 + 104));
    v16 = swift_task_alloc();
    v0[25] = v16;
    *v16 = v0;
    v16[1] = sub_1BC735A44;
    v17 = v0[9];

    return v18(v17);
  }
}

uint64_t sub_1BC735A44(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 208) = a1;
  *(v3 + 216) = v1;

  if (v1)
  {
    v4 = sub_1BC736634;
  }

  else
  {
    v4 = sub_1BC735B58;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1BC735B58()
{
  if (qword_1EBCF2C50 != -1)
  {
    swift_once();
  }

  v1 = sub_1BC75A4E0();
  *(v0 + 224) = __swift_project_value_buffer(v1, qword_1EBCF2C58);
  v2 = sub_1BC75A4C0();
  v3 = sub_1BC75BF80();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1BC630000, v2, v3, "Successfully uploaded encrypted report to CloudKit", v4, 2u);
    MEMORY[0x1BFB27EF0](v4, -1, -1);
  }

  v5 = *(v0 + 208);
  v6 = *(v0 + 216);
  v7 = *(v0 + 72);

  v8 = [v5 recordID];
  v9 = [v8 recordName];

  sub_1BC75BB60();
  v10 = *v7;
  v11 = v7[1];
  sub_1BC75B8D0();
  swift_allocObject();
  sub_1BC6AE090(v10, v11);
  v12 = sub_1BC75B8C0();
  *(v0 + 232) = v12;
  if (v6)
  {
    v14 = *(v0 + 96);
    v13 = *(v0 + 104);
    v16 = *(v0 + 80);
    v15 = *(v0 + 88);
    v17 = *(v0 + 72);

    sub_1BC739260(v17, type metadata accessor for CloudKitReport);
    sub_1BC739260(v16, type metadata accessor for Report.Evidence);
    (*(v14 + 8))(v13, v15);
    v18 = *(v0 + 144);
    v19 = *(v0 + 136);
    v20 = *(v0 + 112);
    sub_1BC7369C0();
    v18(v19, v20);

    v21 = *(v0 + 8);

    return v21();
  }

  else
  {
    v23 = v12;
    *(v0 + 240) = sub_1BC75B880();
    v24 = swift_task_alloc();
    *(v0 + 248) = v24;
    *v24 = v0;
    v24[1] = sub_1BC735EA4;
    v25 = *(v0 + 32);

    return MEMORY[0x1EEE4B588](v25, v23);
  }
}

uint64_t sub_1BC735EA4()
{

  return MEMORY[0x1EEE6DFA0](sub_1BC735FBC, 0, 0);
}

uint64_t sub_1BC735FBC()
{
  v48 = v0;
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[4];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1BC66008C(v3, &qword_1EBCDED98, &qword_1BC76DAA0);
    v4 = sub_1BC75A4C0();
    v5 = sub_1BC75BF80();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1BC630000, v4, v5, "Successfully uploaded TKRecord to TrustKit.", v6, 2u);
      MEMORY[0x1BFB27EF0](v6, -1, -1);
    }

    v41 = v0[18];
    v7 = v0[17];
    v9 = v0[13];
    v8 = v0[14];
    v10 = v0[11];
    v11 = v0[12];
    v12 = v0[9];
    v13 = v0[10];

    sub_1BC739260(v12, type metadata accessor for CloudKitReport);
    sub_1BC739260(v13, type metadata accessor for Report.Evidence);
    (*(v11 + 8))(v9, v10);
    sub_1BC7369C0();
    v41(v7, v8);

    v14 = v0[1];
    v15 = v0[26];

    return v14(v15);
  }

  else
  {
    v18 = v0[7];
    v17 = v0[8];
    (*(v2 + 32))(v17, v3, v1);
    v46 = *(v2 + 16);
    v46(v18, v17, v1);
    v19 = sub_1BC75A4C0();
    v20 = sub_1BC75BF60();
    v21 = os_log_type_enabled(v19, v20);
    v23 = v0[6];
    v22 = v0[7];
    v24 = v0[5];
    if (v21)
    {
      v25 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v47 = v44;
      *v25 = 136315138;
      sub_1BC739218(&unk_1EBCDEDA0, MEMORY[0x1E69DB578], MEMORY[0x1E69DB580]);
      v26 = sub_1BC75C6A0();
      v28 = v27;
      v45 = *(v23 + 8);
      v45(v22, v24);
      v29 = sub_1BC674BD8(v26, v28, &v47);

      *(v25 + 4) = v29;
      _os_log_impl(&dword_1BC630000, v19, v20, "Failed to upload TKRecord to TrustKit: %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v44);
      MEMORY[0x1BFB27EF0](v44, -1, -1);
      MEMORY[0x1BFB27EF0](v25, -1, -1);
    }

    else
    {

      v45 = *(v23 + 8);
      v45(v22, v24);
    }

    v30 = v0[26];
    v31 = v0[12];
    v42 = v0[11];
    v43 = v0[13];
    v40 = v0[10];
    v33 = v0[8];
    v32 = v0[9];
    v34 = v0[5];
    sub_1BC739218(&unk_1EBCDEDA0, MEMORY[0x1E69DB578], MEMORY[0x1E69DB580]);
    swift_allocError();
    v46(v35, v33, v34);
    swift_willThrow();

    v45(v33, v34);
    sub_1BC739260(v32, type metadata accessor for CloudKitReport);
    sub_1BC739260(v40, type metadata accessor for Report.Evidence);
    (*(v31 + 8))(v43, v42);
    v36 = v0[18];
    v37 = v0[17];
    v38 = v0[14];
    sub_1BC7369C0();
    v36(v37, v38);

    v39 = v0[1];

    return v39();
  }
}

uint64_t sub_1BC736538()
{

  v1 = v0[18];
  v2 = v0[17];
  v3 = v0[14];
  sub_1BC7369C0();
  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1BC736634()
{
  v2 = v0[12];
  v1 = v0[13];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[9];

  sub_1BC739260(v5, type metadata accessor for CloudKitReport);
  sub_1BC739260(v4, type metadata accessor for Report.Evidence);
  (*(v2 + 8))(v1, v3);
  v6 = v0[18];
  v7 = v0[17];
  v8 = v0[14];
  sub_1BC7369C0();
  v6(v7, v8);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1BC7368CC()
{
  sub_1BC739260(v0 + OBJC_IVAR____TtC26SensitiveContentAnalysisUI28ReportToAuthoritiesViewModel_authority, type metadata accessor for Report.Authority);

  sub_1BC66008C(v0 + OBJC_IVAR____TtC26SensitiveContentAnalysisUI28ReportToAuthoritiesViewModel__evidence, &qword_1EBCDED80, &unk_1BC76A3C0);
  v1 = OBJC_IVAR____TtC26SensitiveContentAnalysisUI28ReportToAuthoritiesViewModel___observationRegistrar;
  v2 = sub_1BC759A90();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void sub_1BC7369C0()
{
  v16[1] = *MEMORY[0x1E69E9840];
  v0 = [objc_opt_self() defaultManager];
  v1 = sub_1BC759770();
  v16[0] = 0;
  v2 = [v0 removeItemAtURL:v1 error:v16];

  v3 = v16[0];
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCDD8E0, &unk_1BC76A9F0);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1BC761600;
    *(v4 + 56) = MEMORY[0x1E69E6158];
    *(v4 + 32) = 0xD000000000000023;
    *(v4 + 40) = 0x80000001BC7746E0;
    v5 = v3;
    sub_1BC75C6F0();
  }

  else
  {
    v6 = v16[0];
    v7 = sub_1BC759720();

    swift_willThrow();
    if (qword_1EBCF2C50 != -1)
    {
      swift_once();
    }

    v8 = sub_1BC75A4E0();
    __swift_project_value_buffer(v8, qword_1EBCF2C58);
    v9 = v7;
    v10 = sub_1BC75A4C0();
    v11 = sub_1BC75BF60();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      v14 = v7;
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 4) = v15;
      *v13 = v15;
      _os_log_impl(&dword_1BC630000, v10, v11, "Failed to delete report folder: %@", v12, 0xCu);
      sub_1BC66008C(v13, &qword_1EBCDE130, &qword_1BC7679C0);
      MEMORY[0x1BFB27EF0](v13, -1, -1);
      MEMORY[0x1BFB27EF0](v12, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_1BC736C54(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 32) = a1;
  *(v2 + 40) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1BC736C98, 0, 0);
}

uint64_t sub_1BC736C98()
{
  if (qword_1EBCF2C50 != -1)
  {
    swift_once();
  }

  v1 = sub_1BC75A4E0();
  v0[6] = __swift_project_value_buffer(v1, qword_1EBCF2C58);
  v2 = sub_1BC75A4C0();
  v3 = sub_1BC75BF80();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1BC630000, v2, v3, "Fetching encryption key from TrustKit.", v4, 2u);
    MEMORY[0x1BFB27EF0](v4, -1, -1);
  }

  v0[7] = sub_1BC75B880();
  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = sub_1BC736DF8;

  return MEMORY[0x1EEE4B578]();
}

uint64_t sub_1BC736DF8(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[9] = a1;
  v4[10] = a2;
  v4[11] = v2;

  if (v2)
  {
    v5 = sub_1BC73702C;
  }

  else
  {

    v5 = sub_1BC736F18;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1BC736F18(uint64_t a1)
{
  v2 = sub_1BC75A4C0();
  v3 = sub_1BC75BF80();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1BC630000, v2, v3, "Successfully fetched encryption key data.", v4, 2u);
    MEMORY[0x1BFB27EF0](v4, -1, -1);
  }

  v7 = *(v1 + 72);

  *(v1 + 16) = v7;
  sub_1BC75B9D0();
  v5 = *(v1 + 8);

  return v5();
}

uint64_t sub_1BC73702C()
{

  v1 = *(v0 + 8);

  return v1();
}

id sub_1BC737090()
{
  v1 = OBJC_IVAR____TtC26SensitiveContentAnalysisUIP33_8A6FFD33D440B432C1F2FAE6B8721B9326DirectReportNetworkManager____lazy_storage___session;
  v2 = *(v0 + OBJC_IVAR____TtC26SensitiveContentAnalysisUIP33_8A6FFD33D440B432C1F2FAE6B8721B9326DirectReportNetworkManager____lazy_storage___session);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC26SensitiveContentAnalysisUIP33_8A6FFD33D440B432C1F2FAE6B8721B9326DirectReportNetworkManager____lazy_storage___session);
  }

  else
  {
    v4 = [objc_opt_self() defaultSessionConfiguration];
    v5 = [objc_opt_self() sessionWithConfiguration:v4 delegate:v0 delegateQueue:0];

    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

uint64_t sub_1BC73714C(uint64_t a1, uint64_t a2)
{
  v3[16] = a2;
  v3[17] = v2;
  v3[15] = a1;
  v4 = sub_1BC759800();
  v3[18] = v4;
  v3[19] = *(v4 - 8);
  v3[20] = swift_task_alloc();
  v5 = sub_1BC759500();
  v3[21] = v5;
  v3[22] = *(v5 - 8);
  v3[23] = swift_task_alloc();
  v6 = sub_1BC75C380();
  v3[24] = v6;
  v3[25] = *(v6 - 8);
  v3[26] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BC7372C8, 0, 0);
}

uint64_t sub_1BC7372C8()
{
  v1 = sub_1BC7012B4();
  v0[27] = v1;
  swift_beginAccess();
  if (*(v1 + 16))
  {
    v3 = v0[19];
    v2 = v0[20];
    v4 = v0[18];
    v5 = v0[16];
    v6 = type metadata accessor for Report.Authority.DirectAuthorityDetails(0);
    (*(v3 + 16))(v2, v5 + *(v6 + 32), v4);
    sub_1BC7594D0();
    sub_1BC7594C0();
    sub_1BC7594E0();
    sub_1BC7595D0();
    swift_allocObject();
    sub_1BC7595C0();
    type metadata accessor for Report.Evidence(0);
    sub_1BC739218(&qword_1EBCDEE58, type metadata accessor for Report.Evidence, &protocol conformance descriptor for Report.Evidence);
    v7 = sub_1BC7595A0();
    v0[30] = v7;
    v0[31] = v8;
    v13 = v7;
    v14 = v8;
    v15 = v0[27];

    swift_beginAccess();
    v16 = type metadata accessor for Report.TestingOptions(0);
    v0[32] = v16;
    if (*(v15 + *(v16 + 28)) == 1)
    {
      swift_allocObject();
      v17 = sub_1BC7595C0();
      v0[13] = 0x796D6D7544;
      v0[14] = 0xE500000000000000;
      sub_1BC7395F8(v17, v18, v19);
      sub_1BC7595A0();
    }

    else
    {
      sub_1BC6AE090(v13, v14);
    }

    sub_1BC7594F0();
    v0[33] = sub_1BC737090();
    v20 = swift_task_alloc();
    v0[34] = v20;
    *v20 = v0;
    v20[1] = sub_1BC737C40;
    v21 = v0[23];

    return MEMORY[0x1EEDC6260](v21, 0);
  }

  else
  {
    v10 = *v1;
    v9 = *(v1 + 8);
    sub_1BC75C670();
    v11 = swift_task_alloc();
    v0[28] = v11;
    *v11 = v0;
    v11[1] = sub_1BC7376F4;

    return sub_1BC738864(v10, v9, 0, 0, 1);
  }
}

uint64_t sub_1BC7376F4()
{
  v2 = *v1;
  *(*v1 + 232) = v0;

  (*(v2[25] + 8))(v2[26], v2[24]);
  if (v0)
  {
    v3 = sub_1BC737BBC;
  }

  else
  {
    v3 = sub_1BC73785C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1BC73785C()
{
  v1 = v0[29];
  v3 = v0[19];
  v2 = v0[20];
  v4 = v0[18];
  v5 = v0[16];
  v6 = type metadata accessor for Report.Authority.DirectAuthorityDetails(0);
  (*(v3 + 16))(v2, v5 + *(v6 + 32), v4);
  sub_1BC7594D0();
  sub_1BC7594C0();
  sub_1BC7594E0();
  sub_1BC7595D0();
  swift_allocObject();
  sub_1BC7595C0();
  type metadata accessor for Report.Evidence(0);
  sub_1BC739218(&qword_1EBCDEE58, type metadata accessor for Report.Evidence, &protocol conformance descriptor for Report.Evidence);
  v7 = sub_1BC7595A0();
  v0[30] = v7;
  v0[31] = v8;
  if (v1)
  {
    (*(v0[22] + 8))(v0[23], v0[21]);

    v9 = v0[1];

    return v9();
  }

  else
  {
    v11 = v7;
    v12 = v8;
    v13 = v0[27];

    swift_beginAccess();
    v14 = type metadata accessor for Report.TestingOptions(0);
    v0[32] = v14;
    if (*(v13 + *(v14 + 28)) == 1)
    {
      swift_allocObject();
      v15 = sub_1BC7595C0();
      v0[13] = 0x796D6D7544;
      v0[14] = 0xE500000000000000;
      sub_1BC7395F8(v15, v16, v17);
      sub_1BC7595A0();
    }

    else
    {
      sub_1BC6AE090(v11, v12);
    }

    sub_1BC7594F0();
    v0[33] = sub_1BC737090();
    v18 = swift_task_alloc();
    v0[34] = v18;
    *v18 = v0;
    v18[1] = sub_1BC737C40;
    v19 = v0[23];

    return MEMORY[0x1EEDC6260](v19, 0);
  }
}

uint64_t sub_1BC737BBC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BC737C40(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *v4;
  v7 = *v4;
  v7[35] = a1;
  v7[36] = a2;
  v7[37] = v3;

  v8 = v6[33];
  if (v3)
  {

    v9 = sub_1BC737FB0;
  }

  else
  {

    v9 = sub_1BC737D8C;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1BC737D8C()
{
  v1 = v0[32];
  v2 = v0[27];
  swift_beginAccess();
  if (*(v2 + *(v1 + 32)))
  {
    v4 = v0[35];
    v3 = v0[36];
    v6 = v0[30];
    v5 = v0[31];
    v8 = v0[22];
    v7 = v0[23];
    v9 = v0[21];
    nullsub_1();
    v11 = v10;
    v13 = v12;
    sub_1BC6AE140(v4, v3);
    sub_1BC6AE140(v6, v5);
    (*(v8 + 8))(v7, v9);
LABEL_8:

    v24 = v0[1];

    return v24(v11, v13);
  }

  v14 = v0[37];
  sub_1BC759530();
  swift_allocObject();
  v15 = sub_1BC759520();
  sub_1BC7395A4(v15, v16, v17);
  sub_1BC759510();
  v19 = v0[35];
  v18 = v0[36];
  v21 = v0[30];
  v20 = v0[31];
  (*(v0[22] + 8))(v0[23], v0[21]);
  sub_1BC6AE140(v21, v20);

  sub_1BC6AE140(v19, v18);
  if (!v14)
  {
    v11 = v0[11];
    v13 = v0[12];
    goto LABEL_8;
  }

  v22 = v0[1];

  return v22();
}

uint64_t sub_1BC737FB0()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[21];
  sub_1BC6AE140(v0[30], v0[31]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1BC7381EC(int a1, int a2, void *aBlock)
{
  v4 = _Block_copy(aBlock);
  (*(v4 + 2))(v4, 0, 0);
  _Block_release(v4);
  v5 = *(v3 + 8);

  return v5();
}

id sub_1BC73826C()
{
  v16 = sub_1BC759730();
  v1 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC6D0, &qword_1BC761EF0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v15 - v5;
  v7 = sub_1BC759940();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v0[OBJC_IVAR____TtC26SensitiveContentAnalysisUIP33_8A6FFD33D440B432C1F2FAE6B8721B9326DirectReportNetworkManager____lazy_storage___session] = 0;
  v18 = 0x454D454C504D492FLL;
  v19 = 0xEB000000002F544ELL;
  sub_1BC759930();
  sub_1BC739218(&unk_1EBCDEE40, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
  v11 = sub_1BC75C590();
  MEMORY[0x1BFB267E0](v11);

  (*(v8 + 8))(v10, v7);
  v12 = sub_1BC759800();
  (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
  (*(v1 + 104))(v3, *MEMORY[0x1E6968F70], v16);
  sub_1BC7597F0();
  v13 = type metadata accessor for DirectReportNetworkManager(0);
  v17.receiver = v0;
  v17.super_class = v13;
  return objc_msgSendSuper2(&v17, sel_init);
}

id sub_1BC73855C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DirectReportNetworkManager(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BC738628@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x676E6968746F6ELL && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1BC75C5E0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1BC7386B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1BC7398AC(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1BC7386EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1BC7398AC(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1BC738728(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEE98, &qword_1BC76DC28);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10 - v4;
  v6 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BC7398AC(v6, v7, v8);
  sub_1BC75C740();
  sub_1BC75C530();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1BC738864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_1BC75C370();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x1EEE6DFA0](sub_1BC738964, 0, 0);
}

uint64_t sub_1BC738964()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_1BC75C380();
  v5 = sub_1BC739218(&qword_1EBCDEE68, MEMORY[0x1E69E8820], MEMORY[0x1E69E8828]);
  sub_1BC75C650();
  sub_1BC739218(&qword_1EBCDEE70, MEMORY[0x1E69E87E8], MEMORY[0x1E69E8818]);
  sub_1BC75C390();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_1BC738AF4;
  v8 = v0[11];

  return MEMORY[0x1EEE6DE58](v8, v0 + 2, v4, v5);
}

uint64_t sub_1BC738AF4()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1BC738CB0, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_1BC738CB0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BC738D1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Report.Evidence(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDED80, &unk_1BC76A3C0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEE80, &qword_1BC76DB80);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_1BC660024(a1, &v20 - v13, &qword_1EBCDED80, &unk_1BC76A3C0);
  sub_1BC660024(a2, &v14[v15], &qword_1EBCDED80, &unk_1BC76A3C0);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) != 1)
  {
    sub_1BC660024(v14, v10, &qword_1EBCDED80, &unk_1BC76A3C0);
    if (v16(&v14[v15], 1, v4) != 1)
    {
      sub_1BC69B938(&v14[v15], v7, type metadata accessor for Report.Evidence);
      sub_1BC739218(&qword_1EBCDEE88, type metadata accessor for Report.Evidence, &protocol conformance descriptor for Report.Evidence);
      v18 = sub_1BC75BAB0();
      sub_1BC739260(v7, type metadata accessor for Report.Evidence);
      sub_1BC739260(v10, type metadata accessor for Report.Evidence);
      sub_1BC66008C(v14, &qword_1EBCDED80, &unk_1BC76A3C0);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    sub_1BC739260(v10, type metadata accessor for Report.Evidence);
    goto LABEL_6;
  }

  if (v16(&v14[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_1BC66008C(v14, &qword_1EBCDEE80, &qword_1BC76DB80);
    v17 = 1;
    return v17 & 1;
  }

  sub_1BC66008C(v14, &qword_1EBCDED80, &unk_1BC76A3C0);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_1BC73903C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDED80, &unk_1BC76A3C0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BC7390AC()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC26SensitiveContentAnalysisUI28ReportToAuthoritiesViewModel__evidence;
  swift_beginAccess();
  sub_1BC739818(v1, v2 + v3);
  return swift_endAccess();
}

unint64_t sub_1BC73913C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCDED90;
  if (!qword_1EBCDED90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDED90);
  }

  return result;
}

uint64_t sub_1BC7391B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BC739218(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BC739260(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1BC7392C8(uint64_t a1)
{
  type metadata accessor for Report.Authority(319);
  if (v1 <= 0x3F)
  {
    sub_1BC7393E8(319);
    if (v2 <= 0x3F)
    {
      sub_1BC759A90();
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1BC7393E8(uint64_t a1)
{
  if (!qword_1EBCDEDB0)
  {
    type metadata accessor for Report.Evidence(255);
    v1 = sub_1BC75C110();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBCDEDB0);
    }
  }
}

uint64_t sub_1BC739448(uint64_t a1)
{
  result = sub_1BC759800();
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

uint64_t sub_1BC7394E4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1BC65281C;

  return sub_1BC7381EC(v2, v3, v4);
}

unint64_t sub_1BC7395A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCDEE60;
  if (!qword_1EBCDEE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDEE60);
  }

  return result;
}

unint64_t sub_1BC7395F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCF2D38[0];
  if (!qword_1EBCF2D38[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCF2D38);
  }

  return result;
}

uint64_t sub_1BC73964C()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEE78, &qword_1BC76DB60) - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v0 + 32);
  v5 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1BC660280;

  return sub_1BC7347D8(v6, v7, v8, v4, v0 + v3, v5);
}

uint64_t sub_1BC739760(void *a1, void *a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEE78, &qword_1BC76DB60) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1BC734A20(a1, a2, v2 + v6, v7);
}

uint64_t sub_1BC739818(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDED80, &unk_1BC76A3C0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BC7398AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCF2DC0[0];
  if (!qword_1EBCF2DC0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCF2DC0);
  }

  return result;
}

unint64_t sub_1BC739914(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCF2ED0[0];
  if (!qword_1EBCF2ED0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCF2ED0);
  }

  return result;
}

unint64_t sub_1BC73996C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCF2FE0[0];
  if (!qword_1EBCF2FE0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCF2FE0);
  }

  return result;
}

unint64_t sub_1BC7399C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDDD0148[0];
  if (!qword_1EDDD0148[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDDD0148);
  }

  return result;
}

void sub_1BC739AF8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_1BC73A1F4(uint64_t a1, uint64_t a2, const void *a3)
{
  v4 = *(a1 + 32);
  v5 = sub_1BC75BA40();
  v6 = _Block_copy(a3);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;

  v4(v5, sub_1BC742528, v7);
}

void sub_1BC73A2CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_1BC759710();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

uint64_t sub_1BC73A3FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1BC75BA30();
  v11[4] = a2;
  v11[5] = a3;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1BC700514;
  v11[3] = &block_descriptor_155;
  v8 = _Block_copy(v11);
  v9 = *(a4 + 16);

  v9(a4, v7, v8);
  _Block_release(v8);
}

id sub_1BC73A6A4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = (a1 + *a3);
  swift_beginAccess();
  v6 = *v5;
  if (*v5)
  {
    v7 = v5[1];
    aBlock[4] = v6;
    aBlock[5] = v7;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BC67768C;
    aBlock[3] = a4;
    v8 = _Block_copy(aBlock);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t sub_1BC73A8B8@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  (*(*v1 + 496))();

  v3 = OBJC_IVAR____TtCE26SensitiveContentAnalysisUICSo31SCUISensitiveContentOverlayView14ForwardedState__kind;
  swift_beginAccess();
  return sub_1BC660024(v1 + v3, a1, &qword_1EBCDEEF8, &qword_1BC76DD50);
}

uint64_t sub_1BC73A9A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEEF8, &qword_1BC76DD50);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v8 - v5;
  sub_1BC660024(a1, &v8 - v5, &qword_1EBCDEEF8, &qword_1BC76DD50);
  return (*(**a2 + 184))(v6);
}

uint64_t sub_1BC73AA74(uint64_t a1)
{
  swift_getKeyPath();
  v4 = v1;
  v5 = a1;
  (*(*v1 + 504))();

  return sub_1BC66008C(a1, &qword_1EBCDEEF8, &qword_1BC76DD50);
}

uint64_t (*sub_1BC73AB60(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 496))(KeyPath);

  v4[5] = OBJC_IVAR____TtCE26SensitiveContentAnalysisUICSo31SCUISensitiveContentOverlayView14ForwardedState___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1BC73B5D4(&qword_1EDDCDF68, _s14ForwardedStateCMa, &unk_1BC76DF48);
  sub_1BC759A70();

  v4[7] = sub_1BC73A858(v4);
  return sub_1BC73ACB0;
}

uint64_t sub_1BC73AD3C()
{
  swift_getKeyPath();
  (*(*v0 + 496))();

  swift_beginAccess();
}

uint64_t sub_1BC73ADC8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 224))();
  *a2 = result;
  return result;
}

uint64_t sub_1BC73AE14(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 232);

  return v2(v3);
}

uint64_t sub_1BC73AE68(uint64_t a1)
{
  swift_getKeyPath();
  v4 = v1;
  v5 = a1;
  (*(*v1 + 504))();
}

uint64_t sub_1BC73AF10()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = OBJC_IVAR____TtCE26SensitiveContentAnalysisUICSo31SCUISensitiveContentOverlayView14ForwardedState__kinds;
  swift_beginAccess();
  *(v2 + v3) = v1;
}

uint64_t (*sub_1BC73AF7C(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 496))(KeyPath);

  v4[5] = OBJC_IVAR____TtCE26SensitiveContentAnalysisUICSo31SCUISensitiveContentOverlayView14ForwardedState___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1BC73B5D4(&qword_1EDDCDF68, _s14ForwardedStateCMa, &unk_1BC76DF48);
  sub_1BC759A70();

  v4[7] = sub_1BC73ACDC(v4);
  return sub_1BC73B0CC;
}

uint64_t sub_1BC73B138@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  (*(*v1 + 496))();

  v3 = OBJC_IVAR____TtCE26SensitiveContentAnalysisUICSo31SCUISensitiveContentOverlayView14ForwardedState__contentDescription;
  swift_beginAccess();
  v4 = sub_1BC759D50();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_1BC73B250(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BC759D50();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, a1);
  return (*(**a2 + 280))(v6);
}

uint64_t sub_1BC73B350(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1BC759D50();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtCE26SensitiveContentAnalysisUICSo31SCUISensitiveContentOverlayView14ForwardedState__contentDescription;
  swift_beginAccess();
  v9 = *(v5 + 16);
  v9(v7, v2 + v8, v4);
  sub_1BC73B5D4(&qword_1EBCDBC90, MEMORY[0x1E697B4C0], MEMORY[0x1E697B4C8]);
  v15 = a1;
  LOBYTE(a1) = sub_1BC75BAB0();
  v10 = *(v5 + 8);
  v10(v7, v4);
  if (a1)
  {
    v9(v7, v15, v4);
    swift_beginAccess();
    (*(v5 + 40))(v2 + v8, v7, v4);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v12 = MEMORY[0x1EEE9AC00](KeyPath);
    v13 = v15;
    *(&v15 - 2) = v2;
    *(&v15 - 1) = v13;
    (*(*v2 + 504))(v12, sub_1BC73B61C);
  }

  return (v10)(v15, v4);
}

uint64_t sub_1BC73B5D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BC73B61C()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = OBJC_IVAR____TtCE26SensitiveContentAnalysisUICSo31SCUISensitiveContentOverlayView14ForwardedState__contentDescription;
  swift_beginAccess();
  v4 = sub_1BC759D50();
  (*(*(v4 - 8) + 24))(v2 + v3, v1, v4);
  return swift_endAccess();
}

uint64_t (*sub_1BC73B6B4(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 496))(KeyPath);

  v4[5] = OBJC_IVAR____TtCE26SensitiveContentAnalysisUICSo31SCUISensitiveContentOverlayView14ForwardedState___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1BC73B5D4(&qword_1EDDCDF68, _s14ForwardedStateCMa, &unk_1BC76DF48);
  sub_1BC759A70();

  v4[7] = sub_1BC73B0D8(v4);
  return sub_1BC73B804;
}

void *sub_1BC73B870()
{
  swift_getKeyPath();
  (*(*v0 + 496))();

  v1 = OBJC_IVAR____TtCE26SensitiveContentAnalysisUICSo31SCUISensitiveContentOverlayView14ForwardedState__analysis;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t sub_1BC73B900@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 320))();
  *a2 = result;
  return result;
}

uint64_t sub_1BC73B954(id *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 328);
  v4 = *a1;
  return v3(v2);
}

void sub_1BC73B9B4(void *a1)
{
  v3 = OBJC_IVAR____TtCE26SensitiveContentAnalysisUICSo31SCUISensitiveContentOverlayView14ForwardedState__analysis;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    v10 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 504))(v10, sub_1BC73BB30);

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1BC65F664(0, &qword_1EDDCDF98, 0x1E697B670);
  v5 = v4;
  v6 = a1;
  v7 = sub_1BC75C040();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v1 + v3);
LABEL_8:
  *(v1 + v3) = a1;
}

void sub_1BC73BB30()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = OBJC_IVAR____TtCE26SensitiveContentAnalysisUICSo31SCUISensitiveContentOverlayView14ForwardedState__analysis;
  swift_beginAccess();
  v4 = *(v2 + v3);
  *(v2 + v3) = v1;
  v5 = v1;
}

uint64_t (*sub_1BC73BB9C(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 496))(KeyPath);

  v4[5] = OBJC_IVAR____TtCE26SensitiveContentAnalysisUICSo31SCUISensitiveContentOverlayView14ForwardedState___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1BC73B5D4(&qword_1EDDCDF68, _s14ForwardedStateCMa, &unk_1BC76DF48);
  sub_1BC759A70();

  v4[7] = sub_1BC73B810(v4);
  return sub_1BC73BCEC;
}

uint64_t sub_1BC73BD58(uint64_t a1, uint64_t a2)
{
  v4 = _s6LayoutVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BC73BDBC@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  (*(*v1 + 496))();

  v3 = OBJC_IVAR____TtCE26SensitiveContentAnalysisUICSo31SCUISensitiveContentOverlayView14ForwardedState__layout;
  swift_beginAccess();
  return sub_1BC741CAC(v1 + v3, a1, _s6LayoutVMa);
}

uint64_t sub_1BC73BEB8(uint64_t a1, uint64_t a2)
{
  v4 = _s6LayoutVMa(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BC741CAC(a1, v6, _s6LayoutVMa);
  return (*(**a2 + 376))(v6);
}

uint64_t sub_1BC73BF8C(uint64_t a1)
{
  swift_getKeyPath();
  v4 = v1;
  v5 = a1;
  (*(*v1 + 504))();

  return sub_1BC741C4C(a1, _s6LayoutVMa);
}

uint64_t sub_1BC73C07C(uint64_t *a1, void (*a2)(uint64_t, uint64_t))
{
  v5 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6 = *a1;
  swift_beginAccess();
  a2(v4, v5 + v6);
  return swift_endAccess();
}

uint64_t (*sub_1BC73C0F0(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 496))(KeyPath);

  v4[5] = OBJC_IVAR____TtCE26SensitiveContentAnalysisUICSo31SCUISensitiveContentOverlayView14ForwardedState___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1BC73B5D4(&qword_1EDDCDF68, _s14ForwardedStateCMa, &unk_1BC76DF48);
  sub_1BC759A70();

  v4[7] = sub_1BC73BCF8(v4);
  return sub_1BC73C240;
}

void (*sub_1BC73C24C(uint64_t *a1))(id **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtCE26SensitiveContentAnalysisUICSo31SCUISensitiveContentOverlayView14ForwardedState__wrapper;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1BC73C2E4;
}

void sub_1BC73C2E4(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

uint64_t sub_1BC73C360()
{
  swift_getKeyPath();
  (*(*v0 + 496))();

  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_1BC73C3EC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 416))();
  *a2 = result;
  return result;
}

uint64_t sub_1BC73C440(id *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 424);
  v4 = *a1;
  return v3(v2);
}

void sub_1BC73C4A0(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (a1)
    {
      type metadata accessor for SCUISensitiveContentOverlayView(Strong);
      v5 = v4;
      v6 = sub_1BC75C040();

      if ((v6 & 1) == 0)
      {
        goto LABEL_8;
      }

LABEL_6:
      swift_unknownObjectWeakAssign();

      return;
    }
  }

  else if (!a1)
  {
    goto LABEL_6;
  }

LABEL_8:
  KeyPath = swift_getKeyPath();
  v8 = MEMORY[0x1EEE9AC00](KeyPath);
  (*(*v1 + 504))(v8, sub_1BC73C600);
}

uint64_t (*sub_1BC73C674(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 496))(KeyPath);

  v4[5] = OBJC_IVAR____TtCE26SensitiveContentAnalysisUICSo31SCUISensitiveContentOverlayView14ForwardedState___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1BC73B5D4(&qword_1EDDCDF68, _s14ForwardedStateCMa, &unk_1BC76DF48);
  sub_1BC759A70();

  v4[7] = sub_1BC73C24C(v4);
  return sub_1BC73C7C4;
}

uint64_t sub_1BC73C830()
{
  swift_getKeyPath();
  (*(*v0 + 496))();

  v1 = OBJC_IVAR____TtCE26SensitiveContentAnalysisUICSo31SCUISensitiveContentOverlayView14ForwardedState__isShieldUp;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1BC73C8B8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 464))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1BC73C960(char a1)
{
  v2 = a1 & 1;
  v3 = OBJC_IVAR____TtCE26SensitiveContentAnalysisUICSo31SCUISensitiveContentOverlayView14ForwardedState__isShieldUp;
  result = swift_beginAccess();
  if (*(v1 + v3) == v2)
  {
    *(v1 + v3) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v6 = MEMORY[0x1EEE9AC00](KeyPath);
    v7 = v1;
    v8 = v2;
    (*(*v1 + 504))(v6, sub_1BC73CA64);
  }

  return result;
}

uint64_t sub_1BC73CA64()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OBJC_IVAR____TtCE26SensitiveContentAnalysisUICSo31SCUISensitiveContentOverlayView14ForwardedState__isShieldUp;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

uint64_t (*sub_1BC73CAC0(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 496))(KeyPath);

  v4[5] = OBJC_IVAR____TtCE26SensitiveContentAnalysisUICSo31SCUISensitiveContentOverlayView14ForwardedState___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1BC73B5D4(&qword_1EDDCDF68, _s14ForwardedStateCMa, &unk_1BC76DF48);
  sub_1BC759A70();

  v4[7] = sub_1BC73C7D0(v4);
  return sub_1BC73CC10;
}

uint64_t sub_1BC73CC1C(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_1BC73CC5C(a1);
  return v2;
}

uint64_t sub_1BC73CC5C(uint64_t a1)
{
  v3 = _s6LayoutVMa(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BC759D50();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtCE26SensitiveContentAnalysisUICSo31SCUISensitiveContentOverlayView14ForwardedState__kind;
  v11 = type metadata accessor for SCUISensitiveContentOverlayView.Kind(0);
  (*(*(v11 - 8) + 56))(v1 + v10, 1, 1, v11);
  sub_1BC759D40();
  (*(v7 + 32))(v1 + OBJC_IVAR____TtCE26SensitiveContentAnalysisUICSo31SCUISensitiveContentOverlayView14ForwardedState__contentDescription, v9, v6);
  *(v1 + OBJC_IVAR____TtCE26SensitiveContentAnalysisUICSo31SCUISensitiveContentOverlayView14ForwardedState__analysis) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + OBJC_IVAR____TtCE26SensitiveContentAnalysisUICSo31SCUISensitiveContentOverlayView14ForwardedState__isShieldUp) = 0;
  sub_1BC759A80();
  *(v1 + 16) = a1;
  sub_1BC6EBE54(v5);
  sub_1BC73BD58(v5, v1 + OBJC_IVAR____TtCE26SensitiveContentAnalysisUICSo31SCUISensitiveContentOverlayView14ForwardedState__layout);
  *(v1 + OBJC_IVAR____TtCE26SensitiveContentAnalysisUICSo31SCUISensitiveContentOverlayView14ForwardedState__kinds) = MEMORY[0x1E69E7CC0];
  return v1;
}

uint64_t sub_1BC73CF84()
{
  sub_1BC66008C(v0 + OBJC_IVAR____TtCE26SensitiveContentAnalysisUICSo31SCUISensitiveContentOverlayView14ForwardedState__kind, &qword_1EBCDEEF8, &qword_1BC76DD50);

  v1 = OBJC_IVAR____TtCE26SensitiveContentAnalysisUICSo31SCUISensitiveContentOverlayView14ForwardedState__contentDescription;
  v2 = sub_1BC759D50();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_1BC741C4C(v0 + OBJC_IVAR____TtCE26SensitiveContentAnalysisUICSo31SCUISensitiveContentOverlayView14ForwardedState__layout, _s6LayoutVMa);
  MEMORY[0x1BFB27FD0](v0 + OBJC_IVAR____TtCE26SensitiveContentAnalysisUICSo31SCUISensitiveContentOverlayView14ForwardedState__wrapper);
  v3 = OBJC_IVAR____TtCE26SensitiveContentAnalysisUICSo31SCUISensitiveContentOverlayView14ForwardedState___observationRegistrar;
  v4 = sub_1BC759A90();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t sub_1BC73D0D4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v132 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEF08, &qword_1BC76DE78);
  v110 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v109 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEF10, &qword_1BC76DE80);
  v111 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v109 - v9;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEF18, &qword_1BC76DE88);
  v112 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115);
  v133 = &v109 - v11;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEF20, &qword_1BC76DE90);
  v116 = *(v135 - 8);
  MEMORY[0x1EEE9AC00](v135);
  v114 = &v109 - v12;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEF28, &qword_1BC76DE98);
  v117 = *(v137 - 8);
  MEMORY[0x1EEE9AC00](v137);
  v134 = &v109 - v13;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEF30, &qword_1BC76DEA0);
  v118 = *(v119 - 8);
  MEMORY[0x1EEE9AC00](v119);
  v136 = &v109 - v14;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEF38, &qword_1BC76DEA8);
  v120 = *(v140 - 8);
  MEMORY[0x1EEE9AC00](v140);
  v138 = &v109 - v15;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEF40, &qword_1BC76DEB0);
  v121 = *(v142 - 8);
  MEMORY[0x1EEE9AC00](v142);
  v139 = &v109 - v16;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEF48, &qword_1BC76DEB8);
  v122 = *(v143 - 8);
  MEMORY[0x1EEE9AC00](v143);
  v141 = &v109 - v17;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEF50, &qword_1BC76DEC0);
  v124 = *(v127 - 8);
  MEMORY[0x1EEE9AC00](v127);
  v123 = &v109 - v18;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEF58, &qword_1BC76DEC8);
  v128 = *(v131 - 8);
  MEMORY[0x1EEE9AC00](v131);
  v20 = &v109 - v19;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEF60, &unk_1BC76DED0);
  v129 = *(v130 - 8);
  MEMORY[0x1EEE9AC00](v130);
  v126 = &v109 - v21;
  v150 = sub_1BC75B520();
  v151 = 256;
  v22 = a1;
  v23 = a1;
  v24 = a2;
  sub_1BC73E644(v23, a2, &v148);
  v25 = v148;
  v125 = v20;
  v113 = v8;
  if ((~v148 & 0xF000000000000007) != 0)
  {
    v149 = v148;
  }

  else
  {
    v149 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC990, &unk_1BC7631D0);
    sub_1BC75B750();
    v26 = v146;
    static SensitiveContentOverlay.Kind.standard(_:)(v144, v145, v146, &v149);

    v25 = v149;
  }

  v144 = v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD2B8, &qword_1BC76DEE0);
  v28 = sub_1BC73F0A4();
  View.sensitiveContentShield(_:)(&v144, v27, v7);
  sub_1BC694EE8(v144);

  v144 = v22;
  v145 = v24;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEF00, &qword_1BC76DE70);
  v29 = sub_1BC75B640();
  v30 = (*(*v150 + 320))(v29);

  v150 = v30;
  v31 = swift_allocObject();
  *(v31 + 16) = v22;
  *(v31 + 24) = v24;

  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC990, &unk_1BC7631D0);
  v144 = v27;
  v145 = v28;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v34 = sub_1BC73F25C();
  sub_1BC75B420();

  (*(v110 + 8))(v7, v5);
  v35 = swift_allocObject();
  *(v35 + 16) = v22;
  *(v35 + 24) = v24;

  v144 = v5;
  v145 = v32;
  v146 = OpaqueTypeConformance2;
  v147 = v34;
  v36 = swift_getOpaqueTypeConformance2();
  v37 = v113;
  View.onShowContent(_:)(sub_1BC73F348, v35, v113, v36);

  v38 = v10;
  v39 = v24;
  v40 = v22;
  (*(v111 + 8))(v38, v37);
  v144 = v22;
  v145 = v39;
  v41 = sub_1BC75B640();
  v42 = (*(*v150 + 416))(v41);

  if (v42)
  {
    v43 = [v42 onHideContent];

    v44 = v119;
    if (v43)
    {
      v42 = swift_allocObject();
      v42[2] = v43;
      v45 = sub_1BC742928;
    }

    else
    {
      v45 = 0;
      v42 = 0;
    }
  }

  else
  {
    v45 = 0;
    v44 = v119;
  }

  v144 = v37;
  v145 = v36;
  v46 = swift_getOpaqueTypeConformance2();
  v47 = v114;
  v48 = v115;
  v49 = v133;
  View.onHideContent(_:)(v45, v42, v115, v46);
  sub_1BC635484(v45, v42);
  (*(v112 + 8))(v49, v48);
  v50 = swift_allocObject();
  *(v50 + 16) = v22;
  *(v50 + 24) = v39;

  v144 = v48;
  v145 = v46;
  v51 = swift_getOpaqueTypeConformance2();
  v52 = v135;
  View.onShieldUp(_:)(sub_1BC73F358, v50, v135, v51);

  (*(v116 + 8))(v47, v52);
  v144 = v22;
  v145 = v39;
  v53 = sub_1BC75B640();
  v54 = (*(*v150 + 416))(v53);

  if (v54)
  {
    v55 = [v54 onDeleteContent];

    v56 = v125;
    if (v55)
    {
      v57 = swift_allocObject();
      *(v57 + 16) = v55;
      v58 = sub_1BC742928;
    }

    else
    {
      v58 = 0;
      v57 = 0;
    }
  }

  else
  {
    v58 = 0;
    v57 = 0;
    v56 = v125;
  }

  v144 = v135;
  v145 = v51;
  v59 = swift_getOpaqueTypeConformance2();
  v60 = v137;
  v61 = v134;
  View.onDeleteContent(_:)(v58, v57, v137, v59);
  sub_1BC635484(v58, v57);
  (*(v117 + 8))(v61, v60);
  v144 = v22;
  v145 = v39;
  v62 = sub_1BC75B640();
  v63 = (*(*v150 + 416))(v62);

  if (v63)
  {
    v64 = [v63 onMessageSomeone];

    if (v64)
    {
      v65 = swift_allocObject();
      *(v65 + 16) = v64;
      v64 = sub_1BC742928;
      goto LABEL_19;
    }
  }

  else
  {
    v64 = 0;
  }

  v65 = 0;
LABEL_19:
  v144 = v137;
  v145 = v59;
  v66 = swift_getOpaqueTypeConformance2();
  v67 = v136;
  View.onMessageSomeone(_:)(v64, v65, v44, v66);
  sub_1BC635484(v64, v65);
  (*(v118 + 8))(v67, v44);
  v144 = v22;
  v145 = v39;
  v68 = sub_1BC75B640();
  v69 = (*(*v150 + 416))(v68);

  if (v69)
  {
    v70 = [v69 onBlockParticipant];

    if (v70)
    {
      v71 = swift_allocObject();
      *(v71 + 16) = v70;
      v70 = sub_1BC742928;
      goto LABEL_24;
    }
  }

  else
  {
    v70 = 0;
  }

  v71 = 0;
LABEL_24:
  v144 = v44;
  v145 = v66;
  v72 = swift_getOpaqueTypeConformance2();
  v73 = v140;
  v74 = v138;
  View.onBlockParticipant(_:)(v70, v71, v140, v72);
  sub_1BC635484(v70, v71);
  (*(v120 + 8))(v74, v73);
  v144 = v22;
  v145 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEF00, &qword_1BC76DE70);
  v75 = sub_1BC75B640();
  v76 = (*(*v150 + 416))(v75);

  if (v76)
  {
    v77 = [v76 onReportEvidenceRequested];

    if (v77)
    {
      v78 = swift_allocObject();
      *(v78 + 16) = v77;
      v77 = swift_allocObject();
      v77[2] = sub_1BC742924;
      v77[3] = v78;
      v79 = &unk_1BC76E078;
    }

    else
    {
      v79 = 0;
    }
  }

  else
  {
    v79 = 0;
    v77 = 0;
  }

  v144 = v140;
  v145 = v72;
  v80 = swift_getOpaqueTypeConformance2();
  v81 = v142;
  v82 = v139;
  View.onReportEvidenceRequest(_:)(v79, v77, v142, v80);
  sub_1BC635484(v79, v77);
  (*(v121 + 8))(v82, v81);
  v144 = v40;
  v145 = v39;
  v83 = sub_1BC75B640();
  v84 = (*(*v150 + 416))(v83);

  if (v84)
  {
    v85 = [v84 onLeaveConversation];

    v86 = v123;
    v87 = v56;
    if (v85)
    {
      v88 = swift_allocObject();
      *(v88 + 16) = v85;
      v85 = sub_1BC742928;
    }

    else
    {
      v88 = 0;
    }
  }

  else
  {
    v87 = v56;
    v85 = 0;
    v88 = 0;
    v86 = v123;
  }

  v144 = v142;
  v145 = v80;
  v89 = swift_getOpaqueTypeConformance2();
  v90 = v143;
  v91 = v141;
  View.onLeaveConversation(_:)(v85, v88, v143, v89);
  sub_1BC635484(v85, v88);
  (*(v122 + 8))(v91, v90);
  v144 = v40;
  v145 = v39;
  v92 = sub_1BC75B640();
  v93 = (*(*v150 + 416))(v92);

  if (v93)
  {
    v94 = [v93 onEndCall];

    v95 = v87;
    if (v94)
    {
      v96 = swift_allocObject();
      *(v96 + 16) = v94;
      v94 = sub_1BC742928;
    }

    else
    {
      v96 = 0;
    }
  }

  else
  {
    v94 = 0;
    v96 = 0;
    v95 = v87;
  }

  v97 = v127;
  v144 = v143;
  v145 = v89;
  v98 = swift_getOpaqueTypeConformance2();
  View.onEndCall(_:)(v94, v96, v97, v98);
  sub_1BC635484(v94, v96);
  (*(v124 + 8))(v86, v97);
  v144 = v40;
  v145 = v39;
  v99 = sub_1BC75B640();
  v100 = (*(*v150 + 416))(v99);

  if (!v100)
  {
    v101 = 0;
    goto LABEL_43;
  }

  v101 = [v100 onUnsubscribe];

  if (!v101)
  {
LABEL_43:
    v102 = 0;
    goto LABEL_44;
  }

  v102 = swift_allocObject();
  *(v102 + 16) = v101;
  v101 = sub_1BC678AD4;
LABEL_44:
  v144 = v97;
  v145 = v98;
  v103 = swift_getOpaqueTypeConformance2();
  v104 = v126;
  v105 = v131;
  View.onUnsubscribe(_:)(v101, v102, v131, v103);
  sub_1BC635484(v101, v102);
  (*(v128 + 8))(v95, v105);
  v144 = v105;
  v145 = v103;
  v106 = swift_getOpaqueTypeConformance2();
  v107 = v130;
  sub_1BC6A2784(v130, v106);
  return (*(v129 + 8))(v104, v107);
}

uint64_t sub_1BC73E644@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEEF8, &qword_1BC76DD50);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = (&v61 - v7);
  v66 = a1;
  v67 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEF00, &qword_1BC76DE70);
  v9 = sub_1BC75B640();
  (*(*v69 + 176))(v9);

  v10 = type metadata accessor for SCUISensitiveContentOverlayView.Kind(0);
  result = (*(*(v10 - 8) + 48))(v8, 1, v10);
  if (result != 1)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 5)
    {
      if ((EnumCaseMultiPayload - 1) < 5)
      {
        sub_1BC741C4C(v8, type metadata accessor for SCUISensitiveContentOverlayView.Kind);
        v14 = swift_allocObject();
        v69 = a1;
        v70 = a2;
        sub_1BC75B660();
        v15 = v66;
        v16 = v67;
        v17 = v68;
        swift_getKeyPath();
        v66 = v15;
        v67 = v16;
        v68 = v17;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEFB0, &qword_1BC76E088);
        sub_1BC75B720();

        v12 = v14 | 0xC000000000000000;
        goto LABEL_22;
      }

      sub_1BC741C4C(v8, type metadata accessor for SCUISensitiveContentOverlayView.Kind);
      v66 = a1;
      v67 = a2;
      sub_1BC75B640();
      v51 = v69[2];

      if ((v51 & 8) == 0)
      {
        v52 = swift_allocObject();
        v69 = a1;
        v70 = a2;
        sub_1BC75B660();
        v53 = v66;
        v54 = v67;
        v55 = v68;
        swift_getKeyPath();
        v66 = v53;
        v67 = v54;
        v68 = v55;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEFB0, &qword_1BC76E088);
        sub_1BC75B720();

        v69 = a1;
        v70 = a2;
        sub_1BC75B640();
        v56 = v65[2];

        *(v52 + 40) = v56;
        *a3 = v52;
        return result;
      }

LABEL_21:
      v57 = swift_allocObject();
      v69 = a1;
      v70 = a2;
      sub_1BC75B660();
      v58 = v66;
      v59 = v67;
      v60 = v68;
      swift_getKeyPath();
      v66 = v58;
      v67 = v59;
      v68 = v60;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEFB0, &qword_1BC76E088);
      sub_1BC75B720();

      v12 = v57 | 0xB000000000000000;
      goto LABEL_22;
    }

    if (EnumCaseMultiPayload > 8)
    {
      if (EnumCaseMultiPayload == 9)
      {

        v64 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEF80, qword_1BC76DEF0) + 48);
        v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC978, &qword_1BC76E090);
        v39 = swift_allocBox();
        v62 = *(v38 + 48);
        v63 = v39;
        v69 = a1;
        v70 = a2;
        sub_1BC75B660();
        v40 = v66;
        v41 = v67;
        v61 = v66;
        v42 = v68;
        swift_getKeyPath();
        v66 = v40;
        v67 = v41;
        v68 = v42;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEFB0, &qword_1BC76E088);
        sub_1BC75B720();

        v69 = a1;
        v70 = a2;
        v43 = sub_1BC75B640();
        (*(*v65 + 272))(v43);

        v31 = 0x9000000000000000;
      }

      else
      {
        if (EnumCaseMultiPayload != 10)
        {
          sub_1BC741C4C(v8, type metadata accessor for SCUISensitiveContentOverlayView.Kind);
          goto LABEL_21;
        }

        v64 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEF80, qword_1BC76DEF0) + 48);
        v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC978, &qword_1BC76E090);
        v26 = swift_allocBox();
        v62 = *(v25 + 48);
        v63 = v26;
        v69 = a1;
        v70 = a2;
        sub_1BC75B660();
        v27 = v66;
        v28 = v67;
        v61 = v66;
        v29 = v68;
        swift_getKeyPath();
        v66 = v27;
        v67 = v28;
        v68 = v29;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEFB0, &qword_1BC76E088);
        sub_1BC75B720();

        v69 = a1;
        v70 = a2;
        v30 = sub_1BC75B640();
        (*(*v65 + 272))(v30);

        v31 = 0xA000000000000000;
      }

      v24 = v63 | v31;
    }

    else if (EnumCaseMultiPayload == 6)
    {

      v64 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEF80, qword_1BC76DEF0) + 48);
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC978, &qword_1BC76E090);
      v33 = swift_allocBox();
      v62 = *(v32 + 48);
      v63 = v33;
      v69 = a1;
      v70 = a2;
      sub_1BC75B660();
      v34 = v66;
      v35 = v67;
      v61 = v66;
      v36 = v68;
      swift_getKeyPath();
      v66 = v34;
      v67 = v35;
      v68 = v36;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEFB0, &qword_1BC76E088);
      sub_1BC75B720();

      v69 = a1;
      v70 = a2;
      v37 = sub_1BC75B640();
      (*(*v65 + 272))(v37);

      v24 = v63 | 0x6000000000000000;
    }

    else if (EnumCaseMultiPayload == 7)
    {

      v64 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEF80, qword_1BC76DEF0) + 48);
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC978, &qword_1BC76E090);
      v19 = swift_allocBox();
      v62 = *(v18 + 48);
      v63 = v19;
      v69 = a1;
      v70 = a2;
      sub_1BC75B660();
      v20 = v66;
      v21 = v67;
      v61 = v66;
      v22 = v68;
      swift_getKeyPath();
      v66 = v20;
      v67 = v21;
      v68 = v22;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEFB0, &qword_1BC76E088);
      sub_1BC75B720();

      v69 = a1;
      v70 = a2;
      v23 = sub_1BC75B640();
      (*(*v65 + 272))(v23);

      v24 = v63 | 0x7000000000000000;
    }

    else
    {

      v64 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEF80, qword_1BC76DEF0) + 48);
      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC978, &qword_1BC76E090);
      v45 = swift_allocBox();
      v62 = *(v44 + 48);
      v63 = v45;
      v69 = a1;
      v70 = a2;
      sub_1BC75B660();
      v46 = v66;
      v47 = v67;
      v61 = v66;
      v48 = v68;
      swift_getKeyPath();
      v66 = v46;
      v67 = v47;
      v68 = v48;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEFB0, &qword_1BC76E088);
      sub_1BC75B720();

      v69 = a1;
      v70 = a2;
      v49 = sub_1BC75B640();
      (*(*v65 + 272))(v49);

      v24 = v63 | 0x8000000000000000;
    }

    *a3 = v24;
    v50 = sub_1BC759D50();
    return (*(*(v50 - 8) + 8))(v8 + v64, v50);
  }

  v12 = 0xF000000000000007;
LABEL_22:
  *a3 = v12;
  return result;
}

unint64_t sub_1BC73F0A4()
{
  result = qword_1EDDCE160;
  if (!qword_1EDDCE160)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDD2B8, &qword_1BC76DEE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDCE160);
  }

  return result;
}

void sub_1BC73F108()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEF00, &qword_1BC76DE70);
  v0 = sub_1BC75B640();
  v1 = (*(*v5 + 320))(v0);

  if (v1)
  {
    v2 = sub_1BC75B640();
    v3 = (*(*v5 + 416))(v2);

    if (v3)
    {
      v4 = [v3 onAnalysisChanged];

      if (v4)
      {
        v4[2](v4, v1);
        _Block_release(v4);
      }
    }
  }
}

unint64_t sub_1BC73F25C()
{
  result = qword_1EDDCDF78;
  if (!qword_1EDDCDF78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDC990, &unk_1BC7631D0);
    sub_1BC73F2E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDCDF78);
  }

  return result;
}

unint64_t sub_1BC73F2E0()
{
  result = qword_1EDDCDF70;
  if (!qword_1EDDCDF70)
  {
    sub_1BC65F664(255, &qword_1EDDCDF98, 0x1E697B670);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDCDF70);
  }

  return result;
}

uint64_t sub_1BC73F368(SEL *a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEF00, &qword_1BC76DE70);
  v4 = sub_1BC75B640();
  v5 = (*(*v8 + 416))(v4);

  if (v5)
  {
    v6 = [v5 *a1];

    if (v6)
    {
      v6[2](v6);
      _Block_release(v6);
    }
  }

  sub_1BC75B640();
  (*(*v8 + 472))(a2 & 1);
}

uint64_t sub_1BC73F4BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v3[6] = sub_1BC75BDE0();
  v3[7] = sub_1BC75BDD0();
  v5 = sub_1BC75BD80();
  v3[8] = v5;
  v3[9] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1BC73F55C, v5, v4);
}

uint64_t sub_1BC73F55C(uint64_t a1)
{
  v2 = *(v1 + 24);
  v9 = *(v1 + 32);
  v3 = sub_1BC75BDD0();
  *(v1 + 80) = v3;
  v4 = swift_task_alloc();
  *(v1 + 88) = v4;
  *(v4 + 16) = v9;
  *(v4 + 32) = v2;
  v5 = swift_task_alloc();
  *(v1 + 96) = v5;
  v6 = sub_1BC65F664(0, &qword_1EBCDEFA0, off_1E7FF1288);
  *v5 = v1;
  v5[1] = sub_1BC73F694;
  v7 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6DE38](v1 + 16, v3, v7, 0xD00000000000001CLL, 0x80000001BC774B10, sub_1BC7426E8, v4, v6);
}

uint64_t sub_1BC73F694()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = sub_1BC73F820;
  }

  else
  {

    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = sub_1BC73F7B8;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1BC73F7B8()
{

  v1 = *(v0 + 16);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1BC73F820()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BC73F898(uint64_t a1, void (*a2)(uint64_t, uint64_t (*)(), uint64_t), uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEFA8, &qword_1BC76E080);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v14 - v9;
  (*(v8 + 16))(&v14 - v9, a1, v7);
  v11 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v12 = swift_allocObject();
  (*(v8 + 32))(v12 + v11, v10, v7);
  a2(a4, sub_1BC7426F4, v12);
}

char *sub_1BC73FA58(uint64_t a1)
{
  v2 = v1;
  v4 = &v2[OBJC_IVAR___SCUISensitiveContentOverlayView_onAnalysisChanged];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = &v2[OBJC_IVAR___SCUISensitiveContentOverlayView_onShowContent];
  *v5 = 0;
  *(v5 + 1) = 0;
  v6 = &v2[OBJC_IVAR___SCUISensitiveContentOverlayView_onHideContent];
  *v6 = 0;
  *(v6 + 1) = 0;
  v7 = &v2[OBJC_IVAR___SCUISensitiveContentOverlayView_onDeleteContent];
  *v7 = 0;
  *(v7 + 1) = 0;
  v8 = &v2[OBJC_IVAR___SCUISensitiveContentOverlayView_onShieldUp];
  *v8 = 0;
  *(v8 + 1) = 0;
  v9 = &v2[OBJC_IVAR___SCUISensitiveContentOverlayView_onMessageSomeone];
  *v9 = 0;
  *(v9 + 1) = 0;
  v10 = &v2[OBJC_IVAR___SCUISensitiveContentOverlayView_onLeaveConversation];
  *v10 = 0;
  *(v10 + 1) = 0;
  v11 = &v2[OBJC_IVAR___SCUISensitiveContentOverlayView_onReportEvidenceRequested];
  *v11 = 0;
  *(v11 + 1) = 0;
  v12 = &v2[OBJC_IVAR___SCUISensitiveContentOverlayView_onBlockParticipant];
  *v12 = 0;
  *(v12 + 1) = 0;
  v13 = &v2[OBJC_IVAR___SCUISensitiveContentOverlayView_onEndCall];
  *v13 = 0;
  *(v13 + 1) = 0;
  v14 = &v2[OBJC_IVAR___SCUISensitiveContentOverlayView_onUnsubscribe];
  *v14 = 0;
  *(v14 + 1) = 0;
  *&v2[OBJC_IVAR___SCUISensitiveContentOverlayView_hostingView] = 0;
  _s14ForwardedStateCMa(0);
  v15 = swift_allocObject();
  sub_1BC73CC5C(a1);
  *&v2[OBJC_IVAR___SCUISensitiveContentOverlayView_state] = v15;
  v39.receiver = v2;
  v39.super_class = SCUISensitiveContentOverlayView;
  v16 = objc_msgSendSuper2(&v39, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v17 = *(**&v16[OBJC_IVAR___SCUISensitiveContentOverlayView_state] + 424);
  v18 = v16;

  v17(v16);

  sub_1BC75B630();
  v19 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEF78, &qword_1BC76DEE8));
  v20 = sub_1BC75A900();
  [v20 setTranslatesAutoresizingMaskIntoConstraints_];
  v21 = v18;
  [v21 addSubview_];
  v22 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDC60, &qword_1BC761180);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1BC768CD0;
  v24 = [v20 topAnchor];
  v25 = [v21 topAnchor];
  v26 = [v24 constraintEqualToAnchor_];

  *(v23 + 32) = v26;
  v27 = [v20 bottomAnchor];
  v28 = [v21 bottomAnchor];

  v29 = [v27 constraintEqualToAnchor_];
  *(v23 + 40) = v29;
  v30 = [v20 trailingAnchor];
  v31 = [v21 trailingAnchor];

  v32 = [v30 constraintEqualToAnchor_];
  *(v23 + 48) = v32;
  v33 = [v20 leadingAnchor];
  v34 = [v21 leadingAnchor];

  v35 = [v33 constraintEqualToAnchor_];
  *(v23 + 56) = v35;
  sub_1BC65F664(0, &qword_1EDDCDFA0, 0x1E696ACD8);
  v36 = sub_1BC75BCF0();

  [v22 activateConstraints_];

  v37 = *&v21[OBJC_IVAR___SCUISensitiveContentOverlayView_hostingView];
  *&v21[OBJC_IVAR___SCUISensitiveContentOverlayView_hostingView] = v20;

  return v21;
}

id SCUISensitiveContentOverlayView.init(coder:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCoder_];

  return v2;
}

void __swiftcall SCUISensitiveContentOverlayView.hitTest(_:with:)(UIView_optional *__return_ptr retstr, CGPoint _, UIEvent_optional with)
{
  v6.super_class = SCUISensitiveContentOverlayView;
  v4 = [(UIView_optional *)&v6 hitTest:with.value.super.isa withEvent:_.x, _.y];
  if (v4)
  {
    v5 = v4;
    if (((*(**(v3 + OBJC_IVAR___SCUISensitiveContentOverlayView_state) + 464))() & 1) == 0)
    {
    }
  }
}

void *SCUISensitiveContentOverlayView.configure(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEEF8, &qword_1BC76DD50);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v140 - v3;
  v5 = sub_1BC759D50();
  v155 = *(v5 - 8);
  v156 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v153 = &v140 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = sub_1BC759FE0();
  v7 = *(v160 - 1);
  v8 = MEMORY[0x1EEE9AC00](v160);
  v10 = &v140 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v140 - v11;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC998, &qword_1BC7641A0);
  v13 = MEMORY[0x1EEE9AC00](v152);
  v151 = &v140 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v150 = &v140 - v15;
  v16 = type metadata accessor for SCUISensitiveContentOverlayView.Kind(0);
  v158 = *(v16 - 8);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v157 = (&v140 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v140 - v19;
  sub_1BC75BDE0();
  sub_1BC75C210();
  sub_1BC741CAC(a1, v20, type metadata accessor for SCUISensitiveContentOverlayView.Kind);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload > 8)
    {
      v39 = v158;
      if (EnumCaseMultiPayload != 9 && EnumCaseMultiPayload != 10)
      {
        v55 = *v20;
        goto LABEL_28;
      }
    }

    else
    {
      v39 = v158;
    }

    v55 = *v20;
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEF80, qword_1BC76DEF0);
    (*(v155 + 8))(&v20[*(v56 + 48)], v156);
LABEL_28:
    v27 = *(v159 + OBJC_IVAR___SCUISensitiveContentOverlayView_state);
    (*(*v27 + 328))(v55);
    goto LABEL_74;
  }

  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      v147 = v16;
      v148 = a1;
      v149 = v4;
      if (EnumCaseMultiPayload == 1)
      {
        v23 = *v20;
        v22 = *(v20 + 1);
        v25 = *(v20 + 2);
        v24 = *(v20 + 3);
        v26 = swift_allocObject();
        v160 = v23;
        v161[0] = v23;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC990, &unk_1BC7631D0);
        sub_1BC75B750();
        *(v26 + 40) = v22;
        v27 = *(v159 + OBJC_IVAR___SCUISensitiveContentOverlayView_state);
        v28 = swift_allocObject();
        *(v28 + 16) = v25;
        *(v28 + 24) = v24;
        v29 = swift_allocObject();
        *(v29 + 16) = sub_1BC741D14;
        *(v29 + 24) = v28;
        v30 = *(*v27 + 240);

        v31 = v30(v161);
        v33 = v32;
        v34 = *v32;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v33 = v34;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v34 = sub_1BC7419EC(0, v34[2] + 1, 1, v34);
          *v33 = v34;
        }

        v37 = v34[2];
        v36 = v34[3];
        if (v37 >= v36 >> 1)
        {
          v34 = sub_1BC7419EC((v36 > 1), v37 + 1, 1, v34);
          *v33 = v34;
        }

        v16 = v147;
        v34[2] = v37 + 1;
        v38 = &v34[3 * v37];
        v38[4] = v26 | 0x5000000000000000;
        v38[5] = sub_1BC6D13F8;
        v38[6] = v29;
        v31(v161, 0);

        a1 = v148;
        v4 = v149;
        goto LABEL_73;
      }

      v74 = *v20;
      v75 = *(v20 + 1);
      v77 = *(v20 + 2);
      v76 = *(v20 + 3);
      v78 = swift_allocObject();
      *(v78 + 16) = v74;
      v161[0] = v75;
      v160 = v74;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC990, &unk_1BC7631D0);
      sub_1BC75B750();
      v154 = v78 | 0x1000000000000000;
      v27 = *(v159 + OBJC_IVAR___SCUISensitiveContentOverlayView_state);
      v79 = swift_allocObject();
      *(v79 + 16) = v77;
      *(v79 + 24) = v76;
      v80 = swift_allocObject();
      *(v80 + 16) = sub_1BC742958;
      *(v80 + 24) = v79;
      v81 = *(*v27 + 240);

      v82 = v81(v161);
      v84 = v83;
      v85 = *v83;
      v86 = swift_isUniquelyReferenced_nonNull_native();
      *v84 = v85;
      if ((v86 & 1) == 0)
      {
        v85 = sub_1BC7419EC(0, v85[2] + 1, 1, v85);
        *v84 = v85;
      }

      v88 = v85[2];
      v87 = v85[3];
      if (v88 >= v87 >> 1)
      {
        v85 = sub_1BC7419EC((v87 > 1), v88 + 1, 1, v85);
        *v84 = v85;
      }

      v4 = v149;
      v85[2] = v88 + 1;
      v89 = &v85[3 * v88];
      v89[4] = v154;
      v89[5] = sub_1BC742920;
      v89[6] = v80;
      v82(v161, 0);

      goto LABEL_40;
    }

    v55 = *v20;
    v39 = v158;
    goto LABEL_28;
  }

  v148 = a1;
  v149 = v4;
  if (EnumCaseMultiPayload != 3)
  {
    if (EnumCaseMultiPayload == 4)
    {
      v40 = *v20;
      v41 = *(v20 + 1);
      v42 = *(v20 + 2);
      v143 = *(v20 + 3);
      v151 = *(v20 + 4);
      v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC960, &qword_1BC763170);
      v146 = swift_allocBox();
      v141 = v43;
      v144 = v40;
      SCAParticipant.structParticipant.getter();
      v44 = v41;
      if (v41 >> 62)
      {
        v104 = v41;
        v45 = sub_1BC75C3F0();
        v44 = v104;
        v145 = v42;
        if (v45)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v45 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v145 = v42;
        if (v45)
        {
LABEL_16:
          v46 = v44;
          v147 = v16;
          v161[0] = MEMORY[0x1E69E7CC0];
          result = sub_1BC6701A4(0, v45 & ~(v45 >> 63), 0);
          if ((v45 & 0x8000000000000000) == 0)
          {
            v48 = 0;
            v49 = v161[0];
            v50 = v46;
            v154 = v46 & 0xC000000000000001;
            do
            {
              if (v154)
              {
                v51 = MEMORY[0x1BFB26EB0](v48, v50);
              }

              else
              {
                v51 = *(v50 + 8 * v48 + 32);
              }

              v52 = v51;
              SCAParticipant.structParticipant.getter();

              v161[0] = v49;
              v54 = *(v49 + 16);
              v53 = *(v49 + 24);
              if (v54 >= v53 >> 1)
              {
                sub_1BC6701A4((v53 > 1), v54 + 1, 1);
                v49 = v161[0];
              }

              ++v48;
              *(v49 + 16) = v54 + 1;
              (*(v7 + 32))(v49 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v54, v12, v160);
              v50 = v46;
            }

            while (v45 != v48);

            v16 = v147;
            v42 = v145;
            goto LABEL_55;
          }

          __break(1u);
LABEL_80:
          __break(1u);
          return result;
        }
      }

      v49 = MEMORY[0x1E69E7CC0];
LABEL_55:
      *(v141 + *(v142 + 48)) = v49;
      if (v42)
      {
        v105 = v42;
        v106 = v150;
        sub_1BC75BFE0();

        v107 = 0;
        v4 = v149;
      }

      else
      {
        v107 = 1;
        v4 = v149;
        v106 = v150;
      }

      v108 = sub_1BC759CA0();
      (*(*(v108 - 8) + 56))(v106, v107, 1, v108);
      sub_1BC75B750();
      sub_1BC66008C(v106, &qword_1EBCDC998, &qword_1BC7641A0);
      v109 = v146 | 0x3000000000000000;
      v27 = *(v159 + OBJC_IVAR___SCUISensitiveContentOverlayView_state);
      v110 = swift_allocObject();
      v111 = v151;
      *(v110 + 16) = v143;
      *(v110 + 24) = v111;
      v112 = swift_allocObject();
      *(v112 + 16) = sub_1BC742958;
      *(v112 + 24) = v110;
      v113 = *(*v27 + 240);

      v114 = v113(v161);
      v116 = v115;
      v117 = *v115;
      v118 = swift_isUniquelyReferenced_nonNull_native();
      *v116 = v117;
      v119 = v16;
      if ((v118 & 1) == 0)
      {
        v117 = sub_1BC7419EC(0, v117[2] + 1, 1, v117);
        *v116 = v117;
      }

      v121 = v117[2];
      v120 = v117[3];
      v122 = v121 + 1;
      if (v121 >= v120 >> 1)
      {
        v117 = sub_1BC7419EC((v120 > 1), v121 + 1, 1, v117);
        *v116 = v117;
      }

LABEL_72:
      a1 = v148;
      v117[2] = v122;
      v135 = &v117[3 * v121];
      v135[4] = v109;
      v135[5] = sub_1BC742920;
      v135[6] = v112;
      v114(v161, 0);

      v16 = v119;
      goto LABEL_73;
    }

    v90 = *v20;
    v91 = *(v20 + 1);
    v92 = *(v20 + 2);
    v143 = *(v20 + 3);
    v150 = *(v20 + 4);
    v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC968, &qword_1BC763178);
    v146 = swift_allocBox();
    v141 = v93;
    v144 = v90;
    SCAParticipant.structParticipant.getter();
    v94 = v91;
    if (v91 >> 62)
    {
      v123 = v91;
      v95 = sub_1BC75C3F0();
      v94 = v123;
      v145 = v92;
      if (v95)
      {
        goto LABEL_43;
      }
    }

    else
    {
      v95 = *((v91 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v145 = v92;
      if (v95)
      {
LABEL_43:
        v96 = v94;
        v147 = v16;
        v161[0] = MEMORY[0x1E69E7CC0];
        result = sub_1BC6701A4(0, v95 & ~(v95 >> 63), 0);
        if (v95 < 0)
        {
          goto LABEL_80;
        }

        v97 = 0;
        v98 = v161[0];
        v99 = v96;
        v154 = v96 & 0xC000000000000001;
        do
        {
          if (v154)
          {
            v100 = MEMORY[0x1BFB26EB0](v97, v99);
          }

          else
          {
            v100 = *(v99 + 8 * v97 + 32);
          }

          v101 = v100;
          SCAParticipant.structParticipant.getter();

          v161[0] = v98;
          v103 = *(v98 + 16);
          v102 = *(v98 + 24);
          if (v103 >= v102 >> 1)
          {
            sub_1BC6701A4((v102 > 1), v103 + 1, 1);
            v98 = v161[0];
          }

          ++v97;
          *(v98 + 16) = v103 + 1;
          (*(v7 + 32))(v98 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v103, v10, v160);
          v99 = v96;
        }

        while (v95 != v97);

        v16 = v147;
        v92 = v145;
LABEL_65:
        *(v141 + *(v142 + 48)) = v98;
        if (v92)
        {
          v124 = v92;
          v125 = v151;
          sub_1BC75BFE0();

          v126 = 0;
          v4 = v149;
        }

        else
        {
          v126 = 1;
          v4 = v149;
          v125 = v151;
        }

        v127 = sub_1BC759CA0();
        (*(*(v127 - 8) + 56))(v125, v126, 1, v127);
        sub_1BC75B750();
        sub_1BC66008C(v125, &qword_1EBCDC998, &qword_1BC7641A0);
        v109 = v146 | 0x4000000000000000;
        v27 = *(v159 + OBJC_IVAR___SCUISensitiveContentOverlayView_state);
        v128 = swift_allocObject();
        v129 = v150;
        *(v128 + 16) = v143;
        *(v128 + 24) = v129;
        v112 = swift_allocObject();
        *(v112 + 16) = sub_1BC742958;
        *(v112 + 24) = v128;
        v130 = *(*v27 + 240);

        v114 = v130(v161);
        v132 = v131;
        v117 = *v131;
        v133 = swift_isUniquelyReferenced_nonNull_native();
        *v132 = v117;
        v119 = v16;
        if ((v133 & 1) == 0)
        {
          v117 = sub_1BC7419EC(0, v117[2] + 1, 1, v117);
          *v132 = v117;
        }

        v121 = v117[2];
        v134 = v117[3];
        v122 = v121 + 1;
        if (v121 >= v134 >> 1)
        {
          v117 = sub_1BC7419EC((v134 > 1), v121 + 1, 1, v117);
          *v132 = v117;
        }

        goto LABEL_72;
      }
    }

    v98 = MEMORY[0x1E69E7CC0];
    goto LABEL_65;
  }

  v147 = v16;
  v57 = *v20;
  v58 = *(v20 + 1);
  v60 = *(v20 + 2);
  v59 = *(v20 + 3);
  v61 = swift_allocObject();
  *(v61 + 16) = v57;
  v160 = v58;
  v161[0] = v58;
  v62 = v57;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC990, &unk_1BC7631D0);
  sub_1BC75B750();
  v154 = v61 | 0x2000000000000000;
  v27 = *(v159 + OBJC_IVAR___SCUISensitiveContentOverlayView_state);
  v63 = swift_allocObject();
  *(v63 + 16) = v60;
  *(v63 + 24) = v59;
  v64 = swift_allocObject();
  *(v64 + 16) = sub_1BC742958;
  *(v64 + 24) = v63;
  v65 = *(*v27 + 240);

  v66 = v65(v161);
  v68 = v67;
  v69 = *v67;
  v70 = swift_isUniquelyReferenced_nonNull_native();
  *v68 = v69;
  if ((v70 & 1) == 0)
  {
    v69 = sub_1BC7419EC(0, v69[2] + 1, 1, v69);
    *v68 = v69;
  }

  v72 = v69[2];
  v71 = v69[3];
  if (v72 >= v71 >> 1)
  {
    v69 = sub_1BC7419EC((v71 > 1), v72 + 1, 1, v69);
    *v68 = v69;
  }

  v4 = v149;
  v69[2] = v72 + 1;
  v73 = &v69[3 * v72];
  v73[4] = v154;
  v73[5] = sub_1BC742920;
  v73[6] = v64;
  v66(v161, 0);

LABEL_40:
  v16 = v147;
  a1 = v148;
LABEL_73:
  v39 = v158;
LABEL_74:
  v136 = v157;
  sub_1BC741CAC(a1, v157, type metadata accessor for SCUISensitiveContentOverlayView.Kind);
  v137 = swift_getEnumCaseMultiPayload();
  if (v137 <= 4 || (v137 - 6) >= 5)
  {
    sub_1BC741C4C(v136, type metadata accessor for SCUISensitiveContentOverlayView.Kind);
  }

  else
  {

    v138 = v136 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEF80, qword_1BC76DEF0) + 48);
    v139 = v153;
    (*(v155 + 32))(v153, v138, v156);
    (*(*v27 + 280))(v139);
  }

  sub_1BC741CAC(a1, v4, type metadata accessor for SCUISensitiveContentOverlayView.Kind);
  (*(v39 + 56))(v4, 0, 1, v16);
  return (*(*v27 + 184))(v4);
}

id SCUISensitiveContentOverlayView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v8 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v8 initWithFrame_];
}

void sub_1BC7417DC(uint64_t a1, void (*a2)(void *))
{
  v4 = sub_1BC759CA0();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v15 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC998, &qword_1BC7641A0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v15 - v12;
  sub_1BC660024(a1, &v15 - v12, &qword_1EBCDC998, &qword_1BC7641A0);
  v14 = 0;
  if ((*(v5 + 48))(v13, 1, v4) != 1)
  {
    (*(v5 + 32))(v10, v13, v4);
    sub_1BC65F664(0, &qword_1EDDCDF98, 0x1E697B670);
    (*(v5 + 16))(v8, v10, v4);
    v14 = sub_1BC75BFF0();
    (*(v5 + 8))(v10, v4);
  }

  a2(v14);
}

void *sub_1BC7419EC(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEF90, &qword_1BC76E060);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEF98, &qword_1BC76E068);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void _sSo31SCUISensitiveContentOverlayViewC09SensitiveB10AnalysisUIE5coderABSgSo7NSCoderC_tcfc_0()
{
  v1 = (v0 + OBJC_IVAR___SCUISensitiveContentOverlayView_onAnalysisChanged);
  *v1 = 0;
  v1[1] = 0;
  v2 = (v0 + OBJC_IVAR___SCUISensitiveContentOverlayView_onShowContent);
  *v2 = 0;
  v2[1] = 0;
  v3 = (v0 + OBJC_IVAR___SCUISensitiveContentOverlayView_onHideContent);
  *v3 = 0;
  v3[1] = 0;
  v4 = (v0 + OBJC_IVAR___SCUISensitiveContentOverlayView_onDeleteContent);
  *v4 = 0;
  v4[1] = 0;
  v5 = (v0 + OBJC_IVAR___SCUISensitiveContentOverlayView_onShieldUp);
  *v5 = 0;
  v5[1] = 0;
  v6 = (v0 + OBJC_IVAR___SCUISensitiveContentOverlayView_onMessageSomeone);
  *v6 = 0;
  v6[1] = 0;
  v7 = (v0 + OBJC_IVAR___SCUISensitiveContentOverlayView_onLeaveConversation);
  *v7 = 0;
  v7[1] = 0;
  v8 = (v0 + OBJC_IVAR___SCUISensitiveContentOverlayView_onReportEvidenceRequested);
  *v8 = 0;
  v8[1] = 0;
  v9 = (v0 + OBJC_IVAR___SCUISensitiveContentOverlayView_onBlockParticipant);
  *v9 = 0;
  v9[1] = 0;
  v10 = (v0 + OBJC_IVAR___SCUISensitiveContentOverlayView_onEndCall);
  *v10 = 0;
  v10[1] = 0;
  v11 = (v0 + OBJC_IVAR___SCUISensitiveContentOverlayView_onUnsubscribe);
  *v11 = 0;
  v11[1] = 0;
  *(v0 + OBJC_IVAR___SCUISensitiveContentOverlayView_hostingView) = 0;
  sub_1BC75C3D0();
  __break(1u);
}

uint64_t sub_1BC741C4C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BC741CAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1BC741D40(uint64_t a1)
{
  sub_1BC741EB8(319);
  if (v1 <= 0x3F)
  {
    sub_1BC759D50();
    if (v2 <= 0x3F)
    {
      _s6LayoutVMa(319);
      if (v3 <= 0x3F)
      {
        sub_1BC759A90();
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_1BC741EB8(uint64_t a1)
{
  if (!qword_1EDDCDCD8[0])
  {
    type metadata accessor for SCUISensitiveContentOverlayView.Kind(255);
    v1 = sub_1BC75C110();
    if (!v2)
    {
      atomic_store(v1, qword_1EDDCDCD8);
    }
  }
}

void sub_1BC741F20(uint64_t a1)
{
  sub_1BC742024(319);
  if (v1 <= 0x3F)
  {
    sub_1BC74208C(319);
    if (v2 <= 0x3F)
    {
      sub_1BC74213C(319, &qword_1EDDCDFB8, "with  onAnalysisChanged ");
      if (v3 <= 0x3F)
      {
        sub_1BC74213C(319, &qword_1EDDCDFC8, "by  onAnalysisChanged ");
        if (v4 <= 0x3F)
        {
          sub_1BC7421F0(319);
          if (v5 <= 0x3F)
          {
            sub_1BC742340(319);
            if (v6 <= 0x3F)
            {
              sub_1BC74248C(319);
              if (v7 <= 0x3F)
              {
                swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_1BC742024(uint64_t a1)
{
  if (!qword_1EDDCDF90)
  {
    sub_1BC65F664(255, &qword_1EDDCDF98, 0x1E697B670);
    v1 = sub_1BC75C110();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDDCDF90);
    }
  }
}

void sub_1BC74208C(uint64_t a1)
{
  if (!qword_1EDDCDF80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDC990, &unk_1BC7631D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDEF88, &unk_1BC76E018);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDC940, qword_1BC7697D0);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EDDCDF80);
    }
  }
}

void sub_1BC74213C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    sub_1BC65F664(255, &qword_1EDDCDFB0, 0x1E697B648);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDC990, &unk_1BC7631D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDC940, qword_1BC7697D0);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata3, a2);
    }
  }
}

void sub_1BC7421F0(uint64_t a1)
{
  if (!qword_1EDDCDFC0)
  {
    MEMORY[0x1EEE9AC00](a1);
    sub_1BC65F664(255, &qword_1EDDCDFB0, 0x1E697B648);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDEF88, &unk_1BC76E018);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDC990, &unk_1BC7631D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDC940, qword_1BC7697D0);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1EDDCDFC0);
    }
  }
}

void sub_1BC742340(uint64_t a1)
{
  if (!qword_1EDDCDFD0)
  {
    MEMORY[0x1EEE9AC00](a1);
    sub_1BC65F664(255, &qword_1EDDCDFB0, 0x1E697B648);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDEF88, &unk_1BC76E018);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDC990, &unk_1BC7631D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDC940, qword_1BC7697D0);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1EDDCDFD0);
    }
  }
}

void sub_1BC74248C(uint64_t a1)
{
  if (!qword_1EDDCDF88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDC990, &unk_1BC7631D0);
    sub_1BC759D50();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDDCDF88);
    }
  }
}