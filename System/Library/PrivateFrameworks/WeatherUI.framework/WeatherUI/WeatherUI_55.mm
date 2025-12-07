uint64_t sub_1BCD91B34(uint64_t a1)
{
  v2 = sub_1BCD92298();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BCD91B70(uint64_t a1)
{
  v2 = sub_1BCD92298();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BCD91BAC(uint64_t a1)
{
  v2 = sub_1BCD92394();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BCD91BE8(uint64_t a1)
{
  v2 = sub_1BCD92394();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BCD91C24(uint64_t a1)
{
  v2 = sub_1BCD922EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BCD91C60(uint64_t a1)
{
  v2 = sub_1BCD922EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BCD91C9C(uint64_t a1)
{
  v2 = sub_1BCD92340();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BCD91CD8(uint64_t a1)
{
  v2 = sub_1BCD92340();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void SunriseSunsetViewModel.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_18_0();
  v96 = v25;
  v94 = v24;
  v29 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0DE60, &qword_1BCE6B9B0);
  OUTLINED_FUNCTION_2();
  v92 = v31;
  v93 = v30;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_10_16();
  v91 = v33;
  v34 = OUTLINED_FUNCTION_13();
  v89 = type metadata accessor for SunriseSunsetViewModel.PolarDayModel(v34);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_2_0();
  v90 = v37 - v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0DE68, &qword_1BCE6B9B8);
  OUTLINED_FUNCTION_2();
  v87 = v39;
  v88 = v38;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_10_16();
  v86 = v41;
  v42 = OUTLINED_FUNCTION_13();
  v84 = type metadata accessor for SunriseSunsetViewModel.PolarNightModel(v42);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_2_0();
  v85 = v45 - v44;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0DE70, &qword_1BCE6B9C0);
  OUTLINED_FUNCTION_2();
  v82 = v47;
  v83 = v46;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v48);
  v49 = OUTLINED_FUNCTION_8_15();
  v81 = type metadata accessor for SunriseSunsetViewModel.NormalSunriseSunsetModel(v49);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v50);
  v51 = OUTLINED_FUNCTION_5_68();
  type metadata accessor for SunriseSunsetViewModel(v51);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_2_0();
  v55 = v54 - v53;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0DE78, &qword_1BCE6B9C8);
  OUTLINED_FUNCTION_2();
  v57 = v56;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v58);
  v60 = &v81 - v59;
  OUTLINED_FUNCTION_84_1(v29, v29[3]);
  sub_1BCD92298();
  sub_1BCE1E170();
  OUTLINED_FUNCTION_1_83();
  sub_1BCD8EC4C(v94, v55);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v62 = (v57 + 8);
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v63 = type metadata accessor for SunriseSunsetViewModel.PolarNightModel;
      v64 = v85;
      sub_1BCD8B2DC(v55, v85);
      OUTLINED_FUNCTION_29_1();
      sub_1BCD92340();
      v65 = v86;
      OUTLINED_FUNCTION_31_15();
      sub_1BCE1DF90();
      OUTLINED_FUNCTION_41_9();
      sub_1BC994568(v66, v67, &protocol conformance descriptor for SunriseSunsetViewModel.PolarNightModel);
      v68 = v88;
      sub_1BCE1E020();
      v69 = v87;
    }

    else
    {
      v63 = type metadata accessor for SunriseSunsetViewModel.PolarDayModel;
      v64 = v90;
      sub_1BCD8B2DC(v55, v90);
      sub_1BCD922EC();
      v65 = v91;
      OUTLINED_FUNCTION_31_15();
      sub_1BCE1DF90();
      OUTLINED_FUNCTION_39_10();
      sub_1BC994568(v76, v77, &protocol conformance descriptor for SunriseSunsetViewModel.PolarDayModel);
      v68 = v93;
      sub_1BCE1E020();
      v69 = v92;
    }

    (*(v69 + 8))(v65, v68);
    sub_1BCD8B334(v64, v63);
    v78 = OUTLINED_FUNCTION_36_13();
    v80(v78, v79);
  }

  else
  {
    sub_1BCD8B2DC(v55, v27);
    sub_1BCD92394();
    v70 = v95;
    sub_1BCE1DF90();
    OUTLINED_FUNCTION_40_10();
    sub_1BC994568(v71, v72, &protocol conformance descriptor for SunriseSunsetViewModel.NormalSunriseSunsetModel);
    v73 = v83;
    sub_1BCE1E020();
    (*(v82 + 8))(v26, v73);
    v74 = OUTLINED_FUNCTION_60_0();
    sub_1BCD8B334(v74, v75);
    (*v62)(v60, v70);
  }

  OUTLINED_FUNCTION_17_1();
}

unint64_t sub_1BCD92298()
{
  result = qword_1EBD0DE80;
  if (!qword_1EBD0DE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0DE80);
  }

  return result;
}

unint64_t sub_1BCD922EC()
{
  result = qword_1EBD0DE88;
  if (!qword_1EBD0DE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0DE88);
  }

  return result;
}

unint64_t sub_1BCD92340()
{
  result = qword_1EBD0DE98;
  if (!qword_1EBD0DE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0DE98);
  }

  return result;
}

unint64_t sub_1BCD92394()
{
  result = qword_1EBD0DEA8;
  if (!qword_1EBD0DEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0DEA8);
  }

  return result;
}

void SunriseSunsetViewModel.init(from:)()
{
  OUTLINED_FUNCTION_18_0();
  v88 = v0;
  v4 = v3;
  v80 = v5;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0DEB8, &qword_1BCE6B9D0);
  OUTLINED_FUNCTION_2();
  v79 = v6;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_10_16();
  v82 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0DEC0, &qword_1BCE6B9D8);
  OUTLINED_FUNCTION_2();
  v77 = v10;
  v78 = v9;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_10_16();
  v83 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0DEC8, &qword_1BCE6B9E0);
  OUTLINED_FUNCTION_2();
  v75 = v14;
  v76 = v13;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_10_16();
  v81 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0DED0, &qword_1BCE6B9E8);
  OUTLINED_FUNCTION_2();
  v84 = v18;
  v85 = v17;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v19);
  v20 = type metadata accessor for SunriseSunsetViewModel(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_20_10();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v69 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v69 - v26;
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_34_11();
  v87 = v4;
  v29 = OUTLINED_FUNCTION_129();
  OUTLINED_FUNCTION_84_1(v29, v30);
  sub_1BCD92298();
  v31 = v88;
  sub_1BCE1E160();
  if (v31)
  {
    goto LABEL_9;
  }

  v71 = v24;
  v72 = v27;
  v73 = v1;
  v74 = v2;
  v88 = v20;
  sub_1BCE1DF80();
  sub_1BCA24D28();
  if (v33 == v34 >> 1)
  {
LABEL_8:
    v45 = sub_1BCE1DD90();
    swift_allocError();
    v47 = v46;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07C50, &qword_1BCE40E90);
    *v47 = v88;
    sub_1BCE1DEE0();
    sub_1BCE1DD80();
    (*(*(v45 - 8) + 104))(v47, *MEMORY[0x1E69E6AF8], v45);
    swift_willThrow();
    swift_unknownObjectRelease();
    v48 = OUTLINED_FUNCTION_46();
    v49(v48);
LABEL_9:
    __swift_destroy_boxed_opaque_existential_1(v87);
LABEL_10:
    OUTLINED_FUNCTION_17_1();
    return;
  }

  if (v33 < (v34 >> 1))
  {
    v35 = *(v32 + v33);
    sub_1BCA24D24();
    v37 = v36;
    v39 = v38;
    swift_unknownObjectRelease();
    if (v37 == v39 >> 1)
    {
      if (v35)
      {
        if (v35 == 1)
        {
          OUTLINED_FUNCTION_29_1();
          sub_1BCD92340();
          OUTLINED_FUNCTION_31_15();
          sub_1BCE1DED0();
          v40 = v74;
          type metadata accessor for SunriseSunsetViewModel.PolarNightModel(0);
          OUTLINED_FUNCTION_41_9();
          sub_1BC994568(v41, v42, &protocol conformance descriptor for SunriseSunsetViewModel.PolarNightModel);
          v43 = v71;
          v44 = v78;
          sub_1BCE1DF70();
          v70 = 0;
          swift_unknownObjectRelease();
          v56 = OUTLINED_FUNCTION_38_13();
          v57(v56, v44);
          v58 = OUTLINED_FUNCTION_27_12();
        }

        else
        {
          sub_1BCD922EC();
          OUTLINED_FUNCTION_31_15();
          sub_1BCE1DED0();
          v40 = v74;
          type metadata accessor for SunriseSunsetViewModel.PolarDayModel(0);
          OUTLINED_FUNCTION_39_10();
          sub_1BC994568(v54, v55, &protocol conformance descriptor for SunriseSunsetViewModel.PolarDayModel);
          v43 = v73;
          OUTLINED_FUNCTION_55_6();
          sub_1BCE1DF70();
          v70 = 0;
          swift_unknownObjectRelease();
          v66 = OUTLINED_FUNCTION_127();
          v67(v66);
          v58 = OUTLINED_FUNCTION_36_13();
        }

        v59(v58);
        swift_storeEnumTagMultiPayload();
        v65 = v43;
        v64 = v87;
      }

      else
      {
        sub_1BCD92394();
        OUTLINED_FUNCTION_31_15();
        sub_1BCE1DED0();
        type metadata accessor for SunriseSunsetViewModel.NormalSunriseSunsetModel(0);
        OUTLINED_FUNCTION_40_10();
        sub_1BC994568(v50, v51, &protocol conformance descriptor for SunriseSunsetViewModel.NormalSunriseSunsetModel);
        v52 = v72;
        v53 = v76;
        sub_1BCE1DF70();
        v70 = 0;
        swift_unknownObjectRelease();
        v60 = OUTLINED_FUNCTION_38_13();
        v61(v60, v53);
        v62 = OUTLINED_FUNCTION_36_13();
        v63(v62);
        swift_storeEnumTagMultiPayload();
        v64 = v87;
        v40 = v74;
        v65 = v52;
      }

      v68 = v80;
      sub_1BCD8B2DC(v65, v40);
      sub_1BCD8B2DC(v40, v68);
      __swift_destroy_boxed_opaque_existential_1(v64);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  __break(1u);
}

uint64_t sub_1BCD92C18()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07868, &unk_1BCE3E4F0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v114 = &v101 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v123 = &v101 - v3;
  MEMORY[0x1EEE9AC00](v4);
  v112 = &v101 - v5;
  MEMORY[0x1EEE9AC00](v6);
  v111 = (&v101 - v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07888, &qword_1BCE4EB90);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v101 - v9;
  v11 = sub_1BCE19470();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v119 = &v101 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v128 = &v101 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v101 - v17;
  v19 = sub_1BCE19060();
  v124 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v118 = &v101 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v127 = &v101 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v126 = &v101 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v125 = &v101 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v101 - v28;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v101 - v31;
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v101 - v34;
  v36 = type metadata accessor for SunriseSunsetViewModel(0);
  __swift_allocate_value_buffer(v36, qword_1EDA199D8);
  v113 = v36;
  v117 = __swift_project_value_buffer(v36, qword_1EDA199D8);
  v120 = v35;
  sub_1BCE197B0();
  v121 = v32;
  sub_1BCD93848();
  v122 = v29;
  sub_1BCD93848();
  sub_1BCE19400();
  result = __swift_getEnumTagSinglePayload(v10, 1, v11);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v38 = *(v12 + 32);
    v116 = v18;
    v38(v18, v10, v11);
    v39 = v12;
    if (qword_1EDA1EFB0 != -1)
    {
      swift_once();
    }

    v40 = v11;
    swift_beginAccess();
    v41 = qword_1EDA1EFB8;
    v104 = sub_1BCE18B60();
    v105 = v42;

    if (qword_1EDA16958 != -1)
    {
      swift_once();
    }

    v43 = qword_1EDA16960;
    v103 = NSDateFormatter.periodSymbols.getter();

    v44 = qword_1EDA1EFB8;
    v109 = sub_1BCE18B60();
    v108 = v45;

    v46 = v125;
    v47 = *(v124 + 16);
    v47(v125, v120, v19);
    v47(v126, v121, v19);
    v47(v127, v122, v19);
    v110 = v39;
    v48 = *(v39 + 16);
    v115 = v40;
    v48(v128, v116, v40);
    v49 = v48;
    v101 = v48;
    v102 = v39 + 16;
    v50 = qword_1EDA1EFB8;
    v107 = sub_1BCE18B60();
    v106 = v51;

    v52 = v117;
    v47(v117, v46, v19);
    v53 = type metadata accessor for SunriseSunsetViewModel.NormalSunriseSunsetModel(0);
    v54 = v126;
    v47((v52 + v53[5]), v126, v19);
    v55 = v127;
    v47((v52 + v53[6]), v127, v19);
    v49(v52 + v53[7], v128, v115);
    v56 = (v52 + v53[8]);
    v57 = v105;
    *v56 = v104;
    v56[1] = v57;
    *(v52 + v53[9]) = v103;
    v58 = v111;
    v47(v111, v54, v19);
    __swift_storeEnumTagSinglePayload(v58, 0, 1, v19);
    v59 = v112;
    v47(v112, v55, v19);
    __swift_storeEnumTagSinglePayload(v59, 0, 1, v19);
    v60 = v125;
    Date.isDaytime(sunrise:sunset:)();
    v61 = v19;
    v63 = v62;
    sub_1BC94C05C(v59, &qword_1EBD07868, &unk_1BCE3E4F0);
    sub_1BC94C05C(v58, &qword_1EBD07868, &unk_1BCE3E4F0);
    v111 = v53;
    v64 = v53[12];
    v65 = v63 & 1;
    v66 = v61;
    LODWORD(v112) = v65;
    *(v52 + v64) = v65;
    v47(v118, v60, v61);
    v67 = v123;
    v47(v123, v126, v66);
    __swift_storeEnumTagSinglePayload(v67, 0, 1, v66);
    v68 = v114;
    v47(v114, v127, v66);
    v69 = v115;
    __swift_storeEnumTagSinglePayload(v68, 0, 1, v66);
    v70 = v69;
    v101(v119, v128, v69);
    v71 = 0;
    v72 = MEMORY[0x1E69E7CC0];
    do
    {
      v73 = sin((v71 + -90.0) / 180.0 * 3.14159265);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1BCB65EA0(0, *(v72 + 16) + 1, 1, v72);
        v72 = v80;
      }

      v78 = *(v72 + 16);
      v77 = *(v72 + 24);
      if (v78 >= v77 >> 1)
      {
        sub_1BCB65EA0(v77 > 1, v78 + 1, 1, v72);
        v72 = v81;
      }

      *(v72 + 16) = v78 + 1;
      v79 = v72 + 16 * v78;
      *(v79 + 32) = v71;
      *(v79 + 40) = (v73 + 1.0) * 0.5 + 0.0;
      ++v71;
    }

    while (v71 != 361);
    v82 = v123;
    v83 = v118;
    v84 = v119;
    v85 = v112;
    sub_1BCD8F0F0(v123, v68, v118, v119, v112, v74, v75, v76, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120);
    v86 = v129;
    v87 = v130;
    sub_1BCD904C0(v82, v68, v83, v84);
    v89 = v88;
    v90 = asin(v88 + v88 + -1.0);
    v91 = *(v110 + 8);
    v91(v84, v70);
    sub_1BC94C05C(v68, &qword_1EBD07868, &unk_1BCE3E4F0);
    sub_1BC94C05C(v82, &qword_1EBD07868, &unk_1BCE3E4F0);
    v92 = *(v124 + 8);
    v92(v83, v66);
    v91(v128, v70);
    v92(v127, v66);
    v92(v126, v66);
    v92(v125, v66);
    v93 = v90 / 3.14159265 * 180.0 + 90.0;
    if (v86 >= 180.0)
    {
      v93 = 360.0 - v93 + -6.0;
    }

    v94 = v111;
    v95 = v117;
    v96 = &v117[v111[10]];
    *v96 = v72;
    *(v96 + 1) = v86;
    *(v96 + 2) = v87;
    *(v96 + 3) = v89;
    *(v96 + 4) = v93;
    v96[40] = 0;
    v96[41] = v85;
    v97 = (v95 + *(v94 + 44));
    v98 = v108;
    *v97 = v109;
    v97[1] = v98;
    v99 = (v95 + *(v94 + 52));
    v100 = v106;
    *v99 = v107;
    v99[1] = v100;
    v99[2] = 0x662E7465736E7573;
    v99[3] = 0xEB000000006C6C69;
    swift_storeEnumTagMultiPayload();
    v91(v116, v70);
    v92(v122, v66);
    v92(v121, v66);
    return (v92)(v120, v66);
  }

  return result;
}

void sub_1BCD93848()
{
  OUTLINED_FUNCTION_20_0();
  v1 = sub_1BCE193E0();
  OUTLINED_FUNCTION_2();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2_0();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07888, &qword_1BCE4EB90);
  OUTLINED_FUNCTION_14(v8);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_6_15();
  sub_1BCE19060();
  OUTLINED_FUNCTION_2();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v13);
  sub_1BCE197B0();
  sub_1BCE19400();
  v14 = sub_1BCE19470();
  if (__swift_getEnumTagSinglePayload(v0, 1, v14) == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1BCE18F40();
    v15 = *(v11 + 8);
    v16 = OUTLINED_FUNCTION_40_1();
    v15(v16);
    v17 = OUTLINED_FUNCTION_60_0();
    v18(v17);
    sub_1BCE19390();
    sub_1BCE18F00();
    (*(v3 + 8))(v7, v1);
    v19 = OUTLINED_FUNCTION_107_2();
    v15(v19);
    OUTLINED_FUNCTION_21();
  }
}

void static SunriseSunsetViewModel.placeholderNormal(currentDate:sunrise:sunset:timeZone:description:timePeriodSymbols:title:header:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t *a30)
{
  OUTLINED_FUNCTION_107_1();
  a27 = v31;
  a28 = v32;
  v164 = v33;
  v155 = v34;
  v154 = v35;
  v151 = v36;
  v175 = v37;
  v176 = v38;
  v167 = v39;
  v163 = v40;
  v169 = v41;
  v42 = a30;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07868, &unk_1BCE3E4F0);
  v44 = OUTLINED_FUNCTION_14(v43);
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_3_0();
  v171 = v45;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_6_1();
  v170 = v47;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x1EEE9AC00](v49);
  v152 = &v147 - v50;
  OUTLINED_FUNCTION_13();
  v51 = sub_1BCE19470();
  OUTLINED_FUNCTION_2();
  v53 = v52;
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x1EEE9AC00](v55);
  v57 = &v147 - v56;
  v58 = sub_1BCE19060();
  OUTLINED_FUNCTION_2();
  v60 = v59;
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_20_10();
  MEMORY[0x1EEE9AC00](v63);
  v65 = &v147 - v64;
  v67 = MEMORY[0x1EEE9AC00](v66);
  v68 = *v42;
  v69 = v42[1];
  v70 = v42[3];
  v166 = v42[2];
  v165 = v70;
  v162 = v60;
  v71 = *(v60 + 16);
  v172 = &v147 - v72;
  v71(v67);
  v173 = v65;
  (v71)(v65, v167, v58);
  v174 = v30;
  v167 = v58;
  v150 = v71;
  (v71)(v30, v175, v58);
  v163 = v53;
  v73 = v53 + 16;
  v74 = *(v53 + 16);
  v75 = v176;
  v175 = v57;
  v176 = v51;
  v74(v57, v75, v51);
  v148 = v69;
  v147 = v68;
  if (v69)
  {
    v160 = v68;
    v159 = v69;
    v156 = v166;
    v76 = v165;
    v77 = &a16;
  }

  else
  {
    if (qword_1EDA1EFB0 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v78 = qword_1EDA1EFB8;
    v160 = sub_1BCE18B60();
    v159 = v79;

    v158 = 0xEB000000006C6C69;
    v76 = 0x662E7465736E7573;
    v77 = &a14;
  }

  *(v77 - 32) = v76;
  v157 = a29;
  v80 = v169;
  v81 = v167;
  v82 = v150;
  (v150)(v169, v172, v167);
  v83 = type metadata accessor for SunriseSunsetViewModel.NormalSunriseSunsetModel(0);
  (v82)(v80 + v83[5], v173, v81);
  v84 = v174;
  (v82)(v80 + v83[6], v174, v81);
  v74((v80 + v83[7]), v175, v176);
  v85 = (v80 + v83[8]);
  v86 = v151;
  v151 = v74;
  v87 = v154;
  *v85 = v86;
  v85[1] = v87;
  *(v80 + v83[9]) = v155;
  v149 = v73;
  v88 = OUTLINED_FUNCTION_60_0();
  (v82)(v88);
  OUTLINED_FUNCTION_60();
  __swift_storeEnumTagSinglePayload(v89, v90, v91, v81);
  v92 = v153;
  (v82)(v153, v84, v81);
  OUTLINED_FUNCTION_60();
  __swift_storeEnumTagSinglePayload(v93, v94, v95, v81);
  sub_1BCAA84D4(v147, v148, v166, v165);

  OUTLINED_FUNCTION_60_0();
  v96 = v172;
  Date.isDaytime(sunrise:sunset:)();
  v98 = v97;
  sub_1BC94C05C(v92, &qword_1EBD07868, &unk_1BCE3E4F0);
  v99 = OUTLINED_FUNCTION_60_0();
  sub_1BC94C05C(v99, v100, &unk_1BCE3E4F0);
  v166 = v83;
  v101 = v98 & 1;
  *(v80 + v83[12]) = v98 & 1;
  v102 = OUTLINED_FUNCTION_65_2();
  (v82)(v102, v96, v81);
  (v82)(v170, v173, v81);
  OUTLINED_FUNCTION_60();
  __swift_storeEnumTagSinglePayload(v103, v104, v105, v81);
  (v82)(v171, v174, v81);
  OUTLINED_FUNCTION_60();
  __swift_storeEnumTagSinglePayload(v106, v107, v108, v81);
  v109 = v161;
  v151(v161, v175, v176);
  v110 = 0;
  v111 = MEMORY[0x1E69E7CC0];
  do
  {
    v112 = sin((v110 + -90.0) / 180.0 * 3.14159265);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1BCB65EA0(0, *(v111 + 16) + 1, 1, v111);
      v111 = v116;
    }

    v114 = *(v111 + 16);
    v113 = *(v111 + 24);
    if (v114 >= v113 >> 1)
    {
      sub_1BCB65EA0(v113 > 1, v114 + 1, 1, v111);
      v111 = v117;
    }

    *(v111 + 16) = v114 + 1;
    v115 = v111 + 16 * v114;
    *(v115 + 32) = v110;
    *(v115 + 40) = (v112 + 1.0) * 0.5 + 0.0;
    ++v110;
  }

  while (v110 != 361);
  v118 = v170;
  v119 = v171;
  v120 = OUTLINED_FUNCTION_129();
  v121 = v168;
  sub_1BCD8F0F0(v120, v122, v168, v109, v101, v123, v124, v125, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166);
  v126 = v177;
  v127 = v178;
  v128 = OUTLINED_FUNCTION_129();
  sub_1BCD904C0(v128, v129, v121, v109);
  v131 = v130;
  v132 = asin(v130 + v130 + -1.0);
  v133 = *(v163 + 8);
  v134 = v109;
  v135 = v176;
  v133(v134, v176);
  sub_1BC94C05C(v119, &qword_1EBD07868, &unk_1BCE3E4F0);
  sub_1BC94C05C(v118, &qword_1EBD07868, &unk_1BCE3E4F0);
  v136 = *(v162 + 8);
  v137 = v167;
  v136(v121, v167);
  v133(v175, v135);
  v136(v174, v137);
  v136(v173, v137);
  v136(v172, v137);
  v138 = v132 / 3.14159265 * 180.0 + 90.0;
  if (v126 >= 180.0)
  {
    v138 = 360.0 - v138 + -6.0;
  }

  v139 = v166;
  v140 = v169;
  v141 = v169 + v166[10];
  *v141 = v111;
  *(v141 + 8) = v126;
  *(v141 + 16) = v127;
  *(v141 + 24) = v131;
  *(v141 + 32) = v138;
  *(v141 + 40) = 0;
  *(v141 + 41) = v101;
  v142 = (v140 + *(v139 + 44));
  v143 = v157;
  *v142 = v164;
  v142[1] = v143;
  v144 = (v140 + *(v139 + 52));
  v145 = v159;
  *v144 = v160;
  v144[1] = v145;
  v146 = v158;
  v144[2] = v156;
  v144[3] = v146;
  type metadata accessor for SunriseSunsetViewModel(0);
  swift_storeEnumTagMultiPayload();

  OUTLINED_FUNCTION_74_2();
}

uint64_t static SunriseSunsetViewModel.placeholderModel.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDA199D0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for SunriseSunsetViewModel(0);
  __swift_project_value_buffer(v2, qword_1EDA199D8);
  OUTLINED_FUNCTION_1_83();
  return sub_1BCD8EC4C(v3, a1);
}

uint64_t __swift_get_extra_inhabitant_index_20Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_11();
  sub_1BCE19060();
  OUTLINED_FUNCTION_1();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = v3;
  }

  else
  {
    sub_1BCE19470();
    OUTLINED_FUNCTION_1();
    if (*(v11 + 84) != a2)
    {
      return OUTLINED_FUNCTION_87_3(*(a3 + 24));
    }

    v8 = v10;
    v9 = v3 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

void __swift_store_extra_inhabitant_index_21Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_11();
  sub_1BCE19060();
  OUTLINED_FUNCTION_1();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = v4;
  }

  else
  {
    sub_1BCE19470();
    OUTLINED_FUNCTION_1();
    if (*(v13 + 84) != a3)
    {
      *(v4 + *(a4 + 24) + 8) = (a2 - 1);
      return;
    }

    v10 = v12;
    v11 = v4 + *(a4 + 20);
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_1BCD94660(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 42))
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

uint64_t sub_1BCD946A0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 42) = 1;
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

    *(result + 42) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SunriseSunsetViewModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1BCD947F8(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for SunriseSunsetViewModel.ChartViewModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1BCD949A0(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          result = OUTLINED_FUNCTION_42_9(result, a2 + 6);
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SunriseSunsetViewModel.NormalSunriseSunsetModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF7)
  {
    if (a2 + 9 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 9) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 10;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v5 = v6 - 10;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SunriseSunsetViewModel.NormalSunriseSunsetModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1BCD94BDC(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = OUTLINED_FUNCTION_42_9(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1BCD94CB8()
{
  result = qword_1EBD0DEF0;
  if (!qword_1EBD0DEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0DEF0);
  }

  return result;
}

unint64_t sub_1BCD94D10()
{
  result = qword_1EBD0DEF8;
  if (!qword_1EBD0DEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0DEF8);
  }

  return result;
}

unint64_t sub_1BCD94D68()
{
  result = qword_1EBD0DF00;
  if (!qword_1EBD0DF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0DF00);
  }

  return result;
}

unint64_t sub_1BCD94DC0()
{
  result = qword_1EBD0DF08;
  if (!qword_1EBD0DF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0DF08);
  }

  return result;
}

unint64_t sub_1BCD94E18()
{
  result = qword_1EBD0DF10;
  if (!qword_1EBD0DF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0DF10);
  }

  return result;
}

unint64_t sub_1BCD94E70()
{
  result = qword_1EBD0DF18;
  if (!qword_1EBD0DF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0DF18);
  }

  return result;
}

unint64_t sub_1BCD94EC8()
{
  result = qword_1EBD0DF20;
  if (!qword_1EBD0DF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0DF20);
  }

  return result;
}

unint64_t sub_1BCD94F20()
{
  result = qword_1EBD0DF28;
  if (!qword_1EBD0DF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0DF28);
  }

  return result;
}

unint64_t sub_1BCD94F78()
{
  result = qword_1EBD0DF30;
  if (!qword_1EBD0DF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0DF30);
  }

  return result;
}

unint64_t sub_1BCD94FD0()
{
  result = qword_1EBD0DF38;
  if (!qword_1EBD0DF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0DF38);
  }

  return result;
}

unint64_t sub_1BCD95028()
{
  result = qword_1EBD0DF40;
  if (!qword_1EBD0DF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0DF40);
  }

  return result;
}

unint64_t sub_1BCD95080()
{
  result = qword_1EBD0DF48;
  if (!qword_1EBD0DF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0DF48);
  }

  return result;
}

unint64_t sub_1BCD950D8()
{
  result = qword_1EBD0DF50;
  if (!qword_1EBD0DF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0DF50);
  }

  return result;
}

unint64_t sub_1BCD95130()
{
  result = qword_1EBD0DF58;
  if (!qword_1EBD0DF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0DF58);
  }

  return result;
}

unint64_t sub_1BCD95188()
{
  result = qword_1EBD0DF60;
  if (!qword_1EBD0DF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0DF60);
  }

  return result;
}

unint64_t sub_1BCD951E0()
{
  result = qword_1EBD0DF68;
  if (!qword_1EBD0DF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0DF68);
  }

  return result;
}

unint64_t sub_1BCD95238()
{
  result = qword_1EBD0DF70;
  if (!qword_1EBD0DF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0DF70);
  }

  return result;
}

unint64_t sub_1BCD95290()
{
  result = qword_1EBD0DF78;
  if (!qword_1EBD0DF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0DF78);
  }

  return result;
}

unint64_t sub_1BCD952E8()
{
  result = qword_1EBD0DF80;
  if (!qword_1EBD0DF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0DF80);
  }

  return result;
}

unint64_t sub_1BCD95340()
{
  result = qword_1EBD0DF88;
  if (!qword_1EBD0DF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0DF88);
  }

  return result;
}

unint64_t sub_1BCD95398()
{
  result = qword_1EBD0DF90;
  if (!qword_1EBD0DF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0DF90);
  }

  return result;
}

unint64_t sub_1BCD953F0()
{
  result = qword_1EBD0DF98;
  if (!qword_1EBD0DF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0DF98);
  }

  return result;
}

unint64_t sub_1BCD95448()
{
  result = qword_1EBD0DFA0;
  if (!qword_1EBD0DFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0DFA0);
  }

  return result;
}

unint64_t sub_1BCD954A0()
{
  result = qword_1EBD0DFA8;
  if (!qword_1EBD0DFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0DFA8);
  }

  return result;
}

unint64_t sub_1BCD954F8()
{
  result = qword_1EBD0DFB0;
  if (!qword_1EBD0DFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0DFB0);
  }

  return result;
}

unint64_t sub_1BCD95550()
{
  result = qword_1EBD0DFB8;
  if (!qword_1EBD0DFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0DFB8);
  }

  return result;
}

unint64_t sub_1BCD955A8()
{
  result = qword_1EBD0DFC0;
  if (!qword_1EBD0DFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0DFC0);
  }

  return result;
}

unint64_t sub_1BCD95600()
{
  result = qword_1EBD0DFC8;
  if (!qword_1EBD0DFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0DFC8);
  }

  return result;
}

unint64_t sub_1BCD95658()
{
  result = qword_1EBD0DFD0;
  if (!qword_1EBD0DFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0DFD0);
  }

  return result;
}

unint64_t sub_1BCD956B0()
{
  result = qword_1EBD0DFD8;
  if (!qword_1EBD0DFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0DFD8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_87_3@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t OUTLINED_FUNCTION_119_0()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_125(uint64_t result, uint64_t a2)
{
  *(v5 - 200) = v2;
  v6 = (v3 + *(v4 + 24));
  *v6 = result;
  v6[1] = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_135@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 208) = a1;

  return sub_1BCE19470();
}

long double OUTLINED_FUNCTION_136(double a1)
{
  v4 = a1 / v3 * v2;

  return sin(v4);
}

WeatherUI::VFXDeviceRotationState __swiftcall VFXDeviceRotationState.init(degrees:progress:)(Swift::Float degrees, Swift::Float progress)
{
  *v2 = degrees;
  v2[1] = progress;
  result.progress = progress;
  result.degrees = degrees;
  return result;
}

uint64_t type metadata accessor for WindHourlyTextContentView(uint64_t a1)
{
  result = qword_1EBD0DFF0;
  if (!qword_1EBD0DFF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BCD9594C@<X0>(uint64_t *a2@<X8>)
{
  *a2 = sub_1BCE1CEE0();
  a2[1] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0E000, &unk_1BCE6C9F0);
  return sub_1BCD95998(v2, a2 + *(v5 + 44));
}

uint64_t sub_1BCD95998@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0B880, &unk_1BCE5BA30);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v33 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v31 - v6;
  *v7 = sub_1BCE1BDF0();
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  v32 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0B888, &qword_1BCE6CA00);
  sub_1BCD95BE0(a1, (v7 + *(v8 + 44)));
  v35 = sub_1BCD96788();
  v36 = v9;
  sub_1BC970820();
  v10 = sub_1BCE1C6A0();
  v12 = v11;
  v14 = v13;
  type metadata accessor for WindHourlyTextContentView(0);
  v15 = sub_1BCE1C610();
  v17 = v16;
  LOBYTE(v7) = v18;
  sub_1BC998CF4(v10, v12, v14 & 1);

  v19 = sub_1BCE1C5C0();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  sub_1BC998CF4(v15, v17, v7 & 1);

  v27 = v32;
  v26 = v33;
  sub_1BC9BED54(v32, v33);
  v28 = v34;
  sub_1BC9BED54(v26, v34);
  v29 = v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0E008, &qword_1BCE6CA08) + 48);
  *v29 = v19;
  *(v29 + 8) = v21;
  *(v29 + 16) = v23 & 1;
  *(v29 + 24) = v25;
  sub_1BCA81D10(v19, v21, v23 & 1);

  sub_1BC9BEDBC(v27);
  sub_1BC998CF4(v19, v21, v23 & 1);

  return sub_1BC9BEDBC(v26);
}

uint64_t sub_1BCD95BE0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v117 = a2;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09440, &qword_1BCE4EAA8);
  MEMORY[0x1EEE9AC00](v109);
  v4 = &v97 - v3;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09448, &unk_1BCE4EAB0);
  MEMORY[0x1EEE9AC00](v114);
  v116 = &v97 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v111 = &v97 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v115 = &v97 - v9;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08A00, &unk_1BCE5DB80);
  MEMORY[0x1EEE9AC00](v102);
  v11 = &v97 - v10;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0B8D0, &qword_1BCE6CA10);
  MEMORY[0x1EEE9AC00](v107);
  v106 = &v97 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0B8D8, &qword_1BCE5BB00);
  v112 = *(v13 - 8);
  v113 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v110 = &v97 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v97 - v16;
  v108 = type metadata accessor for WindComplicationHourlyViewModel(0);
  v18 = *(a1 + *(v108 + 24));
  v118 = v17;
  v105 = v11;
  v104 = v4;
  if (v18 == 16 || (*(a1 + *(type metadata accessor for WindHourlyTextContentView(0) + 20)) & 1) != 0)
  {
    if (qword_1EBD06FD0 != -1)
    {
      swift_once();
    }

    v19 = qword_1EBD2A0F8;
  }

  else
  {
    v19 = sub_1BCE19F90();
    v20 = v21;
  }

  v121 = v19;
  v122 = v20;
  v101 = sub_1BC970820();
  v22 = sub_1BCE1C6A0();
  v24 = v23;
  v26 = v25;
  v27 = type metadata accessor for WindHourlyTextContentView(0);
  v99 = *(a1 + *(v27 + 28));
  v28 = sub_1BCE1C610();
  v30 = v29;
  v32 = v31;
  sub_1BC998CF4(v22, v24, v26 & 1);

  v33 = *(v27 + 36);
  v34 = a1;
  v103 = a1 + v33;
  v35 = sub_1BCE1C5C0();
  v37 = v36;
  v39 = v38;
  v41 = v40;
  sub_1BC998CF4(v28, v30, v32 & 1);

  v42 = v105;
  v43 = &v105[*(v102 + 36)];
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08A08, &qword_1BCE4B4A0);
  v44 = *(v102 + 28);
  v45 = *MEMORY[0x1E6980FD8];
  v46 = sub_1BCE1C600();
  v47 = *(v46 - 8);
  v48 = *(v47 + 104);
  v100 = v45;
  v98 = v48;
  v97 = v47 + 104;
  v48(v43 + v44, v45, v46);
  __swift_storeEnumTagSinglePayload(v43 + v44, 0, 1, v46);
  *v43 = swift_getKeyPath();
  *v42 = v35;
  *(v42 + 8) = v37;
  *(v42 + 16) = v39 & 1;
  *(v42 + 24) = v41;
  if (qword_1EBD07340 != -1)
  {
    swift_once();
  }

  v49 = -*&qword_1EBD0DFE8;
  v50 = v106;
  sub_1BC9643D8(v42, v106, &qword_1EBD08A00, &unk_1BCE5DB80);
  v51 = v50 + *(v107 + 36);
  *v51 = 0;
  *(v51 + 8) = v49;
  sub_1BCC65478();
  sub_1BCE1C750();
  sub_1BC94C05C(v50, &qword_1EBD0B8D0, &qword_1BCE6CA10);
  v52 = v34;
  v121 = sub_1BCD964E0();
  v122 = v53;
  v54 = sub_1BCE1C6A0();
  v56 = v55;
  v58 = v57;
  v107 = sub_1BCE1C610();
  v106 = v59;
  v61 = v60;
  v105 = v62;
  sub_1BC998CF4(v54, v56, v58 & 1);

  KeyPath = swift_getKeyPath();
  v64 = swift_getKeyPath();
  v65 = v61 & 1;
  v120 = v61 & 1;
  v119 = 0;
  v66 = sub_1BCE1C240();
  sub_1BCE1B4A0();
  v68 = v67;
  v70 = v69;
  v72 = v71;
  v74 = v73;
  LOBYTE(v121) = 0;
  v75 = 24;
  if (*(v52 + *(v108 + 32)))
  {
    v75 = 16;
  }

  v76 = *(v103 + v75);

  v77 = swift_getKeyPath();
  v78 = v104;
  v79 = &v104[*(v109 + 36)];
  v80 = *(v102 + 28);
  v98(v79 + v80, v100, v46);
  __swift_storeEnumTagSinglePayload(v79 + v80, 0, 1, v46);
  *v79 = swift_getKeyPath();
  v81 = v106;
  *v78 = v107;
  *(v78 + 8) = v81;
  *(v78 + 16) = v65;
  *(v78 + 24) = v105;
  *(v78 + 32) = KeyPath;
  *(v78 + 40) = 1;
  *(v78 + 48) = 0;
  *(v78 + 56) = v64;
  *(v78 + 64) = 0x3FE6666666666666;
  *(v78 + 72) = v66;
  *(v78 + 80) = v68;
  *(v78 + 88) = v70;
  *(v78 + 96) = v72;
  *(v78 + 104) = v74;
  *(v78 + 112) = 0;
  *(v78 + 120) = v77;
  *(v78 + 128) = v76;
  if (qword_1EBD07338 != -1)
  {
    swift_once();
  }

  v82 = qword_1EBD0DFE0;
  v83 = v111;
  sub_1BC9643D8(v78, v111, &qword_1EBD09440, &qword_1BCE4EAA8);
  v84 = v115;
  v85 = (v83 + *(v114 + 36));
  *v85 = 0;
  v85[1] = v82;
  sub_1BC9643D8(v83, v84, &qword_1EBD09448, &unk_1BCE4EAB0);
  v87 = v112;
  v86 = v113;
  v88 = *(v112 + 16);
  v89 = v110;
  v90 = v118;
  v88(v110, v118, v113);
  v91 = v116;
  sub_1BC952B1C(v84, v116, &qword_1EBD09448, &unk_1BCE4EAB0);
  v92 = v117;
  v88(v117, v89, v86);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0B8E8, &qword_1BCE5BB98);
  v94 = &v92[*(v93 + 48)];
  *v94 = 0;
  v94[8] = 1;
  sub_1BC952B1C(v91, &v92[*(v93 + 64)], &qword_1EBD09448, &unk_1BCE4EAB0);
  sub_1BC94C05C(v84, &qword_1EBD09448, &unk_1BCE4EAB0);
  v95 = *(v87 + 8);
  v95(v90, v86);
  sub_1BC94C05C(v91, &qword_1EBD09448, &unk_1BCE4EAB0);
  return (v95)(v89, v86);
}

