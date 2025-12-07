uint64_t sub_1DC37A788()
{
  v1 = v0;
  sub_1DC517F4C();
  v2 = OUTLINED_FUNCTION_3_18(0x7543u);
  MEMORY[0x1E1296160](v2, v3 | 0xEF203A7300000000);
  MEMORY[0x1E1296160](*v1, v1[1]);
  MEMORY[0x1E1296160](0x69766F7250207C20, 0xED0000203A726564);
  MEMORY[0x1E1296160](v1[2], v1[3]);
  OUTLINED_FUNCTION_5_24();
  MEMORY[0x1E1296160](v1[4], v1[5]);
  OUTLINED_FUNCTION_5_24();
  MEMORY[0x1E1296160](v1[6], v1[7]);
  return 0;
}

uint64_t sub_1DC37A858@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECC87108 != -1)
  {
    OUTLINED_FUNCTION_0_30(&qword_1ECC87108);
  }

  v2 = sub_1DC5172FC();
  __swift_project_value_buffer(v2, qword_1ECC8F8A0);
  OUTLINED_FUNCTION_7_1();
  v4 = *(v3 + 16);

  return v4(a1);
}

double sub_1DC37A8EC@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1DC37A248(a1, v6);
  v3 = v6[1];
  *a2 = v6[0];
  a2[1] = v3;
  result = *&v7;
  v5 = v8;
  a2[2] = v7;
  a2[3] = v5;
  return result;
}

uint64_t type metadata accessor for OverrideDecision(uint64_t a1)
{
  result = qword_1ECC82D88;
  if (!qword_1ECC82D88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DC37A9A8(uint64_t a1)
{
  OUTLINED_FUNCTION_17_10(a1);
  v2 = *v1;
  sub_1DC37AA04(*v1, *(v1 + 8), *(v1 + 16));
  return v2;
}

uint64_t sub_1DC37AA04(uint64_t result, void *a2, uint64_t a3)
{
  if (result)
  {

    v4 = a2;
  }

  return result;
}

uint64_t sub_1DC37AAD0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13CDMFoundation23NLRouterOverrideService_cachedRegex;
  OUTLINED_FUNCTION_35_1(a1);
  *(v1 + v3) = a1;
}

uint64_t sub_1DC37AB64(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC13CDMFoundation23NLRouterOverrideService_cacheLock;
  OUTLINED_FUNCTION_9_10(a1);
  return *(v1 + v2);
}

uint64_t sub_1DC37AB98(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC13CDMFoundation23NLRouterOverrideService_cacheLock;
  result = OUTLINED_FUNCTION_35_1(a1);
  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_1DC37AC24(uint64_t a1)
{
  OUTLINED_FUNCTION_17_10(a1);
  v2 = *v1;
  sub_1DC2A329C(*v1, v1[1]);
  return v2;
}

BOOL sub_1DC37ACB8()
{
  OUTLINED_FUNCTION_11_16();
  v1 = (*(v0 + 112))();
  v3 = v1;
  if (v1)
  {
    sub_1DC2B834C(v1, v2);
  }

  return v3 != 0;
}

void sub_1DC37AD24()
{
  OUTLINED_FUNCTION_11_16();
  (*(v0 + 184))();
  if (v1 == 1)
  {
    sub_1DC517BAC();
    OUTLINED_FUNCTION_155();
    sub_1DC297814();
    v2 = sub_1DC2A5914();
    v3 = OUTLINED_FUNCTION_40_1();
    sub_1DC516F0C(v3, v4, v5, v6, 51, 2);

    nullsub_1();
  }
}

uint64_t sub_1DC37ADC8(uint64_t a1, unint64_t a2)
{
  v4 = sub_1DC511FFC();
  OUTLINED_FUNCTION_0();
  v27 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8();
  v26 = v7 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v26 - v10;
  v12 = sub_1DC5166BC();
  OUTLINED_FUNCTION_0();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_8();
  v18 = v16 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v26 - v20;
  sub_1DC5166AC();
  sub_1DC51669C();
  (*(v14 + 16))(v18, v21, v12);
  sub_1DC2A6784(a1, a2);
  sub_1DC2A67DC();
  v22 = v28;
  sub_1DC51675C();
  if (!v22)
  {
    v23 = v26;
    v24 = v27;
    (*(v27 + 16))(v26, v11, v4);
    v18 = sub_1DC2A72B0(v23);
    (*(v24 + 8))(v11, v4);
  }

  (*(v14 + 8))(v21, v12);
  return v18;
}

uint64_t sub_1DC37B018(uint64_t a1, uint64_t a2)
{
  v3 = sub_1DC511FFC();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8();
  v9 = v7 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = v22 - v11;
  v13 = sub_1DC51776C();
  v14 = OUTLINED_FUNCTION_10(v13);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_1();
  sub_1DC51775C();
  v15 = sub_1DC51773C();
  if (v17)
  {
    sub_1DC2A67DC();
    memset(v22, 0, sizeof(v22));
    v23 = 0;
    sub_1DC5167AC();
    if (!v2)
    {
      v18 = OUTLINED_FUNCTION_30();
      v19(v18);
      v9 = sub_1DC2A72B0(v9);
      (*(v5 + 8))(v12, v3);
    }
  }

  else
  {
    sub_1DC2D2774(v15, 0, v16);
    swift_allocError();
    *v20 = 0xD000000000000019;
    *(v20 + 8) = 0x80000001DC542250;
    *(v20 + 16) = 0;
    swift_willThrow();
  }

  return v9;
}

uint64_t sub_1DC37B20C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v14[3] = type metadata accessor for NLRouterOverrideService();
  v14[4] = &off_1F57F98B0;
  v14[0] = v2;
  OUTLINED_FUNCTION_11_16();
  v6 = *(v5 + 112);
  v7 = v2;
  v8 = v6();
  if (v8)
  {
    v11 = v9;
    sub_1DC2DBAFC(a1, v14, v8, v9, v10, a2);
  }

  else
  {
    v12 = type metadata accessor for OverrideMatch(0);
    __swift_storeEnumTagSinglePayload(a2, 1, 1, v12);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v14);
}

uint64_t sub_1DC37B2F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v90 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CA40, &unk_1DC5233A0);
  OUTLINED_FUNCTION_10(v3);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v80 - v5;
  v7 = sub_1DC5157EC();
  OUTLINED_FUNCTION_0();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_1();
  v89 = v12 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C080, &qword_1DC522970);
  OUTLINED_FUNCTION_10(v13);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v80 - v15;
  v17 = type metadata accessor for OverrideMatch(0);
  OUTLINED_FUNCTION_35();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_1();
  v21 = v20 - v19;
  v22 = sub_1DC516F5C();
  OUTLINED_FUNCTION_0();
  v24 = v23;
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_1();
  v28 = v27 - v26;
  if (sub_1DC2A051C())
  {
    v81 = v9;
    v82 = v7;
    v83 = v6;
    v84 = v21;
    v86 = v24;
    v87 = v22;
    v88 = a2;
    sub_1DC297814();
    v29 = sub_1DC3990BC();
    v31 = *v29;
    v30 = v29[1];
    v32 = *(v29 + 16);
    v33 = sub_1DC2A5914();
    v34 = OUTLINED_FUNCTION_130();
    v85 = v28;
    sub_1DC2A2ED0(v31, v30, v32, v33, v34 & 1, v28);

    sub_1DC517B9C();
    v35 = sub_1DC2A5914();
    v36 = OUTLINED_FUNCTION_40_1();
    sub_1DC516F0C(v36, v37, v38, v39, 24, 2);

    (*((*MEMORY[0x1E69E7D40] & *v91) + 0x110))(v90);
    if (__swift_getEnumTagSinglePayload(v16, 1, v17) == 1)
    {
      sub_1DC37BD24(v16, &qword_1ECC7C080);
    }

    else
    {
      v50 = v84;
      sub_1DC37BCC0(v16, v84);
      v51 = v83;
      sub_1DC2DEF64();
      v52 = v82;
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v51, 1, v82);
      v54 = v88;
      if (EnumTagSinglePayload != 1)
      {
        v69 = *(v81 + 32);
        v70 = v89;
        v69(v89, v51, v52);
        v69(v54, v70, v52);
        v71 = *(v17 + 20);
        v72 = type metadata accessor for OverrideDecision(0);
        v73 = *(v72 + 20);
        sub_1DC510B6C();
        OUTLINED_FUNCTION_35();
        (*(v74 + 16))(v54 + v73, v50 + v71);
        sub_1DC37BD78(v50);
        v65 = v54;
        v66 = 0;
        v67 = 1;
        v68 = v72;
        goto LABEL_11;
      }

      sub_1DC37BD24(v51, &qword_1ECC7CA40);
      sub_1DC517B8C();
      v55 = sub_1DC2A5914();
      v56 = OUTLINED_FUNCTION_40_1();
      sub_1DC516F0C(v56, v57, v58, v59, 35, 2);

      sub_1DC37BD78(v50);
    }

    sub_1DC517B8C();
    v60 = sub_1DC2A5914();
    v61 = OUTLINED_FUNCTION_40_1();
    sub_1DC516F0C(v61, v62, v63, v64, 20, 2);

    type metadata accessor for OverrideDecision(0);
    v65 = OUTLINED_FUNCTION_24_7();
LABEL_11:
    __swift_storeEnumTagSinglePayload(v65, v66, v67, v68);
    v75 = *v29;
    v76 = v29[1];
    v77 = *(v29 + 16);
    v78 = sub_1DC2A5914();
    v79 = v85;
    sub_1DC2B8848(v85, v75, v76, v77, v78);

    return (*(v86 + 8))(v79, v87);
  }

  sub_1DC517B8C();
  OUTLINED_FUNCTION_155();
  sub_1DC297814();
  v40 = sub_1DC2A5914();
  v41 = OUTLINED_FUNCTION_40_1();
  sub_1DC516F0C(v41, v42, v43, v44, 60, 2);

  type metadata accessor for OverrideDecision(0);
  v45 = OUTLINED_FUNCTION_24_7();

  return __swift_storeEnumTagSinglePayload(v45, v46, v47, v48);
}

void *sub_1DC37B85C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  OUTLINED_FUNCTION_11_16();
  v7 = *(v6 + 176);
  v8 = v7(v90);
  os_unfair_lock_lock(v9);
  v18 = OUTLINED_FUNCTION_13_14(v10, v11, v12, v13, v14, v15, v16, v17, v74, v78, v82, v86, v90[0]);
  v8(v18);
  OUTLINED_FUNCTION_19_15();
  v20 = (*(v19 + 136))();
  v21 = OUTLINED_FUNCTION_30();
  v23 = sub_1DC361440(v21, v22, v20);

  if (!v23)
  {
    v45 = objc_allocWithZone(MEMORY[0x1E696AE70]);

    v46 = OUTLINED_FUNCTION_30();
    v23 = sub_1DC333108(v46, v47, 1);
    OUTLINED_FUNCTION_19_15();
    v49 = *(v48 + 152);
    v50 = v23;
    v58 = OUTLINED_FUNCTION_20_12(v50, v51, v52, v53, v54, v55, v56, v57, v75, v79, v83, v87, v90[0]);
    v59 = v49(v58);
    v61 = v60;
    v62 = v50;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v85 = *v61;
    sub_1DC37BDD4(v62, a1, a2, isUniquelyReferenced_nonNull_native);
    *v61 = v85;
    v72 = OUTLINED_FUNCTION_13_14(v64, v65, v66, v67, v68, v69, v70, v71, v77, v81, v85, v89, v90[0]);
    v59(v72);
  }

  v32 = OUTLINED_FUNCTION_20_12(v24, v25, v26, v27, v28, v29, v30, v31, v75, v79, v83, v87, v90[0]);
  v33 = v7(v32);
  v35 = OUTLINED_FUNCTION_18_15(v33, v34);
  os_unfair_lock_unlock(v35);
  v44 = OUTLINED_FUNCTION_13_14(v36, v37, v38, v39, v40, v41, v42, v43, v76, v80, v84, v88, v90[0]);
  v3(v44);
  return v23;
}

id sub_1DC37BB7C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NLRouterOverrideService();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1DC37BCC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OverrideMatch(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DC37BD24(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_18_15(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_35();
  (*(v5 + 8))(v2);
  return v2;
}

uint64_t sub_1DC37BD78(uint64_t a1)
{
  v2 = type metadata accessor for OverrideMatch(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1DC37BDD4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = sub_1DC2AEB04(a2, a3);
  if (__OFADD__(v9[2], (v11 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v12 = v10;
  v13 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CF70, &qword_1DC525CF8);
  if ((sub_1DC517FFC() & 1) == 0)
  {
    goto LABEL_5;
  }

  v14 = sub_1DC2AEB04(a2, a3);
  if ((v13 & 1) != (v15 & 1))
  {
LABEL_13:
    sub_1DC51829C();
    __break(1u);
    return;
  }

  v12 = v14;
LABEL_5:
  v16 = *v5;
  if (v13)
  {
    v17 = v16[7];
    v18 = *(v17 + 8 * v12);
    *(v17 + 8 * v12) = a1;
  }

  else
  {
    sub_1DC361B0C(v12, a2, a3, a1, v16);
  }
}

uint64_t sub_1DC37BF38(uint64_t a1)
{
  result = sub_1DC5157EC();
  if (v2 <= 0x3F)
  {
    result = sub_1DC510B6C();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1DC37BFC8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DC37BFE8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

void type metadata accessor for os_unfair_lock_s()
{
  if (!qword_1ECC7B998)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1ECC7B998);
    }
  }
}

id sub_1DC37C070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1DC510B6C();
  OUTLINED_FUNCTION_0();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1DC37C268(a1, a2, a3, a4);
  v15 = [objc_allocWithZone(MEMORY[0x1E69C7AF8]) init];
  sub_1DC510B5C();
  v16 = sub_1DC510B1C();
  v18 = v17;
  (*(v10 + 8))(v13, v8);
  sub_1DC37C594(v16, v18, v15, &selRef_setAceId_);
  v19 = v15;
  sub_1DC2CB67C(a3, a4, v19);

  v20 = sub_1DC51772C();
  sub_1DC37C594(v20, v21, v19, &selRef_setDialogPhase_);
  v22 = sub_1DC51772C();
  sub_1DC37C594(v22, v23, v19, &selRef_setDisplayTarget_);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C1C8, &qword_1DC524550);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1DC524520;
  *(v24 + 32) = v14;
  v25 = v14;
  sub_1DC37C600(v24, v19);
  [v19 setSupplemental_];

  return v19;
}

id sub_1DC37C268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1DC510B6C();
  OUTLINED_FUNCTION_0();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [objc_allocWithZone(MEMORY[0x1E69C7B08]) init];
  sub_1DC510B5C();
  v15 = sub_1DC510B1C();
  v17 = v16;
  (*(v10 + 8))(v13, v8);
  sub_1DC37C594(v15, v17, v14, &selRef_setAceId_);

  v18 = v14;
  sub_1DC2CB67C(a3, a4, v18);

  sub_1DC37C434(a1, a2, v18);
  v19 = v18;
  v20 = OUTLINED_FUNCTION_0_31();
  sub_1DC37C48C(v20, v21, v22);
  v23 = OUTLINED_FUNCTION_0_31();
  sub_1DC37C4E4(v23, v24, v25);
  v26 = OUTLINED_FUNCTION_0_31();
  sub_1DC37C53C(v26, v27, v28);
  sub_1DC298C74(0, &qword_1ECC7B920, 0x1E696AD98);
  v29 = sub_1DC517D4C();
  [v19 setListenAfterSpeaking_];

  [v19 setDialogIdentifier_];
  return v19;
}

void sub_1DC37C434(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1DC5176FC();
  [a3 setText_];
}

void sub_1DC37C48C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1DC5176FC();
  [a3 setSpeakableText_];
}

void sub_1DC37C4E4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1DC5176FC();
  [a3 setRedactedText_];
}

void sub_1DC37C53C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1DC5176FC();
  [a3 setRedactedSpeakableText_];
}

void sub_1DC37C594(uint64_t a1, uint64_t a2, void *a3, SEL *a4)
{
  v6 = sub_1DC5176FC();

  [a3 *a4];
}

void sub_1DC37C600(uint64_t a1, void *a2)
{
  sub_1DC298C74(0, &qword_1ECC7B918, 0x1E69C7708);
  v3 = sub_1DC517A0C();

  [a2 setViews_];
}

uint64_t sub_1DC37C698(uint64_t result)
{
  if ((result - 3) < 0xFFFFFFFFFFFFFFFELL)
  {
    return 0;
  }

  return result;
}

uint64_t sub_1DC37C6CC(uint64_t a1)
{
  sub_1DC5182FC();
  MEMORY[0x1E1296BB0](a1);
  return sub_1DC51833C();
}

uint64_t sub_1DC37C74C(uint64_t a1, uint64_t a2)
{
  sub_1DC5182FC();
  MEMORY[0x1E1296BB0](a2);
  return sub_1DC51833C();
}

uint64_t sub_1DC37C790@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1DC37C698(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

unint64_t sub_1DC37C7D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECC7CF78;
  if (!qword_1ECC7CF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7CF78);
  }

  return result;
}

uint64_t sub_1DC37C838()
{
  v0 = sub_1DC5172FC();
  __swift_allocate_value_buffer(v0, qword_1ECC8F8B8);
  v1 = __swift_project_value_buffer(v0, qword_1ECC8F8B8);
  v2 = swift_allocObject();
  v2[2] = 0xD000000000000028;
  v2[3] = 0x80000001DC540200;
  v2[4] = 0xD000000000000017;
  v2[5] = 0x80000001DC525E00;
  *v1 = v2;
  v3 = *MEMORY[0x1E69DB098];
  v4 = *(*(v0 - 8) + 104);

  return v4(v1, v3, v0);
}

uint64_t sub_1DC37C914(uint64_t a1)
{
  v2 = sub_1DC5172FC();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DC51721C();
  OUTLINED_FUNCTION_0();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v13, a1, v8);
  if (qword_1ECC87290 != -1)
  {
    OUTLINED_FUNCTION_0_32(&qword_1ECC87290);
  }

  v14 = __swift_project_value_buffer(v2, qword_1ECC8F8B8);
  (*(v4 + 16))(v7, v14, v2);
  v15 = sub_1DC303854(v13, v7, &unk_1F57F99D0);
  (*(v10 + 8))(a1, v8);
  return v15;
}

uint64_t sub_1DC37CAC8@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECC87290 != -1)
  {
    OUTLINED_FUNCTION_0_32(&qword_1ECC87290);
  }

  v2 = sub_1DC5172FC();
  __swift_project_value_buffer(v2, qword_1ECC8F8B8);
  OUTLINED_FUNCTION_2_5();
  v4 = *(v3 + 16);

  return v4(a1);
}

uint64_t sub_1DC37CB54@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1DC37C914(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1DC37CB8C(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

id sub_1DC37CC8C(uint64_t a1, unint64_t a2, void (*a3)(void), uint64_t a4)
{
  v73 = a2;
  v71 = a1;
  v7 = sub_1DC516F7C();
  OUTLINED_FUNCTION_0();
  v9 = v8;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v72 = &v60 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v60 - v16;
  result = [objc_opt_self() sharedManager];
  if (result)
  {
    v19 = result;
    v20 = [result currentPersona];

    if (v20)
    {
      v63 = a4;
      v64 = a3;
      v65 = v4;
      v21 = sub_1DC37D62C(v20);
      v23 = v22;
      v24 = sub_1DC28D414();
      v25 = *(v9 + 16);
      v67 = v24;
      v68 = v9 + 16;
      v66 = v25;
      (v25)(v17);

      v26 = v73;

      v27 = v9;
      v28 = sub_1DC516F6C();
      v29 = sub_1DC517B9C();

      v30 = os_log_type_enabled(v28, v29);
      v69 = v21;
      v70 = v23;
      if (v30)
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v62 = v7;
        v60 = v32;
        v74 = v32;
        *v31 = 136315394;
        v61 = v27;
        v33 = v71;
        *(v31 + 4) = sub_1DC291244(v71, v73, &v74);
        *(v31 + 12) = 2080;
        if (v23)
        {
          v34 = v21;
        }

        else
        {
          v34 = 7104878;
        }

        if (v23)
        {
          v35 = v23;
        }

        else
        {
          v35 = 0xE300000000000000;
        }

        v36 = sub_1DC291244(v34, v35, &v74);

        *(v31 + 14) = v36;
        _os_log_impl(&dword_1DC287000, v28, v29, "#assume-persona: executing with assumedPersonaId=%s, originalPersonaId=%s ", v31, 0x16u);
        swift_arrayDestroy();
        v7 = v62;
        OUTLINED_FUNCTION_8_0();
        MEMORY[0x1E1298840]();
        v26 = v73;
        OUTLINED_FUNCTION_8_0();
        MEMORY[0x1E1298840]();

        v37 = *(v61 + 8);
        v37(v17, v7);
      }

      else
      {

        v37 = *(v27 + 8);
        v37(v17, v7);
        v33 = v71;
      }

      v46 = sub_1DC37D690(v33, v26, v20);
      if (v46)
      {
        v47 = v46;
        v66(v72, v67, v7);
        v48 = v47;
        v49 = sub_1DC516F6C();
        v50 = sub_1DC517BAC();

        if (os_log_type_enabled(v49, v50))
        {
          v51 = swift_slowAlloc();
          v52 = v7;
          v53 = swift_slowAlloc();
          *v51 = 138412290;
          v54 = v48;
          v55 = _swift_stdlib_bridgeErrorToNSError();
          *(v51 + 4) = v55;
          *v53 = v55;
          _os_log_impl(&dword_1DC287000, v49, v50, "#assume-persona: failed to assume persona. Error=%@", v51, 0xCu);
          sub_1DC3040B4(v53);
          v7 = v52;
          OUTLINED_FUNCTION_8_0();
          MEMORY[0x1E1298840]();
          OUTLINED_FUNCTION_8_0();
          MEMORY[0x1E1298840]();
        }

        v56 = (v37)(v72, v7);
        sub_1DC37D5D8(v56, v57, v58);
        swift_allocError();
        *v59 = 1;
        swift_willThrow();

        sub_1DC37D220(v69, v70, v20);
      }

      else
      {
        v64();
        sub_1DC37D220(v69, v70, v20);
      }
    }

    else
    {
      v38 = sub_1DC28D414();
      (*(v9 + 16))(v13, v38, v7);
      v39 = sub_1DC516F6C();
      v40 = sub_1DC517BAC();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 0;
        _os_log_impl(&dword_1DC287000, v39, v40, "#assume-persona: couldn't fetch current persona", v41, 2u);
        OUTLINED_FUNCTION_8_0();
        MEMORY[0x1E1298840]();
      }

      v42 = (*(v9 + 8))(v13, v7);
      sub_1DC37D5D8(v42, v43, v44);
      swift_allocError();
      *v45 = 0;
      return swift_willThrow();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1DC37D220(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = sub_1DC516F7C();
  OUTLINED_FUNCTION_0();
  v8 = v7;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v38 - v13;
  v15 = sub_1DC28D414();
  v16 = *(v8 + 16);
  v43 = v15;
  v44 = v6;
  v42 = v16;
  (v16)(v14);

  v17 = sub_1DC516F6C();
  v18 = sub_1DC517B9C();

  v19 = os_log_type_enabled(v17, v18);
  v41 = a1;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v39 = a3;
    v21 = v20;
    v22 = swift_slowAlloc();
    v45 = v22;
    *v21 = 136315138;
    v40 = v8;
    if (a2)
    {
      v23 = a1;
    }

    else
    {
      v23 = 7104878;
    }

    v24 = v12;
    if (a2)
    {
      v25 = a2;
    }

    else
    {
      v25 = 0xE300000000000000;
    }

    v26 = sub_1DC291244(v23, v25, &v45);
    v12 = v24;

    *(v21 + 4) = v26;
    v8 = v40;
    _os_log_impl(&dword_1DC287000, v17, v18, "#assume-persona: reverting to oldPersonaId=%s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
    OUTLINED_FUNCTION_8_0();
    MEMORY[0x1E1298840]();
    a3 = v39;
    OUTLINED_FUNCTION_8_0();
    MEMORY[0x1E1298840]();
  }

  v27 = *(v8 + 8);
  v27(v14, v44);
  if (a2)
  {
    v28 = sub_1DC5176FC();
  }

  else
  {
    v28 = 0;
  }

  v29 = [a3 generateAndRestorePersonaContextWithPersonaUniqueString_];

  if (v29)
  {
    v42(v12, v43, v44);
    v30 = v29;
    v31 = sub_1DC516F6C();
    v32 = sub_1DC517BAC();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = v12;
      v35 = swift_slowAlloc();
      *v33 = 138412290;
      v36 = v30;
      v37 = _swift_stdlib_bridgeErrorToNSError();
      *(v33 + 4) = v37;
      *v35 = v37;
      _os_log_impl(&dword_1DC287000, v31, v32, "#assume-persona: failed to assume persona. Error=%@", v33, 0xCu);
      sub_1DC3040B4(v35);
      v12 = v34;
      OUTLINED_FUNCTION_8_0();
      MEMORY[0x1E1298840]();
      OUTLINED_FUNCTION_8_0();
      MEMORY[0x1E1298840]();
    }

    else
    {
      v36 = v31;
      v31 = v30;
    }

    v27(v12, v44);
  }
}

unint64_t sub_1DC37D5D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECC7CF80;
  if (!qword_1ECC7CF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7CF80);
  }

  return result;
}

uint64_t sub_1DC37D62C(void *a1)
{
  v1 = [a1 userPersonaUniqueString];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1DC51772C();

  return v3;
}

id sub_1DC37D690(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1DC5176FC();
  v5 = [a3 generateAndRestorePersonaContextWithPersonaUniqueString_];

  return v5;
}

unint64_t sub_1DC37D6E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECC7CF88;
  if (!qword_1ECC7CF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7CF88);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CDMPersonaError(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1DC37D814()
{
  v0 = swift_beginAccess();
  v3 = byte_1ECC7CF90;
  if (byte_1ECC7CF90 == 2)
  {
    v5[3] = &type metadata for CDMFeatureFlags;
    v5[4] = sub_1DC37D88C(v0, v1, v2);
    v3 = sub_1DC510D0C();
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
  }

  return v3 & 1;
}

unint64_t sub_1DC37D88C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECC7CF98;
  if (!qword_1ECC7CF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7CF98);
  }

  return result;
}

unint64_t sub_1DC37D8E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECC7CFA0;
  if (!qword_1ECC7CFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7CFA0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CDMFeatureFlags(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1DC37D9F4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CFC0, &qword_1DC52EA10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DC522F20;
  *(inited + 32) = 0x4E495F6E65;
  *(inited + 40) = 0xE500000000000000;
  *(inited + 48) = sub_1DC33347C(&unk_1F57F9C40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CFC8, &qword_1DC526220);
  result = sub_1DC51764C();
  qword_1ECC8F400 = result;
  return result;
}

uint64_t sub_1DC37DAA0()
{
  OUTLINED_FUNCTION_10_0();
  v0 = swift_allocObject();
  if (qword_1ECC7EE50 != -1)
  {
    OUTLINED_FUNCTION_1_21(&qword_1ECC7EE50);
  }

  *(v0 + 16) = qword_1ECC8F400;

  return v0;
}

uint64_t sub_1DC37DAFC(uint64_t a1)
{
  OUTLINED_FUNCTION_10_0();
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t sub_1DC37DB28(char *a1)
{
  v3 = *a1;
  v2 = *(a1 + 1);
  v4 = OUTLINED_FUNCTION_30();
  v7 = sub_1DC2E4CBC(v4, v5, v6);
  if (!v7)
  {
    sub_1DC37DD98(0, v8, v9);
    swift_allocError();
    *v23 = v3;
    *(v23 + 8) = v2;
    *(v23 + 16) = 0;

LABEL_13:
    swift_willThrow();
    return OUTLINED_FUNCTION_30();
  }

  v10 = v7;
  OUTLINED_FUNCTION_12_0();
  v11 = OUTLINED_FUNCTION_30();
  if ((v12(v11) & 1) == 0)
  {

    OUTLINED_FUNCTION_30();
    nullsub_1();
    return OUTLINED_FUNCTION_30();
  }

  type metadata accessor for RVSRequest(0);
  OUTLINED_FUNCTION_12_0();
  v14 = (*(v13 + 128))();
  v16 = v15;
  if (v15)
  {

    v17 = sub_1DC332FF4(v14, v16, v10);

    if (!v17)
    {

      sub_1DC37DD98(v24, v25, v26);
      swift_allocError();
      *v27 = v14;
      *(v27 + 8) = v16;
      *(v27 + 16) = 1;
      goto LABEL_13;
    }
  }

  OUTLINED_FUNCTION_12_0();
  (*(v18 + 120))();
  v20 = v19;

  if (!v16)
  {
  }

  nullsub_1();
  if (!v20)
  {
  }

  nullsub_1();
  OUTLINED_FUNCTION_12_0();
  (*(v21 + 112))(&a1[v22]);

  return OUTLINED_FUNCTION_30();
}

unint64_t sub_1DC37DD98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECC7CFA8;
  if (!qword_1ECC7CFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7CFA8);
  }

  return result;
}

