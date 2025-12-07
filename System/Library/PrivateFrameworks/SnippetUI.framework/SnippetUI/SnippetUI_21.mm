unint64_t sub_26A6A89B0()
{
  result = qword_2803B3640;
  if (!qword_2803B3640)
  {
    type metadata accessor for PrimaryHeaderRichView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B3640);
  }

  return result;
}

void *OUTLINED_FUNCTION_1_68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t __dst)
{

  return memcpy(&__dst, &STACK[0x520], 0xFAuLL);
}

uint64_t OUTLINED_FUNCTION_4_54(uint64_t a1)
{

  return sub_26A4E2544(a1, v1, v2);
}

BOOL sub_26A6A8A3C(uint64_t a1, unint64_t a2)
{
  v2 = 0;
  v3 = 0;
  switch(a2 >> 62)
  {
    case 1uLL:
      v3 = a1;
      v2 = a1 >> 32;
      break;
    case 2uLL:
      v3 = *(a1 + 16);
      v2 = *(a1 + 24);
      break;
    case 3uLL:
      return v3 == v2;
    default:
      v3 = 0;
      v2 = BYTE6(a2);
      break;
  }

  return v3 == v2;
}

uint64_t sub_26A6A8A90()
{
  v0 = sub_26A84BD28();
  OUTLINED_FUNCTION_15();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_41();
  v6 = v5 - v4;
  SFImage.asVisualProperty()();
  VisualProperty.asAnyView()();
  (*(v2 + 8))(v6, v0);
  v7 = objc_opt_self();
  if (OUTLINED_FUNCTION_25_19(v7))
  {
    swift_getKeyPath();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3650, &qword_26A8745B8);
  sub_26A6AB2E8();
  sub_26A84FDF8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3668, &qword_26A8745C0);
  sub_26A6AB3C8();
  return sub_26A851248();
}

uint64_t SFImage.asVisualProperty()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3648, &qword_26A886550);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_26A8570D0;
  v1 = sub_26A84BA88();
  v2 = MEMORY[0x277D62EB0];
  *(v0 + 56) = v1;
  *(v0 + 64) = v2;
  __swift_allocate_boxed_opaque_existential_1((v0 + 32));
  SFImage.asVisualElement()();
  return sub_26A84BD48();
}

void sub_26A6A9838(uint64_t a1@<X8>)
{
  v115 = a1;
  v114 = sub_26A84B2F8();
  OUTLINED_FUNCTION_15();
  v103 = v2;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_15();
  v104 = v4;
  OUTLINED_FUNCTION_25_2();
  v113 = sub_26A84B2E8();
  OUTLINED_FUNCTION_15();
  v101 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3_15();
  v102 = v7;
  OUTLINED_FUNCTION_25_2();
  v112 = sub_26A84B1D8();
  OUTLINED_FUNCTION_15();
  v110 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3_15();
  v111 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD038, &qword_26A872050);
  OUTLINED_FUNCTION_79(v11);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_82();
  v109 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF0C0, &unk_26A87C580);
  OUTLINED_FUNCTION_79(v14);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_82();
  v108 = v16;
  OUTLINED_FUNCTION_25_2();
  sub_26A84B2C8();
  OUTLINED_FUNCTION_15();
  v106 = v18;
  v107 = v17;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_3_15();
  v20 = v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF0C8, &unk_26A8720C0);
  OUTLINED_FUNCTION_79(v21);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_82();
  v24 = v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF0D0, &qword_26A872080);
  v26 = OUTLINED_FUNCTION_79(v25);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_6_0();
  v29 = v27 - v28;
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_27_1();
  v32 = v31;
  OUTLINED_FUNCTION_25_2();
  v33 = sub_26A84AB98();
  OUTLINED_FUNCTION_15();
  v35 = v34;
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_6_0();
  v39 = v37 - v38;
  *&v41 = MEMORY[0x28223BE20](v40).n128_u64[0];
  v43 = &v95 - v42;
  v44 = [v1 urlValue];
  if (v44)
  {
    v45 = v44;
    sub_26A84AB78();

    v100 = v35;
    (*(v35 + 32))(v43, v39, v33);
    v46 = [v1 darkUrlValue];
    v105 = v43;
    if (v46)
    {
      v47 = v46;
      sub_26A84AB78();

      v48 = 0;
    }

    else
    {
      v48 = 1;
    }

    __swift_storeEnumTagSinglePayload(v29, v48, 1, v33);
    v99 = v32;
    sub_26A67B504(v29, v32);
    sub_26A84B248();
    v98 = v24;
    OUTLINED_FUNCTION_81();
    __swift_storeEnumTagSinglePayload(v60, v61, v62, v63);
    v64 = *MEMORY[0x277D62CE0];
    v65 = *(v106 + 104);
    v97 = v20;
    v65(v20, v64, v107);
    [v1 size];
    OUTLINED_FUNCTION_31_15();
    v67 = [v1 v66];
    OUTLINED_FUNCTION_20_21(v67, v68, v69);
    v70 = sub_26A84B2B8();
    OUTLINED_FUNCTION_5_51(v70);
    sub_26A84DFA8();
    OUTLINED_FUNCTION_81();
    __swift_storeEnumTagSinglePayload(v71, v72, v73, v74);
    (*(v110 + 104))(v111, *MEMORY[0x277D62B70], v112);
    v75 = v101;
    v76 = v102;
    (*(v101 + 104))();
    v77 = v103;
    v78 = v104;
    (*(v103 + 104))(v104, *MEMORY[0x277D62D28], v114);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF860, &qword_26A8657D8);
    v79 = sub_26A84B058();
    OUTLINED_FUNCTION_15();
    v81 = v80;
    v82 = *(v80 + 80);
    v96 = v33;
    v83 = (v82 + 32) & ~v82;
    v84 = swift_allocObject();
    *(v84 + 16) = xmmword_26A8570D0;
    (*(v81 + 104))(v84 + v83, *MEMORY[0x277D62A28], v79);
    sub_26A67BF28(v84);
    v85 = v76;
    v86 = v98;
    v87 = v99;
    v88 = v97;
    v89 = v111;
    v90 = v108;
    sub_26A84B428();

    (*(v77 + 8))(v78, v114);
    (*(v75 + 8))(v85, v113);
    (*(v110 + 8))(v89, v112);
    sub_26A4E2544(v109, &qword_2803AD038, &qword_26A872050);
    sub_26A4E2544(v90, &qword_2803AF0C0, &unk_26A87C580);
    (*(v106 + 8))(v88, v107);
    sub_26A4E2544(v86, &qword_2803AF0C8, &unk_26A8720C0);
    sub_26A4E2544(v87, &qword_2803AF0D0, &qword_26A872080);
    (*(v100 + 8))(v105, v96);
    sub_26A84B718();
    OUTLINED_FUNCTION_29_15();
    OUTLINED_FUNCTION_22_0();
    __swift_storeEnumTagSinglePayload(v91, v92, v93, v94);
    OUTLINED_FUNCTION_86();
  }

  else
  {
    sub_26A851E98();
    OUTLINED_FUNCTION_1_12();
    OUTLINED_FUNCTION_9_28();
    sub_26A7AF248(v49, v50, v51, v52, v53, 81, v54, 19, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108);
    OUTLINED_FUNCTION_27_12();
    OUTLINED_FUNCTION_29_15();
    OUTLINED_FUNCTION_81();
    OUTLINED_FUNCTION_86();

    __swift_storeEnumTagSinglePayload(v55, v56, v57, v58);
  }
}

void sub_26A6AABB8()
{
  v1 = v0;
  v98 = sub_26A84B2F8();
  OUTLINED_FUNCTION_15();
  v87 = v2;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_15();
  v88 = v4;
  OUTLINED_FUNCTION_25_2();
  v97 = sub_26A84B2E8();
  OUTLINED_FUNCTION_15();
  v85 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3_15();
  v86 = v7;
  OUTLINED_FUNCTION_25_2();
  v96 = sub_26A84B1D8();
  OUTLINED_FUNCTION_15();
  v94 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3_15();
  v95 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD038, &qword_26A872050);
  OUTLINED_FUNCTION_79(v11);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_82();
  v93 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF0C0, &unk_26A87C580);
  OUTLINED_FUNCTION_79(v14);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_82();
  v92 = v16;
  OUTLINED_FUNCTION_25_2();
  v91 = sub_26A84B2C8();
  OUTLINED_FUNCTION_15();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_3_15();
  v21 = v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF0C8, &unk_26A8720C0);
  OUTLINED_FUNCTION_79(v22);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_82();
  v25 = v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF0D0, &qword_26A872080);
  OUTLINED_FUNCTION_79(v26);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_82();
  v29 = v28;
  OUTLINED_FUNCTION_25_2();
  v30 = sub_26A84AB98();
  OUTLINED_FUNCTION_15();
  v32 = v31;
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_6_0();
  v36 = v34 - v35;
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_27_1();
  v39 = v38;
  v40 = [v1 filePath];
  if (v40)
  {
    v41 = v40;
    sub_26A84AB78();

    v83 = v30;
    (*(v32 + 32))(v39, v36, v30);
    OUTLINED_FUNCTION_81();
    __swift_storeEnumTagSinglePayload(v42, v43, v44, v30);
    sub_26A84B248();
    OUTLINED_FUNCTION_81();
    __swift_storeEnumTagSinglePayload(v45, v46, v47, v48);
    (*(v18 + 104))(v21, *MEMORY[0x277D62CE0], v91);
    [v1 size];
    OUTLINED_FUNCTION_31_15();
    v50 = [v1 v49];
    OUTLINED_FUNCTION_20_21(v50, v51, v52);
    v53 = sub_26A84B2B8();
    OUTLINED_FUNCTION_5_51(v53);
    sub_26A84DFA8();
    OUTLINED_FUNCTION_81();
    __swift_storeEnumTagSinglePayload(v54, v55, v56, v57);
    (*(v94 + 104))(v95, *MEMORY[0x277D62B70], v96);
    (*(v85 + 104))();
    (*(v87 + 104))(v88, *MEMORY[0x277D62D28], v98);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF860, &qword_26A8657D8);
    v58 = sub_26A84B058();
    OUTLINED_FUNCTION_15();
    v60 = v59;
    v61 = (*(v59 + 80) + 32) & ~*(v59 + 80);
    v62 = swift_allocObject();
    *(v62 + 16) = xmmword_26A8570D0;
    (*(v60 + 104))(v62 + v61, *MEMORY[0x277D62A28], v58);
    sub_26A67BF28(v62);
    sub_26A84B428();

    (*(v87 + 8))(v88, v98);
    (*(v85 + 8))(v86, v97);
    (*(v94 + 8))(v95, v96);
    sub_26A4E2544(v93, &qword_2803AD038, &qword_26A872050);
    sub_26A4E2544(v92, &qword_2803AF0C0, &unk_26A87C580);
    (*(v18 + 8))(v21, v91);
    sub_26A4E2544(v25, &qword_2803AF0C8, &unk_26A8720C0);
    sub_26A4E2544(v29, &qword_2803AF0D0, &qword_26A872080);
    (*(v32 + 8))(v39, v83);
    sub_26A84B718();
    OUTLINED_FUNCTION_29_15();
    OUTLINED_FUNCTION_22_0();
    __swift_storeEnumTagSinglePayload(v63, v64, v65, v66);
    OUTLINED_FUNCTION_86();
  }

  else
  {
    sub_26A851E98();
    OUTLINED_FUNCTION_1_12();
    OUTLINED_FUNCTION_9_28();
    sub_26A7AFB74(v67, v68, v69, v70, v71, 145, v72, 19, v78, v79, v80, v81, v82, v84, v85, v86, v87, v88, v89, v90, v91, v92);
    OUTLINED_FUNCTION_27_12();
    OUTLINED_FUNCTION_29_15();
    OUTLINED_FUNCTION_81();
    OUTLINED_FUNCTION_86();

    __swift_storeEnumTagSinglePayload(v73, v74, v75, v76);
  }
}

unint64_t sub_26A6AB2E8()
{
  result = qword_2803B3658;
  if (!qword_2803B3658)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B3650, &qword_26A8745B8);
    sub_26A6AB374();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B3658);
  }

  return result;
}

unint64_t sub_26A6AB374()
{
  result = qword_2803B3660;
  if (!qword_2803B3660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B3660);
  }

  return result;
}

unint64_t sub_26A6AB3C8()
{
  result = qword_2803B3670;
  if (!qword_2803B3670)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B3668, &qword_26A8745C0);
    sub_26A6AB2E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B3670);
  }

  return result;
}

uint64_t sub_26A6AB454(void *a1)
{
  v1 = [a1 contactIdentifiers];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_26A851A98();

  return v3;
}

uint64_t sub_26A6AB4AC(void *a1)
{
  v1 = [a1 imageData];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_26A84ABF8();

  return v3;
}

uint64_t OUTLINED_FUNCTION_5_51(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 0, 1, a1);
}

uint64_t OUTLINED_FUNCTION_15_25()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_19_21()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_20_21(uint64_t a1, double a2, double a3)
{

  return sub_26A84B268();
}

uint64_t OUTLINED_FUNCTION_25_19(uint64_t a1)
{

  return swift_dynamicCastObjCClass();
}

uint64_t OUTLINED_FUNCTION_26_11()
{

  return sub_26A84B1D8();
}

uint64_t OUTLINED_FUNCTION_27_12()
{

  return sub_26A84B718();
}

void View.imageElementFixedSize(horizontal:vertical:)()
{
  OUTLINED_FUNCTION_28_0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2803B31B0, &unk_26A858ED0);
  sub_26A84F4F8();
  OUTLINED_FUNCTION_0_34();
  v8 = v7;
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v9);
  v11 = v13 - v10;
  swift_getKeyPath();
  v14 = v6;
  sub_26A8509A8();

  swift_getKeyPath();
  v14 = v4;
  v12 = sub_26A6ACB90(&qword_28157FB50, &unk_2803B31B0);
  v13[1] = v2;
  v13[2] = v12;
  OUTLINED_FUNCTION_58();
  swift_getWitnessTable();
  sub_26A8509A8();

  (*(v8 + 8))(v11, v0);
  OUTLINED_FUNCTION_27_0();
}

void View.imageElementRenderingMode(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_28_0();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC918, &qword_26A85DBA0);
  OUTLINED_FUNCTION_79(v24);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v25);
  v27 = &a9 - v26;
  swift_getKeyPath();
  v28 = sub_26A850F68();
  OUTLINED_FUNCTION_46();
  (*(v29 + 16))(v27, v23, v28);
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v28);
  sub_26A8509A8();

  sub_26A6AC8E8(v27, &qword_2803AC918);
  OUTLINED_FUNCTION_27_0();
}

uint64_t EnvironmentValues.imageElementRenderingMode.getter()
{
  v0 = sub_26A6ABAE8();
  OUTLINED_FUNCTION_2_39(v0, &unk_287B1EAF0);

  return sub_26A84F998();
}

uint64_t sub_26A6AB970(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC918, &qword_26A85DBA0);
  OUTLINED_FUNCTION_79(v2);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v3);
  v5 = &v7 - v4;
  sub_26A51D0F8(a1, &v7 - v4, &qword_2803AC918, &qword_26A85DBA0);
  return EnvironmentValues.imageElementRenderingMode.setter(v5);
}

uint64_t sub_26A6ABAA0(void (*a1)(void), uint64_t a2)
{
  a1();
  sub_26A84F998();
  return v3;
}

unint64_t sub_26A6ABAE8()
{
  result = qword_28157FCC8;
  if (!qword_28157FCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28157FCC8);
  }

  return result;
}

unint64_t sub_26A6ABB3C()
{
  result = qword_28157FD00;
  if (!qword_28157FD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28157FD00);
  }

  return result;
}

unint64_t sub_26A6ABB90()
{
  result = qword_28157FCF8;
  if (!qword_28157FCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28157FCF8);
  }

  return result;
}

void View.imageElementFixedSize()()
{
  OUTLINED_FUNCTION_28_0();
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2803B31B0, &unk_26A858ED0);
  sub_26A84F4F8();
  OUTLINED_FUNCTION_0_34();
  v4 = v3;
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v5);
  v7 = v9 - v6;
  swift_getKeyPath();
  v10 = 1;
  sub_26A8509A8();

  swift_getKeyPath();
  v10 = 1;
  v8 = sub_26A6ACB90(&qword_28157FB50, &unk_2803B31B0);
  v9[1] = v2;
  v9[2] = v8;
  OUTLINED_FUNCTION_58();
  swift_getWitnessTable();
  sub_26A8509A8();

  (*(v4 + 8))(v7, v0);
  OUTLINED_FUNCTION_27_0();
}

unint64_t sub_26A6ABDDC()
{
  result = qword_28157FD10;
  if (!qword_28157FD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28157FD10);
  }

  return result;
}

uint64_t sub_26A6ABE70(void (*a1)(void), uint64_t a2)
{
  a1();
  sub_26A84F998();
  return v3;
}

unint64_t sub_26A6ABEBC()
{
  result = qword_28157FD08;
  if (!qword_28157FD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28157FD08);
  }

  return result;
}

uint64_t (*EnvironmentValues.imageElementFixedHeight.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *a1 = v1;
  *(a1 + 8) = sub_26A6ABB90();
  sub_26A84F998();
  *(a1 + 16) = *(a1 + 17);
  return sub_26A6ABFE8;
}

uint64_t (*EnvironmentValues.imageElementFixedWidth.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *a1 = v1;
  *(a1 + 8) = sub_26A6ABB3C();
  sub_26A84F998();
  *(a1 + 16) = *(a1 + 17);
  return sub_26A6AC05C;
}

uint64_t sub_26A6AC098@<X0>(uint64_t a1@<X8>)
{
  if (qword_28157FD58 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AFE50, &unk_26A867F20);
  v3 = __swift_project_value_buffer(v2, qword_281588A18);
  return sub_26A51D0F8(v3, a1, &qword_2803AFE50, &unk_26A867F20);
}

uint64_t sub_26A6AC128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_26A6ACD6C();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t EnvironmentValues.imageElementImageStyle.getter()
{
  v0 = sub_26A6AC1CC();
  OUTLINED_FUNCTION_2_39(v0, &unk_287B1EA50);

  return sub_26A84F998();
}

unint64_t sub_26A6AC1CC()
{
  result = qword_28157FD48;
  if (!qword_28157FD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28157FD48);
  }

  return result;
}

uint64_t sub_26A6AC250(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  v9 = OUTLINED_FUNCTION_50_0(a1, a2);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
  OUTLINED_FUNCTION_79(v11);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v12);
  v14 = sub_26A51D0F8(a1, &v16 - v13, a2, a3);
  a4(v14);
  sub_26A84F9A8();
  return sub_26A6AC8E8(a1, a2);
}

void (*EnvironmentValues.imageElementImageStyle.modify())(uint64_t a1, uint64_t a2)
{
  v1 = __swift_coroFrameAllocStub(0x28uLL);
  OUTLINED_FUNCTION_5_52(v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AFE50, &unk_26A867F20);
  OUTLINED_FUNCTION_79(v2);
  v4 = *(v3 + 64);
  v0[1] = __swift_coroFrameAllocStub(v4);
  v0[2] = __swift_coroFrameAllocStub(v4);
  v0[3] = __swift_coroFrameAllocStub(v4);
  v0[4] = sub_26A6AC1CC();
  sub_26A84F998();
  return sub_26A6AC3E0;
}

uint64_t sub_26A6AC42C@<X0>(uint64_t a1@<X8>)
{
  if (qword_28157FCD0 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC918, &qword_26A85DBA0);
  v3 = __swift_project_value_buffer(v2, qword_2815889E8);
  return sub_26A51D0F8(v3, a1, &qword_2803AC918, &qword_26A85DBA0);
}

uint64_t sub_26A6AC4BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_26A6ACC34();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

void (*EnvironmentValues.imageElementRenderingMode.modify())(uint64_t a1, uint64_t a2)
{
  v1 = __swift_coroFrameAllocStub(0x28uLL);
  OUTLINED_FUNCTION_5_52(v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC918, &qword_26A85DBA0);
  OUTLINED_FUNCTION_79(v2);
  v4 = *(v3 + 64);
  v0[1] = __swift_coroFrameAllocStub(v4);
  v0[2] = __swift_coroFrameAllocStub(v4);
  v0[3] = __swift_coroFrameAllocStub(v4);
  v0[4] = sub_26A6ABAE8();
  sub_26A84F998();
  return sub_26A6AC5EC;
}

void sub_26A6AC608()
{
  OUTLINED_FUNCTION_28_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = *v6;
  sub_26A51D0F8((*v6)[3], (*v6)[2], v2, v0);
  v8 = v7[3];
  v9 = v7[1];
  v10 = v7[2];
  if (v5)
  {
    sub_26A51D0F8(v7[2], v7[1], v3, v1);
    sub_26A84F9A8();
    sub_26A6AC8E8(v10, v3);
  }

  else
  {
    sub_26A84F9A8();
  }

  sub_26A6AC8E8(v8, v3);
  free(v8);
  free(v10);
  free(v9);
  OUTLINED_FUNCTION_27_0();

  free(v11);
}

uint64_t sub_26A6AC718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t (*a5)(void))
{
  v7 = OUTLINED_FUNCTION_50_0(a1, a2);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  __swift_allocate_value_buffer(v9, a4);
  v10 = __swift_project_value_buffer(v9, a4);
  v11 = a5(0);

  return __swift_storeEnumTagSinglePayload(v10, 1, 1, v11);
}

uint64_t sub_26A6AC794@<X0>(uint64_t a1@<X8>)
{
  if (qword_28157FCE8 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ABFE8, &unk_26A874680);
  v3 = __swift_project_value_buffer(v2, qword_281588A00);
  return sub_26A51D0F8(v3, a1, &qword_2803ABFE8, &unk_26A874680);
}

uint64_t EnvironmentValues.imageSymbolRenderingMode.getter()
{
  v0 = sub_26A6AC864();
  OUTLINED_FUNCTION_2_39(v0, &unk_287B1EA30);

  return sub_26A84F998();
}

unint64_t sub_26A6AC864()
{
  result = qword_28157FCD8;
  if (!qword_28157FCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28157FCD8);
  }

  return result;
}

uint64_t sub_26A6AC8E8(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_50_0(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_46();
  (*(v5 + 8))(a1);
  return a1;
}

void (*EnvironmentValues.imageSymbolRenderingMode.modify())()
{
  v1 = __swift_coroFrameAllocStub(0x28uLL);
  OUTLINED_FUNCTION_5_52(v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ABFE8, &unk_26A874680);
  OUTLINED_FUNCTION_79(v2);
  v4 = *(v3 + 64);
  v0[1] = __swift_coroFrameAllocStub(v4);
  v0[2] = __swift_coroFrameAllocStub(v4);
  v0[3] = __swift_coroFrameAllocStub(v4);
  v0[4] = sub_26A6AC864();
  sub_26A84F998();
  return sub_26A6ACA08;
}

uint64_t (*EnvironmentValues.imageElementFrameWidth.modify(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[4] = v1;
  v3[5] = sub_26A6ABDDC();
  sub_26A84F998();
  OUTLINED_FUNCTION_9_41();
  return sub_26A6ACAA4;
}

uint64_t (*EnvironmentValues.imageElementFrameHeight.modify(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[4] = v1;
  v3[5] = sub_26A6ABEBC();
  sub_26A84F998();
  OUTLINED_FUNCTION_9_41();
  return sub_26A6ACB30;
}

void sub_26A6ACB3C(void **a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*a1 + 8);
  v3 = *a1;
  *(v3 + 2) = **a1;
  v3[24] = v4;
  sub_26A84F9A8();

  free(v3);
}

uint64_t sub_26A6ACB90(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    v4 = OUTLINED_FUNCTION_50_0(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v4, v5);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26A6ACC34()
{
  result = qword_2803B3688;
  if (!qword_2803B3688)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AC918, &qword_26A85DBA0);
    sub_26A6ACE20(&qword_2803AC950, MEMORY[0x277CE1030], MEMORY[0x277CE1040]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B3688);
  }

  return result;
}

unint64_t sub_26A6ACCE8()
{
  result = qword_2803B3690;
  if (!qword_2803B3690)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AA470, &qword_26A8560B0);
    sub_26A504FB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B3690);
  }

  return result;
}

