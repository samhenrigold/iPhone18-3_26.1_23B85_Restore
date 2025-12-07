unint64_t *sub_26A5136FC@<X0>(unint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_26A84E408();
  OUTLINED_FUNCTION_79(v5);
  v7 = *(v2 + 16);
  v8 = v2 + ((*(v6 + 80) + 24) & ~*(v6 + 80));

  return sub_26A5112B0(a1, v7, v8, a2);
}

unint64_t sub_26A51377C()
{
  result = qword_2803ABB50;
  if (!qword_2803ABB50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803ABB40, &qword_26A859668);
    sub_26A51385C(&qword_2803ABB58, &qword_2803ABB60, &qword_26A859670, sub_26A51382C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803ABB50);
  }

  return result;
}

uint64_t sub_26A51385C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_26A4DBCC8(&qword_28157FBA8, &qword_2803ABBE0, &unk_26A8596B0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26A51390C()
{
  result = qword_2803ABB78;
  if (!qword_2803ABB78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803ABB80, &qword_26A859680);
    sub_26A5139C4();
    sub_26A4DBCC8(&qword_28157FB50, &unk_2803B31B0, &unk_26A858ED0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803ABB78);
  }

  return result;
}

unint64_t sub_26A5139C4()
{
  result = qword_2803ABB88;
  if (!qword_2803ABB88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803ABB90, &qword_26A859688);
    sub_26A513A7C();
    sub_26A4DBCC8(&qword_28157FBA8, &qword_2803ABBE0, &unk_26A8596B0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803ABB88);
  }

  return result;
}

unint64_t sub_26A513A7C()
{
  result = qword_2803ABB98;
  if (!qword_2803ABB98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803ABBA0, &qword_26A859690);
    sub_26A513B34();
    sub_26A4DBCC8(&unk_28157FB40, &qword_2803ABBD8, &qword_26A85C170, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803ABB98);
  }

  return result;
}

unint64_t sub_26A513B34()
{
  result = qword_2803ABBA8;
  if (!qword_2803ABBA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803ABBB0, &qword_26A859698);
    sub_26A513BC0();
    sub_26A513CA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803ABBA8);
  }

  return result;
}

unint64_t sub_26A513BC0()
{
  result = qword_2803ABBB8;
  if (!qword_2803ABBB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803ABBC0, &unk_26A8596A0);
    sub_26A513C4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803ABBB8);
  }

  return result;
}

unint64_t sub_26A513C4C()
{
  result = qword_2803ABBC8;
  if (!qword_2803ABBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803ABBC8);
  }

  return result;
}

unint64_t sub_26A513CA0()
{
  result = qword_2803ABBD0;
  if (!qword_2803ABBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803ABBD0);
  }

  return result;
}

uint64_t sub_26A513D40(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t objectdestroyTm_1(void (*a1)(void))
{
  a1(0);
  OUTLINED_FUNCTION_46();
  (*(v2 + 8))(v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));

  return swift_deallocObject();
}

uint64_t sub_26A513E20()
{
  v0 = sub_26A84B158();
  OUTLINED_FUNCTION_79(v0);
  OUTLINED_FUNCTION_37_1(*(v1 + 80));

  return sub_26A5125F0();
}

uint64_t sub_26A513EB0()
{
  sub_26A84B058();
  v0 = sub_26A84E388();
  OUTLINED_FUNCTION_79(v0);
  v1 = OUTLINED_FUNCTION_35_1();

  return sub_26A51197C(v1, v2, v3);
}

uint64_t objectdestroy_211Tm()
{
  OUTLINED_FUNCTION_28_0();
  v1 = sub_26A84B058();
  OUTLINED_FUNCTION_15();
  v3 = v2;
  v4 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v6 = *(v5 + 64);
  v7 = sub_26A84E388();
  OUTLINED_FUNCTION_15();
  v9 = v8;
  v10 = (v4 + v6 + *(v8 + 80)) & ~*(v8 + 80);
  (*(v3 + 8))(v0 + v4, v1);
  (*(v9 + 8))(v0 + v10, v7);
  OUTLINED_FUNCTION_27_0();

  return swift_deallocObject();
}

uint64_t sub_26A514088()
{
  sub_26A84B058();
  v0 = sub_26A84E388();
  OUTLINED_FUNCTION_79(v0);
  v1 = OUTLINED_FUNCTION_35_1();

  return sub_26A511BD4(v1);
}

unint64_t sub_26A514140()
{
  result = qword_2803ABC58;
  if (!qword_2803ABC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803ABC58);
  }

  return result;
}

unint64_t sub_26A514194()
{
  result = qword_2803ABC90;
  if (!qword_2803ABC90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803ABC98, &unk_26A859880);
    sub_26A4DBCC8(&qword_2803ABB30, &qword_2803ABB28, &unk_26A859638, MEMORY[0x277CE04B0]);
    sub_26A51427C(&qword_2803ABCA0, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803ABC90);
  }

  return result;
}

uint64_t sub_26A51427C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26A5142C4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_46();
  v4 = OUTLINED_FUNCTION_211();
  v5(v4);
  return a2;
}

uint64_t sub_26A514320(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_46();
  v5 = OUTLINED_FUNCTION_211();
  v6(v5);
  return a2;
}

uint64_t OUTLINED_FUNCTION_44_0()
{
  v2 = *(v0 - 304);
  v3 = *(v0 - 384);

  return sub_26A513D40(v2, v3);
}

double OUTLINED_FUNCTION_45_1(uint64_t a1)
{

  return result;
}

uint64_t ComponentGroupView.init(model:response:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_26A84BB08();
  OUTLINED_FUNCTION_46();
  (*(v6 + 32))(a3, a1);
  v7 = *(type metadata accessor for ComponentGroupView(0) + 20);
  sub_26A84E408();
  OUTLINED_FUNCTION_46();
  v9 = *(v8 + 32);

  return v9(a3 + v7, a2);
}

uint64_t ComponentGroupView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ComponentGroupView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v9[1] = sub_26A84BAD8();
  swift_getKeyPath();
  sub_26A5149B0(v1, v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_26A514A14(v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ABCA8, &qword_26A8598B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAFF8, &qword_26A8598C0);
  sub_26A514AF8();
  sub_26A514F08(&qword_2803ABCB8, MEMORY[0x277D631A0], MEMORY[0x277D631A8]);
  sub_26A4EA164();
  sub_26A8512F8();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ABCC0, &qword_26A8598C8);
  *(a1 + *(result + 36)) = 32;
  return result;
}

uint64_t sub_26A5149B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ComponentGroupView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A514A14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ComponentGroupView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A514A78(uint64_t a1)
{
  v3 = *(type metadata accessor for ComponentGroupView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_26A514928(a1, v4);
}

unint64_t sub_26A514AF8()
{
  result = qword_2803ABCB0;
  if (!qword_2803ABCB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803ABCA8, &qword_26A8598B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803ABCB0);
  }

  return result;
}

unint64_t sub_26A514BA4()
{
  result = qword_2803ABCD8;
  if (!qword_2803ABCD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803ABCC0, &qword_26A8598C8);
    sub_26A514C30();
    sub_26A4DBA00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803ABCD8);
  }

  return result;
}

unint64_t sub_26A514C30()
{
  result = qword_2803ABCE0;
  if (!qword_2803ABCE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803ABCE8, &qword_26A859948);
    sub_26A4EA164();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803ABCE0);
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26A84BB08();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = sub_26A84E408();
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_26A84BB08();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = sub_26A84E408();
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_26A514E3C(uint64_t a1)
{
  result = sub_26A84BB08();
  if (v2 <= 0x3F)
  {
    result = sub_26A84E408();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_26A514F08(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26A5150B0(uint64_t a1)
{
  result = sub_26A514F08(&qword_2803ABD08, type metadata accessor for ComponentGroupWrapper, &unk_26A859968);
  *(a1 + 8) = result;
  return result;
}

uint64_t SummaryItemExpandableView.init(text1:text2:thumbnail:attribution:attributionCaveat:expandedContent:attributionIgnoresExpansion:isInSafari:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, int a8@<W7>, uint64_t a9@<X8>)
{
  v57 = a8;
  v55 = a7;
  v52 = a6;
  v53 = a3;
  v59 = a5;
  v60 = a4;
  v54 = a2;
  v58 = a1;
  v56 = a9;
  v9 = type metadata accessor for SummaryItemExpandableView(0);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v10);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v12 = swift_getKeyPath();
  v12[9] = 0;
  swift_unknownObjectWeakInit();
  v13 = &v12[v9[5]];
  if (qword_28157E670 != -1)
  {
    swift_once();
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3890, &unk_26A856670);
  __swift_project_value_buffer(v14, qword_281588798);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A0, &qword_26A854C60);
  sub_26A4EF6D0();
  sub_26A6AEE74(v65);
  memcpy(v13, v65, 0xBFuLL);
  sub_26A519264();
  v15 = &v12[v9[6]];
  if (qword_2803A8C48 != -1)
  {
    swift_once();
  }

  v67 = xmmword_2803D1DE8;
  v68 = unk_2803D1DF8;
  v69 = xmmword_2803D1E08;
  v70 = unk_2803D1E18;
  v71 = xmmword_2803D1DE8;
  v72 = unk_2803D1DF8;
  v73 = xmmword_2803D1E08;
  v74 = unk_2803D1E18;
  v50 = unk_2803D1E18;
  v51 = xmmword_2803D1E08;
  sub_26A4EF6D0();
  sub_26A6AEE74(v75);
  memcpy(v15, v75, 0xC0uLL);
  v16 = v50;
  *(v15 + 12) = v51;
  *(v15 + 13) = v16;
  v17 = v74;
  *(v15 + 16) = v73;
  *(v15 + 17) = v17;
  v18 = v72;
  *(v15 + 14) = v71;
  *(v15 + 15) = v18;
  v19 = &v12[v9[7]];
  v20 = v58;
  v21 = v54;
  if (qword_28157E660 != -1)
  {
    swift_once();
  }

  v76 = xmmword_281588758;
  v77 = unk_281588768;
  v78 = xmmword_281588778;
  v79 = xmmword_281588788;
  v80 = xmmword_281588758;
  v81 = unk_281588768;
  v82 = xmmword_281588778;
  v83 = xmmword_281588788;
  v50 = xmmword_281588788;
  v51 = xmmword_281588778;
  sub_26A4EF6D0();
  sub_26A6AEE74(v84);
  memcpy(v19, v84, 0xC0uLL);
  v22 = v50;
  *(v19 + 12) = v51;
  *(v19 + 13) = v22;
  v23 = v81;
  *(v19 + 14) = v80;
  *(v19 + 15) = v23;
  v24 = v83;
  *(v19 + 16) = v82;
  *(v19 + 17) = v24;
  v25 = v9[8];
  sub_26A6AEE74(v66);
  memcpy(&v12[v25], v66, 0xBFuLL);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_162(KeyPath);
  v27 = swift_getKeyPath();
  OUTLINED_FUNCTION_162(v27);
  v28 = swift_getKeyPath();
  OUTLINED_FUNCTION_162(v28);
  v29 = v9[12];
  *&v12[v29] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190, &unk_26A854C50);
  swift_storeEnumTagMultiPayload();
  v30 = swift_getKeyPath();
  OUTLINED_FUNCTION_162(v30);
  v31 = &v12[v9[14]];
  v64 = 0;
  sub_26A851048();
  v32 = v62;
  *v31 = v61[0];
  *(v31 + 1) = v32;
  v33 = v20[3];
  v34 = v20[4];
  v35 = __swift_project_boxed_opaque_existential_1(v20, v33);
  *&v12[v9[15]] = (*(v34 + 8))(v33, v34);
  sub_26A4EF6D0();
  v36 = v53;
  if (v63)
  {
    v37 = OUTLINED_FUNCTION_0_10();
    v38(v37);
    OUTLINED_FUNCTION_13_5();
  }

  else
  {
    sub_26A4DBD10(v61, &qword_2803A91B8, &qword_26A8575C0);
    v35 = 0;
  }

  v39 = v52;
  *&v12[v9[16]] = v35;
  sub_26A4EF6D0();
  if (v63)
  {
    v40 = OUTLINED_FUNCTION_0_10();
    v41(v40);
    OUTLINED_FUNCTION_13_5();
  }

  else
  {
    sub_26A4DBD10(v61, &qword_2803A91B8, &qword_26A8575C0);
    v35 = 0;
  }

  *&v12[v9[17]] = v35;
  sub_26A4EF6D0();
  if (v63)
  {
    v42 = OUTLINED_FUNCTION_0_10();
    v43(v42);
    OUTLINED_FUNCTION_13_5();
  }

  else
  {
    sub_26A4DBD10(v61, &qword_2803A91B8, &qword_26A8575C0);
    v35 = 0;
  }

  *&v12[v9[18]] = v35;
  sub_26A4EF6D0();
  if (v63)
  {
    v44 = OUTLINED_FUNCTION_0_10();
    v45(v44);
    OUTLINED_FUNCTION_13_5();
  }

  else
  {
    sub_26A4DBD10(v61, &qword_2803A91B8, &qword_26A8575C0);
    v35 = 0;
  }

  *&v12[v9[19]] = v35;
  sub_26A4EF6D0();
  if (v63)
  {
    v46 = OUTLINED_FUNCTION_0_10();
    v48 = v47(v46);
    OUTLINED_FUNCTION_11_5(v39);
    OUTLINED_FUNCTION_11_5(v59);
    OUTLINED_FUNCTION_11_5(v60);
    OUTLINED_FUNCTION_11_5(v36);
    OUTLINED_FUNCTION_11_5(v21);
    __swift_destroy_boxed_opaque_existential_1(v61);
  }

  else
  {
    OUTLINED_FUNCTION_9_0(v39);
    OUTLINED_FUNCTION_9_0(v59);
    OUTLINED_FUNCTION_9_0(v60);
    OUTLINED_FUNCTION_9_0(v36);
    OUTLINED_FUNCTION_9_0(v21);
    OUTLINED_FUNCTION_9_0(v61);
    v48 = 0;
  }

  *&v12[v9[20]] = v48;
  v12[v9[21]] = v55 & 1;
  v12[v9[22]] = v57 & 1;
  OUTLINED_FUNCTION_3_6();
  sub_26A51A21C();
  return __swift_destroy_boxed_opaque_existential_1(v20);
}

uint64_t type metadata accessor for SummaryItemExpandableView(uint64_t a1)
{
  result = qword_2803ABD28;
  if (!qword_2803ABD28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26A515800()
{
  OUTLINED_FUNCTION_6_8();
  v0 = sub_26A5D6E04();
  return OUTLINED_FUNCTION_5_7(v0);
}

double sub_26A51584C@<D0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ABEA0, &qword_26A859E08);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A8570D0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADE0, &unk_26A857190);
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_26A8570F0;
  if (qword_28157E758 != -1)
  {
    swift_once();
  }

  v4 = qword_281588968;
  *(v3 + 32) = qword_281588968;
  v5 = byte_281588970;
  *(v3 + 40) = byte_281588970;
  *(v3 + 48) = 3;
  *(v3 + 56) = 1;
  sub_26A4E324C(v4, v5);
  sub_26A621A9C(v3);
  *(inited + 32) = v6;
  *(inited + 40) = 0x4014000000000000;
  *(inited + 56) = 0;
  *(inited + 64) = 0;
  *(inited + 48) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1D80, &qword_26A8593E0);
  sub_26A4DBCC8(&qword_28157D8B8, &qword_2803B1D80, &qword_26A8593E0, MEMORY[0x277D83B58]);
  v7 = sub_26A8516A8();
  sub_26A8516A8();

  sub_26A817A28(v7, v8);
  v10 = v9;

  v13 = v10;
  sub_26A816FC4(&v13, sub_26A827BD8, 0);
  v11 = v13;
  *a1 = sub_26A827BD8;
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 24) = v11;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  return result;
}

uint64_t sub_26A515A60()
{
  v1 = sub_26A84F988();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for SummaryItemExpandableView(0) + 36);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    sub_26A851EA8();
    v7 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v9[15];
  }

  return v6 & 1;
}

uint64_t sub_26A515BB8()
{
  v1 = sub_26A84F988();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for SummaryItemExpandableView(0) + 40);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    sub_26A851EA8();
    v7 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v9[15];
  }

  return v6 & 1;
}

uint64_t sub_26A515D10()
{
  v1 = sub_26A84F988();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for SummaryItemExpandableView(0) + 44);
  v6 = *v5;
  if ((*(v5 + 8) & 1) == 0)
  {

    sub_26A851EA8();
    v7 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v6, 0);
    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v6;
}

uint64_t sub_26A515E64@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26A84F988();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190, &unk_26A854C50);
  MEMORY[0x28223BE20](v6);
  v8 = &v11 - v7;
  type metadata accessor for SummaryItemExpandableView(0);
  sub_26A4EF6D0();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_26A51A3E0(v8, a1);
  }

  sub_26A851EA8();
  v10 = sub_26A8501F8();
  sub_26A84EA78();

  sub_26A84F978();
  swift_getAtKeyPath();

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_26A51603C()
{
  v1 = sub_26A84F988();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for SummaryItemExpandableView(0) + 52);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    sub_26A851EA8();
    v7 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v9[15];
  }

  return v6 & 1;
}

uint64_t sub_26A516194()
{
  v1 = type metadata accessor for SummaryItemExpandableView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC190, &qword_26A85A9E0);
  sub_26A851058();
  if (v4)
  {
    v2 = 0;
  }

  else
  {
    v2 = *(v0 + *(v1 + 84)) ^ 1;
  }

  return v2 & 1;
}

uint64_t sub_26A516228@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26A515D10();
  if (sub_26A61B05C(v3, &unk_287B13068) && (sub_26A515A60() & 1) == 0)
  {
    result = type metadata accessor for SummaryItemExpandableView(0);
    v12 = 0;
    v17 = v1 + *(result + 24);
    v7 = *(v17 + 192);
    v8 = *(v17 + 200);
    v13 = *(v17 + 208);
    v9 = *(v17 + 216);
  }

  else
  {
    result = sub_26A51603C();
    if (result & 1) != 0 && (result = sub_26A515BB8(), (result))
    {
      v5 = type metadata accessor for SummaryItemExpandableView(0);
      v6 = v1 + *(v5 + 28);
      v7 = *(v6 + 192);
      v8 = *(v6 + 200);
      v9 = *(v6 + 216);
      v10 = v1 + *(v5 + 20);
      v11 = v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A0, &qword_26A854C60) + 28);
      result = type metadata accessor for SummaryItemConstants(0);
      v12 = 0;
      v13 = *(v11 + *(result + 44));
    }

    else
    {
      if (qword_2803A8BF8 != -1)
      {
        result = swift_once();
      }

      v7 = 0.0;
      if (byte_2803B0441 == 1 && (v14 = sub_26A515D10(), result = sub_26A61B05C(v14, &unk_287B131A0), (result & 1) != 0))
      {
        sub_26A4D7E10();
        v16 = sub_26A63CD18(v15);
        v12 = 1;
        result = 1769105747;
        v8 = 0;
        v13 = 0.0;
        v9 = 0;
        switch(v16)
        {
          case 1:
          case 2:
          case 3:
            v18 = sub_26A852598();

            if ((v18 & 1) == 0)
            {
              goto LABEL_15;
            }

            goto LABEL_14;
          case 4:
            break;
          default:

LABEL_14:
            v19 = type metadata accessor for SummaryItemExpandableView(0);
            v20 = v1 + *(v19 + 28);
            v21 = *(v20 + 192);
            v22 = *(v20 + 208);
            v23 = v1 + *(v19 + 20);
            v24 = v23 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A0, &qword_26A854C60) + 28);
            result = type metadata accessor for SummaryItemConstants(0);
            v12 = 0;
            v8 = *(v24 + *(result + 48));
            v7 = v21 + -2.0;
            v13 = v22 + -2.0;
            v9 = v8;
            break;
        }
      }

      else
      {
LABEL_15:
        v8 = 0;
        v9 = 0;
        v12 = 1;
        v13 = 0.0;
      }
    }
  }

  *a1 = v7;
  *(a1 + 8) = v8;
  *(a1 + 16) = v13;
  *(a1 + 24) = v9;
  *(a1 + 32) = v12;
  return result;
}

uint64_t sub_26A5164D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SummaryItemExpandableView(0);
  v5 = *(a1 + *(v4 + 60));
  v6 = *(a1 + *(v4 + 72));

  if (v6 && (sub_26A516194() & 1) != 0)
  {
    sub_26A516604(a1, __src);
    __src[40] = sub_26A84FED8();
    nullsub_1();
    memcpy(__dst, __src, 0xA4uLL);
  }

  else
  {
    sub_26A51A3D8(__dst);
  }

  memcpy(__src, __dst, 0xA4uLL);
  memcpy(v9, __dst, sizeof(v9));
  memcpy(&v8[6], __dst, 0xA4uLL);
  *a2 = v5;
  *(a2 + 8) = 257;
  memcpy((a2 + 10), v8, 0xAAuLL);

  sub_26A4EF6D0();
  sub_26A4DBD10(__src, &qword_2803ABED8, &qword_26A859E90);
}

uint64_t sub_26A516604@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_2803A8BC8 != -1)
  {
    swift_once();
  }

  v3 = xmmword_2803B0060;
  v4 = byte_2803B0070;
  v5 = qword_2803B0078;
  v6 = *(a1 + *(type metadata accessor for SummaryItemExpandableView(0) + 72));
  v7 = v4;
  sub_26A4EF6C0(v3, *(&v3 + 1), v4);
  v8 = v5;

  if (v6)
  {
    sub_26A851458();
    sub_26A84F628();
    v9 = v34[15];
    v10 = v34[16];
    v11 = v34[18];
    v12 = v34[19];
    v13 = v34[20];
    v15 = v34[21];
    v14 = v34[22];
    v16 = v34[23];
    v17 = v34[24];
    v18 = v34[25];
    v19 = v34[26];
    v20 = v34[27];
    v21 = v34[28];
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v15 = 0;
    v14 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
  }

  v23 = v14;
  v24 = v16;
  v25 = v17;
  v26 = v9;
  v27 = v21;
  v28 = v20;
  v29 = v19;
  v30 = v18;
  v32[126] = v7;
  __src[0] = v6;
  __src[1] = v9;
  __src[2] = v10;
  __src[3] = v3;
  __src[4] = v11;
  __src[5] = v12;
  __src[6] = v13;
  __src[7] = v15;
  __src[8] = v14;
  __src[9] = v16;
  __src[10] = v17;
  __src[11] = v18;
  __src[12] = v19;
  __src[13] = v20;
  __src[14] = v21;
  memcpy(&v32[6], __src, 0x78uLL);
  *a2 = v3;
  *(a2 + 16) = v7;
  *(a2 + 24) = v8;
  *(a2 + 32) = 257;
  memcpy((a2 + 34), v32, 0x7EuLL);
  v34[0] = v6;
  v34[1] = v26;
  v34[2] = v10;
  v34[3] = v3;
  v34[4] = v11;
  v34[5] = v12;
  v34[6] = v13;
  v34[7] = v15;
  v34[8] = v23;
  v34[9] = v24;
  v34[10] = v25;
  v34[11] = v30;
  v34[12] = v29;
  v34[13] = v28;
  v34[14] = v27;

  sub_26A4EF6C0(v3, *(&v3 + 1), v7);

  sub_26A4EF6D0();
  sub_26A4DBD10(v34, &qword_2803ABEE0, &qword_26A859E98);
  sub_26A4EC448(v3, *(&v3 + 1), v7);
}

uint64_t sub_26A5168A4(uint64_t a1)
{
  type metadata accessor for SummaryItemExpandableView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC190, &qword_26A85A9E0);
  return sub_26A851068();
}

void *sub_26A516918@<X0>(void *a1@<X8>)
{
  if (sub_26A516194())
  {
    sub_26A51A3A8(__src);
  }

  else
  {
    v3 = type metadata accessor for SummaryItemExpandableView(0);
    v4 = *(v1 + v3[18]);
    if (v4)
    {
      KeyPath = swift_getKeyPath();
      v6 = *(v1 + v3[22]);
      v7 = swift_getKeyPath();
    }

    else
    {
      KeyPath = 0;
      v7 = 0;
      v6 = 0;
    }

    v8 = *(v1 + v3[19]);
    if (v8)
    {
      v14 = a1;
      v18[0] = v4;
      v18[1] = KeyPath;
      v18[2] = 0;
      v18[3] = v7;
      v19 = v6;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ABEA8, &qword_26A859E10);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_26A8570F0;

      sub_26A51A308(v4);
      v10 = sub_26A850208();
      *(v9 + 32) = v10;
      v11 = sub_26A850228();
      *(v9 + 33) = v11;
      v12 = sub_26A850218();
      sub_26A850218();
      if (sub_26A850218() != v10)
      {
        v12 = sub_26A850218();
      }

      sub_26A850218();
      if (sub_26A850218() != v11)
      {
        v12 = sub_26A850218();
      }

      sub_26A516DC0(v18, v8, __src);
      memcpy(__dst, __src, sizeof(__dst));
      memcpy(v16, __src, sizeof(v16));
      sub_26A4EF6D0();
      sub_26A4DBD10(v16, &qword_2803ABEB0, &qword_26A859E18);
      sub_26A51A354(v4);
      memcpy(&v20[7], __dst, 0x130uLL);
      v17[0] = v12;
      memcpy(&v17[1], v20, 0x137uLL);
      memcpy(__src, v17, 0x138uLL);
      sub_26A51A3A0(__src);
      memcpy(v22, __src, sizeof(v22));
      sub_26A4EF6D0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ABE50, &qword_26A859D40);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ABE60, &qword_26A859D48);
      sub_26A4DBCC8(&qword_2803ABE48, &qword_2803ABE50, &qword_26A859D40, MEMORY[0x277CDD828]);
      sub_26A519F4C(&qword_2803ABE58, &qword_2803ABE60, &qword_26A859D48, sub_26A51A0AC);
      sub_26A84FDF8();

      sub_26A51A354(v4);
      sub_26A4DBD10(v17, &qword_2803ABE50, &qword_26A859D40);
      memcpy(v22, v21, sizeof(v22));
      a1 = v14;
    }

    else
    {
      __src[0] = v4;
      __src[1] = KeyPath;
      __src[2] = 0;
      __src[3] = v7;
      LOBYTE(__src[4]) = v6;
      sub_26A51A2FC(__src);
      memcpy(v21, __src, sizeof(v21));

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ABE50, &qword_26A859D40);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ABE60, &qword_26A859D48);
      sub_26A4DBCC8(&qword_2803ABE48, &qword_2803ABE50, &qword_26A859D40, MEMORY[0x277CDD828]);
      sub_26A519F4C(&qword_2803ABE58, &qword_2803ABE60, &qword_26A859D48, sub_26A51A0AC);
      sub_26A84FDF8();
    }

    memcpy(v21, v22, sizeof(v21));
    nullsub_1();
    memcpy(__src, v21, 0x139uLL);
  }

  return memcpy(a1, __src, 0x139uLL);
}

uint64_t sub_26A516DC0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v12 = sub_26A84FA78();
  LOBYTE(v24[0]) = 0;
  sub_26A5170AC(a2, __src, a1);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v21, __src, sizeof(v21));
  sub_26A4EF6D0();
  sub_26A4DBD10(v21, &qword_2803ABEB8, &qword_26A859E70);
  memcpy(&v19[7], __dst, 0xA0uLL);
  v5 = v24[0];
  sub_26A851458();
  sub_26A84F028();
  v6 = sub_26A84FC08();
  v18 = 0;
  v7 = *a1;
  v8 = a1[1];
  v9 = a1[2];
  v10 = a1[3];
  LOBYTE(a1) = *(a1 + 32);
  sub_26A51A308(v7);

  sub_26A51A308(v7);
  sub_26A51A354(v7);
  v22[0] = v12;
  v22[1] = 0;
  LOBYTE(v22[2]) = v5;
  memcpy(&v22[2] + 1, v19, 0xA7uLL);
  *&v22[23] = v15;
  *&v22[25] = v16;
  *&v22[27] = v17;
  memcpy(v14, v22, 0xE8uLL);
  v23[0] = v6;
  v23[1] = 0;
  LOBYTE(v23[2]) = 0;
  v23[3] = v7;
  v23[4] = v8;
  v23[5] = v9;
  v23[6] = v10;
  LOBYTE(v23[7]) = a1;
  v23[8] = a2;
  memcpy(&v14[232], v23, 0x48uLL);
  memcpy(a3, v14, 0x130uLL);
  v24[0] = v6;
  v24[1] = 0;
  v25 = 0;
  v26 = v7;
  v27 = v8;
  v28 = v9;
  v29 = v10;
  v30 = a1;
  v31 = a2;
  sub_26A4EF6D0();
  sub_26A4EF6D0();
  sub_26A4DBD10(v24, &qword_2803ABEC8, &qword_26A859E80);
  *__src = v12;
  *&__src[8] = 0;
  __src[16] = v5;
  memcpy(&__src[17], v19, 0xA7uLL);
  v33 = v15;
  v34 = v16;
  v35 = v17;
  return sub_26A4DBD10(__src, &qword_2803ABEC0, &qword_26A859E78);
}