uint64_t sub_1DC37DDEC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D3A0, &unk_1DC522560);
  v3 = OUTLINED_FUNCTION_10(v2);
  MEMORY[0x1EEE9AC00](v3);
  v122 = (&v105 - v4);
  OUTLINED_FUNCTION_12();
  v124 = sub_1DC51190C();
  OUTLINED_FUNCTION_0();
  v114 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8();
  v106 = (v7 - v8);
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v9);
  v123 = &v105 - v10;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v11);
  v117 = &v105 - v12;
  OUTLINED_FUNCTION_12();
  v112 = sub_1DC51149C();
  OUTLINED_FUNCTION_35();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_1();
  v111 = v15 - v14;
  OUTLINED_FUNCTION_12();
  v110 = sub_1DC511B7C();
  OUTLINED_FUNCTION_35();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_1();
  v109 = v18 - v17;
  OUTLINED_FUNCTION_12();
  v108 = sub_1DC51176C();
  OUTLINED_FUNCTION_35();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_1();
  v107 = v21 - v20;
  OUTLINED_FUNCTION_12();
  v121 = sub_1DC516F7C();
  OUTLINED_FUNCTION_0();
  v119 = v22;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_8();
  v113 = v24 - v25;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v26);
  v118 = &v105 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D390, &qword_1DC527790);
  v29 = OUTLINED_FUNCTION_10(v28);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_8();
  v32 = v30 - v31;
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v105 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CFB0, qword_1DC526050);
  v37 = OUTLINED_FUNCTION_10(v36);
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v105 - v38;
  v40 = sub_1DC5119DC();
  OUTLINED_FUNCTION_0();
  v42 = v41;
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_8();
  v120 = (v44 - v45);
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v46);
  v116 = &v105 - v47;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v48);
  v115 = &v105 - v49;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v50);
  v52 = &v105 - v51;
  sub_1DC28F3B8(a1, v35, &qword_1ECC7D390, &qword_1DC527790);
  v53 = type metadata accessor for DialogState(0);
  if (__swift_getEnumTagSinglePayload(v35, 1, v53) == 1)
  {
    sub_1DC28EB30(v35, &qword_1ECC7D390, &qword_1DC527790);
    __swift_storeEnumTagSinglePayload(v39, 1, 1, v40);
LABEL_4:
    sub_1DC28EB30(v39, &qword_1ECC7CFB0, qword_1DC526050);
    goto LABEL_5;
  }

  sub_1DC28F3B8(v35, v39, &qword_1ECC7CFB0, qword_1DC526050);
  OUTLINED_FUNCTION_6_14();
  sub_1DC37EDD0(v35, v54);
  if (__swift_getEnumTagSinglePayload(v39, 1, v40) == 1)
  {
    goto LABEL_4;
  }

  v61 = v42;
  (*(v42 + 32))(v52, v39, v40);
  if (sub_1DC51194C() & 1) != 0 || (sub_1DC51195C() & 1) != 0 || (sub_1DC51191C())
  {
    v62 = sub_1DC28D414();
    v63 = v118;
    v64 = v119;
    v65 = v121;
    (*(v119 + 16))(v118, v62, v121);
    v66 = *(v61 + 16);
    v67 = v115;
    v66(v115, v52, v40);
    v68 = v116;
    v66(v116, v52, v40);
    v66(v120, v52, v40);
    v69 = v63;
    v70 = sub_1DC516F6C();
    v71 = sub_1DC517B9C();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = OUTLINED_FUNCTION_82();
      v124 = swift_slowAlloc();
      v125[0] = v124;
      *v72 = 136315650;
      v73 = v68;
      LODWORD(v123) = v71;
      sub_1DC5119CC();
      v74 = sub_1DC51777C();
      v76 = v75;
      v77 = *(v61 + 8);
      v77(v67, v40);
      v78 = sub_1DC291244(v74, v76, v125);

      *(v72 + 4) = v78;
      *(v72 + 12) = 2080;
      sub_1DC51192C();
      sub_1DC51777C();
      v77(v73, v40);
      v79 = OUTLINED_FUNCTION_43();
      v82 = sub_1DC291244(v79, v80, v81);

      *(v72 + 14) = v82;
      *(v72 + 22) = 2080;
      v83 = v120;
      sub_1DC5119AC();
      sub_1DC51777C();
      v77(v83, v40);
      v84 = OUTLINED_FUNCTION_43();
      v87 = sub_1DC291244(v84, v85, v86);

      *(v72 + 24) = v87;
      _os_log_impl(&dword_1DC287000, v70, v123, "Responding with lastSiriResponse. Siri prompted:%s, Siri Gave Options: %s, Siri Offered: %s", v72, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_66();
      OUTLINED_FUNCTION_66();

      (*(v119 + 8))(v118, v121);
      v77(v52, v40);
    }

    else
    {

      v103 = *(v61 + 8);
      v103(v120, v40);
      v103(v68, v40);
      v103(v67, v40);
      (*(v64 + 8))(v69, v65);
      v103(v52, v40);
    }

    return 0;
  }

  (*(v42 + 8))(v52, v40);
LABEL_5:
  sub_1DC28F3B8(a1, v32, &qword_1ECC7D390, &qword_1DC527790);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v32, 1, v53);
  v56 = v123;
  v57 = v124;
  v58 = v122;
  if (EnumTagSinglePayload == 1)
  {
    sub_1DC28EB30(v32, &qword_1ECC7D390, &qword_1DC527790);
    __swift_storeEnumTagSinglePayload(v58, 1, 1, v57);
LABEL_8:
    sub_1DC28EB30(v58, &unk_1ECC7D3A0, &unk_1DC522560);
    return 1;
  }

  sub_1DC28F3B8(v32 + *(v53 + 20), v122, &unk_1ECC7D3A0, &unk_1DC522560);
  OUTLINED_FUNCTION_6_14();
  sub_1DC37EDD0(v32, v59);
  if (__swift_getEnumTagSinglePayload(v58, 1, v57) == 1)
  {
    goto LABEL_8;
  }

  v88 = v114;
  v89 = v117;
  (*(v114 + 32))(v117, v58, v57);
  if ((sub_1DC5118CC() & 1) == 0)
  {
    (*(v88 + 8))(v89, v57);
    return 1;
  }

  v90 = sub_1DC28D414();
  v91 = v119;
  v92 = v113;
  (*(v119 + 16))(v113, v90, v121);
  v93 = v89;
  v94 = *(v88 + 16);
  v94(v56, v89, v57);
  v95 = sub_1DC516F6C();
  v96 = sub_1DC517B9C();
  if (os_log_type_enabled(v95, v96))
  {
    v97 = swift_slowAlloc();
    v122 = OUTLINED_FUNCTION_82();
    v125[0] = v122;
    *v97 = 136315138;
    v94(v106, v56, v57);
    v98 = sub_1DC51777C();
    v100 = v99;
    v101 = *(v88 + 8);
    v101(v56, v57);
    v102 = sub_1DC291244(v98, v100, v125);

    *(v97 + 4) = v102;
    _os_log_impl(&dword_1DC287000, v95, v96, "Responding with lastSiriResponse. LegacyNLContext: %s", v97, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v122);
    OUTLINED_FUNCTION_66();
    OUTLINED_FUNCTION_66();

    (*(v91 + 8))(v113, v121);
    v101(v117, v57);
  }

  else
  {

    v104 = *(v88 + 8);
    v104(v56, v57);
    (*(v91 + 8))(v92, v121);
    v104(v93, v57);
  }

  return 0;
}

uint64_t sub_1DC37E8CC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (!a1)
  {
    return 0;
  }

  v9 = (*(*a1 + 88))();
  if (!*(v9 + 16))
  {

    return 0;
  }

  v10 = *(v9 + 32);

  v33 = v10[2];
  if (v33)
  {
    v12 = v10[4];
    v13 = v10[5];

    if (sub_1DC332FF4(v12, v13, a2))
    {

      return v12;
    }
  }

  v31 = a4;
  v32 = a5;
  v14 = 0;
  v15 = MEMORY[0x1E69E7CC0];
  while (1)
  {
LABEL_9:
    if (v14 == v33)
    {

      v29 = v15[2];
      if (v29)
      {
        v12 = v15[4];
        if (v29 != 1 && a3)
        {
          if (a3 != 1)
          {

            return v31;
          }

          v30 = v12 == v31 && v15[5] == v32;
          if (v30 || (sub_1DC51825C() & 1) != 0)
          {
            v12 = v15[6];
          }
        }

        return v12;
      }

      return 0;
    }

    v16 = v14;
    if (v14 >= v10[2])
    {
      break;
    }

    ++v14;
    if (*(a2 + 16))
    {
      v17 = &v10[2 * v16 + 4];
      v19 = *v17;
      v18 = v17[1];
      sub_1DC5182FC();

      sub_1DC51769C();
      v20 = sub_1DC51833C();
      v21 = ~(-1 << *(a2 + 32));
      do
      {
        v22 = v20 & v21;
        if (((*(a2 + 56 + (((v20 & v21) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v20 & v21)) & 1) == 0)
        {

          goto LABEL_9;
        }

        v23 = (*(a2 + 48) + 16 * v22);
        if (*v23 == v19 && v23[1] == v18)
        {
          break;
        }

        v25 = sub_1DC51825C();
        v20 = v22 + 1;
      }

      while ((v25 & 1) == 0);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1DC2DF6FC(0, v15[2] + 1, 1);
      }

      v27 = v15[2];
      v26 = v15[3];
      if (v27 >= v26 >> 1)
      {
        result = sub_1DC2DF6FC((v26 > 1), v27 + 1, 1);
      }

      v15[2] = v27 + 1;
      v28 = &v15[2 * v27];
      v28[4] = v19;
      v28[5] = v18;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DC37EBB4(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
  }

  else
  {
    if (!a1)
    {
      return 0;
    }

    v2 = (*(*a1 + 88))();
  }

  if (v2[2])
  {
    v3 = v2[4];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id sub_1DC37EC5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = sub_1DC2A32B0(a1, a2, a3);
  v7 = MEMORY[0x1E69E6158];
  sub_1DC517E1C();
  v3 = [objc_opt_self() sharedPreferences];
  OUTLINED_FUNCTION_43();
  v4 = sub_1DC5176FC();

  v5 = [v3 multilingualResponseEnabledForLanguage_];

  return v5;
}

uint64_t sub_1DC37ED7C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if ((a3 & 1) == 0)
  {
    if ((a6 & 1) == 0)
    {
      goto LABEL_3;
    }

    return 0;
  }

  if ((a6 & 1) == 0)
  {
    return 0;
  }

LABEL_3:
  if (a1 == a4 && a2 == a5)
  {
    return 1;
  }

  else
  {
    return sub_1DC51825C();
  }
}

uint64_t sub_1DC37EDD0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_35();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_1DC37EE2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECC7CFB8;
  if (!qword_1ECC7CFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7CFB8);
  }

  return result;
}

uint64_t sub_1DC37EEB0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 17))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DC37EEF0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ReponseVariantMultipleUserVariants(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 2 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 2) >> 8 < 0xFF)
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
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ReponseVariantMultipleUserVariants(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

void *sub_1DC37F0F8()
{
  v1 = OBJC_IVAR___CDMNluResponse_objcProto;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1DC37F1A0(uint64_t a1)
{
  v3 = OBJC_IVAR___CDMNluResponse_objcProto;
  OUTLINED_FUNCTION_142(v1 + OBJC_IVAR___CDMNluResponse_objcProto, v5);
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1DC37F1F0@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x60))();
  *a2 = result;
  return result;
}

uint64_t sub_1DC37F24C(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x68);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_1DC37F360(uint64_t a1, void **a2)
{
  v4 = sub_1DC5137CC();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, a1);
  return (*((*MEMORY[0x1E69E7D40] & **a2) + 0x80))(v6);
}

uint64_t sub_1DC37F45C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___CDMNluResponse_swiftProto;
  swift_beginAccess();
  sub_1DC5137CC();
  OUTLINED_FUNCTION_35();
  return (*(v4 + 16))(a1, v1 + v3);
}

uint64_t sub_1DC37F4DC(uint64_t a1)
{
  v3 = OBJC_IVAR___CDMNluResponse_swiftProto;
  OUTLINED_FUNCTION_1_22(v1 + OBJC_IVAR___CDMNluResponse_swiftProto, v6);
  sub_1DC5137CC();
  OUTLINED_FUNCTION_35();
  (*(v4 + 40))(v1 + v3, a1);
  return swift_endAccess();
}

id CDMNluResponse.init(objcProto:)(void *a1)
{
  v2 = v1;
  v4 = sub_1DC51670C();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C370, &qword_1DC5230E0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v26[-v6];
  v8 = sub_1DC5137CC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v26[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = OBJC_IVAR___CDMNluResponse_objcProto;
  *&v2[v12] = [objc_allocWithZone(MEMORY[0x1E69D1158]) init];
  v13 = OBJC_IVAR___CDMNluResponse_swiftProto;
  sub_1DC5137BC();
  OUTLINED_FUNCTION_142(&v2[v12], v30);
  v14 = *&v2[v12];
  *&v2[v12] = a1;
  v15 = a1;

  v16 = v15;
  v17 = sub_1DC30EB38(v16);
  if (v18 >> 60 == 15)
  {
    v19 = sub_1DC517BAC();
    sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
    v20 = sub_1DC2C0F8C();
    sub_1DC516F0C(v19, &dword_1DC287000, v20, "Unable to get passed in objcProto.data", 38, 2, MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v21 = v17;
    v22 = v18;
    v28 = 0;
    memset(v27, 0, sizeof(v27));
    sub_1DC2A6784(v17, v18);
    sub_1DC5166FC();
    sub_1DC37FFA4();
    sub_1DC51677C();
    sub_1DC301FE0(v21, v22);
    __swift_storeEnumTagSinglePayload(v7, 0, 1, v8);
    (*(v9 + 32))(v11, v7, v8);
    OUTLINED_FUNCTION_1_22(&v2[v13], v27);
    (*(v9 + 40))(&v2[v13], v11, v8);
    swift_endAccess();
  }

  v23 = type metadata accessor for CDMNluResponse(0);
  v29.receiver = v2;
  v29.super_class = v23;
  v24 = objc_msgSendSuper2(&v29, sel_init);

  return v24;
}

id CDMNluResponse.init(swiftProto:)(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR___CDMNluResponse_objcProto;
  *&v1[v4] = [objc_allocWithZone(MEMORY[0x1E69D1158]) init];
  v5 = OBJC_IVAR___CDMNluResponse_swiftProto;
  sub_1DC5137BC();
  OUTLINED_FUNCTION_1_22(&v2[v5], v19);
  v6 = sub_1DC5137CC();
  v7 = *(v6 - 8);
  (*(v7 + 24))(&v2[v5], a1, v6);
  swift_endAccess();
  sub_1DC37FFA4();
  v10 = sub_1DC51678C();
  v12 = v11;
  v13 = objc_allocWithZone(MEMORY[0x1E69D1158]);
  v14 = sub_1DC339190(v10, v12);
  if (v14)
  {
    v15 = v14;
    OUTLINED_FUNCTION_142(&v2[v4], v19);
    v9 = *&v2[v4];
    *&v2[v4] = v15;
  }

  else
  {
    v8 = sub_1DC517BAC();
    sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
    v9 = sub_1DC2C0F8C();
    sub_1DC516F0C(v8, &dword_1DC287000, v9, "Unable to deserialize to Obj-C SIRINLUEXTERNALCDMNluRequest version", 67, 2, MEMORY[0x1E69E7CC0]);
  }

  v18.receiver = v2;
  v18.super_class = type metadata accessor for CDMNluResponse(0);
  v16 = objc_msgSendSuper2(&v18, sel_init);
  (*(v7 + 8))(a1, v6);
  return v16;
}

char *CDMNluResponse.init(coder:)(void *a1)
{
  v3 = OBJC_IVAR___CDMNluResponse_objcProto;
  *&v1[v3] = [objc_allocWithZone(MEMORY[0x1E69D1158]) init];
  sub_1DC5137BC();
  v11.receiver = v1;
  v11.super_class = type metadata accessor for CDMNluResponse(0);
  v4 = objc_msgSendSuper2(&v11, sel_init);
  sub_1DC298C74(0, &qword_1ECC7CFE0, 0x1E69D1158);
  v5 = v4;
  v6 = sub_1DC517D3C();

  v7 = OBJC_IVAR___CDMNluResponse_objcProto;
  OUTLINED_FUNCTION_142(&v5[OBJC_IVAR___CDMNluResponse_objcProto], v10);
  v8 = *&v5[v7];
  *&v5[v7] = v6;

  return v5;
}

void sub_1DC37FD20(void *a1)
{
  v3 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x60))();
  v4 = sub_1DC5176FC();
  [a1 encodeObject:v3 forKey:v4];
}

id CDMNluResponse.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CDMNluResponse.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CDMNluResponse(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for CDMNluResponse(uint64_t a1)
{
  result = qword_1EDAC9698;
  if (!qword_1EDAC9698)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1DC37FFA4()
{
  result = qword_1EDAC8020;
  if (!qword_1EDAC8020)
  {
    sub_1DC5137CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAC8020);
  }

  return result;
}

uint64_t sub_1DC37FFFC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C370, &qword_1DC5230E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DC38006C(uint64_t a1)
{
  result = sub_1DC5137CC();
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

uint64_t sub_1DC3802C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v133 = a2;
  v135 = sub_1DC51122C();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_15();
  v126 = v6;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v114 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CA40, &unk_1DC5233A0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  OUTLINED_FUNCTION_15();
  v121 = v11;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v12);
  v122 = v114 - v13;
  v134 = sub_1DC5157EC();
  OUTLINED_FUNCTION_0();
  v124 = v14;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_15();
  v119 = v16;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v17);
  v123 = v114 - v18;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v19);
  v120 = v114 - v20;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v21);
  v125 = v114 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C158, &unk_1DC5234A0);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = v114 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C160, qword_1DC5233B0);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v28 = v114 - v27;
  v29 = type metadata accessor for NLRouterNLParseResponse(0);
  OUTLINED_FUNCTION_35();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_1();
  v127 = (v32 - v31);
  sub_1DC516F5C();
  OUTLINED_FUNCTION_0();
  v131 = v34;
  v132 = v33;
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_1();
  v37 = v36 - v35;
  v38 = sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
  v39 = sub_1DC2BE518();
  v40 = OUTLINED_FUNCTION_130();
  v129 = v38;
  v130 = v37;
  sub_1DC2A2ED0("HeuristicRules.CalendarRule", 27, 2, v39, v40 & 1, v37);

  v41 = *(type metadata accessor for NLRouterServiceRequest(0) + 32);
  v128 = a1;
  sub_1DC28F358(a1 + v41, v25, &qword_1ECC7C158, &unk_1DC5234A0);
  v42 = type metadata accessor for NLRouterTurnProbingResult(0);
  if (__swift_getEnumTagSinglePayload(v25, 1, v42) != 1)
  {
    sub_1DC28F358(v25, v28, &qword_1ECC7C160, qword_1DC5233B0);
    sub_1DC2E5408(v25, type metadata accessor for NLRouterTurnProbingResult);
    if (__swift_getEnumTagSinglePayload(v28, 1, v29) == 1)
    {
      goto LABEL_4;
    }

    sub_1DC2E53A4(v28, v127);
    v53 = type metadata accessor for HeuristicRoutingRequest(0);
    v54 = *(v53 + 20);
    v55 = v124;
    v56 = v125;
    v57 = v134;
    (*(v124 + 16))(v125, v128 + v54, v134);
    v58 = sub_1DC298C74(0, &qword_1ECC7B9B0, 0x1E695E000);
    v59 = sub_1DC34351C();
    v61 = v60;
    if (v59 == sub_1DC312FB4(0) && v61 == v62)
    {

LABEL_20:
      v66 = v122;
    }

    else
    {
      v117 = v59;
      v118 = v54;
      v64 = sub_1DC51825C();

      if ((v64 & 1) == 0)
      {
        v115 = v61;
        v114[1] = v53;
        v116 = v58;
        v67 = 0;
        v68 = *v127;
        v69 = *(*v127 + 16);
        do
        {
          if (v69 == v67)
          {
            v57 = v134;
            v55 = v124;
            v56 = v125;
            v54 = v118;
            goto LABEL_20;
          }

          if (v67 >= *(v68 + 16))
          {
            __break(1u);
LABEL_49:
            __break(1u);
            return result;
          }

          OUTLINED_FUNCTION_7_12();
          v72 = v135;
          (*(v4 + 16))(v9, v70 + v71 * v67++, v135);
          v73 = sub_1DC5111AC();
          v74 = sub_1DC380D54(v73, 1);

          result = (*(v4 + 8))(v9, v72);
        }

        while ((v74 & 1) == 0);
        v75 = sub_1DC312F68(v117, v115);
        v57 = v134;
        v55 = v124;
        v56 = v125;
        v54 = v118;
        v66 = v122;
        if (v75 == 4)
        {
          goto LABEL_22;
        }

        sub_1DC312E7C(v75, v122);
        if (__swift_getEnumTagSinglePayload(v66, 1, v57) != 1)
        {
          v76 = *(v55 + 32);
          v77 = v120;
          v76(v120, v66, v57);
          v78 = v123;
          sub_1DC32F9DC();
          v79 = *(v124 + 8);
          v79(v77, v57);
          v79(v56, v57);
          v76(v56, v78, v57);
          v55 = v124;
          goto LABEL_30;
        }

LABEL_23:
        sub_1DC28EB30(v66, &qword_1ECC7CA40, &unk_1DC5233A0);
        v83 = v123;
        (*(v55 + 104))(v123, *MEMORY[0x1E69D02F8], v57);
        v84 = sub_1DC5157DC();
        v85 = v83;
        v79 = *(v55 + 8);
        v122 = v55 + 8;
        v79(v85, v57);
        if ((v84 & 1) == 0)
        {
LABEL_30:
          v92 = v133;
LABEL_43:
          v111 = sub_1DC5157DC();
          sub_1DC2E5408(v127, type metadata accessor for NLRouterNLParseResponse);
          if (v111)
          {
            v79(v56, v57);
            v112 = 1;
          }

          else
          {
            (*(v55 + 32))(v92, v56, v57);
            v112 = 0;
          }

          v51 = v131;
          v50 = v132;
          v52 = v130;
          __swift_storeEnumTagSinglePayload(v92, v112, 1, v57);
          goto LABEL_47;
        }

        v86 = sub_1DC3435F8();
        v88 = v87;
        if (v86 == sub_1DC312FB4(0) && v88 == v89)
        {

          v92 = v133;
        }

        else
        {
          v120 = v86;
          v91 = sub_1DC51825C();

          if ((v91 & 1) == 0)
          {
            v116 = v88;
            v117 = v79;
            v118 = v54;
            v93 = 0;
            v94 = v126;
            v95 = *v127;
            v96 = *(*v127 + 16);
            do
            {
              if (v96 == v93)
              {
                v79 = v117;
                v92 = v133;
                v57 = v134;
                v55 = v124;
                v56 = v125;
                goto LABEL_40;
              }

              if (v93 >= *(v95 + 16))
              {
                goto LABEL_49;
              }

              OUTLINED_FUNCTION_7_12();
              v99 = v135;
              (*(v4 + 16))(v94, v97 + v98 * v93++, v135);
              v100 = sub_1DC5111AC();
              v101 = sub_1DC380D54(v100, 0);

              result = (*(v4 + 8))(v94, v99);
            }

            while ((v101 & 1) == 0);
            v102 = sub_1DC312F68(v120, v116);
            v92 = v133;
            v57 = v134;
            v55 = v124;
            v56 = v125;
            v79 = v117;
            v103 = v121;
            if (v102 == 4)
            {
              goto LABEL_41;
            }

            sub_1DC312E7C(v102, v121);
            if (__swift_getEnumTagSinglePayload(v103, 1, v57) != 1)
            {
              v104 = *(v55 + 32);
              v105 = v119;
              v104(v119, v103, v57);
              v106 = v123;
              sub_1DC32DE40();
              v117(v105, v57);
              v117(v56, v57);
              v107 = v106;
              v79 = v117;
              v104(v56, v107, v57);
              v55 = v124;
              goto LABEL_43;
            }

            goto LABEL_42;
          }

          v92 = v133;
          v56 = v125;
        }

LABEL_40:
        v103 = v121;

LABEL_41:
        OUTLINED_FUNCTION_19();
        __swift_storeEnumTagSinglePayload(v108, v109, v110, v57);
LABEL_42:
        sub_1DC28EB30(v103, &qword_1ECC7CA40, &unk_1DC5233A0);
        goto LABEL_43;
      }

      v54 = v118;
      v66 = v122;
      v56 = v125;
    }

LABEL_22:
    OUTLINED_FUNCTION_19();
    __swift_storeEnumTagSinglePayload(v80, v81, v82, v57);
    goto LABEL_23;
  }

  sub_1DC28EB30(v25, &qword_1ECC7C158, &unk_1DC5234A0);
  OUTLINED_FUNCTION_19();
  __swift_storeEnumTagSinglePayload(v43, v44, v45, v29);
LABEL_4:
  sub_1DC28EB30(v28, &qword_1ECC7C160, qword_1DC5233B0);
  OUTLINED_FUNCTION_19();
  __swift_storeEnumTagSinglePayload(v46, v47, v48, v49);
  v51 = v131;
  v50 = v132;
  v52 = v130;
LABEL_47:
  v113 = sub_1DC2BE518();
  sub_1DC2B8848(v52, "HeuristicRules.CalendarRule", 27, 2, v113);

  return (*(v51 + 8))(v52, v50);
}

uint64_t sub_1DC380D54(uint64_t a1, char a2)
{
  v60 = sub_1DC510FDC();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1();
  v59 = v8 - v7;
  v63 = sub_1DC51179C();
  OUTLINED_FUNCTION_0();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_1();
  v14 = v13 - v12;
  v15 = sub_1DC51164C();
  OUTLINED_FUNCTION_0();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_1();
  v21 = v20 - v19;
  v22 = *(a1 + 16);
  if (!v22)
  {
LABEL_19:
    v40 = 0;
    return v40 & 1;
  }

  v56 = a2;
  v25 = *(v17 + 16);
  v24 = v17 + 16;
  v23 = v25;
  v26 = a1 + ((*(v24 + 64) + 32) & ~*(v24 + 64));
  v62 = (v10 + 8);
  v58 = (v5 + 8);
  v27 = *(v24 + 56);
  v61 = v15;
  v57 = v20 - v19;
  while (1)
  {
    v23(v21, v26, v15);
    if (sub_1DC5114CC())
    {
      break;
    }

    v36 = OUTLINED_FUNCTION_1_23();
LABEL_14:
    v37(v36, v15);
LABEL_15:
    v26 += v27;
    if (!--v22)
    {
      goto LABEL_19;
    }
  }

  sub_1DC51154C();
  v28 = sub_1DC51177C();
  v29 = *v62;
  (*v62)(v14, v63);
  if ((v28 & 1) == 0 || (type metadata accessor for NLRouterBypassUtils(), sub_1DC51154C(), sub_1DC51178C(), v29(v14, v63), v30 = sub_1DC307E5C(v59), v21 = v57, (*v58)(v59, v60), !v30))
  {
    v36 = OUTLINED_FUNCTION_1_23();
    v15 = v61;
    goto LABEL_14;
  }

  sub_1DC51478C();

  sub_1DC28F358(v67, v65, &qword_1ECC7D3F0, &qword_1DC5238B0);
  if (!v66)
  {

    sub_1DC28EB30(v67, &qword_1ECC7D3F0, &qword_1DC5238B0);
    v38 = OUTLINED_FUNCTION_1_23();
    v15 = v61;
    v39(v38, v61);
LABEL_18:
    sub_1DC28EB30(v65, &qword_1ECC7D3F0, &qword_1DC5238B0);
    goto LABEL_15;
  }

  sub_1DC28F358(v65, v64, &qword_1ECC7D3F0, &qword_1DC5238B0);
  sub_1DC514D8C();
  v15 = v61;
  if (!swift_dynamicCast())
  {
    v31 = sub_1DC514DEC();
    if (OUTLINED_FUNCTION_3_19(v31))
    {
      OUTLINED_FUNCTION_6_15();
      sub_1DC5148BC();
      if (v68[0])
      {

        sub_1DC5145FC();
        sub_1DC514F8C();
        OUTLINED_FUNCTION_10_15();
        v47 = sub_1DC2E5024(v22);
        v48 = &unk_1F57F9DF0;
        goto LABEL_30;
      }

      goto LABEL_31;
    }

    v32 = sub_1DC514DFC();
    if (OUTLINED_FUNCTION_3_19(v32))
    {
      OUTLINED_FUNCTION_6_15();
      sub_1DC5148BC();
      if (v68[0])
      {

        sub_1DC5145FC();
        sub_1DC514F8C();
        OUTLINED_FUNCTION_10_15();
        v47 = sub_1DC2E5024(v22);
        v48 = &unk_1F57F9E40;
        goto LABEL_30;
      }

      goto LABEL_31;
    }

    v33 = sub_1DC514D7C();
    if (OUTLINED_FUNCTION_3_19(v33))
    {
      OUTLINED_FUNCTION_6_15();
      sub_1DC51392C();
      if (v68[0])
      {

        sub_1DC5145FC();
        sub_1DC514F8C();
        OUTLINED_FUNCTION_10_15();
        v47 = sub_1DC2E5024(v22);
        v48 = &unk_1F57F9E90;
LABEL_30:
        v49 = sub_1DC38155C(v48, v47);

LABEL_32:

        sub_1DC28EB30(v67, &qword_1ECC7D3F0, &qword_1DC5238B0);
        v50 = OUTLINED_FUNCTION_1_23();
        v51(v50, v61);
        v40 = v49 ^ v56;
        __swift_destroy_boxed_opaque_existential_1Tm(v64);
        goto LABEL_38;
      }

LABEL_31:
      v49 = 1;
      goto LABEL_32;
    }

    sub_1DC28EB30(v67, &qword_1ECC7D3F0, &qword_1DC5238B0);
    v34 = OUTLINED_FUNCTION_1_23();
    v35(v34, v61);
    __swift_destroy_boxed_opaque_existential_1Tm(v64);
    goto LABEL_18;
  }

  sub_1DC514C8C();
  v42 = v69;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C440, &qword_1DC522EF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DC523DA0;
  *(inited + 32) = 1701667182;
  *(inited + 40) = 0xE400000000000000;
  strcpy((inited + 48), "participants");
  *(inited + 61) = 0;
  *(inited + 62) = -5120;
  *(inited + 64) = 0x49664F746E696F70;
  *(inited + 72) = 0xEF7473657265746ELL;
  *(inited + 80) = 0xD000000000000012;
  *(inited + 88) = 0x80000001DC542770;
  if (!v42)
  {
    swift_setDeallocating();
    sub_1DC2A180C();
LABEL_34:
    sub_1DC514C7C();
    if (v69)
    {

      sub_1DC5145FC();
      sub_1DC514F8C();
      OUTLINED_FUNCTION_10_15();
      v52 = sub_1DC2E5024(v42);
      v53 = sub_1DC38155C(&unk_1F57F9DB0, v52);

      v46 = v53 ^ 1;
    }

    else
    {
      v46 = 0;
    }

    goto LABEL_37;
  }

  sub_1DC5145FC();
  v44 = sub_1DC514F8C();

  v45 = sub_1DC2E5024(v44);
  LOBYTE(v44) = sub_1DC38155C(inited, v45);

  swift_setDeallocating();
  sub_1DC2A180C();
  if (v44)
  {
    goto LABEL_34;
  }

  v46 = 1;
LABEL_37:

  sub_1DC28EB30(v67, &qword_1ECC7D3F0, &qword_1DC5238B0);
  v54 = OUTLINED_FUNCTION_1_23();
  v55(v54, v61);
  v40 = v46 ^ v56 ^ 1;
  __swift_destroy_boxed_opaque_existential_1Tm(v64);
LABEL_38:
  sub_1DC28EB30(v65, &qword_1ECC7D3F0, &qword_1DC5238B0);
  return v40 & 1;
}

