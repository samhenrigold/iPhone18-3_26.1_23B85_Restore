void sub_1E399060C()
{
  OUTLINED_FUNCTION_31_1();
  v36 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8, &unk_1E429B6E0);
  OUTLINED_FUNCTION_0_10();
  v35 = v3;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_31_2();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29210, &qword_1E4299980);
  v6 = OUTLINED_FUNCTION_17_2(v5);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v35 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF289B0, &unk_1E4297EA0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v35 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F898, &qword_1E42AF030);
  v17 = OUTLINED_FUNCTION_17_2(v16);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v21 = OUTLINED_FUNCTION_62_11();
  _s8VideosUI15ClockScoresViewVMa_0(v21);
  OUTLINED_FUNCTION_36();
  v24 = (*(v22 + 1304))(v23);
  v25 = 1;
  if (v24)
  {
    memset(v37, 0, sizeof(v37));
    v38 = 1;
    sub_1E382A9B4(v24, v37, 0, v15);

    *&v15[*(v12 + 36)] = 257;
    sub_1E3741EA0(v15, v0, &qword_1ECF289B0, &unk_1E4297EA0);
    v25 = 0;
  }

  v26 = 1;
  __swift_storeEnumTagSinglePayload(v0, v25, 1, v12);
  OUTLINED_FUNCTION_36();
  if ((*(v27 + 1952))(v28))
  {
    OUTLINED_FUNCTION_18();
    sub_1E3F23370();

    OUTLINED_FUNCTION_30_27();
    v30(v29);
    v26 = 0;
  }

  __swift_storeEnumTagSinglePayload(v11, v26, 1, v2);
  sub_1E3743538(v0, v19, &qword_1ECF2F898, &qword_1E42AF030);
  v31 = OUTLINED_FUNCTION_74();
  sub_1E3743538(v31, v32, &qword_1ECF29210, &qword_1E4299980);
  v33 = v36;
  sub_1E3743538(v19, v36, &qword_1ECF2F898, &qword_1E42AF030);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F8A0, &unk_1E42AF038);
  sub_1E3743538(v8, v33 + *(v34 + 48), &qword_1ECF29210, &qword_1E4299980);
  sub_1E325F69C(v11, &qword_1ECF29210);
  sub_1E325F69C(v0, &qword_1ECF2F898);
  sub_1E325F69C(v8, &qword_1ECF29210);
  sub_1E325F69C(v19, &qword_1ECF2F898);
  OUTLINED_FUNCTION_25_2();
}

unint64_t sub_1E39909FC()
{
  result = qword_1EE289098;
  if (!qword_1EE289098)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2F820, &qword_1E42AEF80);
    sub_1E3990AB8(&unk_1EE29E8D0);
    sub_1E3990AFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289098);
  }

  return result;
}

unint64_t sub_1E3990AB8(uint64_t a1)
{
  result = OUTLINED_FUNCTION_48_0(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1E3990AFC()
{
  result = qword_1EE2897E0;
  if (!qword_1EE2897E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2F810, &qword_1E42AEF70);
    sub_1E3743478(&unk_1EE2885F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2897E0);
  }

  return result;
}

void sub_1E3990BB4()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  v4 = sub_1E4202494();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9_12();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F8E8, &qword_1E42AF278);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_49_2();
  v10 = sub_1E4201D44();
  v11 = sub_1E3EB0AEC();
  *v1 = v10;
  *(v1 + 8) = v11;
  *(v1 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F8F0, &qword_1E42AF280);
  sub_1E3990DEC();
  v12 = (*(*v3 + 2288))();
  sub_1E3EB0730(v12);

  sub_1E4203DA4();
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_15_54();
  sub_1E4200D94();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F8F8, &qword_1E42AF288);
  OUTLINED_FUNCTION_67_3(v1 + *(v13 + 36));
  v14 = sub_1E4202724();
  sub_1E3EB0AF4(v14);
  sub_1E4200A54();
  v15 = v1 + *(v8 + 36);
  *v15 = v14;
  *(v15 + 8) = v16;
  *(v15 + 16) = v17;
  *(v15 + 24) = v18;
  *(v15 + 32) = v19;
  *(v15 + 40) = 0;
  sub_1E4202474();
  sub_1E399415C();
  sub_1E4203224();
  (*(v6 + 8))(v0, v4);
  sub_1E325F69C(v1, &qword_1ECF2F8E8);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3990DEC()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  v129 = v4;
  v136 = v5;
  v124 = type metadata accessor for SportsClockView(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_17_3(v8 - v7);
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BF90, &qword_1E42A67D8);
  OUTLINED_FUNCTION_0_10();
  v126 = v9;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v11);
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F920, &qword_1E42AF2A0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_2_5();
  v125 = v13;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v15);
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F928, &qword_1E42AF2A8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v17);
  v118[1] = type metadata accessor for BaseballClockView(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_17_3(v20 - v19);
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F930, &qword_1E42AF2B0);
  OUTLINED_FUNCTION_0_10();
  v120 = v21;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v23);
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F938, &qword_1E42AF2B8);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_2_5();
  v119 = v25;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v27);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F940, &unk_1E42AF2C0);
  v29 = OUTLINED_FUNCTION_17_2(v28);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_2_5();
  v133 = v30;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v32);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF289B8, &qword_1E4297EB0);
  OUTLINED_FUNCTION_0_10();
  v35 = v34;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_31_2();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F948, &qword_1E42AF2D0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_26_2();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F950, &qword_1E42AF2D8);
  v40 = OUTLINED_FUNCTION_17_2(v39);
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_2_5();
  v130 = v41;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v42);
  v44 = v118 - v43;
  v45 = *(*v3 + 1304);

  v47 = v45(v46);
  v48 = 1;
  if (v47)
  {
    memset(v138, 0, sizeof(v138));
    v139 = 1;
    sub_1E382A9B4(v47, v138, 0, v1);
    swift_getOpaqueTypeConformance2();
    OUTLINED_FUNCTION_41_0();
    View.accessibilityIdentifier(key:location:)();

    (*(v35 + 8))(v1, v33);
    *(v0 + *(v37 + 36)) = 257;
    sub_1E3741EA0(v0, v44, &qword_1ECF2F948, &qword_1E42AF2D0);
    v48 = 0;
  }

  __swift_storeEnumTagSinglePayload(v44, v48, 1, v37);
  type metadata accessor for SportsBaseballScoreboardViewModel(0);
  v49 = swift_dynamicCastClass();
  v50 = v129;
  v51 = v128;
  if (!v49)
  {
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_30();
  v53 = *(v52 + 2120);

  if ((v53(v54) & 1) == 0 || (swift_beginAccess(), v50[136] != 1))
  {

LABEL_12:

    OUTLINED_FUNCTION_111();
    (*(v83 + 1520))();
    sub_1E3EB0594();
    OUTLINED_FUNCTION_18();
    v84 = v123;
    sub_1E3B476D4();
    sub_1E3994D54(qword_1EE2800B8);
    OUTLINED_FUNCTION_41_0();
    View.accessibilityIdentifier(key:location:)();
    sub_1E39942A0(v84, type metadata accessor for SportsClockView);
    v85 = sub_1E3EB0594();
    (*(*v85 + 224))();

    sub_1E4203DA4();
    OUTLINED_FUNCTION_15_54();
    OUTLINED_FUNCTION_71_13();
    OUTLINED_FUNCTION_99_1(v86, v87, v88, v89, v90, v91, v92, v93, 0);
    v94 = v125;
    (*(v126 + 32))(v125, v51, v127);
    memcpy((v94 + *(v135 + 36)), v137, 0x70uLL);
    OUTLINED_FUNCTION_19_1();
    sub_1E3741EA0(v95, v96, v97, v98);
    OUTLINED_FUNCTION_19_1();
    sub_1E3743538(v99, v100, v101, v102);
    swift_storeEnumTagMultiPayload();
    sub_1E39942F8();
    sub_1E39943E4();
    OUTLINED_FUNCTION_45_21();
    sub_1E4201F44();
    OUTLINED_FUNCTION_21_1();
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_8();
  v56 = (*(v55 + 2432))();
  OUTLINED_FUNCTION_8();
  v58 = (*(v57 + 1520))();
  v60 = v59;
  v62 = v61;

  v63 = sub_1E3EB0594();
  v64 = OUTLINED_FUNCTION_51_1();
  v65 = v118[0];
  sub_1E3DF3424(v58, v60, v62, 1, 3, v63, v64 & 1, v118[0]);
  sub_1E3994D54(qword_1EE27C190);
  OUTLINED_FUNCTION_41_0();
  View.accessibilityIdentifier(key:location:)();
  sub_1E39942A0(v65, type metadata accessor for BaseballClockView);
  v66 = sub_1E3EB0594();
  (*(*v66 + 224))();
  OUTLINED_FUNCTION_145();

  sub_1E4203DA4();
  if ((v56 & 1) == 0)
  {
    OUTLINED_FUNCTION_38_17();
    if (v67)
    {
      v68 = sub_1E4206804();
      v50 = sub_1E42026D4();
      OUTLINED_FUNCTION_108(v68, &dword_1E323F000, v50, "Contradictory frame constraints specified.");
    }
  }

  OUTLINED_FUNCTION_15_54();
  OUTLINED_FUNCTION_71_13();
  OUTLINED_FUNCTION_99_1(v69, v70, v71, v72, v73, v74, v75, v76, 0);
  v77 = v119;
  v78 = OUTLINED_FUNCTION_125();
  v79(v78);
  memcpy((v77 + *(v131 + 36)), v137, 0x70uLL);
  v80 = v122;
  sub_1E3741EA0(v77, v122, &qword_1ECF2F938, &qword_1E42AF2B8);
  sub_1E3743538(v80, v134, &qword_1ECF2F938, &qword_1E42AF2B8);
  swift_storeEnumTagMultiPayload();
  sub_1E39942F8();
  sub_1E39943E4();
  OUTLINED_FUNCTION_45_21();
  sub_1E4201F44();

  v81 = v80;
  v82 = &qword_1ECF2F938;
LABEL_13:
  sub_1E325F69C(v81, v82);
  OUTLINED_FUNCTION_19_1();
  sub_1E3743538(v103, v104, v105, v106);
  v107 = v133;
  sub_1E3743538(v50, v133, &qword_1ECF2F940, &unk_1E42AF2C0);
  v108 = v136;
  OUTLINED_FUNCTION_19_1();
  sub_1E3743538(v109, v110, v111, v112);
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F958, &qword_1E42AF2E0);
  sub_1E3743538(v107, v108 + *(v113 + 48), &qword_1ECF2F940, &unk_1E42AF2C0);
  sub_1E325F69C(v50, &qword_1ECF2F940);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F69C(v114, v115);
  sub_1E325F69C(v107, &qword_1ECF2F940);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F69C(v116, v117);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3991A00(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F8A8, &qword_1E42AF230);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_49_2();
  *v1 = sub_1E4203DA4();
  v1[1] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F8B0, &unk_1E42AF238);
  OUTLINED_FUNCTION_125();
  sub_1E3991B20();
  *(v1 + *(v3 + 52)) = a1;
  sub_1E3743478(&unk_1EE288560);

  OUTLINED_FUNCTION_30_27();
  sub_1E4202ED4();
  return sub_1E325F69C(v1, &qword_1ECF2F8A8);
}

void sub_1E3991B20()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  v61 = v4;
  v6 = v5;
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BF48, &qword_1E42A6780);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  v12 = v60 - v11;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F8B8, &qword_1E42AF248);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_26_2();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F8C0, &qword_1E42AF250);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_49_2();
  OUTLINED_FUNCTION_111();
  v17 = (*(v16 + 128))();
  if (v17)
  {
    v18 = v17;
    OUTLINED_FUNCTION_111();
    if (((*(v19 + 200))() & 1) == 0)
    {
      sub_1E3EB009C();
      OUTLINED_FUNCTION_30();
      (*(v25 + 1696))();
      v60[0] = v14;
      v62 = v8;

      j__OUTLINED_FUNCTION_51_1();
      v26 = j__OUTLINED_FUNCTION_18();
      v60[1] = v9;
      v27 = v26;
      v59 = j__OUTLINED_FUNCTION_18() & 1;
      OUTLINED_FUNCTION_71_13();
      sub_1E3EB9C0C(v28, v29, v30, v31, v32, v33, v34, 2, v35, 0, 1, 0, 1, 0, 2, v27 & 1, v59);
      *v1 = sub_1E4201D44();
      *(v1 + 8) = 0;
      *(v1 + 16) = 1;
      v36 = v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F8D8, &qword_1E42AF268) + 44);
      v37 = swift_allocObject();
      v38 = v61;
      v37[2] = v6;
      v37[3] = v38;
      v37[4] = v3;

      v39 = OUTLINED_FUNCTION_18();
      sub_1E37E8BE8(v18, v64, 0, v39 & 1, sub_1E39940E4, v37, v36);

      *(v36 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F8E0, &qword_1E42AF270) + 36)) = 1;
      sub_1E3EB009C();
      OUTLINED_FUNCTION_30();
      (*(v40 + 200))();

      v41 = *sub_1E3EB009C();
      (*(v41 + 304))();

      sub_1E4203DA4();
      OUTLINED_FUNCTION_59();
      sub_1E4200D94();
      v42 = (v1 + *(v60[0] + 36));
      v43 = v64[7];
      *v42 = v64[6];
      v42[1] = v43;
      v42[2] = v64[8];
      OUTLINED_FUNCTION_19_1();
      sub_1E3743538(v44, v45, v46, v47);
      swift_storeEnumTagMultiPayload();
      sub_1E399402C();
      sub_1E399462C(&unk_1EE289C90);
      OUTLINED_FUNCTION_125();
      sub_1E4201F44();

      sub_1E375C31C(v64);
      OUTLINED_FUNCTION_21_1();
      sub_1E325F69C(v48, v49);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F8C8, &qword_1E42AF258);
      goto LABEL_7;
    }
  }

  OUTLINED_FUNCTION_111();
  if ((*(v20 + 152))())
  {
    sub_1E3EB1518();
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_32_0();
    sub_1E3F23370();

    sub_1E3EB009C();
    OUTLINED_FUNCTION_30();
    (*(v21 + 200))();
    v62 = v8;

    v22 = *sub_1E3EB009C();
    (*(v22 + 304))();

    sub_1E4203DA4();
    OUTLINED_FUNCTION_59();
    sub_1E4200D94();
    v23 = &v12[*(v9 + 36)];
    v24 = v64[1];
    *v23 = v64[0];
    *(v23 + 1) = v24;
    *(v23 + 2) = v64[2];
    sub_1E3743538(v12, v0, &qword_1ECF2BF48, &qword_1E42A6780);
    swift_storeEnumTagMultiPayload();
    sub_1E399402C();
    sub_1E399462C(&unk_1EE289C90);
    sub_1E4201F44();

    sub_1E325F69C(v12, &qword_1ECF2BF48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F8C8, &qword_1E42AF258);
LABEL_7:
    OUTLINED_FUNCTION_114();
    __swift_storeEnumTagSinglePayload(v50, v51, v52, v53);
    OUTLINED_FUNCTION_25_2();
    return;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F8C8, &qword_1E42AF258);
  OUTLINED_FUNCTION_43_2();
  OUTLINED_FUNCTION_25_2();

  __swift_storeEnumTagSinglePayload(v54, v55, v56, v57);
}

void sub_1E39921B8()
{
  OUTLINED_FUNCTION_31_1();
  v3 = sub_1E4202494();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9_12();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F960, &qword_1E42AF2E8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_31_2();
  *v2 = sub_1E4201D44();
  *(v2 + 8) = 0;
  *(v2 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F968, &qword_1E42AF2F0);
  sub_1E3992354();
  sub_1E3EB0F44(*(v0 + 8));
  sub_1E4203DA4();
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_15_54();
  sub_1E4200D94();
  OUTLINED_FUNCTION_67_3(v2 + *(v7 + 36));
  sub_1E4202474();
  sub_1E39944D0();
  sub_1E4203224();
  (*(v5 + 8))(v1, v3);
  sub_1E325F69C(v2, &qword_1ECF2F960);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3992354()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v55 = v2;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F988, &qword_1E42AF300);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_44();
  v48 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F990, &qword_1E42AF308);
  OUTLINED_FUNCTION_0_10();
  v51 = v6;
  v52 = v5;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_44();
  v50 = v8;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F998, &qword_1E42AF310);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_44();
  v47 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F9A0, &qword_1E42AF318);
  v12 = OUTLINED_FUNCTION_17_2(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_2_5();
  v54 = v13;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_25_3();
  v57 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F9A8, &qword_1E42AF320);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v46 - v17;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F9B0, &unk_1E42AF328);
  OUTLINED_FUNCTION_0_10();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_2_5();
  v23 = v22;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v46 - v25;
  sub_1E3992804(v18);
  sub_1E3994588();
  v27 = 1;
  v28 = v26;
  OUTLINED_FUNCTION_41_0();
  View.accessibilityIdentifier(key:location:)();
  sub_1E325F69C(v18, &qword_1ECF2F9A8);
  if (*(v1 + 40) == 1)
  {
    v29 = v48;
    sub_1E3992974();
    sub_1E3994698();
    v30 = v50;
    OUTLINED_FUNCTION_41_0();
    View.accessibilityIdentifier(key:location:)();
    sub_1E325F69C(v29, &qword_1ECF2F988);
    v31 = sub_1E4203D94();
    v33 = v32;
    v34 = v47;
    v35 = v47 + *(v56 + 36);
    sub_1E3992D5C();
    v36 = (v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F9F8, &qword_1E42AF360) + 36));
    *v36 = v31;
    v36[1] = v33;
    (*(v51 + 32))(v34, v30, v52);
    sub_1E3741EA0(v34, v57, &qword_1ECF2F998, &qword_1E42AF310);
    v27 = 0;
  }

  v37 = v57;
  __swift_storeEnumTagSinglePayload(v57, v27, 1, v56);
  v38 = v20;
  v39 = *(v20 + 16);
  v40 = v53;
  v39(v23, v28, v53);
  v41 = v54;
  sub_1E3743538(v37, v54, &qword_1ECF2F9A0, &qword_1E42AF318);
  v42 = v55;
  v43 = OUTLINED_FUNCTION_48_9();
  (v39)(v43);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F9B8, &qword_1E42AF338);
  sub_1E3743538(v41, v42 + *(v44 + 48), &qword_1ECF2F9A0, &qword_1E42AF318);
  sub_1E325F69C(v37, &qword_1ECF2F9A0);
  v45 = *(v38 + 8);
  v45(v28, v40);
  sub_1E325F69C(v41, &qword_1ECF2F9A0);
  v45(v23, v40);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3992804@<X0>(uint64_t a1@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CC0, &qword_1E4298440);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_26_2();
  if (*(v1 + 32))
  {

    sub_1E3EB11B0();
    OUTLINED_FUNCTION_18();
    sub_1E3F23370();

    v11.n128_f64[0] = sub_1E3EB16A0(*(v1 + 40), v10);
    j_nullsub_1(v11, v12, v13, v14);
    v15 = OUTLINED_FUNCTION_41_8();

    v16 = v2 + *(v8 + 36);
    *v16 = v15;
    *(v16 + 8) = v3;
    *(v16 + 16) = v4;
    *(v16 + 24) = v5;
    *(v16 + 32) = v6;
    *(v16 + 40) = 0;
    sub_1E3741EA0(v2, a1, &qword_1ECF28CC0, &qword_1E4298440);
    OUTLINED_FUNCTION_114();
    return __swift_storeEnumTagSinglePayload(v17, v18, v19, v8);
  }

  else
  {

    return __swift_storeEnumTagSinglePayload(a1, 1, 1, v8);
  }
}

void sub_1E3992974()
{
  OUTLINED_FUNCTION_31_1();
  v4 = v3;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8, &unk_1E429B6E0);
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v47 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FA40, &qword_1E42AF3E8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  v12 = v47 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F9E0, &qword_1E42AF348);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_63_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F9D0, &qword_1E42AF340);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_9_12();
  v17 = v0[3];
  if (v17)
  {
    v48 = v16;
    v49 = v4;
    v18 = *v0;
    swift_beginAccess();
    LODWORD(v18) = *(v18 + 99);

    if (v18 == 1)
    {
      *v2 = sub_1E4203DA4();
      v2[1] = v21;
      v22 = v2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FA48, &qword_1E42AF3F0) + 44);
      v47[1] = sub_1E3993200(v17, v23, v24);
      v25 = OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_72_11(v25);
      *&v22[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FA50, &qword_1E42AF3F8) + 52)] = v17;

      sub_1E4200DC4();
      sub_1E4200DC4();
      v26 = sub_1E4200DB4();

      *&v22[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FA58, &qword_1E42AF400) + 36)] = v26;
      v27 = sub_1E4203E64();

      v28 = &v22[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FA60, &qword_1E42AF408) + 36)];
      *v28 = v27;
      v28[1] = v17;
      *(v2 + *(v13 + 36)) = 0;
      OUTLINED_FUNCTION_19_1();
      sub_1E3743538(v29, v30, v31, v32);
      swift_storeEnumTagMultiPayload();
      v33 = sub_1E39947C0();
      OUTLINED_FUNCTION_7_84(v33);
      OUTLINED_FUNCTION_40_25();
      sub_1E4201F44();
      OUTLINED_FUNCTION_21_1();
      sub_1E325F69C(v34, v35);
    }

    else
    {
      sub_1E3993200(v17, v19, v20);
      v41 = OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_72_11(v41);
      v42 = v50;
      (*(v6 + 16))(v12, v9, v50);
      swift_storeEnumTagMultiPayload();
      v43 = sub_1E39947C0();
      OUTLINED_FUNCTION_7_84(v43);
      OUTLINED_FUNCTION_40_25();
      sub_1E4201F44();

      (*(v6 + 8))(v9, v42);
    }

    sub_1E3741EA0(v1, v49, &qword_1ECF2F9D0, &qword_1E42AF340);
    OUTLINED_FUNCTION_114();
    __swift_storeEnumTagSinglePayload(v44, v45, v46, v48);
    OUTLINED_FUNCTION_25_2();
  }

  else
  {
    OUTLINED_FUNCTION_43_2();
    OUTLINED_FUNCTION_25_2();

    __swift_storeEnumTagSinglePayload(v36, v37, v38, v39);
  }
}

uint64_t sub_1E3992D5C()
{
  sub_1E4201CF4();
  OUTLINED_FUNCTION_0_10();
  v38 = v4;
  v39 = v3;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9_12();
  sub_1E4201324();
  OUTLINED_FUNCTION_0_10();
  v36 = v6;
  v37 = v5;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v9 = (v8 - v7);
  sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v34 = v11;
  v35 = v10;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_63_3();
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FA00, &qword_1E42AF368) - 8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_44();
  v33 = v13;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FA08, &qword_1E42AF370);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_44();
  v41 = v15;
  sub_1E42037C4();
  v16 = *sub_1E3E5FDEC();
  sub_1E4203644();
  swift_getKeyPath();
  v17 = sub_1E3EB0430();
  _s8VideosUI19CompetitorScoreViewVMa_0(0);
  sub_1E3746E10(v2);
  sub_1E374709C(v9);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FA10, &unk_1E42BAB00);
  v19 = sub_1E39948A4();
  OUTLINED_FUNCTION_168();
  v20 = j__OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_168();
  sub_1E37B5FBC(v21);
  OUTLINED_FUNCTION_168();
  v22 = j__OUTLINED_FUNCTION_18();
  sub_1E37B6028(v17, v2, v9, v20, v1, v22 & 1, v18, v19, v33);

  (*(v38 + 8))(v1, v39);
  (*(v36 + 8))(v9, v37);
  (*(v34 + 8))(v2, v35);

  v23 = (v33 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FA18, &qword_1E42AF3A8) + 36));
  v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FA20, &qword_1E42AF3B0) + 28);
  v25 = *MEMORY[0x1E69816C8];
  sub_1E4203814();
  OUTLINED_FUNCTION_2();
  (*(v26 + 104))(v23 + v24, v25);
  KeyPath = swift_getKeyPath();
  *v23 = KeyPath;
  v29 = sub_1E3EB0404(KeyPath, v28);
  v30 = v33 + *(v40 + 44);
  *v30 = 0;
  *(v30 + 8) = v29;
  if (*(v0 + 41) == 1)
  {
    if (OUTLINED_FUNCTION_18())
    {
      v31 = 1.0;
    }

    else
    {
      v31 = 0.0;
    }
  }

  else
  {
    v31 = 0.0;
  }

  sub_1E3741EA0(v33, v41, &qword_1ECF2FA00, &qword_1E42AF368);
  *(v41 + *(v42 + 36)) = v31;
  sub_1E3994A60();
  OUTLINED_FUNCTION_41_0();
  View.accessibilityIdentifier(key:location:)();
  return sub_1E325F69C(v41, &qword_1ECF2FA08);
}

uint64_t sub_1E3993200(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = TVAppFeature.isEnabled.getter(20, a2, a3);
  v4 = sub_1E3EB0B9C();
  if (v3)
  {
    v9[3] = &unk_1F5D5D528;
    v9[4] = &off_1F5D5C858;
    LOBYTE(v9[0]) = 14;
    v5 = j__OUTLINED_FUNCTION_18();
    v6 = sub_1E39C29F0(v9, v5 & 1);
    __swift_destroy_boxed_opaque_existential_1(v9);
    if (v6)
    {
      v7 = sub_1E3EB0D40();

      return v7;
    }
  }

  return v4;
}

void sub_1E39932BC(uint64_t a2@<X8>)
{
  *a2 = sub_1E4201D44();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C2B0, &unk_1E42A6C60);
  sub_1E399330C();
}