uint64_t sub_26A5170AC@<X0>(uint64_t a1@<X1>, void *a2@<X8>, uint64_t *a3@<X0>)
{
  sub_26A517178(a3, __src);
  memcpy(__dst, __src, 0x88uLL);
  LOWORD(__dst[17]) = 257;
  __dst[18] = 0x3FF0000000000000;
  memcpy(a2, __dst, 0x98uLL);
  a2[19] = a1;

  sub_26A4EF6D0();
  memcpy(v8, __src, sizeof(v8));
  v9 = 257;
  v10 = 0x3FF0000000000000;
  return sub_26A4DBD10(v8, &qword_2803ABED0, &qword_26A859E88);
}

uint64_t sub_26A517178@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v19 = a1[3];
  v5 = *(a1 + 32);
  if (qword_2803A8BE8 != -1)
  {
    swift_once();
  }

  v6 = xmmword_2803B00E0;
  v7 = byte_2803B00F0;
  v8 = qword_2803B00F8;
  sub_26A4EF6C0(xmmword_2803B00E0, *(&xmmword_2803B00E0 + 1), byte_2803B00F0);

  sub_26A4EF6C0(v6, *(&v6 + 1), v7);
  v9 = qword_2803A8BD8;

  if (v9 != -1)
  {
    swift_once();
  }

  v10 = xmmword_2803B00A0;
  v16 = byte_2803B00B0;
  v17 = *(&xmmword_2803B00A0 + 1);
  v29[0] = v2;
  v29[1] = v3;
  v29[2] = v4;
  v29[3] = v19;
  v30 = v5;
  v26 = v6;
  v27 = v7;
  v28 = v8;
  v31[0] = v29;
  v31[1] = &v26;
  v23 = xmmword_2803B00A0;
  v24 = byte_2803B00B0;
  v25 = qword_2803B00B8;
  v20 = v6;
  v21 = v7;
  v22 = v8;
  v31[2] = &v23;
  v31[3] = &v20;
  sub_26A593F80(v31, a2);
  v13 = v20;
  v12 = v13 >> 64;
  v11 = v13;
  v14 = v21;
  sub_26A51A308(v2);
  sub_26A4EF6C0(v10, v17, v16);

  sub_26A4EC448(v11, v12, v14);

  sub_26A4EC448(v23, *(&v23 + 1), v24);

  sub_26A4EC448(v26, *(&v26 + 1), v27);

  return sub_26A51A354(v29[0]);
}

uint64_t sub_26A51737C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C0, &unk_26A854CB0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v10[-v2];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C8, &unk_26A856820);
  MEMORY[0x28223BE20](v4 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v10[-v6];
  sub_26A515E64(&v10[-v6]);
  sub_26A516228(v12);
  v11 = v0;
  sub_26A4EF6D0();
  v8 = sub_26A84F3A8();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v8);
  sub_26A4C605C();
  return sub_26A4DBD10(v7, &qword_2803A91C8, &unk_26A856820);
}

uint64_t sub_26A517518@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = type metadata accessor for SummaryItemExpandableView(0);
  MEMORY[0x28223BE20](v4);
  v5 = sub_26A84FA78();
  LOBYTE(v48[0]) = 0;
  sub_26A5164D0(a1, v47);
  memcpy(v50, v47, sizeof(v50));
  memcpy(v51, v47, 0xB4uLL);
  sub_26A4EF6D0();
  sub_26A4DBD10(v51, &qword_2803ABDA8, &qword_26A859CB8);
  memcpy(&v49[7], v50, 0xB4uLL);
  v6 = v48[0];
  KeyPath = swift_getKeyPath();
  v47[0] = v5;
  v47[1] = 0;
  LOBYTE(v47[2]) = v6;
  memcpy(&v47[2] + 1, v49, 0xBBuLL);
  v47[26] = KeyPath;
  v47[27] = 1;
  LOBYTE(v47[28]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ABDB0, &qword_26A859CF0);
  sub_26A519C40();
  v8 = sub_26A851248();
  v9 = *(a1 + *(v4 + 64));
  if (v9)
  {
    v10 = swift_getKeyPath();
    sub_26A519264();
    v11 = swift_allocObject();
    sub_26A51A21C();
    v12 = swift_getKeyPath();
    v13 = swift_allocObject();
    *(v13 + 16) = sub_26A51A894;
    *(v13 + 24) = v11;
    v14 = sub_26A51A898;
    v15 = 1;
  }

  else
  {
    v10 = 0;
    v15 = 0;
    v12 = 0;
    v14 = 0;
    v13 = 0;
  }

  v47[0] = v9;
  v47[1] = v10;
  v47[2] = 0;
  v47[3] = v15;
  v47[4] = v12;
  v47[5] = v14;
  v47[6] = v13;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ABDD8, &qword_26A859D08);
  sub_26A519F4C(&qword_2803ABDE0, &qword_2803ABDD8, &qword_26A859D08, sub_26A519D24);
  v16 = sub_26A851248();
  v17 = MEMORY[0x277CE11C8];
  v48[4] = &protocol witness table for AnyView;
  v48[3] = MEMORY[0x277CE11C8];
  v48[0] = v16;
  sub_26A516918(v47);
  memcpy(v46, v47, 0x139uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ABE30, &qword_26A859D30);
  sub_26A519F4C(&qword_2803ABE28, &qword_2803ABE30, &qword_26A859D30, sub_26A519FC8);
  v18 = sub_26A851248();
  v46[3] = v17;
  v46[4] = &protocol witness table for AnyView;
  v45 = 0;
  v46[0] = v18;
  memset(v44, 0, sizeof(v44));
  v19 = *(a1 + *(v4 + 68));
  if (v19)
  {
    v20 = &protocol witness table for AnyView;
    v21 = MEMORY[0x277CE11C8];
  }

  else
  {
    v21 = 0;
    v20 = 0;
    v43[1] = 0;
    v43[2] = 0;
  }

  v43[0] = v19;
  v43[3] = v21;
  v43[4] = v20;
  v22 = qword_28157E670;

  if (v22 != -1)
  {
    swift_once();
  }

  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3890, &unk_26A856670);
  __swift_project_value_buffer(v23, qword_281588798);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A0, &qword_26A854C60);
  sub_26A4EF6D0();
  sub_26A6AEE74(v47);
  memcpy(a2, v47, 0xBFuLL);
  sub_26A519264();
  v24 = type metadata accessor for SummaryItemStandardLayout(0);
  v25 = v24[5];
  *&a2[v25] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8, &qword_26A857040);
  swift_storeEnumTagMultiPayload();
  v26 = &a2[v24[6]];
  *v26 = swift_getKeyPath();
  v26[8] = 0;
  *&a2[v24[7]] = v8;
  sub_26A4EF6D0();
  v27 = v41;
  if (v41)
  {
    v28 = v42;
    __swift_project_boxed_opaque_existential_1(v40, v41);
    v29 = (*(v28 + 8))(v27, v28);
    __swift_destroy_boxed_opaque_existential_1(v40);
  }

  else
  {
    sub_26A4DBD10(v40, &qword_2803A91B8, &qword_26A8575C0);
    v29 = 0;
  }

  *&a2[v24[8]] = v29;
  sub_26A4EF6D0();
  v30 = v41;
  if (v41)
  {
    v31 = v42;
    __swift_project_boxed_opaque_existential_1(v40, v41);
    v32 = (*(v31 + 8))(v30, v31);
    __swift_destroy_boxed_opaque_existential_1(v40);
  }

  else
  {
    sub_26A4DBD10(v40, &qword_2803A91B8, &qword_26A8575C0);
    v32 = 0;
  }

  *&a2[v24[9]] = v32;
  sub_26A4EF6D0();
  v33 = v41;
  if (v41)
  {
    v34 = v42;
    __swift_project_boxed_opaque_existential_1(v40, v41);
    v35 = (*(v34 + 8))(v33, v34);
    __swift_destroy_boxed_opaque_existential_1(v40);
  }

  else
  {
    sub_26A4DBD10(v40, &qword_2803A91B8, &qword_26A8575C0);
    v35 = 0;
  }

  *&a2[v24[10]] = v35;
  sub_26A4EF6D0();
  v36 = v41;
  if (v41)
  {
    v37 = v42;
    __swift_project_boxed_opaque_existential_1(v40, v41);
    v38 = (*(v37 + 8))(v36, v37);
    sub_26A4DBD10(v44, &qword_2803A91B8, &qword_26A8575C0);
    sub_26A4DBD10(v43, &qword_2803A91B8, &qword_26A8575C0);
    sub_26A4DBD10(v46, &qword_2803A91B8, &qword_26A8575C0);
    sub_26A4DBD10(v48, &qword_2803A91B8, &qword_26A8575C0);
    result = __swift_destroy_boxed_opaque_existential_1(v40);
  }

  else
  {
    sub_26A4DBD10(v44, &qword_2803A91B8, &qword_26A8575C0);
    sub_26A4DBD10(v43, &qword_2803A91B8, &qword_26A8575C0);
    sub_26A4DBD10(v46, &qword_2803A91B8, &qword_26A8575C0);
    sub_26A4DBD10(v48, &qword_2803A91B8, &qword_26A8575C0);
    result = sub_26A4DBD10(v40, &qword_2803A91B8, &qword_26A8575C0);
    v38 = 0;
  }

  *&a2[v24[11]] = v38;
  return result;
}

uint64_t sub_26A517CF0@<X0>(uint64_t a2@<X8>)
{
  v3 = type metadata accessor for SummaryItemExpandableView(0) - 8;
  MEMORY[0x28223BE20](v3);
  sub_26A519264();
  v4 = swift_allocObject();
  sub_26A51A21C();
  KeyPath = swift_getKeyPath();
  v6 = swift_getKeyPath();
  sub_26A851048();
  result = swift_getKeyPath();
  *a2 = KeyPath;
  *(a2 + 8) = 0;
  *(a2 + 16) = v6;
  *(a2 + 24) = 0;
  *(a2 + 32) = v8;
  *(a2 + 40) = v9;
  *(a2 + 48) = sub_26A519BD8;
  *(a2 + 56) = v4;
  *(a2 + 64) = result;
  *(a2 + 72) = 0;
  *(a2 + 80) = 1;
  return result;
}

uint64_t sub_26A517EA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v79 = a2;
  v3 = type metadata accessor for SummaryItemExpandableView(0);
  v73 = *(v3 - 1);
  MEMORY[0x28223BE20](v3);
  v75 = type metadata accessor for SummaryItemStandardLayout(0);
  MEMORY[0x28223BE20](v75);
  v5 = &v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v76 = &v72 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ABDA0, &qword_26A859CB0);
  MEMORY[0x28223BE20](v8 - 8);
  v78 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v77 = &v72 - v11;
  v12 = sub_26A84FA78();
  LOBYTE(v93[0]) = 0;
  sub_26A5164D0(a1, v86);
  memcpy(v98, v86, sizeof(v98));
  memcpy(v99, v86, 0xB4uLL);
  sub_26A4EF6D0();
  sub_26A4DBD10(v99, &qword_2803ABDA8, &qword_26A859CB8);
  memcpy(&v96[7], v98, 0xB4uLL);
  v13 = v93[0];
  KeyPath = swift_getKeyPath();
  v86[0] = v12;
  v86[1] = 0;
  LOBYTE(v86[2]) = v13;
  memcpy(&v86[2] + 1, v96, 0xBBuLL);
  v86[26] = KeyPath;
  v86[27] = 1;
  LOBYTE(v86[28]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ABDB0, &qword_26A859CF0);
  sub_26A519C40();
  v74 = sub_26A851248();
  v15 = *(a1 + v3[16]);
  if (v15)
  {
    v16 = swift_getKeyPath();
    sub_26A519264();
    v17 = swift_allocObject();
    sub_26A51A21C();
    v18 = swift_getKeyPath();
    v19 = swift_allocObject();
    *(v19 + 16) = sub_26A51A2F0;
    *(v19 + 24) = v17;
    v20 = sub_26A51A2F4;
    v21 = 1;
  }

  else
  {
    v16 = 0;
    v21 = 0;
    v18 = 0;
    v20 = 0;
    v19 = 0;
  }

  v86[0] = v15;
  v86[1] = v16;
  v86[2] = 0;
  v86[3] = v21;
  v86[4] = v18;
  v86[5] = v20;
  v86[6] = v19;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ABDD8, &qword_26A859D08);
  sub_26A519F4C(&qword_2803ABDE0, &qword_2803ABDD8, &qword_26A859D08, sub_26A519D24);
  v22 = sub_26A851248();
  v23 = MEMORY[0x277CE11C8];
  v95[4] = &protocol witness table for AnyView;
  v95[3] = MEMORY[0x277CE11C8];
  v95[0] = v22;
  sub_26A516918(v93);
  memcpy(v94, v93, sizeof(v94));
  sub_26A51584C(v97);
  v24 = sub_26A64707C();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  sub_26A4DBD10(v97, &qword_2803A91B0, &unk_26A854CA0);
  v31 = sub_26A850248();
  memcpy(v86, v94, 0x139uLL);
  v84[0] = 0;
  v87 = v31;
  v88 = v24;
  v89 = v26;
  v90 = v28;
  v91 = v30;
  v92 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ABE18, &qword_26A859D28);
  sub_26A519E94();
  v32 = sub_26A851248();
  v93[4] = &protocol witness table for AnyView;
  v93[3] = v23;
  v93[0] = v32;
  v85 = 0;
  memset(v84, 0, sizeof(v84));
  v33 = *(a1 + v3[17]);
  if (v33)
  {
    v34 = &protocol witness table for AnyView;
    v35 = MEMORY[0x277CE11C8];
  }

  else
  {
    v35 = 0;
    v34 = 0;
    v83[1] = 0;
    v83[2] = 0;
  }

  v83[0] = v33;
  v83[3] = v35;
  v83[4] = v34;
  v36 = qword_28157E670;

  if (v36 != -1)
  {
    swift_once();
  }

  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3890, &unk_26A856670);
  __swift_project_value_buffer(v37, qword_281588798);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A0, &qword_26A854C60);
  sub_26A4EF6D0();
  sub_26A6AEE74(v86);
  memcpy(v5, v86, 0xBFuLL);
  sub_26A519264();
  v38 = v75;
  v39 = *(v75 + 20);
  *&v5[v39] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8, &qword_26A857040);
  swift_storeEnumTagMultiPayload();
  v40 = &v5[v38[6]];
  *v40 = swift_getKeyPath();
  v40[8] = 0;
  *&v5[v38[7]] = v74;
  sub_26A4EF6D0();
  v41 = v81;
  if (v81)
  {
    v42 = v82;
    __swift_project_boxed_opaque_existential_1(v80, v81);
    v43 = (*(v42 + 8))(v41, v42);
    __swift_destroy_boxed_opaque_existential_1(v80);
  }

  else
  {
    sub_26A4DBD10(v80, &qword_2803A91B8, &qword_26A8575C0);
    v43 = 0;
  }

  v44 = v77;
  *&v5[v38[8]] = v43;
  sub_26A4EF6D0();
  v45 = v81;
  if (v81)
  {
    v46 = v82;
    __swift_project_boxed_opaque_existential_1(v80, v81);
    v47 = (*(v46 + 8))(v45, v46);
    __swift_destroy_boxed_opaque_existential_1(v80);
  }

  else
  {
    sub_26A4DBD10(v80, &qword_2803A91B8, &qword_26A8575C0);
    v47 = 0;
  }

  *&v5[v38[9]] = v47;
  sub_26A4EF6D0();
  v48 = v81;
  if (v81)
  {
    v49 = v82;
    __swift_project_boxed_opaque_existential_1(v80, v81);
    v50 = (*(v49 + 8))(v48, v49);
    __swift_destroy_boxed_opaque_existential_1(v80);
  }

  else
  {
    sub_26A4DBD10(v80, &qword_2803A91B8, &qword_26A8575C0);
    v50 = 0;
  }

  *&v5[v38[10]] = v50;
  sub_26A4EF6D0();
  v51 = v81;
  if (v81)
  {
    v52 = v82;
    __swift_project_boxed_opaque_existential_1(v80, v81);
    v53 = (*(v52 + 8))(v51, v52);
    sub_26A4DBD10(v84, &qword_2803A91B8, &qword_26A8575C0);
    sub_26A4DBD10(v83, &qword_2803A91B8, &qword_26A8575C0);
    sub_26A4DBD10(v93, &qword_2803A91B8, &qword_26A8575C0);
    sub_26A4DBD10(v95, &qword_2803A91B8, &qword_26A8575C0);
    __swift_destroy_boxed_opaque_existential_1(v80);
  }

  else
  {
    sub_26A4DBD10(v84, &qword_2803A91B8, &qword_26A8575C0);
    sub_26A4DBD10(v83, &qword_2803A91B8, &qword_26A8575C0);
    sub_26A4DBD10(v93, &qword_2803A91B8, &qword_26A8575C0);
    sub_26A4DBD10(v95, &qword_2803A91B8, &qword_26A8575C0);
    sub_26A4DBD10(v80, &qword_2803A91B8, &qword_26A8575C0);
    v53 = 0;
  }

  *&v5[v38[11]] = v53;
  v54 = v76;
  v55 = sub_26A51A21C();
  sub_26A58B900(v55, v56, v57, v58, v59, v60, v61, v62, v72, v73, v74);
  sub_26A51A274(v54);
  v63 = sub_26A515D10();
  if (sub_26A61B05C(v63, &unk_287B131A0) && (v64 = (a1 + v3[14]), v65 = *v64, v66 = *(v64 + 1), LOBYTE(v93[0]) = v65, v93[1] = v66, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC190, &qword_26A85A9E0), sub_26A851058(), v84[0] == 1))
  {
    v67 = *(a1 + v3[20]);
    swift_retain_n();
  }

  else
  {
    v67 = 1;
  }

  v68 = v78;
  sub_26A4EF6D0();
  v69 = v79;
  sub_26A4EF6D0();
  v70 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ABE98, &unk_26A859DA0) + 48);
  sub_26A51A2D0(v67);
  sub_26A51A2E0(v67);
  *(v69 + v70) = v67;
  sub_26A4DBD10(v44, &qword_2803ABDA0, &qword_26A859CB0);
  sub_26A51A2E0(v67);
  return sub_26A4DBD10(v68, &qword_2803ABDA0, &qword_26A859CB0);
}

uint64_t SummaryItemExpandableView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for SummaryItemExpandableView(0);
  MEMORY[0x28223BE20](v2 - 8);
  sub_26A518C28(a1);
  v3 = swift_allocObject();
  *(v3 + 16) = sub_26A68CCBC;
  *(v3 + 24) = 0;
  v4 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ABD10, &unk_26A859B08) + 36);
  *(v4 + 16) = swift_getKeyPath();
  *(v4 + 24) = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91D8, &qword_26A8575D0);
  v6 = *(v5 + 40);
  *(v4 + v6) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190, &unk_26A854C50);
  swift_storeEnumTagMultiPayload();
  v7 = v4 + *(v5 + 44);
  *v7 = swift_getKeyPath();
  *(v7 + 8) = 0;
  *v4 = sub_26A4D1F7C;
  *(v4 + 8) = v3;
  sub_26A519264();
  v8 = swift_allocObject();
  OUTLINED_FUNCTION_3_6();
  sub_26A51A21C();
  v9 = sub_26A851448();
  v11 = v10;
  v12 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ABD18, &qword_26A859B40) + 36));
  *v12 = sub_26A8027E0;
  v12[1] = 0;
  v12[2] = v9;
  v12[3] = v11;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_26A5192BC;
  *(v13 + 24) = v8;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ABD20, &qword_26A859B48);
  v15 = (a1 + *(result + 36));
  *v15 = sub_26A519358;
  v15[1] = v13;
  return result;
}

uint64_t sub_26A518C28@<X0>(uint64_t a1@<X8>)
{
  v27[2] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9B38, &unk_26A872400);
  MEMORY[0x28223BE20](v1);
  v3 = v27 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ABD98, &unk_26A859C00);
  MEMORY[0x28223BE20](v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C0, &unk_26A854CB0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v27 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C8, &unk_26A856820);
  MEMORY[0x28223BE20](v8 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = v27 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ABD78, &qword_26A859BE8);
  MEMORY[0x28223BE20](v12);
  v14 = v27 - v13;
  v15 = sub_26A515D10();
  if (sub_26A61B05C(v15, &unk_287B131A0))
  {
    v27[0] = v4;
    v27[1] = v1;
    sub_26A515E64(v11);
    v16 = sub_26A516228(v28);
    MEMORY[0x28223BE20](v16);
    sub_26A4EF6D0();
    v17 = sub_26A84F3A8();
    __swift_storeEnumTagSinglePayload(v7, 1, 1, v17);
    sub_26A4C679C();
    sub_26A4DBD10(v11, &qword_2803A91C8, &unk_26A856820);
    KeyPath = swift_getKeyPath();
    v19 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ABD88, &unk_26A859BF0) + 36)];
    *v19 = KeyPath;
    v19[8] = 1;
    v20 = swift_getKeyPath();
    if (qword_2803A8BF8 != -1)
    {
      swift_once();
    }

    v21 = byte_2803B0441;
    v22 = &v14[*(v12 + 36)];
    *v22 = v20;
    v22[8] = v21;
    v23 = &qword_2803ABD78;
    v24 = &qword_26A859BE8;
    sub_26A4EF6D0();
    swift_storeEnumTagMultiPayload();
    sub_26A519A34();
    sub_26A4DBCC8(qword_28157E8B8, &unk_2803A9B38, &unk_26A872400, &protocol conformance descriptor for ComponentWithAction<A>);
    sub_26A84FDF8();
    v25 = v14;
  }

  else
  {
    sub_26A51737C();
    v23 = &unk_2803A9B38;
    v24 = &unk_26A872400;
    sub_26A4EF6D0();
    swift_storeEnumTagMultiPayload();
    sub_26A519A34();
    sub_26A4DBCC8(qword_28157E8B8, &unk_2803A9B38, &unk_26A872400, &protocol conformance descriptor for ComponentWithAction<A>);
    sub_26A84FDF8();
    v25 = v3;
  }

  return sub_26A4DBD10(v25, v23, v24);
}

uint64_t sub_26A5190C4(uint64_t a1, double a2, double a3)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if ([Strong respondsToSelector_])
    {
      [v6 informHostOfViewResize_];
    }

    else
    {
      v9 = sub_26A851E78();
      LOBYTE(v10) = 2;
      j__OUTLINED_FUNCTION_13_45(v9, 1, "SnippetUI/InteractionDelegateWrapper.swift", 42, 2, 549, "informHostOfViewResize(_:)", 26, v10);
    }

    return swift_unknownObjectRelease();
  }

  else
  {
    v7 = sub_26A851E78();
    LOBYTE(v10) = 2;
    return j__OUTLINED_FUNCTION_9_61(v7, 1, "SnippetUI/InteractionDelegateWrapper.swift", 42, 2, 545, "informHostOfViewResize(_:)", 26, v10);
  }
}

uint64_t sub_26A5191CC()
{
  OUTLINED_FUNCTION_6_8();
  v0 = EnvironmentValues.hasComponentBelow.getter();
  return OUTLINED_FUNCTION_5_7(v0);
}

uint64_t sub_26A519218()
{
  OUTLINED_FUNCTION_6_8();
  v0 = EnvironmentValues.isSmartDialog.getter();
  return OUTLINED_FUNCTION_5_7(v0);
}

uint64_t sub_26A519264()
{
  OUTLINED_FUNCTION_145();
  v2(0);
  OUTLINED_FUNCTION_46();
  (*(v3 + 16))(v0, v1);
  return v0;
}

uint64_t sub_26A5192BC(double a1, double a2)
{
  v4 = *(type metadata accessor for SummaryItemExpandableView(0) - 8);
  v5 = OUTLINED_FUNCTION_37_1(*(v4 + 80));

  return sub_26A5190C4(v5, a1, a2);
}

uint64_t sub_26A5193C8(uint64_t a1)
{
  sub_26A51961C(319, qword_28157E830, type metadata accessor for SummaryItemConstants, type metadata accessor for EnvironmentConstant);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_26A519680(319, &qword_2803A9238, MEMORY[0x277CDF310], type metadata accessor for EnvironmentConstant);
    v2 = v4;
    if (v5 <= 0x3F)
    {
      sub_26A519680(319, &qword_2803AB788, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
      v2 = v6;
      if (v7 <= 0x3F)
      {
        sub_26A51961C(319, &qword_2803A9218, type metadata accessor for VRXIdiom, MEMORY[0x277CDF468]);
        if (v9 > 0x3F)
        {
          return v8;
        }

        sub_26A4D27F4(319);
        if (v10 > 0x3F)
        {
          return v8;
        }

        else
        {
          sub_26A519680(319, &qword_2803B3840, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
          v2 = v11;
          if (v12 <= 0x3F)
          {
            sub_26A519680(319, &qword_2803A9240, MEMORY[0x277CE11C8], MEMORY[0x277D83D88]);
            v2 = v13;
            if (v14 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return v2;
}

void sub_26A51961C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_26A519680(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_26A5196D0()
{
  result = qword_2803ABD38;
  if (!qword_2803ABD38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803ABD20, &qword_26A859B48);
    sub_26A519788();
    sub_26A4DBCC8(&qword_2803A9C20, &qword_2803A9C28, &qword_26A8640E0, MEMORY[0x277CE07C8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803ABD38);
  }

  return result;
}

unint64_t sub_26A519788()
{
  result = qword_2803ABD40;
  if (!qword_2803ABD40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803ABD18, &qword_26A859B40);
    sub_26A519840();
    sub_26A4DBCC8(&qword_2803A9C10, &qword_2803A9C18, &unk_26A855A50, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803ABD40);
  }

  return result;
}

unint64_t sub_26A519840()
{
  result = qword_2803ABD48;
  if (!qword_2803ABD48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803ABD10, &unk_26A859B08);
    sub_26A5198F8();
    sub_26A4DBCC8(qword_28157DD90, &qword_2803A91D8, &qword_26A8575D0, &unk_26A869CC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803ABD48);
  }

  return result;
}

unint64_t sub_26A5198F8()
{
  result = qword_2803ABD50;
  if (!qword_2803ABD50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803ABD58, &qword_26A859BD8);
    sub_26A51997C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803ABD50);
  }

  return result;
}

unint64_t sub_26A51997C()
{
  result = qword_2803ABD60;
  if (!qword_2803ABD60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803ABD68, &qword_26A859BE0);
    sub_26A519A34();
    sub_26A4DBCC8(qword_28157E8B8, &unk_2803A9B38, &unk_26A872400, &protocol conformance descriptor for ComponentWithAction<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803ABD60);
  }

  return result;
}

unint64_t sub_26A519A34()
{
  result = qword_2803ABD70;
  if (!qword_2803ABD70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803ABD78, &qword_26A859BE8);
    sub_26A519AEC();
    sub_26A4DBCC8(&qword_28157FB50, &unk_2803B31B0, &unk_26A858ED0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803ABD70);
  }

  return result;
}

unint64_t sub_26A519AEC()
{
  result = qword_2803ABD80;
  if (!qword_2803ABD80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803ABD88, &unk_26A859BF0);
    sub_26A4DBCC8(&qword_2803ABD90, &qword_2803AA210, &qword_26A855DE8, &protocol conformance descriptor for ComponentWithAction<A>);
    sub_26A4DBCC8(&qword_28157FB50, &unk_2803B31B0, &unk_26A858ED0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803ABD80);
  }

  return result;
}

uint64_t sub_26A519BD8@<X0>(uint64_t a1@<X8>)
{
  v2 = *(type metadata accessor for SummaryItemExpandableView(0) - 8);
  v3 = OUTLINED_FUNCTION_37_1(*(v2 + 80));

  return sub_26A517EA0(v3, a1);
}

unint64_t sub_26A519C40()
{
  result = qword_2803ABDB8;
  if (!qword_2803ABDB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803ABDB0, &qword_26A859CF0);
    sub_26A4DBCC8(&qword_2803ABDC0, &qword_2803ABDC8, &qword_26A859CF8, MEMORY[0x277CE1138]);
    sub_26A4DBCC8(&qword_28157FB38, &qword_2803ABDD0, &qword_26A859D00, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803ABDB8);
  }

  return result;
}

unint64_t sub_26A519D24()
{
  result = qword_2803ABDE8;
  if (!qword_2803ABDE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803ABDF0, &qword_26A859D10);
    sub_26A519DDC();
    sub_26A4DBCC8(&qword_2803ABE08, &qword_2803ABE10, &qword_26A859D20, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803ABDE8);
  }

  return result;
}

unint64_t sub_26A519DDC()
{
  result = qword_2803ABDF8;
  if (!qword_2803ABDF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803ABE00, &qword_26A859D18);
    sub_26A4DBCC8(&qword_28157FB38, &qword_2803ABDD0, &qword_26A859D00, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803ABDF8);
  }

  return result;
}

unint64_t sub_26A519E94()
{
  result = qword_2803ABE20;
  if (!qword_2803ABE20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803ABE18, &qword_26A859D28);
    sub_26A519F4C(&qword_2803ABE28, &qword_2803ABE30, &qword_26A859D30, sub_26A519FC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803ABE20);
  }

  return result;
}