unint64_t sub_26A6ACD6C()
{
  result = qword_28157FFE0;
  if (!qword_28157FFE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AFE50, &unk_26A867F20);
    sub_26A6ACE20(&qword_28157FFF0, MEMORY[0x277D62C10], MEMORY[0x277D62C30]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28157FFE0);
  }

  return result;
}

uint64_t sub_26A6ACE20(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *OUTLINED_FUNCTION_5_52(void *result)
{
  *v1 = result;
  *result = v2;
  return result;
}

void OUTLINED_FUNCTION_9_41()
{
  v1 = *(v0 + 24);
  *v0 = *(v0 + 16);
  *(v0 + 8) = v1;
}

uint64_t View.componentTapped(isNavigation:perform:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C8, &unk_26A856820);
  OUTLINED_FUNCTION_79(v8);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v9);
  v11 = &v14 - v10;
  swift_getKeyPath();
  *v11 = a2;
  *(v11 + 1) = a3;
  v11[16] = a1;
  v12 = type metadata accessor for ActionType(0);
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v12);

  sub_26A8509A8();

  return sub_26A4DBD10(v11, &qword_2803A91C8, &unk_26A856820);
}

BOOL sub_26A6ACFB8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_26A84B058();
  OUTLINED_FUNCTION_15();
  v29 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_41();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B38C0, &unk_26A857FC0);
  OUTLINED_FUNCTION_79(v10);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v11);
  v13 = &v28 - v12;
  v14 = sub_26A84BAB8();
  OUTLINED_FUNCTION_15();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_41();
  v20 = v19 - v18;
  type metadata accessor for ActionType(0);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_41();
  v24 = v23 - v22;
  sub_26A576E7C(v2, v23 - v22);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v16 + 32))(v20, v24, v14);
    VRXIdiom.idiom.getter(a1, v9);
    sub_26A84BAA8();
    (*(v29 + 8))(v9, v4);
    (*(v16 + 8))(v20, v14);
    v25 = sub_26A84E278();
    v26 = __swift_getEnumTagSinglePayload(v13, 1, v25) != 1;
    sub_26A4DBD10(v13, &qword_2803B38C0, &unk_26A857FC0);
  }

  else
  {
    sub_26A576EE0(v24);
    return 1;
  }

  return v26;
}

uint64_t sub_26A6AD22C()
{
  sub_26A6AD850();

  return sub_26A84F998();
}

uint64_t type metadata accessor for ActionType(uint64_t a1)
{
  result = qword_28157FAC0;
  if (!qword_28157FAC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_26A6AD2C0()
{
  result = qword_2803AA878;
  if (!qword_2803AA878)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2803B36A0, &qword_26A859400);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AA878);
  }

  return result;
}

void sub_26A6AD324(uint64_t a1)
{
  sub_26A6AD3DC(319, &unk_2803B36B0, &qword_2803ADFC0, &qword_26A875650);
  if (v1 <= 0x3F)
  {
    sub_26A84BAB8();
    if (v2 <= 0x3F)
    {
      sub_26A6AD3DC(319, &qword_2803B36C0, &unk_2803B3630, &unk_26A860BE0);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_26A6AD3DC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_26A6AD444(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C8, &unk_26A856820);
  OUTLINED_FUNCTION_79(v2);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v3);
  sub_26A6AD7E0(a1, &v6 - v4);
  sub_26A6AD850();
  sub_26A84F9A8();
  return sub_26A4DBD10(a1, &qword_2803A91C8, &unk_26A856820);
}

uint64_t sub_26A6AD4FC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_26A84B058();
  OUTLINED_FUNCTION_15();
  v30 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_41();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B38C0, &unk_26A857FC0);
  OUTLINED_FUNCTION_79(v10);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v11);
  v13 = &v29 - v12;
  v14 = sub_26A84BAB8();
  OUTLINED_FUNCTION_15();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_41();
  v20 = v19 - v18;
  type metadata accessor for ActionType(0);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_41();
  v24 = v23 - v22;
  sub_26A576E7C(v2, v23 - v22);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v16 + 32))(v20, v24, v14);
      VRXIdiom.idiom.getter(a1, v9);
      sub_26A84BAA8();
      (*(v30 + 8))(v9, v4);
      v26 = sub_26A84E278();
      if (__swift_getEnumTagSinglePayload(v13, 1, v26) == 1)
      {
        (*(v16 + 8))(v20, v14);
        sub_26A4DBD10(v13, &qword_2803B38C0, &unk_26A857FC0);
        v27 = 0;
      }

      else
      {
        v27 = sub_26A84E258();
        (*(v16 + 8))(v20, v14);
        (*(*(v26 - 8) + 8))(v13, v26);
      }
    }

    else
    {
      v27 = *(v24 + 8);
    }
  }

  else
  {
    v27 = *(v24 + 16);
  }

  return v27 & 1;
}

uint64_t sub_26A6AD7E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C8, &unk_26A856820);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_26A6AD850()
{
  result = qword_28157E1C0;
  if (!qword_28157E1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28157E1C0);
  }

  return result;
}

uint64_t sub_26A6AD8B4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C8, &unk_26A856820);
  __swift_allocate_value_buffer(v0, qword_28157E1E0);
  v1 = __swift_project_value_buffer(v0, qword_28157E1E0);
  v2 = type metadata accessor for ActionType(0);

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, v2);
}

uint64_t sub_26A6AD930@<X0>(uint64_t a1@<X8>)
{
  if (qword_28157E1D0 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C8, &unk_26A856820);
  v3 = __swift_project_value_buffer(v2, qword_28157E1E0);

  return sub_26A6AD7E0(v3, a1);
}

id UEIKeyboardInvocationEvent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void sub_26A6AD9F0(uint64_t a1)
{
  v3 = sub_26A6ADD30();
  if (v3)
  {
    v4 = v3;
    KeyPath = swift_getKeyPath();
    v7 = v4;
    v6 = sub_26A5E0C54(v4, KeyPath, a1);

    if (v6)
    {
      __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC9SnippetUI26UEIKeyboardInvocationEvent_instrumentationClient), *(v1 + OBJC_IVAR____TtC9SnippetUI26UEIKeyboardInvocationEvent_instrumentationClient + 24));
      sub_26A58733C(v6);
    }
  }
}

void sub_26A6ADBA0()
{
  v1 = sub_26A84AC88();
  [v0 emitWithTurnIdentifier_];
}

void *sub_26A6ADD30()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D5A7F0]) init];
  v1 = objc_opt_self();

  v2 = sub_26A851788();

  v3 = [v1 convertLanguageCodeToSchemaLocale_];

  [v0 setKeyboardLocale_];
  if (v0)
  {
    [v0 setKeyboardPresented_];
  }

  v4 = [objc_allocWithZone(MEMORY[0x277D5A928]) init];
  v5 = v4;
  if (v4)
  {
    [v4 setInvocationSource_];
  }

  v6 = v5;
  [v6 setKeyboardInvocationContext_];

  return v5;
}

id UEIKeyboardInvocationEvent.init()()
{
  v1 = &v0[OBJC_IVAR____TtC9SnippetUI26UEIKeyboardInvocationEvent_instrumentationClient];
  v2 = type metadata accessor for StandardSELFInstrumentationClient();
  v3 = swift_allocObject();
  v1[3] = v2;
  v1[4] = &off_287B17ED8;
  *v1 = v3;
  v4 = [objc_opt_self() sharedApplication];
  v5 = [v4 textInputMode];

  if (!v5 || (v6 = sub_26A6AE008(v5), !v7))
  {

    v6 = 0;
    v7 = 0xE000000000000000;
  }

  v8 = &v0[OBJC_IVAR____TtC9SnippetUI26UEIKeyboardInvocationEvent_keyboardPrimaryLanguage];
  *v8 = v6;
  v8[1] = v7;
  v10.receiver = v0;
  v10.super_class = type metadata accessor for UEIKeyboardInvocationEvent();
  return objc_msgSendSuper2(&v10, sel_init);
}

id UEIKeyboardInvocationEvent.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UEIKeyboardInvocationEvent();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_26A6AE008(void *a1)
{
  v2 = [a1 primaryLanguage];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_26A8517B8();

  return v3;
}

uint64_t sub_26A6AE0A4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 191))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
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

uint64_t sub_26A6AE0E4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
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
    *(result + 190) = 0;
    *(result + 188) = 0;
    *(result + 184) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 191) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 191) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_26A6AE178(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xF5 && *(a1 + 9))
    {
      v2 = *a1 + 244;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 0xB)
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

uint64_t sub_26A6AE1B8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF4)
  {
    *(result + 8) = 0;
    *result = a2 - 245;
    if (a3 >= 0xF5)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF5)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