void sub_1E399330C()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  v61 = v4;
  v65 = sub_1E4201CF4();
  OUTLINED_FUNCTION_0_10();
  v68 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9_12();
  v64 = sub_1E4201324();
  OUTLINED_FUNCTION_0_10();
  v67 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v11 = (v10 - v9);
  v63 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v66 = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_63_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C2B8, &unk_1E42AA120);
  OUTLINED_FUNCTION_0_10();
  v59 = v15;
  v60 = v14;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_2_5();
  v58 = v16;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_18_6();
  v57 = v18;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_18_6();
  v56 = v20;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_25_3();
  v62 = v22;
  v55 = *(v3 + 8);
  v23 = SportsDisplayError.title.getter();
  sub_1E32822E0(v23, v24, v25);
  v51 = sub_1E4202C44();
  v50 = v26;
  v49 = v27 & 1;
  sub_1E3EB18B4();
  _s8VideosUI19ScoreboardErrorViewVMa_0(0);
  sub_1E3746E10(v1);
  sub_1E374709C(v11);
  v28 = MEMORY[0x1E6981148];
  v29 = MEMORY[0x1E6981138];
  v30 = j__OUTLINED_FUNCTION_18();
  sub_1E37B5FBC(v0);
  j__OUTLINED_FUNCTION_18();
  v31 = OUTLINED_FUNCTION_48_9();
  sub_1E37B6028(v31, v32, v11, v30, v0, v33, v28, v29, v34);

  v54 = *(v68 + 8);
  v54(v0, v65);
  v53 = *(v67 + 8);
  v53(v11, v64);
  v52 = *(v66 + 8);
  v35 = v1;
  v52(v1, v63);
  sub_1E37434B8(v51, v50, v49);

  SportsDisplayError.subtitle.getter(v55);
  v36 = sub_1E4202C44();
  v38 = v37;
  v40 = v39 & 1;
  v41 = sub_1E3EB1A0C();
  sub_1E3746E10(v35);
  sub_1E374709C(v11);
  v42 = j__OUTLINED_FUNCTION_18();
  sub_1E37B5FBC(v0);
  v43 = j__OUTLINED_FUNCTION_18();
  sub_1E37B6028(v41, v35, v11, v42, v0, v43 & 1, MEMORY[0x1E6981148], MEMORY[0x1E6981138], v56);

  v54(v0, v65);
  v53(v11, v64);
  v52(v35, v63);
  sub_1E37434B8(v36, v38, v40);

  v44 = *(v59 + 16);
  (v44)(v57, v62, v60);
  (v44)(v58, v56, v60);
  *v61 = 0;
  *(v61 + 8) = 1;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C2C0, &qword_1E42A6C70);
  (v44)(v61 + *(v45 + 48), v57, v60);
  OUTLINED_FUNCTION_30_27();
  v44();
  v46 = v61 + *(v45 + 80);
  *v46 = 0;
  *(v46 + 8) = 1;
  v47 = *(v59 + 8);
  v47(v56, v60);
  v47(v62, v60);
  v48 = OUTLINED_FUNCTION_168();
  (v47)(v48);
  v47(v57, v60);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3993954(uint64_t a1, uint64_t a2)
{
  v4 = _s8VideosUI19ScoreboardErrorViewVMa_0(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E39939D8()
{
  result = qword_1EE289688;
  if (!qword_1EE289688)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2F848, &qword_1E42AEFE0);
    sub_1E3993A64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289688);
  }

  return result;
}

unint64_t sub_1E3993A64()
{
  result = qword_1EE289B48;
  if (!qword_1EE289B48)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2F850, &qword_1E42AEFE8);
    sub_1E3993AF0(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289B48);
  }

  return result;
}

unint64_t sub_1E3993AF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE28F900[0];
  if (!qword_1EE28F900[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE28F900);
  }

  return result;
}

uint64_t sub_1E3993B44(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_2();
  v4 = OUTLINED_FUNCTION_32_0();
  v5(v4);
  return a2;
}

void sub_1E3993BE0()
{
  type metadata accessor for SportsPortableScoreboardViewLayout();
  if (v0 <= 0x3F)
  {
    sub_1E3993D14(319, qword_1EE283398, type metadata accessor for TextViewModel, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      OUTLINED_FUNCTION_3_81();
      sub_1E3993D14(319, v2, v3, MEMORY[0x1E697DCC0]);
      if (v4 <= 0x3F)
      {
        OUTLINED_FUNCTION_21_41();
        sub_1E3993D14(319, v5, v6, MEMORY[0x1E697DCC0]);
        if (v7 <= 0x3F)
        {
          OUTLINED_FUNCTION_72();
          swift_cvw_initStructMetadataWithLayoutString();
          OUTLINED_FUNCTION_165();
        }
      }
    }
  }
}

void sub_1E3993D14(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1E3993DB0()
{
  type metadata accessor for SportsPortableScoreboardViewLayout();
  if (v0 <= 0x3F)
  {
    OUTLINED_FUNCTION_3_81();
    sub_1E3993D14(319, v1, v2, MEMORY[0x1E697DCC0]);
    if (v3 <= 0x3F)
    {
      OUTLINED_FUNCTION_21_41();
      sub_1E3993D14(319, v4, v5, MEMORY[0x1E697DCC0]);
      if (v6 <= 0x3F)
      {
        OUTLINED_FUNCTION_72();
        swift_cvw_initStructMetadataWithLayoutString();
        OUTLINED_FUNCTION_165();
      }
    }
  }
}

unint64_t sub_1E3993E88()
{
  result = qword_1EE289538;
  if (!qword_1EE289538)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2F7F0, &qword_1E42AEF50);
    sub_1E3993F14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289538);
  }

  return result;
}

unint64_t sub_1E3993F14()
{
  result = qword_1EE289760;
  if (!qword_1EE289760)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2F7E0, &qword_1E42AEF40);
    sub_1E3743478(&unk_1EE288448);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289760);
  }

  return result;
}

unint64_t sub_1E399402C()
{
  result = qword_1EE289778;
  if (!qword_1EE289778)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2F8C0, &qword_1E42AF250);
    sub_1E3743478(&unk_1EE288558);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289778);
  }

  return result;
}

void (*sub_1E39940E4(void (*result)(void)))(void)
{
  if (!result)
  {
    OUTLINED_FUNCTION_8();
    result = (*(v1 + 248))();
    if (result)
    {
      result();
      v2 = OUTLINED_FUNCTION_32_0();

      return sub_1E37FAED8(v2, v3);
    }
  }

  return result;
}

unint64_t sub_1E399415C()
{
  result = qword_1ECF2F900;
  if (!qword_1ECF2F900)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2F8E8, &qword_1E42AF278);
    sub_1E39941E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2F900);
  }

  return result;
}

unint64_t sub_1E39941E8()
{
  result = qword_1ECF2F908;
  if (!qword_1ECF2F908)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2F8F8, &qword_1E42AF288);
    sub_1E3743478(&unk_1ECF2F910);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2F908);
  }

  return result;
}

uint64_t sub_1E39942A0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_1E39942F8()
{
  result = qword_1EE289970;
  if (!qword_1EE289970)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2F938, &qword_1E42AF2B8);
    type metadata accessor for BaseballClockView(255);
    sub_1E3994D54(qword_1EE27C190);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289970);
  }

  return result;
}

unint64_t sub_1E39943E4()
{
  result = qword_1EE289968;
  if (!qword_1EE289968)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2F920, &qword_1E42AF2A0);
    type metadata accessor for SportsClockView(255);
    sub_1E3994D54(qword_1EE2800B8);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289968);
  }

  return result;
}

unint64_t sub_1E39944D0()
{
  result = qword_1ECF2F970;
  if (!qword_1ECF2F970)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2F960, &qword_1E42AF2E8);
    sub_1E3743478(&unk_1ECF2F978);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2F970);
  }

  return result;
}

unint64_t sub_1E3994588()
{
  result = qword_1EE289C80;
  if (!qword_1EE289C80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2F9A8, &qword_1E42AF320);
    sub_1E399462C(&qword_1EE289C88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289C80);
  }

  return result;
}

unint64_t sub_1E399462C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_48_0(a1);
  if (!result)
  {
    v4 = OUTLINED_FUNCTION_40_2(0, v3);
    v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v4, v5);
    OUTLINED_FUNCTION_7_84(v6);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1E3994698()
{
  result = qword_1ECF2F9C0;
  if (!qword_1ECF2F9C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2F988, &qword_1E42AF300);
    sub_1E399471C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2F9C0);
  }

  return result;
}

unint64_t sub_1E399471C()
{
  result = qword_1ECF2F9C8;
  if (!qword_1ECF2F9C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2F9D0, &qword_1E42AF340);
    sub_1E39947C0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2F9C8);
  }

  return result;
}

unint64_t sub_1E39947C0()
{
  result = qword_1ECF2F9D8;
  if (!qword_1ECF2F9D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2F9E0, &qword_1E42AF348);
    sub_1E3743478(&unk_1ECF2F9E8);
    sub_1E3743478(&qword_1EE289DF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2F9D8);
  }

  return result;
}

unint64_t sub_1E39948A4()
{
  result = qword_1EE2897F8;
  if (!qword_1EE2897F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2FA10, &unk_1E42BAB00);
    sub_1E3743478(&qword_1EE288788);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2897F8);
  }

  return result;
}

uint64_t sub_1E39949AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t (*a6)(uint64_t))
{
  a5(0);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_26_2();
  v9 = OUTLINED_FUNCTION_74();
  v10(v9);
  return a6(v6);
}

unint64_t sub_1E3994A60()
{
  result = qword_1ECF2FA28;
  if (!qword_1ECF2FA28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2FA08, &qword_1E42AF370);
    sub_1E3994AEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2FA28);
  }

  return result;
}

unint64_t sub_1E3994AEC()
{
  result = qword_1ECF2FA30;
  if (!qword_1ECF2FA30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2FA00, &qword_1E42AF368);
    sub_1E3994B78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2FA30);
  }

  return result;
}

unint64_t sub_1E3994B78()
{
  result = qword_1ECF2FA38;
  if (!qword_1ECF2FA38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2FA18, &qword_1E42AF3A8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2FA10, &unk_1E42BAB00);
    sub_1E39948A4();
    swift_getOpaqueTypeConformance2();
    sub_1E3743478(&qword_1EE288780);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2FA38);
  }

  return result;
}

unint64_t sub_1E3994C6C()
{
  result = qword_1EE2897C0;
  if (!qword_1EE2897C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2FA68, &qword_1E42AF418);
    sub_1E3743478(&unk_1EE288560);
    sub_1E3994D54(&qword_1EE288768);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2897C0);
  }

  return result;
}

unint64_t sub_1E3994D54(uint64_t a1)
{
  result = OUTLINED_FUNCTION_48_0(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t get_witness_table_qd__7SwiftUI4ViewHD2_AaBPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA15ModifiedContentVyAIyAA6VStackVyAA05TupleC0VyAIyAC06VideosB0E0D10Identifier3key8locationQrAN06SportsgO0V3KeyO_AS8LocationOtFQOyAN0C7FactoryO04makeC09viewModel14builderContext15preferredLayoutQrAN0cX0C_AN0c7BuilderZ0VSgAN0C6LayoutCSgtFZQOy_Qo__Qo_AA16_FixedSizeLayoutVGSg_AA012_ConditionalK0VyAIyAcNEAopQQrAU_AWtFQOyAN013BaseballClockC0V_Qo_AA16_FlexFrameLayoutVGAIyAcNEAopQQrAU_AWtFQOyAN0r5ClockC0V_Qo_A22_GGtGGAA12_FrameLayoutVGAA14_PaddingLayoutVG_Qo_HOTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = OUTLINED_FUNCTION_40_2(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v5, v6);
  a4();
  return swift_getOpaqueTypeConformance2();
}

uint64_t static SportsVoiceOverUtility.widgetScoreVoiceOverText(state:attributes:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CE30, &qword_1E42A9900);
  OUTLINED_FUNCTION_17_2(v4);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  v166 = &v166 - v6;
  OUTLINED_FUNCTION_138();
  v167 = sub_1E4204ED4();
  OUTLINED_FUNCTION_0_10();
  v168 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v11 = v10 - v9;
  v174 = sub_1E42058A4();
  OUTLINED_FUNCTION_0_10();
  v173 = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  v16 = v15 - v14;
  v172 = sub_1E4205834();
  OUTLINED_FUNCTION_0_10();
  v171 = v17;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_9_3();
  v178 = v19;
  OUTLINED_FUNCTION_138();
  v170 = sub_1E4204E84();
  OUTLINED_FUNCTION_0_10();
  v177 = v20;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_9_3();
  v176 = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FA70, &qword_1E42AF420);
  v24 = OUTLINED_FUNCTION_17_2(v23);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v166 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v166 - v28;
  v30 = sub_1E4205754();
  OUTLINED_FUNCTION_0_10();
  v32 = v31;
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v166 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v166 - v37;
  v181 = sub_1E4205BF4();
  OUTLINED_FUNCTION_0_10();
  v179 = v39;
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_9_3();
  v180 = v41;
  sub_1E4204DF4();
  v182 = sub_1E3995D98(a1, a2);
  sub_1E4204E64();
  v42 = sub_1E4204D74();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v29, 1, v42);
  v183 = v38;
  if (EnumTagSinglePayload == 1)
  {
    goto LABEL_2;
  }

  v169 = v32;
  v175 = v30;
  sub_1E37E93E8(v29, v26, &qword_1ECF2FA70, &qword_1E42AF420);
  v45 = *(v42 - 8);
  v46 = OUTLINED_FUNCTION_21_42();
  v48 = v47(v46);
  if (v48 == *MEMORY[0x1E69D39A0])
  {
    v49 = OUTLINED_FUNCTION_21_42();
    v50(v49);
    v30 = v170;
    (*(v177 + 32))(v176, v26, v170);
    SportsRunningClockLocalization.init()();
    v191[3] = &type metadata for SportsRunningClockLocalization;
    v191[4] = sub_1E376DC98(v51, v52, v53);
    v54 = objc_allocWithZone(sub_1E4205944());
    v55 = sub_1E4205934();
    sub_1E4204E74();
    sub_1E4205844();

    v32 = v173 + 8;
    v56 = *(v173 + 8);
    v57 = v174;
    v56(v16, v174);
    sub_1E4204E74();
    sub_1E4205884();
    v56(v16, v57);
    v58 = sub_1E4205814();
    if (v59)
    {
      v61 = v58;
      v62 = v59;
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_13_66();
      sub_1E3997CAC(v61, v62, 10, v63);
      v64 = v191[0];
    }

    else
    {
      v64 = MEMORY[0x1E69E7CC8];
      sub_1E3997BA8(10, 0, v60);
      if (v78)
      {
        swift_isUniquelyReferenced_nonNull_native();
        v191[0] = v64;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FA78, &qword_1E42AF428);
        v79 = sub_1E4207644();
        v64 = v191[0];
        sub_1E38EA7FC(v79, v80, v81);
        sub_1E4207664();
      }
    }

    v82 = v178;
    sub_1E4205804();
    v38 = v83;
    swift_isUniquelyReferenced_nonNull_native();
    v191[0] = v64;
    v84 = OUTLINED_FUNCTION_75();
    sub_1E3997CAC(v84, v85, 11, v86);
    OUTLINED_FUNCTION_15_5();
    v87(v82, v172);
    OUTLINED_FUNCTION_15_5();
    v88(v176, v30);
    v44 = v191[0];
    OUTLINED_FUNCTION_6_63();
  }

  else
  {
    if (v48 != *MEMORY[0x1E69D39A8])
    {
      v38 = (v45 + 8);
      v76 = OUTLINED_FUNCTION_21_42();
      v77(v76);
      OUTLINED_FUNCTION_6_63();
      OUTLINED_FUNCTION_25_38();
LABEL_2:
      (*(v32 + 104))(v38, *MEMORY[0x1E69D3B98], v30);
      v44 = MEMORY[0x1E69E7CC8];
      goto LABEL_14;
    }

    v38 = (v45 + 96);
    v65 = OUTLINED_FUNCTION_21_42();
    v66(v65);
    v67 = v168;
    v68 = v26;
    v69 = v167;
    (*(v168 + 32))(v11, v68, v167);
    sub_1E4204E74();
    sub_1E4205884();
    OUTLINED_FUNCTION_15_5();
    v70(v16, v174);
    OUTLINED_FUNCTION_18_44();
    sub_1E3996288();
    OUTLINED_FUNCTION_6_63();
    if (v71)
    {
      v38 = v71;
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_13_66();
      v73 = OUTLINED_FUNCTION_75();
      sub_1E3997CAC(v73, v74, 26, v75);
      (*(v67 + 8))(v11, v69);
      v44 = v191[0];
    }

    else
    {
      v159 = v11;
      v44 = MEMORY[0x1E69E7CC8];
      v160 = sub_1E3997BA8(26, 0, v72);
      if (v161)
      {
        v38 = v160;
        swift_isUniquelyReferenced_nonNull_native();
        v191[0] = v44;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FA78, &qword_1E42AF428);
        v162 = sub_1E4207644();
        v44 = v191[0];
        sub_1E38EA7FC(v162, v163, v164);
        sub_1E4207664();
      }

      OUTLINED_FUNCTION_15_5();
      v165(v159, v69);
    }
  }

  OUTLINED_FUNCTION_25_38();
LABEL_14:
  sub_1E325F6F0(v29, &qword_1ECF2FA70, &qword_1E42AF420);
  v89 = *(v32 + 104);
  v89(v35, *MEMORY[0x1E69D3B90], v30);
  v90 = sub_1E3823168();
  v93 = *(v32 + 8);
  v91 = v32 + 8;
  v92 = v93;
  v93(v35, v30);
  if ((v90 & 1) == 0)
  {
    v191[0] = v182;

    sub_1E3996FD0(v191);

    if (*(v191[0] + 16))
    {
      v189 = *(v191[0] + 32);
      v115 = *(v191[0] + 48);
      v38 = *(v191[0] + 56);
      v182 = *(v191[0] + 72);
      sub_1E3996F40(v191[0], &v184);
      sub_1E383A1D0(&v189, v191);

      if (v185)
      {
        v178 = v185;
        v176 = v186;
        v116 = v187;
        v177 = v188;
        v89(v35, *MEMORY[0x1E69D3B78], v30);
        v117 = sub_1E3823168();
        v118 = v35;
        v175 = v30;
        v119 = v91;
        v92(v118, v30);
        if ((v117 & 1) == 0)
        {
          v135 = v179;
          v136 = v166;
          v137 = v181;
          (*(v179 + 16))(v166, v180, v181);
          __swift_storeEnumTagSinglePayload(v136, 0, 1, v137);
          OUTLINED_FUNCTION_22_32();
          OUTLINED_FUNCTION_18_44();
          LODWORD(v174) = sub_1E38BA610(v138, v139);
          sub_1E325F6F0(v136, &qword_1ECF2CE30, &qword_1E42A9900);

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v191[0] = v44;
          sub_1E3997CAC(v115, v38, 6, isUniquelyReferenced_nonNull_native);
          sub_1E3782C70(&v189);

          v141 = v191[0];
          v191[0] = v182;
          OUTLINED_FUNCTION_75();
          v142 = sub_1E4207944();
          v169 = v119;
          v144 = v143;
          v145 = swift_isUniquelyReferenced_nonNull_native();
          v191[0] = v141;
          sub_1E3997CAC(v142, v144, 7, v145);

          swift_isUniquelyReferenced_nonNull_native();
          OUTLINED_FUNCTION_13_66();
          sub_1E3997CAC(v176, v116, 8, v146);

          v147 = v191[0];
          v191[0] = v177;
          OUTLINED_FUNCTION_75();
          v148 = sub_1E4207944();
          v150 = v149;
          v151 = swift_isUniquelyReferenced_nonNull_native();
          v191[0] = v147;
          sub_1E3997CAC(v148, v150, 9, v151);
          v152 = sub_1E38BAE70();
          OUTLINED_FUNCTION_18_44();
          sub_1E38BA3C8(v153, v154, v155);
          v114 = v156;

          v157 = OUTLINED_FUNCTION_24_31();
          (v92)(v157);
          (*(v135 + 8))(v180, v181);
          return v114;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D580, &qword_1E42A9920);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1E4298AD0;
        *(inited + 32) = 6;
        *(inited + 40) = v115;
        *(inited + 48) = v38;
        *(inited + 56) = 7;
        v190 = v182;

        *(inited + 64) = sub_1E4207944();
        *(inited + 72) = v121;
        *(inited + 80) = 8;
        *(inited + 88) = v176;
        *(inited + 96) = v116;
        *(inited + 104) = 9;
        v190 = v177;

        v122 = sub_1E4207944();
        *(inited + 112) = v122;
        *(inited + 120) = v123;
        sub_1E38EA7FC(v122, v123, v124);
        sub_1E4205CB4();
        v125 = sub_1E38BAE70();
        OUTLINED_FUNCTION_18_44();
        sub_1E38BA3C8(v126, v127, v128);
        v114 = v129;

        sub_1E3782C70(&v189);

        v130 = OUTLINED_FUNCTION_24_31();
        (v92)(v130);
        goto LABEL_31;
      }

      sub_1E3782C70(&v189);

      OUTLINED_FUNCTION_25_38();
    }

    else
    {
    }

    v92(v38, v30);
    v133 = OUTLINED_FUNCTION_9_58();
    v134(v133);

    return 0;
  }

  v94 = *(v182 + 16);
  v95 = v94 + 1;
  v96 = v182;
  do
  {
    if (!--v95)
    {
      v114 = 0;
      goto LABEL_30;
    }

    v97 = (v96 + 48);
    v98 = *(v96 + 64);
    v96 += 48;
  }

  while (v98 != 1);
  v100 = *v97;
  v99 = v97[1];
  v101 = v182;
  v102 = v94 + 1;
  while (--v102)
  {
    v103 = (v101 + 48);
    v104 = *(v101 + 64);
    v101 += 48;
    if ((v104 & 1) == 0)
    {
      v38 = *v103;
      v105 = v103[1];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D580, &qword_1E42A9920);
      v106 = swift_initStackObject();
      *(v106 + 16) = xmmword_1E4299720;
      *(v106 + 32) = 0;
      *(v106 + 40) = v38;
      *(v106 + 48) = v105;
      *(v106 + 56) = 1;
      *(v106 + 64) = v100;
      *(v106 + 72) = v99;
      sub_1E38EA7FC(v106, v107, v108);

      sub_1E4205CB4();
      v109 = sub_1E38BAE70();
      OUTLINED_FUNCTION_18_44();
      sub_1E38BA3C8(v110, v111, v112);
      v114 = v113;

      goto LABEL_29;
    }
  }

  v114 = 0;
LABEL_29:
  OUTLINED_FUNCTION_25_38();
LABEL_30:

  v92(v38, v30);
LABEL_31:
  v131 = OUTLINED_FUNCTION_9_58();
  v132(v131);
  return v114;
}

uint64_t sub_1E3995D98(uint64_t a1, uint64_t a2)
{
  v64 = sub_1E4205B94();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_9_3();
  v63 = v6;
  OUTLINED_FUNCTION_138();
  v62 = sub_1E4205BF4();
  OUTLINED_FUNCTION_0_10();
  v66 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_9_3();
  v61 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FAA8, &qword_1E42AF450);
  v11 = *(v10 - 8);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  v14 = v54 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FAB0, &qword_1E42AF458);
  v15 = *(v11 + 72);
  v16 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1E4299720;
  v18 = v17 + v16;
  v19 = *(v10 + 48);
  sub_1E4204E44();
  result = sub_1E4204DE4();
  if (!*(result + 16))
  {
    __break(1u);
    goto LABEL_13;
  }

  v21 = result;
  v65 = v4;
  v54[2] = v17;
  v22 = sub_1E4204E34();
  OUTLINED_FUNCTION_0_10();
  v56 = v23;
  v24 = (*(v56 + 80) + 32) & ~*(v56 + 80);
  v55 = *(v25 + 16);
  v54[1] = v25 + 16;
  (v55)(v18 + v19, v21 + v24, v22);

  v57 = v18;
  v58 = v15;
  v26 = v18 + v15;
  v59 = v10;
  v27 = *(v10 + 48);
  sub_1E4204E54();
  v60 = a2;
  result = sub_1E4204DE4();
  if (*(result + 16) < 2uLL)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  (v55)(v26 + v27, result + v24 + *(v56 + 72), v22);

  v67 = MEMORY[0x1E69E7CC0];
  sub_1E3998698(0, 2, 0);
  v28 = 0;
  v29 = 0;
  v30 = v67;
  v55 = (v65 + 8);
  v56 = v66 + 8;
  do
  {
    LODWORD(v66) = v28;
    sub_1E37E93E8(v57 + v29 * v58, v14, &qword_1ECF2FAA8, &qword_1E42AF450);
    v31 = sub_1E4204E04();
    v33 = v32;
    v34 = sub_1E4204E14();
    v36 = v35;
    v37 = sub_1E4204E24() & 1;
    v38._countAndFlagsBits = v31;
    v38._object = v33;
    v39._countAndFlagsBits = v34;
    v39._object = v36;
    SportsVoiceOverUtility.Competitor.init(canonicalId:name:isHomeTeam:)(&v68, v38, v39, v37);
    countAndFlagsBits = v68.canonicalId._countAndFlagsBits;
    object = v68.canonicalId._object;
    v42 = v68.name._countAndFlagsBits;
    v65 = v68.name._object;
    isHomeTeam = v68.isHomeTeam;
    v44 = sub_1E4204DC4();
    v45 = v61;
    sub_1E4204DF4();
    v46 = v63;
    sub_1E4205BC4();
    (*v56)(v45, v62);
    if (*(v44 + 16) && (v47 = sub_1E3997C14(v46), (v48 & 1) != 0))
    {
      v49 = *(*(v44 + 56) + 8 * v47);
    }

    else
    {
      v49 = 0;
    }

    (*v55)(v46, v64);
    sub_1E325F6F0(v14, &qword_1ECF2FAA8, &qword_1E42AF450);
    v67 = v30;
    v51 = *(v30 + 16);
    v50 = *(v30 + 24);
    if (v51 >= v50 >> 1)
    {
      sub_1E3998698((v50 > 1), v51 + 1, 1);
      v30 = v67;
    }

    *(v30 + 16) = v51 + 1;
    v52 = v30 + 48 * v51;
    *(v52 + 32) = countAndFlagsBits;
    *(v52 + 40) = object;
    v53 = v65;
    *(v52 + 48) = v42;
    *(v52 + 56) = v53;
    *(v52 + 64) = isHomeTeam;
    *(v52 + 72) = v49;
    v28 = 1;
    v29 = 1;
  }

  while ((v66 & 1) == 0);
  swift_setDeallocating();
  sub_1E399703C();
  return v30;
}

