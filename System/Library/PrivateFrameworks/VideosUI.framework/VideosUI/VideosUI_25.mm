uint64_t sub_1E380841C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1E3808474()
{
  result = qword_1ECF2B098;
  if (!qword_1ECF2B098)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2B0A0, &qword_1E429FD30);
    sub_1E3807DA4();
    sub_1E3807EFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2B098);
  }

  return result;
}

void sub_1E380852C()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A250, " B\r");
  OUTLINED_FUNCTION_17_2(v7);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A1F8, &qword_1E429E7F0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v11);
  v101 = sub_1E4201B04();
  OUTLINED_FUNCTION_0_10();
  v100 = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v15);
  v96 = sub_1E4201274();
  OUTLINED_FUNCTION_0_10();
  v94 = v16;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_17_3(v19 - v18);
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B190, &qword_1E429FE70);
  OUTLINED_FUNCTION_0_10();
  v91 = v20;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v23);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B198, &qword_1E429FE78);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_49_2();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B1A0, &qword_1E429FE80);
  v26 = OUTLINED_FUNCTION_17_2(v25);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_25_3();
  v29 = v28;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B070, &qword_1E429FC18);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_44();
  v32 = v31;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B068, &unk_1E429FC08);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v34);
  OUTLINED_FUNCTION_8();
  v36 = *(v35 + 152);
  v36(v106);
  if ((v107 & 1) == 0)
  {
    sub_1E3952BE0(v106[0], v106[1], v106[2], v106[3]);
  }

  v86 = *(v4 + 216);
  v37 = objc_opt_self();
  v104 = v4;
  if ([v37 isPhone])
  {
    v85 = 1;
  }

  else
  {
    v85 = [v37 isPad];
  }

  v38 = v108;
  v36(v108);
  if (v109)
  {
    v38 = MEMORY[0x1E69DDCE0];
    v39 = *(MEMORY[0x1E69DDCE0] + 8);
    v40 = *(MEMORY[0x1E69DDCE0] + 16);
    v41 = *(MEMORY[0x1E69DDCE0] + 24);
  }

  else
  {
    v39 = *&v108[1];
    v40 = *&v108[2];
    v41 = *&v108[3];
  }

  sub_1E4123084(v104[120], v110, *v38, v39, v40, v41);
  v42 = v111;
  v43 = v110[1];
  *v32 = v110[0];
  *(v32 + 16) = v43;
  *(v32 + 32) = v42;
  if (sub_1E32AE9B0(v6))
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1E6911E60](0, v6);
    }

    else
    {
      if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return;
      }
    }

    [v37 isTV];
    sub_1E3809044();

    sub_1E3741EA0(v1, v29, &qword_1ECF2B198, &qword_1E429FE78);
    v44 = 0;
  }

  else
  {
    v44 = 1;
  }

  __swift_storeEnumTagSinglePayload(v29, v44, 1, v87);
  v83 = v32;
  v45 = v32 + *(v103 + 44);

  v46 = sub_1E3809B68(1, v6);
  sub_1E380DFBC(v46, v47, v48, v49);
  v51 = v50;
  swift_unknownObjectRelease();
  v105[3] = v51;
  swift_getKeyPath();
  v114[0] = *v2;
  v112 = *(v2 + 24);
  v113 = *(v2 + 40);
  v52 = swift_allocObject();
  v53 = *(v2 + 16);
  *(v52 + 16) = *v2;
  *(v52 + 32) = v53;
  *(v52 + 41) = *(v2 + 25);
  *(v52 + 64) = v86;
  *(v52 + 72) = v85;
  OUTLINED_FUNCTION_2_4();
  v54 = swift_allocObject();
  *(v54 + 16) = sub_1E380E150;
  *(v54 + 24) = v52;
  sub_1E3743538(v114, v105, &qword_1ECF2B180, &unk_1E42C5D30);

  sub_1E3743538(&v112, v105, &qword_1ECF35A90, &qword_1E429FE60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28A38, &unk_1E429FEB0);
  OUTLINED_FUNCTION_24_11();
  sub_1E3743478(v55);
  sub_1E375BEF4();
  sub_1E380E194();
  sub_1E4203B34();
  OUTLINED_FUNCTION_69_0();
  sub_1E3743538(v56, v57, v58, v59);
  v60 = *(v91 + 16);
  v61 = OUTLINED_FUNCTION_27_0();
  v60(v61);
  OUTLINED_FUNCTION_69_0();
  sub_1E3743538(v62, v63, v64, v65);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B240, &qword_1E429FF08);
  (v60)(v45 + *(v66 + 48), v90, v92);
  v67 = *(v91 + 8);
  v67(v89, v92);
  sub_1E325F69C(v29, &qword_1ECF2B1A0);
  v67(v90, v92);
  sub_1E325F69C(v88, &qword_1ECF2B1A0);
  (*(v94 + 104))(v93, *MEMORY[0x1E697E668], v96);
  v68 = swift_allocObject();
  v69 = *(v2 + 16);
  *(v68 + 16) = *v2;
  *(v68 + 32) = v69;
  *(v68 + 41) = *(v2 + 25);
  *(v68 + 64) = v104;
  sub_1E3743538(v114, v105, &qword_1ECF2B180, &unk_1E42C5D30);
  sub_1E3743538(&v112, v105, &qword_1ECF35A90, &qword_1E429FE60);
  v70 = sub_1E3807CC0();

  v71 = OUTLINED_FUNCTION_51_1();
  sub_1E3D951F8(v93, v71 & 1, sub_1E380E64C, v68, v103, v70);

  (*(v94 + 8))(v93, v96);
  sub_1E325F69C(v83, &qword_1ECF2B070);
  sub_1E4201AF4();
  (*(v100 + 16))(v98, v99, v101);
  OUTLINED_FUNCTION_11_34();
  sub_1E380E6AC(v72);
  OUTLINED_FUNCTION_32_0();
  v73 = sub_1E4200E14();
  v74 = OUTLINED_FUNCTION_76_0();
  v76 = v75(v74);
  *(v97 + *(v95 + 36)) = v73;
  v77 = (*(*v104 + 1920))(v76);
  if (v77 == 13)
  {
    v78 = sub_1E42012F4();
    v79 = v84;
    __swift_storeEnumTagSinglePayload(v84, 1, 1, v78);
  }

  else
  {
    v79 = v84;
    sub_1E3B033CC(v77, v84);
  }

  sub_1E3B03114(v79, v102);
  sub_1E325F69C(v79, &qword_1ECF2A250);
  sub_1E3807BCC();
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_55_0();
  sub_1E3743478(v80);
  sub_1E4202FA4();
  v81 = OUTLINED_FUNCTION_39_3();
  sub_1E325F69C(v81, v82);
  sub_1E325F69C(v97, &qword_1ECF2B068);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3809044()
{
  OUTLINED_FUNCTION_93();
  v2 = v0;
  v139 = v3;
  v138 = v4;
  v6 = v5;
  v143 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B218, &qword_1E429FEF0);
  OUTLINED_FUNCTION_17_2(v8);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v124 - v10);
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B208, &qword_1E429FEE8);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_4_6();
  v15 = v13 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B248, &qword_1E429FF18);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_44();
  v142 = v18;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B250, &qword_1E429FF20);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_44();
  v135 = v20;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B1B8, &qword_1E429FEC0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_44();
  v137 = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B1E8, &qword_1E429FED8);
  OUTLINED_FUNCTION_17_2(v23);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_20_1();
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B1D8, &qword_1E429FED0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_44();
  v131 = v26;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B1C8, &qword_1E429FEC8);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_4_6();
  v129 = v28 - v29;
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_25_3();
  v132 = v31;
  v32 = sub_1E3B21A30();
  v33 = *sub_1E32A9398();
  v34 = sub_1E3C14D60();

  if ((sub_1E373F6E0(*(v6 + 98), 68, v35, v36, v37, v38) & 1) != 0 && (v32 & 1) != 0 && (v34 & 1) == 0)
  {
    v39 = *(v2 + 3);
    v40 = *(v2 + 4);
    v128 = v11;
    v41 = *(v2 + 40);
    v42 = type metadata accessor for CountDownProgressPresenter(0);
    OUTLINED_FUNCTION_4_39();
    sub_1E380E6AC(v43);
    v126 = v40;
    v127 = v39;
    v125 = v41;
    v11 = v128;
    v124 = v42;
    sub_1E4200BC4();
    LOBYTE(v40) = sub_1E3C13D98(*(v6 + 16), *(v6 + 24));

    if ((v40 & 1) == 0)
    {
      v67 = objc_opt_self();
      v68 = [v67 defaultCenter];
      v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B268, &qword_1E429FF30);
      sub_1E4206C14();

      v69 = [v67 defaultCenter];
      v70 = *sub_1E394E1E8();
      v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B1F8, &qword_1E429FEE0);
      v72 = v70;
      sub_1E4206C14();

      type metadata accessor for ButtonLayout();

      sub_1E3BBFC3C(1);
      OUTLINED_FUNCTION_45_1();
      sub_1E4200BC4();
      v73 = OUTLINED_FUNCTION_76_0();
      sub_1E3C14148(v73, v74, v75, v76);
      v151 = *v2;
      OUTLINED_FUNCTION_44_8();
      v77 = swift_allocObject();
      OUTLINED_FUNCTION_31_12(v77);
      memcpy(v1, v148, 0x59uLL);
      v78 = &v1[*(v128 + 56)];
      *v78 = sub_1E380E6F0;
      v78[1] = v77;
      OUTLINED_FUNCTION_44_8();
      v79 = swift_allocObject();
      OUTLINED_FUNCTION_31_12(v79);
      v80 = &v1[*(v71 + 56)];
      *v80 = sub_1E380E818;
      v80[1] = v81;
      v82 = swift_allocObject();
      OUTLINED_FUNCTION_31_12(v82);
      *(v83 + 64) = v6;
      v84 = &v1[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B1E8, &qword_1E429FED8) + 36)];
      *v84 = 0;
      *(v84 + 1) = 0;
      *(v84 + 2) = sub_1E380E900;
      *(v84 + 3) = v82;
      OUTLINED_FUNCTION_42_17();
      OUTLINED_FUNCTION_45_1();
      sub_1E380E99C();
      OUTLINED_FUNCTION_42_17();
      OUTLINED_FUNCTION_45_1();
      sub_1E380E99C();

      OUTLINED_FUNCTION_42_17();
      OUTLINED_FUNCTION_45_1();
      sub_1E380E99C();
      if (v138)
      {
        OUTLINED_FUNCTION_8();
        (*(v85 + 304))();
      }

      sub_1E4203DA4();
      OUTLINED_FUNCTION_59();
      OUTLINED_FUNCTION_36_0();
      sub_1E4200D94();
      v101 = v131;
      sub_1E3741EA0(v1, v131, &qword_1ECF2B1E8, &qword_1E429FED8);
      v102 = v129;
      v103 = (v101 + *(v130 + 36));
      v104 = *&v148[16];
      *v103 = *v148;
      v103[1] = v104;
      v103[2] = *&v148[32];
      v105 = OUTLINED_FUNCTION_63_0();
      sub_1E3741EA0(v105, v106, v107, v108);
      *(v102 + *(v133 + 36)) = v139 & 1;
      OUTLINED_FUNCTION_18_5();
      sub_1E3741EA0(v109, v110, v111, v112);
      OUTLINED_FUNCTION_32_3();
      sub_1E3743538(v113, v114, v115, v116);
      swift_storeEnumTagMultiPayload();
      sub_1E380E2AC();
      sub_1E380E47C();
      v117 = v137;
      sub_1E4201F44();
      OUTLINED_FUNCTION_69_0();
      sub_1E3743538(v118, v119, v120, v121);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B228, &qword_1E429FEF8);
      sub_1E380E220();
      sub_1E380E534();
      sub_1E4201F44();
      sub_1E325F69C(v117, &qword_1ECF2B1B8);
      goto LABEL_17;
    }
  }

  *&v148[24] = &unk_1F5D5D0A8;
  *&v148[32] = &off_1F5D5C758;
  v148[0] = 2;
  v44 = j__OUTLINED_FUNCTION_18();
  v45 = sub_1E39C29F0(v148, v44 & 1);
  __swift_destroy_boxed_opaque_existential_1(v148);
  if ((v45 & 1) == 0)
  {
    *&v49 = OUTLINED_FUNCTION_34_17();
    v152 = 2;
    v153 = 0;
    *(v50 + 8) = v49;
    *(v50 + 24) = v49;
    v154 = 1;
    v155 = 0;
    v146 = 0;
    v144 = v49;
    v145 = v49;
    v51 = v138;

    v52 = sub_1E383C8A8();
    sub_1E383C8B0();
    v53 = OUTLINED_FUNCTION_39_3();
    v60 = sub_1E383C8FC(v53, v54, v55, v56, v57, 0, 1, v58, v59, v52);
    if (v51)
    {
      (*(*v51 + 304))(v60);
    }

    sub_1E4203DA4();
    OUTLINED_FUNCTION_59();
    OUTLINED_FUNCTION_36_0();
    sub_1E4200D94();
    memcpy(v147, v148, 0xF8uLL);
    memcpy(v148, v147, sizeof(v148));
    v149 = v139 & 1;
    v150 = 0;
    OUTLINED_FUNCTION_18_5();
    sub_1E3743538(v61, v62, v63, v64);
    swift_storeEnumTagMultiPayload();
    v65 = OUTLINED_FUNCTION_57();
    __swift_instantiateConcreteTypeFromMangledNameV2(v65, v66);
    sub_1E380E220();
    sub_1E380E534();
    OUTLINED_FUNCTION_69_0();
    sub_1E4201F44();
LABEL_17:
    OUTLINED_FUNCTION_82();
    sub_1E325F69C(v122, v123);
    goto LABEL_18;
  }

  v46 = sub_1E4201D44();
  v47 = 0.0;
  if (v138 && ((*(*v138 + 152))(v148), (v148[32] & 1) == 0))
  {
    v47 = sub_1E3952BD8(*v148, *&v148[8], *&v148[16]);
    v48 = 0;
  }

  else
  {
    v48 = 1;
  }

  *v11 = v46;
  v11[1] = v47;
  *(v11 + 16) = v48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B258, &qword_1E429FF28);
  v86 = v139 & 1;
  sub_1E380B58C();
  sub_1E3741EA0(v11, v15, &qword_1ECF2B218, &qword_1E429FEF0);
  v87 = (v15 + *(v136 + 36));
  *v87 = v86;
  v87[1] = 0;
  OUTLINED_FUNCTION_47_4();
  OUTLINED_FUNCTION_18_5();
  sub_1E3741EA0(v88, v89, v90, v91);
  OUTLINED_FUNCTION_18_5();
  sub_1E3743538(v92, v93, v94, v95);
  swift_storeEnumTagMultiPayload();
  sub_1E380E2AC();
  sub_1E380E47C();
  v96 = v137;
  sub_1E4201F44();
  sub_1E3743538(v96, v142, &qword_1ECF2B1B8, &qword_1E429FEC0);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B228, &qword_1E429FEF8);
  sub_1E380E220();
  sub_1E380E534();
  sub_1E4201F44();
  OUTLINED_FUNCTION_40_13();
  sub_1E325F69C(v97, v98);
  OUTLINED_FUNCTION_82();
  sub_1E325F69C(v99, v100);
LABEL_18:
  OUTLINED_FUNCTION_54_0();
}

unint64_t sub_1E3809B68(uint64_t a1, unint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v4 = sub_1E32AE9B0(a2);
  v5 = sub_1E380055C(0, a1, v4);
  if (v6)
  {
    v7 = v4;
  }

  else
  {
    v7 = v5;
  }

  if (v4 < v7)
  {
    goto LABEL_18;
  }

  sub_1E37EFABC(v7, a2);
  result = sub_1E37EFABC(v4, a2);
  if ((a2 & 0xC000000000000001) == 0 || v7 == v4)
  {
  }

  else
  {
    if (v7 >= v4)
    {
      goto LABEL_21;
    }

    type metadata accessor for ViewModel();

    result = v7;
    do
    {
      v9 = result + 1;
      sub_1E42074F4();
      result = v9;
    }

    while (v4 != v9);
  }

  if (a2 >> 62)
  {
LABEL_19:

    v10 = sub_1E4207704();

    return v10;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {

    return a2 & 0xFFFFFFFFFFFFFF8;
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

void sub_1E3809CBC()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B040, &qword_1E429FBE0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_31_2();
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B0C0, &qword_1E429FDE0);
  OUTLINED_FUNCTION_0_10();
  v63 = v6;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_44();
  v62 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B0C8, &qword_1E429FDE8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B0D0, &qword_1E429FDF0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_44();
  v61 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B0D8, &qword_1E429FDF8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_44();
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B0E0, &qword_1E429FE00);
  OUTLINED_FUNCTION_0_10();
  v14 = v13;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_20_1();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B0E8, &qword_1E429FE08);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_44();
  v18 = *(v2 + 8);
  v19 = OBJC_IVAR____TtC8VideosUI31MediaShowcasingButtonsPresenter_metadataViewModel;
  OUTLINED_FUNCTION_5_0(v18 + OBJC_IVAR____TtC8VideosUI31MediaShowcasingButtonsPresenter_metadataViewModel, &v66);
  v20 = *(v18 + v19);
  if (!v20)
  {
    v41 = 1;
    goto LABEL_14;
  }

  v21 = *(*v20 + 392);

  if (!v21(v22))
  {
LABEL_9:

    v41 = 1;
    goto LABEL_14;
  }

  type metadata accessor for MediaShowcasingMetadataLayout();
  if (!swift_dynamicCastClass())
  {

    goto LABEL_9;
  }

  v23 = sub_1E3B21080();
  if (v23)
  {
    if (v23 == 1)
    {
      OUTLINED_FUNCTION_81_3();
      sub_1E380A6FC();
      v14 = v61;
      v24 = OUTLINED_FUNCTION_47_4();
      v25(v24);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2B0F8, &qword_1E429FE10);
      v26 = OUTLINED_FUNCTION_146();
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v26, v27);
      OUTLINED_FUNCTION_10_29();
      OUTLINED_FUNCTION_55_0();
      sub_1E380D924(v28);
      OUTLINED_FUNCTION_14_2();
      OUTLINED_FUNCTION_167_0();
      v30 = sub_1E3743478(v29);
      OUTLINED_FUNCTION_22_17(v30);
      swift_getOpaqueTypeConformance2();
      v31 = OUTLINED_FUNCTION_146();
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v31, v32);
      OUTLINED_FUNCTION_9_30();
      OUTLINED_FUNCTION_167_0();
      v34 = sub_1E380D924(v33);
      OUTLINED_FUNCTION_64_7(v34);
      sub_1E4201F44();
      OUTLINED_FUNCTION_32_3();
      sub_1E3743538(v35, v36, v37, v38);
      swift_storeEnumTagMultiPayload();
      sub_1E380D764();
      sub_1E3807AAC();
      OUTLINED_FUNCTION_23_20();

      OUTLINED_FUNCTION_82();
      sub_1E325F69C(v39, v40);
      (*(v63 + 8))(v62, v64);
    }

    else
    {
      sub_1E3808158();
      OUTLINED_FUNCTION_32_3();
      sub_1E3743538(v54, v55, v56, v57);
      swift_storeEnumTagMultiPayload();
      sub_1E380D764();
      sub_1E3807AAC();
      OUTLINED_FUNCTION_23_20();

      OUTLINED_FUNCTION_82();
      sub_1E325F69C(v58, v59);
    }
  }

  else
  {
    OUTLINED_FUNCTION_81_3();
    sub_1E380A3CC();
    v60 = v14;
    v42 = *(v14 + 16);
    v14 = v61;
    v42(v61, v0, v65);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2B0F8, &qword_1E429FE10);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2A1F8, &qword_1E429E7F0);
    OUTLINED_FUNCTION_10_29();
    OUTLINED_FUNCTION_55_0();
    sub_1E380D924(v43);
    OUTLINED_FUNCTION_14_2();
    v45 = sub_1E3743478(v44);
    OUTLINED_FUNCTION_22_17(v45);
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2B150, &qword_1E429FE40);
    OUTLINED_FUNCTION_9_30();
    v47 = sub_1E380D924(v46);
    OUTLINED_FUNCTION_64_7(v47);
    sub_1E4201F44();
    OUTLINED_FUNCTION_32_3();
    sub_1E3743538(v48, v49, v50, v51);
    swift_storeEnumTagMultiPayload();
    sub_1E380D764();
    sub_1E3807AAC();
    OUTLINED_FUNCTION_23_20();

    OUTLINED_FUNCTION_82();
    sub_1E325F69C(v52, v53);
    (*(v60 + 8))(v0, v65);
  }

  sub_1E3741EA0(v14, v4, &qword_1ECF2B0E8, &qword_1E429FE08);
  v41 = 0;
LABEL_14:
  __swift_storeEnumTagSinglePayload(v4, v41, 1, v16);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E380A3CC()
{
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_66_9(v4, v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A250, " B\r");
  OUTLINED_FUNCTION_17_2(v6);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A1F8, &qword_1E429E7F0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_44();
  v33 = v9;
  sub_1E4201B04();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_4_6();
  MEMORY[0x1EEE9AC00](v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B0F8, &qword_1E429FE10);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_31_2();
  OUTLINED_FUNCTION_8();
  (*(v14 + 152))(v34);
  if ((v35 & 1) == 0)
  {
    sub_1E3952BD8(v34[0], v34[1], v34[2]);
  }

  sub_1E32AE9B0(v0);
  sub_1E380AA2C();
  sub_1E4201AF4();
  v15 = OUTLINED_FUNCTION_56_8();
  v16(v15);
  OUTLINED_FUNCTION_11_34();
  sub_1E380E6AC(v17);
  OUTLINED_FUNCTION_84_5();
  v18 = sub_1E4200E14();
  v19 = OUTLINED_FUNCTION_45_1();
  v21 = v20(v19);
  *(v3 + *(v12 + 36)) = v18;
  v22 = (*(*v2 + 1920))(v21);
  if (v22 == 13)
  {
    sub_1E42012F4();
    v23 = OUTLINED_FUNCTION_17_23();
    __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);
  }

  else
  {
    sub_1E3B033CC(v22, v1);
  }

  sub_1E3B03114(v1, v33);
  sub_1E325F69C(v1, &qword_1ECF2A250);
  OUTLINED_FUNCTION_10_29();
  OUTLINED_FUNCTION_77();
  sub_1E380D924(v27);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_40_13();
  sub_1E3743478(v28);
  OUTLINED_FUNCTION_53_11();
  OUTLINED_FUNCTION_40_13();
  sub_1E325F69C(v29, v30);
  OUTLINED_FUNCTION_77();
  sub_1E325F69C(v31, v32);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E380A6FC()
{
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_66_9(v4, v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A250, " B\r");
  OUTLINED_FUNCTION_17_2(v6);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A1F8, &qword_1E429E7F0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_44();
  v33 = v9;
  sub_1E4201B04();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_4_6();
  MEMORY[0x1EEE9AC00](v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B150, &qword_1E429FE40);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_31_2();
  OUTLINED_FUNCTION_8();
  (*(v14 + 152))(v34);
  if ((v35 & 1) == 0)
  {
    sub_1E3952BD8(v34[0], v34[1], v34[2]);
  }

  sub_1E32AE9B0(v0);
  sub_1E380B1A8();
  sub_1E4201AF4();
  v15 = OUTLINED_FUNCTION_56_8();
  v16(v15);
  OUTLINED_FUNCTION_11_34();
  sub_1E380E6AC(v17);
  OUTLINED_FUNCTION_84_5();
  v18 = sub_1E4200E14();
  v19 = OUTLINED_FUNCTION_45_1();
  v21 = v20(v19);
  *(v3 + *(v12 + 36)) = v18;
  v22 = (*(*v2 + 1920))(v21);
  if (v22 == 13)
  {
    sub_1E42012F4();
    v23 = OUTLINED_FUNCTION_17_23();
    __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);
  }

  else
  {
    sub_1E3B033CC(v22, v1);
  }

  sub_1E3B03114(v1, v33);
  sub_1E325F69C(v1, &qword_1ECF2A250);
  OUTLINED_FUNCTION_9_30();
  OUTLINED_FUNCTION_77();
  sub_1E380D924(v27);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_40_13();
  sub_1E3743478(v28);
  OUTLINED_FUNCTION_53_11();
  OUTLINED_FUNCTION_40_13();
  sub_1E325F69C(v29, v30);
  OUTLINED_FUNCTION_77();
  sub_1E325F69C(v31, v32);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E380AA2C()
{
  OUTLINED_FUNCTION_31_1();
  v29 = v2;
  v4 = v3;
  v6 = v5;
  v32 = sub_1E4201274();
  OUTLINED_FUNCTION_0_10();
  v33 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v31 = v10 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B138, &qword_1E429FE30);
  OUTLINED_FUNCTION_0_10();
  v27 = v11;
  v28 = v12;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_26_2();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B118, &qword_1E429FE20);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_49_2();
  sub_1E4123084(*(v6 + 120), v35, *MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24));
  v15 = v36;
  v16 = v35[1];
  *v1 = v35[0];
  *(v1 + 16) = v16;
  *(v1 + 32) = v15;
  v26 = v1 + *(v30 + 44);
  v37 = *v4;
  sub_1E3B21D98(v34);
  v17 = *(v6 + 208);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B140, &qword_1E429FE38);
  OUTLINED_FUNCTION_26_17();
  v20 = sub_1E380ED80(v19);
  sub_1E38838AC(v17, 2u, 2, v18, v20, v0);
  memcpy(v38, v34, 0x59uLL);
  sub_1E325F69C(v38, &qword_1ECF2B140);
  sub_1E380AE18(v29);
  *&v34[0] = v18;
  *(&v34[0] + 1) = v20;
  OUTLINED_FUNCTION_2_2();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_57();
  sub_1E3E03180();

  (*(v28 + 8))(v0, v27);
  v34[0] = *(v4 + 24);
  LOBYTE(v34[1]) = *(v4 + 40);
  OUTLINED_FUNCTION_44_8();
  v21 = swift_allocObject();
  OUTLINED_FUNCTION_72_5(v21);
  v22 = (v26 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B130, &qword_1E429FE28) + 36));
  *v22 = 0;
  v22[1] = 0;
  v22[2] = sub_1E380DF04;
  v22[3] = v21;
  (*(v33 + 104))(v31, *MEMORY[0x1E697E668], v32);
  OUTLINED_FUNCTION_44_8();
  v23 = swift_allocObject();
  OUTLINED_FUNCTION_72_5(v23);
  OUTLINED_FUNCTION_87_5();
  OUTLINED_FUNCTION_88_6();
  OUTLINED_FUNCTION_87_5();
  OUTLINED_FUNCTION_88_6();
  v24 = sub_1E380DA8C();
  OUTLINED_FUNCTION_76_0();
  v25 = OUTLINED_FUNCTION_51_1();
  sub_1E3D951F8(v31, v25 & 1, sub_1E380DF5C, v23, v30, v24);

  (*(v33 + 8))(v31, v32);
  sub_1E325F69C(v1, &qword_1ECF2B118);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E380AE18(uint64_t a1)
{
  OUTLINED_FUNCTION_26_0();
  if (!(*(v2 + 624))() || (OUTLINED_FUNCTION_26_0(), v4 = (*(v3 + 552))(), , !v4))
  {
    v26 = 0u;
    v27 = 0u;
    goto LABEL_12;
  }

  v24 = &unk_1F5D7BE68;
  v25 = &off_1F5D7BC48;
  LOBYTE(v22) = 5;
  v5 = MEMORY[0x1E69E7CA0];
  sub_1E3F9F164(&v22, v4, MEMORY[0x1E69E7CA0] + 8);

  __swift_destroy_boxed_opaque_existential_1(&v22);
  if (!*(&v27 + 1))
  {
LABEL_12:
    v18 = &v26;
LABEL_13:
    sub_1E325F69C(v18, &unk_1ECF296E0);
    goto LABEL_14;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_14;
  }

  v6 = v22;
  v7 = (*(*a1 + 552))();
  if (!v7)
  {

    v20 = 0u;
    v21 = 0u;
LABEL_17:
    v18 = &v20;
    goto LABEL_13;
  }

  v24 = &unk_1F5D7BE68;
  v25 = &off_1F5D7BC48;
  LOBYTE(v22) = 6;
  sub_1E3F9F164(&v22, v7, v5 + 8);

  __swift_destroy_boxed_opaque_existential_1(&v22);
  if (!*(&v21 + 1))
  {

    goto LABEL_17;
  }

  sub_1E329504C(&v20, &v26);
  sub_1E3744600(v6);

  sub_1E328438C(&v26, &v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C8C0, &unk_1E42A1250);
  swift_dynamicCast();
  v8 = objc_allocWithZone(VUIVideosPlayable);
  v9 = OUTLINED_FUNCTION_63_0();
  v11 = sub_1E37448C4(v9, v10);
  if (v11)
  {
    v12 = v11;
    v13 = [v11 canonicalID];
    if (v13)
    {
      v14 = v13;
      v15 = sub_1E4205F14();
      v17 = v16;

      __swift_destroy_boxed_opaque_existential_1(&v26);
      if (v17)
      {
        v22 = 0;
        v23 = 0xE000000000000000;
        sub_1E42074B4();

        v22 = 0xD000000000000012;
        v23 = 0x80000001E425E800;
        MEMORY[0x1E69109E0](v15, v17);

        MEMORY[0x1E69109E0](34, 0xE100000000000000);
      }
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(&v26);
    }
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(&v26);
  }

LABEL_14:
  type metadata accessor for Accessibility();
  sub_1E40A7DC8();

  return OUTLINED_FUNCTION_57();
}