unint64_t sub_26A6AE208(uint64_t a1)
{
  result = sub_26A5046B4();
  if (v2 <= 0x3F)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B1D80, &qword_26A8593E0);
    sub_26A4E325C();
    result = sub_26A8516D8();
    if (v3 <= 0x3F)
    {
      swift_getTupleTypeMetadata2();
      result = sub_26A851B48();
      if (v4 <= 0x3F)
      {
        result = swift_checkMetadataState();
        if (v5 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_26A6AE314(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (v6 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v9 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_23;
  }

  v10 = ((v7 + 32) & ~v7) + *(*(v4 - 8) + 64);
  v11 = 8 * v10;
  if (v10 <= 3)
  {
    v14 = ((v9 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 < 2)
    {
LABEL_23:
      if ((v6 & 0x80000000) != 0)
      {
        return __swift_getEnumTagSinglePayload((((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v7 + 8) & ~v7, v6, v4);
      }

      v16 = *a1;
      if (*a1 >= 0xFFFFFFFFuLL)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_23;
  }

LABEL_15:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    switch(v10)
    {
      case 2:
        LODWORD(v10) = *a1;
        break;
      case 3:
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v10) = *a1;
        break;
      default:
        LODWORD(v10) = *a1;
        break;
    }
  }

  return v8 + (v10 | v15) + 1;
}

void sub_26A6AE4A4(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = ((v10 + 32) & ~v10) + *(*(v6 - 8) + 64);
  v12 = 8 * v11;
  v13 = a3 >= v9;
  v14 = a3 - v9;
  if (v14 != 0 && v13)
  {
    if (v11 <= 3)
    {
      v18 = ((v14 + ~(-1 << v12)) >> v12) + 1;
      if (HIWORD(v18))
      {
        v15 = 4;
      }

      else
      {
        if (v18 < 0x100)
        {
          v19 = 1;
        }

        else
        {
          v19 = 2;
        }

        if (v18 >= 2)
        {
          v15 = v19;
        }

        else
        {
          v15 = 0;
        }
      }
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 0;
  }

  if (v9 >= a2)
  {
    switch(v15)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_45:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          if ((v8 & 0x80000000) != 0)
          {
            v22 = (((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v10 + 8) & ~v10;

            __swift_storeEnumTagSinglePayload(v22, a2, v8, v6);
          }

          else
          {
            if ((a2 & 0x80000000) != 0)
            {
              v21 = a2 & 0x7FFFFFFF;
              *(a1 + 1) = 0;
            }

            else
            {
              v21 = (a2 - 1);
            }

            *a1 = v21;
          }
        }

        break;
    }
  }

  else
  {
    v16 = ~v9 + a2;
    if (v11 < 4)
    {
      v17 = (v16 >> v12) + 1;
      if (v11)
      {
        v20 = v16 & ~(-1 << v12);
        bzero(a1, v11);
        if (v11 == 3)
        {
          *a1 = v20;
          a1[2] = BYTE2(v20);
        }

        else if (v11 == 2)
        {
          *a1 = v20;
        }

        else
        {
          *a1 = v16;
        }
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v16;
      v17 = 1;
    }

    switch(v15)
    {
      case 1:
        a1[v11] = v17;
        break;
      case 2:
        *&a1[v11] = v17;
        break;
      case 3:
        goto LABEL_45;
      case 4:
        *&a1[v11] = v17;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_26A6AE718@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v29 = a3;
  v30 = a6;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B1D80, &qword_26A8593E0);
  v27 = a5;
  v11 = *(a5 + 16);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  sub_26A852068();
  OUTLINED_FUNCTION_2_34();
  v25 = v14;
  v26 = v13;
  MEMORY[0x28223BE20](v13);
  v16 = &v25 - v15;
  OUTLINED_FUNCTION_2_34();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v25 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = v6;
  v39 = *(v6 + 24);
  v31 = v11;
  v32 = a1;
  v33 = a2;
  v34 = v29;
  v35 = a4 & 1;
  v22 = vdupq_n_s64(a4);
  *v22.i8 = vand_s8(vmovn_s32(vuzp1q_s32(vshlq_u64(v22, xmmword_26A874A70), vshlq_u64(v22, xmmword_26A874A60))), 0x1000100010001);
  v36 = vuzp1_s8(*v22.i8, *v22.i8).u32[0];
  v37 = BYTE5(a4) & 1;
  v38 = BYTE6(a4) & 1;
  sub_26A851B48();

  swift_getWitnessTable();
  sub_26A851A18();

  if (__swift_getEnumTagSinglePayload(v16, 1, TupleTypeMetadata2) == 1)
  {
    (*(v25 + 8))(v16, v26);
    return (*(v18 + 16))(v30, v28 + *(v27 + 36), v11);
  }

  else
  {

    v24 = *(v18 + 32);
    v24(v21, &v16[*(TupleTypeMetadata2 + 48)], v11);
    return (v24)(v30, v21, v11);
  }
}

double sub_26A6AE9E8(uint64_t a1, char a2)
{
  sub_26A851848();

  return result;
}

double sub_26A6AEA64(void *a1, char a2)
{
  switch(a2)
  {
    case 2:
      OUTLINED_FUNCTION_13_29();
      break;
    default:
      break;
  }

  sub_26A851848();

  return result;
}

double sub_26A6AEB20(uint64_t a1, unsigned __int8 a2)
{
  sub_26A851848();

  return result;
}

double sub_26A6AEBD0(void *a1, char a2)
{
  switch(a2)
  {
    case 1:
    case 2:
    case 3:
      OUTLINED_FUNCTION_13_29();
      break;
    default:
      break;
  }

  sub_26A851848();

  return result;
}

uint64_t sub_26A6AEC98(uint64_t a1, char a2)
{
  v2 = 0.0;
  if (a2)
  {
    v2 = 1.0;
  }

  if (v2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = v2;
  }

  return MEMORY[0x26D664950](*&v3);
}

double sub_26A6AECD8(uint64_t a1, char a2)
{
  sub_26A6300C8(a2);
  sub_26A851848();

  return result;
}

double sub_26A6AED2C(uint64_t a1, unsigned __int8 a2)
{
  sub_26A851848();

  return result;
}

double sub_26A6AEDCC(uint64_t a1, char a2)
{
  sub_26A851848();

  return result;
}

double sub_26A6AEE1C(uint64_t a1, char a2)
{
  sub_26A851848();

  return result;
}

uint64_t sub_26A6AEE74@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  v27[0] = 0;
  v15 = swift_getKeyPath();
  v26[0] = 0;
  v14 = swift_getKeyPath();
  v25[0] = 0;
  v13 = swift_getKeyPath();
  v24[0] = 0;
  v2 = swift_getKeyPath();
  v23[0] = 0;
  v3 = swift_getKeyPath();
  v22[0] = 0;
  v4 = swift_getKeyPath();
  v21[0] = 0;
  v5 = swift_getKeyPath();
  v20[0] = 0;
  v6 = swift_getKeyPath();
  v19[0] = 0;
  v7 = swift_getKeyPath();
  v18[0] = 0;
  if (qword_28157F7C0 != -1)
  {
    swift_once();
  }

  v8 = qword_2815889C0;
  if (qword_2803A8B88 != -1)
  {
    swift_once();
  }

  v9 = byte_2803D1D8A;
  if (qword_28157FAE8 != -1)
  {
    swift_once();
  }

  v10 = byte_2815889D0;
  if (qword_2803A8B80 != -1)
  {
    swift_once();
  }

  v11 = byte_2803D1D89;
  result = 0;
  *a1 = KeyPath;
  *(a1 + 8) = 0;
  *(a1 + 9) = *v27;
  *(a1 + 12) = *&v27[3];
  *(a1 + 16) = v15;
  *(a1 + 24) = 0;
  *(a1 + 25) = *v26;
  *(a1 + 28) = *&v26[3];
  *(a1 + 32) = v14;
  *(a1 + 40) = 0;
  *(a1 + 44) = *&v25[3];
  *(a1 + 41) = *v25;
  *(a1 + 48) = v13;
  *(a1 + 56) = 0;
  *(a1 + 60) = *&v24[3];
  *(a1 + 57) = *v24;
  *(a1 + 64) = v2;
  *(a1 + 72) = 0;
  *(a1 + 76) = *&v23[3];
  *(a1 + 73) = *v23;
  *(a1 + 80) = v3;
  *(a1 + 88) = 0;
  *(a1 + 92) = *&v22[3];
  *(a1 + 89) = *v22;
  *(a1 + 96) = v4;
  *(a1 + 104) = 0;
  *(a1 + 108) = *&v21[3];
  *(a1 + 105) = *v21;
  *(a1 + 112) = v5;
  *(a1 + 120) = 0;
  *(a1 + 124) = *&v20[3];
  *(a1 + 121) = *v20;
  *(a1 + 128) = v6;
  *(a1 + 136) = 0;
  *(a1 + 140) = *&v19[3];
  *(a1 + 137) = *v19;
  *(a1 + 144) = v7;
  *(a1 + 152) = 0;
  *(a1 + 156) = *&v18[3];
  *(a1 + 153) = *v18;
  *(a1 + 160) = v8;
  *(a1 + 168) = v9;
  *(a1 + 172) = *&v17[3];
  *(a1 + 169) = *v17;
  *(a1 + 176) = 1;
  *(a1 + 184) = v10;
  *(a1 + 185) = 0;
  *(a1 + 186) = v11;
  *(a1 + 187) = 0;
  return result;
}

uint64_t sub_26A6AF1BC(uint64_t result)
{
  v1 = 0;
  v2 = 0;
  v3 = 1 << *(result + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(result + 56);
  while (v5)
  {
    v6 = v1;
LABEL_10:
    v7 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v8 = qword_26A8751D0[*(*(result + 48) + ((v6 << 10) | (16 * v7)) + 8)];
    v9 = __OFADD__(v2, v8);
    v2 += v8;
    if (v9)
    {
      __break(1u);
      return v2;
    }
  }

  while (1)
  {
    v6 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      break;
    }

    if (v6 >= ((v3 + 63) >> 6))
    {
      return v2;
    }

    v5 = *(result + 56 + 8 * v6);
    ++v1;
    if (v5)
    {
      v1 = v6;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26A6AF268(uint64_t result)
{
  v1 = 0;
  v2 = 0;
  v3 = 1 << *(result + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(result + 56);
  v6 = (v3 + 63) >> 6;
  while (v5)
  {
LABEL_9:
    v8 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v9 = (*(result + 48) + ((v1 << 10) | (16 * v8)));
    if (!v9[8])
    {
      v10 = *(*v9 + 16);
      v11 = __OFADD__(v2, v10);
      v2 += v10;
      if (v11)
      {
        __break(1u);
        return v2;
      }
    }
  }

  while (1)
  {
    v7 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      break;
    }

    if (v7 >= v6)
    {
      return v2;
    }

    v5 = *(result + 56 + 8 * v7);
    ++v1;
    if (v5)
    {
      v1 = v7;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_26A6AF30C(uint64_t a1, char a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v9 = a5 + 56;
  OUTLINED_FUNCTION_2_69();
  v12 = v11 & v10;
  v14 = (v13 + 63) >> 6;
  v41 = v15;

  v16 = 0;
  v44 = a4;
  v40 = HIDWORD(a4) & 1;
  v17 = 2.0;
  v18 = 3.0;
LABEL_2:
  while (2)
  {
    if (v12)
    {
      goto LABEL_7;
    }

    do
    {
      v19 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        return;
      }

      if (v19 >= v14)
      {
        goto LABEL_72;
      }

      v12 = *(v9 + 8 * v19);
      ++v16;
    }

    while (!v12);
    v16 = v19;
LABEL_7:
    v20 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v21 = *(a5 + 48) + ((v16 << 10) | (16 * v20));
    v22 = *v21;
    v23 = *(v21 + 8);
    switch(*(v21 + 8))
    {
      case 0:
        if (!*(v22 + 16))
        {
          goto LABEL_37;
        }

        sub_26A8526B8();
        MEMORY[0x26D664930](v41);
        a4 = v45;
        v24 = sub_26A8526F8();
        v25 = ~(-1 << *(v22 + 32));
        while (1)
        {
          v26 = v24 & v25;
          if (((*(v22 + 56 + (((v24 & v25) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v24 & v25)) & 1) == 0)
          {
            break;
          }

          v24 = v26 + 1;
          if (*(*(v22 + 48) + 8 * v26) == v41)
          {
            goto LABEL_2;
          }
        }

LABEL_37:
        sub_26A4E324C(v22, 0);
        goto LABEL_52;
      case 1:
        OUTLINED_FUNCTION_6_45();
        v30 = v29;
        v31 = 0xE900000000000074;
        switch(v32)
        {
          case 1:
            v31 = 0xE400000000000000;
            v30 = 1769105747;
            break;
          case 2:
            v30 = 0xD000000000000010;
            v31 = 0x800000026A88A230;
            break;
          case 3:
            v30 = OUTLINED_FUNCTION_12_32();
            v31 = 0xEC00000069726166;
            break;
          default:
            break;
        }

        switch(a2)
        {
          case 1:
            a4 = 0xE400000000000000;
            v29 = 1769105747;
            break;
          case 2:
            v29 = 0xD000000000000010;
            a4 = 0x800000026A88A230;
            break;
          case 3:
            OUTLINED_FUNCTION_5_53();
            break;
          default:
            break;
        }

        if (v30 == v29 && v31 == a4)
        {
        }

        else
        {
          v36 = sub_26A852598();

          if ((v36 & 1) == 0)
          {
            goto LABEL_52;
          }
        }

        continue;
      case 2:
        if (v22 != a3)
        {
          goto LABEL_52;
        }

        continue;
      case 3:
        a4 = *v21 & 1;
        if (sub_26A84BBC8() & 1) != a4 || ((sub_26A84BBC8() ^ v44))
        {
          goto LABEL_52;
        }

        continue;
      case 4:
        a4 = (v44 >> 8) & 1 ^ v22;
        sub_26A4E324C(v22, 4);
        if ((BYTE1(v44) & 1 ^ v22))
        {
          goto LABEL_52;
        }

        continue;
      case 5:
        v28 = *v21 & 1;
        sub_26A4E324C(*v21, 5);
        if (_UISolariumEnabled() != v28)
        {
          goto LABEL_52;
        }

        a4 = (v44 >> 16) & 1;
        if (a4 != _UISolariumEnabled())
        {
          goto LABEL_52;
        }

        continue;
      case 7:
        if (v22)
        {
          v33 = 375.0;
        }

        else
        {
          v33 = 414.0;
        }

        a4 = [objc_opt_self() mainScreen];
        [a4 _referenceBounds];
        OUTLINED_FUNCTION_75_0();

        v46.origin.x = v5;
        v46.origin.y = v17;
        v17 = 2.0;
        v46.size.width = v18;
        v18 = 3.0;
        v46.size.height = v6;
        if (v33 > CGRectGetWidth(v46))
        {
          goto LABEL_52;
        }

        continue;
      case 0xB:
        v27 = (v44 >> 40) & 1;
        goto LABEL_28;
      default:
        sub_26A4E324C(*v21, *(v21 + 8));
        if (v23 != 8)
        {
          if (v23 == 10)
          {
            if (v40 != (v22 & 1))
            {
              goto LABEL_52;
            }
          }

          else
          {
            if (v23 != 9)
            {
              goto LABEL_52;
            }

            v27 = (v44 >> 24) & 1;
LABEL_28:
            if ((v27 ^ v22))
            {
LABEL_52:
              v34 = 3;
              goto LABEL_53;
            }
          }

          continue;
        }

        v34 = v22;
LABEL_53:
        a4 = [objc_opt_self() mainScreen];
        [a4 scale];
        v5 = v37;

        if (v5 == 1.0)
        {
          v38 = 0;
        }

        else if (v5 == v17)
        {
          v38 = 1;
        }

        else
        {
          v38 = 2;
        }

        v39 = 1.0;
        switch(v34)
        {
          case 1:
            v39 = 2.0;
            goto LABEL_60;
          case 2:
            v39 = 3.0;
            if (!v38)
            {
              goto LABEL_65;
            }

            goto LABEL_61;
          case 3:
            goto LABEL_66;
          default:
LABEL_60:
            if (!v38)
            {
LABEL_65:
              if (v39 != 1.0)
              {
                goto LABEL_66;
              }

              goto LABEL_63;
            }

LABEL_61:
            if (v38 != 1)
            {
              if (v39 != v18)
              {
                goto LABEL_66;
              }

LABEL_63:
              sub_26A587EE4(v22, v23);
              continue;
            }

            if (v39 == v17)
            {
              goto LABEL_63;
            }

LABEL_66:
            if (v23 == 6)
            {
              if ((HIWORD(v44) & 1 ^ v22))
              {
                goto LABEL_72;
              }

              continue;
            }

            sub_26A587EE4(v22, v23);
LABEL_72:

            return;
        }
    }
  }
}

BOOL sub_26A6AF834(uint64_t *a1, uint64_t a2)
{
  v7 = *a1;
  v8 = *(a1 + 8);
  if (!*(a1 + 8))
  {
    v12 = OBJC_IVAR____TtC9SnippetUI7Context_currentIdiom;
    swift_beginAccess();
    if (sub_26A6B4FA4(*(a2 + v12), v7))
    {
      return 1;
    }

    goto LABEL_12;
  }

  if (v8 == 1)
  {
    if (*a1 != 4 && (sub_26A62F904(*a1, *(a2 + OBJC_IVAR____TtC9SnippetUI7Context_currentProcess)) & 1) != 0)
    {
      return 1;
    }

    goto LABEL_12;
  }

  if (v8 != 7)
  {
LABEL_12:
    v11 = 0;
    goto LABEL_13;
  }

  if (v7)
  {
    v9 = 375.0;
  }

  else
  {
    v9 = 414.0;
  }

  v10 = [objc_opt_self() mainScreen];
  [v10 _referenceBounds];
  OUTLINED_FUNCTION_75_0();

  v21.origin.x = v2;
  v21.origin.y = v3;
  v21.size.width = v4;
  v21.size.height = v5;
  v11 = v9 <= CGRectGetWidth(v21);
LABEL_13:
  v13 = OBJC_IVAR____TtC9SnippetUI7Context_visualResponseLocation;
  swift_beginAccess();
  if (v8 == 2)
  {
    if (v7 == *(a2 + v13))
    {
      return 1;
    }

    sub_26A61C83C();
  }

  else
  {
    v14 = sub_26A61C83C();
    if (v8 == 3)
    {
      if ((sub_26A84BBC8() & 1) == (v7 & 1))
      {
        v15 = sub_26A84BBC8() & 1;
        goto LABEL_22;
      }
    }

    else if (v8 == 11 && (v14 & 1) == (v7 & 1))
    {
      return 1;
    }
  }

  v15 = 2;
LABEL_22:
  if (v15 != 2 && ((*(a2 + OBJC_IVAR____TtC9SnippetUI7Context_isModernizedSnippet) ^ v15) & 1) == 0)
  {
    return 1;
  }

  if (v8 == 5)
  {
    if (_UISolariumEnabled() == (v7 & 1))
    {
      v16 = _UISolariumEnabled();
      goto LABEL_30;
    }
  }

  else if (v8 == 4 && *(a2 + OBJC_IVAR____TtC9SnippetUI7Context_isSpotlightPlus) == (v7 & 1))
  {
    return 1;
  }

  v16 = 2;
LABEL_30:
  if (v16 != 2 && ((*(a2 + OBJC_IVAR____TtC9SnippetUI7Context_isSolariumEnabled) ^ v16) & 1) == 0)
  {
    return 1;
  }

  if (v8 == 8)
  {
    v17 = v7 << 56;
    if (*(a2 + OBJC_IVAR____TtC9SnippetUI7Context_deviceScaleFactor))
    {
      if (*(a2 + OBJC_IVAR____TtC9SnippetUI7Context_deviceScaleFactor) == 1)
      {
        v18 = 0x100000000000000;
      }

      else
      {
        v18 = 0x200000000000000;
      }

      if (v17 == v18)
      {
        return 1;
      }

      goto LABEL_42;
    }

    if (v17)
    {
      goto LABEL_42;
    }

    return 1;
  }

LABEL_42:
  v19 = sub_26A61CE1C();
  if (v8 == 6 && ((v19 ^ v7) & 1) == 0)
  {
    return 1;
  }

  return v11;
}

void sub_26A6AFAEC()
{
  v1 = sub_26A84F988();
  OUTLINED_FUNCTION_2_34();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  v6 = &v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = *v0;
  if ((*(v0 + 8) & 1) == 0)
  {
    v7 = v84;

    sub_26A851EA8();
    v8 = sub_26A8501F8();
    OUTLINED_FUNCTION_1_69(v8, &dword_26A48D000, v9, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", v10, v11, MEMORY[0x277D84F90]);

    sub_26A84F978();
    OUTLINED_FUNCTION_3_60();
    swift_getAtKeyPath();
    v12 = OUTLINED_FUNCTION_0_69(v7);
    v13(v12);
    v84 = v85;
  }

  v14 = *(v0 + 96);
  if (*(v0 + 104) != 1)
  {

    sub_26A851EA8();
    v15 = sub_26A8501F8();
    OUTLINED_FUNCTION_1_69(v15, &dword_26A48D000, v16, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", v17, v18, MEMORY[0x277D84F90]);

    sub_26A84F978();
    OUTLINED_FUNCTION_3_60();
    swift_getAtKeyPath();
    v19 = OUTLINED_FUNCTION_0_69(v14);
    v20(v19);
    v14 = v85;
  }

  v21 = *(v0 + 16);
  if ((*(v0 + 24) & 1) == 0)
  {

    sub_26A851EA8();
    v22 = sub_26A8501F8();
    OUTLINED_FUNCTION_1_69(v22, &dword_26A48D000, v23, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", v24, v25, MEMORY[0x277D84F90]);

    sub_26A84F978();
    OUTLINED_FUNCTION_3_60();
    swift_getAtKeyPath();
    v26 = OUTLINED_FUNCTION_0_69(v21);
    v27(v26);
    v21 = v85;
  }

  v28 = *(v0 + 32);
  if (*(v0 + 40) != 1)
  {

    sub_26A851EA8();
    v29 = sub_26A8501F8();
    OUTLINED_FUNCTION_1_69(v29, &dword_26A48D000, v30, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", v31, v32, MEMORY[0x277D84F90]);

    sub_26A84F978();
    OUTLINED_FUNCTION_3_60();
    swift_getAtKeyPath();
    v33 = OUTLINED_FUNCTION_0_69(v28);
    v34(v33);
    v28 = v85;
  }

  v35 = *(v0 + 48);
  if (*(v0 + 56) != 1)
  {

    sub_26A851EA8();
    v36 = sub_26A8501F8();
    OUTLINED_FUNCTION_1_69(v36, &dword_26A48D000, v37, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", v38, v39, MEMORY[0x277D84F90]);

    sub_26A84F978();
    OUTLINED_FUNCTION_3_60();
    swift_getAtKeyPath();
    v40 = OUTLINED_FUNCTION_0_69(v35);
    v41(v40);
    v35 = v85;
  }

  v42 = *(v0 + 64);
  v43 = *(v0 + 72);
  v81 = v35;
  if (v43 != 1)
  {
    v44 = v42;

    sub_26A851EA8();
    v45 = sub_26A8501F8();
    OUTLINED_FUNCTION_1_69(v45, &dword_26A48D000, v46, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", v47, v48, MEMORY[0x277D84F90]);

    sub_26A84F978();
    OUTLINED_FUNCTION_3_60();
    swift_getAtKeyPath();
    v49 = OUTLINED_FUNCTION_0_69(v44);
    v50(v49);
    v42 = v85;
  }

  v51 = *(v0 + 112);
  v52 = *(v0 + 120);
  v80 = v42;
  if (v52 != 1)
  {

    sub_26A851EA8();
    v53 = sub_26A8501F8();
    OUTLINED_FUNCTION_1_69(v53, &dword_26A48D000, v54, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", v55, v56, MEMORY[0x277D84F90]);

    sub_26A84F978();
    OUTLINED_FUNCTION_3_60();
    swift_getAtKeyPath();
    v57 = OUTLINED_FUNCTION_0_69(v51);
    v58(v57);
    LOBYTE(v51) = v85;
  }

  v59 = *(v0 + 128);
  v60 = *(v0 + 136);
  v83 = v21;
  if (v60 != 1)
  {

    sub_26A851EA8();
    v61 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    OUTLINED_FUNCTION_3_60();
    swift_getAtKeyPath();
    v62 = OUTLINED_FUNCTION_0_69(v59);
    v63(v62);
    LOBYTE(v59) = v85;
  }

  v64 = *(v0 + 80);
  v65 = *(v0 + 88);
  v82 = v28;
  if (v65 != 1)
  {

    sub_26A851EA8();
    v66 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    OUTLINED_FUNCTION_3_60();
    swift_getAtKeyPath();
    v67 = OUTLINED_FUNCTION_0_69(v64);
    v68(v67);
    LOBYTE(v64) = v85;
  }

  v69 = *(v0 + 144);
  if (*(v0 + 152) != 1)
  {

    sub_26A851EA8();
    v70 = sub_26A8501F8();
    v79 = v14;
    v71 = v51;
    v51 = v1;
    v72 = v70;
    sub_26A84EA78();

    sub_26A84F978();
    OUTLINED_FUNCTION_3_60();
    swift_getAtKeyPath();
    sub_26A49035C(v69, 0);
    v73 = v51;
    LOBYTE(v51) = v71;
    LOBYTE(v14) = v79;
    (*(v3 + 8))(v6, v73);
    LOBYTE(v69) = v85;
  }

  v74 = v81;
  v75 = v80;
  v76 = v82 & 1;
  v77 = v83;
  *(v0 + 160) = v84;
  *(v0 + 168) = v14;
  *(v0 + 176) = v77;
  *(v0 + 184) = v76;
  *(v0 + 185) = v74 & 1;
  *(v0 + 186) = v75 & 1;
  *(v0 + 187) = v51 & 1;
  *(v0 + 188) = v59 & 1;
  *(v0 + 189) = v64 & 1;
  *(v0 + 190) = v69 & 1;
}

uint64_t sub_26A6B0248(uint64_t a1, char a2, uint64_t a3, char a4)
{
  switch(a2)
  {
    case 1:
      if (a4 != 1)
      {
        goto LABEL_29;
      }

      return sub_26A62F904(a1, a3);
    case 2:
      v7 = a4 == 2 && a1 == a3;
      return v7 & 1;
    case 3:
      v5 = a4 == 3;
      goto LABEL_22;
    case 4:
      v5 = a4 == 4;
      goto LABEL_22;
    case 5:
      v5 = a4 == 5;
      goto LABEL_22;
    case 6:
      v5 = a4 == 6;
      goto LABEL_22;
    case 7:
      v7 = a4 == 7 && ((a3 ^ a1) & 1) == 0;
      return v7 & 1;
    case 8:
      if (a4 != 8)
      {
        goto LABEL_29;
      }

      v8 = a1 << 56;
      if (a3)
      {
        if (a3 == 1)
        {
          v9 = 0x100000000000000;
        }

        else
        {
          v9 = 0x200000000000000;
        }

        if (v8 == v9)
        {
          goto LABEL_33;
        }

LABEL_29:
        v7 = 0;
        return v7 & 1;
      }

      if (v8)
      {
        goto LABEL_29;
      }

LABEL_33:
      v7 = 1;
      return v7 & 1;
    case 9:
      v5 = a4 == 9;
      goto LABEL_22;
    case 10:
      v5 = a4 == 10;
      goto LABEL_22;
    case 11:
      v5 = a4 == 11;
LABEL_22:
      v7 = a3 ^ a1 ^ 1;
      if (!v5)
      {
        v7 = 0;
      }

      return v7 & 1;
    default:
      if (a4)
      {
        goto LABEL_29;
      }

      return sub_26A6B067C(a1, a3);
  }
}

void sub_26A6B036C(void *a1, uint64_t a2, char a3)
{
  switch(a3)
  {
    case 1:
      MEMORY[0x26D664930](1);

      sub_26A6AEA64(a1, a2);
      return;
    case 2:
      MEMORY[0x26D664930](2);
      v6 = a2;
      goto LABEL_11;
    case 3:
      v5 = 3;
      goto LABEL_18;
    case 4:
      v5 = 4;
      goto LABEL_18;
    case 5:
      v5 = 5;
      goto LABEL_18;
    case 6:
      v5 = 6;
      goto LABEL_18;
    case 7:
      MEMORY[0x26D664930](7);
      v6 = a2 & 1;
LABEL_11:
      MEMORY[0x26D664930](v6);
      return;
    case 8:
      MEMORY[0x26D664930](8);

      sub_26A6AEB9C(a1, a2);
      return;
    case 9:
      v5 = 9;
      goto LABEL_18;
    case 10:
      v5 = 10;
      goto LABEL_18;
    case 11:
      v5 = 11;
LABEL_18:
      MEMORY[0x26D664930](v5);
      sub_26A8526D8();
      break;
    default:
      MEMORY[0x26D664930](0);

      sub_26A6B0C8C(a1, a2);
      break;
  }
}

uint64_t sub_26A6B049C(uint64_t a1, char a2)
{
  sub_26A8526B8();
  sub_26A6B036C(v5, a1, a2);
  return sub_26A8526F8();
}

uint64_t sub_26A6B0504(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  sub_26A8526B8();
  sub_26A6B036C(v5, v2, v3);
  return sub_26A8526F8();
}

unint64_t sub_26A6B056C()
{
  result = qword_28157E728;
  if (!qword_28157E728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28157E728);
  }

  return result;
}

uint64_t sub_26A6B05C0(uint64_t *a1)
{
  v2 = 256;
  if (!*(v1 + 49))
  {
    v2 = 0;
  }

  v3 = v2 | *(v1 + 48);
  v4 = 0x10000;
  if (!*(v1 + 50))
  {
    v4 = 0;
  }

  v5 = 0x1000000;
  if (!*(v1 + 51))
  {
    v5 = 0;
  }

  v6 = v3 | v4 | v5;
  v7 = 0x100000000;
  if (!*(v1 + 52))
  {
    v7 = 0;
  }

  v8 = 0x10000000000;
  if (!*(v1 + 53))
  {
    v8 = 0;
  }

  v9 = 0x1000000000000;
  if (!*(v1 + 54))
  {
    v9 = 0;
  }

  sub_26A6AF30C(*(v1 + 24), *(v1 + 32), *(v1 + 40), v6 | v7 | v8 | v9, *a1);
  return v10 & 1;
}

uint64_t sub_26A6B067C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
LABEL_7:
  if (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v13 = *(*(v3 + 48) + 8 * (v9 | (v4 << 6)));
    sub_26A8526B8();
    MEMORY[0x26D664930](v13);
    result = sub_26A8526F8();
    v14 = ~(-1 << *(a2 + 32));
    while (1)
    {
      v15 = result & v14;
      if (((*(a2 + 56 + (((result & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v14)) & 1) == 0)
      {
        return 0;
      }

      result = v15 + 1;
      if (*(*(a2 + 48) + 8 * v15) == v13)
      {
        goto LABEL_7;
      }
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    ++v10;
    if (*(v3 + 56 + 8 * v4))
    {
      OUTLINED_FUNCTION_2_66();
      v7 = v12 & v11;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

void sub_26A6B07D0(uint64_t a1, uint64_t a2)
{
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v3 = 0;
    v52 = a1 + 56;
    OUTLINED_FUNCTION_2_69();
    v7 = (v6 + 63) >> 6;
    v53 = v7;
    if ((v5 & v4) != 0)
    {
LABEL_4:
      OUTLINED_FUNCTION_10_40();
      v54 = v10;
      goto LABEL_10;
    }

LABEL_5:
    v11 = v3;
    do
    {
      v3 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
LABEL_85:
        __break(1u);
        return;
      }

      if (v3 >= v7)
      {
        return;
      }

      ++v11;
    }

    while (!*(v52 + 8 * v3));
    OUTLINED_FUNCTION_2_66();
    v54 = v13 & v12;
LABEL_10:
    v14 = *(v8 + 48) + 16 * (v9 | (v3 << 6));
    v15 = *v14;
    v16 = *(v14 + 8);
    sub_26A8526B8();
    sub_26A4E324C(v15, v16);
    sub_26A6B036C(v55, v15, v16);
    v17 = v55;
    v18 = sub_26A8526F8();
    v19 = -1 << *(a2 + 32);
    v20 = v18 & ~v19;
    v21 = a2 + 56;
    if ((*(a2 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20))
    {
      v22 = ~v19;
      while (1)
      {
        v23 = *(a2 + 48) + 16 * v20;
        v24 = *v23;
        switch(*(v23 + 8))
        {
          case 1:
            if (v16 != 1)
            {
              goto LABEL_54;
            }

            OUTLINED_FUNCTION_6_45();
            v42 = v41;
            v43 = 0xE900000000000074;
            switch(v44)
            {
              case 1:
                v43 = 0xE400000000000000;
                v42 = 1769105747;
                break;
              case 2:
                v42 = 0xD000000000000010;
                v43 = 0x800000026A88A230;
                break;
              case 3:
                v42 = OUTLINED_FUNCTION_12_32();
                v43 = 0xEC00000069726166;
                break;
              default:
                break;
            }

            switch(v15)
            {
              case 1:
                v17 = 0xE400000000000000;
                v41 = 1769105747;
                break;
              case 2:
                v41 = 0xD000000000000010;
                v17 = 0x800000026A88A230;
                break;
              case 3:
                OUTLINED_FUNCTION_5_53();
                break;
              default:
                break;
            }

            if (v42 == v41 && v43 == v17)
            {
            }

            else
            {
              v48 = sub_26A852598();

              v21 = a2 + 56;
              if ((v48 & 1) == 0)
              {
                goto LABEL_54;
              }
            }

            goto LABEL_78;
          case 2:
            if (v16 != 2 || v24 != v15)
            {
              goto LABEL_54;
            }

            goto LABEL_78;
          case 3:
            if (v16 != 3)
            {
              goto LABEL_54;
            }

            goto LABEL_53;
          case 4:
            if (v16 != 4)
            {
              goto LABEL_54;
            }

            goto LABEL_53;
          case 5:
            if (v16 != 5)
            {
              goto LABEL_54;
            }

            goto LABEL_53;
          case 6:
            if (v16 != 6)
            {
              goto LABEL_54;
            }

            goto LABEL_53;
          case 7:
            if (v16 == 7 && ((v24 ^ v15) & 1) == 0)
            {
              goto LABEL_78;
            }

            goto LABEL_54;
          case 8:
            if (v16 != 8)
            {
              goto LABEL_54;
            }

            v45 = v24 << 56;
            if (v15)
            {
              if (v15 == 1)
              {
                v46 = 0x100000000000000;
              }

              else
              {
                v46 = 0x200000000000000;
              }

              if (v45 == v46)
              {
LABEL_78:
                v7 = v53;
                if (v54)
                {
                  goto LABEL_4;
                }

                goto LABEL_5;
              }
            }

            else if (!v45)
            {
              goto LABEL_78;
            }

LABEL_54:
            v20 = (v20 + 1) & v22;
            if (((*(v21 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
            {
              goto LABEL_82;
            }

            break;
          case 9:
            if (v16 != 9)
            {
              goto LABEL_54;
            }

            goto LABEL_53;
          case 0xA:
            if (v16 == 10)
            {
              goto LABEL_53;
            }

            goto LABEL_54;
          case 0xB:
            if (v16 != 11)
            {
              goto LABEL_54;
            }

LABEL_53:
            if ((v24 ^ v15))
            {
              goto LABEL_54;
            }

            goto LABEL_78;
          default:
            if (v16)
            {
              goto LABEL_54;
            }

            if (v24 == v15)
            {
              goto LABEL_77;
            }

            if (*(v24 + 16) != *(v15 + 16))
            {
              goto LABEL_54;
            }

            v25 = 0;
            OUTLINED_FUNCTION_2_69();
            v29 = (v28 + 63) >> 6;
            v49 = v29;
            v51 = v30;
            if ((v27 & v26) != 0)
            {
              goto LABEL_17;
            }

            while (2)
            {
              v33 = v25;
LABEL_19:
              v25 = v33 + 1;
              if (__OFADD__(v33, 1))
              {
                goto LABEL_85;
              }

              if (v25 < v29)
              {
                ++v33;
                if (*(v24 + 56 + 8 * v25))
                {
                  OUTLINED_FUNCTION_2_66();
                  for (i = v35 & v34; ; i = v32)
                  {
                    v36 = *(*(v24 + 48) + 8 * (v31 | (v25 << 6)));
                    sub_26A8526B8();
                    MEMORY[0x26D664930](v36);
                    v17 = v55;
                    v37 = sub_26A8526F8();
                    v38 = ~(-1 << *(v15 + 32));
                    v21 = a2 + 56;
                    do
                    {
                      v39 = v37 & v38;
                      if (((*(v51 + (((v37 & v38) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v37 & v38)) & 1) == 0)
                      {
                        goto LABEL_54;
                      }

                      v37 = v39 + 1;
                    }

                    while (*(*(v15 + 48) + 8 * v39) != v36);
                    v29 = v49;
                    if (!i)
                    {
                      break;
                    }

LABEL_17:
                    OUTLINED_FUNCTION_10_40();
                  }

                  continue;
                }

                goto LABEL_19;
              }

              break;
            }

LABEL_77:
            sub_26A587EE4(v15, 0);
            goto LABEL_78;
        }
      }
    }

LABEL_82:
    sub_26A587EE4(v15, v16);
  }
}

uint64_t sub_26A6B0C8C(void *__src, uint64_t a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  result = sub_26A8526F8();
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 56);
  for (i = (v6 + 63) >> 6; v8; v4 ^= result)
  {
    v10 = v5;
LABEL_9:
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v12 = *(*(a2 + 48) + ((v10 << 9) | (8 * v11)));
    sub_26A8526B8();
    MEMORY[0x26D664930](v12);
    result = sub_26A8526F8();
  }

  while (1)
  {
    v10 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v10 >= i)
    {
      return MEMORY[0x26D664930](v4);
    }

    v8 = *(a2 + 56 + 8 * v10);
    ++v5;
    if (v8)
    {
      v5 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_26A6B0DB4(void *__src, uint64_t a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  sub_26A8526F8();
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 56);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  for (i = 0; v5; v7 ^= v14)
  {
    v9 = i;
LABEL_9:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = *(a2 + 48) + ((v9 << 10) | (16 * v10));
    v12 = *v11;
    v13 = *(v11 + 8);
    sub_26A8526B8();
    sub_26A4E324C(v12, v13);
    sub_26A6B036C(v15, v12, v13);
    v14 = sub_26A8526F8();
    sub_26A587EE4(v12, v13);
  }

  while (1)
  {
    v9 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      MEMORY[0x26D664930](v7);
      return;
    }

    v5 = *(a2 + 56 + 8 * v9);
    ++i;
    if (v5)
    {
      i = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t OUTLINED_FUNCTION_1_69(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  return sub_26A84EA78();
}

uint64_t OUTLINED_FUNCTION_4_55@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_26A6B1004@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26A84F988();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190, &unk_26A854C50);
  MEMORY[0x28223BE20](v6);
  v8 = &v11 - v7;
  type metadata accessor for FactItemHeroButtonView(0);
  sub_26A4D7E54();
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

uint64_t sub_26A6B11DC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26A84F988();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8, &qword_26A857040);
  MEMORY[0x28223BE20](v6);
  v8 = &v12 - v7;
  type metadata accessor for FactItemHeroButtonView(0);
  sub_26A4D7E54();
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

uint64_t sub_26A6B13E4()
{
  v1 = sub_26A84F988();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for FactItemHeroButtonView(0) + 32);
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

uint64_t FactItemHeroButtonView.init(number:text1:button:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  if (qword_2803A8A80 != -1)
  {
    swift_once();
  }

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB6F0, &qword_26A86A0B0);
  __swift_project_value_buffer(v7, qword_2803D1A70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB6F8, &qword_26A858D30);
  sub_26A4D7E54();
  sub_26A6AEE74(__src);
  memcpy(a4, __src, 0xBFuLL);
  sub_26A6B2F38();
  v8 = type metadata accessor for FactItemHeroButtonView(0);
  v9 = &a4[v8[5]];
  if (qword_28157E660 != -1)
  {
    swift_once();
  }

  v31 = xmmword_281588758;
  v32 = unk_281588768;
  v33 = xmmword_281588778;
  v34 = xmmword_281588788;
  v35 = xmmword_281588758;
  v36 = unk_281588768;
  v37 = xmmword_281588778;
  v38 = xmmword_281588788;
  v25 = xmmword_281588788;
  v26 = xmmword_281588778;
  sub_26A4D7E54();
  sub_26A6AEE74(v39);
  memcpy(v9, v39, 0xC0uLL);
  *(v9 + 12) = v26;
  *(v9 + 13) = v25;
  v10 = v36;
  *(v9 + 14) = v35;
  *(v9 + 15) = v10;
  v11 = v38;
  *(v9 + 16) = v37;
  *(v9 + 17) = v11;
  v12 = v8[6];
  *&a4[v12] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190, &unk_26A854C50);
  swift_storeEnumTagMultiPayload();
  v13 = v8[7];
  *&a4[v13] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8, &qword_26A857040);
  swift_storeEnumTagMultiPayload();
  v14 = &a4[v8[8]];
  *v14 = swift_getKeyPath();
  v14[8] = 0;
  sub_26A4D7E54();
  if (v29)
  {
    __swift_project_boxed_opaque_existential_1(v28, v29);
    v15 = OUTLINED_FUNCTION_16_5();
    v17 = v16(v15);
    __swift_destroy_boxed_opaque_existential_1(v28);
  }

  else
  {
    sub_26A6A1DE4(v28, &qword_2803A91B8, &qword_26A8575C0);
    v17 = 0;
  }

  *&a4[v8[9]] = v17;
  sub_26A4D7E54();
  if (v29)
  {
    __swift_project_boxed_opaque_existential_1(v28, v29);
    v18 = OUTLINED_FUNCTION_16_5();
    v20 = v19(v18);
    __swift_destroy_boxed_opaque_existential_1(v28);
  }

  else
  {
    sub_26A6A1DE4(v28, &qword_2803A91B8, &qword_26A8575C0);
    v20 = 0;
  }

  *&a4[v8[10]] = v20;
  sub_26A4D7E54();
  if (v29)
  {
    __swift_project_boxed_opaque_existential_1(v28, v29);
    v21 = OUTLINED_FUNCTION_16_5();
    v23 = v22(v21);
    sub_26A6A1DE4(a3, &qword_2803A91B8, &qword_26A8575C0);
    sub_26A6A1DE4(a2, &qword_2803A91B8, &qword_26A8575C0);
    sub_26A6A1DE4(a1, &qword_2803A91B8, &qword_26A8575C0);
    result = __swift_destroy_boxed_opaque_existential_1(v28);
  }

  else
  {
    OUTLINED_FUNCTION_6_46(a3);
    OUTLINED_FUNCTION_6_46(a2);
    OUTLINED_FUNCTION_6_46(a1);
    result = OUTLINED_FUNCTION_6_46(v28);
    v23 = 0;
  }

  *&a4[v8[11]] = v23;
  return result;
}

uint64_t type metadata accessor for FactItemHeroButtonView(uint64_t a1)
{
  result = qword_2803B36E0;
  if (!qword_2803B36E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t FactItemHeroButtonView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C0, &unk_26A854CB0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v15[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C8, &unk_26A856820);
  MEMORY[0x28223BE20](v6 - 8);
  sub_26A6B1004(&v15[-v7]);
  sub_26A6B1BE8(v17);
  sub_26A6B13E4();
  sub_26A6B11DC(v5);
  v8 = sub_26A84F3A8();
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v8);
  v16 = v1;
  sub_26A4CC990();
  v9 = swift_allocObject();
  *(v9 + 16) = sub_26A68CCBC;
  *(v9 + 24) = 0;
  v10 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B36D8, &unk_26A8752D0) + 36);
  *(v10 + 16) = swift_getKeyPath();
  *(v10 + 24) = 0;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91D8, &qword_26A8575D0);
  v12 = *(v11 + 40);
  *(v10 + v12) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190, &unk_26A854C50);
  swift_storeEnumTagMultiPayload();
  v13 = v10 + *(v11 + 44);
  result = swift_getKeyPath();
  *v13 = result;
  *(v13 + 8) = 0;
  *v10 = sub_26A4D1F7C;
  *(v10 + 8) = v9;
  return result;
}

void sub_26A6B1BE8(uint64_t a1@<X8>)
{
  if (qword_2803A8BF0 != -1)
  {
    swift_once();
  }

  v3 = 0uLL;
  if (byte_2803B0440 == 1)
  {
    v4 = sub_26A6B13E4();
    if (sub_26A61B05C(v4, &unk_287B13090))
    {
      v5 = type metadata accessor for FactItemHeroButtonView(0);
      v6 = 0;
      v7 = (v1 + *(v5 + 20));
      __asm { FMOV            V0.2D, #10.0 }

      v3 = vaddq_f64(v7[12], _Q0);
      v13 = vaddq_f64(v7[13], _Q0);
    }

    else
    {
      v6 = 1;
      v13 = 0uLL;
      v3 = 0uLL;
    }
  }

  else
  {
    v6 = 1;
    v13 = 0uLL;
  }

  *a1 = v3;
  *(a1 + 16) = v13;
  *(a1 + 32) = v6;
}

uint64_t sub_26A6B1CA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A9AE8, &qword_26A855990);
  MEMORY[0x28223BE20](v29);
  v4 = &v27 - v3;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3700, &qword_26A875378);
  MEMORY[0x28223BE20](v28);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A9AD8, &unk_26A875380);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v27 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A9AC8, &unk_26A855980);
  MEMORY[0x28223BE20](v8);
  v10 = &v27 - v9;
  v11 = sub_26A84F3A8();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26A6B11DC(v14);
  v15 = sub_26A84F388();
  (*(v12 + 8))(v14, v11);
  if (v15)
  {
    v16 = sub_26A84FC08();
    v17 = *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB6F8, &qword_26A858D30) + 28) + 8);
    *v7 = v16;
    *(v7 + 1) = v17;
    v7[16] = 0;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3710, &qword_26A8753F0);
    sub_26A6B2584(a1, &v7[*(v18 + 44)]);
    sub_26A851458();
    sub_26A84F628();
    sub_26A4ABB90();
    memcpy(&v10[*(v8 + 36)], __src, 0x70uLL);
    v19 = &qword_2803A9AC8;
    v20 = &unk_26A855980;
    sub_26A4D7E54();
    swift_storeEnumTagMultiPayload();
    sub_26A4D5118();
    sub_26A4D51D0();
    sub_26A84FDF8();
    v21 = v10;
  }

  else
  {
    *v4 = sub_26A84FA78();
    *(v4 + 1) = 0;
    v4[16] = 0;
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3708, &qword_26A875390);
    sub_26A6B2104(a1, &v4[*(v22 + 44)]);
    KeyPath = swift_getKeyPath();
    v24 = swift_getKeyPath();
    v25 = &v4[*(v29 + 36)];
    *v25 = KeyPath;
    v25[8] = 0;
    *(v25 + 2) = v24;
    *(v25 + 12) = 256;
    v19 = &qword_2803A9AE8;
    v20 = &qword_26A855990;
    sub_26A4D7E54();
    swift_storeEnumTagMultiPayload();
    sub_26A4D5118();
    sub_26A4D51D0();
    sub_26A84FDF8();
    v21 = v4;
  }

  return sub_26A6A1DE4(v21, v19, v20);
}

uint64_t sub_26A6B2104@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v42 = type metadata accessor for RFButtonStyle(0);
  MEMORY[0x28223BE20](v42);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3718, &qword_26A8753F8);
  v40 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v41 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v39 = &v36 - v7;
  v8 = type metadata accessor for FactItemHeroButtonView(0);
  v9 = v8 - 8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3720, &unk_26A875400);
  v14 = v13 - 8;
  MEMORY[0x28223BE20](v13);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = (&v36 - v18);
  v20 = sub_26A8502C8();
  sub_26A6B2F38();
  v21 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v22 = swift_allocObject();
  sub_26A6B2F8C(v12, v22 + v21);
  v23 = *(v14 + 56);
  *(v19 + v23) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8, &qword_26A857040);
  swift_storeEnumTagMultiPayload();
  sub_26A8505C8();
  *v19 = sub_26A6B3528;
  v19[1] = v22;
  v19[2] = 2;
  v19[3] = v20;
  v19[4] = 0;
  v38 = *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB6F8, &qword_26A858D30) + 28) + 32);
  v45 = *(a1 + *(v9 + 52));

  static PrimitiveButtonStyle<>.rfButtonCircularIconOnly.getter(v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAFF8, &qword_26A8598C0);
  sub_26A4EA164();
  sub_26A6B2FF4();
  v24 = v39;
  sub_26A850978();
  sub_26A522628(v4);

  v37 = v16;
  sub_26A4D7E54();
  v26 = v40;
  v25 = v41;
  v27 = *(v40 + 16);
  v28 = v24;
  v29 = v24;
  v30 = v43;
  v27(v41, v28, v43);
  v31 = v44;
  sub_26A4D7E54();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3738, &qword_26A875488);
  v33 = v31 + *(v32 + 48);
  *v33 = v38;
  *(v33 + 8) = 0;
  v27((v31 + *(v32 + 64)), v25, v30);
  v34 = *(v26 + 8);
  v34(v29, v30);
  sub_26A6A1DE4(v19, &qword_2803B3720, &unk_26A875400);
  v34(v25, v30);
  return sub_26A6A1DE4(v37, &qword_2803B3720, &unk_26A875400);
}

uint64_t sub_26A6B2584@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v37 = type metadata accessor for RFButtonStyle(0);
  MEMORY[0x28223BE20](v37);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3718, &qword_26A8753F8);
  v35 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v36 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v34 = &v33 - v7;
  v8 = type metadata accessor for FactItemHeroButtonView(0);
  v9 = v8 - 8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3720, &unk_26A875400);
  v14 = v13 - 8;
  MEMORY[0x28223BE20](v13);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = (&v33 - v18);
  v20 = sub_26A8502C8();
  sub_26A6B2F38();
  v21 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v22 = swift_allocObject();
  sub_26A6B2F8C(v12, v22 + v21);
  v23 = *(v14 + 56);
  *(v19 + v23) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8, &qword_26A857040);
  swift_storeEnumTagMultiPayload();
  sub_26A8505C8();
  *v19 = sub_26A6B2FF0;
  v19[1] = v22;
  v19[2] = 2;
  v19[3] = v20;
  v19[4] = 0;
  v40 = *(a1 + *(v9 + 52));

  static PrimitiveButtonStyle<>.rfButtonCircularIconOnly.getter(v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAFF8, &qword_26A8598C0);
  sub_26A4EA164();
  sub_26A6B2FF4();
  v24 = v34;
  sub_26A850978();
  sub_26A522628(v4);

  v33 = v16;
  sub_26A4D7E54();
  v26 = v35;
  v25 = v36;
  v27 = *(v35 + 16);
  v28 = v38;
  v27(v36, v24, v38);
  v29 = v39;
  sub_26A4D7E54();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3728, &unk_26A875410);
  v27((v29 + *(v30 + 48)), v25, v28);
  v31 = *(v26 + 8);
  v31(v24, v28);
  sub_26A6A1DE4(v19, &qword_2803B3720, &unk_26A875400);
  v31(v25, v28);
  return sub_26A6A1DE4(v33, &qword_2803B3720, &unk_26A875400);
}

uint64_t sub_26A6B29C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_26A84FC08();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  return sub_26A6B2A04(a1);
}

uint64_t sub_26A6B2A04(uint64_t a1)
{
  v2 = type metadata accessor for FactItemHeroButtonView(0);
  v3 = *(a1 + *(v2 + 40));
  if (qword_28157E6B0 != -1)
  {
    swift_once();
  }

  sub_26A4D7E54();
  sub_26A6AEE74(__src);
  memcpy(v18, __src, sizeof(v18));
  v20 = 0;
  v19 = sub_26A80A810;
  v17 = v3;
  v4 = *(a1 + *(v2 + 36));
  v5 = qword_2803A9048;

  if (v5 != -1)
  {
    swift_once();
  }

  sub_26A4D7E54();
  sub_26A6AEE74(v22);
  memcpy(v10, v22, sizeof(v10));
  v12 = 0;
  v11 = sub_26A80A810;
  v9 = v4;
  KeyPath = swift_getKeyPath();
  v14 = 0x3FE0000000000000;
  v15 = swift_getKeyPath();
  v16 = 1;
  sub_26A4D7E54();
  sub_26A4D7E54();
  sub_26A4D7E54();
  sub_26A4D7E54();

  sub_26A6A1DE4(&v9, &qword_2803B3730, &qword_26A875480);
  sub_26A6A1DE4(&v17, &qword_2803AAFE0, &qword_26A857AA0);
  sub_26A6A1DE4(&v7, &qword_2803B3730, &qword_26A875480);
  return sub_26A6A1DE4(v8, &qword_2803AAFE0, &qword_26A857AA0);
}

void sub_26A6B2C90(uint64_t a1)
{
  sub_26A662E30(319, &qword_2803AB738, type metadata accessor for FactItemConstants, type metadata accessor for EnvironmentConstant);
  if (v1 <= 0x3F)
  {
    sub_26A4DB840(319, &qword_2803A9238, MEMORY[0x277CDF310], type metadata accessor for EnvironmentConstant);
    if (v2 <= 0x3F)
    {
      sub_26A4D27F4(319);
      if (v3 <= 0x3F)
      {
        sub_26A662E30(319, &qword_2803A9230, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
        if (v4 <= 0x3F)
        {
          sub_26A662E30(319, &qword_2803A9218, type metadata accessor for VRXIdiom, MEMORY[0x277CDF468]);
          if (v5 <= 0x3F)
          {
            sub_26A4DB840(319, &qword_2803A9240, MEMORY[0x277CE11C8], MEMORY[0x277D83D88]);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

unint64_t sub_26A6B2E54()
{
  result = qword_2803B36F0;
  if (!qword_2803B36F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B36D8, &unk_26A8752D0);
    sub_26A4DBCC8(&qword_2803B36F8, &qword_2803A9AB0, &qword_26A855978, &protocol conformance descriptor for ComponentWithAction<A>);
    sub_26A4DBCC8(qword_28157DD90, &qword_2803A91D8, &qword_26A8575D0, &unk_26A869CC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B36F0);
  }

  return result;
}

uint64_t sub_26A6B2F38()
{
  OUTLINED_FUNCTION_145();
  v1(0);
  OUTLINED_FUNCTION_46();
  v2 = OUTLINED_FUNCTION_211();
  v3(v2);
  return v0;
}

uint64_t sub_26A6B2F8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FactItemHeroButtonView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_26A6B2FF4()
{
  result = qword_2803AC1A0;
  if (!qword_2803AC1A0)
  {
    type metadata accessor for RFButtonStyle(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AC1A0);
  }

  return result;
}

uint64_t objectdestroy_24Tm()
{
  v1 = type metadata accessor for FactItemHeroButtonView(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  sub_26A49035C(*v2, *(v2 + 8));
  sub_26A49035C(*(v2 + 16), *(v2 + 24));
  sub_26A49035C(*(v2 + 32), *(v2 + 40));
  sub_26A49035C(*(v2 + 48), *(v2 + 56));
  sub_26A49035C(*(v2 + 64), *(v2 + 72));
  sub_26A49035C(*(v2 + 80), *(v2 + 88));
  sub_26A49035C(*(v2 + 96), *(v2 + 104));
  sub_26A49035C(*(v2 + 112), *(v2 + 120));
  sub_26A49035C(*(v2 + 128), *(v2 + 136));
  sub_26A49035C(*(v2 + 144), *(v2 + 152));
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB6F8, &qword_26A858D30);
  v4 = v2 + *(v3 + 28);
  v5 = type metadata accessor for FactItemConstants(0);
  v6 = *(v5 + 52);
  v7 = sub_26A84B1D8();
  OUTLINED_FUNCTION_46();
  v9 = *(v8 + 8);
  v9(v4 + v6, v7);
  v9(v4 + *(v5 + 56), v7);
  v10 = v2 + *(v3 + 32);

  v11 = v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB6F0, &qword_26A86A0B0) + 36);
  v9(v11 + *(v5 + 52), v7);
  v9(v11 + *(v5 + 56), v7);
  v12 = v2 + v1[5];
  sub_26A49035C(*v12, *(v12 + 8));
  sub_26A49035C(*(v12 + 16), *(v12 + 24));
  sub_26A49035C(*(v12 + 32), *(v12 + 40));
  sub_26A49035C(*(v12 + 48), *(v12 + 56));
  sub_26A49035C(*(v12 + 64), *(v12 + 72));
  sub_26A49035C(*(v12 + 80), *(v12 + 88));
  sub_26A49035C(*(v12 + 96), *(v12 + 104));
  sub_26A49035C(*(v12 + 112), *(v12 + 120));
  sub_26A49035C(*(v12 + 128), *(v12 + 136));
  sub_26A49035C(*(v12 + 144), *(v12 + 152));

  v13 = (v2 + v1[6]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190, &unk_26A854C50);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
LABEL_6:

    goto LABEL_7;
  }

  v14 = type metadata accessor for ActionType(0);
  if (__swift_getEnumTagSinglePayload(v13, 1, v14))
  {
    goto LABEL_7;
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
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    sub_26A84BAB8();
    OUTLINED_FUNCTION_46();
    (*(v19 + 8))(v13);
  }

LABEL_7:
  v16 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8, &qword_26A857040);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_26A84F3A8();
    OUTLINED_FUNCTION_46();
    (*(v17 + 8))(v2 + v16);
  }

  else
  {
  }

  sub_26A49035C(*(v2 + v1[8]), *(v2 + v1[8] + 8));

  return swift_deallocObject();
}

uint64_t OUTLINED_FUNCTION_6_46(uint64_t a1)
{

  return sub_26A6A1DE4(a1, v1, v2);
}

uint64_t CustomCanvasView.init(model:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for CustomCanvasView(0);
  v5 = (a2 + v4[5]);
  *v5 = 0xD000000000000023;
  v5[1] = 0x800000026A88B1A0;
  v6 = a2 + v4[6];
  *v6 = swift_getKeyPath();
  *(v6 + 8) = 0;
  v7 = a2 + v4[7];
  *v7 = swift_getKeyPath();
  *(v7 + 8) = 0;
  v8 = sub_26A84B158();
  v9 = *(*(v8 - 8) + 32);

  return v9(a2, a1, v8);
}

uint64_t type metadata accessor for CustomCanvasView(uint64_t a1)
{
  result = qword_28157F090;
  if (!qword_28157F090)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_26A6B366C()
{
  v1 = sub_26A84F988();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for CustomCanvasView(0) + 24));
  v6 = *v5;
  if (v5[8] == 1)
  {
    return *v5;
  }

  sub_26A851EA8();
  v8 = sub_26A8501F8();
  sub_26A84EA78();

  sub_26A84F978();
  swift_getAtKeyPath();
  sub_26A49035C(v6, 0);
  (*(v2 + 8))(v4, v1);
  return *&v9[1];
}

uint64_t sub_26A6B37C8()
{
  v1 = sub_26A84F988();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for CustomCanvasView(0) + 28);
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

uint64_t CustomCanvasView.body.getter()
{
  sub_26A6B39A0(v0, v2);
  KeyPath = swift_getKeyPath();
  v4 = 0;
  sub_26A84B118();
  sub_26A4DEDF8();

  return sub_26A4E2544(v2, &qword_2803AA910, &unk_26A8569F0);
}

void *sub_26A6B39A0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v58 = a2;
  v57 = sub_26A850F28();
  v55 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v56 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = (a1 + *(type metadata accessor for CustomCanvasView(0) + 20));
  v6 = *v4;
  v5 = v4[1];
  v7 = sub_26A84B108();
  v9 = v8;
  v10 = sub_26A84B138();
  v12 = v11;
  v13 = sub_26A84B148();
  v15 = v14;
  v16 = sub_26A6B37C8();
  v17 = sub_26A5C9E3C(v7, v9, v10, v12, v13, v15, v16, v6, v5);
  sub_26A513D40(v13, v15);

  if (v17)
  {
    v73[0] = v17;
    sub_26A6B4788(v73);
  }

  else
  {
    if (!AFIsInternalInstall())
    {
      sub_26A6B46DC(v80);
      return memcpy(v58, v80, 0x131uLL);
    }

    v54 = sub_26A84FC08();
    v76 = 1;
    v80[0] = sub_26A84B108();
    v80[1] = v18;
    sub_26A53ACC8();
    v19 = sub_26A850898();
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v80[0] = sub_26A84B138();
    v80[1] = v26;
    v27 = sub_26A850898();
    v29 = v28;
    v31 = v30;
    v32 = v23 & 1;
    v75 = v23 & 1;
    v78[128] = v23 & 1;
    v34 = v33 & 1;
    v78[120] = v33 & 1;
    v48 = v32;
    sub_26A4EF6C0(v19, v21, v32);

    sub_26A4EF6C0(v27, v29, v34);

    v49 = v29;
    v50 = v27;
    v35 = v29;
    v36 = v31;
    LOBYTE(v31) = v34;
    sub_26A4EC448(v27, v35, v34);

    v52 = v21;
    v53 = v19;
    sub_26A4EC448(v19, v21, v75);
    v51 = v25;

    LOBYTE(v25) = v76;
    v47 = sub_26A850248();
    v77 = 1;
    sub_26A6B366C();
    sub_26A851448();
    sub_26A84F628();
    memcpy(&v78[7], v79, 0x70uLL);
    sub_26A850F08();
    v37 = v55;
    v38 = v56;
    v39 = v57;
    (*(v55 + 104))(v56, *MEMORY[0x277CE0FD8], v57);
    v40 = sub_26A850F98();

    (*(v37 + 8))(v38, v39);
    sub_26A850D68();
    v41 = sub_26A850E68();

    KeyPath = swift_getKeyPath();
    v43 = sub_26A851448();
    v74[0] = 1;
    v59[0] = v40;
    v59[1] = 0;
    LOWORD(v60) = 1;
    *(&v60 + 1) = KeyPath;
    *&v61 = v41;
    *(&v61 + 1) = v43;
    v62 = v44;
    v72 = v44;
    v69 = v40;
    v70 = v60;
    v71 = v61;
    v63[0] = v40;
    v63[1] = 0;
    v64 = 1;
    v65 = KeyPath;
    v66 = v41;
    v67 = v43;
    v68 = v44;
    sub_26A6B470C(v59, v80);
    sub_26A4E2544(v63, &unk_2803B37F0, &qword_26A8755E0);
    v73[0] = v54;
    v73[1] = 0;
    LOBYTE(v73[2]) = v25;
    v73[3] = v53;
    v73[4] = v52;
    LOBYTE(v73[5]) = v48;
    v73[6] = v51;
    v73[7] = v50;
    v73[8] = v49;
    LOBYTE(v73[9]) = v31;
    v73[10] = v36;
    LOBYTE(v73[11]) = v47;
    memset(&v73[12], 0, 32);
    LOBYTE(v73[16]) = 1;
    memcpy(&v73[16] + 1, v78, 0x77uLL);
    *&v73[33] = v70;
    *&v73[35] = v71;
    *&v73[31] = v69;
    v73[37] = v72;
    sub_26A6B477C(v73);
  }

  memcpy(v74, v73, sizeof(v74));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B37B0, &qword_26A8755C0);
  sub_26A6B44E0();
  sub_26A84FDF8();
  memcpy(v74, v80, sizeof(v74));
  nullsub_1();
  memcpy(v80, v74, 0x131uLL);
  return memcpy(v58, v80, 0x131uLL);
}