uint64_t sub_26A519F4C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_26A519FC8()
{
  result = qword_2803ABE38;
  if (!qword_2803ABE38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803ABE40, &qword_26A859D38);
    sub_26A4DBCC8(&qword_2803ABE48, &qword_2803ABE50, &qword_26A859D40, MEMORY[0x277CDD828]);
    sub_26A519F4C(&qword_2803ABE58, &qword_2803ABE60, &qword_26A859D48, sub_26A51A0AC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803ABE38);
  }

  return result;
}

unint64_t sub_26A51A0AC()
{
  result = qword_2803ABE68;
  if (!qword_2803ABE68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803ABE70, &qword_26A859D50);
    sub_26A51A164();
    sub_26A4DBCC8(&qword_28157FB50, &unk_2803B31B0, &unk_26A858ED0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803ABE68);
  }

  return result;
}

unint64_t sub_26A51A164()
{
  result = qword_2803ABE78;
  if (!qword_2803ABE78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803ABE80, &qword_26A859D58);
    sub_26A4DBCC8(&qword_2803ABE88, &qword_2803ABE90, &qword_26A859D60, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803ABE78);
  }

  return result;
}

uint64_t sub_26A51A21C()
{
  OUTLINED_FUNCTION_145();
  v2(0);
  OUTLINED_FUNCTION_46();
  (*(v3 + 32))(v0, v1);
  return v0;
}

uint64_t sub_26A51A274(uint64_t a1)
{
  v2 = type metadata accessor for SummaryItemStandardLayout(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26A51A2D0(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_26A51A2E0(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_26A51A308(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_26A51A354(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_26A51A3E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C8, &unk_26A856820);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_26Tm()
{
  v1 = type metadata accessor for SummaryItemExpandableView(0);
  v19 = *(*(v1 - 1) + 80);
  v18 = (v19 + 16) & ~v19;
  v2 = v0 + v18;
  if (*(v0 + v18 + 9))
  {
    if ((*(v2 + 8) & 1) == 0)
    {
      MEMORY[0x26D665710](v0 + v18);
    }
  }

  else
  {
  }

  MEMORY[0x26D665710](v2 + 16);
  v3 = v2 + v1[5];
  sub_26A49035C(*v3, *(v3 + 8));
  sub_26A49035C(*(v3 + 16), *(v3 + 24));
  sub_26A49035C(*(v3 + 32), *(v3 + 40));
  sub_26A49035C(*(v3 + 48), *(v3 + 56));
  sub_26A49035C(*(v3 + 64), *(v3 + 72));
  sub_26A49035C(*(v3 + 80), *(v3 + 88));
  sub_26A49035C(*(v3 + 96), *(v3 + 104));
  sub_26A49035C(*(v3 + 112), *(v3 + 120));
  sub_26A49035C(*(v3 + 128), *(v3 + 136));
  sub_26A49035C(*(v3 + 144), *(v3 + 152));
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A0, &qword_26A854C60);
  v5 = v3 + *(v4 + 28);
  v6 = type metadata accessor for SummaryItemConstants(0);
  v7 = *(v6 + 36);
  v8 = sub_26A84B1D8();
  OUTLINED_FUNCTION_46();
  v10 = *(v9 + 8);
  v10(v5 + v7, v8);
  v10(v5 + *(v6 + 40), v8);
  v11 = v3 + *(v4 + 32);

  v12 = v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3890, &unk_26A856670) + 36);
  v10(v12 + *(v6 + 36), v8);
  v10(v12 + *(v6 + 40), v8);
  OUTLINED_FUNCTION_1_7(v1[6]);

  OUTLINED_FUNCTION_1_7(v1[7]);

  OUTLINED_FUNCTION_1_7(v1[8]);
  OUTLINED_FUNCTION_7_8(v1[9]);
  OUTLINED_FUNCTION_7_8(v1[10]);
  OUTLINED_FUNCTION_7_8(v1[11]);
  v13 = (v2 + v1[12]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190, &unk_26A854C50);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
LABEL_10:

    goto LABEL_11;
  }

  v14 = type metadata accessor for ActionType(0);
  if (__swift_getEnumTagSinglePayload(v13, 1, v14))
  {
    goto LABEL_11;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
  }

  else
  {
    if (EnumCaseMultiPayload != 1)
    {
      if (EnumCaseMultiPayload)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    sub_26A84BAB8();
    OUTLINED_FUNCTION_46();
    (*(v17 + 8))(v13);
  }

LABEL_11:
  OUTLINED_FUNCTION_7_8(v1[13]);

  return swift_deallocObject();
}

uint64_t sub_26A51A83C()
{
  v0 = *(type metadata accessor for SummaryItemExpandableView(0) - 8);
  v1 = OUTLINED_FUNCTION_37_1(*(v0 + 80));

  return sub_26A5168A4(v1);
}

uint64_t OUTLINED_FUNCTION_1_7@<X0>(uint64_t a1@<X8>)
{
  v2 = v1 + a1;
  sub_26A49035C(*(v1 + a1), *(v1 + a1 + 8));
  sub_26A49035C(*(v2 + 16), *(v2 + 24));
  sub_26A49035C(*(v2 + 32), *(v2 + 40));
  sub_26A49035C(*(v2 + 48), *(v2 + 56));
  sub_26A49035C(*(v2 + 64), *(v2 + 72));
  sub_26A49035C(*(v2 + 80), *(v2 + 88));
  sub_26A49035C(*(v2 + 96), *(v2 + 104));
  sub_26A49035C(*(v2 + 112), *(v2 + 120));
  sub_26A49035C(*(v2 + 128), *(v2 + 136));
  v3 = *(v2 + 144);
  v4 = *(v2 + 152);

  return sub_26A49035C(v3, v4);
}

uint64_t OUTLINED_FUNCTION_7_8@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + a1;
  v4 = *v3;
  v5 = *(v3 + 8);

  return sub_26A49035C(v4, v5);
}

uint64_t OUTLINED_FUNCTION_11_5(uint64_t a1)
{

  return sub_26A4DBD10(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_13_5()
{

  return __swift_destroy_boxed_opaque_existential_1(v0 + 112);
}

uint64_t sub_26A51A9FC(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 65281 <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if (a2 + 65281 < 0xFF0000)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = *(a1 + 2);
      if (!*(a1 + 2))
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 16)) - 65282;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_26A51AA88(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 2) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 2) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_26A51AB7C@<X0>(uint64_t a1@<X0>, __int16 a2@<W1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ABEE8, &qword_26A859F18);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v20[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ABEF0, &qword_26A859F20);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v10);
  v12 = &v20[-v11];
  *v8 = sub_26A84FA78();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ABEF8, &unk_26A859F28);
  sub_26A51ADFC(a2 & 0x101, a1, &v8[*(v13 + 44)]);
  if (a2)
  {
    if (qword_2803A9100 != -1)
    {
      swift_once();
    }

    v14 = qword_2803D2FD0;
  }

  else
  {
    if (qword_2803A90F8 != -1)
    {
      swift_once();
    }

    v14 = qword_2803D2F80;
  }

  sub_26A4DBD68(v14, v20, &qword_2803AA880, &unk_26A8567F0);
  v15 = &v12[*(v9 + 36)];
  sub_26A4DBD68(v20, (v15 + 24), &qword_2803AA880, &unk_26A8567F0);
  sub_26A6AEE74(v21);
  sub_26A4DBD10(v20, &qword_2803AA880, &unk_26A8567F0);
  memcpy(v15, v21, 0xBFuLL);
  v15[34] = sub_26A80A810;
  v15[35] = 0;
  sub_26A4DBDB4(v8, v12, &qword_2803ABEE8, &qword_26A859F18);
  v16 = sub_26A850E78();
  KeyPath = swift_getKeyPath();
  sub_26A4DBDB4(v12, a3, &qword_2803ABEF0, &qword_26A859F20);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ABF00, &qword_26A859F68);
  v19 = (a3 + *(result + 36));
  *v19 = KeyPath;
  v19[1] = v16;
  return result;
}

uint64_t sub_26A51ADFC@<X0>(__int16 a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v30 = a3;
  v31 = a2;
  v4 = sub_26A84FF88();
  v29 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v28 - v8;
  v10 = sub_26A84FF68();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ABF08, &qword_26A859F70);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v28 - v18;
  if ((a1 & 0x100) != 0)
  {
    sub_26A84FF78();
    (*(v11 + 32))(v19, v13, v10);
    v20 = 0;
  }

  else
  {
    v20 = 1;
  }

  __swift_storeEnumTagSinglePayload(v19, v20, 1, v10);
  sub_26A84FF98();
  sub_26A4DBD68(v19, v16, &qword_2803ABF08, &qword_26A859F70);
  v21 = v29;
  v22 = *(v29 + 16);
  v22(v6, v9, v4);
  v23 = v6;
  v24 = v30;
  sub_26A4DBD68(v16, v30, &qword_2803ABF08, &qword_26A859F70);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ABF10, &qword_26A859F78);
  v22((v24 + *(v25 + 48)), v23, v4);
  v26 = *(v21 + 8);
  v26(v9, v4);
  sub_26A4DBD10(v19, &qword_2803ABF08, &qword_26A859F70);
  v26(v23, v4);
  return sub_26A4DBD10(v16, &qword_2803ABF08, &qword_26A859F70);
}

uint64_t sub_26A51B104@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (v2[1])
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  return sub_26A51AB7C(a1, v3 | *v2, a2);
}

uint64_t sub_26A51B120@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26A84F768();
  *a1 = result;
  return result;
}

_BYTE *sub_26A51B184(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_26A51B25C()
{
  result = qword_2803ABF18;
  if (!qword_2803ABF18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803ABF00, &qword_26A859F68);
    sub_26A51B314();
    sub_26A4DBCC8(&qword_2803ABF30, &qword_2803ABF38, &unk_26A873D40, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803ABF18);
  }

  return result;
}

unint64_t sub_26A51B314()
{
  result = qword_2803ABF20;
  if (!qword_2803ABF20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803ABEF0, &qword_26A859F20);
    sub_26A4DBCC8(&qword_2803ABF28, &qword_2803ABEE8, &qword_26A859F18, MEMORY[0x277CE1138]);
    sub_26A4DBCC8(&qword_2803A99A8, &qword_2803A99B0, &qword_26A8558D0, &unk_26A85C748);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803ABF20);
  }

  return result;
}

unint64_t sub_26A51B3FC()
{
  result = qword_2803ABF40;
  if (!qword_2803ABF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803ABF40);
  }

  return result;
}

unint64_t sub_26A51B454()
{
  result = qword_2803ABF48;
  if (!qword_2803ABF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803ABF48);
  }

  return result;
}

uint64_t sub_26A51B4D0()
{
  v1 = sub_26A84F988();
  OUTLINED_FUNCTION_15();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_41();
  v7 = v6 - v5;
  v16 = *(v0 + 48);
  v8 = *(v0 + 40);
  v15 = v8;
  if ((v16 & 1) == 0)
  {

    sub_26A851EA8();
    v9 = sub_26A8501F8();
    OUTLINED_FUNCTION_55(v9, &dword_26A48D000, v10, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", v11, v12, MEMORY[0x277D84F90]);

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A4DBD10(&v15, &qword_2803ABF98, &unk_26A85A380);
    (*(v3 + 8))(v7, v1);
    return v14;
  }

  return v8;
}

uint64_t sub_26A51B608()
{
  v1 = sub_26A84F988();
  OUTLINED_FUNCTION_15();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_41();
  v7 = v6 - v5;
  v16 = *(v0 + 64);
  v8 = *(v0 + 56);
  v15 = v8;
  if (v16 != 1)
  {

    sub_26A851EA8();
    v9 = sub_26A8501F8();
    OUTLINED_FUNCTION_55(v9, &dword_26A48D000, v10, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", v11, v12, MEMORY[0x277D84F90]);

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A4DBD10(&v15, &qword_2803ABFA0, &unk_26A85F090);
    (*(v3 + 8))(v7, v1);
    LOBYTE(v8) = v14;
  }

  return v8 & 1;
}

void sub_26A51B744(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v5 = swift_getKeyPath();
  v6 = swift_getKeyPath();
  v7 = swift_getKeyPath();
  v8 = sub_26A73670C();
  if (v8)
  {
    v9 = v8;
    v29 = MEMORY[0x277D84F90];
    sub_26A7DCD00(0, v8 & ~(v8 >> 63), 0);
    if ((v9 & 0x8000000000000000) == 0)
    {
      v25 = KeyPath;
      v26 = a2;
      v10 = 0;
      v11 = v29;
      while (v10 < v9)
      {
        if (__OFADD__(v10, 1))
        {
          goto LABEL_18;
        }

        if ((a1 & 0xC000000000000001) != 0)
        {
          v12 = MEMORY[0x26D6644E0](v10, a1);
        }

        else
        {
          if (v10 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_19;
          }

          v12 = *(a1 + 8 * v10 + 32);
        }

        v13 = v12;
        v27 = v12;
        sub_26A51B958(&v27, v28);

        v29 = v11;
        v15 = *(v11 + 16);
        v14 = *(v11 + 24);
        if (v15 >= v14 >> 1)
        {
          sub_26A7DCD00((v14 > 1), v15 + 1, 1);
          v11 = v29;
        }

        *(v11 + 16) = v15 + 1;
        v16 = (v11 + (v15 << 6));
        v17 = v28[0];
        v18 = v28[1];
        v19 = v28[3];
        v16[4] = v28[2];
        v16[5] = v19;
        v16[2] = v17;
        v16[3] = v18;
        if (v10 + 1 == v9)
        {

          KeyPath = v25;
          a2 = v26;
          goto LABEL_16;
        }

        ++v10;
      }

      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
    }

    __break(1u);
  }

  else
  {

    v11 = MEMORY[0x277D84F90];
LABEL_16:
    sub_26A56B648(v11, v20, v21, v22);
    v24 = v23;

    LOBYTE(v28[0]) = 0;
    LOBYTE(v29) = 0;
    LOBYTE(v27) = 0;
    *a2 = v24;
    *(a2 + 8) = KeyPath;
    *(a2 + 16) = 0;
    *(a2 + 24) = v5;
    *(a2 + 32) = 0;
    *(a2 + 40) = v6;
    *(a2 + 48) = 0;
    *(a2 + 56) = v7;
    *(a2 + 64) = 0;
  }
}

uint64_t sub_26A51B958@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_26A734BFC(0, v19);
  v4 = v19[0];

  v5 = sub_26A7364C8(v3);
  if (v5)
  {
    if (sub_26A73670C())
    {
      sub_26A736710();
      if ((v5 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x26D6644E0](0, v5);
      }

      else
      {
        v6 = *(v5 + 32);
      }

      v7 = v6;

      v8 = [v7 line_limit];

      if (v8)
      {
        v5 = [v8 integerValue];

        v9 = 0;
        goto LABEL_10;
      }
    }

    else
    {
    }

    v5 = 0;
  }

  v9 = 1;
LABEL_10:
  v10 = sub_26A7364C8(v3);
  if (!v10)
  {
LABEL_17:
    v14 = 0;
    goto LABEL_18;
  }

  if (!sub_26A73670C())
  {

    v10 = 0;
    goto LABEL_17;
  }

  sub_26A736710();
  if ((v10 & 0xC000000000000001) != 0)
  {
    v11 = MEMORY[0x26D6644E0](0, v10);
  }

  else
  {
    v11 = *(v10 + 32);
  }

  v12 = v11;

  v10 = [v12 show_more_on_tap];

  if (!v10)
  {
    goto LABEL_17;
  }

  v10 = sub_26A736538(v10);
  v14 = v13;
LABEL_18:
  v15 = v19[13];
  v16 = v19[14];

  v17 = v3;
  result = sub_26A51CE58(v19);
  v20 = v9;
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v9;
  *(a2 + 24) = v10;
  *(a2 + 32) = v14;
  *(a2 + 40) = v15;
  *(a2 + 48) = v16;
  *(a2 + 56) = v17;
  return result;
}

uint64_t sub_26A51BB44@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v71 = a1;
  v3 = 1769105747;
  sub_26A84F988();
  OUTLINED_FUNCTION_15();
  v65 = v5;
  v66 = v4;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_41();
  v8 = v7 - v6;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ABF50, &qword_26A85A320);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v9);
  v11 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v67 = &v65 - v13;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ABF58, &qword_26A85A328);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v14);
  v16 = &v65 - v15;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ABF60, &qword_26A85A330);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v17);
  v19 = &v65 - v18;
  v20 = sub_26A51B4D0();
  if (sub_26A61B05C(v20, &unk_287B131A0))
  {
    sub_26A4D7E10();
    v22 = 0xE400000000000000;
    v23 = 1;
    v24 = sub_26A63CD18(v21);
    v26 = 1769105747;
    switch(v24)
    {
      case 1:
        goto LABEL_6;
      case 2:
        v26 = 0xD000000000000010;
        v22 = 0x800000026A88A230;
        goto LABEL_6;
      case 3:
        v26 = 0x6153656C69626F4DLL;
        v22 = 0xEC00000069726166;
LABEL_6:
        v28 = OUTLINED_FUNCTION_6_9(v26, v22);

        if ((v28 & 1) == 0)
        {
          goto LABEL_8;
        }

        v27 = 1;
        break;
      case 4:
LABEL_8:
        v27 = 0;
        switch(sub_26A63CD18(v25))
        {
          case 3u:
            goto LABEL_10;
          case 4u:
            goto LABEL_11;
          default:
            v23 = sub_26A852598();
            goto LABEL_10;
        }

      default:
LABEL_10:

        v27 = v23;
        break;
    }
  }

  else
  {
    v27 = 0;
  }

LABEL_11:
  sub_26A4D7E10();
  v30 = 0xE400000000000000;
  v31 = 0;
  switch(sub_26A63CD18(v29))
  {
    case 1u:
      goto LABEL_15;
    case 2u:
      v3 = 0xD000000000000010;
      v30 = 0x800000026A88A230;
      goto LABEL_15;
    case 3u:
      v3 = 0x6153656C69626F4DLL;
      v30 = 0xEC00000069726166;
LABEL_15:
      v32 = OUTLINED_FUNCTION_6_9(v3, v30);

      v31 = 0;
      if (v32)
      {
        goto LABEL_16;
      }

      goto LABEL_17;
    case 4u:
      goto LABEL_17;
    default:

LABEL_16:
      v31 = sub_26A51B608();
LABEL_17:
      if (v27)
      {
        *v19 = sub_26A84FA38();
        *(v19 + 1) = 0;
        v19[16] = 0;
        v67 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ABF90, &qword_26A85A378) + 44);
        v78 = *v2;
        v73 = v78;
        swift_getKeyPath();
        v81 = v2[1];
        v82 = *(v2 + 16);
        v79 = v2[3];
        v80 = *(v2 + 32);
        v76 = v2[5];
        v77 = *(v2 + 48);
        v75 = *(v2 + 64);
        v74 = v2[7];
        v33 = swift_allocObject();
        *(v33 + 16) = v31 & 1;
        memcpy((v33 + 24), v2, 0x41uLL);
        v34 = swift_allocObject();
        *(v34 + 16) = sub_26A51D098;
        *(v34 + 24) = v33;

        sub_26A51D0F8(&v78, v72, &qword_2803ABF80, &qword_26A85A370);
        sub_26A51D0F8(&v81, v72, &qword_2803ABF70, &qword_26A85A340);
        sub_26A51D0F8(&v79, v72, &qword_2803ABF68, &qword_26A85A338);
        sub_26A51D0F8(&v76, v72, &qword_2803ABF98, &unk_26A85A380);
        sub_26A51D0F8(&v74, v72, &qword_2803ABFA0, &unk_26A85F090);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ABF80, &qword_26A85A370);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ABFA8, &qword_26A85A390);
        OUTLINED_FUNCTION_1_8();
        sub_26A4DBCC8(v35, &qword_2803ABF80, &qword_26A85A370, v36);
        sub_26A4DBCC8(&qword_2803ABFB0, &qword_2803ABFA8, &qword_26A85A390, MEMORY[0x277CE14C0]);
        sub_26A8512F8();
        sub_26A51D0F8(v19, v16, &qword_2803ABF60, &qword_26A85A330);
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_37();
        sub_26A4DBCC8(v37, &qword_2803ABF60, &qword_26A85A330, v38);
        OUTLINED_FUNCTION_2_7();
        sub_26A4DBCC8(v39, v40, v41, v42);
        OUTLINED_FUNCTION_8_7();
        sub_26A84FDF8();
        v43 = v19;
        v44 = &qword_2803ABF60;
        v45 = &qword_26A85A330;
      }

      else
      {
        v82 = *(v2 + 32);
        v46 = v2[3];
        v81 = v46;
        if (v82 != 1)
        {

          sub_26A851EA8();
          v47 = sub_26A8501F8();
          OUTLINED_FUNCTION_55(v47, &dword_26A48D000, v48, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", v49, v50, MEMORY[0x277D84F90]);

          sub_26A84F978();
          swift_getAtKeyPath();
          sub_26A4DBD10(&v81, &qword_2803ABF68, &qword_26A85A338);
          (*(v65 + 8))(v8, v66);
          LOBYTE(v46) = v79;
        }

        if (v46)
        {
          if (v46 == 1)
          {
            v51 = sub_26A84FBF8();
          }

          else
          {
            v51 = sub_26A84FC18();
          }
        }

        else
        {
          v51 = sub_26A84FC08();
        }

        v52 = v51;
        v80 = *(v2 + 16);
        v53 = v2[1];
        v79 = v53;
        if ((v80 & 1) == 0)
        {

          sub_26A851EA8();
          v54 = sub_26A8501F8();
          sub_26A84EA78();

          sub_26A84F978();
          swift_getAtKeyPath();
          sub_26A4DBD10(&v79, &qword_2803ABF70, &qword_26A85A340);
          (*(v65 + 8))(v8, v66);
          v53 = v76;
        }

        *v11 = v52;
        *(v11 + 1) = v53;
        v11[16] = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ABF78, &qword_26A85A348);
        v76 = *v2;
        swift_getKeyPath();

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ABF80, &qword_26A85A370);
        OUTLINED_FUNCTION_1_8();
        sub_26A4DBCC8(v55, &qword_2803ABF80, &qword_26A85A370, v56);
        sub_26A4EC4B4();
        sub_26A8512F8();
        v57 = v67;
        sub_26A51D028(v11, v67);
        sub_26A51D0F8(v57, v16, &qword_2803ABF50, &qword_26A85A320);
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_37();
        sub_26A4DBCC8(v58, v59, v60, v61);
        OUTLINED_FUNCTION_2_7();
        sub_26A4DBCC8(v62, &qword_2803ABF50, &qword_26A85A320, v63);
        OUTLINED_FUNCTION_8_7();
        sub_26A84FDF8();
        v43 = v57;
        v44 = &qword_2803ABF50;
        v45 = &qword_26A85A320;
      }

      return sub_26A4DBD10(v43, v44, v45);
  }
}

uint64_t sub_26A51C4C0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  if (a3)
  {
    sub_26A734BFC(1, v63);
    v6 = v63[0];

    sub_26A51CE58(v63);
  }

  else
  {
    v6 = *a2;
  }

  v7 = a2[5];
  v8 = a2[6];
  v9 = qword_2803A8BD0;

  if (v9 != -1)
  {
    swift_once();
  }

  v10 = xmmword_2803B0080;
  v11 = byte_2803B0090;
  v12 = qword_2803B0098;
  sub_26A4EF6C0(xmmword_2803B0080, *(&xmmword_2803B0080 + 1), byte_2803B0090);

  sub_26A7D193C(v6, v10, *(&v10 + 1), v11, v12, v7, v8, __src);
  memcpy(__dst, __src, sizeof(__dst));
  v66 = a2[1];
  v67 = *(a2 + 16);
  v65 = *(a2 + 3);
  KeyPath = swift_getKeyPath();
  v61 = 0;
  v32 = swift_getKeyPath();
  v59 = 0;
  v31 = swift_getKeyPath();
  v57 = 0;
  if (sub_26A7D18DC() < 1)
  {
    sub_26A51D0F8(&v65, v35, &qword_2803ABFB8, &qword_26A85A410);
    sub_26A4F5680(__src, v35);
    sub_26A7D1500();
    v35[0] = v18;
    sub_26A4F5A04();
    v17 = sub_26A851248();
  }

  else
  {
    v14 = swift_getKeyPath();
    v35[6] = swift_getKeyPath();
    BYTE1(v35[7]) = 0;
    swift_unknownObjectWeakInit();
    v15 = objc_allocWithZone(type metadata accessor for PopOverManager(0));
    sub_26A51D0F8(&v65, &v36, &qword_2803ABFB8, &qword_26A85A410);
    sub_26A4F5680(__src, &v36);
    [v15 init];
    v35[0] = swift_getKeyPath();
    LOBYTE(v35[1]) = 0;
    v35[2] = swift_getKeyPath();
    LOBYTE(v35[3]) = 0;
    v35[4] = v14;
    LOWORD(v35[5]) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ABFC0, &qword_26A85A4C0);
    swift_allocObject();
    v35[9] = sub_26A84EBA8();
    memcpy(&v35[10], __src, 0x78uLL);
    sub_26A51D158();
    v35[25] = sub_26A84F258();
    v35[26] = v16;
    sub_26A4F56DC(v35, &v36);
    sub_26A51D1B0();
    v17 = sub_26A851248();
    sub_26A4F5E34(v35);
  }

  memcpy(&v55[7], __dst, 0x78uLL);
  *&v54[7] = v65;
  v19 = v61;
  v20 = v59;
  v21 = v57;
  v22 = *(*a4 + 16);
  if (v22 < 2 || v22 - 1 == a1)
  {
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
  }

  else
  {
    if (qword_2803A8BD8 != -1)
    {
      swift_once();
    }

    v25 = *(&xmmword_2803B00A0 + 1);
    v24 = xmmword_2803B00A0;
    v26 = byte_2803B00B0;
    v27 = qword_2803B00B8;
    sub_26A4EF6C0(xmmword_2803B00A0, *(&xmmword_2803B00A0 + 1), byte_2803B00B0);

    sub_26A4EF6C0(v24, v25, v26);
  }

  *&v34[0] = KeyPath;
  BYTE8(v34[0]) = v19;
  *(v34 + 9) = *v60;
  HIDWORD(v34[0]) = *&v60[3];
  *&v34[1] = v32;
  BYTE8(v34[1]) = v20;
  *(&v34[1] + 9) = *v58;
  HIDWORD(v34[1]) = *&v58[3];
  *&v34[2] = v31;
  BYTE8(v34[2]) = v21;
  HIDWORD(v34[2]) = *&v56[3];
  *(&v34[2] + 9) = *v56;
  memset(&v34[3], 0, 32);
  *&v34[5] = v17;
  BYTE8(v34[5]) = 1;
  memcpy(&v34[5] + 9, v55, 0x7FuLL);
  *(&v34[13] + 1) = v66;
  LOBYTE(v34[14]) = v67;
  *(&v34[14] + 1) = *v54;
  *&v34[15] = *&v54[15];
  WORD4(v34[15]) = 0;
  memcpy(v35, v34, 0xFAuLL);
  sub_26A4EC458(v34, &v36);
  sub_26A505318(v24, v25, v26, v27);
  sub_26A506720(v24, v25, v26, v27);
  memcpy(a5, v35, 0x100uLL);
  a5[32] = v24;
  a5[33] = v25;
  a5[34] = v26;
  a5[35] = v27;
  sub_26A506720(v24, v25, v26, v27);
  v36 = KeyPath;
  v37 = v19;
  *v38 = *v60;
  *&v38[3] = *&v60[3];
  v39 = v32;
  v40 = v20;
  *v41 = *v58;
  *&v41[3] = *&v58[3];
  v42 = v31;
  v43 = v21;
  *v44 = *v56;
  *&v44[3] = *&v56[3];
  v46 = 0u;
  v45 = 0u;
  v47 = v17;
  v48 = 1;
  memcpy(v49, v55, sizeof(v49));
  v50 = v66;
  v51 = v67;
  *v52 = *v54;
  *&v52[15] = *&v54[15];
  v53 = 0;
  return sub_26A4EC508(&v36);
}