uint64_t sub_1DC38155C(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 1;
  }

  v3 = 0;
  v4 = *(a1 + 16);
  v5 = a1 + 32;
  v6 = a2 + 56;
  do
  {
LABEL_3:
    if (v3 == v4)
    {
      return 1;
    }

    v7 = v3++;
  }

  while (!*(a2 + 16));
  v8 = (v5 + 16 * v7);
  v10 = *v8;
  v9 = v8[1];
  sub_1DC5182FC();

  sub_1DC51769C();
  v11 = sub_1DC51833C();
  v12 = ~(-1 << *(a2 + 32));
  do
  {
    v13 = v11 & v12;
    if (((*(v6 + (((v11 & v12) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v11 & v12)) & 1) == 0)
    {

      goto LABEL_3;
    }

    v14 = (*(a2 + 48) + 16 * v13);
    if (*v14 == v10 && v14[1] == v9)
    {
      break;
    }

    v16 = sub_1DC51825C();
    v11 = v13 + 1;
  }

  while ((v16 & 1) == 0);

  return 0;
}

uint64_t sub_1DC381694()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C440, &qword_1DC522EF0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1DC526290;
  v1 = sub_1DC3EAB30();
  v3 = *v1;
  v2 = v1[1];
  *(v0 + 32) = v3;
  *(v0 + 40) = v2;

  v4 = sub_1DC3EAB3C();
  v6 = *v4;
  v5 = v4[1];
  *(v0 + 48) = v6;
  *(v0 + 56) = v5;

  v7 = sub_1DC3EAB84();
  v9 = *v7;
  v8 = v7[1];
  *(v0 + 64) = v9;
  *(v0 + 72) = v8;

  v10 = sub_1DC3EAAD0();
  v12 = *v10;
  v11 = v10[1];
  *(v0 + 80) = v12;
  *(v0 + 88) = v11;

  v13 = sub_1DC3EAAE8();
  v15 = *v13;
  v14 = *(v13 + 1);
  *(v0 + 96) = v15;
  *(v0 + 104) = v14;

  v16 = sub_1DC3EAADC();
  v18 = *v16;
  v17 = v16[1];
  *(v0 + 112) = v18;
  *(v0 + 120) = v17;

  v19 = sub_1DC3EAB48();
  v21 = *v19;
  v20 = v19[1];
  *(v0 + 128) = v21;
  *(v0 + 136) = v20;

  v22 = sub_1DC3EAB54();
  v24 = *v22;
  v23 = v22[1];
  *(v0 + 144) = v24;
  *(v0 + 152) = v23;

  v25 = sub_1DC3EAB60();
  v27 = *v25;
  v26 = v25[1];
  *(v0 + 160) = v27;
  *(v0 + 168) = v26;

  v28 = sub_1DC3EAB0C();
  v30 = *v28;
  v29 = v28[1];
  *(v0 + 176) = v30;
  *(v0 + 184) = v29;

  v31 = sub_1DC3EAB18();
  v33 = *v31;
  v32 = v31[1];
  *(v0 + 192) = v33;
  *(v0 + 200) = v32;

  v34 = sub_1DC3EAAB8();
  v36 = *v34;
  v35 = v34[1];
  *(v0 + 208) = v36;
  *(v0 + 216) = v35;

  v37 = sub_1DC3EAAC4();
  v39 = *v37;
  v38 = v37[1];
  *(v0 + 224) = v39;
  *(v0 + 232) = v38;

  v40 = sub_1DC3EAAA0();
  v42 = *v40;
  v41 = v40[1];
  *(v0 + 240) = v42;
  *(v0 + 248) = v41;

  v43 = sub_1DC3EAA94();
  v45 = *v43;
  v44 = v43[1];
  *(v0 + 256) = v45;
  *(v0 + 264) = v44;

  v46 = sub_1DC3EAB90();
  v48 = *v46;
  v47 = v46[1];
  *(v0 + 272) = v48;
  *(v0 + 280) = v47;

  v49 = sub_1DC3EAB9C();
  v51 = *v49;
  v50 = v49[1];
  *(v0 + 288) = v51;
  *(v0 + 296) = v50;

  v52 = sub_1DC3EAAF4();
  v54 = *v52;
  v53 = v52[1];
  *(v0 + 304) = v54;
  *(v0 + 312) = v53;

  v55 = sub_1DC3EAB00();
  v57 = *v55;
  v56 = v55[1];
  *(v0 + 320) = v57;
  *(v0 + 328) = v56;
  qword_1ECC8F8D0 = v0;
}

uint64_t sub_1DC381824@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v171 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CA40, &unk_1DC5233A0);
  OUTLINED_FUNCTION_10(v3);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_14(&v140 - v5);
  v174 = sub_1DC5157EC();
  OUTLINED_FUNCTION_0();
  v152 = v6;
  v8 = MEMORY[0x1EEE9AC00](v7);
  v151 = &v140 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_14(&v140 - v10);
  v164 = sub_1DC510FDC();
  OUTLINED_FUNCTION_0();
  v155 = v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_14(v13);
  v173 = sub_1DC51179C();
  OUTLINED_FUNCTION_0();
  v161 = v14;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_2_1();
  v172 = v16;
  v165 = sub_1DC51164C();
  OUTLINED_FUNCTION_0();
  v157 = v17;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_14(v19);
  v159 = sub_1DC51122C();
  OUTLINED_FUNCTION_0();
  v160 = v20;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_2_1();
  v158 = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BEB8, &unk_1DC527150);
  OUTLINED_FUNCTION_10(v23);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v24);
  v167 = &v140 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BEC0, &unk_1DC5221E0);
  OUTLINED_FUNCTION_10(v26);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v27);
  v166 = &v140 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C158, &unk_1DC5234A0);
  OUTLINED_FUNCTION_10(v29);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v140 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C160, qword_1DC5233B0);
  OUTLINED_FUNCTION_10(v33);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v140 - v35;
  v37 = type metadata accessor for NLRouterNLParseResponse(0);
  OUTLINED_FUNCTION_35();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_14(v39);
  sub_1DC516F5C();
  OUTLINED_FUNCTION_0();
  v169 = v41;
  v170 = v40;
  MEMORY[0x1EEE9AC00](v40);
  v43 = &v140 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
  v45 = sub_1DC2BE518();
  v46 = OUTLINED_FUNCTION_130();
  v168 = v43;
  v47 = v43;
  v48 = v44;
  sub_1DC2A2ED0("HeuristicRules.PlannerDeleteRule", 32, 2, v45, v46 & 1, v47);

  v49 = type metadata accessor for NLRouterServiceRequest(0);
  sub_1DC28F358(a1 + *(v49 + 32), v32, &qword_1ECC7C158, &unk_1DC5234A0);
  v50 = type metadata accessor for NLRouterTurnProbingResult(0);
  if (__swift_getEnumTagSinglePayload(v32, 1, v50) == 1)
  {
    sub_1DC28EB30(v32, &qword_1ECC7C158, &unk_1DC5234A0);
    __swift_storeEnumTagSinglePayload(v36, 1, 1, v37);
LABEL_4:
    sub_1DC28EB30(v36, &qword_1ECC7C160, qword_1DC5233B0);
    v51 = v171;
    v52 = 1;
    v53 = v174;
    goto LABEL_17;
  }

  sub_1DC28F358(v32, v36, &qword_1ECC7C160, qword_1DC5233B0);
  sub_1DC33F1E0(v32, type metadata accessor for NLRouterTurnProbingResult);
  if (__swift_getEnumTagSinglePayload(v36, 1, v37) == 1)
  {
    goto LABEL_4;
  }

  v54 = v162;
  sub_1DC2E53A4(v36, v162);
  v55 = sub_1DC298C74(0, &qword_1ECC7B9B0, 0x1E695E000);
  v56 = sub_1DC3437AC();
  v58 = v57;
  if (v56 == sub_1DC312FB4(0) && v58 == v59)
  {

    goto LABEL_13;
  }

  v61 = sub_1DC51825C();

  if (v61)
  {
LABEL_13:
    OUTLINED_FUNCTION_0_17();
    sub_1DC33F1E0(v54, v68);
LABEL_14:
    v69 = v171;
    a1 = v174;
    goto LABEL_15;
  }

  v62 = v167;
  sub_1DC3EAD64(v167);
  v63 = type metadata accessor for QDContextState(0);
  if (__swift_getEnumTagSinglePayload(v62, 1, v63) == 1)
  {
    OUTLINED_FUNCTION_0_17();
    sub_1DC33F1E0(v54, v64);
    v65 = &qword_1ECC7BEB8;
    v66 = &unk_1DC527150;
    v67 = v62;
LABEL_20:
    sub_1DC28EB30(v67, v65, v66);
    goto LABEL_14;
  }

  v73 = v166;
  sub_1DC28F358(&v62[*(v63 + 24)], v166, &qword_1ECC7BEC0, &unk_1DC5221E0);
  sub_1DC33F1E0(v62, type metadata accessor for QDContextState);
  v74 = sub_1DC51724C();
  if (__swift_getEnumTagSinglePayload(v73, 1, v74) == 1)
  {
    OUTLINED_FUNCTION_0_17();
    sub_1DC33F1E0(v54, v75);
    v65 = &qword_1ECC7BEC0;
    v66 = &unk_1DC5221E0;
    v67 = v73;
    goto LABEL_20;
  }

  v143 = v55;
  v76 = sub_1DC51723C();
  v78 = v77;
  v79 = (*(*(v74 - 8) + 8))(v73, v74);
  if (qword_1ECC877A0 != -1)
  {
    goto LABEL_56;
  }

LABEL_22:
  v142 = v76;
  *&v176 = v76;
  *(&v176 + 1) = v78;
  MEMORY[0x1EEE9AC00](v79);
  *(&v140 - 2) = &v176;
  sub_1DC2CF098(sub_1DC2CF174, (&v140 - 4), v80);
  OUTLINED_FUNCTION_10_16();
  if ((v81 & 1) == 0)
  {
    OUTLINED_FUNCTION_0_17();
    sub_1DC33F1E0(v54, v107);

    goto LABEL_14;
  }

  v141 = v78;
  v140 = a1;
  v82 = 0;
  v83 = *v54;
  v148 = *(*v54 + 16);
  v146 = v160 + 16;
  v166 = v157 + 16;
  v167 = (v157 + 8);
  ++v161;
  ++v155;
  v147 = (v160 + 8);
  v69 = v171;
  a1 = v174;
  v54 = v165;
  v144 = v48;
  v145 = v83;
  v78 = v156;
  while (1)
  {
    if (v82 == v148)
    {
      goto LABEL_52;
    }

    if (v82 >= *(v83 + 16))
    {
      __break(1u);
LABEL_56:
      v79 = OUTLINED_FUNCTION_2_20(&qword_1ECC877A0);
      goto LABEL_22;
    }

    OUTLINED_FUNCTION_11_17();
    (*(v86 + 16))(v76, v85 + v84 + *(v86 + 72) * v82, v55);
    v87 = *(sub_1DC5111AC() + 16);
    if (v87)
    {
      break;
    }

LABEL_41:
    ++v82;
    (*v147)(v76, v55);
    v83 = v145;
  }

  v149 = v82;
  OUTLINED_FUNCTION_11_17();
  v150 = v88;
  v90 = v88 + v89;
  v92 = *(v91 + 72);
  v93 = *(v91 + 16);
  while (1)
  {
    v93(v78, v90, v54);
    v76 = v78;
    if ((sub_1DC5114CC() & 1) == 0)
    {
      v103 = OUTLINED_FUNCTION_5_25();
      v104(v103);
      goto LABEL_37;
    }

    v55 = v172;
    sub_1DC51154C();
    v76 = v55;
    v94 = sub_1DC51177C();
    v95 = *v161;
    (*v161)(v55, v173);
    if ((v94 & 1) == 0 || (v96 = type metadata accessor for NLRouterBypassUtils(), v97 = v172, sub_1DC51154C(), v55 = v163, sub_1DC51178C(), v98 = v97, v54 = v165, v95(v98, v173), v76 = v96, v99 = sub_1DC307E5C(v55), (*v155)(v55, v164), !v99))
    {
      v105 = OUTLINED_FUNCTION_5_25();
      v106(v105);
LABEL_36:
      a1 = v174;
      goto LABEL_37;
    }

    sub_1DC51478C();

    v100 = OUTLINED_FUNCTION_5_25();
    v101(v100);
    v175[0] = v176;
    v175[1] = v177;
    if (!*(&v177 + 1))
    {
      sub_1DC28EB30(v175, &qword_1ECC7D3F0, &qword_1DC5238B0);
      goto LABEL_36;
    }

    sub_1DC51491C();
    v102 = swift_dynamicCast();
    a1 = v174;
    if (v102)
    {
      break;
    }

LABEL_37:
    v90 += v92;
    if (!--v87)
    {

      v69 = v171;
      v48 = v144;
      OUTLINED_FUNCTION_10_16();
      v82 = v149;
      goto LABEL_41;
    }
  }

  (*v147)(v158, v159);
  v108 = sub_1DC3437AC();
  v110 = sub_1DC312F68(v108, v109);
  if (v110 == 4)
  {
    OUTLINED_FUNCTION_0_17();
    OUTLINED_FUNCTION_9_18(v111, v112);
    OUTLINED_FUNCTION_12_16();
    v113 = v154;
    __swift_storeEnumTagSinglePayload(v154, 1, 1, a1);
    v69 = v171;
    goto LABEL_47;
  }

  v113 = v154;
  sub_1DC312E7C(v110, v154);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v113, 1, a1);
  v69 = v171;
  if (EnumTagSinglePayload != 1)
  {
    v117 = v152;
    v118 = *(v152 + 32);
    v119 = v153;
    v118(v153, v113, a1);
    type metadata accessor for HeuristicRoutingRequest(0);
    sub_1DC32FD38();
    if (v120)
    {
      v121 = v69;
      v122 = sub_1DC517B9C();
      v123 = sub_1DC2BE518();
      v124 = v151;
      (*(v117 + 16))(v151, v119, a1);
      if (os_log_type_enabled(v123, v122))
      {
        v125 = swift_slowAlloc();
        v173 = swift_slowAlloc();
        *&v176 = v173;
        *v125 = 136315394;
        v126 = sub_1DC291244(v142, v141, &v176);

        *(v125 + 4) = v126;
        *(v125 + 12) = 2080;
        v127 = j___s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0O13CDMFoundationE16debugDescriptionSSvg();
        v129 = v128;
        (*(v117 + 8))(v124, v174);
        v130 = sub_1DC291244(v127, v129, &v176);
        v131 = v171;

        *(v125 + 14) = v130;
        _os_log_impl(&dword_1DC287000, v123, v122, "In App: %s, matched a delete without an entity request, rerouting to: %s", v125, 0x16u);
        v132 = v173;
        swift_arrayDestroy();
        MEMORY[0x1E1298840](v132, -1, -1);
        v133 = v125;
        a1 = v174;
        MEMORY[0x1E1298840](v133, -1, -1);

        OUTLINED_FUNCTION_0_17();
        OUTLINED_FUNCTION_9_18(v134, v135);
      }

      else
      {

        OUTLINED_FUNCTION_12_16();
        (*(v117 + 8))(v124, a1);
        OUTLINED_FUNCTION_0_17();
        OUTLINED_FUNCTION_9_18(v138, v139);
        v131 = v121;
      }

      v118(v131, v119, a1);
      v51 = v131;
      v52 = 0;
      goto LABEL_16;
    }

    (*(v117 + 8))(v119, a1);
LABEL_52:
    OUTLINED_FUNCTION_12_16();
    OUTLINED_FUNCTION_0_17();
    OUTLINED_FUNCTION_9_18(v136, v137);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_0_17();
  OUTLINED_FUNCTION_9_18(v115, v116);
  OUTLINED_FUNCTION_12_16();
LABEL_47:
  sub_1DC28EB30(v113, &qword_1ECC7CA40, &unk_1DC5233A0);
LABEL_15:
  v51 = v69;
  v52 = 1;
LABEL_16:
  v53 = a1;
LABEL_17:
  __swift_storeEnumTagSinglePayload(v51, v52, 1, v53);
  v70 = sub_1DC2BE518();
  v71 = v168;
  sub_1DC2B8848(v168, "HeuristicRules.PlannerDeleteRule", 32, 2, v70);

  return (*(v169 + 8))(v71, v170);
}

void sub_1DC382748()
{
  OUTLINED_FUNCTION_33();
  v1 = sub_1DC5172AC();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_8();
  v7 = v5 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v9 = sub_1DC51718C();
  OUTLINED_FUNCTION_0();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_1();
  v15 = v14 - v13;
  v16 = OUTLINED_FUNCTION_20();
  v41 = v17;
  v17(v16, v0, v1);
  v18 = OUTLINED_FUNCTION_74();
  if (v19(v18) == *MEMORY[0x1E69DAE18])
  {
    v20 = OUTLINED_FUNCTION_74();
    v21(v20);
    v22 = swift_projectBox();
    (*(v11 + 16))(v15, v22, v9);

    v23 = sub_1DC51717C();
    v24 = *(v23 + 16);
    if (v24)
    {
      v25 = v23 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
      v40 = *(v3 + 72);
      v26 = MEMORY[0x1E69E7CC0];
      do
      {
        v41(v7, v25, v1);
        sub_1DC382AC0();
        v28 = v27;
        v30 = v29;
        v31 = OUTLINED_FUNCTION_30();
        v32(v31);
        if (v30)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v26 = sub_1DC2ACCD4(0, *(v26 + 2) + 1, 1, v26);
          }

          v34 = *(v26 + 2);
          v33 = *(v26 + 3);
          if (v34 >= v33 >> 1)
          {
            v26 = sub_1DC2ACCD4((v33 > 1), v34 + 1, 1, v26);
          }

          *(v26 + 2) = v34 + 1;
          v35 = &v26[16 * v34];
          *(v35 + 4) = v28;
          *(v35 + 5) = v30;
        }

        v25 += v40;
        --v24;
      }

      while (v24);
    }

    else
    {

      v26 = MEMORY[0x1E69E7CC0];
    }

    if (*(v26 + 2))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C130, &unk_1DC5240F0);
      sub_1DC2DFC38();
      sub_1DC5176AC();
    }

    v38 = OUTLINED_FUNCTION_15_9();
    v39(v38);
  }

  else
  {
    v36 = OUTLINED_FUNCTION_74();
    v37(v36);
  }

  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_34();
}

void sub_1DC382AC0()
{
  OUTLINED_FUNCTION_33();
  v1 = v0;
  v117 = sub_1DC5107AC();
  OUTLINED_FUNCTION_35();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_1();
  v115 = v4 - v3;
  OUTLINED_FUNCTION_12();
  v116 = sub_1DC5107BC();
  OUTLINED_FUNCTION_0();
  v114 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1();
  v113 = v8 - v7;
  OUTLINED_FUNCTION_12();
  v121 = sub_1DC510CCC();
  OUTLINED_FUNCTION_0();
  v119 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_1();
  v118 = v12 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CFE8, "¯");
  OUTLINED_FUNCTION_10(v13);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v14);
  v120 = &v110 - v15;
  OUTLINED_FUNCTION_12();
  sub_1DC51078C();
  OUTLINED_FUNCTION_0();
  v123 = v17;
  v124 = v16;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_1();
  v122 = v19 - v18;
  OUTLINED_FUNCTION_12();
  sub_1DC51727C();
  OUTLINED_FUNCTION_0();
  v111 = v21;
  v112 = v20;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_1();
  v110 = v23 - v22;
  OUTLINED_FUNCTION_12();
  sub_1DC510AFC();
  OUTLINED_FUNCTION_0();
  v125 = v25;
  v126 = v24;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_8();
  v28 = v26 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v110 - v30;
  v32 = sub_1DC5172AC();
  OUTLINED_FUNCTION_0();
  v34 = v33;
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_1();
  v38 = v37 - v36;
  v39 = sub_1DC51728C();
  OUTLINED_FUNCTION_0();
  v41 = v40;
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_8();
  v45 = (v43 - v44);
  MEMORY[0x1EEE9AC00](v46);
  v48 = &v110 - v47;
  (*(v34 + 16))(v38, v1, v32);
  if ((*(v34 + 88))(v38, v32) == *MEMORY[0x1E69DAE70])
  {
    (*(v34 + 96))(v38, v32);
    v49 = swift_projectBox();
    v50 = *(v41 + 16);
    v50(v48, v49, v39);

    v50(v45, v48, v39);
    v51 = OUTLINED_FUNCTION_152();
    v53 = v52(v51);
    if (v53 == *MEMORY[0x1E69DADC0])
    {
      v54 = OUTLINED_FUNCTION_7_13();
      v55(v54);
      v56 = *v45;
      v127 = 0;
      v128 = 0xE000000000000000;
      if (v56)
      {
        v57 = 1702195828;
      }

      else
      {
        v57 = 0x65736C6166;
      }

      if (v56)
      {
        v58 = 0xE400000000000000;
      }

      else
      {
        v58 = 0xE500000000000000;
      }

      MEMORY[0x1E1296160](v57, v58);

      goto LABEL_14;
    }

    v59 = v53;
    if (v53 == *MEMORY[0x1E69DADB0] || v53 == *MEMORY[0x1E69DADE0] || v53 == *MEMORY[0x1E69DADF8])
    {
LABEL_14:
      v60 = OUTLINED_FUNCTION_30();
      v61(v60);
      goto LABEL_15;
    }

    if (v53 == *MEMORY[0x1E69DADF0])
    {
      v62 = OUTLINED_FUNCTION_30();
      v63(v62);
      v64 = OUTLINED_FUNCTION_74();
      v65(v64);
      goto LABEL_15;
    }

    if (v53 == *MEMORY[0x1E69DADC8])
    {
      v66 = OUTLINED_FUNCTION_7_13();
      v67(v66);
      v69 = v125;
      v68 = v126;
      (*(v125 + 32))(v31, v45, v126);
      if (_MergedGlobals_11 != -1)
      {
        OUTLINED_FUNCTION_10_17(&_MergedGlobals_11);
      }

      v70 = qword_1EDAC9498;
      v71 = sub_1DC510A7C();
      v72 = [v70 stringFromDate_];

      sub_1DC51772C();
      OUTLINED_FUNCTION_22_10();

      (*(v69 + 8))(v31, v68);
      goto LABEL_14;
    }

    v73 = v126;
    if (v53 == *MEMORY[0x1E69DAD80])
    {
      v74 = OUTLINED_FUNCTION_7_13();
      v75(v74);
      v77 = v122;
      v76 = v123;
      v78 = v124;
      (*(v123 + 32))(v122, v45, v124);
      v79 = v118;
      sub_1DC3835B8();
      v80 = v120;
      sub_1DC510C9C();
      (*(v119 + 8))(v79, v121);
      if (__swift_getEnumTagSinglePayload(v80, 1, v73) == 1)
      {
        (*(v76 + 8))(v77, v78);
        v81 = OUTLINED_FUNCTION_30();
        v82(v81);
        sub_1DC28EB30(v80, &qword_1ECC7CFE8, "¯");
        goto LABEL_15;
      }

      v86 = v125;
      v87 = OUTLINED_FUNCTION_75();
      v88(v87);
      if (_MergedGlobals_11 != -1)
      {
        OUTLINED_FUNCTION_10_17(&_MergedGlobals_11);
      }

      v89 = qword_1EDAC9498;
      v90 = sub_1DC510A7C();
      v91 = [v89 stringFromDate_];

      sub_1DC51772C();
      OUTLINED_FUNCTION_22_10();

      (*(v86 + 8))(v28, v73);
      (*(v123 + 8))(v122, v124);
      goto LABEL_14;
    }

    if (v53 == *MEMORY[0x1E69DADB8])
    {
      goto LABEL_26;
    }

    if (v53 == *MEMORY[0x1E69DAD98])
    {
      v92 = OUTLINED_FUNCTION_7_13();
      v93(v92);
      (*(v114 + 32))(v113, v45, v116);
      sub_1DC51079C();
      sub_1DC383FB0(&qword_1ECC7CFF0, MEMORY[0x1E6968678], MEMORY[0x1E6968688]);
      sub_1DC51798C();
      OUTLINED_FUNCTION_22_10();
      v94 = OUTLINED_FUNCTION_15_9();
      v95(v94);
      goto LABEL_14;
    }

    if (v53 == *MEMORY[0x1E69DAD60] || v53 == *MEMORY[0x1E69DAD78] || v53 == *MEMORY[0x1E69DAD70] || v53 == *MEMORY[0x1E69DAE10])
    {
LABEL_26:
      v83 = *(v41 + 8);
      v84 = OUTLINED_FUNCTION_30();
      v83(v84);
      v85 = OUTLINED_FUNCTION_74();
LABEL_27:
      v83(v85);
      goto LABEL_15;
    }

    if (v53 == *MEMORY[0x1E69DADE8])
    {
      v96 = OUTLINED_FUNCTION_152();
      v97(v96);
      v99 = v110;
      v98 = v111;
      v100 = v112;
      (*(v111 + 32))(v110, v45, v112);
      v101 = sub_1DC51726C();
      v102 = [v101 displayName];

      sub_1DC51772C();
      OUTLINED_FUNCTION_22_10();

      (*(v98 + 8))(v99, v100);
      v103 = OUTLINED_FUNCTION_75();
      v104(v103);
      goto LABEL_15;
    }

    if (v53 == *MEMORY[0x1E69DADD0] || v53 == *MEMORY[0x1E69DADA8] || v53 == *MEMORY[0x1E69DAD90] || v53 == *MEMORY[0x1E69DAD58])
    {
      v83 = *(v41 + 8);
      v105 = OUTLINED_FUNCTION_75();
      v83(v105);
      v85 = OUTLINED_FUNCTION_152();
      goto LABEL_27;
    }

    v106 = *MEMORY[0x1E69DADD8];
    v107 = *(v41 + 8);
    v108 = OUTLINED_FUNCTION_75();
    v107(v108);
    if (v59 != v106)
    {
      v109 = OUTLINED_FUNCTION_152();
      v107(v109);
    }
  }

  else
  {
    (*(v34 + 8))(v38, v32);
  }