uint64_t sub_1BCD964E0()
{
  v1 = sub_1BCE19280();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07888, &qword_1BCE4EB90);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v15 - v6;
  if (*(v0 + *(type metadata accessor for WindHourlyTextContentView(0) + 20)))
  {
    if (qword_1EBD06FD0 != -1)
    {
      swift_once();
    }

    v8 = qword_1EBD2A0F8;
  }

  else
  {
    if (qword_1EBD07170 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for WindComplicationHourlyViewModel(0);
    v10 = v9[9];
    v11 = v9[10];
    v12 = sub_1BCE19470();
    (*(*(v12 - 8) + 16))(v7, v0 + v11, v12);
    __swift_storeEnumTagSinglePayload(v7, 0, 1, v12);
    sub_1BCE191B0();
    v8 = sub_1BCBA01D4(v0 + v10, v4, v7);
    (*(v2 + 8))(v4, v1);
    sub_1BC94C05C(v7, &qword_1EBD07888, &qword_1BCE4EB90);
    if (*(v0 + v9[8]) == 1)
    {
      type metadata accessor for RectangularContentView.TimeFormatter();
      static RectangularContentView.TimeFormatter.now.getter();
      v13 = sub_1BCE1D380();

      if (v13 <= 5)
      {

        return static RectangularContentView.TimeFormatter.now.getter();
      }
    }
  }

  return v8;
}

uint64_t sub_1BCD96788()
{
  v1 = sub_1BCE19280();
  v45 = *(v1 - 8);
  v46 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v44 = &v40 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07890, &qword_1BCE47340);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v47 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v40 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v40 - v9;
  v42 = type metadata accessor for NSUnitSpeed.BaseWeatherFormatStyle(0);
  MEMORY[0x1EEE9AC00](v42);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v43 = &v40 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07898, &qword_1BCE57FC0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v40 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07860, &unk_1BCE3D7E0);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = (&v40 - v20);
  v22 = type metadata accessor for WindComplicationHourlyViewModel(0);
  sub_1BC952B1C(v0 + *(v22 + 28), v17, &qword_1EBD07898, &qword_1BCE57FC0);
  if (__swift_getEnumTagSinglePayload(v17, 1, v18) == 1)
  {
    sub_1BC94C05C(v17, &qword_1EBD07898, &qword_1BCE57FC0);
LABEL_5:
    if (qword_1EBD06FD0 != -1)
    {
      swift_once();
    }

    v23 = qword_1EBD2A0F8;

    return v23;
  }

  (*(v19 + 32))(v21, v17, v18);
  if (*(v0 + *(type metadata accessor for WindHourlyTextContentView(0) + 20)))
  {
    (*(v19 + 8))(v21, v18);
    goto LABEL_5;
  }

  v41 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD078A8, &unk_1BCE5BBA0);
  v24 = *(type metadata accessor for NSUnitSpeed.WeatherFormatComponent(0) - 8);
  v25 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1BCE3E050;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD078B0, &qword_1BCE4B540);
  __swift_storeEnumTagSinglePayload(v26 + v25, 1, 1, v27);
  sub_1BC9795A8();
  v29 = v28;
  v30 = v46;
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v46);
  sub_1BC952B1C(v10, v7, &qword_1EBD07890, &qword_1BCE47340);
  *v12 = v29;
  v12[8] = 0;
  v31 = v47;
  sub_1BC952B1C(v7, v47, &qword_1EBD07890, &qword_1BCE47340);
  if (__swift_getEnumTagSinglePayload(v31, 1, v30) == 1)
  {
    v32 = v44;
    if (qword_1EDA1F658 != -1)
    {
      swift_once();
    }

    sub_1BCE1A9F0();

    sub_1BC94C05C(v7, &qword_1EBD07890, &qword_1BCE47340);
    sub_1BC94C05C(v10, &qword_1EBD07890, &qword_1BCE47340);
    v33 = v47;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v47, 1, v30);
    v35 = v45;
    if (EnumTagSinglePayload != 1)
    {
      sub_1BC94C05C(v33, &qword_1EBD07890, &qword_1BCE47340);
    }
  }

  else
  {
    sub_1BC94C05C(v7, &qword_1EBD07890, &qword_1BCE47340);
    sub_1BC94C05C(v10, &qword_1EBD07890, &qword_1BCE47340);
    v32 = v44;
    v35 = v45;
    (*(v45 + 32))(v44, v31, v30);
  }

  v36 = v42;
  (*(v35 + 32))(&v12[*(v42 + 24)], v32, v30);
  v12[*(v36 + 28)] = 0;
  v12[*(v36 + 32)] = 1;
  v37 = v43;
  sub_1BC979F00(v12, v43);
  sub_1BCE1A3E0();
  v38 = sub_1BCE1A3A0();
  v23 = sub_1BC979F64(v37, 0, v38, v21);

  sub_1BCBF2960(v37);
  (*(v41 + 8))(v21, v18);
  return v23;
}

double sub_1BCD96DFC()
{
  v0 = [objc_opt_self() systemFontOfSize:9.0 weight:*MEMORY[0x1E69DB980]];
  [v0 descender];
  v2 = v1;

  result = fabs(v2);
  qword_1EBD0DFE0 = *&result;
  return result;
}

double sub_1BCD96E74()
{
  v0 = [objc_opt_self() systemFontOfSize:9.0 weight:*MEMORY[0x1E69DB980]];
  [v0 ascender];
  v2 = v1;
  [v0 capHeight];
  v4 = v3;

  result = v2 - v4;
  *&qword_1EBD0DFE8 = v2 - v4;
  return result;
}