double sub_26A51CAA0@<D0>(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = a1[5];
  v6 = a1[6];
  v7 = qword_2803A8BD0;

  if (v7 != -1)
  {
    swift_once();
  }

  v8 = xmmword_2803B0080;
  v9 = byte_2803B0090;
  v10 = qword_2803B0098;
  sub_26A4EF6C0(xmmword_2803B0080, *(&xmmword_2803B0080 + 1), byte_2803B0090);

  sub_26A7D193C(v4, v8, *(&v8 + 1), v9, v10, v5, v6, __src);
  memcpy(__dst, __src, sizeof(__dst));
  v43 = a1[1];
  v44 = *(a1 + 16);
  v42 = *(a1 + 3);
  KeyPath = swift_getKeyPath();
  v40 = 0;
  v12 = swift_getKeyPath();
  v39 = 0;
  v13 = swift_getKeyPath();
  v38 = 0;
  if (sub_26A7D18DC() < 1)
  {
    sub_26A51D0F8(&v42, &v24, &qword_2803ABFB8, &qword_26A85A410);
    sub_26A4F5680(__src, &v24);
    sub_26A7D1500();
    v24 = v18;
    sub_26A4F5A04();
    v17 = sub_26A851248();
  }

  else
  {
    v14 = swift_getKeyPath();
    v30 = swift_getKeyPath();
    v31 = 0;
    swift_unknownObjectWeakInit();
    v15 = objc_allocWithZone(type metadata accessor for PopOverManager(0));
    sub_26A51D0F8(&v42, v23, &qword_2803ABFB8, &qword_26A85A410);
    sub_26A4F5680(__src, v23);
    [v15 init];
    v24 = swift_getKeyPath();
    v25 = 0;
    v26 = swift_getKeyPath();
    v27 = 0;
    v28 = v14;
    v29 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ABFC0, &qword_26A85A4C0);
    swift_allocObject();
    v32 = sub_26A84EBA8();
    memcpy(v33, __src, sizeof(v33));
    sub_26A51D158();
    v34 = sub_26A84F258();
    v35 = v16;
    sub_26A4F56DC(&v24, v23);
    sub_26A51D1B0();
    v17 = sub_26A851248();
    sub_26A4F5E34(&v24);
  }

  memcpy(&v37[7], __dst, 0x78uLL);
  *(v36 + 7) = v42;
  v19 = v40;
  v20 = v39;
  v21 = v38;
  *a2 = KeyPath;
  *(a2 + 8) = v19;
  *(a2 + 16) = v12;
  *(a2 + 24) = v20;
  *(a2 + 32) = v13;
  *(a2 + 40) = v21;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 80) = v17;
  *(a2 + 88) = 1;
  memcpy((a2 + 89), v37, 0x7FuLL);
  *(a2 + 216) = v43;
  *(a2 + 224) = v44;
  result = v36[0];
  *(a2 + 225) = *v36;
  *(a2 + 240) = *(&v36[1] + 7);
  *(a2 + 248) = 0;
  return result;
}

double sub_26A51CE10@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 24);
  v5[0] = *(a1 + 8);
  v5[1] = v2;
  v3 = *(a1 + 56);
  v5[2] = *(a1 + 40);
  v5[3] = v3;
  return sub_26A51CAA0(v5, a2);
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_26A51CEC0(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26A51CF00(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26A51CF68(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 65))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26A51CFA8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26A51D028(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ABF50, &qword_26A85A320);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A51D0A4(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v4 = *(a1 + 3);
  v7[0] = *(a1 + 1);
  v7[1] = v4;
  v5 = *(a1 + 7);
  v7[2] = *(a1 + 5);
  v7[3] = v5;
  return v2(v3, v7);
}

uint64_t sub_26A51D0F8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_46();
  (*(v6 + 16))(a2, a1);
  return a2;
}

unint64_t sub_26A51D158()
{
  result = qword_2803ABFC8;
  if (!qword_2803ABFC8)
  {
    type metadata accessor for PopOverManager(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803ABFC8);
  }

  return result;
}

unint64_t sub_26A51D1B0()
{
  result = qword_2803ABFD0;
  if (!qword_2803ABFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803ABFD0);
  }

  return result;
}

unint64_t sub_26A51D204()
{
  result = qword_2803ABFD8;
  if (!qword_2803ABFD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803ABFE0, qword_26A85A4C8);
    sub_26A4DBCC8(&qword_2803ABF88, &qword_2803ABF60, &qword_26A85A330, MEMORY[0x277CE1138]);
    sub_26A4DBCC8(&qword_28157FAF8, &qword_2803ABF50, &qword_26A85A320, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803ABFD8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_6_9(uint64_t a1, uint64_t a2)
{

  return sub_26A852598();
}

uint64_t sub_26A51D368()
{
  v1 = v0;
  v2 = sub_26A84FBC8();
  OUTLINED_FUNCTION_15();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_41();
  v8 = v7 - v6;
  v9 = sub_26A84B318();
  OUTLINED_FUNCTION_15();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_41();
  v15 = v14 - v13;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ABFE8, &unk_26A874680);
  v17 = OUTLINED_FUNCTION_79(v16);
  MEMORY[0x28223BE20](v17);
  v19 = v40 - v18;
  sub_26A74E490(v0);
  if (v20)
  {
    sub_26A850F08();
    sub_26A540550([v0 symbol_rendering_mode]);
    sub_26A51D738(v8);
    sub_26A5B7B04(v19);
    (*(v4 + 8))(v8, v2);
    (*(v11 + 8))(v15, v9);
    v21 = sub_26A84FC88();
    __swift_storeEnumTagSinglePayload(v19, 0, 1, v21);
    v22 = sub_26A850F58();

    sub_26A4E2544(v19, &qword_2803ABFE8, &unk_26A874680);

    v40[0] = v22;
    v23 = sub_26A8508A8();
    v25 = v24;
    v27 = v26;
    if (sub_26A51D7C0([v1 image_style]))
    {
      v28 = sub_26A850738();
      v30 = v29;
      v32 = v31;
    }

    else
    {
      sub_26A4EF6C0(v23, v25, v27 & 1);

      v28 = v23;
      v30 = v25;
      v32 = v27;
    }

    sub_26A4EC448(v23, v25, v27 & 1);

    v34 = [v1 primary_color];
    if (v34)
    {
      v35 = v34;
      v41 = sub_26A68D85C();
      v36 = sub_26A8506B8();

      sub_26A4EC448(v28, v30, v32 & 1);

      return v36;
    }

    else
    {
    }
  }

  else
  {
    v33 = sub_26A851E98();
    LOBYTE(v38) = 2;
    sub_26A7A9B1C(v33, 1, "SnippetUI/RFSymbolImage+FormattedTextView.swift", 47, 2, 15, "asText()", 8, v38, v39, v40[0], v40[1], v40[2], v41, v42, v43, v44, v45, v46, v47, v48, v49);
    return 0;
  }

  return v28;
}

uint64_t sub_26A51D738@<X0>(uint64_t a1@<X8>)
{
  v2 = UIAccessibilityDarkerSystemColorsEnabled();
  v3 = sub_26A84FBC8();
  v4 = *(*(v3 - 8) + 104);
  v5 = MEMORY[0x277CE0220];
  if (!v2)
  {
    v5 = MEMORY[0x277CE0210];
  }

  v6 = *v5;

  return v4(a1, v6, v3);
}

uint64_t sub_26A51D7C0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB208, &qword_26A857FD0);
  v3 = OUTLINED_FUNCTION_79(v2);
  MEMORY[0x28223BE20](v3);
  v5 = &v27 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803ABFF0, &qword_26A86DCC0);
  v7 = OUTLINED_FUNCTION_79(v6);
  MEMORY[0x28223BE20](v7);
  v9 = &v27 - v8;
  v10 = sub_26A84B1D8();
  OUTLINED_FUNCTION_15();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_41();
  v16 = v15 - v14;
  v17 = type metadata accessor for ImageStyleAppearance(0);
  v18 = OUTLINED_FUNCTION_79(v17);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_41();
  v21 = v20 - v19;
  if (!a1)
  {
    return 0;
  }

  sub_26A7EA53C(a1);
  v22 = objc_allocWithZone(type metadata accessor for Context(0));
  v23 = Context.init(idiom:)(1, 0);
  sub_26A77F8A4(v16, v9);
  sub_26A58E870(v23, v21);

  sub_26A4E2544(v9, &unk_2803ABFF0, &qword_26A86DCC0);
  (*(v12 + 8))(v16, v10);
  v24 = *(v21 + 32);
  if (v24)
  {
  }

  else
  {
    v25 = sub_26A850338();
    __swift_storeEnumTagSinglePayload(v5, 1, 1, v25);
    v24 = sub_26A8503E8();
    sub_26A4E2544(v5, &qword_2803AB208, &qword_26A857FD0);
  }

  sub_26A51DA28(v21);
  return v24;
}

uint64_t sub_26A51DA28(uint64_t a1)
{
  v2 = type metadata accessor for ImageStyleAppearance(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL sub_26A51DAAC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAD50, &unk_26A857890);
  *&v2 = MEMORY[0x28223BE20](v1 - 8).n128_u64[0];
  v4 = &v9 - v3;
  v5 = [v0 thumbnail];
  if (v5)
  {
    RFVisualProperty.asVisualProperty()();

    v6 = sub_26A84BD28();
    v7 = 0;
  }

  else
  {
    v6 = sub_26A84BD28();
    v7 = 1;
  }

  __swift_storeEnumTagSinglePayload(v4, v7, 1, v6);
  sub_26A4E2544(v4, &qword_2803AAD50, &unk_26A857890);
  return v5 != 0;
}

id sub_26A51DB94@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = [v1 text_1];
  if (!v4)
  {
    goto LABEL_6;
  }

  v5 = v4;
  v6 = [v1 text_3];
  if (!v6)
  {

LABEL_6:
    sub_26A4E353C();
    swift_allocError();
    *v10 = v1;
    *(v10 + 8) = &unk_287B131C8;
    *(v10 + 16) = 0;
    swift_willThrow();
    return v1;
  }

  v7 = v6;
  RFTextProperty.asPartialText()(v70);
  v8 = [v1 text_2];
  if (v8)
  {
    v9 = v8;
    *(&v68 + 1) = &type metadata for PartialText;
    v69 = &protocol witness table for PartialText;
    OUTLINED_FUNCTION_1_9();
    v67[0] = swift_allocObject();
    RFTextProperty.asPartialText()(v67[0] + 16);
  }

  else
  {
    v69 = 0;
    v68 = 0u;
    *v67 = 0u;
  }

  RFTextProperty.asPartialText()(v66);
  v12 = [v2 text_4];
  if (v12)
  {
    v13 = v12;
    *(&v64 + 1) = &type metadata for PartialText;
    v65 = &protocol witness table for PartialText;
    OUTLINED_FUNCTION_1_9();
    v63[0] = swift_allocObject();
    RFTextProperty.asPartialText()(v63[0] + 16);
  }

  else
  {
    v65 = 0;
    v64 = 0u;
    *v63 = 0u;
  }

  v14 = [v2 text_5];
  if (v14)
  {
    v15 = v14;
    *(&v61 + 1) = &type metadata for PartialText;
    v62 = &protocol witness table for PartialText;
    OUTLINED_FUNCTION_1_9();
    v60[0] = swift_allocObject();
    RFTextProperty.asPartialText()(v60[0] + 16);
  }

  else
  {
    v62 = 0;
    v61 = 0u;
    *v60 = 0u;
  }

  v16 = [v2 text_6];
  if (v16)
  {
    v17 = v16;
    *(&v58 + 1) = &type metadata for PartialText;
    v59 = &protocol witness table for PartialText;
    OUTLINED_FUNCTION_1_9();
    v57[0] = swift_allocObject();
    RFTextProperty.asPartialText()(v57[0] + 16);
  }

  else
  {
    v59 = 0;
    v58 = 0u;
    *v57 = 0u;
  }

  v18 = [v2 thumbnail];
  if (v18)
  {
    v19 = v18;
    *(&v55 + 1) = sub_26A84BD28();
    v56 = &protocol witness table for VisualProperty;
    __swift_allocate_boxed_opaque_existential_1(v54);
    RFVisualProperty.asVisualProperty()();
  }

  else
  {
    v56 = 0;
    v55 = 0u;
    *v54 = 0u;
  }

  v72 = v7;
  if (qword_28157E670 != -1)
  {
    swift_once();
  }

  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3890, &unk_26A856670);
  v21 = __swift_project_value_buffer(v20, qword_281588798);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A0, &qword_26A854C60);
  v23 = &a1[*(v22 + 32)];
  sub_26A4EA070(v21, v23, &qword_2803B3890, &unk_26A856670);
  sub_26A6AEE74(__src);
  memcpy(a1, __src, 0xBFuLL);
  sub_26A4DB4E0(&v23[*(v20 + 36)], &a1[*(v22 + 28)]);
  v24 = type metadata accessor for SummaryItemDetailedTextView(0);
  v25 = v24[5];
  *&a1[v25] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190, &unk_26A854C50);
  swift_storeEnumTagMultiPayload();
  v26 = &a1[v24[6]];
  *v26 = swift_getKeyPath();
  v26[8] = 0;
  v27 = v24[7];
  *&a1[v27] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8, &qword_26A857040);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_4_7(v53);
  OUTLINED_FUNCTION_4_7(v52);
  sub_26A4EC458(v53, v50);
  sub_26A4EC4B4();
  *&a1[v24[8]] = sub_26A851248();
  sub_26A4EA070(v67, v47, &qword_2803A91B8, &qword_26A8575C0);
  v28 = v48;
  if (v48)
  {
    v29 = v49;
    __swift_project_boxed_opaque_existential_1(v47, v48);
    v30 = (*(v29 + 8))(v28, v29);
    __swift_destroy_boxed_opaque_existential_1(v47);
  }

  else
  {
    sub_26A4E2544(v47, &qword_2803A91B8, &qword_26A8575C0);
    v30 = 0;
  }

  v31 = v72;
  *&a1[v24[9]] = v30;
  OUTLINED_FUNCTION_5_8(v52);
  OUTLINED_FUNCTION_5_8(v50);
  sub_26A4EC458(v52, v46);
  *&a1[v24[10]] = sub_26A851248();
  sub_26A4EA070(v63, v50, &qword_2803A91B8, &qword_26A8575C0);
  if (v51)
  {
    __swift_project_boxed_opaque_existential_1(v50, v51);
    v32 = OUTLINED_FUNCTION_0_11();
    v34 = v33(v32);
    __swift_destroy_boxed_opaque_existential_1(v50);
  }

  else
  {
    sub_26A4E2544(v50, &qword_2803A91B8, &qword_26A8575C0);
    v34 = 0;
  }

  *&a1[v24[11]] = v34;
  sub_26A4EA070(v60, v50, &qword_2803A91B8, &qword_26A8575C0);
  if (v51)
  {
    __swift_project_boxed_opaque_existential_1(v50, v51);
    v35 = OUTLINED_FUNCTION_0_11();
    v37 = v36(v35);
    __swift_destroy_boxed_opaque_existential_1(v50);
  }

  else
  {
    sub_26A4E2544(v50, &qword_2803A91B8, &qword_26A8575C0);
    v37 = 0;
  }

  *&a1[v24[12]] = v37;
  sub_26A4EA070(v57, v50, &qword_2803A91B8, &qword_26A8575C0);
  if (v51)
  {
    __swift_project_boxed_opaque_existential_1(v50, v51);
    v38 = OUTLINED_FUNCTION_0_11();
    v40 = v39(v38);
    __swift_destroy_boxed_opaque_existential_1(v50);
  }

  else
  {
    sub_26A4E2544(v50, &qword_2803A91B8, &qword_26A8575C0);
    v40 = 0;
  }

  *&a1[v24[13]] = v40;
  sub_26A4EA070(v54, v44, &qword_2803A91B8, &qword_26A8575C0);
  if (v45)
  {
    __swift_project_boxed_opaque_existential_1(v44, v45);
    v41 = OUTLINED_FUNCTION_0_11();
    v43 = v42(v41);

    OUTLINED_FUNCTION_5_8(v46);
    sub_26A4EC508(v46);
    OUTLINED_FUNCTION_4_7(v50);
    sub_26A4EC508(v50);
    OUTLINED_FUNCTION_3_7(v54);
    OUTLINED_FUNCTION_3_7(v57);
    OUTLINED_FUNCTION_3_7(v60);
    OUTLINED_FUNCTION_3_7(v63);
    OUTLINED_FUNCTION_3_7(v67);
    result = __swift_destroy_boxed_opaque_existential_1(v44);
  }

  else
  {

    OUTLINED_FUNCTION_5_8(v46);
    sub_26A4EC508(v46);
    OUTLINED_FUNCTION_4_7(v50);
    sub_26A4EC508(v50);
    OUTLINED_FUNCTION_2_8(v54);
    OUTLINED_FUNCTION_2_8(v57);
    OUTLINED_FUNCTION_2_8(v60);
    OUTLINED_FUNCTION_2_8(v63);
    OUTLINED_FUNCTION_2_8(v67);
    result = OUTLINED_FUNCTION_2_8(v44);
    v43 = 0;
  }

  *&a1[v24[14]] = v43;
  return result;
}

unint64_t sub_26A51E3B8()
{
  result = qword_2803AAF58;
  if (!qword_2803AAF58)
  {
    type metadata accessor for SummaryItemDetailedTextView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AAF58);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_8(uint64_t a1)
{

  return sub_26A4E2544(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_3_7(uint64_t a1)
{

  return sub_26A4E2544(a1, v1, v2);
}

void *OUTLINED_FUNCTION_4_7(void *a1)
{

  return memcpy(a1, &STACK[0x638], 0xFAuLL);
}

void *OUTLINED_FUNCTION_5_8(void *a1)
{

  return memcpy(a1, &STACK[0x510], 0xFAuLL);
}

uint64_t initializeBufferWithCopyOfBuffer for TableColumnDefinition(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
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

uint64_t getEnumTagSinglePayload for TableColumnDefinition(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 42))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 25);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  if (v5 + 1 >= 2)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TableColumnDefinition(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 26) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 42) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 42) = 0;
    }

    if (a2)
    {
      *(result + 25) = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_26A51E578(uint64_t a1)
{
  v1 = *(a1 + 25);
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

double sub_26A51E594(uint64_t a1, unsigned int a2)
{
  if (a2 > 0xFE)
  {
    result = 0.0;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 40) = 0;
    *a1 = a2 - 255;
  }

  else if (a2)
  {
    *(a1 + 25) = a2 + 1;
  }

  return result;
}

uint64_t sub_26A51E5D8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 42))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 25);
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26A51E624(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 42) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 42) = 0;
    }

    if (a2)
    {
      *(result + 25) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_26A51E684()
{
  OUTLINED_FUNCTION_1_10();
  v0[7] = v1;
  v0[8] = v2;
  v0[5] = v3;
  v0[6] = v4;
  v0[4] = v5;
  v6 = sub_26A84AC58();
  v0[9] = v6;
  v0[10] = *(v6 - 8);
  v0[11] = swift_task_alloc();
  OUTLINED_FUNCTION_9_7();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_26A51E770()
{
  v1 = [*(v0 + 32) metadata];
  *(v0 + 96) = v1;
  v2 = objc_opt_self();
  v3 = v2;
  if (v1)
  {
    v4 = [v2 policyWithActionMetadata_];
    *(v0 + 24) = 0;
    v5 = v4;
    v6 = [v5 connectionWithUserIdentity:0 error:v0 + 24];
    v7 = *(v0 + 24);
    if (v6)
    {
      v8 = v6;
      v9 = v7;

LABEL_6:
      *(v0 + 104) = v8;
      *(v0 + 112) = v5;
      v15 = *(v0 + 80);
      v14 = *(v0 + 88);
      v16 = *(v0 + 72);
      v17 = v8;
      v18 = [objc_allocWithZone(MEMORY[0x277D23AF8]) init];
      *(v0 + 120) = v18;
      [v18 setSource_];
      [v18 setInteractionMode_];
      sub_26A5211E0(0x5574657070696E53, 0xE900000000000049, v18);
      [v18 setViewActionIdentifier_];
      v19 = [objc_allocWithZone(MEMORY[0x277D23CB0]) init];
      *(v0 + 128) = v19;
      sub_26A84AC48();
      v20 = sub_26A84AC28();
      (*(v15 + 8))(v14, v16);
      [v19 setPreciseTimestamp_];

      [v18 setSystemContext_];
      v21 = swift_task_alloc();
      *(v0 + 136) = v21;
      *v21 = v0;
      v21[1] = sub_26A51EB1C;
      v22 = *(v0 + 56);
      v23 = *(v0 + 64);
      v24 = *(v0 + 32);

      return sub_26A51EDF0(v24, v1, v17, v22, v23, v18);
    }

    v26 = v7;

    sub_26A84AAE8();
    swift_willThrow();
  }

  else
  {
    v10 = sub_26A851788();
    v11 = [v3 policyWithBundleIdentifier_];

    *(v0 + 16) = 0;
    v8 = [v11 connectionWithUserIdentity:0 error:v0 + 16];

    v12 = *(v0 + 16);
    if (v8)
    {
      v13 = v12;
      v5 = 0;
      goto LABEL_6;
    }

    v27 = v12;
    sub_26A84AAE8();

    swift_willThrow();
  }

  OUTLINED_FUNCTION_2_9();

  return v28();
}

uint64_t sub_26A51EB1C()
{
  OUTLINED_FUNCTION_5_9();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  OUTLINED_FUNCTION_0_12();
  *v6 = v5;
  *v6 = *v1;
  *(v5 + 144) = v0;

  if (!v0)
  {
    *(v5 + 152) = v3;
  }

  OUTLINED_FUNCTION_9_7();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_26A51EC7C()
{
  OUTLINED_FUNCTION_5_9();
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  v3 = *(v0 + 112);
  v4 = *(v0 + 96);

  OUTLINED_FUNCTION_8_8();
  v6 = *(v0 + 152);

  return v5(v6);
}

uint64_t sub_26A51ED38()
{
  OUTLINED_FUNCTION_5_9();
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);
  v3 = *(v0 + 112);
  v4 = *(v0 + 96);

  OUTLINED_FUNCTION_2_9();

  return v5();
}

uint64_t sub_26A51EDF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[9] = a3;
  v6[10] = a4;
  v6[7] = a1;
  v6[8] = a2;
  return MEMORY[0x2822009F8](sub_26A51EE18);
}

uint64_t sub_26A51EE18()
{
  v1 = *(v0 + 96);
  v8 = *(v0 + 80);
  v2 = *(v0 + 72);
  v3 = *(v0 + 56);
  *(v0 + 16) = 0;
  v4 = swift_task_alloc();
  *(v0 + 104) = v4;
  *(v4 + 16) = v0 + 16;
  *(v4 + 24) = v8;
  *(v4 + 40) = v2;
  *(v4 + 48) = v3;
  *(v4 + 56) = v1;
  v5 = swift_task_alloc();
  *(v0 + 112) = v5;
  sub_26A4EC5B0(0, &qword_2803AC080, 0x277D23CA8);
  *v5 = v0;
  v5[1] = sub_26A51EF58;
  OUTLINED_FUNCTION_9_7();

  return MEMORY[0x2822008A0](v6);
}

uint64_t sub_26A51EF58()
{
  OUTLINED_FUNCTION_1_10();
  OUTLINED_FUNCTION_3_8();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_0_12();
  *v5 = v4;
  *(v3 + 120) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_9_7();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_26A51F060()
{
  OUTLINED_FUNCTION_6_10();
  v1 = *(v0 + 24);
  *(v0 + 128) = v1;
  v2 = [v1 output];
  v3 = [v2 isDeferred];

  if (v3)
  {
    v4 = *(v0 + 72);
    v5 = swift_task_alloc();
    *(v0 + 136) = v5;
    *(v5 + 16) = v4;
    *(v5 + 24) = v1;
    v6 = swift_task_alloc();
    *(v0 + 144) = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC0B8, &qword_26A85A6F0);
    *v6 = v0;
    v6[1] = sub_26A51F398;
    OUTLINED_FUNCTION_9_7();

    return MEMORY[0x2822008A0](v7);
  }

  else
  {

    OUTLINED_FUNCTION_8_8();
    v9 = *(v0 + 128);

    return v8(v9);
  }
}

uint64_t sub_26A51F1DC()
{
  OUTLINED_FUNCTION_5_9();
  v1 = *(v0 + 120);

  *(v0 + 32) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC088, &qword_26A85A650);
  sub_26A4EC5B0(0, &qword_2803AC0B0, 0x277CCA9B8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_8;
  }

  v3 = *(v0 + 40);
  v4 = [v3 domain];
  v5 = sub_26A8517B8();
  v7 = v6;

  if (v5 == sub_26A8517B8() && v7 == v8)
  {
  }

  else
  {
    v10 = sub_26A852598();

    if ((v10 & 1) == 0)
    {

LABEL_8:
      goto LABEL_11;
    }
  }

  v11 = *(v0 + 64);

  sub_26A52118C();
  swift_allocError();
  *v12 = v11;
  v12[1] = v3;
  swift_willThrow();
  v13 = *(v0 + 32);
  v14 = v11;

LABEL_11:
  OUTLINED_FUNCTION_2_9();

  return v15();
}

uint64_t sub_26A51F398()
{
  OUTLINED_FUNCTION_1_10();
  OUTLINED_FUNCTION_3_8();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_0_12();
  *v5 = v4;
  *(v3 + 152) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_9_7();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_26A51F4B4()
{
  OUTLINED_FUNCTION_1_10();

  OUTLINED_FUNCTION_8_8();
  v2 = *(v0 + 128);

  return v1(v2);
}

uint64_t sub_26A51F514()
{
  OUTLINED_FUNCTION_1_10();

  OUTLINED_FUNCTION_2_9();

  return v1();
}

void sub_26A51F578(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC0A0, &qword_26A85A6D8);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v23 - v16;
  (*(v18 + 16))(&v23 - v16, a1, v15);
  objc_allocWithZone(type metadata accessor for PerformActionExecutorDelegate(0));
  sub_26A4C2304(a3, a4);
  v19 = sub_26A51F9E8(v17, a3, a4);
  v20 = *a2;
  *a2 = v19;
  v21 = v19;

  v22 = [a5 executorForAction:a6 options:a7 delegate:v21];
  [v22 perform];
}

void sub_26A51F6E4(uint64_t a1, void *a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803AC0C0, &qword_26A85A6F8);
  v7 = *(v6 - 8);
  *&v8 = MEMORY[0x28223BE20](v6).n128_u64[0];
  v10 = aBlock - v9;
  v11 = [a3 output];
  (*(v7 + 16))(v10, a1, v6);
  v12 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v13 = swift_allocObject();
  (*(v7 + 32))(v13 + v12, v10, v6);
  aBlock[4] = sub_26A52125C;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26A51F940;
  aBlock[3] = &block_descriptor_0;
  v14 = _Block_copy(aBlock);

  [a2 fetchActionOutputValue:v11 completionHandler:v14];
  _Block_release(v14);
}

uint64_t sub_26A51F8BC(void *a1, id a2)
{
  if (a2)
  {
    v2 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803AC0C0, &qword_26A85A6F8);
    return sub_26A851B88();
  }

  else
  {
    v4 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803AC0C0, &qword_26A85A6F8);
    return sub_26A851B98();
  }
}

void sub_26A51F940(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

id sub_26A51F9E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v8 = &v3[OBJC_IVAR____TtC9SnippetUI29PerformActionExecutorDelegate_snippetEnvironmentProvider];
  *v8 = 0;
  *(v8 + 1) = 0;
  v9 = OBJC_IVAR____TtC9SnippetUI29PerformActionExecutorDelegate_continuation;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC0A0, &qword_26A85A6D8);
  v11 = *(v10 - 8);
  (*(v11 + 16))(&v3[v9], a1, v10);
  *v8 = a2;
  *(v8 + 1) = a3;
  v14.receiver = v3;
  v14.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v14, sel_init);
  (*(v11 + 8))(a1, v10);
  return v12;
}

uint64_t sub_26A51FAF4(uint64_t a1, void *a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC0A0, &qword_26A85A6D8);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v16 - v9;
  if (a2)
  {
    v17 = a2;
    v11 = a2;
    return sub_26A851B98();
  }

  else
  {
    (*(v7 + 16))(v10, v3 + OBJC_IVAR____TtC9SnippetUI29PerformActionExecutorDelegate_continuation, v6, v8);
    if (a3)
    {
      v13 = a3;
    }

    else
    {
      sub_26A52118C();
      v13 = swift_allocError();
      *v14 = xmmword_26A85A600;
    }

    v17 = v13;
    v15 = a3;
    sub_26A851B88();
    return (*(v7 + 8))(v10, v6);
  }
}

uint64_t sub_26A51FCF4()
{
  *(v1 + 16) = v0;
  OUTLINED_FUNCTION_9_7();
  return MEMORY[0x2822009F8](v2);
}

uint64_t sub_26A51FD20()
{
  OUTLINED_FUNCTION_6_10();
  v1 = v0[2] + OBJC_IVAR____TtC9SnippetUI29PerformActionExecutorDelegate_snippetEnvironmentProvider;
  v2 = *v1;
  v0[3] = *v1;
  if (v2)
  {
    v0[4] = *(v1 + 8);

    v6 = (v2 + *v2);
    v3 = swift_task_alloc();
    v0[5] = v3;
    *v3 = v0;
    v3[1] = sub_26A51FE94;

    return v6();
  }

  else
  {
    sub_26A4EC5B0(0, &qword_2803AC098, 0x277D23C80);
    sub_26A6ED8D0(360.0, 9.22337204e18);
    OUTLINED_FUNCTION_8_8();

    return v5();
  }
}

uint64_t sub_26A51FE94()
{
  OUTLINED_FUNCTION_1_10();
  OUTLINED_FUNCTION_3_8();
  *(v1 + 48) = v0;

  OUTLINED_FUNCTION_9_7();

  return MEMORY[0x2822009F8](v2);
}

uint64_t sub_26A51FF88()
{
  OUTLINED_FUNCTION_1_10();
  sub_26A4C24DC(*(v0 + 24), *(v0 + 32));
  OUTLINED_FUNCTION_8_8();

  return v1();
}