uint64_t sub_26A6B3F8C(uint64_t a1)
{
  result = sub_26A6B3FE4(&qword_2803B3740, MEMORY[0x277D62A78], MEMORY[0x277D62A68]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26A6B3FE4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_26A6B4054(uint64_t a1)
{
  sub_26A84B158();
  if (v1 <= 0x3F)
  {
    sub_26A4EEA20();
    if (v2 <= 0x3F)
    {
      sub_26A6B40F8(319, v2, v3, v4);
      if (v5 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_26A6B40F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!qword_2803B3748)
  {
    type metadata accessor for VRXMode(255, a2, a3, a4);
    v4 = sub_26A84EEA8();
    if (!v5)
    {
      atomic_store(v4, &qword_2803B3748);
    }
  }
}

unint64_t sub_26A6B4150()
{
  result = qword_2803B3750;
  if (!qword_2803B3750)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B3758, &qword_26A875598);
    sub_26A6B4208();
    sub_26A4DBCC8(&qword_28157FB60, &qword_2803A9438, &unk_26A8555B0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B3750);
  }

  return result;
}

unint64_t sub_26A6B4208()
{
  result = qword_2803B3760;
  if (!qword_2803B3760)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B3768, &qword_26A8755A0);
    sub_26A6B4294();
    sub_26A4D31BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B3760);
  }

  return result;
}