__n128 sub_1BCD96F04@<Q0>(uint64_t a1@<X8>)
{
  v2 = (a1 + 1436);
  sub_1BCA0330C();
  v4 = v3;
  sub_1BC9A38E0();
  *a1 = 0x4006666666666666;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0x3FF0000000000000;
  *(a1 + 24) = 25;
  *(a1 + 32) = xmmword_1BCE3BED0;
  *(a1 + 48) = xmmword_1BCE3BED0;
  *(a1 + 64) = 0x42D2000042480000;
  *(a1 + 72) = 0xC409800000000000;
  *(a1 + 80) = xmmword_1BCE3E530;
  *(a1 + 96) = xmmword_1BCE3BEF0;
  *(a1 + 112) = 0x3E8000003DF5C28FLL;
  *(a1 + 128) = xmmword_1BCE3C7C0;
  *(a1 + 144) = xmmword_1BCE3D840;
  *(a1 + 160) = xmmword_1BCE3BF00;
  *(a1 + 176) = 1153138688;
  *(a1 + 184) = 0x3E4CCCCD3DA3D70ALL;
  *(a1 + 192) = xmmword_1BCE3C7C0;
  *(a1 + 208) = xmmword_1BCE3C700;
  *(a1 + 224) = xmmword_1BCE3C660;
  *(a1 + 240) = 0x4140000040A00000;
  *(a1 + 248) = 1132068864;
  *(a1 + 256) = 0x3E4CCCCD3DE147AELL;
  *(a1 + 264) = 0x40A0000041700000;
  *(a1 + 272) = 1101004800;
  __asm { FMOV            V0.4S, #1.0 }

  *(a1 + 288) = xmmword_1BCE3C7C0;
  *(a1 + 304) = result;
  *(a1 + 320) = 0x4348000040C00000;
  *(a1 + 328) = 0x3E99999A3E19999ALL;
  *(a1 + 336) = 0x3F00000040A00000;
  *(a1 + 352) = xmmword_1BCE3C7C0;
  *(a1 + 368) = xmmword_1BCE3C700;
  *(a1 + 384) = 0;
  *(a1 + 388) = 0x3B03126F3F800000;
  *(a1 + 400) = xmmword_1BCE3C670;
  *(a1 + 416) = 0x3F0000003F000000;
  *(a1 + 424) = 30;
  *(a1 + 432) = xmmword_1BCE3D860;
  *(a1 + 448) = 0x3E4CCCCD3DCCCCCDLL;
  *(a1 + 464) = result;
  *(a1 + 480) = xmmword_1BCE3D870;
  *(a1 + 496) = 0x43FA000040400000;
  *(a1 + 504) = 1116471296;
  *(a1 + 512) = 0x3E8000003DF5C28FLL;
  *(a1 + 528) = result;
  *(a1 + 544) = result;
  *(a1 + 560) = 0x4248000044BB8000;
  *(a1 + 568) = 0x3E4CCCCD3DA3D70ALL;
  *(a1 + 576) = xmmword_1BCE3C700;
  *(a1 + 592) = xmmword_1BCE3D880;
  *(a1 + 608) = 0x40C0000040800000;
  *(a1 + 624) = xmmword_1BCE3C700;
  *(a1 + 640) = xmmword_1BCE3D880;
  *(a1 + 656) = 0x419DAE1441200000;
  *(a1 + 664) = 0x402000003E99999ALL;
  *(a1 + 672) = 0x40A000003F800000;
  *(a1 + 688) = result;
  *(a1 + 704) = 1065353216;
  *(a1 + 712) = 0x3F8000003F000000;
  *(a1 + 720) = 0x400000003FC00000;
  *(a1 + 728) = 0;
  *(a1 + 736) = 1;
  *(a1 + 744) = 4;
  *(a1 + 752) = xmmword_1BCE3BF40;
  *(a1 + 768) = 0x617274736F746C41;
  *(a1 + 776) = 0xEF53202D20737574;
  *(a1 + 784) = 0xD000000000000013;
  *(a1 + 792) = 0x80000001BCE792E0;
  *(a1 + 800) = 6;
  *(a1 + 816) = result;
  *(a1 + 832) = 1065353216;
  *(a1 + 840) = 0x3F8000003F000000;
  *(a1 + 848) = 0x400000003FC00000;
  *(a1 + 856) = 0;
  *(a1 + 864) = 1;
  *(a1 + 872) = 4;
  *(a1 + 880) = xmmword_1BCE3D890;
  *(a1 + 896) = 0x617274736F746C41;
  *(a1 + 904) = 0xEF53202D20737574;
  *(a1 + 912) = 0xD000000000000013;
  *(a1 + 920) = 0x80000001BCE792E0;
  *(a1 + 928) = 6;
  *(a1 + 944) = result;
  *(a1 + 960) = 1065353216;
  *(a1 + 968) = 0x3F8000003F000000;
  *(a1 + 976) = 0x411970A44106E147;
  *(a1 + 984) = 1083022496;
  *(a1 + 992) = 1;
  *(a1 + 1000) = 4;
  *(a1 + 1008) = xmmword_1BCE3C6F0;
  *(a1 + 1024) = 0x2073756C756D7543;
  *(a1 + 1032) = 0xEB000000004D202DLL;
  *(a1 + 1040) = 0x5F73756C756D7543;
  *(a1 + 1048) = 0xEF4D656C676E6953;
  *(a1 + 1056) = 10;
  *(a1 + 1072) = result;
  *(a1 + 1088) = 1065353216;
  *(a1 + 1096) = 0x3F8000003F000000;
  *(a1 + 1104) = 0x400000003FC00000;
  *(a1 + 1112) = 0;
  *(a1 + 1120) = 1;
  *(a1 + 1128) = 4;
  *(a1 + 1136) = xmmword_1BCE3D8A0;
  *(a1 + 1152) = 0x617274736F746C41;
  *(a1 + 1160) = 0xEF53202D20737574;
  *(a1 + 1168) = 0xD000000000000013;
  *(a1 + 1176) = 0x80000001BCE792E0;
  *(a1 + 1184) = 6;
  *(a1 + 1200) = result;
  *(a1 + 1216) = xmmword_1BCE3BFA0;
  *(a1 + 1232) = 0;
  *(a1 + 1236) = 1;
  *(a1 + 1240) = 0x617274736F746C41;
  *(a1 + 1248) = 0xEB00000000737574;
  *(a1 + 1256) = 0xD000000000000013;
  *(a1 + 1264) = 0x80000001BCE79300;
  *(a1 + 1272) = 8;
  *(a1 + 1280) = 0;
  *(a1 + 1288) = 0x400000003F800000;
  *(a1 + 1296) = 0x41C8000042C80000;
  *(a1 + 1304) = 0;
  *(a1 + 1312) = result;
  *(a1 + 1328) = result;
  *(a1 + 1344) = 0;
  *(a1 + 1352) = 0x40000000;
  *(a1 + 1360) = 0;
  *(a1 + 1368) = 1;
  *(a1 + 1408) = 0u;
  *(a1 + 1392) = 0u;
  *(a1 + 1376) = 0u;
  *(a1 + 1424) = 0x3F99999A3ECCCCCDLL;
  *(a1 + 1432) = 1;
  *v2 = xmmword_1BCE3E550;
  *(a1 + 1456) = 0x41D3333341BD3333;
  *(a1 + 1472) = result;
  *(a1 + 1488) = result;
  *(a1 + 1504) = 0x433F5DD841700000;
  *(a1 + 1512) = 0x736168506E6F6F6DLL;
  *(a1 + 1520) = 0xEA00000000003065;
  *(a1 + 1528) = 1112014848;
  *(a1 + 1536) = result;
  *(a1 + 1552) = xmmword_1BCE3C770;
  *(a1 + 1568) = 0x4248000042200000;
  *(a1 + 1584) = 0u;
  *(a1 + 1600) = xmmword_1BCE3D880;
  __asm { FMOV            V3.2S, #-30.0 }

  *(a1 + 1616) = -_D3;
  *(a1 + 1624) = 0x40000000;
  *(a1 + 1632) = 0;
  *(a1 + 1628) = 0;
  *(a1 + 1634) = 16843009;
  *(a1 + 1637) = 16843009;
  *(a1 + 1656) = 0;
  *(a1 + 1641) = 0;
  *(a1 + 1649) = 0;
  *(a1 + 1657) = v12;
  *(a1 + 1659) = v13;
  *(a1 + 1660) = 1066611507;
  *(a1 + 1664) = 0x40C0000040A00000;
  *(a1 + 1672) = 3;
  *(a1 + 1680) = xmmword_1BCE3C000;
  *(a1 + 1696) = xmmword_1BCE3C010;
  *(a1 + 1712) = xmmword_1BCE3C020;
  *(a1 + 1728) = 0x3F0000003EB33333;
  *(a1 + 1736) = 0x3E800000453B8000;
  *(a1 + 1760) = 0;
  *(a1 + 1744) = 0u;
  *(a1 + 1776) = xmmword_1BCE3D8B0;
  *(a1 + 1792) = xmmword_1BCE3D8C0;
  *(a1 + 1808) = xmmword_1BCE3C7A0;
  *(a1 + 1824) = 1;
  *(a1 + 1828) = xmmword_1BCE47CC0;
  *(a1 + 1844) = 1036831949;
  *(a1 + 1848) = 0x4100000041200000;
  *(a1 + 1856) = 3;
  *(a1 + 1864) = 1041865114;
  *(a1 + 1872) = 0x400AE1483F970A3DLL;
  *(a1 + 1880) = 1106247680;
  *(a1 + 1888) = result;
  *(a1 + 1904) = 0x3E4CCCCD40A00000;
  *(a1 + 1912) = 1101004800;
  *(a1 + 1920) = 0;
  *(a1 + 1928) = 1107296256;
  *(a1 + 1936) = result;
  *(a1 + 1952) = 0x40000000;
  *(a1 + 1960) = 0x420C000041C80000;
  *(a1 + 1968) = xmmword_1BCE47CD0;
  *(a1 + 1984) = 0x3F80000000000000;
  *(a1 + 1992) = 1061158912;
  *(a1 + 2000) = 0x3F6666663E4CCCCDLL;
  *(a1 + 2008) = 0x3F6666663F333333;
  *(a1 + 2016) = xmmword_1BCE3C7E0;
  *(a1 + 2096) = 0u;
  *(a1 + 2080) = 0u;
  *(a1 + 2064) = 0u;
  *(a1 + 2048) = 0u;
  *(a1 + 2032) = 0u;
  *(a1 + 2112) = 1056964608;
  *(a1 + 2120) = 0x3E4CCCCD3DCCCCCDLL;
  *(a1 + 2128) = 0x400000003F800000;
  *(a1 + 2136) = 0x4040000040000000;
  *(a1 + 2144) = -1046478848;
  *(a1 + 2160) = result;
  *(a1 + 2176) = result;
  *(a1 + 2192) = 1061997773;
  *(a1 + 2200) = 10;
  *(a1 + 2208) = 0x40A000003FC00000;
  *(a1 + 2224) = xmmword_1BCE3C090;
  *(a1 + 2240) = xmmword_1BCE3C0A0;
  *(a1 + 2256) = result;
  *(a1 + 2304) = 0;
  *(a1 + 2288) = 0u;
  *(a1 + 2272) = 0u;
  *(a1 + 2312) = v4;
  *(a1 + 2320) = v11;
  return result;
}

void sub_1BCD975FC(uint64_t a1@<X8>)
{
  v2 = a1 + 1436;
  sub_1BCD97DA4();
  v4 = v3;
  sub_1BCD97DA4();
  *a1 = 0x4006666666666666;
  *(a1 + 8) = 6;
  *(a1 + 16) = 0x3FF0000000000000;
  *(a1 + 24) = 48;
  *(a1 + 32) = xmmword_1BCE3BED0;
  *(a1 + 48) = xmmword_1BCE3BED0;
  *(a1 + 64) = 0x42DC000042480000;
  *(a1 + 72) = 0xC42F000000000000;
  *(a1 + 80) = xmmword_1BCE3E630;
  *(a1 + 96) = xmmword_1BCE6CB30;
  *(a1 + 112) = 0x3E851EB83E570A3DLL;
  *(a1 + 128) = xmmword_1BCE3C7C0;
  *(a1 + 144) = xmmword_1BCE3F430;
  *(a1 + 160) = xmmword_1BCE46C90;
  *(a1 + 176) = 1164394496;
  *(a1 + 184) = 0x3E6147AE3E0F5C29;
  *(a1 + 192) = xmmword_1BCE465E0;
  *(a1 + 208) = xmmword_1BCE40320;
  *(a1 + 224) = xmmword_1BCE3C660;
  *(a1 + 240) = 0x4140000040A00000;
  *(a1 + 248) = 1132068864;
  *(a1 + 256) = 0x3E4CCCCD3DE147AELL;
  *(a1 + 264) = 0x40A0000041700000;
  *(a1 + 272) = 1101004800;
  __asm { FMOV            V0.4S, #1.0 }

  *(a1 + 288) = xmmword_1BCE3C7C0;
  *(a1 + 304) = _Q0;
  *(a1 + 320) = 0x4348000040C00000;
  *(a1 + 328) = 0x3E99999A3E19999ALL;
  *(a1 + 336) = 0x3F00000040A00000;
  *(a1 + 352) = xmmword_1BCE3C7C0;
  *(a1 + 368) = xmmword_1BCE3C700;
  *(a1 + 384) = 0;
  *(a1 + 388) = 0x3CA3D70A3F800000;
  *(a1 + 400) = xmmword_1BCE3BF20;
  *(a1 + 416) = 0x3F0000003F000000;
  *(a1 + 424) = 10;
  *(a1 + 432) = xmmword_1BCE3BF30;
  *(a1 + 448) = 0x3E4CCCCD3DCCCCCDLL;
  *(a1 + 464) = _Q0;
  *(a1 + 480) = xmmword_1BCE3D870;
  *(a1 + 496) = 0x43FA000040400000;
  *(a1 + 504) = 1116471296;
  *(a1 + 512) = 0x3E8000003DF5C28FLL;
  *(a1 + 528) = _Q0;
  *(a1 + 544) = _Q0;
  *(a1 + 560) = 0x4248000044BB8000;
  *(a1 + 568) = 0x3E4CCCCD3DA3D70ALL;
  *(a1 + 576) = xmmword_1BCE3C700;
  *(a1 + 592) = xmmword_1BCE3D880;
  *(a1 + 608) = 0x4100000040A00000;
  *(a1 + 624) = xmmword_1BCE3C700;
  *(a1 + 640) = xmmword_1BCE3D880;
  *(a1 + 656) = 0x4220000041200000;
  *(a1 + 664) = 0x3FC000003E99999ALL;
  *(a1 + 672) = 0x40A000003F800000;
  *(a1 + 688) = _Q0;
  *(a1 + 704) = 1065353216;
  *(a1 + 712) = 0x3FC000003F666667;
  *(a1 + 720) = 0x4182A3D74124CCCDLL;
  *(a1 + 728) = 3189922816;
  *(a1 + 736) = 1;
  *(a1 + 744) = 4;
  *(a1 + 752) = xmmword_1BCE3E0A0;
  *(a1 + 768) = 0x617274736F746C41;
  *(a1 + 776) = 0xEF4C202D20737574;
  *(a1 + 784) = 0xD000000000000013;
  *(a1 + 792) = 0x80000001BCE798E0;
  *(a1 + 800) = 6;
  *(a1 + 816) = _Q0;
  *(a1 + 832) = 1065353216;
  *(a1 + 840) = 0x3FE666673F99999ALL;
  *(a1 + 848) = 0x4160000041200000;
  *(a1 + 856) = 1082365648;
  *(a1 + 864) = 1;
  *(a1 + 872) = 4;
  *(a1 + 880) = xmmword_1BCE3E0B0;
  *(a1 + 896) = 0x2073756C756D7543;
  *(a1 + 904) = 0xEB000000004C202DLL;
  *(a1 + 912) = 0x5F73756C756D7543;
  *(a1 + 920) = 0xEF4C656C676E6953;
  *(a1 + 928) = 5;
  *(a1 + 944) = _Q0;
  *(a1 + 960) = 1065353216;
  *(a1 + 968) = 0x404000004019999ALL;
  *(a1 + 976) = 0x4100000040E00000;
  *(a1 + 984) = 3221225472;
  *(a1 + 992) = 1;
  *(a1 + 1000) = 4;
  *(a1 + 1008) = xmmword_1BCE3C6F0;
  *(a1 + 1024) = 0x2073756C756D7543;
  *(a1 + 1032) = 0xEB0000000053202DLL;
  *(a1 + 1040) = 0x5F73756C756D7543;
  *(a1 + 1048) = 0xEF53656C676E6953;
  *(a1 + 1056) = 5;
  *(a1 + 1072) = _Q0;
  *(a1 + 1088) = 1065353216;
  *(a1 + 1096) = 0;
  __asm { FMOV            V4.2S, #3.25 }

  *(a1 + 1104) = _D4;
  *(a1 + 1112) = 0x42820000C0D00000;
  *(a1 + 1120) = 0;
  *(a1 + 1128) = 2;
  *(a1 + 1136) = xmmword_1BCE3FB50;
  *(a1 + 1152) = 0x7970736957;
  *(a1 + 1160) = 0xE500000000000000;
  strcpy((a1 + 1168), "Wispy_Single");
  *(a1 + 1181) = 0;
  *(a1 + 1182) = -5120;
  *(a1 + 1184) = 6;
  *(a1 + 1200) = xmmword_1BCE465F0;
  *(a1 + 1216) = xmmword_1BCE41310;
  *(a1 + 1232) = 0;
  *(a1 + 1236) = 1;
  *(a1 + 1240) = 0xD000000000000010;
  *(a1 + 1248) = 0x80000001BCE798A0;
  *(a1 + 1256) = 0xD000000000000015;
  *(a1 + 1264) = 0x80000001BCE798C0;
  *(a1 + 1272) = 6;
  *(a1 + 1280) = 1;
  *(a1 + 1288) = 0x3FAA3D703F88F5C2;
  *(a1 + 1296) = 0x41A0000042B40000;
  *(a1 + 1304) = 0;
  *(a1 + 1312) = _Q0;
  *(a1 + 1328) = _Q0;
  *(a1 + 1344) = 0;
  *(a1 + 1352) = 0x40000000;
  *(a1 + 1360) = 0;
  *(a1 + 1368) = 2;
  *(a1 + 1408) = 0u;
  *(a1 + 1392) = 0u;
  *(a1 + 1376) = 0u;
  *(a1 + 1424) = 0x3F99999A3ECCCCCDLL;
  *(a1 + 1432) = 1;
  *v2 = xmmword_1BCE3BFC0;
  *(a1 + 1456) = 0x42DC000042B40000;
  *(a1 + 1472) = _Q0;
  *(a1 + 1488) = _Q0;
  *(a1 + 1504) = 1097859072;
  *(a1 + 1512) = 0x736168506E6F6F6DLL;
  *(a1 + 1520) = 0xEA00000000003065;
  *(a1 + 1528) = 1112014848;
  *(a1 + 1536) = _Q0;
  *(a1 + 1552) = xmmword_1BCE3F4F0;
  *(a1 + 1568) = 0x4248000042200000;
  *(a1 + 1584) = 0u;
  *(a1 + 1600) = xmmword_1BCE3D880;
  __asm { FMOV            V1.2S, #-30.0 }

  *(a1 + 1616) = -_D1;
  *(a1 + 1624) = 0x40000000;
  *(a1 + 1632) = 257;
  *(a1 + 1642) = 0;
  *(a1 + 1634) = 0;
  *(v2 + 208) = 0x100000001010001;
  *(a1 + 1652) = 0;
  *(a1 + 1656) = 1;
  *(a1 + 1657) = v13;
  *(a1 + 1659) = v14;
  *(a1 + 1660) = 1061980996;
  *(a1 + 1664) = 0x4160000041200000;
  *(a1 + 1672) = 3;
  *(a1 + 1680) = xmmword_1BCE46CA0;
  *(a1 + 1696) = xmmword_1BCE46620;
  *(a1 + 1712) = xmmword_1BCE46CB0;
  *(a1 + 1728) = 0x3F0000003EB33333;
  *(a1 + 1736) = 0x3ECCCCCD47FDE800;
  *(a1 + 1744) = 0u;
  *(a1 + 1760) = 10;
  *(a1 + 1776) = xmmword_1BCE3D8B0;
  *(a1 + 1792) = xmmword_1BCE3D8C0;
  *(a1 + 1808) = xmmword_1BCE3C7A0;
  *(a1 + 1824) = 1;
  *(a1 + 1828) = xmmword_1BCE3C060;
  *(a1 + 1844) = 1052770304;
  *(a1 + 1848) = 0x4100000041700000;
  *(a1 + 1856) = 3;
  *(a1 + 1864) = 0x40000000;
  *(a1 + 1872) = 0x408000003F400000;
  *(a1 + 1880) = 1109393408;
  *(a1 + 1888) = _Q0;
  *(a1 + 1904) = 0x3E99999A00000000;
  *(a1 + 1912) = 1101004800;
  *(a1 + 1920) = 0;
  *(a1 + 1928) = 1106247680;
  *(a1 + 1936) = _Q0;
  *(a1 + 1952) = 1077936128;
  *(a1 + 1960) = 0x420C000041C80000;
  *(a1 + 1968) = xmmword_1BCE46CC0;
  *(a1 + 1984) = 0x3F80000000000000;
  *(a1 + 1992) = 1061158912;
  *(a1 + 2000) = 0x3F4CCCCD3E4CCCCDLL;
  *(a1 + 2008) = 0x3F6666663F333333;
  *(a1 + 2016) = xmmword_1BCE3C7E0;
  *(a1 + 2096) = 0u;
  *(a1 + 2080) = 0u;
  *(a1 + 2064) = 0u;
  *(a1 + 2048) = 0u;
  *(a1 + 2032) = 0u;
  *(a1 + 2112) = 1056964608;
  *(a1 + 2120) = 0x3E3851EC3D8F5C29;
  *(a1 + 2128) = 0x400000003F800000;
  *(a1 + 2136) = 0x4080000040600000;
  *(a1 + 2144) = -1046478848;
  *(a1 + 2160) = _Q0;
  *(a1 + 2176) = _Q0;
  *(a1 + 2192) = 1041865114;
  *(a1 + 2200) = 10;
  *(a1 + 2208) = 0x417000003F666666;
  *(a1 + 2224) = xmmword_1BCE46CD0;
  *(a1 + 2240) = xmmword_1BCE6CB40;
  *(a1 + 2256) = _Q0;
  *(a1 + 2288) = 0u;
  *(a1 + 2272) = 0u;
  *(a1 + 2304) = 3;
  *(a1 + 2312) = v4;
  *(a1 + 2320) = v12;
}

double sub_1BCD97DA4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07858, &qword_1BCE6CF50);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1BCE3EBD0;
  *(v0 + 48) = xmmword_1BCE46CF0;
  *(v0 + 64) = 0x420C0000443B8000;
  *(v0 + 80) = xmmword_1BCE403D0;
  *(v0 + 96) = xmmword_1BCE403E0;
  *(v0 + 112) = xmmword_1BCE403F0;
  *(v0 + 128) = xmmword_1BCE40400;
  *(v0 + 4912) = xmmword_1BCE46F80;
  *(v0 + 6128) = xmmword_1BCE46F80;
  *(v0 + 5040) = xmmword_1BCE46F90;
  *(v0 + 6256) = xmmword_1BCE46F90;
  *(v0 + 5056) = xmmword_1BCE46FA0;
  *(v0 + 6272) = xmmword_1BCE46FA0;
  *(v0 + 5360) = xmmword_1BCE46FB0;
  *(v0 + 6576) = xmmword_1BCE46FB0;
  *(v0 + 5376) = xmmword_1BCE46FC0;
  *(v0 + 6592) = xmmword_1BCE46FC0;
  *(v0 + 5392) = xmmword_1BCE46FD0;
  *(v0 + 6608) = xmmword_1BCE46FD0;
  *(v0 + 5408) = xmmword_1BCE46FE0;
  *(v0 + 6624) = xmmword_1BCE46FE0;
  *(v0 + 5424) = xmmword_1BCE46FF0;
  *(v0 + 6640) = xmmword_1BCE46FF0;
  *(v0 + 5440) = xmmword_1BCE41640;
  *(v0 + 6656) = xmmword_1BCE41640;
  *(v0 + 5904) = xmmword_1BCE47000;
  *(v0 + 7120) = xmmword_1BCE47000;
  *(v0 + 5920) = xmmword_1BCE3DA70;
  *(v0 + 7136) = xmmword_1BCE3DA70;
  *(v0 + 3696) = xmmword_1BCE46EC0;
  *(v0 + 7344) = xmmword_1BCE46EC0;
  *(v0 + 3712) = 1153957888;
  *(v0 + 4928) = 1153957888;
  *(v0 + 6144) = 1153957888;
  *(v0 + 7360) = 1153957888;
  *(v0 + 3728) = xmmword_1BCE40840;
  *(v0 + 4944) = xmmword_1BCE40840;
  *(v0 + 6160) = xmmword_1BCE40840;
  *(v0 + 7376) = xmmword_1BCE40840;
  *(v0 + 3744) = xmmword_1BCE40850;
  *(v0 + 4960) = xmmword_1BCE40850;
  *(v0 + 6176) = xmmword_1BCE40850;
  *(v0 + 7392) = xmmword_1BCE40850;
  *(v0 + 3760) = xmmword_1BCE40860;
  *(v0 + 4976) = xmmword_1BCE40860;
  *(v0 + 6192) = xmmword_1BCE40860;
  *(v0 + 7408) = xmmword_1BCE40860;
  *(v0 + 3776) = xmmword_1BCE40870;
  *(v0 + 4992) = xmmword_1BCE40870;
  *(v0 + 6208) = xmmword_1BCE40870;
  *(v0 + 7424) = xmmword_1BCE40870;
  *(v0 + 3824) = xmmword_1BCE46ED0;
  *(v0 + 7472) = xmmword_1BCE46ED0;
  *(v0 + 3840) = xmmword_1BCE46EE0;
  *(v0 + 7488) = xmmword_1BCE46EE0;
  *(v0 + 3984) = xmmword_1BCE40760;
  *(v0 + 5200) = xmmword_1BCE40760;
  *(v0 + 6416) = xmmword_1BCE40760;
  *(v0 + 7632) = xmmword_1BCE40760;
  *(v0 + 4000) = xmmword_1BCE40770;
  *(v0 + 5216) = xmmword_1BCE40770;
  *(v0 + 6432) = xmmword_1BCE40770;
  *(v0 + 7648) = xmmword_1BCE40770;
  *(v0 + 4016) = xmmword_1BCE430A0;
  *(v0 + 5232) = xmmword_1BCE430A0;
  *(v0 + 6448) = xmmword_1BCE430A0;
  *(v0 + 7664) = xmmword_1BCE430A0;
  *(v0 + 4032) = 1063675494;
  *(v0 + 5248) = 1063675494;
  *(v0 + 6464) = 1063675494;
  *(v0 + 7680) = 1063675494;
  *(v0 + 4048) = xmmword_1BCE3E9D0;
  *(v0 + 5264) = xmmword_1BCE3E9D0;
  *(v0 + 6480) = xmmword_1BCE3E9D0;
  *(v0 + 7696) = xmmword_1BCE3E9D0;
  *(v0 + 4144) = xmmword_1BCE46EF0;
  *(v0 + 7792) = xmmword_1BCE46EF0;
  *(v0 + 4160) = xmmword_1BCE46F00;
  *(v0 + 7808) = xmmword_1BCE46F00;
  *(v0 + 4176) = xmmword_1BCE46F10;
  *(v0 + 7824) = xmmword_1BCE46F10;
  *(v0 + 4192) = xmmword_1BCE46F20;
  *(v0 + 7840) = xmmword_1BCE46F20;
  *(v0 + 4208) = xmmword_1BCE46F30;
  *(v0 + 7856) = xmmword_1BCE46F30;
  *(v0 + 4224) = xmmword_1BCE46F40;
  *(v0 + 7872) = xmmword_1BCE46F40;
  *(v0 + 4240) = xmmword_1BCE46910;
  *(v0 + 5456) = xmmword_1BCE46910;
  *(v0 + 6672) = xmmword_1BCE46910;
  *(v0 + 7888) = xmmword_1BCE46910;
  *(v0 + 4256) = xmmword_1BCE46F50;
  *(v0 + 5472) = xmmword_1BCE46F50;
  *(v0 + 6688) = xmmword_1BCE46F50;
  *(v0 + 7904) = xmmword_1BCE46F50;
  *(v0 + 4656) = xmmword_1BCE46F60;
  *(v0 + 5872) = xmmword_1BCE46F60;
  *(v0 + 7088) = xmmword_1BCE46F60;
  *(v0 + 8304) = xmmword_1BCE46F60;
  *(v0 + 4672) = xmmword_1BCE3F6B0;
  *(v0 + 5888) = xmmword_1BCE3F6B0;
  *(v0 + 7104) = xmmword_1BCE3F6B0;
  *(v0 + 8320) = xmmword_1BCE3F6B0;
  *(v0 + 4688) = xmmword_1BCE46F70;
  *(v0 + 8336) = xmmword_1BCE46F70;
  *(v0 + 4704) = xmmword_1BCE3EE20;
  *(v0 + 8352) = xmmword_1BCE3EE20;
  *(v0 + 2480) = xmmword_1BCE46E00;
  *(v0 + 8560) = xmmword_1BCE46E00;
  *(v0 + 2496) = 0x4316000044610000;
  *(v0 + 8576) = 0x4316000044610000;
  *(v0 + 2512) = xmmword_1BCE40590;
  *(v0 + 8592) = xmmword_1BCE40590;
  *(v0 + 2528) = xmmword_1BCE405A0;
  *(v0 + 8608) = xmmword_1BCE405A0;
  *(v0 + 2544) = xmmword_1BCE405B0;
  *(v0 + 8624) = xmmword_1BCE405B0;
  *(v0 + 2560) = xmmword_1BCE405C0;
  *(v0 + 8640) = xmmword_1BCE405C0;
  *(v0 + 2608) = xmmword_1BCE46E10;
  *(v0 + 8688) = xmmword_1BCE46E10;
  *(v0 + 2624) = xmmword_1BCE46E20;
  *(v0 + 8704) = xmmword_1BCE46E20;
  *(v0 + 2800) = xmmword_1BCE42C40;
  *(v0 + 8880) = xmmword_1BCE42C40;
  v1 = vdup_n_s32(0x3F4CCCCDu);
  *(v0 + 2816) = v1;
  *(v0 + 8896) = v1;
  *(v0 + 2928) = xmmword_1BCE46E30;
  *(v0 + 9008) = xmmword_1BCE46E30;
  *(v0 + 2944) = xmmword_1BCE46E40;
  *(v0 + 9024) = xmmword_1BCE46E40;
  *(v0 + 2960) = xmmword_1BCE46E50;
  *(v0 + 9040) = xmmword_1BCE46E50;
  *(v0 + 2976) = xmmword_1BCE46E60;
  *(v0 + 9056) = xmmword_1BCE46E60;
  *(v0 + 2992) = xmmword_1BCE46E70;
  *(v0 + 9072) = xmmword_1BCE46E70;
  *(v0 + 3008) = xmmword_1BCE42F70;
  *(v0 + 9088) = xmmword_1BCE42F70;
  *(v0 + 3024) = xmmword_1BCE46E80;
  *(v0 + 9104) = xmmword_1BCE46E80;
  *(v0 + 3040) = xmmword_1BCE46740;
  *(v0 + 9120) = xmmword_1BCE46740;
  *(v0 + 3440) = xmmword_1BCE46E90;
  *(v0 + 9520) = xmmword_1BCE46E90;
  *(v0 + 3456) = xmmword_1BCE46EA0;
  *(v0 + 9536) = xmmword_1BCE46EA0;
  *(v0 + 3472) = xmmword_1BCE46810;
  *(v0 + 9552) = xmmword_1BCE46810;
  *(v0 + 3488) = xmmword_1BCE46EB0;
  *(v0 + 9568) = xmmword_1BCE46EB0;
  *(v0 + 1264) = xmmword_1BCE3CE40;
  *(v0 + 9776) = xmmword_1BCE3CE40;
  *(v0 + 1744) = xmmword_1BCE46DE0;
  *(v0 + 10256) = xmmword_1BCE46DE0;
  *(v0 + 1760) = xmmword_1BCE46DF0;
  *(v0 + 10272) = xmmword_1BCE46DF0;
  *(v0 + 144) = xmmword_1BCE3EEF0;
  *(v0 + 160) = xmmword_1BCE3EF00;
  *(v0 + 10992) = xmmword_1BCE46CF0;
  *(v0 + 1280) = 0x420C0000443B8000;
  *(v0 + 9792) = 0x420C0000443B8000;
  *(v0 + 11008) = 0x420C0000443B8000;
  *(v0 + 176) = xmmword_1BCE46D00;
  *(v0 + 192) = xmmword_1BCE46D10;
  *(v0 + 1296) = xmmword_1BCE403D0;
  *(v0 + 9808) = xmmword_1BCE403D0;
  *(v0 + 11024) = xmmword_1BCE403D0;
  __asm { FMOV            V4.2D, #1.0 }

  *(v0 + 1312) = xmmword_1BCE403E0;
  *(v0 + 9824) = xmmword_1BCE403E0;
  *(v0 + 11040) = xmmword_1BCE403E0;
  *(v0 + 1328) = xmmword_1BCE403F0;
  *(v0 + 9840) = xmmword_1BCE403F0;
  *(v0 + 11056) = xmmword_1BCE403F0;
  *(v0 + 1344) = xmmword_1BCE40400;
  *(v0 + 9856) = xmmword_1BCE40400;
  *(v0 + 11072) = xmmword_1BCE40400;
  *(v0 + 240) = xmmword_1BCE3E780;
  *(v0 + 256) = xmmword_1BCE3E790;
  *(v0 + 1360) = xmmword_1BCE3EEF0;
  *(v0 + 2576) = xmmword_1BCE3EEF0;
  *(v0 + 3792) = xmmword_1BCE3EEF0;
  *(v0 + 5008) = xmmword_1BCE3EEF0;
  *(v0 + 6224) = xmmword_1BCE3EEF0;
  *(v0 + 7440) = xmmword_1BCE3EEF0;
  *(v0 + 8656) = xmmword_1BCE3EEF0;
  *(v0 + 9872) = xmmword_1BCE3EEF0;
  *(v0 + 11088) = xmmword_1BCE3EEF0;
  *(v0 + 1376) = xmmword_1BCE3EF00;
  *(v0 + 2592) = xmmword_1BCE3EF00;
  *(v0 + 3808) = xmmword_1BCE3EF00;
  *(v0 + 5024) = xmmword_1BCE3EF00;
  *(v0 + 6240) = xmmword_1BCE3EF00;
  *(v0 + 7456) = xmmword_1BCE3EF00;
  *(v0 + 8672) = xmmword_1BCE3EF00;
  *(v0 + 9888) = xmmword_1BCE3EF00;
  *(v0 + 11104) = xmmword_1BCE3EF00;
  *(v0 + 272) = xmmword_1BCE467D0;
  *(v0 + 288) = xmmword_1BCE467E0;
  *(v0 + 1392) = xmmword_1BCE46D00;
  *(v0 + 9904) = xmmword_1BCE46D00;
  *(v0 + 11120) = xmmword_1BCE46D00;
  *(v0 + 1408) = xmmword_1BCE46D10;
  *(v0 + 9920) = xmmword_1BCE46D10;
  *(v0 + 11136) = xmmword_1BCE46D10;
  *(v0 + 1456) = xmmword_1BCE3E780;
  *(v0 + 2672) = xmmword_1BCE3E780;
  *(v0 + 3888) = xmmword_1BCE3E780;
  *(v0 + 5104) = xmmword_1BCE3E780;
  *(v0 + 6320) = xmmword_1BCE3E780;
  *(v0 + 7536) = xmmword_1BCE3E780;
  *(v0 + 8752) = xmmword_1BCE3E780;
  *(v0 + 9968) = xmmword_1BCE3E780;
  *(v0 + 11184) = xmmword_1BCE3E780;
  *(v0 + 320) = xmmword_1BCE3E1D0;
  *(v0 + 336) = xmmword_1BCE40480;
  *(v0 + 352) = xmmword_1BCE40490;
  *(v0 + 1472) = xmmword_1BCE3E790;
  *(v0 + 2688) = xmmword_1BCE3E790;
  *(v0 + 3904) = xmmword_1BCE3E790;
  *(v0 + 5120) = xmmword_1BCE3E790;
  *(v0 + 6336) = xmmword_1BCE3E790;
  *(v0 + 7552) = xmmword_1BCE3E790;
  *(v0 + 8768) = xmmword_1BCE3E790;
  *(v0 + 9984) = xmmword_1BCE3E790;
  *(v0 + 11200) = xmmword_1BCE3E790;
  *(v0 + 1488) = xmmword_1BCE467D0;
  *(v0 + 2704) = xmmword_1BCE467D0;
  *(v0 + 3920) = xmmword_1BCE467D0;
  *(v0 + 5136) = xmmword_1BCE467D0;
  *(v0 + 6352) = xmmword_1BCE467D0;
  *(v0 + 7568) = xmmword_1BCE467D0;
  *(v0 + 8784) = xmmword_1BCE467D0;
  *(v0 + 10000) = xmmword_1BCE467D0;
  *(v0 + 11216) = xmmword_1BCE467D0;
  result = 1.0;
  *(v0 + 1504) = xmmword_1BCE467E0;
  *(v0 + 2720) = xmmword_1BCE467E0;
  *(v0 + 3936) = xmmword_1BCE467E0;
  *(v0 + 5152) = xmmword_1BCE467E0;
  *(v0 + 6368) = xmmword_1BCE467E0;
  *(v0 + 7584) = xmmword_1BCE467E0;
  *(v0 + 8800) = xmmword_1BCE467E0;
  *(v0 + 10016) = xmmword_1BCE467E0;
  *(v0 + 11232) = xmmword_1BCE467E0;
  *(v0 + 1536) = xmmword_1BCE3E1D0;
  *(v0 + 8368) = _Q4;
  *(v0 + 2752) = xmmword_1BCE3E1D0;
  *(v0 + 3968) = xmmword_1BCE3E1D0;
  *(v0 + 5184) = xmmword_1BCE3E1D0;
  *(v0 + 6400) = xmmword_1BCE3E1D0;
  *(v0 + 7616) = xmmword_1BCE3E1D0;
  *(v0 + 8288) = xmmword_1BCE3DAE0;
  *(v0 + 0x2000) = _Q4;
  *(v0 + 8208) = _Q4;
  *(v0 + 8224) = _Q4;
  *(v0 + 8240) = _Q4;
  *(v0 + 8256) = xmmword_1BCE3C8C0;
  *(v0 + 8272) = _Q4;
  *(v0 + 8048) = _Q4;
  *(v0 + 8112) = _Q4;
  *(v0 + 8128) = _Q4;
  *(v0 + 8144) = _Q4;
  *(v0 + 8160) = _Q4;
  *(v0 + 8176) = _Q4;
  *(v0 + 8064) = _Q4;
  *(v0 + 8080) = _Q4;
  *(v0 + 8096) = xmmword_1BCE3DD90;
  *(v0 + 8832) = xmmword_1BCE3E1D0;
  *(v0 + 10048) = xmmword_1BCE3E1D0;
  *(v0 + 11264) = xmmword_1BCE3E1D0;
  *(v0 + 7968) = _Q4;
  *(v0 + 7984) = _Q4;
  *(v0 + 8000) = xmmword_1BCE3A880;
  *(v0 + 8016) = _Q4;
  *(v0 + 8032) = xmmword_1BCE3C8C0;
  *(v0 + 368) = xmmword_1BCE3FC10;
  *(v0 + 7920) = _Q4;
  *(v0 + 7936) = xmmword_1BCE3A880;
  *(v0 + 7952) = _Q4;
  *(v0 + 1552) = xmmword_1BCE40480;
  *(v0 + 2768) = xmmword_1BCE40480;
  *(v0 + 8848) = xmmword_1BCE40480;
  *(v0 + 10064) = xmmword_1BCE40480;
  *(v0 + 11280) = xmmword_1BCE40480;
  *(v0 + 1568) = xmmword_1BCE40490;
  *(v0 + 2784) = xmmword_1BCE40490;
  *(v0 + 7744) = 0u;
  *(v0 + 7728) = 0u;
  *(v0 + 7760) = _Q4;
  *(v0 + 7776) = xmmword_1BCE3DAE0;
  *(v0 + 7688) = 0x3FF0000000000000;
  *(v0 + 7712) = 0x3FF0000000000000;
  *(v0 + 7720) = 1069547520;
  *(v0 + 8864) = xmmword_1BCE40490;
  *(v0 + 10080) = xmmword_1BCE40490;
  *(v0 + 11296) = xmmword_1BCE40490;
  *(v0 + 384) = 0x3F8000003F4CCCCDLL;
  *(v0 + 432) = 0u;
  *(v0 + 448) = 0u;
  *(v0 + 7600) = _Q4;
  *(v0 + 1584) = xmmword_1BCE3FC10;
  *(v0 + 7520) = xmmword_1BCE3C8C0;
  *(v0 + 10096) = xmmword_1BCE3FC10;
  *(v0 + 11312) = xmmword_1BCE3FC10;
  *(v0 + 1600) = 0x3F8000003F4CCCCDLL;
  *(v0 + 7504) = _Q4;
  *(v0 + 10112) = 0x3F8000003F4CCCCDLL;
  *(v0 + 11328) = 0x3F8000003F4CCCCDLL;
  *(v0 + 1664) = 0u;
  *(v0 + 1648) = 0u;
  *(v0 + 2880) = 0u;
  *(v0 + 2864) = 0u;
  *(v0 + 4096) = 0u;
  *(v0 + 4080) = 0u;
  *(v0 + 7328) = 0x4040800000000000;
  *(v0 + 7336) = 1;
  *(v0 + 7337) = *v13;
  *(v0 + 7340) = *&v13[3];
  *(v0 + 7368) = 1061997773;
  *(v0 + 5312) = 0u;
  *(v0 + 7256) = 0x3FF0000000000000;
  *(v0 + 7264) = _Q4;
  *(v0 + 7280) = _Q4;
  *(v0 + 7296) = _Q4;
  *(v0 + 7312) = 0x3FF0000000000000;
  *(v0 + 7168) = xmmword_1BCE3C8C0;
  *(v0 + 7184) = _Q4;
  *(v0 + 7200) = xmmword_1BCE3DAE0;
  *(v0 + 7216) = _Q4;
  *(v0 + 7232) = _Q4;
  *(v0 + 7248) = 0x4170000042480000;
  *(v0 + 5296) = 0u;
  *(v0 + 6528) = 0u;
  *(v0 + 6512) = 0u;
  *(v0 + 6736) = _Q4;
  *(v0 + 7072) = xmmword_1BCE3DAE0;
  *(v0 + 7152) = _Q4;
  *(v0 + 6976) = _Q4;
  *(v0 + 6992) = _Q4;
  *(v0 + 7008) = _Q4;
  *(v0 + 7024) = _Q4;
  *(v0 + 7040) = xmmword_1BCE3C8C0;
  *(v0 + 7056) = _Q4;
  *(v0 + 6880) = xmmword_1BCE3DD90;
  *(v0 + 6896) = _Q4;
  *(v0 + 6912) = _Q4;
  *(v0 + 6928) = _Q4;
  *(v0 + 6944) = _Q4;
  *(v0 + 6960) = _Q4;
  *(v0 + 6784) = xmmword_1BCE3A880;
  *(v0 + 6800) = _Q4;
  *(v0 + 6816) = xmmword_1BCE3C8C0;
  *(v0 + 6832) = _Q4;
  *(v0 + 6848) = _Q4;
  *(v0 + 6864) = _Q4;
  *(v0 + 6752) = _Q4;
  *(v0 + 6768) = _Q4;
  *(v0 + 8960) = 0u;
  *(v0 + 8944) = 0u;
  *(v0 + 10176) = 0u;
  *(v0 + 10160) = 0u;
  *(v0 + 11392) = 0u;
  *(v0 + 11376) = 0u;
  *(v0 + 6704) = _Q4;
  *(v0 + 6720) = xmmword_1BCE3A880;
  *(v0 + 496) = xmmword_1BCE46D20;
  *(v0 + 512) = xmmword_1BCE46D30;
  *(v0 + 1712) = xmmword_1BCE46D20;
  *(v0 + 6560) = xmmword_1BCE3DAE0;
  *(v0 + 10224) = xmmword_1BCE46D20;
  *(v0 + 11440) = xmmword_1BCE46D20;
  *(v0 + 1728) = xmmword_1BCE46D30;
  *(v0 + 6544) = _Q4;
  *(v0 + 10240) = xmmword_1BCE46D30;
  *(v0 + 11456) = xmmword_1BCE46D30;
  *(v0 + 528) = xmmword_1BCE46D40;
  *(v0 + 544) = xmmword_1BCE46D50;
  *(v0 + 6472) = 0x3FF0000000000000;
  *(v0 + 6496) = 0x3FF0000000000000;
  *(v0 + 6504) = 1069547520;
  *(v0 + 11472) = xmmword_1BCE46D40;
  *(v0 + 11488) = xmmword_1BCE46D50;
  *(v0 + 560) = xmmword_1BCE46D60;
  *(v0 + 576) = xmmword_1BCE46D70;
  *(v0 + 1776) = xmmword_1BCE46D60;
  *(v0 + 6384) = _Q4;
  *(v0 + 10288) = xmmword_1BCE46D60;
  *(v0 + 11504) = xmmword_1BCE46D60;
  *(v0 + 1792) = xmmword_1BCE46D70;
  *(v0 + 6288) = _Q4;
  *(v0 + 6304) = xmmword_1BCE3C8C0;
  *(v0 + 10304) = xmmword_1BCE46D70;
  *(v0 + 11520) = xmmword_1BCE46D70;
  *(v0 + 1808) = xmmword_1BCE46D80;
  *(v0 + 10320) = xmmword_1BCE46D80;
  *(v0 + 11536) = xmmword_1BCE46D80;
  *(v0 + 592) = xmmword_1BCE46D80;
  *(v0 + 608) = xmmword_1BCE46D90;
  *(v0 + 1824) = xmmword_1BCE46D90;
  *(v0 + 5968) = _Q4;
  *(v0 + 6121) = *v12;
  *(v0 + 6124) = *&v12[3];
  *(v0 + 6152) = 1061997773;
  *(v0 + 6048) = _Q4;
  *(v0 + 6064) = _Q4;
  *(v0 + 6080) = _Q4;
  *(v0 + 6096) = 0x3FF0000000000000;
  *(v0 + 6112) = 0x404E000000000000;
  *(v0 + 6120) = 1;
  *(v0 + 5984) = xmmword_1BCE3DAE0;
  *(v0 + 6000) = _Q4;
  *(v0 + 6016) = _Q4;
  *(v0 + 6032) = 0x4170000042480000;
  *(v0 + 6040) = 0x3FF0000000000000;
  *(v0 + 10336) = xmmword_1BCE46D90;
  *(v0 + 11552) = xmmword_1BCE46D90;
  *(v0 + 640) = xmmword_1BCE3A880;
  *(v0 + 704) = xmmword_1BCE3A880;
  *(v0 + 800) = xmmword_1BCE3DD90;
  *(v0 + 5936) = _Q4;
  *(v0 + 5952) = xmmword_1BCE3C8C0;
  *(v0 + 5776) = _Q4;
  *(v0 + 5792) = _Q4;
  *(v0 + 5808) = _Q4;
  *(v0 + 5824) = xmmword_1BCE3C8C0;
  *(v0 + 5840) = _Q4;
  *(v0 + 5856) = xmmword_1BCE3DAE0;
  *(v0 + 5680) = _Q4;
  *(v0 + 5696) = _Q4;
  *(v0 + 5712) = _Q4;
  *(v0 + 5728) = _Q4;
  *(v0 + 5744) = _Q4;
  *(v0 + 5760) = _Q4;
  *(v0 + 5584) = _Q4;
  *(v0 + 5600) = xmmword_1BCE3C8C0;
  *(v0 + 5616) = _Q4;
  *(v0 + 5632) = _Q4;
  *(v0 + 5648) = _Q4;
  *(v0 + 5664) = xmmword_1BCE3DD90;
  *(v0 + 5488) = _Q4;
  *(v0 + 5504) = xmmword_1BCE3A880;
  *(v0 + 5520) = _Q4;
  *(v0 + 5536) = _Q4;
  *(v0 + 5552) = _Q4;
  *(v0 + 5568) = xmmword_1BCE3A880;
  *(v0 + 1856) = xmmword_1BCE3A880;
  *(v0 + 1920) = xmmword_1BCE3A880;
  *(v0 + 3072) = xmmword_1BCE3A880;
  *(v0 + 3136) = xmmword_1BCE3A880;
  *(v0 + 4288) = xmmword_1BCE3A880;
  *(v0 + 4352) = xmmword_1BCE3A880;
  *(v0 + 5256) = 0x3FF0000000000000;
  *(v0 + 5280) = 0x3FF0000000000000;
  *(v0 + 5288) = 1069547520;
  *(v0 + 5328) = _Q4;
  *(v0 + 5344) = xmmword_1BCE3DAE0;
  *(v0 + 9152) = xmmword_1BCE3A880;
  *(v0 + 9216) = xmmword_1BCE3A880;
  *(v0 + 10368) = xmmword_1BCE3A880;
  *(v0 + 10432) = xmmword_1BCE3A880;
  *(v0 + 11584) = xmmword_1BCE3A880;
  *(v0 + 11648) = xmmword_1BCE3A880;
  *(v0 + 2016) = xmmword_1BCE3DD90;
  *(v0 + 3232) = xmmword_1BCE3DD90;
  *(v0 + 4448) = xmmword_1BCE3DD90;
  *(v0 + 9312) = xmmword_1BCE3DD90;
  *(v0 + 10528) = xmmword_1BCE3DD90;
  *(v0 + 11744) = xmmword_1BCE3DD90;
  *(v0 + 2224) = xmmword_1BCE46DA0;
  *(v0 + 5168) = _Q4;
  *(v0 + 10736) = xmmword_1BCE46DA0;
  *(v0 + 11952) = xmmword_1BCE46DA0;
  *(v0 + 1008) = xmmword_1BCE46DA0;
  *(v0 + 1024) = xmmword_1BCE46DB0;
  *(v0 + 5072) = _Q4;
  *(v0 + 5088) = xmmword_1BCE3C8C0;
  *(v0 + 2240) = xmmword_1BCE46DB0;
  *(v0 + 10752) = xmmword_1BCE46DB0;
  *(v0 + 11968) = xmmword_1BCE46DB0;
  *(v0 + 1040) = xmmword_1BCE46DC0;
  *(v0 + 2256) = xmmword_1BCE46DC0;
  *(v0 + 4905) = *v11;
  *(v0 + 4936) = 1061997773;
  *(v0 + 4816) = 0x4170000042480000;
  *(v0 + 4880) = 0x3FF0000000000000;
  *(v0 + 4896) = 0x404E000000000000;
  *(v0 + 4904) = 0;
  *(v0 + 4908) = *&v11[3];
  *(v0 + 4824) = 0x3FF0000000000000;
  *(v0 + 4832) = _Q4;
  *(v0 + 4848) = _Q4;
  *(v0 + 4864) = _Q4;
  *(v0 + 10768) = xmmword_1BCE46DC0;
  *(v0 + 11984) = xmmword_1BCE46DC0;
  *(v0 + 4736) = xmmword_1BCE3C8C0;
  *(v0 + 4752) = _Q4;
  *(v0 + 4768) = xmmword_1BCE3DAE0;
  *(v0 + 4784) = _Q4;
  *(v0 + 4800) = _Q4;
  *(v0 + 1056) = xmmword_1BCE46DD0;
  *(v0 + 2272) = xmmword_1BCE46DD0;
  *(v0 + 10784) = xmmword_1BCE46DD0;
  *(v0 + 12000) = xmmword_1BCE46DD0;
  *(v0 + 4640) = xmmword_1BCE3DAE0;
  *(v0 + 4720) = _Q4;
  *(v0 + 4544) = _Q4;
  *(v0 + 4560) = _Q4;
  *(v0 + 4576) = _Q4;
  *(v0 + 4592) = _Q4;
  *(v0 + 4608) = xmmword_1BCE3C8C0;
  *(v0 + 4624) = _Q4;
  *(v0 + 224) = xmmword_1BCE3C8C0;
  *(v0 + 4464) = _Q4;
  *(v0 + 4480) = _Q4;
  *(v0 + 4496) = _Q4;
  *(v0 + 4512) = _Q4;
  *(v0 + 4528) = _Q4;
  *(v0 + 736) = xmmword_1BCE3C8C0;
  *(v0 + 4368) = _Q4;
  *(v0 + 4384) = xmmword_1BCE3C8C0;
  *(v0 + 4400) = _Q4;
  *(v0 + 4416) = _Q4;
  *(v0 + 4432) = _Q4;
  *(v0 + 960) = xmmword_1BCE3C8C0;
  *(v0 + 1088) = xmmword_1BCE3C8C0;
  *(v0 + 4272) = _Q4;
  *(v0 + 4304) = _Q4;
  *(v0 + 4320) = _Q4;
  *(v0 + 4336) = _Q4;
  *(v0 + 1440) = xmmword_1BCE3C8C0;
  *(v0 + 1952) = xmmword_1BCE3C8C0;
  *(v0 + 2176) = xmmword_1BCE3C8C0;
  *(v0 + 2304) = xmmword_1BCE3C8C0;
  *(v0 + 2656) = xmmword_1BCE3C8C0;
  *(v0 + 3168) = xmmword_1BCE3C8C0;
  *(v0 + 3392) = xmmword_1BCE3C8C0;
  *(v0 + 3520) = xmmword_1BCE3C8C0;
  *(v0 + 3872) = xmmword_1BCE3C8C0;
  *(v0 + 4072) = 1069547520;
  *(v0 + 4112) = _Q4;
  *(v0 + 4128) = xmmword_1BCE3DAE0;
  *(v0 + 3952) = _Q4;
  *(v0 + 4040) = 0x3FF0000000000000;
  *(v0 + 4064) = 0x3FF0000000000000;
  *(v0 + 8384) = xmmword_1BCE3C8C0;
  *(v0 + 8736) = xmmword_1BCE3C8C0;
  *(v0 + 9248) = xmmword_1BCE3C8C0;
  *(v0 + 9472) = xmmword_1BCE3C8C0;
  *(v0 + 9600) = xmmword_1BCE3C8C0;
  *(v0 + 9952) = xmmword_1BCE3C8C0;
  *(v0 + 10464) = xmmword_1BCE3C8C0;
  *(v0 + 10688) = xmmword_1BCE3C8C0;
  *(v0 + 10816) = xmmword_1BCE3C8C0;
  *(v0 + 11168) = xmmword_1BCE3C8C0;
  *(v0 + 11680) = xmmword_1BCE3C8C0;
  *(v0 + 11904) = xmmword_1BCE3C8C0;
  *(v0 + 12032) = xmmword_1BCE3C8C0;
  *(v0 + 480) = xmmword_1BCE3DAE0;
  *(v0 + 3856) = _Q4;
  *(v0 + 992) = xmmword_1BCE3DAE0;
  *(v0 + 1120) = xmmword_1BCE3DAE0;
  *(v0 + 1696) = xmmword_1BCE3DAE0;
  *(v0 + 2208) = xmmword_1BCE3DAE0;
  *(v0 + 2336) = xmmword_1BCE3DAE0;
  *(v0 + 2912) = xmmword_1BCE3DAE0;
  *(v0 + 3184) = _Q4;
  *(v0 + 3632) = _Q4;
  *(v0 + 3689) = *v10;
  *(v0 + 3720) = 1061997773;
  *(v0 + 3648) = _Q4;
  *(v0 + 3664) = 0x3FF0000000000000;
  *(v0 + 3680) = 0x4040800000000000;
  *(v0 + 3688) = 0;
  *(v0 + 3692) = *&v10[3];
  *(v0 + 3552) = xmmword_1BCE3DAE0;
  *(v0 + 3568) = _Q4;
  *(v0 + 3584) = _Q4;
  *(v0 + 3600) = 0x4170000042480000;
  *(v0 + 3608) = 0x3FF0000000000000;
  *(v0 + 3616) = _Q4;
  *(v0 + 3200) = _Q4;
  *(v0 + 3216) = _Q4;
  *(v0 + 3248) = _Q4;
  *(v0 + 3264) = _Q4;
  *(v0 + 3504) = _Q4;
  *(v0 + 3536) = _Q4;
  *(v0 + 3280) = _Q4;
  *(v0 + 3296) = _Q4;
  *(v0 + 3360) = _Q4;
  *(v0 + 3376) = _Q4;
  *(v0 + 3408) = _Q4;
  *(v0 + 3424) = xmmword_1BCE3DAE0;
  *(v0 + 3312) = _Q4;
  *(v0 + 3328) = _Q4;
  *(v0 + 3344) = _Q4;
  *(v0 + 8416) = xmmword_1BCE3DAE0;
  *(v0 + 8992) = xmmword_1BCE3DAE0;
  *(v0 + 9504) = xmmword_1BCE3DAE0;
  *(v0 + 9632) = xmmword_1BCE3DAE0;
  *(v0 + 10208) = xmmword_1BCE3DAE0;
  *(v0 + 10720) = xmmword_1BCE3DAE0;
  *(v0 + 10848) = xmmword_1BCE3DAE0;
  *(v0 + 11424) = xmmword_1BCE3DAE0;
  *(v0 + 11936) = xmmword_1BCE3DAE0;
  *(v0 + 12064) = xmmword_1BCE3DAE0;
  *(v0 + 1168) = 0x4170000042480000;
  *(v0 + 3088) = _Q4;
  *(v0 + 3104) = _Q4;
  *(v0 + 3120) = _Q4;
  *(v0 + 3152) = _Q4;
  *(v0 + 2384) = 0x4170000042480000;
  *(v0 + 8464) = 0x4170000042480000;
  *(v0 + 9680) = 0x4170000042480000;
  *(v0 + 10896) = 0x4170000042480000;
  *(v0 + 12112) = 0x4170000042480000;
  *(v0 + 3056) = _Q4;
  *(v0 + 208) = _Q4;
  *(v0 + 304) = _Q4;
  *(v0 + 464) = _Q4;
  *(v0 + 624) = _Q4;
  *(v0 + 672) = _Q4;
  *(v0 + 688) = _Q4;
  *(v0 + 2896) = _Q4;
  *(v0 + 720) = _Q4;
  *(v0 + 2824) = 0x3FF0000000000000;
  *(v0 + 2832) = _Q4;
  *(v0 + 2848) = 0x3FF0000000000000;
  *(v0 + 2856) = 1065353216;
  *(v0 + 768) = _Q4;
  *(v0 + 784) = _Q4;
  *(v0 + 928) = _Q4;
  *(v0 + 944) = _Q4;
  *(v0 + 976) = _Q4;
  *(v0 + 400) = _Q4;
  *(v0 + 2736) = _Q4;
  *(v0 + 424) = 1065353216;
  *(v0 + 656) = _Q4;
  *(v0 + 752) = _Q4;
  *(v0 + 2640) = _Q4;
  *(v0 + 816) = _Q4;
  *(v0 + 832) = _Q4;
  *(v0 + 848) = _Q4;
  *(v0 + 864) = _Q4;
  *(v0 + 880) = _Q4;
  *(v0 + 896) = _Q4;
  *(v0 + 912) = _Q4;
  *(v0 + 1072) = _Q4;
  *(v0 + 1104) = _Q4;
  *(v0 + 2400) = _Q4;
  *(v0 + 2473) = *v9;
  *(v0 + 2476) = *&v9[3];
  *(v0 + 2504) = 1056964608;
  *(v0 + 2416) = _Q4;
  *(v0 + 2432) = _Q4;
  *(v0 + 2448) = 0x3FF0000000000000;
  *(v0 + 2464) = 0xC018000000000000;
  *(v0 + 2472) = 0;
  *(v0 + 1136) = _Q4;
  *(v0 + 1152) = _Q4;
  *(v0 + 2320) = _Q4;
  *(v0 + 2352) = _Q4;
  *(v0 + 2368) = _Q4;
  *(v0 + 2392) = 0x3FF0000000000000;
  *(v0 + 1176) = 0x3FF0000000000000;
  *(v0 + 1184) = _Q4;
  *(v0 + 1200) = _Q4;
  *(v0 + 1216) = _Q4;
  *(v0 + 1232) = 0x3FF0000000000000;
  *(v0 + 2288) = _Q4;
  *(v0 + 1248) = 0xC031FFFFFFFFFFFFLL;
  *(v0 + 1256) = 0;
  *(v0 + 2192) = _Q4;
  *(v0 + 1257) = *v8;
  *(v0 + 2112) = _Q4;
  *(v0 + 2128) = _Q4;
  *(v0 + 2144) = _Q4;
  *(v0 + 2160) = _Q4;
  *(v0 + 1260) = *&v8[3];
  *(v0 + 2032) = _Q4;
  *(v0 + 2048) = _Q4;
  *(v0 + 2064) = _Q4;
  *(v0 + 2080) = _Q4;
  *(v0 + 2096) = _Q4;
  *(v0 + 1288) = 1053609165;
  *(v0 + 1424) = _Q4;
  *(v0 + 1936) = _Q4;
  *(v0 + 1968) = _Q4;
  *(v0 + 1984) = _Q4;
  *(v0 + 2000) = _Q4;
  *(v0 + 1520) = _Q4;
  *(v0 + 1608) = 0x3FF0000000000000;
  *(v0 + 1840) = _Q4;
  *(v0 + 1872) = _Q4;
  *(v0 + 1888) = _Q4;
  *(v0 + 1904) = _Q4;
  *(v0 + 1616) = _Q4;
  *(v0 + 1632) = 0x3FF0000000000000;
  *(v0 + 1640) = 1065353216;
  *(v0 + 1680) = _Q4;
  *(v0 + 8400) = _Q4;
  *(v0 + 8432) = _Q4;
  *(v0 + 8448) = _Q4;
  *(v0 + 8480) = _Q4;
  *(v0 + 8496) = _Q4;
  *(v0 + 8512) = _Q4;
  *(v0 + 8720) = _Q4;
  *(v0 + 8816) = _Q4;
  *(v0 + 8912) = _Q4;
  *(v0 + 8976) = _Q4;
  *(v0 + 9136) = _Q4;
  *(v0 + 9168) = _Q4;
  *(v0 + 9184) = _Q4;
  *(v0 + 9200) = _Q4;
  *(v0 + 9232) = _Q4;
  *(v0 + 9264) = _Q4;
  *(v0 + 9280) = _Q4;
  *(v0 + 9296) = _Q4;
  *(v0 + 9328) = _Q4;
  *(v0 + 9344) = _Q4;
  *(v0 + 9360) = _Q4;
  *(v0 + 9376) = _Q4;
  *(v0 + 9392) = _Q4;
  *(v0 + 9408) = _Q4;
  *(v0 + 9424) = _Q4;
  *(v0 + 9440) = _Q4;
  *(v0 + 9456) = _Q4;
  *(v0 + 9488) = _Q4;
  *(v0 + 9584) = _Q4;
  *(v0 + 9616) = _Q4;
  *(v0 + 9648) = _Q4;
  *(v0 + 9664) = _Q4;
  *(v0 + 9696) = _Q4;
  *(v0 + 9712) = _Q4;
  *(v0 + 9728) = _Q4;
  *(v0 + 9936) = _Q4;
  *(v0 + 10032) = _Q4;
  *(v0 + 10128) = _Q4;
  *(v0 + 10192) = _Q4;
  *(v0 + 10352) = _Q4;
  *(v0 + 10384) = _Q4;
  *(v0 + 10400) = _Q4;
  *(v0 + 10416) = _Q4;
  *(v0 + 10448) = _Q4;
  *(v0 + 10480) = _Q4;
  *(v0 + 10496) = _Q4;
  *(v0 + 10512) = _Q4;
  *(v0 + 10544) = _Q4;
  *(v0 + 10560) = _Q4;
  *(v0 + 10576) = _Q4;
  *(v0 + 10592) = _Q4;
  *(v0 + 10608) = _Q4;
  *(v0 + 10624) = _Q4;
  *(v0 + 10640) = _Q4;
  *(v0 + 10656) = _Q4;
  *(v0 + 10672) = _Q4;
  *(v0 + 10704) = _Q4;
  *(v0 + 10800) = _Q4;
  *(v0 + 10832) = _Q4;
  *(v0 + 10864) = _Q4;
  *(v0 + 10880) = _Q4;
  *(v0 + 10912) = _Q4;
  *(v0 + 10928) = _Q4;
  *(v0 + 10944) = _Q4;
  *(v0 + 11152) = _Q4;
  *(v0 + 11248) = _Q4;
  *(v0 + 11344) = _Q4;
  *(v0 + 11408) = _Q4;
  *(v0 + 11568) = _Q4;
  *(v0 + 11600) = _Q4;
  *(v0 + 11616) = _Q4;
  *(v0 + 11632) = _Q4;
  *(v0 + 11664) = _Q4;
  *(v0 + 11696) = _Q4;
  *(v0 + 11712) = _Q4;
  *(v0 + 11728) = _Q4;
  *(v0 + 11760) = _Q4;
  *(v0 + 11776) = _Q4;
  *(v0 + 11792) = _Q4;
  *(v0 + 11808) = _Q4;
  *(v0 + 11824) = _Q4;
  *(v0 + 11840) = _Q4;
  *(v0 + 11856) = _Q4;
  *(v0 + 11872) = _Q4;
  *(v0 + 11888) = _Q4;
  *(v0 + 11920) = _Q4;
  *(v0 + 12016) = _Q4;
  *(v0 + 12048) = _Q4;
  *(v0 + 12080) = _Q4;
  *(v0 + 12096) = _Q4;
  *(v0 + 12128) = _Q4;
  *(v0 + 12144) = _Q4;
  *(v0 + 12160) = _Q4;
  *(v0 + 392) = 0x3FF0000000000000;
  *(v0 + 416) = 0x3FF0000000000000;
  *(v0 + 32) = 0xC056800000000000;
  *(v0 + 40) = 0;
  *(v0 + 72) = 1053609165;
  *(v0 + 8472) = 0x3FF0000000000000;
  *(v0 + 8528) = 0x3FF0000000000000;
  *(v0 + 8544) = 0xC018000000000000;
  *(v0 + 8552) = 1;
  *(v0 + 8553) = *v14;
  *(v0 + 8556) = *&v14[3];
  *(v0 + 8584) = 1056964608;
  *(v0 + 8904) = 0x3FF0000000000000;
  *(v0 + 8928) = 0x3FF0000000000000;
  *(v0 + 8936) = 1065353216;
  *(v0 + 9688) = 0x3FF0000000000000;
  *(v0 + 9744) = 0x3FF0000000000000;
  *(v0 + 9760) = 0xC031FFFFFFFFFFFFLL;
  *(v0 + 9769) = *v15;
  *(v0 + 9768) = 1;
  *(v0 + 9772) = *&v15[3];
  *(v0 + 9800) = 1053609165;
  *(v0 + 10120) = 0x3FF0000000000000;
  *(v0 + 10144) = 0x3FF0000000000000;
  *(v0 + 10152) = 1065353216;
  *(v0 + 10904) = 0x3FF0000000000000;
  *(v0 + 10960) = 0x3FF0000000000000;
  *(v0 + 10976) = 0xC056800000000000;
  *(v0 + 10984) = 1;
  *(v0 + 10985) = *v16;
  *(v0 + 10988) = *&v16[3];
  *(v0 + 11016) = 1053609165;
  *(v0 + 11336) = 0x3FF0000000000000;
  *(v0 + 11360) = 0x3FF0000000000000;
  *(v0 + 11368) = 1065353216;
  *(v0 + 12120) = 0x3FF0000000000000;
  *(v0 + 12176) = 0x3FF0000000000000;
  return result;
}

void sub_1BCD98E58(uint64_t a1@<X8>)
{
  v2 = a1 + 1436;
  sub_1BCA75E88();
  v4 = v3;
  sub_1BCA75E88();
  *a1 = 0x4006666666666666;
  *(a1 + 8) = 3;
  *(a1 + 16) = 0x3FF0000000000000;
  *(a1 + 24) = 48;
  *(a1 + 32) = xmmword_1BCE3BED0;
  *(a1 + 48) = xmmword_1BCE3BED0;
  *(a1 + 64) = 0x42C8000042480000;
  *(a1 + 72) = 0x439B000000000000;
  *(a1 + 80) = xmmword_1BCE3EB50;
  *(a1 + 96) = xmmword_1BCE3BEF0;
  *(a1 + 112) = 0x3E8000003DF5C28FLL;
  *(a1 + 128) = xmmword_1BCE3C7C0;
  *(a1 + 144) = xmmword_1BCE3D840;
  *(a1 + 160) = xmmword_1BCE3BF00;
  *(a1 + 176) = 1153138688;
  *(a1 + 184) = 0x3E4CCCCD3DA3D70ALL;
  *(a1 + 192) = xmmword_1BCE3C7C0;
  *(a1 + 208) = xmmword_1BCE3C700;
  *(a1 + 224) = xmmword_1BCE3C660;
  *(a1 + 240) = 0x4100000041727059;
  *(a1 + 248) = 1103626240;
  *(a1 + 256) = 0x3E051EB83D75C28FLL;
  *(a1 + 264) = 0x40A00000410F6D04;
  *(a1 + 272) = 1093310165;
  __asm { FMOV            V0.4S, #1.0 }

  *(a1 + 288) = xmmword_1BCE3C7C0;
  *(a1 + 304) = _Q0;
  *(a1 + 320) = 0x425C000041200000;
  *(a1 + 328) = 0x3E23D70A3D8F5C29;
  *(a1 + 336) = 0x4000000041076DDCLL;
  *(a1 + 352) = xmmword_1BCE3C7C0;
  *(a1 + 368) = xmmword_1BCE3C700;
  *(a1 + 384) = 0;
  *(a1 + 388) = 0x3CA3D70A3F800000;
  *(a1 + 400) = xmmword_1BCE3BF20;
  *(a1 + 416) = 0x3F0000003F000000;
  *(a1 + 424) = 10;
  *(a1 + 432) = xmmword_1BCE3BF30;
  *(a1 + 448) = 0x3E4CCCCD3DCCCCCDLL;
  *(a1 + 464) = _Q0;
  *(a1 + 480) = xmmword_1BCE3D870;
  *(a1 + 496) = 0x43FA000040400000;
  *(a1 + 504) = 1116471296;
  *(a1 + 512) = 0x3E8000003DF5C28FLL;
  *(a1 + 528) = _Q0;
  *(a1 + 544) = _Q0;
  *(a1 + 560) = 0x4248000044BB8000;
  *(a1 + 568) = 0x3E4CCCCD3DA3D70ALL;
  *(a1 + 576) = xmmword_1BCE3C700;
  *(a1 + 592) = xmmword_1BCE3D880;
  *(a1 + 608) = 0x4100000040A00000;
  *(a1 + 624) = xmmword_1BCE3C700;
  *(a1 + 640) = xmmword_1BCE3D880;
  *(a1 + 656) = 0x4220000041200000;
  *(a1 + 664) = 0x3FC000003E99999ALL;
  *(a1 + 672) = 0x40A000003F800000;
  *(a1 + 688) = _Q0;
  *(a1 + 704) = 1065353216;
  *(a1 + 712) = 0x3F99999A3F19999ALL;
  *(a1 + 720) = 0x41A8000041880000;
  *(a1 + 728) = 1095761920;
  *(a1 + 736) = 1;
  *(a1 + 744) = 10;
  *(a1 + 752) = xmmword_1BCE52C30;
  *(a1 + 768) = 0x617274736F746C41;
  *(a1 + 776) = 0xEF4C202D20737574;
  *(a1 + 784) = 0xD000000000000013;
  *(a1 + 792) = 0x80000001BCE798E0;
  *(a1 + 800) = 9;
  *(a1 + 816) = _Q0;
  *(a1 + 832) = 1065353216;
  *(a1 + 840) = 0x3F4CCCCD3ECCCCCDLL;
  *(a1 + 848) = 0x417C0000413CF5C2;
  *(a1 + 856) = 1094983344;
  *(a1 + 864) = 1;
  *(a1 + 872) = 4;
  *(a1 + 880) = xmmword_1BCE3F4C0;
  *(a1 + 896) = 0xD000000000000010;
  *(a1 + 904) = 0x80000001BCE79860;
  *(a1 + 912) = 0xD000000000000014;
  *(a1 + 920) = 0x80000001BCE79880;
  *(a1 + 928) = 6;
  *(a1 + 944) = _Q0;
  *(a1 + 960) = 1065353216;
  *(a1 + 968) = 0x3F4CCCCD3E4CCCCDLL;
  *(a1 + 976) = 0x415A8F5C40E00000;
  *(a1 + 984) = 1076315424;
  *(a1 + 992) = 1;
  *(a1 + 1000) = 6;
  *(a1 + 1008) = xmmword_1BCE3C6F0;
  *(a1 + 1024) = 0x617274736F746C41;
  *(a1 + 1032) = 0xEF4C202D20737574;
  *(a1 + 1040) = 0xD000000000000013;
  *(a1 + 1048) = 0x80000001BCE798E0;
  *(a1 + 1056) = 6;
  *(a1 + 1072) = _Q0;
  *(a1 + 1088) = 1065353216;
  *(a1 + 1096) = 0x3F8000003F000000;
  *(a1 + 1104) = 0x400000003FC00000;
  *(a1 + 1112) = 1084503840;
  *(a1 + 1120) = 0;
  *(a1 + 1128) = 4;
  *(a1 + 1136) = xmmword_1BCE3D8A0;
  *(a1 + 1152) = 0x7970736957;
  *(a1 + 1160) = 0xE500000000000000;
  strcpy((a1 + 1168), "Wispy_Single");
  *(a1 + 1181) = 0;
  *(a1 + 1182) = -5120;
  *(a1 + 1184) = 6;
  *(a1 + 1200) = _Q0;
  *(a1 + 1216) = xmmword_1BCE6CB50;
  *(a1 + 1232) = 0;
  *(a1 + 1236) = 1;
  *(a1 + 1240) = 0x617274736F746C41;
  *(a1 + 1248) = 0xEB00000000737574;
  *(a1 + 1256) = 0xD000000000000013;
  *(a1 + 1264) = 0x80000001BCE79300;
  *(a1 + 1272) = 8;
  *(a1 + 1280) = 0;
  *(a1 + 1288) = 0x3E2E147B3DA3D70ALL;
  __asm { FMOV            V4.2S, #12.0 }

  *(a1 + 1296) = _D4;
  *(a1 + 1304) = 1099951505;
  *(a1 + 1312) = xmmword_1BCE3C7C0;
  *(a1 + 1328) = xmmword_1BCE3FB70;
  *(a1 + 1344) = 0x4170000041200000;
  *(a1 + 1352) = 1090519040;
  *(a1 + 1360) = 0;
  *(a1 + 1368) = 5;
  *(a1 + 1408) = 0u;
  *(a1 + 1392) = 0u;
  *(a1 + 1376) = 0u;
  *(a1 + 1424) = 0x3F99999A3ECCCCCDLL;
  *(a1 + 1432) = 1;
  *v2 = xmmword_1BCE3BFC0;
  *(a1 + 1456) = 0x42DC000042B40000;
  *(a1 + 1472) = _Q0;
  *(a1 + 1488) = _Q0;
  *(a1 + 1504) = 1097859072;
  *(a1 + 1512) = 0x736168506E6F6F6DLL;
  *(a1 + 1520) = 0xEA00000000003065;
  *(a1 + 1528) = 1112014848;
  *(a1 + 1536) = _Q0;
  *(a1 + 1552) = xmmword_1BCE3F4F0;
  *(a1 + 1568) = 0x4248000042200000;
  *(a1 + 1584) = 0u;
  *(a1 + 1600) = xmmword_1BCE3D880;
  __asm { FMOV            V3.2S, #-30.0 }

  *(a1 + 1616) = -_D3;
  *(a1 + 1624) = 0x40000000;
  *(a1 + 1628) = 0;
  *(a1 + 1630) = 1;
  *(a1 + 1637) = 0;
  *(a1 + 1631) = 0;
  *(v2 + 209) = 16843009;
  *(v2 + 213) = 50331648;
  *(a1 + 1656) = 0;
  *(a1 + 1657) = v13;
  *(a1 + 1659) = v14;
  *(a1 + 1660) = 1066611507;
  *(a1 + 1664) = 0x40C0000040A00000;
  *(a1 + 1672) = 3;
  *(a1 + 1680) = xmmword_1BCE3C000;
  *(a1 + 1696) = xmmword_1BCE3C010;
  *(a1 + 1712) = xmmword_1BCE3C020;
  *(a1 + 1728) = 0x3F0000003EB33333;
  *(a1 + 1736) = 0x3E800000453B8000;
  *(a1 + 1744) = 0u;
  *(a1 + 1760) = 12;
  *(a1 + 1776) = xmmword_1BCE3D8B0;
  *(a1 + 1792) = xmmword_1BCE3D8C0;
  *(a1 + 1808) = xmmword_1BCE3C7A0;
  *(a1 + 1824) = 1;
  *(a1 + 1828) = xmmword_1BCE3C060;
  *(a1 + 1844) = 1040187392;
  *(a1 + 1848) = 0x4100000041700000;
  *(a1 + 1856) = 3;
  *(a1 + 1864) = 0x40000000;
  *(a1 + 1872) = 0x408000003F400000;
  *(a1 + 1880) = 1109393408;
  *(a1 + 1888) = _Q0;
  *(a1 + 1904) = 0x3DCCCCCD00000000;
  *(a1 + 1912) = 1101004800;
  *(a1 + 1920) = 0;
  *(a1 + 1928) = 1106247680;
  *(a1 + 1936) = _Q0;
  *(a1 + 1952) = 1077936128;
  *(a1 + 1960) = 0x420C000041C80000;
  *(a1 + 1968) = xmmword_1BCE3C070;
  *(a1 + 1984) = 0x3F800000412D53BALL;
  *(a1 + 1992) = 1061158912;
  *(a1 + 2000) = 0x3F4CCCCD3E4CCCCDLL;
  *(a1 + 2008) = 0x3F6666663F333333;
  *(a1 + 2016) = xmmword_1BCE3C080;
  *(a1 + 2096) = 0u;
  *(a1 + 2080) = 0u;
  *(a1 + 2064) = 0u;
  *(a1 + 2048) = 0u;
  *(a1 + 2032) = 0u;
  *(a1 + 2112) = 1056964608;
  *(a1 + 2120) = 0x3E0F5C293DA3D70ALL;
  *(a1 + 2128) = 0x406666663FC00000;
  *(a1 + 2136) = 0x4040000040000000;
  *(a1 + 2144) = -1046478848;
  *(a1 + 2160) = _Q0;
  *(a1 + 2176) = _Q0;
  *(a1 + 2192) = 1056964608;
  *(a1 + 2200) = 10;
  *(a1 + 2208) = 0x40A000003FC00000;
  *(a1 + 2224) = xmmword_1BCE3C090;
  *(a1 + 2240) = xmmword_1BCE3C0A0;
  *(a1 + 2256) = _Q0;
  *(a1 + 2304) = 0;
  *(a1 + 2288) = 0u;
  *(a1 + 2272) = 0u;
  *(a1 + 2312) = v4;
  *(a1 + 2320) = v12;
}

Swift::String_optional __swiftcall Double.formatHourDuration(unitsStyle:)(NSDateComponentsFormatterUnitsStyle unitsStyle)
{
  v2 = sub_1BCD995E8(unitsStyle, 32, v1);
  result.value._object = v3;
  result.value._countAndFlagsBits = v2;
  return result;
}

Swift::String_optional __swiftcall Double.formatDayDuration(unitsStyle:)(NSDateComponentsFormatterUnitsStyle unitsStyle)
{
  v2 = sub_1BCD995E8(unitsStyle, 16, v1);
  result.value._object = v3;
  result.value._countAndFlagsBits = v2;
  return result;
}

Swift::String_optional __swiftcall Double.formatMinuteDuration(unitsStyle:)(NSDateComponentsFormatterUnitsStyle unitsStyle)
{
  v2 = sub_1BCD995E8(unitsStyle, 64, v1);
  result.value._object = v3;
  result.value._countAndFlagsBits = v2;
  return result;
}

uint64_t sub_1BCD995E8(uint64_t a1, uint64_t a2, double a3)
{
  sub_1BCAE2864();
  v6 = static NSDateFormatter.timeDurationFormatter(allowedUnits:unitsStyle:)(a2, a1);
  v7 = [v6 stringFromTimeInterval_];

  if (!v7)
  {
    return 0;
  }

  v8 = sub_1BCE1D280();

  return v8;
}

Swift::String_optional __swiftcall Double.formatTimeDuration(allowedUnits:)(NSCalendarUnit allowedUnits)
{
  v2 = v1;
  sub_1BCAE2864();
  v4 = static NSDateFormatter.timeDurationFormatter(allowedUnits:unitsStyle:)(allowedUnits, 5);
  v5 = [v4 stringFromTimeInterval_];

  if (v5)
  {
    v6 = sub_1BCE1D280();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = v6;
  v10 = v8;
  result.value._object = v10;
  result.value._countAndFlagsBits = v9;
  return result;
}

uint64_t get_enum_tag_for_layout_string_9WeatherUI19AirQualityViewModelVSg(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1BCD99748(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 232))
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

uint64_t sub_1BCD99788(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0u;
    *(result + 216) = 0u;
    *(result + 184) = 0u;
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
      *(result + 232) = 1;
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

    *(result + 232) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1BCD99810(char *__src, void *a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v38, __src + 112, sizeof(v38));
  v4 = *(__src + 28);
  memcpy(v39, a2, sizeof(v39));
  memcpy(v40, a2 + 14, sizeof(v40));
  v5 = a2[28];
  memcpy(v15, __src, 0x70uLL);
  memcpy(__srca, a2, sizeof(__srca));
  LOBYTE(a2) = static CurrentObservationsHeaderViewModel.== infix(_:_:)(v15, __srca);
  memcpy(v41, __srca, sizeof(v41));
  sub_1BCCF6F50(__dst, v42);
  sub_1BCCF6F50(v39, v42);
  sub_1BCD99BAC(v41);
  memcpy(v42, v15, sizeof(v42));
  sub_1BCD99BAC(v42);
  if ((a2 & 1) == 0)
  {
    return 0;
  }

  v6 = *(&v38[2] + 1);
  v35 = *&v38[2];
  v7 = *(&v40[2] + 1);
  v28 = *&v40[2];
  v33 = v38[0];
  v34 = v38[1];
  v29 = v38[3];
  v30 = v38[4];
  v31 = v38[5];
  v32 = v38[6];
  v26 = v40[0];
  v27 = v40[1];
  v24 = v40[5];
  v25 = v40[6];
  v22 = v40[3];
  v23 = v40[4];
  if (*(&v38[2] + 1))
  {
    v15[0] = v38[0];
    v15[1] = v38[1];
    v15[2] = v38[2];
    OUTLINED_FUNCTION_0_81();
    memcpy(__srca, v15, sizeof(__srca));
    if (v7)
    {
      v14[0] = v40[0];
      v14[1] = v40[1];
      v14[3] = v40[3];
      v14[4] = v40[4];
      v14[5] = v40[5];
      v14[6] = v40[6];
      *&v14[2] = *&v40[2];
      *(&v14[2] + 1) = v7;
      sub_1BCD99C00(v38, v13);
      sub_1BCD99C00(v40, v13);
      sub_1BCD99C00(v15, v13);
      v8 = static AirQualityViewModel.== infix(_:_:)(__srca, v14);
      memcpy(v12, v14, sizeof(v12));
      sub_1BCD99C70(v12);
      memcpy(v13, __srca, sizeof(v13));
      sub_1BCD99C70(v13);
      v14[0] = v33;
      v14[1] = v34;
      *&v14[2] = v35;
      *(&v14[2] + 1) = v6;
      v14[3] = v29;
      v14[4] = v30;
      v14[5] = v31;
      v14[6] = v32;
      sub_1BC94C0B4(v14, &qword_1EBD0E020, &qword_1BCE6CC60);
      if ((v8 & 1) == 0)
      {
        return 0;
      }

      if (v4)
      {
        goto LABEL_6;
      }

      return !v5;
    }

    memcpy(v14, v15, sizeof(v14));
    sub_1BCD99C00(v38, v13);
    sub_1BCD99C00(v40, v13);
    sub_1BCD99C00(v15, v13);
    sub_1BCD99C70(v14);
LABEL_12:
    v15[0] = v33;
    v15[1] = v34;
    *&v15[2] = v35;
    *(&v15[2] + 1) = v6;
    v15[3] = v29;
    v15[4] = v30;
    v15[5] = v31;
    v15[6] = v32;
    v15[7] = v26;
    v15[8] = v27;
    v16 = v28;
    v17 = v7;
    v20 = v24;
    v21 = v25;
    v18 = v22;
    v19 = v23;
    sub_1BC94C0B4(v15, &qword_1EBD0E028, &qword_1BCE6CC68);
    return 0;
  }

  if (*(&v40[2] + 1))
  {
    sub_1BCD99C00(v38, v15);
    sub_1BCD99C00(v40, v15);
    goto LABEL_12;
  }

  v15[0] = v38[0];
  v15[1] = v38[1];
  v15[2] = *&v38[2];
  OUTLINED_FUNCTION_0_81();
  sub_1BCD99C00(v38, __srca);
  sub_1BCD99C00(v40, __srca);
  sub_1BC94C0B4(v15, &qword_1EBD0E020, &qword_1BCE6CC60);
  if (v4)
  {
LABEL_6:
    if (v5)
    {

      sub_1BCABA08C();
      v10 = v9;

      if (v10)
      {
        return 1;
      }
    }

    return 0;
  }

  return !v5;
}

uint64_t sub_1BCD99C00(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0E020, &qword_1BCE6CC60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ColorSpectrum.gradientStops.getter()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v12 = MEMORY[0x1E69E7CC0];
    sub_1BC9950E0(0, v2, 0);
    v3 = v12;
    v4 = v1 + 40;
    do
    {

      v5 = sub_1BCE1CE50();
      v7 = v6;
      v9 = *(v12 + 16);
      v8 = *(v12 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_1BC9950E0((v8 > 1), v9 + 1, 1);
      }

      *(v12 + 16) = v9 + 1;
      v10 = v12 + 16 * v9;
      *(v10 + 32) = v5;
      *(v10 + 40) = v7;
      v4 += 24;
      --v2;
    }

    while (v2);
  }

  return v3;
}

uint64_t ColorIndex.init(value:color:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  *a2 = a3;
  *(a2 + 8) = a1;
  sub_1BC947608(0, &qword_1EDA1F698, 0x1E69DC888);

  result = sub_1BCE1DAB0();
  *(a2 + 16) = result;
  return result;
}

uint64_t ColorIndex.init(value:color:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  *a2 = a3;
  v4 = a1;
  result = sub_1BCE1CA20();
  *(a2 + 8) = result;
  *(a2 + 16) = v4;
  return result;
}

uint64_t static ColorIndex.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a2 + 16);
  v3 = *(a1 + 16);
  sub_1BC947608(0, &qword_1EDA1C0B8, 0x1E69E58C0);
  v4 = v3;
  v5 = v2;
  v6 = sub_1BCE1DAC0();

  return v6 & 1;
}

WeatherUI::ColorSpectrum __swiftcall ColorSpectrum.init(colors:)(WeatherUI::ColorSpectrum colors)
{
  rawValue = colors.indices._rawValue;
  v12 = v1;
  v3 = 0;
  v4 = MEMORY[0x1E69E7CC0];
  v5 = *(colors.indices._rawValue + 2);
  while (1)
  {
    if (v5 == v3)
    {

      *v12 = v4;
      return colors;
    }

    if (v3 >= rawValue[2])
    {
      break;
    }

    sub_1BC947608(0, &qword_1EDA1F698, 0x1E69DC888);
    swift_retain_n();
    v6 = sub_1BCE1DAB0();
    v7 = sub_1BCE1CA20();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1BCB653E4();
      v4 = v10;
    }

    v8 = *(v4 + 16);
    if (v8 >= *(v4 + 24) >> 1)
    {
      sub_1BCB653E4();
      v4 = v11;
    }

    *(v4 + 16) = v8 + 1;
    v9 = v4 + 24 * v8;
    *(v9 + 32) = v3;
    *(v9 + 40) = v7;
    *(v9 + 48) = v6;
    ++v3;
  }

  __break(1u);
  return colors;
}

void ColorSpectrum.color(for:in:)(Swift::OpaquePointer a1, Swift::Double a2)
{
  v9 = ColorSpectrum.indexOfColorIndex(for:in:)(a2, a1);
  if (v9.is_nil)
  {

    sub_1BCE1CAB0();
    return;
  }

  if (v9.value)
  {
    v4 = *(a1._rawValue + 2);
    if (v9.value >= v4)
    {
      __break(1u);
    }

    else if (v9.value - 1 < v4)
    {
      v5 = (a2 - *(a1._rawValue + 3 * v9.value + 1)) / (*(a1._rawValue + 3 * v9.value + 4) - *(a1._rawValue + 3 * v9.value + 1));
      sub_1BC947608(0, &qword_1EDA1F698, 0x1E69DC888);

      v6 = sub_1BCE1DAB0();

      v7 = sub_1BCE1DAB0();
      sub_1BCD9A284(v6, v7, v5);

      sub_1BCE1CA20();
      return;
    }

    __break(1u);
LABEL_17:
    __break(1u);
    return;
  }

  if (!*(a1._rawValue + 2))
  {
    goto LABEL_17;
  }
}

Swift::Int_optional __swiftcall ColorSpectrum.indexOfColorIndex(for:in:)(Swift::Double a1, Swift::OpaquePointer in)
{
  v3 = *(in._rawValue + 2);
  if (v3)
  {
    if (*(in._rawValue + 4) > a1)
    {
      v4 = 0;
LABEL_5:
      v5 = 0;
      goto LABEL_12;
    }

    v4 = v3 - 1;
    if (*(in._rawValue + 3 * v3 + 1) < a1)
    {
      goto LABEL_5;
    }
  }

  v4 = 0;
  for (i = (in._rawValue + 32); ; i += 3)
  {
    v5 = v3 == v4;
    if (v3 == v4)
    {
      break;
    }

    if (*i >= a1)
    {
      goto LABEL_12;
    }

    ++v4;
  }

  v4 = 0;
LABEL_12:
  result.value = v4;
  result.is_nil = v5;
  return result;
}

void sub_1BCD9A284(void *a1, void *a2, double a3)
{
  v5 = [a1 CGColor];
  v6 = sub_1BCE1D7F0();

  if (!v6)
  {
    v10 = 0.0;
    v11 = 0.0;
    v9 = 0.0;
    v8 = 0.0;
    goto LABEL_8;
  }

  v7 = *(v6 + 16);
  if (!v7)
  {
    __break(1u);
    goto LABEL_30;
  }

  if (v7 == 1)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v7 < 3)
  {
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (v7 == 3)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v8 = *(v6 + 32);
  v9 = *(v6 + 40);
  v11 = *(v6 + 48);
  v10 = *(v6 + 56);

LABEL_8:
  v12 = [a2 CGColor];
  v13 = sub_1BCE1D7F0();

  v26 = v10;
  if (!v13)
  {
    v17 = 0.0;
    v19 = 1.0;
    if (a3 <= 1.0)
    {
      v19 = a3;
    }

    if (a3 <= 0.0)
    {
      v19 = 0.0;
    }

    v18 = 0.0;
    v16 = 0.0;
    v15 = 0.0;
    goto LABEL_22;
  }

  v14 = *(v13 + 16);
  if (!v14)
  {
    goto LABEL_32;
  }

  if (v14 == 1)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (v14 < 3)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v14 == 3)
  {
LABEL_36:
    __break(1u);
    return;
  }

  v15 = *(v13 + 32);
  v16 = *(v13 + 40);
  v18 = *(v13 + 48);
  v17 = *(v13 + 56);

  v19 = 0.0;
  if (a3 > 0.0)
  {
    v19 = 1.0;
    if (a3 <= 1.0)
    {
      v19 = a3;
    }
  }

LABEL_22:
  v20 = v8 + v19 * (v15 - v8);
  v21 = 1.0;
  if (a3 <= 1.0)
  {
    v21 = a3;
  }

  if (a3 <= 0.0)
  {
    v21 = 0.0;
  }

  v22 = v9 + v21 * (v16 - v9);
  v23 = v11 + v21 * (v18 - v11);
  v24 = v26 + v21 * (v17 - v26);
  v25 = objc_allocWithZone(MEMORY[0x1E69DC888]);

  [v25 initWithRed:v20 green:v22 blue:v23 alpha:v24];
}

uint64_t TemperatureComplicationViewModel.init(temperature:maxTemperature:minTemperature:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_1BCE19080();
  v8 = type metadata accessor for TemperatureComplicationViewModel(0);
  v9 = v8[5];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07CA8, &unk_1BCE42160);
  OUTLINED_FUNCTION_4();
  v14 = *(v11 + 32);
  v14(a4 + v9, a1, v10);
  v14(a4 + v8[6], a2, v10);
  v12 = a4 + v8[7];

  return (v14)(v12, a3, v10);
}

uint64_t type metadata accessor for TemperatureComplicationViewModel(uint64_t a1)
{
  result = qword_1EDA179C8;
  if (!qword_1EDA179C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t TemperatureComplicationViewModel.id.getter()
{
  OUTLINED_FUNCTION_19_1();
  sub_1BCE19090();
  OUTLINED_FUNCTION_4();
  v4 = *(v3 + 16);

  return v4(v0, v1, v2);
}

uint64_t TemperatureComplicationViewModel.id.setter(uint64_t a1)
{
  sub_1BCE19090();
  OUTLINED_FUNCTION_4();
  v5 = *(v4 + 40);

  return v5(v1, a1, v3);
}

uint64_t TemperatureComplicationViewModel.temperature.getter()
{
  v0 = OUTLINED_FUNCTION_19_1();
  type metadata accessor for TemperatureComplicationViewModel(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07CA8, &unk_1BCE42160);
  OUTLINED_FUNCTION_4();
  v1 = OUTLINED_FUNCTION_8();

  return v2(v1);
}

uint64_t TemperatureComplicationViewModel.maxTemperature.getter()
{
  v0 = OUTLINED_FUNCTION_19_1();
  type metadata accessor for TemperatureComplicationViewModel(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07CA8, &unk_1BCE42160);
  OUTLINED_FUNCTION_4();
  v1 = OUTLINED_FUNCTION_8();

  return v2(v1);
}

uint64_t TemperatureComplicationViewModel.minTemperature.getter()
{
  v0 = OUTLINED_FUNCTION_19_1();
  type metadata accessor for TemperatureComplicationViewModel(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07CA8, &unk_1BCE42160);
  OUTLINED_FUNCTION_4();
  v1 = OUTLINED_FUNCTION_8();

  return v2(v1);
}

uint64_t static TemperatureComplicationViewModel.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_1BCE19070() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for TemperatureComplicationViewModel(0);
  sub_1BCA301DC();
  OUTLINED_FUNCTION_5_69();
  if ((sub_1BCE185B0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_5_69();
  if ((sub_1BCE185B0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_5_69();

  return sub_1BCE185B0();
}

uint64_t sub_1BCD9A8D4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1BCE1E090() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x74617265706D6574 && a2 == 0xEB00000000657275;
    if (v6 || (sub_1BCE1E090() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x65706D655478616DLL && a2 == 0xEE00657275746172;
      if (v7 || (sub_1BCE1E090() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x65706D65546E696DLL && a2 == 0xEE00657275746172)
      {

        return 3;
      }

      else
      {
        v9 = sub_1BCE1E090();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_1BCD9AA38(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x74617265706D6574;
      break;
    case 2:
      v3 = 1417175405;
      goto LABEL_5;
    case 3:
      v3 = 1416522093;
LABEL_5:
      result = v3 | 0x65706D6500000000;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1BCD9AAC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BCD9A8D4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BCD9AAE8(uint64_t a1)
{
  v2 = sub_1BCD9AD70();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BCD9AB24(uint64_t a1)
{
  v2 = sub_1BCD9AD70();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TemperatureComplicationViewModel.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0E030, &qword_1BCE6CD18);
  OUTLINED_FUNCTION_2();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BCD9AD70();
  sub_1BCE1E170();
  v19[1] = 0;
  sub_1BCE19090();
  sub_1BCD9B3B4(&qword_1EBD09180, MEMORY[0x1E69695B0]);
  sub_1BCE1E020();
  if (!v2)
  {
    v11 = type metadata accessor for TemperatureComplicationViewModel(0);
    v12 = v11[5];
    v19[0] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07CA8, &unk_1BCE42160);
    sub_1BCAFEB90(&qword_1EBD09188, MEMORY[0x1E6968078]);
    OUTLINED_FUNCTION_2_95(v3 + v12, v19);
    v13 = v11[6];
    v18 = 2;
    OUTLINED_FUNCTION_2_95(v3 + v13, &v18);
    v14 = v11[7];
    v17 = 3;
    OUTLINED_FUNCTION_2_95(v3 + v14, &v17);
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_1BCD9AD70()
{
  result = qword_1EBD0E038;
  if (!qword_1EBD0E038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0E038);
  }

  return result;
}

uint64_t TemperatureComplicationViewModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07CA8, &unk_1BCE42160);
  OUTLINED_FUNCTION_2();
  v38 = v3;
  MEMORY[0x1EEE9AC00](v4);
  v36 = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v37 = v33 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v33 - v9;
  v11 = sub_1BCE19090();
  OUTLINED_FUNCTION_2();
  v39 = v12;
  MEMORY[0x1EEE9AC00](v13);
  v43 = v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0E040, &qword_1BCE6CD20);
  OUTLINED_FUNCTION_2();
  v40 = v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = v33 - v17;
  v19 = type metadata accessor for TemperatureComplicationViewModel(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v20);
  v22 = v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BCD9AD70();
  v44 = v18;
  v23 = v45;
  sub_1BCE1E160();
  if (v23)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v45 = a1;
  v34 = v22;
  v24 = v41;
  v49 = 0;
  sub_1BCD9B3B4(&qword_1EBD091B8, MEMORY[0x1E69695D0]);
  sub_1BCE1DF70();
  (*(v39 + 32))(v34, v43, v11);
  v48 = 1;
  v43 = sub_1BCAFEB90(&qword_1EBD091C0, MEMORY[0x1E6968098]);
  sub_1BCE1DF70();
  v33[1] = v11;
  v25 = &v34[v19[5]];
  v33[0] = *(v38 + 32);
  (v33[0])(v25, v10, v24);
  v47 = 2;
  v26 = v37;
  sub_1BCE1DF70();
  v27 = v45;
  (v33[0])(&v34[v19[6]], v26, v24);
  v46 = 3;
  v28 = v36;
  sub_1BCE1DF70();
  v29 = OUTLINED_FUNCTION_3_87();
  v30(v29);
  v31 = v34;
  (v33[0])(&v34[v19[7]], v28, v24);
  sub_1BCC6AB98(v31, v35);
  __swift_destroy_boxed_opaque_existential_1(v27);
  return sub_1BCD9B324(v31);
}

uint64_t sub_1BCD9B324(uint64_t a1)
{
  v2 = type metadata accessor for TemperatureComplicationViewModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BCD9B3B4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1BCE19090();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1BCD9B458(uint64_t a1)
{
  sub_1BCE19090();
  if (v1 <= 0x3F)
  {
    sub_1BCB379D4(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

_BYTE *storeEnumTagSinglePayload for TemperatureComplicationViewModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1BCD9B5C4()
{
  result = qword_1EBD0E048;
  if (!qword_1EBD0E048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0E048);
  }

  return result;
}

unint64_t sub_1BCD9B61C()
{
  result = qword_1EBD0E050;
  if (!qword_1EBD0E050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0E050);
  }

  return result;
}

unint64_t sub_1BCD9B674()
{
  result = qword_1EBD0E058;
  if (!qword_1EBD0E058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0E058);
  }

  return result;
}

void sub_1BCD9B6C8(uint64_t a1@<X8>)
{
  v2 = (a1 + 1436);
  sub_1BCA5E418();
  v4 = v3;
  sub_1BCA5E418();
  *a1 = 0x4006666666666666;
  *(a1 + 8) = 2;
  *(a1 + 16) = 0x3FF0000000000000;
  *(a1 + 24) = 30;
  *(a1 + 32) = xmmword_1BCE3BED0;
  *(a1 + 48) = xmmword_1BCE3BED0;
  *(a1 + 64) = 0x42DC000042480000;
  *(a1 + 72) = 0xC422800000000000;
  *(a1 + 80) = xmmword_1BCE3E530;
  *(a1 + 96) = xmmword_1BCE3BEF0;
  *(a1 + 112) = 0x3E8000003DF5C28FLL;
  *(a1 + 128) = xmmword_1BCE3C7C0;
  *(a1 + 144) = xmmword_1BCE3D840;
  *(a1 + 160) = xmmword_1BCE3BF00;
  *(a1 + 176) = 1153138688;
  *(a1 + 184) = 0x3E4CCCCD3DA3D70ALL;
  *(a1 + 192) = xmmword_1BCE3C7C0;
  *(a1 + 208) = xmmword_1BCE3C700;
  *(a1 + 224) = xmmword_1BCE3C660;
  *(a1 + 240) = 0x4140000040A00000;
  *(a1 + 248) = 1132068864;
  *(a1 + 256) = 0x3E4CCCCD3DE147AELL;
  *(a1 + 264) = 0x40A0000041700000;
  *(a1 + 272) = 1101004800;
  __asm { FMOV            V0.4S, #1.0 }

  *(a1 + 288) = xmmword_1BCE3C7C0;
  *(a1 + 304) = _Q0;
  *(a1 + 320) = 0x4348000040C00000;
  *(a1 + 328) = 0x3E99999A3E19999ALL;
  *(a1 + 336) = 0x3F00000040A00000;
  *(a1 + 352) = xmmword_1BCE3C7C0;
  *(a1 + 368) = xmmword_1BCE3C700;
  *(a1 + 384) = 0;
  *(a1 + 388) = 0x3B449BA63F800000;
  *(a1 + 400) = xmmword_1BCE3C670;
  *(a1 + 416) = 0x3F0000003F000000;
  *(a1 + 424) = 30;
  *(a1 + 432) = xmmword_1BCE3EB70;
  *(a1 + 448) = 0x3E4CCCCD3DCCCCCDLL;
  *(a1 + 464) = _Q0;
  *(a1 + 480) = xmmword_1BCE3D870;
  *(a1 + 496) = 0x43FA000040400000;
  *(a1 + 504) = 1116471296;
  *(a1 + 512) = 0x3E8000003DF5C28FLL;
  *(a1 + 528) = _Q0;
  *(a1 + 544) = _Q0;
  *(a1 + 560) = 0x4248000044BB8000;
  *(a1 + 568) = 0x3E4CCCCD3DA3D70ALL;
  *(a1 + 576) = xmmword_1BCE3C700;
  *(a1 + 592) = xmmword_1BCE3D880;
  *(a1 + 608) = 0x40C0000040800000;
  *(a1 + 624) = xmmword_1BCE3C700;
  *(a1 + 640) = xmmword_1BCE3D880;
  *(a1 + 656) = 0x419DAE1441200000;
  *(a1 + 664) = 0x402000003E99999ALL;
  *(a1 + 672) = 0x40A000003F800000;
  *(a1 + 688) = _Q0;
  *(a1 + 704) = 1065353216;
  *(a1 + 712) = 0x3F6666663E99999ALL;
  *(a1 + 720) = 0x4198000041700000;
  *(a1 + 728) = 1066369312;
  *(a1 + 736) = 1;
  *(a1 + 744) = 6;
  *(a1 + 752) = xmmword_1BCE3EB80;
  *(a1 + 768) = 0x617274736F746C41;
  *(a1 + 776) = 0xEF4C202D20737574;
  *(a1 + 784) = 0xD000000000000013;
  *(a1 + 792) = 0x80000001BCE798E0;
  *(a1 + 800) = 9;
  *(a1 + 816) = _Q0;
  *(a1 + 832) = 1065353216;
  *(a1 + 840) = 0x3F19999A3E4CCCCDLL;
  *(a1 + 848) = 0x41A0000041700000;
  *(a1 + 856) = 1092107296;
  *(a1 + 864) = 1;
  *(a1 + 872) = 6;
  *(a1 + 880) = xmmword_1BCE44850;
  *(a1 + 896) = 0x617274736F746C41;
  *(a1 + 904) = 0xEF4C202D20737574;
  *(a1 + 912) = 0xD000000000000013;
  *(a1 + 920) = 0x80000001BCE798E0;
  *(a1 + 928) = 9;
  *(a1 + 944) = _Q0;
  *(a1 + 960) = 1065353216;
  *(a1 + 968) = 0x3F4CCCCD3E4CCCCDLL;
  *(a1 + 976) = 0x4170000041200000;
  *(a1 + 984) = 1083393800;
  *(a1 + 992) = 1;
  *(a1 + 1000) = 4;
  *(a1 + 1008) = xmmword_1BCE3EBA0;
  *(a1 + 1024) = 0x617274736F746C41;
  *(a1 + 1032) = 0xEF53202D20737574;
  *(a1 + 1040) = 0xD000000000000013;
  *(a1 + 1048) = 0x80000001BCE792E0;
  *(a1 + 1056) = 9;
  *(a1 + 1072) = _Q0;
  *(a1 + 1088) = 1065353216;
  *(a1 + 1096) = 0x3F8000003F000000;
  *(a1 + 1104) = 0x4080000040400000;
  *(a1 + 1112) = 1085783552;
  *(a1 + 1120) = 0;
  *(a1 + 1128) = 6;
  *(a1 + 1136) = xmmword_1BCE44860;
  *(a1 + 1152) = 0x7970736957;
  *(a1 + 1160) = 0xE500000000000000;
  strcpy((a1 + 1168), "Wispy_Single");
  *(a1 + 1181) = 0;
  *(a1 + 1182) = -5120;
  *(a1 + 1184) = 6;
  *(a1 + 1200) = _Q0;
  *(a1 + 1216) = xmmword_1BCE44870;
  *(a1 + 1232) = 0;
  *(a1 + 1236) = 1;
  *(a1 + 1240) = 0x617274736F746C41;
  *(a1 + 1248) = 0xEB00000000737574;
  *(a1 + 1256) = 0xD000000000000013;
  *(a1 + 1264) = 0x80000001BCE79300;
  *(a1 + 1272) = 8;
  *(a1 + 1280) = 0;
  *(a1 + 1288) = 0x400000003F800000;
  *(a1 + 1296) = 0x41C8000042C80000;
  *(a1 + 1304) = 0;
  *(a1 + 1312) = _Q0;
  *(a1 + 1328) = _Q0;
  *(a1 + 1344) = 0;
  *(a1 + 1352) = 0x40000000;
  *(a1 + 1360) = 0;
  *(a1 + 1368) = 1;
  *(a1 + 1408) = 0u;
  *(a1 + 1392) = 0u;
  *(a1 + 1376) = 0u;
  *(a1 + 1424) = 0x3F99999A3ECCCCCDLL;
  *(a1 + 1432) = 1;
  *v2 = xmmword_1BCE3BFC0;
  *(a1 + 1456) = 0x42DC000042B40000;
  *(a1 + 1472) = _Q0;
  *(a1 + 1488) = _Q0;
  *(a1 + 1504) = 1097859072;
  *(a1 + 1512) = 0x736168506E6F6F6DLL;
  *(a1 + 1520) = 0xEA00000000003065;
  *(a1 + 1528) = 1112014848;
  *(a1 + 1536) = _Q0;
  *(a1 + 1552) = xmmword_1BCE3C770;
  *(a1 + 1568) = 0x4248000042200000;
  *(a1 + 1584) = 0u;
  *(a1 + 1600) = xmmword_1BCE3D880;
  __asm { FMOV            V2.2S, #-30.0 }

  *(a1 + 1616) = -_D2;
  *(a1 + 1624) = 0x40000000;
  *(a1 + 1628) = 0u;
  *(a1 + 1644) = 1;
  *(a1 + 1646) = 16843009;
  *(a1 + 1650) = 257;
  *(a1 + 1652) = 0;
  *(a1 + 1656) = 0;
  *(a1 + 1657) = v12;
  *(a1 + 1659) = v13;
  *(a1 + 1660) = 1066611507;
  *(a1 + 1664) = 0x40C0000040A00000;
  *(a1 + 1672) = 3;
  *(a1 + 1680) = xmmword_1BCE3C000;
  *(a1 + 1696) = xmmword_1BCE3C010;
  *(a1 + 1712) = xmmword_1BCE3C020;
  *(a1 + 1728) = 0x3F0000003EB33333;
  *(a1 + 1736) = 0x3E800000453B8000;
  *(a1 + 1744) = 0u;
  *(a1 + 1760) = 7;
  *(a1 + 1776) = xmmword_1BCE3D8B0;
  *(a1 + 1792) = xmmword_1BCE3D8C0;
  *(a1 + 1808) = xmmword_1BCE3C7A0;
  *(a1 + 1824) = 1;
  *(a1 + 1828) = xmmword_1BCE3EBB0;
  *(a1 + 1844) = 1036831949;
  *(a1 + 1848) = 0x4100000041200000;
  *(a1 + 1856) = 3;
  *(a1 + 1864) = 1056964608;
  *(a1 + 1872) = 0x400AE1483F970A3DLL;
  *(a1 + 1880) = 1110704128;
  *(a1 + 1888) = _Q0;
  *(a1 + 1904) = 0x3E4CCCCD40A00000;
  *(a1 + 1912) = 1101004800;
  *(a1 + 1920) = 0;
  *(a1 + 1928) = 1106247680;
  *(a1 + 1936) = _Q0;
  *(a1 + 1952) = 1077936128;
  *(a1 + 1960) = 0x420C000041C80000;
  *(a1 + 1968) = xmmword_1BCE3EBC0;
  *(a1 + 1984) = 0x3F80000000000000;
  *(a1 + 1992) = 1061158912;
  *(a1 + 2000) = 0x3F6666663E4CCCCDLL;
  *(a1 + 2008) = 0x3F6666663F333333;
  *(a1 + 2016) = xmmword_1BCE3C7E0;
  *(a1 + 2096) = 0u;
  *(a1 + 2080) = 0u;
  *(a1 + 2064) = 0u;
  *(a1 + 2048) = 0u;
  *(a1 + 2032) = 0u;
  *(a1 + 2112) = 1056964608;
  *(a1 + 2120) = 0x3E4CCCCD3DCCCCCDLL;
  *(a1 + 2128) = 0x400000003F800000;
  *(a1 + 2136) = 0x4040000040000000;
  *(a1 + 2144) = -1046478848;
  *(a1 + 2160) = _Q0;
  *(a1 + 2176) = _Q0;
  *(a1 + 2192) = 1061997773;
  *(a1 + 2200) = 10;
  *(a1 + 2208) = 0x417000003F4CCCCDLL;
  *(a1 + 2224) = xmmword_1BCE42410;
  *(a1 + 2240) = xmmword_1BCE44880;
  *(a1 + 2256) = _Q0;
  *(a1 + 2304) = 0;
  *(a1 + 2288) = 0u;
  *(a1 + 2272) = 0u;
  *(a1 + 2312) = v4;
  *(a1 + 2320) = v11;
}

__n128 WeatherConditionLightingKeyframe.init(elevationDegrees:isPM:sunAngle:sunLightIntensity:fillLightIntensity:ambientLightIntensity:sunLightColor:ambientLightColor:fillLightColor:fringeColor:cloudFFGColor:cloudFGColor:cloudBGColor:cloudBBGColor:cloudBlanketColor:cloudFFGBrightness:cloudFGBrightness:cloudBGBrightness:cloudBBGBrightness:cloudBlanketBrightness:starOpacity:sunSpikeBallColor:bloomIntensity:noiseRandomColorStart:noiseRandomColorEnd:rainFGRandomColorStart:rainFGRandomColorEnd:rainBGRandomColorStart:rainBGRandomColorEnd:snowFGRandomColorStart:snowFGRandomColorEnd:snowBGRandomColorStart:snowBGRandomColorEnd:hailRandomColorStart:hailRandomColorEnd:foregroundParticlesRandomColorStart:foregroundParticlesRandomColorEnd:sleetFGRandomColorStart:sleetFGRandomColorEnd:sleetBGRandomColorStart:sleetBGRandomColorEnd:collisionRandomColorStart:collisionRandomColorEnd:windRandomColorStart:windRandomColorEnd:moonLightColor:moonLightIntensity:moonLightRadius:moonColor:moonColorAtHorizon:)@<Q0>(char a1@<W0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, __int128 *a7@<X6>, __int128 *a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, __n128 a11@<Q1>, float a12@<S2>, float a13@<S3>, float a14@<S4>, float a15@<S5>, float a16@<S6>, float a17@<S7>, __int128 *a18, __int128 *a19, uint64_t a20, int a21, __int128 *a22, int a23, __int128 *a24, __int128 *a25, __int128 *a26, __int128 *a27, __int128 *a28, __int128 *a29, __int128 *a30, __int128 *a31, __int128 *a32, __int128 *a33, __int128 *a34, __int128 *a35, __int128 *a36, __int128 *a37, __int128 *a38, __int128 *a39, __int128 *a40, __int128 *a41, __int128 *a42, __int128 *a43, __int128 *a44, __int128 *a45, __int128 *a46, int a47, int a48, __int128 *a49, uint64_t a50)
{
  *(a9 + 348) = a20;
  *(a9 + 8) = a1;
  v54 = *a2;
  v55 = a2[1];
  v57 = *a3;
  v56 = a3[1];
  v58 = *a4;
  v59 = a4[1];
  v61 = *a5;
  v60 = a5[1];
  v63 = *a6;
  v62 = a6[1];
  v64 = *a7;
  v65 = a7[1];
  v66 = *a8;
  v67 = a8[1];
  v68 = *a18;
  v69 = a18[1];
  v70 = *a19;
  v71 = a19[1];
  v72 = a22[1];
  v124 = *a22;
  v73 = *a24;
  v74 = a24[1];
  v75 = *a25;
  v76 = a25[1];
  *a9 = a10;
  *(a9 + 16) = a11;
  v77 = *a26;
  v78 = a26[1];
  *(a9 + 32) = a12;
  *(a9 + 36) = a13;
  v79 = *a27;
  v80 = a27[1];
  *(a9 + 40) = a14;
  *(a9 + 48) = v54;
  v81 = *a28;
  v82 = a28[1];
  *(a9 + 64) = v55;
  *(a9 + 80) = v57;
  v83 = *a29;
  v84 = a29[1];
  *(a9 + 96) = v56;
  *(a9 + 112) = v58;
  v85 = *a30;
  v86 = a30[1];
  *(a9 + 128) = v59;
  *(a9 + 144) = v61;
  v87 = *a31;
  v88 = a31[1];
  *(a9 + 160) = v60;
  *(a9 + 176) = v63;
  v90 = *a32;
  v89 = a32[1];
  *(a9 + 192) = v62;
  *(a9 + 208) = v64;
  v91 = *a33;
  v92 = a33[1];
  *(a9 + 224) = v65;
  *(a9 + 240) = v66;
  v93 = *a34;
  v94 = a34[1];
  *(a9 + 256) = v67;
  *(a9 + 272) = v68;
  v95 = *a35;
  v96 = a35[1];
  *(a9 + 288) = v69;
  *(a9 + 304) = v70;
  v97 = *a36;
  v98 = a36[1];
  *(a9 + 320) = v71;
  *(a9 + 336) = a15;
  v99 = *a37;
  v100 = a37[1];
  *(a9 + 340) = a16;
  *(a9 + 344) = a17;
  *(a9 + 356) = a21;
  *(a9 + 392) = a23;
  v101 = *a38;
  v102 = a38[1];
  *(a9 + 400) = v73;
  *(a9 + 416) = v74;
  v103 = *a39;
  v104 = a39[1];
  *(a9 + 432) = v75;
  *(a9 + 448) = v76;
  v105 = *a40;
  v106 = a40[1];
  *(a9 + 464) = v77;
  *(a9 + 480) = v78;
  v107 = *a41;
  v108 = a41[1];
  *(a9 + 496) = v79;
  *(a9 + 512) = v80;
  v109 = *a42;
  v110 = a42[1];
  *(a9 + 528) = v81;
  *(a9 + 544) = v82;
  v111 = *a43;
  v112 = a43[1];
  *(a9 + 560) = v83;
  *(a9 + 576) = v84;
  v113 = *a44;
  v114 = a44[1];
  *(a9 + 592) = v85;
  *(a9 + 608) = v86;
  v115 = *a45;
  v116 = a45[1];
  *(a9 + 624) = v87;
  *(a9 + 640) = v88;
  v117 = *a46;
  v118 = a46[1];
  *(a9 + 656) = v90;
  *(a9 + 672) = v89;
  v119 = *a49;
  v120 = a49[1];
  *(a9 + 688) = v91;
  *(a9 + 704) = v92;
  result = *a50;
  v122 = *(a50 + 16);
  *(a9 + 720) = v93;
  *(a9 + 736) = v94;
  *(a9 + 752) = v95;
  *(a9 + 768) = v96;
  *(a9 + 784) = v97;
  *(a9 + 800) = v98;
  *(a9 + 816) = v99;
  *(a9 + 832) = v100;
  *(a9 + 848) = v101;
  *(a9 + 864) = v102;
  *(a9 + 880) = v103;
  *(a9 + 896) = v104;
  *(a9 + 912) = v105;
  *(a9 + 928) = v106;
  *(a9 + 944) = v107;
  *(a9 + 960) = v108;
  *(a9 + 976) = v109;
  *(a9 + 992) = v110;
  *(a9 + 1008) = v111;
  *(a9 + 1024) = v112;
  *(a9 + 1040) = v113;
  *(a9 + 1056) = v114;
  *(a9 + 1072) = v115;
  *(a9 + 1088) = v116;
  *(a9 + 1104) = v117;
  *(a9 + 1120) = v118;
  *(a9 + 1136) = a47;
  *(a9 + 1140) = a48;
  v123 = a9 + 360;
  *v123 = v124;
  *(v123 + 16) = v72;
  *(v123 + 784) = v119;
  *(v123 + 800) = v120;
  *(v123 + 816) = result;
  *(v123 + 832) = v122;
  return result;
}

uint64_t Date.startOfDay.getter()
{
  v0 = sub_1BCE193E0();
  OUTLINED_FUNCTION_3_6();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BCE19390();
  sub_1BCE19290();
  return (*(v2 + 8))(v5, v0);
}

uint64_t FloatingPoint.scaled(from:to:inputClamped:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v28 = a5;
  v29 = a2;
  OUTLINED_FUNCTION_3_6();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v26 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v27 = v26 - v18;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v30 = v26 - v20;
  if (v22)
  {
    FloatingPoint.clamped(to:)(a1, a3);
  }

  else
  {
    (*(v10 + 16))(v26 - v20, v5, a3, v21);
  }

  v26[0] = sub_1BCE1D200();
  v26[1] = a4;
  OUTLINED_FUNCTION_62_5();
  sub_1BCE1DE50();
  OUTLINED_FUNCTION_62_5();
  sub_1BCE1DE50();
  v23 = v27;
  sub_1BCE1D6E0();
  v24 = *(v10 + 8);
  v24(v13, a3);
  v24(v16, a3);
  OUTLINED_FUNCTION_62_5();
  sub_1BCE1DE50();
  sub_1BCE1D160();
  OUTLINED_FUNCTION_62_5();
  sub_1BCE1DE40();
  v24(v13, a3);
  v24(v16, a3);
  v24(v23, a3);
  return (v24)(v30, a3);
}

uint64_t static Array<A>.standard()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07858, &qword_1BCE6CF50);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1BCE3E120;
  sub_1BC9A8FB0(&unk_1F3B4DE38);
  v1293 = v3;
  v4 = sub_1BCE1CA90();
  v5 = Color.rgbaComponents.getter(v4);
  v1290 = v6;
  v1291 = v5;
  v1288 = v7;
  v1285 = v8;

  v9 = sub_1BCE1CAB0();
  v10 = Color.rgbaComponents.getter(v9);
  OUTLINED_FUNCTION_25_16(v10, v11, v12, v13);
  v14 = sub_1BCE1CAB0();
  v15 = Color.rgbaComponents.getter(v14);
  OUTLINED_FUNCTION_24_21(v15, v16, v17, v18);
  v19 = sub_1BCE1CAB0();
  v20 = Color.rgbaComponents.getter(v19);
  OUTLINED_FUNCTION_23_28(v20, v21, v22, v23);
  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v24);
  OUTLINED_FUNCTION_28_15();
  v25 = Color.rgbaComponents.getter(v0);
  OUTLINED_FUNCTION_22_27(v25, v26, v27, v28);

  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v29);
  OUTLINED_FUNCTION_28_15();
  v30 = Color.rgbaComponents.getter(v0);
  OUTLINED_FUNCTION_21_26(v30, v31, v32, v33);
  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v34);
  OUTLINED_FUNCTION_28_15();
  v35 = Color.rgbaComponents.getter(v0);
  OUTLINED_FUNCTION_20_26(v35, v36, v37, v38);
  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v39);
  OUTLINED_FUNCTION_28_15();
  v40 = Color.rgbaComponents.getter(v0);
  OUTLINED_FUNCTION_19_27(v40, v41, v42, v43);
  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v44);
  OUTLINED_FUNCTION_28_15();
  v45 = Color.rgbaComponents.getter(v0);
  OUTLINED_FUNCTION_18_27(v45, v46, v47, v48);
  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v49);
  OUTLINED_FUNCTION_28_15();
  v1259 = Color.rgbaComponents.getter(v0);
  OUTLINED_FUNCTION_31_16(v1259, v50, v51, v52);
  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v53);
  OUTLINED_FUNCTION_28_15();
  v54 = Color.rgbaComponents.getter(v0);
  OUTLINED_FUNCTION_17_32(v54, v55, v56, v57);
  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v58);
  OUTLINED_FUNCTION_28_15();
  v59 = Color.rgbaComponents.getter(v0);
  OUTLINED_FUNCTION_16_35(v59, v60, v61, v62);
  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v63);
  OUTLINED_FUNCTION_28_15();
  v64 = Color.rgbaComponents.getter(v0);
  OUTLINED_FUNCTION_15_38(v64, v65, v66, v67);
  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v68);
  OUTLINED_FUNCTION_28_15();
  v69 = Color.rgbaComponents.getter(v0);
  OUTLINED_FUNCTION_14_34(v69, v70, v71, v72);
  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v73);
  OUTLINED_FUNCTION_28_15();
  v74 = Color.rgbaComponents.getter(v0);
  OUTLINED_FUNCTION_13_44(v74, v75, v76, v77);
  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v78);
  OUTLINED_FUNCTION_28_15();
  v79 = Color.rgbaComponents.getter(v0);
  OUTLINED_FUNCTION_12_49(v79, v80, v81, v82);
  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v83);
  OUTLINED_FUNCTION_28_15();
  v84 = Color.rgbaComponents.getter(v0);
  OUTLINED_FUNCTION_11_42(v84, v85, v86, v87);
  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v88);
  OUTLINED_FUNCTION_28_15();
  v89 = Color.rgbaComponents.getter(v0);
  OUTLINED_FUNCTION_10_51(v89, v90, v91, v92);
  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v93);
  OUTLINED_FUNCTION_28_15();
  v94 = Color.rgbaComponents.getter(v0);
  OUTLINED_FUNCTION_30_17(v94, v95, v96);
  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v97);
  OUTLINED_FUNCTION_28_15();
  Color.rgbaComponents.getter(v0);
  OUTLINED_FUNCTION_47_3();
  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v98);
  OUTLINED_FUNCTION_28_15();
  Color.rgbaComponents.getter(v0);
  OUTLINED_FUNCTION_46_8();
  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v99);
  OUTLINED_FUNCTION_28_15();
  v100 = Color.rgbaComponents.getter(v0);
  v1079 = v101;
  v1085 = v100;
  v1067 = v103;
  v1073 = v102;

  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v104);
  OUTLINED_FUNCTION_28_15();
  Color.rgbaComponents.getter(v0);
  OUTLINED_FUNCTION_45_8();
  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v105);
  OUTLINED_FUNCTION_28_15();
  Color.rgbaComponents.getter(v0);
  OUTLINED_FUNCTION_44_10();
  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v106);
  OUTLINED_FUNCTION_28_15();
  Color.rgbaComponents.getter(v0);
  OUTLINED_FUNCTION_43_7();
  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v107);
  OUTLINED_FUNCTION_28_15();
  Color.rgbaComponents.getter(v0);
  OUTLINED_FUNCTION_42_11();
  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v108);
  OUTLINED_FUNCTION_28_15();
  Color.rgbaComponents.getter(v0);
  OUTLINED_FUNCTION_41_10();
  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v109);
  OUTLINED_FUNCTION_28_15();
  v110 = Color.rgbaComponents.getter(v0);
  v1091 = v111;
  v1097 = v112;
  v1103 = v113;

  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v114);
  OUTLINED_FUNCTION_28_15();
  Color.rgbaComponents.getter(v0);
  OUTLINED_FUNCTION_40_11();
  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v115);
  OUTLINED_FUNCTION_28_15();
  Color.rgbaComponents.getter(v0);
  OUTLINED_FUNCTION_39_11();
  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v116);
  OUTLINED_FUNCTION_28_15();
  Color.rgbaComponents.getter(v0);
  OUTLINED_FUNCTION_38_14();
  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v117);
  OUTLINED_FUNCTION_28_15();
  Color.rgbaComponents.getter(v0);
  OUTLINED_FUNCTION_37_13();
  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v118);
  OUTLINED_FUNCTION_28_15();
  Color.rgbaComponents.getter(v0);
  OUTLINED_FUNCTION_36_14();
  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v119);
  OUTLINED_FUNCTION_28_15();
  v901 = Color.rgbaComponents.getter(v0);
  v121 = v120;
  v123 = v122;
  OUTLINED_FUNCTION_61_7();
  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v124);
  OUTLINED_FUNCTION_28_15();
  v125 = Color.rgbaComponents.getter(v0);
  v127 = v126;
  v129 = v128;
  v131 = v130;

  *(v2 + 48) = v1293;
  *(v2 + 80) = v1291;
  *(v2 + 88) = v1290;
  *(v2 + 96) = v1288;
  *(v2 + 104) = v1285;
  *(v2 + 112) = v1282;
  *(v2 + 120) = v1281;
  *(v2 + 128) = v1279;
  *(v2 + 136) = v1277;
  *(v2 + 144) = v1275;
  *(v2 + 152) = v1273;
  *(v2 + 160) = v1271;
  *(v2 + 168) = v1269;
  *(v2 + 176) = v1267;
  *(v2 + 184) = v1265;
  *(v2 + 192) = v1263;
  *(v2 + 200) = v1261;
  *(v2 + 208) = v1257;
  *(v2 + 216) = v1255;
  *(v2 + 224) = v1253;
  *(v2 + 232) = v1251;
  *(v2 + 240) = v1249;
  *(v2 + 248) = v1247;
  *(v2 + 256) = v1245;
  *(v2 + 264) = v1243;
  *(v2 + 272) = v1241;
  *(v2 + 280) = v1239;
  *(v2 + 288) = v1237;
  *(v2 + 296) = v1235;
  *(v2 + 304) = v1233;
  *(v2 + 312) = v1231;
  *(v2 + 320) = v1229;
  *(v2 + 328) = v1227;
  *(v2 + 336) = v1225;
  *(v2 + 344) = v1223;
  *(v2 + 352) = v1221;
  *(v2 + 360) = v1217;
  *(v2 + 400) = v1215;
  *(v2 + 408) = v1213;
  *(v2 + 416) = v1211;
  *(v2 + 432) = v1209;
  *(v2 + 440) = v1207;
  *(v2 + 448) = v1205;
  *(v2 + 456) = v1203;
  *(v2 + 464) = v1201;
  *(v2 + 472) = v1199;
  *(v2 + 480) = v1197;
  *(v2 + 488) = v1195;
  *(v2 + 496) = v1193;
  *(v2 + 504) = v1191;
  *(v2 + 512) = v1189;
  *(v2 + 520) = v1187;
  *(v2 + 528) = v1185;
  *(v2 + 536) = v1183;
  *(v2 + 544) = v1181;
  *(v2 + 552) = v1179;
  *(v2 + 560) = v1177;
  *(v2 + 568) = v1175;
  *(v2 + 576) = v1173;
  *(v2 + 584) = v1171;
  *(v2 + 592) = v1169;
  *(v2 + 600) = v1167;
  *(v2 + 608) = v1165;
  *(v2 + 616) = v1163;
  *(v2 + 624) = v1161;
  *(v2 + 632) = v1159;
  *(v2 + 640) = v1157;
  *(v2 + 648) = v1155;
  *(v2 + 656) = v1153;
  *(v2 + 664) = v1151;
  *(v2 + 672) = v1149;
  *(v2 + 680) = v1147;
  *(v2 + 688) = v1145;
  *(v2 + 696) = v1143;
  *(v2 + 704) = v1141;
  *(v2 + 712) = v1139;
  *(v2 + 720) = v1137;
  *(v2 + 728) = v1133;
  *(v2 + 736) = v1129;
  *(v2 + 744) = v1125;
  *(v2 + 752) = v1121;
  *(v2 + 760) = v1117;
  *(v2 + 768) = v1113;
  *(v2 + 776) = v1109;
  *(v2 + 784) = v1085;
  *(v2 + 792) = v1079;
  *(v2 + 800) = v1073;
  *(v2 + 808) = v1067;
  *(v2 + 816) = v1047;
  *(v2 + 824) = v1043;
  *(v2 + 832) = v1039;
  *(v2 + 840) = v1035;
  *(v2 + 848) = v1015;
  *(v2 + 856) = v1011;
  *(v2 + 864) = v1007;
  *(v2 + 872) = v1003;
  *(v2 + 880) = v983;
  *(v2 + 888) = v979;
  *(v2 + 896) = v975;
  *(v2 + 904) = v971;
  *(v2 + 912) = v951;
  *(v2 + 920) = v947;
  *(v2 + 928) = v943;
  *(v2 + 936) = v939;
  *(v2 + 944) = v919;
  *(v2 + 952) = v915;
  *(v2 + 960) = v911;
  *(v2 + 968) = v907;
  *(v2 + 976) = v110;
  __asm { FMOV            V0.2S, #1.0 }

  v1289 = _D0;
  *(v2 + 384) = _D0;
  *(v2 + 392) = v1259;
  *(v2 + 32) = 0xC056800000000000;
  *(v2 + 40) = 0;
  *(v2 + 41) = *v1294;
  *(v2 + 44) = *&v1294[3];
  *(v2 + 984) = v1091;
  *(v2 + 64) = 0x43FA000042C80000;
  *(v2 + 72) = 0;
  *(v2 + 992) = v1097;
  __asm { FMOV            V0.4S, #1.0 }

  v1292 = _Q0;
  *(v2 + 368) = _Q0;
  *(v2 + 424) = 0;
  *(v2 + 1000) = v1103;
  *(v2 + 1008) = v1063;
  *(v2 + 1016) = v1059;
  *(v2 + 1024) = v1055;
  *(v2 + 1032) = v1051;
  *(v2 + 1040) = v1031;
  *(v2 + 1048) = v1027;
  *(v2 + 1056) = v1023;
  *(v2 + 1064) = v1019;
  *(v2 + 1072) = v999;
  *(v2 + 1080) = v995;
  *(v2 + 1088) = v991;
  *(v2 + 1096) = v987;
  *(v2 + 1104) = v967;
  *(v2 + 1112) = v963;
  *(v2 + 1120) = v959;
  *(v2 + 1128) = v955;
  *(v2 + 1136) = v935;
  *(v2 + 1144) = v931;
  *(v2 + 1152) = v927;
  *(v2 + 1160) = v923;
  *(v2 + 1168) = 0x4170000042480000;
  *(v2 + 1176) = v901;
  *(v2 + 1184) = v121;
  *(v2 + 1192) = v123;
  *(v2 + 1200) = v1;
  *(v2 + 1208) = v125;
  *(v2 + 1216) = v127;
  *(v2 + 1224) = v129;
  *(v2 + 1232) = v131;
  sub_1BC9A8FB0(&unk_1F3B4DE68);
  v1286 = v138;
  v139 = sub_1BCE1CA90();
  v140 = Color.rgbaComponents.getter(v139);
  OUTLINED_FUNCTION_25_16(v140, v141, v142, v143);
  v144 = sub_1BCE1CAB0();
  v145 = Color.rgbaComponents.getter(v144);
  OUTLINED_FUNCTION_24_21(v145, v146, v147, v148);
  v149 = sub_1BCE1CAB0();
  v150 = Color.rgbaComponents.getter(v149);
  OUTLINED_FUNCTION_23_28(v150, v151, v152, v153);
  v154 = sub_1BCE1CAB0();
  v155 = Color.rgbaComponents.getter(v154);
  OUTLINED_FUNCTION_48_8(v155, v156, v157, v158);
  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v159);
  OUTLINED_FUNCTION_28_15();
  v160 = Color.rgbaComponents.getter(v0);
  OUTLINED_FUNCTION_35_13(v160, v161, v162, v163);
  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v164);
  OUTLINED_FUNCTION_28_15();
  v165 = Color.rgbaComponents.getter(v0);
  OUTLINED_FUNCTION_34_14(v165, v166, v167, v168);
  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v169);
  OUTLINED_FUNCTION_28_15();
  v170 = Color.rgbaComponents.getter(v0);
  OUTLINED_FUNCTION_33_16(v170, v171, v172, v173);
  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v174);
  OUTLINED_FUNCTION_28_15();
  v175 = Color.rgbaComponents.getter(v0);
  OUTLINED_FUNCTION_32_11(v175, v176, v177, v178);
  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v179);
  OUTLINED_FUNCTION_28_15();
  v1218 = Color.rgbaComponents.getter(v0);
  OUTLINED_FUNCTION_31_16(v1218, v180, v181, v182);
  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v183);
  OUTLINED_FUNCTION_28_15();
  v184 = Color.rgbaComponents.getter(v0);
  OUTLINED_FUNCTION_17_32(v184, v185, v186, v187);
  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v188);
  OUTLINED_FUNCTION_28_15();
  v189 = Color.rgbaComponents.getter(v0);
  OUTLINED_FUNCTION_16_35(v189, v190, v191, v192);
  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v193);
  OUTLINED_FUNCTION_28_15();
  v194 = Color.rgbaComponents.getter(v0);
  OUTLINED_FUNCTION_15_38(v194, v195, v196, v197);
  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v198);
  OUTLINED_FUNCTION_28_15();
  v199 = Color.rgbaComponents.getter(v0);
  OUTLINED_FUNCTION_14_34(v199, v200, v201, v202);
  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v203);
  OUTLINED_FUNCTION_28_15();
  v204 = Color.rgbaComponents.getter(v0);
  OUTLINED_FUNCTION_13_44(v204, v205, v206, v207);
  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v208);
  OUTLINED_FUNCTION_28_15();
  v209 = Color.rgbaComponents.getter(v0);
  OUTLINED_FUNCTION_12_49(v209, v210, v211, v212);
  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v213);
  OUTLINED_FUNCTION_28_15();
  v214 = Color.rgbaComponents.getter(v0);
  OUTLINED_FUNCTION_11_42(v214, v215, v216, v217);
  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v218);
  OUTLINED_FUNCTION_28_15();
  v219 = Color.rgbaComponents.getter(v0);
  OUTLINED_FUNCTION_10_51(v219, v220, v221, v222);
  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v223);
  OUTLINED_FUNCTION_28_15();
  v224 = Color.rgbaComponents.getter(v0);
  OUTLINED_FUNCTION_30_17(v224, v225, v226);
  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v227);
  OUTLINED_FUNCTION_28_15();
  Color.rgbaComponents.getter(v0);
  OUTLINED_FUNCTION_47_3();
  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v228);
  OUTLINED_FUNCTION_28_15();
  Color.rgbaComponents.getter(v0);
  OUTLINED_FUNCTION_46_8();
  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v229);
  OUTLINED_FUNCTION_28_15();
  v230 = Color.rgbaComponents.getter(v0);
  v1098 = v231;
  v1104 = v230;
  v1086 = v233;
  v1092 = v232;

  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v234);
  OUTLINED_FUNCTION_28_15();
  v235 = Color.rgbaComponents.getter(v0);
  v1074 = v236;
  v1080 = v235;
  v1064 = v238;
  v1068 = v237;

  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v239);
  OUTLINED_FUNCTION_28_15();
  v240 = Color.rgbaComponents.getter(v0);
  v1040 = v241;
  v1044 = v240;
  v1032 = v243;
  v1036 = v242;

  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v244);
  OUTLINED_FUNCTION_28_15();
  v245 = Color.rgbaComponents.getter(v0);
  v1008 = v246;
  v1012 = v245;
  v1000 = v248;
  v1004 = v247;

  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v249);
  OUTLINED_FUNCTION_28_15();
  v250 = Color.rgbaComponents.getter(v0);
  v976 = v251;
  v980 = v250;
  v968 = v253;
  v972 = v252;

  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v254);
  OUTLINED_FUNCTION_28_15();
  v255 = Color.rgbaComponents.getter(v0);
  v944 = v256;
  v948 = v255;
  v936 = v258;
  v940 = v257;

  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v259);
  OUTLINED_FUNCTION_28_15();
  v260 = Color.rgbaComponents.getter(v0);
  v912 = v261;
  v916 = v260;
  v902 = v263;
  v908 = v262;

  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v264);
  OUTLINED_FUNCTION_28_15();
  v1048 = Color.rgbaComponents.getter(v0);
  v1052 = v265;
  v1056 = v267;
  v1060 = v266;

  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v268);
  OUTLINED_FUNCTION_28_15();
  v269 = Color.rgbaComponents.getter(v0);
  v1024 = v270;
  v1028 = v269;
  v1016 = v272;
  v1020 = v271;

  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v273);
  OUTLINED_FUNCTION_28_15();
  v274 = Color.rgbaComponents.getter(v0);
  v992 = v275;
  v996 = v274;
  v984 = v277;
  v988 = v276;

  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v278);
  OUTLINED_FUNCTION_28_15();
  v279 = Color.rgbaComponents.getter(v0);
  v960 = v280;
  v964 = v279;
  v952 = v282;
  v956 = v281;

  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v283);
  OUTLINED_FUNCTION_28_15();
  v284 = Color.rgbaComponents.getter(v0);
  v928 = v285;
  v932 = v284;
  v920 = v287;
  v924 = v286;

  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v288);
  OUTLINED_FUNCTION_28_15();
  v289 = Color.rgbaComponents.getter(v0);
  v891 = v290;
  v896 = v289;
  v881 = v292;
  v886 = v291;

  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v293);
  OUTLINED_FUNCTION_28_15();
  Color.rgbaComponents.getter(v0);
  OUTLINED_FUNCTION_27_13();
  OUTLINED_FUNCTION_61_7();
  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v294);
  OUTLINED_FUNCTION_28_15();
  Color.rgbaComponents.getter(v0);
  OUTLINED_FUNCTION_26_17();
  *(v2 + 1264) = v1286;
  *(v2 + 1296) = v1282;
  *(v2 + 1304) = v1281;
  *(v2 + 1312) = v1279;
  *(v2 + 1320) = v1277;
  *(v2 + 1328) = v1275;
  *(v2 + 1336) = v1273;
  *(v2 + 1344) = v1271;
  *(v2 + 1352) = v1269;
  *(v2 + 1360) = v1267;
  *(v2 + 1368) = v1265;
  *(v2 + 1376) = v1263;
  *(v2 + 1384) = v1261;
  *(v2 + 1392) = v1259;
  *(v2 + 1400) = v1257;
  *(v2 + 1408) = v1255;
  *(v2 + 1416) = v1253;
  *(v2 + 1424) = v1251;
  *(v2 + 1432) = v1249;
  *(v2 + 1440) = v1247;
  *(v2 + 1448) = v1245;
  *(v2 + 1456) = v1243;
  *(v2 + 1464) = v1241;
  *(v2 + 1472) = v1239;
  *(v2 + 1480) = v1237;
  *(v2 + 1488) = v1235;
  *(v2 + 1496) = v1233;
  *(v2 + 1504) = v1231;
  *(v2 + 1512) = v1229;
  *(v2 + 1520) = v1227;
  *(v2 + 1528) = v1225;
  *(v2 + 1536) = v1223;
  *(v2 + 1544) = v1221;
  *(v2 + 1552) = v1218;
  *(v2 + 1560) = v1215;
  *(v2 + 1568) = v1213;
  *(v2 + 1576) = v1211;
  *(v2 + 1608) = v1209;
  *(v2 + 1616) = v1207;
  *(v2 + 1624) = v1205;
  *(v2 + 1632) = v1203;
  *(v2 + 1648) = v1201;
  *(v2 + 1656) = v1199;
  *(v2 + 1664) = v1197;
  *(v2 + 1672) = v1195;
  *(v2 + 1680) = v1193;
  *(v2 + 1688) = v1191;
  *(v2 + 1696) = v1189;
  *(v2 + 1704) = v1187;
  *(v2 + 1712) = v1185;
  *(v2 + 1720) = v1183;
  *(v2 + 1728) = v1181;
  *(v2 + 1736) = v1179;
  *(v2 + 1744) = v1177;
  *(v2 + 1752) = v1175;
  *(v2 + 1760) = v1173;
  *(v2 + 1768) = v1171;
  *(v2 + 1776) = v1169;
  *(v2 + 1784) = v1167;
  *(v2 + 1792) = v1165;
  *(v2 + 1800) = v1163;
  *(v2 + 1808) = v1161;
  *(v2 + 1816) = v1159;
  *(v2 + 1824) = v1157;
  *(v2 + 1832) = v1155;
  *(v2 + 1840) = v1153;
  *(v2 + 1848) = v1151;
  *(v2 + 1856) = v1149;
  *(v2 + 1864) = v1147;
  *(v2 + 1872) = v1145;
  *(v2 + 1880) = v1143;
  *(v2 + 1888) = v1141;
  *(v2 + 1896) = v1139;
  *(v2 + 1904) = v1137;
  *(v2 + 1912) = v1133;
  *(v2 + 1920) = v1129;
  *(v2 + 1928) = v1125;
  *(v2 + 1936) = v1121;
  *(v2 + 1944) = v1117;
  *(v2 + 1952) = v1113;
  *(v2 + 1960) = v1109;
  *(v2 + 1968) = v1104;
  *(v2 + 1976) = v1098;
  *(v2 + 1984) = v1092;
  *(v2 + 1992) = v1086;
  *(v2 + 2000) = v1080;
  *(v2 + 2008) = v1074;
  *(v2 + 2016) = v1068;
  *(v2 + 2024) = v1064;
  *(v2 + 2032) = v1044;
  *(v2 + 2040) = v1040;
  *(v2 + 2048) = v1036;
  *(v2 + 2056) = v1032;
  *(v2 + 2064) = v1012;
  *(v2 + 2072) = v1008;
  *(v2 + 2080) = v1004;
  *(v2 + 2088) = v1000;
  *(v2 + 2096) = v980;
  *(v2 + 2104) = v976;
  *(v2 + 2112) = v972;
  *(v2 + 2120) = v968;
  *(v2 + 2128) = v948;
  *(v2 + 2136) = v944;
  *(v2 + 2144) = v940;
  *(v2 + 2152) = v936;
  *(v2 + 2160) = v916;
  *(v2 + 2168) = v912;
  *(v2 + 2176) = v908;
  *(v2 + 2184) = v902;
  *(v2 + 1248) = 0;
  *(v2 + 1256) = 0;
  *(v2 + 1257) = *v1295;
  *(v2 + 1260) = *&v1295[3];
  *(v2 + 1280) = 0x43FA000042C80000;
  *(v2 + 1288) = 0;
  *(v2 + 1584) = v1292;
  *(v2 + 2192) = v1048;
  *(v2 + 1600) = 0x3F0000003F800000;
  *(v2 + 1640) = 0;
  *(v2 + 2200) = v1060;
  *(v2 + 2208) = v1056;
  *(v2 + 2216) = v1052;
  *(v2 + 2224) = v1028;
  *(v2 + 2232) = v1024;
  *(v2 + 2240) = v1020;
  *(v2 + 2248) = v1016;
  *(v2 + 2256) = v996;
  *(v2 + 2264) = v992;
  *(v2 + 2272) = v988;
  *(v2 + 2280) = v984;
  *(v2 + 2288) = v964;
  *(v2 + 2296) = v960;
  *(v2 + 2304) = v956;
  *(v2 + 2312) = v952;
  *(v2 + 2320) = v932;
  *(v2 + 2328) = v928;
  *(v2 + 2336) = v924;
  *(v2 + 2344) = v920;
  *(v2 + 2352) = v896;
  *(v2 + 2360) = v891;
  *(v2 + 2368) = v886;
  *(v2 + 2376) = v881;
  *(v2 + 2384) = 0x4170000042480000;
  *(v2 + 2392) = v121;
  *(v2 + 2400) = v123;
  *(v2 + 2408) = v129;
  *(v2 + 2416) = v1;
  *(v2 + 2424) = v131;
  *(v2 + 2432) = v110;
  *(v2 + 2440) = v125;
  *(v2 + 2448) = v127;
  sub_1BC9A8FB0(&unk_1F3B4DE98);
  v1283 = v295;
  v296 = sub_1BCE1CAB0();
  v297 = Color.rgbaComponents.getter(v296);
  OUTLINED_FUNCTION_60_7(v297, v298, v299, v300);
  v301 = sub_1BCE1CAB0();
  v302 = Color.rgbaComponents.getter(v301);
  OUTLINED_FUNCTION_59_4(v302, v303, v304, v305);
  v306 = sub_1BCE1CAB0();
  v307 = Color.rgbaComponents.getter(v306);
  OUTLINED_FUNCTION_58_6(v307, v308, v309, v310);
  v311 = sub_1BCE1CAB0();
  v312 = Color.rgbaComponents.getter(v311);
  OUTLINED_FUNCTION_22_27(v312, v313, v314, v315);

  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v316);
  OUTLINED_FUNCTION_28_15();
  v317 = Color.rgbaComponents.getter(v0);
  OUTLINED_FUNCTION_21_26(v317, v318, v319, v320);
  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v321);
  OUTLINED_FUNCTION_28_15();
  v322 = Color.rgbaComponents.getter(v0);
  OUTLINED_FUNCTION_20_26(v322, v323, v324, v325);
  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v326);
  OUTLINED_FUNCTION_28_15();
  v327 = Color.rgbaComponents.getter(v0);
  OUTLINED_FUNCTION_19_27(v327, v328, v329, v330);
  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v331);
  OUTLINED_FUNCTION_28_15();
  v332 = Color.rgbaComponents.getter(v0);
  OUTLINED_FUNCTION_18_27(v332, v333, v334, v335);
  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v336);
  OUTLINED_FUNCTION_28_15();
  v337 = Color.rgbaComponents.getter(v0);
  OUTLINED_FUNCTION_57_4(v337, v338, v339, v340);
  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v341);
  OUTLINED_FUNCTION_28_15();
  v342 = Color.rgbaComponents.getter(v0);
  OUTLINED_FUNCTION_56_5(v342, v343, v344, v345);
  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v346);
  OUTLINED_FUNCTION_28_15();
  v347 = Color.rgbaComponents.getter(v0);
  OUTLINED_FUNCTION_55_7(v347, v348, v349, v350);
  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v351);
  OUTLINED_FUNCTION_28_15();
  v352 = Color.rgbaComponents.getter(v0);
  OUTLINED_FUNCTION_54_5(v352, v353, v354, v355);
  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v356);
  OUTLINED_FUNCTION_28_15();
  v357 = Color.rgbaComponents.getter(v0);
  OUTLINED_FUNCTION_53_5(v357, v358, v359, v360);
  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v361);
  OUTLINED_FUNCTION_28_15();
  v362 = Color.rgbaComponents.getter(v0);
  OUTLINED_FUNCTION_52_6(v362, v363, v364, v365);
  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v366);
  OUTLINED_FUNCTION_28_15();
  v367 = Color.rgbaComponents.getter(v0);
  OUTLINED_FUNCTION_51_8(v367, v368, v369, v370);
  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v371);
  OUTLINED_FUNCTION_28_15();
  v372 = Color.rgbaComponents.getter(v0);
  OUTLINED_FUNCTION_50_7(v372, v373, v374, v375);
  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v376);
  OUTLINED_FUNCTION_28_15();
  v377 = Color.rgbaComponents.getter(v0);
  OUTLINED_FUNCTION_49_8(v377, v378, v379, v380);
  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v381);
  OUTLINED_FUNCTION_28_15();
  v382 = Color.rgbaComponents.getter(v0);
  OUTLINED_FUNCTION_66_2(v382, v383);
  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v384);
  OUTLINED_FUNCTION_28_15();
  v385 = Color.rgbaComponents.getter(v0);
  v1130 = v386;
  v1134 = v385;
  v1122 = v388;
  v1126 = v387;

  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v389);
  OUTLINED_FUNCTION_28_15();
  v390 = Color.rgbaComponents.getter(v0);
  v1114 = v391;
  v1118 = v390;
  v1105 = v393;
  v1110 = v392;

  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v394);
  OUTLINED_FUNCTION_28_15();
  v395 = Color.rgbaComponents.getter(v0);
  v1093 = v396;
  v1099 = v395;
  v1081 = v398;
  v1087 = v397;

  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v399);
  OUTLINED_FUNCTION_28_15();
  Color.rgbaComponents.getter(v0);
  OUTLINED_FUNCTION_40_11();
  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v400);
  OUTLINED_FUNCTION_28_15();
  v401 = Color.rgbaComponents.getter(v0);
  v1021 = v402;
  v1025 = v401;
  v1013 = v404;
  v1017 = v403;

  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v405);
  OUTLINED_FUNCTION_28_15();
  v406 = Color.rgbaComponents.getter(v0);
  v989 = v407;
  v993 = v406;
  v981 = v409;
  v985 = v408;

  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v410);
  OUTLINED_FUNCTION_28_15();
  v411 = Color.rgbaComponents.getter(v0);
  v957 = v412;
  v961 = v411;
  v949 = v414;
  v953 = v413;

  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v415);
  OUTLINED_FUNCTION_28_15();
  v416 = Color.rgbaComponents.getter(v0);
  v925 = v417;
  v929 = v416;
  v917 = v419;
  v921 = v418;

  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v420);
  OUTLINED_FUNCTION_28_15();
  v421 = Color.rgbaComponents.getter(v0);
  v887 = v422;
  v892 = v421;
  v878 = v424;
  v882 = v423;

  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v425);
  OUTLINED_FUNCTION_28_15();
  v1045 = Color.rgbaComponents.getter(v0);
  v1049 = v426;
  v1069 = v428;
  v1075 = v427;

  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v429);
  OUTLINED_FUNCTION_28_15();
  v430 = Color.rgbaComponents.getter(v0);
  v1037 = v431;
  v1041 = v430;
  v1029 = v433;
  v1033 = v432;

  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v434);
  OUTLINED_FUNCTION_28_15();
  v435 = Color.rgbaComponents.getter(v0);
  v1005 = v436;
  v1009 = v435;
  v997 = v438;
  v1001 = v437;

  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v439);
  OUTLINED_FUNCTION_28_15();
  v440 = Color.rgbaComponents.getter(v0);
  v973 = v441;
  v977 = v440;
  v965 = v443;
  v969 = v442;

  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v444);
  OUTLINED_FUNCTION_28_15();
  v445 = Color.rgbaComponents.getter(v0);
  v941 = v446;
  v945 = v445;
  v933 = v448;
  v937 = v447;

  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v449);
  OUTLINED_FUNCTION_28_15();
  v450 = Color.rgbaComponents.getter(v0);
  v909 = v451;
  v913 = v450;
  v897 = v453;
  v903 = v452;

  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v454);
  OUTLINED_FUNCTION_28_15();
  v455 = Color.rgbaComponents.getter(v0);
  v457 = v456;
  v459 = v458;
  v461 = v460;

  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v462);
  OUTLINED_FUNCTION_28_15();
  v463 = Color.rgbaComponents.getter(v0);
  v465 = v464;
  v467 = v466;
  OUTLINED_FUNCTION_61_7();
  *(v2 + 2480) = v1283;
  *(v2 + 2512) = v1281;
  *(v2 + 2520) = v1279;
  *(v2 + 2528) = v1277;
  *(v2 + 2536) = v1275;
  *(v2 + 2544) = v1273;
  *(v2 + 2552) = v1271;
  *(v2 + 2560) = v1269;
  *(v2 + 2568) = v1267;
  *(v2 + 2576) = v1265;
  *(v2 + 2584) = v1263;
  *(v2 + 2592) = v1261;
  *(v2 + 2600) = v1259;
  *(v2 + 2608) = v1257;
  *(v2 + 2616) = v1255;
  *(v2 + 2624) = v1253;
  *(v2 + 2632) = v1251;
  *(v2 + 2640) = v1249;
  *(v2 + 2648) = v1247;
  *(v2 + 2656) = v1245;
  *(v2 + 2664) = v1243;
  *(v2 + 2672) = v1241;
  *(v2 + 2680) = v1239;
  *(v2 + 2688) = v1237;
  *(v2 + 2696) = v1235;
  *(v2 + 2704) = v1233;
  *(v2 + 2712) = v1231;
  *(v2 + 2720) = v1229;
  *(v2 + 2728) = v1227;
  *(v2 + 2736) = v1225;
  *(v2 + 2744) = v1223;
  *(v2 + 2752) = v1221;
  *(v2 + 2760) = v1218;
  *(v2 + 2768) = v1215;
  *(v2 + 2776) = v1213;
  *(v2 + 2784) = v1211;
  *(v2 + 2792) = v1209;
  *(v2 + 2824) = v1207;
  *(v2 + 2832) = v1205;
  *(v2 + 2840) = v1203;
  *(v2 + 2848) = v1201;
  *(v2 + 2864) = v1199;
  *(v2 + 2872) = v1197;
  *(v2 + 2880) = v1195;
  *(v2 + 2888) = v1193;
  *(v2 + 2896) = v1191;
  *(v2 + 2904) = v1189;
  *(v2 + 2912) = v1187;
  *(v2 + 2920) = v1185;
  *(v2 + 2928) = v1183;
  *(v2 + 2936) = v1181;
  *(v2 + 2944) = v1179;
  *(v2 + 2952) = v1177;
  *(v2 + 2960) = v1175;
  *(v2 + 2968) = v1173;
  *(v2 + 2976) = v1171;
  *(v2 + 2984) = v1169;
  *(v2 + 2992) = v1167;
  *(v2 + 3000) = v1165;
  *(v2 + 3008) = v1163;
  *(v2 + 3016) = v1161;
  *(v2 + 3024) = v1159;
  *(v2 + 3032) = v1157;
  *(v2 + 3040) = v1155;
  *(v2 + 3048) = v1153;
  *(v2 + 3056) = v1151;
  *(v2 + 3064) = v1149;
  *(v2 + 3072) = v1147;
  *(v2 + 3080) = v1145;
  *(v2 + 3088) = v1143;
  *(v2 + 3096) = v1141;
  *(v2 + 3104) = v1139;
  *(v2 + 3112) = v1137;
  *(v2 + 3120) = v1134;
  *(v2 + 3128) = v1130;
  *(v2 + 3136) = v1126;
  *(v2 + 3144) = v1122;
  *(v2 + 3152) = v1118;
  *(v2 + 3160) = v1114;
  *(v2 + 3168) = v1110;
  *(v2 + 3176) = v1105;
  *(v2 + 3184) = v1099;
  *(v2 + 3192) = v1093;
  *(v2 + 3200) = v1087;
  *(v2 + 3208) = v1081;
  *(v2 + 3216) = v1064;
  *(v2 + 3224) = v1060;
  *(v2 + 3232) = v1056;
  *(v2 + 3240) = v1052;
  *(v2 + 3248) = v1025;
  *(v2 + 3256) = v1021;
  *(v2 + 3264) = v1017;
  *(v2 + 3272) = v1013;
  *(v2 + 3280) = v993;
  *(v2 + 3288) = v989;
  *(v2 + 3296) = v985;
  *(v2 + 3304) = v981;
  *(v2 + 3312) = v961;
  *(v2 + 3320) = v957;
  *(v2 + 3328) = v953;
  *(v2 + 3336) = v949;
  *(v2 + 3344) = v929;
  *(v2 + 3352) = v925;
  *(v2 + 3360) = v921;
  *(v2 + 3368) = v917;
  *(v2 + 3376) = v892;
  *(v2 + 3384) = v887;
  *(v2 + 3392) = v882;
  *(v2 + 3400) = v878;
  *(v2 + 2464) = 0x4054000000000000;
  *(v2 + 2472) = 0;
  *(v2 + 2473) = *v1296;
  *(v2 + 2476) = *&v1296[3];
  *(v2 + 3408) = v1045;
  *(v2 + 2496) = 0x43FA000043960000;
  *(v2 + 2504) = 0;
  *(v2 + 2800) = v1292;
  *(v2 + 3416) = v1049;
  *(v2 + 2816) = 1065353216;
  *(v2 + 2856) = 0;
  *(v2 + 3424) = v1075;
  *(v2 + 3432) = v1069;
  *(v2 + 3440) = v1041;
  *(v2 + 3448) = v1037;
  *(v2 + 3456) = v1033;
  *(v2 + 3464) = v1029;
  *(v2 + 3472) = v1009;
  *(v2 + 3480) = v1005;
  *(v2 + 3488) = v1001;
  *(v2 + 3496) = v997;
  *(v2 + 3504) = v977;
  *(v2 + 3512) = v973;
  *(v2 + 3520) = v969;
  *(v2 + 3528) = v965;
  *(v2 + 3536) = v945;
  *(v2 + 3544) = v941;
  *(v2 + 3552) = v937;
  *(v2 + 3560) = v933;
  *(v2 + 3568) = v913;
  *(v2 + 3576) = v909;
  *(v2 + 3584) = v903;
  *(v2 + 3592) = v897;
  *(v2 + 3600) = 0x4170000042480000;
  *(v2 + 3608) = v455;
  *(v2 + 3616) = v457;
  *(v2 + 3624) = v459;
  *(v2 + 3632) = v461;
  *(v2 + 3640) = v463;
  *(v2 + 3648) = v465;
  *(v2 + 3656) = v467;
  *(v2 + 3664) = v1;
  sub_1BC9A8FB0(&unk_1F3B4DEC8);
  v1280 = v468;
  v469 = sub_1BCE1CAB0();
  v1278 = Color.rgbaComponents.getter(v469);
  v1276 = v470;
  v1274 = v471;
  v1272 = v472;

  v473 = sub_1BCE1CAB0();
  v1270 = Color.rgbaComponents.getter(v473);
  v1268 = v474;
  v1266 = v475;
  v1264 = v476;

  v477 = sub_1BCE1CAB0();
  v1262 = Color.rgbaComponents.getter(v477);
  v1260 = v478;
  v1258 = v479;
  v1256 = v480;

  v481 = sub_1BCE1CAB0();
  v1254 = Color.rgbaComponents.getter(v481);
  v1252 = v482;
  v1250 = v483;
  v1248 = v484;

  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v485);
  OUTLINED_FUNCTION_28_15();
  v1246 = Color.rgbaComponents.getter(v0);
  v1244 = v486;
  v1242 = v487;
  v1240 = v488;

  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v489);
  OUTLINED_FUNCTION_28_15();
  v1238 = Color.rgbaComponents.getter(v0);
  v1236 = v490;
  v1234 = v491;
  v1232 = v492;

  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v493);
  OUTLINED_FUNCTION_28_15();
  v1230 = Color.rgbaComponents.getter(v0);
  v1228 = v494;
  v1226 = v495;
  v1224 = v496;

  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v497);
  OUTLINED_FUNCTION_28_15();
  v1222 = Color.rgbaComponents.getter(v0);
  v1219 = v498;
  v1216 = v499;
  v1214 = v500;

  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v501);
  OUTLINED_FUNCTION_28_15();
  v1212 = Color.rgbaComponents.getter(v0);
  v1210 = v502;
  v1208 = v503;
  v1206 = v504;

  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v505);
  OUTLINED_FUNCTION_28_15();
  v1204 = Color.rgbaComponents.getter(v0);
  v1202 = v506;
  v1200 = v507;
  v1198 = v508;

  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v509);
  OUTLINED_FUNCTION_28_15();
  v1196 = Color.rgbaComponents.getter(v0);
  v1194 = v510;
  v1192 = v511;
  v1190 = v512;

  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v513);
  OUTLINED_FUNCTION_28_15();
  v1188 = Color.rgbaComponents.getter(v0);
  v1186 = v514;
  v1184 = v515;
  v1182 = v516;

  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v517);
  OUTLINED_FUNCTION_28_15();
  v1180 = Color.rgbaComponents.getter(v0);
  v1178 = v518;
  v1176 = v519;
  v1174 = v520;

  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v521);
  OUTLINED_FUNCTION_28_15();
  v1172 = Color.rgbaComponents.getter(v0);
  v1170 = v522;
  v1168 = v523;
  v1166 = v524;

  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v525);
  OUTLINED_FUNCTION_28_15();
  v1164 = Color.rgbaComponents.getter(v0);
  v1162 = v526;
  v1160 = v527;
  v1158 = v528;

  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v529);
  OUTLINED_FUNCTION_28_15();
  v1156 = Color.rgbaComponents.getter(v0);
  v1154 = v530;
  v1152 = v531;
  v1150 = v532;

  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v533);
  OUTLINED_FUNCTION_28_15();
  v1148 = Color.rgbaComponents.getter(v0);
  v1146 = v534;
  v1144 = v535;
  v1142 = v536;

  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v537);
  OUTLINED_FUNCTION_28_15();
  v538 = Color.rgbaComponents.getter(v0);
  v1138 = v539;
  v1140 = v538;
  v1131 = v541;
  v1135 = v540;

  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v542);
  OUTLINED_FUNCTION_28_15();
  v543 = Color.rgbaComponents.getter(v0);
  v1123 = v544;
  v1127 = v543;
  v1115 = v546;
  v1119 = v545;

  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v547);
  OUTLINED_FUNCTION_28_15();
  v548 = Color.rgbaComponents.getter(v0);
  v1106 = v549;
  v1111 = v548;
  v1094 = v551;
  v1100 = v550;

  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v552);
  OUTLINED_FUNCTION_28_15();
  v553 = Color.rgbaComponents.getter(v0);
  v1082 = v554;
  v1088 = v553;
  v1070 = v556;
  v1076 = v555;

  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v557);
  OUTLINED_FUNCTION_28_15();
  Color.rgbaComponents.getter(v0);
  OUTLINED_FUNCTION_40_11();
  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v558);
  OUTLINED_FUNCTION_28_15();
  Color.rgbaComponents.getter(v0);
  OUTLINED_FUNCTION_39_11();
  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v559);
  OUTLINED_FUNCTION_28_15();
  Color.rgbaComponents.getter(v0);
  OUTLINED_FUNCTION_38_14();
  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v560);
  OUTLINED_FUNCTION_28_15();
  Color.rgbaComponents.getter(v0);
  OUTLINED_FUNCTION_37_13();
  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v561);
  OUTLINED_FUNCTION_28_15();
  Color.rgbaComponents.getter(v0);
  OUTLINED_FUNCTION_36_14();
  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v562);
  OUTLINED_FUNCTION_28_15();
  v563 = Color.rgbaComponents.getter(v0);
  v898 = v564;
  v904 = v563;
  v888 = v566;
  v893 = v565;

  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v567);
  OUTLINED_FUNCTION_28_15();
  Color.rgbaComponents.getter(v0);
  OUTLINED_FUNCTION_45_8();
  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v568);
  OUTLINED_FUNCTION_28_15();
  Color.rgbaComponents.getter(v0);
  OUTLINED_FUNCTION_44_10();
  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v569);
  OUTLINED_FUNCTION_28_15();
  Color.rgbaComponents.getter(v0);
  OUTLINED_FUNCTION_43_7();
  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v570);
  OUTLINED_FUNCTION_28_15();
  Color.rgbaComponents.getter(v0);
  OUTLINED_FUNCTION_42_11();
  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v571);
  OUTLINED_FUNCTION_28_15();
  Color.rgbaComponents.getter(v0);
  OUTLINED_FUNCTION_41_10();
  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v572);
  OUTLINED_FUNCTION_28_15();
  v573 = Color.rgbaComponents.getter(v0);
  v879 = v574;
  v883 = v573;
  v876 = v576;
  v877 = v575;

  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v577);
  OUTLINED_FUNCTION_28_15();
  Color.rgbaComponents.getter(v0);
  OUTLINED_FUNCTION_27_13();
  OUTLINED_FUNCTION_61_7();
  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v578);
  OUTLINED_FUNCTION_28_15();
  Color.rgbaComponents.getter(v0);
  OUTLINED_FUNCTION_26_17();
  *(v2 + 3696) = v1280;
  *(v2 + 3712) = 0x43FA000043960000;
  *(v2 + 3728) = v1278;
  *(v2 + 3736) = v1276;
  *(v2 + 3744) = v1274;
  *(v2 + 3752) = v1272;
  *(v2 + 3760) = v1270;
  *(v2 + 3768) = v1268;
  *(v2 + 3776) = v1266;
  *(v2 + 3784) = v1264;
  *(v2 + 3792) = v1262;
  *(v2 + 3800) = v1260;
  *(v2 + 3808) = v1258;
  *(v2 + 3816) = v1256;
  *(v2 + 3824) = v1254;
  *(v2 + 3832) = v1252;
  *(v2 + 3840) = v1250;
  *(v2 + 3848) = v1248;
  *(v2 + 3856) = v1246;
  *(v2 + 3864) = v1244;
  *(v2 + 3872) = v1242;
  *(v2 + 3880) = v1240;
  *(v2 + 3888) = v1238;
  *(v2 + 3896) = v1236;
  *(v2 + 3904) = v1234;
  *(v2 + 3912) = v1232;
  *(v2 + 3920) = v1230;
  *(v2 + 3928) = v1228;
  *(v2 + 3936) = v1226;
  *(v2 + 3944) = v1224;
  *(v2 + 3952) = v1222;
  *(v2 + 3960) = v1219;
  *(v2 + 3968) = v1216;
  *(v2 + 3976) = v1214;
  *(v2 + 3984) = v1212;
  *(v2 + 3992) = v1210;
  *(v2 + 4000) = v1208;
  *(v2 + 4008) = v1206;
  *(v2 + 4032) = 1065353216;
  *(v2 + 4040) = v1204;
  *(v2 + 4048) = v1202;
  *(v2 + 4056) = v1200;
  *(v2 + 4064) = v1198;
  *(v2 + 4080) = v1196;
  *(v2 + 4088) = v1194;
  *(v2 + 4096) = v1192;
  *(v2 + 4104) = v1190;
  *(v2 + 4112) = v1188;
  *(v2 + 4120) = v1186;
  *(v2 + 4128) = v1184;
  *(v2 + 4136) = v1182;
  *(v2 + 4144) = v1180;
  *(v2 + 4152) = v1178;
  *(v2 + 4160) = v1176;
  *(v2 + 4168) = v1174;
  *(v2 + 4176) = v1172;
  *(v2 + 4184) = v1170;
  *(v2 + 4192) = v1168;
  *(v2 + 4200) = v1166;
  *(v2 + 4208) = v1164;
  *(v2 + 4216) = v1162;
  *(v2 + 4224) = v1160;
  *(v2 + 4232) = v1158;
  *(v2 + 4240) = v1156;
  *(v2 + 4248) = v1154;
  *(v2 + 4256) = v1152;
  *(v2 + 4264) = v1150;
  *(v2 + 4272) = v1148;
  *(v2 + 4280) = v1146;
  *(v2 + 4288) = v1144;
  *(v2 + 4296) = v1142;
  *(v2 + 4304) = v1140;
  *(v2 + 4312) = v1138;
  *(v2 + 4320) = v1135;
  *(v2 + 4328) = v1131;
  *(v2 + 4336) = v1127;
  *(v2 + 4344) = v1123;
  *(v2 + 4352) = v1119;
  *(v2 + 4360) = v1115;
  *(v2 + 4368) = v1111;
  *(v2 + 4376) = v1106;
  *(v2 + 4384) = v1100;
  *(v2 + 4392) = v1094;
  *(v2 + 4400) = v1088;
  *(v2 + 4408) = v1082;
  *(v2 + 4416) = v1076;
  *(v2 + 4424) = v1070;
  *(v2 + 4432) = v1064;
  *(v2 + 4440) = v1060;
  *(v2 + 4448) = v1056;
  *(v2 + 4456) = v1052;
  *(v2 + 4464) = v1033;
  *(v2 + 4472) = v1029;
  *(v2 + 4480) = v1025;
  *(v2 + 4488) = v1021;
  *(v2 + 4496) = v1001;
  *(v2 + 4504) = v997;
  *(v2 + 4512) = v993;
  *(v2 + 4520) = v989;
  *(v2 + 4528) = v969;
  *(v2 + 4536) = v965;
  *(v2 + 4544) = v961;
  *(v2 + 4552) = v957;
  *(v2 + 4560) = v937;
  *(v2 + 4568) = v933;
  *(v2 + 4576) = v929;
  *(v2 + 4584) = v925;
  *(v2 + 4592) = v904;
  *(v2 + 4600) = v898;
  *(v2 + 4608) = v893;
  *(v2 + 4616) = v888;
  *(v2 + 3680) = 0x4056800000000000;
  *(v2 + 3688) = 1;
  *(v2 + 3689) = *v1297;
  *(v2 + 3692) = *&v1297[3];
  *(v2 + 3720) = 0;
  *(v2 + 4016) = v1292;
  *(v2 + 4072) = 0;
  *(v2 + 4624) = v1049;
  *(v2 + 4632) = v1045;
  *(v2 + 4640) = v1041;
  *(v2 + 4648) = v1037;
  *(v2 + 4656) = v1017;
  *(v2 + 4664) = v1013;
  *(v2 + 4672) = v1009;
  *(v2 + 4680) = v1005;
  *(v2 + 4688) = v985;
  *(v2 + 4696) = v981;
  *(v2 + 4704) = v977;
  *(v2 + 4712) = v973;
  *(v2 + 4720) = v953;
  *(v2 + 4728) = v949;
  *(v2 + 4736) = v945;
  *(v2 + 4744) = v941;
  *(v2 + 4752) = v921;
  *(v2 + 4760) = v917;
  *(v2 + 4768) = v913;
  *(v2 + 4776) = v909;
  *(v2 + 4784) = v883;
  *(v2 + 4792) = v879;
  *(v2 + 4800) = v877;
  *(v2 + 4808) = v876;
  *(v2 + 4816) = 0x4170000042480000;
  *(v2 + 4824) = v459;
  *(v2 + 4832) = v461;
  *(v2 + 4840) = v467;
  *(v2 + 4848) = v1;
  *(v2 + 4856) = v455;
  *(v2 + 4864) = v457;
  *(v2 + 4872) = v463;
  *(v2 + 4880) = v465;
  sub_1BC9A8FB0(&unk_1F3B4DEF8);
  v1284 = v579;
  v580 = sub_1BCE1CA90();
  v581 = Color.rgbaComponents.getter(v580);
  OUTLINED_FUNCTION_60_7(v581, v582, v583, v584);
  v585 = sub_1BCE1CAB0();
  v586 = Color.rgbaComponents.getter(v585);
  OUTLINED_FUNCTION_59_4(v586, v587, v588, v589);
  v590 = sub_1BCE1CAB0();
  v591 = Color.rgbaComponents.getter(v590);
  OUTLINED_FUNCTION_58_6(v591, v592, v593, v594);
  v595 = sub_1BCE1CAB0();
  v596 = Color.rgbaComponents.getter(v595);
  OUTLINED_FUNCTION_22_27(v596, v597, v598, v599);

  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v600);
  OUTLINED_FUNCTION_28_15();
  v601 = Color.rgbaComponents.getter(v0);
  OUTLINED_FUNCTION_21_26(v601, v602, v603, v604);
  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v605);
  OUTLINED_FUNCTION_28_15();
  v606 = Color.rgbaComponents.getter(v0);
  OUTLINED_FUNCTION_20_26(v606, v607, v608, v609);
  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v610);
  OUTLINED_FUNCTION_28_15();
  v611 = Color.rgbaComponents.getter(v0);
  OUTLINED_FUNCTION_19_27(v611, v612, v613, v614);
  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v615);
  OUTLINED_FUNCTION_28_15();
  v616 = Color.rgbaComponents.getter(v0);
  OUTLINED_FUNCTION_18_27(v616, v617, v618, v619);
  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v620);
  OUTLINED_FUNCTION_28_15();
  v621 = Color.rgbaComponents.getter(v0);
  OUTLINED_FUNCTION_57_4(v621, v622, v623, v624);
  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v625);
  OUTLINED_FUNCTION_28_15();
  v626 = Color.rgbaComponents.getter(v0);
  OUTLINED_FUNCTION_56_5(v626, v627, v628, v629);
  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v630);
  OUTLINED_FUNCTION_28_15();
  v631 = Color.rgbaComponents.getter(v0);
  OUTLINED_FUNCTION_55_7(v631, v632, v633, v634);
  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v635);
  OUTLINED_FUNCTION_28_15();
  v636 = Color.rgbaComponents.getter(v0);
  OUTLINED_FUNCTION_54_5(v636, v637, v638, v639);
  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v640);
  OUTLINED_FUNCTION_28_15();
  v641 = Color.rgbaComponents.getter(v0);
  OUTLINED_FUNCTION_53_5(v641, v642, v643, v644);
  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v645);
  OUTLINED_FUNCTION_28_15();
  v646 = Color.rgbaComponents.getter(v0);
  OUTLINED_FUNCTION_52_6(v646, v647, v648, v649);
  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v650);
  OUTLINED_FUNCTION_28_15();
  v651 = Color.rgbaComponents.getter(v0);
  OUTLINED_FUNCTION_51_8(v651, v652, v653, v654);
  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v655);
  OUTLINED_FUNCTION_28_15();
  v656 = Color.rgbaComponents.getter(v0);
  OUTLINED_FUNCTION_50_7(v656, v657, v658, v659);
  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v660);
  OUTLINED_FUNCTION_28_15();
  v661 = Color.rgbaComponents.getter(v0);
  OUTLINED_FUNCTION_49_8(v661, v662, v663, v664);
  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v665);
  OUTLINED_FUNCTION_28_15();
  v666 = Color.rgbaComponents.getter(v0);
  OUTLINED_FUNCTION_66_2(v666, v667);
  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v668);
  OUTLINED_FUNCTION_28_15();
  v669 = Color.rgbaComponents.getter(v0);
  v1132 = v670;
  v1136 = v669;
  v1124 = v672;
  v1128 = v671;

  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v673);
  OUTLINED_FUNCTION_28_15();
  v674 = Color.rgbaComponents.getter(v0);
  v1116 = v675;
  v1120 = v674;
  v1107 = v677;
  v1112 = v676;

  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v678);
  OUTLINED_FUNCTION_28_15();
  v679 = Color.rgbaComponents.getter(v0);
  v1095 = v680;
  v1101 = v679;
  v1083 = v682;
  v1089 = v681;

  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v683);
  OUTLINED_FUNCTION_28_15();
  v684 = Color.rgbaComponents.getter(v0);
  v1071 = v685;
  v1077 = v684;
  v1061 = v687;
  v1065 = v686;

  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v688);
  OUTLINED_FUNCTION_28_15();
  v689 = Color.rgbaComponents.getter(v0);
  v1038 = v690;
  v1042 = v689;
  v1030 = v692;
  v1034 = v691;

  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v693);
  OUTLINED_FUNCTION_28_15();
  v694 = Color.rgbaComponents.getter(v0);
  v1006 = v695;
  v1010 = v694;
  v998 = v697;
  v1002 = v696;

  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v698);
  OUTLINED_FUNCTION_28_15();
  v699 = Color.rgbaComponents.getter(v0);
  v974 = v700;
  v978 = v699;
  v966 = v702;
  v970 = v701;

  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v703);
  OUTLINED_FUNCTION_28_15();
  v704 = Color.rgbaComponents.getter(v0);
  v942 = v705;
  v946 = v704;
  v934 = v707;
  v938 = v706;

  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v708);
  OUTLINED_FUNCTION_28_15();
  v709 = Color.rgbaComponents.getter(v0);
  v910 = v710;
  v914 = v709;
  v899 = v712;
  v905 = v711;

  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v713);
  OUTLINED_FUNCTION_28_15();
  v714 = Color.rgbaComponents.getter(v0);
  v1053 = v715;
  v1057 = v714;
  v1046 = v717;
  v1050 = v716;

  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v718);
  OUTLINED_FUNCTION_28_15();
  v719 = Color.rgbaComponents.getter(v0);
  v1022 = v720;
  v1026 = v719;
  v1014 = v722;
  v1018 = v721;

  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v723);
  OUTLINED_FUNCTION_28_15();
  v724 = Color.rgbaComponents.getter(v0);
  v990 = v725;
  v994 = v724;
  v982 = v727;
  v986 = v726;

  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v728);
  OUTLINED_FUNCTION_28_15();
  v729 = Color.rgbaComponents.getter(v0);
  v958 = v730;
  v962 = v729;
  v950 = v732;
  v954 = v731;

  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v733);
  OUTLINED_FUNCTION_28_15();
  v734 = Color.rgbaComponents.getter(v0);
  v926 = v735;
  v930 = v734;
  v918 = v737;
  v922 = v736;

  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v738);
  OUTLINED_FUNCTION_28_15();
  v739 = Color.rgbaComponents.getter(v0);
  v889 = v740;
  v894 = v739;
  v880 = v742;
  v884 = v741;

  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v743);
  OUTLINED_FUNCTION_28_15();
  Color.rgbaComponents.getter(v0);
  OUTLINED_FUNCTION_27_13();
  OUTLINED_FUNCTION_61_7();
  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v744);
  OUTLINED_FUNCTION_28_15();
  Color.rgbaComponents.getter(v0);
  OUTLINED_FUNCTION_26_17();
  *(v2 + 4912) = v1284;
  *(v2 + 4944) = 0x43FA000043960000;
  *(v2 + 4952) = v1280;
  *(v2 + 4960) = v1278;
  *(v2 + 4968) = v1276;
  *(v2 + 4976) = v1274;
  *(v2 + 4984) = v1272;
  *(v2 + 4992) = v1270;
  *(v2 + 5000) = v1268;
  *(v2 + 5008) = v1266;
  *(v2 + 5016) = v1264;
  *(v2 + 5024) = v1262;
  *(v2 + 5032) = v1260;
  *(v2 + 5040) = v1258;
  *(v2 + 5048) = v1256;
  *(v2 + 5056) = v1254;
  *(v2 + 5064) = v1252;
  *(v2 + 5072) = v1250;
  *(v2 + 5080) = v1248;
  *(v2 + 5088) = v1246;
  *(v2 + 5096) = v1244;
  *(v2 + 5104) = v1242;
  *(v2 + 5112) = v1240;
  *(v2 + 5120) = v1238;
  *(v2 + 5128) = v1236;
  *(v2 + 5136) = v1234;
  *(v2 + 5144) = v1232;
  *(v2 + 5152) = v1230;
  *(v2 + 5160) = v1228;
  *(v2 + 5168) = v1226;
  *(v2 + 5176) = v1224;
  *(v2 + 5184) = v1222;
  *(v2 + 5192) = v1219;
  *(v2 + 5200) = v1216;
  *(v2 + 5208) = v1214;
  *(v2 + 5216) = v1212;
  *(v2 + 5224) = v1210;
  *(v2 + 5248) = 0x3F0000003F800000;
  *(v2 + 5256) = v1208;
  *(v2 + 5264) = v1206;
  *(v2 + 5272) = v1204;
  *(v2 + 5280) = v1202;
  *(v2 + 5296) = v1200;
  *(v2 + 5304) = v1198;
  *(v2 + 5312) = v1196;
  *(v2 + 5320) = v1194;
  *(v2 + 5328) = v1192;
  *(v2 + 5336) = v1190;
  *(v2 + 5344) = v1188;
  *(v2 + 5352) = v1186;
  *(v2 + 5360) = v1184;
  *(v2 + 5368) = v1182;
  *(v2 + 5376) = v1180;
  *(v2 + 5384) = v1178;
  *(v2 + 5392) = v1176;
  *(v2 + 5400) = v1174;
  *(v2 + 5408) = v1172;
  *(v2 + 5416) = v1170;
  *(v2 + 5424) = v1168;
  *(v2 + 5432) = v1166;
  *(v2 + 5440) = v1164;
  *(v2 + 5448) = v1162;
  *(v2 + 5456) = v1160;
  *(v2 + 5464) = v1158;
  *(v2 + 5472) = v1156;
  *(v2 + 5480) = v1154;
  *(v2 + 5488) = v1152;
  *(v2 + 5496) = v1150;
  *(v2 + 5504) = v1148;
  *(v2 + 5512) = v1146;
  *(v2 + 5520) = v1144;
  *(v2 + 5528) = v1142;
  *(v2 + 5536) = v1140;
  *(v2 + 5544) = v1138;
  *(v2 + 5552) = v1136;
  *(v2 + 5560) = v1132;
  *(v2 + 5568) = v1128;
  *(v2 + 5576) = v1124;
  *(v2 + 5584) = v1120;
  *(v2 + 5592) = v1116;
  *(v2 + 5600) = v1112;
  *(v2 + 5608) = v1107;
  *(v2 + 5616) = v1101;
  *(v2 + 5624) = v1095;
  *(v2 + 5632) = v1089;
  *(v2 + 5640) = v1083;
  *(v2 + 5648) = v1077;
  *(v2 + 5656) = v1071;
  *(v2 + 5664) = v1065;
  *(v2 + 5672) = v1061;
  *(v2 + 5680) = v1042;
  *(v2 + 5688) = v1038;
  *(v2 + 5696) = v1034;
  *(v2 + 5704) = v1030;
  *(v2 + 5712) = v1010;
  *(v2 + 5720) = v1006;
  *(v2 + 5728) = v1002;
  *(v2 + 5736) = v998;
  *(v2 + 5744) = v978;
  *(v2 + 5752) = v974;
  *(v2 + 5760) = v970;
  *(v2 + 5768) = v966;
  *(v2 + 5776) = v946;
  *(v2 + 5784) = v942;
  *(v2 + 5792) = v938;
  *(v2 + 5800) = v934;
  *(v2 + 5808) = v914;
  *(v2 + 5816) = v910;
  *(v2 + 5824) = v905;
  *(v2 + 5832) = v899;
  *(v2 + 4896) = 0;
  *(v2 + 4904) = 1;
  *(v2 + 4905) = *v1298;
  *(v2 + 4908) = *&v1298[3];
  *(v2 + 4928) = 0x43FA000042C80000;
  *(v2 + 4936) = 0;
  *(v2 + 5232) = v1292;
  *(v2 + 5288) = 0;
  *(v2 + 5840) = v1057;
  *(v2 + 5848) = v1053;
  *(v2 + 5856) = v1050;
  *(v2 + 5864) = v1046;
  *(v2 + 5872) = v1026;
  *(v2 + 5880) = v1022;
  *(v2 + 5888) = v1018;
  *(v2 + 5896) = v1014;
  *(v2 + 5904) = v994;
  *(v2 + 5912) = v990;
  *(v2 + 5920) = v986;
  *(v2 + 5928) = v982;
  *(v2 + 5936) = v962;
  *(v2 + 5944) = v958;
  *(v2 + 5952) = v954;
  *(v2 + 5960) = v950;
  *(v2 + 5968) = v930;
  *(v2 + 5976) = v926;
  *(v2 + 5984) = v922;
  *(v2 + 5992) = v918;
  *(v2 + 6000) = v894;
  *(v2 + 6008) = v889;
  *(v2 + 6016) = v884;
  *(v2 + 6024) = v880;
  *(v2 + 6032) = 0x4170000042480000;
  *(v2 + 6040) = v459;
  *(v2 + 6048) = v461;
  *(v2 + 6056) = v467;
  *(v2 + 6064) = v1;
  *(v2 + 6072) = v455;
  *(v2 + 6080) = v457;
  *(v2 + 6088) = v463;
  *(v2 + 6096) = v465;
  sub_1BC9A8FB0(&unk_1F3B4DF28);
  v1287 = v745;
  v746 = sub_1BCE1CA90();
  v747 = Color.rgbaComponents.getter(v746);
  OUTLINED_FUNCTION_25_16(v747, v748, v749, v750);
  v751 = sub_1BCE1CAB0();
  v752 = Color.rgbaComponents.getter(v751);
  OUTLINED_FUNCTION_24_21(v752, v753, v754, v755);
  v756 = sub_1BCE1CAB0();
  v757 = Color.rgbaComponents.getter(v756);
  OUTLINED_FUNCTION_23_28(v757, v758, v759, v760);
  v761 = sub_1BCE1CAB0();
  v762 = Color.rgbaComponents.getter(v761);
  OUTLINED_FUNCTION_48_8(v762, v763, v764, v765);
  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v766);
  OUTLINED_FUNCTION_28_15();
  v767 = Color.rgbaComponents.getter(v0);
  OUTLINED_FUNCTION_35_13(v767, v768, v769, v770);
  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v771);
  OUTLINED_FUNCTION_28_15();
  v772 = Color.rgbaComponents.getter(v0);
  OUTLINED_FUNCTION_34_14(v772, v773, v774, v775);
  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v776);
  OUTLINED_FUNCTION_28_15();
  v777 = Color.rgbaComponents.getter(v0);
  OUTLINED_FUNCTION_33_16(v777, v778, v779, v780);
  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v781);
  OUTLINED_FUNCTION_28_15();
  v782 = Color.rgbaComponents.getter(v0);
  OUTLINED_FUNCTION_32_11(v782, v783, v784, v785);
  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v786);
  OUTLINED_FUNCTION_28_15();
  v1220 = Color.rgbaComponents.getter(v0);
  OUTLINED_FUNCTION_31_16(v1220, v787, v788, v789);
  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v790);
  OUTLINED_FUNCTION_28_15();
  v791 = Color.rgbaComponents.getter(v0);
  OUTLINED_FUNCTION_17_32(v791, v792, v793, v794);
  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v795);
  OUTLINED_FUNCTION_28_15();
  v796 = Color.rgbaComponents.getter(v0);
  OUTLINED_FUNCTION_16_35(v796, v797, v798, v799);
  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v800);
  OUTLINED_FUNCTION_28_15();
  v801 = Color.rgbaComponents.getter(v0);
  OUTLINED_FUNCTION_15_38(v801, v802, v803, v804);
  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v805);
  OUTLINED_FUNCTION_28_15();
  v806 = Color.rgbaComponents.getter(v0);
  OUTLINED_FUNCTION_14_34(v806, v807, v808, v809);
  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v810);
  OUTLINED_FUNCTION_28_15();
  v811 = Color.rgbaComponents.getter(v0);
  OUTLINED_FUNCTION_13_44(v811, v812, v813, v814);
  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v815);
  OUTLINED_FUNCTION_28_15();
  v816 = Color.rgbaComponents.getter(v0);
  OUTLINED_FUNCTION_12_49(v816, v817, v818, v819);
  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v820);
  OUTLINED_FUNCTION_28_15();
  v821 = Color.rgbaComponents.getter(v0);
  OUTLINED_FUNCTION_11_42(v821, v822, v823, v824);
  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v825);
  OUTLINED_FUNCTION_28_15();
  v826 = Color.rgbaComponents.getter(v0);
  OUTLINED_FUNCTION_10_51(v826, v827, v828, v829);
  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v830);
  OUTLINED_FUNCTION_28_15();
  v831 = Color.rgbaComponents.getter(v0);
  OUTLINED_FUNCTION_30_17(v831, v832, v833);
  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v834);
  OUTLINED_FUNCTION_28_15();
  Color.rgbaComponents.getter(v0);
  OUTLINED_FUNCTION_47_3();
  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v835);
  OUTLINED_FUNCTION_28_15();
  Color.rgbaComponents.getter(v0);
  OUTLINED_FUNCTION_46_8();
  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v836);
  OUTLINED_FUNCTION_28_15();
  v837 = Color.rgbaComponents.getter(v0);
  v1102 = v838;
  v1108 = v837;
  v1090 = v840;
  v1096 = v839;

  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v841);
  OUTLINED_FUNCTION_28_15();
  v842 = Color.rgbaComponents.getter(v0);
  v1078 = v843;
  v1084 = v842;
  v1066 = v845;
  v1072 = v844;

  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v846);
  OUTLINED_FUNCTION_28_15();
  Color.rgbaComponents.getter(v0);
  OUTLINED_FUNCTION_45_8();
  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v847);
  OUTLINED_FUNCTION_28_15();
  Color.rgbaComponents.getter(v0);
  OUTLINED_FUNCTION_44_10();
  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v848);
  OUTLINED_FUNCTION_28_15();
  Color.rgbaComponents.getter(v0);
  OUTLINED_FUNCTION_43_7();
  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v849);
  OUTLINED_FUNCTION_28_15();
  Color.rgbaComponents.getter(v0);
  OUTLINED_FUNCTION_42_11();
  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v850);
  OUTLINED_FUNCTION_28_15();
  Color.rgbaComponents.getter(v0);
  OUTLINED_FUNCTION_41_10();
  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v851);
  OUTLINED_FUNCTION_28_15();
  v885 = Color.rgbaComponents.getter(v0);
  v1058 = v853;
  v1062 = v852;
  v1054 = v854;

  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v855);
  OUTLINED_FUNCTION_28_15();
  Color.rgbaComponents.getter(v0);
  OUTLINED_FUNCTION_39_11();
  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v856);
  OUTLINED_FUNCTION_28_15();
  Color.rgbaComponents.getter(v0);
  OUTLINED_FUNCTION_38_14();
  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v857);
  OUTLINED_FUNCTION_28_15();
  Color.rgbaComponents.getter(v0);
  OUTLINED_FUNCTION_37_13();
  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v858);
  OUTLINED_FUNCTION_28_15();
  Color.rgbaComponents.getter(v0);
  OUTLINED_FUNCTION_36_14();
  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v859);
  OUTLINED_FUNCTION_28_15();
  v860 = Color.rgbaComponents.getter(v0);
  v900 = v861;
  v906 = v860;
  v890 = v863;
  v895 = v862;

  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v864);
  OUTLINED_FUNCTION_28_15();
  Color.rgbaComponents.getter(v0);
  OUTLINED_FUNCTION_27_13();
  v866 = v865;

  sub_1BCE1CAB0();
  OUTLINED_FUNCTION_29_18(v867);
  OUTLINED_FUNCTION_28_15();
  v868 = Color.rgbaComponents.getter(v0);
  v870 = v869;
  v872 = v871;
  v874 = v873;

  *(v2 + 6128) = v1287;
  *(v2 + 6144) = 0x43FA000042C80000;
  *(v2 + 6160) = v1284;
  *(v2 + 6168) = 0x43FA000043960000;
  *(v2 + 6176) = v1280;
  *(v2 + 6184) = v1278;
  *(v2 + 6192) = v1276;
  *(v2 + 6200) = v1274;
  *(v2 + 6208) = v1272;
  *(v2 + 6216) = v1270;
  *(v2 + 6224) = v1268;
  *(v2 + 6232) = v1266;
  *(v2 + 6240) = v1264;
  *(v2 + 6248) = v1262;
  *(v2 + 6256) = v1260;
  *(v2 + 6264) = v1258;
  *(v2 + 6272) = v1256;
  *(v2 + 6280) = v1254;
  *(v2 + 6288) = v1252;
  *(v2 + 6296) = v1250;
  *(v2 + 6304) = v1248;
  *(v2 + 6312) = v1246;
  *(v2 + 6320) = v1244;
  *(v2 + 6328) = v1242;
  *(v2 + 6336) = v1240;
  *(v2 + 6344) = v1238;
  *(v2 + 6352) = v1236;
  *(v2 + 6360) = v1234;
  *(v2 + 6368) = v1232;
  *(v2 + 6376) = v1230;
  *(v2 + 6384) = v1228;
  *(v2 + 6392) = v1226;
  *(v2 + 6400) = v1224;
  *(v2 + 6408) = v1222;
  *(v2 + 6416) = v1220;
  *(v2 + 6424) = v1216;
  *(v2 + 6432) = v1214;
  *(v2 + 6440) = v1212;
  *(v2 + 6448) = v1292;
  *(v2 + 6464) = v1289;
  *(v2 + 6472) = v1210;
  *(v2 + 6480) = v1208;
  *(v2 + 6488) = v1206;
  *(v2 + 6496) = v1204;
  *(v2 + 6512) = v1202;
  *(v2 + 6520) = v1200;
  *(v2 + 6528) = v1198;
  *(v2 + 6536) = v1196;
  *(v2 + 6544) = v1194;
  *(v2 + 6552) = v1192;
  *(v2 + 6560) = v1190;
  *(v2 + 6568) = v1188;
  *(v2 + 6576) = v1186;
  *(v2 + 6584) = v1184;
  *(v2 + 6592) = v1182;
  *(v2 + 6600) = v1180;
  *(v2 + 6608) = v1178;
  *(v2 + 6616) = v1176;
  *(v2 + 6624) = v1174;
  *(v2 + 6632) = v1172;
  *(v2 + 6640) = v1170;
  *(v2 + 6648) = v1168;
  *(v2 + 6656) = v1166;
  *(v2 + 6664) = v1164;
  *(v2 + 6672) = v1162;
  *(v2 + 6680) = v1160;
  *(v2 + 6688) = v1158;
  *(v2 + 6696) = v1156;
  *(v2 + 6704) = v1154;
  *(v2 + 6712) = v1152;
  *(v2 + 6720) = v1150;
  *(v2 + 6728) = v1148;
  *(v2 + 6736) = v1146;
  *(v2 + 6744) = v1144;
  *(v2 + 6752) = v1142;
  *(v2 + 6760) = v1140;
  *(v2 + 6768) = v1138;
  *(v2 + 6776) = v1136;
  *(v2 + 6784) = v1132;
  *(v2 + 6792) = v1128;
  *(v2 + 6800) = v1124;
  *(v2 + 6808) = v1120;
  *(v2 + 6816) = v1116;
  *(v2 + 6824) = v1112;
  *(v2 + 6832) = v1108;
  *(v2 + 6840) = v1102;
  *(v2 + 6848) = v1096;
  *(v2 + 6856) = v1090;
  *(v2 + 6864) = v1084;
  *(v2 + 6872) = v1078;
  *(v2 + 6880) = v1072;
  *(v2 + 6888) = v1066;
  *(v2 + 6896) = v1050;
  *(v2 + 6904) = v1046;
  *(v2 + 6912) = v1042;
  *(v2 + 6920) = v1038;
  *(v2 + 6928) = v1018;
  *(v2 + 6936) = v1014;
  *(v2 + 6944) = v1010;
  *(v2 + 6952) = v1006;
  *(v2 + 6960) = v986;
  *(v2 + 6968) = v982;
  *(v2 + 6976) = v978;
  *(v2 + 6984) = v974;
  *(v2 + 6992) = v954;
  *(v2 + 7000) = v950;
  *(v2 + 7008) = v946;
  *(v2 + 7016) = v942;
  *(v2 + 7024) = v922;
  *(v2 + 7032) = v918;
  *(v2 + 7040) = v914;
  *(v2 + 7048) = v910;
  *(v2 + 7056) = v885;
  *(v2 + 6112) = 0xC056800000000000;
  *(v2 + 6120) = 1;
  *(v2 + 6121) = *v1299;
  *(v2 + 6124) = *&v1299[3];
  *(v2 + 6152) = 0;
  *(v2 + 6504) = 0;
  *(v2 + 7064) = v1062;
  *(v2 + 7072) = v1058;
  *(v2 + 7080) = v1054;
  *(v2 + 7088) = v1034;
  *(v2 + 7096) = v1030;
  *(v2 + 7104) = v1026;
  *(v2 + 7112) = v1022;
  *(v2 + 7120) = v1002;
  *(v2 + 7128) = v998;
  *(v2 + 7136) = v994;
  *(v2 + 7144) = v990;
  *(v2 + 7152) = v970;
  *(v2 + 7160) = v966;
  *(v2 + 7168) = v962;
  *(v2 + 7176) = v958;
  *(v2 + 7184) = v938;
  *(v2 + 7192) = v934;
  *(v2 + 7200) = v930;
  *(v2 + 7208) = v926;
  *(v2 + 7216) = v906;
  *(v2 + 7224) = v900;
  *(v2 + 7232) = v895;
  *(v2 + 7240) = v890;
  *(v2 + 7248) = 0x4170000042480000;
  *(v2 + 7256) = v459;
  *(v2 + 7264) = v461;
  *(v2 + 7272) = v467;
  *(v2 + 7280) = v866;
  *(v2 + 7288) = v868;
  *(v2 + 7296) = v870;
  *(v2 + 7304) = v872;
  *(v2 + 7312) = v874;
  return v2;
}