uint64_t sub_26A52006C(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_26A520128;

  return sub_26A51FCF4();
}

uint64_t sub_26A520128()
{
  OUTLINED_FUNCTION_6_10();
  v2 = v1;
  OUTLINED_FUNCTION_3_8();
  v4 = v3[4];
  v5 = v3[3];
  v6 = v3[2];
  v7 = *v0;
  OUTLINED_FUNCTION_0_12();
  *v8 = v7;

  (v4)[2](v4, v2);
  _Block_release(v4);

  OUTLINED_FUNCTION_2_9();

  return v9();
}

uint64_t sub_26A520278(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC090, &qword_26A85A690);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  v7 = sub_26A851C18();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = a1;
  v8[5] = a2;
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = &unk_26A85A6A0;
  v9[5] = v8;
  sub_26A520B14(0, 0, v6, &unk_26A85A6B0, v9);
}

id sub_26A5203C8()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for PerformActionExecutorDelegate(uint64_t a1)
{
  result = qword_2803AC068;
  if (!qword_2803AC068)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26A5204D4(uint64_t a1)
{
  sub_26A52056C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_26A52056C(uint64_t a1)
{
  if (!qword_2803AC078)
  {
    sub_26A4EC5B0(255, &qword_2803AC080, 0x277D23CA8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AC088, &qword_26A85A650);
    v1 = sub_26A851BA8();
    if (!v2)
    {
      atomic_store(v1, &qword_2803AC078);
    }
  }
}

uint64_t sub_26A5205F8()
{
  OUTLINED_FUNCTION_6_10();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_26A5206A8;

  return sub_26A52006C(v2, v3, v4);
}

uint64_t sub_26A5206A8()
{
  OUTLINED_FUNCTION_1_10();
  OUTLINED_FUNCTION_3_8();
  v1 = *v0;
  OUTLINED_FUNCTION_0_12();
  *v2 = v1;

  OUTLINED_FUNCTION_2_9();

  return v3();
}

uint64_t sub_26A520788(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_26A5213F4;

  return v6();
}

uint64_t sub_26A520870()
{
  OUTLINED_FUNCTION_5_9();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_26A5213F4;

  return sub_26A520788(v2, v3, v4);
}

uint64_t sub_26A52092C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_26A5206A8;

  return v7();
}

uint64_t objectdestroy_9Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_26A520A54()
{
  OUTLINED_FUNCTION_5_9();
  v2 = v1;
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_7_9(v6);
  *v7 = v8;
  v7[1] = sub_26A5213F4;

  return sub_26A52092C(v2, v3, v4, v5);
}

uint64_t sub_26A520B14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC090, &qword_26A85A690);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v22 - v10;
  sub_26A520DB0(a3, v22 - v10);
  v12 = sub_26A851C18();
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    sub_26A520E20(v11);
  }

  else
  {
    sub_26A851C08();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  if (*(a5 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v13 = sub_26A851B78();
    v15 = v14;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v16 = sub_26A851818() + 32;
      v17 = swift_allocObject();
      *(v17 + 16) = a4;
      *(v17 + 24) = a5;

      if (v15 | v13)
      {
        v23[0] = 0;
        v23[1] = 0;
        v18 = v23;
        v23[2] = v13;
        v23[3] = v15;
      }

      else
      {
        v18 = 0;
      }

      v22[1] = 7;
      v22[2] = v18;
      v22[3] = v16;
      v20 = swift_task_create();

      sub_26A520E20(a3);

      return v20;
    }
  }

  else
  {
    v13 = 0;
    v15 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_26A520E20(a3);
  v19 = swift_allocObject();
  *(v19 + 16) = a4;
  *(v19 + 24) = a5;
  if (v15 | v13)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v13;
    v23[7] = v15;
  }

  return swift_task_create();
}

uint64_t sub_26A520DB0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC090, &qword_26A85A690);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A520E20(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC090, &qword_26A85A690);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26A520E88(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_26A520F80;

  return v6(a1);
}

uint64_t sub_26A520F80()
{
  OUTLINED_FUNCTION_1_10();
  OUTLINED_FUNCTION_3_8();
  v1 = *v0;
  OUTLINED_FUNCTION_0_12();
  *v2 = v1;

  OUTLINED_FUNCTION_2_9();

  return v3();
}

uint64_t sub_26A521064()
{
  OUTLINED_FUNCTION_6_10();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_7_9(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_4_8(v1);

  return v4(v3);
}

uint64_t sub_26A5210F8()
{
  OUTLINED_FUNCTION_6_10();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_7_9(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_4_8(v1);

  return v4(v3);
}

unint64_t sub_26A52118C()
{
  result = qword_2803AC0A8;
  if (!qword_2803AC0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AC0A8);
  }

  return result;
}

void sub_26A5211E0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_26A851788();

  [a3 setClientLabel_];
}

uint64_t sub_26A52125C(void *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803AC0C0, &qword_26A85A6F8);

  return sub_26A51F8BC(a1, a2);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t get_enum_tag_for_layout_string_9SnippetUI0A14IntentExecutorO14ExecutionErrorO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_26A521318(uint64_t a1, unsigned int a2)
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

uint64_t sub_26A521374(uint64_t result, unsigned int a2, unsigned int a3)
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

void *sub_26A5213C4(void *result, int a2)
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

uint64_t ContactPickerButtonView.init(label:onContactPicked:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_26A851048();
  *(a4 + 24) = v11;
  *(a4 + 32) = v12;
  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  *a4 = (*(v9 + 8))(v8, v9);
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t ContactPickerButtonView.body.getter@<X0>(uint64_t *a2@<X8>)
{
  v4 = *(v2 + 16);
  v8[0] = *v2;
  v8[1] = v4;
  v9 = *(v2 + 32);
  *a2 = sub_26A851448();
  a2[1] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC0D0, &qword_26A85A7C0);
  return sub_26A5215A4(v8, a2 + *(v6 + 44));
}

uint64_t sub_26A5215A4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v47 = a2;
  v45 = type metadata accessor for RFButtonStyle(0);
  MEMORY[0x28223BE20](v45);
  v41 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC180, &qword_26A85A9D0);
  v43 = *(v4 - 8);
  v44 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v38 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC188, &qword_26A85A9D8);
  v39 = *(v7 - 8);
  v40 = v7;
  MEMORY[0x28223BE20](v7);
  v46 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v42 = &v38 - v10;
  v74 = *(a1 + 24);
  v58 = *(a1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC190, &qword_26A85A9E0);
  sub_26A851058();
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v48 = 0;
  v49 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  if (LOBYTE(v57[0]) == 1)
  {
    v57[0] = v74;
    sub_26A851078();
    v12 = *(&v58 + 1);
    v11 = v58;
    v49 = v59;
    v13 = *(a1 + 8);
    v14 = *(a1 + 16);
    type metadata accessor for Context(0);
    sub_26A5225E0(&qword_28157D9E0, type metadata accessor for Context, &protocol conformance descriptor for Context);

    v15 = sub_26A84F678();
    v48 = v22;
    sub_26A851448();
    sub_26A84F028();
    v16 = v68;
    v17 = v69;
    v18 = v70;
    v19 = v71;
    v20 = v72;
    v21 = v73;
  }

  v50 = v15;
  v51 = v13;
  v52 = v14;
  v53 = v16;
  *&v54 = v17;
  *(&v54 + 1) = v18;
  *&v55 = v19;
  *(&v55 + 1) = v20;
  v56 = v21;
  v23 = swift_allocObject();
  *&v38 = v11;
  *(&v38 + 1) = v12;
  v24 = *(a1 + 16);
  *(v23 + 16) = *a1;
  *(v23 + 32) = v24;
  *(v23 + 48) = *(a1 + 32);
  MEMORY[0x28223BE20](v23);
  *(&v38 - 2) = a1;
  sub_26A5225A8(a1, &v58);
  sub_26A8510D8();
  v25 = v41;
  static PrimitiveButtonStyle<>.rfButton.getter(v41);
  sub_26A4DBCC8(&qword_2803AC198, &qword_2803AC180, &qword_26A85A9D0, MEMORY[0x277CDF028]);
  sub_26A5225E0(&qword_2803AC1A0, type metadata accessor for RFButtonStyle, &protocol conformance descriptor for RFButtonStyle);
  v26 = v42;
  v27 = v44;
  sub_26A850978();
  sub_26A522628(v25);
  (*(v43 + 8))(v6, v27);
  v29 = v39;
  v28 = v40;
  v30 = *(v39 + 16);
  v31 = v46;
  v30(v46, v26, v40);
  *&v57[0] = v11;
  *(&v57[0] + 1) = v12;
  v32 = v48;
  v33 = v49;
  *&v57[1] = v49;
  *(&v57[1] + 1) = v51;
  *&v57[2] = v52;
  *(&v57[2] + 1) = v50;
  *&v57[3] = v48;
  *(&v57[3] + 1) = v53;
  v57[4] = v54;
  v57[5] = v55;
  *&v57[6] = v56;
  v34 = v47;
  memcpy(v47, v57, 0x68uLL);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC1A8, &qword_26A85A9E8);
  v30(&v34[*(v35 + 48)], v31, v28);
  sub_26A4EA070(v57, &v58, &unk_2803AC1B0, qword_26A85A9F0);
  v36 = *(v29 + 8);
  v36(v26, v28);
  v36(v31, v28);
  v58 = v38;
  v59 = v33;
  v60 = v51;
  v61 = v52;
  v62 = v50;
  v63 = v32;
  v64 = v53;
  v65 = v54;
  v66 = v55;
  v67 = v56;
  return sub_26A522684(&v58);
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_26A521BC8(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26A521C08(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_26A521C60()
{
  objc_allocWithZone(type metadata accessor for SystemContactPicker.SystemContactPickerViewController());
  v4 = *v0;
  v3 = *(v0 + 40);
  sub_26A5224E8(&v4, v2);

  sub_26A4EA070(&v3, v2, &qword_2803AC160, &unk_26A85A9C0);
  return sub_26A521CF0(v0);
}

id sub_26A521CF0(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = &v1[OBJC_IVAR____TtCV9SnippetUI19SystemContactPicker33SystemContactPickerViewController_container];
  v5 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 1) = v5;
  *(v4 + 2) = *(a1 + 32);
  *(v4 + 6) = *(a1 + 48);
  v7.receiver = v1;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, sel_initWithNibName_bundle_, 0, 0);
}

void sub_26A521D60(uint64_t a1)
{
  v1 = sub_26A851EA8();
  LOBYTE(v2) = 2;
  j__OUTLINED_FUNCTION_59_5(v1, 0, "SnippetUI/ContactPickerButtonView.swift", 39, 2, 85, "init(coder:)", 12, v2);
  sub_26A852418();
  __break(1u);
}

void sub_26A521E08()
{
  v1 = v0;
  v8.receiver = v0;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, sel_viewDidLoad);
  v2 = [objc_allocWithZone(MEMORY[0x277CBDC18]) init];
  [v2 setDelegate_];
  v3 = *&v0[OBJC_IVAR____TtCV9SnippetUI19SystemContactPicker33SystemContactPickerViewController_container + 40];
  if (v3)
  {
    v4 = v3;
    sub_26A620570();

    [v1 presentViewController:v2 animated:1 completion:0];
  }

  else
  {
    type metadata accessor for Context(0);
    OUTLINED_FUNCTION_0_13();
    v7 = sub_26A5225E0(v5, v6, &protocol conformance descriptor for Context);
    OUTLINED_FUNCTION_1_11(v7);
    __break(1u);
  }
}

void sub_26A521F48()
{
  v1 = v0 + OBJC_IVAR____TtCV9SnippetUI19SystemContactPicker33SystemContactPickerViewController_container;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803AC170, &unk_26A87C420);
  sub_26A851268();
  v2 = *(v1 + 40);
  if (v2)
  {
    v3 = v2;
    sub_26A620644();
  }

  else
  {
    type metadata accessor for Context(0);
    OUTLINED_FUNCTION_0_13();
    v6 = sub_26A5225E0(v4, v5, &protocol conformance descriptor for Context);
    OUTLINED_FUNCTION_1_11(v6);
    __break(1u);
  }
}

uint64_t sub_26A522064(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtCV9SnippetUI19SystemContactPicker33SystemContactPickerViewController_container;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803AC170, &unk_26A87C420);
  sub_26A851268();
  v5 = *(v4 + 40);
  if (v5)
  {
    v6 = v5;
    sub_26A620644();

    return (*(v4 + 24))(a2);
  }

  else
  {
    type metadata accessor for Context(0);
    OUTLINED_FUNCTION_0_13();
    v10 = sub_26A5225E0(v8, v9, &protocol conformance descriptor for Context);
    result = OUTLINED_FUNCTION_1_11(v10);
    __break(1u);
  }

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

uint64_t sub_26A5222AC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26A5222EC(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_26A5223A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26A522544();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_26A522404(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26A522544();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_26A522468(uint64_t a1)
{
  sub_26A522544();
  sub_26A8500D8();
  __break(1u);
}

unint64_t sub_26A522494()
{
  result = qword_2803AC158;
  if (!qword_2803AC158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AC158);
  }

  return result;
}

unint64_t sub_26A522544()
{
  result = qword_2803AC168;
  if (!qword_2803AC168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AC168);
  }

  return result;
}

uint64_t sub_26A5225E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26A522628(uint64_t a1)
{
  v2 = type metadata accessor for RFButtonStyle(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26A522684(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803AC1B0, qword_26A85A9F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_1_11(uint64_t a1)
{

  return sub_26A84F668();
}

void sub_26A522750(uint64_t a1@<X8>)
{
  if (sub_26A614EE4(v1) && (v3 = sub_26A73670C(), , v3) || sub_26A614F00(v1) && (v4 = sub_26A73670C(), , v4))
  {
    MapView.init(model:)(v1, a1);
  }

  else
  {
    sub_26A4E353C();
    swift_allocError();
    *v5 = v1;
    *(v5 + 8) = &unk_287B13208;
    *(v5 + 16) = 0;
    swift_willThrow();
    v6 = v1;
  }
}

unint64_t sub_26A52286C()
{
  result = qword_2803AC1C0;
  if (!qword_2803AC1C0)
  {
    type metadata accessor for MapView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AC1C0);
  }

  return result;
}

id RFSnippetRenderingContext.init(_:)(uint64_t a1)
{
  v3 = &v1[OBJC_IVAR____TtC9SnippetUI25RFSnippetRenderingContext_instrumentationClient];
  v4 = type metadata accessor for StandardSELFInstrumentationClient();
  v5 = swift_allocObject();
  v3[3] = v4;
  v3[4] = &off_287B17ED8;
  *v3 = v5;
  *&v1[OBJC_IVAR____TtC9SnippetUI25RFSnippetRenderingContext_event] = a1;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for RFSnippetRenderingContext();
  return objc_msgSendSuper2(&v7, sel_init);
}

void sub_26A5229CC(uint64_t a1)
{
  v3 = sub_26A523148();
  KeyPath = swift_getKeyPath();
  v5 = sub_26A522B1C(v3, KeyPath, a1, j__OUTLINED_FUNCTION_213_0);

  if (v5)
  {
    __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC9SnippetUI25RFSnippetRenderingContext_instrumentationClient), *(v1 + OBJC_IVAR____TtC9SnippetUI25RFSnippetRenderingContext_instrumentationClient + 24));
    sub_26A58733C(v5);
  }
}

id sub_26A522A98@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 snippetRenderingContext];
  *a2 = result;
  return result;
}

uint64_t sub_26A522B1C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC1D8, &unk_26A85AAC0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v20 - v8;
  if (a1 == 1)
  {
    sub_26A851E98();
    OUTLINED_FUNCTION_1_12();
    OUTLINED_FUNCTION_0_14();
    a4();
  }

  else
  {
    v10 = sub_26A84ACC8();
    __swift_storeEnumTagSinglePayload(v9, 1, 1, v10);
    v11 = sub_26A6465E4(a3, v9);
    sub_26A5233D4(v9);
    if (v11)
    {
      v20 = a1;
      v21 = v11;
      v12 = a1;
      swift_setAtWritableKeyPath();
      return v21;
    }

    sub_26A851E98();
    OUTLINED_FUNCTION_1_12();
    OUTLINED_FUNCTION_0_14();
    j__OUTLINED_FUNCTION_202_0(v14, v15, v16, v17, v18, 54, v19, 40, v20);
  }

  return 0;
}

void sub_26A522D54(uint64_t a1, uint64_t a2)
{
  v5 = sub_26A523148();
  KeyPath = swift_getKeyPath();
  v7 = sub_26A522E7C(v5, KeyPath, a1, a2, j__OUTLINED_FUNCTION_213_0);

  if (v7)
  {
    __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC9SnippetUI25RFSnippetRenderingContext_instrumentationClient), *(v2 + OBJC_IVAR____TtC9SnippetUI25RFSnippetRenderingContext_instrumentationClient + 24));
    sub_26A58733C(v7);
  }
}

uint64_t sub_26A522E7C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC1D8, &unk_26A85AAC0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v22 - v10;
  if (a1 == 1)
  {
    sub_26A851E98();
    OUTLINED_FUNCTION_1_12();
    OUTLINED_FUNCTION_0_14();
    a5();
  }

  else
  {
    v12 = sub_26A84ACC8();
    (*(*(v12 - 8) + 16))(v11, a4, v12);
    __swift_storeEnumTagSinglePayload(v11, 0, 1, v12);
    v13 = sub_26A6465E4(a3, v11);
    sub_26A5233D4(v11);
    if (v13)
    {
      v22 = a1;
      v23 = v13;
      v14 = a1;
      swift_setAtWritableKeyPath();
      return v23;
    }

    sub_26A851E98();
    OUTLINED_FUNCTION_1_12();
    OUTLINED_FUNCTION_0_14();
    j__OUTLINED_FUNCTION_202_0(v16, v17, v18, v19, v20, 79, v21, 50, v22);
  }

  return 0;
}

id RFSnippetRenderingContext.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id RFSnippetRenderingContext.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RFSnippetRenderingContext();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_26A5233D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC1D8, &unk_26A85AAC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26A523458()
{
  v2 = sub_26A84F988();
  OUTLINED_FUNCTION_15();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_74_0();
  v6 = *v0;
  if ((*(v0 + 8) & 1) == 0)
  {

    sub_26A851EA8();
    v7 = sub_26A8501F8();
    OUTLINED_FUNCTION_55(v7, &dword_26A48D000, v8, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", v9, v10, MEMORY[0x277D84F90]);

    sub_26A84F978();
    OUTLINED_FUNCTION_112();
    swift_getAtKeyPath();
    sub_26A49035C(v6, 0);
    (*(v4 + 8))(v1, v2);
    return v12;
  }

  return v6;
}

uint64_t sub_26A523570()
{
  v2 = sub_26A84F988();
  OUTLINED_FUNCTION_15();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_74_0();
  v6 = *(v0 + 16);
  if (*(v0 + 24) != 1)
  {

    sub_26A851EA8();
    v7 = sub_26A8501F8();
    OUTLINED_FUNCTION_55(v7, &dword_26A48D000, v8, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", v9, v10, MEMORY[0x277D84F90]);

    sub_26A84F978();
    OUTLINED_FUNCTION_112();
    swift_getAtKeyPath();
    sub_26A49035C(v6, 0);
    (*(v4 + 8))(v1, v2);
    LOBYTE(v6) = v12;
  }

  return v6 & 1;
}

uint64_t sub_26A52368C()
{
  v0 = sub_26A84F988();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190, &unk_26A854C50);
  MEMORY[0x28223BE20](v4);
  type metadata accessor for SummaryItemPairNumberV2View(0);
  sub_26A4EF6D0();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_26A4EF020();
  }

  sub_26A851EA8();
  v6 = sub_26A8501F8();
  sub_26A84EA78();

  sub_26A84F978();
  swift_getAtKeyPath();

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_26A523874@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26A84F988();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8, &qword_26A857040);
  MEMORY[0x28223BE20](v6);
  v8 = &v12 - v7;
  type metadata accessor for SummaryItemPairNumberV2View(0);
  sub_26A4EF6D0();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_26A84F3A8();
    return (*(*(v9 - 8) + 32))(a1, v8, v9);
  }

  else
  {
    sub_26A851EA8();
    v11 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();

    return (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_26A523A7C()
{
  v1 = sub_26A84F988();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  if ((*(v0 + 8) & 1) == 0)
  {

    sub_26A851EA8();
    v6 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v5, 0);
    (*(v2 + 8))(v4, v1);
  }

  return sub_26A59F960();
}

uint64_t sub_26A523BD4()
{
  v0 = type metadata accessor for SummaryItemPairNumberV2View.Constants(0);
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_26A523458();
  result = sub_26A61B05C(v1, &unk_287B13248);
  if ((result & 1) == 0)
  {
    sub_26A4D7E10();
    switch(sub_26A63CD18(v3))
    {
      case 1u:
      case 2u:
      case 3u:
        v5 = sub_26A852598();

        if (v5)
        {
          goto LABEL_7;
        }

        goto LABEL_4;
      case 4u:
LABEL_4:
        switch(sub_26A63CD18(v4))
        {
          case 3u:
            goto LABEL_5;
          case 4u:
            break;
          default:
            v6 = sub_26A852598();

            if (v6)
            {
              goto LABEL_7;
            }

            break;
        }

        result = sub_26A523E4C();
        break;
      default:
LABEL_5:

LABEL_7:
        v7 = sub_26A523458();
        sub_26A61B05C(v7, &unk_287B131A0);
        sub_26A523A7C();
        result = sub_26A52E650();
        break;
    }
  }

  return result;
}

uint64_t sub_26A523E4C()
{
  v0 = type metadata accessor for SummaryItemPairNumberV2View.Constants(0);
  v1 = OUTLINED_FUNCTION_79(v0);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_52_1();
  MEMORY[0x28223BE20](v2);
  v3 = OUTLINED_FUNCTION_13_6();
  type metadata accessor for SummaryItemPairNumberV2View(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB9F8, &qword_26A85B130);
  sub_26A851058();
  sub_26A523A7C();
  sub_26A52E650();
  sub_26A523A7C();
  return sub_26A52E650();
}

void SummaryItemPairNumberV2View.init(number1:number2:text1:text2:text3:text4:text5:text6:text7:text8:text9:text10:thumbnail1:thumbnail2:button1:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  OUTLINED_FUNCTION_28_0();
  v28 = v27;
  v30 = v29;
  v78 = v31;
  v32 = type metadata accessor for SummaryItemPairNumberV2View(0);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_41();
  v36 = v35 - v34;
  *v36 = swift_getKeyPath();
  *(v36 + 8) = 0;
  *(v36 + 16) = swift_getKeyPath();
  *(v36 + 24) = 0;
  v37 = v32[6];
  *(v36 + v37) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190, &unk_26A854C50);
  swift_storeEnumTagMultiPayload();
  v38 = v32[7];
  *(v36 + v38) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8, &qword_26A857040);
  swift_storeEnumTagMultiPayload();
  v39 = (v36 + v32[8]);
  if (qword_28157E660 != -1)
  {
    OUTLINED_FUNCTION_3(&qword_28157E660);
  }

  v84 = xmmword_281588758;
  v85 = unk_281588768;
  v86 = xmmword_281588778;
  v87 = xmmword_281588788;
  v88 = xmmword_281588758;
  v89 = unk_281588768;
  v90 = xmmword_281588778;
  v91 = xmmword_281588788;
  v79 = xmmword_281588788;
  v80 = xmmword_281588778;
  sub_26A4EF6D0();
  v40 = sub_26A6AEE74(v92);
  OUTLINED_FUNCTION_84_0(v40, v92);
  v39[12] = v80;
  v39[13] = v79;
  v41 = v89;
  v39[14] = v88;
  v39[15] = v41;
  v42 = v91;
  v39[16] = v90;
  v39[17] = v42;
  v43 = v36 + v32[9];
  *v43 = swift_getKeyPath();
  *(v43 + 8) = 0;
  v44 = v36 + v32[10];
  *v44 = swift_getKeyPath();
  *(v44 + 8) = 0;
  v45 = v36 + v32[11];
  v83 = 0;
  sub_26A851048();
  OUTLINED_FUNCTION_65_0(*&v81[1], v81[0]);
  v46 = OUTLINED_FUNCTION_7_10(v30);
  *(v36 + v32[12]) = v47(v46);
  v48 = OUTLINED_FUNCTION_7_10(v28);
  *(v36 + v32[13]) = v49(v48);
  sub_26A4EF6D0();
  if (v82)
  {
    v50 = OUTLINED_FUNCTION_6_11();
    v51(v50);
    OUTLINED_FUNCTION_13_5();
  }

  else
  {
    sub_26A4D6FD8();
    v45 = 0;
  }

  *(v36 + v32[14]) = v45;
  sub_26A4EF6D0();
  if (v82)
  {
    v52 = OUTLINED_FUNCTION_6_11();
    v53(v52);
    OUTLINED_FUNCTION_13_5();
  }

  else
  {
    sub_26A4D6FD8();
    v45 = 0;
  }

  *(v36 + v32[15]) = v45;
  sub_26A4EF6D0();
  if (v82)
  {
    v54 = OUTLINED_FUNCTION_6_11();
    v55(v54);
    OUTLINED_FUNCTION_13_5();
  }

  else
  {
    sub_26A4D6FD8();
    v45 = 0;
  }

  *(v36 + v32[16]) = v45;
  sub_26A4EF6D0();
  if (v82)
  {
    v56 = OUTLINED_FUNCTION_6_11();
    v57(v56);
    OUTLINED_FUNCTION_13_5();
  }

  else
  {
    sub_26A4D6FD8();
    v45 = 0;
  }

  *(v36 + v32[17]) = v45;
  sub_26A4EF6D0();
  if (v82)
  {
    v58 = OUTLINED_FUNCTION_6_11();
    v59(v58);
    OUTLINED_FUNCTION_13_5();
  }

  else
  {
    sub_26A4D6FD8();
    v45 = 0;
  }

  *(v36 + v32[18]) = v45;
  sub_26A4EF6D0();
  if (v82)
  {
    v60 = OUTLINED_FUNCTION_6_11();
    v61(v60);
    OUTLINED_FUNCTION_13_5();
  }

  else
  {
    sub_26A4D6FD8();
    v45 = 0;
  }

  *(v36 + v32[19]) = v45;
  sub_26A4EF6D0();
  if (v82)
  {
    v62 = OUTLINED_FUNCTION_6_11();
    v63(v62);
    OUTLINED_FUNCTION_13_5();
  }

  else
  {
    sub_26A4D6FD8();
    v45 = 0;
  }

  *(v36 + v32[20]) = v45;
  sub_26A4EF6D0();
  if (v82)
  {
    v64 = OUTLINED_FUNCTION_6_11();
    v65(v64);
    OUTLINED_FUNCTION_13_5();
  }

  else
  {
    sub_26A4D6FD8();
    v45 = 0;
  }

  *(v36 + v32[21]) = v45;
  sub_26A4EF6D0();
  if (v82)
  {
    v66 = __swift_project_boxed_opaque_existential_1(v81, v82);
    v67 = OUTLINED_FUNCTION_58_1();
    v68(v67);
    OUTLINED_FUNCTION_13_5();
  }

  else
  {
    sub_26A4D6FD8();
    v66 = 0;
  }

  *(v36 + v32[22]) = v66;
  sub_26A4EF6D0();
  if (v82)
  {
    OUTLINED_FUNCTION_9_8(v81, v82);
    v69 = OUTLINED_FUNCTION_64_0();
    v70(v69);
    OUTLINED_FUNCTION_13_5();
  }

  else
  {
    sub_26A4D6FD8();
    v66 = 0;
  }

  *(v36 + v32[23]) = v66;
  sub_26A4EF6D0();
  if (v82)
  {
    OUTLINED_FUNCTION_9_8(v81, v82);
    v71 = OUTLINED_FUNCTION_64_0();
    v72(v71);
    OUTLINED_FUNCTION_13_5();
  }

  else
  {
    sub_26A4D6FD8();
    v66 = 0;
  }

  *(v36 + v32[24]) = v66;
  sub_26A4EF6D0();
  if (v82)
  {
    OUTLINED_FUNCTION_9_8(v81, v82);
    v73 = OUTLINED_FUNCTION_64_0();
    v74(v73);
    OUTLINED_FUNCTION_13_5();
  }

  else
  {
    sub_26A4D6FD8();
    v66 = 0;
  }

  *(v36 + v32[25]) = v66;
  sub_26A4EF6D0();
  if (v82)
  {
    OUTLINED_FUNCTION_9_8(v81, v82);
    v75 = OUTLINED_FUNCTION_64_0();
    v77 = v76(v75);
    OUTLINED_FUNCTION_37_2();
    OUTLINED_FUNCTION_37_2();
    OUTLINED_FUNCTION_37_2();
    OUTLINED_FUNCTION_37_2();
    OUTLINED_FUNCTION_37_2();
    OUTLINED_FUNCTION_37_2();
    OUTLINED_FUNCTION_37_2();
    OUTLINED_FUNCTION_37_2();
    OUTLINED_FUNCTION_37_2();
    OUTLINED_FUNCTION_37_2();
    OUTLINED_FUNCTION_37_2();
    OUTLINED_FUNCTION_37_2();
    OUTLINED_FUNCTION_37_2();
    __swift_destroy_boxed_opaque_existential_1(v81);
  }

  else
  {
    OUTLINED_FUNCTION_36_1();
    OUTLINED_FUNCTION_36_1();
    OUTLINED_FUNCTION_36_1();
    OUTLINED_FUNCTION_36_1();
    OUTLINED_FUNCTION_36_1();
    OUTLINED_FUNCTION_36_1();
    OUTLINED_FUNCTION_36_1();
    OUTLINED_FUNCTION_36_1();
    OUTLINED_FUNCTION_36_1();
    OUTLINED_FUNCTION_36_1();
    OUTLINED_FUNCTION_36_1();
    OUTLINED_FUNCTION_36_1();
    OUTLINED_FUNCTION_36_1();
    OUTLINED_FUNCTION_36_1();
    v77 = 0;
  }

  *(v36 + v32[26]) = v77;
  sub_26A52DBA4(v36, v78);
  __swift_destroy_boxed_opaque_existential_1(v28);
  __swift_destroy_boxed_opaque_existential_1(v30);
  OUTLINED_FUNCTION_27_0();
}