void sub_1E380B1A8()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  v5 = sub_1E4201274();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B170, &unk_1E429FE50);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_20_1();
  sub_1E4123084(*(v4 + 120), v21, *MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24));
  v14 = v22;
  v15 = v21[1];
  *v0 = v21[0];
  *(v0 + 16) = v15;
  *(v0 + 32) = v14;
  sub_1E380B3EC();
  (*(v7 + 104))(v11, *MEMORY[0x1E697E668], v5);
  v25 = *v2;
  v23 = *(v2 + 24);
  v24 = *(v2 + 40);
  OUTLINED_FUNCTION_44_8();
  v16 = swift_allocObject();
  v17 = v2[1];
  v16[1] = *v2;
  v16[2] = v17;
  *(v16 + 41) = *(v2 + 25);
  sub_1E3743538(&v25, v20, &qword_1ECF2B180, &unk_1E42C5D30);
  sub_1E3743538(&v23, v20, &qword_1ECF35A90, &qword_1E429FE60);
  v18 = sub_1E380DD98();
  OUTLINED_FUNCTION_39_0();
  v19 = OUTLINED_FUNCTION_51_1();
  sub_1E3D951F8(v11, v19 & 1, sub_1E380DF64, v16, v12, v18);

  (*(v7 + 8))(v11, v5);
  sub_1E325F69C(v0, &qword_1ECF2B170);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E380B3EC()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B138, &qword_1E429FE30);
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_26_2();
  sub_1E3B22578();
  v9 = *(v4 + 208);
  v10 = OUTLINED_FUNCTION_39_0();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(v10, v11);
  OUTLINED_FUNCTION_26_17();
  OUTLINED_FUNCTION_33_4();
  v14 = sub_1E380ED80(v13);
  sub_1E38838AC(v9, 2u, 2, v12, v14, v0);
  memcpy(v18, v17, sizeof(v18));
  OUTLINED_FUNCTION_33_4();
  sub_1E325F69C(v15, v16);
  sub_1E380AE18(v2);
  v17[0] = v12;
  v17[1] = v14;
  OUTLINED_FUNCTION_2_2();
  swift_getOpaqueTypeConformance2();
  sub_1E3E03180();

  (*(v7 + 8))(v0, v5);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E380B58C()
{
  OUTLINED_FUNCTION_93();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B270, &qword_1E429FF38);
  v11 = OUTLINED_FUNCTION_17_2(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_4_6();
  v14 = v12 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = (v45 - v16);
  *&v18 = OUTLINED_FUNCTION_34_17();
  v50[10] = 2;
  v51 = 0;
  v53 = v18;
  v54 = v18;
  v52 = 1;
  v55 = 0;
  v46 = 0;
  v45[0] = v18;
  v45[1] = v18;

  v19 = sub_1E383C8A8();
  v20 = sub_1E383C8B0();
  sub_1E383C8FC(v7, v5, v50, v20, &v52, 0, 1, v45, v49, v19);
  if (v5)
  {
    OUTLINED_FUNCTION_8();
    (*(v21 + 304))();
  }

  sub_1E4203DA4();
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_36_0();
  sub_1E4200D94();
  memcpy(v48, v49, 0xF8uLL);
  memcpy(v49, v48, 0x128uLL);
  v49[296] = v3 & 1;
  v49[297] = 0;
  v22 = *(v1 + 8);
  v23 = OBJC_IVAR____TtC8VideosUI31MediaShowcasingButtonsPresenter_metadataViewModel;
  OUTLINED_FUNCTION_5_0(v22 + OBJC_IVAR____TtC8VideosUI31MediaShowcasingButtonsPresenter_metadataViewModel, &v47);
  if (!*(v22 + v23))
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_8();
  v25 = *(v24 + 488);

  v27 = v25(v26);

  if (!v27)
  {
    goto LABEL_10;
  }

  v29 = sub_1E373E010(11, v27, v28);

  if (!v29)
  {
    goto LABEL_10;
  }

  if (*v29 != _TtC8VideosUI13TextViewModel)
  {

LABEL_10:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B278, &qword_1E429FF40);
    v35 = OUTLINED_FUNCTION_17_23();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_30_1();
  if ((*(v30 + 392))())
  {
    OUTLINED_FUNCTION_26_0();
    v32 = (*(v31 + 248))();
    v34 = v33;
  }

  else
  {
    v32 = 0;
    v34 = 1;
  }

  *v17 = sub_1E395FA08(v32, v34 & 1);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B278, &qword_1E429FF40);
  OUTLINED_FUNCTION_18();
  sub_1E3F23370();

  v35 = v17;
  v36 = 0;
  v37 = 1;
  v38 = v44;
LABEL_11:
  __swift_storeEnumTagSinglePayload(v35, v36, v37, v38);
  sub_1E3743538(v49, v45, &qword_1ECF2B228, &qword_1E429FEF8);
  sub_1E3743538(v17, v14, &qword_1ECF2B270, &qword_1E429FF38);
  sub_1E3743538(v45, v9, &qword_1ECF2B228, &qword_1E429FEF8);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B280, &qword_1E429FF48);
  sub_1E3743538(v14, v9 + *(v39 + 48), &qword_1ECF2B270, &qword_1E429FF38);
  OUTLINED_FUNCTION_33_4();
  sub_1E325F69C(v40, v41);
  sub_1E325F69C(v49, &qword_1ECF2B228);
  OUTLINED_FUNCTION_33_4();
  sub_1E325F69C(v42, v43);
  sub_1E325F69C(v45, &qword_1ECF2B228);
  OUTLINED_FUNCTION_54_0();
}

void sub_1E380B9A0()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A250, " B\r");
  OUTLINED_FUNCTION_17_2(v4);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A1F8, &qword_1E429E7F0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_26_2();
  v7 = OBJC_IVAR____TtC8VideosUI31MediaShowcasingButtonsPresenter_metadataViewModel;
  OUTLINED_FUNCTION_5_0(v3 + OBJC_IVAR____TtC8VideosUI31MediaShowcasingButtonsPresenter_metadataViewModel, &v22);
  v8 = *(v3 + v7);
  if (v8)
  {
    OUTLINED_FUNCTION_30_1();
    v10 = *(v9 + 392);

    v10(v11);
    OUTLINED_FUNCTION_35_0();

    type metadata accessor for MediaShowcasingMetadataLayout();
    v8 = swift_dynamicCastClass();
    if (!v8)
    {
    }
  }

  type metadata accessor for MediaShowcasingButtonsPresenter(0);
  OUTLINED_FUNCTION_2_36();
  sub_1E380E6AC(v12);

  sub_1E42010C4();
  if (v8 && (OUTLINED_FUNCTION_30_1(), v14 = *(v13 + 1920), v15 = , v16 = v14(v15), , v16 != 13))
  {
    sub_1E3B033CC(v16, v1);
  }

  else
  {
    sub_1E42012F4();
    v17 = OUTLINED_FUNCTION_17_23();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
  }

  sub_1E3B03114(v1, v0);
  sub_1E325F69C(v1, &qword_1ECF2A250);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B0A8, &qword_1E429FDD0);
  sub_1E380BC64();
  OUTLINED_FUNCTION_14_2();
  sub_1E3743478(v21);
  sub_1E4202FA4();

  sub_1E325F69C(v0, &qword_1ECF2A1F8);

  OUTLINED_FUNCTION_25_2();
}

unint64_t sub_1E380BC64()
{
  result = qword_1ECF2B0B0;
  if (!qword_1ECF2B0B0)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2B0A8, &qword_1E429FDD0);
    sub_1E380BCE8(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2B0B0);
  }

  return result;
}

unint64_t sub_1E380BCE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF47030[0];
  if (!qword_1ECF47030[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF47030);
  }

  return result;
}

void sub_1E380BD3C()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v4 = sub_1E4201B84();
  v47 = 1;
  v5 = OBJC_IVAR____TtC8VideosUI31MediaShowcasingButtonsPresenter_metadataViewModel;
  OUTLINED_FUNCTION_5_0(v1 + OBJC_IVAR____TtC8VideosUI31MediaShowcasingButtonsPresenter_metadataViewModel, v56);
  if (!*(v1 + v5))
  {
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_8();
  v7 = *(v6 + 488);

  v9 = v7(v8);

  if (!v9)
  {
    goto LABEL_11;
  }

  v11 = sub_1E373E010(91, v9, v10);

  if (!v11)
  {
    goto LABEL_11;
  }

  v13 = (*(*v11 + 392))(v12);
  if (!v13)
  {
LABEL_10:

LABEL_11:
    sub_1E380EA48(__src);
    goto LABEL_12;
  }

  v16 = v13;
  if (*v13 != _TtC8VideosUI28MediaShowcasingButtonsLayout)
  {

    goto LABEL_10;
  }

  v17 = (off_1EE24AE70)(v13, v14, v15);
  v41 = v17 == 18 || !sub_1E412561C(v17);
  v42 = sub_1E4201B84();
  v53 = 0;
  v43 = sub_1E4201D44();
  v19 = OBJC_IVAR____TtC8VideosUI31MediaShowcasingButtonsPresenter_metadataViewModel;
  OUTLINED_FUNCTION_5_0(v1 + OBJC_IVAR____TtC8VideosUI31MediaShowcasingButtonsPresenter_metadataViewModel, &v59);
  if (!*(v1 + v19))
  {
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_8();
  v21 = *(v20 + 488);

  v21(v22);
  OUTLINED_FUNCTION_89_3();
  if (!v21)
  {
    goto LABEL_19;
  }

  v24 = sub_1E373E010(11, v21, v23);

  if (v24 && *v24 != _TtC8VideosUI13TextViewModel)
  {

LABEL_19:
    v24 = 0;
  }

  if (TVAppFeature.isEnabled.getter(20, v25, v26))
  {
    v27 = 1;
    goto LABEL_29;
  }

  if (*(v1 + v19))
  {
    OUTLINED_FUNCTION_8();
    v29 = *(v28 + 488);

    v29(v30);
    OUTLINED_FUNCTION_89_3();
    if (v29)
    {
      v27 = sub_1E373E010(11, v29, v31);

      if (!v27 || *v27 == _TtC8VideosUI13TextViewModel)
      {
        goto LABEL_28;
      }
    }
  }

  v27 = 0;
LABEL_28:

LABEL_29:

  sub_1E37C5408(v27);
  sub_1E3781D80(v27);
  sub_1E3781D80(v27);

  v33 = ((*v16)[11].cache)(v32);
  v36 = 1;
  if (v33 != 7)
  {
    __src[0] = v33;
    LOBYTE(v51[0]) = 4;
    sub_1E3793D00(v33, v34, v35);
    if (sub_1E4205E84())
    {
      v36 = 0;
    }
  }

  __src[0] = 1;
  v40 = v36;
  LOBYTE(v51[0]) = v36;

  sub_1E37C5408(v27);

  sub_1E3781D80(v27);
  OUTLINED_FUNCTION_26();
  (*(v37 + 248))();
  sub_1E4203DA4();
  OUTLINED_FUNCTION_36_0();
  sub_1E42015C4();
  memcpy(&v54[6], v57, 0x70uLL);
  v49 = v41;
  v50[0] = v42;
  v50[1] = 0;
  v38 = v53;
  LOBYTE(v50[2]) = v53;
  *(&v50[2] + 1) = v52[0];
  HIDWORD(v50[2]) = *(v52 + 3);
  v50[3] = v43;
  v50[4] = 0;
  LOBYTE(v50[5]) = 1;
  *(&v50[5] + 1) = v55[0];
  HIDWORD(v50[5]) = *(v55 + 3);
  v50[6] = v11;
  v50[7] = v24;
  v50[8] = v27;
  v50[9] = 0;
  LOBYTE(v50[10]) = 0;
  BYTE1(v50[10]) = v40;
  memcpy(&v50[10] + 2, v54, 0x76uLL);
  memcpy(&v44[6], v50, 0xC8uLL);
  sub_1E3743538(v50, __src, &qword_1ECF2B290, &qword_1E429FFC0);

  v48 = 0;
  v39 = v49;
  __dst[0] = v42;
  __dst[1] = 0;
  LOBYTE(__dst[2]) = v38;
  *(&__dst[2] + 1) = v52[0];
  HIDWORD(__dst[2]) = *(v52 + 3);
  __dst[3] = v43;
  __dst[4] = 0;
  LOBYTE(__dst[5]) = 1;
  *(&__dst[5] + 1) = v55[0];
  HIDWORD(__dst[5]) = *(v55 + 3);
  __dst[6] = v11;
  __dst[7] = v24;
  __dst[8] = v27;
  __dst[9] = 0;
  LOBYTE(__dst[10]) = 0;
  BYTE1(__dst[10]) = v40;
  memcpy(&__dst[10] + 2, v54, 0x76uLL);
  sub_1E325F69C(__dst, &qword_1ECF2B290);
  v51[0] = 0;
  LOBYTE(v51[1]) = 0;
  BYTE1(v51[1]) = v39;
  memcpy(&v51[1] + 2, v44, 0xCEuLL);
  v51[27] = 0;
  LOBYTE(v51[28]) = 0;
  nullsub_1();
  memcpy(__src, v51, 0xE1uLL);
LABEL_12:
  memcpy(__dst, __src, 0xE1uLL);
  memcpy(v51, __dst, 0xE1uLL);
  memcpy(__src, __dst, 0xE1uLL);
  sub_1E3743538(v51, v44, &qword_1ECF2B288, &qword_1E429FFB8);
  sub_1E325F69C(__src, &qword_1ECF2B288);
  memcpy(&v46[7], v51, 0xE1uLL);
  v18 = v47;
  *v3 = v4;
  *(v3 + 8) = 0;
  *(v3 + 16) = v18;
  memcpy((v3 + 17), v46, 0xE8uLL);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E380C458(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v5 = sub_1E4201D44();
  LOBYTE(v85) = 0;
  if (!a1)
  {
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = -1;
LABEL_26:
    v53 = OUTLINED_FUNCTION_12_32();
    sub_1E380EB58(v53, v54, v55, v56, v57, v58);
    v59 = OUTLINED_FUNCTION_12_32();
    sub_1E380EBAC(v59, v60, v61, v62, v63, v64);
    LOBYTE(v87[0]) = 0;
    v65 = OUTLINED_FUNCTION_12_32();
    sub_1E380EBAC(v65, v66, v67, v68, v69, v70);
    *a3 = v5;
    *(a3 + 8) = 0;
    *(a3 + 16) = v85;
    *(a3 + 24) = 0;
    *(a3 + 32) = 0;
    *(a3 + 40) = v21;
    *(a3 + 48) = v22;
    *(a3 + 56) = a1;
    *(a3 + 64) = v23;
    *(a3 + 72) = v24;
    *(a3 + 80) = v25;
    return;
  }

  OUTLINED_FUNCTION_26();
  v7 = *(v6 + 776);

  v7(v87, v8, &unk_1F5D5E338, &off_1F5D5CB78);
  if (!v88)
  {
    sub_1E325F69C(v87, &unk_1ECF296E0);
    goto LABEL_15;
  }

  if ((swift_dynamicCast() & 1) == 0 || v86 != 1)
  {
LABEL_15:
    OUTLINED_FUNCTION_26();
    v26 += 58;
    v10 = *v26;
    v27 = (*v26)();
    if (v27)
    {
      v13 = v27;
      if (sub_1E32AE9B0(v27))
      {
        if ((v13 & 0xC000000000000001) != 0)
        {
          v28 = MEMORY[0x1E6911E60](0, v13);
        }

        else
        {
          if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_31;
          }

          v28 = *(v13 + 32);
        }

        OUTLINED_FUNCTION_30_1();
        (*(v29 + 392))(v30);
        OUTLINED_FUNCTION_35_0();

        if (v28)
        {
          OUTLINED_FUNCTION_8();
          (*(v31 + 152))(&v91);

          if ((v92 & 1) == 0)
          {
            v32 = OUTLINED_FUNCTION_24_0();
            sub_1E3952BE0(v32, v33, v34, v35);
          }
        }
      }

      else
      {
      }
    }

    v36 = sub_1E4201B84();
    v10();

    swift_retain_n();
    v37 = OUTLINED_FUNCTION_146();
    __swift_instantiateConcreteTypeFromMangledNameV2(v37, v38);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B2C8, &qword_1E42A0110);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_167_0();
    sub_1E3743478(v39);
    OUTLINED_FUNCTION_9_0();
    v41 = sub_1E3743478(v40);
    OUTLINED_FUNCTION_79_7(v41, v42, v43, v44, v45, v46, v47, v48, v5, v85, v36);
LABEL_25:
    sub_1E4201F44();

    v21 = v87[0];
    v22 = v87[1];
    a1 = v87[2];
    v23 = v88;
    v24 = v89;
    v25 = v90;
    v49 = OUTLINED_FUNCTION_12_32();
    sub_1E380EB70(v49, v50, v51, v52);
    v5 = v84;
    goto LABEL_26;
  }

  OUTLINED_FUNCTION_26();
  v9 += 58;
  v10 = *v9;
  v12 = (*v9)(v11);
  if (!v12)
  {
LABEL_28:
    v71 = sub_1E4201D44();
    v10();

    swift_retain_n();
    v72 = OUTLINED_FUNCTION_146();
    __swift_instantiateConcreteTypeFromMangledNameV2(v72, v73);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B2C8, &qword_1E42A0110);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_167_0();
    sub_1E3743478(v74);
    OUTLINED_FUNCTION_9_0();
    v76 = sub_1E3743478(v75);
    OUTLINED_FUNCTION_79_7(v76, v77, v78, v79, v80, v81, v82, v83, v5, v85, v71);
    goto LABEL_25;
  }

  v13 = v12;
  if (!sub_1E32AE9B0(v12))
  {

    goto LABEL_28;
  }

  if ((v13 & 0xC000000000000001) != 0)
  {
LABEL_31:
    v14 = MEMORY[0x1E6911E60](0, v13);
LABEL_10:

    OUTLINED_FUNCTION_30_1();
    (*(v15 + 392))(v16);
    OUTLINED_FUNCTION_35_0();

    if (v14)
    {
      OUTLINED_FUNCTION_8();
      (*(v17 + 152))(&v91);

      if ((v92 & 1) == 0)
      {
        v18 = OUTLINED_FUNCTION_24_0();
        sub_1E3952BD8(v18, v19, v20);
      }
    }

    goto LABEL_28;
  }

  if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v14 = *(v13 + 32);

    goto LABEL_10;
  }

  __break(1u);
}

uint64_t sub_1E380C9A4(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_2_4();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  swift_bridgeObjectRetain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C790, &qword_1E42996A0);
  v5 = OUTLINED_FUNCTION_39_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_24_11();
  sub_1E3743478(v7);
  sub_1E375BEF4();
  OUTLINED_FUNCTION_33_4();
  sub_1E380ED80(v8);
  return sub_1E4203B34();
}

void sub_1E380CB00()
{
  OUTLINED_FUNCTION_31_1();
  v47 = v2;
  v48 = v3;
  v5 = v4;
  v7 = v6;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B338, &qword_1E42A0200);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_26_2();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B320, &qword_1E42A01F0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v43 - v11;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B330, &qword_1E42A01F8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_20_1();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B310, &qword_1E42A01E8);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_4_6();
  v17 = MEMORY[0x1EEE9AC00](v16);
  if ((*(**v5 + 392))(v17))
  {
    v46 = v9;
    type metadata accessor for ButtonLayout();
    if (swift_dynamicCastClass())
    {
      v44 = v14;
      v45 = v7;
      *v1 = sub_1E4201D44();
      *(v1 + 8) = 0;
      *(v1 + 16) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B340, &qword_1E42A0208);
      sub_1E380CEF8();
      if (TVAppFeature.isEnabled.getter(20, v18, v19))
      {
        sub_1E3743538(v1, v12, &qword_1ECF2B330, &qword_1E42A01F8);
        *&v12[*(v46 + 36)] = 1;
        sub_1E3743538(v12, v0, &qword_1ECF2B320, &qword_1E42A01F0);
        swift_storeEnumTagMultiPayload();
        sub_1E380EEAC();
        OUTLINED_FUNCTION_1();
        sub_1E3743478(v20);
        sub_1E4201F44();

        v21 = OUTLINED_FUNCTION_27_0();
        sub_1E325F69C(v21, v22);
      }

      else
      {
        OUTLINED_FUNCTION_19_1();
        sub_1E3743538(v28, v29, v30, v31);
        swift_storeEnumTagMultiPayload();
        sub_1E380EEAC();
        OUTLINED_FUNCTION_1();
        sub_1E3743478(v32);
        sub_1E4201F44();
      }

      v33 = v44;
      v34 = v45;
      sub_1E325F69C(v1, &qword_1ECF2B330);
      OUTLINED_FUNCTION_39_0();
      OUTLINED_FUNCTION_19_1();
      sub_1E3741EA0(v35, v36, v37, v38);
      OUTLINED_FUNCTION_47_4();
      OUTLINED_FUNCTION_19_1();
      sub_1E3741EA0(v39, v40, v41, v42);
      __swift_storeEnumTagSinglePayload(v34, 0, 1, v33);
      OUTLINED_FUNCTION_25_2();
      return;
    }
  }

  OUTLINED_FUNCTION_25_2();

  __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);
}

void sub_1E380CEF8()
{
  OUTLINED_FUNCTION_93();
  v3 = v2;
  v48 = v4;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B348, &qword_1E42A0210);
  OUTLINED_FUNCTION_0_10();
  v13 = v12;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_26_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B350, &qword_1E42A0218);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_8_4();
  if ((TVAppFeature.isEnabled.getter(20, v16, v17) & 1) == 0)
  {
    memset(v57, 0, sizeof(v57));
    v58 = 2;
    v59 = 0;
    *&v49[0] = 1;
    memset(v49 + 8, 0, 40);
    v61 = 0;
    memset(v60, 0, sizeof(v60));

    sub_1E383C8A8();
    sub_1E383C8B0();

    OUTLINED_FUNCTION_54_3(v57, v49, v60, &v50);
    v33 = sub_1E37ADF68(v30, v31, v32);
    sub_1E38838AC(v8, 2u, 2, &type metadata for ButtonRepresentable, v33, v0);
    sub_1E37ADFBC(&v50);
    (*(v13 + 16))(v1, v0, v11);
    OUTLINED_FUNCTION_39_3();
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B358, &qword_1E42A0220);
    OUTLINED_FUNCTION_6_1();
    sub_1E3743478(v34);
    *&v50 = &type metadata for ButtonRepresentable;
    *(&v50 + 1) = v33;
    OUTLINED_FUNCTION_2_2();
    swift_getOpaqueTypeConformance2();
    sub_1E4201F44();
    (*(v13 + 8))(v0, v11);
LABEL_16:
    OUTLINED_FUNCTION_54_0();
    return;
  }

  v18 = v3;
  *&v19 = OUTLINED_FUNCTION_34_17();
  v62 = 2;
  v63 = 0;
  *(v20 + 8) = v19;
  *(v20 + 24) = v19;
  *&v64 = 1;
  v65 = 0;
  v52 = 0;
  v50 = v19;
  v51 = v19;

  sub_1E383C8A8();
  sub_1E383C8B0();

  v21.n128_f64[0] = OUTLINED_FUNCTION_54_3(v60, &v64, &v50, v57);
  (*(*v8 + 304))(v21);
  sub_1E4203DA4();
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_36_0();
  sub_1E4200D94();
  if ((v6 & 1) == 0)
  {
    v22 = 0;
    v23 = 0;
    v25 = 16711680;
LABEL_15:
    sub_1E3743538(v57, v49, &qword_1ECF2B238, &qword_1E429FF00);
    sub_1E3743538(v49, &v50, &qword_1ECF2B238, &qword_1E429FF00);
    v53 = v22;
    v54 = v23;
    v56 = BYTE2(v25);
    v55 = v25;
    v35 = OUTLINED_FUNCTION_63_0();
    sub_1E380EF64(v35, v36, v25);
    v37 = OUTLINED_FUNCTION_63_0();
    sub_1E380EF8C(v37, v38, v25);
    sub_1E325F69C(v49, &qword_1ECF2B238);
    sub_1E3743538(&v50, v1, &qword_1ECF2B358, &qword_1E42A0220);
    OUTLINED_FUNCTION_39_3();
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B358, &qword_1E42A0220);
    OUTLINED_FUNCTION_6_1();
    v40 = sub_1E3743478(v39);
    sub_1E37ADF68(v40, v41, v42);
    OUTLINED_FUNCTION_2_2();
    swift_getOpaqueTypeConformance2();
    OUTLINED_FUNCTION_39_3();
    sub_1E4201F44();
    v43 = OUTLINED_FUNCTION_63_0();
    sub_1E380EF8C(v43, v44, v25);
    sub_1E325F69C(&v50, &qword_1ECF2B358);
    sub_1E325F69C(v57, &qword_1ECF2B238);
    goto LABEL_16;
  }

  if (!v48 || !sub_1E32AE9B0(v48))
  {
    goto LABEL_8;
  }

  if ((v48 & 0xC000000000000001) != 0)
  {
    v45 = MEMORY[0x1E6911E60](0, v48);
    swift_unknownObjectRelease();
    if (v45 != v10)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

  if (*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    if (*(v48 + 32) != v10)
    {
LABEL_8:
      v49[0] = xmmword_1E4297170;
      LOWORD(v49[1]) = 0;
      BYTE2(v49[1]) = 1;
LABEL_9:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B368, &qword_1E42A0228);
      sub_1E380EFB4();
      sub_1E4201F44();
      v23 = *(&v50 + 1);
      v22 = v50;
      if (BYTE2(v51))
      {
        v24 = 0x10000;
      }

      else
      {
        v24 = 0;
      }

      v25 = v24 | v51;
      v26 = OUTLINED_FUNCTION_63_0();
      sub_1E380EF7C(v26, v27, v28, v29);
      goto LABEL_15;
    }

LABEL_18:
    v46 = (*(*v8 + 248))();
    *&v49[0] = sub_1E395FA08(v46, v47 & 1);
    *(&v49[0] + 1) = v18;
    LOWORD(v49[1]) = 257;
    BYTE2(v49[1]) = 0;

    goto LABEL_9;
  }

  __break(1u);
}

void sub_1E380D498()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8, &unk_1E429B6E0);
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4_6();
  v11 = (v9 - v10);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v32 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B2A8, &qword_1E42A00F0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_31_2();
  if (v2)
  {
    v40 = v16;

    *v0 = sub_1E4201D44();
    *(v0 + 8) = 0;
    *(v0 + 16) = 0;
    v17 = v0 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B2B0, &qword_1E42A00F8) + 44);
    sub_1E4203DA4();
    OUTLINED_FUNCTION_59();
    OUTLINED_FUNCTION_36_0();
    sub_1E4200D94();
    v36 = v46;
    v37 = v44;
    v34 = v49;
    v35 = v48;
    v43 = 1;
    v42 = v45;
    v41 = v47;
    OUTLINED_FUNCTION_18();
    sub_1E3F23370();
    v38 = v2;
    v39 = v4;
    v18 = v43;
    v19 = v42;
    v20 = v14;
    v33 = v14;
    v21 = v41;
    v22 = *(v7 + 16);
    (v22)(v11, v20, v5);
    *v17 = 0;
    *(v17 + 8) = v18;
    v23 = v36;
    *(v17 + 16) = v37;
    *(v17 + 24) = v19;
    *(v17 + 32) = v23;
    *(v17 + 40) = v21;
    v24 = v34;
    *(v17 + 48) = v35;
    *(v17 + 56) = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B2B8, &qword_1E42A0100);
    OUTLINED_FUNCTION_55_0();
    v22();
    v25 = *(v7 + 8);
    v25(v33, v5);
    v25(v11, v5);

    v26 = v39;
    sub_1E3741EA0(v0, v39, &qword_1ECF2B2A8, &qword_1E42A00F0);
    __swift_storeEnumTagSinglePayload(v26, 0, 1, v40);
    OUTLINED_FUNCTION_25_2();
  }

  else
  {
    OUTLINED_FUNCTION_25_2();

    __swift_storeEnumTagSinglePayload(v27, v28, v29, v30);
  }
}

unint64_t sub_1E380D764()
{
  result = qword_1ECF2B0F0;
  if (!qword_1ECF2B0F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2B0D8, &qword_1E429FDF8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2B0F8, &qword_1E429FE10);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2A1F8, &qword_1E429E7F0);
    sub_1E380D924(&unk_1ECF2B100);
    sub_1E3743478(&qword_1EE23ACD8);
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2B150, &qword_1E429FE40);
    sub_1E380D924(&unk_1ECF2B158);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2B0F0);
  }

  return result;
}