LABEL_15:
  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC3835B8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D008, &qword_1DC5263A8);
  OUTLINED_FUNCTION_10(v0);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v12 - v2;
  v4 = sub_1DC510CFC();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1();
  v10 = v9 - v8;
  sub_1DC510CAC();
  sub_1DC510CDC();
  result = __swift_getEnumTagSinglePayload(v3, 1, v4);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v6 + 32))(v10, v3, v4);
    return sub_1DC510CBC();
  }

  return result;
}

id sub_1DC3836E8()
{
  result = sub_1DC383708();
  qword_1EDAC9498 = result;
  return result;
}

id sub_1DC383708()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D008, &qword_1DC5263A8);
  OUTLINED_FUNCTION_10(v1);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_24_1();
  v3 = sub_1DC510CFC();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1();
  v9 = v8 - v7;
  v10 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  sub_1DC383DD8(0xD000000000000016, 0x80000001DC5427C0, v10);
  sub_1DC510CDC();
  result = __swift_getEnumTagSinglePayload(v0, 1, v3);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v5 + 32))(v9, v0, v3);
    v12 = sub_1DC510CEC();
    (*(v5 + 8))(v9, v3);
    [v10 setTimeZone_];

    return v10;
  }

  return result;
}

uint64_t sub_1DC38389C()
{
  v1 = sub_1DC5172AC();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_24_1();
  v5 = sub_1DC5171AC();
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1();
  v11 = v10 - v9;
  v12 = OUTLINED_FUNCTION_20();
  v13(v12, v0, v1);
  if ((*(v3 + 88))(v0, v1) == *MEMORY[0x1E69DAE20])
  {
    (*(v3 + 96))(v0, v1);
    v14 = swift_projectBox();
    (*(v7 + 16))(v11, v14, v5);

    v15 = sub_1DC51719C();
    (*(v7 + 8))(v11, v5);
  }

  else
  {
    (*(v3 + 8))(v0, v1);
    return 0;
  }

  return v15;
}

uint64_t sub_1DC383ACC(void *a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFF8, &qword_1DC522580);
  OUTLINED_FUNCTION_10(v5);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = v27 - v7;
  v9 = sub_1DC5172AC();
  OUTLINED_FUNCTION_0();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_1();
  v15 = v14 - v13;
  v16 = *(a2 + 8);
  v17 = *(a2 + 16);
  v18 = sub_1DC5171EC();
  sub_1DC30F668(v16, v17, v18, v8);

  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_1DC28EB30(v8, &qword_1ECC7BFF8, &qword_1DC522580);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_25_8();
    result = sub_1DC358334(0, 0xE000000000000000, v16, v17, v19);
    *a1 = v28;
  }

  else
  {
    v27[1] = v2;
    (*(v11 + 32))(v15, v8, v9);
    sub_1DC382AC0();
    if (v22 || (sub_1DC382748(), v22))
    {
      v24 = v21;
      v25 = v22;
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_25_8();
      sub_1DC358334(v24, v25, v16, v17, v26);
      *a1 = v28;
      return (*(v11 + 8))(v15, v9);
    }

    else
    {
      sub_1DC383F5C(v21, 0, v23);
      swift_allocError();
      swift_willThrow();
      return (*(v11 + 8))(v15, v9);
    }
  }

  return result;
}

uint64_t sub_1DC383D1C(uint64_t a1, void (*a2)(uint64_t *, void *), uint64_t a3, uint64_t a4)
{
  v13 = a1;
  v6 = 0;
  v7 = *(a4 + 16);
  for (i = (a4 + 40); ; i += 2)
  {
    if (v7 == v6)
    {
      return v13;
    }

    v9 = *(i - 1);
    v10 = *i;
    v12[0] = v6;
    v12[1] = v9;
    v12[2] = v10;

    a2(&v13, v12);
    if (v4)
    {
      break;
    }

    ++v6;
  }
}

void sub_1DC383DD8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1DC5176FC();

  [a3 setDateFormat_];
}

unint64_t sub_1DC383E5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECC7CFF8;
  if (!qword_1ECC7CFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7CFF8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ConversionError(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1DC383F5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECC7D000;
  if (!qword_1ECC7D000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7D000);
  }

  return result;
}

uint64_t sub_1DC383FB0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t NLBridge.NLBridgeError.hashValue.getter()
{
  v1 = *v0;
  sub_1DC5182FC();
  MEMORY[0x1E1296BB0](v1);
  return sub_1DC51833C();
}

uint64_t sub_1DC3841E8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  OUTLINED_FUNCTION_54_11(v3 + *a1, a2);
  return sub_1DC28FB9C(v3 + v5, a3);
}

uint64_t sub_1DC384250(uint64_t a1, uint64_t *a2, void (*a3)(uint64_t, uint64_t))
{
  v6 = *a2;
  OUTLINED_FUNCTION_47_8(v3 + *a2, a2);
  __swift_destroy_boxed_opaque_existential_1Tm((v3 + v6));
  a3(a1, v3 + v6);
  return swift_endAccess();
}

uint64_t sub_1DC384348(uint64_t a1)
{
  v2 = a1;
  v3 = qword_1ECC8F2E8;
  result = OUTLINED_FUNCTION_35_1(a1);
  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_1DC3843D4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *a1;
  OUTLINED_FUNCTION_54_11(v4 + *a1, a2);
  return sub_1DC28F414(v4 + v8, a4, a2, a3);
}

uint64_t sub_1DC384434(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_54_1(a1, a2, a3, a4);
  OUTLINED_FUNCTION_35();
  v5 = OUTLINED_FUNCTION_43();
  v6(v5);
  return v4;
}

void sub_1DC3844CC(uint64_t a1)
{
  v3 = qword_1ECC8F2B8;
  OUTLINED_FUNCTION_35_1(a1);
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t NLBridge.__allocating_init(_:_:_:_:_:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  sub_1DC28FB9C(a3, v17);
  sub_1DC28FB9C(a6, v16);
  v15[3] = type metadata accessor for CDMProxy(0);
  v15[4] = &off_1F57F8558;
  v15[0] = sub_1DC34C254();
  v13 = (*(v6 + class metadata base offset for NLBridge + 384))(a1, a2, v17, a4, a5, v16, v15);
  __swift_destroy_boxed_opaque_existential_1Tm(a6);
  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  return v13;
}

void sub_1DC3847B0()
{
  OUTLINED_FUNCTION_33();
  v1 = v0;
  v85 = v3;
  v86 = v2;
  v78 = v4;
  v84 = v5;
  v6 = sub_1DC516A0C();
  OUTLINED_FUNCTION_0();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_1();
  v12 = v11 - v10;
  v13 = sub_1DC516F7C();
  OUTLINED_FUNCTION_0();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_1();
  v19 = v18 - v17;
  sub_1DC516F5C();
  OUTLINED_FUNCTION_0();
  v82 = v21;
  v83 = v20;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_1();
  v24 = (v23 - v22);
  v81 = v23 - v22;
  v25 = sub_1DC510B6C();
  OUTLINED_FUNCTION_64_4(v25);
  v26 = v0 + qword_1ECC8F2E0;
  *v26 = 0u;
  *(v26 + 16) = 0u;
  *(v26 + 32) = 0;
  v27 = qword_1ECC8F2C0;
  type metadata accessor for TurnInputManager();
  *(v0 + v27) = sub_1DC2A214C(5);
  v28 = (v0 + qword_1ECC8F2A0);
  v29 = type metadata accessor for SiriReferenceResolutionProxy();
  v30 = (*(v29 + 240))();
  v28[3] = v29;
  v28[4] = &off_1F57F6960;
  *v28 = v30;
  *(v1 + qword_1ECC8F2B0) = 2;
  v31 = qword_1ECC8F2E8;
  *(v1 + v31) = sub_1DC516ADC() & 1;
  v32 = sub_1DC5162DC();
  OUTLINED_FUNCTION_64_4(v32);
  *(v1 + qword_1ECC8F2B8) = 0;
  v33 = (v1 + qword_1ECC8F2D0);
  *v33 = 0;
  v33[1] = 0;
  v34 = qword_1ECC8F2F8;
  type metadata accessor for LVCHistory();
  v35 = sub_1DC2A2334();
  *(v1 + v34) = sub_1DC2A22A8(v35);
  v36 = qword_1ECC8F2F0;
  type metadata accessor for RVSHistory();
  v37 = sub_1DC2A2334();
  *(v1 + v36) = sub_1DC2A2388(v37);
  v80 = sub_1DC378240();
  static SignpostLogger.begin(_:enableTelemetry:)(*v80, v80[1], *(v80 + 16), 1, &unk_1F57F9698, &off_1F57F95E8, v24);
  sub_1DC28FB9C(v85, v1 + qword_1ECC8F2A8);
  sub_1DC28FB9C(v84, &v88);
  sub_1DC28FB9C(v86, &v87);
  swift_unknownObjectRetain();
  v79 = v78;
  v38 = sub_1DC28D414();
  (*(v15 + 16))(v19, v38, v13);
  sub_1DC51692C();
  v39 = *(v8 + 104);
  v77 = *MEMORY[0x1E69D2B08];
  (v39)(v12, *MEMORY[0x1E69D2B08], v6);
  sub_1DC515A2C();
  type metadata accessor for NLRequestProcessor(0);

  OUTLINED_FUNCTION_3_20();
  sub_1DC51691C();
  v40 = *(v8 + 8);
  v41 = OUTLINED_FUNCTION_56();
  v40(v41);
  sub_1DC5152EC();
  OUTLINED_FUNCTION_9_5();
  sub_1DC516A6C();
  v42 = OUTLINED_FUNCTION_7_14();
  v39(v42);
  sub_1DC51540C();
  OUTLINED_FUNCTION_3_20();
  sub_1DC51691C();
  v43 = OUTLINED_FUNCTION_56();
  v40(v43);
  v44 = OUTLINED_FUNCTION_7_14();
  v39(v44);
  sub_1DC515BFC();
  OUTLINED_FUNCTION_3_20();
  sub_1DC51691C();
  v45 = OUTLINED_FUNCTION_56();
  v40(v45);
  v46 = OUTLINED_FUNCTION_7_14();
  v39(v46);
  sub_1DC5159BC();
  OUTLINED_FUNCTION_3_20();
  sub_1DC51691C();
  v47 = OUTLINED_FUNCTION_56();
  v40(v47);
  v48 = OUTLINED_FUNCTION_7_14();
  v39(v48);
  sub_1DC515D1C();
  OUTLINED_FUNCTION_3_20();
  sub_1DC51691C();
  v49 = OUTLINED_FUNCTION_56();
  v40(v49);
  v50 = OUTLINED_FUNCTION_7_14();
  v39(v50);
  sub_1DC515A1C();
  OUTLINED_FUNCTION_3_20();
  sub_1DC51691C();
  v51 = OUTLINED_FUNCTION_56();
  v40(v51);
  v52 = OUTLINED_FUNCTION_7_14();
  v39(v52);
  sub_1DC5159DC();
  OUTLINED_FUNCTION_3_20();
  sub_1DC51691C();
  v53 = OUTLINED_FUNCTION_56();
  v40(v53);
  v54 = OUTLINED_FUNCTION_7_14();
  v39(v54);
  sub_1DC515CCC();
  OUTLINED_FUNCTION_3_20();
  sub_1DC51691C();
  v55 = OUTLINED_FUNCTION_56();
  v40(v55);
  v56 = OUTLINED_FUNCTION_7_14();
  v39(v56);
  sub_1DC515C1C();
  OUTLINED_FUNCTION_3_20();
  sub_1DC51691C();
  v57 = OUTLINED_FUNCTION_56();
  v40(v57);
  v58 = OUTLINED_FUNCTION_7_14();
  v39(v58);
  sub_1DC515C9C();
  OUTLINED_FUNCTION_3_20();
  sub_1DC51691C();
  v59 = OUTLINED_FUNCTION_56();
  v40(v59);
  v60 = OUTLINED_FUNCTION_7_14();
  v39(v60);
  sub_1DC515CDC();
  OUTLINED_FUNCTION_3_20();
  sub_1DC51691C();
  v61 = OUTLINED_FUNCTION_56();
  v40(v61);
  v62 = OUTLINED_FUNCTION_7_14();
  v39(v62);
  sub_1DC515C7C();
  OUTLINED_FUNCTION_3_20();
  sub_1DC51691C();
  v63 = OUTLINED_FUNCTION_56();
  v40(v63);
  v64 = OUTLINED_FUNCTION_7_14();
  v39(v64);
  sub_1DC5153AC();
  OUTLINED_FUNCTION_3_20();
  sub_1DC51691C();
  v65 = OUTLINED_FUNCTION_56();
  v40(v65);
  v76 = *MEMORY[0x1E69D2B18];
  v39(v12);
  sub_1DC5152DC();
  OUTLINED_FUNCTION_3_20();
  sub_1DC51691C();
  v66 = OUTLINED_FUNCTION_56();
  v40(v66);
  sub_1DC5161AC();
  OUTLINED_FUNCTION_9_5();
  sub_1DC516A6C();
  sub_1DC5161FC();
  OUTLINED_FUNCTION_9_5();
  sub_1DC516A6C();
  sub_1DC5153FC();
  OUTLINED_FUNCTION_9_5();
  sub_1DC516A6C();
  sub_1DC51529C();
  OUTLINED_FUNCTION_9_5();
  sub_1DC516A6C();
  sub_1DC515D3C();
  OUTLINED_FUNCTION_9_5();
  sub_1DC516A6C();
  sub_1DC515D0C();
  OUTLINED_FUNCTION_9_5();
  sub_1DC516A6C();
  sub_1DC515BEC();
  OUTLINED_FUNCTION_9_5();
  sub_1DC516A6C();
  sub_1DC51520C();
  OUTLINED_FUNCTION_9_5();
  sub_1DC516A6C();
  (v39)(v12, *MEMORY[0x1E69D2B10], v6);
  sub_1DC515ACC();
  OUTLINED_FUNCTION_3_20();
  sub_1DC51691C();
  v67 = OUTLINED_FUNCTION_56();
  v40(v67);
  (v39)(v12, v76, v6);
  sub_1DC5151DC();
  OUTLINED_FUNCTION_3_20();
  sub_1DC51691C();
  v68 = OUTLINED_FUNCTION_56();
  v40(v68);
  v69 = OUTLINED_FUNCTION_7_14();
  v39(v69);
  sub_1DC515A4C();
  OUTLINED_FUNCTION_3_20();
  sub_1DC51691C();
  v70 = OUTLINED_FUNCTION_56();
  v40(v70);
  v71 = OUTLINED_FUNCTION_7_14();
  v39(v71);
  sub_1DC5152CC();
  OUTLINED_FUNCTION_3_20();
  sub_1DC51691C();
  v72 = OUTLINED_FUNCTION_56();
  v40(v72);
  (v39)(v12, v77, v6);
  sub_1DC515AFC();
  OUTLINED_FUNCTION_3_20();
  sub_1DC51691C();
  v73 = OUTLINED_FUNCTION_56();
  v40(v73);
  v74 = OUTLINED_FUNCTION_7_14();
  v39(v74);
  sub_1DC515B4C();
  OUTLINED_FUNCTION_3_20();
  sub_1DC51691C();
  v75 = OUTLINED_FUNCTION_56();
  v40(v75);
  static SignpostLogger.end(_:_:)(v81, *v80, v80[1], *(v80 + 16));
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm(v85);
  __swift_destroy_boxed_opaque_existential_1Tm(v86);
  __swift_destroy_boxed_opaque_existential_1Tm(v84);
  (*(v82 + 8))(v81, v83);
  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC385820()
{
  sub_1DC28EB30(v0 + qword_1ECC8F2C8, &unk_1ECC7CA30, &qword_1DC522A00);
  sub_1DC28EB30(v0 + qword_1ECC8F2E0, &qword_1ECC7C928, &qword_1DC523AB8);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + qword_1ECC8F2A8));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + qword_1ECC8F2A0));
  sub_1DC28EB30(v0 + qword_1ECC8F2D8, &qword_1ECC7D010, &qword_1DC5263B0);
}

uint64_t NLBridge.deinit()
{
  v1 = v0;
  v2 = qword_1ECC8F2A8;
  swift_beginAccess();
  sub_1DC28FB9C(v1 + v2, v7);
  v3 = v8;
  v4 = v9;
  __swift_project_boxed_opaque_existential_1(v7, v8);
  (*(v4 + 72))(v3, v4);
  __swift_destroy_boxed_opaque_existential_1Tm(v7);
  v5 = sub_1DC51694C();
  sub_1DC28EB30(v5 + qword_1ECC8F2C8, &unk_1ECC7CA30, &qword_1DC522A00);
  sub_1DC28EB30(v5 + qword_1ECC8F2E0, &qword_1ECC7C928, &qword_1DC523AB8);

  __swift_destroy_boxed_opaque_existential_1Tm((v5 + qword_1ECC8F2A8));
  __swift_destroy_boxed_opaque_existential_1Tm((v5 + qword_1ECC8F2A0));
  sub_1DC28EB30(v5 + qword_1ECC8F2D8, &qword_1ECC7D010, &qword_1DC5263B0);

  return v5;
}

uint64_t NLBridge.__deallocating_deinit()
{
  v0 = NLBridge.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void sub_1DC385AE0()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D010, &qword_1DC5263B0);
  v4 = OUTLINED_FUNCTION_10(v3);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v34 - v8;
  v10 = sub_1DC516F7C();
  OUTLINED_FUNCTION_0();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_6_6();
  sub_1DC28D414();
  v14 = OUTLINED_FUNCTION_20();
  v15(v14);
  v16 = v2;
  v17 = sub_1DC516F6C();
  v18 = sub_1DC517B9C();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = OUTLINED_FUNCTION_63();
    v35 = v9;
    v20 = v19;
    v21 = OUTLINED_FUNCTION_249();
    *v20 = 138412290;
    *(v20 + 4) = v16;
    *v21 = v16;
    v22 = v16;
    OUTLINED_FUNCTION_66_0(&dword_1DC287000, v23, v24, "NLBridge received message: %@");
    sub_1DC28EB30(v21, &qword_1ECC7DFE0, &qword_1DC5227F0);
    OUTLINED_FUNCTION_8_0();
    MEMORY[0x1E1298840]();
    v9 = v35;
    OUTLINED_FUNCTION_8_0();
    MEMORY[0x1E1298840]();
  }

  (*(v12 + 8))(v0, v10);
  sub_1DC5151EC();
  v25 = sub_1DC5162DC();
  if (__swift_getEnumTagSinglePayload(v7, 1, v25) == 1)
  {
    OUTLINED_FUNCTION_183();
    (*(v26 + class metadata base offset for NLBridge + 264))();
    if (__swift_getEnumTagSinglePayload(v7, 1, v25) != 1)
    {
      sub_1DC28EB30(v7, &qword_1ECC7D010, &qword_1DC5263B0);
    }
  }

  else
  {
    (*(*(v25 - 8) + 32))(v9, v7, v25);
    OUTLINED_FUNCTION_61();
    __swift_storeEnumTagSinglePayload(v27, v28, v29, v25);
  }

  v30 = OUTLINED_FUNCTION_59_5();
  v31(v30);
  v32 = *(*v0 + class metadata base offset for NLBridge + 296);
  v33 = v16;
  v32(v16);
  OUTLINED_FUNCTION_34();
}

void sub_1DC385E3C()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  sub_1DC51623C();
  OUTLINED_FUNCTION_0();
  v30 = v4;
  v31 = v3;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_1();
  v7 = v6 - v5;
  OUTLINED_FUNCTION_58_8();
  sub_1DC510C8C();
  OUTLINED_FUNCTION_0();
  v28 = v9;
  v29 = v8;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1();
  v12 = v11 - v10;
  v13 = sub_1DC516F7C();
  OUTLINED_FUNCTION_0();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_6_6();
  sub_1DC28D414();
  v17 = OUTLINED_FUNCTION_20();
  v18(v17);
  v19 = v2;
  v20 = sub_1DC516F6C();
  v21 = sub_1DC517B9C();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = OUTLINED_FUNCTION_63();
    v23 = OUTLINED_FUNCTION_249();
    *v22 = 138412290;
    *(v22 + 4) = v19;
    *v23 = v19;
    v24 = v19;
    _os_log_impl(&dword_1DC287000, v20, v21, "NLBridge received message: %@", v22, 0xCu);
    sub_1DC28EB30(v23, &qword_1ECC7DFE0, &qword_1DC5227F0);
    OUTLINED_FUNCTION_8_0();
    MEMORY[0x1E1298840]();
    OUTLINED_FUNCTION_8_0();
    MEMORY[0x1E1298840]();
  }

  (*(v15 + 8))(v0, v13);
  OUTLINED_FUNCTION_183();
  (*(v25 + class metadata base offset for NLBridge + 168))(v32);
  v26 = v33;
  v27 = v34;
  __swift_project_boxed_opaque_existential_1(v32, v33);
  sub_1DC51618C();
  sub_1DC510B7C();
  sub_1DC51619C();
  (*(v27 + 8))(v12, v7, 0, 0, v26, v27);
  (*(v30 + 8))(v7, v31);
  (*(v28 + 8))(v12, v29);
  __swift_destroy_boxed_opaque_existential_1Tm(v32);
  OUTLINED_FUNCTION_34();
}

void sub_1DC386154()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  v3 = sub_1DC51623C();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1();
  v9 = v8 - v7;
  OUTLINED_FUNCTION_58_8();
  v10 = sub_1DC516F7C();
  OUTLINED_FUNCTION_0();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_6_6();
  sub_1DC28D414();
  v14 = OUTLINED_FUNCTION_20();
  v15(v14);
  v16 = v2;
  v17 = sub_1DC516F6C();
  v18 = sub_1DC517B9C();

  if (os_log_type_enabled(v17, v18))
  {
    v28 = v3;
    v19 = OUTLINED_FUNCTION_63();
    v27 = v5;
    v20 = OUTLINED_FUNCTION_249();
    *v19 = 138412290;
    *(v19 + 4) = v16;
    *v20 = v16;
    v21 = v16;
    OUTLINED_FUNCTION_66_0(&dword_1DC287000, v22, v23, "NLBridge received message: %@");
    sub_1DC28EB30(v20, &qword_1ECC7DFE0, &qword_1DC5227F0);
    v5 = v27;
    OUTLINED_FUNCTION_8_0();
    MEMORY[0x1E1298840]();
    v3 = v28;
    OUTLINED_FUNCTION_8_0();
    MEMORY[0x1E1298840]();
  }

  v24 = (*(v12 + 8))(v0, v10);
  (*(*v0 + class metadata base offset for NLBridge + 168))(v29, v24);
  v25 = v30;
  v26 = v31;
  __swift_project_boxed_opaque_existential_1(v29, v30);
  sub_1DC5161EC();
  (*(v26 + 16))(v9, v25, v26);
  (*(v5 + 8))(v9, v3);
  __swift_destroy_boxed_opaque_existential_1Tm(v29);
  OUTLINED_FUNCTION_34();
}