WeatherUI::LightingKeyframeSet_optional __swiftcall LightingKeyframeSet.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1BCE1DEC0();

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

uint64_t LightingKeyframeSet.rawValue.getter()
{
  if (*v0)
  {
    return 0x6F6F4D2068746957;
  }

  else
  {
    return 0x72616C75676552;
  }
}

uint64_t sub_1BCD9F54C@<X0>(uint64_t *a1@<X8>)
{
  result = LightingKeyframeSet.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

__n128 WeatherConditionLightingKeyframe.sunLightColor.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 48) = *a1;
  *(v1 + 64) = v3;
  return result;
}

__n128 WeatherConditionLightingKeyframe.ambientLightColor.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 80) = *a1;
  *(v1 + 96) = v3;
  return result;
}

__n128 WeatherConditionLightingKeyframe.fillLightColor.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 112) = *a1;
  *(v1 + 128) = v3;
  return result;
}

__n128 WeatherConditionLightingKeyframe.fringeColor.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 144) = *a1;
  *(v1 + 160) = v3;
  return result;
}

__n128 WeatherConditionLightingKeyframe.cloudFFGColor.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 176) = *a1;
  *(v1 + 192) = v3;
  return result;
}

__n128 WeatherConditionLightingKeyframe.cloudFGColor.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 208) = *a1;
  *(v1 + 224) = v3;
  return result;
}