unint64_t sub_26A6B4294()
{
  result = qword_2803B3770;
  if (!qword_2803B3770)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AA910, &unk_26A8569F0);
    sub_26A6B434C();
    sub_26A4DBCC8(&qword_28157FB50, &unk_2803B31B0, &unk_26A858ED0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B3770);
  }

  return result;
}

unint64_t sub_26A6B434C()
{
  result = qword_2803B3778;
  if (!qword_2803B3778)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B3780, &qword_26A8755A8);
    sub_26A6B43D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B3778);
  }

  return result;
}

unint64_t sub_26A6B43D0()
{
  result = qword_2803B3788;
  if (!qword_2803B3788)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B3790, &qword_26A8755B0);
    sub_26A6B4454();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B3788);
  }

  return result;
}

unint64_t sub_26A6B4454()
{
  result = qword_2803B3798;
  if (!qword_2803B3798)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B37A0, &qword_26A8755B8);
    sub_26A6B44E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B3798);
  }

  return result;
}

unint64_t sub_26A6B44E0()
{
  result = qword_2803B37A8;
  if (!qword_2803B37A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B37B0, &qword_26A8755C0);
    sub_26A6B4598();
    sub_26A4DBCC8(&qword_2803B37E8, &unk_2803B37F0, &qword_26A8755E0, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B37A8);
  }

  return result;
}

unint64_t sub_26A6B4598()
{
  result = qword_2803B37B8;
  if (!qword_2803B37B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B37C0, &qword_26A8755C8);
    sub_26A6B4624();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B37B8);
  }

  return result;
}

unint64_t sub_26A6B4624()
{
  result = qword_2803B37C8;
  if (!qword_2803B37C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B37D0, &qword_26A8755D0);
    sub_26A4DBCC8(&qword_2803B37D8, &qword_2803B37E0, &qword_26A8755D8, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B37C8);
  }

  return result;
}

uint64_t sub_26A6B470C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B37F0, &qword_26A8755E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for StandardPlayerButtonView(uint64_t a1)
{
  result = qword_2803B3808;
  if (!qword_2803B3808)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26A6B4804(uint64_t a1)
{
  sub_26A6B4BAC(319, &qword_2803AD350, MEMORY[0x277D62ED0], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_26A6B4B48(319, &unk_2803B3820, &unk_2803B3630, &unk_26A860BE0, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_26A6B4B48(319, &qword_2803B3830, &qword_2803ADFC0, &qword_26A875650, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_26A6B4AF8();
        if (v4 <= 0x3F)
        {
          sub_26A6B4B48(319, &qword_2803B3848, &unk_2803B3850, &qword_26A875658, MEMORY[0x277CE10B8]);
          if (v5 <= 0x3F)
          {
            type metadata accessor for ActionHandler(319);
            if (v6 <= 0x3F)
            {
              sub_26A6B4BAC(319, &qword_2803A9218, type metadata accessor for VRXIdiom, MEMORY[0x277CDF468]);
              if (v7 <= 0x3F)
              {
                sub_26A6B4B48(319, &qword_2803B3860, &qword_2803B3868, &unk_26A875660, MEMORY[0x277CDF468]);
                if (v8 <= 0x3F)
                {
                  sub_26A6B4B48(319, &unk_2803B3870, &qword_2803ABFB8, &qword_26A85A410, MEMORY[0x277CDF468]);
                  if (v9 <= 0x3F)
                  {
                    sub_26A6B4B48(319, &qword_2803B3880, &qword_2803B3888, &qword_26A875670, MEMORY[0x277CDF468]);
                    if (v10 <= 0x3F)
                    {
                      sub_26A6B4BAC(319, qword_28157E830, type metadata accessor for SummaryItemConstants, type metadata accessor for EnvironmentConstant);
                      if (v11 <= 0x3F)
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
  }
}

void sub_26A6B4AF8()
{
  if (!qword_2803B3840)
  {
    v0 = sub_26A851088();
    if (!v1)
    {
      atomic_store(v0, &qword_2803B3840);
    }
  }
}

void sub_26A6B4B48(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_26A6B4BAC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_26A6B4C2C@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B38E0, &qword_26A8756F8);
  (*(*(v6 - 8) + 16))(a2, v2, v6);
  v7 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3918, &qword_26A875730) + 36);
  *v7 = KeyPath;
  *(v7 + 8) = a1;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3920, &qword_26A875738);
  *(a2 + *(result + 36)) = a1;
  return result;
}

uint64_t sub_26A6B4CF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = type metadata accessor for StandardPlayerButtonView(0);
  v6 = a3 + v5[10];
  sub_26A851048();
  v7 = __src[1];
  *v6 = __src[0];
  *(v6 + 8) = v7;
  v8 = (a3 + v5[11]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B3850, &qword_26A875658);
  sub_26A851048();
  v9 = __src[1];
  *v8 = __src[0];
  v8[1] = v9;
  ActionHandler.init()(a3 + v5[12]);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_15_5(KeyPath);
  v11 = swift_getKeyPath();
  OUTLINED_FUNCTION_15_5(v11);
  v12 = a3 + v5[15];
  *v12 = swift_getKeyPath();
  *(v12 + 8) = 0;
  *(v12 + 16) = 0;
  v13 = swift_getKeyPath();
  OUTLINED_FUNCTION_15_5(v13);
  v14 = swift_getKeyPath();
  OUTLINED_FUNCTION_15_5(v14);
  v15 = v5[18];
  if (qword_28157E670 != -1)
  {
    OUTLINED_FUNCTION_146(&qword_28157E670);
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3890, &unk_26A856670);
  __swift_project_value_buffer(v16, qword_281588798);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A0, &qword_26A854C60);
  sub_26A4D7E54();
  sub_26A6AEE74(__src);
  memcpy((a3 + v15), __src, 0xBFuLL);
  OUTLINED_FUNCTION_2_70();
  sub_26A6BD4EC();
  v17 = sub_26A84BAB8();
  OUTLINED_FUNCTION_46();
  v19 = *(v18 + 32);
  v19(a3, a1, v17);
  __swift_storeEnumTagSinglePayload(a3, 0, 1, v17);
  v20 = v5[5];
  v19(a3 + v20, a2, v17);
  result = __swift_storeEnumTagSinglePayload(a3 + v20, 0, 1, v17);
  *(a3 + v5[6]) = 0;
  *(a3 + v5[7]) = 0;
  v22 = (a3 + v5[8]);
  *v22 = 0;
  v22[1] = 0;
  v23 = (a3 + v5[9]);
  *v23 = 0;
  v23[1] = 0;
  return result;
}

uint64_t sub_26A6B4FA4(uint64_t a1, void *a2)
{
  v2 = a2[2];
  if (v2)
  {
    sub_26A8526B8();
    MEMORY[0x26D664930](a1);
    sub_26A8526F8();
    OUTLINED_FUNCTION_17_23();
    do
    {
      OUTLINED_FUNCTION_14_30();
    }

    while (v6 && *(a2[6] + 8 * v5) != a1);
  }

  return v2;
}

uint64_t sub_26A6B5028(uint64_t a1, void *a2)
{
  v2 = a2[2];
  if (v2)
  {
    sub_26A8526A8();
    OUTLINED_FUNCTION_17_23();
    do
    {
      OUTLINED_FUNCTION_14_30();
    }

    while (v6 && *(a2[6] + 8 * v5) != a1);
  }

  return v2;
}

BOOL sub_26A6B5088(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_26A8526B8();
  sub_26A851848();
  v6 = sub_26A8526F8();
  v7 = ~(-1 << *(a3 + 32));
  do
  {
    v8 = v6 & v7;
    v9 = (1 << (v6 & v7)) & *(a3 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8));
    v10 = v9 != 0;
    if (!v9)
    {
      break;
    }

    v11 = (*(a3 + 48) + 16 * v8);
    if (*v11 == a1 && v11[1] == a2)
    {
      break;
    }

    v13 = sub_26A852598();
    v6 = v8 + 1;
  }

  while ((v13 & 1) == 0);
  return v10;
}

void sub_26A6B5174()
{
  OUTLINED_FUNCTION_28_0();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for LoadableText.Source.URLImage(0);
  v5 = OUTLINED_FUNCTION_79(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_41();
  v32 = v7 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B3930, &qword_26A85BD00);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v9);
  v11 = &v30 - v10;
  type metadata accessor for LoadableText.Source(0);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v12);
  v14 = (&v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v15);
  v33 = &v30 - v16;
  MEMORY[0x28223BE20](v17);
  if (*(v1 + 16))
  {
    v37 = v18;
    sub_26A8526B8();
    sub_26A538DC4();
    v19 = sub_26A8526F8();
    v20 = -1 << *(v1 + 32);
    v21 = v19 & ~v20;
    v39 = v1 + 56;
    if ((*(v1 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
    {
      v35 = ~v20;
      v36 = v1;
      v37 = *(v37 + 72);
      v38 = v3;
      v31 = v14;
      do
      {
        OUTLINED_FUNCTION_12_33();
        sub_26A6BD4EC();
        v22 = &v11[*(v8 + 48)];
        sub_26A6BD4EC();
        sub_26A6BD4EC();
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_26A6BD4EC();
          v23 = v14[1];
          v46[0] = *v14;
          v46[1] = v23;
          v47[0] = v14[2];
          *(v47 + 9) = *(v14 + 41);
          if (swift_getEnumCaseMultiPayload() != 1)
          {
            sub_26A6BD444();
            sub_26A5393B4(v46);
            goto LABEL_11;
          }

          v24 = *(v22 + 1);
          v44[0] = *v22;
          v44[1] = v24;
          v26 = *v22;
          v25 = *(v22 + 1);
          v45[0] = *(v22 + 2);
          *(v45 + 9) = *(v22 + 41);
          v27 = v14[1];
          v42[0] = *v14;
          v42[1] = v27;
          v43[0] = v14[2];
          *(v43 + 9) = *(v14 + 41);
          v40[0] = v26;
          v40[1] = v25;
          v41[0] = *(v22 + 2);
          *(v41 + 9) = *(v22 + 41);
          v28 = sub_26A538794(v42, v40);
          OUTLINED_FUNCTION_0_70();
          sub_26A6BD444();
          sub_26A5393B4(v44);
          sub_26A5393B4(v46);
          if (v28)
          {
            goto LABEL_16;
          }

          sub_26A6BD444();
        }

        else
        {
          sub_26A6BD4EC();
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_26A6BD444();
            OUTLINED_FUNCTION_11_36();
            sub_26A6BD444();
LABEL_11:
            sub_26A4D6FD8();
            goto LABEL_14;
          }

          OUTLINED_FUNCTION_8_49();
          sub_26A6BD498();
          sub_26A538054();
          v34 = v29;
          OUTLINED_FUNCTION_10_41();
          sub_26A6BD444();
          OUTLINED_FUNCTION_0_70();
          sub_26A6BD444();
          sub_26A6BD444();
          if (v34)
          {
LABEL_16:
            sub_26A6BD444();
            break;
          }

          sub_26A6BD444();
          v14 = v31;
        }

LABEL_14:
        v21 = (v21 + 1) & v35;
      }

      while (((*(v39 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) != 0);
    }
  }

  OUTLINED_FUNCTION_27_0();
}

uint64_t sub_26A6B5624@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = type metadata accessor for StandardPlayerButtonView(0);
  v8 = a5 + v7[10];
  sub_26A851048();
  v9 = __src[1];
  *v8 = __src[0];
  *(v8 + 8) = v9;
  v10 = (a5 + v7[11]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B3850, &qword_26A875658);
  sub_26A851048();
  v11 = __src[1];
  *v10 = __src[0];
  v10[1] = v11;
  ActionHandler.init()(a5 + v7[12]);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_43_4(KeyPath);
  v13 = swift_getKeyPath();
  OUTLINED_FUNCTION_43_4(v13);
  v14 = a5 + v7[15];
  *v14 = swift_getKeyPath();
  *(v14 + 8) = 0;
  *(v14 + 16) = 0;
  v15 = swift_getKeyPath();
  OUTLINED_FUNCTION_43_4(v15);
  v16 = swift_getKeyPath();
  OUTLINED_FUNCTION_43_4(v16);
  v17 = v7[18];
  if (qword_28157E670 != -1)
  {
    OUTLINED_FUNCTION_146(&qword_28157E670);
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3890, &unk_26A856670);
  __swift_project_value_buffer(v18, qword_281588798);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A0, &qword_26A854C60);
  sub_26A4D7E54();
  sub_26A6AEE74(__src);
  memcpy((a5 + v17), __src, 0xBFuLL);
  OUTLINED_FUNCTION_2_70();
  sub_26A6BD4EC();
  v19 = sub_26A84BAB8();
  OUTLINED_FUNCTION_81();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v19);
  OUTLINED_FUNCTION_81();
  result = __swift_storeEnumTagSinglePayload(v23, v24, v25, v19);
  *(a5 + v7[6]) = 0;
  *(a5 + v7[7]) = 0;
  v27 = (a5 + v7[8]);
  *v27 = a1;
  v27[1] = a2;
  v28 = (a5 + v7[9]);
  *v28 = a3;
  v28[1] = a4;
  return result;
}

void sub_26A6B5898(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = type metadata accessor for StandardPlayerButtonView(0);
  v5 = a3 + v4[10];
  LOBYTE(v79) = 0;
  sub_26A851048();
  v6 = __src[1];
  *v5 = __src[0];
  *(v5 + 8) = v6;
  v7 = (a3 + v4[11]);
  v79 = MEMORY[0x277D84FA0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B3850, &qword_26A875658);
  sub_26A851048();
  v9 = __src[0];
  v8 = __src[1];
  *v7 = __src[0];
  v7[1] = v8;
  v10 = a3 + v4[12];
  *v10 = swift_getKeyPath();
  *(v10 + 8) = 0;
  *(v10 + 16) = 0;
  *(v10 + 24) = swift_getKeyPath();
  *(v10 + 32) = 0;
  v11 = type metadata accessor for ActionHandler(0);
  v12 = v11[6];
  *(v10 + v12) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A93D0, &qword_26A856F10);
  swift_storeEnumTagMultiPayload();
  v13 = v10 + v11[7];
  *v13 = swift_getKeyPath();
  *(v13 + 8) = 0;
  *(v13 + 16) = 0;
  v14 = v10 + v11[8];
  *v14 = swift_getKeyPath();
  *(v14 + 8) = 0;
  v15 = v10 + v11[9];
  *v15 = swift_getKeyPath();
  *(v15 + 8) = 0;
  v16 = v10 + v11[10];
  *v16 = swift_getKeyPath();
  *(v16 + 9) = 0;
  swift_unknownObjectWeakInit();
  v17 = type metadata accessor for StandardActionHandler(0);
  OUTLINED_FUNCTION_81();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v17);

  sub_26A4D6FD8();
  OUTLINED_FUNCTION_81();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v17);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_43_4(KeyPath);
  v25 = swift_getKeyPath();
  OUTLINED_FUNCTION_43_4(v25);
  v26 = a3 + v4[15];
  *v26 = swift_getKeyPath();
  *(v26 + 8) = 0;
  *(v26 + 16) = 0;
  v27 = swift_getKeyPath();
  OUTLINED_FUNCTION_43_4(v27);
  v28 = swift_getKeyPath();
  OUTLINED_FUNCTION_43_4(v28);
  v29 = (a3 + v4[18]);
  if (qword_28157E670 != -1)
  {
    OUTLINED_FUNCTION_146(&qword_28157E670);
  }

  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3890, &unk_26A856670);
  __swift_project_value_buffer(v30, qword_281588798);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A0, &qword_26A854C60);
  sub_26A4D7E54();
  sub_26A6AEE74(__src);
  memcpy(v29, __src, 0xBFuLL);
  OUTLINED_FUNCTION_2_70();
  sub_26A6BD4EC();
  v31 = sub_26A84BAB8();
  OUTLINED_FUNCTION_81();
  __swift_storeEnumTagSinglePayload(v32, v33, v34, v31);
  OUTLINED_FUNCTION_81();
  __swift_storeEnumTagSinglePayload(v35, v36, v37, v31);
  *(a3 + v4[6]) = a1;
  *(a3 + v4[7]) = a2;
  v38 = (a3 + v4[8]);
  *v38 = 0;
  v38[1] = 0;
  v39 = (a3 + v4[9]);
  *v39 = 0;
  v39[1] = 0;
  v40 = a1;
  v41 = a2;
  v42 = sub_26A6BD28C(v40);
  if (v43)
  {
    v44 = v42;
    v45 = v43;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B38C8, &qword_26A8756E0);
    sub_26A851058();
    sub_26A6B9514(&v79, v44, v45);

    OUTLINED_FUNCTION_21_22(v46, v47, v48, v49, v50, v51, v52, v53, v9, a1, a2, v71, v73, v75, v9, v8, v77);
    v54 = sub_26A6BD28C(v41);
    if (v55)
    {
      v56 = v54;
      v57 = v55;
      sub_26A851058();
      sub_26A6B9514(&v79, v56, v57);

      OUTLINED_FUNCTION_21_22(v58, v59, v60, v61, v62, v63, v64, v65, v66, v68, v70, v72, v74, v76, v9, v8, v78);

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_26A6B5D10()
{
  v1 = sub_26A84F988();
  OUTLINED_FUNCTION_15();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_41();
  v7 = v6 - v5;
  v8 = v0 + *(type metadata accessor for StandardPlayerButtonView(0) + 52);
  v9 = *v8;
  if ((*(v8 + 8) & 1) == 0)
  {

    sub_26A851EA8();
    v10 = sub_26A8501F8();
    OUTLINED_FUNCTION_55(v10, &dword_26A48D000, v11, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", v12, v13, MEMORY[0x277D84F90]);

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v9, 0);
    (*(v3 + 8))(v7, v1);
    return v15;
  }

  return v9;
}

uint64_t sub_26A6B5E40()
{
  v1 = sub_26A84F988();
  OUTLINED_FUNCTION_15();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_41();
  v7 = v6 - v5;
  v8 = (v0 + *(type metadata accessor for StandardPlayerButtonView(0) + 56));
  v9 = *v8;
  v10 = *(v8 + 8);

  if ((v10 & 1) == 0)
  {
    sub_26A851EA8();
    v11 = sub_26A8501F8();
    OUTLINED_FUNCTION_55(v11, &dword_26A48D000, v12, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", v13, v14, MEMORY[0x277D84F90]);

    sub_26A84F978();
    swift_getAtKeyPath();

    (*(v3 + 8))(v7, v1);
    return v16;
  }

  return v9;
}

void sub_26A6B5F6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_28_0();
  v21 = v20;
  v22 = type metadata accessor for StandardPlayerButtonView(0);
  MEMORY[0x28223BE20](v22 - 8);
  sub_26A6B61F0(v21);
  v23 = sub_26A6B5E40();
  sub_26A6BD4EC();
  v24 = swift_allocObject();
  sub_26A6BD498();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3898, &qword_26A8756C8);
  *(v21 + *(v25 + 52)) = v23;
  v26 = (v21 + *(v25 + 56));
  *v26 = sub_26A6B892C;
  v26[1] = v24;
  sub_26A6BD4EC();
  v27 = swift_allocObject();
  sub_26A6BD498();
  v28 = (v21 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B38A0, &qword_26A8756D0) + 36));
  *v28 = sub_26A6B8ED0;
  v28[1] = v27;
  v28[2] = 0;
  v28[3] = 0;
  sub_26A6BD4EC();
  v29 = swift_allocObject();
  sub_26A6BD498();
  type metadata accessor for Context(0);
  sub_26A6BD3D8();
  v30 = sub_26A84F678();
  v32 = v31;
  v33 = (v21 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B38B0, &qword_26A8756D8) + 36));
  *v33 = v30;
  v33[1] = v32;
  v33[2] = sub_26A6B8F28;
  v33[3] = v29;
  OUTLINED_FUNCTION_27_0();
}

uint64_t sub_26A6B61F0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v71 = a1;
  v3 = sub_26A84F988();
  v59 = *(v3 - 8);
  v60 = v3;
  MEMORY[0x28223BE20](v3);
  v58 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_26A84B058();
  v5 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v63 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v64 = &v55 - v8;
  v67 = type metadata accessor for RFButtonStyle(0);
  MEMORY[0x28223BE20](v67);
  v57 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v56 = &v55 - v11;
  v12 = type metadata accessor for StandardPlayerButtonView(0);
  MEMORY[0x28223BE20](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AEFF8, &qword_26A8756F0);
  v65 = *(v13 - 8);
  v66 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v55 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B38E0, &qword_26A8756F8);
  v69 = *(v19 - 8);
  v70 = v19;
  MEMORY[0x28223BE20](v19);
  v21 = &v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v55 = &v55 - v23;
  v68 = v12;
  v24 = &v2[*(v12 + 40)];
  v25 = *v24;
  v26 = *(v24 + 1);
  LOBYTE(v73) = v25;
  *(&v73 + 1) = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC190, &qword_26A85A9E0);
  sub_26A851058();
  LOBYTE(v12) = v72;
  sub_26A6BD4EC();
  v61 = v5 + 104;
  if ((v12 & 1) == 0)
  {
    swift_allocObject();
    v33 = sub_26A6BD498();
    MEMORY[0x28223BE20](v33);
    *(&v55 - 2) = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF010, &qword_26A875700);
    sub_26A4D7DCC();
    sub_26A8510D8();
    v34 = sub_26A6B5D10();
    v35 = v64;
    VRXIdiom.idiom.getter(v34, v64);
    v37 = v62;
    v36 = v63;
    (*(v5 + 104))(v63, *MEMORY[0x277D629F0], v62);
    sub_26A6BD3D8();
    sub_26A851A48();
    sub_26A851A48();
    v38 = *(v5 + 8);
    v38(v36, v37);
    v38(v35, v37);
    v39 = v18;
    if (v73 == v72)
    {
      v75 = 0;
      v73 = 0u;
      v74 = 0u;
      static PrimitiveButtonStyle<>.rfButton(margin:)(&v73, v56);
    }

    else
    {
      static PrimitiveButtonStyle<>.rfButtonCircularIconOnly.getter(v56);
    }

    v40 = v55;
    sub_26A4D7DCC();
    sub_26A6BD3D8();
    v48 = v66;
    sub_26A850978();
    sub_26A6BD444();
    (*(v65 + 8))(v39, v48);
    v49 = &v2[*(v68 + 68)];
    v50 = *v49;
    v51 = v49[8];

    if ((v51 & 1) == 0)
    {
      sub_26A851EA8();
      v52 = sub_26A8501F8();
      sub_26A84EA78();

      v53 = v58;
      sub_26A84F978();
      swift_getAtKeyPath();
      j__swift_release();
      (*(v59 + 8))(v53, v60);
      v50 = v72;
    }

    if (v50)
    {
      goto LABEL_10;
    }