uint64_t sub_1E3996288()
{
  sub_1E4205BF4();
  OUTLINED_FUNCTION_0_10();
  v176 = v1;
  v177 = v0;
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_9_3();
  v175 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B488, &unk_1E42A0630);
  OUTLINED_FUNCTION_17_2(v3);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  v174 = v171 - v5;
  v6 = OUTLINED_FUNCTION_138();
  v173 = type metadata accessor for SportsPlayPeriod(v6);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_9_3();
  v180 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BD90, &unk_1E42A6300);
  OUTLINED_FUNCTION_17_2(v9);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  v12 = v171 - v11;
  v13 = sub_1E4205B24();
  OUTLINED_FUNCTION_0_10();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_9_3();
  v172 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BD98, &qword_1E42E3AB0);
  OUTLINED_FUNCTION_17_2(v18);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v19);
  v21 = v171 - v20;
  v22 = sub_1E4205784();
  OUTLINED_FUNCTION_0_10();
  v24 = v23;
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_5();
  v28 = v27 - v26;
  sub_1E42058A4();
  OUTLINED_FUNCTION_0_10();
  v178 = v30;
  v179 = v29;
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_5();
  v33 = v32 - v31;
  sub_1E4204E74();
  v34 = sub_1E4205874();
  if (v35)
  {
    v36 = 0;
  }

  else
  {
    v36 = v34;
  }

  v171[1] = v36;
  v181 = v33;
  sub_1E4205864();
  v37 = OUTLINED_FUNCTION_22_32();
  if (__swift_getEnumTagSinglePayload(v37, v38, v22) == 1)
  {
    (*(v24 + 104))(v28, *MEMORY[0x1E69D3BE8], v22);
    v39 = OUTLINED_FUNCTION_22_32();
    if (__swift_getEnumTagSinglePayload(v39, v40, v22) != 1)
    {
      sub_1E325F6F0(v21, &qword_1ECF2BD98, &qword_1E42E3AB0);
    }
  }

  else
  {
    (*(v24 + 32))(v28, v21, v22);
  }

  sub_1E4205894();
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    (*(v15 + 104))(v172, *MEMORY[0x1E69D3CB8], v13);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
    v43 = v176;
    v42 = v177;
    v45 = v174;
    v44 = v175;
    if (EnumTagSinglePayload != 1)
    {
      sub_1E325F6F0(v12, &qword_1ECF2BD90, &unk_1E42A6300);
    }
  }

  else
  {
    (*(v15 + 32))(v172, v12, v13);
    v43 = v176;
    v42 = v177;
    v45 = v174;
    v44 = v175;
  }

  v46 = objc_allocWithZone(sub_1E4205544());
  v47 = sub_1E4205524();
  (*(v43 + 104))(v44, *MEMORY[0x1E69D3D88], v42);
  v48 = v47;
  sub_1E385BAA0();
  v49 = OUTLINED_FUNCTION_22_32();
  v51 = __swift_getEnumTagSinglePayload(v49, v50, v173);
  v177 = v48;
  if (v51 == 1)
  {
    sub_1E325F6F0(v45, &qword_1ECF2B488, &unk_1E42A0630);
    v52 = MEMORY[0x1E69E7CC8];
  }

  else
  {
    v53 = v180;
    sub_1E385BE80(v45, v180);
    type metadata accessor for BaseballVoiceOverUtility();
    sub_1E3BE8E48(v53);
    if (v55)
    {
      v56 = MEMORY[0x1E69E7CC8];
      swift_isUniquelyReferenced_nonNull_native();
      v182 = v56;
      v57 = OUTLINED_FUNCTION_12_57();
      sub_1E3997CAC(v57, v58, 22, v59);
      sub_1E383B454(v180);
      v52 = v182;
    }

    else
    {
      v52 = MEMORY[0x1E69E7CC8];
      sub_1E3997BA8(22, 0, v54);
      if (v60)
      {
        OUTLINED_FUNCTION_26_36();
        OUTLINED_FUNCTION_5_78();
        v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FA78, &qword_1E42AF428);
        v62 = OUTLINED_FUNCTION_4_79(v61);
        OUTLINED_FUNCTION_3_82(v62, v63, v64);
        OUTLINED_FUNCTION_27_26();
      }

      sub_1E383B454(v180);
    }
  }

  v65 = sub_1E4204EB4();
  v66 = *(v65 + 16);
  if (v66)
  {
    v67 = (v65 + 32);
    v68 = MEMORY[0x1E69E7CC0];
    do
    {
      if (*v67 == 1)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v182 = v68;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1E39986B8(0, *(v68 + 16) + 1, 1);
          v68 = v182;
        }

        v71 = *(v68 + 16);
        v70 = *(v68 + 24);
        if (v71 >= v70 >> 1)
        {
          sub_1E39986B8((v70 > 1), v71 + 1, 1);
          v68 = v182;
        }

        *(v68 + 16) = v71 + 1;
        *(v68 + v71 + 32) = 1;
      }

      ++v67;
      --v66;
    }

    while (v66);
  }

  else
  {
    v68 = MEMORY[0x1E69E7CC0];
  }

  v72 = type metadata accessor for BaseballVoiceOverUtility();
  v73 = *(v68 + 16);

  v180 = v72;
  sub_1E3BE8D44(v73);
  if (v75)
  {
    swift_isUniquelyReferenced_nonNull_native();
    v182 = v52;
    v76 = OUTLINED_FUNCTION_12_57();
    sub_1E3997CAC(v76, v77, 23, v78);
    v52 = v182;
  }

  else
  {
    sub_1E3997BA8(23, 0, v74);
    if (v79)
    {
      OUTLINED_FUNCTION_26_36();
      OUTLINED_FUNCTION_5_78();
      v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FA78, &qword_1E42AF428);
      v81 = OUTLINED_FUNCTION_4_79(v80);
      OUTLINED_FUNCTION_3_82(v81, v82, v83);
      OUTLINED_FUNCTION_27_26();
    }
  }

  v185 = sub_1E4204EC4();
  v182 = 0;
  LOBYTE(v183) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FA80, &qword_1E42AF430);
  sub_1E3997EE4();
  OUTLINED_FUNCTION_8_54();

  if (v184 == 2 || (v184 & 1) == 0)
  {
    v85 = 0;
    v84 = 1;
  }

  else
  {
    v84 = 0;
    v85 = 1;
  }

  v185 = sub_1E4204EC4();
  v182 = 1;
  LOBYTE(v183) = 0;
  OUTLINED_FUNCTION_8_54();

  if (v184 == 2 || (v184 & 1) == 0)
  {
    v87 = 0;
    v86 = 1;
  }

  else
  {
    v86 = 0;
    v87 = 2;
  }

  v185 = sub_1E4204EC4();
  v182 = 2;
  LOBYTE(v183) = 0;
  OUTLINED_FUNCTION_8_54();

  if (v184 != 2 && (v184 & 1) != 0)
  {
    v88 = 0;
    v89 = 3;
    if ((v84 & 1) == 0)
    {
      goto LABEL_45;
    }

LABEL_50:
    v90 = MEMORY[0x1E69E7CC0];
    if (v86)
    {
      goto LABEL_56;
    }

    goto LABEL_51;
  }

  v89 = 0;
  v88 = 1;
  if (v84)
  {
    goto LABEL_50;
  }

LABEL_45:
  v90 = sub_1E3997AA8(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v92 = *(v90 + 2);
  v91 = *(v90 + 3);
  if (v92 >= v91 >> 1)
  {
    v90 = OUTLINED_FUNCTION_7_85(v91);
  }

  *(v90 + 2) = v92 + 1;
  *&v90[8 * v92 + 32] = v85;
  if ((v86 & 1) == 0)
  {
LABEL_51:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v90 = OUTLINED_FUNCTION_19_47();
    }

    v94 = *(v90 + 2);
    v93 = *(v90 + 3);
    if (v94 >= v93 >> 1)
    {
      v90 = OUTLINED_FUNCTION_7_85(v93);
    }

    *(v90 + 2) = v94 + 1;
    *&v90[8 * v94 + 32] = v87;
  }

LABEL_56:
  if ((v88 & 1) == 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v90 = OUTLINED_FUNCTION_19_47();
    }

    v96 = *(v90 + 2);
    v95 = *(v90 + 3);
    if (v96 >= v95 >> 1)
    {
      v90 = OUTLINED_FUNCTION_7_85(v95);
    }

    *(v90 + 2) = v96 + 1;
    *&v90[8 * v96 + 32] = v89;
  }

  v97 = sub_1E3BE8B14(v90);
  v99 = v98;

  if (v99)
  {
    v102 = swift_isUniquelyReferenced_nonNull_native();
    v182 = v52;
    sub_1E3997CAC(v97, v99, 24, v102);
    v52 = v182;
  }

  else
  {
    sub_1E3997BA8(24, v100, v101);
    if (v103)
    {
      OUTLINED_FUNCTION_26_36();
      OUTLINED_FUNCTION_5_78();
      v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FA78, &qword_1E42AF428);
      v105 = OUTLINED_FUNCTION_4_79(v104);
      OUTLINED_FUNCTION_3_82(v105, v106, v107);
      OUTLINED_FUNCTION_27_26();
    }
  }

  v108 = sub_1E4204EA4();
  v182 = 45;
  v183 = 0xE100000000000000;
  MEMORY[0x1EEE9AC00](v108);
  v171[-2] = &v182;
  v111 = sub_1E37D273C(0x7FFFFFFFFFFFFFFFLL, 1, sub_1E3756228, &v171[-4], v109, v110, v171);
  if (!*(v111 + 2))
  {
    goto LABEL_74;
  }

  v113 = *(v111 + 4);
  v112 = *(v111 + 5);

  v114 = sub_1E4204EA4();
  v182 = 45;
  v183 = 0xE100000000000000;
  MEMORY[0x1EEE9AC00](v114);
  v171[-2] = &v182;
  v117 = sub_1E37D273C(0x7FFFFFFFFFFFFFFFLL, 1, sub_1E39989B4, &v171[-4], v115, v116, v171);
  v118 = sub_1E3996EDC(v117);
  v120 = v119;
  v176 = v121;
  v123 = v122;

  if (!v123)
  {
    goto LABEL_74;
  }

  if ((v112 ^ v113) < 0x4000)
  {

LABEL_74:

    v139 = v179;
    v140 = v178;
    goto LABEL_75;
  }

  v124 = OUTLINED_FUNCTION_14_63();
  v129 = sub_1E3282334(v124, v125, v126, v127, v128);
  if ((v130 & 0x100) != 0)
  {
    v133 = OUTLINED_FUNCTION_14_63();
    v132 = sub_1E3998104(v133, v134, v135, v136, v137);
    v131 = v138;
  }

  else
  {
    v131 = v130;
    v132 = v129;
  }

  if ((v131 & 1) != 0 || !((v118 ^ v120) >> 14))
  {
    goto LABEL_74;
  }

  v145 = OUTLINED_FUNCTION_15_55();
  v150 = sub_1E3282334(v145, v146, v147, v148, v149);
  v140 = v178;
  if ((v151 & 0x100) != 0)
  {
    v154 = OUTLINED_FUNCTION_15_55();
    v152 = sub_1E3998104(v154, v155, v156, v157, v158);
    v160 = v159;

    if (v160)
    {
      v139 = v179;
      goto LABEL_75;
    }

    v139 = v179;
  }

  else
  {
    v152 = v150;
    v153 = v151;

    v139 = v179;
    if (v153)
    {
      goto LABEL_75;
    }
  }

  sub_1E3BE8DA8(v132, v152);
  if (v162)
  {
    swift_isUniquelyReferenced_nonNull_native();
    v182 = v52;
    v163 = OUTLINED_FUNCTION_12_57();
    sub_1E3997CAC(v163, v164, 25, v165);
    v52 = v182;
  }

  else
  {
    sub_1E3997BA8(25, 0, v161);
    if (v166)
    {
      OUTLINED_FUNCTION_26_36();
      OUTLINED_FUNCTION_5_78();
      v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FA78, &qword_1E42AF428);
      v168 = OUTLINED_FUNCTION_4_79(v167);
      OUTLINED_FUNCTION_3_82(v168, v169, v170);
      OUTLINED_FUNCTION_27_26();
    }
  }

LABEL_75:
  v141 = sub_1E38BAE70();
  sub_1E38BA3C8(7, v52, v141);
  v143 = v142;

  (*(v140 + 8))(v181, v139);
  return v143;
}

uint64_t sub_1E3996EDC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32 * v1);

  return v2;
}

void sub_1E3996F40(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = (a1 + 48 * v3);
    v6 = *(v4 - 2);
    v5 = *(v4 - 1);
    v8 = *v4;
    v7 = v4[1];
    v9 = *(v4 + 16);
    v10 = v4[3];
  }

  else
  {
    v6 = 0;
    v5 = 0;
    v8 = 0;
    v7 = 0;
    v9 = 0;
    v10 = 0;
  }

  *a2 = v6;
  a2[1] = v5;
  a2[2] = v8;
  a2[3] = v7;
  a2[4] = v9;
  a2[5] = v10;
}