unint64_t sub_1E380D924(uint64_t a1)
{
  result = OUTLINED_FUNCTION_48_0(a1);
  if (!result)
  {
    v5 = v4;
    v6 = OUTLINED_FUNCTION_40_2(0, v3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v6, v7);
    v5();
    sub_1E3743478(&qword_1EE2889D0);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1E380D9CC()
{
  result = qword_1ECF2B108;
  if (!qword_1ECF2B108)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2B110, &qword_1E429FE18);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2B118, &qword_1E429FE20);
    sub_1E380DA8C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2B108);
  }

  return result;
}

unint64_t sub_1E380DA8C()
{
  result = qword_1ECF2B120;
  if (!qword_1ECF2B120)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2B118, &qword_1E429FE20);
    sub_1E3743478(&unk_1EE289DD8);
    sub_1E380DB44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2B120);
  }

  return result;
}

unint64_t sub_1E380DB44()
{
  result = qword_1ECF2B128;
  if (!qword_1ECF2B128)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2B130, &qword_1E429FE28);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2B138, &qword_1E429FE30);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2B140, &qword_1E429FE38);
    sub_1E380ED80(&unk_1ECF2B148);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2B128);
  }

  return result;
}

unint64_t sub_1E380DC84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE25CAC8[0];
  if (!qword_1EE25CAC8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE25CAC8);
  }

  return result;
}

unint64_t sub_1E380DCD8()
{
  result = qword_1ECF2B160;
  if (!qword_1ECF2B160)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2B168, &qword_1E429FE48);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2B170, &unk_1E429FE50);
    sub_1E380DD98();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2B160);
  }

  return result;
}

unint64_t sub_1E380DD98()
{
  result = qword_1ECF2B178;
  if (!qword_1ECF2B178)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2B170, &unk_1E429FE50);
    sub_1E3743478(&unk_1EE289DD8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2B138, &qword_1E429FE30);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2B140, &qword_1E429FE38);
    sub_1E380ED80(&unk_1ECF2B148);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2B178);
  }

  return result;
}

uint64_t sub_1E380DF04()
{
  v1 = *(v0 + 24);
  v2 = OBJC_IVAR____TtC8VideosUI31MediaShowcasingButtonsPresenter_countdownButtonShown;
  result = swift_beginAccess();
  *(v1 + v2) = 1;
  return result;
}

uint64_t sub_1E380DF6C(char a1, double a2, double a3, double a4, double a5)
{
  v6 = sub_1E3B21080();
  result = sub_1E374E8E4(v6, a1);
  if (result)
  {
    return sub_1E3B21268();
  }

  return result;
}

void sub_1E380DFBC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = 0;
  v6 = 0;
  v7 = a4 >> 1;
  v8 = a2 + 8 * a3;
  v9 = a3 - (a4 >> 1);
  v10 = MEMORY[0x1E69E7CC0];
  v11 = (MEMORY[0x1E69E7CC0] + 32);
  while (v9 + v5)
  {
    if (a3 + v5 >= v7)
    {
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    if (__OFADD__(v5, 1))
    {
      goto LABEL_28;
    }

    v12 = *(v8 + 8 * v5);
    if (v6)
    {

      v13 = v10;
    }

    else
    {
      v14 = v10[3];
      if (((v14 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_30;
      }

      v15 = v14 & 0xFFFFFFFFFFFFFFFELL;
      if (v15 <= 1)
      {
        v16 = 1;
      }

      else
      {
        v16 = v15;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28B10, &qword_1E429FF10);
      v13 = swift_allocObject();
      v17 = (_swift_stdlib_malloc_size(v13) - 32) / 16;
      v13[2] = v16;
      v13[3] = 2 * v17;
      v18 = v13 + 4;
      v19 = v10[3] >> 1;
      v11 = &v13[2 * v19 + 4];
      v6 = (v17 & 0x7FFFFFFFFFFFFFFFLL) - v19;
      if (v10[2])
      {
        if (v13 != v10 || v18 >= &v10[2 * v19 + 4])
        {
          memmove(v18, v10 + 4, 16 * v19);
        }

        v10[2] = 0;
      }

      else
      {
      }
    }

    v21 = __OFSUB__(v6--, 1);
    if (v21)
    {
      goto LABEL_29;
    }

    *v11 = v5;
    v11[1] = v12;
    v11 += 2;
    ++v5;
    v10 = v13;
  }

  v22 = v10[3];
  if (v22 < 2)
  {
    return;
  }

  v23 = v22 >> 1;
  v21 = __OFSUB__(v23, v6);
  v24 = v23 - v6;
  if (!v21)
  {
    v10[2] = v24;
    return;
  }

LABEL_31:
  __break(1u);
}

unint64_t sub_1E380E194()
{
  result = qword_1ECF2B1A8;
  if (!qword_1ECF2B1A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2B198, &qword_1E429FE78);
    sub_1E380E220();
    sub_1E380E534();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2B1A8);
  }

  return result;
}

unint64_t sub_1E380E220()
{
  result = qword_1ECF2B1B0;
  if (!qword_1ECF2B1B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2B1B8, &qword_1E429FEC0);
    sub_1E380E2AC();
    sub_1E380E47C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2B1B0);
  }

  return result;
}

unint64_t sub_1E380E2AC()
{
  result = qword_1ECF2B1C0;
  if (!qword_1ECF2B1C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2B1C8, &qword_1E429FEC8);
    sub_1E380E338();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2B1C0);
  }

  return result;
}

unint64_t sub_1E380E338()
{
  result = qword_1ECF2B1D0;
  if (!qword_1ECF2B1D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2B1D8, &qword_1E429FED0);
    sub_1E380E3C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2B1D0);
  }

  return result;
}

unint64_t sub_1E380E3C4()
{
  result = qword_1ECF2B1E0;
  if (!qword_1ECF2B1E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2B1E8, &qword_1E429FED8);
    sub_1E3743478(&unk_1ECF2B1F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2B1E0);
  }

  return result;
}

unint64_t sub_1E380E47C()
{
  result = qword_1ECF2B200;
  if (!qword_1ECF2B200)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2B208, &qword_1E429FEE8);
    sub_1E3743478(&unk_1ECF2B210);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2B200);
  }

  return result;
}

unint64_t sub_1E380E534()
{
  result = qword_1ECF2B220;
  if (!qword_1ECF2B220)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2B228, &qword_1E429FEF8);
    sub_1E380E5C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2B220);
  }

  return result;
}

unint64_t sub_1E380E5C0()
{
  result = qword_1ECF2B230;
  if (!qword_1ECF2B230)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2B238, &qword_1E429FF00);
    sub_1E37ADF68(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2B230);
  }

  return result;
}

uint64_t sub_1E380E64C(double a1, double a2, double a3, double a4)
{
  v5 = *(v4 + 64);
  v6 = sub_1E3B21080();
  if (sub_1E374E8E4(v6, 2))
  {
    return sub_1E3B21268();
  }

  result = sub_1E3CCE274(*(v5 + 120), 7u);
  if (result)
  {
    return sub_1E3B21268();
  }

  return result;
}

unint64_t sub_1E380E6AC(uint64_t a1)
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

double sub_1E380E6F0()
{
  type metadata accessor for CountDownProgressPresenter(0);
  OUTLINED_FUNCTION_4_39();
  sub_1E380E6AC(v0);
  OUTLINED_FUNCTION_27_0();
  sub_1E4200BC4();
  sub_1E3C13B5C(1);

  OUTLINED_FUNCTION_27_0();
  v1 = sub_1E4200BC4();
  v2 = OBJC_IVAR____TtC8VideosUI26CountDownProgressPresenter_hasStartedCountDown;
  swift_beginAccess();
  *(v1 + v2) = 1;

  return result;
}

uint64_t objectdestroyTm_4()
{

  sub_1E3264CE0(*(v0 + 40), *(v0 + 48));
  OUTLINED_FUNCTION_44_8();

  return swift_deallocObject();
}

double sub_1E380E818()
{
  type metadata accessor for CountDownProgressPresenter(0);
  OUTLINED_FUNCTION_4_39();
  sub_1E380E6AC(v0);
  OUTLINED_FUNCTION_27_0();
  sub_1E4200BC4();
  sub_1E3C13B5C(0);

  return result;
}

uint64_t objectdestroy_19Tm_0(uint64_t a1)
{

  sub_1E3264CE0(*(v1 + 40), *(v1 + 48));

  return swift_deallocObject();
}

double sub_1E380E900()
{
  v1 = *(v0 + 64);
  type metadata accessor for CountDownProgressPresenter(0);
  OUTLINED_FUNCTION_4_39();
  sub_1E380E6AC(v2);
  OUTLINED_FUNCTION_27_0();
  sub_1E4200BC4();
  sub_1E3C13D20(*(v1 + 16), *(v1 + 24));

  return result;
}

uint64_t sub_1E380E9A4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_1E380E9E4(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

void sub_1E380EA48(uint64_t a1)
{
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 64) = 1;
  bzero((a1 + 72), 0x99uLL);
}

uint64_t sub_1E380EA74(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 8))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
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

void *sub_1E380EAC8(void *result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
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
      return OUTLINED_FUNCTION_65(result, a2);
    }
  }

  return result;
}

uint64_t sub_1E380EB58(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6 != -1)
  {
    return sub_1E380EB70(result, a2, a3, a4);
  }

  return result;
}

uint64_t sub_1E380EB70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
}

double sub_1E380EBAC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6 != -1)
  {
    return sub_1E380EBC4();
  }

  return v6;
}

double sub_1E380EBC4()
{

  return result;
}

uint64_t sub_1E380EC04(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
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

void *sub_1E380EC5C(void *result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    result[1] = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_65(result, a2);
    }
  }

  return result;
}

unint64_t sub_1E380ECB0()
{
  result = qword_1EE288498;
  if (!qword_1EE288498)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2B2E0, &qword_1E42A0158);
    sub_1E3743478(&unk_1EE2884A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288498);
  }

  return result;
}

unint64_t sub_1E380ED80(uint64_t a1)
{
  result = OUTLINED_FUNCTION_48_0(a1);
  if (!result)
  {
    v5 = v4;
    v6 = OUTLINED_FUNCTION_40_2(0, v3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v6, v7);
    v5();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1E380EDF4()
{
  result = qword_1ECF2B308;
  if (!qword_1ECF2B308)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2B310, &qword_1E42A01E8);
    sub_1E380EEAC();
    sub_1E3743478(&unk_1ECF2B328);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2B308);
  }

  return result;
}

unint64_t sub_1E380EEAC()
{
  result = qword_1ECF2B318;
  if (!qword_1ECF2B318)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2B320, &qword_1E42A01F0);
    sub_1E3743478(&unk_1ECF2B328);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2B318);
  }

  return result;
}

uint64_t sub_1E380EF64(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (BYTE2(a3) != 255)
  {
    return sub_1E380EF7C(result, a2, a3, BYTE2(a3) & 1);
  }

  return result;
}

uint64_t sub_1E380EF7C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {
  }

  return result;
}

double sub_1E380EF8C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (BYTE2(a3) != 255)
  {
    return sub_1E380EFA4(result, a2, a3, BYTE2(a3) & 1);
  }

  return v3;
}

double sub_1E380EFA4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {
  }

  return result;
}

unint64_t sub_1E380EFB4()
{
  result = qword_1ECF2B370;
  if (!qword_1ECF2B370)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2B368, &qword_1E42A0228);
    sub_1E380F040();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2B370);
  }

  return result;
}

unint64_t sub_1E380F040()
{
  result = qword_1ECF2B378;
  if (!qword_1ECF2B378)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2B380, &qword_1E42A0230);
    v3 = sub_1E3743478(&qword_1EE289DE0);
    sub_1E380F0F8(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2B378);
  }

  return result;
}

unint64_t sub_1E380F0F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF47248[0];
  if (!qword_1ECF47248[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF47248);
  }

  return result;
}

unint64_t sub_1E380F14C()
{
  result = qword_1ECF2B390;
  if (!qword_1ECF2B390)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2B398, &qword_1E42A0240);
    sub_1E380ED80(&unk_1ECF2B300);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2B390);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_53_11()
{

  return sub_1E4202FA4();
}

uint64_t OUTLINED_FUNCTION_88_6()
{

  return sub_1E3743538(v0 + 96, v0 + 72, v1, v2);
}

double OUTLINED_FUNCTION_89_3()
{

  return result;
}

void sub_1E380F2B0(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC8VideosUI21CanonicalInfoCardCell_cardView;
  OUTLINED_FUNCTION_3_0(&v2[OBJC_IVAR____TtC8VideosUI21CanonicalInfoCardCell_cardView], v28);
  v5 = *&v2[v4];
  *&v2[v4] = a1;
  v6 = a1;
  v7 = OBJC_IVAR____TtC8VideosUI21CanonicalInfoCardCell_cardView;
  OUTLINED_FUNCTION_5_0(&v2[OBJC_IVAR____TtC8VideosUI21CanonicalInfoCardCell_cardView], v30);
  v8 = *&v2[v7];
  if (!v8)
  {
    if (!v5)
    {
      goto LABEL_21;
    }

LABEL_6:
    [v5 removeFromSuperview];
    v8 = *&v2[v7];
    if (!v8)
    {
      goto LABEL_21;
    }

    goto LABEL_7;
  }

  if (v8 == v5)
  {
    goto LABEL_21;
  }

  if (v5)
  {
    goto LABEL_6;
  }

LABEL_7:
  v9 = v8;
  [v9 setContentMode_];
  v10 = *sub_1E3E932E0();
  v11 = *sub_1E3E932EC();
  if (!v10)
  {
    if (!v11)
    {
      v10 = 0;
      goto LABEL_13;
    }

LABEL_11:
    v10 |= v11;
    goto LABEL_13;
  }

  if ((v11 & ~v10) != 0)
  {
    goto LABEL_11;
  }

LABEL_13:
  [v9 setVuiAutoresizingMask_];
  v12 = OBJC_IVAR____TtC8VideosUI21CanonicalInfoCardCell_layout;
  OUTLINED_FUNCTION_5_0(&v2[OBJC_IVAR____TtC8VideosUI21CanonicalInfoCardCell_layout], v29);
  v13 = *&v2[v12];
  v14 = 0.0;
  if (v13)
  {
    v15 = *(*v13 + 552);

    v15(v31, v16);
    v17 = *v31;
    v18 = *&v31[1];
    v19 = *&v31[2];
    v20 = *&v31[3];

    if ((v32 & 1) == 0)
    {
      v14 = sub_1E3952BE8(v17, v18, v19, v20);
    }
  }

  v21 = [v9 vuiLayer];
  [v21 setCornerRadius_];

  v22 = [v9 vuiLayer];
  if (v22)
  {
    [v22 setMasksToBounds_];
  }

  v23 = [v2 vuiContentView];
  [v23 addSubview_];

  v24 = [v2 vuiContentView];
  v25 = [v24 vuiLayer];

  [v25 setCornerRadius_];
  v26 = [v2 vuiContentView];
  v27 = [v26 vuiLayer];

  if (v27)
  {
    [v27 setMasksToBounds_];
  }

LABEL_21:
  [v2 vui_setNeedsLayout];
}

id sub_1E380F5A4()
{
  OUTLINED_FUNCTION_0_8();
  ObjectType = swift_getObjectType();
  *(v0 + OBJC_IVAR____TtC8VideosUI21CanonicalInfoCardCell_layout) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI21CanonicalInfoCardCell_cardView) = 0;
  v6 = ObjectType;
  v2 = OUTLINED_FUNCTION_2_0();
  return objc_msgSendSuper2(v3, v4, v2, v0, v6);
}

char *sub_1E380F630(unsigned __int16 *a1, void *a2)
{
  v4 = sub_1E41FFCB4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v129 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    goto LABEL_72;
  }

  v8 = swift_dynamicCastClass();
  if (!v8)
  {
    goto LABEL_72;
  }

  v9 = v8;
  OUTLINED_FUNCTION_30_1();
  v11 = *(v10 + 392);
  v142 = a2;
  v12 = v11();
  if (!v12)
  {
    goto LABEL_71;
  }

  v13 = v12;
  v14 = *v12;
  if (*v12 == _TtC8VideosUI23CanonicalInfoCardLayout)
  {
    v15 = v12;
  }

  else
  {
    v15 = 0;
  }

  v145 = v15;
  if (v14 != _TtC8VideosUI23CanonicalInfoCardLayout)
  {

    goto LABEL_72;
  }

  v16 = OBJC_IVAR____TtC8VideosUI21CanonicalInfoCardCell_layout;
  OUTLINED_FUNCTION_3_0(&v9[OBJC_IVAR____TtC8VideosUI21CanonicalInfoCardCell_layout], v156);
  *&v9[v16] = v13;
  swift_retain_n();

  v18 = (*(*a1 + 488))(v17);
  if (!v18)
  {
    goto LABEL_67;
  }

  v19 = v18;
  if (!*(v18 + 16))
  {

    goto LABEL_67;
  }

  v20 = OBJC_IVAR____TtC8VideosUI21CanonicalInfoCardCell_cardView;
  OUTLINED_FUNCTION_5_0(&v9[OBJC_IVAR____TtC8VideosUI21CanonicalInfoCardCell_cardView], v155);
  v154[0] = *&v9[v20];
  v21 = v154[0];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B3B0, qword_1E42A0248);
  sub_1E4148C68(sub_1E3810624, v22, &v151);

  v23 = v151;
  v24 = OBJC_IVAR____TtC8VideosUI21CanonicalInfoCardView_layout;
  OUTLINED_FUNCTION_3_0(v151 + OBJC_IVAR____TtC8VideosUI21CanonicalInfoCardView_layout, v154);
  *&v23[v24] = v13;
  v138 = v13;

  v25 = type metadata accessor for UIFactory();
  v27 = sub_1E373E010(39, v19, v26);
  v28 = OBJC_IVAR____TtC8VideosUI21CanonicalInfoCardView_imageView;
  OUTLINED_FUNCTION_5_0(&v23[OBJC_IVAR____TtC8VideosUI21CanonicalInfoCardView_imageView], v153);
  v141 = v23;
  OUTLINED_FUNCTION_0_43();
  v29 = sub_1E3280A90(0, &qword_1EE23B360, 0x1E69DF740);
  v30 = v28;
  v146 = v25;
  v31 = sub_1E393D92C(v27, v28, &v151, 0, v29);

  sub_1E325F748(&v151, &qword_1ECF296C0, &unk_1E429BBE0);
  if (v31)
  {
    [v31 setAdjustsLocalImageForContentSizeCategory_];
  }

  v137 = v31;
  v32 = v141;
  sub_1E3B1C464(v31);
  sub_1E373E010(23, v19, v33);
  v34 = OBJC_IVAR____TtC8VideosUI21CanonicalInfoCardView_titleLabel;
  OUTLINED_FUNCTION_5_0(&v32[OBJC_IVAR____TtC8VideosUI21CanonicalInfoCardView_titleLabel], &v150);
  OUTLINED_FUNCTION_0_43();
  v35 = sub_1E3280A90(0, &qword_1EE23AD40, off_1E87283A8);
  v36 = v34;
  v37 = OUTLINED_FUNCTION_1_68();
  v41 = sub_1E393D92C(v37, v38, v39, v40, v35);

  sub_1E325F748(&v151, &qword_1ECF296C0, &unk_1E429BBE0);
  sub_1E3B1C3C8(v41);
  sub_1E373E010(15, v19, v42);
  v43 = OBJC_IVAR____TtC8VideosUI21CanonicalInfoCardView_subtitleLabel;
  OUTLINED_FUNCTION_5_0(&v32[OBJC_IVAR____TtC8VideosUI21CanonicalInfoCardView_subtitleLabel], &v149);
  OUTLINED_FUNCTION_0_43();
  v44 = v43;
  v45 = OUTLINED_FUNCTION_1_68();
  v140 = v35;
  v49 = sub_1E393D92C(v45, v46, v47, v48, v35);

  sub_1E325F748(&v151, &qword_1ECF296C0, &unk_1E429BBE0);
  sub_1E3B1C410(v49);
  sub_1E373E010(9, v19, v50);

  v51 = OBJC_IVAR____TtC8VideosUI21CanonicalInfoCardView_descriptionLabel;
  OUTLINED_FUNCTION_5_0(&v32[OBJC_IVAR____TtC8VideosUI21CanonicalInfoCardView_descriptionLabel], &v148);
  OUTLINED_FUNCTION_0_43();
  v52 = sub_1E3280A90(0, &qword_1EE23B1F8, off_1E8728188);
  v53 = v51;
  v54 = OUTLINED_FUNCTION_1_68();
  v58 = sub_1E393D92C(v54, v55, v56, v57, v52);

  sub_1E325F748(&v151, &qword_1ECF296C0, &unk_1E429BBE0);
  sub_1E3B1C458(v58);
  v59 = OBJC_IVAR____TtC8VideosUI21CanonicalInfoCardView_tableView;
  OUTLINED_FUNCTION_5_0(&v32[OBJC_IVAR____TtC8VideosUI21CanonicalInfoCardView_tableView], &v147);
  v60 = *&v32[v59];
  v61 = a1;
  v62 = *(*a1 + 552);

  v139 = v60;
  v63 = v62();
  if (!v63)
  {

    v69 = 0;
    v65 = v139;
    goto LABEL_63;
  }

  v135 = v61;
  sub_1E3277E60(0x656D6F74616D6F74, 0xEB00000000726574, v63, &v151);

  if (!v152)
  {

    sub_1E325F748(&v151, &unk_1ECF296E0, &unk_1E4298030);
    v65 = v139;
LABEL_25:
    v69 = 0;
LABEL_63:

    v109 = v141;
    sub_1E3B1C470(v69);
    v110 = v109;
    sub_1E380F2B0(v109);
    v111 = v145;
    vtable = (*v145)[18].vtable;
    v113 = v142;
    v114 = vtable();
    [v9 setBackgroundColor_];

    v115 = ((*v111)[21].vtable)();
    [v9 setHighlightedBackgroundColor_];

    if ((TVAppFeature.isEnabled.getter(10, v116, v117) & 1) == 0 || [objc_opt_self() isMac])
    {
      v118 = v110;
      v119 = vtable();

      [v118 setVuiBackgroundColor_];

LABEL_68:

      return v9;
    }

LABEL_67:

    goto LABEL_68;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E9B0, qword_1E4298110);
  OUTLINED_FUNCTION_3_36();
  v64 = swift_dynamicCast();
  v65 = v139;
  if ((v64 & 1) == 0)
  {

    goto LABEL_25;
  }

  v146 = v157;
  v66 = v139;
  if (!v60)
  {
    type metadata accessor for TomatometerTableView();
    v66 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  }

  v159 = MEMORY[0x1E69E7CC0];
  type metadata accessor for CanonicalInfoCardLayout.RowLayout();
  v67 = v65;
  v68 = sub_1E41845C0();
  v69 = v66;
  v70 = [v69 vuiTraitCollection];
  v71 = [v70 isAXEnabled];

  v72 = [v69 vuiIsRTL];
  if (v71)
  {
    OUTLINED_FUNCTION_30_1();
    if (v72)
    {
      (*(v73 + 96))();
      OUTLINED_FUNCTION_30();
      (*(v74 + 1984))(2);
    }

    else
    {
      (*(v73 + 120))();
      OUTLINED_FUNCTION_30();
      (*(v79 + 1984))(0);
    }
  }

  else
  {
    if (!v72)
    {
      goto LABEL_30;
    }

    OUTLINED_FUNCTION_30_1();
    (*(v75 + 120))();
    OUTLINED_FUNCTION_30();
    (*(v76 + 1984))(0);

    OUTLINED_FUNCTION_30_1();
    (*(v77 + 96))();
    OUTLINED_FUNCTION_2_1();
    (*(v78 + 1984))(2);
  }