void SummaryItemPairNumberV2View.init(number1:number2:text1:text2:text3:text4:text5:text6:text7:text8:text9:thumbnail1:thumbnail2:button1:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_28_0();
  v79 = v26;
  v28 = v27;
  v30 = v29;
  v31 = type metadata accessor for SummaryItemPairNumberV2View(0);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_41();
  v35 = v34 - v33;
  v78 = v30;
  sub_26A50429C(v30, v87);
  sub_26A50429C(v28, v86);
  OUTLINED_FUNCTION_46_1();
  OUTLINED_FUNCTION_46_1();
  OUTLINED_FUNCTION_46_1();
  OUTLINED_FUNCTION_46_1();
  OUTLINED_FUNCTION_46_1();
  OUTLINED_FUNCTION_46_1();
  OUTLINED_FUNCTION_46_1();
  OUTLINED_FUNCTION_46_1();
  OUTLINED_FUNCTION_46_1();
  v85 = 0;
  v83 = 0u;
  v84 = 0u;
  OUTLINED_FUNCTION_46_1();
  OUTLINED_FUNCTION_46_1();
  OUTLINED_FUNCTION_46_1();
  *v35 = swift_getKeyPath();
  *(v35 + 8) = 0;
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_51_1(KeyPath);
  *(&qword_2803A91B8 + v35) = swift_getKeyPath();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190, &unk_26A854C50);
  OUTLINED_FUNCTION_25_3(v37);
  v38 = v31[7];
  *(v35 + v38) = swift_getKeyPath();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8, &qword_26A857040);
  OUTLINED_FUNCTION_25_3(v39);
  v40 = (v35 + v31[8]);
  if (qword_28157E660 != -1)
  {
    OUTLINED_FUNCTION_3(&qword_28157E660);
  }

  v88 = xmmword_281588758;
  v89 = unk_281588768;
  v90 = xmmword_281588778;
  v91 = xmmword_281588788;
  v92 = xmmword_281588758;
  v93 = unk_281588768;
  v94 = xmmword_281588778;
  v95 = xmmword_281588788;
  v76 = xmmword_281588788;
  v77 = xmmword_281588778;
  sub_26A4EF6D0();
  v41 = sub_26A6AEE74(v96);
  OUTLINED_FUNCTION_84_0(v41, v96);
  v40[12] = v77;
  v40[13] = v76;
  v42 = v93;
  v40[14] = v92;
  v40[15] = v42;
  OUTLINED_FUNCTION_53_1(v94, v95);
  v43 = swift_getKeyPath();
  OUTLINED_FUNCTION_24_3(v43);
  v44 = swift_getKeyPath();
  OUTLINED_FUNCTION_23_2(v44);
  v82 = 0;
  sub_26A851048();
  OUTLINED_FUNCTION_65_0(*&v80[1], v80[0]);
  v45 = OUTLINED_FUNCTION_5_10(v87);
  *(v35 + v31[12]) = v46(v45);
  v47 = OUTLINED_FUNCTION_5_10(v86);
  *(v35 + v31[13]) = v48(v47);
  sub_26A4EF6D0();
  if (v81)
  {
    v49 = OUTLINED_FUNCTION_1_13();
    v50(v49);
    OUTLINED_FUNCTION_24_0();
  }

  else
  {
    sub_26A4D6FD8();
    v40 = 0;
  }

  *(v35 + v31[14]) = v40;
  sub_26A4EF6D0();
  if (v81)
  {
    v51 = OUTLINED_FUNCTION_1_13();
    v52(v51);
    OUTLINED_FUNCTION_24_0();
  }

  else
  {
    sub_26A4D6FD8();
    v40 = 0;
  }

  *(v35 + v31[15]) = v40;
  sub_26A4EF6D0();
  if (v81)
  {
    v53 = OUTLINED_FUNCTION_1_13();
    v54(v53);
    OUTLINED_FUNCTION_24_0();
  }

  else
  {
    sub_26A4D6FD8();
    v40 = 0;
  }

  *(v35 + v31[16]) = v40;
  sub_26A4EF6D0();
  if (v81)
  {
    v55 = OUTLINED_FUNCTION_1_13();
    v56(v55);
    OUTLINED_FUNCTION_24_0();
  }

  else
  {
    sub_26A4D6FD8();
    v40 = 0;
  }

  *(v35 + v31[17]) = v40;
  sub_26A4EF6D0();
  if (v81)
  {
    v57 = OUTLINED_FUNCTION_1_13();
    v58(v57);
    OUTLINED_FUNCTION_24_0();
  }

  else
  {
    sub_26A4D6FD8();
    v40 = 0;
  }

  *(v35 + v31[18]) = v40;
  sub_26A4EF6D0();
  if (v81)
  {
    v59 = OUTLINED_FUNCTION_1_13();
    v60(v59);
    OUTLINED_FUNCTION_24_0();
  }

  else
  {
    sub_26A4D6FD8();
    v40 = 0;
  }

  *(v35 + v31[19]) = v40;
  sub_26A4EF6D0();
  if (v81)
  {
    v61 = OUTLINED_FUNCTION_1_13();
    v62(v61);
    OUTLINED_FUNCTION_24_0();
  }

  else
  {
    sub_26A4D6FD8();
    v40 = 0;
  }

  *(v35 + v31[20]) = v40;
  sub_26A4EF6D0();
  if (v81)
  {
    v63 = OUTLINED_FUNCTION_1_13();
    v64(v63);
    OUTLINED_FUNCTION_24_0();
  }

  else
  {
    sub_26A4D6FD8();
    v40 = 0;
  }

  *(v35 + v31[21]) = v40;
  sub_26A4EF6D0();
  if (v81)
  {
    v65 = OUTLINED_FUNCTION_1_13();
    v66(v65);
    OUTLINED_FUNCTION_24_0();
  }

  else
  {
    sub_26A4D6FD8();
    v40 = 0;
  }

  *(v35 + v31[22]) = v40;
  sub_26A4EF6D0();
  if (v81)
  {
    v67 = OUTLINED_FUNCTION_1_13();
    v68(v67);
    OUTLINED_FUNCTION_24_0();
  }

  else
  {
    sub_26A4D6FD8();
    v40 = 0;
  }

  *(v35 + v31[23]) = v40;
  sub_26A4EF6D0();
  if (v81)
  {
    v69 = OUTLINED_FUNCTION_1_13();
    v70(v69);
    OUTLINED_FUNCTION_24_0();
  }

  else
  {
    sub_26A4D6FD8();
    v40 = 0;
  }

  *(v35 + v31[24]) = v40;
  sub_26A4EF6D0();
  if (v81)
  {
    v71 = OUTLINED_FUNCTION_1_13();
    v72(v71);
    OUTLINED_FUNCTION_24_0();
  }

  else
  {
    sub_26A4D6FD8();
    v40 = 0;
  }

  *(v35 + v31[25]) = v40;
  sub_26A4EF6D0();
  if (v81)
  {
    v73 = OUTLINED_FUNCTION_1_13();
    v74(v73);
    OUTLINED_FUNCTION_31_1();
    OUTLINED_FUNCTION_31_1();
    OUTLINED_FUNCTION_31_1();
    OUTLINED_FUNCTION_31_1();
    OUTLINED_FUNCTION_31_1();
    OUTLINED_FUNCTION_31_1();
    OUTLINED_FUNCTION_31_1();
    OUTLINED_FUNCTION_31_1();
    OUTLINED_FUNCTION_31_1();
    OUTLINED_FUNCTION_31_1();
    OUTLINED_FUNCTION_31_1();
    OUTLINED_FUNCTION_31_1();
    __swift_destroy_boxed_opaque_existential_1(v28);
    __swift_destroy_boxed_opaque_existential_1(v78);
    OUTLINED_FUNCTION_31_1();
    OUTLINED_FUNCTION_31_1();
    OUTLINED_FUNCTION_31_1();
    OUTLINED_FUNCTION_31_1();
    OUTLINED_FUNCTION_31_1();
    OUTLINED_FUNCTION_31_1();
    OUTLINED_FUNCTION_31_1();
    OUTLINED_FUNCTION_31_1();
    OUTLINED_FUNCTION_31_1();
    OUTLINED_FUNCTION_31_1();
    OUTLINED_FUNCTION_31_1();
    OUTLINED_FUNCTION_31_1();
    OUTLINED_FUNCTION_31_1();
    __swift_destroy_boxed_opaque_existential_1(v80);
  }

  else
  {
    OUTLINED_FUNCTION_29_2();
    OUTLINED_FUNCTION_29_2();
    OUTLINED_FUNCTION_29_2();
    OUTLINED_FUNCTION_29_2();
    OUTLINED_FUNCTION_29_2();
    OUTLINED_FUNCTION_29_2();
    OUTLINED_FUNCTION_29_2();
    OUTLINED_FUNCTION_29_2();
    OUTLINED_FUNCTION_29_2();
    OUTLINED_FUNCTION_29_2();
    OUTLINED_FUNCTION_29_2();
    OUTLINED_FUNCTION_29_2();
    __swift_destroy_boxed_opaque_existential_1(v28);
    __swift_destroy_boxed_opaque_existential_1(v78);
    OUTLINED_FUNCTION_29_2();
    OUTLINED_FUNCTION_29_2();
    OUTLINED_FUNCTION_29_2();
    OUTLINED_FUNCTION_29_2();
    OUTLINED_FUNCTION_29_2();
    OUTLINED_FUNCTION_29_2();
    OUTLINED_FUNCTION_29_2();
    OUTLINED_FUNCTION_29_2();
    OUTLINED_FUNCTION_29_2();
    OUTLINED_FUNCTION_29_2();
    OUTLINED_FUNCTION_29_2();
    OUTLINED_FUNCTION_29_2();
    OUTLINED_FUNCTION_29_2();
    OUTLINED_FUNCTION_29_2();
  }

  v75 = OUTLINED_FUNCTION_54_1();
  sub_26A52DBA4(v75, v79);
  __swift_destroy_boxed_opaque_existential_1(v86);
  __swift_destroy_boxed_opaque_existential_1(v87);
  OUTLINED_FUNCTION_27_0();
}

void SummaryItemPairNumberV2View.init(number1:number2:text1:text2:text3:text4:text5:text6:text7:thumbnail1:thumbnail2:button1:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_28_0();
  v76 = v24;
  v26 = v25;
  v28 = v27;
  v29 = type metadata accessor for SummaryItemPairNumberV2View(0);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_41();
  v33 = v32 - v31;
  sub_26A50429C(v28, v90);
  sub_26A50429C(v26, v89);
  OUTLINED_FUNCTION_50_1();
  OUTLINED_FUNCTION_50_1();
  OUTLINED_FUNCTION_50_1();
  OUTLINED_FUNCTION_50_1();
  OUTLINED_FUNCTION_50_1();
  OUTLINED_FUNCTION_50_1();
  OUTLINED_FUNCTION_50_1();
  v88 = 0;
  v86 = 0u;
  v87 = 0u;
  v85 = 0;
  v83 = 0u;
  v84 = 0u;
  v82 = 0;
  v80 = 0u;
  v81 = 0u;
  OUTLINED_FUNCTION_50_1();
  OUTLINED_FUNCTION_50_1();
  OUTLINED_FUNCTION_50_1();
  *v33 = swift_getKeyPath();
  *(v33 + 8) = 0;
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_51_1(KeyPath);
  *(&qword_2803A91B8 + v33) = swift_getKeyPath();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190, &unk_26A854C50);
  OUTLINED_FUNCTION_25_3(v35);
  v36 = v29[7];
  *(v33 + v36) = swift_getKeyPath();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8, &qword_26A857040);
  OUTLINED_FUNCTION_25_3(v37);
  v38 = (v33 + v29[8]);
  if (qword_28157E660 != -1)
  {
    OUTLINED_FUNCTION_3(&qword_28157E660);
  }

  v91 = xmmword_281588758;
  v92 = unk_281588768;
  v93 = xmmword_281588778;
  v94 = xmmword_281588788;
  v95 = xmmword_281588758;
  v96 = unk_281588768;
  v97 = xmmword_281588778;
  v98 = xmmword_281588788;
  v74 = xmmword_281588788;
  v75 = xmmword_281588778;
  sub_26A4EF6D0();
  v39 = sub_26A6AEE74(v99);
  OUTLINED_FUNCTION_84_0(v39, v99);
  v38[12] = v75;
  v38[13] = v74;
  v40 = v96;
  v38[14] = v95;
  v38[15] = v40;
  OUTLINED_FUNCTION_53_1(v97, v98);
  v41 = swift_getKeyPath();
  OUTLINED_FUNCTION_24_3(v41);
  v42 = swift_getKeyPath();
  OUTLINED_FUNCTION_23_2(v42);
  v79 = 0;
  sub_26A851048();
  OUTLINED_FUNCTION_65_0(*&v77[1], v77[0]);
  v43 = OUTLINED_FUNCTION_3_9(v90);
  *(v33 + v29[12]) = v44(v43);
  v45 = OUTLINED_FUNCTION_3_9(v89);
  *(v33 + v29[13]) = v46(v45);
  sub_26A4EF6D0();
  if (v78)
  {
    v47 = OUTLINED_FUNCTION_2_10();
    v48(v47);
    OUTLINED_FUNCTION_41_3();
  }

  else
  {
    sub_26A4D6FD8();
    v38 = 0;
  }

  *(v33 + v29[14]) = v38;
  sub_26A4EF6D0();
  if (v78)
  {
    v49 = OUTLINED_FUNCTION_2_10();
    v50(v49);
    OUTLINED_FUNCTION_41_3();
  }

  else
  {
    sub_26A4D6FD8();
    v38 = 0;
  }

  *(v33 + v29[15]) = v38;
  sub_26A4EF6D0();
  if (v78)
  {
    v51 = OUTLINED_FUNCTION_2_10();
    v52(v51);
    OUTLINED_FUNCTION_41_3();
  }

  else
  {
    sub_26A4D6FD8();
    v38 = 0;
  }

  *(v33 + v29[16]) = v38;
  sub_26A4EF6D0();
  if (v78)
  {
    v53 = OUTLINED_FUNCTION_2_10();
    v54(v53);
    OUTLINED_FUNCTION_41_3();
  }

  else
  {
    sub_26A4D6FD8();
    v38 = 0;
  }

  *(v33 + v29[17]) = v38;
  sub_26A4EF6D0();
  if (v78)
  {
    v55 = OUTLINED_FUNCTION_2_10();
    v56(v55);
    OUTLINED_FUNCTION_41_3();
  }

  else
  {
    sub_26A4D6FD8();
    v38 = 0;
  }

  *(v33 + v29[18]) = v38;
  sub_26A4EF6D0();
  if (v78)
  {
    v57 = OUTLINED_FUNCTION_2_10();
    v58(v57);
    OUTLINED_FUNCTION_41_3();
  }

  else
  {
    sub_26A4D6FD8();
    v38 = 0;
  }

  *(v33 + v29[19]) = v38;
  sub_26A4EF6D0();
  if (v78)
  {
    v59 = OUTLINED_FUNCTION_2_10();
    v60(v59);
    OUTLINED_FUNCTION_41_3();
  }

  else
  {
    sub_26A4D6FD8();
    v38 = 0;
  }

  *(v33 + v29[20]) = v38;
  sub_26A4EF6D0();
  if (v78)
  {
    v61 = OUTLINED_FUNCTION_2_10();
    v62(v61);
    OUTLINED_FUNCTION_41_3();
  }

  else
  {
    sub_26A4D6FD8();
    v38 = 0;
  }

  *(v33 + v29[21]) = v38;
  sub_26A4EF6D0();
  if (v78)
  {
    v63 = OUTLINED_FUNCTION_2_10();
    v64(v63);
    OUTLINED_FUNCTION_41_3();
  }

  else
  {
    sub_26A4D6FD8();
    v38 = 0;
  }

  *(v33 + v29[22]) = v38;
  sub_26A4EF6D0();
  if (v78)
  {
    v65 = OUTLINED_FUNCTION_2_10();
    v66(v65);
    OUTLINED_FUNCTION_41_3();
  }

  else
  {
    sub_26A4D6FD8();
    v38 = 0;
  }

  *(v33 + v29[23]) = v38;
  sub_26A4EF6D0();
  if (v78)
  {
    v67 = OUTLINED_FUNCTION_2_10();
    v68(v67);
    OUTLINED_FUNCTION_41_3();
  }

  else
  {
    sub_26A4D6FD8();
    v38 = 0;
  }

  *(v33 + v29[24]) = v38;
  sub_26A4EF6D0();
  if (v78)
  {
    v69 = OUTLINED_FUNCTION_2_10();
    v70(v69);
    OUTLINED_FUNCTION_41_3();
  }

  else
  {
    sub_26A4D6FD8();
    v38 = 0;
  }

  *(v33 + v29[25]) = v38;
  sub_26A4EF6D0();
  if (v78)
  {
    v71 = OUTLINED_FUNCTION_2_10();
    v72(v71);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_71_0();
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
    __swift_destroy_boxed_opaque_existential_1(v77);
  }

  else
  {
    OUTLINED_FUNCTION_30_1();
    OUTLINED_FUNCTION_30_1();
    OUTLINED_FUNCTION_30_1();
    OUTLINED_FUNCTION_30_1();
    OUTLINED_FUNCTION_30_1();
    OUTLINED_FUNCTION_30_1();
    OUTLINED_FUNCTION_30_1();
    OUTLINED_FUNCTION_30_1();
    OUTLINED_FUNCTION_30_1();
    OUTLINED_FUNCTION_30_1();
    OUTLINED_FUNCTION_71_0();
    OUTLINED_FUNCTION_30_1();
    OUTLINED_FUNCTION_30_1();
    OUTLINED_FUNCTION_30_1();
    OUTLINED_FUNCTION_30_1();
    OUTLINED_FUNCTION_30_1();
    OUTLINED_FUNCTION_30_1();
    OUTLINED_FUNCTION_30_1();
    OUTLINED_FUNCTION_30_1();
    OUTLINED_FUNCTION_30_1();
    OUTLINED_FUNCTION_30_1();
    OUTLINED_FUNCTION_30_1();
    OUTLINED_FUNCTION_30_1();
    OUTLINED_FUNCTION_30_1();
    OUTLINED_FUNCTION_30_1();
  }

  v73 = OUTLINED_FUNCTION_54_1();
  sub_26A52DBA4(v73, v76);
  __swift_destroy_boxed_opaque_existential_1(v89);
  __swift_destroy_boxed_opaque_existential_1(v90);
  OUTLINED_FUNCTION_27_0();
}

void SummaryItemPairNumberV2View.init(number1:number2:text1:text2:text3:text4:text5:thumbnail1:thumbnail2:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_28_0();
  v22 = v21;
  v24 = v23;
  v73 = v25;
  v26 = type metadata accessor for SummaryItemPairNumberV2View(0);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_41();
  v30 = v29 - v28;
  sub_26A50429C(v24, v96);
  sub_26A50429C(v22, v95);
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_62_0();
  v94 = 0;
  v92 = 0u;
  v93 = 0u;
  v91 = 0;
  v89 = 0u;
  v90 = 0u;
  v88 = 0;
  v86 = 0u;
  v87 = 0u;
  v85 = 0;
  v83 = 0u;
  v84 = 0u;
  v82 = 0;
  v80 = 0u;
  v81 = 0u;
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_62_0();
  v79 = 0;
  v77 = 0u;
  v78 = 0u;
  *v30 = swift_getKeyPath();
  *(v30 + 8) = 0;
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_51_1(KeyPath);
  *(&qword_2803A91B8 + v30) = swift_getKeyPath();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190, &unk_26A854C50);
  OUTLINED_FUNCTION_25_3(v32);
  v33 = v26[7];
  *(v30 + v33) = swift_getKeyPath();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8, &qword_26A857040);
  OUTLINED_FUNCTION_25_3(v34);
  v35 = (v30 + v26[8]);
  if (qword_28157E660 != -1)
  {
    OUTLINED_FUNCTION_3(&qword_28157E660);
  }

  v97 = xmmword_281588758;
  v98 = unk_281588768;
  v99 = xmmword_281588778;
  v100 = xmmword_281588788;
  v101 = xmmword_281588758;
  v102 = unk_281588768;
  v103 = xmmword_281588778;
  v104 = xmmword_281588788;
  v71 = xmmword_281588788;
  v72 = xmmword_281588778;
  sub_26A4EF6D0();
  v36 = sub_26A6AEE74(v105);
  OUTLINED_FUNCTION_84_0(v36, v105);
  v35[12] = v72;
  v35[13] = v71;
  v37 = v102;
  v35[14] = v101;
  v35[15] = v37;
  OUTLINED_FUNCTION_53_1(v103, v104);
  v38 = swift_getKeyPath();
  OUTLINED_FUNCTION_24_3(v38);
  v39 = swift_getKeyPath();
  OUTLINED_FUNCTION_23_2(v39);
  v76 = 0;
  sub_26A851048();
  OUTLINED_FUNCTION_65_0(*&v74[1], v74[0]);
  v40 = OUTLINED_FUNCTION_4_9(v96);
  *(v30 + v26[12]) = v41(v40);
  v42 = OUTLINED_FUNCTION_4_9(v95);
  *(v30 + v26[13]) = v43(v42);
  sub_26A4EF6D0();
  if (v75)
  {
    v44 = OUTLINED_FUNCTION_0_15();
    v45(v44);
    OUTLINED_FUNCTION_42_1();
  }

  else
  {
    sub_26A4D6FD8();
    v35 = 0;
  }

  *(v30 + v26[14]) = v35;
  sub_26A4EF6D0();
  if (v75)
  {
    v46 = OUTLINED_FUNCTION_0_15();
    v47(v46);
    OUTLINED_FUNCTION_42_1();
  }

  else
  {
    sub_26A4D6FD8();
    v35 = 0;
  }

  *(v30 + v26[15]) = v35;
  sub_26A4EF6D0();
  if (v75)
  {
    v48 = OUTLINED_FUNCTION_0_15();
    v49(v48);
    OUTLINED_FUNCTION_42_1();
  }

  else
  {
    sub_26A4D6FD8();
    v35 = 0;
  }

  *(v30 + v26[16]) = v35;
  sub_26A4EF6D0();
  if (v75)
  {
    v50 = OUTLINED_FUNCTION_0_15();
    v51(v50);
    OUTLINED_FUNCTION_42_1();
  }

  else
  {
    sub_26A4D6FD8();
    v35 = 0;
  }

  *(v30 + v26[17]) = v35;
  sub_26A4EF6D0();
  if (v75)
  {
    v52 = OUTLINED_FUNCTION_0_15();
    v53(v52);
    OUTLINED_FUNCTION_42_1();
  }

  else
  {
    sub_26A4D6FD8();
    v35 = 0;
  }

  *(v30 + v26[18]) = v35;
  sub_26A4EF6D0();
  if (v75)
  {
    v54 = OUTLINED_FUNCTION_0_15();
    v55(v54);
    OUTLINED_FUNCTION_42_1();
  }

  else
  {
    sub_26A4D6FD8();
    v35 = 0;
  }

  *(v30 + v26[19]) = v35;
  sub_26A4EF6D0();
  if (v75)
  {
    v56 = OUTLINED_FUNCTION_0_15();
    v57(v56);
    OUTLINED_FUNCTION_42_1();
  }

  else
  {
    sub_26A4D6FD8();
    v35 = 0;
  }

  *(v30 + v26[20]) = v35;
  sub_26A4EF6D0();
  if (v75)
  {
    v58 = OUTLINED_FUNCTION_0_15();
    v59(v58);
    OUTLINED_FUNCTION_42_1();
  }

  else
  {
    sub_26A4D6FD8();
    v35 = 0;
  }

  *(v30 + v26[21]) = v35;
  sub_26A4EF6D0();
  if (v75)
  {
    v60 = OUTLINED_FUNCTION_0_15();
    v61(v60);
    OUTLINED_FUNCTION_42_1();
  }

  else
  {
    sub_26A4D6FD8();
    v35 = 0;
  }

  *(v30 + v26[22]) = v35;
  sub_26A4EF6D0();
  if (v75)
  {
    v62 = OUTLINED_FUNCTION_0_15();
    v63(v62);
    OUTLINED_FUNCTION_42_1();
  }

  else
  {
    sub_26A4D6FD8();
    v35 = 0;
  }

  *(v30 + v26[23]) = v35;
  sub_26A4EF6D0();
  if (v75)
  {
    v64 = OUTLINED_FUNCTION_0_15();
    v65(v64);
    OUTLINED_FUNCTION_42_1();
  }

  else
  {
    sub_26A4D6FD8();
    v35 = 0;
  }

  *(v30 + v26[24]) = v35;
  sub_26A4EF6D0();
  if (v75)
  {
    v66 = OUTLINED_FUNCTION_0_15();
    v67(v66);
    OUTLINED_FUNCTION_42_1();
  }

  else
  {
    sub_26A4D6FD8();
    v35 = 0;
  }

  *(v30 + v26[25]) = v35;
  sub_26A4EF6D0();
  if (v75)
  {
    v68 = OUTLINED_FUNCTION_0_15();
    v69(v68);
    OUTLINED_FUNCTION_35_2();
    OUTLINED_FUNCTION_35_2();
    OUTLINED_FUNCTION_35_2();
    OUTLINED_FUNCTION_35_2();
    OUTLINED_FUNCTION_35_2();
    OUTLINED_FUNCTION_35_2();
    OUTLINED_FUNCTION_35_2();
    OUTLINED_FUNCTION_71_0();
    OUTLINED_FUNCTION_35_2();
    OUTLINED_FUNCTION_35_2();
    OUTLINED_FUNCTION_35_2();
    OUTLINED_FUNCTION_35_2();
    OUTLINED_FUNCTION_35_2();
    OUTLINED_FUNCTION_35_2();
    OUTLINED_FUNCTION_35_2();
    OUTLINED_FUNCTION_35_2();
    OUTLINED_FUNCTION_35_2();
    OUTLINED_FUNCTION_35_2();
    OUTLINED_FUNCTION_35_2();
    OUTLINED_FUNCTION_35_2();
    OUTLINED_FUNCTION_35_2();
    __swift_destroy_boxed_opaque_existential_1(v74);
  }

  else
  {
    OUTLINED_FUNCTION_34_1();
    OUTLINED_FUNCTION_34_1();
    OUTLINED_FUNCTION_34_1();
    OUTLINED_FUNCTION_34_1();
    OUTLINED_FUNCTION_34_1();
    OUTLINED_FUNCTION_34_1();
    OUTLINED_FUNCTION_34_1();
    OUTLINED_FUNCTION_71_0();
    OUTLINED_FUNCTION_34_1();
    OUTLINED_FUNCTION_34_1();
    OUTLINED_FUNCTION_34_1();
    OUTLINED_FUNCTION_34_1();
    OUTLINED_FUNCTION_34_1();
    OUTLINED_FUNCTION_34_1();
    OUTLINED_FUNCTION_34_1();
    OUTLINED_FUNCTION_34_1();
    OUTLINED_FUNCTION_34_1();
    OUTLINED_FUNCTION_34_1();
    OUTLINED_FUNCTION_34_1();
    OUTLINED_FUNCTION_34_1();
    OUTLINED_FUNCTION_34_1();
    OUTLINED_FUNCTION_34_1();
  }

  v70 = OUTLINED_FUNCTION_54_1();
  sub_26A52DBA4(v70, v73);
  __swift_destroy_boxed_opaque_existential_1(v95);
  __swift_destroy_boxed_opaque_existential_1(v96);
  OUTLINED_FUNCTION_27_0();
}