uint64_t sub_1E3996FD0(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1E3998958(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_1E39970C0(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1E399703C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FAA8, &qword_1E42AF450);
  swift_arrayDestroy();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t sub_1E39970C0(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1E4207914();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FA98, &qword_1E42AF440);
        v6 = sub_1E4206314();
        *(v6 + 16) = v5;
      }

      v7[0] = v6 + 32;
      v7[1] = v5;
      sub_1E3997258(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1E39971C4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1E39971C4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 48 * a3 - 8;
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + 48 * a3 + 40);
      v8 = v6;
      v9 = v5;
      do
      {
        if (*v9 >= v7)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        v10 = *(v9 + 8);
        v11 = *(v9 + 16);
        v12 = *(v9 - 24);
        *(v9 + 8) = *(v9 - 40);
        result = *(v9 + 24);
        v13 = *(v9 + 32);
        v14 = *(v9 + 40);
        *(v9 + 24) = v12;
        *(v9 + 40) = *(v9 - 8);
        *(v9 - 40) = v10;
        *(v9 - 32) = v11;
        *(v9 - 24) = result;
        *(v9 - 16) = v13;
        *(v9 - 8) = v14;
        *v9 = v7;
        v9 -= 48;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      v5 += 48;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_1E3997258(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v90 = result;
  v94 = MEMORY[0x1E69E7CC0];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    v89 = a4;
    while (1)
    {
      v9 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v10 = *(*a3 + 48 * v9 + 40);
        v11 = *a3 + 48 * v7;
        v12 = *(v11 + 40);
        v13 = (v11 + 136);
        v14 = v7 + 2;
        v15 = v10;
        while (1)
        {
          v16 = v14;
          if (++v9 >= v6)
          {
            break;
          }

          v17 = *v13;
          v13 += 6;
          v18 = (v12 < v10) ^ (v15 >= v17);
          ++v14;
          v15 = v17;
          if ((v18 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        v9 = v6;
LABEL_9:
        if (v12 < v10)
        {
          if (v9 < v7)
          {
            goto LABEL_108;
          }

          if (v7 < v9)
          {
            if (v6 >= v16)
            {
              v6 = v16;
            }

            v19 = 48 * v6 - 24;
            v20 = 48 * v7 + 40;
            v21 = v9;
            v22 = v7;
            do
            {
              if (v22 != --v21)
              {
                v23 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v24 = (v23 + v20);
                v25 = *(v23 + v20 - 40);
                v26 = v23 + v19;
                v27 = *(v24 - 3);
                v28 = *(v24 - 2);
                v29 = *(v24 - 8);
                v30 = *v24;
                v31 = *(v26 + 8);
                v32 = *(v26 - 8);
                *(v24 - 5) = *(v26 - 24);
                *(v24 - 3) = v32;
                *(v24 - 1) = v31;
                *(v26 - 24) = v25;
                *(v26 - 8) = v27;
                *v26 = v28;
                *(v26 + 8) = v29;
                *(v26 + 16) = v30;
              }

              ++v22;
              v19 -= 48;
              v20 += 48;
            }

            while (v22 < v21);
            v6 = a3[1];
          }
        }
      }

      if (v9 < v6)
      {
        if (__OFSUB__(v9, v7))
        {
          goto LABEL_107;
        }

        if (v9 - v7 < a4)
        {
          if (__OFADD__(v7, a4))
          {
            goto LABEL_109;
          }

          if (v7 + a4 < v6)
          {
            v6 = v7 + a4;
          }

          if (v6 < v7)
          {
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
            return result;
          }

          if (v9 != v6)
          {
            v33 = *a3;
            v34 = *a3 + 48 * v9 - 8;
            v35 = v7 - v9;
            do
            {
              v36 = *(v33 + 48 * v9 + 40);
              v37 = v35;
              v38 = v34;
              do
              {
                if (*v38 >= v36)
                {
                  break;
                }

                if (!v33)
                {
                  goto LABEL_111;
                }

                v39 = *(v38 + 8);
                v40 = *(v38 + 16);
                v41 = *(v38 - 24);
                *(v38 + 8) = *(v38 - 40);
                v42 = *(v38 + 24);
                result = *(v38 + 32);
                v43 = *(v38 + 40);
                *(v38 + 24) = v41;
                *(v38 + 40) = *(v38 - 8);
                *(v38 - 40) = v39;
                *(v38 - 32) = v40;
                *(v38 - 24) = v42;
                *(v38 - 16) = result;
                *(v38 - 8) = v43;
                *v38 = v36;
                v38 -= 48;
              }

              while (!__CFADD__(v37++, 1));
              ++v9;
              v34 += 48;
              --v35;
            }

            while (v9 != v6);
            v9 = v6;
          }
        }
      }

      if (v9 < v7)
      {
        goto LABEL_106;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      v91 = v9;
      if ((result & 1) == 0)
      {
        result = sub_1E37FFF70(0, *(v8 + 16) + 1, 1, v8);
        v8 = result;
      }

      v46 = *(v8 + 16);
      v45 = *(v8 + 24);
      v47 = v46 + 1;
      if (v46 >= v45 >> 1)
      {
        result = sub_1E37FFF70((v45 > 1), v46 + 1, 1, v8);
        v8 = result;
      }

      *(v8 + 16) = v47;
      v48 = v8 + 32;
      v49 = (v8 + 32 + 16 * v46);
      *v49 = v7;
      v49[1] = v91;
      v92 = *v90;
      if (!*v90)
      {
        goto LABEL_114;
      }

      if (v46)
      {
        while (1)
        {
          v50 = v47 - 1;
          v51 = (v48 + 16 * (v47 - 1));
          v52 = (v8 + 16 * v47);
          if (v47 >= 4)
          {
            break;
          }

          if (v47 == 3)
          {
            v53 = *(v8 + 32);
            v54 = *(v8 + 40);
            v63 = __OFSUB__(v54, v53);
            v55 = v54 - v53;
            v56 = v63;
LABEL_56:
            if (v56)
            {
              goto LABEL_96;
            }

            v68 = *v52;
            v67 = v52[1];
            v69 = __OFSUB__(v67, v68);
            v70 = v67 - v68;
            v71 = v69;
            if (v69)
            {
              goto LABEL_99;
            }

            v72 = v51[1];
            v73 = v72 - *v51;
            if (__OFSUB__(v72, *v51))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v70, v73))
            {
              goto LABEL_104;
            }

            if (v70 + v73 >= v55)
            {
              if (v55 < v73)
              {
                v50 = v47 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v47 < 2)
          {
            goto LABEL_98;
          }

          v75 = *v52;
          v74 = v52[1];
          v63 = __OFSUB__(v74, v75);
          v70 = v74 - v75;
          v71 = v63;
LABEL_71:
          if (v71)
          {
            goto LABEL_101;
          }

          v77 = *v51;
          v76 = v51[1];
          v63 = __OFSUB__(v76, v77);
          v78 = v76 - v77;
          if (v63)
          {
            goto LABEL_103;
          }

          if (v78 < v70)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v50 - 1 >= v47)
          {
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
            __break(1u);
LABEL_99:
            __break(1u);
LABEL_100:
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
            goto LABEL_110;
          }

          if (!*a3)
          {
            goto LABEL_112;
          }

          v82 = (v48 + 16 * (v50 - 1));
          v83 = *v82;
          v84 = (v48 + 16 * v50);
          v85 = v84[1];
          result = sub_1E39978D4((*a3 + 48 * *v82), (*a3 + 48 * *v84), (*a3 + 48 * v85), v92);
          if (v5)
          {
          }

          if (v85 < v83)
          {
            goto LABEL_91;
          }

          v86 = v8;
          v87 = *(v8 + 16);
          if (v50 > v87)
          {
            goto LABEL_92;
          }

          *v82 = v83;
          v82[1] = v85;
          if (v50 >= v87)
          {
            goto LABEL_93;
          }

          v47 = v87 - 1;
          result = memmove((v48 + 16 * v50), v84 + 2, 16 * (v87 - 1 - v50));
          *(v86 + 16) = v87 - 1;
          v88 = v87 > 2;
          v8 = v86;
          v5 = 0;
          if (!v88)
          {
            goto LABEL_85;
          }
        }

        v57 = v48 + 16 * v47;
        v58 = *(v57 - 64);
        v59 = *(v57 - 56);
        v63 = __OFSUB__(v59, v58);
        v60 = v59 - v58;
        if (v63)
        {
          goto LABEL_94;
        }

        v62 = *(v57 - 48);
        v61 = *(v57 - 40);
        v63 = __OFSUB__(v61, v62);
        v55 = v61 - v62;
        v56 = v63;
        if (v63)
        {
          goto LABEL_95;
        }

        v64 = v52[1];
        v65 = v64 - *v52;
        if (__OFSUB__(v64, *v52))
        {
          goto LABEL_97;
        }

        v63 = __OFADD__(v55, v65);
        v66 = v55 + v65;
        if (v63)
        {
          goto LABEL_100;
        }

        if (v66 >= v60)
        {
          v80 = *v51;
          v79 = v51[1];
          v63 = __OFSUB__(v79, v80);
          v81 = v79 - v80;
          if (v63)
          {
            goto LABEL_105;
          }

          if (v55 < v81)
          {
            v50 = v47 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v6 = a3[1];
      v7 = v91;
      a4 = v89;
      if (v91 >= v6)
      {
        v94 = v8;
        break;
      }
    }
  }

  if (!*v90)
  {
    goto LABEL_115;
  }

  sub_1E399779C(&v94, *v90, a3);
}

uint64_t sub_1E399779C(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v15 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1E37FFF5C(v15);
    v15 = result;
  }

  v12 = v4;
  *v4 = v15;
  v6 = (v15 + 16);
  for (i = *(v15 + 16); ; *v6 = i)
  {
    if (i < 2)
    {
LABEL_10:
      *v12 = v15;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v4 = (v15 + 16 * i);
    v8 = *v4;
    v9 = &v6[2 * i];
    v10 = v9[1];
    sub_1E39978D4((*a3 + 48 * *v4), (*a3 + 48 * *v9), (*a3 + 48 * v10), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v10 < v8)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (i - 2 >= *v6)
    {
      goto LABEL_12;
    }

    *v4 = v8;
    v4[1] = v10;
    v11 = *v6 - i;
    if (*v6 < i)
    {
      goto LABEL_13;
    }

    i = *v6 - 1;
    result = memmove(v9, v9 + 2, 16 * v11);
  }

  *v12 = v15;
  __break(1u);
  return result;
}

uint64_t sub_1E39978D4(char *__src, char *__dst, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = (__dst - __src) / 48;
  v9 = (a3 - __dst) / 48;
  if (v8 < v9)
  {
    if (a4 != __src || &__src[48 * v8] <= a4)
    {
      memmove(a4, __src, 48 * v8);
    }

    v11 = &v4[48 * v8];
    while (1)
    {
      if (v4 >= v11 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_38;
      }

      if (*(v4 + 5) >= *(v6 + 5))
      {
        break;
      }

      v13 = v6;
      v14 = v7 == v6;
      v6 += 48;
      if (!v14)
      {
        goto LABEL_17;
      }

LABEL_18:
      v7 += 48;
    }

    v13 = v4;
    v14 = v7 == v4;
    v4 += 48;
    if (v14)
    {
      goto LABEL_18;
    }

LABEL_17:
    v15 = *v13;
    v16 = *(v13 + 2);
    *(v7 + 1) = *(v13 + 1);
    *(v7 + 2) = v16;
    *v7 = v15;
    goto LABEL_18;
  }

  if (a4 != __dst || &__dst[48 * v9] <= a4)
  {
    memmove(a4, __dst, 48 * v9);
  }

  v11 = &v4[48 * v9];
LABEL_25:
  for (v5 -= 48; v11 > v4 && v6 > v7; v5 -= 48)
  {
    if (*(v6 - 1) < *(v11 - 1))
    {
      v21 = v6 - 48;
      v14 = v5 + 48 == v6;
      v6 -= 48;
      if (!v14)
      {
        v22 = *v21;
        v23 = *(v21 + 2);
        *(v5 + 1) = *(v21 + 1);
        *(v5 + 2) = v23;
        *v5 = v22;
        v6 = v21;
      }

      goto LABEL_25;
    }

    if (v11 != v5 + 48)
    {
      v19 = *(v11 - 3);
      v20 = *(v11 - 1);
      *(v5 + 1) = *(v11 - 2);
      *(v5 + 2) = v20;
      *v5 = v19;
    }

    v11 -= 48;
  }

LABEL_38:
  v24 = (v11 - v4) / 48;
  if (v6 != v4 || v6 >= &v4[48 * v24])
  {
    memmove(v6, v4, 48 * v24);
  }

  return 1;
}

char *sub_1E3997AA8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CA60, "v;\r");
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[8 * v8] <= v12)
    {
      memmove(v12, v13, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 8 * v8);
  }

  return v10;
}

unint64_t sub_1E3997BA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1E38EA7FC(a1, a2, a3);
  v4 = sub_1E4205DA4();
  return sub_1E3997E24(a1, v4, v5);
}

unint64_t sub_1E3997C14(uint64_t a1)
{
  sub_1E4205B94();
  sub_1E399896C(&qword_1ECF2FAB8, MEMORY[0x1E69D3D58], MEMORY[0x1E69D3D60]);
  v2 = sub_1E4205DA4();

  return sub_1E3997F48(a1, v2);
}

unint64_t sub_1E3997CAC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = sub_1E3997BA8(a3, a2, a3);
  if (__OFADD__(v9[2], (v11 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v12 = v10;
  v13 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FA78, &qword_1E42AF428);
  if ((sub_1E4207644() & 1) == 0)
  {
    goto LABEL_5;
  }

  v16 = sub_1E3997BA8(a3, v14, v15);
  if ((v13 & 1) != (v17 & 1))
  {
LABEL_13:
    result = sub_1E4207A74();
    __break(1u);
    return result;
  }

  v12 = v16;
LABEL_5:
  v18 = *v5;
  if (v13)
  {
    v19 = (v18[7] + 16 * v12);
    *v19 = a1;
    v19[1] = a2;
  }

  else
  {

    return sub_1E3997DDC(v12, a3, a1, a2, v18);
  }
}

unint64_t sub_1E3997DDC(unint64_t result, char a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  *(a5[6] + result) = a2;
  v5 = (a5[7] + 16 * result);
  *v5 = a3;
  v5[1] = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

unint64_t sub_1E3997E24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = ~(-1 << *(v3 + 32));
  for (i = a2 & v4; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    sub_1E38BAB54(a1, a2, a3);
    a1 = sub_1E4205E84();
    if (a1)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_1E3997EE4()
{
  result = qword_1ECF2FA88;
  if (!qword_1ECF2FA88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2FA80, &qword_1E42AF430);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2FA88);
  }

  return result;
}

unint64_t sub_1E3997F48(uint64_t a1, uint64_t a2)
{
  v14 = a1;
  v4 = sub_1E4205B94();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v2 + 64;
  v13 = ~(-1 << *(v2 + 32));
  for (i = a2 & v13; ((1 << i) & *(v15 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v13)
  {
    (*(v5 + 16))(v8, *(v2 + 48) + *(v5 + 72) * i, v4, v6);
    sub_1E399896C(&unk_1ECF2FAC0, MEMORY[0x1E69D3D58], MEMORY[0x1E69D3D68]);
    v10 = sub_1E4205E84();
    (*(v5 + 8))(v8, v4);
    if (v10)
    {
      break;
    }
  }

  return i;
}

unsigned __int8 *sub_1E3998104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v64 = a1;
  v65 = a2;
  v66 = a3;
  v67 = a4;
  sub_1E3998904(a1, a2, a3);

  result = sub_1E4206174();
  v8 = result;
  v9 = v7;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_1E378072C(result, v7);
    v38 = v37;

    v9 = v38;
    if ((v38 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v9 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v10 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1E4207524();
    }

    v11 = *result;
    if (v11 == 43)
    {
      if (v10 >= 1)
      {
        v22 = v10 - 1;
        if (v10 != 1)
        {
          v23 = a5 + 48;
          v24 = a5 + 55;
          v25 = a5 + 87;
          if (a5 > 10)
          {
            v23 = 58;
          }

          else
          {
            v25 = 97;
            v24 = 65;
          }

          if (result)
          {
            v16 = 0;
            v26 = result + 1;
            do
            {
              v27 = *v26;
              if (v27 < 0x30 || v27 >= v23)
              {
                if (v27 < 0x41 || v27 >= v24)
                {
                  v20 = 0;
                  if (v27 < 0x61 || v27 >= v25)
                  {
                    goto LABEL_127;
                  }

                  v28 = -87;
                }

                else
                {
                  v28 = -55;
                }
              }

              else
              {
                v28 = -48;
              }

              v29 = v16 * a5;
              if ((v16 * a5) >> 64 != (v16 * a5) >> 63)
              {
                goto LABEL_126;
              }

              v16 = v29 + (v27 + v28);
              if (__OFADD__(v29, (v27 + v28)))
              {
                goto LABEL_126;
              }

              ++v26;
              --v22;
            }

            while (v22);
LABEL_46:
            v20 = v16;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v20 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v11 != 45)
    {
      if (v10)
      {
        v30 = a5 + 48;
        v31 = a5 + 55;
        v32 = a5 + 87;
        if (a5 > 10)
        {
          v30 = 58;
        }

        else
        {
          v32 = 97;
          v31 = 65;
        }

        if (result)
        {
          v33 = 0;
          do
          {
            v34 = *result;
            if (v34 < 0x30 || v34 >= v30)
            {
              if (v34 < 0x41 || v34 >= v31)
              {
                v20 = 0;
                if (v34 < 0x61 || v34 >= v32)
                {
                  goto LABEL_127;
                }

                v35 = -87;
              }

              else
              {
                v35 = -55;
              }
            }

            else
            {
              v35 = -48;
            }

            v36 = v33 * a5;
            if ((v33 * a5) >> 64 != (v33 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v33 = v36 + (v34 + v35);
            if (__OFADD__(v36, (v34 + v35)))
            {
              goto LABEL_126;
            }

            ++result;
            --v10;
          }

          while (v10);
          v20 = v36 + (v34 + v35);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v10 >= 1)
    {
      v12 = v10 - 1;
      if (v10 != 1)
      {
        v13 = a5 + 48;
        v14 = a5 + 55;
        v15 = a5 + 87;
        if (a5 > 10)
        {
          v13 = 58;
        }

        else
        {
          v15 = 97;
          v14 = 65;
        }

        if (result)
        {
          v16 = 0;
          v17 = result + 1;
          while (1)
          {
            v18 = *v17;
            if (v18 < 0x30 || v18 >= v13)
            {
              if (v18 < 0x41 || v18 >= v14)
              {
                v20 = 0;
                if (v18 < 0x61 || v18 >= v15)
                {
                  goto LABEL_127;
                }

                v19 = -87;
              }

              else
              {
                v19 = -55;
              }
            }

            else
            {
              v19 = -48;
            }

            v21 = v16 * a5;
            if ((v16 * a5) >> 64 != (v16 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v16 = v21 - (v18 + v19);
            if (__OFSUB__(v21, (v18 + v19)))
            {
              goto LABEL_126;
            }

            ++v17;
            if (!--v12)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v20 = 0;
LABEL_127:

        return v20;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v39 = HIBYTE(v9) & 0xF;
  v64 = v8;
  v65 = v9 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v39)
      {
        v41 = 0;
        v57 = a5 + 48;
        v58 = a5 + 55;
        v59 = a5 + 87;
        if (a5 > 10)
        {
          v57 = 58;
        }

        else
        {
          v59 = 97;
          v58 = 65;
        }

        v60 = &v64;
        while (1)
        {
          v61 = *v60;
          if (v61 < 0x30 || v61 >= v57)
          {
            if (v61 < 0x41 || v61 >= v58)
            {
              v20 = 0;
              if (v61 < 0x61 || v61 >= v59)
              {
                goto LABEL_127;
              }

              v62 = -87;
            }

            else
            {
              v62 = -55;
            }
          }

          else
          {
            v62 = -48;
          }

          v63 = v41 * a5;
          if ((v41 * a5) >> 64 != (v41 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v41 = v63 + (v61 + v62);
          if (__OFADD__(v63, (v61 + v62)))
          {
            goto LABEL_126;
          }

          v60 = (v60 + 1);
          if (!--v39)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v39)
    {
      v40 = v39 - 1;
      if (v40)
      {
        v41 = 0;
        v42 = a5 + 48;
        v43 = a5 + 55;
        v44 = a5 + 87;
        if (a5 > 10)
        {
          v42 = 58;
        }

        else
        {
          v44 = 97;
          v43 = 65;
        }

        v45 = &v64 + 1;
        while (1)
        {
          v46 = *v45;
          if (v46 < 0x30 || v46 >= v42)
          {
            if (v46 < 0x41 || v46 >= v43)
            {
              v20 = 0;
              if (v46 < 0x61 || v46 >= v44)
              {
                goto LABEL_127;
              }

              v47 = -87;
            }

            else
            {
              v47 = -55;
            }
          }

          else
          {
            v47 = -48;
          }

          v48 = v41 * a5;
          if ((v41 * a5) >> 64 != (v41 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v41 = v48 - (v46 + v47);
          if (__OFSUB__(v48, (v46 + v47)))
          {
            goto LABEL_126;
          }

          ++v45;
          if (!--v40)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v39)
  {
    v49 = v39 - 1;
    if (v49)
    {
      v41 = 0;
      v50 = a5 + 48;
      v51 = a5 + 55;
      v52 = a5 + 87;
      if (a5 > 10)
      {
        v50 = 58;
      }

      else
      {
        v52 = 97;
        v51 = 65;
      }

      v53 = &v64 + 1;
      do
      {
        v54 = *v53;
        if (v54 < 0x30 || v54 >= v50)
        {
          if (v54 < 0x41 || v54 >= v51)
          {
            v20 = 0;
            if (v54 < 0x61 || v54 >= v52)
            {
              goto LABEL_127;
            }

            v55 = -87;
          }

          else
          {
            v55 = -55;
          }
        }

        else
        {
          v55 = -48;
        }

        v56 = v41 * a5;
        if ((v41 * a5) >> 64 != (v41 * a5) >> 63)
        {
          goto LABEL_126;
        }

        v41 = v56 + (v54 + v55);
        if (__OFADD__(v56, (v54 + v55)))
        {
          goto LABEL_126;
        }

        ++v53;
        --v49;
      }

      while (v49);
LABEL_125:
      v20 = v41;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

void *sub_1E3998698(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E39986D8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1E39986B8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E3998810(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1E39986D8(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FAA0, &qword_1E42AF448);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[6 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FA98, &qword_1E42AF440);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1E3998810(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FA90, &qword_1E42AF438);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_1E3998904(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE23B630;
  if (!qword_1EE23B630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE23B630);
  }

  return result;
}

uint64_t sub_1E399896C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_1E39989D0(uint64_t a1)
{
  v2 = OBJC_IVAR____TtCC8VideosUI20TomatometerTableView13ItemViewModel_headerLabel;
  OUTLINED_FUNCTION_0_12(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

void sub_1E3998A0C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCC8VideosUI20TomatometerTableView13ItemViewModel_headerLabel;
  OUTLINED_FUNCTION_37(a1);
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *sub_1E3998AA4(uint64_t a1)
{
  v2 = OBJC_IVAR____TtCC8VideosUI20TomatometerTableView13ItemViewModel_textLabel;
  OUTLINED_FUNCTION_0_12(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

void sub_1E3998AE0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCC8VideosUI20TomatometerTableView13ItemViewModel_textLabel;
  OUTLINED_FUNCTION_37(a1);
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_1E3998B78()
{
  OUTLINED_FUNCTION_0_8();
  *(v0 + OBJC_IVAR____TtCC8VideosUI20TomatometerTableView13ItemViewModel_headerLabel) = 0;
  *(v0 + OBJC_IVAR____TtCC8VideosUI20TomatometerTableView13ItemViewModel_textLabel) = 0;
  v5 = type metadata accessor for TomatometerTableView.ItemViewModel();
  v1 = OUTLINED_FUNCTION_2_0();
  return objc_msgSendSuper2(v2, v3, v1, v0, v5);
}

id sub_1E3998C24(void *a1)
{
  *&v1[OBJC_IVAR____TtCC8VideosUI20TomatometerTableView13ItemViewModel_headerLabel] = 0;
  *&v1[OBJC_IVAR____TtCC8VideosUI20TomatometerTableView13ItemViewModel_textLabel] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for TomatometerTableView.ItemViewModel();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

double sub_1E3998D30(uint64_t a1)
{
  OUTLINED_FUNCTION_0_12(a1);

  return result;
}

void sub_1E3998D68(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC8VideosUI20TomatometerTableView_itemViews;
  swift_beginAccess();
  v5 = *(v2 + v4);
  *(v2 + v4) = a1;
  v6 = OBJC_IVAR____TtC8VideosUI20TomatometerTableView_itemViews;
  swift_beginAccess();
  v7 = *&v6[v2];
  v27 = v5;
  if (v5)
  {
    if (v7)
    {

      v8 = sub_1E399A738(v5, v7);

      if (v8)
      {
        goto LABEL_31;
      }
    }

    v9 = sub_1E32AE9B0(v5);
    for (i = 0; v9 != i; ++i)
    {
      if ((v27 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x1E6911E60](i, v27);
      }

      else
      {
        if (i >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_35;
        }

        v11 = *(v27 + 8 * i + 32);
      }

      v12 = v11;
      if (__OFADD__(i, 1))
      {
        goto LABEL_34;
      }

      OUTLINED_FUNCTION_1_13();
      v14 = (*(v13 + 96))();
      if (v14)
      {
        v15 = v14;
        [v14 removeFromSuperview];
      }

      OUTLINED_FUNCTION_1_13();
      v17 = (*(v16 + 120))();
      if (v17)
      {
        v18 = v17;
        [v17 removeFromSuperview];
      }
    }

    v7 = *&v6[v2];
  }

  if (!v7)
  {
LABEL_31:
    [v2 vui_setNeedsLayout];

    return;
  }

  v19 = sub_1E32AE9B0(v7);

  for (j = 0; ; ++j)
  {
    if (v19 == j)
    {

      goto LABEL_31;
    }

    if ((v7 & 0xC000000000000001) != 0)
    {
      v21 = MEMORY[0x1E6911E60](j, v7);
    }

    else
    {
      if (j >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_33;
      }

      v21 = *(v7 + 8 * j + 32);
    }

    v22 = v21;
    if (__OFADD__(j, 1))
    {
      break;
    }

    OUTLINED_FUNCTION_1_13();
    v24 = (*(v23 + 96))();
    if (v24)
    {
      OUTLINED_FUNCTION_15_56(v24);
    }

    OUTLINED_FUNCTION_1_13();
    v26 = (*(v25 + 120))();
    if (v26)
    {
      OUTLINED_FUNCTION_15_56(v26);
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
}

void (*sub_1E3999004(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = v1;
  v4 = OBJC_IVAR____TtC8VideosUI20TomatometerTableView_itemViews;
  swift_beginAccess();
  v3[3] = *(v1 + v4);

  return sub_1E399908C;
}

void sub_1E399908C(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  if (a2)
  {

    sub_1E3998D68(v4);
  }

  else
  {
    sub_1E3998D68(v3);
  }

  free(v2);
}

void sub_1E39990F0(char a1, double a2)
{
  v4 = v2;
  v6 = [v2 vuiTraitCollection];
  v7 = [v6 isAXEnabled];

  v8 = a2;
  v86 = v7;
  if ((v7 & 1) == 0)
  {
    sub_1E399999C(a2);
    v8 = v9;
  }

  v10 = [objc_opt_self() isTV];
  [v4 vuiIsRTL];
  v11 = 0.0;
  v12 = 30.0;
  if (!v10)
  {
    v12 = 0.0;
  }

  if (v7)
  {
    v13 = a2;
  }

  else
  {
    v13 = a2 - v8 - v12;
  }

  v82 = v13;
  v14 = MEMORY[0x1E69E7CC0];
  v89 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_8_9();
  v16 = (*(v15 + 88))();
  if (!v16)
  {
    goto LABEL_53;
  }

  v17 = v16;
  v18 = sub_1E32AE9B0(v16);
  if (!v18)
  {

LABEL_53:
    v80 = sub_1E39997F8(v14);

    sub_1E399AA9C(v80, v4);
    return;
  }

  v19 = v18;
  if (v18 >= 1)
  {
    v20 = 0;
    v83 = v17 & 0xC000000000000001;
    v84 = v17;
    v87 = 0.0;
    v21 = 0.0;
    v22 = 0.0;
    v81 = v8;
    do
    {
      if (v83)
      {
        v23 = MEMORY[0x1E6911E60](v20, v17);
      }

      else
      {
        v23 = *(v17 + 8 * v20 + 32);
      }

      v24 = v23;
      OUTLINED_FUNCTION_8_9();
      v26 = (*(v25 + 96))();
      if (v26)
      {
        v27 = v26;
        [v27 sizeThatFits_];
        v29 = v28;
        if ((a1 & 1) == 0)
        {
          VUIRoundValue();
          a2 = v30;
          [v4 bounds];
          OUTLINED_FUNCTION_2_6();
          VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
          [v27 setFrame_];
          v87 = v22;
          v21 = v22;
        }

        v31 = v29 + v21;
        v32 = v87;
        if (v86)
        {
          v32 = v29 + v21;
        }

        v87 = v32;
        if (v86)
        {
          v21 = v29 + v21;
          v22 = v31;
        }

        v33 = v27;
        v34 = sub_1E3835C3C(v33);
        if (v35)
        {
          v36 = v34;
          v37 = v35;
          v38 = sub_1E3740F88(0, 1, 1, MEMORY[0x1E69E7CC0]);
          v40 = *(v38 + 2);
          v39 = *(v38 + 3);
          if (v40 >= v39 >> 1)
          {
            v78 = OUTLINED_FUNCTION_35(v39);
            v38 = sub_1E3740F88(v78, v40 + 1, 1, v38);
          }

          *(v38 + 2) = v40 + 1;
          v41 = &v38[16 * v40];
          *(v41 + 4) = v36;
          *(v41 + 5) = v37;
          OUTLINED_FUNCTION_5_8();
          OUTLINED_FUNCTION_19();
          v42 = CGRectEqualToRect(v90, v94);

          [v33 frame];
          OUTLINED_FUNCTION_4_80();

          if (!v42)
          {
            v91.origin.x = OUTLINED_FUNCTION_5_8();
            v95.origin.x = 0.0;
            v95.origin.y = v11;
            v95.size.width = a2;
            v95.size.height = v3;
            CGRectUnion(v91, v95);
            OUTLINED_FUNCTION_4_80();
          }
        }

        else
        {

          v11 = 0.0;
          a2 = 0.0;
          v3 = 0.0;
          v38 = MEMORY[0x1E69E7CC0];
        }
      }

      else
      {
        v11 = 0.0;
        a2 = 0.0;
        v3 = 0.0;
        v38 = MEMORY[0x1E69E7CC0];
        v29 = 0.0;
      }

      OUTLINED_FUNCTION_8_9();
      v44 = (*(v43 + 120))();
      if (v44)
      {
        v45 = v44;
        [v45 sizeThatFits_];
        v47 = v46;
        if ((a1 & 1) == 0)
        {
          VUIRoundValue();
          [v4 bounds];
          OUTLINED_FUNCTION_2_6();
          VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
          [v45 setFrame_];
          v21 = v87;
        }

        v48 = v86;
        if (v29 <= v47)
        {
          v48 = 1;
        }

        if (v48)
        {
          v49 = v47;
        }

        else
        {
          v49 = v29;
        }

        v22 = v49 + v21;
        v50 = v45;
        v51 = sub_1E3835C3C(v50);
        v87 = v22;
        if (v52)
        {
          v53 = v51;
          v54 = v52;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v38 = sub_1E3740F88(0, *(v38 + 2) + 1, 1, v38);
          }

          v56 = *(v38 + 2);
          v55 = *(v38 + 3);
          if (v56 >= v55 >> 1)
          {
            v79 = OUTLINED_FUNCTION_35(v55);
            v38 = sub_1E3740F88(v79, v56 + 1, 1, v38);
          }

          *(v38 + 2) = v56 + 1;
          v57 = &v38[16 * v56];
          *(v57 + 4) = v53;
          *(v57 + 5) = v54;
          OUTLINED_FUNCTION_19();
          v92.origin.x = OUTLINED_FUNCTION_5_79();
          v58 = CGRectEqualToRect(v92, v96);

          [v50 frame];
          v60 = v59;
          v62 = v61;
          v64 = v63;
          v66 = v65;

          if (v58)
          {

            v11 = v62;
            a2 = v64;
            v3 = v66;
          }

          else
          {
            v93.origin.x = OUTLINED_FUNCTION_5_79();
            v97.origin.x = v60;
            v97.origin.y = v62;
            v97.size.width = v64;
            v97.size.height = v66;
            CGRectUnion(v93, v97);
            OUTLINED_FUNCTION_4_80();
          }

          v22 = v87;
          v21 = v87;
          v8 = v81;
        }

        else
        {

          v21 = v22;
        }
      }

      v88[3] = type metadata accessor for TomatometerTableView();
      v88[0] = v4;
      v67 = objc_allocWithZone(MEMORY[0x1E69DC608]);
      v68 = v4;
      v69 = sub_1E399A6CC(v88);
      v88[0] = v38;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C420, &qword_1E429CDD0);
      sub_1E3924274();
      v70 = sub_1E4205DF4();
      v72 = v71;

      sub_1E399AB0C(v70, v72, v69);
      v73 = OUTLINED_FUNCTION_5_79();
      [v74 v75];
      v76 = v69;
      MEMORY[0x1E6910BF0]();
      v77 = *((v89 & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((v89 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v77 >> 1)
      {
        OUTLINED_FUNCTION_35(v77);
        sub_1E42062F4();
      }

      ++v20;
      sub_1E4206324();

      v17 = v84;
    }

    while (v19 != v20);
    v14 = v89;

    goto LABEL_53;
  }

  __break(1u);
}

char *sub_1E39997F8(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1E4207384();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v10 = MEMORY[0x1E69E7CC0];
  result = sub_1E37EBF70(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v3 = v10;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1E6911E60](v5, a1);
      }

      else
      {
        v6 = *(a1 + 8 * v5 + 32);
      }

      sub_1E399AB94();
      swift_dynamicCast();
      v10 = v3;
      v8 = *(v3 + 16);
      v7 = *(v3 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_1E37EBF70((v7 > 1), v8 + 1, 1);
        v3 = v10;
      }

      ++v5;
      *(v3 + 16) = v8 + 1;
      sub_1E329504C(&v9, (v3 + 32 * v8 + 32));
    }

    while (v2 != v5);
    return v3;
  }

  __break(1u);
  return result;
}

void sub_1E399999C(double a1)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_21();
  v6 = (*(v5 + 88))();
  if (!v6)
  {
    goto LABEL_24;
  }

  v7 = v6;
  v8 = sub_1E32AE9B0(v6);
  if (!v8)
  {
LABEL_23:

LABEL_24:
    VUIRoundValue();
    return;
  }

  v9 = v8;
  if (v8 >= 1)
  {
    v10 = 0;
    v11 = 0.0;
    v12 = 0.0;
    do
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x1E6911E60](v10, v7);
      }

      else
      {
        v13 = *(v7 + 8 * v10 + 32);
      }

      v14 = v13;
      v15 = (*((*v4 & *v13) + 0x78))();
      if (v15)
      {
        v16 = v15;
        [v15 sizeThatFits_];
        v18 = v17;
        v20 = v19;
        v21 = [v2 vuiTraitCollection];
        v22 = [v21 isAXEnabled];

        if (v12 <= 0.0)
        {
          v23 = 1;
        }

        else
        {
          v23 = v22;
        }

        if (v18 > v12)
        {
          v24 = v18;
        }

        else
        {
          v24 = v12;
        }

        if (v23)
        {
          v12 = v18;
        }

        else
        {
          v12 = v24;
        }

        v11 = v11 + v20;
      }

      else
      {
      }

      ++v10;
    }

    while (v9 != v10);
    goto LABEL_23;
  }

  __break(1u);
}

uint64_t sub_1E3999B64()
{
  OUTLINED_FUNCTION_21();
  result = (*(v0 + 88))();
  if (result)
  {
    v2 = result;
    result = sub_1E32AE9B0(result);
    if (result)
    {
      v3 = result;
      if (result < 1)
      {
        __break(1u);
        return result;
      }

      for (i = 0; i != v3; ++i)
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          v5 = MEMORY[0x1E6911E60](i, v2);
        }

        else
        {
          v5 = *(v2 + 8 * i + 32);
        }

        v6 = v5;
        OUTLINED_FUNCTION_8_9();
        v8 = (*(v7 + 96))();
        if (v8)
        {
          v9 = v8;
          [v8 setVuiText_];
        }

        OUTLINED_FUNCTION_21();
        v11 = (*(v10 + 120))();
        if (v11)
        {
          v12 = v11;
          [v11 setVuiText_];
        }
      }
    }
  }

  return result;
}

uint64_t sub_1E3999D94()
{
  OUTLINED_FUNCTION_21();
  v1 = (*(v0 + 88))();
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1E32AE9B0(v1);
  if (!v3)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v4 = v3;
  v26 = MEMORY[0x1E69E7CC0];
  result = sub_1E399A8EC(0, v3 & ~(v3 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v6 = 0;
    v7 = v26;
    v24 = v2 & 0xC000000000000001;
    v22 = v2 & 0xFFFFFFFFFFFFFF8;
    v23 = v2;
    v21 = v2 + 32;
    while (1)
    {
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v24)
      {
        v9 = MEMORY[0x1E6911E60](v6, v23);
      }

      else
      {
        if (v6 >= *(v22 + 16))
        {
          goto LABEL_24;
        }

        v9 = *(v21 + 8 * v6);
      }

      v10 = v9;
      ++v6;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FAE8, qword_1E42AF460);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1E4299720;
      v12 = MEMORY[0x1E69E7D40];
      *(inited + 32) = (*((*MEMORY[0x1E69E7D40] & *v10) + 0x60))();
      v13 = 0;
      *(inited + 40) = (*((*v12 & *v10) + 0x78))();
      v14 = MEMORY[0x1E69E7CC0];
      v25 = MEMORY[0x1E69E7CC0];
      while (v13 != 2)
      {
        v15 = *(inited + 8 * v13++ + 32);
        if (v15)
        {
          v16 = v15;
          MEMORY[0x1E6910BF0]();
          v17 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18);
          if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v17 >> 1)
          {
            OUTLINED_FUNCTION_35(v17);
            sub_1E42062F4();
          }

          sub_1E4206324();
          v14 = v25;
        }
      }

      swift_setDeallocating();
      result = sub_1E399A90C();
      v19 = *(v26 + 16);
      v18 = *(v26 + 24);
      if (v19 >= v18 >> 1)
      {
        v20 = OUTLINED_FUNCTION_35(v18);
        result = sub_1E399A8EC(v20, v19 + 1, 1);
      }

      *(v26 + 16) = v19 + 1;
      *(v26 + 8 * v19 + 32) = v14;
      if (v8 == v4)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_1E399A050()
{
  OUTLINED_FUNCTION_0_8();
  *(v0 + OBJC_IVAR____TtC8VideosUI20TomatometerTableView_itemViews) = 0;
  v5 = type metadata accessor for TomatometerTableView();
  v1 = OUTLINED_FUNCTION_2_0();
  return objc_msgSendSuper2(v2, v3, v1, v0, v5);
}

id sub_1E399A0CC(void *a1)
{
  *&v1[OBJC_IVAR____TtC8VideosUI20TomatometerTableView_itemViews] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for TomatometerTableView();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_1E399A180(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_1E399A204()
{
  OUTLINED_FUNCTION_0_94();
  v2 = (*(v1 + 88))();
  if (v2)
  {
    v3 = v2;
    if (sub_1E32AE9B0(v2))
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1E6911E60](0, v3);
      }

      else
      {
        if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return;
        }

        v4 = *(v3 + 32);
      }

      OUTLINED_FUNCTION_50();

      OUTLINED_FUNCTION_0_94();
      v6 = (*(v5 + 96))();

      if (v6)
      {
        [v6 vuiBaselineHeight];
      }
    }

    else
    {
    }
  }
}

void sub_1E399A300(uint64_t a1, double a2)
{
  v3 = v2;
  v6 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_21();
  v8 = (*(v7 + 88))();
  if (v8)
  {
    v9 = v8;
    if (sub_1E32AE9B0(v8))
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x1E6911E60](0, v9);
      }

      else
      {
        if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return;
        }

        v10 = *(v9 + 32);
      }

      v11 = v10;

      v13 = (*((*v6 & *v11) + 0x60))(v12);

      if (v13)
      {
        [v13 topMarginToLabel:a1 withBaselineMargin:a2];

        return;
      }
    }

    else
    {
    }
  }

  [v3 topMarginWithBaselineMargin_];
}

void sub_1E399A4BC()
{
  OUTLINED_FUNCTION_0_94();
  v2 = (*(v1 + 88))();
  if (v2)
  {
    sub_1E37CB21C(v2);
    OUTLINED_FUNCTION_50();

    if (v0)
    {
      OUTLINED_FUNCTION_0_94();
      v4 = (*(v3 + 96))();

      if (v4)
      {
        [v4 vui_baselineOffsetFromBottom];
      }
    }
  }
}

void sub_1E399A5BC(double a1)
{
  OUTLINED_FUNCTION_0_94();
  v4 = (*(v3 + 88))();
  if (v4)
  {
    sub_1E37CB21C(v4);
    OUTLINED_FUNCTION_50();

    if (v1)
    {
      OUTLINED_FUNCTION_0_94();
      v6 = (*(v5 + 96))();

      if (v6)
      {
        [v6 bottomMarginWithBaselineMargin_];
      }
    }
  }
}

id sub_1E399A6CC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v3 = [v1 initWithAccessibilityContainer_];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v3;
}

uint64_t sub_1E399A738(unint64_t a1, unint64_t a2)
{
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_36;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1E4207384())
  {
    if (a2 >> 62)
    {
      result = sub_1E4207384();
    }

    else
    {
      result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (i != result)
    {
      v18 = 0;
      return v18 & 1;
    }

    if (!i)
    {
      goto LABEL_31;
    }

    v7 = a1 & 0xFFFFFFFFFFFFFF8;
    v8 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
    if ((a1 & 0x8000000000000000) != 0)
    {
      v7 = a1;
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
LABEL_31:
      v18 = 1;
      return v18 & 1;
    }

    if (i < 0)
    {
      break;
    }

    v4 = type metadata accessor for TomatometerTableView.ItemViewModel();
    v11 = 4;
    while (1)
    {
      v12 = v11 - 4;
      v13 = v11 - 3;
      if (__OFADD__(v11 - 4, 1))
      {
        break;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x1E6911E60](v11 - 4, a1);
      }

      else
      {
        if (v12 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_34;
        }

        v14 = *(a1 + 8 * v11);
      }

      v15 = v14;
      if ((a2 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x1E6911E60](v11 - 4, a2);
      }

      else
      {
        if (v12 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_35;
        }

        v16 = *(a2 + 8 * v11);
      }

      v17 = v16;
      v18 = sub_1E4206F64();

      if (v18)
      {
        ++v11;
        if (v13 != i)
        {
          continue;
        }
      }

      return v18 & 1;
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    ;
  }

  __break(1u);
  return result;
}

void *sub_1E399A8EC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E399A96C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1E399A90C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FB58, &qword_1E42AF4B0);
  swift_arrayDestroy();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

void *sub_1E399A96C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2FB60, qword_1E42AF4B8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FB50, &qword_1E42DC5C0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1E399AA9C(uint64_t a1, void *a2)
{
  v3 = sub_1E42062A4();

  [a2 setAccessibilityElements_];
}

void sub_1E399AB0C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1E4205ED4();

  [a3 setAccessibilityLabel_];
}

unint64_t sub_1E399AB94()
{
  result = qword_1ECF2FB70;
  if (!qword_1ECF2FB70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECF2FB70);
  }

  return result;
}

uint64_t sub_1E399ABD8(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1E41FFCB4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CollectionViewModel();
  v7 = swift_dynamicCastClass();
  if (!v7)
  {
    return 2;
  }

  v8 = v7;

  v9 = [v2 removedCanonicalIDs];
  v10 = sub_1E4206624();

  v11 = *(v10 + 16);

  if (v11)
  {
    v13 = (*(*v8 + 1344))(v12);
    v18 = sub_1E373F6E0(v13, 117, v14, v15, v16, v17);
    if (v18)
    {
      v18 = (*(*v8 + 1040))();
      if (v18)
      {
        v19 = v18;
        result = sub_1E32AE9B0(v18);
        if (result)
        {
          if ((v19 & 0xC000000000000001) != 0)
          {
            v21 = MEMORY[0x1E6911E60](0, v19);
          }

          else
          {
            if (!*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              return result;
            }

            v21 = *(v19 + 32);
          }

          v23 = (*(*v21 + 872))(v22);
          if (v23)
          {
            v24 = sub_1E32AE9B0(v23);

            v25 = [v2 removedCanonicalIDs];
            v26 = sub_1E4206624();

            v27 = *(v26 + 16);

            if (v27 < v24)
            {

              return 2;
            }
          }

          else
          {
          }
        }

        else
        {
        }
      }
    }

    v32 = MEMORY[0x1EEE9AC00](v18);
    *(&v33 - 2) = v2;
    (*(*v8 + 1360))(sub_1E399AFB8, v32);

    return 1;
  }

  else
  {
    v28 = sub_1E324FBDC();
    (*(v4 + 16))(v6, v28, v3);
    v29 = sub_1E41FFC94();
    v30 = sub_1E42067F4();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_1E323F000, v29, v30, "RemovePlayHistoryEvent:: no canonical ids", v31, 2u);
      MEMORY[0x1E69143B0](v31, -1, -1);
    }

    (*(v4 + 8))(v6, v3);
    return 0;
  }
}

BOOL sub_1E399AFB8(void *a1)
{
  v3 = *(v1 + 16);
  v4 = a1[3];
  if (v4)
  {
    v5 = a1[2];
    v6 = v4;
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  LOBYTE(v17[0]) = 1;
  v7 = *(*a1 + 776);

  v7(v18, v17, &unk_1F5D5DFD8, &off_1F5D5CAB8);
  if (v18[3])
  {
    if (swift_dynamicCast())
    {
      v9 = v17[0];
      v8 = v17[1];
      goto LABEL_9;
    }
  }

  else
  {
    sub_1E329505C(v18);
  }

  v9 = 0;
  v8 = 0xE000000000000000;
LABEL_9:
  v10 = [v3 removedCanonicalIDs];
  v11 = sub_1E4206624();

  v12 = sub_1E3862230(v5, v6, v11);

  if (v12)
  {
    v13 = 1;
  }

  else
  {
    v14 = [v3 removedCanonicalIDs];
    v15 = sub_1E4206624();

    v13 = sub_1E3862230(v9, v8, v15);
  }

  return v13;
}

double sub_1E399B1D8(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;

  return result;
}

unint64_t sub_1E399B220()
{
  sub_1E42074B4();

  MEMORY[0x1E69109E0](*(v0 + 24), *(v0 + 32));
  MEMORY[0x1E69109E0](23389, 0xE200000000000000);
  v1 = sub_1E41E1364(v0);
  MEMORY[0x1E69109E0](v1);

  MEMORY[0x1E69109E0](3816029, 0xE300000000000000);
  return 0xD000000000000018;
}

uint64_t sub_1E399B2D0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = swift_allocObject();
  sub_1E399B338(a1, a2, a3, a4);
  return v8;
}

void *sub_1E399B338(uint64_t a1, uint64_t a2, uint64_t a3, id a4)
{
  v4[2] = 0;
  v4[3] = a1;
  v4[4] = a2;
  v4[5] = a3;
  [a4 mutableCopy];
  sub_1E4207264();

  swift_unknownObjectRelease();
  sub_1E3280A90(0, &unk_1ECF24E70, 0x1E695DFA0);
  swift_dynamicCast();
  v4[6] = v7;
  return v4;
}

uint64_t sub_1E399B3DC()
{

  return v0;
}

uint64_t sub_1E399B414()
{
  sub_1E399B3DC();

  return MEMORY[0x1EEE6BDC0](v0, 56, 7);
}

id sub_1E399B448()
{
  v1 = v0;
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4_6();
  v8 = (v6 - v7);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_18_6();
  v104 = v10;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_18_6();
  v99 = v12;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_18_6();
  v98 = v14;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v98 - v16;
  v18 = *(v0 + 48);
  v19 = sub_1E324FBDC();
  v20 = *(v4 + 16);
  v108 = v19;
  v109 = v4 + 16;
  v107 = v20;
  v20(v17);

  v21 = sub_1E41FFC94();
  v22 = sub_1E4206814();

  v23 = os_log_type_enabled(v21, v22);
  v105 = v4;
  v106 = v18;
  if (v23)
  {
    v24 = OUTLINED_FUNCTION_6_21();
    v25 = v2;
    v26 = v8;
    v27 = OUTLINED_FUNCTION_100();
    *&v110 = v27;
    *v24 = 136446210;
    v28 = sub_1E399B220();
    v30 = OUTLINED_FUNCTION_14_64(v28, v29);

    *(v24 + 4) = v30;
    v4 = v105;
    _os_log_impl(&dword_1E323F000, v21, v22, "%{public}schecking if there's a refresh event on page without animation.", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v27);
    v8 = v26;
    v2 = v25;
    v18 = v106;
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_55();
  }

  v31 = *(v4 + 8);
  v31(v17, v2);
  v32 = *(v0 + 40);

  v33 = sub_1E399BD70(v18, v32);
  v35 = v34;

  v100 = v35;
  v101 = v8;
  v102 = v33;
  v103 = v31;
  if (v33 && v35)
  {
    swift_retain_n();
    v36 = v35;
    [v18 removeAllObjects];
    v37 = v98;
    OUTLINED_FUNCTION_1_105();
    v38();

    v39 = v36;
    v40 = sub_1E41FFC94();
    v41 = sub_1E4206814();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = OUTLINED_FUNCTION_49_0();
      v43 = swift_slowAlloc();
      v44 = OUTLINED_FUNCTION_100();
      *&v110 = v44;
      *v42 = 136446466;
      v45 = sub_1E399B220();
      v47 = OUTLINED_FUNCTION_14_64(v45, v46);

      *(v42 + 4) = v47;
      *(v42 + 12) = 2112;
      *(v42 + 14) = v39;
      v48 = v100;
      *v43 = v100;
      v49 = v39;
      _os_log_impl(&dword_1E323F000, v40, v41, "%{public}sfound page refreshing event without animation: %@", v42, 0x16u);
      sub_1E325F748(v43, &unk_1ECF28E30, &qword_1E429E820);
      v8 = v101;
      OUTLINED_FUNCTION_6_0();
      __swift_destroy_boxed_opaque_existential_1(v44);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();
      v50 = v102;

      v31 = v103;
      v103(v98, v2);
      v99 = v48;
    }

    else
    {

      v66 = v102;

      v31 = v103;
      v103(v37, v2);
      v99 = v35;
      v50 = v66;
    }

    v62 = v104;
  }

  else
  {
    v51 = v99;
    OUTLINED_FUNCTION_1_105();
    v52();

    v53 = sub_1E41FFC94();
    v54 = sub_1E4206814();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = OUTLINED_FUNCTION_6_21();
      v56 = v31;
      v57 = OUTLINED_FUNCTION_100();
      *&v110 = v57;
      *v55 = 136446210;
      v58 = sub_1E399B220();
      v60 = OUTLINED_FUNCTION_14_64(v58, v59);

      *(v55 + 4) = v60;
      _os_log_impl(&dword_1E323F000, v53, v54, "%{public}sDid not find template refresh event. Processing other view models.", v55, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v57);
      v31 = v56;
      v18 = v106;
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();

      v61 = v99;
    }

    else
    {

      v61 = v51;
    }

    v31(v61, v2);
    v62 = v104;
    v63 = *(v1 + 40);

    sub_1E399C804(v18, v63);
    v50 = v64;
    v99 = v65;
  }

  OUTLINED_FUNCTION_1_105();
  v67();

  v68 = sub_1E41FFC94();
  v69 = sub_1E4206814();

  if (os_log_type_enabled(v68, v69))
  {
    v70 = OUTLINED_FUNCTION_100();
    v112 = swift_slowAlloc();
    *v70 = 136446722;
    v71 = sub_1E399B220();
    v73 = sub_1E3270FC8(v71, v72, &v112);

    *(v70 + 4) = v73;
    *(v70 + 12) = 2080;
    if (v50)
    {
      v74 = *(*v50 + 368);

      v76 = v50;
      v74(v75);
      OUTLINED_FUNCTION_13_67();
      v77 = MEMORY[0x1E69E6158];
    }

    else
    {
      v76 = 0;
      v74 = 0;
      v77 = 0;
      *&v111 = 0;
    }

    *&v110 = v76;
    *(&v110 + 1) = v74;
    *(&v111 + 1) = v77;
    v78 = sub_1E3294FA4(&v110);
    v80 = sub_1E3270FC8(v78, v79, &v112);

    *(v70 + 14) = v80;
    *(v70 + 22) = 2080;
    if (v50 && (v81 = *(*v50 + 264), v82 = *v50 + 264, v83 = , v81(v83), OUTLINED_FUNCTION_13_67(), v82))
    {
      *(&v111 + 1) = MEMORY[0x1E69E6158];
      *&v110 = v50;
      *(&v110 + 1) = v82;
    }

    else
    {
      v110 = 0u;
      v111 = 0u;
    }

    v84 = sub_1E3294FA4(&v110);
    v86 = sub_1E3270FC8(v84, v85, &v112);

    *(v70 + 24) = v86;
    _os_log_impl(&dword_1E323F000, v68, v69, "%{public}starget view model requiring update: %s [%s]", v70, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_55();

    v31 = v103;
    v103(v104, v2);
    v8 = v101;
  }

  else
  {

    v31(v62, v2);
  }

  OUTLINED_FUNCTION_1_105();
  v87();
  v88 = v106;

  v89 = sub_1E41FFC94();
  v90 = sub_1E4206814();

  if (os_log_type_enabled(v89, v90))
  {
    v91 = OUTLINED_FUNCTION_49_0();
    v92 = OUTLINED_FUNCTION_100();
    *&v110 = v92;
    *v91 = 136446466;
    v93 = sub_1E399B220();
    v95 = OUTLINED_FUNCTION_14_64(v93, v94);

    *(v91 + 4) = v95;
    *(v91 + 12) = 2048;
    v96 = [v88 count];

    *(v91 + 14) = v96;
    _os_log_impl(&dword_1E323F000, v89, v90, "%{public}sremaining view models after this update: %ld", v91, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v92);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_55();

    v103(v101, v2);
  }

  else
  {

    v31(v8, v2);
  }

  if (v50)
  {
    if (!v99)
    {

      return 0;
    }
  }

  else
  {
  }

  return v50;
}

id sub_1E399BD70(uint64_t a1, unint64_t a2)
{
  v102 = a2;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v104 = v3;
  v105 = v2;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4_6();
  v101 = v4 - v5;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_18_6();
  v100 = v7;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_18_6();
  v99 = v9;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v10);
  v103 = &v91 - v11;
  v12 = sub_1E41FE2B4();
  OUTLINED_FUNCTION_0_10();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v91 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E4206784();
  while (1)
  {
    do
    {
      sub_1E41FE2A4();
      if (!v110)
      {
        (*(v14 + 8))(v17, v12);
        v24 = sub_1E324FBDC();
        v26 = v104;
        v25 = v105;
        v27 = v101;
        (*(v104 + 16))(v101, v24, v105);
        v28 = v106;

        v29 = sub_1E41FFC94();
        v30 = sub_1E4206814();

        if (os_log_type_enabled(v29, v30))
        {
          v31 = OUTLINED_FUNCTION_6_21();
          v32 = OUTLINED_FUNCTION_100();
          *&v109 = v32;
          *v31 = 136446210;
          v33 = sub_1E399B220();
          sub_1E3270FC8(v33, v34, &v109);
          OUTLINED_FUNCTION_28_3();
          *(v31 + 4) = v28;
          _os_log_impl(&dword_1E323F000, v29, v30, "%{public}sthere's no template view model in list.", v31, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v32);
          OUTLINED_FUNCTION_6_0();
          OUTLINED_FUNCTION_6_0();
        }

        (*(v26 + 8))(v27, v25);
        return 0;
      }

      sub_1E329504C(&v109, v107);
      type metadata accessor for ViewModel();
      v18 = swift_dynamicCast();
    }

    while ((v18 & 1) == 0);
    v21 = v111;
    v114 = *(v111 + 98);
    v113 = 0;
    sub_1E3742F1C(v18, v19, v20);
    sub_1E4206254();
    sub_1E4206254();
    if (*&v107[0] == v111 && *(&v107[0] + 1) == v112)
    {
      break;
    }

    v23 = sub_1E42079A4();

    if (v23)
    {
      goto LABEL_14;
    }
  }

LABEL_14:
  (*(v14 + 8))(v17, v12);
  v111 = v21;
  swift_retain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FB78, &qword_1E42AF4F8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v108 = 0;
    memset(v107, 0, sizeof(v107));
    sub_1E325F748(v107, &qword_1ECF2FB80, &qword_1E42AF500);
    v37 = v105;
    v36 = v106;
    v38 = v104;
    v39 = v100;
LABEL_20:
    v41 = sub_1E324FBDC();
    (*(v38 + 16))(v39, v41, v37);

    v42 = sub_1E41FFC94();
    v43 = sub_1E4206814();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = OUTLINED_FUNCTION_6_21();
      v45 = OUTLINED_FUNCTION_100();
      *&v109 = v45;
      *v44 = 136446210;
      v46 = sub_1E399B220();
      sub_1E3270FC8(v46, v47, &v109);
      OUTLINED_FUNCTION_28_3();
      *(v44 + 4) = v36;
      _os_log_impl(&dword_1E323F000, v42, v43, "%{public}stemplate does not have valid descriptors.", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v45);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_55();
    }

    else
    {
    }

    (*(v38 + 8))(v39, v37);
    return v21;
  }

  sub_1E3251BE8(v107, &v109);
  v35 = sub_1E3CB0C34(&v109);
  v37 = v105;
  v36 = v106;
  v38 = v104;
  v39 = v100;
  if (!v35)
  {
    __swift_destroy_boxed_opaque_existential_1(&v109);
    goto LABEL_20;
  }

  v40 = v35;
  if (sub_1E374CEE0(v35))
  {
    __swift_destroy_boxed_opaque_existential_1(&v109);

    goto LABEL_20;
  }

  v49 = v102;
  result = sub_1E32AE9B0(v102);
  v100 = result;
  if (!result)
  {
LABEL_54:

    __swift_destroy_boxed_opaque_existential_1(&v109);
    return v21;
  }

  v51 = 0;
  v98 = v49 & 0xC000000000000001;
  v94 = v49 & 0xFFFFFFFFFFFFFF8;
  v93 = v49 + 32;
  v92 = v40 & 0xC000000000000001;
  v52 = v40 & 0xFFFFFFFFFFFFFF8;
  if (v40 < 0)
  {
    v52 = v40;
  }

  v91 = v52;
  v101 = v40;
  v96 = v40 + 56;
  v97 = v38 + 16;
  v104 = v38 + 8;
  *&v50 = 136446466;
  v95 = v50;
  v53 = v99;
  v54 = v103;
  while (1)
  {
    if (v98)
    {
      result = MEMORY[0x1E6911E60](v51, v102);
    }

    else
    {
      if (v51 >= *(v94 + 16))
      {
        goto LABEL_57;
      }

      result = *(v93 + 8 * v51);
    }

    v55 = result;
    if (__OFADD__(v51++, 1))
    {
      break;
    }

    if ([result isRefreshEvent] && (v57 = objc_msgSend(v55, sel_descriptor), v58 = objc_msgSend(v57, sel_animated), v57, (v58 & 1) == 0))
    {
      v70 = [v55 descriptor];
      v71 = v70;
      if (v92)
      {
        v72 = v70;
        v73 = sub_1E42073D4();

        if (v73)
        {
LABEL_55:
          __swift_destroy_boxed_opaque_existential_1(&v109);

          return v21;
        }
      }

      else
      {
        if (*(v101 + 16))
        {
          sub_1E3280A90(0, &qword_1EE23AEF0, off_1E8728218);
          v74 = v101;
          v75 = sub_1E4206F54();
          v76 = ~(-1 << *(v74 + 32));
          while (1)
          {
            v77 = v75 & v76;
            if (((*(v96 + (((v75 & v76) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v75 & v76)) & 1) == 0)
            {
              break;
            }

            v78 = *(*(v101 + 48) + 8 * v77);
            v79 = sub_1E4206F64();

            v75 = v77 + 1;
            if (v79)
            {

              goto LABEL_55;
            }
          }
        }

        v54 = v103;
      }

      sub_1E324FBDC();
      OUTLINED_FUNCTION_12_58();
      v80(v54);

      v81 = v54;
      v82 = v55;
      v83 = sub_1E41FFC94();
      v84 = sub_1E4206814();

      if (os_log_type_enabled(v83, v84))
      {
        v85 = OUTLINED_FUNCTION_49_0();
        v86 = swift_slowAlloc();
        v87 = OUTLINED_FUNCTION_100();
        v88 = OUTLINED_FUNCTION_7_86(v87);
        sub_1E3270FC8(v88, v89, v107);
        OUTLINED_FUNCTION_28_3();
        v90 = OUTLINED_FUNCTION_10_55();
        _os_log_impl(&dword_1E323F000, v83, v84, "%{public}stemplate doesn't handle this event: %@. Will check next.", v85, 0x16u);
        sub_1E325F748(v86, &unk_1ECF28E30, &qword_1E429E820);
        OUTLINED_FUNCTION_6_0();
        __swift_destroy_boxed_opaque_existential_1(v37);
        v37 = v105;
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_55();

        v54 = v103;
        result = (*v104)(v103, v37);
        v53 = v99;
      }

      else
      {

        result = (*v104)(v81, v37);
        v53 = v99;
        v54 = v81;
      }
    }

    else
    {
      sub_1E324FBDC();
      OUTLINED_FUNCTION_12_58();
      v59(v53);

      v60 = v55;
      v61 = v53;
      v62 = sub_1E41FFC94();
      v63 = sub_1E4206814();

      if (os_log_type_enabled(v62, v63))
      {
        v64 = OUTLINED_FUNCTION_49_0();
        v65 = swift_slowAlloc();
        v66 = OUTLINED_FUNCTION_100();
        v67 = OUTLINED_FUNCTION_7_86(v66);
        sub_1E3270FC8(v67, v68, v107);
        OUTLINED_FUNCTION_28_3();
        v69 = OUTLINED_FUNCTION_10_55();
        _os_log_impl(&dword_1E323F000, v62, v63, "%{public}shas template, but not refresh event: %@. Will check next.", v64, 0x16u);
        sub_1E325F748(v65, &unk_1ECF28E30, &qword_1E429E820);
        OUTLINED_FUNCTION_6_0();
        __swift_destroy_boxed_opaque_existential_1(v37);
        v37 = v105;
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_55();

        v53 = v99;
        result = (*v104)(v99, v37);
      }

      else
      {

        result = (*v104)(v61, v37);
        v53 = v61;
      }

      v54 = v103;
    }

    if (v51 == v100)
    {
      goto LABEL_54;
    }
  }

  __break(1u);
LABEL_57:
  __break(1u);
  return result;
}

void sub_1E399C804(id a1, unint64_t a2)
{
  v2 = a2;
  v3 = a1;
  v36 = a2 & 0xFFFFFFFFFFFFFF8;
  v38 = a2 & 0xC000000000000001;
  v35 = a2 + 32;
  v4 = &selRef_collectionViewCanBecomeFocused_;
  v5 = &selRef_needsAdamIdToCanonicalIdConversion;
  v6 = &selRef_processPendingChanges;
  v34 = a2 >> 62;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
          do
          {
            if ([v3 v4[219]] < 1)
            {
              return;
            }

            v7 = [v3 v5[77]];
            sub_1E4207264();
            swift_unknownObjectRelease();
            type metadata accessor for ViewModel();
          }

          while ((swift_dynamicCast() & 1) == 0);
          v8 = *&v40[0];
          [v3 v6[259]];
          v42 = v8;

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FB78, &qword_1E42AF4F8);
          if (swift_dynamicCast())
          {
            break;
          }

          v41 = 0;
          memset(v40, 0, sizeof(v40));
          sub_1E325F748(v40, &qword_1ECF2FB80, &qword_1E42AF500);
        }

        v39 = v8;
        sub_1E3251BE8(v40, v43);
        v9 = sub_1E3CB0C34(v43);
        if (v9)
        {
          break;
        }

        __swift_destroy_boxed_opaque_existential_1(v43);
      }

      v10 = v9;
      v11 = v9 & 0xC000000000000001;
      if ((v9 & 0xC000000000000001) == 0)
      {
        break;
      }

      if (sub_1E4207384())
      {
        goto LABEL_8;
      }

LABEL_30:
      __swift_destroy_boxed_opaque_existential_1(v43);
    }

    if (!*(v9 + 16))
    {
      goto LABEL_30;
    }

LABEL_8:
    if (v34)
    {
      break;
    }

    v12 = v36;
    v13 = *(v36 + 16);
    if (v13)
    {
      goto LABEL_10;
    }

LABEL_26:

    __swift_destroy_boxed_opaque_existential_1(v43);
    v3 = a1;
    v4 = &selRef_collectionViewCanBecomeFocused_;
    v5 = &selRef_needsAdamIdToCanonicalIdConversion;
    v6 = &selRef_processPendingChanges;
  }

  v13 = sub_1E4207384();
  v12 = v36;
  if (!v13)
  {
    goto LABEL_26;
  }

LABEL_10:
  sub_1E3280A90(0, &qword_1EE23AEF0, off_1E8728218);
  v14 = 0;
  v37 = v13;
  v32 = v11;
  v33 = v2;
  while (2)
  {
    if (v38)
    {
      v15 = MEMORY[0x1E6911E60](v14, v2);
    }

    else
    {
      if (v14 >= *(v12 + 16))
      {
        goto LABEL_37;
      }

      v15 = *(v35 + 8 * v14);
    }

    v16 = v15;
    if (__OFADD__(v14++, 1))
    {
      __break(1u);
LABEL_37:
      __break(1u);
      return;
    }

    v18 = [v15 descriptor];
    v19 = v18;
    if (!v11)
    {
      if (*(v10 + 16))
      {
        v22 = sub_1E4206F54();
        v23 = ~(-1 << *(v10 + 32));
        while (1)
        {
          v24 = v22 & v23;
          if (((*(v10 + 56 + (((v22 & v23) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v22 & v23)) & 1) == 0)
          {
            break;
          }

          v25 = *(*(v10 + 48) + 8 * v24);
          v26 = sub_1E4206F64();

          v22 = v24 + 1;
          if (v26)
          {

            goto LABEL_33;
          }
        }
      }

      v11 = v32;
      v2 = v33;
      v12 = v36;
LABEL_25:

      if (v14 == v37)
      {
        goto LABEL_26;
      }

      continue;
    }

    break;
  }

  v20 = v18;
  v21 = sub_1E42073D4();

  if ((v21 & 1) == 0)
  {
    v19 = v16;
    goto LABEL_25;
  }

LABEL_33:
  __swift_destroy_boxed_opaque_existential_1(v43);

  if (sub_1E373F6E0(*(v39 + 98), 0, v27, v28, v29, v30))
  {
    [a1 removeAllObjects];
  }
}

uint64_t sub_1E399CC10(uint64_t a1)
{
  v3 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_6();
  v47 = (v7 - v8);
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v43 - v10;
  v48 = 0;
  v49 = 0xE000000000000000;
  sub_1E42074B4();
  v46 = v1;
  v12 = sub_1E399B220();
  v14 = v13;

  v48 = v12;
  v49 = v14;
  v15.n128_f64[0] = MEMORY[0x1E69109E0](0xD000000000000025, 0x80000001E4269C60);
  v53 = v48;
  v54 = v49;
  sub_1E399D054(v15);
  v43[1] = 0;
  MEMORY[0x1E69109E0](93, 0xE100000000000000);
  v16 = sub_1E324FBDC();
  v44 = *(v5 + 16);
  v45 = v16;
  v44(v11);
  v17 = sub_1E41FFC94();
  v18 = sub_1E4206814();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = OUTLINED_FUNCTION_6_21();
    v20 = OUTLINED_FUNCTION_100();
    v43[0] = v3;
    v21 = v20;
    v48 = v20;
    *v19 = 136315138;
    swift_beginAccess();
    v22 = a1;
    v23 = v53;
    v24 = v54;

    v25 = sub_1E3270FC8(v23, v24, &v48);

    *(v19 + 4) = v25;
    a1 = v22;
    _os_log_impl(&dword_1E323F000, v17, v18, "%s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v21);
    v3 = v43[0];
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  v26 = *(v5 + 8);
  v26(v11, v3);
  v27 = v46;
  [*(v46 + 48) intersectOrderedSet_];
  v48 = 0;
  v49 = 0xE000000000000000;
  sub_1E42074B4();
  v28 = sub_1E399B220();
  v30 = v29;

  v48 = v28;
  v49 = v30;
  MEMORY[0x1E69109E0](0xD000000000000018, 0x80000001E4269C90);
  v51 = v48;
  v52 = v49;
  v31 = *(v27 + 48);
  sub_1E399D054(v32);

  MEMORY[0x1E69109E0](93, 0xE100000000000000);
  v33 = v47;
  (v44)(v47, v45, v3);
  v34 = sub_1E41FFC94();
  v35 = sub_1E4206814();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = OUTLINED_FUNCTION_6_21();
    v37 = OUTLINED_FUNCTION_100();
    v50 = v37;
    *v36 = 136315138;
    swift_beginAccess();
    v38 = v3;
    v40 = v51;
    v39 = v52;

    v41 = sub_1E3270FC8(v40, v39, &v50);

    *(v36 + 4) = v41;
    _os_log_impl(&dword_1E323F000, v34, v35, "%s", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v37);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();

    v26(v33, v38);
  }

  else
  {

    v26(v33, v3);
  }
}

uint64_t sub_1E399D054(__n128 a1)
{
  v1 = sub_1E41FE2B4();
  OUTLINED_FUNCTION_0_10();
  v15 = v2;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E4206784();
  sub_1E399D328(v6);
  while (1)
  {
    sub_1E4207174();
    if (!v22)
    {
      break;
    }

    sub_1E329504C(&v21, v20);
    sub_1E328438C(v20, &v18);
    type metadata accessor for ViewModel();
    if (OUTLINED_FUNCTION_11_63())
    {

      sub_1E328438C(v20, &v18);
      if (OUTLINED_FUNCTION_11_63())
      {
        v7 = v16;
        v16 = 32;
        v17 = 0xE100000000000000;
        v8 = (*(*v7 + 368))();
        MEMORY[0x1E69109E0](v8);

        v9 = MEMORY[0x1E69109E0](32, 0xE100000000000000);
        v10 = (*(*v7 + 264))(v9);
        if (v11)
        {
          *(&v19 + 1) = MEMORY[0x1E69E6158];
          *&v18 = v10;
          *(&v18 + 1) = v11;
        }

        else
        {
          v18 = 0u;
          v19 = 0u;
        }

        v12 = sub_1E3294FA4(&v18);
        MEMORY[0x1E69109E0](v12);

        MEMORY[0x1E69109E0](8236, 0xE200000000000000);
        MEMORY[0x1E69109E0](v16, v17);
      }
    }

    __swift_destroy_boxed_opaque_existential_1(v20);
  }

  return (*(v15 + 8))(v5, v1);
}

unint64_t sub_1E399D328(__n128 a1)
{
  result = qword_1EE28A478;
  if (!qword_1EE28A478)
  {
    sub_1E41FE2B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE28A478);
  }

  return result;
}

uint64_t sub_1E399D380(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  OUTLINED_FUNCTION_27_10();
  swift_allocObject();
  v4 = OUTLINED_FUNCTION_38();
  sub_1E399D3C8(v4, v3);
  return v2;
}

uint64_t sub_1E399D3C8(uint64_t a1, char a2)
{
  *(v2 + 40) = sub_1E4205F14();
  *(v2 + 48) = v5;
  *(v2 + 56) = 1;
  *(v2 + 16) = a1;
  *(v2 + 24) = 0;
  *(v2 + 32) = a2;
  return v2;
}

uint64_t sub_1E399D41C(uint64_t a1, uint64_t a2, char a3)
{
  OUTLINED_FUNCTION_27_10();
  v4 = swift_allocObject();
  v5 = OUTLINED_FUNCTION_74();
  sub_1E399D46C(v5, v6, a3);
  return v4;
}

uint64_t sub_1E399D46C(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 40) = sub_1E4205F14();
  *(v3 + 48) = v7;
  *(v3 + 56) = 1;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = a3;
  return v3;
}

void sub_1E399D4C4()
{
  v1 = *(v0 + 16);
  v2 = sub_1E32AE9B0(v1);
  v3 = 0;
  do
  {
    v4 = v3;
    if (v2 == v3)
    {
      break;
    }

    if ((v1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1E6911E60](v3, v1);
    }

    else
    {
      if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }

      v5 = *(v1 + 8 * v3 + 32);
    }

    v6 = v5;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_12:
      __break(1u);
      return;
    }

    v7 = [v5 _hasItems];

    v3 = v4 + 1;
  }

  while (!v7);
}

void sub_1E399D58C()
{
  v1 = *(v0 + 16);
  if (v1 >> 62)
  {
    goto LABEL_12;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v2)
  {
    while (v2 >= 1)
    {
      v3 = 0;
      v4 = 0;
      while (1)
      {
        v5 = (v1 & 0xC000000000000001) != 0 ? MEMORY[0x1E6911E60](v4, v1) : *(v1 + 8 * v4 + 32);
        v6 = v5;
        v7 = [v5 _countOfItems];

        v8 = __OFADD__(v3, v7);
        v3 += v7;
        if (v8)
        {
          break;
        }

        if (v2 == ++v4)
        {
          return;
        }
      }

      __break(1u);
LABEL_12:
      v2 = sub_1E4207384();
      if (!v2)
      {
        return;
      }
    }

    __break(1u);
  }
}

void sub_1E399D664()
{
  v1 = v0;
  v2 = *(v0 + 16);
  if (v2 >> 62)
  {
    goto LABEL_128;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v4 = MEMORY[0x1E69E7CC0];
  if (!v3)
  {
    return;
  }

  v79 = v2 & 0xC000000000000001;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v5 = 0;
  v74 = v2 + 32;
  v75 = v2 & 0xFFFFFFFFFFFFFF8;
  v76 = v2;
  v77 = v3;
  while (1)
  {
    if (v79)
    {
      v6 = MEMORY[0x1E6911E60](v5, v2);
    }

    else
    {
      if (v5 >= *(v75 + 16))
      {
        goto LABEL_125;
      }

      v6 = *(v74 + 8 * v5);
    }

    v7 = __OFADD__(v5++, 1);
    if (v7)
    {
      goto LABEL_124;
    }

    v80 = v6;
    v81 = sub_1E39A4AD4(v6, &selRef_items, &qword_1EE23B3F8, 0x1E69705D0);
    if (!v81)
    {
      v10 = v4;
      goto LABEL_79;
    }

    v8 = v4 >> 62;
    if (v4 >> 62)
    {
      OUTLINED_FUNCTION_21_43(v4 & 0xFFFFFFFFFFFFFF8);
      v9 = sub_1E4207384();
    }

    else
    {
      v9 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v78 = v5;
    if (v9)
    {
      v10 = MEMORY[0x1E69E7CC0];
      v87 = MEMORY[0x1E69E7CC0];
      sub_1E3827828(&qword_1ECF2FB90, &qword_1ECF2FB88, &qword_1E42AF578);
      v84 = 0;
      v11 = 0;
      v2 = v81;
      v82 = v4;
      while (1)
      {
        v88[0] = v4;
        v89 = v11;
        v90 = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FB88, &qword_1E42AF578);
        v12 = OUTLINED_FUNCTION_8_55();
        sub_1E38D2054(v12, v13);
        v88[0] = v2;
        v89 = v84;
        v90 = 0;
        OUTLINED_FUNCTION_8_55();
        OUTLINED_FUNCTION_112_1();
        sub_1E38D2054(v14, v15);
        if (!v86)
        {

          v2 = v76;
          v5 = v78;
          goto LABEL_79;
        }

        objc_opt_self();
        v16 = swift_dynamicCastObjCClass();
        if (v16)
        {
          v17 = v16;
          objc_opt_self();
          v18 = swift_dynamicCastObjCClass();
          v19 = v86;
          v20 = v86;
          if (v18)
          {
            v21 = [v17 representativeItem];
            if (!v21)
            {
              v22 = v19;
              v21 = v17;
            }

            v23 = [v18 representativeItem];

            if (v23)
            {

              v20 = v23;
            }

            else
            {
              v20 = v18;
            }
          }

          else
          {
            v21 = v19;
          }
        }

        else
        {
          v21 = v86;
          v20 = v86;
        }

        OUTLINED_FUNCTION_25();
        swift_beginAccess();

        v24 = sub_1E4205ED4();

        v25 = [v21 valueForProperty_];

        if (v25)
        {
          sub_1E4207264();
          swift_unknownObjectRelease();

          v26 = sub_1E4205ED4();

          v27 = [v20 valueForProperty_];

          if (v27)
          {
            sub_1E4207264();
            swift_unknownObjectRelease();
            sub_1E399F56C();
            v29 = v28;

            __swift_destroy_boxed_opaque_existential_1(v88);
            __swift_destroy_boxed_opaque_existential_1(&v89);
            OUTLINED_FUNCTION_25();
            swift_beginAccess();
            v30 = *(v1 + 56);
            v31 = v30 == 1 && v29 == 1;
            if (v31 || (v30 == 2 ? (v32 = v29 == -1) : (v32 = 0), v32))
            {
              v33 = v86;
            }

            else
            {
              v33 = v86;
            }

            goto LABEL_39;
          }

          __swift_destroy_boxed_opaque_existential_1(&v89);
        }

        v33 = v86;
LABEL_39:
        v2 = v81;
        v34 = v33;
        sub_1E3280A90(0, &qword_1EE23AD70, 0x1E69E58C0);
        v35 = v86;
        v36 = sub_1E4206F64();

        if (v36)
        {
          v37 = v35;
          MEMORY[0x1E6910BF0]();
          OUTLINED_FUNCTION_11_64();
          v40 = *(v38 + 16);
          v39 = *(v38 + 24);
          if (v40 >= v39 >> 1)
          {
            v44 = OUTLINED_FUNCTION_35(v39);
            OUTLINED_FUNCTION_19_48(v44, v40 + 1);
          }

          OUTLINED_FUNCTION_102_3();
          sub_1E4206324();

          v7 = __OFADD__(v11++, 1);
          if (v7)
          {
            __break(1u);
            __break(1u);
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
LABEL_128:
            v3 = sub_1E4207384();
            goto LABEL_3;
          }

          v4 = v82;
          v10 = v87;
        }

        else
        {
          v41 = v86;
          MEMORY[0x1E6910BF0]();
          OUTLINED_FUNCTION_10_56();
          if (v43)
          {
            v45 = OUTLINED_FUNCTION_35(v42);
            OUTLINED_FUNCTION_19_48(v45, v86 + 1);
          }

          sub_1E4206324();

          v7 = __OFADD__(v84++, 1);
          if (v7)
          {
            goto LABEL_123;
          }

          v10 = v87;
          v4 = v82;
        }
      }
    }

    v85 = v81 >> 62 ? sub_1E4207384() : *((v81 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      OUTLINED_FUNCTION_21_43(v4 & 0xFFFFFFFFFFFFFF8);
      v46 = sub_1E4207384();
    }

    else
    {
      v46 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v47 = v46 + v85;
    if (__OFADD__(v46, v85))
    {
      break;
    }

    if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (!v8)
      {
        goto LABEL_63;
      }

LABEL_62:
      OUTLINED_FUNCTION_21_43(v4 & 0xFFFFFFFFFFFFFF8);
      sub_1E4207384();
      goto LABEL_63;
    }

    if (v8)
    {
      goto LABEL_62;
    }

    v48 = v4 & 0xFFFFFFFFFFFFFF8;
    if (v47 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v10 = v4;
      goto LABEL_64;
    }

LABEL_63:
    v10 = sub_1E4207514();
    v48 = v10 & 0xFFFFFFFFFFFFFF8;
LABEL_64:
    v49 = *(v48 + 16);
    v50 = (*(v48 + 24) >> 1) - v49;
    v51 = v48 + 8 * v49;
    if (v81 >> 62)
    {
      v53 = sub_1E4207384();
      if (v53)
      {
        v54 = v53;
        v83 = sub_1E4207384();
        if (v50 < v83)
        {
          goto LABEL_136;
        }

        if (v54 < 1)
        {
          goto LABEL_137;
        }

        v55 = v51 + 32;
        sub_1E3827828(&qword_1ECF2FB90, &qword_1ECF2FB88, &qword_1E42AF578);
        for (i = 0; i != v54; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FB88, &qword_1E42AF578);
          v57 = sub_1E374111C(&v89, i, v81);
          v59 = *v58;
          (v57)(&v89, 0);
          *(v55 + 8 * i) = v59;
        }

        v2 = v76;
        v52 = v83;
        goto LABEL_74;
      }
    }

    else
    {
      v52 = *((v81 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v52)
      {
        if (v50 < v52)
        {
          goto LABEL_135;
        }

        sub_1E3280A90(0, &qword_1EE23B3F8, 0x1E69705D0);
        swift_arrayInitWithCopy();
LABEL_74:

        v5 = v78;
        if (v52 < v85)
        {
          goto LABEL_130;
        }

        if (v52 > 0)
        {
          v60 = *(v48 + 16);
          v7 = __OFADD__(v60, v52);
          v61 = v60 + v52;
          if (v7)
          {
            goto LABEL_134;
          }

          *(v48 + 16) = v61;
        }

        goto LABEL_79;
      }
    }

    v5 = v78;
    if (v85 > 0)
    {
      goto LABEL_130;
    }

LABEL_79:
    v62 = *(v1 + 24);
    if (v62 >= 1)
    {
      v63 = v10 >> 62;
      v64 = v77;
      if (v10 >> 62)
      {
        v65 = sub_1E4207384();
        v62 = *(v1 + 24);
      }

      else
      {
        v65 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v62 >= v65)
      {
LABEL_114:

        goto LABEL_115;
      }

      if (v62 < 0)
      {
        goto LABEL_126;
      }

      if (v63)
      {
        if (sub_1E4207384() < 0)
        {
          goto LABEL_131;
        }

        v66 = sub_1E4207384();
      }

      else
      {
        v66 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v66 < v62)
      {
        goto LABEL_127;
      }

      if ((v10 & 0xC000000000000001) != 0 && v62)
      {
        sub_1E3280A90(0, &qword_1EE23B3F8, 0x1E69705D0);
        OUTLINED_FUNCTION_38();

        v67 = 0;
        do
        {
          v68 = v67 + 1;
          sub_1E42074F4();
          v67 = v68;
        }

        while (v62 != v68);
        if (!v63)
        {
          goto LABEL_96;
        }
      }

      else
      {

        if (!v63)
        {
LABEL_96:
          OUTLINED_FUNCTION_40_26();
LABEL_99:
          swift_unknownObjectRetain();

          v69 = v62 >> 1;
          if (v62)
          {
            sub_1E42079E4();
            swift_unknownObjectRetain_n();
            v72 = swift_dynamicCastClass();
            if (!v72)
            {
              swift_unknownObjectRelease();
              v72 = MEMORY[0x1E69E7CC0];
            }

            v73 = *(v72 + 16);

            v70 = v69 - v63;
            if (__OFSUB__(v69, v63))
            {
              goto LABEL_133;
            }

            if (v73 == v70)
            {
              v10 = swift_dynamicCastClass();

              OUTLINED_FUNCTION_46_19();
              v2 = v76;
              if (!v10)
              {
                swift_unknownObjectRelease();
                v10 = MEMORY[0x1E69E7CC0];
              }

              swift_unknownObjectRelease();
              goto LABEL_115;
            }

            swift_unknownObjectRelease_n();
            v2 = v76;
          }

          else
          {
            v70 = v69 - v63;
            if (__OFSUB__(v69, v63))
            {
              goto LABEL_132;
            }
          }

          v10 = MEMORY[0x1E69E7CC0];
          if (v70)
          {
            if (v70 >= 1)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
              v10 = swift_allocObject();
              _swift_stdlib_malloc_size(v10);
              OUTLINED_FUNCTION_3_83();
              *(v10 + 16) = v70;
              *(v10 + 24) = v71;
            }

            swift_unknownObjectRelease();
            if (v63 == v69)
            {
              goto LABEL_138;
            }

            sub_1E3280A90(0, &qword_1EE23B3F8, 0x1E69705D0);
            OUTLINED_FUNCTION_112_1();
            swift_arrayInitWithCopy();
            swift_unknownObjectRelease();
          }

          else
          {
            OUTLINED_FUNCTION_46_19();
          }

          goto LABEL_114;
        }
      }

      OUTLINED_FUNCTION_27_27();
      OUTLINED_FUNCTION_35_24();
      goto LABEL_99;
    }

    v64 = v77;
LABEL_115:
    v4 = v10;
    if (v5 == v64)
    {
      return;
    }
  }

  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  swift_unknownObjectRelease();

  __break(1u);
}

uint64_t sub_1E399E150(unint64_t a1)
{
  v3 = sub_1E32AE9B0(a1);
  v4 = sub_1E32AE9B0(*v1);
  v5 = __OFADD__(v4, v3);
  result = v4 + v3;
  if (v5)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_1E3797CDC(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1E38CF794(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v10 < 1)
  {
LABEL_6:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_1E399E1FC()
{
  v2 = v0;
  v3 = *(v0 + 16);
  if (v3 >> 62)
  {
    goto LABEL_124;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v5 = MEMORY[0x1E69E7CC0];
  if (!v4)
  {
    return;
  }

  v71 = v3 & 0xC000000000000001;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v6 = 0;
  v67 = v3 + 32;
  v68 = v3 & 0xFFFFFFFFFFFFFF8;
  v75 = v5;
  v69 = v3;
  v70 = v4;
  while (1)
  {
    if (v71)
    {
      v7 = MEMORY[0x1E6911E60](v6, v3);
    }

    else
    {
      if (v6 >= *(v68 + 16))
      {
        goto LABEL_121;
      }

      v7 = *(v67 + 8 * v6);
    }

    v8 = __OFADD__(v6, 1);
    v9 = v6 + 1;
    if (v8)
    {
      goto LABEL_120;
    }

    v72 = v7;
    v10 = sub_1E39A4AD4(v7, &selRef_collections, &qword_1EE23B108, 0x1E69705E0);
    v73 = v9;
    if (!v10)
    {
      v13 = v75;
      goto LABEL_75;
    }

    v11 = v10;
    v3 = v75;
    v12 = v75 >> 62;
    if (v75 >> 62)
    {
      OUTLINED_FUNCTION_30_29(v75 & 0xFFFFFFFFFFFFFF8);
      if (!sub_1E4207384())
      {
        goto LABEL_46;
      }

LABEL_13:
      v13 = MEMORY[0x1E69E7CC0];
      v79 = MEMORY[0x1E69E7CC0];
      sub_1E3827828(&qword_1EE23B480, &qword_1ECF2FB98, &unk_1E42AF580);
      v14 = 0;
      v74 = v11;
      while (1)
      {
        v80[0] = v3;
        v81 = v14;
        v82 = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FB98, &unk_1E42AF580);
        v15 = OUTLINED_FUNCTION_8_55();
        sub_1E38D2054(v15, v16);
        v80[0] = v11;
        v81 = 0;
        v82 = 0;
        v17 = OUTLINED_FUNCTION_8_55();
        sub_1E38D2054(v17, v18);
        v1 = v78;
        if (!v78)
        {

          v3 = v69;
          goto LABEL_75;
        }

        v19 = [v78 representativeItem];
        if (!v19)
        {
          v19 = v78;
        }

        v20 = [v78 representativeItem];
        if (!v20)
        {
          v20 = v78;
        }

        OUTLINED_FUNCTION_25();
        swift_beginAccess();

        v21 = sub_1E4205ED4();

        v22 = [v19 valueForProperty_];

        if (!v22)
        {
          goto LABEL_32;
        }

        sub_1E4207264();
        swift_unknownObjectRelease();

        v23 = sub_1E4205ED4();

        v24 = [v20 valueForProperty_];

        if (!v24)
        {
          break;
        }

        sub_1E4207264();
        swift_unknownObjectRelease();
        sub_1E399F56C();
        v26 = v25;

        __swift_destroy_boxed_opaque_existential_1(v80);
        __swift_destroy_boxed_opaque_existential_1(&v81);
        OUTLINED_FUNCTION_25();
        swift_beginAccess();
        v27 = *(v2 + 56);
        v28 = v27 == 1 && v26 == 1;
        v11 = v74;
        if (v28 || (v27 == 2 ? (v29 = v26 == -1) : (v29 = 0), v29))
        {
          v30 = v78;
        }

        else
        {
          v30 = v78;
        }

LABEL_33:
        v3 = v75;
        v31 = v30;
        sub_1E3280A90(0, &qword_1EE23AD70, 0x1E69E58C0);
        v32 = v78;
        v33 = sub_1E4206F64();

        if (v33)
        {
          v34 = v32;
          MEMORY[0x1E6910BF0]();
          OUTLINED_FUNCTION_11_64();
          v37 = *(v35 + 16);
          v36 = *(v35 + 24);
          if (v37 >= v36 >> 1)
          {
            v41 = OUTLINED_FUNCTION_35(v36);
            OUTLINED_FUNCTION_19_48(v41, v37 + 1);
          }

          sub_1E4206324();

          v8 = __OFADD__(v14++, 1);
          if (v8)
          {
            __break(1u);
            __break(1u);
            __break(1u);
LABEL_119:
            __break(1u);
LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
LABEL_123:
            __break(1u);
LABEL_124:
            v4 = sub_1E4207384();
            goto LABEL_3;
          }
        }

        else
        {
          v1 = v78;
          MEMORY[0x1E6910BF0]();
          OUTLINED_FUNCTION_11_64();
          v40 = *(v38 + 16);
          v39 = *(v38 + 24);
          if (v40 >= v39 >> 1)
          {
            v42 = OUTLINED_FUNCTION_35(v39);
            OUTLINED_FUNCTION_19_48(v42, v40 + 1);
          }

          sub_1E4206324();

          OUTLINED_FUNCTION_17_49();
          if (v8)
          {
            goto LABEL_119;
          }
        }

        v13 = v79;
      }

      __swift_destroy_boxed_opaque_existential_1(&v81);
LABEL_32:

      v30 = v78;
      v11 = v74;
      goto LABEL_33;
    }

    if (*((v75 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_13;
    }

LABEL_46:
    v77 = v11 >> 62 ? sub_1E4207384() : *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
      OUTLINED_FUNCTION_30_29(v75 & 0xFFFFFFFFFFFFFF8);
      v43 = sub_1E4207384();
    }

    else
    {
      v43 = *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v44 = v43 + v77;
    if (__OFADD__(v43, v77))
    {
      break;
    }

    if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (!v12)
      {
        goto LABEL_59;
      }

LABEL_58:
      OUTLINED_FUNCTION_30_29(v75 & 0xFFFFFFFFFFFFFF8);
      sub_1E4207384();
      goto LABEL_59;
    }

    if (v12)
    {
      goto LABEL_58;
    }

    v45 = v75 & 0xFFFFFFFFFFFFFF8;
    if (v44 <= *((v75 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v13 = v75;
      goto LABEL_60;
    }

LABEL_59:
    v13 = sub_1E4207514();
    v45 = v13 & 0xFFFFFFFFFFFFFF8;
LABEL_60:
    v46 = *(v45 + 16);
    v47 = (*(v45 + 24) >> 1) - v46;
    v48 = v45 + 8 * v46;
    if (v11 >> 62)
    {
      if (sub_1E4207384())
      {
        OUTLINED_FUNCTION_41_23();
        v50 = sub_1E4207384();
        if (v47 < v50)
        {
          goto LABEL_132;
        }

        if (v1 < 1)
        {
          goto LABEL_133;
        }

        v76 = v50;
        sub_1E3827828(&qword_1EE23B480, &qword_1ECF2FB98, &unk_1E42AF580);
        for (i = 0; i != v1; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FB98, &unk_1E42AF580);
          v52 = sub_1E39A4E38(&v81, i, v11);
          v54 = *v53;
          (v52)(&v81, 0);
          *(v48 + 32 + 8 * i) = v54;
        }

        v49 = v76;
        goto LABEL_70;
      }
    }

    else
    {
      v49 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v49)
      {
        if (v47 < v49)
        {
          goto LABEL_131;
        }

        sub_1E3280A90(0, &qword_1EE23B108, 0x1E69705E0);
        swift_arrayInitWithCopy();
LABEL_70:

        v3 = v69;
        if (v49 < v77)
        {
          goto LABEL_126;
        }

        if (v49 > 0)
        {
          v55 = *(v45 + 16);
          v8 = __OFADD__(v55, v49);
          v56 = v55 + v49;
          if (v8)
          {
            goto LABEL_130;
          }

          *(v45 + 16) = v56;
        }

        goto LABEL_75;
      }
    }

    v3 = v69;
    if (v77 > 0)
    {
      goto LABEL_126;
    }

LABEL_75:
    v1 = *(v2 + 24);
    if (v1 < 1)
    {

      v60 = v70;
      v6 = v73;
    }

    else
    {
      v57 = v13 >> 62;
      v6 = v73;
      if (v13 >> 62)
      {
        v58 = sub_1E4207384();
        v1 = *(v2 + 24);
      }

      else
      {
        v58 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v1 < v58)
      {
        if (v1 < 0)
        {
          goto LABEL_122;
        }

        if (v57)
        {
          if (sub_1E4207384() < 0)
          {
            goto LABEL_127;
          }

          v59 = sub_1E4207384();
        }

        else
        {
          v59 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v59 < v1)
        {
          goto LABEL_123;
        }

        if ((v13 & 0xC000000000000001) != 0 && v1)
        {
          sub_1E3280A90(0, &qword_1EE23B108, 0x1E69705E0);
          OUTLINED_FUNCTION_38();

          v61 = 0;
          do
          {
            v62 = v61 + 1;
            sub_1E42074F4();
            v61 = v62;
          }

          while (v1 != v62);
          if (!v57)
          {
            goto LABEL_92;
          }
        }

        else
        {

          if (!v57)
          {
LABEL_92:
            OUTLINED_FUNCTION_40_26();
            goto LABEL_95;
          }
        }

        OUTLINED_FUNCTION_27_27();
        OUTLINED_FUNCTION_35_24();
LABEL_95:
        swift_unknownObjectRetain();

        v63 = v1 >> 1;
        if (v1)
        {
          sub_1E42079E4();
          swift_unknownObjectRetain_n();
          v65 = swift_dynamicCastClass();
          if (!v65)
          {
            swift_unknownObjectRelease();
            v65 = MEMORY[0x1E69E7CC0];
          }

          v66 = *(v65 + 16);

          v1 = v63 - v57;
          if (__OFSUB__(v63, v57))
          {
            goto LABEL_129;
          }

          if (v66 == v1)
          {
            v13 = swift_dynamicCastClass();

            OUTLINED_FUNCTION_46_19();
            v3 = v69;
            if (!v13)
            {
              swift_unknownObjectRelease();
              v13 = MEMORY[0x1E69E7CC0];
            }

            swift_unknownObjectRelease();
LABEL_111:
            v60 = v70;
            v6 = v73;
            goto LABEL_112;
          }

          swift_unknownObjectRelease_n();
          v3 = v69;
        }

        else
        {
          v1 = v63 - v57;
          if (__OFSUB__(v63, v57))
          {
            goto LABEL_128;
          }
        }

        v13 = MEMORY[0x1E69E7CC0];
        if (v1)
        {
          if (v1 >= 1)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
            v13 = swift_allocObject();
            _swift_stdlib_malloc_size(v13);
            OUTLINED_FUNCTION_3_83();
            *(v13 + 16) = v1;
            *(v13 + 24) = v64;
          }

          swift_unknownObjectRelease();
          if (v57 == v63)
          {
            goto LABEL_134;
          }

          sub_1E3280A90(0, &qword_1EE23B108, 0x1E69705E0);
          OUTLINED_FUNCTION_112_1();
          swift_arrayInitWithCopy();
          swift_unknownObjectRelease();
        }

        else
        {
          OUTLINED_FUNCTION_46_19();
        }

        goto LABEL_111;
      }

      v60 = v70;
    }

LABEL_112:
    v75 = v13;
    if (v6 == v60)
    {
      return;
    }
  }

  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  swift_unknownObjectRelease();

  __break(1u);
}

void sub_1E399EC28()
{
  v1 = *(v0 + 16);
  if (v1 >> 62)
  {
LABEL_107:
    v2 = sub_1E4207384();
    if (!v2)
    {
      return;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      return;
    }
  }

  v64 = v1 & 0xC000000000000001;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v3 = 0;
  v58 = v1 + 32;
  v59 = v1 & 0xFFFFFFFFFFFFFF8;
  v4 = MEMORY[0x1E69E7CC0];
  v60 = v1;
  v61 = v0;
  v63 = v2;
  while (1)
  {
    if (v64)
    {
      v5 = MEMORY[0x1E6911E60](v3, v1);
    }

    else
    {
      if (v3 >= *(v59 + 16))
      {
        goto LABEL_97;
      }

      v5 = *(v58 + 8 * v3);
    }

    v6 = v5;
    v7 = __OFADD__(v3++, 1);
    if (v7)
    {
      __break(1u);
LABEL_95:
      __break(1u);
LABEL_96:
      __break(1u);
LABEL_97:
      __break(1u);
LABEL_98:
      __break(1u);
LABEL_99:
      __break(1u);
LABEL_100:
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
      goto LABEL_107;
    }

    v8 = sub_1E39A4AD4(v5, &selRef_collections, &qword_1EE23B108, 0x1E69705E0);
    if (!v8)
    {
      goto LABEL_40;
    }

    v9 = v8;
    v10 = v8 >> 62;
    if (v8 >> 62)
    {
      OUTLINED_FUNCTION_30_29(v8 & 0xFFFFFFFFFFFFFF8);
      v11 = sub_1E4207384();
    }

    else
    {
      v11 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v12 = v4 >> 62;
    if (v4 >> 62)
    {
      OUTLINED_FUNCTION_21_43(v4 & 0xFFFFFFFFFFFFFF8);
      v13 = sub_1E4207384();
    }

    else
    {
      v13 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v0 = v13 + v11;
    if (__OFADD__(v13, v11))
    {
      goto LABEL_95;
    }

    v65 = v11;
    if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (v12)
      {
LABEL_20:
        OUTLINED_FUNCTION_21_43(v4 & 0xFFFFFFFFFFFFFF8);
        sub_1E4207384();
      }

LABEL_21:
      v4 = sub_1E4207514();
      v14 = v4 & 0xFFFFFFFFFFFFFF8;
      goto LABEL_22;
    }

    if (v12)
    {
      goto LABEL_20;
    }

    v14 = v4 & 0xFFFFFFFFFFFFFF8;
    if (v0 > *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_21;
    }

LABEL_22:
    v15 = v1;
    v66 = v3;
    v16 = *(v14 + 16);
    v17 = (*(v14 + 24) >> 1) - v16;
    v0 = v14 + 8 * v16;
    v62 = v14;
    if (v10)
    {
      if (v9 < 0)
      {
        v1 = v9;
      }

      else
      {
        v1 = v9 & 0xFFFFFFFFFFFFFF8;
      }

      v19 = sub_1E4207384();
      if (v19)
      {
        v20 = v19;
        v21 = sub_1E4207384();
        if (v17 < v21)
        {
          goto LABEL_102;
        }

        if (v20 < 1)
        {
          goto LABEL_103;
        }

        v56 = v21;
        v57 = v4;
        v22 = v0 + 32;
        sub_1E3827828(&qword_1EE23B480, &qword_1ECF2FB98, &unk_1E42AF580);
        for (i = 0; i != v20; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FB98, &unk_1E42AF580);
          v24 = sub_1E39A4E38(v67, i, v9);
          v26 = *v25;
          (v24)(v67, 0);
          *(v22 + 8 * i) = v26;
        }

        v1 = v60;
        v0 = v61;
        v4 = v57;
        v18 = v56;
        goto LABEL_35;
      }
    }

    else
    {
      v18 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v18)
      {
        if (v17 < v18)
        {
          goto LABEL_101;
        }

        sub_1E3280A90(0, &qword_1EE23B108, 0x1E69705E0);
        swift_arrayInitWithCopy();
        v0 = v61;
LABEL_35:

        v3 = v66;
        v2 = v63;
        if (v18 < v65)
        {
          goto LABEL_96;
        }

        if (v18 > 0)
        {
          v27 = *(v62 + 16);
          v7 = __OFADD__(v27, v18);
          v28 = v27 + v18;
          if (v7)
          {
            goto LABEL_100;
          }

          *(v62 + 16) = v28;
        }

        goto LABEL_40;
      }
    }

    v2 = v63;
    v1 = v15;
    v0 = v61;
    if (v65 > 0)
    {
      goto LABEL_96;
    }

LABEL_40:
    if (!(v4 >> 62))
    {
      v29 = v4 & 0xFFFFFFFFFFFFFF8;

LABEL_42:
      v30 = v6;
      goto LABEL_43;
    }

    v46 = v1;
    v47 = sub_1E4207384();
    if (!v47)
    {

      v29 = MEMORY[0x1E69E7CC0];
      goto LABEL_42;
    }

    v48 = v47;
    v29 = sub_1E37FEA14(v47, 0);

    OUTLINED_FUNCTION_112_1();
    sub_1E39A4EC4(v49, v50, v51);
    v52 = v0;
    v54 = v53;

    v55 = v54 == v48;
    v0 = v52;
    v1 = v46;
    v30 = v6;
    if (!v55)
    {
      break;
    }

LABEL_43:
    v67[0] = v29;

    sub_1E399FDBC(v67, v0);

    v4 = v67[0];
    v31 = *(v0 + 24);
    if (v31 > 0)
    {
      v32 = v0;
      if (v67[0] < 0)
      {
        v0 = 1;
      }

      else
      {
        v0 = (v67[0] >> 62) & 1;
      }

      if (v0 == 1)
      {
        v33 = sub_1E4207384();
        v31 = *(v32 + 24);
      }

      else
      {
        v33 = *(v67[0] + 16);
      }

      if (v31 >= v33)
      {

LABEL_91:
        v0 = v32;
        goto LABEL_92;
      }

      if (v31 < 0)
      {
        goto LABEL_98;
      }

      if (v0)
      {
        if (sub_1E4207384() < 0)
        {
          goto LABEL_104;
        }

        v34 = sub_1E4207384();
      }

      else
      {
        v34 = *(v4 + 16);
      }

      if (v34 < v31)
      {
        goto LABEL_99;
      }

      if ((v4 & 0xC000000000000001) != 0 && v31)
      {
        sub_1E3280A90(0, &qword_1EE23B108, 0x1E69705E0);

        v35 = 0;
        do
        {
          v36 = v35 + 1;
          sub_1E42074F4();
          v35 = v36;
        }

        while (v31 != v36);
        if (v0)
        {
          goto LABEL_63;
        }
      }

      else
      {

        if (v0)
        {
LABEL_63:

          sub_1E4207704();
          v1 = v37;
          v39 = v38;
          goto LABEL_66;
        }
      }

      v1 = 0;
      v39 = (2 * v31) | 1;
LABEL_66:
      swift_unknownObjectRetain();

      v0 = v39 >> 1;
      if (v39)
      {
        sub_1E42079E4();
        swift_unknownObjectRetain_n();
        v43 = swift_dynamicCastClass();
        if (!v43)
        {
          swift_unknownObjectRelease();
          v43 = MEMORY[0x1E69E7CC0];
        }

        v44 = *(v43 + 16);

        v41 = v1;
        v7 = __OFSUB__(v0, v1);
        v40 = v0 - v1;
        v1 = v60;
        if (v7)
        {
          goto LABEL_106;
        }

        if (v44 == v40)
        {
          v45 = swift_dynamicCastClass();

          v4 = v45;
          swift_unknownObjectRelease_n();
          if (!v45)
          {
            swift_unknownObjectRelease();
            v4 = MEMORY[0x1E69E7CC0];
          }

          swift_unknownObjectRelease();
          goto LABEL_90;
        }

        swift_unknownObjectRelease_n();
        if (v40)
        {
LABEL_69:
          if (v40 < 1)
          {
            v4 = MEMORY[0x1E69E7CC0];
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
            v4 = swift_allocObject();
            _swift_stdlib_malloc_size(v4);
            OUTLINED_FUNCTION_3_83();
            *(v4 + 16) = v40;
            *(v4 + 24) = v42;
          }

          swift_unknownObjectRelease();
          if (v41 == v0)
          {
            goto LABEL_109;
          }

          sub_1E3280A90(0, &qword_1EE23B108, 0x1E69705E0);
          swift_arrayInitWithCopy();
          swift_unknownObjectRelease();

          goto LABEL_90;
        }
      }

      else
      {
        v40 = v0 - v1;
        if (__OFSUB__(v0, v1))
        {
          goto LABEL_105;
        }

        v41 = v1;
        v1 = v60;
        if (v40)
        {
          goto LABEL_69;
        }
      }

      swift_unknownObjectRelease_n();

      v4 = MEMORY[0x1E69E7CC0];
LABEL_90:
      v2 = v63;
      goto LABEL_91;
    }

LABEL_92:
    if (v3 == v2)
    {
      return;
    }
  }

  __break(1u);
LABEL_109:
  swift_unknownObjectRelease();

  __break(1u);

  __break(1u);
}

BOOL sub_1E399F390(id *a1, void **a2, uint64_t a3)
{
  v5 = *a1;
  v6 = *a2;
  v7 = [*a1 representativeItem];
  if (!v7)
  {
    v7 = v5;
  }

  v8 = [v6 representativeItem];
  if (!v8)
  {
    v8 = v6;
  }

  OUTLINED_FUNCTION_25();
  swift_beginAccess();

  sub_1E4205ED4();
  OUTLINED_FUNCTION_41_23();

  v9 = [v7 valueForProperty_];

  if (!v9)
  {
    goto LABEL_18;
  }

  sub_1E4207264();
  swift_unknownObjectRelease();
  sub_1E329504C(v18, v19);

  sub_1E4205ED4();
  OUTLINED_FUNCTION_41_23();

  v10 = [v8 valueForProperty_];

  if (!v10)
  {
    __swift_destroy_boxed_opaque_existential_1(v19);
LABEL_18:

    return 0;
  }

  sub_1E4207264();
  swift_unknownObjectRelease();
  sub_1E329504C(&v17, v18);
  sub_1E399F56C();
  v12 = v11;

  __swift_destroy_boxed_opaque_existential_1(v18);
  __swift_destroy_boxed_opaque_existential_1(v19);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v13 = *(a3 + 56);
  if (v13 == 1 && v12 == 1)
  {
    return 0;
  }

  return v13 != 2 || v12 != -1;
}

void sub_1E399F56C()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v58 = *v0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28E20, &unk_1E42986D0);
  v7 = OUTLINED_FUNCTION_17_2(v6);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v55 - v11;
  v13 = sub_1E41FE5D4();
  OUTLINED_FUNCTION_0_10();
  v60 = v14;
  MEMORY[0x1EEE9AC00](v15);
  v59 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v55 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FBA0, &unk_1E42B49D0);
  v21 = OUTLINED_FUNCTION_17_2(v20);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v55 - v22;
  sub_1E328438C(v5, v65);
  OUTLINED_FUNCTION_36_23();
  if (swift_dynamicCast())
  {
    v57 = v23;
    v24 = v9;
    v25 = v64;
    v56 = v63;
    v26 = v3;
    sub_1E328438C(v3, v65);
    OUTLINED_FUNCTION_36_23();
    if (swift_dynamicCast())
    {
      v27 = v25;
      v29 = v63;
      v28 = v64;
      OUTLINED_FUNCTION_25();
      swift_beginAccess();
      v30 = v1[5];
      v31 = v1[6];
      if (v30 == sub_1E4205F14() && v31 == v32)
      {

        v35 = v27;
        v36 = v57;
      }

      else
      {
        v34 = sub_1E42079A4();

        v35 = v27;
        v36 = v57;
        if ((v34 & 1) == 0)
        {
          goto LABEL_20;
        }
      }

      if (*(v1 + 32) == 1)
      {
        sub_1E399FA2C();
LABEL_21:

        goto LABEL_22;
      }

LABEL_20:
      v63 = v56;
      v64 = v35;
      v61 = v29;
      v62 = v28;
      sub_1E41FE6C4();
      OUTLINED_FUNCTION_32_2();
      v52 = __swift_storeEnumTagSinglePayload(v48, v49, v50, v51);
      sub_1E32822E0(v52, v53, v54);
      OUTLINED_FUNCTION_25();
      sub_1E4207244();
      sub_1E325F748(v36, &qword_1ECF2FBA0, &unk_1E42B49D0);
      goto LABEL_21;
    }

    v9 = v24;
  }

  else
  {
    v26 = v3;
  }

  sub_1E328438C(v5, v65);
  OUTLINED_FUNCTION_36_23();
  if ((swift_dynamicCast() & 1) == 0)
  {
    OUTLINED_FUNCTION_32_2();
    __swift_storeEnumTagSinglePayload(v41, v42, v43, v13);
    v44 = v12;
LABEL_16:
    sub_1E325F748(v44, &unk_1ECF28E20, &unk_1E42986D0);
    goto LABEL_22;
  }

  __swift_storeEnumTagSinglePayload(v12, 0, 1, v13);
  v37 = v60;
  v38 = *(v60 + 32);
  v38(v19, v12, v13);
  sub_1E328438C(v26, v65);
  OUTLINED_FUNCTION_36_23();
  if ((swift_dynamicCast() & 1) == 0)
  {
    (*(v37 + 8))(v19, v13);
    OUTLINED_FUNCTION_32_2();
    __swift_storeEnumTagSinglePayload(v45, v46, v47, v13);
    v44 = v9;
    goto LABEL_16;
  }

  __swift_storeEnumTagSinglePayload(v9, 0, 1, v13);
  v39 = v59;
  v38(v59, v9, v13);
  sub_1E41FE5A4();
  v40 = *(v37 + 8);
  v40(v39, v13);
  v40(v19, v13);
LABEL_22:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E399FA2C()
{
  OUTLINED_FUNCTION_31_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FBA0, &unk_1E42B49D0);
  v1 = OUTLINED_FUNCTION_17_2(v0);
  MEMORY[0x1EEE9AC00](v1);
  v37 = &v35 - v2;
  sub_1E41FDEC4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8_6();
  sub_1E399FEF0();
  v7 = v6;
  v9 = v8;
  OUTLINED_FUNCTION_102_3();
  sub_1E399FEF0();
  v11 = v10;
  v13 = v12;
  v14 = OUTLINED_FUNCTION_8_6();
  if ((sub_1E39A0350(v14, v15) & 0x100000000) != 0)
  {
    v18 = 0;
    v36 = 0;
  }

  else
  {
    sub_1E41FDEA4();
    v36 = sub_1E41FDEB4();
    v16 = *(v4 + 8);
    v17 = OUTLINED_FUNCTION_32_7();
    v16(v17);
    sub_1E41FDE74();
    v18 = sub_1E41FDEB4();
    v19 = OUTLINED_FUNCTION_32_7();
    v16(v19);
  }

  v20 = OUTLINED_FUNCTION_102_3();
  if (sub_1E39A0350(v20, v21) & 0x100000000) == 0 && ((v35 = v18, sub_1E41FDEA4(), v22 = sub_1E41FDEB4(), v23 = *(v4 + 8), v24 = OUTLINED_FUNCTION_32_7(), v23(v24), sub_1E41FDE74(), v25 = sub_1E41FDEB4(), v26 = OUTLINED_FUNCTION_32_7(), v23(v26), (v36 & v25) || (v22 & v35))
  {
  }

  else
  {
    v40 = v7;
    v41 = v9;
    v38 = v11;
    v39 = v13;
    sub_1E41FE6C4();
    v27 = v37;
    OUTLINED_FUNCTION_32_2();
    v32 = __swift_storeEnumTagSinglePayload(v28, v29, v30, v31);
    sub_1E32822E0(v32, v33, v34);
    OUTLINED_FUNCTION_25();
    sub_1E4207244();
    sub_1E325F748(v27, &qword_1ECF2FBA0, &unk_1E42B49D0);
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E399FCE4()
{

  return v0;
}

uint64_t sub_1E399FD0C()
{
  sub_1E399FCE4();
  OUTLINED_FUNCTION_27_10();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

unint64_t sub_1E399FD44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = MEMORY[0x1E69E7CC0];

  sub_1E399E150(v5);

  sub_1E399E150(v6);
  sub_1E399FE60(&v8, v3, a3);
  return v8;
}

uint64_t sub_1E399FDBC(uint64_t *a1, id *a2)
{
  v4 = *a1;
  swift_retain_n();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_1E34AF5E0(v4);
    *a1 = v4;
  }

  v6 = *(v4 + 16);
  v8[0] = v4 + 32;
  v8[1] = v6;

  sub_1E39A27DC(v8, a2);
  sub_1E4207554();
}

uint64_t sub_1E399FE60(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v6 & 0x8000000000000000) != 0 || (v6 & 0x4000000000000000) != 0)
  {
    v6 = sub_1E37EFA58(v6);
  }

  v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v9[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
  v9[1] = v7;
  result = sub_1E39A2908(v9, a2, a3);
  *a1 = v6;
  return result;
}

void sub_1E399FEF0()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FBA0, &unk_1E42B49D0);
  v5 = OUTLINED_FUNCTION_17_2(v4);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v51 - v6;
  v53 = sub_1E41FDEC4();
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  v52 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_opt_self() sharedInstance];
  if (!v12)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v13 = v12;
  v14 = sub_1E3741090(0xD000000000000022, 0x80000001E4269D40, v12);
  v16 = v15;

  if (!v16)
  {
LABEL_20:
    __break(1u);
    return;
  }

  v51 = v3;
  v59 = v14;
  v60 = v16;
  v57 = 124;
  v58 = 0xE100000000000000;
  v55 = sub_1E32822E0(v17, v18, v19);
  v20 = sub_1E4207194();

  v21 = v20[2];
  v54 = v9;
  v56 = v1;
  if (!v21)
  {

    v20 = &unk_1F5D66330;
    v21 = 3;
  }

  v57 = MEMORY[0x1E69E7CC0];
  sub_1E377FD30(0, v21, 0);
  v22 = v57;
  v23 = v20 + 5;
  do
  {
    v24 = *v23;
    v59 = *(v23 - 1);
    v60 = v24;
    swift_bridgeObjectRetain_n();
    MEMORY[0x1E69109E0](32, 0xE100000000000000);

    v26 = v59;
    v25 = v60;
    v57 = v22;
    v28 = v22[2];
    v27 = v22[3];
    if (v28 >= v27 >> 1)
    {
      v30 = OUTLINED_FUNCTION_35(v27);
      sub_1E377FD30(v30, v28 + 1, 1);
      v22 = v57;
    }

    v22[2] = v28 + 1;
    v29 = &v22[2 * v28];
    v29[4] = v26;
    v29[5] = v25;
    v23 += 2;
    --v21;
  }

  while (v21);

  v31 = v52;
  v59 = v51;
  v60 = v56;
  sub_1E41FDE84();
  v32 = sub_1E42071E4();
  v34 = v33;
  v35 = *(v54 + 8);
  v54 += 8;
  v51 = v35;
  v35(v31, v53);
  v36 = v22[2];
  if (v36)
  {
    v56 = sub_1E41FE6C4();
    v37 = v22 + 5;
    do
    {
      v38 = *(v37 - 1);
      v39 = *v37;
      v59 = v32;
      v60 = v34;
      v57 = v38;
      v58 = v39;
      OUTLINED_FUNCTION_32_2();
      __swift_storeEnumTagSinglePayload(v40, v41, v42, v56);

      OUTLINED_FUNCTION_25();
      sub_1E4207234();
      v44 = v43;
      v46 = v45;
      sub_1E325F748(v7, &qword_1ECF2FBA0, &unk_1E42B49D0);

      if ((v46 & 1) == 0)
      {
        v47 = HIBYTE(v34) & 0xF;
        if ((v34 & 0x2000000000000000) == 0)
        {
          v47 = v32 & 0xFFFFFFFFFFFFLL;
        }

        if (4 * v47 < v44 >> 14)
        {
          __break(1u);
          goto LABEL_19;
        }

        sub_1E4206184();

        v48 = OUTLINED_FUNCTION_32_0();
        v32 = MEMORY[0x1E6910920](v48);
        v34 = v49;
      }

      v37 += 2;
      --v36;
    }

    while (v36);
  }

  v59 = v32;
  v60 = v34;
  v50 = v52;
  sub_1E41FDE94();
  sub_1E42071E4();
  v51(v50, v53);

  OUTLINED_FUNCTION_32_0();
  OUTLINED_FUNCTION_25_2();
}

unint64_t sub_1E39A0350(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = sub_1E39A5300(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v10 = sub_1E42074A4();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v17[0] = a1;
        v17[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v8 = v17 + v6;
        v10 = *(v17 + v6);
        if (*(v17 + v6) < 0)
        {
          switch(__clz(v10 ^ 0xFF))
          {
            case 0x1Au:
LABEL_14:
              v10 = v8[1] & 0x3F | ((v10 & 0x1F) << 6);
              break;
            case 0x1Bu:
LABEL_15:
              v11 = v8[1];
              v12 = v8[2];
              v13 = ((v10 & 0xF) << 12) | ((v11 & 0x3F) << 6);
              goto LABEL_17;
            case 0x1Cu:
LABEL_16:
              v14 = v8[1];
              v15 = v8[2];
              v12 = v8[3];
              v13 = ((v10 & 0xF) << 18) | ((v14 & 0x3F) << 12) | ((v15 & 0x3F) << 6);
LABEL_17:
              v10 = v13 & 0xFFFFFFC0 | v12 & 0x3F;
              break;
            default:
              break;
          }
        }
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v7 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        }

        else
        {
          v7 = sub_1E4207524();
        }

        v8 = (v7 + v6);
        v9 = *(v7 + v6);
        v10 = *(v7 + v6);
        if (v9 < 0)
        {
          switch(__clz(v10 ^ 0xFF))
          {
            case 0x1Au:
              goto LABEL_14;
            case 0x1Bu:
              goto LABEL_15;
            case 0x1Cu:
              goto LABEL_16;
            default:
              break;
          }
        }
      }
    }
  }

  else
  {
    v10 = 0;
  }

  LOBYTE(v17[0]) = v2 == 0;
  return v10 | ((v2 == 0) << 32);
}

id sub_1E39A04E4(uint64_t a1)
{
  v1 = [objc_opt_self() vui:a1 moviesQueryWithMediaLibrary:?];
  [v1 vui_excludePreorderContent];
  v2 = sub_1E3280A90(0, &qword_1EE23B020, 0x1E6970610);
  OUTLINED_FUNCTION_7_87();
  if (_MergedGlobals_175 != -1)
  {
    swift_once();
  }

  v11 = OUTLINED_FUNCTION_16_49(v3, v4, v5, v6, v7, v8, v9, v10, v78, v81, v84[0]);
  v14 = sub_1E39A0840(v11, v12, v13, 107);
  OUTLINED_FUNCTION_7_87();
  if (qword_1EE28B7F8 != -1)
  {
    swift_once();
  }

  v23 = OUTLINED_FUNCTION_16_49(v15, v16, v17, v18, v19, v20, v21, v22, v79, v82, v84[0]);
  v26 = sub_1E39A0840(v23, v24, v25, 107);
  OUTLINED_FUNCTION_7_87();
  if (qword_1EE28B810 != -1)
  {
    swift_once();
  }

  v35 = OUTLINED_FUNCTION_16_49(v27, v28, v29, v30, v31, v32, v33, v34, v80, v83, v84[0]);
  v36 = sub_1E39A09C0(v35);
  OUTLINED_FUNCTION_7_87();
  if (qword_1EE28B828 != -1)
  {
    swift_once();
  }

  v37 = sub_1E39A09C0(v84);
  v38 = sub_1E3280A90(0, &qword_1EE23AF78, 0x1E69705A0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31B50, &qword_1E429B030);
  v40 = OUTLINED_FUNCTION_28_30(v39);
  *(v40 + 16) = xmmword_1E4299720;
  *(v40 + 32) = v14;
  *(v40 + 88) = v2;
  *(v40 + 56) = v2;
  *(v40 + 64) = v26;
  v41 = v14;
  v42 = v26;
  v43 = sub_1E39A1E5C(v40);
  if (v43)
  {
    v44 = v43;
    v45 = OUTLINED_FUNCTION_28_30(v39);
    OUTLINED_FUNCTION_89_1(v45, v46, v47, v48, v49, v50, v51, v52, v53, v54);
    v55[4] = v36;
    v55[11] = v2;
    v55[7] = v2;
    v55[8] = v37;
    v56 = v36;
    v57 = v37;
    v58 = sub_1E39A1E5C(v45);
    if (v58)
    {
      v59 = v58;
      v60 = OUTLINED_FUNCTION_28_30(v39);
      OUTLINED_FUNCTION_89_1(v60, v61, v62, v63, v64, v65, v66, v67, v68, v69);
      v70[4] = v44;
      v70[11] = v38;
      v70[7] = v38;
      v70[8] = v59;
      v71 = v59;
      v72 = v44;
      v73 = sub_1E39A1E5C(v60);
      if (v73)
      {
        v74 = v73;
        [v1 addFilterPredicate_];
      }
    }
  }

  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
  v76 = OUTLINED_FUNCTION_24_3(v75);
  OUTLINED_FUNCTION_14_65(v76, xmmword_1E4298880);
  type metadata accessor for ComposedMediaQuery();
  OUTLINED_FUNCTION_27_10();
  swift_allocObject();
  OUTLINED_FUNCTION_4_81();

  return v1;
}

id sub_1E39A0840(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a1[3];
  if (v5)
  {
    v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v8 = *(v5 - 8);
    v9 = MEMORY[0x1EEE9AC00](v7);
    v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 16))(v11, v9);
    v12 = sub_1E4207994();
    (*(v8 + 8))(v11, v5);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v12 = 0;
  }

  v13 = sub_1E4205ED4();

  v14 = [swift_getObjCClassFromMetadata() predicateWithValue:v12 forProperty:v13 comparisonType:a4];
  swift_unknownObjectRelease();

  return v14;
}

id sub_1E39A09C0(void *a1)
{
  v1 = a1[3];
  if (v1)
  {
    v3 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v4 = *(v1 - 8);
    v5 = MEMORY[0x1EEE9AC00](v3);
    v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v4 + 16))(v7, v5);
    v8 = sub_1E4207994();
    (*(v4 + 8))(v7, v1);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_1E4205ED4();

  v10 = [swift_getObjCClassFromMetadata() predicateWithValue:v8 forProperty:v9];
  swift_unknownObjectRelease();

  return v10;
}