LABEL_30:
  v136 = v68;
  a1 = *(v146 + 16);
  v131 = v69 & 0xFFFFFFFFFFFFLL | 0x6AE1000000000000;
  if (!a1)
  {

    v81 = MEMORY[0x1E69E7CC0];
LABEL_62:
    (*((*MEMORY[0x1E69E7D40] & *v69) + 0x60))(v81);

    goto LABEL_63;
  }

  v130 = v9;
  v80 = *MEMORY[0x1E69E7D40] & *v69;
  v144 = v69;
  v5 = *(v80 + 88);
  v143 = v80 + 88;
  v81 = MEMORY[0x1E69E7CC0];
  v82 = 32;
  v134 = v5;
  while (1)
  {
    v4 = *(v146 + v82);
    if (v81 >> 62)
    {
      v7 = sub_1E4207384();
    }

    else
    {
      v7 = *((v81 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v84 = (v5)(v83);
    if (!v84)
    {
      goto LABEL_44;
    }

    v85 = v84;
    v86 = v84 & 0xFFFFFFFFFFFFFF8;
    v87 = v84 >> 62 ? sub_1E4207384() : *((v84 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7 < v87)
    {
      break;
    }

LABEL_44:
    type metadata accessor for TomatometerTableView.ItemViewModel();
    v90 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v91 = 0;
LABEL_45:
    if (*(v4 + 16))
    {
      v92 = sub_1E327D33C(0x656C746974, 0xE500000000000000);
      if (v93)
      {
        sub_1E328438C(*(v4 + 56) + 32 * v92, &v151);
        OUTLINED_FUNCTION_3_36();
        if (swift_dynamicCast())
        {
          v132 = v158;
          v133 = v157;
          (*(*v136 + 96))();
          OUTLINED_FUNCTION_2_1();
          v95 = (*(v94 + 2408))();

          OUTLINED_FUNCTION_7_20();
          v97 = (*(v96 + 96))();
          sub_1E3810954(v133, v132, v95, v97);
          v5 = v134;
          OUTLINED_FUNCTION_7_20();
          (*(v98 + 104))();
        }
      }
    }

    if (*(v4 + 16) && (v99 = sub_1E327D33C(0x65756C6176, 0xE500000000000000), (v100 & 1) != 0))
    {
      sub_1E328438C(*(v4 + 56) + 32 * v99, &v151);

      OUTLINED_FUNCTION_3_36();
      if (swift_dynamicCast())
      {
        v101 = v157;
        v133 = v158;
        (*(*v136 + 120))();
        OUTLINED_FUNCTION_2_1();
        v103 = (*(v102 + 2408))();

        OUTLINED_FUNCTION_7_20();
        v105 = (*(v104 + 120))();
        v106 = v101;
        v5 = v134;
        sub_1E3810954(v106, v133, v103, v105);
        OUTLINED_FUNCTION_7_20();
        (*(v107 + 128))();
      }
    }

    else
    {
    }

    v108 = v90;
    MEMORY[0x1E6910BF0]();
    if (*((v159 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v159 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1E42062F4();
    }

    sub_1E4206324();

    v81 = v159;
    v82 += 8;
    a1 = (a1 - 1);
    if (!a1)
    {

      v9 = v130;
      v65 = v139;
      v69 = v144;
      goto LABEL_62;
    }
  }

  if ((v85 & 0xC000000000000001) != 0)
  {
    v88 = MEMORY[0x1E6911E60](v7, v85);
LABEL_42:
    v89 = v88;

    v90 = v89;
    v91 = v90;
    goto LABEL_45;
  }

  if ((v7 & 0x8000000000000000) == 0)
  {
    if (v7 >= *(v86 + 16))
    {
      goto LABEL_70;
    }

    v88 = *(v85 + 8 * v7 + 32);
    goto LABEL_42;
  }

  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:

LABEL_72:
  v121 = sub_1E324FBDC();
  (*(v5 + 16))(v7, v121, v4);

  v122 = sub_1E41FFC94();
  v123 = sub_1E4206814();

  if (os_log_type_enabled(v122, v123))
  {
    v124 = swift_slowAlloc();
    v125 = swift_slowAlloc();
    *&v151 = v125;
    *v124 = 136315138;
    sub_1E384EE08(a1[49]);
    v128 = sub_1E3270FC8(v126, v127, &v151);

    *(v124 + 4) = v128;
    _os_log_impl(&dword_1E323F000, v122, v123, "CanonicalInfoCardCell: Failed to get correct cell for [%s]", v124, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v125);
    MEMORY[0x1E69143B0](v125, -1, -1);
    MEMORY[0x1E69143B0](v124, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  result = sub_1E42076B4();
  __break(1u);
  return result;
}

id sub_1E3810624@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CanonicalInfoCardView();
  result = sub_1E3890DAC();
  *a1 = result;
  return result;
}

void sub_1E3810668()
{
  *(v0 + OBJC_IVAR____TtC8VideosUI21CanonicalInfoCardCell_layout) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI21CanonicalInfoCardCell_cardView) = 0;
  sub_1E42076B4();
  __break(1u);
}

double sub_1E38106F4(char a1, double a2, double a3)
{
  v4 = OBJC_IVAR____TtC8VideosUI21CanonicalInfoCardCell_cardView;
  if (a1)
  {
    OUTLINED_FUNCTION_5_0(&v3[OBJC_IVAR____TtC8VideosUI21CanonicalInfoCardCell_cardView], v17);
    v7 = *&v3[v4];
    if (v7)
    {
      v8 = OBJC_IVAR____TtC8VideosUI21CanonicalInfoCardCell_layout;
      OUTLINED_FUNCTION_5_0(&v3[OBJC_IVAR____TtC8VideosUI21CanonicalInfoCardCell_layout], &v16);
      v9 = *&v3[v8];

      v10 = v7;
      sub_1E3C8B764(v9, a2, a3);
      v12 = v11;
    }

    else
    {
      return 0.0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_0(&v3[OBJC_IVAR____TtC8VideosUI21CanonicalInfoCardCell_cardView], v17);
    v13 = *&v3[v4];
    v12 = 0.0;
    if (v13)
    {
      v14 = v13;
      [v3 vuiBounds];
      [v14 setFrame_];
    }
  }

  return v12;
}

void sub_1E3810854()
{
  v5.receiver = v0;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, sel_vui_prepareForReuse);
  v1 = OBJC_IVAR____TtC8VideosUI21CanonicalInfoCardCell_cardView;
  OUTLINED_FUNCTION_5_0(&v0[OBJC_IVAR____TtC8VideosUI21CanonicalInfoCardCell_cardView], v4);
  v2 = *&v0[v1];
  if (v2)
  {
    v3 = v2;
    sub_1E3B1D73C();
  }
}

id sub_1E3810954(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  if (a2)
  {
    v6 = sub_1E4205ED4();
  }

  else
  {
    v6 = 0;
  }

  v7 = [swift_getObjCClassFromMetadata() labelWithString:v6 textLayout:a3 existingLabel:a4];

  return v7;
}

void *sub_1E3810A18(unsigned __int16 *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for TextBadge(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v91[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v91[-v12];
  *(&v93 + 1) = &unk_1F5D5D918;
  v94 = &off_1F5D5C938;
  LOBYTE(v92) = 2;
  v14 = j__OUTLINED_FUNCTION_18();
  v15 = sub_1E39C29F0(&v92, v14 & 1);
  __swift_destroy_boxed_opaque_existential_1(&v92);
  if (TVAppFeature.isEnabled.getter(10, v16, v17) & 1) == 0 || (v15)
  {
    v24 = (*(*a1 + 488))();
    if (v24)
    {
      v25 = v24;
      if (!a4)
      {
        if (!(*(*a1 + 392))())
        {

          return 0;
        }
      }

      type metadata accessor for TextBadgeLayout(0);
      v30 = swift_dynamicCastClass();
      if (v30)
      {
        v31 = v30;
        if (a2)
        {
          objc_opt_self();
          v32 = swift_dynamicCastObjCClass();
          if (v32)
          {
            v33 = a2;
          }
        }

        else
        {
          v32 = 0;
        }

        v95[0] = v32;
        swift_retain_n();
        v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B3B8, &unk_1E42A0290);
        sub_1E4148C68(sub_1E3811578, v34, &v92);

        v21 = v92;
        [v92 reset];
        OUTLINED_FUNCTION_0_44();
        v36 = (*(v35 + 1824))();
        [v21 setBadgeKind_];
        v37 = *(*v31 + 176);

        v39 = v95;
        v37(v95, v38);
        if (v96)
        {
          v39 = MEMORY[0x1E69DDCE0];
          v40 = *(MEMORY[0x1E69DDCE0] + 8);
          v41 = *(MEMORY[0x1E69DDCE0] + 16);
          v42 = *(MEMORY[0x1E69DDCE0] + 24);
        }

        else
        {
          v40 = *&v95[1];
          v41 = *&v95[2];
          v42 = *&v95[3];
        }

        [v21 setPadding_];
        OUTLINED_FUNCTION_0_44();
        v44 = (*(v43 + 1872))();
        if (v44)
        {
          v45 = (*(*v44 + 672))();
        }

        else
        {
          v45 = 0;
        }

        OUTLINED_FUNCTION_2_34(v44, sel_setTintColor_);

        OUTLINED_FUNCTION_0_44();
        v47 = *(v46 + 1848);
        v48 = v47();
        if (v48)
        {
          OUTLINED_FUNCTION_30();
          v50 = (*(v49 + 1928))();

          if (v50 == 4)
          {
            LOBYTE(v48) = 0;
          }

          else
          {
            LOBYTE(v92) = v50;
            v91[15] = 2;
            sub_1E376C360(v51, v52, v53);
            LOBYTE(v48) = sub_1E4205E84();
          }
        }

        if ((v47)([v21 setIsUppercased_]) && (OUTLINED_FUNCTION_30(), v57 = (*(v56 + 1904))(), , v57 != 28))
        {
          v58 = sub_1E376BD24(v57);
        }

        else
        {
          v58 = 0;
        }

        [v21 setBlendMode_];
        OUTLINED_FUNCTION_0_44();
        v60 = COERCE_DOUBLE((*(v59 + 328))());
        if (v61)
        {
          v60 = 0.0;
        }

        [v21 setMinHeight_];
        OUTLINED_FUNCTION_0_44();
        v63 = (*(v62 + 552))(&v92);
        MEMORY[0x1EEE9AC00](v63);
        *&v91[-16] = v21;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B3C0, &qword_1E42B9710);
        sub_1E4148DE0(sub_1E38115B4);
        OUTLINED_FUNCTION_0_44();
        v65 = (*(v64 + 744))();
        OUTLINED_FUNCTION_2_34(v65, sel_setBackgroundColor_);

        OUTLINED_FUNCTION_0_44();
        v67 = (*(v66 + 840))();

        if (v67)
        {
          v69 = (*(*v67 + 1792))(v68);

          if (v69)
          {
            sub_1E3755B54();
            v67 = sub_1E42062A4();
          }

          else
          {
            v67 = 0;
          }
        }

        OUTLINED_FUNCTION_2_34(v68, sel_setGradientBgColors_);

        if (sub_1E373E010(39, v25, v70))
        {
          type metadata accessor for ImageViewModel();
          v71 = swift_dynamicCastClass();
          if (v71)
          {
            v72 = v71;
            v73 = *_s8VideosUIAAC19initializeUIFactoryyyFZ_0();
            v74 = [v21 imageView];
            v94 = 0;
            v92 = 0u;
            v93 = 0u;
            v75 = sub_1E393D9C4(v72, v74, &v92, 0);

            sub_1E373C624(&v92);
            goto LABEL_56;
          }
        }

        v75 = 0;
LABEL_56:
        [v21 setImageView_];
        v77 = sub_1E373E010(17, v25, v76);
        if (v77)
        {
          if (*v77 == _TtC8VideosUI13TextViewModel)
          {
            v78 = OUTLINED_FUNCTION_18();
            v79 = sub_1E3C287F4(0, v78 & 1);

            goto LABEL_61;
          }
        }

        v79 = 0;
LABEL_61:
        [v21 setAttributedTitle_];
        if (sub_1E373F6E0(a1[49], 57, v80, v81, v82, v83))
        {
          v85 = sub_1E373E010(17, v25, v84);

          if (!v85)
          {

LABEL_73:
            goto LABEL_74;
          }

          if (*v85 != _TtC8VideosUI13TextViewModel)
          {

            goto LABEL_74;
          }

          v86 = *_s8VideosUIAAC19initializeUIFactoryyyFZ_0();
          v94 = 0;
          v92 = 0u;
          v93 = 0u;
          v87 = v86;
          v88 = sub_1E393D9C4(v85, 0, &v92, 0);

          sub_1E373C624(&v92);
          if (v88)
          {
            objc_opt_self();
            v89 = swift_dynamicCastObjCClass();
            if (!v89)
            {
            }
          }

          else
          {
            v89 = 0;
          }

          [v21 setRentalExpirationLabel_];
        }

        else
        {
        }

        goto LABEL_73;
      }

      swift_retain_n();
    }

    return 0;
  }

  if (a3 == 1)
  {
    v18 = 0;
  }

  else
  {
    v18 = a3;
  }

  sub_1E37C5408(a3);
  OUTLINED_FUNCTION_18();

  sub_1E3FC96D0(v19, v18, v13);
  if (a2 && (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF31AC0, &qword_1E42B6DB0), (v20 = swift_dynamicCastClass()) != 0))
  {
    v21 = v20;
    sub_1E38115FC(v13, v10);
    v22 = a2;
    v23 = sub_1E4201234();
  }

  else
  {
    sub_1E38115FC(v13, v10);
    v26 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF31AC0, &qword_1E42B6DB0));
    v23 = sub_1E4201214();
    v21 = v23;
  }

  if ((*(*a1 + 392))(v23))
  {
    type metadata accessor for TextBadgeLayout(0);
    v27 = swift_dynamicCastClass();
    if (v27)
    {
      if (!(*(*v27 + 1848))() || (OUTLINED_FUNCTION_30(), v29 = (*(v28 + 1712))(), , v29 == 13))
      {
        sub_1E3811660(v13);
LABEL_74:

        return v21;
      }

      v54 = j__OUTLINED_FUNCTION_13_30(v29);
      v55 = [objc_opt_self() uiContentSizeCategoryFor_];
      OUTLINED_FUNCTION_2_34(v55, sel_setMaximumContentSizeCategory_);
    }
  }

  sub_1E3811660(v13);
  return v21;
}

id sub_1E3811578@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(VUITextBadgeView) init];
  *a1 = result;
  return result;
}

id sub_1E38115B4(double *a1)
{
  v2 = *(v1 + 16);
  v3 = sub_1E3952BE8(*a1, a1[1], a1[2], a1[3]);

  return [v2 setLayerCornerRadius_];
}

uint64_t sub_1E38115FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TextBadge(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3811660(uint64_t a1)
{
  v2 = type metadata accessor for TextBadge(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E38116BC(uint64_t a1)
{
  if (sub_1E385050C())
  {
    return 1;
  }

  return sub_1E373F6E0(a1, 36, v2, v3, v4, v5);
}

uint64_t sub_1E381170C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
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

uint64_t sub_1E381179C()
{
  v1 = OBJC_IVAR____TtC8VideosUI31CollectionRichHeaderFocusUpdate___observationRegistrar;
  sub_1E41FE934();
  OUTLINED_FUNCTION_10();
  (*(v2 + 8))(v0 + v1);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t sub_1E381182C()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 1;
  sub_1E41FE924();
  return v0;
}

id sub_1E3811884(uint64_t a1, void *a2)
{
  v26 = sub_1E41FFBF4();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = VUISignpostLogObject(v9);
  sub_1E41FFBC4();
  v11 = sub_1E4206BA4();
  v12 = VUISignpostLogObject(v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30870, &unk_1E429CE30);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1E4297BE0;
  sub_1E384EE08(*(a1 + 98));
  v15 = v14;
  v17 = v16;
  *(v13 + 56) = MEMORY[0x1E69E6158];
  *(v13 + 64) = sub_1E3283528(v14, v16, v18);
  *(v13 + 32) = v15;
  *(v13 + 40) = v17;
  sub_1E41FFB94();

  if (a2 && (v19 = swift_dynamicCastClass()) != 0)
  {
    v20 = v19;
    v21 = a2;
  }

  else
  {
    v20 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  }

  sub_1E3811AC0(a1);
  v22 = sub_1E4206B94();
  v23 = VUISignpostLogObject(v22);
  sub_1E41FFBA4();

  (*(v5 + 8))(v8, v26);
  return v20;
}

uint64_t sub_1E3811AC0(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B3D0, &qword_1E42A0420);
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v13[-v8];
  v14 = a1;
  v15 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B3D8, &qword_1E42A0428);
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECF2B3E0, &unk_1E42A0430);
  v11 = sub_1E3812658();
  v16[0] = v10;
  v16[1] = v11;
  swift_getOpaqueTypeConformance2();
  sub_1E42021C4();
  sub_1E4202734();
  v16[3] = v4;
  v16[4] = sub_1E32752B0(&qword_1EE2888C0, &qword_1ECF2B3D0, &qword_1E42A0420, MEMORY[0x1E697C858]);
  __swift_allocate_boxed_opaque_existential_1(v16);
  sub_1E42021B4();
  (*(v6 + 8))(v9, v4);
  return MEMORY[0x1E6911580](v16);
}

double sub_1E3811C7C(double a1, double a2)
{
  v3 = v2;
  v6 = sub_1E41FFBF4();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = VUISignpostLogObject(v12);
  sub_1E41FFBC4();
  v14 = sub_1E4206BA4();
  v15 = VUISignpostLogObject(v14);
  OUTLINED_FUNCTION_6_36(v14, &dword_1E323F000, v15);

  v16 = [v3 contentView];
  [v16 sizeThatFits_];
  v18 = v17;

  v19 = sub_1E4206B94();
  v20 = VUISignpostLogObject(v19);
  OUTLINED_FUNCTION_6_36(v19, &dword_1E323F000, v20);

  (*(v8 + 8))(v11, v6);
  return v18;
}

id sub_1E3811E60()
{
  OUTLINED_FUNCTION_0_8();
  ObjectType = swift_getObjectType();
  *(v0 + OBJC_IVAR____TtC8VideosUI24CollectionRichHeaderView_viewModel) = 0;
  v6 = ObjectType;
  v2 = OUTLINED_FUNCTION_2_0();
  return objc_msgSendSuper2(v3, v4, v2, v0, v6);
}

id sub_1E3811EE0(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC8VideosUI24CollectionRichHeaderView_viewModel] = 0;
  v6.receiver = v1;
  v6.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

void sub_1E3811F90(uint64_t a1)
{
  v2 = v1;
  v4 = (*(*a1 + 488))(a1);
  if (v4 && (v5 = *(v4 + 16), v6 = , v5))
  {
    v7 = (*(*a1 + 392))(v6);
    if (v7)
    {
      v8 = *v7;

      if (v8 == _TtC8VideosUI20RichHeaderViewLayout)
      {

        sub_1E3811AC0(a1);
      }
    }
  }

  else
  {

    [v2 vui_setNeedsLayout];
  }
}

uint64_t sub_1E38120F0()
{
  swift_getKeyPath();
  v0 = sub_1E38124A4();
  OUTLINED_FUNCTION_43(v0, v1);
}

uint64_t sub_1E3812154@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E38120F0();
  *a1 = result;
  return result;
}

double sub_1E38121AC(uint64_t a1)
{
  v2 = v1;

  type metadata accessor for ViewModel();
  sub_1E38124FC(&qword_1EE23BA60, type metadata accessor for ViewModel, &protocol conformance descriptor for ViewModel);
  v4 = sub_1E4205E84();

  if (v4)
  {
    *(v2 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1E38124A4();
    sub_1E41FE8E4();
  }

  return result;
}

uint64_t sub_1E3812304()
{

  v1 = OBJC_IVAR____TtC8VideosUIP33_28E0DD4EE154B4517DA468362DA184A725HeaderViewModelObservable___observationRegistrar;
  sub_1E41FE934();
  OUTLINED_FUNCTION_10();
  (*(v2 + 8))(v0 + v1);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t sub_1E38123D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1E41FE934();
  if (v5 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_1E3812468()
{
  *(*(v0 + 16) + 16) = *(v0 + 24);
}

unint64_t sub_1E38124A4()
{
  result = qword_1EE2964D8;
  if (!qword_1EE2964D8)
  {
    type metadata accessor for HeaderViewModelObservable(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2964D8);
  }

  return result;
}

uint64_t sub_1E38124FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E3812544()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);

  v3 = v1;
  sub_1E3EE4C70(v2, 0, 0, v1, v8);
  type metadata accessor for Router(0);
  sub_1E40C4334();

  sub_1E40C49A8();
  v5 = v4;

  sub_1E38124FC(&qword_1EE23C228, type metadata accessor for Router, &unk_1E42EB398);
  v9 = sub_1E4200504();
  v10 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2B3E0, &unk_1E42A0430);
  sub_1E3812658();
  sub_1E3D79BC0(v1, v6);
  return sub_1E3812764(v8);
}

unint64_t sub_1E3812658()
{
  result = qword_1EE289CB0;
  if (!qword_1EE289CB0)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECF2B3E0, &unk_1E42A0430);
    sub_1E3812710(v1, v2, v3);
    sub_1E32752B0(&qword_1EE2887F0, &unk_1ECF2A7A8, &qword_1E42B2790, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289CB0);
  }

  return result;
}

unint64_t sub_1E3812710(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE287D70;
  if (!qword_1EE287D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE287D70);
  }

  return result;
}

uint64_t sub_1E3812764(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2B3E0, &unk_1E42A0430);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1E38127CC()
{
  v1 = OBJC_IVAR____TtC8VideosUI22RootSideBarProfileView____lazy_storage___titleLabel;
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI22RootSideBarProfileView____lazy_storage___titleLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8VideosUI22RootSideBarProfileView____lazy_storage___titleLabel);
  }

  else
  {
    v4 = v0;
    if ([objc_opt_self() isTV])
    {
      sub_1E38132CC();
    }

    else
    {
      sub_1E381320C();
    }

    v7 = v5;
    v8 = v6;
    sub_1E3280A90(0, &qword_1EE23AD40, off_1E87283A8);
    sub_1E38128E8();
    OUTLINED_FUNCTION_2_1();
    v10 = (*(v9 + 2408))();

    v11 = sub_1E3810954(v7, v8, v10, 0);
    v12 = *(v0 + v1);
    *(v4 + v1) = v11;
    v3 = v11;

    v2 = 0;
  }

  v13 = v2;
  return v3;
}

uint64_t sub_1E38128E8()
{
  if (*(v0 + OBJC_IVAR____TtC8VideosUI22RootSideBarProfileView____lazy_storage___titleLabelLayout))
  {
    v1 = *(v0 + OBJC_IVAR____TtC8VideosUI22RootSideBarProfileView____lazy_storage___titleLabelLayout);
  }

  else
  {
    type metadata accessor for TextLayout();
    v1 = sub_1E383BCC0();
    sub_1E39DFFC8();
    OUTLINED_FUNCTION_36();
    if (v3)
    {
      v4 = 17;
    }

    else
    {
      v4 = 19;
    }

    (*(v2 + 1696))(v4);
    sub_1E39DFFC8();
    OUTLINED_FUNCTION_36();
    if (v6)
    {
      v7 = 6;
    }

    else
    {
      v7 = 10;
    }

    (*(v5 + 1792))(v7);

    v8 = *sub_1E3E5FD88();
    v9 = *(*v1 + 680);
    v10 = v8;
    v9(v8);
    LOBYTE(v109) = 0;
    v137 = 1;
    v138 = 0;
    v11 = MEMORY[0x1E69E6810];
    sub_1E3C2FC98();
    OUTLINED_FUNCTION_5_46();
    OUTLINED_FUNCTION_4_40();
    v12 = OUTLINED_FUNCTION_3_37();
    OUTLINED_FUNCTION_0_45(v12, v13, v14, v15, v16, v17, v18, v19, 2, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133);
    OUTLINED_FUNCTION_14_32(v20, v21, v22, v23, v24, v25, v26, v27, v108);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_36();
    v29 = *(v28 + 1600);
    (v29)(&v108, 62, v30 & 1, v11);
    OUTLINED_FUNCTION_18_17();
    OUTLINED_FUNCTION_5_46();
    OUTLINED_FUNCTION_4_40();
    v31 = OUTLINED_FUNCTION_3_37();
    OUTLINED_FUNCTION_0_45(v31, v32, v33, v34, v35, v36, v37, v38, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133);
    OUTLINED_FUNCTION_14_32(v39, v40, v41, v42, v43, v44, v45, v46, v108);
    v47 = OUTLINED_FUNCTION_18();
    v55 = OUTLINED_FUNCTION_17_8(v47, v48, v49, v50, v51, v52, v53, v54, v108);
    v29(v55, 64);
    OUTLINED_FUNCTION_18_17();
    OUTLINED_FUNCTION_5_46();
    OUTLINED_FUNCTION_4_40();
    v56 = OUTLINED_FUNCTION_3_37();
    OUTLINED_FUNCTION_0_45(v56, v57, v58, v59, v60, v61, v62, v63, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133);
    OUTLINED_FUNCTION_14_32(v64, v65, v66, v67, v68, v69, v70, v71, v108);
    v72 = OUTLINED_FUNCTION_18();
    v80 = OUTLINED_FUNCTION_17_8(v72, v73, v74, v75, v76, v77, v78, v79, v108);
    v29(v80, 63);
    v108 = 5;
    LOBYTE(v109) = 0;
    v137 = 2;
    v138 = 0;
    v135 = 4;
    v136 = 0;
    type metadata accessor for NSLineBreakMode();
    v82 = v81;
    sub_1E3C2FC98();
    v131 = v133;
    LOBYTE(v132) = v134;
    sub_1E3C3DE00();
    v127 = v129;
    LOBYTE(v128) = v130;
    sub_1E3C3DE00();
    v122 = v125;
    v123 = v126;
    sub_1E3C2FCB8(&v108, &v131, &v127, &v137, &v135, &v122, v82, v139);
    OUTLINED_FUNCTION_14_32(v83, v84, v85, v86, v87, v88, v89, v90, v108);
    v91 = OUTLINED_FUNCTION_18();
    v99 = OUTLINED_FUNCTION_17_8(v91, v92, v93, v94, v95, v96, v97, v98, v108);
    v29(v99, 67);
    __asm { FMOV            V1.2D, #16.0 }

    v139[0] = xmmword_1E42A0440;
    v139[1] = _Q1;
    v140 = 0;
    OUTLINED_FUNCTION_8();
    (*(v105 + 184))(v139);

    OUTLINED_FUNCTION_36();
    (*(v106 + 2008))(1);
    OUTLINED_FUNCTION_19_18();
  }

  return v1;
}

id sub_1E3812C8C()
{
  v1 = OBJC_IVAR____TtC8VideosUI22RootSideBarProfileView____lazy_storage___subtitleLabel;
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI22RootSideBarProfileView____lazy_storage___subtitleLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8VideosUI22RootSideBarProfileView____lazy_storage___subtitleLabel);
  }

  else
  {
    v4 = v0;
    sub_1E3280A90(0, &qword_1EE23AD40, off_1E87283A8);
    sub_1E38132CC();
    v6 = v5;
    v8 = v7;
    sub_1E3812D80();
    OUTLINED_FUNCTION_2_1();
    v10 = (*(v9 + 2408))();

    v11 = sub_1E3810954(v6, v8, v10, 0);
    v12 = *(v0 + v1);
    *(v4 + v1) = v11;
    v3 = v11;

    v2 = 0;
  }

  v13 = v2;
  return v3;
}

uint64_t sub_1E3812D80()
{
  if (*(v0 + OBJC_IVAR____TtC8VideosUI22RootSideBarProfileView____lazy_storage___subtitleLabelLayout))
  {
    v1 = *(v0 + OBJC_IVAR____TtC8VideosUI22RootSideBarProfileView____lazy_storage___subtitleLabelLayout);
  }

  else
  {
    v1 = type metadata accessor for TextLayout();
    sub_1E383BCC0();
    OUTLINED_FUNCTION_2_1();
    (*(v2 + 1696))(21);
    OUTLINED_FUNCTION_36();
    v3 = OUTLINED_FUNCTION_15_8();
    v4(v3);
    OUTLINED_FUNCTION_36();
    v5 = OUTLINED_FUNCTION_15_8();
    v6(v5);
    OUTLINED_FUNCTION_36();
    v7 = OUTLINED_FUNCTION_15_8();
    v8(v7);

    v9 = *sub_1E3E5FDEC();
    v10 = *(*v1 + 680);
    v11 = v9;
    v10(v9);
    OUTLINED_FUNCTION_36();
    (*(v12 + 2176))(4, 0);
    __asm { FMOV            V0.2D, #8.0 }

    v20[0] = _Q0;
    v20[1] = xmmword_1E42A0450;
    v21 = 0;
    OUTLINED_FUNCTION_8();
    (*(v18 + 184))(v20);

    OUTLINED_FUNCTION_19_18();
  }

  return v1;
}

uint64_t sub_1E3812FA0()
{
  if (*(v0 + OBJC_IVAR____TtC8VideosUI22RootSideBarProfileView____lazy_storage___imageLayout))
  {
    v1 = *(v0 + OBJC_IVAR____TtC8VideosUI22RootSideBarProfileView____lazy_storage___imageLayout);
  }

  else
  {
    type metadata accessor for ImageLayout();
    v1 = sub_1E3BD61D8();

    if (sub_1E39DFFC8())
    {
      v2 = 0x4040000000000000;
    }

    else
    {
      v2 = 0x4041000000000000;
    }

    (*(*v1 + 208))(v2, 0);
    if (sub_1E39DFFC8())
    {
      v3 = 0x4040000000000000;
    }

    else
    {
      v3 = 0x4041000000000000;
    }

    (*(*v1 + 312))(v3, 0);
    sub_1E39DFFC8();
    sub_1E3952C78();
    v10[0] = v4;
    v10[1] = v5;
    v10[2] = v6;
    v10[3] = v7;
    v11 = 0;
    OUTLINED_FUNCTION_8();
    (*(v8 + 184))(v10);

    OUTLINED_FUNCTION_19_18();
  }

  return v1;
}

uint64_t sub_1E38130F0()
{
  v1 = (v0 + OBJC_IVAR____TtC8VideosUI22RootSideBarProfileView_contentChangeHandler);
  swift_beginAccess();
  v2 = *v1;
  sub_1E37FAED4(*v1, v1[1]);
  return v2;
}

uint64_t sub_1E381314C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC8VideosUI22RootSideBarProfileView_contentChangeHandler);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_1E37FAED8(v6, v7);
}