__n128 WeatherConditionLightingKeyframe.cloudBGColor.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 240) = *a1;
  *(v1 + 256) = v3;
  return result;
}

__n128 WeatherConditionLightingKeyframe.cloudBBGColor.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 272) = *a1;
  *(v1 + 288) = v3;
  return result;
}

__n128 WeatherConditionLightingKeyframe.cloudBlanketColor.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 304) = *a1;
  *(v1 + 320) = v3;
  return result;
}

__n128 WeatherConditionLightingKeyframe.noiseRandomColorStart.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 400) = *a1;
  *(v1 + 416) = v3;
  return result;
}

__n128 WeatherConditionLightingKeyframe.noiseRandomColorEnd.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 432) = *a1;
  *(v1 + 448) = v3;
  return result;
}

__n128 WeatherConditionLightingKeyframe.rainFGRandomColorStart.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 464) = *a1;
  *(v1 + 480) = v3;
  return result;
}

__n128 WeatherConditionLightingKeyframe.rainFGRandomColorEnd.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 496) = *a1;
  *(v1 + 512) = v3;
  return result;
}

__n128 WeatherConditionLightingKeyframe.rainBGRandomColorStart.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 528) = *a1;
  *(v1 + 544) = v3;
  return result;
}

__n128 WeatherConditionLightingKeyframe.rainBGRandomColorEnd.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 560) = *a1;
  *(v1 + 576) = v3;
  return result;
}