void sub_1DC3863DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_33();
  a19 = v21;
  a20 = v22;
  v180 = v20;
  v24 = v23;
  v177 = sub_1DC510B6C();
  OUTLINED_FUNCTION_0();
  v164 = v25;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_1();
  v163 = v28 - v27;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CE20, &unk_1DC523AC8);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v29);
  v167 = &v157[-v30];
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7CA30, &qword_1DC522A00);
  OUTLINED_FUNCTION_35();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_23_1();
  v179 = v34;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_62();
  v166 = v36;
  v37 = sub_1DC516F7C();
  OUTLINED_FUNCTION_0();
  v39 = v38;
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_15();
  v168 = v41;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v157[-v46];
  OUTLINED_FUNCTION_58_8();
  v48 = sub_1DC5162DC();
  OUTLINED_FUNCTION_0();
  v50 = v49;
  v52 = MEMORY[0x1EEE9AC00](v51);
  v54 = &v157[-((v53 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v52);
  v56 = &v157[-v55];
  sub_1DC515BDC();
  v181 = v24;
  v57 = sub_1DC515BCC();
  v59 = v58;
  v60 = sub_1DC28D414();
  v182 = v39;
  v183 = v37;
  v61 = *(v39 + 16);
  v174 = v60;
  v175 = v61;
  v176 = v39 + 16;
  v61(v47);
  v62 = *(v50 + 16);
  v171 = v56;
  v62(v54, v56, v48);

  v173 = v47;
  v63 = sub_1DC516F6C();
  v64 = sub_1DC517B9C();

  v65 = os_log_type_enabled(v63, v64);
  v172 = v48;
  v178 = v50;
  v169 = v59;
  v161 = v57;
  if (v65)
  {
    v66 = swift_slowAlloc();
    v184[0] = swift_slowAlloc();
    *v66 = 136315394;
    v67 = OUTLINED_FUNCTION_56();
    *(v66 + 4) = sub_1DC291244(v67, v68, v69);
    *(v66 + 12) = 2080;
    sub_1DC2917D0(&unk_1ECC7BB00, MEMORY[0x1E69D08C8], MEMORY[0x1E69D08E0]);
    v70 = sub_1DC51823C();
    v71 = v48;
    v73 = v72;
    v170 = *(v50 + 8);
    v170(v54, v71);
    v74 = sub_1DC291244(v70, v73, v184);

    *(v66 + 14) = v74;
    _os_log_impl(&dword_1DC287000, v63, v64, "Received InitiateMUXStateRollbackMessage, rollbackRequestId: %s, userId: %s", v66, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_8_0();
    MEMORY[0x1E1298840]();
    OUTLINED_FUNCTION_8_0();
    MEMORY[0x1E1298840]();
  }

  else
  {

    v170 = *(v50 + 8);
    v170(v54, v48);
  }

  v75 = v173;
  v173 = *(v182 + 8);
  v76 = v173(v75, v183);
  v77 = v166;
  v158 = *(*v180 + class metadata base offset for NLBridge + 96);
  (v158)(v76);
  v78 = v179;
  sub_1DC515D7C();
  OUTLINED_FUNCTION_61();
  v79 = v177;
  __swift_storeEnumTagSinglePayload(v80, v81, v82, v177);
  v83 = *(v165 + 48);
  v84 = v167;
  OUTLINED_FUNCTION_49_9(v77, v167);
  OUTLINED_FUNCTION_49_9(v78, &v84[v83]);
  OUTLINED_FUNCTION_2_0(v84);
  v85 = v168;
  if (v93)
  {
    OUTLINED_FUNCTION_59_2();
    sub_1DC28EB30(v86, v87, v88);
    OUTLINED_FUNCTION_59_2();
    sub_1DC28EB30(v89, v90, v91);
    OUTLINED_FUNCTION_2_0(&v84[v83]);
    if (v93)
    {
      sub_1DC28EB30(v84, &unk_1ECC7CA30, &qword_1DC522A00);
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  v92 = v162;
  sub_1DC28F414(v84, v162, &unk_1ECC7CA30, &qword_1DC522A00);
  OUTLINED_FUNCTION_2_0(&v84[v83]);
  if (v93)
  {
    OUTLINED_FUNCTION_59_2();
    sub_1DC28EB30(v94, v95, v96);
    OUTLINED_FUNCTION_59_2();
    sub_1DC28EB30(v97, v98, v99);
    (*(v164 + 8))(v92, v79);
LABEL_12:
    sub_1DC28EB30(v84, &qword_1ECC7CE20, &unk_1DC523AC8);
    v78 = &off_1DC522000;
    goto LABEL_13;
  }

  v118 = v77;
  v119 = v84;
  v120 = v164;
  v121 = v119 + v83;
  v122 = v163;
  (*(v164 + 32))(v163, v121, v79);
  OUTLINED_FUNCTION_0_33();
  sub_1DC2917D0(v123, v124, MEMORY[0x1E69695C8]);
  LODWORD(v165) = sub_1DC5176CC();
  v125 = *(v120 + 8);
  v125(v122, v79);
  sub_1DC28EB30(v179, &unk_1ECC7CA30, &qword_1DC522A00);
  sub_1DC28EB30(v118, &unk_1ECC7CA30, &qword_1DC522A00);
  v126 = OUTLINED_FUNCTION_229();
  (v125)(v126);
  sub_1DC28EB30(v119, &unk_1ECC7CA30, &qword_1DC522A00);
  v78 = &off_1DC522000;
  if (v165)
  {
LABEL_18:
    v127 = sub_1DC51690C();
    v128 = v171;
    v129 = v169;
    v130 = v161;
    if (!v127)
    {
      goto LABEL_29;
    }

    v131 = sub_1DC5169DC();
    v133 = v132;

    if (v131 == v130 && v133 == v129)
    {
    }

    else
    {
      v135 = sub_1DC51825C();

      if ((v135 & 1) == 0)
      {
        goto LABEL_29;
      }
    }

    OUTLINED_FUNCTION_25_9();
    v136();
    v137 = sub_1DC516F6C();
    sub_1DC517BAC();
    v138 = OUTLINED_FUNCTION_24_8();
    if (os_log_type_enabled(v138, v139))
    {
      OUTLINED_FUNCTION_17_4();
      v140 = swift_slowAlloc();
      *v140 = 0;
      OUTLINED_FUNCTION_38_0();
      _os_log_impl(v141, v142, v143, v144, v140, 2u);
      OUTLINED_FUNCTION_8_0();
      MEMORY[0x1E1298840]();
    }

    v173(v160, v183);
LABEL_29:
    OUTLINED_FUNCTION_43_11();
    v146 = (*(v145 + class metadata base offset for NLBridge + 144))();
    (*(*v146 + 104))(v128);

    OUTLINED_FUNCTION_147();
    if ((*(v147 + 144))(v130, v129))
    {
      OUTLINED_FUNCTION_53_10(&a10);
      OUTLINED_FUNCTION_25_9();
      v148();

      v149 = sub_1DC516F6C();
      v150 = sub_1DC517B9C();

      if (os_log_type_enabled(v149, v150))
      {
        v151 = OUTLINED_FUNCTION_63();
        OUTLINED_FUNCTION_19_3();
        v152 = swift_slowAlloc();
        v184[0] = v152;
        v153 = OUTLINED_FUNCTION_63_6(4.8149e-34);

        *(v151 + 4) = v153;
        v154 = "Successfully rolled back TurnInputContainer to requestId: %s";
LABEL_34:
        _os_log_impl(&dword_1DC287000, v149, v150, v154, v151, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v152);
        OUTLINED_FUNCTION_8_0();
        MEMORY[0x1E1298840]();
        OUTLINED_FUNCTION_8_0();
        MEMORY[0x1E1298840]();
LABEL_36:

        v173(v78, v183);
        v117 = v128;
        goto LABEL_37;
      }
    }

    else
    {
      OUTLINED_FUNCTION_53_10(&a11);
      OUTLINED_FUNCTION_25_9();
      v155();

      v149 = sub_1DC516F6C();
      v150 = sub_1DC517BAC();

      if (os_log_type_enabled(v149, v150))
      {
        v151 = OUTLINED_FUNCTION_63();
        OUTLINED_FUNCTION_19_3();
        v152 = swift_slowAlloc();
        v184[0] = v152;
        v156 = OUTLINED_FUNCTION_63_6(4.8149e-34);

        *(v151 + 4) = v156;
        v154 = "Could not rollback TurnInputContainer to requestId: %s";
        goto LABEL_34;
      }
    }

    goto LABEL_36;
  }

LABEL_13:

  OUTLINED_FUNCTION_25_9();
  v100();
  v101 = v181;

  v102 = sub_1DC516F6C();
  v103 = sub_1DC517BAC();

  if (os_log_type_enabled(v102, v103))
  {
    v104 = swift_slowAlloc();
    v184[0] = swift_slowAlloc();
    *v104 = *(v78 + 73);
    v105 = v163;
    sub_1DC515D7C();
    OUTLINED_FUNCTION_0_33();
    sub_1DC2917D0(v106, v107, MEMORY[0x1E69695E0]);
    v108 = v85;
    v109 = v177;
    v110 = sub_1DC51823C();
    v112 = v111;
    (*(v164 + 8))(v105, v109);
    v113 = sub_1DC291244(v110, v112, v184);

    *(v104 + 4) = v113;
    *(v104 + 12) = 2080;
    OUTLINED_FUNCTION_57_5();
    v158();
    v114 = sub_1DC51777C();
    v116 = sub_1DC291244(v114, v115, v184);

    *(v104 + 14) = v116;
    _os_log_impl(&dword_1DC287000, v102, v103, "SessionId of initiateMUXStateRollbackMessage: %s not equal to currentSessionId: %s . Ignoring the message", v104, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_8_0();
    MEMORY[0x1E1298840]();
    OUTLINED_FUNCTION_8_0();
    MEMORY[0x1E1298840]();

    v173(v108, v183);
  }

  else
  {

    v173(v85, v183);
  }

  v117 = v171;
LABEL_37:
  v170(v117, v172);
  OUTLINED_FUNCTION_34();
}

void sub_1DC387100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_33();
  a19 = v22;
  a20 = v23;
  v24 = v20;
  v26 = v25;
  v104 = sub_1DC51623C();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_14(v29);
  v103 = sub_1DC510C8C();
  OUTLINED_FUNCTION_0();
  v101 = v30;
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_1();
  v112 = v33 - v32;
  sub_1DC510B6C();
  OUTLINED_FUNCTION_0();
  v113 = v34;
  v114 = v35;
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_15();
  v111 = v36;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_62();
  v109 = v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D010, &qword_1DC5263B0);
  OUTLINED_FUNCTION_10(v39);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v40);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7CA30, &qword_1DC522A00);
  OUTLINED_FUNCTION_10(v41);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v42);
  v43 = OUTLINED_FUNCTION_65_3();
  OUTLINED_FUNCTION_0();
  v45 = v44;
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v48);
  v105 = OUTLINED_FUNCTION_40_2();
  v106 = *(v45 + 16);
  v106(v20);
  v49 = v26;
  v50 = sub_1DC516F6C();
  v51 = sub_1DC517B9C();

  if (os_log_type_enabled(v50, v51))
  {
    v107 = v43;
    v52 = OUTLINED_FUNCTION_63();
    v53 = OUTLINED_FUNCTION_249();
    *v52 = 138412290;
    *(v52 + 4) = v49;
    *v53 = v49;
    v54 = v49;
    OUTLINED_FUNCTION_52_10(&dword_1DC287000, v50, v51, "NLBridge received message: %@");
    sub_1DC28EB30(v53, &qword_1ECC7DFE0, &qword_1DC5227F0);
    OUTLINED_FUNCTION_8_0();
    MEMORY[0x1E1298840]();
    v43 = v107;
    OUTLINED_FUNCTION_8_0();
    MEMORY[0x1E1298840]();
  }

  v108 = *(v45 + 8);
  v108(v20, v43);
  sub_1DC515D7C();
  OUTLINED_FUNCTION_61();
  __swift_storeEnumTagSinglePayload(v55, v56, v57, v113);
  OUTLINED_FUNCTION_183();
  (*(v58 + class metadata base offset for NLBridge + 104))(v21);
  sub_1DC515CBC();
  sub_1DC5162DC();
  OUTLINED_FUNCTION_61();
  __swift_storeEnumTagSinglePayload(v59, v60, v61, v62);
  OUTLINED_FUNCTION_183();
  v63 = OUTLINED_FUNCTION_59_5();
  v64(v63);
  sub_1DC516A9C();
  v65 = v43;
  OUTLINED_FUNCTION_68_3();
  sub_1DC515D7C();
  sub_1DC51628C();
  v66 = *(v114 + 8);
  v66(v109, v113);
  OUTLINED_FUNCTION_147();
  (*(v67 + class metadata base offset for NLBridge + 128))(v115);
  __swift_destroy_boxed_opaque_existential_1Tm(v117);
  sub_1DC515D2C();
  OUTLINED_FUNCTION_147();
  v68 = &unk_1ECC8F000;
  (*(v69 + class metadata base offset for NLBridge + 224))(v70 & 1);
  if (sub_1DC515D2C())
  {
    v110 = v66;
    v71 = OUTLINED_FUNCTION_53_10(&a13);
    (v106)(v71, v105, v65);
    v72 = sub_1DC516F6C();
    v73 = sub_1DC517B9C();
    if (OUTLINED_FUNCTION_15_4(v73))
    {
      OUTLINED_FUNCTION_17_4();
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_37_6(&dword_1DC287000, v74, v75, "UoD for dictation is supported");
      OUTLINED_FUNCTION_8_0();
      MEMORY[0x1E1298840]();
    }

    v108(v66, v65);
    OUTLINED_FUNCTION_147();
    (*(v76 + class metadata base offset for NLBridge + 168))(v117);
    v77 = v117[3];
    v78 = v117[4];
    OUTLINED_FUNCTION_68_3();
    sub_1DC515D7C();
    sub_1DC515CAC();
    sub_1DC510B7C();
    OUTLINED_FUNCTION_147();
    (*(v79 + class metadata base offset for NLBridge + 120))(v115);
    v80 = v116;
    if (v116)
    {
      v81 = __swift_project_boxed_opaque_existential_1(v115, v116);
      v82 = *(v80 - 8);
      MEMORY[0x1EEE9AC00](v81);
      OUTLINED_FUNCTION_6_6();
      v83 = OUTLINED_FUNCTION_20();
      v84(v83);
      sub_1DC28EB30(v115, &qword_1ECC7C928, &qword_1DC523AB8);
      sub_1DC51625C();
      v85 = *(v82 + 8);
      v68 = (v82 + 8);
      v85(v24, v80);
      OUTLINED_FUNCTION_57_5();
      v87 = v102;
      v88 = v104;
      (*(v86 + 32))(v102, v99, v104);
    }

    else
    {
      sub_1DC28EB30(v115, &qword_1ECC7C928, &qword_1DC523AB8);
      OUTLINED_FUNCTION_57_5();
      v87 = v102;
      v88 = v104;
      (*(v97 + 104))();
    }

    (*(v78 + 24))(v111, v112, v87, 0, 0, v77, v78);
    v68[1](v87, v88);
    (*(v101 + 8))(v112, v103);
    v110(v111, v113);
    __swift_destroy_boxed_opaque_existential_1Tm(v117);
    OUTLINED_FUNCTION_183();
    (*(v98 + class metadata base offset for NLBridge + 472))();
  }

  else
  {
    (v106)(v100, v105, v65);
    v89 = sub_1DC516F6C();
    sub_1DC517B9C();
    v90 = OUTLINED_FUNCTION_24_8();
    if (os_log_type_enabled(v90, v91))
    {
      OUTLINED_FUNCTION_17_4();
      v92 = swift_slowAlloc();
      *v92 = 0;
      OUTLINED_FUNCTION_38_0();
      _os_log_impl(v93, v94, v95, v96, v92, 2u);
      OUTLINED_FUNCTION_8_0();
      MEMORY[0x1E1298840]();
    }

    v108(v100, v65);
  }

  OUTLINED_FUNCTION_34();
}

void sub_1DC387A78()
{
  OUTLINED_FUNCTION_33();
  v104 = v0;
  v3 = v2;
  v4 = sub_1DC510B6C();
  OUTLINED_FUNCTION_0();
  v102 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1();
  v101 = v8 - v7;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CE20, &unk_1DC523AC8);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v92 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7CA30, &qword_1DC522A00);
  v13 = OUTLINED_FUNCTION_10(v12);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_15();
  v94 = v14;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_23_1();
  v95 = v16;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_53();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v92 - v19;
  OUTLINED_FUNCTION_58_8();
  v21 = sub_1DC516F7C();
  OUTLINED_FUNCTION_0();
  v23 = v22;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_15();
  v100 = v25;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v26);
  v27 = OUTLINED_FUNCTION_40_2();
  v28 = v23;
  v29 = *(v23 + 16);
  v97 = v27;
  v98 = v23 + 16;
  v96 = v29;
  v29(v0);
  v30 = v3;
  v31 = sub_1DC516F6C();
  v32 = sub_1DC517B9C();

  v33 = os_log_type_enabled(v31, v32);
  v105 = v30;
  if (v33)
  {
    v34 = OUTLINED_FUNCTION_63();
    v99 = v21;
    v35 = v4;
    v36 = v34;
    v37 = OUTLINED_FUNCTION_249();
    *v36 = 138412290;
    *(v36 + 4) = v105;
    *v37 = v105;
    v38 = v105;
    OUTLINED_FUNCTION_52_10(&dword_1DC287000, v31, v32, "NLBridge received message: %@");
    sub_1DC28EB30(v37, &qword_1ECC7DFE0, &qword_1DC5227F0);
    OUTLINED_FUNCTION_8_0();
    MEMORY[0x1E1298840]();
    v4 = v35;
    v21 = v99;
    OUTLINED_FUNCTION_8_0();
    MEMORY[0x1E1298840]();
  }

  v39 = v28 + 8;
  v99 = *(v28 + 8);
  v40 = v99(v0, v21);
  (*(*v104 + class metadata base offset for NLBridge + 96))(v40);
  sub_1DC515D7C();
  OUTLINED_FUNCTION_61();
  __swift_storeEnumTagSinglePayload(v41, v42, v43, v4);
  v44 = *(v103 + 48);
  OUTLINED_FUNCTION_49_9(v20, v11);
  OUTLINED_FUNCTION_49_9(v1, &v11[v44]);
  OUTLINED_FUNCTION_2_0(v11);
  if (!v52)
  {
    v51 = v95;
    sub_1DC28F414(v11, v95, &unk_1ECC7CA30, &qword_1DC522A00);
    OUTLINED_FUNCTION_2_0(&v11[v44]);
    if (!v52)
    {
      v103 = v39;
      v74 = OUTLINED_FUNCTION_33_11();
      v75(v74);
      OUTLINED_FUNCTION_0_33();
      sub_1DC2917D0(v76, v77, MEMORY[0x1E69695C8]);
      v93 = sub_1DC5176CC();
      v78 = v21;
      v79 = *(v39 + 8);
      v79(v44, v4);
      OUTLINED_FUNCTION_50_10(v1);
      OUTLINED_FUNCTION_50_10(v20);
      v79(v51, v4);
      v39 = v103;
      v21 = v78;
      OUTLINED_FUNCTION_50_10(v11);
      if (v93)
      {
        goto LABEL_16;
      }

LABEL_12:
      v59 = v100;
      v96(v100, v97, v21);
      v60 = v105;
      v61 = sub_1DC516F6C();
      v62 = sub_1DC517BAC();

      if (os_log_type_enabled(v61, v62))
      {
        v63 = OUTLINED_FUNCTION_63();
        OUTLINED_FUNCTION_19_3();
        v64 = swift_slowAlloc();
        v103 = v39;
        v65 = v64;
        *&v106 = v64;
        OUTLINED_FUNCTION_48_7(v64, 4.8149e-34);
        OUTLINED_FUNCTION_0_33();
        sub_1DC2917D0(v66, v67, MEMORY[0x1E69695E0]);
        sub_1DC51823C();
        v68 = OUTLINED_FUNCTION_34_9();
        v69(v68);
        v70 = OUTLINED_FUNCTION_43();
        v73 = sub_1DC291244(v70, v71, v72);

        *(v63 + 4) = v73;
        OUTLINED_FUNCTION_52_10(&dword_1DC287000, v61, v62, "SessionId: %s is not the current session, ignoring", v92);
        __swift_destroy_boxed_opaque_existential_1Tm(v65);
        OUTLINED_FUNCTION_8_0();
        MEMORY[0x1E1298840]();
        OUTLINED_FUNCTION_8_0();
        MEMORY[0x1E1298840]();

        v99(v60, v1);
      }

      else
      {

        v99(v59, v21);
      }

      goto LABEL_20;
    }

    OUTLINED_FUNCTION_59_2();
    sub_1DC28EB30(v53, v54, v55);
    OUTLINED_FUNCTION_59_2();
    sub_1DC28EB30(v56, v57, v58);
    (*(v102 + 8))(v51, v4);
LABEL_11:
    sub_1DC28EB30(v11, &qword_1ECC7CE20, &unk_1DC523AC8);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_59_2();
  sub_1DC28EB30(v45, v46, v47);
  OUTLINED_FUNCTION_59_2();
  sub_1DC28EB30(v48, v49, v50);
  OUTLINED_FUNCTION_2_0(&v11[v44]);
  if (!v52)
  {
    goto LABEL_11;
  }

  sub_1DC28EB30(v11, &unk_1ECC7CA30, &qword_1DC522A00);
LABEL_16:
  OUTLINED_FUNCTION_43_11();
  v81 = (*(v80 + class metadata base offset for NLBridge + 216))();
  if (v81 != 2 && (v81 & 1) != 0)
  {
    OUTLINED_FUNCTION_43_11();
    (*(v82 + class metadata base offset for NLBridge + 168))(&v106);
    v83 = *(&v107 + 1);
    v84 = v108;
    __swift_project_boxed_opaque_existential_1(&v106, *(&v107 + 1));
    v85 = v101;
    sub_1DC515D7C();
    (*(v84 + 32))(v85, v83, v84);
    (*(v102 + 8))(v85, v4);
    __swift_destroy_boxed_opaque_existential_1Tm(&v106);
  }

  v86 = v94;
  v87 = OUTLINED_FUNCTION_27();
  __swift_storeEnumTagSinglePayload(v87, v88, v89, v4);
  OUTLINED_FUNCTION_43_11();
  (*(v90 + class metadata base offset for NLBridge + 104))(v86);
  v108 = 0;
  v106 = 0u;
  v107 = 0u;
  OUTLINED_FUNCTION_43_11();
  (*(v91 + class metadata base offset for NLBridge + 128))(&v106);
LABEL_20:
  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC388284()
{
  v1 = sub_1DC516F7C();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_6_6();
  sub_1DC28D414();
  v5 = OUTLINED_FUNCTION_20();
  v6(v5);
  v7 = sub_1DC516F6C();
  v8 = sub_1DC517B9C();
  if (os_log_type_enabled(v7, v8))
  {
    OUTLINED_FUNCTION_17_4();
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1DC287000, v7, v8, "NLBridge received TypingStartedMessage. Calling SRR collectSalientEntities", v9, 2u);
    OUTLINED_FUNCTION_8_0();
    MEMORY[0x1E1298840]();
  }

  (*(v3 + 8))(v0, v1);
  OUTLINED_FUNCTION_183();
  (*(v10 + class metadata base offset for NLBridge + 192))(v14);
  v11 = v15;
  v12 = v16;
  __swift_project_boxed_opaque_existential_1(v14, v15);
  (*(v12 + 40))(v11, v12);
  return __swift_destroy_boxed_opaque_existential_1Tm(v14);
}

unint64_t sub_1DC388468(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECC7D028;
  if (!qword_1ECC7D028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7D028);
  }

  return result;
}

unint64_t sub_1DC3884C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECC7D030;
  if (!qword_1ECC7D030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7D030);
  }

  return result;
}

uint64_t type metadata accessor for NLBridge(uint64_t a1)
{
  result = qword_1ECC7EAD0;
  if (!qword_1ECC7EAD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1DC388560(uint64_t a1)
{
  sub_1DC3886D8(319, &unk_1ECC7BE80, MEMORY[0x1E69695A8]);
  if (v1 <= 0x3F)
  {
    sub_1DC3886D8(319, &qword_1ECC7BAF8, MEMORY[0x1E69D08C8]);
    if (v2 <= 0x3F)
    {
      swift_initClassMetadata2();
    }
  }
}

void sub_1DC3886D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1DC517D8C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for NLBridge.NLBridgeError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1DC388F9C()
{
  v0 = sub_1DC5172FC();
  __swift_allocate_value_buffer(v0, qword_1ECC8F8D8);
  v1 = __swift_project_value_buffer(v0, qword_1ECC8F8D8);
  swift_allocObject();
  OUTLINED_FUNCTION_3_21();
  v2[2] = v4;
  v2[3] = v3;
  v2[4] = 0x69746E4573736150;
  v2[5] = 0xEA00000000007974;
  *v1 = v2;
  OUTLINED_FUNCTION_7_1();
  v6 = *(v5 + 104);

  return v6(v1);
}

uint64_t sub_1DC38906C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFF8, &qword_1DC522580);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v28 - v6;
  v8 = sub_1DC5172FC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DC5171CC();
  if (qword_1ECC87AB0 != -1)
  {
    OUTLINED_FUNCTION_0_34(&qword_1ECC87AB0);
  }

  __swift_project_value_buffer(v8, qword_1ECC8F8D8);
  v12 = sub_1DC5172DC();
  (*(v9 + 8))(v11, v8);
  if ((v12 & 1) == 0)
  {
    sub_1DC51721C();
    OUTLINED_FUNCTION_0_2();
    (*(v15 + 8))(a1);
    return 0;
  }

  v13 = sub_1DC5171EC();
  sub_1DC30F668(0xD000000000000014, 0x80000001DC5428B0, v13, v7);

  v14 = sub_1DC5172AC();
  if (__swift_getEnumTagSinglePayload(v7, 1, v14) == 1)
  {
    sub_1DC30F72C(v7);
LABEL_8:

    v16 = 0;
    goto LABEL_9;
  }

  sub_1DC382AC0();
  v16 = v17;
  v19 = v18;
  OUTLINED_FUNCTION_7_1();
  (*(v20 + 8))(v7, v14);
  if (!v19)
  {
    goto LABEL_8;
  }

LABEL_9:
  v21 = sub_1DC5171EC();
  sub_1DC30F668(0x6570795473736170, 0xE800000000000000, v21, v5);

  if (__swift_getEnumTagSinglePayload(v5, 1, v14) == 1)
  {
    sub_1DC30F72C(v5);
LABEL_13:
    sub_1DC51721C();
    OUTLINED_FUNCTION_0_2();
    (*(v26 + 8))(a1);

    return v16;
  }

  sub_1DC38389C();
  v23 = v22;
  OUTLINED_FUNCTION_7_1();
  (*(v24 + 8))(v5, v14);
  if (!v23)
  {
    goto LABEL_13;
  }

  sub_1DC51721C();
  OUTLINED_FUNCTION_0_2();
  (*(v25 + 8))(a1);
  return v16;
}

uint64_t sub_1DC389404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1DC517F4C();

  OUTLINED_FUNCTION_3_21();
  v10 = v8 | 4;
  MEMORY[0x1E1296160](a1, a2);
  MEMORY[0x1E1296160](0xD000000000000012, 0x80000001DC540270);
  MEMORY[0x1E1296160](a3, a4);
  return v10;
}

uint64_t sub_1DC3894BC@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECC87AB0 != -1)
  {
    OUTLINED_FUNCTION_0_34(&qword_1ECC87AB0);
  }

  v2 = sub_1DC5172FC();
  __swift_project_value_buffer(v2, qword_1ECC8F8D8);
  OUTLINED_FUNCTION_7_1();
  v4 = *(v3 + 16);

  return v4(a1);
}

uint64_t sub_1DC389550@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1DC38906C(a1);
  *a2 = result;
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;
  return result;
}

uint64_t sub_1DC389598()
{
  v0 = type metadata accessor for NLRouterAutoBugCaptureImpl();
  result = swift_allocObject();
  qword_1ECC8F558 = v0;
  unk_1ECC8F560 = &off_1F57FA268;
  qword_1ECC8F540 = result;
  return result;
}

uint64_t *sub_1DC3895E0()
{
  if (qword_1ECC815B0 != -1)
  {
    OUTLINED_FUNCTION_0_35(&qword_1ECC815B0);
  }

  return &qword_1ECC8F540;
}

uint64_t sub_1DC38962C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1DC51735C();
  v9 = *(v8 - 8);
  result = MEMORY[0x1EEE9AC00](v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16))
  {
    v31 = a1;

    sub_1DC38A09C();
    v13 = *(v31 + 16);
    if (v13)
    {
      v28 = *(a4 + 8);
      v29 = a4 + 8;
      v26 = (v9 + 16);
      v27 = 0x80000001DC542950;
      v25 = v8;
      v22 = v31;
      v14 = (v31 + 40);
      v24 = xmmword_1DC522F20;
      v23 = v12;
      do
      {
        v15 = *(v14 - 1);
        v16 = *v14;
        v31 = 0;
        v32 = 0xE000000000000000;

        sub_1DC517F4C();

        v31 = 0xD000000000000011;
        v32 = v27;
        MEMORY[0x1E1296160](v15, v16);

        v17 = v32;
        v30 = v31;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C440, &qword_1DC522EF0);
        v18 = swift_allocObject();
        OUTLINED_FUNCTION_1_24(v18, v24);
        v31 = v19;
        v32 = 0xE800000000000000;
        (*v26)(v23, a2, v25);
        v20 = sub_1DC51777C();
        MEMORY[0x1E1296160](v20);

        v21 = v32;
        v18[2].n128_u64[0] = v31;
        v18[2].n128_u64[1] = v21;
        v28(0, v30, v17, v18, a3, a4);

        v14 += 2;
        --v13;
      }

      while (v13);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1DC3898E0(uint64_t a1, uint64_t a2, double a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C440, &qword_1DC522EF0);
  v5 = swift_allocObject();
  OUTLINED_FUNCTION_1_24(v5, xmmword_1DC522F20);
  v9 = v6;
  v7 = sub_1DC517B1C();
  MEMORY[0x1E1296160](v7);

  v5[2].n128_u64[0] = v9;
  v5[2].n128_u64[1] = 0xE800000000000000;
  (*(a2 + 8))(1, 0xD000000000000020, 0x80000001DC542970, v5, a1, a2);
}

void sub_1DC3899E4(char a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = [objc_allocWithZone(MEMORY[0x1E69D4F80]) init];
  v6 = sub_1DC517B9C();
  sub_1DC297814();
  v7 = sub_1DC296DBC();
  sub_1DC516F0C(v6, &dword_1DC287000, v7, "AutoBugCapture Triggered", 24, 2, MEMORY[0x1E69E7CC0]);

  OUTLINED_FUNCTION_4_20();
  v8 = sub_1DC5176FC();
  v9 = (a1 & 1) == 0;
  if (a1)
  {
    v10 = 0xD000000000000017;
  }

  else
  {
    v10 = 0xD00000000000001CLL;
  }

  if (v9)
  {
    v11 = "nlrouterservice_timeout";
  }

  else
  {
    v11 = "NLROUTER_REQUEST_PROCESSOR";
  }

  v12 = [objc_opt_self() processInfo];
  v13 = [v12 processName];

  v14 = sub_1DC51772C();
  v16 = v15;

  v17 = v5;
  aBlock = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C130, &unk_1DC5240F0);
  sub_1DC2DFC38();
  v18 = sub_1DC5176AC();
  v20 = sub_1DC38A480(v8, 0xD00000000000001ALL, 0x80000001DC5428F0, v10, v11 | 0x8000000000000000, a2, a3, v14, v16, v18, v19, v5);

  if (v20)
  {
    v21 = sub_1DC517B9C();
    v22 = sub_1DC296DBC();
    if (os_log_type_enabled(v22, v21))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 138412290;
      *(v23 + 4) = v20;
      *v24 = v20;
      v25 = v20;
      _os_log_impl(&dword_1DC287000, v22, v21, "AutoBugCapture can be imported %@", v23, 0xCu);
      sub_1DC3040B4(v24);
      OUTLINED_FUNCTION_66();
      OUTLINED_FUNCTION_66();
    }

    v26 = v20;
    sub_1DC51761C();

    v29 = sub_1DC517B9C();
    v30 = sub_1DC296DBC();
    if (os_log_type_enabled(v30, v29))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      aBlock = v32;
      *v31 = 136315138;
      v33 = [v26 description];
      v34 = sub_1DC51772C();
      v36 = v35;

      v37 = sub_1DC291244(v34, v36, &aBlock);

      *(v31 + 4) = v37;
      _os_log_impl(&dword_1DC287000, v30, v29, "Failed to cast signature %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v32);
      OUTLINED_FUNCTION_66();
      OUTLINED_FUNCTION_66();
    }

    else
    {
    }
  }

  else
  {
    v27 = sub_1DC517B9C();
    v28 = sub_1DC296DBC();
    sub_1DC516F0C(v27, &dword_1DC287000, v28, "AutoBugCapture failed to build signature", 40, 2, MEMORY[0x1E69E7CC0]);
  }
}

void sub_1DC389E84(uint64_t a1)
{
  v2 = sub_1DC517B9C();
  sub_1DC297814();
  log = sub_1DC296DBC();
  if (os_log_type_enabled(log, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v10 = v4;
    *v3 = 136315138;
    if (!a1)
    {
      sub_1DC51764C();
    }

    v5 = sub_1DC51763C();
    v7 = v6;

    v8 = sub_1DC291244(v5, v7, &v10);

    *(v3 + 4) = v8;
    _os_log_impl(&dword_1DC287000, log, v2, "AutoBugCapture did reply %s", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
    OUTLINED_FUNCTION_66();
    OUTLINED_FUNCTION_66();
  }
}

uint64_t sub_1DC389FF0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = sub_1DC51762C();
  }

  else
  {
    v3 = 0;
  }

  v2(v3);
}