void sub_1E381320C()
{
  if (*(v0 + OBJC_IVAR____TtC8VideosUI22RootSideBarProfileView____lazy_storage___appleAccountString + 8))
  {
    goto LABEL_5;
  }

  v1 = [objc_opt_self() sharedInstance];
  if (v1)
  {
    v2 = v1;
    sub_1E3741090(0xD000000000000026, 0x80000001E425ECA0, v1);
    v4 = v3;

    if (v4)
    {
      OUTLINED_FUNCTION_21_26();

LABEL_5:

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1E38132CC()
{
  if (*(v0 + OBJC_IVAR____TtC8VideosUI22RootSideBarProfileView____lazy_storage___signInString + 8))
  {
    goto LABEL_11;
  }

  v1 = sub_1E39DFFC8();
  if (v1)
  {
    v2 = "SETTINGS_SIDEBAR_PROFILE_SIGN_IN_V2";
  }

  else
  {
    v2 = "SETTINGS_SIDEBAR_PROFILE_SIGN_IN";
  }

  v3 = [objc_opt_self() sharedInstance];
  if (v3)
  {
    v4 = v3;
    if (v1)
    {
      v5 = 0xD000000000000023;
    }

    else
    {
      v5 = 0xD000000000000020;
    }

    sub_1E3797E30(v5, (v2 - 32) | 0x8000000000000000, v4);
    v7 = v6;

    if (v7)
    {

      OUTLINED_FUNCTION_21_26();

LABEL_11:

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1E38133C0()
{
  if (*(v0 + OBJC_IVAR____TtC8VideosUI22RootSideBarProfileView____lazy_storage___accountSettingsVoiceOverString + 8))
  {
    goto LABEL_5;
  }

  v1 = [objc_opt_self() sharedInstance];
  if (v1)
  {
    v2 = v1;
    sub_1E3741090(0xD000000000000019, 0x80000001E425ECD0, v1);
    v4 = v3;

    if (v4)
    {
      OUTLINED_FUNCTION_21_26();

LABEL_5:

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

char *sub_1E3813480()
{
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_13_42(&OBJC_IVAR____TtC8VideosUI22RootSideBarProfileView____lazy_storage___titleLabel);
  OUTLINED_FUNCTION_12_33(v1);
  v3 = (v0 + v2);
  v4 = type metadata accessor for RootSideBarProfileView();
  *v3 = 0;
  v3[1] = 0;
  v44 = v0;
  v45 = v4;
  v5 = OUTLINED_FUNCTION_2_15();
  v8 = objc_msgSendSuper2(v6, v7, v5);
  v9 = objc_opt_self();
  v10 = v8;
  v11 = [v9 defaultCenter];
  [v11 addObserver:v10 selector:sel_accountStoreDidChange_ name:*NSNotificationName.VUIAuthenticationManagerAccountStoreDidChange.unsafeMutableAddressor() object:0];

  v12 = [v9 defaultCenter];
  [v12 addObserver:v10 selector:sel_profileImageDidChange_ name:@"VUIAuthenticationManagerProfileImageDidChangeNotification" object:0];

  v43[3] = v4;
  v43[0] = v10;
  v13 = objc_allocWithZone(MEMORY[0x1E69DD060]);
  v14 = v10;
  v15 = sub_1E3814AF0(v43, sel_handleTap_);
  v16 = v14;
  [v16 addGestureRecognizer_];
  sub_1E3812FA0();
  OUTLINED_FUNCTION_2_1();
  v18 = COERCE_DOUBLE((*(v17 + 1696))());
  v20 = v19;
  v22 = v21;

  if (v22)
  {
    v23 = 0.0;
  }

  else
  {
    v23 = v18;
  }

  if (v22)
  {
    v24 = 0.0;
  }

  else
  {
    v24 = v20;
  }

  v25 = objc_allocWithZone(MEMORY[0x1E69DF778]);
  v26 = sub_1E3814C34(v23, v24, 0xD000000000000012, 0x80000001E425ED30, 0);
  if (v26)
  {
    v27 = v26;
    [v26 setRenderAsTemplate_];
    v28 = [objc_opt_self() makeImageViewWithResourceDescriptor:v27 existingView:0];
    if (v28)
    {
      v29 = v28;
      objc_opt_self();
      v30 = swift_dynamicCastObjCClass();
      if (v30)
      {
        v31 = v27;
        v27 = v29;
        v32 = [v30 image];
        [v30 setPlaceholderImage_];

        v29 = v31;
      }
    }

    else
    {
      v30 = 0;
      v29 = v27;
    }

    v33 = OBJC_IVAR____TtC8VideosUI22RootSideBarProfileView_imageView;
    v34 = *&v16[OBJC_IVAR____TtC8VideosUI22RootSideBarProfileView_imageView];
    *&v16[OBJC_IVAR____TtC8VideosUI22RootSideBarProfileView_imageView] = v30;

    if (*&v16[v33])
    {
      v35 = sub_1E38127CC();
      OUTLINED_FUNCTION_25_22();

      v36 = sub_1E3812C8C();
      OUTLINED_FUNCTION_25_22();

      [v16 vui:*&v16[v33] addSubview:0 oldView:?];
      sub_1E3813918();
      [v16 vui:1 isAccessibilityElement:?];
      sub_1E38133C0();
      sub_1E37FB7F0(v37, v38, v16, &selRef_vui_setAccessibilityText_);
      [v16 setAccessibilityTraits_];

      type metadata accessor for Accessibility();
      sub_1E40A7DC8();
      sub_1E37FB7F0(v39, v40, v16, &selRef_setVuiAccessibilityIdentifier_);

      v41 = [objc_allocWithZone(MEMORY[0x1E69DCDB0]) initWithDelegate_];
      [v16 addInteraction_];

      return v16;
    }
  }

  else
  {
    __break(1u);
  }

  result = sub_1E42076B4();
  __break(1u);
  return result;
}

void sub_1E3813918()
{
  v1 = v0;
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E324FBDC();
  (*(v4 + 16))(v7, v8, v2);
  v9 = sub_1E41FFC94();
  v10 = sub_1E42067E4();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_1E323F000, v9, v10, "RootSideBarProfileView:: updateInfo", v11, 2u);
    MEMORY[0x1E69143B0](v11, -1, -1);
  }

  (*(v4 + 8))(v7, v2);
  v12 = objc_opt_self();
  v13 = [v12 userHasActiveAccount];
  if (v13)
  {
    v14 = sub_1E3814CB0(v12);
    v16 = v15;
    v17 = [v12 userProfileImage];
    if (!v17)
    {
      sub_1E3812FA0();
      OUTLINED_FUNCTION_30();
      v19 = COERCE_DOUBLE((*(v18 + 200))());
      v21 = v20;

      if (v21)
      {
        v22 = 34.0;
      }

      else
      {
        v22 = v19;
      }

      v23 = [objc_opt_self() mainScreen];
      [v23 scale];
      v25 = v24;

      v17 = [v12 monogramAvatarForSize:objc_msgSend(v1 scale:sel_vuiIsRTL) isRTL:{v22, v22, v25}];
    }

    sub_1E38128E8();
    OUTLINED_FUNCTION_30();
    (*(v26 + 2056))(2, 0);

    OUTLINED_FUNCTION_36();
    v28 = *(v27 + 2080);

    v28(2, 0);

    OUTLINED_FUNCTION_36();
    v30 = *(v29 + 2104);

    v30(2, 0);

    sub_1E3280A90(0, &qword_1EE23AD40, off_1E87283A8);
    if (v16)
    {

      v31 = v16;
      goto LABEL_13;
    }
  }

  else
  {
    sub_1E38128E8();
    OUTLINED_FUNCTION_30();
    v32 = OUTLINED_FUNCTION_15_8();
    v33(v32);

    OUTLINED_FUNCTION_36();
    v35 = *(v34 + 2080);

    v36 = OUTLINED_FUNCTION_15_8();
    v35(v36);

    OUTLINED_FUNCTION_36();
    v38 = *(v37 + 2104);

    v39 = OUTLINED_FUNCTION_15_8();
    v38(v39);

    sub_1E3280A90(0, &qword_1EE23AD40, off_1E87283A8);
    v17 = 0;
  }

  sub_1E381320C();
  v14 = v40;
  v16 = v41;

  v31 = 0;
LABEL_13:
  sub_1E38128E8();
  OUTLINED_FUNCTION_30();
  v43 = (*(v42 + 2408))();

  v44 = sub_1E38127CC();

  v45 = *(v1 + OBJC_IVAR____TtC8VideosUI22RootSideBarProfileView____lazy_storage___titleLabel);
  v46 = v45;
  if (v31)
  {

    v47 = 0;
  }

  else
  {
    v47 = v13;
  }

  [v45 setHidden_];

  v48 = sub_1E3812C8C();
  [v48 setHidden_];

  v49 = [*(v1 + OBJC_IVAR____TtC8VideosUI22RootSideBarProfileView_imageView) setImage_];
  v50 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x138))(v49);
  if (v50)
  {
    v52 = v50;
    v53 = v51;
    v50();
    sub_1E37FAED8(v52, v53);
  }

  [v1 vui_setNeedsLayout];
}

void sub_1E3813F38()
{
  OUTLINED_FUNCTION_13_42(&OBJC_IVAR____TtC8VideosUI22RootSideBarProfileView____lazy_storage___titleLabel);
  OUTLINED_FUNCTION_12_33(v1);
  v3 = (v0 + v2);
  *v3 = 0;
  v3[1] = 0;
  sub_1E42076B4();
  __break(1u);
}

id sub_1E3813FDC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RootSideBarProfileView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1E38140D0(char a1, double a2)
{
  v5 = *&v2[OBJC_IVAR____TtC8VideosUI22RootSideBarProfileView_imageView];
  if (v5)
  {
    v6 = v2;
    v9 = v5;
    v10 = sub_1E3812C8C();
    v11 = [v10 isHidden];

    sub_1E3812FA0();
    OUTLINED_FUNCTION_30();
    (*(v12 + 200))();
    OUTLINED_FUNCTION_20_24();
    v13 = 0.0;
    if (v4)
    {
      v14 = 0.0;
    }

    else
    {
      v14 = v3;
    }

    OUTLINED_FUNCTION_10_30();
    v16 = *(v15 + 176);

    v16(v48, v17);

    if (v49)
    {
      v18 = 0.0;
    }

    else
    {
      v18 = *&v48[1];
    }

    sub_1E38128E8();
    OUTLINED_FUNCTION_30();
    (*(v19 + 176))(v50);
    v20 = *v50;
    v21 = *&v50[1];
    v22 = *&v50[2];
    v23 = *&v50[3];

    if ((v51 & 1) == 0)
    {
      v13 = sub_1E3952BE0(v20, v21, v22, v23);
    }

    v24 = sub_1E38127CC();
    v47 = a2 - v14 - v18 - v13;
    [v24 vui:v47 sizeThatFits:0.0];

    if ((v11 & 1) == 0)
    {
      [*&v6[OBJC_IVAR____TtC8VideosUI22RootSideBarProfileView____lazy_storage___subtitleLabel] vui:v47 sizeThatFits:0.0];
    }

    OUTLINED_FUNCTION_10_30();
    v26 = *(v25 + 200);

    v26(v27);
    OUTLINED_FUNCTION_20_24();
    OUTLINED_FUNCTION_10_30();
    v29 = *(v28 + 304);

    v29(v30);
    OUTLINED_FUNCTION_20_24();
    if (v11)
    {
      OUTLINED_FUNCTION_8();
      v32 = *(v31 + 176);

      v32(v52, v33);
    }

    else
    {
      sub_1E3812D80();
      OUTLINED_FUNCTION_30();
      (*(v34 + 176))(v52);
    }

    v35 = *v52;
    v36 = *&v52[1];
    v37 = *&v52[2];

    if ((v53 & 1) == 0)
    {
      sub_1E3952BD8(v35, v36, v37);
    }

    OUTLINED_FUNCTION_10_30();
    v39 = *(v38 + 176);

    v39(&v54, v40);

    OUTLINED_FUNCTION_8();
    v42 = *(v41 + 176);

    v42(&v55, v43);

    if ((a1 & 1) == 0)
    {
      [v6 vuiIsRTL];
      v44 = *&v6[OBJC_IVAR____TtC8VideosUI22RootSideBarProfileView____lazy_storage___titleLabel];
      [v6 bounds];
      OUTLINED_FUNCTION_2_6();
      VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
      [v44 setFrame_];

      v45 = v9;
      [v6 bounds];
      OUTLINED_FUNCTION_2_6();
      OUTLINED_FUNCTION_2_15();
      VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
      [v45 setFrame_];

      if ((v11 & 1) == 0)
      {
        v46 = *&v6[OBJC_IVAR____TtC8VideosUI22RootSideBarProfileView____lazy_storage___subtitleLabel];
        [v6 bounds];
        OUTLINED_FUNCTION_2_6();
        VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
        [v46 setFrame_];
      }
    }
  }
}

id sub_1E3814600()
{
  v0 = [objc_opt_self() userHasActiveAccount];
  if (v0)
  {
    v1 = 0xE700000000000000;
  }

  else
  {
    v1 = 0xE600000000000000;
  }

  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 sidebarPageMetrics];

  v4 = sub_1E4205C64();
  v5 = sub_1E374BD08(v4);

  if (v5)
  {
    if (v0)
    {
      v6 = 0x746E756F636341;
    }

    else
    {
      v6 = 0x6E496E676953;
    }

    sub_1E3BA71B8(v6, v1, 0, 1, 0, 0, 0, 0, v8, v5, 0);
    sub_1E3BA6C54();
    sub_1E3814D14(v8);
  }

  else
  {
  }

  return [objc_opt_self() handleAccountSettingButtonSelected];
}

uint64_t sub_1E3814870(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B3F8, qword_1E42A0460);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v20 - v3;
  v5 = sub_1E41FFDC4();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v12 = MEMORY[0x1EEE9AC00](v11).n128_u64[0];
  v14 = (&v20 - v13);
  v15 = [a1 view];
  if (!v15)
  {
    return 0;
  }

  v16 = v15;
  *v14 = [objc_allocWithZone(MEMORY[0x1E69DD070]) initWithView_];
  (*(v7 + 104))(v14, *MEMORY[0x1E69DBF98], v5);
  sub_1E3280A90(0, &unk_1ECF2B400, 0x1E69DCDD0);
  (*(v7 + 16))(v10, v14, v5);
  v17 = sub_1E41FFD34();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v17);
  v18 = sub_1E4206844();

  (*(v7 + 8))(v14, v5);
  return v18;
}

id sub_1E3814AF0(void *a1, uint64_t a2)
{
  v4 = a1[3];
  if (v4)
  {
    v6 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v7 = *(v4 - 8);
    v8 = MEMORY[0x1EEE9AC00](v6);
    v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v10, v8);
    v11 = sub_1E4207994();
    (*(v7 + 8))(v10, v4);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v11 = 0;
  }

  v12 = [v2 initWithTarget:v11 action:a2];
  swift_unknownObjectRelease();
  return v12;
}

id sub_1E3814C34(double a1, double a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = sub_1E4205ED4();

  v10 = [v5 initWithSymbol:v9 size:a5 symbolConfiguration:{a1, a2}];

  return v10;
}

uint64_t sub_1E3814CB0(void *a1)
{
  v1 = [a1 userFullName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1E4205F14();

  return v3;
}

void type metadata accessor for NSLineBreakMode()
{
  if (!qword_1EE23B2F8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1EE23B2F8);
    }
  }
}

int64x2_t sub_1E3814DBC@<Q0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>, double a8@<D4>, double a9@<D5>, double a10@<D6>, double a11@<D7>, uint64_t a12)
{
  v22 = sub_1E4205CB4();
  v23 = OUTLINED_FUNCTION_2_37();
  v36 = a4 - sub_1E3952BD8(v23, v24, v25);
  v26 = OUTLINED_FUNCTION_2_37();
  v30 = sub_1E39535B4(v26, v27, v28, v29, a9);
  *a3 = a1;
  *(a3 + 8) = a4;
  *(a3 + 16) = a5;
  *(a3 + 24) = a6;
  *(a3 + 32) = a7;
  *(a3 + 40) = a8;
  *(a3 + 48) = a9;
  *(a3 + 56) = a10;
  *(a3 + 64) = a11;
  *(a3 + 72) = a12;
  *(a3 + 80) = a2 & 1;
  *(a3 + 88) = v36;
  *(a3 + 96) = v30;
  *(a3 + 104) = v31;
  *(a3 + 112) = v32;
  *(a3 + 120) = v33;
  *(a3 + 128) = 0;
  *(a3 + 136) = 0;
  *(a3 + 144) = v22;
  result = vdupq_n_s64(1uLL);
  *(a3 + 152) = result;
  *(a3 + 168) = 0;
  return result;
}

unint64_t sub_1E3814EDC()
{
  v0 = sub_1E4207784();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1E3814F28(char a1)
{
  result = 0x6C616D726F6ELL;
  switch(a1)
  {
    case 1:
      result = 0x6F62416465786966;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0x64657265746E6563;
      break;
    case 4:
      result = 0x6C65426465786966;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1E3814FEC(unsigned __int8 a1, char a2)
{
  v2 = 0x6C616D726F6ELL;
  v3 = 0xE600000000000000;
  v4 = a1;
  v5 = 0x6C616D726F6ELL;
  switch(v4)
  {
    case 1:
      v5 = 0x6F62416465786966;
      v6 = 25974;
      goto LABEL_4;
    case 2:
      v5 = 0xD000000000000010;
      v7 = "normal";
      goto LABEL_8;
    case 3:
      v3 = 0xE800000000000000;
      v5 = 0x64657265746E6563;
      break;
    case 4:
      v5 = 0x6C65426465786966;
      v6 = 30575;
LABEL_4:
      v3 = v6 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
      break;
    case 5:
      v5 = 0xD000000000000010;
      v7 = "";
LABEL_8:
      v3 = v7 | 0x8000000000000000;
      break;
    default:
      break;
  }

  v8 = 0xE600000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x6F62416465786966;
      v9 = 25974;
      goto LABEL_12;
    case 2:
      v2 = 0xD000000000000010;
      v10 = "normal";
      goto LABEL_16;
    case 3:
      v8 = 0xE800000000000000;
      v2 = 0x64657265746E6563;
      break;
    case 4:
      v2 = 0x6C65426465786966;
      v9 = 30575;
LABEL_12:
      v8 = v9 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
      break;
    case 5:
      v2 = 0xD000000000000010;
      v10 = "";
LABEL_16:
      v8 = v10 | 0x8000000000000000;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v8)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_1E42079A4();
  }

  return v12 & 1;
}

uint64_t sub_1E381519C(char a1)
{
  sub_1E4207B44();
  sub_1E3814F28(a1);
  sub_1E4206014();

  return sub_1E4207BA4();
}

uint64_t sub_1E3815208(uint64_t a1, char a2)
{
  sub_1E4206014();
}

uint64_t sub_1E38152FC(uint64_t a1, char a2)
{
  sub_1E4207B44();
  sub_1E3814F28(a2);
  sub_1E4206014();

  return sub_1E4207BA4();
}

unint64_t sub_1E381535C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E3814EDC();
  *a1 = result;
  return result;
}

unint64_t sub_1E381538C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1E3814F28(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1E38153BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF2B478;
  if (!qword_1ECF2B478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2B478);
  }

  return result;
}

unint64_t sub_1E3815414(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF2B480;
  if (!qword_1ECF2B480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2B480);
  }

  return result;
}

uint64_t sub_1E3815470(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 176))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 144);
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

uint64_t sub_1E38154B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
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
      *(result + 176) = 1;
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
      *(result + 144) = (a2 - 1);
      return result;
    }

    *(result + 176) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *sub_1E3815528(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          result = OUTLINED_FUNCTION_15(result, a2 + 5);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1E38155FC(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = OUTLINED_FUNCTION_15(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1E38156DC()
{
  result = MEMORY[0x1E69109E0](0x6D6574695FLL, 0xE500000000000000);
  qword_1ECF71260 = 0xD000000000000022;
  *algn_1ECF71268 = 0x80000001E425EDE0;
  return result;
}

uint64_t sub_1E3815744(uint64_t a1, uint64_t a2)
{
  sub_1E39BE70C(a1, a2);
  if (!v2)
  {
    v5 = 0u;
    v6 = 0u;
    goto LABEL_8;
  }

  v4[3] = &type metadata for ViewModelKeys.Sports;
  v4[4] = &off_1F5D7BC68;
  LOBYTE(v4[0]) = 12;
  sub_1E3F9F164(v4, v2, MEMORY[0x1E69E7CA0] + 8);

  __swift_destroy_boxed_opaque_existential_1(v4);
  if (!*(&v6 + 1))
  {
LABEL_8:
    sub_1E325F7A8(&v5, &unk_1ECF296E0, &unk_1E4298030);
    return 0;
  }

  if (swift_dynamicCast())
  {
    return v4[0];
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E3815834(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  *(v3 + 408) = 0;
  type metadata accessor for SportsPlayByPlayQueue(0);
  *(v3 + 416) = sub_1E37FE378();
  v8 = OBJC_IVAR____TtC8VideosUI35SportsPlayByPlayCollectionViewModel_sport;
  v9 = *MEMORY[0x1E69D3D80];
  sub_1E4205BF4();
  OUTLINED_FUNCTION_2();
  (*(v10 + 104))(v4 + v8, v9);
  *(v4 + OBJC_IVAR____TtC8VideosUI35SportsPlayByPlayCollectionViewModel_cancellables) = MEMORY[0x1E69E7CD0];
  *(v4 + OBJC_IVAR____TtC8VideosUI35SportsPlayByPlayCollectionViewModel_returningFromBackground) = 0;
  *(v4 + OBJC_IVAR____TtC8VideosUI35SportsPlayByPlayCollectionViewModel_sportsSpoilersEnabled) = 1;

  v11 = sub_1E40B19D4(a1, a2, a3);
  if (v11)
  {

    sub_1E3815744(v12, v13);
    if (v14)
    {
      sub_1E38159B4();
    }

    v15 = [objc_opt_self() defaultCenter];
    [v15 addObserver:v11 selector:sel_willEnterForeground name:*MEMORY[0x1E69DDBC0] object:0];
  }

  else
  {
  }

  return v11;
}

void sub_1E38159B4()
{
  OUTLINED_FUNCTION_31_1();
  v120 = v0;
  v122 = v1;
  v128 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3DA90, &unk_1E42982A0);
  OUTLINED_FUNCTION_0_10();
  v117 = v3;
  v118 = v4;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_44();
  v116 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B508, &qword_1E42A0928);
  OUTLINED_FUNCTION_0_10();
  v114 = v7;
  v115 = v8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_44();
  v113 = v10;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3DA80, &qword_1E42A0930);
  OUTLINED_FUNCTION_0_10();
  v129 = v11;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_44();
  v107 = v13;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B510, &unk_1E42A0938);
  OUTLINED_FUNCTION_0_10();
  v110 = v14;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_44();
  v108 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2D2B0, &unk_1E429D3D0);
  OUTLINED_FUNCTION_17_2(v17);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_44();
  v125 = v19;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B518, &qword_1E42A0948);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_41();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AE28, &qword_1E42A0950);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v21);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B520, &qword_1E42A0958);
  OUTLINED_FUNCTION_0_10();
  v121 = v23;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v95 - v25;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B528, &unk_1E42A0960);
  OUTLINED_FUNCTION_0_10();
  v105 = v27;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v95 - v29;

  sub_1E37FC234();

  v130 = sub_1E4205004();
  v31 = sub_1E4204FF4();
  v32 = sub_1E4204FB4();

  v132 = v32;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C08, &unk_1E42E3A90);
  v124 = MEMORY[0x1E695BED8];
  v112 = sub_1E32752B0(&qword_1EE28A210, &qword_1ECF28C08, &unk_1E42E3A90, MEMORY[0x1E695BED8]);
  sub_1E42007A4();

  sub_1E32752B0(&qword_1ECF2B530, &qword_1ECF2AE28, &qword_1E42A0950, MEMORY[0x1E695C068]);
  v106 = MEMORY[0x1E695BDB8];
  sub_1E32752B0(&qword_1ECF2B538, &qword_1ECF2B518, &qword_1E42A0948, MEMORY[0x1E695BDB8]);
  sub_1E4200414();
  v33 = sub_1E32ADE38();
  v34 = sub_1E4206A04();
  v132 = v34;
  v127 = sub_1E42069A4();
  v35 = v125;
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v36, v37, v38, v39);
  sub_1E32752B0(&qword_1ECF2B540, &qword_1ECF2B520, &qword_1E42A0958, MEMORY[0x1E695BC68]);
  v126 = sub_1E381A884(&qword_1EE23B1E0, sub_1E32ADE38, MEMORY[0x1E69E8028]);
  sub_1E42007D4();
  sub_1E325F7A8(v35, &unk_1ECF2D2B0, &unk_1E429D3D0);

  (*(v121 + 8))(v26, v22);
  OUTLINED_FUNCTION_4_0();
  v40 = swift_allocObject();
  v41 = v120;
  swift_weakInit();
  v42 = swift_allocObject();
  *(v42 + 16) = sub_1E381A8CC;
  *(v42 + 24) = v40;
  v121 = MEMORY[0x1E695BE98];
  sub_1E32752B0(&qword_1ECF2B548, &qword_1ECF2B528, &unk_1E42A0960, MEMORY[0x1E695BE98]);
  v43 = v104;
  sub_1E4200844();
  OUTLINED_FUNCTION_38();

  (*(v105 + 8))(v30, v43);
  v44 = OBJC_IVAR____TtC8VideosUI35SportsPlayByPlayCollectionViewModel_cancellables;
  OUTLINED_FUNCTION_27_11(v41 + OBJC_IVAR____TtC8VideosUI35SportsPlayByPlayCollectionViewModel_cancellables);
  sub_1E42004C4();
  swift_endAccess();

  v45 = sub_1E4204FF4();
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B550, &unk_1E42A0970);
  v46 = sub_1E4205484();
  v102 = v46;
  v47 = *(v46 - 8);
  v104 = *(v47 + 72);
  v48 = *(v47 + 80);
  v100 = (v48 + 32) & ~v48;
  v49 = swift_allocObject();
  v103 = xmmword_1E4297BE0;
  *(v49 + 16) = xmmword_1E4297BE0;
  v50 = *MEMORY[0x1E69D3B20];
  v101 = *(v47 + 104);
  v101(v49 + ((v48 + 32) & ~v48), v50, v46);
  v51 = sub_1E4204FE4();

  v132 = v51;
  v119 = v33;
  v52 = sub_1E4206A04();
  v131 = v52;
  v53 = v125;
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v54, v55, v56, v127);
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DAA0, &qword_1E42E3AA0);
  v98 = sub_1E32752B0(&qword_1EE28A1E0, &qword_1ECF3DAA0, &qword_1E42E3AA0, v124);
  v57 = v107;
  sub_1E42007D4();
  sub_1E325F7A8(v53, &unk_1ECF2D2B0, &unk_1E429D3D0);

  v97 = sub_1E32752B0(&qword_1EE28A290, &unk_1ECF3DA80, &qword_1E42A0930, v121);
  v58 = v108;
  v59 = v123;
  sub_1E42007A4();
  v60 = *(v129 + 8);
  v129 += 8;
  v96 = v60;
  v60(v57, v59);
  OUTLINED_FUNCTION_4_0();
  swift_allocObject();
  v61 = v120;
  swift_weakInit();
  sub_1E32752B0(&qword_1ECF2B558, &qword_1ECF2B510, &unk_1E42A0938, v106);
  v62 = v109;
  sub_1E4200844();

  (*(v110 + 8))(v58, v62);
  v63 = v61;
  v95 = v44;
  OUTLINED_FUNCTION_27_11(v61 + v44);
  sub_1E42004C4();
  swift_endAccess();

  v64 = sub_1E4204FF4();
  v65 = v100;
  v66 = swift_allocObject();
  *(v66 + 16) = v103;
  v101(v66 + v65, *MEMORY[0x1E69D3B18], v102);
  v67 = v122;
  v68 = sub_1E4204FE4();

  v132 = v68;
  v69 = sub_1E4206A04();
  v131 = v69;
  v70 = v125;
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v71, v72, v73, v127);
  sub_1E42007D4();
  sub_1E325F7A8(v70, &unk_1ECF2D2B0, &unk_1E429D3D0);

  v74 = v113;
  v75 = v123;
  sub_1E4200814();
  v96(v57, v75);
  OUTLINED_FUNCTION_4_0();
  v76 = swift_allocObject();
  OUTLINED_FUNCTION_47_8(v76);
  sub_1E32752B0(&qword_1ECF2B560, &qword_1ECF2B508, &qword_1E42A0928, MEMORY[0x1E695BD78]);
  v77 = v114;
  sub_1E4200844();
  OUTLINED_FUNCTION_38();

  (*(v115 + 8))(v74, v77);
  v78 = v95;
  OUTLINED_FUNCTION_27_11(v63 + v95);
  sub_1E42004C4();
  swift_endAccess();

  v79 = sub_1E4204FF4();
  v80 = sub_1E4204FB4();

  v132 = v80;
  v81 = sub_1E4206A04();
  v131 = v81;
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v82, v83, v84, v127);
  v85 = v116;
  sub_1E42007D4();
  sub_1E325F7A8(v70, &unk_1ECF2D2B0, &unk_1E429D3D0);

  OUTLINED_FUNCTION_4_0();
  v86 = swift_allocObject();
  OUTLINED_FUNCTION_47_8(v86);
  sub_1E32752B0(&qword_1EE28A2A0, &unk_1ECF3DA90, &unk_1E42982A0, v121);
  v87 = v117;
  sub_1E4200844();
  OUTLINED_FUNCTION_38();

  (*(v118 + 8))(v85, v87);
  OUTLINED_FUNCTION_27_11(v63 + v78);
  sub_1E42004C4();
  swift_endAccess();

  v88 = sub_1E4204FF4();
  v89 = sub_1E4204F84();

  v132 = v89;
  OUTLINED_FUNCTION_4_0();
  v90 = swift_allocObject();
  OUTLINED_FUNCTION_47_8(v90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B568, &unk_1E42A0980);
  v91 = v124;
  sub_1E32752B0(&qword_1EE28A1D8, &qword_1ECF2B568, &unk_1E42A0980, v124);
  OUTLINED_FUNCTION_45_10();
  OUTLINED_FUNCTION_38();

  OUTLINED_FUNCTION_27_11(v63 + v78);
  sub_1E42004C4();
  swift_endAccess();

  v92 = *(**sub_1E3847108() + 104);

  v93 = v92(v128, v67);

  v132 = v93;
  OUTLINED_FUNCTION_4_0();
  v94 = swift_allocObject();
  OUTLINED_FUNCTION_47_8(v94);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B570, &unk_1E42E1820);
  sub_1E32752B0(&qword_1EE28A208, &qword_1ECF2B570, &unk_1E42E1820, v91);
  OUTLINED_FUNCTION_45_10();
  OUTLINED_FUNCTION_38();

  OUTLINED_FUNCTION_27_11(v63 + v78);
  sub_1E42004C4();
  swift_endAccess();

  OUTLINED_FUNCTION_25_2();
}

double sub_1E38168F8()
{

  sub_1E37FE1D0(1);

  *(v0 + OBJC_IVAR____TtC8VideosUI35SportsPlayByPlayCollectionViewModel_returningFromBackground) = 1;

  return sub_1E3816960(0);
}

double sub_1E3816960(char a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400, &qword_1E429ABE0);
  OUTLINED_FUNCTION_17_2(v2);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  sub_1E4206474();
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  OUTLINED_FUNCTION_4_0();
  v8 = swift_allocObject();
  swift_weakInit();
  sub_1E4206434();

  v9 = sub_1E4206424();
  v10 = swift_allocObject();
  v11 = MEMORY[0x1E69E85E0];
  *(v10 + 16) = v9;
  *(v10 + 24) = v11;
  *(v10 + 32) = v8;
  *(v10 + 40) = a1;

  OUTLINED_FUNCTION_29_10();

  return result;
}

uint64_t sub_1E3816AB4()
{
  OUTLINED_FUNCTION_24();
  *(v0 + 56) = v1;
  *(v0 + 40) = v2;
  sub_1E4206434();
  OUTLINED_FUNCTION_42_2();
  *(v0 + 48) = sub_1E4206424();
  v4 = sub_1E42063B4();

  return MEMORY[0x1EEE6DFA0](sub_1E3816B48, v4, v3);
}