__n128 WeatherConditionLightingKeyframe.snowFGRandomColorStart.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 592) = *a1;
  *(v1 + 608) = v3;
  return result;
}

__n128 WeatherConditionLightingKeyframe.snowFGRandomColorEnd.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 624) = *a1;
  *(v1 + 640) = v3;
  return result;
}

__n128 WeatherConditionLightingKeyframe.snowBGRandomColorStart.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 656) = *a1;
  *(v1 + 672) = v3;
  return result;
}

__n128 WeatherConditionLightingKeyframe.snowBGRandomColorEnd.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 688) = *a1;
  *(v1 + 704) = v3;
  return result;
}

__n128 WeatherConditionLightingKeyframe.hailRandomColorStart.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 720) = *a1;
  *(v1 + 736) = v3;
  return result;
}

__n128 WeatherConditionLightingKeyframe.hailRandomColorEnd.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 752) = *a1;
  *(v1 + 768) = v3;
  return result;
}

__n128 WeatherConditionLightingKeyframe.foregroundParticlesRandomColorStart.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 784) = *a1;
  *(v1 + 800) = v3;
  return result;
}

__n128 WeatherConditionLightingKeyframe.foregroundParticlesRandomColorEnd.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 816) = *a1;
  *(v1 + 832) = v3;
  return result;
}