void sub_1DC38A09C()
{
  v1 = *v0;
  v2 = *(*v0 + 2);
  v3 = v2 - 2;
  if (v2 >= 2)
  {
    v4 = 0;
    while (1)
    {
      v19 = 0;
      MEMORY[0x1E1298860](&v19, 8);
      v5 = (v19 * v2) >> 64;
      if (v2 > v19 * v2)
      {
        v6 = -v2 % v2;
        if (v6 > v19 * v2)
        {
          do
          {
            v19 = 0;
            MEMORY[0x1E1298860](&v19, 8);
          }

          while (v6 > v19 * v2);
          v5 = (v19 * v2) >> 64;
        }
      }

      v7 = v4 + v5;
      if (__OFADD__(v4, v5))
      {
        break;
      }

      if (v4 != v7)
      {
        v8 = *(v1 + 2);
        if (v4 >= v8)
        {
          goto LABEL_20;
        }

        if (v7 >= v8)
        {
          goto LABEL_21;
        }

        v9 = &v1[16 * v4 + 32];
        v11 = *v9;
        v10 = *(v9 + 1);
        v12 = &v1[16 * v7 + 32];
        v14 = *v12;
        v13 = *(v12 + 1);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v1 = sub_1DC30D6D8(v1);
        }

        if (v4 >= *(v1 + 2))
        {
          goto LABEL_22;
        }

        v15 = &v1[16 * v4 + 32];
        *v15 = v14;
        *(v15 + 1) = v13;

        if (v7 >= *(v1 + 2))
        {
          goto LABEL_23;
        }

        v16 = &v1[16 * v7 + 32];
        *v16 = v11;
        *(v16 + 1) = v10;

        *v18 = v1;
      }

      --v2;
      if (v4++ == v3)
      {
        return;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }
}

unint64_t sub_1DC38A224(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECC7D038;
  if (!qword_1ECC7D038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7D038);
  }

  return result;
}

unint64_t sub_1DC38A27C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECC7D040;
  if (!qword_1ECC7D040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7D040);
  }

  return result;
}

_BYTE *sub_1DC38A2DC(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

_BYTE *sub_1DC38A384(_BYTE *result, unsigned int a2, unsigned int a3)
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

id sub_1DC38A480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  v12 = sub_1DC5176FC();

  v13 = sub_1DC5176FC();

  v14 = sub_1DC5176FC();
  v15 = sub_1DC5176FC();

  v16 = sub_1DC5176FC();

  v17 = [a12 signatureWithDomain:a1 type:v12 subType:v13 subtypeContext:v14 detectedProcess:v15 triggerThresholdValues:v16];

  return v17;
}

id sub_1DC38A5A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, double a7)
{
  v11 = sub_1DC51760C();

  v12 = sub_1DC51760C();

  v13 = sub_1DC51760C();

  v14 = [a6 snapshotWithSignature:v11 delay:a2 events:v12 payload:v13 actions:a5 reply:a7];

  return v14;
}

uint64_t sub_1DC38A6B8@<X0>(uint64_t a1@<X8>)
{
  v2 = objc_opt_self();
  v3 = sub_1DC510B2C();
  v4 = [v2 derivedIdentifierForComponentName:42 fromSourceIdentifier:v3];

  if (v4)
  {
    sub_1DC510B4C();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_1DC510B6C();

  return __swift_storeEnumTagSinglePayload(a1, v5, 1, v6);
}

uint64_t sub_1DC38A76C()
{
  v0 = [objc_opt_self() sharedStream];
  type metadata accessor for NLRouterClientInstrumentationUtilHelper();
  v1 = swift_allocObject();
  type metadata accessor for NLRouterClientInstrumentationUtil();
  result = swift_allocObject();
  *(result + 16) = v0;
  *(result + 24) = v1;
  qword_1ECC8F3E8 = result;
  return result;
}

id sub_1DC38A7DC()
{
  v0 = [objc_opt_self() sharedStream];

  return v0;
}

uint64_t sub_1DC38A81C()
{
  type metadata accessor for NLRouterClientInstrumentationUtilHelper();

  return swift_allocObject();
}

uint64_t sub_1DC38A870(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_69();
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t sub_1DC38A8AC(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_36();
}

uint64_t sub_1DC38A8C0()
{
  OUTLINED_FUNCTION_1_0();
  [*(*(v0 + 24) + 16) emitMessage_];
  OUTLINED_FUNCTION_39_5();

  return v1();
}

uint64_t sub_1DC38A924(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return OUTLINED_FUNCTION_0_36();
}

uint64_t sub_1DC38A940()
{
  OUTLINED_FUNCTION_41_5();
  v1 = v0[2];
  v0[8] = mach_absolute_time();
  if (v1)
  {
    OUTLINED_FUNCTION_28_11();
    v24 = v2 + 128;
    v4 = v3;
    OUTLINED_FUNCTION_42_10(v4, v5, v6, v7, v8, v9, v10, v11, v22, v24);
    v23 = (v12 + *v12);
    v13 = swift_task_alloc();
    v0[9] = v13;
    *v13 = v0;
    OUTLINED_FUNCTION_50_11(v13);
    v14 = OUTLINED_FUNCTION_25_10();

    return v23(v14);
  }

  else
  {
    sub_1DC517B9C();
    sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
    v16 = sub_1DC296DBC();
    v17 = OUTLINED_FUNCTION_40_1();
    sub_1DC516F0C(v17, v18, v19, v20, 42, 2);

    OUTLINED_FUNCTION_39_5();

    return v21();
  }
}

uint64_t sub_1DC38AAF0()
{
  OUTLINED_FUNCTION_37_4();
  OUTLINED_FUNCTION_7_0();
  v3 = v2;
  OUTLINED_FUNCTION_10_18();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4_0();
  *v6 = v5;
  v3[10] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_19_0();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    v10 = v3[2];
    OUTLINED_FUNCTION_28_11();
    v15 = (*(v11 + 136) + **(v11 + 136));
    v12 = swift_task_alloc();
    v3[11] = v12;
    *v12 = v5;
    v12[1] = sub_1DC38ACDC;
    v13 = v3[3];

    return v15(v10, v13);
  }
}

uint64_t sub_1DC38ACDC()
{
  OUTLINED_FUNCTION_37_4();
  OUTLINED_FUNCTION_7_0();
  v3 = v2;
  OUTLINED_FUNCTION_10_18();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4_0();
  *v6 = v5;
  v3[12] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_19_0();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    v10 = v3[2];
    OUTLINED_FUNCTION_28_11();
    v18 = (*(v11 + 144) + **(v11 + 144));
    v12 = swift_task_alloc();
    v3[13] = v12;
    *v12 = v5;
    v12[1] = sub_1DC38AECC;
    v13 = v3[8];
    v14 = v3[5];
    v15 = v3[6];
    v16 = v3[4];

    return v18(v10, v16, v14, v13, v15);
  }
}

uint64_t sub_1DC38AECC()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_7_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_4_0();
  *v5 = v4;
  *(v6 + 112) = v0;

  OUTLINED_FUNCTION_19_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DC38AFC4()
{
  OUTLINED_FUNCTION_1_0();

  OUTLINED_FUNCTION_2_2();

  return v1();
}

uint64_t sub_1DC38B020()
{
  OUTLINED_FUNCTION_1_0();

  OUTLINED_FUNCTION_2_2();

  return v1();
}

uint64_t sub_1DC38B07C()
{
  OUTLINED_FUNCTION_1_0();

  OUTLINED_FUNCTION_2_2();

  return v1();
}

uint64_t sub_1DC38B0D8()
{
  OUTLINED_FUNCTION_41_5();
  *(v1 + 16) = v0;
  OUTLINED_FUNCTION_12_0();
  v6 = (*(v2 + 280) + **(v2 + 280));
  v3 = swift_task_alloc();
  *(v1 + 24) = v3;
  *v3 = v1;
  v3[1] = sub_1DC38B1F8;
  v4 = OUTLINED_FUNCTION_25_10();

  return v6(v4);
}

uint64_t sub_1DC38B1F8()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_7_2();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 32) = v4;

  if (v0)
  {
    OUTLINED_FUNCTION_2_2();

    return v5();
  }

  else
  {
    OUTLINED_FUNCTION_19_0();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }
}

uint64_t sub_1DC38B314()
{
  OUTLINED_FUNCTION_41_5();
  if (*(v0 + 32))
  {
    OUTLINED_FUNCTION_28_11();
    v11 = (*(v1 + 112) + **(v1 + 112));
    v2 = swift_task_alloc();
    *(v0 + 40) = v2;
    *v2 = v0;
    v2[1] = sub_1DC38B4BC;
    v3 = OUTLINED_FUNCTION_25_10();

    return v11(v3);
  }

  else
  {
    sub_1DC517B9C();
    sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
    v5 = sub_1DC296DBC();
    v6 = OUTLINED_FUNCTION_40_1();
    sub_1DC516F0C(v6, v7, v8, v9, 63, 2);

    OUTLINED_FUNCTION_39_5();

    return v10();
  }
}

uint64_t sub_1DC38B4BC()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_7_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_4_0();
  *v5 = v4;
  *(v6 + 48) = v0;

  OUTLINED_FUNCTION_19_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DC38B5B4()
{
  OUTLINED_FUNCTION_1_0();

  OUTLINED_FUNCTION_39_5();

  return v1();
}

uint64_t sub_1DC38B60C()
{
  OUTLINED_FUNCTION_1_0();

  OUTLINED_FUNCTION_2_2();

  return v1();
}

uint64_t sub_1DC38B668()
{
  OUTLINED_FUNCTION_41_5();
  v1[2] = v2;
  v1[3] = v0;
  OUTLINED_FUNCTION_12_0();
  v7 = (*(v3 + 288) + **(v3 + 288));
  v4 = swift_task_alloc();
  v1[4] = v4;
  *v4 = v1;
  v4[1] = sub_1DC38B788;
  v5 = OUTLINED_FUNCTION_25_10();

  return v7(v5);
}

uint64_t sub_1DC38B788()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_7_2();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 40) = v4;

  if (v0)
  {
    OUTLINED_FUNCTION_2_2();

    return v5();
  }

  else
  {
    OUTLINED_FUNCTION_19_0();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }
}

uint64_t sub_1DC38B8A4()
{
  OUTLINED_FUNCTION_41_5();
  if (*(v0 + 40))
  {
    OUTLINED_FUNCTION_28_11();
    v13 = (*(v1 + 104) + **(v1 + 104));
    v2 = swift_task_alloc();
    v3 = OUTLINED_FUNCTION_58_9(v2);
    *v3 = v4;
    v3[1] = sub_1DC38BA48;
    v5 = OUTLINED_FUNCTION_25_10();

    return v13(v5);
  }

  else
  {
    sub_1DC517B9C();
    sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
    v7 = sub_1DC296DBC();
    v8 = OUTLINED_FUNCTION_40_1();
    sub_1DC516F0C(v8, v9, v10, v11, 64, 2);

    OUTLINED_FUNCTION_39_5();

    return v12();
  }
}

uint64_t sub_1DC38BA48()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_7_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_4_0();
  *v5 = v4;
  *(v6 + 56) = v0;

  OUTLINED_FUNCTION_19_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DC38BB40()
{
  OUTLINED_FUNCTION_1_0();

  OUTLINED_FUNCTION_39_5();

  return v1();
}

uint64_t sub_1DC38BB98()
{
  OUTLINED_FUNCTION_1_0();

  OUTLINED_FUNCTION_2_2();

  return v1();
}

uint64_t sub_1DC38BBF4()
{
  OUTLINED_FUNCTION_1_0();
  v1[6] = v2;
  v1[7] = v0;
  v1[4] = v3;
  v1[5] = v4;
  v1[2] = v5;
  v1[3] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D048, &unk_1DC526760);
  OUTLINED_FUNCTION_10(v7);
  v1[8] = OUTLINED_FUNCTION_118();
  v8 = type metadata accessor for NLRouterServiceResponse(0);
  v1[9] = v8;
  OUTLINED_FUNCTION_10(v8);
  v1[10] = OUTLINED_FUNCTION_118();
  v9 = OUTLINED_FUNCTION_47();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DC38BCA4()
{
  OUTLINED_FUNCTION_41_5();
  v1 = v0[9];
  sub_1DC28F3B8(v0[3], v0[8], &qword_1ECC7D048, &unk_1DC526760);
  v2 = OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_39(v2, v3, v1);
  if (v4)
  {
    v5 = v0[4];
    sub_1DC28EB30(v0[8], &qword_1ECC7D048, &unk_1DC526760);
    if (v5)
    {
      v6 = v0[4];
      OUTLINED_FUNCTION_28_11();
      v31 = v7 + 304;
      v8 = v6;
      OUTLINED_FUNCTION_45_1(v8, v9, v10, v11, v12, v13, v14, v15, v29, v31);
      v30 = (v16 + *v16);
      v17 = swift_task_alloc();
      v0[16] = v17;
      *v17 = v0;
      OUTLINED_FUNCTION_50_11(v17);
      v18 = OUTLINED_FUNCTION_33_12(v0[2]);

      return v30(v18, v6);
    }

    else
    {
      sub_1DC517B9C();
      sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
      v23 = sub_1DC296DBC();
      v24 = OUTLINED_FUNCTION_40_1();
      sub_1DC516F0C(v24, v25, v26, v27, 51, 2);

      OUTLINED_FUNCTION_92_2();

      OUTLINED_FUNCTION_39_5();

      return v28();
    }
  }

  else
  {
    OUTLINED_FUNCTION_44_9(v0[8], v0[10]);
    OUTLINED_FUNCTION_38_1();
    v32 = (*(v20 + 296) + **(v20 + 296));
    v21 = swift_task_alloc();
    v0[11] = v21;
    *v21 = v0;
    v21[1] = sub_1DC38BFC8;
    v22 = OUTLINED_FUNCTION_33_12(v0[2]);

    return v32(v22);
  }
}

uint64_t sub_1DC38BFC8()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_7_2();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 96) = v4;
  *(v2 + 104) = v0;

  OUTLINED_FUNCTION_19_0();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DC38C0C8()
{
  OUTLINED_FUNCTION_37_4();
  if (v0[12])
  {
    OUTLINED_FUNCTION_28_11();
    v1 = swift_task_alloc();
    v0[14] = v1;
    *v1 = v0;
    OUTLINED_FUNCTION_50_11(v1);
    v2 = OUTLINED_FUNCTION_16_9();

    return v3(v2);
  }

  else
  {
    v5 = v0[10];
    sub_1DC517B9C();
    sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
    v6 = sub_1DC296DBC();
    v7 = OUTLINED_FUNCTION_62_1();
    sub_1DC516F0C(v7, v8, v9, v10, 62, 2);

    OUTLINED_FUNCTION_1_25();
    sub_1DC39837C(v5, v11);
    OUTLINED_FUNCTION_92_2();

    OUTLINED_FUNCTION_39_5();

    return v12();
  }
}

uint64_t sub_1DC38C288()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_7_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_4_0();
  *v5 = v4;
  *(v6 + 120) = v0;

  OUTLINED_FUNCTION_19_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DC38C380()
{
  OUTLINED_FUNCTION_1_0();
  v1 = *(v0 + 80);

  OUTLINED_FUNCTION_1_25();
  sub_1DC39837C(v1, v2);
  OUTLINED_FUNCTION_92_2();

  OUTLINED_FUNCTION_39_5();

  return v3();
}

uint64_t sub_1DC38C3F4()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_7_2();
  *v3 = v2;
  *v3 = *v1;
  v2[17] = v4;
  v2[18] = v5;
  v2[19] = v6;
  v2[20] = v0;

  OUTLINED_FUNCTION_19_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DC38C4F8()
{
  OUTLINED_FUNCTION_37_4();
  if (v0[17])
  {
    OUTLINED_FUNCTION_28_11();
    v1 = swift_task_alloc();
    v0[21] = v1;
    *v1 = v0;
    OUTLINED_FUNCTION_50_11(v1);
    v2 = OUTLINED_FUNCTION_16_9();

    return v3(v2);
  }

  else
  {
    v5 = v0[4];
    sub_1DC517B9C();
    sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
    v6 = sub_1DC296DBC();
    v7 = OUTLINED_FUNCTION_62_1();
    sub_1DC516F0C(v7, v8, v9, v10, 63, 2);

    OUTLINED_FUNCTION_92_2();

    OUTLINED_FUNCTION_39_5();

    return v11();
  }
}

uint64_t sub_1DC38C6B4()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_7_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_4_0();
  *v5 = v4;
  *(v6 + 176) = v0;

  OUTLINED_FUNCTION_19_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DC38C7AC()
{
  OUTLINED_FUNCTION_41_5();
  v1 = *(v0 + 136);
  v2 = *(v0 + 32);
  OUTLINED_FUNCTION_12_0();
  (*(v3 + 312))(v1);

  OUTLINED_FUNCTION_92_2();

  OUTLINED_FUNCTION_39_5();

  return v4();
}

uint64_t sub_1DC38C86C()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_25();
  sub_1DC39837C(v0, v1);
  OUTLINED_FUNCTION_116_1();

  OUTLINED_FUNCTION_2_2();

  return v2();
}

uint64_t sub_1DC38C8D8()
{
  OUTLINED_FUNCTION_1_0();
  v1 = *(v0 + 80);

  OUTLINED_FUNCTION_1_25();
  sub_1DC39837C(v1, v2);
  OUTLINED_FUNCTION_116_1();

  OUTLINED_FUNCTION_2_2();

  return v3();
}

uint64_t sub_1DC38C950()
{
  OUTLINED_FUNCTION_1_0();

  OUTLINED_FUNCTION_116_1();

  OUTLINED_FUNCTION_2_2();

  return v1();
}

uint64_t sub_1DC38C9B8()
{
  OUTLINED_FUNCTION_1_0();
  v1 = *(v0 + 32);

  OUTLINED_FUNCTION_116_1();

  OUTLINED_FUNCTION_2_2();

  return v2();
}

uint64_t sub_1DC38CA38(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for NLRouterPromptSignals(0);
  v5 = OUTLINED_FUNCTION_52(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D050, &qword_1DC523AC0);
  OUTLINED_FUNCTION_10(v10);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v21 - v12;
  sub_1DC517A8C();
  v14 = sub_1DC517AAC();
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v14);
  v15 = OUTLINED_FUNCTION_60();
  sub_1DC38CED0(v15, v16);
  v17 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = v2;
  sub_1DC398320(&v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for NLRouterPromptSignals);
  *(v18 + ((v9 + v17 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
  v19 = a2;

  sub_1DC315A04(0, 0, v13, &unk_1DC526778, v18);
}

uint64_t sub_1DC38CBE4()
{
  OUTLINED_FUNCTION_37_4();
  v1 = v0;
  v8 = (*(*v2 + 168) + **(*v2 + 168));
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_33_0(v3);
  *v4 = v5;
  v4[1] = sub_1DC38CD08;
  v6 = OUTLINED_FUNCTION_25_10();

  return v8(v6, v1);
}

uint64_t sub_1DC38CD08()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_7_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_4_0();
  *v5 = v4;
  *(v6 + 24) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_19_0();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_2_2();

    return v10();
  }
}

uint64_t sub_1DC38CE1C()
{
  OUTLINED_FUNCTION_41_5();
  v1 = *(v0 + 24);
  sub_1DC517B9C();
  sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
  v2 = sub_1DC296DBC();
  v3 = OUTLINED_FUNCTION_62_1();
  OUTLINED_FUNCTION_113_3(v3, v4, v5, v6);

  OUTLINED_FUNCTION_2_2();

  return v7();
}

uint64_t sub_1DC38CED0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NLRouterPromptSignals(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DC38CF34()
{
  OUTLINED_FUNCTION_41_5();
  v0 = type metadata accessor for NLRouterPromptSignals(0);
  OUTLINED_FUNCTION_52(v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_33_0(v1);
  *v2 = v3;
  v2[1] = sub_1DC29F200;

  return sub_1DC38CBE4();
}

void sub_1DC38D02C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_33();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v29 = sub_1DC510B6C();
  OUTLINED_FUNCTION_0();
  v31 = v30;
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D050, &qword_1DC523AC0);
  OUTLINED_FUNCTION_10(v35);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v36);
  v38 = &a9 - v37;
  sub_1DC517A8C();
  v39 = sub_1DC517AAC();
  __swift_storeEnumTagSinglePayload(v38, 0, 1, v39);
  (*(v31 + 16))(&a9 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0), v24, v29);
  v40 = swift_allocObject();
  *(v40 + 16) = 0;
  *(v40 + 24) = 0;
  *(v40 + 32) = v20;
  *(v40 + 40) = v28;
  *(v40 + 48) = v26;
  OUTLINED_FUNCTION_75_4();
  v41();
  v42 = v26;

  sub_1DC315A04(0, 0, v38, &unk_1DC526788, v40);

  OUTLINED_FUNCTION_34();
}

void sub_1DC38D1E0()
{
  OUTLINED_FUNCTION_37_4();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_33_0(v0);
  *v1 = v2;
  v1[1] = sub_1DC38D314;
  OUTLINED_FUNCTION_118_1();

  __asm { BRAA            X3, X16 }
}

uint64_t sub_1DC38D314()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_7_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_4_0();
  *v5 = v4;
  *(v6 + 24) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_19_0();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_2_2();

    return v10();
  }
}

uint64_t sub_1DC38D428()
{
  OUTLINED_FUNCTION_41_5();
  v1 = *(v0 + 24);
  sub_1DC517B9C();
  sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
  v2 = sub_1DC296DBC();
  v3 = OUTLINED_FUNCTION_62_1();
  sub_1DC516F0C(v3, v4, v5, v6, 79, 2);

  OUTLINED_FUNCTION_2_2();

  return v7();
}

void sub_1DC38D4E4()
{
  OUTLINED_FUNCTION_110_3();
  OUTLINED_FUNCTION_37_4();
  v0 = sub_1DC510B6C();
  OUTLINED_FUNCTION_10(v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_33_0(v1);
  *v2 = v3;
  v2[1] = sub_1DC29F120;
  OUTLINED_FUNCTION_89_2();

  sub_1DC38D1E0();
}

uint64_t sub_1DC38D5C0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_36();
}

void sub_1DC38D5D8()
{
  OUTLINED_FUNCTION_37_4();
  mach_absolute_time();
  OUTLINED_FUNCTION_23_15();
  v1 = OUTLINED_FUNCTION_60();
  v3 = v2(v1);
  *(v0 + 40) = v3;
  if (v3)
  {
    OUTLINED_FUNCTION_106_3();
    v4 = swift_task_alloc();
    v5 = OUTLINED_FUNCTION_58_9(v4);
    *v5 = v6;
    OUTLINED_FUNCTION_76_4(v5);
    OUTLINED_FUNCTION_118_1();

    __asm { BRAA            X2, X16 }
  }

  sub_1DC517B9C();
  sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
  v9 = sub_1DC296DBC();
  v10 = OUTLINED_FUNCTION_40_1();
  sub_1DC516F0C(v10, v11, v12, v13, 82, 2);

  OUTLINED_FUNCTION_39_5();
  OUTLINED_FUNCTION_118_1();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1DC38D7AC()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_7_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_4_0();
  *v5 = v4;
  *(v6 + 56) = v0;

  OUTLINED_FUNCTION_19_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DC38D8A4(char a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 16) = a2;
  *(v4 + 64) = a1;
  return OUTLINED_FUNCTION_0_36();
}

uint64_t sub_1DC38D8C0()
{
  OUTLINED_FUNCTION_36_11();
  mach_absolute_time();
  OUTLINED_FUNCTION_38_1();
  OUTLINED_FUNCTION_75_4();
  v2 = v1();
  *(v0 + 40) = v2;
  if (v2)
  {
    OUTLINED_FUNCTION_106_3();
    v15 = (*(v3 + 104) + **(v3 + 104));
    v4 = swift_task_alloc();
    v5 = OUTLINED_FUNCTION_58_9(v4);
    *v5 = v6;
    v7 = OUTLINED_FUNCTION_76_4(v5);

    return v15(v7);
  }

  else
  {
    sub_1DC517B9C();
    sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
    v9 = sub_1DC296DBC();
    v10 = OUTLINED_FUNCTION_40_1();
    sub_1DC516F0C(v10, v11, v12, v13, 87, 2);

    OUTLINED_FUNCTION_39_5();

    return v14();
  }
}

uint64_t sub_1DC38DAB4()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_7_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_4_0();
  *v5 = v4;
  *(v6 + 56) = v0;

  OUTLINED_FUNCTION_19_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DC38DBAC()
{
  OUTLINED_FUNCTION_1_0();

  OUTLINED_FUNCTION_2_2();

  return v1();
}

uint64_t sub_1DC38DC08()
{
  OUTLINED_FUNCTION_1_0();

  OUTLINED_FUNCTION_2_2();

  return v1();
}

uint64_t sub_1DC38DC64()
{
  OUTLINED_FUNCTION_1_0();

  OUTLINED_FUNCTION_2_2();

  return v1();
}

uint64_t sub_1DC38DCC8()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  v3 = v2;
  OUTLINED_FUNCTION_10_18();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4_0();
  *v6 = v5;
  *(v3 + 72) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_19_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DC38DDC8()
{
  OUTLINED_FUNCTION_1_0();
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_2_2();

  return v2();
}

uint64_t sub_1DC38DE28()
{
  OUTLINED_FUNCTION_1_0();
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_2_2();

  return v2();
}

uint64_t sub_1DC38DE88()
{
  OUTLINED_FUNCTION_1_0();

  OUTLINED_FUNCTION_2_2();

  return v1();
}

uint64_t sub_1DC38DEE4()
{
  OUTLINED_FUNCTION_1_0();

  OUTLINED_FUNCTION_2_2();

  return v1();
}

uint64_t sub_1DC38DF48(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 88) = a4;
  *(v5 + 32) = a3;
  *(v5 + 40) = v4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  return OUTLINED_FUNCTION_0_36();
}

uint64_t sub_1DC38DF64()
{
  OUTLINED_FUNCTION_37_4();
  if (*(v0 + 16))
  {
    OUTLINED_FUNCTION_59_6();
    v2 = *(v1 + 336);
    v4 = v3;
    v16 = (v2 + *v2);
    v5 = swift_task_alloc();
    v6 = OUTLINED_FUNCTION_58_9(v5);
    *v6 = v7;
    v6[1] = sub_1DC38E124;
    v8 = OUTLINED_FUNCTION_25_10();

    return v16(v8);
  }

  else
  {
    sub_1DC517B9C();
    sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
    v10 = sub_1DC296DBC();
    v11 = OUTLINED_FUNCTION_40_1();
    sub_1DC516F0C(v11, v12, v13, v14, 101, 2);

    OUTLINED_FUNCTION_39_5();

    return v15();
  }
}

uint64_t sub_1DC38E124()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_7_2();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 56) = v4;
  *(v2 + 64) = v0;

  OUTLINED_FUNCTION_19_0();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DC38E224()
{
  OUTLINED_FUNCTION_37_4();
  if (v0[7])
  {
    OUTLINED_FUNCTION_28_11();
    v1 = swift_task_alloc();
    v0[9] = v1;
    *v1 = v0;
    v1[1] = sub_1DC38E3C8;
    v2 = OUTLINED_FUNCTION_16_9();

    return v3(v2);
  }

  else
  {
    v5 = v0[2];
    sub_1DC517B9C();
    sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
    v6 = sub_1DC296DBC();
    v7 = OUTLINED_FUNCTION_40_1();
    OUTLINED_FUNCTION_113_3(v7, v8, v9, v10);

    OUTLINED_FUNCTION_39_5();

    return v11();
  }
}

uint64_t sub_1DC38E3C8()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_7_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_4_0();
  *v5 = v4;
  *(v6 + 80) = v0;

  OUTLINED_FUNCTION_19_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DC38E4C0(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 48) = a6;
  *(v7 + 56) = v6;
  *(v7 + 104) = a4;
  *(v7 + 32) = a3;
  *(v7 + 40) = a5;
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  return OUTLINED_FUNCTION_0_36();
}

uint64_t sub_1DC38E4E0()
{
  OUTLINED_FUNCTION_41_5();
  if (*(v0 + 16))
  {
    OUTLINED_FUNCTION_59_6();
    v25 = v1 + 344;
    v3 = v2;
    OUTLINED_FUNCTION_42_10(v3, v4, v5, v6, v7, v8, v9, v10, v23, v25);
    v24 = (v11 + *v11);
    v12 = swift_task_alloc();
    v13 = OUTLINED_FUNCTION_77_4(v12);
    *v13 = v14;
    v13[1] = sub_1DC38E698;
    v15 = OUTLINED_FUNCTION_25_10();

    return v24(v15);
  }

  else
  {
    sub_1DC517B9C();
    sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
    v17 = sub_1DC296DBC();
    v18 = OUTLINED_FUNCTION_40_1();
    sub_1DC516F0C(v18, v19, v20, v21, 103, 2);

    OUTLINED_FUNCTION_39_5();

    return v22();
  }
}

uint64_t sub_1DC38E698()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_7_2();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 72) = v4;
  *(v2 + 80) = v0;

  OUTLINED_FUNCTION_19_0();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DC38E798()
{
  OUTLINED_FUNCTION_37_4();
  if (v0[9])
  {
    OUTLINED_FUNCTION_28_11();
    v1 = swift_task_alloc();
    v0[11] = v1;
    *v1 = v0;
    OUTLINED_FUNCTION_50_11(v1);
    v2 = OUTLINED_FUNCTION_16_9();

    return v3(v2);
  }

  else
  {
    v5 = v0[2];
    sub_1DC517B9C();
    sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
    v6 = sub_1DC296DBC();
    v7 = OUTLINED_FUNCTION_40_1();
    sub_1DC516F0C(v7, v8, v9, v10, 76, 2);

    OUTLINED_FUNCTION_39_5();

    return v11();
  }
}