uint64_t SummaryItemPairNumberV2View.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C0, &unk_26A854CB0);
  OUTLINED_FUNCTION_79(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v4);
  v6 = &v21[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C8, &unk_26A856820);
  OUTLINED_FUNCTION_79(v7);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_74_0();
  sub_26A52368C();
  sub_26A5267E0(v23);
  sub_26A523458();
  sub_26A523874(v6);
  sub_26A84F3A8();
  OUTLINED_FUNCTION_22_0();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  v22 = v1;
  sub_26A4C6EB8();
  v13 = swift_allocObject();
  *(v13 + 16) = sub_26A68CCBC;
  *(v13 + 24) = 0;
  v14 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC370, &unk_26A85ACB8) + 36);
  *(v14 + 16) = swift_getKeyPath();
  *(v14 + 24) = 0;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91D8, &qword_26A8575D0);
  v16 = *(v15 + 40);
  *(v14 + v16) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190, &unk_26A854C50);
  swift_storeEnumTagMultiPayload();
  v17 = v14 + *(v15 + 44);
  *v17 = swift_getKeyPath();
  *(v17 + 8) = 0;
  *v14 = sub_26A4D1F7C;
  *(v14 + 8) = v13;
  *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC378, &qword_26A85ACF0) + 36)) = 40;
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC380, &qword_26A85AD20);
  v20 = a1 + *(result + 36);
  *v20 = KeyPath;
  *(v20 + 8) = 1;
  return result;
}

uint64_t sub_26A5267E0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26A523458();
  result = sub_26A61B05C(v3, &unk_287B13090);
  v5 = 0.0;
  if ((result & 1) == 0)
  {
    goto LABEL_6;
  }

  if (qword_2803A8BF0 != -1)
  {
    result = swift_once();
  }

  if (byte_2803B0440 == 1)
  {
    result = type metadata accessor for SummaryItemPairNumberV2View(0);
    v6 = 0;
    v7 = v1 + *(result + 32);
    v8 = *(v7 + 192);
    v9 = *(v7 + 208);
    v5 = *(v7 + 200) + 10.0;
    v10 = *(v7 + 216) + 10.0;
  }

  else
  {
LABEL_6:
    v8 = 0;
    v9 = 0;
    v6 = 1;
    v10 = 0.0;
  }

  *a1 = v8;
  *(a1 + 8) = v5;
  *(a1 + 16) = v9;
  *(a1 + 24) = v10;
  *(a1 + 32) = v6;
  return result;
}

uint64_t sub_26A5268B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA200, &qword_26A85AE60);
  MEMORY[0x28223BE20](v35);
  v31[0] = v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v31[1] = v31 - v5;
  v32 = sub_26A84F3A8();
  v6 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v8 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC3F0, &qword_26A85AE68);
  MEMORY[0x28223BE20](v36);
  v33 = v31 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC3F8, &unk_26A85AE70);
  MEMORY[0x28223BE20](v10);
  v12 = v31 - v11;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA1E0, &qword_26A855DC8);
  MEMORY[0x28223BE20](v34);
  v13 = type metadata accessor for SummaryItemPairNumberV2View.Constants(0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA1F0, &unk_26A855DD0);
  MEMORY[0x28223BE20](v16);
  v18 = v31 - v17;
  v19 = sub_26A523458();
  if (sub_26A61B05C(v19, &unk_287B13068))
  {
    v20 = sub_26A84FA78();
    sub_26A523A7C();
    v21 = *(v15 + 5);
    sub_26A52E650();
    *v18 = v20;
    *(v18 + 1) = v21;
    v18[16] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC408, &unk_26A85AE88);
    sub_26A529F1C(a1);
    sub_26A4EF6D0();
    swift_storeEnumTagMultiPayload();
    sub_26A52EF88();
    sub_26A4D5738();
    sub_26A84FDF8();
    sub_26A4EF6D0();
    swift_storeEnumTagMultiPayload();
    sub_26A4D73C4();
    sub_26A52EF88();
    sub_26A84FDF8();
    sub_26A4D6FD8();
  }

  else
  {
    sub_26A523874(v8);
    v22 = sub_26A84F388();
    (*(v6 + 8))(v8, v32);
    if (v22)
    {
      sub_26A527090(__src);
      memcpy(v12, __src, 0x68uLL);
      swift_storeEnumTagMultiPayload();
      sub_26A52E318(__src, v38);
      sub_26A52EF88();
      sub_26A4D5738();
      sub_26A84FDF8();
      sub_26A4EF6D0();
      swift_storeEnumTagMultiPayload();
      sub_26A4D73C4();
      sub_26A52EF88();
      sub_26A84FDF8();
      sub_26A52E374(__src);
    }

    else
    {
      v23 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ABEA8, &qword_26A859E10);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_26A8570F0;
      v25 = sub_26A850208();
      *(inited + 32) = v25;
      v26 = sub_26A850228();
      *(inited + 33) = v26;
      v27 = sub_26A850218();
      sub_26A850218();
      if (sub_26A850218() != v25)
      {
        v27 = sub_26A850218();
      }

      sub_26A850218();
      if (sub_26A850218() != v26)
      {
        v27 = sub_26A850218();
      }

      v28 = v31[0];
      *v31[0] = v27;
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC400, &qword_26A85AE80);
      sub_26A527D70(v23, v28 + *(v29 + 44));
      sub_26A4EF020();
      sub_26A4EF6D0();
      swift_storeEnumTagMultiPayload();
      sub_26A4D73C4();
      sub_26A52EF88();
      sub_26A84FDF8();
    }
  }

  return sub_26A4D6FD8();
}

uint64_t sub_26A527090@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for SummaryItemPairNumberV2View(0);
  v3 = *(v1 + v2[16]);
  v90 = v3;
  if (v3)
  {
    v3 = &protocol witness table for AnyView;
    v4 = MEMORY[0x277CE11C8];
    v5 = v90;
  }

  else
  {
    v5 = 0;
    v4 = 0;
    v152 = 0;
    v153 = 0;
  }

  v151 = v5;
  v154 = v4;
  v155 = v3;
  if (*(v1 + v2[17]))
  {
    v6 = &protocol witness table for AnyView;
    v7 = MEMORY[0x277CE11C8];
    v8 = *(v1 + v2[17]);
  }

  else
  {
    v8 = 0;
    v7 = 0;
    v6 = 0;
    v147 = 0;
    v148 = 0;
  }

  v146 = v8;
  v149 = v7;
  v150 = v6;
  if (*(v1 + v2[18]))
  {
    v9 = &protocol witness table for AnyView;
    v10 = MEMORY[0x277CE11C8];
    v11 = *(v1 + v2[18]);
  }

  else
  {
    v11 = 0;
    v10 = 0;
    v9 = 0;
    v142 = 0;
    v143 = 0;
  }

  v141 = v11;
  v144 = v10;
  v145 = v9;
  if (*(v1 + v2[21]))
  {
    v12 = &protocol witness table for AnyView;
    v13 = MEMORY[0x277CE11C8];
    v14 = *(v1 + v2[21]);
  }

  else
  {
    v14 = 0;
    v13 = 0;
    v12 = 0;
    v137 = 0;
    v138 = 0;
  }

  v136 = v14;
  v139 = v13;
  v140 = v12;
  if (*(v1 + v2[22]))
  {
    v15 = &protocol witness table for AnyView;
    v16 = MEMORY[0x277CE11C8];
    v17 = *(v1 + v2[22]);
  }

  else
  {
    v17 = 0;
    v16 = 0;
    v15 = 0;
    v132 = 0;
    v133 = 0;
  }

  v131 = v17;
  v134 = v16;
  v135 = v15;
  v18 = v2[24];
  if (*(v1 + v18))
  {
    v19 = &protocol witness table for AnyView;
    v20 = MEMORY[0x277CE11C8];
    v21 = *(v1 + v18);
  }

  else
  {
    v21 = 0;
    v20 = 0;
    v19 = 0;
    v127 = 0;
    v128 = 0;
  }

  v126 = v21;
  v129 = v20;
  v130 = v19;
  if (*(v1 + v2[25]))
  {
    v22 = &protocol witness table for AnyView;
    v23 = MEMORY[0x277CE11C8];
    v24 = *(v1 + v2[25]);
  }

  else
  {
    v24 = 0;
    v23 = 0;
    v22 = 0;
    v122 = 0;
    v123 = 0;
  }

  v120 = &protocol witness table for AnyView;
  v121 = v24;
  v124 = v23;
  v125 = v22;
  v25 = *(v1 + v2[12]);
  v119 = MEMORY[0x277CE11C8];
  v118 = v25;
  if (*(v1 + v2[14]))
  {
    v26 = &protocol witness table for AnyView;
    v27 = MEMORY[0x277CE11C8];
    v28 = *(v1 + v2[14]);
  }

  else
  {
    v28 = 0;
    v27 = 0;
    v26 = 0;
    v114 = 0;
    v115 = 0;
  }

  v113 = v28;
  v116 = v27;
  v117 = v26;
  v29 = *(v1 + v2[19]);
  if (v29)
  {
    v30 = &protocol witness table for AnyView;
    v31 = MEMORY[0x277CE11C8];
  }

  else
  {
    v31 = 0;
    v30 = 0;
    v109 = 0;
    v110 = 0;
  }

  v107 = &protocol witness table for AnyView;
  v108 = v29;
  v111 = v31;
  v112 = v30;
  v32 = *(v1 + v2[13]);
  v106 = MEMORY[0x277CE11C8];
  v105 = v32;
  v33 = *(v1 + v2[15]);
  if (v33)
  {
    v34 = &protocol witness table for AnyView;
    v35 = MEMORY[0x277CE11C8];
  }

  else
  {
    v35 = 0;
    v34 = 0;
    v101 = 0;
    v102 = 0;
  }

  v100 = v33;
  v103 = v35;
  v104 = v34;
  v36 = *(v1 + v2[20]);
  if (v36)
  {
    v37 = &protocol witness table for AnyView;
    v38 = MEMORY[0x277CE11C8];
    v39 = v36;
  }

  else
  {
    v39 = 0;
    v38 = 0;
    v37 = 0;
    v96 = 0;
    v97 = 0;
  }

  v95 = v39;
  v98 = v38;
  v99 = v37;
  sub_26A4EF6D0();
  v40 = v93;
  if (v93)
  {
    v41 = v94;
    v42 = (v94 + 8);
    __swift_project_boxed_opaque_existential_1(v92, v93);
    v84 = *v42;

    v43 = v84(v40, v41);
    __swift_destroy_boxed_opaque_existential_1(v92);
  }

  else
  {

    sub_26A4D6FD8();
    v43 = 0;
  }

  sub_26A4EF6D0();
  v44 = v93;
  if (v93)
  {
    v45 = v94;
    __swift_project_boxed_opaque_existential_1(v92, v93);
    v46 = (*(v45 + 8))(v44, v45);
    __swift_destroy_boxed_opaque_existential_1(v92);
  }

  else
  {
    sub_26A4D6FD8();
    v46 = 0;
  }

  sub_26A4EF6D0();
  v47 = v93;
  if (v93)
  {
    v48 = v94;
    __swift_project_boxed_opaque_existential_1(v92, v93);
    v49 = (*(v48 + 8))(v47, v48);
    __swift_destroy_boxed_opaque_existential_1(v92);
  }

  else
  {
    sub_26A4D6FD8();
    v49 = 0;
  }

  sub_26A4EF6D0();
  v50 = v93;
  if (v93)
  {
    v51 = v94;
    __swift_project_boxed_opaque_existential_1(v92, v93);
    v52 = (*(v51 + 8))(v50, v51);
    __swift_destroy_boxed_opaque_existential_1(v92);
  }

  else
  {
    sub_26A4D6FD8();
    v52 = 0;
  }

  sub_26A4EF6D0();
  v53 = v93;
  if (v93)
  {
    v54 = v94;
    __swift_project_boxed_opaque_existential_1(v92, v93);
    v91 = (*(v54 + 8))(v53, v54);
    __swift_destroy_boxed_opaque_existential_1(v92);
  }

  else
  {
    sub_26A4D6FD8();
    v91 = 0;
  }

  sub_26A4EF6D0();
  v55 = v93;
  if (v93)
  {
    v56 = v94;
    __swift_project_boxed_opaque_existential_1(v92, v93);
    v88 = (*(v56 + 8))(v55, v56);
    __swift_destroy_boxed_opaque_existential_1(v92);
  }

  else
  {
    sub_26A4D6FD8();
    v88 = 0;
  }

  sub_26A4EF6D0();
  v57 = v93;
  if (v93)
  {
    v58 = v94;
    __swift_project_boxed_opaque_existential_1(v92, v93);
    v87 = (*(v58 + 8))(v57, v58);
    __swift_destroy_boxed_opaque_existential_1(v92);
  }

  else
  {
    sub_26A4D6FD8();
    v87 = 0;
  }

  sub_26A4EF6D0();
  v59 = v93;
  if (v93)
  {
    v60 = v94;
    __swift_project_boxed_opaque_existential_1(v92, v93);
    v86 = (*(v60 + 8))(v59, v60);
    __swift_destroy_boxed_opaque_existential_1(v92);
  }

  else
  {
    sub_26A4D6FD8();
    v86 = 0;
  }

  sub_26A4EF6D0();
  v61 = v93;
  if (v93)
  {
    v62 = v94;
    __swift_project_boxed_opaque_existential_1(v92, v93);
    v63 = (*(v62 + 8))(v61, v62);
    __swift_destroy_boxed_opaque_existential_1(v92);
  }

  else
  {
    sub_26A4D6FD8();
    v63 = 0;
  }

  sub_26A4EF6D0();
  v64 = v93;
  if (v93)
  {
    v65 = v94;
    __swift_project_boxed_opaque_existential_1(v92, v93);
    v66 = (*(v65 + 8))(v64, v65);
    __swift_destroy_boxed_opaque_existential_1(v92);
  }

  else
  {
    sub_26A4D6FD8();
    v66 = 0;
  }

  sub_26A4EF6D0();
  v67 = v93;
  if (v93)
  {
    v68 = v94;
    __swift_project_boxed_opaque_existential_1(v92, v93);
    v69 = (*(v68 + 8))(v67, v68);
    __swift_destroy_boxed_opaque_existential_1(v92);
  }

  else
  {
    sub_26A4D6FD8();
    v69 = 0;
  }

  sub_26A4EF6D0();
  v70 = v93;
  if (v93)
  {
    v71 = v94;
    __swift_project_boxed_opaque_existential_1(v92, v93);
    v72 = (*(v71 + 8))(v70, v71);
    __swift_destroy_boxed_opaque_existential_1(v92);
  }

  else
  {
    sub_26A4D6FD8();
    v72 = 0;
  }

  sub_26A4EF6D0();
  v73 = v93;
  if (v93)
  {
    v85 = v72;
    v74 = v69;
    v75 = v66;
    v76 = v63;
    v77 = v52;
    v78 = v49;
    v79 = v46;
    v80 = v43;
    v81 = v94;
    __swift_project_boxed_opaque_existential_1(v92, v93);
    v82 = (*(v81 + 8))(v73, v81);
    sub_26A4D6FD8();
    sub_26A4D6FD8();
    sub_26A4D6FD8();
    sub_26A4D6FD8();
    sub_26A4D6FD8();
    sub_26A4D6FD8();
    sub_26A4D6FD8();
    sub_26A4D6FD8();
    sub_26A4D6FD8();
    sub_26A4D6FD8();
    sub_26A4D6FD8();
    sub_26A4D6FD8();
    v43 = v80;
    v46 = v79;
    v49 = v78;
    v52 = v77;
    v63 = v76;
    v66 = v75;
    v69 = v74;
    v72 = v85;
    sub_26A4D6FD8();
    result = __swift_destroy_boxed_opaque_existential_1(v92);
  }

  else
  {
    sub_26A4D6FD8();
    sub_26A4D6FD8();
    sub_26A4D6FD8();
    sub_26A4D6FD8();
    sub_26A4D6FD8();
    sub_26A4D6FD8();
    sub_26A4D6FD8();
    sub_26A4D6FD8();
    sub_26A4D6FD8();
    sub_26A4D6FD8();
    sub_26A4D6FD8();
    sub_26A4D6FD8();
    sub_26A4D6FD8();
    result = sub_26A4D6FD8();
    v82 = 0;
  }

  *a1 = v43;
  a1[1] = v46;
  a1[2] = v49;
  a1[3] = v52;
  a1[4] = v91;
  a1[5] = v88;
  a1[6] = v87;
  a1[7] = v86;
  a1[8] = v63;
  a1[9] = v66;
  a1[10] = v69;
  a1[11] = v72;
  a1[12] = v82;
  return result;
}

uint64_t sub_26A527D24()
{
  OUTLINED_FUNCTION_6_8();
  v0 = sub_26A5D6EF8();
  return OUTLINED_FUNCTION_5_7(v0);
}

uint64_t sub_26A527D70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23[2] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC4E8, &qword_26A85B0C0);
  MEMORY[0x28223BE20](v3 - 8);
  v23[3] = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v23[1] = v23 - v6;
  MEMORY[0x28223BE20](v7);
  v9 = v23 - v8;
  MEMORY[0x28223BE20](v10);
  MEMORY[0x28223BE20](v11);
  v13 = v23 - v12;
  MEMORY[0x28223BE20](v14);
  v29 = 0;
  v27 = 0u;
  v28 = 0u;
  v15 = *(a1 + *(type metadata accessor for SummaryItemPairNumberV2View(0) + 104));
  if (v15)
  {
    v16 = &protocol witness table for AnyView;
    v17 = MEMORY[0x277CE11C8];
    v18 = v15;
  }

  else
  {
    v18 = 0;
    v17 = 0;
    v16 = 0;
    *(&v24 + 1) = 0;
    *&v25 = 0;
  }

  *&v24 = v18;
  *(&v25 + 1) = v17;
  v26 = v16;
  swift_retain_n();
  *v13 = sub_26A84FBF8();
  *(v13 + 1) = 0;
  v13[16] = 1;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC4F0, &qword_26A85B0C8);
  sub_26A5280FC(a1, &v13[*(v19 + 44)]);
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  sub_26A4EF020();
  if (v15)
  {
    v20 = &protocol witness table for AnyView;
    v21 = MEMORY[0x277CE11C8];
  }

  else
  {
    v18 = 0;
    v21 = 0;
    v20 = 0;
    *(&v27 + 1) = 0;
    *&v28 = 0;
  }

  *&v27 = v18;
  *(&v28 + 1) = v21;
  v29 = v20;
  v26 = 0;
  v24 = 0u;
  v25 = 0u;
  *v9 = sub_26A84FBF8();
  *(v9 + 1) = 0;
  v9[16] = 1;
  sub_26A5280FC(a1, &v9[*(v19 + 44)]);
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  sub_26A4EF020();
  sub_26A4EF6D0();
  sub_26A4EF6D0();
  sub_26A4EF6D0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC4F8, &qword_26A85B0D0);
  sub_26A4EF6D0();
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  return sub_26A4D6FD8();
}

uint64_t sub_26A5280FC@<X0>(uint64_t a1@<X1>, uint64_t *a3@<X8>)
{
  v5 = type metadata accessor for SummaryItemPairNumberV2View(0);
  v23 = *(v5 - 8);
  v6 = *(v23 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC500, &qword_26A85B0D8);
  MEMORY[0x28223BE20](v24);
  MEMORY[0x28223BE20](v8);
  v10 = &v22 - v9;
  sub_26A4EF6D0();
  v11 = v26;
  if (v26)
  {
    v22 = v6;
    v12 = v27;
    __swift_project_boxed_opaque_existential_1(v25, v26);
    v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    v11 = (*(v12 + 8))(v11, v12);
    __swift_destroy_boxed_opaque_existential_1(v25);
  }

  else
  {
    sub_26A4D6FD8();
  }

  *v10 = sub_26A84FA78();
  *(v10 + 1) = 0;
  v10[16] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC508, &qword_26A85B0E0);
  sub_26A52853C(a1);
  sub_26A52E8CC();
  v13 = (*(v23 + 80) + 16) & ~*(v23 + 80);
  v14 = swift_allocObject();
  sub_26A52DBA4(v7, v14 + v13);
  v15 = sub_26A851448();
  v17 = v16;
  v18 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC510, &qword_26A85B0E8) + 36)];
  *v18 = sub_26A8027E0;
  v18[1] = 0;
  v18[2] = v15;
  v18[3] = v17;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_26A52E924;
  *(v19 + 24) = v14;
  v20 = &v10[*(v24 + 36)];
  *v20 = sub_26A52E998;
  v20[1] = v19;
  sub_26A529D14();
  sub_26A529E18();
  sub_26A4EF6D0();
  sub_26A4EF6D0();
  sub_26A4EF6D0();
  *a3 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC520, &qword_26A85B0F8);
  sub_26A4EF6D0();
  sub_26A4EF6D0();
  sub_26A4EF6D0();

  sub_26A4D6FD8();
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  sub_26A4D6FD8();
}

uint64_t sub_26A52853C(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v58 = v1;
  v3 = v2;
  v62 = v4;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC528, &qword_26A85B138) - 8;
  MEMORY[0x28223BE20](v60);
  v61 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v59 = &v52 - v7;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC530, &unk_26A85B140) - 8;
  MEMORY[0x28223BE20](v54);
  v9 = &v52 - v8;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC538, &unk_26A861C70) - 8;
  MEMORY[0x28223BE20](v57);
  v65 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v55 = &v52 - v12;
  MEMORY[0x28223BE20](v13);
  v56 = &v52 - v14;
  v52 = type metadata accessor for SummaryItemPairNumberV2View.Constants(0) - 8;
  MEMORY[0x28223BE20](v52);
  MEMORY[0x28223BE20](v15);
  v17 = &v52 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC540, &qword_26A85B150);
  v19 = v18 - 8;
  MEMORY[0x28223BE20](v18);
  v63 = &v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v52 - v22;
  sub_26A528CBC();
  v24 = sub_26A84FBD8();
  v25 = &v23[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC548, &qword_26A85B158) + 36)];
  v64 = v23;
  *v25 = v24;
  v25[1] = sub_26A48F9E4;
  v25[2] = 0;
  LOBYTE(v24) = sub_26A850298();
  sub_26A523BD4();
  sub_26A84ED48();
  v26 = &v23[*(v19 + 44)];
  *v26 = v24;
  *(v26 + 1) = v27;
  *(v26 + 2) = v28;
  *(v26 + 3) = v29;
  *(v26 + 4) = v30;
  v26[40] = 0;
  v31 = type metadata accessor for SummaryItemPairNumberV2View(0);
  v32 = *(v3 + v31[12]);
  v33 = *(v3 + v31[14]);
  v34 = *(v3 + v31[19]);
  v74 = sub_26A84FBF8();
  v75 = 0;
  v76 = 1;
  sub_26A52AA14(v33, v32, v34);
  sub_26A523A7C();
  sub_26A52E650();
  sub_26A851448();
  sub_26A84F028();
  sub_26A523A7C();
  v53 = *(v17 + 5);
  sub_26A52E650();
  *v9 = sub_26A84FBF8();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC550, &qword_26A85B160);
  sub_26A5290DC(&v9[*(v35 + 44)]);
  KeyPath = swift_getKeyPath();
  v37 = &v9[*(v54 + 44)];
  *v37 = KeyPath;
  v37[8] = 1;
  sub_26A523A7C();
  sub_26A52E650();
  sub_26A84F628();
  v38 = v55;
  sub_26A4EF020();
  memcpy(&v38[*(v57 + 44)], __src, 0x70uLL);
  sub_26A4EF020();
  sub_26A523A7C();
  v58 = *(v17 + 5);
  sub_26A52E650();
  v39 = *(v3 + v31[13]);
  v40 = *(v3 + v31[15]);
  v41 = *(v3 + v31[20]);
  v72[7] = sub_26A84FBF8();
  v72[8] = 0;
  v73 = 1;
  sub_26A52AA14(v40, v39, v41);
  sub_26A523A7C();
  sub_26A52E650();
  sub_26A851448();
  sub_26A84F028();
  v42 = v59;
  sub_26A529AFC();
  LOBYTE(v39) = sub_26A850278();
  sub_26A523BD4();
  sub_26A84ED48();
  v43 = &v42[*(v60 + 44)];
  *v43 = v39;
  *(v43 + 1) = v44;
  *(v43 + 2) = v45;
  *(v43 + 3) = v46;
  *(v43 + 4) = v47;
  v43[40] = 0;
  v48 = v63;
  sub_26A4EF6D0();
  v72[0] = v48;
  sub_26A4EF6D0();
  v69 = v53;
  v70 = 0;
  v72[1] = &v71;
  v72[2] = &v69;
  v49 = v65;
  sub_26A4EF6D0();
  v67 = v58;
  v68 = 0;
  v72[3] = v49;
  v72[4] = &v67;
  sub_26A4EF6D0();
  v72[5] = &v66;
  v50 = v61;
  sub_26A4EF6D0();
  v72[6] = v50;
  sub_26A594094(v72);
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  return sub_26A4D6FD8();
}

void sub_26A528CBC()
{
  OUTLINED_FUNCTION_28_0();
  v2 = v1;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC4C0, &unk_26A85B050);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v3);
  v5 = v44 - v4;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB2E0, &qword_26A8583F0);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_82();
  v47 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC4C8, &unk_26A85B060);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_82();
  v49 = v10;
  v11 = sub_26A84B1D8();
  OUTLINED_FUNCTION_15();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_41();
  v17 = v16 - v15;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAFA0, &unk_26A85D4D0);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v19);
  v21 = (v44 - v20);
  v22 = *(v0 + *(type metadata accessor for SummaryItemPairNumberV2View(0) + 96));
  if (v22)
  {
    v44[1] = v5;
    v45 = v8;
    v46 = v2;
    sub_26A52A924();
    KeyPath = swift_getKeyPath();
    v24 = (v21 + *(v18 + 36));
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA440, &qword_26A856F40);
    (*(v13 + 32))(v24 + *(v25 + 28), v17, v11);
    OUTLINED_FUNCTION_22_0();
    __swift_storeEnumTagSinglePayload(v26, v27, v28, v11);
    *v24 = KeyPath;
    *v21 = v22;

    v29 = sub_26A523458();
    if (sub_26A61B05C(v29, &unk_287B13248))
    {
      v30 = swift_getKeyPath();
      v31 = v47;
      sub_26A4EF6D0();
      v32 = v31 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB308, &qword_26A8584C0) + 36);
      *v32 = v30;
      *(v32 + 8) = 1;
      v33 = swift_getKeyPath();
      v34 = v31 + *(v50 + 36);
      *v34 = v33;
      *(v34 + 8) = 0;
      sub_26A4EF6D0();
      swift_storeEnumTagMultiPayload();
      sub_26A52E6A4();
      sub_26A52E814();
      OUTLINED_FUNCTION_58_1();
      sub_26A84FDF8();
      sub_26A4D6FD8();
    }

    else
    {
      sub_26A4EF6D0();
      swift_storeEnumTagMultiPayload();
      sub_26A52E6A4();
      sub_26A52E814();
      sub_26A84FDF8();
    }

    v40 = v45;
    sub_26A4D6FD8();
    sub_26A4EF020();
    OUTLINED_FUNCTION_22_0();
    __swift_storeEnumTagSinglePayload(v41, v42, v43, v40);
    OUTLINED_FUNCTION_27_0();
  }

  else
  {
    OUTLINED_FUNCTION_81();
    OUTLINED_FUNCTION_27_0();

    __swift_storeEnumTagSinglePayload(v35, v36, v37, v38);
  }
}

uint64_t sub_26A5290DC@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC440, &unk_26A85AF30);
  MEMORY[0x28223BE20](v2);
  MEMORY[0x28223BE20](v3);
  v5 = v25 - v4;
  v6 = type metadata accessor for SummaryItemPairNumberV2View.Constants(0);
  MEMORY[0x28223BE20](v6 - 8);
  sub_26A4EF6D0();
  v7 = v27;
  if (v27)
  {
    v8 = v28;
    __swift_project_boxed_opaque_existential_1(v26, v27);
    v7 = (*(v8 + 8))(v7, v8);
    LOBYTE(v8) = sub_26A850268();
    sub_26A523A7C();
    sub_26A52E650();
    sub_26A84ED48();
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    __swift_destroy_boxed_opaque_existential_1(v26);
    v25[0] = v8;
  }

  else
  {
    sub_26A4D6FD8();
    v25[0] = 0;
    v10 = 0;
    v12 = 0;
    v14 = 0;
    v16 = 0;
  }

  sub_26A529494();
  v17 = sub_26A850268();
  sub_26A523A7C();
  sub_26A52E650();
  sub_26A84ED48();
  v18 = &v5[*(v2 + 36)];
  *v18 = v17;
  *(v18 + 1) = v19;
  *(v18 + 2) = v20;
  *(v18 + 3) = v21;
  *(v18 + 4) = v22;
  v18[40] = 0;
  sub_26A52997C();
  sub_26A529A3C();
  sub_26A4EF6D0();
  sub_26A4EF6D0();
  sub_26A4EF6D0();
  v23 = v25[0];
  *a1 = v7;
  *(a1 + 8) = v23;
  *(a1 + 16) = v10;
  *(a1 + 24) = v12;
  *(a1 + 32) = v14;
  *(a1 + 40) = v16;
  *(a1 + 48) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC558, &unk_26A85B168);
  sub_26A4EF6D0();
  sub_26A4EF6D0();
  sub_26A4EF6D0();

  sub_26A4D6FD8();
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  sub_26A4D6FD8();
}