__n128 WeatherConditionLightingKeyframe.sleetFGRandomColorStart.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 848) = *a1;
  *(v1 + 864) = v3;
  return result;
}

__n128 WeatherConditionLightingKeyframe.sleetFGRandomColorEnd.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 880) = *a1;
  *(v1 + 896) = v3;
  return result;
}

__n128 WeatherConditionLightingKeyframe.sleetBGRandomColorStart.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 912) = *a1;
  *(v1 + 928) = v3;
  return result;
}

__n128 WeatherConditionLightingKeyframe.sleetBGRandomColorEnd.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 944) = *a1;
  *(v1 + 960) = v3;
  return result;
}

__n128 WeatherConditionLightingKeyframe.collisionRandomColorStart.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 976) = *a1;
  *(v1 + 992) = v3;
  return result;
}

__n128 WeatherConditionLightingKeyframe.collisionRandomColorEnd.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 1008) = *a1;
  *(v1 + 1024) = v3;
  return result;
}

__n128 WeatherConditionLightingKeyframe.windRandomColorStart.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 1040) = *a1;
  *(v1 + 1056) = v3;
  return result;
}

__n128 WeatherConditionLightingKeyframe.windRandomColorEnd.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 1072) = *a1;
  *(v1 + 1088) = v3;
  return result;
}

__n128 WeatherConditionLightingKeyframe.moonLightColor.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 1104) = *a1;
  *(v1 + 1120) = v3;
  return result;
}

uint64_t static WeatherConditionLightingKeyframe.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  if (*a1 == *a2 && ((*(a1 + 8) ^ *(a2 + 8)) & 1) == 0)
  {
    v3 = vmovn_s32(vceqq_f32(*(a1 + 16), *(a2 + 16)));
    if (v3.i8[0] & 1) != 0 && (v3.i8[2])
    {
      v4.i64[0] = *(a1 + 32);
      v4.i32[2] = *(a1 + 40);
      v4.i32[3] = *(a1 + 336);
      v5.i64[0] = *(a2 + 32);
      v5.i32[2] = *(a2 + 40);
      v5.i32[3] = *(a2 + 336);
      v6 = vuzp1q_s16(vuzp1q_s32(vceqq_f64(*(a1 + 112), *(a2 + 112)), vceqq_f64(*(a1 + 128), *(a2 + 128))), vuzp1q_s32(vceqq_f64(*(a1 + 144), *(a2 + 144)), vceqq_f64(*(a1 + 160), *(a2 + 160))));
      v7 = vuzp1q_s16(vuzp1q_s32(vceqq_f64(*(a1 + 48), *(a2 + 48)), vceqq_f64(*(a1 + 64), *(a2 + 64))), vuzp1q_s32(vceqq_f64(*(a1 + 80), *(a2 + 80)), vceqq_f64(*(a1 + 96), *(a2 + 96))));
      v8 = vuzp1q_s16(vuzp1q_s32(vceqq_f64(*(a1 + 656), *(a2 + 656)), vceqq_f64(*(a1 + 672), *(a2 + 672))), vuzp1q_s32(vceqq_f64(*(a1 + 688), *(a2 + 688)), vceqq_f64(*(a1 + 704), *(a2 + 704))));
      v9 = vuzp1q_s16(vuzp1q_s32(vceqq_f64(*(a1 + 592), *(a2 + 592)), vceqq_f64(*(a1 + 608), *(a2 + 608))), vuzp1q_s32(vceqq_f64(*(a1 + 624), *(a2 + 624)), vceqq_f64(*(a1 + 640), *(a2 + 640))));
      v10 = vuzp1q_s16(vuzp1q_s32(vceqq_f64(*(a1 + 400), *(a2 + 400)), vceqq_f64(*(a1 + 416), *(a2 + 416))), vuzp1q_s32(vceqq_f64(*(a1 + 432), *(a2 + 432)), vceqq_f64(*(a1 + 448), *(a2 + 448))));
      v11 = vuzp1q_s16(vuzp1q_s32(vceqq_f64(*(a1 + 304), *(a2 + 304)), vceqq_f64(*(a1 + 320), *(a2 + 320))), vuzp1q_s32(vceqq_f64(*(a1 + 360), *(a2 + 360)), vceqq_f64(*(a1 + 376), *(a2 + 376))));
      v12 = vuzp1q_s16(vuzp1q_s32(vceqq_f64(*(a1 + 912), *(a2 + 912)), vceqq_f64(*(a1 + 928), *(a2 + 928))), vuzp1q_s32(vceqq_f64(*(a1 + 944), *(a2 + 944)), vceqq_f64(*(a1 + 960), *(a2 + 960))));
      v13 = vuzp1q_s16(vuzp1q_s32(vceqq_f64(*(a1 + 848), *(a2 + 848)), vceqq_f64(*(a1 + 864), *(a2 + 864))), vuzp1q_s32(vceqq_f64(*(a1 + 880), *(a2 + 880)), vceqq_f64(*(a1 + 896), *(a2 + 896))));
      v14 = vuzp1q_s16(vuzp1q_s32(vceqq_f64(*(a1 + 240), *(a2 + 240)), vceqq_f64(*(a1 + 256), *(a2 + 256))), vuzp1q_s32(vceqq_f64(*(a1 + 272), *(a2 + 272)), vceqq_f64(*(a1 + 288), *(a2 + 288))));
      v15 = vuzp1q_s16(vuzp1q_s32(vceqq_f64(*(a1 + 176), *(a2 + 176)), vceqq_f64(*(a1 + 192), *(a2 + 192))), vuzp1q_s32(vceqq_f64(*(a1 + 208), *(a2 + 208)), vceqq_f64(*(a1 + 224), *(a2 + 224))));
      v16 = vuzp1q_s16(vuzp1q_s32(vceqq_f64(*(a1 + 784), *(a2 + 784)), vceqq_f64(*(a1 + 800), *(a2 + 800))), vuzp1q_s32(vceqq_f64(*(a1 + 816), *(a2 + 816)), vceqq_f64(*(a1 + 832), *(a2 + 832))));
      v17 = vuzp1q_s16(vuzp1q_s32(vceqq_f64(*(a1 + 720), *(a2 + 720)), vceqq_f64(*(a1 + 736), *(a2 + 736))), vuzp1q_s32(vceqq_f64(*(a1 + 752), *(a2 + 752)), vceqq_f64(*(a1 + 768), *(a2 + 768))));
      v18 = *(a1 + 356);
      v19 = vcltzq_s8(vshlq_n_s8(vandq_s8(vandq_s8(vandq_s8(vuzp1q_s8(v7, v6), vuzp1q_s8(v9, v8)), vandq_s8(vuzp1q_s8(v11, v10), vuzp1q_s8(v13, v12))), vandq_s8(vandq_s8(vuzp1q_s8(v15, v14), vuzp1q_s8(v17, v16)), vandq_s8(vuzp1q_s8(vuzp1q_s16(vuzp1q_s32(vceqq_f64(*(a1 + 464), *(a2 + 464)), vceqq_f64(*(a1 + 480), *(a2 + 480))), vuzp1q_s32(vceqq_f64(*(a1 + 496), *(a2 + 496)), vceqq_f64(*(a1 + 512), *(a2 + 512)))), vuzp1q_s16(vuzp1q_s32(vceqq_f64(*(a1 + 528), *(a2 + 528)), vceqq_f64(*(a1 + 544), *(a2 + 544))), vuzp1q_s32(vceqq_f64(*(a1 + 560), *(a2 + 560)), vceqq_f64(*(a1 + 576), *(a2 + 576))))), vuzp1q_s8(vuzp1q_s16(vuzp1q_s32(vceqq_f64(*(a1 + 976), *(a2 + 976)), vceqq_f64(*(a1 + 992), *(a2 + 992))), vuzp1q_s32(vceqq_f64(*(a1 + 1008), *(a2 + 1008)), vceqq_f64(*(a1 + 1024), *(a2 + 1024)))), vuzp1q_s16(vuzp1q_s32(vceqq_f64(*(a1 + 1040), *(a2 + 1040)), vceqq_f64(*(a1 + 1056), *(a2 + 1056))), vuzp1q_s32(vceqq_f64(*(a1 + 1072), *(a2 + 1072)), vceqq_f64(*(a1 + 1088), *(a2 + 1088)))))))), 7uLL));
      v19.i8[0] = vminvq_u8(v19);
      v20 = v19.i16[0];
      v18.i32[1] = *(a1 + 392);
      v18.i64[1] = *(a1 + 1136);
      v21 = *(a2 + 356);
      v21.i32[1] = *(a2 + 392);
      v21.i64[1] = *(a2 + 1136);
      *v19.i8 = vcltz_s8(vshl_n_s8(vmovn_s16(vandq_s8(vuzp1q_s16(vuzp1q_s32(vceqq_f64(*(a1 + 1104), *(a2 + 1104)), vceqq_f64(*(a1 + 1120), *(a2 + 1120))), vuzp1q_s32(vceqq_f64(*(a1 + 1144), *(a2 + 1144)), vceqq_f64(*(a1 + 1160), *(a2 + 1160)))), vuzp1q_s16(vceqq_f32(v4, v5), vceqq_f32(*(a1 + 340), *(a2 + 340))))), 7uLL));
      v19.i8[0] = vminv_u8(*v19.i8);
      v22 = v20 & v19.i16[0] & vminv_u16(vmovn_s32(vceqq_f32(v18, v21))) & (*(a1 + 1176) == *(a2 + 1176));
      if (*(a1 + 1184) != *(a2 + 1184))
      {
        v22 = 0;
      }

      if (*(a1 + 1192) != *(a2 + 1192))
      {
        v22 = 0;
      }

      LODWORD(v2) = (v22 & v3.i16[2]);
      if (*(a1 + 1200) == *(a2 + 1200))
      {
        return v2;
      }

      else
      {
        return 0;
      }
    }
  }

  return v2;
}