uint64_t sub_1DC38E944()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_7_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_4_0();
  *v5 = v4;
  *(v6 + 96) = v0;

  OUTLINED_FUNCTION_19_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DC38EA3C()
{
  OUTLINED_FUNCTION_1_0();
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_39_5();

  return v2();
}

uint64_t sub_1DC38EA9C()
{
  OUTLINED_FUNCTION_1_0();

  OUTLINED_FUNCTION_2_2();

  return v1();
}

uint64_t sub_1DC38EB00(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_36();
}

uint64_t sub_1DC38EB18()
{
  OUTLINED_FUNCTION_41_5();
  if (*(v0 + 16))
  {
    OUTLINED_FUNCTION_59_6();
    v23 = v1 + 384;
    v3 = v2;
    OUTLINED_FUNCTION_42_10(v3, v4, v5, v6, v7, v8, v9, v10, v21, v23);
    v22 = (v11 + *v11);
    v12 = swift_task_alloc();
    *(v0 + 40) = v12;
    *v12 = v0;
    v12[1] = sub_1DC38ECC8;
    v13 = OUTLINED_FUNCTION_25_10();

    return v22(v13);
  }

  else
  {
    sub_1DC517B9C();
    sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
    v15 = sub_1DC296DBC();
    v16 = OUTLINED_FUNCTION_40_1();
    sub_1DC516F0C(v16, v17, v18, v19, 103, 2);

    OUTLINED_FUNCTION_39_5();

    return v20();
  }
}

uint64_t sub_1DC38ECC8()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_7_2();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 48) = v4;
  *(v2 + 56) = v0;

  OUTLINED_FUNCTION_19_0();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DC38EDC8()
{
  OUTLINED_FUNCTION_37_4();
  if (*(v0 + 48))
  {
    OUTLINED_FUNCTION_28_11();
    v14 = (*(v1 + 112) + **(v1 + 112));
    v2 = swift_task_alloc();
    v3 = OUTLINED_FUNCTION_77_4(v2);
    *v3 = v4;
    v3[1] = sub_1DC38EF74;
    v5 = OUTLINED_FUNCTION_25_10();

    return v14(v5);
  }

  else
  {
    v7 = *(v0 + 16);
    sub_1DC517B9C();
    sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
    v8 = sub_1DC296DBC();
    v9 = OUTLINED_FUNCTION_40_1();
    sub_1DC516F0C(v9, v10, v11, v12, 76, 2);

    OUTLINED_FUNCTION_39_5();

    return v13();
  }
}

uint64_t sub_1DC38EF74()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_7_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_4_0();
  *v5 = v4;
  *(v6 + 72) = v0;

  OUTLINED_FUNCTION_19_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DC38F06C()
{
  OUTLINED_FUNCTION_1_0();
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_39_5();

  return v2();
}

uint64_t sub_1DC38F0CC()
{
  OUTLINED_FUNCTION_1_0();

  OUTLINED_FUNCTION_2_2();

  return v1();
}

uint64_t sub_1DC38F128()
{
  OUTLINED_FUNCTION_1_0();

  OUTLINED_FUNCTION_2_2();

  return v1();
}

uint64_t sub_1DC38F18C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  *(v7 + 48) = a6;
  *(v7 + 56) = v6;
  *(v7 + 128) = a5;
  *(v7 + 32) = a3;
  *(v7 + 40) = a4;
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  return OUTLINED_FUNCTION_0_36();
}

uint64_t sub_1DC38F1AC()
{
  OUTLINED_FUNCTION_41_5();
  if (*(v0 + 16))
  {
    OUTLINED_FUNCTION_59_6();
    v25 = v1 + 256;
    v3 = v2;
    OUTLINED_FUNCTION_45_1(v3, v4, v5, v6, v7, v8, v9, v10, v23, v25);
    v24 = (v11 + *v11);
    v12 = swift_task_alloc();
    v13 = OUTLINED_FUNCTION_77_4(v12);
    *v13 = v14;
    v13[1] = sub_1DC38F364;
    v15 = OUTLINED_FUNCTION_33_12(*(v0 + 16));

    return v24(v15);
  }

  else
  {
    sub_1DC517B9C();
    sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
    v17 = sub_1DC296DBC();
    v18 = OUTLINED_FUNCTION_40_1();
    sub_1DC516F0C(v18, v19, v20, v21, 101, 2);

    OUTLINED_FUNCTION_39_5();

    return v22();
  }
}

uint64_t sub_1DC38F364()
{
  OUTLINED_FUNCTION_37_4();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  v5 = v4;
  OUTLINED_FUNCTION_10_18();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_4_0();
  *v8 = v7;
  v5[9] = v3;
  v5[10] = v0;

  if (!v0)
  {
    OUTLINED_FUNCTION_28_11();
    v13 = swift_task_alloc();
    v5[11] = v13;
    *v13 = v7;
    v13[1] = sub_1DC38F560;
    OUTLINED_FUNCTION_33_12(v5[2]);
    OUTLINED_FUNCTION_118_1();

    __asm { BRAA            X3, X16 }
  }

  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_118_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DC38F560()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_7_2();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 96) = v4;
  *(v2 + 104) = v0;

  OUTLINED_FUNCTION_19_0();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

void sub_1DC38F660()
{
  OUTLINED_FUNCTION_37_4();
  if (v0[12])
  {
    OUTLINED_FUNCTION_28_11();
    v1 = swift_task_alloc();
    v0[14] = v1;
    *v1 = v0;
    OUTLINED_FUNCTION_50_11(v1);
    OUTLINED_FUNCTION_25_10();
    OUTLINED_FUNCTION_118_1();

    __asm { BRAA            X2, X16 }
  }

  v4 = v0[9];
  v5 = v0[2];
  sub_1DC517B9C();
  sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
  v6 = sub_1DC296DBC();
  v7 = OUTLINED_FUNCTION_40_1();
  OUTLINED_FUNCTION_113_3(v7, v8, v9, v10);

  OUTLINED_FUNCTION_39_5();
  OUTLINED_FUNCTION_118_1();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1DC38F814()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_7_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_4_0();
  *v5 = v4;
  *(v6 + 120) = v0;

  OUTLINED_FUNCTION_19_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DC38F90C()
{
  OUTLINED_FUNCTION_1_0();
  v1 = *(v0 + 72);
  v2 = *(v0 + 16);

  OUTLINED_FUNCTION_39_5();

  return v3();
}

uint64_t sub_1DC38F974()
{
  OUTLINED_FUNCTION_1_0();

  OUTLINED_FUNCTION_2_2();

  return v1();
}

uint64_t sub_1DC38F9D0()
{
  OUTLINED_FUNCTION_1_0();
  v1 = *(v0 + 72);

  OUTLINED_FUNCTION_2_2();

  return v2();
}

uint64_t sub_1DC38FA34()
{
  OUTLINED_FUNCTION_1_0();
  v1 = *(v0 + 72);
  v2 = *(v0 + 16);

  OUTLINED_FUNCTION_2_2();

  return v3();
}

uint64_t sub_1DC38FAA0(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  *(v6 + 40) = a5;
  *(v6 + 48) = v5;
  *(v6 + 112) = a4;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 16) = a1;
  return OUTLINED_FUNCTION_0_36();
}

uint64_t sub_1DC38FAC0()
{
  OUTLINED_FUNCTION_41_5();
  if (*(v0 + 16))
  {
    OUTLINED_FUNCTION_59_6();
    v23 = v1 + 360;
    v3 = v2;
    OUTLINED_FUNCTION_45_1(v3, v4, v5, v6, v7, v8, v9, v10, v21, v23);
    v22 = (v11 + *v11);
    v12 = swift_task_alloc();
    *(v0 + 56) = v12;
    *v12 = v0;
    v12[1] = sub_1DC38FC78;
    v13 = OUTLINED_FUNCTION_33_12(*(v0 + 16));

    return v22(v13);
  }

  else
  {
    sub_1DC517B9C();
    sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
    v15 = sub_1DC296DBC();
    v16 = OUTLINED_FUNCTION_40_1();
    sub_1DC516F0C(v16, v17, v18, v19, 102, 2);

    OUTLINED_FUNCTION_39_5();

    return v20();
  }
}

uint64_t sub_1DC38FC78()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_7_2();
  *v3 = v2;
  *v3 = *v1;
  v2[8] = v4;
  v2[9] = v5;
  v2[10] = v6;
  v2[11] = v0;

  OUTLINED_FUNCTION_19_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DC38FD7C()
{
  OUTLINED_FUNCTION_37_4();
  if (v0[8])
  {
    OUTLINED_FUNCTION_28_11();
    v1 = swift_task_alloc();
    v0[12] = v1;
    *v1 = v0;
    OUTLINED_FUNCTION_94_2(v1);
    v2 = OUTLINED_FUNCTION_16_9();

    return v3(v2);
  }

  else
  {
    v5 = v0[2];
    sub_1DC517B9C();
    sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
    v6 = sub_1DC296DBC();
    v7 = OUTLINED_FUNCTION_40_1();
    sub_1DC516F0C(v7, v8, v9, v10, 75, 2);

    OUTLINED_FUNCTION_39_5();

    return v11();
  }
}

uint64_t sub_1DC38FF28()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_7_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_4_0();
  *v5 = v4;
  *(v6 + 104) = v0;

  OUTLINED_FUNCTION_19_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DC390020()
{
  OUTLINED_FUNCTION_37_4();
  v1 = *(v0 + 64);
  v2 = *(v0 + 16);
  sub_1DC517B7C();
  v3 = OUTLINED_FUNCTION_62_2();
  v4(v3);

  OUTLINED_FUNCTION_39_5();

  return v5();
}

uint64_t sub_1DC390100()
{
  OUTLINED_FUNCTION_1_0();

  OUTLINED_FUNCTION_2_2();

  return v1();
}

uint64_t sub_1DC39015C()
{
  OUTLINED_FUNCTION_1_0();
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_2_2();

  return v2();
}

uint64_t sub_1DC3901CC()
{
  OUTLINED_FUNCTION_1_0();
  v1[6] = v2;
  v1[7] = v0;
  v1[4] = v3;
  v1[5] = v4;
  v1[2] = v5;
  v1[3] = v6;
  v7 = sub_1DC510B6C();
  v1[8] = v7;
  OUTLINED_FUNCTION_52(v7);
  v1[9] = v8;
  v1[10] = OUTLINED_FUNCTION_118();
  v9 = OUTLINED_FUNCTION_47();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DC390278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_107_1();
  OUTLINED_FUNCTION_93_0();
  v15 = v14[2];
  if (v15)
  {
    v16 = objc_allocWithZone(MEMORY[0x1E69CF018]);
    v17 = v15;
    v18 = [v16 init];
    v19 = v18;
    v14[11] = v18;
    if (v18)
    {
      v20 = v14[8];
      v21 = v14[5];
      v22 = v14[4];
      v23 = v18;
      sub_1DC3982A0(v22, v21, v23);

      sub_1DC298C74(0, &qword_1ECC7B9C8, 0x1E69CF640);
      v24 = OUTLINED_FUNCTION_13_15();
      v25(v24);
      v26 = v23;
      v27 = OUTLINED_FUNCTION_39_8();
      OUTLINED_FUNCTION_72_5(v27, sel_setLinkId_);
    }

    v28 = [objc_allocWithZone(MEMORY[0x1E69CEF80]) init];
    v14[12] = v28;
    if (v28)
    {
      OUTLINED_FUNCTION_71_6([v28 setEventMetadata_], sel_setNlRouterSubComponentTriggeredHeuristicRuleTier1_);
      OUTLINED_FUNCTION_12_0();
      v51 = v29 + 104;
      v52 = *(v29 + 104) + **(v29 + 104);
      v30 = swift_task_alloc();
      v14[13] = v30;
      *v30 = v14;
      OUTLINED_FUNCTION_50_11(v30);
      OUTLINED_FUNCTION_74_5();

      return v33(v31, v32, v33, v34, v35, v36, v37, v38, a9, v51, v52, a12, a13, a14);
    }

    v41 = sub_1DC517B9C();
    sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
    v42 = sub_1DC296DBC();
    sub_1DC516F0C(v41, &dword_1DC287000, v42, "Unable to create a NLRouter wrapper SELF event for NLRouterSubComponentTriggeredHeuristicRule", 93, 2, MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v40 = sub_1DC517B9C();
    sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
    v17 = sub_1DC296DBC();
  }

  OUTLINED_FUNCTION_39_5();
  OUTLINED_FUNCTION_74_5();

  return v44(v43, v44, v45, v46, v47, v48, v49, v50, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1DC390584()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_7_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_4_0();
  *v5 = v4;
  *(v6 + 112) = v0;

  OUTLINED_FUNCTION_19_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DC39067C()
{
  OUTLINED_FUNCTION_1_0();
  v1 = *(v0 + 88);
  v2 = *(v0 + 16);

  OUTLINED_FUNCTION_39_5();

  return v3();
}

uint64_t sub_1DC3906E8()
{
  OUTLINED_FUNCTION_41_5();
  v1 = *(v0 + 88);
  v2 = *(v0 + 16);

  OUTLINED_FUNCTION_2_2();

  return v3();
}

uint64_t sub_1DC390764()
{
  OUTLINED_FUNCTION_1_0();
  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  *(v1 + 168) = v3;
  *(v1 + 32) = v4;
  *(v1 + 40) = v5;
  v8 = OUTLINED_FUNCTION_84_3(v6, v7);
  *(v1 + 64) = v8;
  OUTLINED_FUNCTION_52(v8);
  *(v1 + 72) = v9;
  *(v1 + 80) = OUTLINED_FUNCTION_118();
  v10 = type metadata accessor for NLRouterServiceResponse(0);
  *(v1 + 88) = v10;
  OUTLINED_FUNCTION_10(v10);
  *(v1 + 96) = OUTLINED_FUNCTION_124();
  *(v1 + 104) = swift_task_alloc();
  v11 = sub_1DC517D8C();
  *(v1 + 112) = v11;
  OUTLINED_FUNCTION_52(v11);
  *(v1 + 120) = v12;
  *(v1 + 128) = OUTLINED_FUNCTION_124();
  *(v1 + 136) = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_47();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1DC39089C()
{
  OUTLINED_FUNCTION_100_0();
  v1 = *(v0 + 16);
  if (!v1)
  {
    sub_1DC517B9C();
    sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
    v16 = sub_1DC296DBC();
    v17 = OUTLINED_FUNCTION_40_1();
    sub_1DC516F0C(v17, v18, v19, v20, 105, 2);

    goto LABEL_10;
  }

  v2 = *(v0 + 136);
  v3 = *(v0 + 48);
  v4 = *(*(v0 + 120) + 16);
  v4(v2, *(v0 + 40), *(v0 + 112));
  OUTLINED_FUNCTION_39(v2, 1, v3);
  if (v5)
  {
LABEL_9:
    (*(*(v0 + 120) + 8))(*(v0 + 136), *(v0 + 112));
    goto LABEL_10;
  }

  v4(*(v0 + 128), *(v0 + 136), *(v0 + 112));
  v6 = v1;
  OUTLINED_FUNCTION_62_2();
  if (!swift_dynamicCast())
  {

    OUTLINED_FUNCTION_7_1();
    v21 = OUTLINED_FUNCTION_56_0();
    v22(v21);
    goto LABEL_9;
  }

  v7 = *(v0 + 168);
  OUTLINED_FUNCTION_44_9(*(v0 + 104), *(v0 + 96));
  v8 = *(v0 + 96);
  if (v7 != 3 || *(v8 + *(*(v0 + 88) + 24) + 8) < 4uLL)
  {
    v10 = *(v0 + 128);
    v9 = *(v0 + 136);
    v11 = *(v0 + 112);
    v12 = *(v0 + 120);
    v13 = *(v0 + 48);

    OUTLINED_FUNCTION_1_25();
    sub_1DC39837C(v8, v14);
    OUTLINED_FUNCTION_7_1();
    (*(v15 + 8))(v10, v13);
    (*(v12 + 8))(v9, v11);
LABEL_10:

    OUTLINED_FUNCTION_34_10();

    return v23(0);
  }

  sub_1DC510B5C();
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_75_4();
  *(v0 + 144) = v25();
  OUTLINED_FUNCTION_12_0();
  v40 = v26 + 248;
  v27 = v6;
  OUTLINED_FUNCTION_45_1(v27, v28, v29, v30, v31, v32, v33, v34, v38, v40);
  v39 = (v35 + *v35);
  v36 = swift_task_alloc();
  *(v0 + 152) = v36;
  *v36 = v0;
  v36[1] = sub_1DC390C50;
  v37 = OUTLINED_FUNCTION_33_12(*(v0 + 16));

  return v39(v37);
}

uint64_t sub_1DC390C50()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_7_2();
  *v3 = v2;
  v5 = *(v4 + 16);
  v6 = *v1;
  OUTLINED_FUNCTION_4_0();
  *v7 = v6;
  *(v8 + 160) = v0;

  OUTLINED_FUNCTION_19_0();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DC390D60()
{
  OUTLINED_FUNCTION_100_0();
  v1 = *(v0 + 128);
  v2 = *(v0 + 96);
  v3 = *(v0 + 48);

  v4 = OUTLINED_FUNCTION_54_2();
  v5(v4);
  OUTLINED_FUNCTION_1_25();
  sub_1DC39837C(v2, v6);
  OUTLINED_FUNCTION_7_1();
  (*(v7 + 8))(v1, v3);
  v8 = OUTLINED_FUNCTION_56_0();
  v9(v8);
  v10 = *(v0 + 144);

  OUTLINED_FUNCTION_34_10();

  return v11(v10);
}

uint64_t sub_1DC390E8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_107_1();
  OUTLINED_FUNCTION_93_0();
  v15 = *(v14 + 136);
  v16 = *(v14 + 144);
  v18 = *(v14 + 120);
  v17 = *(v14 + 128);
  v35 = *(v14 + 112);
  v36 = *(v14 + 104);
  v19 = *(v14 + 96);
  v21 = *(v14 + 72);
  v20 = *(v14 + 80);
  v22 = *(v14 + 64);
  v23 = *(v14 + 48);

  (*(v21 + 8))(v20, v22);
  OUTLINED_FUNCTION_1_25();
  sub_1DC39837C(v19, v24);
  OUTLINED_FUNCTION_7_1();
  (*(v25 + 8))(v17, v23);
  (*(v18 + 8))(v15, v35);

  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_74_5();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, v35, v36, a12, a13, a14);
}

uint64_t sub_1DC390FB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_60_9();
  OUTLINED_FUNCTION_36_11();
  v11 = [objc_allocWithZone(MEMORY[0x1E69CF5E8]) init];
  if (v11)
  {
    v12 = objc_allocWithZone(MEMORY[0x1E69CF5F8]);
    v13 = v11;
    v14 = OUTLINED_FUNCTION_111_1();
    [v13 setTarget_];

    v15 = [v13 target];
    if (v15)
    {
      v16 = v15;
      [v15 setComponent_];
    }

    v17 = [v13 target];
    if (v17)
    {
      v18 = v17;
      v19 = [*(v10 + 16) requestId];
      [v18 setUuid_];
    }

    v20 = objc_allocWithZone(MEMORY[0x1E69CF5F8]);
    v21 = v13;
    v22 = OUTLINED_FUNCTION_111_1();
    [v21 setSource_];

    v23 = [v21 source];
    if (v23)
    {
      v24 = v23;
      [v23 setComponent_];
    }

    v25 = [v21 source];
    if (v25)
    {
      v26 = v25;
      v27 = [*(v10 + 16) nlRouterId];
      [v26 setUuid_];
    }
  }

  OUTLINED_FUNCTION_34_10();
  OUTLINED_FUNCTION_64_5();

  return v30(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10);
}

uint64_t sub_1DC3911C8()
{
  OUTLINED_FUNCTION_110_3();
  OUTLINED_FUNCTION_37_4();
  v1 = [objc_allocWithZone(MEMORY[0x1E69CEFB0]) init];
  v2 = v1;
  if (v1)
  {
    OUTLINED_FUNCTION_91_1(v1, sel_setExists_);
  }

  v3 = [objc_allocWithZone(MEMORY[0x1E69CEF98]) init];
  [v3 setStartedOrChanged_];
  v4 = [objc_allocWithZone(MEMORY[0x1E69CEF80]) init];
  if (v4)
  {
    OUTLINED_FUNCTION_71_6([v4 setEventMetadata_], sel_setNlRouterHandleContext_);
  }

  else
  {
    sub_1DC517B9C();
    sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
    sub_1DC296DBC();
    v5 = OUTLINED_FUNCTION_208();
    sub_1DC516F0C(v5, v6, v7, v8, 72, 2);

    OUTLINED_FUNCTION_49_10();
  }

  OUTLINED_FUNCTION_11_18();
  OUTLINED_FUNCTION_89_2();

  return v11(v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_1DC391318()
{
  OUTLINED_FUNCTION_1_0();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CA40, &unk_1DC5233A0);
  OUTLINED_FUNCTION_10(v5);
  v1[6] = OUTLINED_FUNCTION_118();
  v6 = OUTLINED_FUNCTION_47();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1DC3913A0()
{
  v48 = v0;
  v1 = [objc_allocWithZone(MEMORY[0x1E69CEFA0]) init];
  if (v1)
  {
    v2 = v0[5];
    v3 = v0[6];
    v4 = v0[3];
    v44 = v0[4];
    v5 = (v4 + *(type metadata accessor for NLRouterServiceResponse(0) + 24));
    v6 = v5[1];
    v46 = *v5;
    v47 = v6;
    v7 = *(*v2 + 424);
    v8 = v1;
    sub_1DC3982F8(v46, v6);
    v9 = v7(&v46);
    sub_1DC39830C(v46, v47);
    [v8 setRoutingDecisionSource_];

    v10 = sub_1DC5157EC();
    OUTLINED_FUNCTION_35();
    v12 = *(v11 + 16);
    v12(v3, v4, v10);
    v13 = OUTLINED_FUNCTION_32_9();
    __swift_storeEnumTagSinglePayload(v13, v14, v15, v10);
    OUTLINED_FUNCTION_38_1();
    v45 = v1;
    v17 = *(v16 + 408);
    v18 = v8;
    v19 = v17(v3);
    sub_1DC28EB30(v3, &qword_1ECC7CA40, &unk_1DC5233A0);
    [v18 setRoutingDecisionType_];

    v12(v3, v4, v10);
    v20 = OUTLINED_FUNCTION_32_9();
    __swift_storeEnumTagSinglePayload(v20, v21, v22, v10);
    OUTLINED_FUNCTION_38_1();
    v24 = *(v23 + 416);
    v25 = v18;
    v26 = v24(v3);
    sub_1DC28EB30(v3, &qword_1ECC7CA40, &unk_1DC5233A0);
    [v25 setRewrittenUtteranceCount_];

    OUTLINED_FUNCTION_38_1();
    v28 = *(v27 + 432);
    v29 = v25;
    v30 = v28(v4);
    [v29 setGenAIMetadata_];

    OUTLINED_FUNCTION_38_1();
    v32 = *(v31 + 448);
    v33 = v29;
    v1 = v45;
    v34 = v32(v44);
    [v33 setOverrideMetadata_];
  }

  v35 = [objc_allocWithZone(MEMORY[0x1E69CEF98]) init];
  [v35 setEnded_];
  v36 = [objc_allocWithZone(MEMORY[0x1E69CEF80]) init];
  if (v36)
  {
    OUTLINED_FUNCTION_71_6([v36 setEventMetadata_], sel_setNlRouterHandleContext_);
  }

  else
  {
    sub_1DC517B9C();
    sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
    sub_1DC296DBC();
    v37 = OUTLINED_FUNCTION_208();
    sub_1DC516F0C(v37, v38, v39, v40, 70, 2);

    OUTLINED_FUNCTION_49_10();
  }

  v41 = OUTLINED_FUNCTION_11_18();

  return v42(v41);
}

uint64_t sub_1DC3917C0(uint64_t a1, uint64_t a2)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return OUTLINED_FUNCTION_0_36();
}

uint64_t sub_1DC3917D4()
{
  OUTLINED_FUNCTION_36_11();
  v1 = [objc_allocWithZone(MEMORY[0x1E69CEFA8]) init];
  v2 = v1;
  if (v1)
  {
    OUTLINED_FUNCTION_91_1([v1 setErrorCode_], sel_setErrorDomain_);
  }

  v3 = *(v0 + 72);
  *(v0 + 56) = v3;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D060, qword_1DC526830);
  if (swift_dynamicCast())
  {
    v5 = *(v0 + 32);
    v6 = *(v0 + 40);
    if (v6 == type metadata accessor for NLRouterOverrideService())
    {
      if (v2)
      {
        v8 = 3;
        goto LABEL_14;
      }
    }

    else
    {
      v7 = v6 == type metadata accessor for NLRouterService(0);
      if (v2)
      {
        v8 = (2 * v7);
LABEL_14:
        [v2 setErrorDomain_];
      }
    }

    v18 = OUTLINED_FUNCTION_62_2();
    if (v5 == 1)
    {
      sub_1DC31CF24(v18, v19, 1u);
      if (!v2)
      {
        goto LABEL_25;
      }

      v17 = 3;
    }

    else
    {
      sub_1DC31CF24(v18, v19, v5);
      if (!v2)
      {
        goto LABEL_25;
      }

      v17 = 1;
    }

    v20 = &selRef_setErrorCode_;
    goto LABEL_24;
  }

  v9 = *(v0 + 72);
  *(v0 + 16) = v9;
  v10 = v9;
  if (OUTLINED_FUNCTION_109_2(v10, v11, v12, &type metadata for NLRouterServiceError))
  {
    sub_1DC31CF14(*(v0 + 56));
  }

  else
  {
    v13 = *(v0 + 72);
    *(v0 + 16) = v13;
    v14 = v13;
    if ((OUTLINED_FUNCTION_109_2(v14, v15, v16, &type metadata for NLRouterServiceSubComponentError) & 1) == 0)
    {
      if (!v2)
      {
        goto LABEL_25;
      }

      v17 = 0;
      goto LABEL_23;
    }
  }

  if (!v2)
  {
    goto LABEL_25;
  }

  v17 = 2;
LABEL_23:
  [v2 setErrorCode_];
  v20 = &selRef_setErrorDomain_;
LABEL_24:
  [v2 *v20];
LABEL_25:
  v21 = [objc_allocWithZone(MEMORY[0x1E69CEF98]) init];
  [v21 setFailed_];
  v22 = [objc_allocWithZone(MEMORY[0x1E69CEF80]) init];
  if (v22)
  {
    OUTLINED_FUNCTION_115_2([v22 setEventMetadata_], sel_setNlRouterHandleContext_);
  }

  else
  {
    v23 = sub_1DC517B9C();
    sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
    v24 = sub_1DC296DBC();
    sub_1DC516F0C(v23, &dword_1DC287000, v24, "Unable to create a NLRouter wrapper SELF event for NLRouterHandleFailed", 71, 2, MEMORY[0x1E69E7CC0]);

    v2 = v24;
  }

  OUTLINED_FUNCTION_19_0();

  return v25();
}

void sub_1DC391AA8(_DWORD *a1, uint64_t a2, void *a3, int a4, uint64_t a5)
{
  v10 = sub_1DC517B9C();
  v11 = sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
  v12 = sub_1DC296DBC();
  sub_1DC516F0C(v10, &dword_1DC287000, v12, "AutoBugCapture Triggered", 24, 2, MEMORY[0x1E69E7CC0]);

  v32 = [objc_allocWithZone(MEMORY[0x1E69D4F80]) init];
  v13 = sub_1DC397BE0(v32, a4, a5, a1, a2, a3);
  if (v13 || (v13 = sub_1DC397E28(v32, a1, a2, a3)) != 0)
  {
    v14 = v13;
    v15 = sub_1DC517B9C();
    v16 = sub_1DC296DBC();
    if (os_log_type_enabled(v16, v15))
    {
      OUTLINED_FUNCTION_63();
      v17 = OUTLINED_FUNCTION_85();
      *a1 = 138412290;
      *(a1 + 1) = v14;
      *v17 = v14;
      v18 = v14;
      _os_log_impl(&dword_1DC287000, v16, v15, "AutoBugCapture can be imported %@", a1, 0xCu);
      sub_1DC28EB30(v17, &qword_1ECC7DFE0, &qword_1DC5227F0);
      OUTLINED_FUNCTION_66();
      OUTLINED_FUNCTION_58();
    }

    v19 = v14;
    sub_1DC51761C();

    v20 = sub_1DC517B9C();
    v21 = sub_1DC296DBC();
    if (OUTLINED_FUNCTION_117_4(v21))
    {
      v22 = OUTLINED_FUNCTION_63();
      v23 = OUTLINED_FUNCTION_82();
      aBlock = v23;
      *v22 = 136315138;
      v24 = [v19 description];
      v25 = sub_1DC51772C();
      v27 = v26;

      v28 = sub_1DC291244(v25, v27, &aBlock);

      *(v22 + 4) = v28;
      _os_log_impl(&dword_1DC287000, v11, v20, "Failed to cast signature %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v23);
      OUTLINED_FUNCTION_58();
      OUTLINED_FUNCTION_66();

      return;
    }

    v29 = v32;
  }

  else
  {
    v30 = sub_1DC517B9C();
    v31 = sub_1DC296DBC();
    sub_1DC516F0C(v30, &dword_1DC287000, v31, "No failed event to report", 25, 2, MEMORY[0x1E69E7CC0]);

    v29 = v31;
  }
}

void sub_1DC391E8C(uint64_t a1)
{
  v2 = sub_1DC517B9C();
  sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
  log = sub_1DC296DBC();
  if (os_log_type_enabled(log, v2))
  {
    v3 = OUTLINED_FUNCTION_63();
    v4 = OUTLINED_FUNCTION_82();
    v10 = v4;
    *v3 = 136315138;
    if (!a1)
    {
      sub_1DC51764C();
    }

    v5 = sub_1DC51763C();
    v7 = v6;

    v8 = sub_1DC291244(v5, v7, &v10);

    *(v3 + 4) = v8;
    _os_log_impl(&dword_1DC287000, log, v2, "AutoBugCapture did reply %s", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
    OUTLINED_FUNCTION_66();
    OUTLINED_FUNCTION_66();
  }
}

uint64_t sub_1DC391FF8()
{
  OUTLINED_FUNCTION_1_0();
  *(v0 + 56) = v1;
  v4 = OUTLINED_FUNCTION_84_3(v2, v3);
  *(v0 + 32) = v4;
  OUTLINED_FUNCTION_52(v4);
  *(v0 + 40) = v5;
  *(v0 + 48) = OUTLINED_FUNCTION_118();
  v6 = OUTLINED_FUNCTION_47();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1DC392098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_60_9();
  OUTLINED_FUNCTION_36_11();
  v13 = *(v10 + 56);
  v14 = OUTLINED_FUNCTION_83_3(objc_allocWithZone(MEMORY[0x1E69CF008]));
  v15 = v14;
  if ((v13 & 1) != 0 && v14)
  {
    OUTLINED_FUNCTION_91_1(v14, sel_setErrorCode_);
  }

  v16 = [objc_allocWithZone(MEMORY[0x1E69CEFF8]) (v12 + 2936)];
  [v16 setFailed_];
  if (v16)
  {
    OUTLINED_FUNCTION_96_2();
    sub_1DC298C74(0, &qword_1ECC7B9C8, 0x1E69CF640);
    v17 = OUTLINED_FUNCTION_9_19();
    v18(v17);
    v19 = v16;
    v20 = OUTLINED_FUNCTION_39_8();
    OUTLINED_FUNCTION_72_5(v20, sel_setTraceId_);
  }

  v21 = [objc_allocWithZone(MEMORY[0x1E69CEF80]) (v12 + 2936)];
  if (v21)
  {
    OUTLINED_FUNCTION_71_6([v21 setEventMetadata_], sel_setNlRouterSubComponentSetupContext_);
  }

  else
  {
    sub_1DC517B9C();
    sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
    sub_1DC296DBC();
    v22 = OUTLINED_FUNCTION_208();
    sub_1DC516F0C(v22, v23, v24, v25, 91, 2);

    OUTLINED_FUNCTION_49_10();
  }

  OUTLINED_FUNCTION_11_18();
  OUTLINED_FUNCTION_64_5();

  return v28(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10);
}

uint64_t sub_1DC392244()
{
  OUTLINED_FUNCTION_1_0();
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  *(v0 + 72) = v3;
  v6 = OUTLINED_FUNCTION_84_3(v4, v5);
  *(v0 + 48) = v6;
  OUTLINED_FUNCTION_52(v6);
  *(v0 + 56) = v7;
  *(v0 + 64) = OUTLINED_FUNCTION_118();
  v8 = OUTLINED_FUNCTION_47();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1DC3922E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_60_9();
  OUTLINED_FUNCTION_36_11();
  v12 = *(v10 + 40);
  v13 = *(v10 + 72);
  v14 = OUTLINED_FUNCTION_83_3(objc_allocWithZone(MEMORY[0x1E69CEFF0]));
  [v14 setNlRouterSubComponent_];
  if (v12 != 1 && v14 != 0)
  {
    v16 = *(v10 + 40);
    v17 = v14;
    if (v16)
    {
      OUTLINED_FUNCTION_62_2();
      v16 = sub_1DC5176FC();
    }

    [v14 setAssetVersion_];
  }

  v18 = [objc_allocWithZone(MEMORY[0x1E69CEFD0]) (v11 + 2936)];
  [v18 setStartedOrChanged_];
  if (v18)
  {
    v19 = *(v10 + 48);
    sub_1DC298C74(0, &qword_1ECC7B9C8, 0x1E69CF640);
    v20 = OUTLINED_FUNCTION_9_19();
    v21(v20);
    v22 = v18;
    v23 = OUTLINED_FUNCTION_39_8();
    OUTLINED_FUNCTION_72_5(v23, sel_setTraceId_);
  }

  v24 = [objc_allocWithZone(MEMORY[0x1E69CEF80]) (v11 + 2936)];
  if (v24)
  {
    OUTLINED_FUNCTION_71_6([v24 setEventMetadata_], sel_setNlRouterSubComponentHandleContext_);
  }

  else
  {
    sub_1DC517B9C();
    sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
    sub_1DC296DBC();
    v25 = OUTLINED_FUNCTION_208();
    sub_1DC516F0C(v25, v26, v27, v28, 98, 2);

    OUTLINED_FUNCTION_49_10();
  }

  OUTLINED_FUNCTION_11_18();
  OUTLINED_FUNCTION_64_5();

  return v31(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10);
}

uint64_t sub_1DC3924E8()
{
  OUTLINED_FUNCTION_1_0();
  v4 = OUTLINED_FUNCTION_63_7(v1, v2, v3);
  v0[5] = v4;
  OUTLINED_FUNCTION_52(v4);
  v0[6] = v5;
  v0[7] = OUTLINED_FUNCTION_118();
  v6 = OUTLINED_FUNCTION_47();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1DC392584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_60_9();
  OUTLINED_FUNCTION_36_11();
  v12 = OUTLINED_FUNCTION_83_3(objc_allocWithZone(MEMORY[0x1E69CEFD8]));
  v13 = v12;
  if (v12)
  {
    OUTLINED_FUNCTION_91_1(v12, sel_setExists_);
  }

  [v13 setNlRouterSubComponentHandleEndedData_];
  v14 = [objc_allocWithZone(MEMORY[0x1E69CEFD0]) (v11 + 2936)];
  [v14 setEnded_];
  if (v14)
  {
    v15 = v10[5];
    sub_1DC298C74(0, &qword_1ECC7B9C8, 0x1E69CF640);
    v16 = OUTLINED_FUNCTION_9_19();
    v17(v16);
    v18 = v14;
    v19 = OUTLINED_FUNCTION_39_8();
    OUTLINED_FUNCTION_72_5(v19, sel_setTraceId_);
  }

  v20 = [objc_allocWithZone(MEMORY[0x1E69CEF80]) (v11 + 2936)];
  if (v20)
  {
    OUTLINED_FUNCTION_71_6([v20 setEventMetadata_], sel_setNlRouterSubComponentHandleContext_);
  }

  else
  {
    sub_1DC517B9C();
    sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
    sub_1DC296DBC();
    v21 = OUTLINED_FUNCTION_208();
    sub_1DC516F0C(v21, v22, v23, v24, 96, 2);

    OUTLINED_FUNCTION_49_10();
  }

  OUTLINED_FUNCTION_11_18();
  OUTLINED_FUNCTION_64_5();

  return v27(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10);
}

uint64_t sub_1DC392744()
{
  OUTLINED_FUNCTION_1_0();
  *(v1 + 96) = v2;
  *(v1 + 104) = v0;
  *(v1 + 232) = v3;
  *(v1 + 80) = v4;
  *(v1 + 88) = v5;
  v6 = sub_1DC510B6C();
  *(v1 + 112) = v6;
  OUTLINED_FUNCTION_52(v6);
  *(v1 + 120) = v7;
  *(v1 + 128) = OUTLINED_FUNCTION_118();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D070, &qword_1DC526870);
  OUTLINED_FUNCTION_10(v8);
  *(v1 + 136) = OUTLINED_FUNCTION_118();
  v9 = sub_1DC51650C();
  *(v1 + 144) = v9;
  OUTLINED_FUNCTION_52(v9);
  *(v1 + 152) = v10;
  *(v1 + 160) = OUTLINED_FUNCTION_118();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D078, &qword_1DC526878);
  OUTLINED_FUNCTION_10(v11);
  *(v1 + 168) = OUTLINED_FUNCTION_118();
  v12 = sub_1DC5164EC();
  *(v1 + 176) = v12;
  OUTLINED_FUNCTION_52(v12);
  *(v1 + 184) = v13;
  *(v1 + 192) = OUTLINED_FUNCTION_118();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D080, qword_1DC526880);
  OUTLINED_FUNCTION_10(v14);
  *(v1 + 200) = OUTLINED_FUNCTION_118();
  v15 = sub_1DC516EBC();
  *(v1 + 208) = v15;
  OUTLINED_FUNCTION_52(v15);
  *(v1 + 216) = v16;
  *(v1 + 224) = OUTLINED_FUNCTION_118();
  v17 = OUTLINED_FUNCTION_47();

  return MEMORY[0x1EEE6DFA0](v17, v18, v19);
}