uint64_t sub_1E39A0B38(uint64_t a1)
{
  type metadata accessor for ComposedMediaQuery();
  OUTLINED_FUNCTION_27_10();
  v1 = swift_allocObject();
  sub_1E399D3C8(MEMORY[0x1E69E7CC0], 0);
  return v1;
}

uint64_t sub_1E39A0B78(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1E429DCC0;
  v3 = [objc_opt_self() vui:a1 moviesQueryWithMediaLibrary:?];
  *(v2 + 32) = v3;
  *(v2 + 40) = OUTLINED_FUNCTION_13_0(v3, sel_vui_tvShowsQueryWithMediaLibrary_);
  result = sub_1E32AE9B0(v2);
  if (!result)
  {
LABEL_8:
    type metadata accessor for ComposedMediaQuery();
    OUTLINED_FUNCTION_27_10();
    v35 = swift_allocObject();
    sub_1E399D3C8(v2, 0);
    v36 = sub_1E4205F14();
    v38 = v37;
    OUTLINED_FUNCTION_3_0((v35 + 5), v41);
    v35[5] = v36;
    v35[6] = v38;

    OUTLINED_FUNCTION_3_0((v35 + 7), v40);
    v35[7] = 2;
    return v35;
  }

  v5 = result;
  if (result >= 1)
  {
    v6 = 0;
    v7 = MEMORY[0x1E69E6158];
    v39 = xmmword_1E4297BE0;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1E6911E60](v6, v2);
      }

      else
      {
        v8 = *(v2 + 8 * v6 + 32);
      }

      v9 = v8;
      ++v6;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31B50, &qword_1E429B030);
      OUTLINED_FUNCTION_27_10();
      v10 = swift_allocObject();
      OUTLINED_FUNCTION_89_1(v10, v11, v12, v13, v14, v15, v16, v17, v18, v19);
      v20 = sub_1E4205F14();
      v10[3].n128_u64[1] = v7;
      v10[2].n128_u64[0] = v20;
      v10[2].n128_u64[1] = v21;
      sub_1E39A4B48(v10, v9);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2B710, &qword_1E429AC10);
      inited = swift_initStackObject();
      OUTLINED_FUNCTION_89_1(inited, v23, v24, v25, v26, v27, v28, v29, v30, v31);
      v41[0] = sub_1E4205F14();
      v41[1] = v32;
      sub_1E4207414();
      v33 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
      inited[6].n128_u64[0] = sub_1E3280A90(0, &qword_1EE23ADD0, 0x1E696AD98);
      inited[4].n128_u64[1] = v33;
      v34 = sub_1E4205CB4();
      sub_1E39A4BB8(v34, v9);
    }

    while (v5 != v6);
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