uint64_t sub_1E3816B48()
{
  v2 = *(v1 + 40);

  OUTLINED_FUNCTION_5_0(v2 + 16, v1 + 16);
  if (swift_weakLoadStrong())
  {
    OUTLINED_FUNCTION_42_2();
    v5 = sub_1E3815744(v3, v4);
    if (v6)
    {
      v7 = v6;
      if (*(v1 + 56) == 1)
      {

        v9 = 1;
      }

      else
      {
        v10 = v5;
        v11 = *(**sub_1E3FF7F7C() + 176);

        LOBYTE(v10) = v11(v10, v7);

        v9 = v10 & 1;
      }

      *(v0 + OBJC_IVAR____TtC8VideosUI35SportsPlayByPlayCollectionViewModel_sportsSpoilersEnabled) = v9;
      if ((*(v0 + OBJC_IVAR____TtC8VideosUI35SportsPlayByPlayCollectionViewModel_sportsSpoilersEnabled) & 1) == 0)
      {
        v12 = sub_1E40B4174(MEMORY[0x1E69E7CC0], v8);
        *(v0 + 408) = 0;
        if (sub_1E3CC87E4(v12, v13))
        {
          swift_getObjectType();
          OUTLINED_FUNCTION_25_23();
          v14(v0, 0);
          swift_unknownObjectRelease();
        }
      }
    }
  }

  OUTLINED_FUNCTION_54();

  return v15();
}

uint64_t sub_1E3816CF0()
{

  v1 = OBJC_IVAR____TtC8VideosUI35SportsPlayByPlayCollectionViewModel_sport;
  sub_1E4205BF4();
  OUTLINED_FUNCTION_10();
  (*(v2 + 8))(v0 + v1);
}

uint64_t sub_1E3816D6C()
{
  v0 = CollectionViewModel.deinit();

  v1 = OBJC_IVAR____TtC8VideosUI35SportsPlayByPlayCollectionViewModel_sport;
  sub_1E4205BF4();
  OUTLINED_FUNCTION_10();
  (*(v2 + 8))(v0 + v1);

  return v0;
}

double sub_1E3816E00(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400, &qword_1E429ABE0);
  OUTLINED_FUNCTION_17_2(v6);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5_0(a3 + 16, v17);
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    if (sub_1E4205694())
    {
      sub_1E4206474();
      OUTLINED_FUNCTION_32_2();
      __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
      v15 = swift_allocObject();
      v15[2] = 0;
      v15[3] = 0;
      v15[4] = v10;
      v15[5] = a1;
      v15[6] = a2;

      v16 = a2;
      OUTLINED_FUNCTION_29_10();
    }
  }

  return result;
}

uint64_t sub_1E3816F10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1E3816F34, 0, 0);
}

uint64_t sub_1E3816F34()
{
  OUTLINED_FUNCTION_27_2();
  v0[5] = sub_1E39BE7C0(v1, v2);
  v3 = sub_1E42056A4();
  v0[6] = sub_1E4205054();

  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_1E3817004;

  return sub_1E3817118();
}

uint64_t sub_1E3817004()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  v2 = *(v1 + 48);
  v3 = *v0;
  OUTLINED_FUNCTION_7();
  *v4 = v3;

  OUTLINED_FUNCTION_54();

  return v5();
}

uint64_t sub_1E3817118()
{
  OUTLINED_FUNCTION_24();
  v1[7] = v2;
  v1[8] = v0;
  v1[5] = v3;
  v1[6] = v4;
  v5 = sub_1E41FFCB4();
  v1[9] = v5;
  OUTLINED_FUNCTION_8_0(v5);
  v1[10] = v6;
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v7 = sub_1E4205BF4();
  v1[13] = v7;
  OUTLINED_FUNCTION_8_0(v7);
  v1[14] = v8;
  v1[15] = swift_task_alloc();
  sub_1E4206434();
  OUTLINED_FUNCTION_42_2();
  v1[16] = sub_1E4206424();
  v10 = sub_1E42063B4();

  return MEMORY[0x1EEE6DFA0](sub_1E3817260, v10, v9);
}

void sub_1E3817260()
{
  v1 = v0[8];

  if (*(v1 + OBJC_IVAR____TtC8VideosUI35SportsPlayByPlayCollectionViewModel_sportsSpoilersEnabled) == 1)
  {
    v2 = sub_1E32AE9B0(v0[5]);
    if (v2)
    {
      v4 = sub_1E38180E0(v2, v3);
      v5 = v4;
      sub_1E3CC8638(v4, v6);
      if (!v7)
      {
        goto LABEL_18;
      }

      v8 = v7;
      if (sub_1E32AE9B0(v7))
      {
        if ((v8 & 0xC000000000000001) != 0)
        {
          OUTLINED_FUNCTION_41_1();
          v10 = v51;
        }

        else
        {
          OUTLINED_FUNCTION_34_0();
          if (!v9)
          {
            __break(1u);
            goto LABEL_33;
          }

          v10 = *(v8 + 32);
        }

        v12 = (*(*v10 + 872))(v11);

        if (!v12)
        {
          goto LABEL_18;
        }

        if (sub_1E32AE9B0(v12))
        {
          if ((v12 & 0xC000000000000001) == 0)
          {
            OUTLINED_FUNCTION_34_0();
            if (!v13)
            {
              __break(1u);
              return;
            }

            v14 = *(v12 + 32);

            goto LABEL_13;
          }

LABEL_33:
          OUTLINED_FUNCTION_41_1();
          v14 = v52;
LABEL_13:

          if (*v14 == _TtC8VideosUI25SportsPlayByPlayViewModel)
          {
            v16 = v0[14];
            v15 = v0[15];
            v17 = v0[13];
            v18 = v0[8];
            v19 = v0[6];
            v20 = OBJC_IVAR____TtC8VideosUI35SportsPlayByPlayCollectionViewModel_sport;
            OUTLINED_FUNCTION_5_0(v18 + OBJC_IVAR____TtC8VideosUI35SportsPlayByPlayCollectionViewModel_sport, (v0 + 2));
            (*(v16 + 16))(v15, v18 + v20, v17);
            sub_1E3818470();
            (*(v16 + 8))(v15, v17);

            sub_1E39BE7EC(v19, v21);

            v22 = *(sub_1E3818BB0() + 16);

            if (v22)
            {
              v23 = v0[8];
              if (v5)
              {
                *(v23 + 408) = v22;
              }

              else
              {
                v36 = *(v23 + 408);
                *(v23 + 408) = v22;
                if (v36 == v22)
                {
                  goto LABEL_30;
                }
              }

              v37 = v0[12];
              v38 = v0[9];
              v39 = v0[10];
              v40 = sub_1E3E37F30();
              (*(v39 + 16))(v37, v40, v38);
              v41 = sub_1E41FFC94();
              v42 = sub_1E42067E4();
              if (os_log_type_enabled(v41, v42))
              {
                v43 = swift_slowAlloc();
                *v43 = 0;
                _os_log_impl(&dword_1E323F000, v41, v42, "SportsPlayByPlayCollectionViewModel: reloading pbp section", v43, 2u);
                OUTLINED_FUNCTION_6_0();
              }

              v44 = v0[12];
              v45 = v0[9];
              v46 = v0[10];

              v47 = (*(v46 + 8))(v44, v45);
              if (sub_1E3CC87E4(v47, v48))
              {
                v49 = v0[8];
                swift_getObjectType();
                OUTLINED_FUNCTION_25_23();
                v50(v49, 1);

                swift_unknownObjectRelease();
                goto LABEL_21;
              }
            }

LABEL_30:

            goto LABEL_21;
          }

LABEL_18:
          v25 = v0[10];
          v24 = v0[11];
          v26 = v0[9];
          v27 = sub_1E3E37F30();
          (*(v25 + 16))(v24, v27, v26);
          v28 = sub_1E41FFC94();
          v29 = sub_1E42067E4();
          v30 = os_log_type_enabled(v28, v29);
          v32 = v0[10];
          v31 = v0[11];
          v33 = v0[9];
          if (v30)
          {
            v34 = swift_slowAlloc();
            *v34 = 0;
            _os_log_impl(&dword_1E323F000, v28, v29, "SportsPlayByPlayCollectionViewModel: pbpViewModel nil", v34, 2u);
            OUTLINED_FUNCTION_6_0();
          }

          (*(v32 + 8))(v31, v33);
          goto LABEL_21;
        }
      }

      goto LABEL_18;
    }
  }

LABEL_21:

  OUTLINED_FUNCTION_54();

  v35();
}

double sub_1E38176AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E4205BF4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_5_0(a2 + 16, v13);
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    if (sub_1E4205694())
    {
      v11 = sub_1E42056D4();
      sub_1E3817A34(v11);

      sub_1E3817D80();
    }

    sub_1E4205704();
    sub_1E4205BD4();
    v12 = OBJC_IVAR____TtC8VideosUI35SportsPlayByPlayCollectionViewModel_sport;
    OUTLINED_FUNCTION_27_11(v10 + OBJC_IVAR____TtC8VideosUI35SportsPlayByPlayCollectionViewModel_sport);
    (*(v6 + 40))(v10 + v12, v2, v4);
    swift_endAccess();
  }

  return result;
}

void sub_1E38177FC(void (*a1)(id *), uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v21 = a1;
  v22 = a2;
  v6 = type metadata accessor for SportsPlayByPlayItemViewData(0);
  v20 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1E4207384())
  {
    v24 = MEMORY[0x1E69E7CC0];
    sub_1E381A508(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      __break(1u);
LABEL_20:

      __break(1u);
      return;
    }

    v10 = 0;
    v11 = v24;
    v18 = i;
    v19 = a3 & 0xC000000000000001;
    v17 = a3 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      v12 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v19)
      {
        v13 = MEMORY[0x1E6911E60](v10, a3);
      }

      else
      {
        if (v10 >= *(v17 + 16))
        {
          goto LABEL_17;
        }

        v13 = *(a3 + 8 * v10 + 32);
      }

      i = v13;
      v23 = v13;
      v21(&v23);
      if (v4)
      {
        goto LABEL_20;
      }

      v4 = 0;

      v24 = v11;
      v15 = *(v11 + 16);
      v14 = *(v11 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_1E381A508((v14 > 1), v15 + 1, 1);
        v11 = v24;
      }

      *(v11 + 16) = v15 + 1;
      sub_1E381A794(v8, v11 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v15, type metadata accessor for SportsPlayByPlayItemViewData);
      ++v10;
      if (v12 == v18)
      {
        return;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }
}

uint64_t sub_1E3817A34(uint64_t a1)
{
  v45 = sub_1E4204DD4();
  v3 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v44 = v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v43 = v35 - v6;
  v7 = *(a1 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  if (!v7)
  {
    return v8;
  }

  v35[1] = v1;
  v50 = MEMORY[0x1E69E7CC0];
  sub_1E3746CB0(0, v7, 0);
  v8 = v50;
  result = sub_1E3746DC4(a1);
  v12 = 0;
  v13 = a1 + 56;
  v41 = v3 + 16;
  v42 = v3;
  v39 = a1;
  v40 = v3 + 8;
  v36 = a1 + 64;
  v37 = v7;
  v38 = a1 + 56;
  if ((result & 0x8000000000000000) == 0)
  {
    while (result < 1 << *(a1 + 32))
    {
      v14 = result >> 6;
      v15 = 1 << result;
      if ((*(v13 + 8 * (result >> 6)) & (1 << result)) == 0)
      {
        goto LABEL_24;
      }

      if (*(a1 + 36) != v10)
      {
        goto LABEL_25;
      }

      v49 = v11;
      v47 = result;
      v48 = v10;
      v46 = v12;
      v16 = *(a1 + 48);
      v17 = v8;
      v18 = v42;
      v19 = v43;
      v20 = *(v42 + 16);
      v21 = v45;
      v20(v43, v16 + *(v42 + 72) * result, v45);
      v22 = v44;
      v20(v44, v19, v21);
      v23 = sub_1E3D5C7A0(v22);
      v24 = *(v18 + 8);
      v8 = v17;
      result = v24(v19, v21);
      v50 = v17;
      v26 = *(v17 + 16);
      v25 = *(v17 + 24);
      if (v26 >= v25 >> 1)
      {
        result = sub_1E3746CB0((v25 > 1), v26 + 1, 1);
        v8 = v50;
      }

      *(v8 + 16) = v26 + 1;
      *(v8 + v26 + 32) = v23;
      if (v49)
      {
        goto LABEL_29;
      }

      v13 = v38;
      a1 = v39;
      v27 = 1 << *(v39 + 32);
      result = v47;
      if (v47 >= v27)
      {
        goto LABEL_26;
      }

      v28 = *(v38 + 8 * v14);
      if ((v28 & v15) == 0)
      {
        goto LABEL_27;
      }

      if (*(v39 + 36) != v48)
      {
        goto LABEL_28;
      }

      v29 = v28 & (-2 << (v47 & 0x3F));
      if (v29)
      {
        v27 = __clz(__rbit64(v29)) | v47 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v30 = v14 << 6;
        v31 = v14 + 1;
        v32 = (v36 + 8 * v14);
        while (v31 < (v27 + 63) >> 6)
        {
          v34 = *v32++;
          v33 = v34;
          v30 += 64;
          ++v31;
          if (v34)
          {
            sub_1E3746E04(v47, v48, 0);
            v27 = __clz(__rbit64(v33)) + v30;
            goto LABEL_19;
          }
        }

        sub_1E3746E04(v47, v48, 0);
      }

LABEL_19:
      v12 = v46 + 1;
      if (v46 + 1 == v37)
      {
        return v8;
      }

      v11 = 0;
      v10 = *(a1 + 36);
      result = v27;
      if (v27 < 0)
      {
        break;
      }
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

void sub_1E3817D80()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v0;
  v4 = v3;
  v5 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  v11 = sub_1E38180E0(v9, v10);
  sub_1E3CC8638(v11, v12);
  if (!v13)
  {
    goto LABEL_15;
  }

  v14 = v13;
  if (!sub_1E32AE9B0(v13))
  {
    goto LABEL_14;
  }

  if ((v14 & 0xC000000000000001) != 0)
  {
    OUTLINED_FUNCTION_41_1();
    v16 = v34;
  }

  else
  {
    OUTLINED_FUNCTION_34_0();
    if (!v15)
    {
      __break(1u);
      goto LABEL_23;
    }

    v16 = *(v14 + 32);
  }

  v18 = (*(*v16 + 872))(v17);

  if (!v18)
  {
    goto LABEL_15;
  }

  if (!sub_1E32AE9B0(v18))
  {
LABEL_14:

    goto LABEL_15;
  }

  if ((v18 & 0xC000000000000001) != 0)
  {
LABEL_23:
    OUTLINED_FUNCTION_41_1();
    v20 = v35;
LABEL_11:

    if (*v20 == _TtC8VideosUI25SportsPlayByPlayViewModel)
    {

      v21 = sub_1E3818BC4();

      v23 = sub_1E381A380(v4, v21, v22);

      sub_1E3818C44();
      OUTLINED_FUNCTION_4_0();
      v24 = swift_allocObject();
      swift_weakInit();
      swift_beginAccess();
      v25 = *(v20 + 248);
      v26 = *(v20 + 256);
      *(v20 + 248) = sub_1E381A9F8;
      *(v20 + 256) = v24;

      sub_1E37FAED8(v25, v26);

      if (v23)
      {
LABEL_19:

        OUTLINED_FUNCTION_25_2();
        return;
      }
    }

    else
    {
    }

LABEL_15:
    v27 = sub_1E3E37F30();
    (*(v7 + 16))(v1, v27, v5);
    v28 = sub_1E41FFC94();
    v29 = sub_1E42067E4();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_1E323F000, v28, v29, "SportsPlayByPlayCollectionViewModel: reloading pbp section for errors", v30, 2u);
      OUTLINED_FUNCTION_6_0();
    }

    v31 = (*(v7 + 8))(v1, v5);
    if (sub_1E3CC87E4(v31, v32))
    {
      swift_getObjectType();
      OUTLINED_FUNCTION_25_23();
      v33(v2, 1);
      swift_unknownObjectRelease();
    }

    goto LABEL_19;
  }

  OUTLINED_FUNCTION_34_0();
  if (v19)
  {
    v20 = *(v18 + 32);

    goto LABEL_11;
  }

  __break(1u);
}

BOOL sub_1E38180E0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_1E3CC8638(a1, a2);
  v37[0] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B580, &unk_1E42B6570);
  sub_1E32752B0(&qword_1EE23B578, &unk_1ECF3F4C0, &unk_1E42A0990, MEMORY[0x1E69E6340]);
  v6 = sub_1E4149048(v5);

  if ((v6 & 1) == 0)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240, &unk_1E4298910);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4299720;
  ViewModelKeys.rawValue.getter(7);
  *(inited + 32) = v8;
  *(inited + 40) = v9;
  v10 = MEMORY[0x1E69E6158];
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = 0xD000000000000022;
  *(inited + 56) = 0x80000001E425EDE0;
  ViewModelKeys.rawValue.getter(13);
  *(inited + 80) = v11;
  *(inited + 88) = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B588, &unk_1E42A09A0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1E4297BE0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F740, &unk_1E42A89A0);
  v14 = swift_initStackObject();
  *(v14 + 16) = xmmword_1E4297BE0;
  sub_1E384EE08(191);
  *(v14 + 32) = v15;
  *(v14 + 40) = v16;
  v17 = swift_initStackObject();
  *(v17 + 16) = xmmword_1E4299720;
  ViewModelKeys.rawValue.getter(7);
  *(v17 + 32) = v18;
  *(v17 + 40) = v19;
  if (qword_1EE2A9E00 != -1)
  {
    OUTLINED_FUNCTION_4_41(&qword_1EE2A9E00);
  }

  v21 = qword_1ECF71260;
  v20 = *algn_1ECF71268;
  *(v17 + 72) = v10;
  *(v17 + 48) = v21;
  *(v17 + 56) = v20;

  ViewModelKeys.rawValue.getter(20);
  *(v17 + 80) = v22;
  *(v17 + 88) = v23;
  sub_1E39BE70C(v22, v23);
  v25 = v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
  *(v17 + 120) = v26;
  if (!v25)
  {
    v25 = sub_1E4205CB4();
  }

  *(v17 + 96) = v25;
  *(v14 + 48) = sub_1E4205CB4();
  *(v13 + 32) = sub_1E4205CB4();
  *(inited + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F750, qword_1E42AEDF0);
  *(inited + 96) = v13;
  v27 = sub_1E4205CB4();
  ViewModelKeys.rawValue.getter(28);
  v37[3] = v26;
  v37[0] = v27;
  v30 = sub_1E3A7CD30(v28, v29, v37, v3);

  __swift_destroy_boxed_opaque_existential_1(v37);
  if (!v30)
  {
    return 0;
  }

  type metadata accessor for CollectionGroupViewModel();
  v31 = swift_dynamicCastClass();
  v32 = v31 != 0;
  if (v31)
  {
    v33 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_1E4298880;
    *(v34 + 32) = v33;

    sub_1E40B4174(v34, v35);
  }

  return v32;
}

void sub_1E3818470()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B488, &unk_1E42A0630);
  OUTLINED_FUNCTION_17_2(v8);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_44();
  v79 = v10;
  v11 = OUTLINED_FUNCTION_138();
  v78 = type metadata accessor for SportsPlayPeriod(v11);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  v77 = v14 - v13;
  OUTLINED_FUNCTION_138();
  v15 = sub_1E4205724();
  OUTLINED_FUNCTION_0_10();
  v83 = v16;
  MEMORY[0x1EEE9AC00](v17);
  v81 = &v74 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v80 = &v74 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v82 = &v74 - v22;
  OUTLINED_FUNCTION_138();
  v85 = sub_1E4205BF4();
  OUTLINED_FUNCTION_0_10();
  v24 = v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v74 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v74 - v29;
  sub_1E39BE70C(v31, v32);
  v84 = v15;
  if (!v33)
  {
    v89 = 0u;
    v90 = 0u;
    goto LABEL_7;
  }

  v87 = &type metadata for ViewModelKeys.Sports;
  v88 = &off_1F5D7BC68;
  LOBYTE(v86[0]) = 6;
  sub_1E3F9F164(v86, v33, MEMORY[0x1E69E7CA0] + 8);

  __swift_destroy_boxed_opaque_existential_1(v86);
  if (!*(&v90 + 1))
  {
LABEL_7:
    v34 = sub_1E325F7A8(&v89, &unk_1ECF296E0, &unk_1E4298030);
    v35 = 0;
    goto LABEL_8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E9B0, qword_1E4298110);
  v34 = swift_dynamicCast();
  if (v34)
  {
    v35 = v86[0];
  }

  else
  {
    v35 = 0;
  }

LABEL_8:
  MEMORY[0x1EEE9AC00](v34);
  *(&v74 - 4) = v35;
  *(&v74 - 3) = v5;
  *(&v74 - 2) = v0;
  *(&v74 - 1) = v3;
  sub_1E38177FC(sub_1E3819AA4, (&v74 - 6), v7);
  sub_1E3819658();
  if (sub_1E4030E58())
  {
    sub_1E4030B98(v5, v7, v36, v37, v38, v39, v40, v41, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85);
    if (v42)
    {
      v86[0] = v35;
      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B490, &unk_1E42A0640);
      sub_1E4148C68(sub_1E381AC40, v43, &v89);

      v76 = v89;
      v44 = *(v24 + 16);
      v75 = v24 + 16;
      v74 = v44;
      v44(v30, v5, v85);
      v45 = sub_1E3FDF644();
      if (!v45 || (v46 = v45, v47 = sub_1E4205224(), v49 = v48, v46, (v49 & 1) != 0))
      {
        v47 = 0;
      }

      v50 = *(v1 + 272);
      if (v50)
      {
        v51 = &off_1F5D94380;
        v52 = &type metadata for SportsTeamColorVendor;
      }

      else
      {
        v52 = 0;
        v51 = 0;
        v86[1] = 0;
        v86[2] = 0;
      }

      v86[0] = v50;
      v87 = v52;
      v88 = v51;
      type metadata accessor for SportsPlayGroupItemViewData(0);

      v53 = v3;

      sub_1E3B0EFA4(v54, v76, v30, v47, v86, v3);
      sub_1E381977C();
      v55 = v85;
      (*(v24 + 104))(v27, *MEMORY[0x1E69D3D88], v85);
      v56 = sub_1E3819AE4(v5, v27, MEMORY[0x1E69D3D90], &qword_1ECF2B4F8, MEMORY[0x1E69D3D90], MEMORY[0x1E69D3DA0]);
      (*(v24 + 8))(v27, v55);
      if (v56)
      {
        v57 = sub_1E3FDF644();
        if (v57)
        {
          v58 = v57;
          v59 = sub_1E4205214();

          if (v59)
          {
            v60 = sub_1E4205284();
            if (v60)
            {
              v61 = v60;
              v62 = v80;
              sub_1E4205954();

              v64 = v82;
              v63 = v83;
              v65 = v84;
              (*(v83 + 32))(v82, v62, v84);
              v66 = v81;
              (*(v63 + 104))(v81, *MEMORY[0x1E69D3B30], v65);
              LOBYTE(v61) = sub_1E3819AE4(v64, v66, MEMORY[0x1E69D3B38], &qword_1ECF2B4F0, MEMORY[0x1E69D3B38], MEMORY[0x1E69D3B40]);
              v67 = v66;
              v68 = *(v63 + 8);
              v68(v67, v65);
              if (v61)
              {
                sub_1E4205294();
                v74(v27, v5, v85);
                v69 = v79;
                sub_1E385BAA0();
                if (__swift_getEnumTagSinglePayload(v69, 1, v78) != 1)
                {
                  v70 = v69;
                  v71 = v77;
                  sub_1E381A794(v70, v77, type metadata accessor for SportsPlayPeriod);
                  v72 = sub_1E385C974();
                  sub_1E38198B0(v72, v73);

                  sub_1E381A740(v71, type metadata accessor for SportsPlayPeriod);
                  v68(v64, v65);
                  goto LABEL_27;
                }

                v68(v64, v65);

                sub_1E325F7A8(v69, &qword_1ECF2B488, &unk_1E42A0630);
                goto LABEL_26;
              }

              v68(v64, v65);
            }
          }
        }
      }

LABEL_26:
      sub_1E38198B0(0, 0);

      goto LABEL_27;
    }
  }

  sub_1E381977C();
LABEL_27:
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3818BD8(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1E4200674();

  return v3;
}

uint64_t sub_1E3818C44()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v0 = OUTLINED_FUNCTION_32_20();
  return OUTLINED_FUNCTION_19_19(v0);
}

void sub_1E3818D14()
{
  OUTLINED_FUNCTION_31_1();
  v37 = v2;
  v44 = v3;
  v43 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3D950, &unk_1E42A06E0);
  OUTLINED_FUNCTION_0_10();
  v41 = v6;
  v42 = v5;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_44();
  v40 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B498, &unk_1E42C1E70);
  OUTLINED_FUNCTION_0_10();
  v38 = v10;
  v39 = v9;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v36 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B4A0, &qword_1E42A06F0);
  OUTLINED_FUNCTION_0_10();
  v16 = v15;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v36 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B4A8, &qword_1E42A06F8);
  OUTLINED_FUNCTION_0_10();
  v22 = v21;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_41();
  *(v0 + 272) = 0;
  *(v0 + 248) = 0;
  *(v0 + 256) = 0;
  *(v0 + 264) = 0;
  v24 = OBJC_IVAR____TtC8VideosUI25SportsPlayByPlayViewModel__plays;
  v45[0] = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B4B0, &qword_1E42A0700);
  OUTLINED_FUNCTION_36_14();
  sub_1E4200634();
  v25 = v1;
  v26 = v37;
  (*(v22 + 32))(v0 + v24, v25, v20);
  *(v0 + OBJC_IVAR____TtC8VideosUI25SportsPlayByPlayViewModel_playsToIndicies) = MEMORY[0x1E69E7CC8];
  v27 = OBJC_IVAR____TtC8VideosUI25SportsPlayByPlayViewModel__playGroup;
  v45[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B4B8, &unk_1E42A0708);
  OUTLINED_FUNCTION_36_14();
  sub_1E4200634();
  (*(v16 + 32))(v0 + v27, v19, v14);
  v28 = OBJC_IVAR____TtC8VideosUI25SportsPlayByPlayViewModel__inningTransition;
  v45[0] = 0;
  v45[1] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D960, &unk_1E4298000);
  OUTLINED_FUNCTION_36_14();
  sub_1E4200634();
  (*(v38 + 32))(v0 + v28, v13, v39);
  v29 = OBJC_IVAR____TtC8VideosUI25SportsPlayByPlayViewModel__displayErrors;
  v45[0] = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B4C0, &unk_1E42A0718);
  OUTLINED_FUNCTION_36_14();
  v30 = v40;
  sub_1E4200634();
  (*(v41 + 32))(v0 + v29, v30, v42);

  v31 = sub_1E39BEDCC(v43, v44, v26);
  if (!v31)
  {
    goto LABEL_11;
  }

  sub_1E39BE70C(v32, v33);
  if (!v34)
  {

    v46 = 0u;
    v47 = 0u;
LABEL_9:
    sub_1E325F7A8(&v46, &unk_1ECF296E0, &unk_1E4298030);
    goto LABEL_12;
  }

  v45[3] = &type metadata for ViewModelKeys.Sports;
  v45[4] = &off_1F5D7BC68;
  LOBYTE(v45[0]) = 6;
  sub_1E3F9F164(v45, v34, MEMORY[0x1E69E7CA0] + 8);

  __swift_destroy_boxed_opaque_existential_1(v45);
  if (!*(&v47 + 1))
  {

    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E9B0, qword_1E4298110);
  if ((swift_dynamicCast() & 1) == 0)
  {

LABEL_11:

    goto LABEL_12;
  }

  v35 = sub_1E407668C(v45[0]);

  *(v31 + 272) = v35;