uint64_t sub_1BCDA0400(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000010 && 0x80000001BCE85F20 == a2;
  if (v4 || (sub_1BCE1E090() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1297118057 && a2 == 0xE400000000000000;
    if (v6 || (sub_1BCE1E090() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x656C676E416E7573 && a2 == 0xE800000000000000;
      if (v7 || (sub_1BCE1E090() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000011 && 0x80000001BCE87CB0 == a2;
        if (v8 || (sub_1BCE1E090() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000012 && 0x80000001BCE87C90 == a2;
          if (v9 || (sub_1BCE1E090() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000015 && 0x80000001BCE87CD0 == a2;
            if (v10 || (sub_1BCE1E090() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x746867694C6E7573 && a2 == 0xED0000726F6C6F43;
              if (v11 || (sub_1BCE1E090() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000011 && 0x80000001BCE921B0 == a2;
                if (v12 || (sub_1BCE1E090() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x6867694C6C6C6966 && a2 == 0xEE00726F6C6F4374;
                  if (v13 || (sub_1BCE1E090() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x6F4365676E697266 && a2 == 0xEB00000000726F6CLL;
                    if (v14 || (sub_1BCE1E090() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x47464664756F6C63 && a2 == 0xED0000726F6C6F43;
                      if (v15 || (sub_1BCE1E090() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x43474664756F6C63 && a2 == 0xEC000000726F6C6FLL;
                        if (v16 || (sub_1BCE1E090() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x43474264756F6C63 && a2 == 0xEC000000726F6C6FLL;
                          if (v17 || (sub_1BCE1E090() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0x47424264756F6C63 && a2 == 0xED0000726F6C6F43;
                            if (v18 || (sub_1BCE1E090() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0xD000000000000011 && 0x80000001BCE86580 == a2;
                              if (v19 || (sub_1BCE1E090() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0xD000000000000012 && 0x80000001BCE86620 == a2;
                                if (v20 || (sub_1BCE1E090() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 0xD000000000000011 && 0x80000001BCE866A0 == a2;
                                  if (v21 || (sub_1BCE1E090() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v22 = a1 == 0xD000000000000011 && 0x80000001BCE86720 == a2;
                                    if (v22 || (sub_1BCE1E090() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else
                                    {
                                      v23 = a1 == 0xD000000000000012 && 0x80000001BCE867C0 == a2;
                                      if (v23 || (sub_1BCE1E090() & 1) != 0)
                                      {

                                        return 18;
                                      }

                                      else
                                      {
                                        v24 = a1 == 0xD000000000000016 && 0x80000001BCE86560 == a2;
                                        if (v24 || (sub_1BCE1E090() & 1) != 0)
                                        {

                                          return 19;
                                        }

                                        else
                                        {
                                          v25 = a1 == 0x6361704F72617473 && a2 == 0xEB00000000797469;
                                          if (v25 || (sub_1BCE1E090() & 1) != 0)
                                          {

                                            return 20;
                                          }

                                          else
                                          {
                                            v26 = a1 == 0xD000000000000011 && 0x80000001BCE86250 == a2;
                                            if (v26 || (sub_1BCE1E090() & 1) != 0)
                                            {

                                              return 21;
                                            }

                                            else
                                            {
                                              v27 = a1 == 0x746E496D6F6F6C62 && a2 == 0xEE00797469736E65;
                                              if (v27 || (sub_1BCE1E090() & 1) != 0)
                                              {

                                                return 22;
                                              }

                                              else
                                              {
                                                v28 = a1 == 0xD000000000000015 && 0x80000001BCE86AC0 == a2;
                                                if (v28 || (sub_1BCE1E090() & 1) != 0)
                                                {

                                                  return 23;
                                                }

                                                else
                                                {
                                                  v29 = a1 == 0xD000000000000013 && 0x80000001BCE86AA0 == a2;
                                                  if (v29 || (sub_1BCE1E090() & 1) != 0)
                                                  {

                                                    return 24;
                                                  }

                                                  else
                                                  {
                                                    v30 = a1 == 0xD000000000000016 && 0x80000001BCE86FE0 == a2;
                                                    if (v30 || (sub_1BCE1E090() & 1) != 0)
                                                    {

                                                      return 25;
                                                    }

                                                    else
                                                    {
                                                      v31 = a1 == 0xD000000000000014 && 0x80000001BCE86FC0 == a2;
                                                      if (v31 || (sub_1BCE1E090() & 1) != 0)
                                                      {

                                                        return 26;
                                                      }

                                                      else
                                                      {
                                                        v32 = a1 == 0xD000000000000016 && 0x80000001BCE86F00 == a2;
                                                        if (v32 || (sub_1BCE1E090() & 1) != 0)
                                                        {

                                                          return 27;
                                                        }

                                                        else
                                                        {
                                                          v33 = a1 == 0xD000000000000014 && 0x80000001BCE86EE0 == a2;
                                                          if (v33 || (sub_1BCE1E090() & 1) != 0)
                                                          {

                                                            return 28;
                                                          }

                                                          else
                                                          {
                                                            v34 = a1 == 0xD000000000000016 && 0x80000001BCE86DE0 == a2;
                                                            if (v34 || (sub_1BCE1E090() & 1) != 0)
                                                            {

                                                              return 29;
                                                            }

                                                            else
                                                            {
                                                              v35 = a1 == 0xD000000000000014 && 0x80000001BCE86DC0 == a2;
                                                              if (v35 || (sub_1BCE1E090() & 1) != 0)
                                                              {

                                                                return 30;
                                                              }

                                                              else
                                                              {
                                                                v36 = a1 == 0xD000000000000016 && 0x80000001BCE86D00 == a2;
                                                                if (v36 || (sub_1BCE1E090() & 1) != 0)
                                                                {

                                                                  return 31;
                                                                }

                                                                else
                                                                {
                                                                  v37 = a1 == 0xD000000000000014 && 0x80000001BCE86CE0 == a2;
                                                                  if (v37 || (sub_1BCE1E090() & 1) != 0)
                                                                  {

                                                                    return 32;
                                                                  }

                                                                  else
                                                                  {
                                                                    v38 = a1 == 0xD000000000000014 && 0x80000001BCE87AA0 == a2;
                                                                    if (v38 || (sub_1BCE1E090() & 1) != 0)
                                                                    {

                                                                      return 33;
                                                                    }

                                                                    else
                                                                    {
                                                                      v39 = a1 == 0xD000000000000012 && 0x80000001BCE87AC0 == a2;
                                                                      if (v39 || (sub_1BCE1E090() & 1) != 0)
                                                                      {

                                                                        return 34;
                                                                      }

                                                                      else
                                                                      {
                                                                        v40 = a1 == 0xD000000000000023 && 0x80000001BCE863F0 == a2;
                                                                        if (v40 || (sub_1BCE1E090() & 1) != 0)
                                                                        {

                                                                          return 35;
                                                                        }

                                                                        else
                                                                        {
                                                                          v41 = a1 == 0xD000000000000021 && 0x80000001BCE863C0 == a2;
                                                                          if (v41 || (sub_1BCE1E090() & 1) != 0)
                                                                          {

                                                                            return 36;
                                                                          }

                                                                          else
                                                                          {
                                                                            v42 = a1 == 0xD000000000000017 && 0x80000001BCE869C0 == a2;
                                                                            if (v42 || (sub_1BCE1E090() & 1) != 0)
                                                                            {

                                                                              return 37;
                                                                            }

                                                                            else
                                                                            {
                                                                              v43 = a1 == 0xD000000000000015 && 0x80000001BCE869A0 == a2;
                                                                              if (v43 || (sub_1BCE1E090() & 1) != 0)
                                                                              {

                                                                                return 38;
                                                                              }

                                                                              else
                                                                              {
                                                                                v44 = a1 == 0xD000000000000017 && 0x80000001BCE86920 == a2;
                                                                                if (v44 || (sub_1BCE1E090() & 1) != 0)
                                                                                {

                                                                                  return 39;
                                                                                }

                                                                                else
                                                                                {
                                                                                  v45 = a1 == 0xD000000000000015 && 0x80000001BCE86900 == a2;
                                                                                  if (v45 || (sub_1BCE1E090() & 1) != 0)
                                                                                  {

                                                                                    return 40;
                                                                                  }

                                                                                  else
                                                                                  {
                                                                                    v46 = a1 == 0xD000000000000019 && 0x80000001BCE86010 == a2;
                                                                                    if (v46 || (sub_1BCE1E090() & 1) != 0)
                                                                                    {

                                                                                      return 41;
                                                                                    }

                                                                                    else
                                                                                    {
                                                                                      v47 = a1 == 0xD000000000000017 && 0x80000001BCE85FF0 == a2;
                                                                                      if (v47 || (sub_1BCE1E090() & 1) != 0)
                                                                                      {

                                                                                        return 42;
                                                                                      }

                                                                                      else
                                                                                      {
                                                                                        v48 = a1 == 0xD000000000000014 && 0x80000001BCE868A0 == a2;
                                                                                        if (v48 || (sub_1BCE1E090() & 1) != 0)
                                                                                        {

                                                                                          return 43;
                                                                                        }

                                                                                        else
                                                                                        {
                                                                                          v49 = a1 == 0xD000000000000012 && 0x80000001BCE86880 == a2;
                                                                                          if (v49 || (sub_1BCE1E090() & 1) != 0)
                                                                                          {

                                                                                            return 44;
                                                                                          }

                                                                                          else
                                                                                          {
                                                                                            v50 = a1 == 0x6867694C6E6F6F6DLL && a2 == 0xEE00726F6C6F4374;
                                                                                            if (v50 || (sub_1BCE1E090() & 1) != 0)
                                                                                            {

                                                                                              return 45;
                                                                                            }

                                                                                            else
                                                                                            {
                                                                                              v51 = a1 == 0xD000000000000012 && 0x80000001BCE87080 == a2;
                                                                                              if (v51 || (sub_1BCE1E090() & 1) != 0)
                                                                                              {

                                                                                                return 46;
                                                                                              }

                                                                                              else
                                                                                              {
                                                                                                v52 = a1 == 0x6867694C6E6F6F6DLL && a2 == 0xEF73756964615274;
                                                                                                if (v52 || (sub_1BCE1E090() & 1) != 0)
                                                                                                {

                                                                                                  return 47;
                                                                                                }

                                                                                                else
                                                                                                {
                                                                                                  v53 = a1 == 0x6F6C6F436E6F6F6DLL && a2 == 0xE900000000000072;
                                                                                                  if (v53 || (sub_1BCE1E090() & 1) != 0)
                                                                                                  {

                                                                                                    return 48;
                                                                                                  }

                                                                                                  else if (a1 == 0xD000000000000012 && 0x80000001BCE870A0 == a2)
                                                                                                  {

                                                                                                    return 49;
                                                                                                  }

                                                                                                  else
                                                                                                  {
                                                                                                    v55 = sub_1BCE1E090();

                                                                                                    if (v55)
                                                                                                    {
                                                                                                      return 49;
                                                                                                    }

                                                                                                    else
                                                                                                    {
                                                                                                      return 50;
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
    }
  }
}

uint64_t sub_1BCDA1244(char a1)
{
  result = 1297118057;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      return 0x656C676E416E7573;
    case 3:
    case 7:
    case 14:
    case 16:
    case 17:
    case 21:
      return 0xD000000000000011;
    case 4:
      return 0xD000000000000012;
    case 5:
    case 23:
    case 38:
    case 40:
      return 0xD000000000000015;
    case 6:
      return 0x746867694C6E7573;
    case 8:
      v4 = 1819044198;
      goto LABEL_28;
    case 9:
      return 0x6F4365676E697266;
    case 10:
      return 0x47464664756F6C63;
    case 11:
      v3 = 0x4664756F6C63;
      goto LABEL_13;
    case 12:
      v3 = 0x4264756F6C63;
LABEL_13:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x4347000000000000;
      break;
    case 13:
      result = 0x47424264756F6C63;
      break;
    case 15:
      result = 0xD000000000000012;
      break;
    case 18:
      result = 0xD000000000000012;
      break;
    case 19:
    case 25:
    case 27:
    case 29:
    case 31:
      result = 0xD000000000000016;
      break;
    case 20:
      result = 0x6361704F72617473;
      break;
    case 22:
      result = 0x746E496D6F6F6C62;
      break;
    case 24:
      result = 0xD000000000000013;
      break;
    case 26:
    case 28:
    case 30:
    case 32:
    case 33:
    case 43:
      result = 0xD000000000000014;
      break;
    case 34:
      result = 0xD000000000000012;
      break;
    case 35:
      result = 0xD000000000000023;
      break;
    case 36:
      result = 0xD000000000000021;
      break;
    case 37:
    case 39:
    case 42:
      result = 0xD000000000000017;
      break;
    case 41:
      result = 0xD000000000000019;
      break;
    case 44:
      result = 0xD000000000000012;
      break;
    case 45:
      v4 = 1852796781;
LABEL_28:
      result = v4 | 0x6867694C00000000;
      break;
    case 46:
      result = 0xD000000000000012;
      break;
    case 47:
      result = 0x6867694C6E6F6F6DLL;
      break;
    case 48:
      result = 0x6F6C6F436E6F6F6DLL;
      break;
    case 49:
      result = 0xD000000000000012;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t sub_1BCDA16A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BCDA0400(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BCDA16CC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BCDA123C();
  *a1 = result;
  return result;
}

uint64_t sub_1BCDA16F4(uint64_t a1)
{
  v2 = sub_1BCDA3AD8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BCDA1730(uint64_t a1)
{
  v2 = sub_1BCDA3AD8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void WeatherConditionLightingKeyframe.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  OUTLINED_FUNCTION_76_2();
  a30 = v33;
  a31 = v34;
  v36 = v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0E060, &unk_1BCE6CF58);
  OUTLINED_FUNCTION_3_6();
  v39 = v38;
  MEMORY[0x1EEE9AC00](v40);
  v42 = v182 - v41;
  v43 = *v31;
  v247 = *(v31 + 1);
  v44 = *(v31 + 9);
  a18 = *(v31 + 8);
  v245 = *(v31 + 10);
  v246 = v44;
  v45 = *(v31 + 3);
  v243 = *(v31 + 4);
  v244 = v45;
  v46 = *(v31 + 5);
  v242[0] = *(v31 + 6);
  v242[1] = v46;
  v47 = *(v31 + 7);
  v241[0] = *(v31 + 8);
  v241[1] = v47;
  v48 = *(v31 + 9);
  v240[0] = *(v31 + 10);
  v240[1] = v48;
  v49 = *(v31 + 11);
  v239[0] = *(v31 + 12);
  v239[1] = v49;
  v50 = *(v31 + 13);
  v238[0] = *(v31 + 14);
  v238[1] = v50;
  v51 = *(v31 + 15);
  v237[0] = *(v31 + 16);
  v237[1] = v51;
  v52 = *(v31 + 17);
  v236[0] = *(v31 + 18);
  v236[1] = v52;
  v53 = *(v31 + 19);
  v235[0] = *(v31 + 20);
  v235[1] = v53;
  v234 = *(v31 + 84);
  v233 = *(v31 + 85);
  v183 = *(v31 + 47);
  v184 = *(v31 + 45);
  v54 = v36[3];
  v55 = *(v31 + 25);
  v182[0] = *(v31 + 26);
  v182[1] = v55;
  v56 = *(v31 + 27);
  v185 = *(v31 + 28);
  v186 = v56;
  v57 = *(v31 + 29);
  v187 = *(v31 + 30);
  v188 = v57;
  v58 = *(v31 + 31);
  v189 = *(v31 + 32);
  v190 = v58;
  v59 = *(v31 + 33);
  v191 = *(v31 + 34);
  v192 = v59;
  v60 = *(v31 + 35);
  v193 = *(v31 + 36);
  v194 = v60;
  v61 = *(v31 + 37);
  v195 = *(v31 + 38);
  v196 = v61;
  v62 = *(v31 + 39);
  v197 = *(v31 + 40);
  v198 = v62;
  v63 = *(v31 + 41);
  v199 = *(v31 + 42);
  v200 = v63;
  v64 = *(v31 + 43);
  v201 = *(v31 + 44);
  v202 = v64;
  v65 = *(v31 + 45);
  v203 = *(v31 + 46);
  v204 = v65;
  v66 = *(v31 + 47);
  v205 = *(v31 + 48);
  v206 = v66;
  v67 = *(v31 + 49);
  v207 = *(v31 + 50);
  v208 = v67;
  v68 = *(v31 + 51);
  v209 = *(v31 + 52);
  v210 = v68;
  v69 = *(v31 + 53);
  v211 = *(v31 + 54);
  v212 = v69;
  v70 = *(v31 + 55);
  v213 = *(v31 + 56);
  v214 = v70;
  v71 = *(v31 + 57);
  v215 = *(v31 + 58);
  v216 = v71;
  v72 = *(v31 + 59);
  v217 = *(v31 + 60);
  v218 = v72;
  v73 = *(v31 + 61);
  v219 = *(v31 + 62);
  v220 = v73;
  v74 = *(v31 + 63);
  v221 = *(v31 + 64);
  v222 = v74;
  v223 = *(v31 + 66);
  v224 = *(v31 + 65);
  v225 = *(v31 + 68);
  v226 = *(v31 + 67);
  v227 = *(v31 + 70);
  v228 = *(v31 + 69);
  v75 = *(v31 + 143);
  v229 = *(v31 + 145);
  v230 = v75;
  v76 = *(v31 + 147);
  v231 = *(v31 + 149);
  v232 = v76;
  __swift_project_boxed_opaque_existential_1(v36, v54);
  sub_1BCDA3AD8();
  sub_1BCE1E170();
  *&v248 = v43;
  a21 = 0;
  sub_1BCA4DCAC();
  OUTLINED_FUNCTION_17();
  sub_1BCE1E020();
  if (!v32)
  {
    LOBYTE(v248) = 1;
    OUTLINED_FUNCTION_17();
    sub_1BCE1DFE0();
    v248 = v247;
    a21 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0AE00, &unk_1BCE59F40);
    sub_1BCDA3B2C(&qword_1EBD0B3D8, MEMORY[0x1E69E7458]);
    OUTLINED_FUNCTION_17();
    sub_1BCE1E020();
    OUTLINED_FUNCTION_7_65(3);
    OUTLINED_FUNCTION_17();
    sub_1BCE1E000();
    OUTLINED_FUNCTION_7_65(4);
    OUTLINED_FUNCTION_17();
    sub_1BCE1E000();
    OUTLINED_FUNCTION_7_65(5);
    OUTLINED_FUNCTION_17();
    sub_1BCE1E000();
    v248 = v244;
    v249 = v243;
    a21 = 6;
    v77 = sub_1BCA4DD00();
    OUTLINED_FUNCTION_2_96(v77, v78, v79, &type metadata for CodableColor);
    OUTLINED_FUNCTION_6_65(&a28, v242[0]);
    a21 = 7;
    OUTLINED_FUNCTION_2_96(v80, v81, v82, &type metadata for CodableColor);
    OUTLINED_FUNCTION_6_65(&a24, v241[0]);
    a21 = 8;
    OUTLINED_FUNCTION_2_96(v83, v84, v85, &type metadata for CodableColor);
    OUTLINED_FUNCTION_6_65(&a17, v240[0]);
    a21 = 9;
    OUTLINED_FUNCTION_2_96(v86, v87, v88, &type metadata for CodableColor);
    OUTLINED_FUNCTION_6_65(&a13, v239[0]);
    a21 = 10;
    OUTLINED_FUNCTION_2_96(v89, v90, v91, &type metadata for CodableColor);
    OUTLINED_FUNCTION_6_65(&a9, v238[0]);
    a21 = 11;
    OUTLINED_FUNCTION_2_96(v92, v93, v94, &type metadata for CodableColor);
    OUTLINED_FUNCTION_6_65(&v249, v237[0]);
    a21 = 12;
    OUTLINED_FUNCTION_2_96(v95, v96, v97, &type metadata for CodableColor);
    OUTLINED_FUNCTION_6_65(&v247, v236[0]);
    a21 = 13;
    OUTLINED_FUNCTION_2_96(v98, v99, v100, &type metadata for CodableColor);
    OUTLINED_FUNCTION_6_65(&v244, v235[0]);
    a21 = 14;
    OUTLINED_FUNCTION_2_96(v101, v102, v103, &type metadata for CodableColor);
    OUTLINED_FUNCTION_7_65(15);
    OUTLINED_FUNCTION_17();
    sub_1BCE1E000();
    OUTLINED_FUNCTION_7_65(16);
    OUTLINED_FUNCTION_17();
    sub_1BCE1E000();
    OUTLINED_FUNCTION_7_65(17);
    OUTLINED_FUNCTION_17();
    sub_1BCE1E000();
    OUTLINED_FUNCTION_7_65(18);
    OUTLINED_FUNCTION_17();
    sub_1BCE1E000();
    OUTLINED_FUNCTION_7_65(19);
    OUTLINED_FUNCTION_17();
    sub_1BCE1E000();
    OUTLINED_FUNCTION_7_65(20);
    OUTLINED_FUNCTION_17();
    sub_1BCE1E000();
    OUTLINED_FUNCTION_6_65(&v200, v183);
    a21 = 21;
    OUTLINED_FUNCTION_2_96(v104, v105, v106, &type metadata for CodableColor);
    OUTLINED_FUNCTION_7_65(22);
    OUTLINED_FUNCTION_17();
    sub_1BCE1E000();
    OUTLINED_FUNCTION_6_65(&v198, v182[0]);
    a21 = 23;
    OUTLINED_FUNCTION_2_96(v107, v108, v109, &type metadata for CodableColor);
    OUTLINED_FUNCTION_6_65(&v202, v185);
    a21 = 24;
    OUTLINED_FUNCTION_2_96(v110, v111, v112, &type metadata for CodableColor);
    OUTLINED_FUNCTION_6_65(&v204, v187);
    a21 = 25;
    OUTLINED_FUNCTION_2_96(v113, v114, v115, &type metadata for CodableColor);
    OUTLINED_FUNCTION_6_65(&v206, v189);
    a21 = 26;
    OUTLINED_FUNCTION_2_96(v116, v117, v118, &type metadata for CodableColor);
    OUTLINED_FUNCTION_6_65(&v208, v191);
    a21 = 27;
    OUTLINED_FUNCTION_2_96(v119, v120, v121, &type metadata for CodableColor);
    OUTLINED_FUNCTION_6_65(&v210, v193);
    a21 = 28;
    OUTLINED_FUNCTION_2_96(v122, v123, v124, &type metadata for CodableColor);
    OUTLINED_FUNCTION_6_65(&v212, v195);
    a21 = 29;
    OUTLINED_FUNCTION_2_96(v125, v126, v127, &type metadata for CodableColor);
    OUTLINED_FUNCTION_6_65(&v214, v197);
    a21 = 30;
    OUTLINED_FUNCTION_2_96(v128, v129, v130, &type metadata for CodableColor);
    OUTLINED_FUNCTION_6_65(&v216, v199);
    a21 = 31;
    OUTLINED_FUNCTION_2_96(v131, v132, v133, &type metadata for CodableColor);
    OUTLINED_FUNCTION_6_65(&v218, v201);
    a21 = 32;
    OUTLINED_FUNCTION_2_96(v134, v135, v136, &type metadata for CodableColor);
    OUTLINED_FUNCTION_6_65(&v220, v203);
    a21 = 33;
    OUTLINED_FUNCTION_2_96(v137, v138, v139, &type metadata for CodableColor);
    OUTLINED_FUNCTION_6_65(&v222, v205);
    a21 = 34;
    OUTLINED_FUNCTION_2_96(v140, v141, v142, &type metadata for CodableColor);
    OUTLINED_FUNCTION_6_65(&v224, v207);
    a21 = 35;
    OUTLINED_FUNCTION_2_96(v143, v144, v145, &type metadata for CodableColor);
    OUTLINED_FUNCTION_6_65(&v226, v209);
    a21 = 36;
    OUTLINED_FUNCTION_2_96(v146, v147, v148, &type metadata for CodableColor);
    OUTLINED_FUNCTION_6_65(&v228, v211);
    a21 = 37;
    OUTLINED_FUNCTION_2_96(v149, v150, v151, &type metadata for CodableColor);
    OUTLINED_FUNCTION_6_65(&v230, v213);
    a21 = 38;
    OUTLINED_FUNCTION_2_96(v152, v153, v154, &type metadata for CodableColor);
    OUTLINED_FUNCTION_6_65(&v232, v215);
    a21 = 39;
    OUTLINED_FUNCTION_2_96(v155, v156, v157, &type metadata for CodableColor);
    OUTLINED_FUNCTION_6_65(v235, v217);
    a21 = 40;
    OUTLINED_FUNCTION_2_96(v158, v159, v160, &type metadata for CodableColor);
    OUTLINED_FUNCTION_6_65(v236, v219);
    a21 = 41;
    OUTLINED_FUNCTION_2_96(v161, v162, v163, &type metadata for CodableColor);
    OUTLINED_FUNCTION_6_65(v237, v221);
    a21 = 42;
    OUTLINED_FUNCTION_2_96(v164, v165, v166, &type metadata for CodableColor);
    OUTLINED_FUNCTION_6_65(v238, v223);
    a21 = 43;
    OUTLINED_FUNCTION_2_96(v167, v168, v169, &type metadata for CodableColor);
    OUTLINED_FUNCTION_6_65(v239, v225);
    a21 = 44;
    OUTLINED_FUNCTION_2_96(v170, v171, v172, &type metadata for CodableColor);
    OUTLINED_FUNCTION_6_65(v240, v227);
    a21 = 45;
    OUTLINED_FUNCTION_2_96(v173, v174, v175, &type metadata for CodableColor);
    OUTLINED_FUNCTION_7_65(46);
    OUTLINED_FUNCTION_17();
    sub_1BCE1E000();
    OUTLINED_FUNCTION_7_65(47);
    OUTLINED_FUNCTION_17();
    sub_1BCE1E000();
    OUTLINED_FUNCTION_6_65(v241, v229);
    a21 = 48;
    OUTLINED_FUNCTION_2_96(v176, v177, v178, &type metadata for CodableColor);
    OUTLINED_FUNCTION_6_65(v242, v231);
    a21 = 49;
    OUTLINED_FUNCTION_2_96(v179, v180, v181, &type metadata for CodableColor);
  }

  (*(v39 + 8))(v42, v37);
  OUTLINED_FUNCTION_75();
}

void WeatherConditionLightingKeyframe.hash(into:)()
{
  v1 = *v0;
  v3 = *(v0 + 48);
  v2 = *(v0 + 56);
  v5 = *(v0 + 64);
  v4 = *(v0 + 72);
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  v10 = *(v0 + 336);
  v11 = *(v0 + 340);
  v12 = *(v0 + 344);
  v13 = *(v0 + 348);
  v14 = *(v0 + 352);
  v15 = *(v0 + 356);
  v16 = *(v0 + 392);
  v17 = *(v0 + 1136);
  v18 = *(v0 + 1140);
  MEMORY[0x1BFB30880](*&v1);
  sub_1BCE1E120();
  sub_1BCA4E13C();
  sub_1BCE1E130();
  sub_1BCE1E130();
  sub_1BCE1E130();
  if (v3 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v3;
  }

  MEMORY[0x1BFB30880](*&v6);
  if (v2 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v2;
  }

  MEMORY[0x1BFB30880](*&v7);
  if (v5 == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = v5;
  }

  MEMORY[0x1BFB30880](*&v8);
  if (v4 == 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = v4;
  }

  MEMORY[0x1BFB30880](*&v9);
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_9_56(v10);
  OUTLINED_FUNCTION_9_56(v11);
  OUTLINED_FUNCTION_9_56(v12);
  OUTLINED_FUNCTION_9_56(v13);
  OUTLINED_FUNCTION_9_56(v14);
  OUTLINED_FUNCTION_9_56(v15);
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_9_56(v16);
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_9_56(v17);
  OUTLINED_FUNCTION_9_56(v18);
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_29();
}

uint64_t WeatherConditionLightingKeyframe.hashValue.getter()
{
  sub_1BCE1E100();
  WeatherConditionLightingKeyframe.hash(into:)();
  return sub_1BCE1E150();
}

void WeatherConditionLightingKeyframe.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  OUTLINED_FUNCTION_76_2();
  v33 = v32;
  v35 = v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0E070, &qword_1BCE6CF68);
  OUTLINED_FUNCTION_3_6();
  v38 = v37;
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v97 - v40;
  __swift_project_boxed_opaque_existential_1(v33, v33[3]);
  sub_1BCDA3AD8();
  sub_1BCE1E160();
  if (!v31)
  {
    sub_1BCA4DD9C();
    sub_1BCE1DF70();
    v42 = v170;
    OUTLINED_FUNCTION_1_84(1);
    v43 = sub_1BCE1DF30();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0AE00, &unk_1BCE59F40);
    sub_1BCDA3B2C(&qword_1EBD0B438, MEMORY[0x1E69E7468]);
    sub_1BCE1DF70();
    v169 = v170;
    OUTLINED_FUNCTION_1_84(3);
    sub_1BCE1DF50();
    v45 = v44;
    OUTLINED_FUNCTION_1_84(4);
    sub_1BCE1DF50();
    v47 = v46;
    OUTLINED_FUNCTION_1_84(5);
    sub_1BCE1DF50();
    v49 = v48;
    sub_1BCA4DE40();
    OUTLINED_FUNCTION_0_82(&type metadata for CodableColor);
    v167 = v171;
    v168 = v170;
    OUTLINED_FUNCTION_0_82(&type metadata for CodableColor);
    v165 = v171;
    v166 = v170;
    OUTLINED_FUNCTION_0_82(&type metadata for CodableColor);
    v163 = v171;
    v164 = v170;
    OUTLINED_FUNCTION_0_82(&type metadata for CodableColor);
    v161 = v171;
    v162 = v170;
    OUTLINED_FUNCTION_0_82(&type metadata for CodableColor);
    v159 = v171;
    v160 = v170;
    OUTLINED_FUNCTION_0_82(&type metadata for CodableColor);
    v157 = v171;
    v158 = v170;
    OUTLINED_FUNCTION_0_82(&type metadata for CodableColor);
    v155 = v171;
    v156 = v170;
    OUTLINED_FUNCTION_0_82(&type metadata for CodableColor);
    v153 = v171;
    v154 = v170;
    OUTLINED_FUNCTION_0_82(&type metadata for CodableColor);
    v151 = v171;
    v152 = v170;
    OUTLINED_FUNCTION_1_84(15);
    sub_1BCE1DF50();
    v51 = v50;
    OUTLINED_FUNCTION_1_84(16);
    sub_1BCE1DF50();
    v53 = v52;
    OUTLINED_FUNCTION_1_84(17);
    sub_1BCE1DF50();
    v55 = v54;
    OUTLINED_FUNCTION_1_84(18);
    sub_1BCE1DF50();
    v57 = v56;
    OUTLINED_FUNCTION_1_84(19);
    sub_1BCE1DF50();
    v172 = v58;
    OUTLINED_FUNCTION_1_84(20);
    sub_1BCE1DF50();
    OUTLINED_FUNCTION_63_5(&v166 + 12, v59);
    OUTLINED_FUNCTION_0_82(&type metadata for CodableColor);
    v148 = v171;
    v149 = v170;
    OUTLINED_FUNCTION_1_84(22);
    sub_1BCE1DF50();
    OUTLINED_FUNCTION_63_5(&v163 + 12, v60);
    OUTLINED_FUNCTION_0_82(&type metadata for CodableColor);
    v146 = v171;
    v145 = v170;
    OUTLINED_FUNCTION_0_82(&type metadata for CodableColor);
    v144 = v171;
    v143 = v170;
    OUTLINED_FUNCTION_0_82(&type metadata for CodableColor);
    v142 = v171;
    v141 = v170;
    OUTLINED_FUNCTION_0_82(&type metadata for CodableColor);
    v140 = v171;
    v139 = v170;
    OUTLINED_FUNCTION_0_82(&type metadata for CodableColor);
    v138 = v171;
    v137 = v170;
    OUTLINED_FUNCTION_0_82(&type metadata for CodableColor);
    v136 = v171;
    v135 = v170;
    OUTLINED_FUNCTION_0_82(&type metadata for CodableColor);
    v134 = v171;
    v133 = v170;
    OUTLINED_FUNCTION_0_82(&type metadata for CodableColor);
    v132 = v171;
    v131 = v170;
    OUTLINED_FUNCTION_0_82(&type metadata for CodableColor);
    v130 = v171;
    v129 = v170;
    OUTLINED_FUNCTION_0_82(&type metadata for CodableColor);
    v128 = v171;
    v127 = v170;
    OUTLINED_FUNCTION_0_82(&type metadata for CodableColor);
    v126 = v171;
    v125 = v170;
    OUTLINED_FUNCTION_0_82(&type metadata for CodableColor);
    v124 = v171;
    v123 = v170;
    OUTLINED_FUNCTION_0_82(&type metadata for CodableColor);
    v122 = v171;
    v121 = v170;
    OUTLINED_FUNCTION_0_82(&type metadata for CodableColor);
    v120 = v171;
    v119 = v170;
    OUTLINED_FUNCTION_0_82(&type metadata for CodableColor);
    v118 = v171;
    v117 = v170;
    OUTLINED_FUNCTION_0_82(&type metadata for CodableColor);
    v116 = v171;
    v115 = v170;
    OUTLINED_FUNCTION_0_82(&type metadata for CodableColor);
    v114 = v171;
    v113 = v170;
    OUTLINED_FUNCTION_0_82(&type metadata for CodableColor);
    v112 = v171;
    v111 = v170;
    OUTLINED_FUNCTION_0_82(&type metadata for CodableColor);
    v110 = v171;
    v109 = v170;
    OUTLINED_FUNCTION_0_82(&type metadata for CodableColor);
    v108 = v171;
    v107 = v170;
    OUTLINED_FUNCTION_0_82(&type metadata for CodableColor);
    v106 = v171;
    v105 = v170;
    OUTLINED_FUNCTION_0_82(&type metadata for CodableColor);
    v104 = v171;
    v103 = v170;
    OUTLINED_FUNCTION_0_82(&type metadata for CodableColor);
    v102 = v171;
    v101 = v170;
    OUTLINED_FUNCTION_1_84(46);
    sub_1BCE1DF50();
    OUTLINED_FUNCTION_63_5(&v116 + 12, v61);
    OUTLINED_FUNCTION_1_84(47);
    sub_1BCE1DF50();
    OUTLINED_FUNCTION_63_5(&v116 + 8, v62);
    OUTLINED_FUNCTION_0_82(&type metadata for CodableColor);
    v98 = v171;
    v97 = v170;
    OUTLINED_FUNCTION_0_82(&type metadata for CodableColor);
    (*(v38 + 8))(v41, v36);
    *v35 = v42;
    *(v35 + 16) = v169;
    *(v35 + 32) = v45;
    *(v35 + 36) = v47;
    *(v35 + 40) = v49;
    v63 = v167;
    *(v35 + 48) = v168;
    *(v35 + 64) = v63;
    v64 = v165;
    *(v35 + 80) = v166;
    *(v35 + 96) = v64;
    v65 = v163;
    *(v35 + 112) = v164;
    *(v35 + 128) = v65;
    v66 = v161;
    *(v35 + 144) = v162;
    *(v35 + 160) = v66;
    v67 = v159;
    *(v35 + 176) = v160;
    *(v35 + 192) = v67;
    v68 = v157;
    *(v35 + 208) = v158;
    *(v35 + 224) = v68;
    v69 = v155;
    *(v35 + 240) = v156;
    *(v35 + 256) = v69;
    v70 = v153;
    *(v35 + 272) = v154;
    *(v35 + 288) = v70;
    v71 = v151;
    *(v35 + 304) = v152;
    *(v35 + 320) = v71;
    *(v35 + 336) = v51;
    *(v35 + 340) = v53;
    *(v35 + 344) = v55;
    *(v35 + 348) = v57;
    *(v35 + 352) = v172;
    *(v35 + 356) = v150;
    *(v35 + 376) = v148;
    *(v35 + 360) = v149;
    *(v35 + 392) = v147;
    v72 = v146;
    *(v35 + 400) = v145;
    *(v35 + 416) = v72;
    v73 = v144;
    *(v35 + 432) = v143;
    *(v35 + 448) = v73;
    v74 = v142;
    *(v35 + 464) = v141;
    *(v35 + 480) = v74;
    v75 = v140;
    *(v35 + 496) = v139;
    *(v35 + 512) = v75;
    v76 = v138;
    *(v35 + 528) = v137;
    *(v35 + 544) = v76;
    v77 = v136;
    *(v35 + 560) = v135;
    *(v35 + 576) = v77;
    v78 = v134;
    *(v35 + 592) = v133;
    *(v35 + 608) = v78;
    v79 = v132;
    *(v35 + 624) = v131;
    *(v35 + 640) = v79;
    v80 = v130;
    *(v35 + 656) = v129;
    *(v35 + 672) = v80;
    *(v35 + 8) = v43 & 1;
    v81 = v128;
    *(v35 + 688) = v127;
    *(v35 + 704) = v81;
    v82 = v126;
    *(v35 + 720) = v125;
    *(v35 + 736) = v82;
    v83 = v124;
    *(v35 + 752) = v123;
    *(v35 + 768) = v83;
    v84 = v122;
    *(v35 + 784) = v121;
    *(v35 + 800) = v84;
    v85 = v120;
    *(v35 + 816) = v119;
    *(v35 + 832) = v85;
    v86 = v118;
    *(v35 + 848) = v117;
    *(v35 + 864) = v86;
    v87 = v116;
    *(v35 + 880) = v115;
    *(v35 + 896) = v87;
    v88 = v114;
    *(v35 + 912) = v113;
    *(v35 + 928) = v88;
    v89 = v112;
    *(v35 + 944) = v111;
    *(v35 + 960) = v89;
    v90 = v110;
    *(v35 + 976) = v109;
    *(v35 + 992) = v90;
    v91 = v108;
    *(v35 + 1008) = v107;
    *(v35 + 1024) = v91;
    v92 = v106;
    *(v35 + 1040) = v105;
    *(v35 + 1056) = v92;
    v93 = v104;
    *(v35 + 1072) = v103;
    *(v35 + 1088) = v93;
    v94 = v102;
    *(v35 + 1104) = v101;
    *(v35 + 1120) = v94;
    *(v35 + 1136) = v100;
    *(v35 + 1140) = v99;
    v95 = v98;
    *(v35 + 1144) = v97;
    *(v35 + 1160) = v95;
    v96 = v171;
    *(v35 + 1176) = v170;
    *(v35 + 1192) = v96;
  }

  __swift_destroy_boxed_opaque_existential_1(v33);
  OUTLINED_FUNCTION_75();
}

uint64_t sub_1BCDA3A78(uint64_t a1)
{
  sub_1BCE1E100();
  WeatherConditionLightingKeyframe.hash(into:)();
  return sub_1BCE1E150();
}

void *WeatherConditionLightingKeyframe.atElevation(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 8);
  *a2 = *a1;
  *(a2 + 8) = v3;
  return memcpy((a2 + 9), (v2 + 9), 0x4AFuLL);
}

unint64_t sub_1BCDA3AD8()
{
  result = qword_1EBD0E068;
  if (!qword_1EBD0E068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0E068);
  }

  return result;
}

uint64_t sub_1BCDA3B2C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD0AE00, &unk_1BCE59F40);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BCDA3B80()
{
  result = qword_1EBD0E078;
  if (!qword_1EBD0E078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0E078);
  }

  return result;
}

unint64_t sub_1BCDA3BD8()
{
  result = qword_1EBD0E080;
  if (!qword_1EBD0E080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0E080);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LightingKeyframeSet(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1BCDA3D10(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 1208))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
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

uint64_t sub_1BCDA3D5C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
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
    *(result + 1192) = 0u;
    *(result + 1176) = 0u;
    *(result + 1160) = 0u;
    *(result + 1144) = 0u;
    *(result + 1128) = 0u;
    *(result + 1112) = 0u;
    *(result + 1096) = 0u;
    *(result + 1080) = 0u;
    *(result + 1064) = 0u;
    *(result + 1048) = 0u;
    *(result + 1032) = 0u;
    *(result + 1016) = 0u;
    *(result + 1000) = 0u;
    *(result + 984) = 0u;
    *(result + 968) = 0u;
    *(result + 952) = 0u;
    *(result + 936) = 0u;
    *(result + 920) = 0u;
    *(result + 904) = 0u;
    *(result + 888) = 0u;
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 1208) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 1208) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}