void *sub_1E39A0E24()
{
  OUTLINED_FUNCTION_155();
  v2 = [objc_opt_self() *v0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31B50, &qword_1E429B030);
  OUTLINED_FUNCTION_27_10();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1E4297BE0;
  v4 = sub_1E4205F14();
  *(v3 + 56) = MEMORY[0x1E69E6158];
  *(v3 + 32) = v4;
  *(v3 + 40) = v5;
  sub_1E39A4B48(v3, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2B710, &qword_1E429AC10);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_89_1(inited, v7, v8, v9, v10, v11, v12, v13, v14, v15);
  v26[0] = sub_1E4205F14();
  v26[1] = v16;
  sub_1E4207414();
  v17 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
  inited[6].n128_u64[0] = sub_1E3280A90(0, &qword_1EE23ADD0, 0x1E696AD98);
  inited[4].n128_u64[1] = v17;
  v18 = sub_1E4205CB4();
  sub_1E39A4BB8(v18, v2);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
  v20 = OUTLINED_FUNCTION_24_3(v19);
  OUTLINED_FUNCTION_14_65(v20, xmmword_1E4298880);
  type metadata accessor for ComposedMediaQuery();
  OUTLINED_FUNCTION_27_10();
  swift_allocObject();
  OUTLINED_FUNCTION_4_81();
  v21 = sub_1E4205F14();
  v23 = v22;
  OUTLINED_FUNCTION_3_0((v2 + 5), v26);
  v2[5] = v21;
  v2[6] = v23;

  OUTLINED_FUNCTION_3_0((v2 + 7), v25);
  v2[7] = 2;
  return v2;
}