uint64_t sub_26A529494()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC450, &qword_26A85AF70);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_6_0();
  v12 = v10 - v11;
  MEMORY[0x28223BE20](v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC458, &qword_26A85AF78);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_74_0();
  v15 = type metadata accessor for SummaryItemPairNumberCapsuleTVView(0);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_41();
  v19 = (v18 - v17);
  v20 = sub_26A523458();
  if (sub_26A61B05C(v20, &unk_287B13248))
  {
    v21 = *(v0 + *(type metadata accessor for SummaryItemPairNumberV2View(0) + 64));
    *v19 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB430, &qword_26A85B010);
    swift_storeEnumTagMultiPayload();
    v22 = v19 + *(v15 + 20);
    *v22 = swift_getKeyPath();
    v22[8] = 0;
    *(v19 + *(v15 + 24)) = v21;
    sub_26A52E8CC();
    OUTLINED_FUNCTION_69_0();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_19_2();
    sub_26A52E3C8();
    OUTLINED_FUNCTION_18_3();
    sub_26A52ED4C(v23, v24, v25);

    OUTLINED_FUNCTION_58_1();
    sub_26A84FDF8();
    return sub_26A52E650();
  }

  else
  {
    v27 = *(v0 + *(type metadata accessor for SummaryItemPairNumberV2View(0) + 64));
    if (v27)
    {

      sub_26A850468();
      v43 = sub_26A8504C8();

      KeyPath = swift_getKeyPath();
      v41 = sub_26A850268();
      sub_26A84ED48();
      OUTLINED_FUNCTION_75_0();
      v40 = sub_26A850238();
      sub_26A84ED48();
      OUTLINED_FUNCTION_73_0();
      v38 = sub_26A84FEC8();
      v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC460, &qword_26A85AF80);
      v28 = (v12 + *(v39 + 36));
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC4B8, &qword_26A85AFA8);
      v30 = *(v29 + 52);
      v31 = *MEMORY[0x277CE0118];
      sub_26A84FB88();
      OUTLINED_FUNCTION_46();
      (*(v32 + 104))(&v28[v30], v31);
      *v28 = v38;
      *&v28[*(v29 + 56)] = 256;
      *v12 = v27;
      *(v12 + 8) = KeyPath;
      *(v12 + 16) = v43;
      *(v12 + 24) = v41;
      *(v12 + 25) = *v46;
      *(v12 + 28) = *&v46[3];
      *(v12 + 32) = v1;
      *(v12 + 40) = v2;
      *(v12 + 48) = v3;
      *(v12 + 56) = v4;
      *(v12 + 64) = 0;
      *(v12 + 65) = *v45;
      *(v12 + 68) = *&v45[3];
      *(v12 + 72) = v40;
      *(v12 + 76) = *&v44[3];
      *(v12 + 73) = *v44;
      *(v12 + 80) = v5;
      *(v12 + 88) = v6;
      *(v12 + 96) = v7;
      *(v12 + 104) = v8;
      *(v12 + 112) = 0;
      OUTLINED_FUNCTION_22_0();
      v36 = v39;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC460, &qword_26A85AF80);
      OUTLINED_FUNCTION_81();
    }

    __swift_storeEnumTagSinglePayload(v33, v34, v35, v36);
    sub_26A4EF020();
    sub_26A4EF6D0();
    OUTLINED_FUNCTION_69_0();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_19_2();
    sub_26A52E3C8();
    OUTLINED_FUNCTION_18_3();
    sub_26A52ED4C(v37, &qword_2803AC450, &qword_26A85AF70);
    OUTLINED_FUNCTION_58_1();
    sub_26A84FDF8();
    return sub_26A4D6FD8();
  }
}

uint64_t sub_26A52997C()
{
  v2 = OUTLINED_FUNCTION_13_1();
  if (*(v1 + *(type metadata accessor for SummaryItemPairNumberV2View(v2) + 68)))
  {
    if (qword_2803A8A18 != -1)
    {
      swift_once();
    }

    sub_26A4EF6D0();
    sub_26A6AEE74(v11);
    OUTLINED_FUNCTION_82_0((v0 + 8), v3, v4, v5, v6, v7, v8, v9, v11[0]);
    OUTLINED_FUNCTION_0_4();
  }

  else
  {
    bzero(v0, 0x128uLL);
  }
}

uint64_t sub_26A529A3C()
{
  v2 = OUTLINED_FUNCTION_13_1();
  if (*(v1 + *(type metadata accessor for SummaryItemPairNumberV2View(v2) + 72)))
  {
    if (qword_2803A8A20 != -1)
    {
      swift_once();
    }

    sub_26A4EF6D0();
    sub_26A6AEE74(v11);
    OUTLINED_FUNCTION_82_0((v0 + 8), v3, v4, v5, v6, v7, v8, v9, v11[0]);
    OUTLINED_FUNCTION_0_4();
  }

  else
  {
    bzero(v0, 0x128uLL);
  }
}

void sub_26A529AFC()
{
  OUTLINED_FUNCTION_28_0();
  OUTLINED_FUNCTION_13_1();
  v2 = sub_26A84B1D8();
  OUTLINED_FUNCTION_15();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_41();
  v8 = v7 - v6;
  v9 = *(v1 + *(type metadata accessor for SummaryItemPairNumberV2View(0) + 100));
  if (v9)
  {
    sub_26A52A924();
    KeyPath = swift_getKeyPath();
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAFA0, &unk_26A85D4D0);
    v12 = (v0 + *(v11 + 36));
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA440, &qword_26A856F40);
    (*(v4 + 32))(v12 + *(v13 + 28), v8, v2);
    OUTLINED_FUNCTION_22_0();
    __swift_storeEnumTagSinglePayload(v14, v15, v16, v2);
    *v12 = KeyPath;
    *v0 = v9;
    OUTLINED_FUNCTION_22_0();
    v20 = v11;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAFA0, &unk_26A85D4D0);
    OUTLINED_FUNCTION_81();
  }

  __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);

  OUTLINED_FUNCTION_27_0();
}

void *sub_26A529C64(uint64_t a1, double a2)
{
  type metadata accessor for SummaryItemPairNumberV2View(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB9F8, &qword_26A85B130);
  result = sub_26A851058();
  if (vabdd_f64(v4, a2) >= 0.01)
  {
    return sub_26A851068();
  }

  return result;
}

void sub_26A529D14()
{
  v2 = OUTLINED_FUNCTION_13_1();
  if (*(v1 + *(type metadata accessor for SummaryItemPairNumberV2View(v2) + 84)))
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v3 = qword_2803A9028;

    if (v3 != -1)
    {
      swift_once();
    }

    sub_26A4EF6D0();
    sub_26A6AEE74(v11);
    OUTLINED_FUNCTION_82_0((v0 + 48), v4, v5, v6, v7, v8, v9, v10, v11[0]);
    OUTLINED_FUNCTION_16_3();
  }

  else
  {

    bzero(v0, 0x150uLL);
  }
}

void sub_26A529E18()
{
  v2 = OUTLINED_FUNCTION_13_1();
  if (*(v1 + *(type metadata accessor for SummaryItemPairNumberV2View(v2) + 88)))
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v3 = qword_28157E6A0;

    if (v3 != -1)
    {
      swift_once();
    }

    sub_26A4EF6D0();
    sub_26A6AEE74(v11);
    OUTLINED_FUNCTION_82_0((v0 + 48), v4, v5, v6, v7, v8, v9, v10, v11[0]);
    OUTLINED_FUNCTION_16_3();
  }

  else
  {

    bzero(v0, 0x150uLL);
  }
}

uint64_t sub_26A529F1C(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v2 = v1;
  v50 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAF98, &unk_26A857930);
  MEMORY[0x28223BE20](v4 - 8);
  v49 = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v48 = v39 - v7;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC410, &qword_26A85AE98) - 8;
  MEMORY[0x28223BE20](v40);
  v9 = v39 - v8;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC418, &unk_26A85AEA0) - 8;
  MEMORY[0x28223BE20](v42);
  v41 = v39 - v10;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC420, &qword_26A861C60) - 8;
  MEMORY[0x28223BE20](v46);
  v47 = v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v43 = v39 - v13;
  MEMORY[0x28223BE20](v14);
  v44 = v39 - v15;
  v16 = type metadata accessor for SummaryItemPairNumberV2View.Constants(0);
  MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC428, &qword_26A85AEB0);
  MEMORY[0x28223BE20](v18 - 8);
  v51 = v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v45 = v39 - v21;
  sub_26A528CBC();
  v22 = type metadata accessor for SummaryItemPairNumberV2View(0);
  v23 = *(v2 + v22[12]);
  v24 = *(v2 + v22[14]);
  v25 = *(v2 + v22[19]);
  v60 = sub_26A84FBF8();
  v61 = 0;
  v62 = 1;
  sub_26A52AA14(v24, v23, v25);
  sub_26A523A7C();
  v39[1] = type metadata accessor for SummaryItemPairNumberV2View.Constants;
  sub_26A52E650();
  sub_26A851448();
  sub_26A84F028();
  *v9 = sub_26A84FBF8();
  *(v9 + 1) = 0;
  v9[16] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC430, &qword_26A85AEB8);
  sub_26A52A69C();
  KeyPath = swift_getKeyPath();
  v27 = &v9[*(v40 + 44)];
  *v27 = KeyPath;
  v27[8] = 1;
  sub_26A523A7C();
  sub_26A52E650();
  sub_26A84F628();
  v28 = v41;
  sub_26A4EF020();
  memcpy(&v28[*(v42 + 44)], __src, 0x70uLL);
  sub_26A523A7C();
  sub_26A52E650();
  sub_26A851448();
  sub_26A84F028();
  v29 = v43;
  sub_26A4EF020();
  v30 = &v29[*(v46 + 44)];
  v31 = v65;
  *v30 = v64;
  *(v30 + 1) = v31;
  *(v30 + 2) = v66;
  sub_26A4EF020();
  v32 = *(v2 + v22[13]);
  v33 = *(v2 + v22[15]);
  v34 = *(v2 + v22[20]);
  v58[7] = sub_26A84FBF8();
  v58[8] = 0;
  v59 = 1;
  sub_26A52AA14(v33, v32, v34);
  sub_26A523A7C();
  sub_26A52E650();
  sub_26A851448();
  sub_26A84F028();
  sub_26A529AFC();
  v56 = 0;
  v57 = 0;
  v58[0] = &v56;
  v35 = v51;
  sub_26A4EF6D0();
  v58[1] = v35;
  sub_26A4EF6D0();
  v58[2] = &v55;
  v36 = v47;
  sub_26A4EF6D0();
  v58[3] = v36;
  sub_26A4EF6D0();
  v58[4] = &v54;
  v37 = v49;
  sub_26A4EF6D0();
  v52 = 0;
  v53 = 0;
  v58[5] = v37;
  v58[6] = &v52;
  sub_26A59416C(v58, v50);
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  return sub_26A4D6FD8();
}

uint64_t sub_26A52A69C()
{
  v0 = type metadata accessor for SummaryItemPairNumberV2View.Constants(0);
  MEMORY[0x28223BE20](v0 - 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC440, &unk_26A85AF30);
  v2 = v1 - 8;
  MEMORY[0x28223BE20](v1);
  MEMORY[0x28223BE20](v3);
  v5 = &v13 - v4;
  sub_26A529494();
  v6 = sub_26A850268();
  sub_26A523A7C();
  sub_26A52E650();
  sub_26A84ED48();
  v7 = &v5[*(v2 + 44)];
  *v7 = v6;
  *(v7 + 1) = v8;
  *(v7 + 2) = v9;
  *(v7 + 3) = v10;
  *(v7 + 4) = v11;
  v7[40] = 0;
  sub_26A52997C();
  sub_26A529A3C();
  sub_26A4EF6D0();
  sub_26A4EF6D0();
  sub_26A4EF6D0();
  sub_26A4EF6D0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC448, &unk_26A85AF40);
  sub_26A4EF6D0();
  sub_26A4EF6D0();
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  return sub_26A4D6FD8();
}

uint64_t sub_26A52A924()
{
  v2 = OUTLINED_FUNCTION_13_1();
  v3 = type metadata accessor for SummaryItemPairNumberV2View.Constants(v2);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_41();
  v7 = v6 - v5;
  if ((sub_26A523570() & 1) != 0 || *(v1 + *(type metadata accessor for SummaryItemPairNumberV2View(0) + 104)))
  {
    sub_26A523A7C();
    v8 = 40;
  }

  else
  {
    sub_26A523A7C();
    v8 = 36;
  }

  v9 = *(v3 + v8);
  sub_26A84B1D8();
  OUTLINED_FUNCTION_46();
  (*(v10 + 16))(v0, v7 + v9);
  return sub_26A52E650();
}

uint64_t sub_26A52AA14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    if (qword_2803A8A10 != -1)
    {
      swift_once();
    }

    sub_26A4EF6D0();
    sub_26A6AEE74(__src);
    memcpy(&v11[1], __src, 0xBFuLL);
    v11[36] = 0;
    v11[35] = sub_26A80A810;
    v11[0] = a1;
  }

  else
  {
    bzero(v11, 0x128uLL);
  }

  memcpy(__dst, v11, sizeof(__dst));
  v6 = qword_2803A8A08;

  if (v6 != -1)
  {
    swift_once();
  }

  sub_26A4EF6D0();
  sub_26A6AEE74(v14);
  memcpy(&v11[1], v14, 0xBFuLL);
  v11[36] = 0;
  v11[35] = sub_26A80A810;
  v11[0] = a2;
  if (a3)
  {
    v7 = qword_2803A8A28;

    if (v7 != -1)
    {
      swift_once();
    }

    sub_26A4EF6D0();
    sub_26A6AEE74(v15);
    memcpy(&v9[1], v15, 0xBFuLL);
    v9[36] = 0;
    v9[35] = sub_26A80A810;
    v9[0] = a3;
  }

  else
  {
    bzero(v9, 0x128uLL);
  }

  memcpy(v10, v9, sizeof(v10));
  sub_26A4EF6D0();
  sub_26A4EF6D0();
  sub_26A4EF6D0();
  sub_26A4EF6D0();
  sub_26A4EF6D0();
  sub_26A4EF6D0();

  sub_26A4D6FD8();
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  return sub_26A4D6FD8();
}

void sub_26A52AD7C()
{
  OUTLINED_FUNCTION_28_0();
  v2 = sub_26A84B1D8();
  OUTLINED_FUNCTION_15();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_55_1();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_13_6();
  v8 = type metadata accessor for SummaryItemPairNumberV2View.Constants(v7);
  __swift_allocate_value_buffer(v8, qword_2803D1950);
  v9 = __swift_project_value_buffer(v8, qword_2803D1950);
  v10 = *MEMORY[0x277D62B30];
  v11 = *(v4 + 104);
  v11(v1, v10, v2);
  v11(v0, v10, v2);
  sub_26A851448();
  *v9 = xmmword_26A85AB00;
  v9[1] = xmmword_26A85AB10;
  v12 = OUTLINED_FUNCTION_47_0(xmmword_26A85AB20);
  (v11)(v12);
  v13 = OUTLINED_FUNCTION_68_0();
  (v11)(v13);
  OUTLINED_FUNCTION_78_0();
  OUTLINED_FUNCTION_27_0();
}

void sub_26A52AEF8()
{
  OUTLINED_FUNCTION_28_0();
  v23 = v3;
  v24 = v4;
  v22 = v5;
  v7 = v6;
  v8 = sub_26A84B1D8();
  OUTLINED_FUNCTION_15();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_55_1();
  MEMORY[0x28223BE20](v12);
  v13 = OUTLINED_FUNCTION_13_6();
  v14 = type metadata accessor for SummaryItemPairNumberV2View.Constants(v13);
  __swift_allocate_value_buffer(v14, v7);
  v15 = __swift_project_value_buffer(v14, v7);
  v16 = OUTLINED_FUNCTION_67_0();
  v2(v16);
  (v2)(v0, *MEMORY[0x277D62B30], v8);
  v17 = sub_26A851448();
  v19 = v18;
  *v15 = v22;
  *(v15 + 1) = v23;
  *(v15 + 2) = v24;
  v20 = *(v10 + 32);
  v20(&v15[v14[9]], v1, v8);
  v20(&v15[v14[10]], v0, v8);
  v21 = &v15[v14[11]];
  *v21 = v17;
  v21[1] = v19;
  OUTLINED_FUNCTION_27_0();
}

void sub_26A52B06C()
{
  OUTLINED_FUNCTION_28_0();
  v3 = sub_26A84B1D8();
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_55_1();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_13_6();
  v7 = type metadata accessor for SummaryItemPairNumberV2View.Constants(v6);
  __swift_allocate_value_buffer(v7, qword_2803D1980);
  v8 = __swift_project_value_buffer(v7, qword_2803D1980);
  v9 = OUTLINED_FUNCTION_67_0();
  v1(v9);
  (v1)(v0, *MEMORY[0x277D62B20], v3);
  sub_26A851448();
  *v8 = 0x405C800000000000;
  v8[1] = 0;
  v8[2] = 0;
  v8[3] = 0;
  v10 = OUTLINED_FUNCTION_47_0(xmmword_26A85AB60);
  v2(v10);
  v11 = OUTLINED_FUNCTION_68_0();
  v2(v11);
  OUTLINED_FUNCTION_78_0();
  OUTLINED_FUNCTION_27_0();
}

uint64_t sub_26A52B1B8(uint64_t a1)
{
  if (qword_2803A89E8 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(a1, &unk_2803D1938);
  return sub_26A52E8CC();
}

uint64_t sub_26A52B2E0(uint64_t a1, void x1_0, void *a2, uint64_t a3)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(a1, a3);
  return sub_26A52E8CC();
}

void sub_26A52B360()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803AB310, &unk_26A85AF50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A8570F0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADE0, &unk_26A857190);
  v1 = swift_initStackObject();
  *(v1 + 16) = xmmword_26A8570D0;
  if (qword_28157E758 != -1)
  {
    swift_once();
  }

  v2 = qword_281588968;
  *(v1 + 32) = qword_281588968;
  v3 = byte_281588970;
  *(v1 + 40) = byte_281588970;
  sub_26A4E324C(v2, v3);
  sub_26A621A9C(v1);
  *(inited + 32) = v4;
  if (qword_2803A9048 != -1)
  {
    swift_once();
  }

  sub_26A4EF6D0();
  v5 = swift_initStackObject();
  *(v5 + 16) = xmmword_26A8570D0;
  v6 = qword_281588968;
  *(v5 + 32) = qword_281588968;
  v7 = byte_281588970;
  *(v5 + 40) = byte_281588970;
  sub_26A4E324C(v6, v7);

  sub_26A58787C(v8);
  sub_26A5075B0();

  if (v17)
  {
    *(inited + 40) = v17;
    *(inited + 56) = v18;
    *(inited + 72) = v19;
  }

  else
  {
    sub_26A4F20CC(&v20 + 8, inited + 40);
  }

  sub_26A4D6FD8();
  v9 = swift_initStackObject();
  *(v9 + 16) = xmmword_26A8570D0;
  if (qword_28157E780 != -1)
  {
    swift_once();
  }

  v10 = qword_281588998;
  *(v9 + 32) = qword_281588998;
  v11 = byte_2815889A0;
  *(v9 + 40) = byte_2815889A0;
  sub_26A4E324C(v10, v11);
  sub_26A621A9C(v9);
  *(inited + 88) = v12;
  sub_26A850408();
  sub_26A8503A8();
  v13 = sub_26A850428();

  v14 = sub_26A84FEA8();
  v15 = MEMORY[0x277CE04E8];
  *(inited + 128) = MEMORY[0x277CE04F8];
  *(inited + 136) = v15;
  *(inited + 104) = v14;
  *(inited + 96) = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1D80, &qword_26A8593E0);
  sub_26A52EF88();
  v16 = sub_26A8516A8();
  sub_26A850328();
  v20 = 0u;
  v21 = 0;
  sub_26A80D690(v16);
}

void sub_26A52B68C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803AB310, &unk_26A85AF50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A857110;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADE0, &unk_26A857190);
  v1 = swift_initStackObject();
  *(v1 + 16) = xmmword_26A8570D0;
  if (qword_28157E758 != -1)
  {
    swift_once();
  }

  v2 = qword_281588968;
  *(v1 + 32) = qword_281588968;
  v3 = byte_281588970;
  *(v1 + 40) = byte_281588970;
  sub_26A4E324C(v2, v3);
  sub_26A621A9C(v1);
  *(inited + 32) = v4;
  v5 = sub_26A850458();
  v6 = sub_26A84FEA8();
  v7 = MEMORY[0x277CE04F8];
  v8 = MEMORY[0x277CE04E8];
  *(inited + 72) = MEMORY[0x277CE04F8];
  *(inited + 80) = v8;
  *(inited + 48) = v6;
  *(inited + 40) = v5;
  v9 = swift_initStackObject();
  *(v9 + 16) = xmmword_26A8570D0;
  if (qword_28157E780 != -1)
  {
    swift_once();
  }

  v10 = qword_281588998;
  *(v9 + 32) = qword_281588998;
  v11 = byte_2815889A0;
  *(v9 + 40) = byte_2815889A0;
  sub_26A4E324C(v10, v11);
  sub_26A621A9C(v9);
  *(inited + 88) = v12;
  if (qword_28157E6A8 != -1)
  {
    swift_once();
  }

  sub_26A4EF6D0();
  v13 = swift_initStackObject();
  *(v13 + 16) = xmmword_26A8570D0;
  v14 = qword_281588998;
  *(v13 + 32) = qword_281588998;
  v15 = byte_2815889A0;
  *(v13 + 40) = byte_2815889A0;
  sub_26A4E324C(v14, v15);

  sub_26A58787C(v16);
  sub_26A5075B0();

  if (v31)
  {
    *(inited + 96) = v31;
    *(inited + 112) = v32;
    *(inited + 128) = v33[0];
  }

  else
  {
    sub_26A4F20CC(v36, inited + 96);
  }

  sub_26A4D6FD8();
  v17 = swift_initStackObject();
  *(v17 + 16) = xmmword_26A8570D0;
  if (qword_28157E770 != -1)
  {
    swift_once();
  }

  v18 = qword_281588988;
  *(v17 + 32) = qword_281588988;
  v19 = byte_281588990;
  *(v17 + 40) = byte_281588990;
  sub_26A4E324C(v18, v19);
  sub_26A621A9C(v17);
  *(inited + 144) = v20;
  if (qword_28157E6A0 != -1)
  {
    swift_once();
  }

  sub_26A4EF6D0();
  v21 = swift_initStackObject();
  *(v21 + 16) = xmmword_26A8570F0;
  v22 = qword_281588988;
  *(v21 + 32) = qword_281588988;
  v23 = byte_281588990;
  *(v21 + 40) = byte_281588990;
  *(v21 + 48) = 1;
  *(v21 + 56) = 3;
  sub_26A4E324C(v22, v23);

  sub_26A58787C(v24);
  sub_26A5075B0();

  if (v28)
  {
    *(inited + 152) = v28;
    *(inited + 168) = v29;
    *(inited + 184) = v30;
  }

  else
  {
    sub_26A4F20CC(v33, inited + 152);
  }

  sub_26A4D6FD8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1D80, &qword_26A8593E0);
  sub_26A52EF88();
  v25 = sub_26A8516A8();
  v26 = sub_26A850498();
  v27 = sub_26A84FEA8();
  v36[0] = v7;
  v36[1] = v8;
  v35 = v27;
  v34 = v26;
  sub_26A80D690(v25);
}

uint64_t sub_26A52BB20()
{
  if (qword_2803A90F0 != -1)
  {
    swift_once();
  }

  sub_26A4EF6D0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803AB310, &unk_26A85AF50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A8570F0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADE0, &unk_26A857190);
  v1 = swift_initStackObject();
  *(v1 + 16) = xmmword_26A8570D0;
  if (qword_28157E780 != -1)
  {
    swift_once();
  }

  v2 = qword_281588998;
  *(v1 + 32) = qword_281588998;
  v3 = byte_2815889A0;
  *(v1 + 40) = byte_2815889A0;
  sub_26A4E324C(v2, v3);
  sub_26A621A9C(v1);
  *(inited + 32) = v4;
  if (qword_28157E6A8 != -1)
  {
    swift_once();
  }

  sub_26A4EF6D0();
  v5 = swift_initStackObject();
  *(v5 + 16) = xmmword_26A8570D0;
  v6 = qword_281588998;
  *(v5 + 32) = qword_281588998;
  v7 = byte_2815889A0;
  *(v5 + 40) = byte_2815889A0;
  sub_26A4E324C(v6, v7);

  sub_26A58787C(v8);
  sub_26A5075B0();

  if (v22)
  {
    *(inited + 40) = v22;
    *(inited + 56) = v23;
    *(inited + 72) = v24[0];
  }

  else
  {
    sub_26A4F20CC(v25, inited + 40);
  }

  sub_26A4D6FD8();
  v9 = swift_initStackObject();
  *(v9 + 16) = xmmword_26A8570D0;
  if (qword_28157E770 != -1)
  {
    swift_once();
  }

  v10 = qword_281588988;
  *(v9 + 32) = qword_281588988;
  v11 = byte_281588990;
  *(v9 + 40) = byte_281588990;
  sub_26A4E324C(v10, v11);
  sub_26A621A9C(v9);
  *(inited + 88) = v12;
  if (qword_28157E6A0 != -1)
  {
    swift_once();
  }

  sub_26A4EF6D0();
  v13 = swift_initStackObject();
  *(v13 + 16) = xmmword_26A8570F0;
  v14 = qword_281588988;
  *(v13 + 32) = qword_281588988;
  v15 = byte_281588990;
  *(v13 + 40) = byte_281588990;
  *(v13 + 48) = 1;
  *(v13 + 56) = 3;
  sub_26A4E324C(v14, v15);

  sub_26A58787C(v16);
  sub_26A5075B0();

  if (v19)
  {
    *(inited + 96) = v19;
    *(inited + 112) = v20;
    *(inited + 128) = v21;
  }

  else
  {
    sub_26A4F20CC(v24, inited + 96);
  }

  sub_26A4D6FD8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1D80, &qword_26A8593E0);
  sub_26A52EF88();
  v17 = sub_26A8516A8();
  v25[0] = 0u;
  memset(&v24[9], 0, 32);
  sub_26A66DDEC(v17, qword_2803AC280);

  sub_26A4D6FD8();
  return sub_26A4D6FD8();
}

void sub_26A52BF88()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803AB310, &unk_26A85AF50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A8570F0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADE0, &unk_26A857190);
  v1 = swift_initStackObject();
  *(v1 + 16) = xmmword_26A8570D0;
  if (qword_28157E780 != -1)
  {
    swift_once();
  }

  v2 = qword_281588998;
  *(v1 + 32) = qword_281588998;
  v3 = byte_2815889A0;
  *(v1 + 40) = byte_2815889A0;
  sub_26A4E324C(v2, v3);
  sub_26A621A9C(v1);
  *(inited + 32) = v4;
  if (qword_28157E6A0 != -1)
  {
    swift_once();
  }

  sub_26A4EF6D0();
  v5 = swift_initStackObject();
  *(v5 + 16) = xmmword_26A8570D0;
  v6 = qword_281588998;
  *(v5 + 32) = qword_281588998;
  v7 = byte_2815889A0;
  *(v5 + 40) = byte_2815889A0;
  sub_26A4E324C(v6, v7);

  sub_26A58787C(v8);
  sub_26A5075B0();

  if (v23)
  {
    *(inited + 40) = v23;
    *(inited + 56) = v24;
    *(inited + 72) = v25[0];
  }

  else
  {
    sub_26A4F20CC(v28, inited + 40);
  }

  sub_26A4D6FD8();
  v9 = swift_initStackObject();
  *(v9 + 16) = xmmword_26A8570D0;
  if (qword_28157E770 != -1)
  {
    swift_once();
  }

  v10 = qword_281588988;
  *(v9 + 32) = qword_281588988;
  v11 = byte_281588990;
  *(v9 + 40) = byte_281588990;
  sub_26A4E324C(v10, v11);
  sub_26A621A9C(v9);
  *(inited + 88) = v12;
  sub_26A4EF6D0();
  v13 = swift_initStackObject();
  *(v13 + 16) = xmmword_26A8570F0;
  v14 = qword_281588988;
  *(v13 + 32) = qword_281588988;
  v15 = byte_281588990;
  *(v13 + 40) = byte_281588990;
  *(v13 + 48) = 1;
  *(v13 + 56) = 3;
  sub_26A4E324C(v14, v15);

  sub_26A58787C(v16);
  sub_26A5075B0();

  if (v20)
  {
    *(inited + 96) = v20;
    *(inited + 112) = v21;
    *(inited + 128) = v22;
  }

  else
  {
    sub_26A4F20CC(v25, inited + 96);
  }

  sub_26A4D6FD8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1D80, &qword_26A8593E0);
  sub_26A52EF88();
  v17 = sub_26A8516A8();
  v18 = sub_26A850468();
  v19 = sub_26A84FED8();
  v28[0] = MEMORY[0x277CE04F8];
  v28[1] = MEMORY[0x277CE04E8];
  v27 = v19;
  v26 = v18;
  sub_26A80D690(v17);
}