LABEL_12:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E38191A0()
{
  OUTLINED_FUNCTION_31_1();
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v37 = v2;
  v38 = v1;
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5();
  v39 = v4 - v3;
  v5 = OUTLINED_FUNCTION_138();
  v6 = type metadata accessor for SportsPlayByPlayItemViewData(v5);
  v7 = OUTLINED_FUNCTION_8_0(v6);
  v42 = v8;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v41 = (v10 - v9);
  v11 = OBJC_IVAR____TtC8VideosUI25SportsPlayByPlayViewModel_playsToIndicies;
  OUTLINED_FUNCTION_11_3(v0 + OBJC_IVAR____TtC8VideosUI25SportsPlayByPlayViewModel_playsToIndicies, v44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B4E0, &qword_1E42A08F0);
  sub_1E4205D14();
  swift_endAccess();
  v12 = *(sub_1E3818BB0() + 16);

  v40 = v12;
  if (v12)
  {
    v13 = 0;
    while (1)
    {
      v14 = sub_1E3818BB0();
      if (v13 >= *(v14 + 16))
      {
        break;
      }

      sub_1E381A6DC(v14 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v13, v41);

      v16 = *v41;
      v15 = v41[1];

      sub_1E381A740(v41, type metadata accessor for SportsPlayByPlayItemViewData);
      OUTLINED_FUNCTION_11_3(v0 + v11, v44);
      swift_isUniquelyReferenced_nonNull_native();
      v43 = *(v0 + v11);
      *(v0 + v11) = 0x8000000000000000;
      v17 = sub_1E327D33C(v16, v15);
      if (__OFADD__(v43[2], (v18 & 1) == 0))
      {
        goto LABEL_17;
      }

      v19 = v17;
      v20 = v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B4E8, &unk_1E42A08F8);
      if (sub_1E4207644())
      {
        v21 = sub_1E327D33C(v16, v15);
        if ((v20 & 1) != (v22 & 1))
        {
          goto LABEL_19;
        }

        v19 = v21;
      }

      if (v20)
      {

        v23 = v43;
        *(v43[7] + 8 * v19) = v13;
      }

      else
      {
        v23 = v43;
        v43[(v19 >> 6) + 8] |= 1 << v19;
        v24 = (v43[6] + 16 * v19);
        *v24 = v16;
        v24[1] = v15;
        *(v43[7] + 8 * v19) = v13;
        v25 = v43[2];
        v26 = __OFADD__(v25, 1);
        v27 = v25 + 1;
        if (v26)
        {
          goto LABEL_18;
        }

        v43[2] = v27;
      }

      ++v13;
      *(v0 + v11) = v23;
      swift_endAccess();
      if (v40 == v13)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    sub_1E4207A74();
    __break(1u);
  }

  else
  {
LABEL_13:
    v28 = sub_1E3E37F30();
    (*(v37 + 16))(v39, v28, v38);

    v29 = sub_1E41FFC94();
    v30 = sub_1E42067E4();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v44[0] = v32;
      *v31 = 136315138;

      v33 = sub_1E4205CC4();
      v35 = v34;

      v36 = sub_1E3270FC8(v33, v35, v44);

      *(v31 + 4) = v36;
      _os_log_impl(&dword_1E323F000, v29, v30, "SportsPlayByPlayViewModel: Plays updated: %s ", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v32);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();
    }

    (*(v37 + 8))(v39, v38);
    OUTLINED_FUNCTION_25_2();
  }
}

uint64_t sub_1E3819600@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E3818BB0();
  *a1 = result;
  return result;
}

void sub_1E3819658()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v0 = OUTLINED_FUNCTION_32_20();
  OUTLINED_FUNCTION_19_19(v0);
  sub_1E38191A0();
}

uint64_t sub_1E38196B0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1E4200674();

  return v1;
}

uint64_t sub_1E3819724@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E38196B0();
  *a1 = result;
  return result;
}

uint64_t sub_1E381977C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v0 = OUTLINED_FUNCTION_32_20();
  return OUTLINED_FUNCTION_19_19(v0);
}

uint64_t sub_1E38197D0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1E4200674();

  return v1;
}

uint64_t sub_1E3819844@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E38197D0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1E3819870(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_1E38198B0(v1, v2);
}

uint64_t sub_1E38198B0(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1E4200684();
}

void sub_1E381992C()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = sub_1E4205BF4();
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  *v6;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B490, &unk_1E42A0640);
  sub_1E4148C68(sub_1E3819AD4, v11, &v13);
  (*(v9 + 16))(v0, v4, v7);

  sub_1E3B050E8();
  v12 = v2;
  sub_1E40719DC();
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3819AE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  a3(0);
  sub_1E381A884(a4, a5, a6);
  sub_1E4206254();
  sub_1E4206254();
  if (v14 == v12 && v15 == v13)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1E42079A4();
  }

  return v10 & 1;
}

uint64_t sub_1E3819BBC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E3818BC4();
  *a1 = result;
  return result;
}

uint64_t sub_1E3819C14()
{
  result = sub_1E3818BC4();
  v1 = result;
  v2 = 0;
  v3 = *(result + 16);
  while (1)
  {
    if (v3 == v2)
    {

      v5 = sub_1E3818BC4();
      if (*(v5 + 16))
      {
        v4 = *(v5 + 32);
      }

      else
      {
        v4 = 3;
      }

LABEL_9:

      return v4;
    }

    if (v2 >= *(v1 + 16))
    {
      break;
    }

    v4 = *(v1 + v2++ + 32);
    result = static SportsDisplayError.__derived_enum_equals(_:_:)(v4, 1);
    if (result)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E3819CE8()
{
  sub_1E37FAED8(*(v0 + 248), *(v0 + 256));

  v1 = OBJC_IVAR____TtC8VideosUI25SportsPlayByPlayViewModel__plays;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B4A8, &qword_1E42A06F8);
  OUTLINED_FUNCTION_10();
  (*(v2 + 8))(v0 + v1);

  v3 = OBJC_IVAR____TtC8VideosUI25SportsPlayByPlayViewModel__playGroup;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B4A0, &qword_1E42A06F0);
  OUTLINED_FUNCTION_10();
  (*(v4 + 8))(v0 + v3);
  v5 = OBJC_IVAR____TtC8VideosUI25SportsPlayByPlayViewModel__inningTransition;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B498, &unk_1E42C1E70);
  OUTLINED_FUNCTION_10();
  (*(v6 + 8))(v0 + v5);
  v7 = OBJC_IVAR____TtC8VideosUI25SportsPlayByPlayViewModel__displayErrors;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3D950, &unk_1E42A06E0);
  OUTLINED_FUNCTION_10();
  v9 = *(v8 + 8);

  return v9(v0 + v7);
}

uint64_t sub_1E3819E30()
{
  v0 = ViewModel.deinit();
  sub_1E37FAED8(*(v0 + 248), *(v0 + 256));

  v1 = OBJC_IVAR____TtC8VideosUI25SportsPlayByPlayViewModel__plays;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B4A8, &qword_1E42A06F8);
  OUTLINED_FUNCTION_10();
  (*(v2 + 8))(v0 + v1);

  v3 = OBJC_IVAR____TtC8VideosUI25SportsPlayByPlayViewModel__playGroup;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B4A0, &qword_1E42A06F0);
  OUTLINED_FUNCTION_10();
  (*(v4 + 8))(v0 + v3);
  v5 = OBJC_IVAR____TtC8VideosUI25SportsPlayByPlayViewModel__inningTransition;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B498, &unk_1E42C1E70);
  OUTLINED_FUNCTION_10();
  (*(v6 + 8))(v0 + v5);
  v7 = OBJC_IVAR____TtC8VideosUI25SportsPlayByPlayViewModel__displayErrors;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3D950, &unk_1E42A06E0);
  OUTLINED_FUNCTION_10();
  (*(v8 + 8))(v0 + v7);
  return v0;
}

uint64_t sub_1E3819F94(uint64_t (*a1)(void))
{
  v1 = a1();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return MEMORY[0x1EEE6BDC0](v1, v2, v3);
}

uint64_t sub_1E3819FEC@<X0>(uint64_t *a2@<X8>)
{
  result = sub_1E4200514();
  *a2 = result;
  return result;
}

uint64_t sub_1E381A074(uint64_t a1)
{
  result = sub_1E4205BF4();
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

void sub_1E381A160(uint64_t a1)
{
  sub_1E381A32C(319, &qword_1ECF2B4D0, &qword_1ECF2B4B0, &qword_1E42A0700);
  if (v1 <= 0x3F)
  {
    sub_1E381A32C(319, &qword_1ECF2B4D8, &qword_1ECF2B4B8, &unk_1E42A0708);
    if (v2 <= 0x3F)
    {
      sub_1E381A32C(319, &qword_1EE289FA8, &qword_1ECF3D960, &unk_1E4298000);
      if (v3 <= 0x3F)
      {
        sub_1E381A32C(319, &qword_1EE289F80, &qword_1ECF2B4C0, &unk_1E42A0718);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_1E381A32C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_1E4200694();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1E381A380(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (v3 == *(a2 + 16))
  {
    if (!v3 || a1 == a2)
    {
      v6 = 1;
    }

    else
    {
      v4 = a1 + 32;
      v5 = a2 + 32;
      sub_1E381AB4C(a1, a2, a3);
      do
      {
        ++v4;
        ++v5;
        v6 = sub_1E4205E84();
        --v3;
      }

      while ((v6 & 1) != 0 && v3);
    }
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_1E381A434(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = type metadata accessor for SportsPlayByPlayItemViewData(0), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    type metadata accessor for SportsPlayByPlayItemViewData(0);

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

void *sub_1E381A508(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E381A528(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1E381A528(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B500, &unk_1E42A0908);
  v10 = *(type metadata accessor for SportsPlayByPlayItemViewData(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for SportsPlayByPlayItemViewData(0) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_1E381A434(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_1E381A6DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsPlayByPlayItemViewData(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E381A740(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_10();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1E381A794(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_2();
  v4 = OUTLINED_FUNCTION_32_0();
  v5(v4);
  return a2;
}

uint64_t sub_1E381A7F0()
{
  OUTLINED_FUNCTION_24();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  v1[1] = sub_1E3286A7C;

  return sub_1E3816AB4();
}

uint64_t sub_1E381A884(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_1E381A908(unint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  OUTLINED_FUNCTION_15_0(v2 + 16, a2);
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = OBJC_IVAR____TtC8VideosUI35SportsPlayByPlayCollectionViewModel_returningFromBackground;
    v8 = *(Strong + OBJC_IVAR____TtC8VideosUI35SportsPlayByPlayCollectionViewModel_returningFromBackground);

    sub_1E37FC2A0(v3, v8);

    *(v6 + v7) = 0;
  }

  return result;
}

double sub_1E381A9A8(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  OUTLINED_FUNCTION_15_0(v2 + 16, a2);
  if (swift_weakLoadStrong())
  {
    sub_1E3816960(v3 & 1);
  }

  return result;
}

double sub_1E381A9F8()
{
  OUTLINED_FUNCTION_5_0(v0 + 16, &v12);
  if (swift_weakLoadStrong())
  {
    OUTLINED_FUNCTION_42_2();
    v2 = sub_1E40B4318();
    if (v2)
    {
      v3 = v2;
      v4 = sub_1E39BE4D0();
      if (v4)
      {
        v5 = v4;
        v6 = sub_1E3744600(v4);

        sub_1E3744600(v3);
        OUTLINED_FUNCTION_38();

        v7 = objc_allocWithZone(VUIRouterDataSource);
        v8 = sub_1E37C07A4(v6, v5);
        ViewModelEvent.description.getter(2);
        v9 = sub_1E4205ED4();

        v10 = sub_1E39BEA8C();
        if (v10)
        {
          OUTLINED_FUNCTION_5_0(v10 + 48, v13);
          Strong = swift_unknownObjectWeakLoadStrong();
        }

        else
        {
          Strong = 0;
        }

        [objc_opt_self() handleEvent:v9 targetResponder:0 appContext:Strong routerDataSource:v8 supplementaryData:0 extraInfo:0];
      }

      else
      {
      }
    }
  }

  return result;
}

unint64_t sub_1E381AB4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF2B578;
  if (!qword_1ECF2B578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2B578);
  }

  return result;
}

uint64_t sub_1E381ABA0()
{
  OUTLINED_FUNCTION_27_2();
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[6];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_30_0(v4);
  *v5 = v8;
  v5[1] = sub_1E327C238;

  return sub_1E3816F10(v5, v6, v7, v1, v2, v3);
}

uint64_t OUTLINED_FUNCTION_32_20()
{
}

double sub_1E381AC68@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a2 + 200);
  v9 = *(a2 + 208);
  v10 = *(a2 + 216);
  v11 = type metadata accessor for HorizontalCollectionViewWithHeader(0);
  v12 = v11[5];
  *(a4 + v12) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18, &qword_1E42982F0);
  swift_storeEnumTagMultiPayload();
  v13 = (a4 + v11[7]);
  *&v22 = 0;
  sub_1E42038E4();
  v14 = __dst[1];
  *v13 = __dst[0];
  v13[1] = v14;
  *a4 = sub_1E381AE50;
  *(a4 + 8) = a1;
  *(a4 + 16) = 0;
  memcpy((a4 + v11[9]), a2, 0x150uLL);
  *(a4 + v11[12]) = a1;
  memcpy(__dst, a2, sizeof(__dst));
  if (sub_1E3748B78(__dst) == 1)
  {
    *(a4 + v11[11]) = 0;
    *(a4 + v11[10]) = a3;
    v8 = 0.0;
    v9 = 0.0;
  }

  else
  {
    *(a4 + v11[11]) = BYTE1(__dst[35]);
    *(a4 + v11[10]) = a3;
    if (v10)
    {
      v8 = 0.0;
      v9 = 0.0;
    }
  }

  type metadata accessor for LayoutGrid();

  sub_1E3A258E4(v8);
  j_nullsub_1(v15, v16, v17, v18);
  v19 = a4 + v11[6];
  sub_1E42038E4();
  result = 0.0;
  *v19 = v22;
  *(v19 + 16) = v23;
  *(v19 + 32) = v24;
  v21 = (a4 + v11[8]);
  *v21 = v8;
  v21[1] = v9;
  return result;
}

uint64_t sub_1E381AE50()
{
  type metadata accessor for CollectionInteractor(0);

  return sub_1E37CD020(v0, 0);
}

void sub_1E381AE8C()
{
  OUTLINED_FUNCTION_41_5();
  v2 = v0;
  v179 = v3;
  v4 = type metadata accessor for HorizontalCollectionViewWithHeader(0);
  OUTLINED_FUNCTION_0_10();
  v159 = v5;
  MEMORY[0x1EEE9AC00](v6);
  v169 = v7;
  v163 = &v142 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = type metadata accessor for HorizontalCollectionView(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v8);
  v154 = &v142 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v152 = (&v142 - v11);
  MEMORY[0x1EEE9AC00](v12);
  v167 = &v142 - v13;
  sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v156 = v15;
  v157 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v155 = &v142 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B590, &qword_1E42A0A08);
  OUTLINED_FUNCTION_17_2(v17);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_44();
  v171 = v19;
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B598, &qword_1E42A0A10);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_44();
  v158 = v21;
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B5A0, &qword_1E42A0A18);
  OUTLINED_FUNCTION_0_10();
  v160 = v22;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_44();
  v168 = v24;
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B5A8, &qword_1E42A0A20);
  OUTLINED_FUNCTION_0_10();
  v162 = v25;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_44();
  v161 = v27;
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B5B0, &unk_1E42A0A28);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_44();
  v174 = v29;
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29A90, &qword_1E429C780);
  OUTLINED_FUNCTION_0_10();
  v31 = v30;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_8_4();
  v33 = type metadata accessor for LayoutGrid();
  v172 = v4;
  v34 = (v2 + *(v4 + 32));
  v35 = *v34;
  v36 = *v34;
  v151 = v33;
  sub_1E3A2579C(v36);
  v38 = *v2;
  v37 = v2[1];
  v39 = type metadata accessor for CollectionInteractor(0);
  OUTLINED_FUNCTION_1_69();
  v41 = sub_1E3820244(v40);
  v164 = v37;
  v165 = v38;
  *&v170 = v39;
  *&v166 = v41;
  v42 = sub_1E4200BC4();
  OUTLINED_FUNCTION_5_0(v42 + OBJC_IVAR____TtC8VideosUI20CollectionInteractor_collectionViewModel, &v191);

  OUTLINED_FUNCTION_36();
  v44 = (*(v43 + 392))();

  if (v44)
  {
    sub_1E3C2AE10();
    v47 = v46;
    (*(*v44 + 1640))();
  }

  v48 = v34[1];
  if (v35 == 0.0 && v48 == 0.0)
  {
    nullsub_1();
    v49 = v175;
    (*(v31 + 16))(v174, v1, v175);
    v50 = swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_5_1(v50);
    v51 = type metadata accessor for CollectionViewModel();
    v52 = sub_1E381C220();
    OUTLINED_FUNCTION_19_20();
    v54 = sub_1E3820244(v53);
    v190[0] = v178;
    v190[1] = v51;
    v190[2] = v52;
    v190[3] = v54;
    OUTLINED_FUNCTION_18_18();
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v190[0] = v176;
    v190[1] = OpaqueTypeConformance2;
    OUTLINED_FUNCTION_2_38();
    swift_getOpaqueTypeConformance2();
    v56 = v179;
    sub_1E4201F44();
    (*(v31 + 8))(v1, v49);
LABEL_6:
    v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B5D8, &qword_1E42A0A50);
    v58 = v56;
    v59 = 0;
LABEL_18:
    __swift_storeEnumTagSinglePayload(v58, v59, 1, v57);
    OUTLINED_FUNCTION_42();
    return;
  }

  v60 = v172;
  v61 = v2;
  v62 = (*(**(v2 + v172[12]) + 1040))(v45);
  if (!v62)
  {
    goto LABEL_17;
  }

  v63 = v62;
  if (!sub_1E32AE9B0(v62))
  {

    goto LABEL_17;
  }

  if ((v63 & 0xC000000000000001) != 0)
  {
    v64 = MEMORY[0x1E6911E60](0, v63);
    goto LABEL_12;
  }

  if (*((v63 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v64 = *(v63 + 32);

LABEL_12:

    v66 = (*(*v64 + 872))(v65);

    if (v66)
    {
      v67 = sub_1E32AE9B0(v66);

      if (v67)
      {
        sub_1E4200BC4();
        v68 = *(v2 + v60[12]);
        sub_1E37CDDA4();

        v69 = sub_1E4201D54();
        v70 = v171;
        *v171 = v69;
        *(v70 + 1) = 0;
        *(v70 + 16) = 0;
        v71 = (v2 + v60[6]);
        v72 = *v71;
        v73 = v71[1];
        v74 = v71[2];
        v75 = v71[3];
        v76 = v71[4];
        v190[0] = v72;
        v190[1] = v73;
        v147 = v75;
        v148 = v74;
        v190[2] = v74;
        v190[3] = v75;
        v146 = v76;
        v190[4] = v76;
        v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B5B8, &qword_1E42A0A38);
        v77 = sub_1E42038F4();
        v78 = *v189;
        v79 = *&v189[1];
        v80 = *&v189[2];
        v81 = *&v189[3];
        v82 = *(*v68 + 968);
        v150 = v68;
        v83 = v82(v77);
        v149 = *(v2 + v60[11]);
        if (v149 == 1)
        {
          OUTLINED_FUNCTION_43_12();
          v84 = sub_1E3B0352C();
          (*(v156 + 8))(v68, v157);
          v85 = v60;
          v86 = v84 ^ 1;
          v87 = *(v2 + v85[10]);
        }

        else
        {
          v87 = 0;
          v85 = v60;
          v86 = 0;
        }

        v88 = (v2 + v85[7]);
        v89 = *v88;
        v90 = v88[1];
        v144 = v89;
        v189[0] = v89;
        v143 = v90;
        v189[1] = v90;
        v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28868, &unk_1E4297BF0);
        sub_1E4203914();
        sub_1E3CEC988(v83, v86 & 1, v87, v190[0], v190[1], v192, v78, v79, v80, v81, *&v190[2]);
        v91 = sub_1E4200BC4();
        memcpy(v187, v61 + v85[9], sizeof(v187));
        v92 = v153;
        v93 = *(v153 + 20);
        KeyPath = swift_getKeyPath();
        v95 = v152;
        *(v152 + v93) = KeyPath;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18, &qword_1E42982F0);
        swift_storeEnumTagMultiPayload();
        v96 = (v95 + v92[6]);
        type metadata accessor for AppEnvironment(0);
        OUTLINED_FUNCTION_15_35();
        sub_1E3820244(v97);
        v98 = v150;

        *v96 = sub_1E4201754();
        v96[1] = v99;
        v100 = v92[7];
        sub_1E381BEF8(v188);
        memcpy(v95 + v100, v188, 0x150uLL);
        v101 = (v95 + v92[8]);

        v165 = v91;
        *v95 = sub_1E42010C4();
        v95[1] = v102;
        *(v95 + v92[10]) = v98;
        memcpy(v189, v95 + v100, sizeof(v189));
        memcpy(v95 + v100, v187, 0x150uLL);
        sub_1E378249C();
        sub_1E325F6F0(v189, &qword_1ECF2B5C0, &unk_1E42B4E40);
        *v101 = 0;
        v101[1] = 0;
        v103 = (v95 + v92[9]);
        *v103 = v35;
        v103[1] = v48;
        memcpy(v190, v187, sizeof(v190));
        if (sub_1E3748B78(v190) == 1)
        {
          OUTLINED_FUNCTION_34_18();
          *v104 = 0;
          v104[1] = 0;
          OUTLINED_FUNCTION_5_8();
          OUTLINED_FUNCTION_3();
        }

        else
        {
          if ((v190[33] & 1) == 0)
          {

            v35 = *&v187[28];
            v78 = *&v187[29];
            v79 = *&v187[30];
            v80 = *&v187[31];
            if (v187[35])
            {
              OUTLINED_FUNCTION_34_18();
              *v140 = 0;
            }

            else
            {
              OUTLINED_FUNCTION_34_18();
              *v140 = v141;
            }

            v140[1] = 0;
            goto LABEL_25;
          }

          sub_1E3A25950(v35);
          OUTLINED_FUNCTION_34_18();
          *v105 = v106;
          v105[1] = 0;
          sub_1E3A258E4(v35);
          j_nullsub_1(v107, v108, v109, v110);
          OUTLINED_FUNCTION_3();
        }

LABEL_25:
        v111 = (v95 + v92[12]);
        *v111 = v35;
        v111[1] = v78;
        v111[2] = v79;
        v111[3] = v80;
        v111[4] = 0.0;
        sub_1E381C0F0();
        OUTLINED_FUNCTION_36();
        v113 = (*(v112 + 992))();
        if (v113)
        {
          v186[0] = v72;
          v186[1] = v73;
          v186[2] = v148;
          v186[3] = v147;
          v186[4] = v146;
          sub_1E42038F4();
          v166 = v185[1];
          v170 = v185[0];
        }

        else
        {
          v170 = 0u;
          v166 = 0u;
        }

        v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B5C8, &qword_1E42A0A40);
        v115 = v171 + *(v114 + 44);
        v116 = v167;
        v117 = v154;
        sub_1E381C098();
        memcpy(v185, v192, sizeof(v185));
        memcpy(v115, v192, 0x50uLL);
        v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B5D0, &qword_1E42A0A48);
        sub_1E381C098();
        v119 = &v115[*(v118 + 64)];
        v120 = v166;
        *v119 = v170;
        *(v119 + 1) = v120;
        *(v119 + 4) = v113;
        sub_1E381BF1C(v185, v186);

        sub_1E381BF78(v116);

        sub_1E381BF78(v117);
        memcpy(v186, v192, sizeof(v186));
        sub_1E381BFD4(v186);
        LOBYTE(v115) = sub_1E4202744();
        v121 = sub_1E4202774();
        sub_1E4202774();
        if (sub_1E4202774() != v115)
        {
          v121 = sub_1E4202774();
        }

        v122 = 0.0;
        if (v149)
        {
          OUTLINED_FUNCTION_43_12();
          v123 = sub_1E3B0352C();
          (*(v156 + 8))(type metadata accessor for HorizontalCollectionView, v157);
          if ((v123 & 1) == 0)
          {
            v181 = v144;
            v182 = v143;
            sub_1E42038F4();
            v122 = -v180;
          }
        }

        sub_1E4200A54();
        OUTLINED_FUNCTION_3();
        v124 = v158;
        sub_1E381C028(v171, v158);
        v125 = v124 + *(v178 + 36);
        *v125 = v121;
        *(v125 + 8) = v122;
        *(v125 + 16) = v78;
        *(v125 + 24) = v79;
        *(v125 + 32) = v80;
        *(v125 + 40) = 0;
        v181 = v150;
        v171 = type metadata accessor for HorizontalCollectionViewWithHeader;
        sub_1E381C098();
        v172 = v61;
        swift_allocObject();
        sub_1E381C0F0();
        v126 = type metadata accessor for CollectionViewModel();
        v127 = sub_1E381C220();
        OUTLINED_FUNCTION_19_20();
        v129 = sub_1E3820244(v128);

        v130 = v178;
        sub_1E4203524();

        sub_1E325F6F0(v124, &qword_1ECF2B598, &qword_1E42A0A10);

        sub_1E381C098();
        v131 = swift_allocObject();
        sub_1E381C0F0();
        v181 = v130;
        v182 = v126;
        v183 = v127;
        v184 = v129;
        OUTLINED_FUNCTION_18_18();
        v132 = swift_getOpaqueTypeConformance2();
        v133 = v176;
        v134 = OUTLINED_FUNCTION_51_1();
        v135 = v161;
        v136 = v168;
        sub_1E403796C(v134 & 1, sub_1E381C44C, v131, v133, v132);

        (*(v160 + 8))(v136, v133);
        v137 = v162;
        v138 = v177;
        (*(v162 + 16))(v174, v135, v177);
        v139 = swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_5_1(v139);
        v181 = v133;
        v182 = v132;
        OUTLINED_FUNCTION_2_38();
        swift_getOpaqueTypeConformance2();
        v56 = v179;
        sub_1E4201F44();
        (*(v137 + 8))(v135, v138);
        goto LABEL_6;
      }
    }

LABEL_17:
    v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B5D8, &qword_1E42A0A50);
    v58 = v179;
    v59 = 1;
    goto LABEL_18;
  }

  __break(1u);
}

void sub_1E381BEF8(uint64_t a1)
{
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 80) = 1;
  bzero((a1 + 88), 0xF8uLL);
}

uint64_t sub_1E381BF78(uint64_t a1)
{
  v2 = type metadata accessor for HorizontalCollectionView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E381C028(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B590, &qword_1E42A0A08);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E381C098()
{
  OUTLINED_FUNCTION_155();
  v1(0);
  OUTLINED_FUNCTION_2();
  v2 = OUTLINED_FUNCTION_32_0();
  v3(v2);
  return v0;
}

uint64_t sub_1E381C0F0()
{
  OUTLINED_FUNCTION_155();
  v1(0);
  OUTLINED_FUNCTION_2();
  v2 = OUTLINED_FUNCTION_32_0();
  v3(v2);
  return v0;
}

double sub_1E381C148(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for HorizontalCollectionViewWithHeader(0);
  OUTLINED_FUNCTION_17_2(v3);
  OUTLINED_FUNCTION_135_0();
  v4 = *a2;
  type metadata accessor for CollectionInteractor(0);
  OUTLINED_FUNCTION_1_69();
  sub_1E3820244(v5);
  sub_1E4200BC4();
  sub_1E37CDC8C(v4);

  return result;
}

unint64_t sub_1E381C220()
{
  result = qword_1EE2897A0;
  if (!qword_1EE2897A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2B598, &qword_1E42A0A10);
    sub_1E381F390(&unk_1EE2884F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2897A0);
  }

  return result;
}