id sub_1E39A100C(uint64_t a1, char a2)
{
  v4 = objc_opt_self();
  v5 = &selRef_vui_movieRentalsQueryWithMediaLibrary_;
  if ((a2 & 1) == 0)
  {
    v5 = &selRef_vui_moviesQueryWithMediaLibrary_;
  }

  v6 = [v4 *v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
  v8 = OUTLINED_FUNCTION_24_3(v7);
  OUTLINED_FUNCTION_14_65(v8, xmmword_1E4298880);
  type metadata accessor for ComposedMediaQuery();
  OUTLINED_FUNCTION_27_10();
  swift_allocObject();
  OUTLINED_FUNCTION_4_81();
  return v6;
}

id sub_1E39A10B4(uint64_t a1)
{
  v1 = [swift_getObjCClassFromMetadata() vui:a1 tvShowsQueryWithMediaLibrary:?];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
  v3 = OUTLINED_FUNCTION_24_3(v2);
  OUTLINED_FUNCTION_14_65(v3, xmmword_1E4298880);
  type metadata accessor for ComposedMediaQuery();
  OUTLINED_FUNCTION_27_10();
  swift_allocObject();
  OUTLINED_FUNCTION_4_81();
  return v1;
}

id sub_1E39A1134(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  OUTLINED_FUNCTION_155();
  sub_1E3280A90(0, &qword_1EE23B020, 0x1E6970610);
  v21 = MEMORY[0x1E69E6158];
  v19 = v5;
  v20 = v4;
  sub_1E4205F14();

  v8 = sub_1E39A09C0(&v19);
  v9 = [objc_opt_self() vui:a4 episodesQueryWithMediaLibrary:{v19, v20}];
  v10 = sub_1E3280A90(0, &qword_1EE23B3A0, 0x1E6970618);
  sub_1E39A12C4(v10, v11, v12);
  if (v13)
  {
    v14 = v13;
    if (a3)
    {
      [v9 addFilterPredicate_];
    }
  }

  [v9 setIgnoreSystemFilterPredicates_];
  [v9 setGroupingType_];
  [v9 addFilterPredicate_];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
  v16 = OUTLINED_FUNCTION_24_3(v15);
  *(v16 + 16) = xmmword_1E4298880;
  *(v16 + 32) = v9;
  type metadata accessor for ComposedMediaQuery();
  OUTLINED_FUNCTION_27_10();
  swift_allocObject();
  v17 = OUTLINED_FUNCTION_38();
  sub_1E399D3C8(v17, 0);

  return v9;
}

void sub_1E39A12C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v89 = MEMORY[0x1E69E7CD0];
  if (TVAppFeature.isEnabled.getter(12, a2, a3))
  {
    sub_1E41FF204();
    sub_1E41FF1F4();
    v3 = sub_1E41FF1E4();

    if ((v3 & 1) == 0)
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1E4298880;
      *(inited + 32) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithLongLong_];
      goto LABEL_6;
    }
  }

  else
  {
    v5 = [objc_opt_self() sharedInstance];
    v6 = [v5 isNetworkReachable];

    if ((v6 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E42A73A0;
  *(inited + 32) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithLongLong_];
  *(inited + 40) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithLongLong_];
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithLongLong_];
LABEL_6:
  if (sub_1E32AE9B0(inited))
  {
    sub_1E39A4920(inited, &qword_1ECF2FBC8, &qword_1E42E9790, &qword_1EE23ADD0, 0x1E696AD98);
  }

  else
  {
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
  v7 = swift_initStackObject();
  *(v7 + 16) = xmmword_1E429DCC0;
  *(v7 + 32) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithLongLong_];
  *(v7 + 40) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithLongLong_];
  if (sub_1E32AE9B0(v7))
  {
    v8 = sub_1E39A4920(v7, &qword_1ECF2FBC8, &qword_1E42E9790, &qword_1EE23ADD0, 0x1E696AD98);
  }

  else
  {

    v8 = MEMORY[0x1E69E7CD0];
  }

  v9 = [objc_opt_self() defaultManager];
  v10 = [v9 sidebandMediaLibrary];

  sub_1E3280A90(0, &qword_1EE23ADD0, 0x1E696AD98);
  sub_1E3940E4C(&qword_1EE23ADC8, &qword_1EE23ADD0, 0x1E696AD98);
  v11 = sub_1E4206614();

  v12 = sub_1E39A4C38(v11, v8, 0, 0, v10);

  if (!v12)
  {
    v15 = 0;
    v16 = 0;
LABEL_28:
    if (*(v89 + 16))
    {
      sub_1E3280A90(0, &qword_1ECF2FBA8, 0x1E69705A8);
      v26 = sub_1E4205F14();
      v28 = v27;

      sub_1E39A232C(v29);
      v31 = v30;

      v32 = sub_1E39A2554(v26, v28, v31);
    }

    else
    {
      v32 = 0;
    }

    v33 = sub_1E3280A90(0, &qword_1EE23B020, 0x1E6970610);
    v34 = MEMORY[0x1E69E6370];
    v86 = MEMORY[0x1E69E6370];
    LOBYTE(aBlock[0]) = 0;
    v35 = sub_1E4205F14();
    v43 = OUTLINED_FUNCTION_26_37(v35, v36, v37, v38, v39, v40, v41, v42, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82);
    v86 = v34;
    LOBYTE(aBlock[0]) = 1;
    v44 = sub_1E4205F14();
    v52 = OUTLINED_FUNCTION_26_37(v44, v45, v46, v47, v48, v49, v50, v51, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83);
    v53 = sub_1E3280A90(0, &unk_1EE23AF80, 0x1E6970598);
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31B50, &qword_1E429B030);
    v55 = OUTLINED_FUNCTION_28_30(v54);
    *(v55 + 16) = xmmword_1E4299720;
    *(v55 + 32) = v52;
    *(v55 + 88) = v33;
    *(v55 + 56) = v33;
    *(v55 + 64) = v43;
    v56 = v52;
    v57 = v43;
    v58 = sub_1E39A1E5C(v55);
    if (v58)
    {
      if (v32)
      {
        sub_1E3280A90(0, &qword_1EE23AF78, 0x1E69705A0);
        v59 = OUTLINED_FUNCTION_28_30(v54);
        *(v59 + 16) = xmmword_1E4299720;
        *(v59 + 56) = v53;
        *(v59 + 32) = v58;
        *(v59 + 88) = sub_1E3280A90(0, &unk_1EE23B2B0, 0x1E6970608);
        *(v59 + 64) = v32;
        v60 = v32;
        v61 = v58;
        sub_1E39A1E5C(v59);
      }
    }

    else
    {

      v56 = v32;
    }

    sub_1E34AF594(v15, v16);
    return;
  }

  v13 = sub_1E32AE9B0(v12);
  if (!v13)
  {
    v15 = 0;
    v16 = 0;
LABEL_27:

    goto LABEL_28;
  }

  v14 = v13;
  if (v13 < 1)
  {
    goto LABEL_38;
  }

  v15 = 0;
  v16 = 0;
  v17 = 0;
  v64 = &v85;
  v66 = v12 & 0xC000000000000001;
  while (1)
  {
    if (v66)
    {
      v18 = MEMORY[0x1E6911E60](v17, v12);
    }

    else
    {
      v18 = *(v12 + 8 * v17 + 32);
    }

    v19 = v18;
    v20 = [v18 managedObjectContext];
    if (!v20)
    {

      goto LABEL_23;
    }

    v21 = v20;
    v22 = swift_allocObject();
    *(v22 + 16) = v19;
    *(v22 + 24) = &v89;
    v23 = v19;
    sub_1E34AF594(v15, v16);
    v24 = swift_allocObject();
    v15 = sub_1E39A506C;
    *(v24 + 16) = sub_1E39A506C;
    *(v24 + 24) = v22;
    v87 = sub_1E379E500;
    v88 = v24;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    v85 = sub_1E3839B50;
    v86 = &block_descriptor_35;
    v25 = _Block_copy(aBlock);

    [v21 performBlockAndWait_];

    _Block_release(v25);
    LOBYTE(v23) = swift_isEscapingClosureAtFileLocation();

    if (v23)
    {
      break;
    }

    v16 = v22;
LABEL_23:
    if (v14 == ++v17)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
}