uint64_t sub_1DC392958()
{
  v1 = *(v0 + 232);
  v2 = [objc_allocWithZone(MEMORY[0x1E69CEFE8]) init];
  v3 = 0;
  v4 = v1 - 1;
  v5 = 0;
  switch(v4)
  {
    case 0:
      goto LABEL_16;
    case 1:
      v11 = *(v0 + 96);
      *(v0 + 24) = v11;
      v12 = v11;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D060, qword_1DC526830);
      if (swift_dynamicCast())
      {
        sub_1DC31CF14(*(v0 + 32));
LABEL_14:
        if (v2)
        {
          [v2 setErrorCode_];
        }
      }

      else
      {
LABEL_16:
        OUTLINED_FUNCTION_12_0();
        v14 = (*(v13 + 400))();
        v3 = 0;
        if ((v14 & 0x100000000) != 0)
        {
LABEL_28:
          v5 = 0;
          goto LABEL_20;
        }

        v5 = 0;
        if (!v2)
        {
          goto LABEL_20;
        }

        [v2 setErrorCode_];
      }

      goto LABEL_19;
    case 2:
      goto LABEL_20;
    case 3:
      v8 = *(v0 + 96);
      *(v0 + 40) = v8;
      v9 = v8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D060, qword_1DC526830);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_19;
      }

      v10 = *(v0 + 48);
      if (!v10)
      {
        goto LABEL_14;
      }

      if (v10 == 1)
      {
LABEL_4:
        if (v2)
        {
          [v2 setErrorCode_];
        }

        goto LABEL_19;
      }

      if (v10 == 2)
      {
        if (v2)
        {
          [v2 setErrorCode_];
        }

        goto LABEL_19;
      }

      *(v0 + 56) = v10;
      v28 = v10;
      if (swift_dynamicCast())
      {
        v29 = *(v0 + 208);
        v30 = OUTLINED_FUNCTION_32_9();
        __swift_storeEnumTagSinglePayload(v30, v31, v32, v29);
        v33 = OUTLINED_FUNCTION_13_15();
        v34(v33);
        if (!v2)
        {
LABEL_34:
          v37 = *(v0 + 216);
          v36 = *(v0 + 224);
          v38 = *(v0 + 208);
LABEL_41:
          sub_1DC31CF14(v10);
          (*(v37 + 8))(v36, v38);
          goto LABEL_19;
        }

        v35 = v2;
        result = sub_1DC516EAC();
        if (result < 0xFFFFFFFF80000000)
        {
          __break(1u);
        }

        else if (result <= 0x7FFFFFFF)
        {
          [v35 setErrorCode_];

          goto LABEL_34;
        }

        __break(1u);
        goto LABEL_51;
      }

      v39 = *(v0 + 200);
      __swift_storeEnumTagSinglePayload(v39, 1, 1, *(v0 + 208));
      sub_1DC28EB30(v39, &unk_1ECC7D080, qword_1DC526880);
      *(v0 + 64) = v10;
      if (OUTLINED_FUNCTION_108(v10, v0 + 64))
      {
        v40 = *(v0 + 176);
        v41 = OUTLINED_FUNCTION_32_9();
        __swift_storeEnumTagSinglePayload(v41, v42, v43, v40);
        v44 = OUTLINED_FUNCTION_13_15();
        v45(v44);
        if (v2)
        {
          v46 = v2;
          result = sub_1DC5164DC();
          if (result < 0xFFFFFFFF80000000)
          {
LABEL_51:
            __break(1u);
            goto LABEL_52;
          }

          if (result > 0x7FFFFFFF)
          {
LABEL_52:
            __break(1u);
            return result;
          }

          [v46 setErrorCode_];
        }

        v37 = *(v0 + 184);
        v36 = *(v0 + 192);
        v38 = *(v0 + 176);
        goto LABEL_41;
      }

      v47 = *(v0 + 168);
      __swift_storeEnumTagSinglePayload(v47, 1, 1, *(v0 + 176));
      sub_1DC28EB30(v47, &qword_1ECC7D078, &qword_1DC526878);
      *(v0 + 72) = v10;
      if (OUTLINED_FUNCTION_108(v10, v0 + 72))
      {
        v48 = *(v0 + 144);
        v49 = OUTLINED_FUNCTION_32_9();
        __swift_storeEnumTagSinglePayload(v49, v50, v51, v48);
        v52 = OUTLINED_FUNCTION_13_15();
        v53(v52);
        if (v2)
        {
          [v2 setErrorCode_];
        }

        sub_1DC517F4C();

        v54 = sub_1DC5164FC();
        MEMORY[0x1E1296160](v54);

        sub_1DC31CF14(v10);
        v3 = 0x636E657265666E49;
        v5 = 0xEF3A726F72724565;
        v55 = OUTLINED_FUNCTION_54_2();
        v56(v55);
        goto LABEL_20;
      }

      v57 = *(v0 + 136);
      __swift_storeEnumTagSinglePayload(v57, 1, 1, *(v0 + 144));
      sub_1DC28EB30(v57, &qword_1ECC7D070, &qword_1DC526870);
      if (v2)
      {
        v58 = v2;
        [v58 setErrorCode_];
        sub_1DC31CF14(v10);
      }

      else
      {
        sub_1DC31CF14(v10);
      }

LABEL_19:
      v3 = 0;
      v5 = 0;
LABEL_20:
      v60 = v5;
      v15 = [objc_allocWithZone(MEMORY[0x1E69CEFD0]) init];
      [v15 setFailed_];
      if (v15)
      {
        v17 = *(v0 + 120);
        v16 = *(v0 + 128);
        v18 = *(v0 + 112);
        v19 = *(v0 + 88);
        sub_1DC298C74(0, &qword_1ECC7B9C8, 0x1E69CF640);
        (*(v17 + 16))(v16, v19, v18);
        v20 = v15;
        v21 = sub_1DC299428(v16);
        [v20 setTraceId_];
      }

      v22 = [objc_allocWithZone(MEMORY[0x1E69CEF80]) init];
      if (v22)
      {
        v23 = v22;
        [v22 setEventMetadata_];
        [v23 setNlRouterSubComponentHandleContext_];
        v59 = v3;
      }

      else
      {

        v24 = sub_1DC517B9C();
        sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
        v25 = sub_1DC296DBC();
        sub_1DC516F0C(v24, &dword_1DC287000, v25, "Unable to create a NLRouter wrapper SELF event for NLRouterSchemaNLRouterSubComponentHandleFailed", 97, 2, MEMORY[0x1E69E7CC0]);

        v23 = 0;
        v59 = 0;
        v60 = 0;
        v15 = v25;
      }

      v26 = *(v0 + 8);

      return v26(v23, v59, v60);
    case 4:
    case 5:
      v6 = *(v0 + 96);
      *(v0 + 16) = v6;
      v7 = v6;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D060, qword_1DC526830);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_19;
      }

      if (*(v0 + 236))
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    default:
      goto LABEL_28;
  }
}

id sub_1DC3930A4(uint64_t a1, uint64_t a2)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BEB8, &unk_1DC527150);
  OUTLINED_FUNCTION_10(v6);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_40();
  v9 = type metadata accessor for QDContextState(v8);
  OUTLINED_FUNCTION_35();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_28_0();
  v11 = [objc_allocWithZone(MEMORY[0x1E69CEFC8]) init];
  if (!v11)
  {
    sub_1DC517B9C();
    sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
    v14 = sub_1DC296DBC();
    v15 = OUTLINED_FUNCTION_40_1();
    sub_1DC516F0C(v15, v16, v17, v18, 83, 2);
LABEL_16:

    return 0;
  }

  v12 = v11;
  sub_1DC28F3B8(a1, v3, &qword_1ECC7BEB8, &unk_1DC527150);
  OUTLINED_FUNCTION_39(v3, 1, v9);
  if (v13)
  {
    sub_1DC28EB30(v3, &qword_1ECC7BEB8, &unk_1DC527150);
  }

  else
  {
    sub_1DC398320(v3, v2, type metadata accessor for QDContextState);
    v19 = sel_setIsAppFocused_;
    switch(*v2)
    {
      case 1:
        v20 = v12;
        v21 = 1;
        goto LABEL_11;
      case 2:
        [v12 setIsAppFocused_];
        v19 = sel_setIsMediaRichAppFocused_;
        goto LABEL_9;
      case 3:
LABEL_9:
        v22 = v12;
        v23 = 1;
        break;
      default:
        v20 = v12;
        v21 = 0;
LABEL_11:
        [v20 setIsAppFocused_];
        v19 = sel_setIsMediaRichAppFocused_;
        v22 = v12;
        v23 = 0;
        break;
    }

    [v22 v19];
    [v12 setIsMediaFocused_];
    sub_1DC39837C(v2, type metadata accessor for QDContextState);
  }

  v24 = [objc_allocWithZone(MEMORY[0x1E69CEF80]) init];
  if (!v24)
  {
    sub_1DC517B9C();
    sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
    v14 = sub_1DC296DBC();
    v26 = OUTLINED_FUNCTION_40_1();
    sub_1DC516F0C(v26, v27, v28, v29, 97, 2);

    goto LABEL_16;
  }

  v25 = v24;
  OUTLINED_FUNCTION_115_2([v24 setEventMetadata_], sel_setNlRouterPromptGenerationSignalsCaptured_);

  return v25;
}

void sub_1DC393388()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  v4 = v3;
  sub_1DC510B6C();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1();
  v8 = v7 - v6;
  v9 = OUTLINED_FUNCTION_83_3(objc_allocWithZone(MEMORY[0x1E69CEFB8]));
  if (!v9)
  {
    sub_1DC517B9C();
    sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
    v16 = sub_1DC296DBC();
    v17 = OUTLINED_FUNCTION_40_1();
    OUTLINED_FUNCTION_113_3(v17, v18, v19, v20);
LABEL_6:

    goto LABEL_7;
  }

  v10 = v9;
  sub_1DC298C74(0, &qword_1ECC7B9C8, 0x1E69CF640);
  v11 = OUTLINED_FUNCTION_79_5();
  v12(v11);
  v13 = sub_1DC299428(v8);
  [v10 setTraceId_];

  [v10 setNlRouterInvalidDecisionReason_];
  v14 = [objc_allocWithZone(MEMORY[0x1E69CEF80]) (v0 + 2936)];
  if (!v14)
  {
    sub_1DC517B9C();
    sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
    v16 = sub_1DC296DBC();
    v21 = OUTLINED_FUNCTION_62_1();
    sub_1DC516F0C(v21, v22, v23, v24, 87, 2);

    goto LABEL_6;
  }

  v15 = v14;
  [v14 setEventMetadata_];
  [v15 setNLRouterInvalidDecisionEmitted_];

LABEL_7:
  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC3935A4()
{
  OUTLINED_FUNCTION_1_0();
  v3 = OUTLINED_FUNCTION_84_3(v1, v2);
  v0[4] = v3;
  OUTLINED_FUNCTION_52(v3);
  v0[5] = v4;
  v0[6] = OUTLINED_FUNCTION_118();
  v5 = OUTLINED_FUNCTION_47();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DC393640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_60_9();
  OUTLINED_FUNCTION_36_11();
  v11 = [objc_allocWithZone(MEMORY[0x1E69CF5E8]) init];
  if (v11)
  {
    v12 = objc_allocWithZone(MEMORY[0x1E69CF5F8]);
    v13 = v11;
    v14 = OUTLINED_FUNCTION_111_1();
    OUTLINED_FUNCTION_115_2(v14, sel_setSource_);

    v15 = [v13 source];
    if (v15)
    {
      v16 = v15;
      [v15 setComponent_];
    }

    v17 = [v13 source];
    if (v17)
    {
      v18 = v17;
      v19 = [*(v10 + 16) nlRouterId];
      [v18 setUuid_];
    }

    v20 = objc_allocWithZone(MEMORY[0x1E69CF5F8]);
    v21 = v13;
    v22 = OUTLINED_FUNCTION_111_1();
    OUTLINED_FUNCTION_115_2(v22, sel_setTarget_);

    v23 = [v21 target];
    if (v23)
    {
      v24 = v23;
      [v23 setComponent_];
    }

    v25 = [v21 target];
    if (v25)
    {
      v26 = v25;
      OUTLINED_FUNCTION_96_2();
      sub_1DC298C74(0, &qword_1ECC7B9C8, 0x1E69CF640);
      v27 = OUTLINED_FUNCTION_9_19();
      v28(v27);
      v29 = sub_1DC299428(v21);
      [v26 setUuid_];
    }
  }

  OUTLINED_FUNCTION_34_10();
  OUTLINED_FUNCTION_64_5();

  return v32(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10);
}

void sub_1DC393854()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  v4 = v3;
  sub_1DC510B6C();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1();
  v8 = v7 - v6;
  v9 = OUTLINED_FUNCTION_83_3(objc_allocWithZone(MEMORY[0x1E69CEF78]));
  if (v9)
  {
    sub_1DC298C74(0, &qword_1ECC7B9C8, 0x1E69CF640);
    v10 = OUTLINED_FUNCTION_79_5();
    v11(v10);
    v12 = v9;
    v13 = sub_1DC299428(v8);
    OUTLINED_FUNCTION_72_5(v13, sel_setLinkId_);

    v14 = qword_1ECC87CC0;
    v15 = v12;
    if (v14 != -1)
    {
      OUTLINED_FUNCTION_26_10();
      swift_once();
    }

    [v15 setTriggeredHeuristic_];
  }

  v16 = [objc_allocWithZone(MEMORY[0x1E69CEFE0]) (v0 + 2936)];
  [v16 setHeuristicsHandleEndedData_];

  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC3939EC(void *a1)
{
  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D060, qword_1DC526830);
  if (!swift_dynamicCast())
  {
    return 501;
  }

  switch(v6)
  {
    case 1:
      sub_1DC31CF24(v4, v5, 1u);
      v2 = 104;
      break;
    case 2:
      sub_1DC31CF24(v4, v5, 2u);
      v2 = 102;
      break;
    case 3:
      sub_1DC31CF24(v4, v5, 3u);
      v2 = 103;
      break;
    default:
      sub_1DC31CF24(v4, v5, 0);
      v2 = 101;
      break;
  }

  return v2;
}

void sub_1DC393ABC()
{
  OUTLINED_FUNCTION_33();
  v3 = v2;
  sub_1DC515EDC();
  OUTLINED_FUNCTION_0();
  v62 = v5;
  v63 = v4;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1();
  v60 = v7 - v6;
  OUTLINED_FUNCTION_12();
  v61 = sub_1DC515F3C();
  OUTLINED_FUNCTION_0();
  v59 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_1();
  v58 = v11 - v10;
  OUTLINED_FUNCTION_12();
  v12 = sub_1DC5157EC();
  OUTLINED_FUNCTION_0();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_8();
  v64 = (v16 - v17);
  MEMORY[0x1EEE9AC00](v18);
  v65 = &v58 - v19;
  OUTLINED_FUNCTION_12();
  v20 = sub_1DC5157CC();
  OUTLINED_FUNCTION_0();
  v67 = v21;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_28_0();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CA40, &unk_1DC5233A0);
  v24 = OUTLINED_FUNCTION_10(v23);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_8();
  v27 = v25 - v26;
  v29 = MEMORY[0x1EEE9AC00](v28);
  v31 = &v58 - v30;
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_68_4();
  v66 = v3;
  sub_1DC28F3B8(v3, v0, &qword_1ECC7CA40, &unk_1DC5233A0);
  v32 = OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_39(v32, v33, v12);
  if (v34)
  {
    goto LABEL_21;
  }

  sub_1DC28F3B8(v0, v31, &qword_1ECC7CA40, &unk_1DC5233A0);
  v35 = v14[11];
  v36 = OUTLINED_FUNCTION_60();
  v37 = v35(v36);
  if (v37 == *MEMORY[0x1E69D02E8])
  {
    v38 = OUTLINED_FUNCTION_60();
    v39(v38);
    (*(v67 + 32))(v1, v31, v20);
    sub_1DC5157AC();
    v41 = v40;
    v42 = OUTLINED_FUNCTION_74();
    v43(v42);
    if (v41)
    {
    }

    goto LABEL_21;
  }

  v44 = v37;
  if (v37 == *MEMORY[0x1E69D02C8])
  {
LABEL_8:
    v45 = OUTLINED_FUNCTION_60();
    v46(v45);
    goto LABEL_21;
  }

  if (v37 != *MEMORY[0x1E69D02E0])
  {
    if (v37 == *MEMORY[0x1E69D02D8] || v37 == *MEMORY[0x1E69D02F8] || v37 == *MEMORY[0x1E69D02F0])
    {
      goto LABEL_21;
    }

    goto LABEL_8;
  }

  v47 = v35;
  sub_1DC28F3B8(v66, v27, &qword_1ECC7CA40, &unk_1DC5233A0);
  OUTLINED_FUNCTION_39(v27, 1, v12);
  if (v34)
  {
    sub_1DC28EB30(v27, &qword_1ECC7CA40, &unk_1DC5233A0);
    v48 = v14[1];
  }

  else
  {
    v49 = v14;
    v50 = v14[4];
    v51 = v65;
    v50(v65, v27, v12);
    v52 = v64;
    (v49[2])(v64, v51, v12);
    if (v47(v52, v12) == v44)
    {
      (v49[12])(v52, v12);
      v54 = v58;
      v53 = v59;
      v55 = v61;
      (*(v59 + 32))(v58, v52, v61);
      v56 = v60;
      sub_1DC515EFC();
      sub_1DC3322BC();
      (*(v62 + 8))(v56, v63);
      (*(v53 + 8))(v54, v55);
      v48 = v49[1];
      v48(v51, v12);
    }

    else
    {
      v48 = v49[1];
      v48(v51, v12);
      v48(v52, v12);
    }
  }

  v57 = OUTLINED_FUNCTION_60();
  (v48)(v57);
LABEL_21:
  sub_1DC28EB30(v0, &qword_1ECC7CA40, &unk_1DC5233A0);
  OUTLINED_FUNCTION_34();
}

unint64_t sub_1DC394098(uint64_t a1)
{
  sub_1DC5157CC();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_28_0();
  v4 = OUTLINED_FUNCTION_54_2();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  v7 = OUTLINED_FUNCTION_10(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8();
  v10 = v8 - v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_68_4();
  sub_1DC28F3B8(a1, v1, &qword_1ECC7CA40, &unk_1DC5233A0);
  v12 = sub_1DC5157EC();
  v13 = OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_39(v13, v14, v12);
  if (!v15)
  {
    sub_1DC28F3B8(v1, v10, &qword_1ECC7CA40, &unk_1DC5233A0);
    v18 = OUTLINED_FUNCTION_55();
    v20 = v19(v18);
    if (v20 == *MEMORY[0x1E69D02E8])
    {
      v21 = OUTLINED_FUNCTION_55();
      v22(v21);
      v23 = OUTLINED_FUNCTION_74();
      v24(v23);
      sub_1DC5157AC();
      v26 = v25;
      v27 = OUTLINED_FUNCTION_56_0();
      v28(v27);
      if (v26)
      {

        v16 = 1;
        goto LABEL_4;
      }
    }

    else
    {
      if (v20 == *MEMORY[0x1E69D02C8])
      {
        v29 = OUTLINED_FUNCTION_55();
        v30(v29);
        v16 = *(*v10 + 16);

        if (!HIDWORD(v16))
        {
          goto LABEL_4;
        }

        __break(1u);
      }

      v31 = OUTLINED_FUNCTION_55();
      v32(v31);
    }
  }

  v16 = 0;
LABEL_4:
  sub_1DC28EB30(v1, &qword_1ECC7CA40, &unk_1DC5233A0);
  return v16;
}