uint64_t objectdestroyTm_5()
{
  type metadata accessor for HorizontalCollectionViewWithHeader(0);
  OUTLINED_FUNCTION_144();
  v3 = (v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  sub_1E3264CE0(*v3, v3[1]);
  v4 = *(v0 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18, &qword_1E42982F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1E42012F4();
    OUTLINED_FUNCTION_2();
    (*(v5 + 8))(v3 + v4);
  }

  else
  {
  }

  v6 = *(v3 + *(v0 + 36) + 80);
  if (v6 != 1)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1E381C44C(uint64_t a1)
{
  type metadata accessor for HorizontalCollectionViewWithHeader(0);
  OUTLINED_FUNCTION_135_0();
  type metadata accessor for CollectionInteractor(0);
  OUTLINED_FUNCTION_1_69();
  sub_1E3820244(v1);
  v2 = sub_1E4200BC4();
  v3 = OBJC_IVAR____TtC8VideosUI20CollectionInteractor_collectionViewModel;
  OUTLINED_FUNCTION_5_0(v2 + OBJC_IVAR____TtC8VideosUI20CollectionInteractor_collectionViewModel, v15);
  v4 = *(v2 + v3);

  v6 = (*(*v4 + 392))(v5);

  if (v6)
  {
    sub_1E3C2AE10();
    v8 = v7;
    OUTLINED_FUNCTION_36();
    (*(v9 + 1640))();
  }

  type metadata accessor for LayoutGrid();
  v10.n128_f64[0] = sub_1E3A25914();
  j_nullsub_1(v10, v11, v12, v13);
  OUTLINED_FUNCTION_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B5B8, &qword_1E42A0A38);
  sub_1E42038F4();
  result = sub_1E4200A44();
  if ((result & 1) == 0)
  {
    return sub_1E4203904();
  }

  return result;
}

void sub_1E381C6B4()
{
  OUTLINED_FUNCTION_41_5();
  v3 = v2;
  v4 = type metadata accessor for HorizontalCollectionView(0);
  OUTLINED_FUNCTION_0_10();
  v125 = v5;
  MEMORY[0x1EEE9AC00](v6);
  v121 = v7;
  v8 = &v111[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B5F0, &qword_1E42A0C00);
  OUTLINED_FUNCTION_17_2(v9);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v111[-v11];
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B5F8, &qword_1E42A0C08);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_44();
  v119 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B600, &unk_1E42A0C10);
  OUTLINED_FUNCTION_0_10();
  v17 = v16;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_14_5();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A250, " B\r");
  OUTLINED_FUNCTION_17_2(v19);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v111[-v21];
  v154 = v4;
  v155 = v0;
  v23 = *(v0 + *(v4 + 40));
  OUTLINED_FUNCTION_36();
  v25 = (*(v24 + 1040))();
  v123 = v17;
  v124 = v3;
  v122 = v1;
  if (!v25)
  {
    goto LABEL_8;
  }

  v26 = v25;
  if (!sub_1E32AE9B0(v25))
  {

LABEL_8:
    v131 = 0;
    goto LABEL_9;
  }

  if ((v26 & 0xC000000000000001) != 0)
  {
    v131 = MEMORY[0x1E6911E60](0, v26);
  }

  else
  {
    if (!*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v131 = *(v26 + 32);
  }

LABEL_9:
  v117 = v8;
  v118 = v15;
  v27 = *(*v23 + 960);
  v129 = v23;
  v28 = v27(v25);
  v29 = v155;
  OUTLINED_FUNCTION_5_0(*(v155 + 8) + OBJC_IVAR____TtC8VideosUI20CollectionInteractor_collectionViewModel, &v180);

  sub_1E3A610FC(v30);
  v130 = v31;

  v32 = v29 + v154[7];
  OUTLINED_FUNCTION_46_8(v182);
  v33 = sub_1E3748B78(v182);
  v116 = v12;
  v126 = v28;
  if (v33 == 1 || v182[264] != 1)
  {
    memcpy(v179, v32, sizeof(v179));
    v50 = *(v32 + 96);
    v132 = *(v32 + 104);
    v51 = *(v32 + 112);
    *v163 = *(v32 + 113);
    *&v163[3] = *(v32 + 116);
    v52 = *(v32 + 120);
    v133 = *(v32 + 128);
    v134 = v50;
    v114 = *(v32 + 136);
    LODWORD(v115) = v51;
    LODWORD(v156) = *(v32 + 137);
    *(&v156 + 3) = *(v32 + 140);
    v53 = *(v32 + 144);
    v113 = *(v32 + 152);
    v54 = *(v32 + 153);
    *(v218 + 3) = *(v32 + 156);
    v218[0] = v54;
    v56 = *(v32 + 160);
    v55 = *(v32 + 168);
    v143 = v53;
    v144 = v56;
    v140 = v55;
    v141 = v52;
    LODWORD(v56) = *(v32 + 176);
    v112 = *(v32 + 177);
    v142 = *(v32 + 178);
    v178 = *(v32 + 183);
    v177 = *(v32 + 179);
    v138 = *(v32 + 184);
    v136 = *(v32 + 192);
    v137 = v56;
    v139 = *(v32 + 193);
    v145 = *(v32 + 194);
    v176 = *(v32 + 199);
    v175 = *(v32 + 195);
    v57 = *(v32 + 200);
    v148 = *(v32 + 208);
    v149 = v57;
    v147 = *(v32 + 216);
    v150 = *(v32 + 217);
    v151 = *(v32 + 218);
    LODWORD(v55) = *(v32 + 219);
    v174 = *(v32 + 223);
    v173 = v55;
    v41 = *(v32 + 224);
    v42 = *(v32 + 232);
    v43 = *(v32 + 240);
    v44 = *(v32 + 248);
    v58 = *(v32 + 256);
    v135 = *(v32 + 264);
    LODWORD(v55) = *(v32 + 265);
    *(v165 + 3) = *(v32 + 268);
    LODWORD(v165[0]) = v55;
    v152 = *(v32 + 272);
    v153 = v58;
    v59 = *(v32 + 280);
    v146 = *(v32 + 281);
    LODWORD(v55) = *(v32 + 282);
    v172 = *(v32 + 286);
    v171 = v55;
    *(&v160 + 3) = *(v32 + 300);
    LODWORD(v160) = *(v32 + 297);
    v60 = *(v32 + 288);
    v62 = *(v32 + 304);
    v61 = *(v32 + 312);
    v63 = *(v32 + 320);
    v64 = *(v32 + 328);
    v65 = *(v32 + 296);
    memcpy(v217, v32, 0x60uLL);
    *(v217[7].i32 + 1) = *(v32 + 113);
    *(&v217[8].i32[2] + 1) = *(v32 + 137);
    v217[9].i32[3] = *(v32 + 156);
    *(&v217[9].i32[2] + 1) = *(v32 + 153);
    *(v217[11].i32 + 3) = *(v32 + 179);
    *(v217[12].i32 + 3) = *(v32 + 195);
    *(&v217[13].i32[2] + 3) = *(v32 + 219);
    v66 = v60;
    *(&v217[16].i32[2] + 1) = *(v32 + 265);
    *(&v217[17].i32[2] + 2) = *(v32 + 282);
    v67 = v65;
    *(&v217[18].i32[2] + 1) = *(v32 + 297);
    v217[7].i32[1] = *(v32 + 116);
    v217[8].i32[3] = *(v32 + 140);
    v217[11].i8[7] = *(v32 + 183);
    v217[12].i8[7] = *(v32 + 199);
    v217[13].i8[15] = *(v32 + 223);
    v217[16].i32[3] = *(v32 + 268);
    v217[17].i16[7] = *(v32 + 286);
    v217[18].i32[3] = *(v32 + 300);
    v217[6].i64[0] = v134;
    v217[6].i64[1] = v132;
    v48 = v115;
    v217[7].i8[0] = v115;
    v217[7].i64[1] = v141;
    v217[8].i64[0] = v133;
    v47 = v114;
    v217[8].i8[8] = v114;
    v217[9].i64[0] = v143;
    v46 = v113;
    v217[9].i8[8] = v113;
    v217[10].i64[0] = v144;
    v217[10].i64[1] = v140;
    v217[11].i8[0] = v137;
    v45 = v112;
    v217[11].i8[1] = v112;
    v217[11].i8[2] = v142;
    v217[11].i64[1] = v138;
    v217[12].i8[0] = v136;
    v217[12].i8[1] = v139;
    v217[12].i8[2] = v145;
    v217[12].i64[1] = v149;
    v217[13].i64[0] = v148;
    v217[13].i8[8] = v147;
    v217[13].i8[9] = v150;
    v217[13].i8[10] = v151;
    *v217[14].i64 = v41;
    *&v217[14].i64[1] = v42;
    v217[15].i64[0] = v43;
    v217[15].i64[1] = v44;
    v217[16].i64[0] = v153;
    v217[16].i8[8] = v135;
    v217[17].i64[0] = v152;
    v217[17].i8[8] = v59;
    v217[17].i8[9] = v146;
    v128 = v66;
    v217[18].i64[0] = v66;
    v127 = v67;
    v217[18].i8[8] = v67;
    v217[19].i64[0] = v62;
    v217[19].i64[1] = v61;
    v217[20].i64[0] = v63;
    v217[20].i64[1] = v64;
    if (sub_1E3748B78(v217) == 1)
    {
      v68 = sub_1E3EBA288();
      OUTLINED_FUNCTION_5_0(v68, v219);
      memcpy(v170, v68, sizeof(v170));
      v127 = LOBYTE(v170[37]);
      v128 = v170[36];
      v146 = BYTE1(v170[35]);
      v40 = v170[35];
      v135 = LOBYTE(v170[33]);
      v152 = v170[34];
      v153 = v170[32];
      v41 = *&v170[28];
      v42 = *&v170[29];
      v43 = v170[30];
      v44 = v170[31];
      v151 = BYTE2(v170[27]);
      v150 = BYTE1(v170[27]);
      v148 = v170[26];
      v149 = v170[25];
      v147 = LOBYTE(v170[27]);
      v145 = BYTE2(v170[24]);
      v139 = BYTE1(v170[24]);
      v138 = v170[23];
      v142 = BYTE2(v170[22]);
      v136 = LOBYTE(v170[24]);
      v137 = LOBYTE(v170[22]);
      v45 = BYTE1(v170[22]);
      v143 = v170[18];
      v144 = v170[20];
      v46 = v170[19];
      v140 = v170[21];
      v141 = v170[15];
      v47 = v170[17];
      v133 = v170[16];
      v134 = v170[12];
      v132 = v170[13];
      v48 = v170[14];
      sub_1E37E6E1C(v170, v166);
      v69 = v170;
    }

    else
    {
      memcpy(v170, v179, 0x60uLL);
      *(&v170[14] + 1) = *v163;
      *(&v170[17] + 1) = LODWORD(v156);
      HIDWORD(v170[19]) = *(v218 + 3);
      *(&v170[19] + 1) = v218[0];
      *(&v170[22] + 3) = v177;
      *(&v170[24] + 3) = v175;
      *(&v170[27] + 3) = v173;
      *(&v170[33] + 1) = v165[0];
      *(&v170[35] + 2) = v171;
      v40 = v59;
      *(&v170[37] + 1) = v160;
      HIDWORD(v170[14]) = *&v163[3];
      HIDWORD(v170[17]) = *(&v156 + 3);
      HIBYTE(v170[22]) = v178;
      HIBYTE(v170[24]) = v176;
      HIBYTE(v170[27]) = v174;
      HIDWORD(v170[33]) = *(v165 + 3);
      HIWORD(v170[35]) = v172;
      HIDWORD(v170[37]) = *(&v160 + 3);
      v170[12] = v134;
      v170[13] = v132;
      LOBYTE(v170[14]) = v48;
      v170[15] = v141;
      v170[16] = v133;
      LOBYTE(v170[17]) = v47;
      v170[18] = v143;
      LOBYTE(v170[19]) = v46;
      v170[20] = v144;
      v170[21] = v140;
      LOBYTE(v170[22]) = v137;
      BYTE1(v170[22]) = v45;
      BYTE2(v170[22]) = v142;
      v170[23] = v138;
      LOBYTE(v170[24]) = v136;
      BYTE1(v170[24]) = v139;
      BYTE2(v170[24]) = v145;
      OUTLINED_FUNCTION_35_15();
      OUTLINED_FUNCTION_11_35(v70);
      LOBYTE(v170[33]) = v71;
      v170[34] = v152;
      LOBYTE(v170[35]) = v59;
      OUTLINED_FUNCTION_33_19(v146);
      OUTLINED_FUNCTION_29_11(v72);
      sub_1E37E6E1C(v170, v166);
      v69 = v179;
    }

    memcpy(v181, v69, sizeof(v181));
    v49 = v131;
    v39 = v129;
  }

  else
  {
    sub_1E3746E10(v22);
    v34 = sub_1E42012F4();
    __swift_storeEnumTagSinglePayload(v22, 0, 1, v34);
    OUTLINED_FUNCTION_46_8(v217);
    v35 = sub_1E3748B78(v217);
    v36.i32[0] = 1;
    v37.i32[0] = v35;
    v38 = vdupq_lane_s32(*&vceqq_s32(v37, v36), 0);
    v219[0] = vbicq_s8(v217[14], v38);
    v219[1] = vbicq_s8(v217[15], v38);
    v220 = v35 == 1;
    j__OUTLINED_FUNCTION_51_1();
    OUTLINED_FUNCTION_5_11();
    v39 = v129;
    sub_1E389BFA8();
    sub_1E325F6F0(v22, &qword_1ECF2A250, " B\r");
    v127 = v216;
    v128 = v215;
    v146 = v214;
    v40 = v213;
    v135 = v211;
    v152 = v212;
    v153 = v210;
    v41 = v206;
    v42 = v207;
    v43 = v208;
    v44 = v209;
    v151 = v205;
    v150 = v204;
    v148 = v202;
    v149 = v201;
    v147 = v203;
    v132 = v185;
    v133 = v188;
    v134 = v184;
    v143 = v190;
    v144 = v192;
    v140 = v193;
    v141 = v187;
    v142 = v196;
    v138 = v197;
    v145 = v200;
    v139 = v199;
    v136 = v198;
    v137 = v194;
    v45 = v195;
    v46 = v191;
    v47 = v189;
    v48 = v186;
    memcpy(v181, v183, sizeof(v181));
    v49 = v131;
  }

  memcpy(v165, v181, 0x5BuLL);
  v165[12] = v134;
  v165[13] = v132;
  LOBYTE(v165[14]) = v48 & 1;
  v165[15] = v141;
  v165[16] = v133;
  LOBYTE(v165[17]) = v47 & 1;
  v165[18] = v143;
  LOBYTE(v165[19]) = v46 & 1;
  v165[20] = v144;
  v165[21] = v140;
  LOBYTE(v165[22]) = v137;
  BYTE1(v165[22]) = v45 & 1;
  BYTE2(v165[22]) = v142;
  v165[23] = v138;
  LOBYTE(v165[24]) = v136 & 1;
  BYTE1(v165[24]) = v139 & 1;
  BYTE2(v165[24]) = v145 & 1;
  memcpy(v218, v165, 0xC3uLL);
  memcpy(v170, v165, 0xC3uLL);
  OUTLINED_FUNCTION_35_15();
  OUTLINED_FUNCTION_11_35(v73 & 1);
  LOBYTE(v170[33]) = v74 & 1;
  v170[34] = v152;
  LOBYTE(v170[35]) = v40 & 1;
  OUTLINED_FUNCTION_33_19(v146 & 1);
  OUTLINED_FUNCTION_29_11(v75 & 1);
  memcpy(v217, v170, sizeof(v217));
  v167 = &unk_1F5D5D888;
  v168 = &off_1F5D5C918;
  LOBYTE(v166[0]) = 8;
  v76 = j__OUTLINED_FUNCTION_18();
  LODWORD(v153) = sub_1E39C29F0(v166, v76 & 1);
  __swift_destroy_boxed_opaque_existential_1(v166);
  v167 = &unk_1F5D5D888;
  v168 = &off_1F5D5C918;
  LOBYTE(v166[0]) = 9;
  v77 = j__OUTLINED_FUNCTION_18();
  v78 = sub_1E39C29F0(v166, v77 & 1);
  __swift_destroy_boxed_opaque_existential_1(v166);
  if (!v49 || (v79 = *(*v49 + 872), v80 = , v81 = v79(v80), , !v81))
  {

    v81 = MEMORY[0x1E69E7CC0];
  }

  v82 = v39;
  OUTLINED_FUNCTION_46_8(v166);
  v83 = sub_1E3748B78(v166);
  v84 = v169;
  OUTLINED_FUNCTION_46_8(v163);
  if (sub_1E3748B78(v163) == 1)
  {
    sub_1E375C1CC(v165, &v156);
    v152 = sub_1E4201B64();
  }

  else
  {
    v152 = v164;
    sub_1E375C1CC(v165, &v156);
  }

  v85 = (v155 + v154[11]);
  v86 = *v85;
  v87 = v85[1];
  v156 = v86;
  v157 = v87;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28868, &unk_1E4297BF0);
  sub_1E42038F4();
  v88 = *&v160;
  v115 = v43;
  v89 = v44;
  if (v78)
  {
    v90 = v126;
  }

  else
  {
    v90 = 0;
  }

  v91 = v155;
  v92 = (v155 + v154[12]);
  v93 = *(v92 + 4);
  v94 = v92[1];
  v160 = *v92;
  v161 = v94;
  v162 = v93;

  sub_1E37E6E1C(v170, &v156);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B5B8, &qword_1E42A0A38);
  v95 = sub_1E42038F4();
  v96 = v156;
  v97 = v157;
  v98 = v158;
  v99 = v159;
  MEMORY[0x1EEE9AC00](v95);
  *&v111[-48] = v81;
  *&v111[-40] = v91;
  *&v111[-32] = v218;
  v111[-24] = (v83 != 1) & v84;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B608, &qword_1E42A0C20);
  v101 = sub_1E381ED8C();
  sub_1E3CBD2BC(v152, v153 & 1, v90, v82, v217, sub_1E381ED78, v100, v116, v88, v96, v97, v98, v99, v41, v42, *&v115, v89, v101);

  sub_1E381C098();
  v102 = swift_allocObject();
  OUTLINED_FUNCTION_44_18(v102);
  v103 = v119;
  sub_1E32B4784();
  v104 = v120;
  v105 = (v103 + *(v120 + 36));
  *v105 = sub_1E381EFE4;
  v105[1] = v100;
  v105[2] = 0;
  v105[3] = 0;
  sub_1E381C098();
  v106 = swift_allocObject();
  OUTLINED_FUNCTION_44_18(v106);
  *&v107 = COERCE_DOUBLE(sub_1E381F2C0());
  v108 = v122;
  sub_1E403796C(1, sub_1E381F264, v100, v104, v107);

  sub_1E32B47E4(v103);
  v156 = *&v104;
  v157 = *&v107;
  OUTLINED_FUNCTION_2_38();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v110 = v118;
  sub_1E3F231A0(v129, v118, OpaqueTypeConformance2);
  sub_1E37E6F2C(v165);

  sub_1E375B760(v170);

  (*(v123 + 8))(v108, v110);
  OUTLINED_FUNCTION_42();
}

id sub_1E381D6F0@<X0>(uint64_t a1@<X0>, const void *a2@<X2>, int a3@<W3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v41 = a4;
  v40 = a3;
  v45 = a5;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B620, &qword_1E42A0C38);
  OUTLINED_FUNCTION_0_10();
  KeyPath = v7;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_44();
  v38 = v9;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B630, &qword_1E42A0C50);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_44();
  v44 = v11;
  v12 = type metadata accessor for HorizontalCollectionView(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B610, &qword_1E42A0C28);
  OUTLINED_FUNCTION_0_10();
  v16 = v15;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v38 - v18;
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v21 = result;
    v22 = [result vStackInForEachEnabled];

    v23 = v14 + 7;
    v49 = a1;
    if (v22)
    {
      KeyPath = swift_getKeyPath();
      OUTLINED_FUNCTION_13_43();
      sub_1E381C098();
      v24 = (v23 + ((*(v13 + 80) + 16) & ~*(v13 + 80))) & 0xFFFFFFFFFFFFFFF8;
      v25 = swift_allocObject();
      sub_1E381C0F0();
      memcpy((v25 + v24), a2, 0xC3uLL);
      *(v25 + v24 + 195) = v40 & 1;
      *(v25 + ((v24 + 203) & 0xFFFFFFFFFFFFFFF8)) = v41;

      sub_1E375C1CC(a2, &v47);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C790, &qword_1E42996A0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B618, &qword_1E42A0C30);
      OUTLINED_FUNCTION_14_11();
      sub_1E381F390(v26);
      sub_1E381F390(&qword_1EE288510);
      sub_1E4203B34();
      v27 = v42;
      (*(v16 + 16))(v44, v19, v42);
      swift_storeEnumTagMultiPayload();
      sub_1E381EE18();
      sub_1E381EEC8();
      sub_1E4201F44();
      return (*(v16 + 8))(v19, v27);
    }

    else
    {
      swift_getKeyPath();
      OUTLINED_FUNCTION_13_43();
      sub_1E381C098();
      v28 = (v23 + ((*(v13 + 80) + 16) & ~*(v13 + 80))) & 0xFFFFFFFFFFFFFFF8;
      v29 = swift_allocObject();
      sub_1E381C0F0();
      memcpy((v29 + v28), a2, 0xC3uLL);
      *(v29 + v28 + 195) = v40 & 1;
      *(v29 + ((v28 + 203) & 0xFFFFFFFFFFFFFFF8)) = v41;

      sub_1E375C1CC(a2, &v47);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C790, &qword_1E42996A0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B638, &qword_1E42D76F0);
      OUTLINED_FUNCTION_14_11();
      sub_1E381F390(v30);
      v31 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2B628, &unk_1E42A0C40);
      v32 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF29060, &qword_1E42A7B70);
      v33 = OUTLINED_FUNCTION_6_8(v32);
      v47 = v32;
      v48 = v33;
      OUTLINED_FUNCTION_5_47();
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v47 = v31;
      v48 = OpaqueTypeConformance2;
      swift_getOpaqueTypeConformance2();
      v35 = v38;
      sub_1E4203B34();
      v36 = KeyPath;
      v37 = v46;
      (*(KeyPath + 16))(v44, v35, v46);
      swift_storeEnumTagMultiPayload();
      sub_1E381EE18();
      sub_1E381EEC8();
      sub_1E4201F44();
      return (*(v36 + 8))(v35, v37);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E381DE18@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E381DDD8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1E381DE44@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29060, &qword_1E42A7B70);
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_14_5();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B628, &unk_1E42A0C40);
  OUTLINED_FUNCTION_0_10();
  v14 = v13;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_8_4();
  v16 = *a1;
  *a4 = sub_1E4201D44();
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  v17 = type metadata accessor for HorizontalCollectionView(0);
  v18 = OUTLINED_FUNCTION_45_11((a2 + *(v17 + 32)));
  v19 = *(a2 + *(v17 + 40));
  v20 = OUTLINED_FUNCTION_6_8(v18);
  OUTLINED_FUNCTION_24_12(v19);
  (*(v11 + 8))(v5, v9);
  v30[0] = v16;
  if (a3)
  {
    v31 = a3;
    type metadata accessor for ViewModel();
    OUTLINED_FUNCTION_17_24();
    sub_1E3820244(v21);

    v22 = sub_1E4205E84();

    v23 = 0;
    if (v22)
    {
      v24 = *(a2 + 8);
      v25 = OBJC_IVAR____TtC8VideosUI20CollectionInteractor_paginator;
      OUTLINED_FUNCTION_5_0(v24 + OBJC_IVAR____TtC8VideosUI20CollectionInteractor_paginator, v30);
      v23 = *(v24 + v25);
    }
  }

  else
  {
    v23 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B640, &unk_1E42A0C80);
  v31 = v9;
  v32 = v20;
  OUTLINED_FUNCTION_5_47();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1E3A610C8(v23, v29, OpaqueTypeConformance2);

  return (*(v14 + 8))(v4, v29);
}

uint64_t sub_1E381E0E0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29060, &qword_1E42A7B70);
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_14_5();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B628, &unk_1E42A0C40);
  OUTLINED_FUNCTION_0_10();
  v15 = v14;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_8_4();
  v17 = *a1;
  v18 = type metadata accessor for HorizontalCollectionView(0);
  v19 = OUTLINED_FUNCTION_45_11((a2 + *(v18 + 32)));
  v20 = *(a2 + *(v18 + 40));
  v21 = OUTLINED_FUNCTION_6_8(v19);
  OUTLINED_FUNCTION_24_12(v20);
  (*(v11 + 8))(v6, v9);
  v30[0] = v17;
  if (a5)
  {
    v31 = a5;
    type metadata accessor for ViewModel();
    OUTLINED_FUNCTION_17_24();
    sub_1E3820244(v22);

    v23 = sub_1E4205E84();

    v24 = 0;
    if (v23)
    {
      v25 = *(a2 + 8);
      v26 = OBJC_IVAR____TtC8VideosUI20CollectionInteractor_paginator;
      OUTLINED_FUNCTION_5_0(v25 + OBJC_IVAR____TtC8VideosUI20CollectionInteractor_paginator, v30);
      v24 = *(v25 + v26);
    }
  }

  else
  {
    v24 = 0;
  }

  v31 = v9;
  v32 = v21;
  OUTLINED_FUNCTION_5_47();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1E3A610C8(v24, v13, OpaqueTypeConformance2);

  return (*(v15 + 8))(v5, v13);
}

uint64_t sub_1E381E350(uint64_t a1)
{
  v2 = a1;
  v3 = type metadata accessor for HorizontalCollectionView(0);
  memcpy(__dst, (v1 + *(v3 + 28)), sizeof(__dst));
  result = sub_1E3748B78(__dst);
  if (result != 1 && __dst[264] == 1)
  {
    type metadata accessor for LayoutGrid();
    v5 = sub_1E3A2593C(v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28868, &unk_1E4297BF0);
    sub_1E42038F4();
    if (v5 != v10)
    {
      sub_1E4203904();
    }

    v6.n128_f64[0] = sub_1E3A25914();
    j_nullsub_1(v6, v7, v8, v9);
    OUTLINED_FUNCTION_3();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B5B8, &qword_1E42A0A38);
    sub_1E42038F4();
    result = sub_1E4200A44();
    if ((result & 1) == 0)
    {
      return sub_1E4203904();
    }
  }

  return result;
}

__n128 sub_1E381E510@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 32);
  memset(v7, 0, sizeof(v7));
  v8 = 1;
  sub_1E382A9B4(v3, v7, 0, a1);
  v4 = sub_1E4202734();
  v5 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B5E8, &qword_1E42A0BF8) + 36);
  *v5 = v4;
  result = *v1;
  *(v5 + 24) = *(v1 + 16);
  *(v5 + 8) = result;
  *(v5 + 40) = 0;
  return result;
}

void sub_1E381E5E4()
{
  sub_1E381EBC4(319, &qword_1EE289E48, MEMORY[0x1E697DD40]);
  if (v1 <= 0x3F)
  {
    v29 = v0;
    OUTLINED_FUNCTION_16_24();
    sub_1E381E7C0(319, v2, v3, MEMORY[0x1E697DCC0]);
    if (v5 <= 0x3F)
    {
      LOBYTE(v26) = 0;
      v30 = v4;
      OUTLINED_FUNCTION_3_38(v4, &qword_1EE288670, MEMORY[0x1E697DA60]);
      if (v7 <= 0x3F)
      {
        BYTE1(v26) = 0;
        v31 = v6;
        OUTLINED_FUNCTION_3_38(v6, &qword_1EE288680, MEMORY[0x1E69E7DE0]);
        if (v9 <= 0x3F)
        {
          BYTE2(v26) = 0;
          v32 = v8;
          type metadata accessor for CGSize(319);
          if (v11 <= 0x3F)
          {
            HIBYTE(v26) = 0;
            v33 = v10;
            OUTLINED_FUNCTION_20_25(v10, &qword_1EE259C58, &unk_1F5D8B8B8);
            if (v13 <= 0x3F)
            {
              LOBYTE(v27) = 0;
              v34 = v12;
              sub_1E381E7C0(319, qword_1EE283808, type metadata accessor for ShowcaseValue, MEMORY[0x1E69E6720]);
              if (v15 <= 0x3F)
              {
                HIBYTE(v27) = 0;
                v35 = v14;
                v36 = MEMORY[0x1E69E6370];
                v16 = type metadata accessor for CollectionViewModel();
                if (v17 <= 0x3F)
                {
                  OUTLINED_FUNCTION_23_21(v16, v17, v18, v19, v20, v21, v22, v23, v24, *v25, *&v25[4], v25[6], 0, v26, v27, 0, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37);
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1E381E770(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1E381E7C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1E381E824()
{
  result = qword_1EE289090;
  if (!qword_1EE289090)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2B5D8, &qword_1E42A0A50);
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2B5A0, &qword_1E42A0A18);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2B598, &qword_1E42A0A10);
    type metadata accessor for CollectionViewModel();
    sub_1E381C220();
    sub_1E3820244(&unk_1EE275068);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289090);
  }

  return result;
}

uint64_t sub_1E381E998(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 32);
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

uint64_t sub_1E381E9D8(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

void sub_1E381EA58()
{
  sub_1E381EBC4(319, &qword_1EE289D48, MEMORY[0x1E697E430]);
  if (v1 <= 0x3F)
  {
    v31 = v0;
    OUTLINED_FUNCTION_16_24();
    sub_1E381E7C0(319, v2, v3, MEMORY[0x1E697DCC0]);
    if (v5 <= 0x3F)
    {
      LOBYTE(v28) = 0;
      v32 = v4;
      sub_1E381EC50(319);
      if (v7 <= 0x3F)
      {
        BYTE1(v28) = 0;
        v33 = v6;
        OUTLINED_FUNCTION_20_25(v6, &qword_1EE259C58, &unk_1F5D8B8B8);
        if (v9 <= 0x3F)
        {
          BYTE2(v28) = 0;
          v34 = v8;
          sub_1E381ECE4(319);
          if (v11 <= 0x3F)
          {
            HIBYTE(v28) = 0;
            v35 = v10;
            type metadata accessor for CGSize(319);
            if (v13 <= 0x3F)
            {
              LOBYTE(v29) = 0;
              v36 = v12;
              v14 = type metadata accessor for CollectionViewModel();
              if (v15 <= 0x3F)
              {
                HIBYTE(v29) = 0;
                v37 = v14;
                OUTLINED_FUNCTION_3_38(v14, &qword_1EE288680, MEMORY[0x1E69E7DE0]);
                if (v17 <= 0x3F)
                {
                  v38 = v16;
                  OUTLINED_FUNCTION_3_38(v16, &qword_1EE288670, MEMORY[0x1E697DA60]);
                  if (v19 <= 0x3F)
                  {
                    OUTLINED_FUNCTION_23_21(v18, v19, v20, v21, v22, v23, v24, v25, v26, *v27, *&v27[4], v27[6], 0, v28, v29, 0, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39);
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

void sub_1E381EBC4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for CollectionInteractor(255);
    OUTLINED_FUNCTION_1_69();
    v8 = sub_1E3820244(v7);
    v9 = a3(a1, v6, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1E381EC50(uint64_t a1)
{
  if (!qword_1EE2892D8)
  {
    type metadata accessor for AppEnvironment(255);
    sub_1E3820244(&qword_1EE283350);
    v1 = sub_1E4201764();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE2892D8);
    }
  }
}

void sub_1E381ECE4(uint64_t a1)
{
  if (!qword_1EE23ACC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECF2C3F0, qword_1E42A0B50);
    v1 = sub_1E4207104();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE23ACC8);
    }
  }
}