LABEL_15:
    v47 = 0;
    goto LABEL_16;
  }

  v56 = v21;
  swift_allocObject();
  v27 = sub_26A6BD498();
  MEMORY[0x28223BE20](v27);
  *(&v55 - 2) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF010, &qword_26A875700);
  sub_26A4D7DCC();
  v55 = v15;
  sub_26A8510D8();
  v28 = sub_26A6B5D10();
  v29 = v64;
  VRXIdiom.idiom.getter(v28, v64);
  v31 = v62;
  v30 = v63;
  (*(v5 + 104))(v63, *MEMORY[0x277D629F0], v62);
  sub_26A6BD3D8();
  sub_26A851A48();
  sub_26A851A48();
  v32 = *(v5 + 8);
  v32(v30, v31);
  v32(v29, v31);
  if (v73 == v72)
  {
    v75 = 0;
    v73 = 0u;
    v74 = 0u;
    static PrimitiveButtonStyle<>.rfButton(margin:)(&v73, v57);
  }

  else
  {
    static PrimitiveButtonStyle<>.rfButtonCircularIconOnly.getter(v57);
  }

  v40 = v56;
  sub_26A4D7DCC();
  sub_26A6BD3D8();
  v41 = v66;
  v42 = v55;
  sub_26A850978();
  sub_26A6BD444();
  (*(v65 + 8))(v42, v41);
  v43 = &v2[*(v68 + 68)];
  v44 = *v43;
  LOBYTE(v42) = v43[8];

  if ((v42 & 1) == 0)
  {
    sub_26A851EA8();
    v45 = sub_26A8501F8();
    sub_26A84EA78();

    v46 = v58;
    sub_26A84F978();
    swift_getAtKeyPath();
    j__swift_release();
    (*(v59 + 8))(v46, v60);
    v44 = v72;
  }

  if (!v44)
  {
    goto LABEL_15;
  }

LABEL_10:

  v47 = 1;
LABEL_16:
  sub_26A6B4C2C(v47, v71);
  return (*(v69 + 8))(v40, v70);
}

void sub_26A6B6D20(unint64_t *a1, uint64_t a2)
{
  if (!*(a1 + 24))
  {
    v3 = a1[1];
    v2 = a1[2];
    v4 = *a1;
    type metadata accessor for StandardPlayerButtonView(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B38C8, &qword_26A8756E0);
    sub_26A851058();
    LOBYTE(v2) = sub_26A6B5088(v3, v2, v8);

    if (v2)
    {
      sub_26A6B6DD8(v4, v5, v6, v7);
    }
  }
}

uint64_t sub_26A6B6DD8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 > 1)
  {
    type metadata accessor for VRXPlayerState(0, a2, a3, a4);
    result = sub_26A8525E8();
    __break(1u);
  }

  else
  {
    type metadata accessor for StandardPlayerButtonView(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC190, &qword_26A85A9E0);
    return sub_26A851068();
  }

  return result;
}

uint64_t sub_26A6B6EA0(uint64_t a1)
{
  v2 = sub_26A84B058();
  v51 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3800, &unk_26A856760);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v45 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B38C0, &unk_26A857FC0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v52 = &v45 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v45 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v45 - v20;
  sub_26A4D7E54();
  v22 = sub_26A84BAB8();
  v23 = a1;
  if (__swift_getEnumTagSinglePayload(v10, 1, v22) == 1)
  {
    sub_26A4D6FD8();
    v24 = sub_26A84E278();
    __swift_storeEnumTagSinglePayload(v21, 1, 1, v24);
  }

  else
  {
    v25 = sub_26A6B5D10();
    VRXIdiom.idiom.getter(v25, v4);
    sub_26A84BAA8();
    (*(v51 + 8))(v4, v2);
    (*(*(v22 - 8) + 8))(v10, v22);
  }

  sub_26A4D7E54();
  v26 = sub_26A84E278();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v18, 1, v26);
  v50 = v2;
  if (EnumTagSinglePayload == 1)
  {
    sub_26A4D6FD8();
    v28 = a1;
  }

  else
  {
    v29 = sub_26A84E248();
    (*(*(v26 - 8) + 8))(v18, v26);
    v28 = v23;
    if (v29)
    {
      v49 = v21;
      result = sub_26A6BD2FC(v29);
      v47 = v31;
      v48 = result;
      if (!v31)
      {
        __break(1u);
        goto LABEL_20;
      }

      v32 = (v23 + *(type metadata accessor for StandardPlayerButtonView(0) + 44));
      v33 = v32[1];
      v56 = *v32;
      v34 = v56;
      v57 = v33;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B38C8, &qword_26A8756E0);
      v46 = v23;
      sub_26A851058();
      sub_26A6B9514(v59, v48, v47);

      v54 = v34;
      v55 = v33;
      v53 = v58;
      v28 = v46;
      sub_26A851068();
    }
  }

  v35 = type metadata accessor for StandardPlayerButtonView(0);
  sub_26A4D7E54();
  if (__swift_getEnumTagSinglePayload(v7, 1, v22) == 1)
  {
    sub_26A4D6FD8();
    __swift_storeEnumTagSinglePayload(v52, 1, 1, v26);
  }

  else
  {
    v36 = sub_26A6B5D10();
    VRXIdiom.idiom.getter(v36, v4);
    sub_26A84BAA8();
    (*(v51 + 8))(v4, v50);
    (*(*(v22 - 8) + 8))(v7, v22);
  }

  sub_26A4D7E54();
  if (__swift_getEnumTagSinglePayload(v13, 1, v26) == 1)
  {
    sub_26A4D6FD8();
    sub_26A4D6FD8();
    return sub_26A4D6FD8();
  }

  v37 = sub_26A84E248();
  (*(*(v26 - 8) + 8))(v13, v26);
  if (!v37)
  {
    sub_26A4D6FD8();
    return sub_26A4D6FD8();
  }

  v38 = v28;
  result = sub_26A6BD2FC(v37);
  if (v39)
  {
    v40 = result;
    v41 = v39;
    v42 = (v38 + *(v35 + 44));
    v43 = v42[1];
    v56 = *v42;
    v44 = v56;
    v57 = v43;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B38C8, &qword_26A8756E0);
    sub_26A851058();
    sub_26A6B9514(v59, v40, v41);

    v54 = v44;
    v55 = v43;
    v53 = v58;
    sub_26A851068();

    sub_26A4D6FD8();
    return sub_26A4D6FD8();
  }

LABEL_20:
  __break(1u);
  return result;
}

void sub_26A6B7568(uint64_t a1)
{
  v2 = v1;
  v4 = sub_26A84CA58();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_26A84F988();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = a1;
  v12 = sub_26A84CA68();
  v14 = v13;
  v37 = type metadata accessor for StandardPlayerButtonView(0);
  v38 = v2;
  v15 = v2 + *(v37 + 60);
  v17 = *v15;
  v16 = *(v15 + 8);
  LODWORD(v15) = *(v15 + 16);
  v40 = v7;
  if (v15 == 1)
  {

    if (v16)
    {
      goto LABEL_3;
    }

LABEL_10:

    return;
  }

  sub_26A851EA8();
  v20 = sub_26A8501F8();
  v36 = v8;
  v21 = v12;
  v22 = v5;
  v23 = v4;
  v24 = v20;
  sub_26A84EA78();

  v4 = v23;
  v5 = v22;
  v12 = v21;
  sub_26A84F978();
  swift_getAtKeyPath();
  sub_26A556DF4(v17, v16, 0);
  (*(v9 + 8))(v11, v36);
  v17 = v42;
  v16 = v43;
  if (!v43)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v12 == v17 && v16 == v14)
  {

LABEL_12:
    v25 = v40;
    sub_26A84CA78();
    v26 = (*(v5 + 88))(v25, v4);
    if (v26 == *MEMORY[0x277D633E8])
    {
      v27 = (v38 + *(v37 + 40));
      v28 = *v27;
      v29 = *(v27 + 1);
      LOBYTE(v42) = v28;
      v43 = v29;
      HIBYTE(v41) = 1;
    }

    else
    {
      if (v26 != *MEMORY[0x277D633E0])
      {
        v33 = sub_26A851E98();
        LOBYTE(v34) = 2;
        sub_26A7C2B28(v33, 1, "SnippetUI/StandardPlayerButtonView.swift", 40, 2, 159, "updatePlayerButtonState(with:)", 30, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47);
        (*(v5 + 8))(v25, v4);
        return;
      }

      v30 = (v38 + *(v37 + 40));
      v31 = *v30;
      v32 = *(v30 + 1);
      LOBYTE(v42) = v31;
      v43 = v32;
      HIBYTE(v41) = 0;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC190, &qword_26A85A9E0);
    sub_26A851068();
    return;
  }

  v19 = sub_26A852598();

  if (v19)
  {
    goto LABEL_12;
  }
}

uint64_t sub_26A6B7900()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C8, &unk_26A856820);
  MEMORY[0x28223BE20](v2 - 8);
  v39 = (&v39 - v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3910, &qword_26A855580);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v39 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v39 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3800, &unk_26A856760);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v39 - v14;
  v16 = sub_26A84BAB8();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26A4D7E54();
  if (__swift_getEnumTagSinglePayload(v15, 1, v16) == 1)
  {
    sub_26A4D6FD8();
    v20 = type metadata accessor for StandardPlayerButtonView(0);
    v21 = *(v1 + *(v20 + 24));
    if (v21)
    {
      type metadata accessor for ActionHandler(0);
      sub_26A4D7E54();
      v22 = type metadata accessor for StandardActionHandler(0);
      if (__swift_getEnumTagSinglePayload(v9, 1, v22) == 1)
      {
        return sub_26A4D6FD8();
      }

      v31 = v39;
      *v39 = v21;
      *(v31 + 8) = 0;
      v32 = type metadata accessor for ActionType(0);
      swift_storeEnumTagMultiPayload();
      __swift_storeEnumTagSinglePayload(v31, 0, 1, v32);
      BYTE6(v40) = 1;
      v33 = v21;
      sub_26A573B9C();

      sub_26A4D6FD8();
    }

    else
    {
      v27 = (v1 + *(v20 + 32));
      v28 = *v27;
      if (!*v27)
      {
        v34 = sub_26A851E98();
        LOBYTE(v37) = 2;
        return sub_26A7C2D04(v34, 1, "SnippetUI/StandardPlayerButtonView.swift", 40, 2, 126, "performPlayAction()", 19, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50);
      }

      v29 = v27[1];
      type metadata accessor for ActionHandler(0);
      sub_26A4D7E54();
      v30 = type metadata accessor for StandardActionHandler(0);
      if (__swift_getEnumTagSinglePayload(v6, 1, v30) == 1)
      {
        return sub_26A4D6FD8();
      }

      v35 = v39;
      *v39 = v28;
      v35[1] = v29;
      *(v35 + 16) = 0;
      v36 = type metadata accessor for ActionType(0);
      swift_storeEnumTagMultiPayload();
      __swift_storeEnumTagSinglePayload(v35, 0, 1, v36);
      HIBYTE(v40) = 1;
      sub_26A4C2304(v28, v29);

      sub_26A573B9C();
      sub_26A4C24DC(v28, v29);
      sub_26A4D6FD8();
    }
  }

  else
  {
    (*(v17 + 32))(v19, v15, v16);
    type metadata accessor for StandardPlayerButtonView(0);
    type metadata accessor for ActionHandler(0);
    sub_26A4D7E54();
    v23 = type metadata accessor for StandardActionHandler(0);
    if (__swift_getEnumTagSinglePayload(v12, 1, v23) == 1)
    {
      (*(v17 + 8))(v19, v16);
      return sub_26A4D6FD8();
    }

    v25 = v39;
    (*(v17 + 16))(v39, v19, v16);
    v26 = type metadata accessor for ActionType(0);
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v25, 0, 1, v26);
    BYTE5(v40) = 1;
    sub_26A573B9C();
    sub_26A4D6FD8();
    (*(v17 + 8))(v19, v16);
  }

  return sub_26A6BD444();
}

double sub_26A6B7F0C(__n128 a1)
{
  v1 = sub_26A851778();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for Resources();
  sub_26A851768();
  v5 = sub_26A588140(2036427888, 0xE400000000000000, v4);
  v7 = v6;
  (*(v2 + 8))(v4, v1);
  v12 = v5;
  v13 = v7;
  v10 = 0x6C69662E79616C70;
  v11 = 0xE90000000000006CLL;
  sub_26A850FC8();

  return result;
}

uint64_t sub_26A6B8090(uint64_t a1, void (*a2)(void))
{
  a2();
  type metadata accessor for StandardPlayerButtonView(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC190, &qword_26A85A9E0);
  sub_26A851058();
  sub_26A851068();
}

uint64_t sub_26A6B8144()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C8, &unk_26A856820);
  MEMORY[0x28223BE20](v1 - 8);
  v40 = (&v38 - v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3910, &qword_26A855580);
  MEMORY[0x28223BE20](v3 - 8);
  v39 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v38 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v38 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3800, &unk_26A856760);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v38 - v12;
  v14 = sub_26A84BAB8();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for StandardPlayerButtonView(0);
  sub_26A4D7E54();
  if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
  {
    sub_26A4D6FD8();
    v19 = *(v0 + *(v18 + 28));
    if (v19)
    {
      type metadata accessor for ActionHandler(0);
      sub_26A4D7E54();
      v20 = type metadata accessor for StandardActionHandler(0);
      if (__swift_getEnumTagSinglePayload(v7, 1, v20) == 1)
      {
        return sub_26A4D6FD8();
      }

      v30 = v40;
      *v40 = v19;
      *(v30 + 8) = 0;
      v31 = type metadata accessor for ActionType(0);
      swift_storeEnumTagMultiPayload();
      __swift_storeEnumTagSinglePayload(v30, 0, 1, v31);
      BYTE6(v41) = 1;
      v32 = v19;
      sub_26A573B9C();

      sub_26A4D6FD8();
    }

    else
    {
      v25 = (v0 + *(v18 + 36));
      v26 = *v25;
      if (!*v25)
      {
        v33 = sub_26A851E98();
        LOBYTE(v36) = 2;
        return sub_26A7C2EE0(v33, 1, "SnippetUI/StandardPlayerButtonView.swift", 40, 2, 138, "performPauseAction()", 20, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49);
      }

      v27 = v25[1];
      type metadata accessor for ActionHandler(0);
      v28 = v39;
      sub_26A4D7E54();
      v29 = type metadata accessor for StandardActionHandler(0);
      if (__swift_getEnumTagSinglePayload(v28, 1, v29) == 1)
      {
        return sub_26A4D6FD8();
      }

      v34 = v40;
      *v40 = v26;
      v34[1] = v27;
      *(v34 + 16) = 0;
      v35 = type metadata accessor for ActionType(0);
      swift_storeEnumTagMultiPayload();
      __swift_storeEnumTagSinglePayload(v34, 0, 1, v35);
      HIBYTE(v41) = 1;
      sub_26A4C2304(v26, v27);

      sub_26A573B9C();
      sub_26A4C24DC(v26, v27);
      sub_26A4D6FD8();
    }
  }

  else
  {
    (*(v15 + 32))(v17, v13, v14);
    type metadata accessor for ActionHandler(0);
    sub_26A4D7E54();
    v21 = type metadata accessor for StandardActionHandler(0);
    if (__swift_getEnumTagSinglePayload(v10, 1, v21) == 1)
    {
      (*(v15 + 8))(v17, v14);
      return sub_26A4D6FD8();
    }

    v23 = v40;
    (*(v15 + 16))(v40, v17, v14);
    v24 = type metadata accessor for ActionType(0);
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v23, 0, 1, v24);
    BYTE5(v41) = 1;
    sub_26A573B9C();
    sub_26A4D6FD8();
    (*(v15 + 8))(v17, v14);
  }

  return sub_26A6BD444();
}

double sub_26A6B8758(__n128 a1)
{
  v1 = sub_26A851778();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for Resources();
  sub_26A851768();
  v5 = sub_26A588140(0x6573756170, 0xE500000000000000, v4);
  v7 = v6;
  (*(v2 + 8))(v4, v1);
  v12 = v5;
  v13 = v7;
  v10 = 0x69662E6573756170;
  v11 = 0xEA00000000006C6CLL;
  sub_26A850FC8();

  return result;
}

uint64_t sub_26A6B88E0@<X0>(uint64_t *a3@<X8>)
{

  result = sub_26A850F08();
  *a3 = result;
  return result;
}

void sub_26A6B892C(unint64_t *a1)
{
  v3 = type metadata accessor for StandardPlayerButtonView(0);
  OUTLINED_FUNCTION_79(v3);
  OUTLINED_FUNCTION_11_3();

  sub_26A6B6D20(a1, v1 + v4);
}

uint64_t objectdestroyTm_20()
{
  v1 = type metadata accessor for StandardPlayerButtonView(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = v0 + v2;
  v4 = sub_26A84BAB8();
  if (!__swift_getEnumTagSinglePayload(v0 + v2, 1, v4))
  {
    OUTLINED_FUNCTION_4_11();
    (*(v5 + 8))(v0 + v2, v4);
  }

  v6 = v1[5];
  if (!__swift_getEnumTagSinglePayload(v3 + v6, 1, v4))
  {
    OUTLINED_FUNCTION_4_11();
    (*(v7 + 8))(v3 + v6, v4);
  }

  if (*(v3 + v1[8]))
  {
  }

  if (*(v3 + v1[9]))
  {
  }

  v8 = v3 + v1[12];
  sub_26A556DF4(*v8, *(v8 + 8), *(v8 + 16));
  sub_26A49035C(*(v8 + 24), *(v8 + 32));
  v9 = type metadata accessor for ActionHandler(0);
  v10 = v9[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A93D0, &qword_26A856F10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_26A84E408();
    if (!__swift_getEnumTagSinglePayload(v8 + v10, 1, v11))
    {
      OUTLINED_FUNCTION_4_11();
      (*(v12 + 8))(v8 + v10, v11);
    }
  }

  else
  {
  }

  sub_26A556DF4(*(v8 + v9[7]), *(v8 + v9[7] + 8), *(v8 + v9[7] + 16));
  sub_26A49035C(*(v8 + v9[8]), *(v8 + v9[8] + 8));
  sub_26A49035C(*(v8 + v9[9]), *(v8 + v9[9] + 8));
  v13 = v8 + v9[10];
  if (*(v13 + 9))
  {
    if ((*(v13 + 8) & 1) == 0)
    {
      MEMORY[0x26D665710](v8 + v9[10]);
    }
  }

  else
  {
  }

  MEMORY[0x26D665710](v13 + 16);
  v14 = v8 + v9[11];
  v15 = type metadata accessor for StandardActionHandler(0);
  if (!__swift_getEnumTagSinglePayload(v14, 1, v15))
  {
    MEMORY[0x26D665710](v14);
    v16 = *(v15 + 24);
    v17 = sub_26A84E408();
    if (!__swift_getEnumTagSinglePayload(v14 + v16, 1, v17))
    {
      OUTLINED_FUNCTION_4_11();
      (*(v18 + 8))(v14 + v16, v17);
    }
  }

  v19 = OUTLINED_FUNCTION_20_22(v1[13]);
  sub_26A49035C(v19, v20);

  sub_26A556DF4(*(v3 + v1[15]), *(v3 + v1[15] + 8), *(v3 + v1[15] + 16));
  OUTLINED_FUNCTION_20_22(v1[16]);
  j__swift_release();
  OUTLINED_FUNCTION_20_22(v1[17]);
  j__swift_release();
  v21 = v3 + v1[18];
  sub_26A49035C(*v21, *(v21 + 8));
  sub_26A49035C(*(v21 + 16), *(v21 + 24));
  sub_26A49035C(*(v21 + 32), *(v21 + 40));
  sub_26A49035C(*(v21 + 48), *(v21 + 56));
  sub_26A49035C(*(v21 + 64), *(v21 + 72));
  sub_26A49035C(*(v21 + 80), *(v21 + 88));
  sub_26A49035C(*(v21 + 96), *(v21 + 104));
  sub_26A49035C(*(v21 + 112), *(v21 + 120));
  sub_26A49035C(*(v21 + 128), *(v21 + 136));
  sub_26A49035C(*(v21 + 144), *(v21 + 152));
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A0, &qword_26A854C60);
  v23 = v21 + *(v22 + 28);
  v24 = type metadata accessor for SummaryItemConstants(0);
  v25 = *(v24 + 36);
  v26 = sub_26A84B1D8();
  OUTLINED_FUNCTION_46();
  v28 = *(v27 + 8);
  v28(v23 + v25, v26);
  v28(v23 + *(v24 + 40), v26);
  v29 = v21 + *(v22 + 32);

  v30 = v29 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3890, &unk_26A856670) + 36);
  v28(v30 + *(v24 + 36), v26);
  v28(v30 + *(v24 + 40), v26);

  return swift_deallocObject();
}

uint64_t sub_26A6B8ED0()
{
  v1 = type metadata accessor for StandardPlayerButtonView(0);
  OUTLINED_FUNCTION_79(v1);
  OUTLINED_FUNCTION_11_3();

  return sub_26A6B6EA0(v0 + v2);
}

void sub_26A6B8F28(uint64_t a1)
{
  v2 = type metadata accessor for StandardPlayerButtonView(0);
  OUTLINED_FUNCTION_79(v2);
  OUTLINED_FUNCTION_11_3();
  sub_26A6B7568(a1);
}