id sub_1E39A1A04()
{
  OUTLINED_FUNCTION_155();
  v2 = [objc_opt_self() *v0];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
  v4 = OUTLINED_FUNCTION_24_3(v3);
  OUTLINED_FUNCTION_14_65(v4, xmmword_1E4298880);
  type metadata accessor for ComposedMediaQuery();
  OUTLINED_FUNCTION_27_10();
  swift_allocObject();
  OUTLINED_FUNCTION_4_81();
  return v2;
}

void sub_1E39A1A84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1E429DCC0;
  v6 = [objc_opt_self() vui:a3 moviesQueryWithMediaLibrary:?];
  *(v5 + 32) = v6;
  v57 = v5 + 32;
  *(v5 + 40) = OUTLINED_FUNCTION_13_0(v6, sel_vui_tvShowsQueryWithMediaLibrary_);
  v58 = v5;
  v7 = sub_1E32AE9B0(v5);
  if (!v7)
  {
LABEL_23:
    type metadata accessor for ComposedMediaQuery();
    OUTLINED_FUNCTION_27_10();
    swift_allocObject();
    sub_1E399D3C8(v58, 0);
    return;
  }

  v8 = v7;
  v9 = sub_1E3280A90(0, &qword_1EE23B020, 0x1E6970610);
  v10 = 0;
  v59 = v5 & 0xC000000000000001;
  v55 = v5 & 0xFFFFFFFFFFFFFF8;
  v54 = xmmword_1E4299720;
  v56 = v9;
  while (1)
  {
    if (v59)
    {
      v11 = MEMORY[0x1E6911E60](v10, v58);
    }

    else
    {
      if (v10 >= *(v55 + 16))
      {
        goto LABEL_25;
      }

      v11 = *(v57 + 8 * v10);
    }

    v12 = v11;
    if (__OFADD__(v10++, 1))
    {
      break;
    }

    v63[3] = MEMORY[0x1E69E6158];
    v63[0] = a1;
    v63[1] = a2;
    sub_1E4205F14();

    v14 = sub_1E39A09C0(v63);
    v15 = sub_1E39A4D40(v12);
    if (!v15)
    {
      goto LABEL_21;
    }

    v16 = v15;
    v61 = v14;
    v62 = v12;
    v17 = v15 & 0xC000000000000001;
    if ((v15 & 0xC000000000000001) != 0)
    {
      v18 = a2;
      sub_1E4207334();
      v19 = sub_1E42073E4();
      v21 = v20;
      v22 = OUTLINED_FUNCTION_74();
      v23 = MEMORY[0x1E6911CB0](v22);
      v24 = v19;
      a2 = v18;
      v9 = v56;
      sub_1E3746E04(v24, v21, 1);
      if (v23)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v25 = 0;
      v26 = (v15 + 56);
      v27 = 1 << *(v15 + 32);
      v28 = (v27 + 63) >> 6;
      if (!v28)
      {
        goto LABEL_17;
      }

      while (!*v26)
      {
        v25 -= 64;
        --v28;
        ++v26;
        if (!v28)
        {
          goto LABEL_17;
        }
      }

      if (__clz(__rbit64(*v26)) - v27 == v25)
      {
LABEL_17:
        v29 = OUTLINED_FUNCTION_74();
        sub_1E3746E04(v29, v30, v31);

        v14 = v61;
        v12 = v62;
LABEL_21:
        [v12 addFilterPredicate_];
        goto LABEL_22;
      }
    }

    v32 = OUTLINED_FUNCTION_74();
    sub_1E39A551C(v32, v33, v17 != 0, v16);
    v35 = v34;
    v36 = OUTLINED_FUNCTION_74();
    sub_1E3746E04(v36, v37, v17 != 0);

    sub_1E3280A90(0, &unk_1EE23AF80, 0x1E6970598);
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31B50, &qword_1E429B030);
    v39 = OUTLINED_FUNCTION_28_30(v38);
    OUTLINED_FUNCTION_89_1(v39, v40, v41, v42, v43, v44, v45, v46, v47, v48);
    v49 = sub_1E3280A90(0, &unk_1EE23B2B0, 0x1E6970608);
    v39[2].n128_u64[0] = v35;
    v39[5].n128_u64[1] = v9;
    v14 = v61;
    v39[3].n128_u64[1] = v49;
    v39[4].n128_u64[0] = v61;
    v50 = v35;
    v51 = v61;
    v52 = sub_1E39A1E5C(v39);
    if (!v52)
    {

      v12 = v62;
      goto LABEL_21;
    }

    v53 = v52;
    v12 = v62;
    [v62 addFilterPredicate_];

LABEL_22:
    if (v10 == v8)
    {
      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
}