uint64_t sub_26A6B8F84(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_26A875620;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_26A6B8FE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v6 = a3;
  v8 = *v3;
  sub_26A8526B8();
  sub_26A6B036C(v31, a2, v6);
  sub_26A8526F8();
  OUTLINED_FUNCTION_23_17();
  if (((*(v8 + 56 + v10) >> v4) & 1) == 0)
  {
LABEL_56:
    v23 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31[0] = *v23;
    sub_26A4E324C(a2, v6);
    sub_26A6BAE34(a2, v6, v4, isUniquelyReferenced_nonNull_native);
    *v23 = v31[0];
    *a1 = a2;
    *(a1 + 8) = v6;
    return 1;
  }

  v11 = ~v9;
  while (2)
  {
    v12 = *(v8 + 48) + 16 * v4;
    v13 = *v12;
    switch(*(v12 + 8))
    {
      case 1:
        if (v6 != 1)
        {
          goto LABEL_33;
        }

        v29 = v5;
        v15 = 0xE900000000000074;
        v16 = 0x6867696C746F7053;
        v17 = 0x6867696C746F7053;
        v18 = 0xE900000000000074;
        switch(*v12)
        {
          case 1u:
            v18 = 0xE400000000000000;
            v17 = 1769105747;
            break;
          case 2u:
            v17 = 0xD000000000000010;
            v18 = 0x800000026A88A230;
            break;
          case 3u:
            v17 = 0x6153656C69626F4DLL;
            v18 = 0xEC00000069726166;
            break;
          default:
            break;
        }

        switch(a2)
        {
          case 1:
            v15 = 0xE400000000000000;
            v16 = 1769105747;
            break;
          case 2:
            v16 = 0xD000000000000010;
            v15 = 0x800000026A88A230;
            break;
          case 3:
            v16 = 0x6153656C69626F4DLL;
            v15 = 0xEC00000069726166;
            break;
          default:
            break;
        }

        if (v17 == v16 && v18 == v15)
        {
        }

        else
        {
          v22 = sub_26A852598();

          v5 = v29;
          if ((v22 & 1) == 0)
          {
            goto LABEL_33;
          }
        }

        goto LABEL_58;
      case 2:
        if (v6 != 2 || v13 != a2)
        {
          goto LABEL_33;
        }

        goto LABEL_58;
      case 3:
        if (v6 != 3)
        {
          goto LABEL_33;
        }

        goto LABEL_32;
      case 4:
        if (v6 != 4)
        {
          goto LABEL_33;
        }

        goto LABEL_32;
      case 5:
        if (v6 != 5)
        {
          goto LABEL_33;
        }

        goto LABEL_32;
      case 6:
        if (v6 != 6)
        {
          goto LABEL_33;
        }

        goto LABEL_32;
      case 7:
        if (v6 == 7 && ((v13 ^ a2) & 1) == 0)
        {
          goto LABEL_58;
        }

        goto LABEL_33;
      case 8:
        if (v6 != 8)
        {
          goto LABEL_33;
        }

        v19 = v13 << 56;
        if (!a2)
        {
          if (!v19)
          {
            goto LABEL_58;
          }

LABEL_33:
          v4 = (v4 + 1) & v11;
          if (((*(v8 + 56 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
          {
            goto LABEL_56;
          }

          continue;
        }

        if (a2 == 1)
        {
          v20 = 0x100000000000000;
        }

        else
        {
          v20 = 0x200000000000000;
        }

        if (v19 != v20)
        {
          goto LABEL_33;
        }

LABEL_58:
        v26 = *(v8 + 48) + 16 * v4;
        v27 = *v26;
        *a1 = *v26;
        v28 = *(v26 + 8);
        *(a1 + 8) = v28;
        sub_26A4E324C(v27, v28);
        return 0;
      case 9:
        if (v6 != 9)
        {
          goto LABEL_33;
        }

        goto LABEL_32;
      case 0xA:
        if (v6 == 10)
        {
          goto LABEL_32;
        }

        goto LABEL_33;
      case 0xB:
        if (v6 != 11)
        {
          goto LABEL_33;
        }

LABEL_32:
        if ((v13 ^ a2))
        {
          goto LABEL_33;
        }

        goto LABEL_58;
      default:
        if (v6 || (sub_26A6B067C(v13, a2) & 1) == 0)
        {
          goto LABEL_33;
        }

        sub_26A587EE4(a2, 0);
        goto LABEL_58;
    }
  }
}

BOOL sub_26A6B93B4(void *a1, uint64_t a2)
{
  v4 = v2;
  v7 = *v2;
  sub_26A8526A8();
  OUTLINED_FUNCTION_26_12();
  while (1)
  {
    OUTLINED_FUNCTION_22_25();
    v10 = v9 & v8;
    if ((v9 & v8) == 0)
    {
      break;
    }

    if (*(*(v7 + 48) + 8 * v3) == a2)
    {
      goto LABEL_6;
    }
  }

  swift_isUniquelyReferenced_nonNull_native();
  v11 = OUTLINED_FUNCTION_16_21();
  sub_26A6BB228(v11, v12, v13, v14);
  *v4 = v16;
LABEL_6:
  result = v10 == 0;
  *a1 = a2;
  return result;
}

BOOL sub_26A6B9454(void *a1, uint64_t a2)
{
  v6 = *v2;
  sub_26A8526B8();
  MEMORY[0x26D664930](a2);
  sub_26A8526F8();
  OUTLINED_FUNCTION_26_12();
  while (1)
  {
    OUTLINED_FUNCTION_22_25();
    v9 = v8 & v7;
    if ((v8 & v7) == 0)
    {
      break;
    }

    if (*(*(v6 + 48) + 8 * v3) == a2)
    {
      goto LABEL_6;
    }
  }

  swift_isUniquelyReferenced_nonNull_native();
  v10 = OUTLINED_FUNCTION_16_21();
  sub_26A6BB32C(v10, v11, v12, v13);
  *v2 = v15;
LABEL_6:
  result = v9 == 0;
  *a1 = a2;
  return result;
}

BOOL sub_26A6B9514(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_26A8526B8();
  sub_26A851848();
  v8 = sub_26A8526F8();
  v9 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v10 = v8 & v9;
    v11 = (1 << (v8 & v9)) & *(v7 + 56 + (((v8 & v9) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v11)
    {
      break;
    }

    v12 = (*(v7 + 48) + 16 * v10);
    v13 = *v12 == a2 && v12[1] == a3;
    if (v13 || (sub_26A852598() & 1) != 0)
    {

      v14 = (*(v7 + 48) + 16 * v10);
      v15 = v14[1];
      *a1 = *v14;
      a1[1] = v15;

      return v11 == 0;
    }

    v8 = v10 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v3;

  sub_26A6BB464(a2, a3, v10, isUniquelyReferenced_nonNull_native, v17);
  *v3 = v19;
  *a1 = a2;
  a1[1] = a3;
  return v11 == 0;
}

uint64_t sub_26A6B9660(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_26A852178();

    if (v9)
    {

      sub_26A587EF4();
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
    }

    else
    {
      result = sub_26A852168();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v16 = sub_26A6B9D9C(v7, result + 1);
        v17 = *(v16 + 16);
        if (*(v16 + 24) <= v17)
        {
          sub_26A6BA888(v17 + 1);
        }

        v18 = v8;
        sub_26A6BADB0(v18, v16);

        *v3 = v16;
LABEL_16:
        *a1 = v18;
        return 1;
      }
    }
  }

  else
  {
    sub_26A587EF4();
    v11 = sub_26A851FE8();
    v12 = ~(-1 << *(v6 + 32));
    while (1)
    {
      v13 = v11 & v12;
      if (((*(v6 + 56 + (((v11 & v12) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v11 & v12)) & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v24 = *v3;
        v18 = a2;
        sub_26A6BB5CC(v18, v13, isUniquelyReferenced_nonNull_native, v20);
        *v3 = v24;
        goto LABEL_16;
      }

      v14 = *(*(v6 + 48) + 8 * v13);
      v15 = sub_26A851FF8();

      if (v15)
      {
        break;
      }

      v11 = v13 + 1;
    }

    v21 = *(*(v6 + 48) + 8 * v13);
    *a1 = v21;
    v22 = v21;
    return 0;
  }

  return result;
}

void sub_26A6B9864()
{
  OUTLINED_FUNCTION_28_0();
  v3 = v2;
  v44 = v4;
  v5 = type metadata accessor for LoadableText.Source.URLImage(0);
  v6 = OUTLINED_FUNCTION_79(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_41();
  v47 = v8 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B3930, &qword_26A85BD00);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v10);
  v12 = &v41 - v11;
  type metadata accessor for LoadableText.Source(0);
  OUTLINED_FUNCTION_15();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  v17 = (&v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v18);
  v52 = &v41 - v19;
  MEMORY[0x28223BE20](v20);
  v54 = &v41 - v21;
  MEMORY[0x28223BE20](v22);
  v42 = &v41 - v23;
  v43 = v0;
  v24 = *v0;
  sub_26A8526B8();
  v53 = v3;
  sub_26A538DC4();
  sub_26A8526F8();
  OUTLINED_FUNCTION_23_17();
  v51 = v26;
  if ((*(v26 + v27) >> v1))
  {
    v49 = ~v25;
    v50 = *(v14 + 72);
    v45 = v17;
    v46 = v24;
    do
    {
      OUTLINED_FUNCTION_12_33();
      v48 = v28;
      sub_26A6BD4EC();
      v29 = &v12[*(v9 + 48)];
      sub_26A6BD4EC();
      sub_26A6BD4EC();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_26A6BD4EC();
        v30 = v17[1];
        v61[0] = *v17;
        v61[1] = v30;
        v62[0] = v17[2];
        *(v62 + 9) = *(v17 + 41);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          sub_26A6BD444();
          sub_26A5393B4(v61);
          goto LABEL_10;
        }

        v31 = *(v29 + 1);
        v59[0] = *v29;
        v59[1] = v31;
        v33 = *v29;
        v32 = *(v29 + 1);
        v60[0] = *(v29 + 2);
        *(v60 + 9) = *(v29 + 41);
        v34 = v17[1];
        v57[0] = *v17;
        v57[1] = v34;
        v58[0] = v17[2];
        *(v58 + 9) = *(v17 + 41);
        v55[0] = v33;
        v55[1] = v32;
        v56[0] = *(v29 + 2);
        *(v56 + 9) = *(v29 + 41);
        v35 = sub_26A538794(v57, v55);
        OUTLINED_FUNCTION_0_70();
        sub_26A6BD444();
        sub_26A5393B4(v59);
        sub_26A5393B4(v61);
        if (v35)
        {
          goto LABEL_15;
        }

        sub_26A6BD444();
      }

      else
      {
        sub_26A6BD4EC();
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_26A6BD444();
          OUTLINED_FUNCTION_11_36();
          sub_26A6BD444();
LABEL_10:
          sub_26A4D6FD8();
          goto LABEL_13;
        }

        OUTLINED_FUNCTION_8_49();
        sub_26A6BD498();
        sub_26A538054();
        v37 = v36;
        OUTLINED_FUNCTION_10_41();
        sub_26A6BD444();
        OUTLINED_FUNCTION_0_70();
        sub_26A6BD444();
        sub_26A6BD444();
        if (v37)
        {
LABEL_15:
          sub_26A6BD444();
          sub_26A6BD444();
          OUTLINED_FUNCTION_1_70();
          sub_26A6BD4EC();
          goto LABEL_16;
        }

        sub_26A6BD444();
        v17 = v45;
      }

LABEL_13:
      v1 = (v1 + 1) & v49;
    }

    while (((*(v51 + ((v1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v1) & 1) != 0);
  }

  v38 = v43;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_1_70();
  v40 = v42;
  sub_26A6BD4EC();
  *&v61[0] = *v38;
  sub_26A6BB714(v40, v1, isUniquelyReferenced_nonNull_native);
  *v38 = *&v61[0];
  OUTLINED_FUNCTION_9_42();
  sub_26A6BD498();
LABEL_16:
  OUTLINED_FUNCTION_27_0();
}

uint64_t sub_26A6B9D9C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B3950, &unk_26A86B5D0);
    v2 = sub_26A8521F8();
    v15 = v2;
    sub_26A852158();
    while (1)
    {
      if (!sub_26A852188())
      {

        return v2;
      }

      sub_26A587EF4();
      swift_dynamicCast();
      v3 = *(v2 + 16);
      if (*(v2 + 24) <= v3)
      {
        sub_26A6BA888(v3 + 1);
      }

      v2 = v15;
      result = sub_26A851FE8();
      v5 = v15 + 56;
      v6 = -1 << *(v15 + 32);
      v7 = result & ~v6;
      v8 = v7 >> 6;
      if (((-1 << v7) & ~*(v15 + 56 + 8 * (v7 >> 6))) == 0)
      {
        break;
      }

      v9 = __clz(__rbit64((-1 << v7) & ~*(v15 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
      *(*(v15 + 48) + 8 * v9) = v14;
      ++*(v15 + 16);
    }

    v10 = 0;
    v11 = (63 - v6) >> 6;
    while (++v8 != v11 || (v10 & 1) == 0)
    {
      v12 = v8 == v11;
      if (v8 == v11)
      {
        v8 = 0;
      }

      v10 |= v12;
      v13 = *(v5 + 8 * v8);
      if (v13 != -1)
      {
        v9 = __clz(__rbit64(~v13)) + (v8 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_26A6B9F58(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1090, &unk_26A86B550);
  result = sub_26A8521E8();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

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
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      sub_26A6B8F84(0, (v28 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = *(v3 + 48) + 16 * (v13 | (v6 << 6));
    v17 = *v16;
    v18 = *(v16 + 8);
    sub_26A8526B8();
    sub_26A6B036C(v29, v17, v18);
    result = sub_26A8526F8();
    v19 = -1 << *(v5 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = *(v5 + 48) + 16 * v22;
    *v27 = v17;
    *(v27 + 8) = v18;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

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
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_26A6BA1BC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B3940, &unk_26A875748);
  result = sub_26A8521E8();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

  v6 = 0;
  v8 = (v3 + 56);
  v7 = *(v3 + 56);
  v9 = 1 << *(v3 + 32);
  v25 = v2;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v7;
  v12 = result + 56;
  if ((v10 & v7) == 0)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= ((v9 + 63) >> 6))
      {
        break;
      }

      v15 = v8[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    if (v9 >= 64)
    {
      sub_26A6B8F84(0, (v9 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v9;
    }

    v2 = v25;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_12:
    v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
    result = sub_26A8526A8();
    v17 = -1 << *(v5 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      break;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v5 + 48) + 8 * v20) = v16;
    ++*(v5 + 16);
    if (!v11)
    {
      goto LABEL_7;
    }
  }

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
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_26A6BA3E0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1098, &qword_26A875910);
  result = sub_26A8521E8();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

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
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      sub_26A6B8F84(0, (v25 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
    sub_26A8526B8();
    MEMORY[0x26D664930](v16);
    result = sub_26A8526F8();
    v17 = -1 << *(v5 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      break;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v5 + 48) + 8 * v20) = v16;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

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
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_26A6BA62C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B38D0, &qword_26A8756E8);
  result = sub_26A8521E8();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

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
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      sub_26A6B8F84(0, (v28 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = (*(v3 + 48) + 16 * (v13 | (v6 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_26A8526B8();
    sub_26A851848();
    result = sub_26A8526F8();
    v19 = -1 << *(v5 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v5 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

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
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_26A6BA888(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B3950, &unk_26A86B5D0);
  result = sub_26A8521E8();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

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
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      sub_26A6B8F84(0, (v25 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v25;
    }

    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
    result = sub_26A851FE8();
    v17 = -1 << *(v5 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      break;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v5 + 48) + 8 * v20) = v16;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

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
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_26A6BAAAC(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for LoadableText.Source(0);
  MEMORY[0x28223BE20](v3 - 8);
  v4 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3928, &qword_26A875740);
  result = sub_26A8521E8();
  v6 = result;
  if (!*(v4 + 16))
  {
LABEL_27:

    *v2 = v6;
    return result;
  }

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
  v13 = result + 56;
  if (!v11)
  {
LABEL_7:
    v14 = v7;
    while (1)
    {
      v7 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v7 >= v12)
      {
        break;
      }

      v15 = v8[v7];
      ++v14;
      if (v15)
      {
        v11 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v24 = 1 << *(v4 + 32);
    if (v24 >= 64)
    {
      sub_26A6B8F84(0, (v24 + 63) >> 6, v4 + 56);
    }

    else
    {
      *v8 = -1 << v24;
    }

    v2 = v1;
    *(v4 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v11 &= v11 - 1;
LABEL_12:
    sub_26A6BD498();
    sub_26A8526B8();
    sub_26A538DC4();
    result = sub_26A8526F8();
    v16 = -1 << *(v6 + 32);
    v17 = result & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v13 + 8 * (v17 >> 6))) == 0)
    {
      break;
    }

    v19 = __clz(__rbit64((-1 << v17) & ~*(v13 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v13 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    result = sub_26A6BD498();
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_7;
    }
  }

  v20 = 0;
  v21 = (63 - v16) >> 6;
  while (++v18 != v21 || (v20 & 1) == 0)
  {
    v22 = v18 == v21;
    if (v18 == v21)
    {
      v18 = 0;
    }

    v20 |= v22;
    v23 = *(v13 + 8 * v18);
    if (v23 != -1)
    {
      v19 = __clz(__rbit64(~v23)) + (v18 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

unint64_t sub_26A6BADB0(uint64_t a1, uint64_t a2)
{
  sub_26A851FE8();
  result = sub_26A852148();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void sub_26A6BAE34(uint64_t a1, char a2, unint64_t a3, char a4)
{
  v5 = v4;
  v9 = *(*v4 + 16);
  v10 = *(*v4 + 24);
  if (v10 <= v9 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_26A6B9F58(v9 + 1);
    }

    else
    {
      if (v10 > v9)
      {
        sub_26A6BBCD4();
        goto LABEL_63;
      }

      sub_26A6BC52C(v9 + 1);
    }

    v11 = *v4;
    sub_26A8526B8();
    sub_26A6B036C(v31, a1, a2);
    v12 = sub_26A8526F8();
    v13 = -1 << *(v11 + 32);
    a3 = v12 & ~v13;
    if ((*(v11 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
    {
      v14 = ~v13;
      while (1)
      {
        v15 = *(v11 + 48) + 16 * a3;
        v16 = *v15;
        switch(*(v15 + 8))
        {
          case 1:
            if (a2 != 1)
            {
              goto LABEL_40;
            }

            v18 = 0xE900000000000074;
            v19 = 0x6867696C746F7053;
            switch(*v15)
            {
              case 1u:
                v18 = 0xE400000000000000;
                v19 = 1769105747;
                break;
              case 2u:
                v19 = 0xD000000000000010;
                v18 = 0x800000026A88A230;
                break;
              case 3u:
                v19 = 0x6153656C69626F4DLL;
                v18 = 0xEC00000069726166;
                break;
              default:
                break;
            }

            v22 = 0x6867696C746F7053;
            v23 = 0xE900000000000074;
            switch(a1)
            {
              case 1:
                v23 = 0xE400000000000000;
                v22 = 1769105747;
                break;
              case 2:
                v22 = 0xD000000000000010;
                v23 = 0x800000026A88A230;
                break;
              case 3:
                v22 = 0x6153656C69626F4DLL;
                v23 = 0xEC00000069726166;
                break;
              default:
                break;
            }

            if (v19 == v22 && v18 == v23)
            {
              goto LABEL_66;
            }

            v25 = sub_26A852598();

            if (v25)
            {
              goto LABEL_67;
            }

            goto LABEL_40;
          case 2:
            if (a2 == 2 && v16 == a1)
            {
              goto LABEL_67;
            }

            goto LABEL_40;
          case 3:
            if (a2 != 3)
            {
              goto LABEL_40;
            }

            goto LABEL_39;
          case 4:
            if (a2 != 4)
            {
              goto LABEL_40;
            }

            goto LABEL_39;
          case 5:
            if (a2 != 5)
            {
              goto LABEL_40;
            }

            goto LABEL_39;
          case 6:
            if (a2 != 6)
            {
              goto LABEL_40;
            }

            goto LABEL_39;
          case 7:
            if (a2 == 7 && ((v16 ^ a1) & 1) == 0)
            {
              goto LABEL_67;
            }

            goto LABEL_40;
          case 8:
            if (a2 != 8)
            {
              goto LABEL_40;
            }

            v20 = v16 << 56;
            if (a1)
            {
              if (a1 == 1)
              {
                v21 = 0x100000000000000;
              }

              else
              {
                v21 = 0x200000000000000;
              }

              if (v20 == v21)
              {
                goto LABEL_67;
              }
            }

            else if (!v20)
            {
              goto LABEL_67;
            }

LABEL_40:
            a3 = (a3 + 1) & v14;
            if (((*(v11 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) == 0)
            {
              goto LABEL_63;
            }

            break;
          case 9:
            if (a2 != 9)
            {
              goto LABEL_40;
            }

            goto LABEL_39;
          case 0xA:
            if (a2 == 10)
            {
              goto LABEL_39;
            }

            goto LABEL_40;
          case 0xB:
            if (a2 != 11)
            {
              goto LABEL_40;
            }

LABEL_39:
            if ((v16 ^ a1))
            {
              goto LABEL_40;
            }

            goto LABEL_67;
          default:
            if (!a2 && (sub_26A6B067C(v16, a1) & 1) != 0)
            {
              goto LABEL_67;
            }

            goto LABEL_40;
        }
      }
    }
  }

LABEL_63:
  v26 = *v5;
  *(*v5 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v27 = *(v26 + 48) + 16 * a3;
  *v27 = a1;
  *(v27 + 8) = a2;
  v28 = *(v26 + 16);
  v29 = __OFADD__(v28, 1);
  v30 = v28 + 1;
  if (v29)
  {
    __break(1u);
LABEL_66:

LABEL_67:
    sub_26A852608();
    __break(1u);
  }

  else
  {
    *(v26 + 16) = v30;
  }
}

unint64_t sub_26A6BB228(unint64_t result, unint64_t a2, char a3, __n128 a4)
{
  v6 = result;
  v7 = *(*v4 + 16);
  v8 = *(*v4 + 24);
  if (v8 <= v7 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_26A6BA1BC(v7 + 1);
      goto LABEL_10;
    }

    if (v8 <= v7)
    {
      sub_26A6BC76C(v7 + 1);
LABEL_10:
      v13 = *v4;
      result = sub_26A8526A8();
      v14 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = result & v14;
        if (((*(v13 + 56 + (((result & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v14)) & 1) == 0)
        {
          goto LABEL_7;
        }

        if (*(*(v13 + 48) + 8 * a2) == v6)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_26A6BBE34();
  }

LABEL_7:
  v9 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v9 + 48) + 8 * a2) = v6;
  v10 = *(v9 + 16);
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
LABEL_15:
    result = sub_26A852608();
    __break(1u);
  }

  else
  {
    *(v9 + 16) = v12;
  }

  return result;
}

unint64_t sub_26A6BB32C(unint64_t result, unint64_t a2, char a3, __n128 a4)
{
  v6 = result;
  v7 = *(*v4 + 16);
  v8 = *(*v4 + 24);
  if (v8 <= v7 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_26A6BA3E0(v7 + 1);
      goto LABEL_10;
    }

    if (v8 <= v7)
    {
      sub_26A6BC958(v7 + 1);
LABEL_10:
      v13 = *v4;
      sub_26A8526B8();
      MEMORY[0x26D664930](v6);
      result = sub_26A8526F8();
      v17 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = result & v17;
        if (((*(v13 + 56 + (((result & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v17)) & 1) == 0)
        {
          goto LABEL_7;
        }

        type metadata accessor for VRXIdiom(0, v14, v15, v16);
        if (*(*(v13 + 48) + 8 * a2) == v6)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_26A6BBF74();
  }

LABEL_7:
  v9 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v9 + 48) + 8 * a2) = v6;
  v10 = *(v9 + 16);
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
LABEL_15:
    result = sub_26A852608();
    __break(1u);
  }

  else
  {
    *(v9 + 16) = v12;
  }

  return result;
}

void sub_26A6BB464(uint64_t result, uint64_t a2, unint64_t a3, char a4, __n128 a5)
{
  v9 = *(*v5 + 16);
  v10 = *(*v5 + 24);
  if (v10 <= v9 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_26A6BA62C(v9 + 1);
      goto LABEL_10;
    }

    if (v10 <= v9)
    {
      sub_26A6BCB74(v9 + 1);
LABEL_10:
      v16 = *v5;
      sub_26A8526B8();
      sub_26A851848();
      v17 = sub_26A8526F8();
      v18 = ~(-1 << *(v16 + 32));
      while (1)
      {
        a3 = v17 & v18;
        if (((*(v16 + 56 + (((v17 & v18) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v17 & v18)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v19 = (*(v16 + 48) + 16 * a3);
        v20 = *v19 == result && v19[1] == a2;
        if (v20 || (sub_26A852598() & 1) != 0)
        {
          goto LABEL_19;
        }

        v17 = a3 + 1;
      }
    }

    sub_26A6BC0B4();
  }

LABEL_7:
  v11 = *v5;
  *(*v5 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v12 = (*(v11 + 48) + 16 * a3);
  *v12 = result;
  v12[1] = a2;
  v13 = *(v11 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
LABEL_19:
    sub_26A852608();
    __break(1u);
  }

  else
  {
    *(v11 + 16) = v15;
  }
}

unint64_t sub_26A6BB5CC(unint64_t result, unint64_t a2, char a3, __n128 a4)
{
  v6 = result;
  v7 = *(*v4 + 16);
  v8 = *(*v4 + 24);
  if (v8 <= v7 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_26A6BA888(v7 + 1);
      goto LABEL_10;
    }

    if (v8 <= v7)
    {
      sub_26A6BCDA8(v7 + 1);
LABEL_10:
      v13 = *v4;
      result = sub_26A851FE8();
      v14 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = result & v14;
        if (((*(v13 + 56 + (((result & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v14)) & 1) == 0)
        {
          goto LABEL_7;
        }

        sub_26A587EF4();
        v15 = *(*(v13 + 48) + 8 * a2);
        v16 = sub_26A851FF8();

        if (v16)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_26A6BC20C();
  }

LABEL_7:
  v9 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v9 + 48) + 8 * a2) = v6;
  v10 = *(v9 + 16);
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
LABEL_15:
    result = sub_26A852608();
    __break(1u);
  }

  else
  {
    *(v9 + 16) = v12;
  }

  return result;
}

uint64_t sub_26A6BB714(uint64_t a1, unint64_t a2, char a3)
{
  v45 = a1;
  v6 = type metadata accessor for LoadableText.Source.URLImage(0);
  MEMORY[0x28223BE20](v6 - 8);
  v40 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B3930, &qword_26A85BD00);
  MEMORY[0x28223BE20](v8);
  v10 = &v36 - v9;
  v11 = type metadata accessor for LoadableText.Source(0);
  v39 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = (&v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v16 = *(*v3 + 16);
  v17 = *(*v3 + 24);
  v36 = v3;
  if (v17 <= v16 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_26A6BAAAC(v16 + 1);
    }

    else
    {
      if (v17 > v16)
      {
        sub_26A6BC35C();
        goto LABEL_21;
      }

      sub_26A6BCFB8(v16 + 1);
    }

    v18 = *v3;
    sub_26A8526B8();
    sub_26A538DC4();
    v19 = sub_26A8526F8();
    v43 = v18 + 56;
    v44 = v18;
    v20 = -1 << *(v18 + 32);
    a2 = v19 & ~v20;
    if ((*(v18 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v42 = ~v20;
      v41 = *(v39 + 72);
      v37 = v10;
      v38 = v11;
      do
      {
        sub_26A6BD4EC();
        v21 = &v10[*(v8 + 48)];
        sub_26A6BD4EC();
        sub_26A6BD4EC();
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_26A6BD4EC();
          v22 = v13[1];
          v52[0] = *v13;
          v52[1] = v22;
          v53[0] = v13[2];
          *(v53 + 9) = *(v13 + 41);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v23 = *(v21 + 1);
            v50[0] = *v21;
            v50[1] = v23;
            v25 = *v21;
            v24 = *(v21 + 1);
            v51[0] = *(v21 + 2);
            *(v51 + 9) = *(v21 + 41);
            v26 = v13[1];
            v48[0] = *v13;
            v48[1] = v26;
            v49[0] = v13[2];
            *(v49 + 9) = *(v13 + 41);
            v46[0] = v25;
            v46[1] = v24;
            v47[0] = *(v21 + 2);
            *(v47 + 9) = *(v21 + 41);
            v27 = sub_26A538794(v48, v46);
            sub_26A6BD444();
            sub_26A5393B4(v50);
            sub_26A5393B4(v52);
            if (v27)
            {
              goto LABEL_24;
            }

            sub_26A6BD444();
            goto LABEL_20;
          }

          sub_26A6BD444();
          sub_26A5393B4(v52);
        }

        else
        {
          sub_26A6BD4EC();
          if (swift_getEnumCaseMultiPayload() != 1)
          {
            sub_26A6BD498();
            sub_26A538054();
            v29 = v28;
            sub_26A6BD444();
            sub_26A6BD444();
            sub_26A6BD444();
            if (v29)
            {
              goto LABEL_24;
            }

            v30 = v37;
            sub_26A6BD444();
            v10 = v30;
            goto LABEL_20;
          }

          sub_26A6BD444();
          sub_26A6BD444();
        }

        sub_26A4D6FD8();
LABEL_20:
        a2 = (a2 + 1) & v42;
      }

      while (((*(v43 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_21:
  v31 = *v36;
  *(*v36 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_26A6BD498();
  v33 = *(v31 + 16);
  v34 = __OFADD__(v33, 1);
  v35 = v33 + 1;
  if (v34)
  {
    __break(1u);
LABEL_24:
    sub_26A6BD444();
    result = sub_26A852608();
    __break(1u);
  }

  else
  {
    *(v31 + 16) = v35;
  }

  return result;
}

void *sub_26A6BBCD4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1090, &unk_26A86B550);
  v2 = *v0;
  v3 = sub_26A8521D8();
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
        v17 = v14 | (v8 << 6);
        v18 = *(v2 + 48) + 16 * v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v4 + 48) + 16 * v17;
        *v21 = *v18;
        *(v21 + 8) = v20;
        result = sub_26A4E324C(v19, v20);
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

void *sub_26A6BBE34()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B3940, &unk_26A875748);
  v2 = *v0;
  v3 = sub_26A8521D8();
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
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

void *sub_26A6BBF74()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1098, &qword_26A875910);
  v2 = *v0;
  v3 = sub_26A8521D8();
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
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

void sub_26A6BC0B4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B38D0, &qword_26A8756E8);
  v2 = *v0;
  v3 = sub_26A8521D8();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
        *v20 = *v18;
        v20[1] = v19;
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
}

id sub_26A6BC20C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B3950, &unk_26A86B5D0);
  v2 = *v0;
  v3 = sub_26A8521D8();
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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

void sub_26A6BC35C()
{
  OUTLINED_FUNCTION_28_0();
  v1 = v0;
  v2 = type metadata accessor for LoadableText.Source(0);
  MEMORY[0x28223BE20](v2 - 8);
  OUTLINED_FUNCTION_41();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3928, &qword_26A875740);
  v3 = *v0;
  v4 = sub_26A8521D8();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = (v4 + 56);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || v6 >= v3 + 56 + 8 * v7)
    {
      memmove(v6, (v3 + 56), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 56);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v13 &= v13 - 1;
LABEL_17:
        OUTLINED_FUNCTION_1_70();
        sub_26A6BD4EC();
        OUTLINED_FUNCTION_9_42();
        sub_26A6BD498();
      }

      while (v13);
    }

    v15 = v9;
    while (1)
    {
      v9 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      v16 = *(v3 + 56 + 8 * v9);
      ++v15;
      if (v16)
      {
        v13 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v5;
    OUTLINED_FUNCTION_27_0();
  }
}

uint64_t sub_26A6BC52C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1090, &unk_26A86B550);
  result = sub_26A8521E8();
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
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = *(v3 + 48) + 16 * (v12 | (v6 << 6));
        v16 = *v15;
        v17 = *(v15 + 8);
        sub_26A8526B8();
        sub_26A4E324C(v16, v17);
        sub_26A6B036C(v27, v16, v17);
        result = sub_26A8526F8();
        v18 = -1 << *(v5 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        v26 = *(v5 + 48) + 16 * v21;
        *v26 = v16;
        *(v26 + 8) = v17;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

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
        v25 = *(v11 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_26A6BC76C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B3940, &unk_26A875748);
  result = sub_26A8521E8();
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
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = *(*(v3 + 48) + 8 * (v12 | (v6 << 6)));
        result = sub_26A8526A8();
        v16 = -1 << *(v5 + 32);
        v17 = result & ~v16;
        v18 = v17 >> 6;
        if (((-1 << v17) & ~*(v11 + 8 * (v17 >> 6))) == 0)
        {
          break;
        }

        v19 = __clz(__rbit64((-1 << v17) & ~*(v11 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
        *(*(v5 + 48) + 8 * v19) = v15;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v20 = 0;
      v21 = (63 - v16) >> 6;
      while (++v18 != v21 || (v20 & 1) == 0)
      {
        v22 = v18 == v21;
        if (v18 == v21)
        {
          v18 = 0;
        }

        v20 |= v22;
        v23 = *(v11 + 8 * v18);
        if (v23 != -1)
        {
          v19 = __clz(__rbit64(~v23)) + (v18 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {
          goto LABEL_23;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_23:

    *v2 = v5;
  }

  return result;
}

uint64_t sub_26A6BC958(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1098, &qword_26A875910);
  result = sub_26A8521E8();
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
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = *(*(v3 + 48) + 8 * (v12 | (v6 << 6)));
        sub_26A8526B8();
        MEMORY[0x26D664930](v15);
        result = sub_26A8526F8();
        v16 = -1 << *(v5 + 32);
        v17 = result & ~v16;
        v18 = v17 >> 6;
        if (((-1 << v17) & ~*(v11 + 8 * (v17 >> 6))) == 0)
        {
          break;
        }

        v19 = __clz(__rbit64((-1 << v17) & ~*(v11 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
        *(*(v5 + 48) + 8 * v19) = v15;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v20 = 0;
      v21 = (63 - v16) >> 6;
      while (++v18 != v21 || (v20 & 1) == 0)
      {
        v22 = v18 == v21;
        if (v18 == v21)
        {
          v18 = 0;
        }

        v20 |= v22;
        v23 = *(v11 + 8 * v18);
        if (v23 != -1)
        {
          v19 = __clz(__rbit64(~v23)) + (v18 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_26A6BCB74(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B38D0, &qword_26A8756E8);
  result = sub_26A8521E8();
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
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = (*(v3 + 48) + 16 * (v12 | (v6 << 6)));
        v16 = *v15;
        v17 = v15[1];
        sub_26A8526B8();

        sub_26A851848();
        result = sub_26A8526F8();
        v18 = -1 << *(v5 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        v26 = (*(v5 + 48) + 16 * v21);
        *v26 = v16;
        v26[1] = v17;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

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
        v25 = *(v11 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_26A6BCDA8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B3950, &unk_26A86B5D0);
  result = sub_26A8521E8();
  v5 = result;
  if (*(v3 + 16))
  {
    v24 = v1;
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
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = *(*(v3 + 48) + 8 * (v12 | (v6 << 6)));
        result = sub_26A851FE8();
        v16 = -1 << *(v5 + 32);
        v17 = result & ~v16;
        v18 = v17 >> 6;
        if (((-1 << v17) & ~*(v11 + 8 * (v17 >> 6))) == 0)
        {
          break;
        }

        v19 = __clz(__rbit64((-1 << v17) & ~*(v11 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
        *(*(v5 + 48) + 8 * v19) = v15;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v20 = 0;
      v21 = (63 - v16) >> 6;
      while (++v18 != v21 || (v20 & 1) == 0)
      {
        v22 = v18 == v21;
        if (v18 == v21)
        {
          v18 = 0;
        }

        v20 |= v22;
        v23 = *(v11 + 8 * v18);
        if (v23 != -1)
        {
          v19 = __clz(__rbit64(~v23)) + (v18 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v24;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_26A6BCFB8(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for LoadableText.Source(0);
  MEMORY[0x28223BE20](v3 - 8);
  v4 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3928, &qword_26A875740);
  result = sub_26A8521E8();
  v6 = result;
  if (*(v4 + 16))
  {
    v7 = 0;
    v8 = 1 << *(v4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    if (v10)
    {
      while (1)
      {
        v10 &= v10 - 1;
LABEL_12:
        sub_26A6BD4EC();
        sub_26A8526B8();
        sub_26A538DC4();
        result = sub_26A8526F8();
        v15 = -1 << *(v6 + 32);
        v16 = result & ~v15;
        v17 = v16 >> 6;
        if (((-1 << v16) & ~*(v12 + 8 * (v16 >> 6))) == 0)
        {
          break;
        }

        v18 = __clz(__rbit64((-1 << v16) & ~*(v12 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v12 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
        result = sub_26A6BD498();
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_7;
        }
      }

      v19 = 0;
      v20 = (63 - v15) >> 6;
      while (++v17 != v20 || (v19 & 1) == 0)
      {
        v21 = v17 == v20;
        if (v17 == v20)
        {
          v17 = 0;
        }

        v19 |= v21;
        v22 = *(v12 + 8 * v17);
        if (v22 != -1)
        {
          v18 = __clz(__rbit64(~v22)) + (v17 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v7;
      while (1)
      {
        v7 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v4 + 56 + 8 * v7);
        ++v13;
        if (v14)
        {
          v10 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_26A6BD28C(void *a1)
{
  v2 = [a1 aceId];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_26A8517B8();

  return v3;
}

uint64_t sub_26A6BD2FC(void *a1)
{
  v1 = [a1 aceId];
  if (v1)
  {
    v2 = v1;
    sub_26A8517B8();
  }

  return OUTLINED_FUNCTION_211();
}

uint64_t sub_26A6BD374(void (*a1)(void))
{
  v3 = type metadata accessor for StandardPlayerButtonView(0);
  OUTLINED_FUNCTION_79(v3);
  OUTLINED_FUNCTION_11_3();
  return sub_26A6B8090(v1 + v4, a1);
}

unint64_t sub_26A6BD3D8()
{
  OUTLINED_FUNCTION_196();
  result = *v2;
  if (!result)
  {
    v1(255);
    result = swift_getWitnessTable();
    atomic_store(result, v0);
  }

  return result;
}

uint64_t sub_26A6BD444()
{
  OUTLINED_FUNCTION_196();
  v1(0);
  OUTLINED_FUNCTION_46();
  (*(v2 + 8))(v0);
  return v0;
}

uint64_t sub_26A6BD498()
{
  OUTLINED_FUNCTION_145();
  v1(0);
  OUTLINED_FUNCTION_46();
  v2 = OUTLINED_FUNCTION_211();
  v3(v2);
  return v0;
}

uint64_t sub_26A6BD4EC()
{
  OUTLINED_FUNCTION_145();
  v1(0);
  OUTLINED_FUNCTION_46();
  v2 = OUTLINED_FUNCTION_211();
  v3(v2);
  return v0;
}

unint64_t sub_26A6BD540()
{
  result = qword_2803B3960;
  if (!qword_2803B3960)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2803B38B0, &qword_26A8756D8);
    sub_26A6BD5F8();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B3960);
  }

  return result;
}

unint64_t sub_26A6BD5F8()
{
  result = qword_2803B3968;
  if (!qword_2803B3968)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2803B38A0, &qword_26A8756D0);
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B3968);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_21_22(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{

  return sub_26A851068();
}

BOOL sub_26A6BD850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 == a5 && a2 == a6)
  {
    if (a3 != a7)
    {
      return 0;
    }

    return a4 == a8;
  }

  v13 = sub_26A852598();
  result = 0;
  if ((v13 & 1) != 0 && a3 == a7)
  {
    return a4 == a8;
  }

  return result;
}

uint64_t sub_26A6BD8D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_26A851848();
  MEMORY[0x26D664930](a4);
  return MEMORY[0x26D664930](a5);
}

uint64_t sub_26A6BD918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_26A8526B8();
  sub_26A851848();
  MEMORY[0x26D664930](a3);
  MEMORY[0x26D664930](a4);
  return sub_26A8526F8();
}

double sub_26A6BD990@<D0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;

  return result;
}

uint64_t sub_26A6BD9B4(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_26A8526B8();
  sub_26A851848();
  MEMORY[0x26D664930](v2);
  MEMORY[0x26D664930](v3);
  return sub_26A8526F8();
}

uint64_t sub_26A6BDA44()
{

  v1 = sub_26A6BDABC(v0);

  return v1;
}

uint64_t sub_26A6BDA80()
{

  v1 = sub_26A6BDABC(v0);

  return v1;
}

uint64_t sub_26A6BDABC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1DF0, &unk_26A871C50);
  MEMORY[0x28223BE20](v2 - 8);
  OUTLINED_FUNCTION_19();
  v122 = v3;
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v4);
  v129 = &v120 - v5;
  v6 = type metadata accessor for TableCell(0);
  v7 = *(v6 - 1);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_19();
  v124 = v8;
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v9);
  v123 = &v120 - v10;
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v11);
  v13 = &v120 - v12;
  MEMORY[0x28223BE20](v14);
  v128 = &v120 - v15;
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v16);
  v126 = &v120 - v17;
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v18);
  v20 = &v120 - v19;
  v21 = a1 + 64;
  v22 = 1 << *(a1 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & *(a1 + 64);
  v25 = (v22 + 63) >> 6;

  v27 = 0;
  v28 = MEMORY[0x277D84F90];
  v132 = v26;
  while (v24)
  {
LABEL_9:
    v30 = __clz(__rbit64(v24));
    v24 &= v24 - 1;
    v31 = (*(v26 + 48) + ((v27 << 11) | (32 * v30)));
    if (v31[3] == 1)
    {
      v32 = *v31;
      v33 = v31[1];
      v130 = v31[2];
      v131 = v32;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v134 = v28;
      v133 = v33;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_26A7DD2B8(0, *(v28 + 16) + 1, 1, v35, v36, v37, v38);
        v28 = v134;
      }

      v40 = *(v28 + 16);
      v39 = *(v28 + 24);
      v41 = v40 + 1;
      v26 = v132;
      if (v40 >= v39 >> 1)
      {
        v127 = v40 + 1;
        sub_26A7DD2B8(v39 > 1, v40 + 1, 1, v35, v36, v37, v38);
        v41 = v127;
        v26 = v132;
        v28 = v134;
      }

      *(v28 + 16) = v41;
      v42 = (v28 + 32 * v40);
      v43 = v133;
      v42[4] = v131;
      v42[5] = v43;
      v42[6] = v130;
      v42[7] = 1;
    }
  }

  while (1)
  {
    v29 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
      goto LABEL_88;
    }

    if (v29 >= v25)
    {
      break;
    }

    v24 = *(v21 + 8 * v29);
    ++v27;
    if (v24)
    {
      v27 = v29;
      goto LABEL_9;
    }
  }

  v44 = 1 << *(v132 + 32);
  v45 = -1;
  if (v44 < 64)
  {
    v45 = ~(-1 << v44);
  }

  v27 = v45 & *(v132 + 64);
  v46 = (v44 + 63) >> 6;

  v47 = v132;
  v25 = 0;
  v48 = MEMORY[0x277D84F90];
  while (1)
  {
    v127 = v48;
    if (!v27)
    {
      break;
    }

LABEL_23:
    v49 = __clz(__rbit64(v27));
    v27 &= v27 - 1;
    v50 = (*(v47 + 48) + ((v25 << 11) | (32 * v49)));
    v51 = v50[3];
    if (v51 > 1)
    {
      v53 = *v50;
      v52 = v50[1];
      v130 = v50[2];
      v131 = v53;
      v133 = v52;

      v54 = swift_isUniquelyReferenced_nonNull_native();
      v48 = v127;
      v134 = v127;
      if ((v54 & 1) == 0)
      {
        v59 = *(v127 + 16) + 1;
        v127 = v28;
        sub_26A7DD2B8(0, v59, 1, v55, v56, v57, v58);
        v28 = v127;
        v48 = v134;
      }

      v61 = *(v48 + 16);
      v60 = *(v48 + 24);
      v62 = v61 + 1;
      v47 = v132;
      if (v61 >= v60 >> 1)
      {
        v127 = v28;
        v125 = v61 + 1;
        v121 = v61;
        sub_26A7DD2B8(v60 > 1, v61 + 1, 1, v55, v56, v57, v58);
        v62 = v125;
        v61 = v121;
        v28 = v127;
        v47 = v132;
        v48 = v134;
      }

      *(v48 + 16) = v62;
      v63 = (v48 + 32 * v61);
      v64 = v133;
      v63[4] = v131;
      v63[5] = v64;
      v63[6] = v130;
      v63[7] = v51;
    }
  }

  while (1)
  {
    v29 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      goto LABEL_86;
    }

    if (v29 >= v46)
    {
      break;
    }

    v27 = *(v21 + 8 * v29);
    ++v25;
    if (v27)
    {
      v25 = v29;
      goto LABEL_23;
    }
  }

  v134 = v28;

  sub_26A6BE698(&v134);

  v21 = v134;
  v125 = *(v134 + 16);
  if (v125)
  {
    v65 = 0;
    v120 = v134 + 32;
    v27 = MEMORY[0x277D84F90];
    v28 = 1;
    v121 = v134;
    do
    {
      v29 = *(v21 + 16);
      if (v65 >= v29)
      {
        goto LABEL_87;
      }

      v66 = (v120 + 32 * v65);
      v68 = *v66;
      v67 = v66[1];
      v69 = v66[2];
      v130 = v66[3];
      v131 = v68;
      v70 = *(v27 + 16);
      v133 = v67;

      if (v70 < v69)
      {
        do
        {
          v71 = *(v27 + 16);
          sub_26A84ACB8();
          *&v20[v6[5]] = 0;
          *&v20[v6[6]] = v71;
          *&v20[v6[7]] = 1;
          v20[v6[8]] = 3;
          v20[v6[9]] = 0;
          *&v20[v6[10]] = 0;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_0_53();
            sub_26A7A2598();
            v27 = v75;
          }

          v72 = *(v27 + 16);
          v73 = v72 + 1;
          if (v72 >= *(v27 + 24) >> 1)
          {
            sub_26A7A2598();
            v27 = v76;
          }

          *(v27 + 16) = v73;
          OUTLINED_FUNCTION_1_71();
          sub_26A625DE4(v20, v27 + v74 + *(v7 + 72) * v72);
        }

        while (v73 < v69);
      }

      v77 = v132;
      if (*(v132 + 16) && (v78 = sub_26A5487E8(v131, v133, v69, v130), (v79 & 1) != 0))
      {
        v25 = v129;
        sub_26A680A54(*(v77 + 56) + *(v7 + 72) * v78, v129);
        v80 = 0;
      }

      else
      {
        v80 = 1;
        v25 = v129;
      }

      v21 = v121;
      v28 = 1;
      __swift_storeEnumTagSinglePayload(v25, v80, 1, v6);

      if (__swift_getEnumTagSinglePayload(v25, 1, v6) == 1)
      {
        sub_26A657E14(v25);
      }

      else
      {
        v81 = v25;
        v25 = v126;
        sub_26A625DE4(v81, v126);
        sub_26A680A54(v25, v128);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_0_53();
          sub_26A7A2598();
          v27 = v84;
        }

        v82 = *(v27 + 16);
        if (v82 >= *(v27 + 24) >> 1)
        {
          sub_26A7A2598();
          v27 = v85;
        }

        sub_26A657E7C(v126);
        *(v27 + 16) = v82 + 1;
        OUTLINED_FUNCTION_1_71();
        sub_26A625DE4(v128, v27 + v83 + *(v7 + 72) * v82);
        v28 = 1;
      }

      ++v65;
    }

    while (v65 != v125);
  }

  else
  {

    v27 = MEMORY[0x277D84F90];
  }

  if (!*(v27 + 16))
  {
    v21 = MEMORY[0x277D84F90];
    v87 = v127;
    goto LABEL_56;
  }

  sub_26A7A2574(0, 1, 1, MEMORY[0x277D84F90]);
  v21 = v86;
  v28 = *(v86 + 16);
  v29 = *(v86 + 24);
  v25 = v28 + 1;
  if (v28 >= v29 >> 1)
  {
    goto LABEL_89;
  }

  while (1)
  {
    v87 = v127;
    *(v21 + 16) = v25;
    *(v21 + 8 * v28 + 32) = v27;
LABEL_56:
    v126 = *(v87 + 16);
    if (!v126)
    {
      break;
    }

    v88 = 0;
    v125 = v87 + 32;
    while (1)
    {
      v29 = *(v87 + 16);
      if (v88 >= v29)
      {
        break;
      }

      v130 = v21;
      v131 = v88;
      v89 = (v125 + 32 * v88);
      v91 = *v89;
      v90 = v89[1];
      v92 = v89[2];
      v128 = v89[3];
      v129 = v91;
      v133 = v90;
      if (v92 <= 0)
      {

        v94 = MEMORY[0x277D84F90];
      }

      else
      {
        v93 = *(v27 + 16);

        v94 = MEMORY[0x277D84F90];
        do
        {
          sub_26A84ACB8();
          *&v13[v6[5]] = 0;
          *&v13[v6[6]] = v93;
          *&v13[v6[7]] = 1;
          v13[v6[8]] = 3;
          v13[v6[9]] = 0;
          *&v13[v6[10]] = 0;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_0_53();
            sub_26A7A2598();
            v94 = v98;
          }

          v95 = *(v94 + 16);
          v96 = v95 + 1;
          if (v95 >= *(v94 + 24) >> 1)
          {
            sub_26A7A2598();
            v94 = v99;
          }

          *(v94 + 16) = v96;
          OUTLINED_FUNCTION_1_71();
          sub_26A625DE4(v13, v94 + v97 + *(v7 + 72) * v95);
        }

        while (v96 < v92);
      }

      v100 = v132;
      if (*(v132 + 16) && (v101 = sub_26A5487E8(v129, v133, v92, v128), (v102 & 1) != 0))
      {
        v103 = v122;
        sub_26A680A54(*(v100 + 56) + *(v7 + 72) * v101, v122);
        v104 = 0;
      }

      else
      {
        v104 = 1;
        v103 = v122;
      }

      v21 = v130;
      __swift_storeEnumTagSinglePayload(v103, v104, 1, v6);

      if (__swift_getEnumTagSinglePayload(v103, 1, v6) == 1)
      {
        sub_26A657E14(v103);
      }

      else
      {
        v105 = v103;
        v106 = v123;
        sub_26A625DE4(v105, v123);
        sub_26A680A54(v106, v124);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_0_53();
          sub_26A7A2598();
          v94 = v116;
        }

        v107 = *(v94 + 16);
        if (v107 >= *(v94 + 24) >> 1)
        {
          sub_26A7A2598();
          v94 = v117;
        }

        sub_26A657E7C(v123);
        *(v94 + 16) = v107 + 1;
        OUTLINED_FUNCTION_1_71();
        sub_26A625DE4(v124, v94 + v108 + *(v7 + 72) * v107);
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v111 = OUTLINED_FUNCTION_0_53();
        sub_26A7A2574(v111, v112, v113, v21);
        v21 = v114;
      }

      v28 = *(v21 + 16);
      v109 = *(v21 + 24);
      v25 = v28 + 1;
      v87 = v127;
      v110 = v131;
      if (v28 >= v109 >> 1)
      {
        sub_26A7A2574(v109 > 1, v28 + 1, 1, v21);
        v110 = v131;
        v87 = v127;
        v21 = v115;
      }

      v88 = v110 + 1;
      *(v21 + 16) = v25;
      *(v21 + 8 * v28 + 32) = v94;
      if (v88 == v126)
      {
        goto LABEL_84;
      }
    }

LABEL_88:
    __break(1u);
LABEL_89:
    sub_26A7A2574(v29 > 1, v25, 1, v21);
    v21 = v119;
  }

LABEL_84:

  return v21;
}