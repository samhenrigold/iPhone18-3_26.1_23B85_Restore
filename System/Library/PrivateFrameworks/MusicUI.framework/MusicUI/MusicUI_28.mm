unint64_t sub_2169559A4()
{
  result = qword_27CABDBD0;
  if (!qword_27CABDBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABDBD0);
  }

  return result;
}

uint64_t sub_216955A20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v17 = (*(a7 + 56) + **(a7 + 56));
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_2167AF644;

  return v17(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_216955B7C()
{
  OUTLINED_FUNCTION_13_26();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_1_71();
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_6_41(v1);
  OUTLINED_FUNCTION_7_42();
  OUTLINED_FUNCTION_2_57();
  *v0 = v2;
  OUTLINED_FUNCTION_0_87();
  OUTLINED_FUNCTION_12_7();

  return sub_216955C1C(v3, v4, v5, v6, v7);
}

uint64_t sub_216955C1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v6[8] = type metadata accessor for CatalogPagePresenter.State(255, AssociatedTypeWitness, AssociatedConformanceWitness, v9);
  v10 = sub_21700F164();
  v6[9] = v10;
  OUTLINED_FUNCTION_2(v10);
  v6[10] = v11;
  v6[11] = OUTLINED_FUNCTION_80();
  v12 = swift_getAssociatedTypeWitness();
  v6[12] = v12;
  v13 = sub_21700F164();
  v6[13] = v13;
  OUTLINED_FUNCTION_2(v13);
  v6[14] = v14;
  v6[15] = OUTLINED_FUNCTION_80();
  v6[16] = *(v12 - 8);
  v6[17] = OUTLINED_FUNCTION_80();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6BE8, &unk_2170142F0);
  v6[18] = OUTLINED_FUNCTION_80();
  v15 = sub_217006A94();
  v6[19] = v15;
  OUTLINED_FUNCTION_2(v15);
  v6[20] = v16;
  v6[21] = OUTLINED_FUNCTION_80();
  sub_21700EA34();
  v6[22] = sub_21700EA24();
  v18 = sub_21700E9B4();
  v6[23] = v18;
  v6[24] = v17;

  return MEMORY[0x2822009F8](sub_216955EB4, v18, v17);
}

uint64_t sub_216955EB4()
{
  if (((*(v0[6] + 48))(v0[3], v0[5]) & 1) == 0)
  {
    v6 = v0[2];

    v7 = *MEMORY[0x277D21CA0];
    v8 = sub_21700D2A4();
    (*(*(v8 - 8) + 104))(v6, v7, v8);
    OUTLINED_FUNCTION_10_37();

    OUTLINED_FUNCTION_3();
LABEL_11:

    return v9();
  }

  v2 = v0[18];
  v1 = v0[19];
  v3 = *(v0[6] + 40);
  (v3)(v0[5]);

  sub_217006964();

  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    v4 = v0[18];

    sub_216913EB0(v4);
    sub_2169567C4();
    swift_allocError();
    *v5 = 0;
    swift_willThrow();
LABEL_10:
    OUTLINED_FUNCTION_11_32();

    OUTLINED_FUNCTION_3();
    goto LABEL_11;
  }

  v10 = v0[11];
  v11 = v0[8];
  v13 = v0[5];
  v12 = v0[6];
  (*(v0[20] + 32))(v0[21], v0[18], v0[19]);
  v3(v13, v12);
  sub_216A40254();

  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    v14 = v0[15];
    v16 = v0[11];
    v15 = v0[12];
    v17 = v0[9];
    v18 = v0[10];

    (*(v18 + 8))(v16, v17);
    __swift_storeEnumTagSinglePayload(v14, 1, 1, v15);
LABEL_9:
    v24 = v0[20];
    v23 = v0[21];
    v25 = v0[19];
    (*(v0[14] + 8))(v0[15], v0[13]);
    sub_2169567C4();
    swift_allocError();
    *v26 = 1;
    swift_willThrow();
    (*(v24 + 8))(v23, v25);
    goto LABEL_10;
  }

  v19 = v0[15];
  v20 = v0[11];
  v21 = v0[12];
  v22 = v0[8];
  sub_216A404D8(v22);
  (*(*(v22 - 8) + 8))(v20, v22);
  if (__swift_getEnumTagSinglePayload(v19, 1, v21) == 1)
  {

    goto LABEL_9;
  }

  v37 = v0[6];
  (*(v0[16] + 32))(v0[17], v0[15], v0[12]);
  v36 = (*(v37 + 56) + **(v37 + 56));
  v28 = swift_task_alloc();
  v0[25] = v28;
  *v28 = v0;
  v28[1] = sub_216956340;
  v29 = v0[21];
  v30 = v0[17];
  v31 = v0[6];
  v32 = v0[4];
  v33 = v0[5];
  v34 = v0[2];
  v35 = v0[3];

  return v36(v34, v35, v29, v30, v32, v33, v31);
}

uint64_t sub_216956340()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  v3 = *(v2 + 192);
  v4 = *(v2 + 184);
  if (v0)
  {
    v5 = sub_216956530;
  }

  else
  {
    v5 = sub_21695647C;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_21695647C()
{
  OUTLINED_FUNCTION_13_26();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_9_40();
  (*(v5 + 8))(v2, v3);
  (*(v4 + 8))(v1, v0);
  OUTLINED_FUNCTION_10_37();

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_12_7();

  return v7(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_216956530()
{
  OUTLINED_FUNCTION_13_26();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_9_40();
  (*(v5 + 8))(v2, v3);
  (*(v4 + 8))(v1, v0);
  OUTLINED_FUNCTION_11_32();

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_12_7();

  return v7(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_2169565E4()
{
  OUTLINED_FUNCTION_13_26();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_1_71();
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_6_41(v1);
  OUTLINED_FUNCTION_7_42();
  OUTLINED_FUNCTION_2_57();
  *v0 = v2;
  OUTLINED_FUNCTION_0_87();
  OUTLINED_FUNCTION_12_7();

  return sub_216955C1C(v3, v4, v5, v6, v7);
}

uint64_t sub_216956684()
{
  OUTLINED_FUNCTION_13_26();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_1_71();
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_6_41(v1);
  OUTLINED_FUNCTION_7_42();
  OUTLINED_FUNCTION_2_57();
  *v0 = v2;
  OUTLINED_FUNCTION_0_87();
  OUTLINED_FUNCTION_12_7();

  return sub_216955C1C(v3, v4, v5, v6, v7);
}

uint64_t sub_216956724()
{
  OUTLINED_FUNCTION_13_26();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_1_71();
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_6_41(v1);
  OUTLINED_FUNCTION_7_42();
  OUTLINED_FUNCTION_2_57();
  *v0 = v2;
  OUTLINED_FUNCTION_0_87();
  OUTLINED_FUNCTION_12_7();

  return sub_216955C1C(v3, v4, v5, v6, v7);
}

unint64_t sub_2169567C4()
{
  result = qword_27CABDBD8;
  if (!qword_27CABDBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABDBD8);
  }

  return result;
}

uint64_t sub_216956818()
{
  OUTLINED_FUNCTION_13_26();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_1_71();
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_6_41(v1);
  OUTLINED_FUNCTION_7_42();
  OUTLINED_FUNCTION_2_57();
  *v0 = v2;
  OUTLINED_FUNCTION_0_87();
  OUTLINED_FUNCTION_12_7();

  return sub_216955C1C(v3, v4, v5, v6, v7);
}

_BYTE *storeEnumTagSinglePayload for MappingActionImplementationError(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_216956998()
{
  result = qword_27CABDBE0;
  if (!qword_27CABDBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABDBE0);
  }

  return result;
}

uint64_t sub_216956A3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v169 = a2;
  v172 = a3;
  v5 = type metadata accessor for ContentDescriptor(0);
  MEMORY[0x28223BE20](v5 - 8);
  OUTLINED_FUNCTION_6_0();
  v161 = v6;
  v7 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_0();
  v160 = v11;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v12);
  v13 = OUTLINED_FUNCTION_19_27();
  OUTLINED_FUNCTION_1();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_1_0();
  v150 = v17;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_6_4();
  v151 = v19;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_6_4();
  v152 = v21;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_6_4();
  v154 = v23;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_6_4();
  v153 = v25;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_6_4();
  v159 = v27;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v28);
  v30 = &v149 - v29;
  MEMORY[0x28223BE20](v31);
  v33 = &v149 - v32;
  sub_21700D7A4();
  v158 = 0xD000000000000011;
  sub_21700CE04();
  v165 = v9;
  v35 = *(v9 + 16);
  v34 = v9 + 16;
  v168 = v7;
  v163 = v35;
  v35(v3, v169, v7);
  v155 = v33;
  v156 = v3;
  v36 = a1;
  sub_21700D734();
  sub_21700CE04();
  v37 = sub_21700CDB4();
  v39 = v38;
  v40 = v30;
  v41 = *(v15 + 8);
  v166 = v15 + 8;
  v167 = v13;
  v41(v40, v13);
  v164 = v39;
  if (!v39)
  {
    sub_21700E2E4();
    LODWORD(v42) = v41;
    OUTLINED_FUNCTION_0_88();
    v64 = sub_216957C54(v62, v63, MEMORY[0x277D22550]);
    LODWORD(v45) = OUTLINED_FUNCTION_4(v64);
    v66 = v65;
    v67 = type metadata accessor for SocialProfileEditorHeaderLockup(0);
    *v66 = 25705;
    v66[1] = 0xE200000000000000;
    v66[2] = v67;
    OUTLINED_FUNCTION_50();
    (*(v68 + 104))(v66);
    swift_willThrow();
    v58 = 0;
    OUTLINED_FUNCTION_10_38();
    v61 = v172;
    v55 = v36;
    v57 = v168;
    v59 = v169;
    goto LABEL_16;
  }

  v157 = type metadata accessor for SocialProfileEditorHeaderLockup(0);
  v170 = v37;
  v171 = v39;
  v42 = v172;
  sub_21700F364();
  OUTLINED_FUNCTION_17_5();
  v13 = v159;
  sub_21700CE04();
  v43 = v160;
  v45 = v168;
  v44 = v169;
  v163(v160, v169, v168);
  v47 = v161;
  v46 = v162;
  ContentDescriptor.init(deserializing:using:)(v13, v43, v48, v49, v50, v51, v52, v53, v149, v150, SWORD2(v150), SBYTE6(v150), SHIBYTE(v150), v151, v152, v153, v154, v155, v156, v157, v158, v159, v160);
  v54 = v42;
  v55 = v36;
  v56 = v44;
  v57 = v45;
  if (v46)
  {
    v58 = 0;
    OUTLINED_FUNCTION_10_38();
    v61 = v60;
    goto LABEL_16;
  }

  v159 = 0;
  v160 = v34;
  v69 = v157;
  v70 = v42 + *(v157 + 24);
  v71 = v56;
  v72 = v54;
  sub_2168ED900(v47, v70);
  type metadata accessor for Artwork(0);
  v45 = v55;
  v73 = v69;
  v162 = v41;
  v74 = v155;
  sub_21700CE04();
  v163(v156, v71, v57);
  sub_216957C54(&qword_280E2BF60, type metadata accessor for Artwork, &unk_21705A604);
  sub_21700D734();
  sub_21700CE04();
  v75 = sub_21700CDB4();
  v77 = v76;
  LODWORD(v13) = v166;
  v78 = v167;
  v79 = v162;
  v162(v74, v167);
  v80 = (v72 + v73[7]);
  *v80 = v75;
  v80[1] = v77;
  sub_21700CE04();
  v81 = sub_21700CDB4();
  v83 = v82;
  v84 = OUTLINED_FUNCTION_12_33();
  v79(v84);
  v85 = (v72 + v73[8]);
  *v85 = v81;
  v85[1] = v83;
  sub_21700CE04();
  LOBYTE(v81) = sub_21700CD44();
  v86 = OUTLINED_FUNCTION_12_33();
  v87 = v79;
  v79(v86);
  *(v72 + v73[9]) = v81;
  v88 = v153;
  sub_21700CE04();
  LOBYTE(v81) = sub_21700CD44();
  v87(v88, v78);
  v89 = v73[10];
  v55 = v45;
  LODWORD(v45) = 1415933044;
  *(v72 + v89) = v81 & 1;
  v42 = v154;
  sub_21700CE04();
  v90 = sub_21700CDB4();
  v92 = v91;
  v87(v42, v78);
  if (!v92)
  {
    sub_21700E2E4();
    OUTLINED_FUNCTION_0_88();
    v126 = sub_216957C54(v124, v125, MEMORY[0x277D22550]);
    OUTLINED_FUNCTION_4(v126);
    *v127 = 0x6954726564616568;
    v127[1] = 0xEF74786554656C74;
    v127[2] = v157;
    OUTLINED_FUNCTION_50();
    (*(v128 + 104))();
    swift_willThrow();
    OUTLINED_FUNCTION_10_38();
    v58 = 1;
LABEL_14:
    v57 = v168;
    v59 = v169;
    v41 = v162;
    goto LABEL_15;
  }

  v93 = v55;
  v94 = v157;
  OUTLINED_FUNCTION_17_32();
  *v95 = v90;
  v95[1] = v92;
  v96 = v152;
  sub_21700CE04();
  v97 = sub_21700CDB4();
  v99 = v98;
  v162(v96, v78);
  if (v99)
  {
    OUTLINED_FUNCTION_17_32();
    *v100 = v97;
    v100[1] = v99;
    v101 = v151;
    sub_21700CE04();
    v102 = sub_21700CDB4();
    v104 = v103;
    v162(v101, v78);
    v55 = v93;
    if (v104)
    {
      OUTLINED_FUNCTION_17_32();
      *v105 = v102;
      v105[1] = v104;
      sub_21700CE04();
      v106 = sub_21700CDB4();
      v108 = v107;
      v109 = OUTLINED_FUNCTION_12_33();
      (v162)(v109);
      if (v108)
      {
        v110 = v157;
        OUTLINED_FUNCTION_17_32();
        *v111 = v106;
        v111[1] = v108;
        v112 = v155;
        sub_21700CE04();
        v113 = v168;
        v114 = v169;
        v163(v156, v169, v168);
        sub_216AC6B88();
        v115 = v172;
        *(v172 + *(v110 + 60)) = v116;
        OUTLINED_FUNCTION_17_5();
        sub_21700CE04();
        v117 = sub_21700CDB4();
        v119 = v118;
        (*(v165 + 8))(v114, v113);
        v120 = OUTLINED_FUNCTION_12_33();
        v121 = v162;
        (v162)(v120);
        result = v121(v112, v78);
        v123 = (v115 + *(v157 + 68));
        *v123 = v117;
        v123[1] = v119;
        return result;
      }

      sub_21700E2E4();
      OUTLINED_FUNCTION_0_88();
      v142 = sub_216957C54(v140, v141, MEMORY[0x277D22550]);
      v143 = OUTLINED_FUNCTION_3_0(v142);
      OUTLINED_FUNCTION_11_33(v143, v144);
      OUTLINED_FUNCTION_9_7();
      (*(v145 + 104))();
      swift_willThrow();
      v58 = 1;
      LODWORD(v45) = 1;
      LODWORD(v13) = 1;
      LODWORD(v42) = 1;
    }

    else
    {
      sub_21700E2E4();
      OUTLINED_FUNCTION_0_88();
      v136 = sub_216957C54(v134, v135, MEMORY[0x277D22550]);
      v137 = OUTLINED_FUNCTION_3_0(v136);
      OUTLINED_FUNCTION_11_33(v137, v138);
      OUTLINED_FUNCTION_9_7();
      (*(v139 + 104))();
      swift_willThrow();
      LODWORD(v42) = 0;
      v58 = 1;
      LODWORD(v45) = 1;
      LODWORD(v13) = 1;
    }

    goto LABEL_14;
  }

  sub_21700E2E4();
  OUTLINED_FUNCTION_0_88();
  v131 = sub_216957C54(v129, v130, MEMORY[0x277D22550]);
  OUTLINED_FUNCTION_3_0(v131);
  *v132 = 0xD000000000000016;
  v132[1] = 0x8000000217085220;
  v132[2] = v94;
  OUTLINED_FUNCTION_9_7();
  (*(v133 + 104))();
  swift_willThrow();
  LODWORD(v13) = 0;
  LODWORD(v42) = 0;
  v58 = 1;
  LODWORD(v45) = 1;
  v57 = v168;
  v59 = v169;
  v41 = v162;
  v55 = v93;
LABEL_15:
  v61 = v172;
LABEL_16:
  (*(v165 + 8))(v59, v57);
  v41(v55, v167);
  result = sub_216699820(v61, &qword_27CAB6D58, &unk_217014E30);
  if (v164)
  {
    v146 = type metadata accessor for SocialProfileEditorHeaderLockup(0);
    result = sub_216788110(v61 + *(v146 + 20));
  }

  if (v58)
  {
    v147 = type metadata accessor for SocialProfileEditorHeaderLockup(0);
    sub_2168F3F20(v61 + *(v147 + 24));
    OUTLINED_FUNCTION_13_27();
    result = OUTLINED_FUNCTION_13_27();
    if (!v45)
    {
      goto LABEL_20;
    }
  }

  else if (!v45)
  {
LABEL_20:
    if (v13)
    {
      goto LABEL_21;
    }

    goto LABEL_27;
  }

  type metadata accessor for SocialProfileEditorHeaderLockup(0);
  result = OUTLINED_FUNCTION_13_27();
  if (v13)
  {
LABEL_21:
    type metadata accessor for SocialProfileEditorHeaderLockup(0);
    result = OUTLINED_FUNCTION_13_27();
    if (!v42)
    {
      goto LABEL_22;
    }

    goto LABEL_28;
  }

LABEL_27:
  if (!v42)
  {
LABEL_22:
    if (!v58)
    {
      return result;
    }

    goto LABEL_23;
  }

LABEL_28:
  type metadata accessor for SocialProfileEditorHeaderLockup(0);
  result = OUTLINED_FUNCTION_13_27();
  if (!v58)
  {
    return result;
  }

LABEL_23:
  v148 = type metadata accessor for SocialProfileEditorHeaderLockup(0);
  return sub_216699820(v61 + *(v148 + 64), &qword_27CAB6D60, &qword_217014E40);
}

uint64_t sub_216957714@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v67 = a2;
  v64 = a3;
  v5 = type metadata accessor for ContentDescriptor(0);
  MEMORY[0x28223BE20](v5 - 8);
  OUTLINED_FUNCTION_6_0();
  v58 = v6;
  v7 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_0();
  v57 = v11;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v12);
  v63 = OUTLINED_FUNCTION_19_27();
  OUTLINED_FUNCTION_1();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_1_0();
  v54 = v16;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_6_4();
  v56 = v18;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v19);
  v21 = &v53 - v20;
  MEMORY[0x28223BE20](v22);
  sub_21700D7A4();
  OUTLINED_FUNCTION_17_5();
  sub_21700CE04();
  v61 = v9;
  v62 = v7;
  v55 = *(v9 + 16);
  v55(v3, v67, v7);
  OUTLINED_FUNCTION_12_33();
  sub_21700D734();
  sub_21700CE04();
  v23 = sub_21700CDB4();
  v25 = v24;
  v26 = *(v14 + 8);
  v60 = v14 + 8;
  v26(v21, v63);
  if (v25)
  {
    v27 = type metadata accessor for SocialProfileEditorPlaylistLockup(0);
    v65 = v23;
    v66 = v25;
    v28 = v64;
    sub_21700F364();
    OUTLINED_FUNCTION_17_5();
    v29 = v56;
    sub_21700CE04();
    v30 = v57;
    v31 = v67;
    v55(v57, v67, v62);
    v33 = v58;
    v32 = v59;
    ContentDescriptor.init(deserializing:using:)(v29, v30, v34, v35, v36, v37, v38, v39, v53, v54, SWORD2(v54), SBYTE6(v54), SHIBYTE(v54), v55, v56, v57, v58, v59, v60, v61, v62, v63, v64);
    if (!v32)
    {
      sub_2168ED900(v33, v28 + *(v27 + 28));
      v40 = v54;
      v41 = v31;
      sub_21700CE04();
      v42 = sub_21700CD44();
      (*(v61 + 8))(v41, v62);
      v43 = v63;
      v26(a1, v63);
      result = (v26)(v40, v43);
      *(v28 + *(v27 + 24)) = v42 & 1;
      return result;
    }
  }

  else
  {
    sub_21700E2E4();
    OUTLINED_FUNCTION_0_88();
    v47 = sub_216957C54(v45, v46, MEMORY[0x277D22550]);
    OUTLINED_FUNCTION_3_0(v47);
    v49 = v48;
    v50 = type metadata accessor for SocialProfileEditorPlaylistLockup(0);
    *v49 = 25705;
    v49[1] = 0xE200000000000000;
    v49[2] = v50;
    OUTLINED_FUNCTION_9_7();
    (*(v51 + 104))(v49);
    swift_willThrow();
    v28 = v64;
    v31 = v67;
  }

  (*(v61 + 8))(v31, v62);
  v26(a1, v63);
  result = sub_216699820(v28, &qword_27CAB6D58, &unk_217014E30);
  if (v25)
  {
    v52 = type metadata accessor for SocialProfileEditorPlaylistLockup(0);
    return sub_216788110(v28 + *(v52 + 20));
  }

  return result;
}

uint64_t sub_216957C54(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_216957CEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
  OUTLINED_FUNCTION_36(v6);
  OUTLINED_FUNCTION_29();
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v17 - v9;
  (*(a2 + 40))(a1, a2, v8);
  v11 = type metadata accessor for ContentDescriptor(0);
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    sub_216697664(v10, &qword_27CAB6A00, &unk_217016B60);
    sub_217006924();
    v12 = OUTLINED_FUNCTION_27_22();
    return __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  }

  else
  {
    sub_216C6C5E8(a3);
    return sub_21695BD2C(v10, type metadata accessor for ContentDescriptor);
  }
}

uint64_t sub_216957E04@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6F00, &unk_217015390);
  OUTLINED_FUNCTION_36(v2);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v3);
  v5 = &v22 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDC18, &unk_21702C340);
  OUTLINED_FUNCTION_36(v6);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  v9 = &v22 - v8;
  sub_216957FEC();
  v10 = type metadata accessor for PlayAction(0);
  if (__swift_getEnumTagSinglePayload(v5, 1, v10) == 1)
  {
    v11 = &qword_27CAB6F00;
    v12 = &unk_217015390;
    v13 = v5;
LABEL_6:
    sub_216697664(v13, v11, v12);
    goto LABEL_7;
  }

  v14 = *&v5[*(v10 + 20)];
  sub_21700DF14();
  OUTLINED_FUNCTION_0_89();
  sub_21695BD2C(v5, v15);
  if (v14)
  {
    sub_216CE0898(v14, v9);

    v16 = type metadata accessor for PlayActionItem(0);
    if (__swift_getEnumTagSinglePayload(v9, 1, v16) != 1)
    {
      sub_216681B04(&v9[*(v16 + 24)], a1, &qword_27CAB6A00, &unk_217016B60);
      return sub_21695BD2C(v9, type metadata accessor for PlayActionItem);
    }

    v11 = &qword_27CABDC18;
    v12 = &unk_21702C340;
    v13 = v9;
    goto LABEL_6;
  }

LABEL_7:
  type metadata accessor for ContentDescriptor(0);
  v17 = OUTLINED_FUNCTION_27_22();
  return __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
}

void sub_216957FEC()
{
  OUTLINED_FUNCTION_49();
  v7 = v6;
  v46 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB89C0, &qword_21701AB00);
  OUTLINED_FUNCTION_36(v9);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  v12 = &v47[-v11 - 8];
  sub_21700D3B4();
  OUTLINED_FUNCTION_10_39();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v47[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6F00, &unk_217015390);
  OUTLINED_FUNCTION_36(v18);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v19);
  v20 = OUTLINED_FUNCTION_55_1();
  type metadata accessor for PlayAction(v20);
  OUTLINED_FUNCTION_14_29();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_7_44();
  MEMORY[0x28223BE20](v22);
  v23 = OUTLINED_FUNCTION_57();
  v24 = *(v7(v23) + 40);
  sub_216681B04(v0 + v24, v49, &qword_27CAB6DB0, &qword_217016C00);
  if (v50)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D68, &qword_2170153A0);
    OUTLINED_FUNCTION_53_12();
    v27 = OUTLINED_FUNCTION_45_17(v4, v25, v26);
    OUTLINED_FUNCTION_43_18(v4, v27 ^ 1u);
    OUTLINED_FUNCTION_12_4(v4);
    if (!v28)
    {
      sub_21695BCCC(v4, v5, type metadata accessor for PlayAction);
      OUTLINED_FUNCTION_54_13(v5);
      v29 = v14;
      v30 = 0;
LABEL_15:
      OUTLINED_FUNCTION_43_18(v29, v30);
      OUTLINED_FUNCTION_26();
      return;
    }
  }

  else
  {
    sub_216697664(v49, &qword_27CAB6DB0, &qword_217016C00);
    OUTLINED_FUNCTION_38_2();
    __swift_storeEnumTagSinglePayload(v31, v32, v33, v1);
  }

  sub_216697664(v4, &qword_27CAB6F00, &unk_217015390);
  sub_216681B04(v0 + v24, v49, &qword_27CAB6DB0, &qword_217016C00);
  if (!v50)
  {
    sub_216697664(v49, &qword_27CAB6DB0, &qword_217016C00);
    OUTLINED_FUNCTION_38_2();
    __swift_storeEnumTagSinglePayload(v40, v41, v42, v2);
LABEL_13:
    sub_216697664(v12, &qword_27CAB89C0, &qword_21701AB00);
LABEL_14:
    v29 = v46;
    v30 = 1;
    goto LABEL_15;
  }

  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D68, &qword_2170153A0);
  v35 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v12, v35 ^ 1u, 1, v2);
  if (__swift_getEnumTagSinglePayload(v12, 1, v2) == 1)
  {
    goto LABEL_13;
  }

  (*(v14 + 32))(v17, v12, v2);
  v36 = sub_21700D384();
  v37 = 0;
  v38 = *(v36 + 16);
  for (i = v36 + 32; ; i += 40)
  {
    if (v38 == v37)
    {
      (*(v14 + 8))(v17, v2);

      goto LABEL_14;
    }

    if (v37 >= *(v36 + 16))
    {
      break;
    }

    sub_2167B7D58(i, v48);
    sub_2167B7D58(v48, v47);
    if (OUTLINED_FUNCTION_45_17(v3, v47, v34))
    {
      (*(v14 + 8))(v17, v2);

      OUTLINED_FUNCTION_0_89();
      sub_21695BD2C(v3, v43);
      v44 = OUTLINED_FUNCTION_47_16();
      v30 = OUTLINED_FUNCTION_45_17(v44, v45, v34) ^ 1;
      v29 = v14 + 8;
      goto LABEL_15;
    }

    ++v37;
    __swift_destroy_boxed_opaque_existential_1Tm(v48);
  }

  __break(1u);
}

void sub_2169583F4()
{
  OUTLINED_FUNCTION_49();
  v51 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB89C0, &qword_21701AB00);
  OUTLINED_FUNCTION_36(v8);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_30_21();
  OUTLINED_FUNCTION_10_39();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_9_41(v11, v48);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6F00, &unk_217015390);
  v13 = OUTLINED_FUNCTION_36(v12);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_7_44();
  MEMORY[0x28223BE20](v14);
  v15 = OUTLINED_FUNCTION_17_33();
  type metadata accessor for PlayAction(v15);
  OUTLINED_FUNCTION_14_29();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_6_42(v17, v49);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_15_30();
  MEMORY[0x28223BE20](v19);
  v20 = OUTLINED_FUNCTION_19_28();
  v21 = type metadata accessor for VerticalVideoLockup(v20);
  v22 = *(v21 + 56);
  OUTLINED_FUNCTION_46_15(v21, v23, &qword_27CAB6DB0, &qword_217016C00);
  if (v53)
  {
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D68, &qword_2170153A0);
    v25 = OUTLINED_FUNCTION_26_24(v24);
    OUTLINED_FUNCTION_5_45(v25);
    if (!v26)
    {
      OUTLINED_FUNCTION_1_72();
      sub_21695BCCC(v0, v5, v27);
      OUTLINED_FUNCTION_31_25();
      v28 = v0;
LABEL_16:
      v42 = 0;
LABEL_21:
      OUTLINED_FUNCTION_43_18(v28, v42);
      OUTLINED_FUNCTION_26();
      return;
    }
  }

  else
  {
    sub_216697664(v52, &qword_27CAB6DB0, &qword_217016C00);
    v29 = OUTLINED_FUNCTION_27_22();
    __swift_storeEnumTagSinglePayload(v29, v30, v31, v2);
  }

  v32 = sub_216697664(v0, &qword_27CAB6F00, &unk_217015390);
  OUTLINED_FUNCTION_46_15(v32, v33, &qword_27CAB6DB0, &qword_217016C00);
  if (!v53)
  {
    sub_216697664(v52, &qword_27CAB6DB0, &qword_217016C00);
    OUTLINED_FUNCTION_29_21();
LABEL_13:
    sub_216697664(v4, &qword_27CAB89C0, &qword_21701AB00);
    OUTLINED_FUNCTION_49_15(&qword_27CAB6DB0, &qword_217016C00, *(v21 + 24));
    if (v53)
    {
      v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D68, &qword_2170153A0);
      v40 = OUTLINED_FUNCTION_25_22(v39);
      OUTLINED_FUNCTION_4_45(v40);
      v1 = v51;
      if (!v26)
      {
        OUTLINED_FUNCTION_2_58();
        sub_21695BCCC(v3, v50, v41);
        OUTLINED_FUNCTION_35_18();
        v28 = v51;
        goto LABEL_16;
      }
    }

    else
    {
      sub_216697664(v52, &qword_27CAB6DB0, &qword_217016C00);
      OUTLINED_FUNCTION_13_28();
    }

    sub_216697664(v3, &qword_27CAB6F00, &unk_217015390);
    v28 = v1;
LABEL_20:
    v42 = 1;
    goto LABEL_21;
  }

  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D68, &qword_2170153A0);
  v35 = OUTLINED_FUNCTION_21_26(v34);
  OUTLINED_FUNCTION_3_64(v35);
  if (v26)
  {
    goto LABEL_13;
  }

  v36 = OUTLINED_FUNCTION_8_38();
  v37(v36);
  sub_21700D384();
  OUTLINED_FUNCTION_18_26();
  while (1)
  {
    if (v4 == v22)
    {
      v43 = OUTLINED_FUNCTION_22_29();
      v44(v43);

      v28 = v51;
      goto LABEL_20;
    }

    OUTLINED_FUNCTION_37_21();
    if (v38)
    {
      break;
    }

    OUTLINED_FUNCTION_51_5();
    OUTLINED_FUNCTION_50_11();
    if (OUTLINED_FUNCTION_24_23())
    {
      v45 = OUTLINED_FUNCTION_22_29();
      v46(v45);

      OUTLINED_FUNCTION_0_89();
      sub_21695BD2C(v6, v47);
      OUTLINED_FUNCTION_11_34();
      v28 = OUTLINED_FUNCTION_40_13();
      goto LABEL_21;
    }

    OUTLINED_FUNCTION_28_24();
  }

  __break(1u);
}

void sub_2169587B4()
{
  OUTLINED_FUNCTION_49();
  v51 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB89C0, &qword_21701AB00);
  OUTLINED_FUNCTION_36(v8);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_30_21();
  OUTLINED_FUNCTION_10_39();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_9_41(v11, v48);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6F00, &unk_217015390);
  v13 = OUTLINED_FUNCTION_36(v12);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_7_44();
  MEMORY[0x28223BE20](v14);
  v15 = OUTLINED_FUNCTION_17_33();
  type metadata accessor for PlayAction(v15);
  OUTLINED_FUNCTION_14_29();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_6_42(v17, v49);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_15_30();
  MEMORY[0x28223BE20](v19);
  v20 = OUTLINED_FUNCTION_19_28();
  v21 = type metadata accessor for TopSearchLockup(v20);
  v22 = *(v21 + 68);
  OUTLINED_FUNCTION_46_15(v21, v23, &qword_27CAB6DB0, &qword_217016C00);
  if (v53)
  {
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D68, &qword_2170153A0);
    v25 = OUTLINED_FUNCTION_26_24(v24);
    OUTLINED_FUNCTION_5_45(v25);
    if (!v26)
    {
      OUTLINED_FUNCTION_1_72();
      sub_21695BCCC(v0, v5, v27);
      OUTLINED_FUNCTION_31_25();
      v28 = v0;
LABEL_16:
      v42 = 0;
LABEL_21:
      OUTLINED_FUNCTION_43_18(v28, v42);
      OUTLINED_FUNCTION_26();
      return;
    }
  }

  else
  {
    sub_216697664(v52, &qword_27CAB6DB0, &qword_217016C00);
    v29 = OUTLINED_FUNCTION_27_22();
    __swift_storeEnumTagSinglePayload(v29, v30, v31, v2);
  }

  v32 = sub_216697664(v0, &qword_27CAB6F00, &unk_217015390);
  OUTLINED_FUNCTION_46_15(v32, v33, &qword_27CAB6DB0, &qword_217016C00);
  if (!v53)
  {
    sub_216697664(v52, &qword_27CAB6DB0, &qword_217016C00);
    OUTLINED_FUNCTION_29_21();
LABEL_13:
    sub_216697664(v4, &qword_27CAB89C0, &qword_21701AB00);
    OUTLINED_FUNCTION_49_15(&qword_27CAB6DB0, &qword_217016C00, *(v21 + 24));
    if (v53)
    {
      v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D68, &qword_2170153A0);
      v40 = OUTLINED_FUNCTION_25_22(v39);
      OUTLINED_FUNCTION_4_45(v40);
      v1 = v51;
      if (!v26)
      {
        OUTLINED_FUNCTION_2_58();
        sub_21695BCCC(v3, v50, v41);
        OUTLINED_FUNCTION_35_18();
        v28 = v51;
        goto LABEL_16;
      }
    }

    else
    {
      sub_216697664(v52, &qword_27CAB6DB0, &qword_217016C00);
      OUTLINED_FUNCTION_13_28();
    }

    sub_216697664(v3, &qword_27CAB6F00, &unk_217015390);
    v28 = v1;
LABEL_20:
    v42 = 1;
    goto LABEL_21;
  }

  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D68, &qword_2170153A0);
  v35 = OUTLINED_FUNCTION_21_26(v34);
  OUTLINED_FUNCTION_3_64(v35);
  if (v26)
  {
    goto LABEL_13;
  }

  v36 = OUTLINED_FUNCTION_8_38();
  v37(v36);
  sub_21700D384();
  OUTLINED_FUNCTION_18_26();
  while (1)
  {
    if (v4 == v22)
    {
      v43 = OUTLINED_FUNCTION_22_29();
      v44(v43);

      v28 = v51;
      goto LABEL_20;
    }

    OUTLINED_FUNCTION_37_21();
    if (v38)
    {
      break;
    }

    OUTLINED_FUNCTION_51_5();
    OUTLINED_FUNCTION_50_11();
    if (OUTLINED_FUNCTION_24_23())
    {
      v45 = OUTLINED_FUNCTION_22_29();
      v46(v45);

      OUTLINED_FUNCTION_0_89();
      sub_21695BD2C(v6, v47);
      OUTLINED_FUNCTION_11_34();
      v28 = OUTLINED_FUNCTION_40_13();
      goto LABEL_21;
    }

    OUTLINED_FUNCTION_28_24();
  }

  __break(1u);
}

void sub_216958B74()
{
  OUTLINED_FUNCTION_49();
  v51 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB89C0, &qword_21701AB00);
  OUTLINED_FUNCTION_36(v8);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_30_21();
  OUTLINED_FUNCTION_10_39();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_9_41(v11, v48);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6F00, &unk_217015390);
  v13 = OUTLINED_FUNCTION_36(v12);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_7_44();
  MEMORY[0x28223BE20](v14);
  v15 = OUTLINED_FUNCTION_17_33();
  type metadata accessor for PlayAction(v15);
  OUTLINED_FUNCTION_14_29();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_6_42(v17, v49);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_15_30();
  MEMORY[0x28223BE20](v19);
  v20 = OUTLINED_FUNCTION_19_28();
  v21 = type metadata accessor for SquareLockup(v20);
  v22 = *(v21 + 76);
  OUTLINED_FUNCTION_46_15(v21, v23, &qword_27CAB6DB0, &qword_217016C00);
  if (v53)
  {
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D68, &qword_2170153A0);
    v25 = OUTLINED_FUNCTION_26_24(v24);
    OUTLINED_FUNCTION_5_45(v25);
    if (!v26)
    {
      OUTLINED_FUNCTION_1_72();
      sub_21695BCCC(v0, v5, v27);
      OUTLINED_FUNCTION_31_25();
      v28 = v0;
LABEL_16:
      v42 = 0;
LABEL_21:
      OUTLINED_FUNCTION_43_18(v28, v42);
      OUTLINED_FUNCTION_26();
      return;
    }
  }

  else
  {
    sub_216697664(v52, &qword_27CAB6DB0, &qword_217016C00);
    v29 = OUTLINED_FUNCTION_27_22();
    __swift_storeEnumTagSinglePayload(v29, v30, v31, v2);
  }

  v32 = sub_216697664(v0, &qword_27CAB6F00, &unk_217015390);
  OUTLINED_FUNCTION_46_15(v32, v33, &qword_27CAB6DB0, &qword_217016C00);
  if (!v53)
  {
    sub_216697664(v52, &qword_27CAB6DB0, &qword_217016C00);
    OUTLINED_FUNCTION_29_21();
LABEL_13:
    sub_216697664(v4, &qword_27CAB89C0, &qword_21701AB00);
    OUTLINED_FUNCTION_49_15(&qword_27CAB6DB0, &qword_217016C00, *(v21 + 72));
    if (v53)
    {
      v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D68, &qword_2170153A0);
      v40 = OUTLINED_FUNCTION_25_22(v39);
      OUTLINED_FUNCTION_4_45(v40);
      v1 = v51;
      if (!v26)
      {
        OUTLINED_FUNCTION_2_58();
        sub_21695BCCC(v3, v50, v41);
        OUTLINED_FUNCTION_35_18();
        v28 = v51;
        goto LABEL_16;
      }
    }

    else
    {
      sub_216697664(v52, &qword_27CAB6DB0, &qword_217016C00);
      OUTLINED_FUNCTION_13_28();
    }

    sub_216697664(v3, &qword_27CAB6F00, &unk_217015390);
    v28 = v1;
LABEL_20:
    v42 = 1;
    goto LABEL_21;
  }

  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D68, &qword_2170153A0);
  v35 = OUTLINED_FUNCTION_21_26(v34);
  OUTLINED_FUNCTION_3_64(v35);
  if (v26)
  {
    goto LABEL_13;
  }

  v36 = OUTLINED_FUNCTION_8_38();
  v37(v36);
  sub_21700D384();
  OUTLINED_FUNCTION_18_26();
  while (1)
  {
    if (v4 == v22)
    {
      v43 = OUTLINED_FUNCTION_22_29();
      v44(v43);

      v28 = v51;
      goto LABEL_20;
    }

    OUTLINED_FUNCTION_37_21();
    if (v38)
    {
      break;
    }

    OUTLINED_FUNCTION_51_5();
    OUTLINED_FUNCTION_50_11();
    if (OUTLINED_FUNCTION_24_23())
    {
      v45 = OUTLINED_FUNCTION_22_29();
      v46(v45);

      OUTLINED_FUNCTION_0_89();
      sub_21695BD2C(v6, v47);
      OUTLINED_FUNCTION_11_34();
      v28 = OUTLINED_FUNCTION_40_13();
      goto LABEL_21;
    }

    OUTLINED_FUNCTION_28_24();
  }

  __break(1u);
}

void sub_216958F34()
{
  OUTLINED_FUNCTION_49();
  v51 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB89C0, &qword_21701AB00);
  OUTLINED_FUNCTION_36(v8);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_30_21();
  OUTLINED_FUNCTION_10_39();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_9_41(v11, v48);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6F00, &unk_217015390);
  v13 = OUTLINED_FUNCTION_36(v12);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_7_44();
  MEMORY[0x28223BE20](v14);
  v15 = OUTLINED_FUNCTION_17_33();
  type metadata accessor for PlayAction(v15);
  OUTLINED_FUNCTION_14_29();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_6_42(v17, v49);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_15_30();
  MEMORY[0x28223BE20](v19);
  v20 = OUTLINED_FUNCTION_19_28();
  v21 = _s6LockupVMa(v20);
  v22 = *(v21 + 44);
  OUTLINED_FUNCTION_46_15(v21, v23, &qword_27CAB6DB0, &qword_217016C00);
  if (v53)
  {
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D68, &qword_2170153A0);
    v25 = OUTLINED_FUNCTION_26_24(v24);
    OUTLINED_FUNCTION_5_45(v25);
    if (!v26)
    {
      OUTLINED_FUNCTION_1_72();
      sub_21695BCCC(v0, v5, v27);
      OUTLINED_FUNCTION_31_25();
      v28 = v0;
LABEL_16:
      v42 = 0;
LABEL_21:
      OUTLINED_FUNCTION_43_18(v28, v42);
      OUTLINED_FUNCTION_26();
      return;
    }
  }

  else
  {
    sub_216697664(v52, &qword_27CAB6DB0, &qword_217016C00);
    v29 = OUTLINED_FUNCTION_27_22();
    __swift_storeEnumTagSinglePayload(v29, v30, v31, v2);
  }

  v32 = sub_216697664(v0, &qword_27CAB6F00, &unk_217015390);
  OUTLINED_FUNCTION_46_15(v32, v33, &qword_27CAB6DB0, &qword_217016C00);
  if (!v53)
  {
    sub_216697664(v52, &qword_27CAB6DB0, &qword_217016C00);
    OUTLINED_FUNCTION_29_21();
LABEL_13:
    sub_216697664(v4, &qword_27CAB89C0, &qword_21701AB00);
    OUTLINED_FUNCTION_49_15(&qword_27CAB6DB0, &qword_217016C00, *(v21 + 32));
    if (v53)
    {
      v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D68, &qword_2170153A0);
      v40 = OUTLINED_FUNCTION_25_22(v39);
      OUTLINED_FUNCTION_4_45(v40);
      v1 = v51;
      if (!v26)
      {
        OUTLINED_FUNCTION_2_58();
        sub_21695BCCC(v3, v50, v41);
        OUTLINED_FUNCTION_35_18();
        v28 = v51;
        goto LABEL_16;
      }
    }

    else
    {
      sub_216697664(v52, &qword_27CAB6DB0, &qword_217016C00);
      OUTLINED_FUNCTION_13_28();
    }

    sub_216697664(v3, &qword_27CAB6F00, &unk_217015390);
    v28 = v1;
LABEL_20:
    v42 = 1;
    goto LABEL_21;
  }

  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D68, &qword_2170153A0);
  v35 = OUTLINED_FUNCTION_21_26(v34);
  OUTLINED_FUNCTION_3_64(v35);
  if (v26)
  {
    goto LABEL_13;
  }

  v36 = OUTLINED_FUNCTION_8_38();
  v37(v36);
  sub_21700D384();
  OUTLINED_FUNCTION_18_26();
  while (1)
  {
    if (v4 == v22)
    {
      v43 = OUTLINED_FUNCTION_22_29();
      v44(v43);

      v28 = v51;
      goto LABEL_20;
    }

    OUTLINED_FUNCTION_37_21();
    if (v38)
    {
      break;
    }

    OUTLINED_FUNCTION_51_5();
    OUTLINED_FUNCTION_50_11();
    if (OUTLINED_FUNCTION_24_23())
    {
      v45 = OUTLINED_FUNCTION_22_29();
      v46(v45);

      OUTLINED_FUNCTION_0_89();
      sub_21695BD2C(v6, v47);
      OUTLINED_FUNCTION_11_34();
      v28 = OUTLINED_FUNCTION_40_13();
      goto LABEL_21;
    }

    OUTLINED_FUNCTION_28_24();
  }

  __break(1u);
}

void sub_2169592F4()
{
  OUTLINED_FUNCTION_49();
  v56 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB89C0, &qword_21701AB00);
  OUTLINED_FUNCTION_36(v9);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_30_21();
  OUTLINED_FUNCTION_10_39();
  v55 = v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6F00, &unk_217015390);
  v16 = OUTLINED_FUNCTION_36(v15);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_7_44();
  MEMORY[0x28223BE20](v17);
  v18 = OUTLINED_FUNCTION_57();
  type metadata accessor for PlayAction(v18);
  OUTLINED_FUNCTION_14_29();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_77();
  v54 = v20 - v21;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_15_30();
  MEMORY[0x28223BE20](v23);
  v24 = OUTLINED_FUNCTION_17_33();
  v25 = *(type metadata accessor for RecentSearchLockup(v24) + 48);
  sub_216681B04(v1 + v25, v59, &qword_27CAB6DB0, &qword_217016C00);
  if (v60)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D68, &qword_2170153A0);
    OUTLINED_FUNCTION_53_12();
    v28 = OUTLINED_FUNCTION_45_17(v7, v26, v27);
    OUTLINED_FUNCTION_43_18(v7, v28 ^ 1u);
    OUTLINED_FUNCTION_12_4(v7);
    if (!v29)
    {
      OUTLINED_FUNCTION_1_72();
      sub_21695BCCC(v7, v0, v30);
      OUTLINED_FUNCTION_54_13(v0);
      v31 = v0;
LABEL_16:
      v47 = 0;
LABEL_21:
      OUTLINED_FUNCTION_43_18(v31, v47);
      OUTLINED_FUNCTION_26();
      return;
    }
  }

  else
  {
    sub_216697664(v59, &qword_27CAB6DB0, &qword_217016C00);
    OUTLINED_FUNCTION_38_2();
    __swift_storeEnumTagSinglePayload(v32, v33, v34, v2);
  }

  sub_216697664(v7, &qword_27CAB6F00, &unk_217015390);
  sub_216681B04(v1 + v25, v59, &qword_27CAB6DB0, &qword_217016C00);
  if (!v60)
  {
    sub_216697664(v59, &qword_27CAB6DB0, &qword_217016C00);
    OUTLINED_FUNCTION_29_21();
LABEL_13:
    sub_216697664(v5, &qword_27CAB89C0, &qword_21701AB00);
    sub_216681B04(v1 + 40, v59, &qword_27CAB6DB0, &qword_217016C00);
    if (v60)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D68, &qword_2170153A0);
      OUTLINED_FUNCTION_53_12();
      v44 = OUTLINED_FUNCTION_45_17(v4, v42, v43);
      OUTLINED_FUNCTION_4_45(v44);
      v45 = v56;
      if (!v29)
      {
        OUTLINED_FUNCTION_2_58();
        sub_21695BCCC(v4, v54, v46);
        OUTLINED_FUNCTION_35_18();
        v31 = v45;
        goto LABEL_16;
      }
    }

    else
    {
      sub_216697664(v59, &qword_27CAB6DB0, &qword_217016C00);
      OUTLINED_FUNCTION_38_2();
      __swift_storeEnumTagSinglePayload(v48, v49, v50, v2);
      v45 = v56;
    }

    sub_216697664(v4, &qword_27CAB6F00, &unk_217015390);
    v31 = v45;
LABEL_20:
    v47 = 1;
    goto LABEL_21;
  }

  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D68, &qword_2170153A0);
  v36 = OUTLINED_FUNCTION_52_11(v35);
  OUTLINED_FUNCTION_3_64(v36);
  if (v29)
  {
    goto LABEL_13;
  }

  v37 = v55;
  (*(v55 + 32))(v14, v5, v3);
  v38 = sub_21700D384();
  v39 = 0;
  v40 = *(v38 + 16);
  for (i = v38 + 32; ; i += 40)
  {
    if (v40 == v39)
    {
      (*(v37 + 8))(v14, v3);

      v31 = v56;
      goto LABEL_20;
    }

    if (v39 >= *(v38 + 16))
    {
      break;
    }

    sub_2167B7D58(i, v58);
    sub_2167B7D58(v58, v57);
    if (OUTLINED_FUNCTION_45_17(v6, v57, v7))
    {
      (*(v37 + 8))(v14, v3);

      OUTLINED_FUNCTION_0_89();
      sub_21695BD2C(v6, v51);
      v52 = OUTLINED_FUNCTION_47_16();
      v47 = OUTLINED_FUNCTION_45_17(v52, v53, v7) ^ 1;
      v31 = i;
      goto LABEL_21;
    }

    ++v39;
    __swift_destroy_boxed_opaque_existential_1Tm(v58);
  }

  __break(1u);
}

void sub_216959784()
{
  OUTLINED_FUNCTION_49();
  v58 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB89C0, &qword_21701AB00);
  OUTLINED_FUNCTION_36(v8);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_30_21();
  OUTLINED_FUNCTION_10_39();
  v56 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_6_0();
  v57 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6F00, &unk_217015390);
  v14 = OUTLINED_FUNCTION_36(v13);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_77();
  v17 = v15 - v16;
  MEMORY[0x28223BE20](v18);
  v19 = OUTLINED_FUNCTION_57();
  type metadata accessor for PlayAction(v19);
  OUTLINED_FUNCTION_14_29();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_77();
  v23 = v21 - v22;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_15_30();
  MEMORY[0x28223BE20](v25);
  v26 = OUTLINED_FUNCTION_17_33();
  v27 = *(type metadata accessor for PosterLockup(v26) + 56);
  sub_216681B04(v1 + v27, v61, &qword_27CAB6DB0, &qword_217016C00);
  if (v62)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D68, &qword_2170153A0);
    OUTLINED_FUNCTION_53_12();
    v30 = OUTLINED_FUNCTION_45_17(v6, v28, v29);
    OUTLINED_FUNCTION_43_18(v6, v30 ^ 1u);
    OUTLINED_FUNCTION_12_4(v6);
    if (!v31)
    {
      OUTLINED_FUNCTION_1_72();
      sub_21695BCCC(v6, v0, v32);
      OUTLINED_FUNCTION_54_13(v0);
      v33 = v0;
LABEL_16:
      v49 = 0;
LABEL_21:
      OUTLINED_FUNCTION_43_18(v33, v49);
      OUTLINED_FUNCTION_26();
      return;
    }
  }

  else
  {
    sub_216697664(v61, &qword_27CAB6DB0, &qword_217016C00);
    OUTLINED_FUNCTION_38_2();
    __swift_storeEnumTagSinglePayload(v34, v35, v36, v2);
  }

  sub_216697664(v6, &qword_27CAB6F00, &unk_217015390);
  sub_216681B04(v1 + v27, v61, &qword_27CAB6DB0, &qword_217016C00);
  if (!v62)
  {
    sub_216697664(v61, &qword_27CAB6DB0, &qword_217016C00);
    OUTLINED_FUNCTION_29_21();
LABEL_13:
    sub_216697664(v4, &qword_27CAB89C0, &qword_21701AB00);
    sub_21691A23C(v61);
    if (v62)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D68, &qword_2170153A0);
      OUTLINED_FUNCTION_53_12();
      v46 = OUTLINED_FUNCTION_45_17(v17, v44, v45);
      OUTLINED_FUNCTION_43_18(v17, v46 ^ 1u);
      OUTLINED_FUNCTION_12_4(v17);
      v47 = v58;
      if (!v31)
      {
        OUTLINED_FUNCTION_2_58();
        sub_21695BCCC(v17, v23, v48);
        sub_21695BCCC(v23, v58, v0);
        v33 = v58;
        goto LABEL_16;
      }
    }

    else
    {
      sub_216697664(v61, &qword_27CAB6DB0, &qword_217016C00);
      OUTLINED_FUNCTION_38_2();
      __swift_storeEnumTagSinglePayload(v50, v51, v52, v2);
      v47 = v58;
    }

    sub_216697664(v17, &qword_27CAB6F00, &unk_217015390);
    v33 = v47;
LABEL_20:
    v49 = 1;
    goto LABEL_21;
  }

  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D68, &qword_2170153A0);
  v38 = OUTLINED_FUNCTION_52_11(v37);
  OUTLINED_FUNCTION_3_64(v38);
  if (v31)
  {
    goto LABEL_13;
  }

  (*(v56 + 32))(v57, v4, v3);
  v39 = sub_21700D384();
  v40 = 0;
  v41 = *(v39 + 16);
  for (i = v39 + 32; ; i += 40)
  {
    if (v41 == v40)
    {
      (*(v56 + 8))(v57, v3);

      v33 = v58;
      goto LABEL_20;
    }

    OUTLINED_FUNCTION_37_21();
    if (v43)
    {
      break;
    }

    sub_2167B7D58(i, v60);
    sub_2167B7D58(v60, v59);
    if (OUTLINED_FUNCTION_45_17(v5, v59, v6))
    {
      (*(v56 + 8))(v57, v3);

      OUTLINED_FUNCTION_0_89();
      sub_21695BD2C(v5, v53);
      v54 = OUTLINED_FUNCTION_47_16();
      v49 = OUTLINED_FUNCTION_45_17(v54, v55, v6) ^ 1;
      v33 = i;
      goto LABEL_21;
    }

    ++v40;
    __swift_destroy_boxed_opaque_existential_1Tm(v60);
  }

  __break(1u);
}

void sub_216959C10()
{
  OUTLINED_FUNCTION_49();
  v51 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB89C0, &qword_21701AB00);
  OUTLINED_FUNCTION_36(v8);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_30_21();
  OUTLINED_FUNCTION_10_39();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_9_41(v11, v48);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6F00, &unk_217015390);
  v13 = OUTLINED_FUNCTION_36(v12);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_7_44();
  MEMORY[0x28223BE20](v14);
  v15 = OUTLINED_FUNCTION_17_33();
  type metadata accessor for PlayAction(v15);
  OUTLINED_FUNCTION_14_29();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_6_42(v17, v49);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_15_30();
  MEMORY[0x28223BE20](v19);
  v20 = OUTLINED_FUNCTION_19_28();
  v21 = type metadata accessor for PlaylistTrackLockup(v20);
  v22 = *(v21 + 88);
  OUTLINED_FUNCTION_46_15(v21, v23, &qword_27CAB6DB0, &qword_217016C00);
  if (v53)
  {
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D68, &qword_2170153A0);
    v25 = OUTLINED_FUNCTION_26_24(v24);
    OUTLINED_FUNCTION_5_45(v25);
    if (!v26)
    {
      OUTLINED_FUNCTION_1_72();
      sub_21695BCCC(v0, v5, v27);
      OUTLINED_FUNCTION_31_25();
      v28 = v0;
LABEL_16:
      v42 = 0;
LABEL_21:
      OUTLINED_FUNCTION_43_18(v28, v42);
      OUTLINED_FUNCTION_26();
      return;
    }
  }

  else
  {
    sub_216697664(v52, &qword_27CAB6DB0, &qword_217016C00);
    v29 = OUTLINED_FUNCTION_27_22();
    __swift_storeEnumTagSinglePayload(v29, v30, v31, v2);
  }

  v32 = sub_216697664(v0, &qword_27CAB6F00, &unk_217015390);
  OUTLINED_FUNCTION_46_15(v32, v33, &qword_27CAB6DB0, &qword_217016C00);
  if (!v53)
  {
    sub_216697664(v52, &qword_27CAB6DB0, &qword_217016C00);
    OUTLINED_FUNCTION_29_21();
LABEL_13:
    sub_216697664(v4, &qword_27CAB89C0, &qword_21701AB00);
    OUTLINED_FUNCTION_49_15(&qword_27CAB6DB0, &qword_217016C00, *(v21 + 24));
    if (v53)
    {
      v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D68, &qword_2170153A0);
      v40 = OUTLINED_FUNCTION_25_22(v39);
      OUTLINED_FUNCTION_4_45(v40);
      v1 = v51;
      if (!v26)
      {
        OUTLINED_FUNCTION_2_58();
        sub_21695BCCC(v3, v50, v41);
        OUTLINED_FUNCTION_35_18();
        v28 = v51;
        goto LABEL_16;
      }
    }

    else
    {
      sub_216697664(v52, &qword_27CAB6DB0, &qword_217016C00);
      OUTLINED_FUNCTION_13_28();
    }

    sub_216697664(v3, &qword_27CAB6F00, &unk_217015390);
    v28 = v1;
LABEL_20:
    v42 = 1;
    goto LABEL_21;
  }

  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D68, &qword_2170153A0);
  v35 = OUTLINED_FUNCTION_21_26(v34);
  OUTLINED_FUNCTION_3_64(v35);
  if (v26)
  {
    goto LABEL_13;
  }

  v36 = OUTLINED_FUNCTION_8_38();
  v37(v36);
  sub_21700D384();
  OUTLINED_FUNCTION_18_26();
  while (1)
  {
    if (v4 == v22)
    {
      v43 = OUTLINED_FUNCTION_22_29();
      v44(v43);

      v28 = v51;
      goto LABEL_20;
    }

    OUTLINED_FUNCTION_37_21();
    if (v38)
    {
      break;
    }

    OUTLINED_FUNCTION_51_5();
    OUTLINED_FUNCTION_50_11();
    if (OUTLINED_FUNCTION_24_23())
    {
      v45 = OUTLINED_FUNCTION_22_29();
      v46(v45);

      OUTLINED_FUNCTION_0_89();
      sub_21695BD2C(v6, v47);
      OUTLINED_FUNCTION_11_34();
      v28 = OUTLINED_FUNCTION_40_13();
      goto LABEL_21;
    }

    OUTLINED_FUNCTION_28_24();
  }

  __break(1u);
}

void sub_216959FD0()
{
  OUTLINED_FUNCTION_49();
  v51 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB89C0, &qword_21701AB00);
  OUTLINED_FUNCTION_36(v8);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_30_21();
  OUTLINED_FUNCTION_10_39();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_9_41(v11, v48);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6F00, &unk_217015390);
  v13 = OUTLINED_FUNCTION_36(v12);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_7_44();
  MEMORY[0x28223BE20](v14);
  v15 = OUTLINED_FUNCTION_17_33();
  type metadata accessor for PlayAction(v15);
  OUTLINED_FUNCTION_14_29();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_6_42(v17, v49);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_15_30();
  MEMORY[0x28223BE20](v19);
  v20 = OUTLINED_FUNCTION_19_28();
  v21 = type metadata accessor for LiveRadioGridLockup(v20);
  v22 = *(v21 + 40);
  OUTLINED_FUNCTION_46_15(v21, v23, &qword_27CAB6DB0, &qword_217016C00);
  if (v53)
  {
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D68, &qword_2170153A0);
    v25 = OUTLINED_FUNCTION_26_24(v24);
    OUTLINED_FUNCTION_5_45(v25);
    if (!v26)
    {
      OUTLINED_FUNCTION_1_72();
      sub_21695BCCC(v0, v5, v27);
      OUTLINED_FUNCTION_31_25();
      v28 = v0;
LABEL_16:
      v42 = 0;
LABEL_21:
      OUTLINED_FUNCTION_43_18(v28, v42);
      OUTLINED_FUNCTION_26();
      return;
    }
  }

  else
  {
    sub_216697664(v52, &qword_27CAB6DB0, &qword_217016C00);
    v29 = OUTLINED_FUNCTION_27_22();
    __swift_storeEnumTagSinglePayload(v29, v30, v31, v2);
  }

  v32 = sub_216697664(v0, &qword_27CAB6F00, &unk_217015390);
  OUTLINED_FUNCTION_46_15(v32, v33, &qword_27CAB6DB0, &qword_217016C00);
  if (!v53)
  {
    sub_216697664(v52, &qword_27CAB6DB0, &qword_217016C00);
    OUTLINED_FUNCTION_29_21();
LABEL_13:
    sub_216697664(v4, &qword_27CAB89C0, &qword_21701AB00);
    OUTLINED_FUNCTION_49_15(&qword_27CAB6DB0, &qword_217016C00, *(v21 + 36));
    if (v53)
    {
      v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D68, &qword_2170153A0);
      v40 = OUTLINED_FUNCTION_25_22(v39);
      OUTLINED_FUNCTION_4_45(v40);
      v1 = v51;
      if (!v26)
      {
        OUTLINED_FUNCTION_2_58();
        sub_21695BCCC(v3, v50, v41);
        OUTLINED_FUNCTION_35_18();
        v28 = v51;
        goto LABEL_16;
      }
    }

    else
    {
      sub_216697664(v52, &qword_27CAB6DB0, &qword_217016C00);
      OUTLINED_FUNCTION_13_28();
    }

    sub_216697664(v3, &qword_27CAB6F00, &unk_217015390);
    v28 = v1;
LABEL_20:
    v42 = 1;
    goto LABEL_21;
  }

  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D68, &qword_2170153A0);
  v35 = OUTLINED_FUNCTION_21_26(v34);
  OUTLINED_FUNCTION_3_64(v35);
  if (v26)
  {
    goto LABEL_13;
  }

  v36 = OUTLINED_FUNCTION_8_38();
  v37(v36);
  sub_21700D384();
  OUTLINED_FUNCTION_18_26();
  while (1)
  {
    if (v4 == v22)
    {
      v43 = OUTLINED_FUNCTION_22_29();
      v44(v43);

      v28 = v51;
      goto LABEL_20;
    }

    OUTLINED_FUNCTION_37_21();
    if (v38)
    {
      break;
    }

    OUTLINED_FUNCTION_51_5();
    OUTLINED_FUNCTION_50_11();
    if (OUTLINED_FUNCTION_24_23())
    {
      v45 = OUTLINED_FUNCTION_22_29();
      v46(v45);

      OUTLINED_FUNCTION_0_89();
      sub_21695BD2C(v6, v47);
      OUTLINED_FUNCTION_11_34();
      v28 = OUTLINED_FUNCTION_40_13();
      goto LABEL_21;
    }

    OUTLINED_FUNCTION_28_24();
  }

  __break(1u);
}

void sub_21695A3A8()
{
  OUTLINED_FUNCTION_49();
  v51 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB89C0, &qword_21701AB00);
  OUTLINED_FUNCTION_36(v8);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_30_21();
  OUTLINED_FUNCTION_10_39();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_9_41(v11, v48);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6F00, &unk_217015390);
  v13 = OUTLINED_FUNCTION_36(v12);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_7_44();
  MEMORY[0x28223BE20](v14);
  v15 = OUTLINED_FUNCTION_17_33();
  type metadata accessor for PlayAction(v15);
  OUTLINED_FUNCTION_14_29();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_6_42(v17, v49);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_15_30();
  MEMORY[0x28223BE20](v19);
  v20 = OUTLINED_FUNCTION_19_28();
  v21 = type metadata accessor for HorizontalLockup(v20);
  v22 = *(v21 + 72);
  OUTLINED_FUNCTION_46_15(v21, v23, &qword_27CAB6DB0, &qword_217016C00);
  if (v53)
  {
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D68, &qword_2170153A0);
    v25 = OUTLINED_FUNCTION_26_24(v24);
    OUTLINED_FUNCTION_5_45(v25);
    if (!v26)
    {
      OUTLINED_FUNCTION_1_72();
      sub_21695BCCC(v0, v5, v27);
      OUTLINED_FUNCTION_31_25();
      v28 = v0;
LABEL_16:
      v42 = 0;
LABEL_21:
      OUTLINED_FUNCTION_43_18(v28, v42);
      OUTLINED_FUNCTION_26();
      return;
    }
  }

  else
  {
    sub_216697664(v52, &qword_27CAB6DB0, &qword_217016C00);
    v29 = OUTLINED_FUNCTION_27_22();
    __swift_storeEnumTagSinglePayload(v29, v30, v31, v2);
  }

  v32 = sub_216697664(v0, &qword_27CAB6F00, &unk_217015390);
  OUTLINED_FUNCTION_46_15(v32, v33, &qword_27CAB6DB0, &qword_217016C00);
  if (!v53)
  {
    sub_216697664(v52, &qword_27CAB6DB0, &qword_217016C00);
    OUTLINED_FUNCTION_29_21();
LABEL_13:
    sub_216697664(v4, &qword_27CAB89C0, &qword_21701AB00);
    OUTLINED_FUNCTION_49_15(&qword_27CAB6DB0, &qword_217016C00, *(v21 + 40));
    if (v53)
    {
      v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D68, &qword_2170153A0);
      v40 = OUTLINED_FUNCTION_25_22(v39);
      OUTLINED_FUNCTION_4_45(v40);
      v1 = v51;
      if (!v26)
      {
        OUTLINED_FUNCTION_2_58();
        sub_21695BCCC(v3, v50, v41);
        OUTLINED_FUNCTION_35_18();
        v28 = v51;
        goto LABEL_16;
      }
    }

    else
    {
      sub_216697664(v52, &qword_27CAB6DB0, &qword_217016C00);
      OUTLINED_FUNCTION_13_28();
    }

    sub_216697664(v3, &qword_27CAB6F00, &unk_217015390);
    v28 = v1;
LABEL_20:
    v42 = 1;
    goto LABEL_21;
  }

  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D68, &qword_2170153A0);
  v35 = OUTLINED_FUNCTION_21_26(v34);
  OUTLINED_FUNCTION_3_64(v35);
  if (v26)
  {
    goto LABEL_13;
  }

  v36 = OUTLINED_FUNCTION_8_38();
  v37(v36);
  sub_21700D384();
  OUTLINED_FUNCTION_18_26();
  while (1)
  {
    if (v4 == v22)
    {
      v43 = OUTLINED_FUNCTION_22_29();
      v44(v43);

      v28 = v51;
      goto LABEL_20;
    }

    OUTLINED_FUNCTION_37_21();
    if (v38)
    {
      break;
    }

    OUTLINED_FUNCTION_51_5();
    OUTLINED_FUNCTION_50_11();
    if (OUTLINED_FUNCTION_24_23())
    {
      v45 = OUTLINED_FUNCTION_22_29();
      v46(v45);

      OUTLINED_FUNCTION_0_89();
      sub_21695BD2C(v6, v47);
      OUTLINED_FUNCTION_11_34();
      v28 = OUTLINED_FUNCTION_40_13();
      goto LABEL_21;
    }

    OUTLINED_FUNCTION_28_24();
  }

  __break(1u);
}

void sub_21695A780()
{
  OUTLINED_FUNCTION_49();
  v8 = v7;
  v51 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB89C0, &qword_21701AB00);
  OUTLINED_FUNCTION_36(v10);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_30_21();
  OUTLINED_FUNCTION_10_39();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_9_41(v13, v48);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6F00, &unk_217015390);
  v15 = OUTLINED_FUNCTION_36(v14);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_7_44();
  MEMORY[0x28223BE20](v16);
  v17 = OUTLINED_FUNCTION_17_33();
  type metadata accessor for PlayAction(v17);
  OUTLINED_FUNCTION_14_29();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_6_42(v19, v49);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_15_30();
  MEMORY[0x28223BE20](v21);
  v22 = OUTLINED_FUNCTION_19_28();
  v23 = v8(v22);
  v24 = *(v23 + 60);
  OUTLINED_FUNCTION_46_15(v23, v25, &qword_27CAB6DB0, &qword_217016C00);
  if (v53)
  {
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D68, &qword_2170153A0);
    v27 = OUTLINED_FUNCTION_26_24(v26);
    OUTLINED_FUNCTION_5_45(v27);
    if (!v28)
    {
      sub_21695BCCC(v0, v5, type metadata accessor for PlayAction);
      OUTLINED_FUNCTION_31_25();
      v29 = v0;
LABEL_16:
      v42 = 0;
LABEL_21:
      OUTLINED_FUNCTION_43_18(v29, v42);
      OUTLINED_FUNCTION_26();
      return;
    }
  }

  else
  {
    sub_216697664(v52, &qword_27CAB6DB0, &qword_217016C00);
    v30 = OUTLINED_FUNCTION_27_22();
    __swift_storeEnumTagSinglePayload(v30, v31, v32, v2);
  }

  v33 = sub_216697664(v0, &qword_27CAB6F00, &unk_217015390);
  OUTLINED_FUNCTION_46_15(v33, v34, &qword_27CAB6DB0, &qword_217016C00);
  if (!v53)
  {
    sub_216697664(v52, &qword_27CAB6DB0, &qword_217016C00);
    OUTLINED_FUNCTION_29_21();
LABEL_13:
    sub_216697664(v4, &qword_27CAB89C0, &qword_21701AB00);
    OUTLINED_FUNCTION_49_15(&qword_27CAB6DB0, &qword_217016C00, *(v23 + 24));
    if (v53)
    {
      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D68, &qword_2170153A0);
      v41 = OUTLINED_FUNCTION_25_22(v40);
      OUTLINED_FUNCTION_4_45(v41);
      v1 = v51;
      if (!v28)
      {
        sub_21695BCCC(v3, v50, type metadata accessor for PlayAction);
        OUTLINED_FUNCTION_35_18();
        v29 = v51;
        goto LABEL_16;
      }
    }

    else
    {
      sub_216697664(v52, &qword_27CAB6DB0, &qword_217016C00);
      OUTLINED_FUNCTION_13_28();
    }

    sub_216697664(v3, &qword_27CAB6F00, &unk_217015390);
    v29 = v1;
LABEL_20:
    v42 = 1;
    goto LABEL_21;
  }

  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D68, &qword_2170153A0);
  v36 = OUTLINED_FUNCTION_21_26(v35);
  OUTLINED_FUNCTION_3_64(v36);
  if (v28)
  {
    goto LABEL_13;
  }

  v37 = OUTLINED_FUNCTION_8_38();
  v38(v37);
  sub_21700D384();
  OUTLINED_FUNCTION_18_26();
  while (1)
  {
    if (v4 == v24)
    {
      v43 = OUTLINED_FUNCTION_22_29();
      v44(v43);

      v29 = v51;
      goto LABEL_20;
    }

    OUTLINED_FUNCTION_37_21();
    if (v39)
    {
      break;
    }

    OUTLINED_FUNCTION_51_5();
    OUTLINED_FUNCTION_50_11();
    if (OUTLINED_FUNCTION_24_23())
    {
      v45 = OUTLINED_FUNCTION_22_29();
      v46(v45);

      OUTLINED_FUNCTION_0_89();
      sub_21695BD2C(v6, v47);
      OUTLINED_FUNCTION_11_34();
      v29 = OUTLINED_FUNCTION_40_13();
      goto LABEL_21;
    }

    OUTLINED_FUNCTION_28_24();
  }

  __break(1u);
}

void sub_21695AB68()
{
  OUTLINED_FUNCTION_49();
  v51 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB89C0, &qword_21701AB00);
  OUTLINED_FUNCTION_36(v8);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_30_21();
  OUTLINED_FUNCTION_10_39();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_9_41(v11, v48);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6F00, &unk_217015390);
  v13 = OUTLINED_FUNCTION_36(v12);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_7_44();
  MEMORY[0x28223BE20](v14);
  v15 = OUTLINED_FUNCTION_17_33();
  type metadata accessor for PlayAction(v15);
  OUTLINED_FUNCTION_14_29();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_6_42(v17, v49);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_15_30();
  MEMORY[0x28223BE20](v19);
  v20 = OUTLINED_FUNCTION_19_28();
  v21 = type metadata accessor for TrackLockup(v20);
  v22 = *(v21 + 108);
  OUTLINED_FUNCTION_46_15(v21, v23, &qword_27CAB6DB0, &qword_217016C00);
  if (v53)
  {
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D68, &qword_2170153A0);
    v25 = OUTLINED_FUNCTION_26_24(v24);
    OUTLINED_FUNCTION_5_45(v25);
    if (!v26)
    {
      OUTLINED_FUNCTION_1_72();
      sub_21695BCCC(v0, v5, v27);
      OUTLINED_FUNCTION_31_25();
      v28 = v0;
LABEL_16:
      v42 = 0;
LABEL_21:
      OUTLINED_FUNCTION_43_18(v28, v42);
      OUTLINED_FUNCTION_26();
      return;
    }
  }

  else
  {
    sub_216697664(v52, &qword_27CAB6DB0, &qword_217016C00);
    v29 = OUTLINED_FUNCTION_27_22();
    __swift_storeEnumTagSinglePayload(v29, v30, v31, v2);
  }

  v32 = sub_216697664(v0, &qword_27CAB6F00, &unk_217015390);
  OUTLINED_FUNCTION_46_15(v32, v33, &qword_27CAB6DB0, &qword_217016C00);
  if (!v53)
  {
    sub_216697664(v52, &qword_27CAB6DB0, &qword_217016C00);
    OUTLINED_FUNCTION_29_21();
LABEL_13:
    sub_216697664(v4, &qword_27CAB89C0, &qword_21701AB00);
    OUTLINED_FUNCTION_49_15(&qword_27CAB6DB0, &qword_217016C00, *(v21 + 24));
    if (v53)
    {
      v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D68, &qword_2170153A0);
      v40 = OUTLINED_FUNCTION_25_22(v39);
      OUTLINED_FUNCTION_4_45(v40);
      v1 = v51;
      if (!v26)
      {
        OUTLINED_FUNCTION_2_58();
        sub_21695BCCC(v3, v50, v41);
        OUTLINED_FUNCTION_35_18();
        v28 = v51;
        goto LABEL_16;
      }
    }

    else
    {
      sub_216697664(v52, &qword_27CAB6DB0, &qword_217016C00);
      OUTLINED_FUNCTION_13_28();
    }

    sub_216697664(v3, &qword_27CAB6F00, &unk_217015390);
    v28 = v1;
LABEL_20:
    v42 = 1;
    goto LABEL_21;
  }

  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D68, &qword_2170153A0);
  v35 = OUTLINED_FUNCTION_21_26(v34);
  OUTLINED_FUNCTION_3_64(v35);
  if (v26)
  {
    goto LABEL_13;
  }

  v36 = OUTLINED_FUNCTION_8_38();
  v37(v36);
  sub_21700D384();
  OUTLINED_FUNCTION_18_26();
  while (1)
  {
    if (v4 == v22)
    {
      v43 = OUTLINED_FUNCTION_22_29();
      v44(v43);

      v28 = v51;
      goto LABEL_20;
    }

    OUTLINED_FUNCTION_37_21();
    if (v38)
    {
      break;
    }

    OUTLINED_FUNCTION_51_5();
    OUTLINED_FUNCTION_50_11();
    if (OUTLINED_FUNCTION_24_23())
    {
      v45 = OUTLINED_FUNCTION_22_29();
      v46(v45);

      OUTLINED_FUNCTION_0_89();
      sub_21695BD2C(v6, v47);
      OUTLINED_FUNCTION_11_34();
      v28 = OUTLINED_FUNCTION_40_13();
      goto LABEL_21;
    }

    OUTLINED_FUNCTION_28_24();
  }

  __break(1u);
}

void sub_21695AF28()
{
  OUTLINED_FUNCTION_49();
  v51 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB89C0, &qword_21701AB00);
  OUTLINED_FUNCTION_36(v8);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_30_21();
  OUTLINED_FUNCTION_10_39();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_9_41(v11, v48);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6F00, &unk_217015390);
  v13 = OUTLINED_FUNCTION_36(v12);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_7_44();
  MEMORY[0x28223BE20](v14);
  v15 = OUTLINED_FUNCTION_17_33();
  type metadata accessor for PlayAction(v15);
  OUTLINED_FUNCTION_14_29();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_6_42(v17, v49);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_15_30();
  MEMORY[0x28223BE20](v19);
  v20 = OUTLINED_FUNCTION_19_28();
  v21 = type metadata accessor for AlbumTrackLockup(v20);
  v22 = *(v21 + 92);
  OUTLINED_FUNCTION_46_15(v21, v23, &qword_27CAB6DB0, &qword_217016C00);
  if (v53)
  {
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D68, &qword_2170153A0);
    v25 = OUTLINED_FUNCTION_26_24(v24);
    OUTLINED_FUNCTION_5_45(v25);
    if (!v26)
    {
      OUTLINED_FUNCTION_1_72();
      sub_21695BCCC(v0, v5, v27);
      OUTLINED_FUNCTION_31_25();
      v28 = v0;
LABEL_16:
      v42 = 0;
LABEL_21:
      OUTLINED_FUNCTION_43_18(v28, v42);
      OUTLINED_FUNCTION_26();
      return;
    }
  }

  else
  {
    sub_216697664(v52, &qword_27CAB6DB0, &qword_217016C00);
    v29 = OUTLINED_FUNCTION_27_22();
    __swift_storeEnumTagSinglePayload(v29, v30, v31, v2);
  }

  v32 = sub_216697664(v0, &qword_27CAB6F00, &unk_217015390);
  OUTLINED_FUNCTION_46_15(v32, v33, &qword_27CAB6DB0, &qword_217016C00);
  if (!v53)
  {
    sub_216697664(v52, &qword_27CAB6DB0, &qword_217016C00);
    OUTLINED_FUNCTION_29_21();
LABEL_13:
    sub_216697664(v4, &qword_27CAB89C0, &qword_21701AB00);
    OUTLINED_FUNCTION_49_15(&qword_27CAB6DB0, &qword_217016C00, *(v21 + 24));
    if (v53)
    {
      v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D68, &qword_2170153A0);
      v40 = OUTLINED_FUNCTION_25_22(v39);
      OUTLINED_FUNCTION_4_45(v40);
      v1 = v51;
      if (!v26)
      {
        OUTLINED_FUNCTION_2_58();
        sub_21695BCCC(v3, v50, v41);
        OUTLINED_FUNCTION_35_18();
        v28 = v51;
        goto LABEL_16;
      }
    }

    else
    {
      sub_216697664(v52, &qword_27CAB6DB0, &qword_217016C00);
      OUTLINED_FUNCTION_13_28();
    }

    sub_216697664(v3, &qword_27CAB6F00, &unk_217015390);
    v28 = v1;
LABEL_20:
    v42 = 1;
    goto LABEL_21;
  }

  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D68, &qword_2170153A0);
  v35 = OUTLINED_FUNCTION_21_26(v34);
  OUTLINED_FUNCTION_3_64(v35);
  if (v26)
  {
    goto LABEL_13;
  }

  v36 = OUTLINED_FUNCTION_8_38();
  v37(v36);
  sub_21700D384();
  OUTLINED_FUNCTION_18_26();
  while (1)
  {
    if (v4 == v22)
    {
      v43 = OUTLINED_FUNCTION_22_29();
      v44(v43);

      v28 = v51;
      goto LABEL_20;
    }

    OUTLINED_FUNCTION_37_21();
    if (v38)
    {
      break;
    }

    OUTLINED_FUNCTION_51_5();
    OUTLINED_FUNCTION_50_11();
    if (OUTLINED_FUNCTION_24_23())
    {
      v45 = OUTLINED_FUNCTION_22_29();
      v46(v45);

      OUTLINED_FUNCTION_0_89();
      sub_21695BD2C(v6, v47);
      OUTLINED_FUNCTION_11_34();
      v28 = OUTLINED_FUNCTION_40_13();
      goto LABEL_21;
    }

    OUTLINED_FUNCTION_28_24();
  }

  __break(1u);
}

uint64_t sub_21695B2EC@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SplitPosterLockup(0) + 24);
  v4 = type metadata accessor for SplitPosterLockup.Item(0);
  return sub_216681B04(v3 + *(v4 + 20), a1, &qword_27CAB6A00, &unk_217016B60);
}

void sub_21695B3B4()
{
  OUTLINED_FUNCTION_49();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  OUTLINED_FUNCTION_36(v4);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  v56 = &v50 - v6;
  v7 = type metadata accessor for ContextAccessoryButton(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_77();
  v11 = v9 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v50 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
  OUTLINED_FUNCTION_36(v15);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v16);
  v17 = OUTLINED_FUNCTION_55_1();
  v18 = type metadata accessor for ContentDescriptor(v17);
  v57 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_6_0();
  v58 = v19;
  v20 = *(v0 + *(type metadata accessor for Page.Header(0) + 40));
  if (v20)
  {
    v51 = v3;
    v21 = *(v20 + 16);
    if (v21)
    {
      v22 = v20 + 32;
      v23 = MEMORY[0x277D84F90];
      v54 = v14;
      v55 = v7;
      v53 = v11;
      v52 = v18;
      while (1)
      {
        sub_216826904(v22, &v63);
        v24 = v63;
        v61 = v63;
        sub_216826960(&v64, v62);
        if (v24 == 3)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9330, &qword_21701C9E0);
          if (swift_dynamicCast())
          {
            break;
          }
        }

        sub_2168269C4(&v63);
        OUTLINED_FUNCTION_38_2();
        __swift_storeEnumTagSinglePayload(v27, v28, v29, v18);
        sub_216697664(&v61, &qword_27CABDC08, &unk_21702C330);
LABEL_13:
        if (__swift_getEnumTagSinglePayload(v1, 1, v18) == 1)
        {
          sub_216697664(v1, &qword_27CAB6A00, &unk_217016B60);
        }

        else
        {
          OUTLINED_FUNCTION_39_14();
          sub_21695BCCC(v1, v58, v34);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_21693792C(0, *(v23 + 16) + 1, 1, v23);
            v23 = v40;
          }

          v36 = *(v23 + 16);
          v35 = *(v23 + 24);
          if (v36 >= v35 >> 1)
          {
            sub_21693792C(v35 > 1, v36 + 1, 1, v23);
            v23 = v41;
          }

          *(v23 + 16) = v36 + 1;
          OUTLINED_FUNCTION_39_14();
          sub_21695BCCC(v37, v38, v39);
        }

        v22 += 56;
        if (!--v21)
        {
          goto LABEL_26;
        }
      }

      sub_21695BCCC(v14, v11, type metadata accessor for ContextAccessoryButton);
      v25 = v11 + *(v7 + 24);
      v26 = v56;
      sub_216681B04(v25 + *(v18 + 24), v56, &qword_27CABA820, &unk_217018CE0);
      v11 = sub_217005EF4();
      if (__swift_getEnumTagSinglePayload(v26, 1, v11) == 1)
      {
        sub_2168269C4(&v63);
        sub_216697664(v26, &qword_27CABA820, &unk_217018CE0);
      }

      else
      {
        v30 = sub_217005DF4();
        (*(*(v11 - 8) + 8))(v26, v11);
        v59 = &unk_28290DA10;
        v60 = v30;
        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74F8, &unk_217017160);
        sub_21695BC68();
        v31 = sub_21700EC64();

        sub_2168269C4(&v63);
        if (v31)
        {
          OUTLINED_FUNCTION_36_15();
          v32 = v1;
          v33 = 1;
LABEL_12:
          v18 = v52;
          __swift_storeEnumTagSinglePayload(v32, v33, 1, v52);
          __swift_destroy_boxed_opaque_existential_1Tm(v62);
          v14 = v54;
          v7 = v55;
          goto LABEL_13;
        }
      }

      sub_21695BC04(v25, v1);
      OUTLINED_FUNCTION_36_15();
      v32 = v1;
      v33 = 0;
      goto LABEL_12;
    }

    v23 = MEMORY[0x277D84F90];
LABEL_26:
    if (*(v23 + 16))
    {
      v47 = v51;
      sub_21695BC04(v23 + ((*(v57 + 80) + 32) & ~*(v57 + 80)), v51);
      v48 = v47;
      v49 = 0;
    }

    else
    {
      v48 = v51;
      v49 = 1;
    }

    __swift_storeEnumTagSinglePayload(v48, v49, 1, v18);

    OUTLINED_FUNCTION_26();
  }

  else
  {
    OUTLINED_FUNCTION_38_2();
    OUTLINED_FUNCTION_26();

    __swift_storeEnumTagSinglePayload(v42, v43, v44, v45);
  }
}

uint64_t sub_21695B900(uint64_t a1)
{
  result = sub_2166D2998(&qword_280E44F88, type metadata accessor for TrackLockup, &unk_21702BFC8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21695BC04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContentDescriptor(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_21695BC68()
{
  result = qword_27CABDC10;
  if (!qword_27CABDC10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB74F8, &unk_217017160);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABDC10);
  }

  return result;
}

uint64_t sub_21695BCCC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_21695BD2C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t type metadata accessor for ShareAccessoryButton(uint64_t a1)
{
  result = qword_280E3B8E8;
  if (!qword_280E3B8E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21695BE0C(uint64_t a1)
{
  sub_216689C0C(319);
  if (v1 <= 0x3F)
  {
    sub_216689C64(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_21695BEA0@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v33 = a3;
  v37 = a2;
  v40 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v31 - v16;
  v18 = a1;
  sub_21700CE04();
  v19 = sub_21700CDB4();
  v21 = v20;
  v22 = *(v11 + 8);
  v35 = v11 + 8;
  v36 = v9;
  v34 = v22;
  v22(v17, v9);
  if (v21)
  {
    sub_21700D7A4();
    v32 = v19;
    sub_21700CE04();
    v23 = v37;
    (*(v5 + 16))(v8, v37, v40);
    type metadata accessor for ShareAccessoryButton(0);
    sub_21700D734();
    v38 = v32;
    v39 = v21;
    sub_21700F364();
    sub_21700CE04();
    sub_21700D2E4();
    (*(v5 + 8))(v23, v40);
    v24 = v36;
    v25 = v34;
    v34(v18, v36);
    return v25(v14, v24);
  }

  else
  {
    v27 = sub_21700E2E4();
    sub_21695C2C0(&qword_280E2A0F8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    v29 = v28;
    v30 = type metadata accessor for ShareAccessoryButton(0);
    *v29 = 25705;
    v29[1] = 0xE200000000000000;
    v29[2] = v30;
    (*(*(v27 - 8) + 104))(v29, *MEMORY[0x277D22530], v27);
    swift_willThrow();
    (*(v5 + 8))(v37, v40);
    return v34(v18, v36);
  }
}

uint64_t sub_21695C2C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21695C308@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v34 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABDC28, &unk_21702C4E0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CABF910, &unk_217023330);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABDC30, &unk_21702C4F0);
  v35 = a1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  type metadata accessor for PlaylistTrackListSection.DividerOverlay(255, v3, v4, v5);
  OUTLINED_FUNCTION_17_34();
  swift_getWitnessTable();
  sub_217008BC4();
  v6 = sub_2170089F4();
  OUTLINED_FUNCTION_16_7();
  v9 = sub_2166D9530(v7, &unk_27CABF910, &unk_217023330, v8);
  v10 = type metadata accessor for PlaylistTrackLockupView(255);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABB0C0, &unk_2170231B0);
  OUTLINED_FUNCTION_23_24();
  sub_2166D56E4(v11, v12, &unk_2170453C0);
  OUTLINED_FUNCTION_21_27();
  sub_21695EDD0(v13, &qword_27CABB0C0, &unk_2170231B0, v14);
  OUTLINED_FUNCTION_20_23();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_15_31();
  v57 = v10;
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_0_9();
  v50 = v33;
  v51 = v6;
  v52 = v3;
  v53 = v9;
  v54 = &off_282938708;
  v55 = swift_getWitnessTable();
  v56 = v4;
  v15 = type metadata accessor for PaginatingGridView(255, &v50);
  v16 = v34;
  v17 = sub_21700B1D4();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v32 - v22;
  v24 = (v36 + *(v35 + 36));
  v26 = *v24;
  v25 = v24[1];
  v50 = v26;
  v51 = v25;
  v52 = 0;
  v53 = 0;
  LOBYTE(v54) = 0;
  v43 = v3;
  v44 = v4;
  v45 = v36;
  v46 = &v50;
  v39 = v3;
  v40 = v4;
  v41 = v36;
  v27 = sub_21695ED20();
  OUTLINED_FUNCTION_22_30();
  v28 = swift_getWitnessTable();
  sub_216ED5418(sub_21695ED08, v42, sub_21695ED14, v38, v16, v15, v27, v28);
  v47 = v27;
  v48 = v28;
  v49 = MEMORY[0x277CE1410];
  OUTLINED_FUNCTION_19_29();
  v29 = swift_getWitnessTable();
  sub_2166C24DC(v20, v17, v29);
  v30 = *(v18 + 8);
  v30(v20, v17);
  sub_2166C24DC(v23, v17, v29);
  return (v30)(v23, v17);
}

uint64_t sub_21695C6D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v76 = a2;
  v77 = a5;
  v69 = a1;
  v67 = type metadata accessor for PlaylistTrackListSection(0, a3, a4, a4);
  v75 = *(v67 - 8);
  v73 = *(v75 + 64);
  MEMORY[0x28223BE20](v67);
  v74 = &v58 - v7;
  v61 = sub_2170090F4();
  v60 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v59 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for MappedSection(0);
  MEMORY[0x28223BE20](v9 - 8);
  v79 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CABF910, &unk_217023330);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABDC30, &unk_21702C4F0);
  type metadata accessor for PlaylistTrackListSection.DividerOverlay(255, a3, a4, v11);
  swift_getWitnessTable();
  sub_217008BC4();
  v12 = sub_2170089F4();
  v13 = sub_2166D9530(&qword_27CABDC38, &unk_27CABF910, &unk_217023330, &unk_217063310);
  v14 = type metadata accessor for PlaylistTrackLockupView(255);
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABB0C0, &unk_2170231B0);
  v16 = sub_2166D56E4(&qword_27CABDC40, type metadata accessor for PlaylistTrackLockupView, &unk_2170453C0);
  v17 = sub_21695EDD0(&qword_27CABB0E0, &qword_27CABB0C0, &unk_2170231B0, sub_2168AE608);
  v65 = v14;
  v80 = v14;
  v81 = v15;
  v82 = v16;
  v83 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  WitnessTable = swift_getWitnessTable();
  v87 = OpaqueTypeConformance2;
  v88 = WitnessTable;
  v20 = swift_getWitnessTable();
  v80 = v78;
  v81 = v12;
  v71 = v13;
  v72 = v12;
  v82 = a3;
  v83 = v13;
  v84 = &off_282938708;
  v85 = v20;
  v21 = v20;
  v86 = a4;
  v64 = type metadata accessor for PaginatingGridView(0, &v80);
  v70 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v66 = &v58 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v68 = &v58 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7940, &unk_21701C440);
  v26 = v69;
  v27 = *(v69 + *(v25 + 52));
  v28 = v67;
  v29 = a3;
  v30 = a3;
  v31 = a4;
  type metadata accessor for CatalogPagePresenter(0, v30, a4, v32);
  v63 = v27;
  sub_21700DF14();
  swift_getWitnessTable();
  v62 = sub_217008CB4();
  sub_21695F04C();
  v33 = v28;
  v34 = v26 + *(v28 + 48);
  v35 = *v34;
  if (*(v34 + 8) == 1)
  {
    v80 = *v34;
    v61 = v35;
  }

  else
  {

    sub_21700ED94();
    v36 = sub_217009C34();
    sub_217007BC4();

    v37 = v59;
    sub_2170090E4();
    swift_getAtKeyPath();

    (*(v60 + 8))(v37, v61);
    v61 = v80;
  }

  v38 = swift_checkMetadataState();
  v40 = v74;
  v39 = v75;
  v41 = v26;
  v42 = v33;
  (*(v75 + 16))(v74, v41, v33);
  v43 = (*(v39 + 80) + 32) & ~*(v39 + 80);
  v44 = swift_allocObject();
  *(v44 + 16) = v29;
  *(v44 + 24) = v31;
  (*(v39 + 32))(v44 + v43, v40, v42);
  v45 = sub_2166D56E4(qword_27CABDCE0, type metadata accessor for PlaylistTrackLockupView, &unk_217059894);
  v46 = v78;
  v47 = v72;
  v48 = v71;
  v49 = OUTLINED_FUNCTION_0_28();
  v50 = v76;
  sub_2168387D4(v76, &v80);
  v57 = v45;
  v51 = v66;
  sub_216C09600(v63, v62, v79, v61, &off_28292BE68, v50, v49, v66, sub_21695F0A4, v44, v46, v47, v38, v48, &off_282938708, v21, v57);
  v52 = v64;
  v53 = swift_getWitnessTable();
  v54 = v68;
  sub_2166C24DC(v51, v52, v53);
  v55 = *(v70 + 8);
  v55(v51, v52);
  sub_2166C24DC(v54, v52, v53);
  return (v55)(v54, v52);
}

uint64_t sub_21695CE98@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v37 = a4;
  v36 = a3;
  v41 = a2;
  v44 = a5;
  v8 = type metadata accessor for PlaylistTrackLockupView(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDC30, &unk_21702C4F0);
  v43 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v34 = &v33 - v12;
  v33 = type metadata accessor for PlaylistTrackListSection.DividerOverlay(255, a3, a4, v13);
  WitnessTable = swift_getWitnessTable();
  v40 = sub_217008BC4();
  v14 = sub_2170089F4();
  v42 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v35 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v39 = &v33 - v17;
  v18 = *a1;
  v19 = a1[1];
  *v10 = *a1;
  type metadata accessor for PlaybackPresenter(0);
  sub_2166D56E4(&qword_280E3FDB0, type metadata accessor for PlaybackPresenter, &unk_217058AC0);

  *(v10 + 1) = sub_217008CF4();
  *(v10 + 2) = v20;
  *(v10 + 3) = swift_getKeyPath();
  v10[32] = 0;
  *(v10 + 5) = swift_getKeyPath();
  v10[48] = 0;
  v21 = *(v8 + 32);
  *&v10[v21] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7580, &qword_21701F580);
  swift_storeEnumTagMultiPayload();
  v54 = 0x4044000000000000;
  sub_2167CD8D8();
  sub_2170082B4();
  v54 = 0x4036000000000000;
  sub_2170082B4();
  v54 = 0x4050400000000000;
  sub_2170082B4();
  v54 = 0x404C000000000000;
  sub_2170082B4();
  v50 = v18;
  v51 = v19;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB0C0, &unk_2170231B0);
  v23 = sub_2166D56E4(&qword_27CABDC40, type metadata accessor for PlaylistTrackLockupView, &unk_2170453C0);
  v24 = sub_21695EDD0(&qword_27CABB0E0, &qword_27CABB0C0, &unk_2170231B0, sub_2168AE608);
  v25 = v34;
  sub_21700A3B4();
  sub_21695F158(v10, type metadata accessor for PlaylistTrackLockupView);
  v45 = v36;
  v46 = v37;
  v47 = v18;
  v48 = v19;
  v49 = v41;
  v54 = v8;
  v55 = v22;
  v56 = v23;
  v57 = v24;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_2166BF464();
  v27 = v35;
  sub_21700AA94();
  (*(v43 + 8))(v25, v11);
  v28 = swift_getWitnessTable();
  v52 = OpaqueTypeConformance2;
  v53 = v28;
  v29 = swift_getWitnessTable();
  v30 = v39;
  sub_2166C24DC(v27, v14, v29);
  v31 = *(v42 + 8);
  v31(v27, v14);
  sub_2166C24DC(v30, v14, v29);
  return (v31)(v30, v14);
}

uint64_t sub_21695D490()
{
  v0 = type metadata accessor for PlaylistTrackLockup(0);
  MEMORY[0x28223BE20](v0);
  v2 = &v8 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_21700C894();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2168C045C();
  sub_2168ABF7C();
  sub_21700DF14();
  sub_21695F158(v2, type metadata accessor for PlaylistTrackLockup);
  sub_2169BCA3C();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_21695D608@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v29 = a5;
  v9 = type metadata accessor for PlaylistTrackLockup(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = a3;
  v28 = a4;
  v13 = type metadata accessor for PlaylistTrackListSection.DividerOverlay(0, a3, a4, v12);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v26 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7940, &unk_21701C440);
  result = sub_2166BF3C8(*(a2 + *(v20 + 52)));
  v22 = result - 1;
  if (__OFSUB__(result, 1))
  {
    __break(1u);
  }

  else
  {
    sub_2168ABF7C();
    v23 = *&v11[*(v9 + 56) + 8];
    sub_21700DF14();
    sub_21695F158(v11, type metadata accessor for PlaylistTrackLockup);
    if (v23)
    {
    }

    sub_21695D85C(a1 == 0, v22 == a1, v23 != 0, v27, v28, v16);
    WitnessTable = swift_getWitnessTable();
    sub_2166C24DC(v16, v13, WitnessTable);
    v25 = *(v14 + 8);
    v25(v16, v13);
    sub_2166C24DC(v19, v13, WitnessTable);
    return v25(v19, v13);
  }

  return result;
}

uint64_t sub_21695D85C@<X0>(char a1@<W0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _BYTE *a6@<X8>)
{
  *a6 = a1;
  a6[1] = a2;
  a6[2] = a3;
  type metadata accessor for PlaylistTrackListSection.DividerOverlay(0, a4, a5, a4);
  return sub_21695E9B8(22.0);
}

uint64_t sub_21695D8C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v61 = a1;
  v63 = a4;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDCA0, &qword_21702C528);
  MEMORY[0x28223BE20](v56);
  v50 = (&v48 - v6);
  v7 = type metadata accessor for DefaultSectionHeader(0);
  MEMORY[0x28223BE20](v7 - 8);
  v49 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDCA8, &unk_21702C530);
  MEMORY[0x28223BE20](v59);
  v60 = &v48 - v9;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDCB0, &qword_21703C0A0);
  MEMORY[0x28223BE20](v52);
  v54 = &v48 - v10;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDC68, &qword_21702C510);
  MEMORY[0x28223BE20](v58);
  v55 = &v48 - v11;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDC78, &qword_21702C518);
  MEMORY[0x28223BE20](v53);
  v48 = &v48 - v12;
  v13 = type metadata accessor for ComposerSectionHeader(0);
  MEMORY[0x28223BE20](v13);
  v51 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDCB8, &unk_21702C540);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v48 - v19;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDC58, &qword_21702C508);
  MEMORY[0x28223BE20](v62);
  v57 = &v48 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDCC0, &qword_217031290);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v48 - v23;
  v25 = _s7SectionV6HeaderVMa(0);
  MEMORY[0x28223BE20](v25);
  v27 = &v48 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PlaylistTrackListSection(0, a2, a3, v28);
  type metadata accessor for MappedSection(0);
  sub_2166A6EA4();
  if (__swift_getEnumTagSinglePayload(v24, 1, v25) != 1)
  {
    sub_21695EFF4();
    sub_2166A6EA4();
    v31 = _s7SectionV6HeaderV12HeaderLockupOMa(0);
    if (__swift_getEnumTagSinglePayload(v20, 1, v31) != 1)
    {
      sub_2166A6EA4();
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload == 2)
      {
        v40 = v49;
        sub_21695EFF4();
        v41 = sub_2170091A4();
        v42 = v50;
        *v50 = v41;
        *(v42 + 8) = 0;
        *(v42 + 16) = 1;
        v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDCC8, &unk_21702C550);
        sub_21695E280(v42 + *(v43 + 44));
        sub_2166A6EA4();
        swift_storeEnumTagMultiPayload();
        sub_21695EF0C();
        sub_2166D9530(&qword_27CABDC98, &qword_27CABDCA0, &qword_21702C528, MEMORY[0x277CE1138]);
        v44 = v55;
        sub_217009554();
        sub_2166A6EA4();
        swift_storeEnumTagMultiPayload();
        sub_21695EE54();
        sub_217009554();
        sub_2166997CC(v44, &qword_27CABDC68, &qword_21702C510);
        sub_2166997CC(v42, &qword_27CABDCA0, &qword_21702C528);
        sub_21695F158(v27, _s7SectionV6HeaderVMa);
        v45 = type metadata accessor for DefaultSectionHeader;
        v46 = v40;
LABEL_11:
        sub_21695F158(v46, v45);
        sub_2166997CC(v20, &qword_27CABDCB8, &unk_21702C540);
        v30 = v63;
        sub_2167A4788();
        v29 = 0;
        return __swift_storeEnumTagSinglePayload(v30, v29, 1, v62);
      }

      if (EnumCaseMultiPayload == 1)
      {
        sub_21695EFF4();
        v33 = v48;
        sub_21695F04C();
        *(v33 + *(type metadata accessor for ComposerHeaderLockupView(0) + 20)) = 0;
        v34 = v33 + *(v53 + 36);
        v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDC90, &qword_21702C520);
        sub_217008AC4();
        sub_2166A6EA4();
        *(v34 + 40) = 0u;
        *(v34 + 56) = 0u;
        *(v34 + 72) = 0;
        v36 = (v34 + v35[11]);
        *v36 = 0;
        v36[1] = 0;
        v37 = v35[12];
        *(v34 + v37) = swift_getKeyPath();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
        swift_storeEnumTagMultiPayload();
        v38 = v34 + v35[13];
        *v38 = swift_getKeyPath();
        *(v38 + 40) = 0;
        sub_2166A6EA4();
        swift_storeEnumTagMultiPayload();
        sub_21695EF0C();
        sub_2166D9530(&qword_27CABDC98, &qword_27CABDCA0, &qword_21702C528, MEMORY[0x277CE1138]);
        v39 = v55;
        sub_217009554();
        sub_2166A6EA4();
        swift_storeEnumTagMultiPayload();
        sub_21695EE54();
        sub_217009554();
        sub_2166997CC(v39, &qword_27CABDC68, &qword_21702C510);
        sub_2166997CC(v33, &qword_27CABDC78, &qword_21702C518);
        sub_21695F158(v51, type metadata accessor for ComposerSectionHeader);
LABEL_10:
        v45 = _s7SectionV6HeaderVMa;
        v46 = v27;
        goto LABEL_11;
      }

      sub_21695F158(v17, _s7SectionV6HeaderV12HeaderLockupOMa);
    }

    swift_storeEnumTagMultiPayload();
    sub_21695EE54();
    sub_217009554();
    goto LABEL_10;
  }

  sub_2166997CC(v24, &qword_27CABDCC0, &qword_217031290);
  v29 = 1;
  v30 = v63;
  return __swift_storeEnumTagSinglePayload(v30, v29, 1, v62);
}

uint64_t sub_21695E280@<X0>(uint64_t a2@<X8>)
{
  v3 = type metadata accessor for DefaultSectionHeaderView(0);
  v4 = (v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v23 - v8;
  sub_21700B3B4();
  sub_2170083C4();
  v10 = v26;
  v11 = v28;
  v12 = v30;
  v24 = v31;
  v34 = 1;
  v33 = v27;
  v32 = v29;
  sub_21695F04C();
  v13 = v4[7];
  *&v9[v13] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7240, &qword_2170193B0);
  swift_storeEnumTagMultiPayload();
  v14 = &v9[v4[8]];
  *v14 = swift_getKeyPath();
  *(v14 + 1) = 0;
  *(v14 + 2) = 0;
  *(v14 + 3) = 0;
  v14[32] = 0;
  v15 = v4[9];
  *&v9[v15] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7580, &qword_21701F580);
  swift_storeEnumTagMultiPayload();
  v16 = v4[10];
  *&v9[v16] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDCD0, &unk_21703C1D0);
  swift_storeEnumTagMultiPayload();
  v25 = 0x402E000000000000;
  sub_2167CD8D8();
  sub_2170082B4();
  v25 = 0x402A000000000000;
  sub_2170082B4();
  v25 = 0x4038000000000000;
  sub_2170082B4();
  LOBYTE(v16) = v34;
  v17 = v33;
  v18 = v32;
  sub_21695F04C();
  *a2 = 0;
  *(a2 + 8) = v16;
  *(a2 + 16) = v10;
  *(a2 + 24) = v17;
  *(a2 + 32) = v11;
  *(a2 + 40) = v18;
  v19 = v24;
  *(a2 + 48) = v12;
  *(a2 + 56) = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDCD8, &qword_21702C690);
  sub_21695F04C();
  v21 = a2 + *(v20 + 64);
  *v21 = 0;
  *(v21 + 8) = 1;
  sub_21695F158(v9, type metadata accessor for DefaultSectionHeaderView);
  return sub_21695F158(v6, type metadata accessor for DefaultSectionHeaderView);
}

uint64_t sub_21695E594@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_2170093B4();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDD68, &qword_21702C738);
  return sub_21695E5F8(v2, *(a1 + 16), *(a1 + 24), a2 + *(v5 + 44));
}

uint64_t sub_21695E5F8@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD800, &qword_21702C740);
  MEMORY[0x28223BE20](v8);
  v10 = &v36[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v13 = &v36[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDD70, &qword_21702C748);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v36[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v17);
  v19 = &v36[-v18];
  v20 = 1;
  if (*a1 == 1)
  {
    sub_21700B124();
    v37 = sub_217009CB4();
    type metadata accessor for PlaylistTrackListSection.DividerOverlay(0, a2, a3, v21);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40, &unk_217017FA0);
    sub_2170082C4();
    sub_217007F24();
    v22 = &v13[*(v8 + 36)];
    *v22 = v37;
    *(v22 + 1) = v23;
    *(v22 + 2) = v24;
    *(v22 + 3) = v25;
    *(v22 + 4) = v26;
    v22[40] = 0;
    sub_2167A4788();
    v20 = 0;
  }

  __swift_storeEnumTagSinglePayload(v19, v20, 1, v8);
  sub_21700B124();
  v27 = sub_217009CB4();
  type metadata accessor for PlaylistTrackListSection.DividerOverlay(0, a2, a3, v28);
  sub_21695E90C();
  sub_217007F24();
  v29 = &v13[*(v8 + 36)];
  *v29 = v27;
  *(v29 + 1) = v30;
  *(v29 + 2) = v31;
  *(v29 + 3) = v32;
  *(v29 + 4) = v33;
  v29[40] = 0;
  sub_2166A6EA4();
  sub_2166A6EA4();
  sub_2166A6EA4();
  v34 = a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDD78, &qword_21702C750) + 48);
  *v34 = 0;
  *(v34 + 8) = 1;
  sub_2166A6EA4();
  sub_2166997CC(v13, &qword_27CABD800, &qword_21702C740);
  sub_2166997CC(v19, &qword_27CABDD70, &qword_21702C748);
  sub_2166997CC(v10, &qword_27CABD800, &qword_21702C740);
  return sub_2166997CC(v16, &qword_27CABDD70, &qword_21702C748);
}

void *sub_21695E90C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40, &unk_217017FA0);
  sub_2170082C4();
  return sub_2170082C4();
}

uint64_t sub_21695EA00@<X0>(uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  sub_2167A4788();
  v8 = type metadata accessor for PlaylistTrackListSection(0, a2, a3, v7);
  sub_21695EFF4();
  v9 = (a4 + v8[10]);
  type metadata accessor for CatalogPagePresenter(0, a2, a3, v10);
  swift_getWitnessTable();
  *v9 = sub_217008CF4();
  v9[1] = v11;
  v12 = a4 + v8[11];
  *v12 = swift_getKeyPath();
  *(v12 + 8) = 0;
  v13 = a4 + v8[12];
  result = swift_getKeyPath();
  *v13 = result;
  *(v13 + 8) = 0;
  return result;
}

void sub_21695EB24(uint64_t a1)
{
  sub_2166D55BC(319);
  if (v2 <= 0x3F)
  {
    type metadata accessor for MappedSection(319);
    if (v4 <= 0x3F)
    {
      type metadata accessor for CatalogPagePresenter(255, *(a1 + 16), *(a1 + 24), v3);
      swift_getWitnessTable();
      sub_217008D04();
      if (v5 <= 0x3F)
      {
        sub_2167B8000();
        if (v6 <= 0x3F)
        {
          sub_21695EC4C(319);
          if (v7 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_21695EC4C(uint64_t a1)
{
  if (!qword_280E2B490)
  {
    type metadata accessor for PersistentPageSectionManager();
    v1 = sub_2170080E4();
    if (!v2)
    {
      atomic_store(v1, &qword_280E2B490);
    }
  }
}

unint64_t sub_21695ED20()
{
  result = qword_27CABDC48;
  if (!qword_27CABDC48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABDC28, &unk_21702C4E0);
    sub_21695EDD0(&qword_27CABDC50, &qword_27CABDC58, &qword_21702C508, sub_21695EE54);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABDC48);
  }

  return result;
}

uint64_t sub_21695EDD0(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_21695EE54()
{
  result = qword_27CABDC60;
  if (!qword_27CABDC60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABDC68, &qword_21702C510);
    sub_21695EF0C();
    sub_2166D9530(&qword_27CABDC98, &qword_27CABDCA0, &qword_21702C528, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABDC60);
  }

  return result;
}

unint64_t sub_21695EF0C()
{
  result = qword_27CABDC70;
  if (!qword_27CABDC70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABDC78, &qword_21702C518);
    sub_2166D56E4(&qword_27CABDC80, type metadata accessor for ComposerHeaderLockupView, &unk_21706428C);
    sub_2166D9530(&qword_27CABDC88, &qword_27CABDC90, &qword_21702C520, &unk_21702CB18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABDC70);
  }

  return result;
}

uint64_t sub_21695EFF4()
{
  OUTLINED_FUNCTION_92();
  v1(0);
  OUTLINED_FUNCTION_34();
  v2 = OUTLINED_FUNCTION_8();
  v3(v2);
  return v0;
}

uint64_t sub_21695F04C()
{
  OUTLINED_FUNCTION_92();
  v1(0);
  OUTLINED_FUNCTION_34();
  v2 = OUTLINED_FUNCTION_8();
  v3(v2);
  return v0;
}

uint64_t sub_21695F0A4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(type metadata accessor for PlaylistTrackListSection(0, v6, v7, a2) - 8);
  v9 = v3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_21695CE98(a1, v9, v6, v7, a3);
}

uint64_t sub_21695F158(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_9_0();
  (*(v3 + 8))(a1);
  return a1;
}

void sub_21695F1AC(uint64_t a1)
{
  sub_2167D1C30(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_21695F2C4@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v92 = a3;
  v5 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  v89 = &v84 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v90 = &v84 - v17;
  MEMORY[0x28223BE20](v18);
  v91 = &v84 - v19;
  MEMORY[0x28223BE20](v20);
  v22 = &v84 - v21;
  sub_21700D284();
  OUTLINED_FUNCTION_1();
  v93 = v24;
  v94 = v23;
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v84 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *(v13 + 16);
  v99 = a1;
  v28(v22, a1, v11, v25);
  (*(v7 + 16))(v10, a2, v5);
  v29 = v95;
  sub_21700D224();
  if (v29)
  {
    (*(v7 + 8))(a2, v5);
    return (*(v13 + 8))(v99, v11);
  }

  v86 = v7;
  v87 = v5;
  v88 = a2;
  v95 = v11;
  v31 = v92;
  (*(v93 + 32))(v92, v27, v94);
  v32 = v91;
  sub_21700CE04();
  if (sub_21700CDA4())
  {
    goto LABEL_9;
  }

  sub_21700CDD4();
  if (!v97)
  {
    sub_216697CFC(&v96);
LABEL_9:
    sub_21700E2E4();
    v57 = sub_2167B1EA4();
    OUTLINED_FUNCTION_4(v57);
    v59 = v58;
    v60 = type metadata accessor for SetPersistenceItemAction(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB71E0, &qword_21702C7F0);
    v61 = swift_allocObject();
    *(v61 + 16) = xmmword_217013DA0;
    sub_21695FAB8();
    *(v61 + 32) = swift_allocError();
    *v62 = 2;
    *v59 = 1835365481;
    v59[1] = 0xE400000000000000;
    v59[2] = v60;
    v59[3] = v61;
    OUTLINED_FUNCTION_2_12();
    (*(v63 + 104))(v59);
    swift_willThrow();
    v64 = OUTLINED_FUNCTION_1_73();
    v65(v64);
    v66 = *(v13 + 8);
    v67 = v95;
    v66(v99, v95);
    v66(v32, v67);
    v48 = 0;
    v56 = 0;
    goto LABEL_10;
  }

  sub_2166EF9C4(&v96, v98);
  v85 = type metadata accessor for SetPersistenceItemAction(0);
  sub_2166A6DF8(v98, v31 + v85[5]);
  v33 = v90;
  sub_21700CE04();
  v34 = sub_21700CDB4();
  v36 = v35;
  v37 = *(v13 + 8);
  v38 = v33;
  v39 = v95;
  v37(v38, v95);
  if (v36)
  {
    v40 = (v31 + v85[6]);
    *v40 = v34;
    v40[1] = v36;
    v41 = v89;
    v42 = v99;
    sub_21700CE04();
    sub_21695FB0C();
    sub_21700CD14();
    v90 = v37;
    v37(v41, v39);
    v43 = v96;
    if (v96 != 2)
    {
      v80 = OUTLINED_FUNCTION_1_73();
      v81(v80);
      v82 = v90;
      (v90)(v42, v39);
      v83 = OUTLINED_FUNCTION_4_46();
      result = v82(v83);
      *(v31 + v85[7]) = v43 & 1;
      return result;
    }

    sub_21700E2E4();
    v44 = sub_2167B1EA4();
    OUTLINED_FUNCTION_4(v44);
    v46 = v45;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB71E0, &qword_21702C7F0);
    v47 = swift_allocObject();
    *(v47 + 16) = xmmword_217013DA0;
    sub_21695FAB8();
    *(v47 + 32) = swift_allocError();
    v48 = 1;
    *v49 = 1;
    *v46 = 0x65706F6373;
    v50 = v85;
    v46[1] = 0xE500000000000000;
    v46[2] = v50;
    v46[3] = v47;
    OUTLINED_FUNCTION_2_12();
    (*(v51 + 104))(v46);
    swift_willThrow();
    v52 = OUTLINED_FUNCTION_1_73();
    v53(v52);
    v54 = v90;
    (v90)(v42, v39);
    v55 = OUTLINED_FUNCTION_4_46();
    v54(v55);
    v56 = 1;
  }

  else
  {
    sub_21700E2E4();
    v70 = sub_2167B1EA4();
    OUTLINED_FUNCTION_4(v70);
    v72 = v71;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB71E0, &qword_21702C7F0);
    v73 = swift_allocObject();
    *(v73 + 16) = xmmword_217013DA0;
    sub_21695FAB8();
    *(v73 + 32) = swift_allocError();
    *v74 = 0;
    *v72 = 7955819;
    v75 = v85;
    v72[1] = 0xE300000000000000;
    v72[2] = v75;
    v72[3] = v73;
    OUTLINED_FUNCTION_2_12();
    (*(v76 + 104))(v72);
    swift_willThrow();
    v77 = OUTLINED_FUNCTION_1_73();
    v78(v77);
    v37(v99, v39);
    v79 = OUTLINED_FUNCTION_4_46();
    (v37)(v79);
    v56 = 0;
    v48 = 1;
  }

LABEL_10:
  v68 = v92;
  result = (*(v93 + 8))(v92, v94);
  if (v48)
  {
    v69 = type metadata accessor for SetPersistenceItemAction(0);
    result = __swift_destroy_boxed_opaque_existential_1Tm((v68 + *(v69 + 20)));
  }

  if (v56)
  {
    type metadata accessor for SetPersistenceItemAction(0);
  }

  return result;
}

unint64_t sub_21695FAB8()
{
  result = qword_27CABDD90;
  if (!qword_27CABDD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABDD90);
  }

  return result;
}

unint64_t sub_21695FB0C()
{
  result = qword_280E45098;
  if (!qword_280E45098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E45098);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SetPersistenceItemAction.PerformError(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_21695FC40()
{
  result = qword_27CABDD98;
  if (!qword_27CABDD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABDD98);
  }

  return result;
}

void sub_21695FC94(uint64_t a1)
{
  sub_21695FE9C(319, &qword_280E2A2A8, &qword_27CAB6D68, &qword_2170153A0, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_2166B0B84();
    if (v2 <= 0x3F)
    {
      sub_21695FE9C(319, &qword_280E29AA8, &qword_27CABCC98, &unk_21702A060, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_216962BE8(319, qword_280E2B500, MEMORY[0x277CDD650], MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_216962BE8(319, &qword_280E2B4C0, MEMORY[0x277D7EC08], MEMORY[0x277CDF468]);
          if (v5 <= 0x3F)
          {
            sub_21695FE9C(319, &qword_280E2B4D0, &qword_27CAB7310, &unk_2170170F0, MEMORY[0x277CDF468]);
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

void sub_21695FE9C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
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

uint64_t sub_21695FF44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v16 = type metadata accessor for ActionButton(0, a7, a8, a4);
  v17 = v16[12];
  *(a9 + v17) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
  swift_storeEnumTagMultiPayload();
  v18 = a9 + v16[13];
  *v18 = swift_getKeyPath();
  *(v18 + 40) = 0;
  *(a9 + 32) = *(a1 + 32);
  v19 = *(a1 + 16);
  *a9 = *a1;
  *(a9 + 16) = v19;
  result = sub_2168D36D4(a2, a9 + v16[11]);
  *(a9 + 40) = a3;
  *(a9 + 48) = a4;
  *(a9 + 56) = a5;
  *(a9 + 64) = a6;
  return result;
}

uint64_t sub_21696002C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v25[1] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB70A8, &qword_21701B9E0);
  v6 = OUTLINED_FUNCTION_36(v5);
  MEMORY[0x28223BE20](v6);
  v8 = v25 - v7;
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  v11 = sub_21700AF54();
  OUTLINED_FUNCTION_1();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v17 = v25 - v16;
  sub_2168282D4(v3 + *(a1 + 44), v8, &qword_27CAB70A8, &qword_21701B9E0);
  sub_216960210(v3, v9, v10, v18);
  sub_21700AF04();
  OUTLINED_FUNCTION_6_43();
  WitnessTable = swift_getWitnessTable();
  v20 = OUTLINED_FUNCTION_8();
  sub_2166C24DC(v20, v21, WitnessTable);
  v22 = *(v13 + 8);
  v23 = OUTLINED_FUNCTION_8();
  v22(v23);
  sub_2166C24DC(v17, v11, WitnessTable);
  return (v22)(v17, v11);
}

void (*sub_216960210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for ActionButton(0, a2, a3, a4);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  (*(v8 + 16))(&v15 - v10, a1, v7, v9);
  v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  (*(v8 + 32))(v13 + v12, v11, v7);
  return sub_2169606A8;
}

void sub_216960374()
{
  v1 = sub_2170075A4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_216C0C534(&v28);
  if (v30)
  {
    sub_2166A0F18(&v28, v32);
    sub_2168282D4(v0, &v24, &qword_27CAB6DB0, &qword_217016C00);
    if (v26)
    {
      v5 = sub_2166A0F18(&v24, &v28);
      v6 = *(v0 + 56);
      if (v6)
      {
        v6(v5);
      }

      v7 = __swift_project_boxed_opaque_existential_1(v32, v32[3]);
      sub_216C0C548(v7, v8, v9, v10, v11, v12, v13, v14, v23, v24, *(&v24 + 1), v25, v26, v27, v28, *(&v28 + 1), v29, v30, v31, v32[0]);
      sub_217007544();
      (*(v2 + 8))(v4, v1);
      __swift_destroy_boxed_opaque_existential_1Tm(&v28);
    }

    else
    {
      sub_2166997CC(&v24, &qword_27CAB6DB0, &qword_217016C00);
      if (qword_27CAB5AB0 != -1)
      {
        swift_once();
      }

      v19 = sub_217007CA4();
      __swift_project_value_buffer(v19, qword_27CABDDA0);
      v20 = sub_217007C84();
      v21 = sub_21700ED84();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_216679000, v20, v21, "Can't perform action, no action present.", v22, 2u);
        MEMORY[0x21CEA1440](v22, -1, -1);
      }
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v32);
  }

  else
  {
    sub_2166997CC(&v28, &qword_27CAB7310, &unk_2170170F0);
    if (qword_27CAB5AB0 != -1)
    {
      swift_once();
    }

    v15 = sub_217007CA4();
    __swift_project_value_buffer(v15, qword_27CABDDA0);
    v16 = sub_217007C84();
    v17 = sub_21700ED84();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_216679000, v16, v17, "Can't perform action, an actionDispatcher must be set on this view or a view above it.", v18, 2u);
      MEMORY[0x21CEA1440](v18, -1, -1);
    }
  }
}

void sub_2169606A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = type metadata accessor for ActionButton(0, v5, v6, a4);
  OUTLINED_FUNCTION_36(v7);
  v10 = v4 + ((*(v9 + 80) + 32) & ~*(v9 + 80));

  sub_216960348(v10, v5, v6, v8);
}

uint64_t sub_216960728()
{
  v1 = type metadata accessor for SystemActionButton(0);
  v2 = v1 - 8;
  v3 = *(v1 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v1);
  sub_217007F04();
  OUTLINED_FUNCTION_1();
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8, v0 + *(v2 + 32), v6);
  sub_216962EE4(v0, &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SystemActionButton);
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = swift_allocObject();
  sub_216962F40(&v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10, type metadata accessor for SystemActionButton);
  return MEMORY[0x21CE9BD40](v8, sub_216963BCC, v11);
}

void sub_2169608DC()
{
  v1 = sub_2170075A4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SystemActionButton(0);
  sub_216C0C534(&v28);
  if (v30)
  {
    sub_2166A0F18(&v28, v32);
    sub_2168282D4(v0, &v24, &qword_27CAB6DB0, &qword_217016C00);
    if (v26)
    {
      v5 = sub_2166A0F18(&v24, &v28);
      v6 = *(v0 + 40);
      if (v6)
      {
        v6(v5);
      }

      v7 = __swift_project_boxed_opaque_existential_1(v32, v32[3]);
      sub_216C0C548(v7, v8, v9, v10, v11, v12, v13, v14, v23, v24, *(&v24 + 1), v25, v26, v27, v28, *(&v28 + 1), v29, v30, v31, v32[0]);
      sub_217007544();
      (*(v2 + 8))(v4, v1);
      __swift_destroy_boxed_opaque_existential_1Tm(&v28);
    }

    else
    {
      sub_2166997CC(&v24, &qword_27CAB6DB0, &qword_217016C00);
      if (qword_27CAB5AB0 != -1)
      {
        swift_once();
      }

      v19 = sub_217007CA4();
      __swift_project_value_buffer(v19, qword_27CABDDA0);
      v20 = sub_217007C84();
      v21 = sub_21700ED84();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_216679000, v20, v21, "Can't perform action, no action present.", v22, 2u);
        MEMORY[0x21CEA1440](v22, -1, -1);
      }
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v32);
  }

  else
  {
    sub_2166997CC(&v28, &qword_27CAB7310, &unk_2170170F0);
    if (qword_27CAB5AB0 != -1)
    {
      swift_once();
    }

    v15 = sub_217007CA4();
    __swift_project_value_buffer(v15, qword_27CABDDA0);
    v16 = sub_217007C84();
    v17 = sub_21700ED84();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_216679000, v16, v17, "Can't perform action, an actionDispatcher must be set on this view or a view above it.", v18, 2u);
      MEMORY[0x21CEA1440](v18, -1, -1);
    }
  }
}

uint64_t sub_216960C18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v57 = a3;
  swift_getWitnessTable();
  v6 = a2;
  v7 = sub_2170097A4();
  v8 = *(v7 - 8);
  v55 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v45 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB70A8, &qword_21701B9E0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v45 - v12;
  WitnessTable = swift_getWitnessTable();
  v15 = type metadata accessor for ActionButton(0, v7, WitnessTable, v14);
  v48 = v15;
  v56 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v49 = &v45 - v16;
  v17 = *(v6 + 16);
  v18 = swift_getWitnessTable();
  v45 = *(v6 + 24);
  v58 = v15;
  v59 = v17;
  v60 = v18;
  v61 = v45;
  v51 = v18;
  v52 = MEMORY[0x277CDE668];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v53 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v46 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v47 = &v45 - v21;
  v22 = v6;
  sub_2169610B4(&v58);
  v23 = sub_217007F04();
  __swift_storeEnumTagSinglePayload(v13, 1, 1, v23);
  v24 = v10;
  v25 = a1;
  v26 = v7;
  (*(v8 + 16))(v10, v25, v7);
  v27 = v8;
  v28 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v29 = swift_allocObject();
  v30 = v17;
  *(v29 + 16) = v17;
  v31 = v45;
  *(v29 + 24) = v45;
  (*(v27 + 32))(v29 + v28, v24, v26);
  v32 = (v3 + *(v22 + 44));
  v33 = *v32;
  v34 = v32[1];
  v35 = v49;
  sub_21695FF44(&v58, v13, sub_216963C9C, v29, *v32, v34, v26, WitnessTable, v49);
  sub_2167759F4(v33, v34);
  v36 = v46;
  v37 = v48;
  v38 = v30;
  v39 = v51;
  sub_21700A364();
  (*(v56 + 8))(v35, v37);
  v58 = v37;
  v59 = v38;
  v60 = v39;
  v61 = v31;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v41 = v47;
  v42 = OpaqueTypeMetadata2;
  sub_2166C24DC(v36, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v43 = *(v53 + 8);
  v43(v36, v42);
  sub_2166C24DC(v41, v42, OpaqueTypeConformance2);
  return (v43)(v41, v42);
}

uint64_t sub_2169610B4@<X0>(uint64_t a1@<X8>)
{
  sub_2168282D4(v1, &v4, &qword_27CAB6DB0, &qword_217016C00);
  if (v5)
  {
    return sub_2166A0F18(&v4, a1);
  }

  result = sub_2168282D4(v1 + 40, a1, &qword_27CAB6DB0, &qword_217016C00);
  if (v5)
  {
    return sub_2166997CC(&v4, &qword_27CAB6DB0, &qword_217016C00);
  }

  return result;
}

uint64_t sub_21696114C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<X3>)
{
  type metadata accessor for ActionButtonModifier(255, a2, a3, a5);
  swift_getWitnessTable();
  v7 = sub_2170097A4();
  v8 = *(*(v7 - 8) + 16);

  return v8(a4, a1, v7);
}

uint64_t sub_2169611F4()
{
  v0 = sub_217007CA4();
  __swift_allocate_value_buffer(v0, qword_27CABDDA0);
  __swift_project_value_buffer(v0, qword_27CABDDA0);
  return sub_217007C94();
}

uint64_t sub_216961274@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a1;
  v66 = a2;
  v65 = sub_217009C14();
  v63 = *(v65 - 8);
  v64 = *(v63 + 64);
  MEMORY[0x28223BE20](v65);
  v62 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ActionButtonStyle(0);
  v60 = *(v4 - 8);
  v58 = *(v60 + 64);
  MEMORY[0x28223BE20](v4);
  v57 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2170080D4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v49 - v11;
  v54 = sub_217009BE4();
  v56 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDDD8, &unk_21702C9D8);
  v61 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v52 = &v49 - v15;
  sub_217009BF4();
  v16 = *v2;
  v17 = *(v2 + 8);
  v53 = v2;
  LOBYTE(v67) = v16;
  v68 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7C78, &qword_21701E920);
  v18 = sub_21700AEB4();
  v19 = v71;
  sub_216C0C924(v18, v20, v21, v22, v23, v24, v25, v26, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60);
  v27 = *(v7 + 16);
  v51 = v6;
  v27(v9, v12, v6);
  v28 = (*(v7 + 80) + 17) & ~*(v7 + 80);
  v29 = swift_allocObject();
  *(v29 + 16) = v19;
  (*(v7 + 32))(v29 + v28, v9, v6);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDDE0, &unk_21702C9E8);
  v31 = sub_216962E24(&qword_280E2A6D8, MEMORY[0x277CDE500], MEMORY[0x277CDE4F8]);
  v50 = v31;
  v32 = sub_217008CA4();
  v33 = sub_216962E24(&qword_280E2ACD8, MEMORY[0x277CDFCB0], MEMORY[0x277CDFCA8]);
  v67 = v32;
  v68 = v33;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v35 = v52;
  v36 = v54;
  MEMORY[0x21CE9B2F0](sub_216962D9C, v29, v54, v30, v31, OpaqueTypeConformance2);

  (*(v7 + 8))(v12, v51);
  v37 = v36;
  (*(v56 + 8))(v14, v36);
  v38 = v57;
  sub_216962EE4(v53, v57, type metadata accessor for ActionButtonStyle);
  v39 = (*(v60 + 80) + 16) & ~*(v60 + 80);
  v40 = swift_allocObject();
  sub_216962F40(v38, v40 + v39, type metadata accessor for ActionButtonStyle);
  v42 = v62;
  v41 = v63;
  v43 = v65;
  (*(v63 + 16))(v62, v55, v65);
  v44 = v41;
  v45 = (*(v41 + 80) + 16) & ~*(v41 + 80);
  v46 = swift_allocObject();
  (*(v44 + 32))(v46 + v45, v42, v43);
  v67 = v37;
  v68 = v30;
  v69 = v50;
  v70 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v47 = v59;
  sub_21700A5F4();

  return (*(v61 + 8))(v35, v47);
}

uint64_t sub_2169618CC(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v5 = sub_2170080D4();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    (*(v6 + 104))(v9, *MEMORY[0x277CDF3C0], v5, v7);
    sub_2170080C4();
    (*(v6 + 8))(v9, v5);
  }

  sub_217008CA4();
  sub_216962E24(&qword_280E2ACD8, MEMORY[0x277CDFCB0], MEMORY[0x277CDFCA8]);
  return sub_2170083B4();
}

uint64_t sub_216961AC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a1;
  v60 = a2;
  v3 = sub_217008474();
  v61 = *(v3 - 8);
  v62 = v3;
  MEMORY[0x28223BE20](v3);
  v59 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_217009C14();
  v58 = *(v66 - 8);
  v67 = *(v58 + 64);
  MEMORY[0x28223BE20](v66);
  v57 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ActionButtonListStyle(0);
  v54 = *(v6 - 8);
  v53 = *(v54 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v52 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_217009BE4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDDE8, &qword_21702C9F8);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v49 - v14;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDDF0, &qword_21702CA00);
  v50 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v17 = &v49 - v16;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDDF8, &qword_21702CA08);
  MEMORY[0x28223BE20](v51);
  v63 = &v49 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDE00, &qword_21702CA10);
  v20 = *(v19 - 8);
  v55 = v19;
  v56 = v20;
  MEMORY[0x28223BE20](v19);
  v65 = &v49 - v21;
  sub_217009BF4();
  v22 = sub_216962E24(&qword_280E2A6D8, MEMORY[0x277CDE500], MEMORY[0x277CDE4F8]);
  sub_21700AB94();
  (*(v9 + 8))(v11, v8);
  v69 = v8;
  v70 = v22;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_21700A744();
  (*(v13 + 8))(v15, v12);
  v24 = *(v2 + 8);
  v25 = *(v2 + 16);
  LOBYTE(v69) = *v2;
  v70 = v24;
  v71 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDE08, &unk_21702CA18);
  sub_217007F64();
  v69 = v12;
  v70 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v26 = v63;
  v27 = v49;
  sub_21700AA84();

  (*(v50 + 8))(v17, v27);
  v28 = *(v2 + 32);
  LOBYTE(v69) = *(v2 + 24);
  v70 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7C78, &qword_21701E920);
  sub_21700AEB4();
  v29 = sub_216962300(v68);
  v30 = sub_217009C84();
  v31 = v51;
  v32 = &v26[*(v51 + 36)];
  *v32 = v29;
  v32[8] = v30;
  v33 = v52;
  sub_216962EE4(v2, v52, type metadata accessor for ActionButtonListStyle);
  v34 = (*(v54 + 80) + 16) & ~*(v54 + 80);
  v35 = swift_allocObject();
  sub_216962F40(v33, v35 + v34, type metadata accessor for ActionButtonListStyle);
  v36 = v57;
  v37 = v58;
  v54 = *(v58 + 16);
  v38 = v66;
  (v54)(v57, v64, v66);
  v39 = (*(v37 + 80) + 16) & ~*(v37 + 80);
  v40 = swift_allocObject();
  v58 = *(v37 + 32);
  (v58)(v40 + v39, v36, v38);
  v41 = sub_2169630A4();
  v42 = v63;
  sub_21700A5F4();

  sub_216718928(v42);
  v43 = v59;
  sub_217008464();
  v44 = v66;
  (v54)(v36, v64, v66);
  v45 = swift_allocObject();
  (v58)(v45 + v39, v36, v44);
  v69 = v31;
  v70 = v41;
  swift_getOpaqueTypeConformance2();
  v46 = v55;
  v47 = v65;
  sub_21700A314();

  (*(v61 + 8))(v43, v62);
  return (*(v56 + 8))(v47, v46);
}

uint64_t sub_216962300(char a1)
{
  v3 = sub_2170090F4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = &v1[*(type metadata accessor for ActionButtonListStyle(0) + 28)];
  v8 = *v7;
  if (v7[8] != 1)
  {

    sub_21700ED94();
    v10 = sub_217009C34();
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();
    sub_216684F5C(v8, 0);
    (*(v4 + 8))(v6, v3);
    if (v15 != 1)
    {
      goto LABEL_3;
    }

    return sub_21700ACD4();
  }

  if (v8)
  {
    return sub_21700ACD4();
  }

LABEL_3:
  if (a1)
  {
    if (qword_27CAB5AB8 != -1)
    {
      swift_once();
    }

    v9 = qword_27CABDDB8;
LABEL_14:

    return v9;
  }

  v11 = *(v1 + 1);
  v12 = v1[16];
  v15 = *v1;
  v16 = v11;
  v17 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDE08, &unk_21702CA18);
  sub_217007F44();
  if (v14[7] != 1)
  {
    if (qword_27CAB5AC0 != -1)
    {
      swift_once();
    }

    v9 = qword_27CABDDC0;
    goto LABEL_14;
  }

  sub_21700AC54();
  v9 = sub_21700AD04();

  return v9;
}

uint64_t sub_216962564(char a1, uint64_t a2, uint64_t a3)
{
  sub_21700B3F4();
  sub_217008564();
}

uint64_t sub_21696262C@<X0>(uint64_t a1@<X8>)
{
  sub_217009C04();
  v2 = *MEMORY[0x277CDF120];
  v3 = sub_21700B294();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_2169626D4@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v18[1] = a4;
  v7 = sub_217009C14();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v18[0] = sub_217009BE4();
  v10 = *(v18[0] - 8);
  MEMORY[0x28223BE20](v18[0]);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217009BF4();
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  (*(v8 + 16))(v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v7);
  v14 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v15 = swift_allocObject();
  (*(v8 + 32))(v15 + v14, v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  sub_216962E24(&qword_280E2A6D8, MEMORY[0x277CDE500], MEMORY[0x277CDE4F8]);

  v16 = v18[0];
  sub_21700A5F4();

  return (*(v10 + 8))(v12, v16);
}

uint64_t sub_216962950(char a1, char a2, uint64_t a3)
{
  sub_21700B3F4();
  sub_217008564();
}

void sub_216962A74(uint64_t a1)
{
  sub_216962B90();
  if (v1 <= 0x3F)
  {
    sub_2166B3818(319, &qword_280E2A590, MEMORY[0x277CE10B8]);
    if (v2 <= 0x3F)
    {
      sub_216962BE8(319, &qword_280E2B460, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        sub_2166B3818(319, &qword_280E2B438, MEMORY[0x277CDF468]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_216962B90()
{
  if (!qword_280E2B4E8)
  {
    v0 = sub_217007FB4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E2B4E8);
    }
  }
}

void sub_216962BE8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_216962C94(uint64_t a1)
{
  sub_2166B3818(319, &qword_280E2A590, MEMORY[0x277CE10B8]);
  if (v1 <= 0x3F)
  {
    sub_216962BE8(319, &qword_280E2B460, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_216962D9C(uint64_t a1, uint64_t a2)
{
  v5 = sub_2170080D4();
  OUTLINED_FUNCTION_36(v5);
  v7 = *(v2 + 16);
  v8 = v2 + ((*(v6 + 80) + 17) & ~*(v6 + 80));

  return sub_2169618CC(a1, a2, v7, v8);
}

uint64_t sub_216962E24(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_216962EE4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  v4 = OUTLINED_FUNCTION_8();
  v5(v4);
  return a2;
}

uint64_t sub_216962F40(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  v4 = OUTLINED_FUNCTION_8();
  v5(v4);
  return a2;
}

uint64_t sub_216962FC8(char a1, uint64_t (*a2)(void), uint64_t a3)
{
  v6 = a2(0);
  OUTLINED_FUNCTION_36(v6);
  return sub_216962564(a1, v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80)), a3);
}

uint64_t sub_21696303C(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = a1(0);
  v4 = OUTLINED_FUNCTION_36(v3);
  return a2(v4);
}

unint64_t sub_2169630A4()
{
  result = qword_27CABDE10;
  if (!qword_27CABDE10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABDDF8, &qword_21702CA08);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABDDF0, &qword_21702CA00);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABDDE8, &qword_21702C9F8);
    sub_217009BE4();
    sub_216962E24(&qword_280E2A6D8, MEMORY[0x277CDE500], MEMORY[0x277CDE4F8]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_2166D9530(&qword_280E2A840, &qword_27CAB7BE8, &qword_217019E70, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABDE10);
  }

  return result;
}

uint64_t sub_21696323C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_217009C14();
  OUTLINED_FUNCTION_36(v2);

  return sub_21696262C(a1);
}

void sub_216963310(uint64_t a1)
{
  sub_21695FE9C(319, &qword_280E2A2A8, &qword_27CAB6D68, &qword_2170153A0, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_21695FE9C(319, &qword_280E29AA8, &qword_27CABCC98, &unk_21702A060, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_217007F04();
      if (v3 <= 0x3F)
      {
        sub_216962BE8(319, &qword_280E2B4C0, MEMORY[0x277D7EC08], MEMORY[0x277CDF468]);
        if (v4 <= 0x3F)
        {
          sub_21695FE9C(319, &qword_280E2B4D0, &qword_27CAB7310, &unk_2170170F0, MEMORY[0x277CDF468]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_2169634A0(uint64_t a1)
{
  sub_21695FE9C(319, &qword_280E2A2A8, &qword_27CAB6D68, &qword_2170153A0, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      sub_21695FE9C(319, &qword_280E29AA8, &qword_27CABCC98, &unk_21702A060, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_216962BE8(319, &qword_280E2B4C0, MEMORY[0x277D7EC08], MEMORY[0x277CDF468]);
        if (v4 <= 0x3F)
        {
          sub_21695FE9C(319, &qword_280E2B4D0, &qword_27CAB7310, &unk_2170170F0, MEMORY[0x277CDF468]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_216963624(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFE)
  {
    v8 = 2147483646;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = sub_2170075A4();
  v11 = *(v9 - 8);
  result = v9 - 8;
  v12 = v11;
  v13 = *(v11 + 64);
  v14 = 8;
  if (v13 > 8)
  {
    v14 = v13;
  }

  v15 = *(v6 + 80);
  if (!a2)
  {
    return 0;
  }

  if (v8 >= a2)
  {
LABEL_31:
    if (v7 > 0x7FFFFFFE)
    {

      return __swift_getEnumTagSinglePayload((((a1 + 47) & 0xFFFFFFFFFFFFFFF8) + v15 + 40) & ~v15, v7, v5);
    }

    else
    {
      v24 = *(a1 + 3);
      if (v24 >= 0xFFFFFFFF)
      {
        LODWORD(v24) = -1;
      }

      if ((v24 + 1) >= 2)
      {
        return v24;
      }

      else
      {
        return 0;
      }
    }
  }

  else
  {
    v16 = *(v12 + 80) & 0xF8 | 7;
    v17 = ((v14 + ((v16 + ((*(v6 + 64) + ((v15 + 80) & ~v15) + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v16) + 8) & 0xFFFFFFFFFFFFFFF8) + 41;
    if (v17 <= 3)
    {
      v18 = ((a2 - v8 + 255) >> 8) + 1;
    }

    else
    {
      v18 = 2;
    }

    if (v18 >= 0x10000)
    {
      v19 = 4;
    }

    else
    {
      v19 = 2;
    }

    if (v18 < 0x100)
    {
      v19 = 1;
    }

    if (v18 >= 2)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    switch(v20)
    {
      case 1:
        v21 = a1[v17];
        if (!a1[v17])
        {
          goto LABEL_31;
        }

        goto LABEL_24;
      case 2:
        v21 = *&a1[v17];
        if (!*&a1[v17])
        {
          goto LABEL_31;
        }

        goto LABEL_24;
      case 3:
        __break(1u);
        return result;
      case 4:
        v21 = *&a1[v17];
        if (!v21)
        {
          goto LABEL_31;
        }

LABEL_24:
        v22 = v17 > 3;
        if (v17 <= 3)
        {
          v23 = (v21 - 1) << (8 * v17);
        }

        else
        {
          v23 = 0;
        }

        if (v22)
        {
          v25 = *a1;
        }

        else
        {
          v25 = *a1;
        }

        result = v8 + (v25 | v23) + 1;
        break;
      default:
        goto LABEL_31;
    }
  }

  return result;
}

void sub_216963878(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  if (v9 <= 0x7FFFFFFE)
  {
    v10 = 2147483646;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(sub_2170075A4() - 8);
  v12 = 8;
  if (*(v11 + 64) > 8uLL)
  {
    v12 = *(v11 + 64);
  }

  v13 = *(v8 + 80);
  v14 = *(v11 + 80) & 0xF8 | 7;
  v15 = ((v12 + ((v14 + ((*(v8 + 64) + ((v13 + 80) & ~v13) + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v14) + 8) & 0xFFFFFFFFFFFFFFF8) + 41;
  if (v10 >= a3)
  {
    v18 = 0;
  }

  else
  {
    if (v15 <= 3)
    {
      v16 = ((a3 - v10 + 255) >> 8) + 1;
    }

    else
    {
      v16 = 2;
    }

    if (v16 >= 0x10000)
    {
      v17 = 4;
    }

    else
    {
      v17 = 2;
    }

    if (v16 < 0x100)
    {
      v17 = 1;
    }

    if (v16 >= 2)
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }
  }

  if (v10 >= a2)
  {
    switch(v18)
    {
      case 1:
        a1[v15] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 2:
        *&a1[v15] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 3:
LABEL_45:
        __break(1u);
        break;
      case 4:
        *&a1[v15] = 0;
        goto LABEL_32;
      default:
LABEL_32:
        if (a2)
        {
LABEL_33:
          if (v9 > 0x7FFFFFFE)
          {

            __swift_storeEnumTagSinglePayload((((a1 + 47) & 0xFFFFFFFFFFFFFFF8) + v13 + 40) & ~v13, a2, v9, v7);
          }

          else if (a2 > 0x7FFFFFFE)
          {
            *(a1 + 4) = 0;
            *a1 = 0u;
            *(a1 + 1) = 0u;
            *a1 = a2 - 0x7FFFFFFF;
          }

          else
          {
            *(a1 + 3) = a2;
          }
        }

        break;
    }
  }

  else
  {
    v19 = ~v10 + a2;
    bzero(a1, v15);
    if (v15 <= 3)
    {
      v20 = (v19 >> 8) + 1;
    }

    else
    {
      v20 = 1;
    }

    if (v15 > 3)
    {
      *a1 = v19;
    }

    else
    {
      *a1 = v19;
    }

    switch(v18)
    {
      case 1:
        a1[v15] = v20;
        break;
      case 2:
        *&a1[v15] = v20;
        break;
      case 3:
        goto LABEL_45;
      case 4:
        *&a1[v15] = v20;
        break;
      default:
        return;
    }
  }
}

uint64_t objectdestroy_28Tm_0()
{
  sub_217009C14();
  OUTLINED_FUNCTION_9_0();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));
  OUTLINED_FUNCTION_14_31();

  return swift_deallocObject();
}

uint64_t sub_216963C9C@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  type metadata accessor for ActionButtonModifier(255, v4, v5, a1);
  OUTLINED_FUNCTION_2_59();
  swift_getWitnessTable();
  v6 = sub_2170097A4();
  OUTLINED_FUNCTION_36(v6);
  v9 = v2 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_21696114C(v9, v4, v5, a2, v7);
}

uint64_t sub_216963D78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7();
  v11 = v10 - v9;
  v12 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_7();
  v18 = v17 - v16;
  sub_21700D284();
  OUTLINED_FUNCTION_1();
  v27 = v20;
  v28 = v19;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_7();
  v23 = v22 - v21;
  (*(v14 + 16))(v18, a1, v12);
  (*(v7 + 16))(v11, a2, v5);
  sub_21700D224();
  (*(v7 + 8))(a2, v5);
  if (v30)
  {
    return (*(v14 + 8))(a1, v12);
  }

  (*(v14 + 8))(a1, v12);
  (*(v27 + 32))(a3, v23, v28);
  v25 = *(type metadata accessor for ReportMusicItemConcernAction(0) + 20);
  v26 = type metadata accessor for ReportableMusicItem(0);
  return __swift_storeEnumTagSinglePayload(a3 + v25, 1, 1, v26);
}

void sub_216964018(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7088, &qword_217020CA0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  v6 = sub_2170067A4();
  v7 = MEMORY[0x28223BE20](v6);
  (*(v9 + 16))(&v10 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v6, v7);
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v6);
  type metadata accessor for AnyPlayableItemState(0);
  swift_allocObject();

  sub_216968140();
}

uint64_t sub_216964174@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  type metadata accessor for AnyPlayableItemState(0);
  sub_216964CFC(&qword_280E3CC00, type metadata accessor for AnyPlayableItemState, &unk_21702D400);
  sub_2170081B4();
  v5 = sub_2169680CC();

  if ((v5 & 1) == 0)
  {
    goto LABEL_5;
  }

  if (qword_280E2B8F8 != -1)
  {
    result = swift_once();
  }

  if ((byte_280E73A80 & 1) == 0)
  {
    sub_21700ACC4();
    v7 = sub_21700AD04();

    v14 = *(v1 + 24);
    v9 = swift_allocObject();
    v11 = *(v1 + 16);
    *(v9 + 16) = *v1;
    *(v9 + 32) = v11;
    *(v9 + 48) = *(v1 + 32);
    sub_2167759EC(v3, v4);
    sub_216964AE0(&v14, &v13);
    sub_216C6D16C();
    v12 = sub_217006BD4();

    v8 = sub_216964AD8;
    sub_2167759EC(sub_216964AD8, v9);
    sub_2166B8588(sub_216964AD8, v9);

    if (v12)
    {
      v10 = 256;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
LABEL_5:
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
  }

  *a1 = v7;
  *(a1 + 8) = v8;
  *(a1 + 16) = v9;
  *(a1 + 24) = v10;
  return result;
}

uint64_t sub_216964364(uint64_t a1)
{
  sub_216C6D16C();
  v1 = sub_217006D94();

  return v1;
}

uint64_t sub_2169643A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v39 = a4;
  v7 = sub_217006BC4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v35[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v13 = &v35[-v12];
  MEMORY[0x28223BE20](v14);
  v16 = &v35[-v15];
  sub_217006D44();
  sub_216964CFC(&qword_280E4A420, MEMORY[0x277D2A918], MEMORY[0x277D2A910]);
  v36 = a3;
  v37 = a1;
  v38 = a2;
  sub_2170081B4();
  sub_217006CF4();

  v17 = (*(v8 + 88))(v16, v7);
  if (v17 == *MEMORY[0x277D2A898] || v17 == *MEMORY[0x277D2A890])
  {
    goto LABEL_6;
  }

  v23 = *MEMORY[0x277D2A880];
  if (v17 != v23)
  {
    if (v17 != *MEMORY[0x277D2A878])
    {
      if (v17 == *MEMORY[0x277D2A888])
      {
        goto LABEL_9;
      }

      if (v17 != *MEMORY[0x277D2A870])
      {
        v33 = *MEMORY[0x277D26A58];
        v34 = sub_217006544();
        (*(*(v34 - 8) + 104))(v39, v33, v34);
        return (*(v8 + 8))(v16, v7);
      }
    }

LABEL_6:
    v19 = MEMORY[0x277D26A60];
LABEL_7:
    v20 = *v19;
    v21 = sub_217006544();
    return (*(*(v21 - 8) + 104))(v39, v20, v21);
  }

LABEL_9:
  v24 = v36;
  sub_2170081B4();
  sub_217006CF4();

  (*(v8 + 104))(v10, v23, v7);
  v25 = sub_217006BB4();
  v26 = *(v8 + 8);
  v26(v10, v7);
  v26(v13, v7);
  if (v25)
  {
    sub_2170081B4();
    v27 = sub_217006CD4();

    if ((v27 & 0x17FFFFFFFLL) == 0)
    {
      v19 = MEMORY[0x277D26A70];
      goto LABEL_7;
    }
  }

  v28 = sub_217006534();
  v29 = MEMORY[0x277D26A40];
  if ((v24 & 0x100) != 0)
  {
    v29 = MEMORY[0x277D26A48];
  }

  v30 = v39;
  (*(*(v28 - 8) + 104))(v39, *v29, v28);
  v31 = *MEMORY[0x277D26A68];
  v32 = sub_217006544();
  return (*(*(v32 - 8) + 104))(v30, v31, v32);
}

uint64_t sub_2169647C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int16 a3@<W2>, uint64_t a4@<X8>)
{
  v19[0] = a4;
  v7 = sub_217006644();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_217006544();
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_217006404();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = v19 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2169643A0(a1, a2, a3 & 0x101, v13);
  sub_2170063F4();
  sub_217006634();
  sub_216964CFC(&qword_280E4A4B0, MEMORY[0x277D269B8], MEMORY[0x277D269B0]);
  sub_21700A294();
  (*(v8 + 8))(v10, v7);
  return (*(v15 + 8))(v17, v14);
}

uint64_t sub_2169649F8@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 17))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return sub_2169647C8(*v1, *(v1 + 8), v2 | *(v1 + 16), a1);
}

uint64_t sub_216964A24(uint64_t a1, int a2)
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

uint64_t sub_216964A64(uint64_t result, int a2, int a3)
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

uint64_t sub_216964AE0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDEC0, &qword_21702CD80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_216964B64(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 18))
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

uint64_t sub_216964BA4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

unint64_t sub_216964BF8()
{
  result = qword_280E2A488;
  if (!qword_280E2A488)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABDEC8, &qword_21702CE18);
    sub_216964C7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2A488);
  }

  return result;
}

unint64_t sub_216964C7C()
{
  result = qword_280E2A490;
  if (!qword_280E2A490)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABDED0, qword_21702CE20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2A490);
  }

  return result;
}

uint64_t sub_216964CFC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_216964D60()
{
  v0 = sub_217007CA4();
  __swift_allocate_value_buffer(v0, qword_27CABDED8);
  __swift_project_value_buffer(v0, qword_27CABDED8);
  return sub_217007C94();
}

void sub_216964DE0(void *a1, void (*a2)(uint64_t *), uint64_t a3)
{
  sub_2169651C4();
  if (v6)
  {
    v7 = v6;
    v8 = sub_216965770(a1);
    if (!v8)
    {
      v8 = sub_21700E384();
    }

    v9 = v8;
    if (qword_27CAB5AC8 != -1)
    {
      OUTLINED_FUNCTION_0_90(&qword_27CAB5AC8);
    }

    v10 = sub_217007CA4();
    __swift_project_value_buffer(v10, qword_27CABDED8);
    sub_21700DF14();
    v11 = sub_217007C84();
    v12 = sub_21700EDA4();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v27[0] = v14;
      *v13 = 136446210;
      v15 = sub_21700E364();
      v17 = sub_2166A85FC(v15, v16, v27);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_216679000, v11, v12, "Additional Parameters: %{public}s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_6();
    }

    v18 = objc_opt_self();
    sub_2169FD23C(v9);

    v19 = sub_21700E344();

    v20 = swift_allocObject();
    *(v20 + 16) = a2;
    *(v20 + 24) = a3;
    v28 = sub_2169657DC;
    v29 = v20;
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 1107296256;
    v27[2] = sub_2169F0990;
    v27[3] = &block_descriptor_9;
    v21 = _Block_copy(v27);

    [v18 presentFamilyCircleSheet:v7 withParameters:v19 completionHandler:v21];
    _Block_release(v21);
  }

  else
  {
    if (qword_27CAB5AC8 != -1)
    {
      OUTLINED_FUNCTION_0_90(&qword_27CAB5AC8);
    }

    v22 = sub_217007CA4();
    __swift_project_value_buffer(v22, qword_27CABDED8);
    v23 = sub_217007C84();
    v24 = sub_21700ED84();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v27[0] = v26;
      *v25 = 136315138;
      *(v25 + 4) = sub_2166A85FC(0xD000000000000027, 0x80000002170852A0, v27);
      _os_log_impl(&dword_216679000, v23, v24, "%s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_6();
    }

    sub_216965530();
    v27[0] = swift_allocError();
    LOBYTE(v28) = 1;
    a2(v27);
    sub_216965584(v27);
  }
}

void sub_2169651C4()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = [v0 connectedScenes];

  sub_2169657E4();
  sub_2166CB5AC();
  v2 = sub_21700EB84();

  v38 = v2;
  v39 = sub_21696570C;
  v40 = 0;
  v41 = sub_216965B84;
  v42 = 0;
  sub_2169658B0();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_216965828(v2);
  v11 = v10;
  v13 = v12;
  v14 = sub_21696587C(v4, v6, v8 & 1, v9, v10, v12 & 1);
  sub_2166F42E8(v9, v11, v13 & 1);
  if (v14)
  {
    sub_2166F42E8(v4, v6, v8 & 1);

    return;
  }

  sub_216ABE020(v4, v6, v8 & 1, v2, v15, v16, v17, v18, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48);
  v20 = v19;
  objc_opt_self();
  v21 = swift_dynamicCastObjCClass();
  if (!v21)
  {

    goto LABEL_18;
  }

  v22 = [v21 keyWindow];

  if (!v22)
  {
LABEL_18:
    __break(1u);
    return;
  }

  sub_2166F42E8(v4, v6, v8 & 1);

  v23 = [v22 rootViewController];

  if (v23)
  {
    v24 = v23;
    for (i = v24; ; i = v27)
    {
      v26 = [i presentedViewController];
      if (!v26)
      {
        break;
      }

      v27 = v26;
      if ([v26 isBeingDismissed])
      {

        break;
      }
    }

    if (qword_27CAB5AC8 != -1)
    {
      swift_once();
    }

    v28 = sub_217007CA4();
    __swift_project_value_buffer(v28, qword_27CABDED8);
    v29 = i;
    v30 = sub_217007C84();
    v31 = sub_21700ED74();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v37 = v33;
      *v32 = 136315138;
      swift_getObjectType();
      v34 = sub_21700F9C4();
      v36 = sub_2166A85FC(v34, v35, &v37);

      *(v32 + 4) = v36;
      _os_log_impl(&dword_216679000, v30, v31, "Using topmost controller: %s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v33);
      MEMORY[0x21CEA1440](v33, -1, -1);
      MEMORY[0x21CEA1440](v32, -1, -1);
    }
  }
}

unint64_t sub_216965530()
{
  result = qword_27CABDEF0;
  if (!qword_27CABDEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABDEF0);
  }

  return result;
}

uint64_t sub_216965584(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC9DD0, &unk_2170375A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2169655EC(void (*a1)(_BYTE *))
{
  if (qword_27CAB5AC8 != -1)
  {
    swift_once();
  }

  v2 = sub_217007CA4();
  __swift_project_value_buffer(v2, qword_27CABDED8);
  v3 = sub_217007C84();
  v4 = sub_21700EDA4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_216679000, v3, v4, "Dismissed FamilyCircle View", v5, 2u);
    MEMORY[0x21CEA1440](v5, -1, -1);
  }

  v8 = MEMORY[0x277D839B0];
  v7[0] = 1;
  v9 = 0;
  a1(v7);
  return sub_216965584(v7);
}

id sub_21696570C@<X0>(void *a2@<X8>)
{
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    result = [result keyWindow];
  }

  *a2 = result;
  return result;
}

uint64_t sub_216965770(void *a1)
{
  v1 = [a1 parameters];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_21700E354();

  return v3;
}

unint64_t sub_2169657E4()
{
  result = qword_280E29B30;
  if (!qword_280E29B30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280E29B30);
  }

  return result;
}

uint64_t sub_216965828(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return sub_21700F304();
  }

  else
  {
    return 1 << *(a1 + 32);
  }
}

BOOL sub_21696587C(uint64_t a1, int a2, char a3, uint64_t a4, int a5, char a6)
{
  if (a3)
  {
    if (a6)
    {
LABEL_9:
      JUMPOUT(0x21CEA00A0);
    }

LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (a6)
  {
    goto LABEL_8;
  }

  if (a2 != a5)
  {
    __break(1u);
    goto LABEL_8;
  }

  return a1 == a4;
}

void sub_2169658B0()
{
  v1 = *v0;
  v34 = v0[2];
  v35 = v0[1];
  v33 = v0[3];
  v38 = sub_216ABDFC4(*v0);
  v39 = v2;
  v7 = v1 & 0xC000000000000001;
  v40 = v8 & 1;
  v31 = (v1 + 64);
  v32 = v1 + 56;
  while (1)
  {
    if (v7)
    {
      v9 = sub_21700F304();
      if ((v40 & 1) == 0)
      {
        goto LABEL_31;
      }

      v11 = v9;
      v12 = v10;
      v14 = v38;
      v13 = v39;
      v15 = MEMORY[0x21CEA00A0](v38, v39, v9, v10);
      sub_2166F42E8(v11, v12, 1);
      if (v15)
      {
        return;
      }

      goto LABEL_9;
    }

    if (v40)
    {
      goto LABEL_31;
    }

    v13 = v39;
    if (*(v1 + 36) != v39)
    {
      break;
    }

    v14 = v38;
    if (v38 == 1 << *(v1 + 32))
    {
      return;
    }

LABEL_9:
    sub_216ABE020(v14, v13, (v1 & 0xC000000000000001) != 0, v1, v3, v4, v5, v6, v30, v31, v32, v33, v34, v35, v36[0], v36[1], v36[2], v36[3], v37, v38);
    v17 = v16;
    v37 = v16;
    v35(v36, &v37);

    v18 = v36[0];
    v37 = v36[0];
    v19 = v33(&v37);

    if (v19)
    {
      return;
    }

    if (v7)
    {
      if (sub_21700F274())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDEF8, &unk_21702CEB0);
      v24 = sub_21700EBB4();
      sub_21700F314();
      v24(v36, 0);
    }

    else
    {
      if ((v14 & 0x8000000000000000) != 0)
      {
        goto LABEL_28;
      }

      v20 = 1 << *(v1 + 32);
      if (v14 >= v20)
      {
        goto LABEL_28;
      }

      v21 = v14 >> 6;
      v22 = *(v32 + 8 * (v14 >> 6));
      if (((v22 >> v14) & 1) == 0)
      {
        goto LABEL_29;
      }

      if (*(v1 + 36) != v13)
      {
        goto LABEL_30;
      }

      v23 = v22 & (-2 << (v14 & 0x3F));
      if (v23)
      {
        v20 = __clz(__rbit64(v23)) | v14 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v25 = v21 << 6;
        v26 = v21 + 1;
        v27 = &v31[8 * v21];
        while (v26 < (v20 + 63) >> 6)
        {
          v29 = *v27++;
          v28 = v29;
          v25 += 64;
          ++v26;
          if (v29)
          {
            sub_2166F42E8(v14, v13, 0);
            v20 = __clz(__rbit64(v28)) + v25;
            goto LABEL_25;
          }
        }

        sub_2166F42E8(v14, v13, 0);
      }

LABEL_25:
      v38 = v20;
      v39 = v13;
      v40 = 0;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
}

_BYTE *sub_216965B8C(_BYTE *result, int a2, int a3)
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

unint64_t sub_216965C3C()
{
  result = qword_27CABDF00;
  if (!qword_27CABDF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABDF00);
  }

  return result;
}

uint64_t type metadata accessor for ArtistUploadedVideoDetailPageIntent(uint64_t a1)
{
  result = qword_27CABDF08;
  if (!qword_27CABDF08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_216965D50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v52 = a2;
  v47 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0, &qword_21701D5F0);
  MEMORY[0x28223BE20](v4 - 8);
  v46 = &v43 - v5;
  v6 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_0();
  v45 = v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v43 - v12;
  v48 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_1_0();
  v44 = v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v43 - v19;
  v21 = type metadata accessor for ContentDescriptor(0);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v43 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21700CE04();
  v24 = *(v8 + 16);
  v50 = v6;
  v24(v13, v52, v6);
  v25 = v49;
  ContentDescriptor.init(deserializing:using:)(v20, v13, v26, v27, v28, v29, v30, v31, v43, v44, SWORD2(v44), SBYTE6(v44), SHIBYTE(v44), v45, v46, v47, v48, v49, v50, v51, v52, v53, v54);
  if (v25)
  {
    (*(v8 + 8))(v52, v50);
    return (*(v15 + 8))(a1, v48);
  }

  else
  {
    v43 = v15;
    v49 = v8;
    v33 = v47;
    v34 = v48;
    sub_2168ED900(v23, v47);
    v35 = v44;
    sub_21700CE04();
    v36 = v45;
    v37 = v52;
    (v24)(v45);
    v38 = v46;
    ReferrerInfo.init(deserializing:using:)(v35, v36, v46);
    v39 = v34;
    v40 = v43;
    (*(v49 + 8))(v37, v50);
    (*(v40 + 8))(a1, v39);
    v41 = type metadata accessor for ReferrerInfo(0);
    __swift_storeEnumTagSinglePayload(v38, 0, 1, v41);
    v42 = type metadata accessor for ArtistUploadedVideoDetailPageIntent(0);
    return sub_21693FB5C(v38, v33 + *(v42 + 20));
  }
}

id sub_2169660E0(JSContext a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0, &qword_21701D5F0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  result = [objc_opt_self() valueWithNewObjectInContext_];
  if (result)
  {
    v7 = result;
    ContentDescriptor.makeValue(in:)(a1);
    sub_21700F0B4();
    v8 = type metadata accessor for ArtistUploadedVideoDetailPageIntent(0);
    sub_2168CC268(v1 + *(v8 + 20), v5);
    v9 = type metadata accessor for ReferrerInfo(0);
    if (__swift_getEnumTagSinglePayload(v5, 1, v9) == 1)
    {
      sub_2168CC2D8(v5);
      isa = 0;
    }

    else
    {
      isa = ReferrerInfo.makeValue(in:)(a1).super.isa;
      sub_2168CC340(v5);
    }

    sub_2166F1F64(isa, 0x7265727265666572, 0xEC0000006F666E49);
    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2169662B4(uint64_t a1)
{
  result = sub_2166CE474(&qword_27CABDF18, type metadata accessor for ArtistUploadedVideoDetailPageIntent, &unk_21702CFD0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216966354(uint64_t a1)
{
  *(a1 + 8) = sub_2166CE474(&qword_27CABDF18, type metadata accessor for ArtistUploadedVideoDetailPageIntent, &unk_21702CFD0);
  result = sub_2166CE474(&qword_27CABDF20, type metadata accessor for ArtistUploadedVideoDetailPageIntent, &unk_21702CFB4);
  *(a1 + 16) = result;
  return result;
}

uint64_t type metadata accessor for CreateArtistStationAction(uint64_t a1)
{
  result = qword_280E35A80;
  if (!qword_280E35A80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21696644C(uint64_t a1)
{
  result = sub_21700D284();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ContentDescriptor(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2169664D0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v44 = a2;
  v49 = a1;
  v2 = type metadata accessor for ContentDescriptor(0);
  MEMORY[0x28223BE20](v2 - 8);
  v41 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_0();
  v40 = v8;
  MEMORY[0x28223BE20](v9);
  v11 = &v38 - v10;
  v46 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1_0();
  v39 = v13;
  MEMORY[0x28223BE20](v14);
  sub_21700D284();
  OUTLINED_FUNCTION_1();
  v42 = v16;
  v43 = v15;
  MEMORY[0x28223BE20](v15);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21700CE04();
  v19 = *(v6 + 16);
  v47 = v4;
  v19(v11, v49, v4);
  v20 = v45;
  sub_21700D224();
  if (v20)
  {
    (*(v6 + 8))(v49, v47);
    v21 = OUTLINED_FUNCTION_1_74();
    return v22(v21);
  }

  else
  {
    v45 = v6;
    (*(v42 + 32))(v44, v18, v43);
    v24 = v39;
    sub_21700CE04();
    v25 = v40;
    v19(v40, v49, v47);
    v26 = v41;
    ContentDescriptor.init(deserializing:using:)(v24, v25, v27, v28, v29, v30, v31, v32, v38, v39, SWORD2(v39), SBYTE6(v39), SHIBYTE(v39), v40, v41, v42, v43, v44, v45, v46, v47, v48, v49);
    v33 = OUTLINED_FUNCTION_2_60();
    v34(v33);
    v35 = OUTLINED_FUNCTION_1_74();
    v36(v35);
    ArtistStationAction = type metadata accessor for CreateArtistStationAction(0);
    return sub_2168ED900(v26, v44 + *(ArtistStationAction + 20));
  }
}

uint64_t type metadata accessor for InlineUpsellView(uint64_t a1)
{
  result = qword_280E40FB8;
  if (!qword_280E40FB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2169668F8(uint64_t a1)
{
  result = type metadata accessor for InlineUpsell(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_216966980@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_2170093B4();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDF28, &qword_21702D1E0);
  sub_216966AB0(v2, a2 + *(v4 + 44));
  v5 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDF30, &unk_21702D1E8) + 36);
  sub_21700B2B4();
  v6 = sub_217009C84();
  *(v5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7B20, &qword_2170180F0) + 36)) = v6;
  v7 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDF38, &unk_21702D1F8) + 36));
  v8 = *(sub_217008B44() + 20);
  v9 = *MEMORY[0x277CE0118];
  sub_217009294();
  OUTLINED_FUNCTION_9();
  (*(v10 + 104))(&v7[v8], v9);
  __asm { FMOV            V0.2D, #7.0 }

  *v7 = _Q0;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7438, &qword_21701A4C0);
  *&v7[*(result + 36)] = 256;
  return result;
}

uint64_t sub_216966AB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v112 = a2;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDF40, &unk_21702D208);
  MEMORY[0x28223BE20](v107);
  v92 = (&v91 - v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB230, &qword_217023350);
  MEMORY[0x28223BE20](v4 - 8);
  v111 = &v91 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v91 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDF48, &qword_21702D218);
  v103 = *(v9 - 8);
  v104 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v91 - v10;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDF50, &unk_21702D220);
  MEMORY[0x28223BE20](v100);
  v102 = &v91 - v12;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB228, &qword_217023348);
  MEMORY[0x28223BE20](v101);
  v109 = &v91 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v99 = &v91 - v15;
  MEMORY[0x28223BE20](v16);
  v113 = &v91 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB218, &qword_21702D230);
  MEMORY[0x28223BE20](v18 - 8);
  v108 = &v91 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v91 - v21;
  *v22 = sub_2170091A4();
  *(v22 + 1) = 0;
  v22[16] = 1;
  v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDF58, &qword_21702D238) + 44);
  v106 = v22;
  sub_216967574(a1, &v22[v23]);
  v24 = type metadata accessor for InlineUpsell(0);
  v25 = (a1 + *(v24 + 24));
  v26 = v25[1];
  v110 = v8;
  v105 = a1;
  v93 = v24;
  if (v26)
  {
    v27 = *v25;
    v28 = MEMORY[0x277D84F90];
  }

  else
  {
    v27 = 0;
    v28 = 0;
  }

  sub_21700DF14();
  v29 = sub_217009814();
  v30 = sub_217009D74();
  KeyPath = swift_getKeyPath();
  *v143 = v27;
  *&v143[8] = v26;
  *&v143[16] = 0;
  *&v143[24] = v28;
  *&v143[32] = v29;
  *&v143[40] = KeyPath;
  *&v143[48] = v30;
  sub_217009D94();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDF60, &qword_21702D270);
  sub_216967D30();
  sub_21700A304();
  sub_2167C4DF0(v27, v26, 0, v28);

  v32 = swift_getKeyPath();
  v33 = v102;
  (*(v103 + 32))(v102, v11, v104);
  v34 = &v33[*(v100 + 36)];
  *v34 = v32;
  v34[8] = 1;
  LOBYTE(v32) = sub_217009C74();
  sub_217007F24();
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v43 = v33;
  v44 = v99;
  sub_2166DDCC0(v43, v99, &qword_27CABDF50, &unk_21702D220);
  v45 = v44 + *(v101 + 36);
  *v45 = v32;
  *(v45 + 8) = v36;
  *(v45 + 16) = v38;
  *(v45 + 24) = v40;
  *(v45 + 32) = v42;
  *(v45 + 40) = 0;
  sub_2166DDCC0(v44, v113, &qword_27CABB228, &qword_217023348);
  sub_21700B3B4();
  sub_2170083C4();
  v99 = v153;
  v104 = v157;
  v102 = v155;
  v103 = v158;
  v152 = 1;
  v150 = v154;
  v148 = v156;
  v46 = v93;
  v47 = v105;
  v48 = (v105 + *(v93 + 28));
  v49 = v48[1];
  if (v49)
  {
    v100 = *v48;
    v101 = MEMORY[0x277D84F90];
  }

  else
  {
    v100 = 0;
    v101 = 0;
  }

  sub_21700DF14();
  v98 = sub_217009834();
  v97 = sub_217009D54();
  v96 = swift_getKeyPath();
  v94 = swift_getKeyPath();
  v95 = sub_217009C74();
  sub_217007F24();
  v51 = v50;
  v53 = v52;
  v55 = v54;
  v57 = v56;
  v146 = 0;
  v58 = (v47 + *(v46 + 32));
  v59 = v58[1];
  if (!v59)
  {
    goto LABEL_11;
  }

  v60 = *v58;
  sub_2166A6F60(v47 + *(v46 + 36), v122, &qword_27CAB6DB0, &qword_217016C00);
  if (!*&v122[24])
  {
    sub_2166997CC(v122, &qword_27CAB6DB0, &qword_217016C00);
LABEL_11:
    v80 = v110;
    v81 = v110;
    v82 = 1;
    v83 = v107;
    goto LABEL_12;
  }

  sub_2166A0F18(v122, v143);
  v61 = v92;
  sub_2167B7D58(v143, v92);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDF80, &qword_21702D2B8);
  v63 = v62[11];
  v64 = sub_217007F04();
  __swift_storeEnumTagSinglePayload(v61 + v63, 1, 1, v64);
  v65 = swift_allocObject();
  *(v65 + 16) = v60;
  *(v65 + 24) = v59;
  v66 = v62[12];
  *(v61 + v66) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
  swift_storeEnumTagMultiPayload();
  v67 = v61 + v62[13];
  *v67 = swift_getKeyPath();
  v67[40] = 0;
  v61[5] = sub_216967EA0;
  v61[6] = v65;
  v61[7] = 0;
  v61[8] = 0;
  v68 = v61 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDF88, &qword_21702D328) + 36);
  sub_21700DF14();
  sub_217008744();
  v69 = sub_217009C84();
  __swift_destroy_boxed_opaque_existential_1Tm(v143);
  v68[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDF90, &unk_21702D330) + 36)] = v69;
  v70 = v107;
  v71 = v61 + *(v107 + 36);
  v72 = *(sub_217008B44() + 20);
  v73 = *MEMORY[0x277CE0118];
  v74 = sub_217009294();
  (*(*(v74 - 8) + 104))(&v71[v72], v73, v74);
  __asm { FMOV            V0.2D, #5.0 }

  *v71 = _Q0;
  *&v71[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7438, &qword_21701A4C0) + 36)] = 256;
  v80 = v110;
  sub_2166DDCC0(v61, v110, &qword_27CABDF40, &unk_21702D208);
  v81 = v80;
  v82 = 0;
  v83 = v70;
LABEL_12:
  __swift_storeEnumTagSinglePayload(v81, v82, 1, v83);
  sub_21700B3B4();
  sub_2170083C4();
  v84 = v159;
  v93 = v161;
  v107 = v163;
  v105 = v164;
  v142 = 1;
  v141 = v160;
  v140 = v162;
  v85 = v106;
  v86 = v108;
  sub_2166A6F60(v106, v108, &qword_27CABB218, &qword_21702D230);
  v134 = v86;
  v87 = v113;
  v88 = v109;
  sub_2166A6F60(v113, v109, &qword_27CABB228, &qword_217023348);
  v123 = 0;
  v124 = v152;
  *v125 = *v151;
  *&v125[3] = *&v151[3];
  v126 = v99;
  v127 = v150;
  *v128 = *v149;
  *&v128[3] = *&v149[3];
  v129 = v102;
  v130 = v148;
  *v131 = *v147;
  *&v131[3] = *&v147[3];
  v132 = v104;
  v133 = v103;
  v135 = v88;
  v136 = &v123;
  *v122 = v100;
  *&v122[8] = v49;
  *&v122[16] = 0;
  *&v122[24] = v101;
  *&v122[32] = v98;
  *&v122[40] = v96;
  *&v122[48] = v97;
  *&v122[56] = v94;
  v122[64] = 1;
  *&v122[65] = *v145;
  *&v122[68] = *&v145[3];
  v122[72] = v95;
  *&v122[73] = *v144;
  *&v122[76] = *&v144[3];
  *&v122[80] = v51;
  *&v122[88] = v53;
  *&v122[96] = v55;
  *&v122[104] = v57;
  v122[112] = 0;
  v137 = v122;
  v89 = v111;
  sub_2166A6F60(v80, v111, &qword_27CABB230, &qword_217023350);
  v114 = 0;
  v115 = v142;
  v116 = v84;
  v117 = v141;
  v118 = v93;
  v119 = v140;
  v120 = v107;
  v121 = v105;
  v138 = v89;
  v139 = &v114;
  sub_2168AAAA8();
  sub_2166997CC(v80, &qword_27CABB230, &qword_217023350);
  sub_2166997CC(v87, &qword_27CABB228, &qword_217023348);
  sub_2166997CC(v85, &qword_27CABB218, &qword_21702D230);
  sub_2166997CC(v89, &qword_27CABB230, &qword_217023350);
  memcpy(v143, v122, sizeof(v143));
  sub_2166997CC(v143, &qword_27CABB238, qword_217023358);
  sub_2166997CC(v88, &qword_27CABB228, &qword_217023348);
  return sub_2166997CC(v86, &qword_27CABB218, &qword_21702D230);
}

uint64_t sub_216967574@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDFB0, &qword_21702D358);
  v5 = (v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v29 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDFB8, &qword_21702D360);
  MEMORY[0x28223BE20](v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v29 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v29 - v15;
  v17 = type metadata accessor for InlineUpsell(0);
  sub_2166A6F60(a1 + *(v17 + 44), v7, &qword_27CAB6DB0, &qword_217016C00);
  v18 = v5[13];
  v19 = sub_217007F04();
  __swift_storeEnumTagSinglePayload(v7 + v18, 1, 1, v19);
  v20 = v5[14];
  *(v7 + v20) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
  swift_storeEnumTagMultiPayload();
  v21 = v7 + v5[15];
  *v21 = swift_getKeyPath();
  v21[40] = 0;
  v7[7] = 0;
  v7[8] = 0;
  v7[5] = sub_2169678C8;
  v7[6] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDFC0, &qword_21702D368);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_217013D90;
  v23 = sub_217009CD4();
  *(inited + 32) = v23;
  v24 = sub_217009C94();
  *(inited + 33) = v24;
  v25 = sub_217009CC4();
  sub_217009CC4();
  if (sub_217009CC4() != v23)
  {
    v25 = sub_217009CC4();
  }

  sub_217009CC4();
  if (sub_217009CC4() != v24)
  {
    v25 = sub_217009CC4();
  }

  sub_2166DDCC0(v7, v13, &qword_27CABDFB0, &qword_21702D358);
  v26 = &v13[*(v8 + 36)];
  *v26 = v25;
  *(v26 + 8) = 0u;
  *(v26 + 24) = 0u;
  v26[40] = 1;
  sub_2166DDCC0(v13, v16, &qword_27CABDFB8, &qword_21702D360);
  sub_2166A6F60(v16, v10, &qword_27CABDFB8, &qword_21702D360);
  *a2 = 0;
  *(a2 + 8) = 1;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDFC8, &qword_21702D370);
  sub_2166A6F60(v10, a2 + *(v27 + 48), &qword_27CABDFB8, &qword_21702D360);
  sub_2166997CC(v16, &qword_27CABDFB8, &qword_21702D360);
  return sub_2166997CC(v10, &qword_27CABDFB8, &qword_21702D360);
}

uint64_t sub_2169678C8@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_21700ADB4();
  v3 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8B38, &unk_2170586D0) + 36));
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7820, &qword_21701A450) + 28);
  v5 = *MEMORY[0x277CE1050];
  v6 = sub_21700ADF4();
  (*(*(v6 - 8) + 104))(v3 + v4, v5, v6);
  *v3 = swift_getKeyPath();
  *a1 = v2;
  v7 = sub_21700AD34();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDFD0, &qword_21702D3A8);
  *(a1 + *(result + 36)) = v7;
  return result;
}

uint64_t sub_2169679C4@<X0>(uint64_t a2@<X8>)
{
  sub_21700DF14();
  sub_217009D54();
  swift_getKeyPath();
  sub_217009D94();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7660, &qword_2170189A0);
  sub_2167C4CBC();
  sub_21700A304();

  v3 = sub_21700ACF4();
  *(a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDF98, &qword_21702D340) + 36)) = v3;
  LOBYTE(v3) = sub_217009C74();
  sub_217007F24();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDFA0, &qword_21702D348) + 36);
  *v12 = v3;
  *(v12 + 8) = v5;
  *(v12 + 16) = v7;
  *(v12 + 24) = v9;
  *(v12 + 32) = v11;
  *(v12 + 40) = 0;
  LOBYTE(v3) = sub_217009CE4();
  sub_217007F24();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDFA8, &qword_21702D350);
  v22 = a2 + *(result + 36);
  *v22 = v3;
  *(v22 + 8) = v14;
  *(v22 + 16) = v16;
  *(v22 + 24) = v18;
  *(v22 + 32) = v20;
  *(v22 + 40) = 0;
  return result;
}

uint64_t sub_216967BBC(uint64_t a1)
{
  result = sub_216967C14(qword_280E40FF8, type metadata accessor for InlineUpsellView, &unk_21702D174);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216967C14(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_216967C68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InlineUpsell(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_216967CCC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InlineUpsell(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_216967D30()
{
  result = qword_27CABDF68;
  if (!qword_27CABDF68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABDF60, &qword_21702D270);
    sub_216967DE8();
    sub_2166D9530(&qword_280E2A720, &qword_27CAB7670, &qword_217018330, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABDF68);
  }

  return result;
}

unint64_t sub_216967DE8()
{
  result = qword_27CABDF70;
  if (!qword_27CABDF70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABDF78, &unk_21702D278);
    sub_2167C4D74();
    sub_2166D9530(&qword_280E2A830, &qword_27CAB8870, qword_217036360, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABDF70);
  }

  return result;
}

unint64_t sub_216967EA8()
{
  result = qword_27CABDFD8;
  if (!qword_27CABDFD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABDF38, &unk_21702D1F8);
    sub_216967F60();
    sub_2166D9530(&qword_280E2B390, &qword_27CAB7438, &qword_21701A4C0, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABDFD8);
  }

  return result;
}

unint64_t sub_216967F60()
{
  result = qword_27CABDFE0;
  if (!qword_27CABDFE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABDF30, &unk_21702D1E8);
    sub_2166D9530(&qword_27CABDFE8, &qword_27CABDFF0, qword_21702D3B0, MEMORY[0x277CE1198]);
    sub_2166D9530(&qword_27CAB7B18, &qword_27CAB7B20, &qword_2170180F0, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABDFE0);
  }

  return result;
}

uint64_t sub_216968044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = swift_allocObject();
  sub_216969DE8();
  return v7;
}

uint64_t sub_2169680CC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_217007DE4();

  return v1;
}

void sub_216968140()
{
  OUTLINED_FUNCTION_49();
  v2 = v1;
  v28 = v3;
  v29 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7088, &qword_217020CA0);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  v7 = &v27 - v6;
  v8 = sub_2170067A4();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3BD0, &unk_21702D440);
  OUTLINED_FUNCTION_1();
  v16 = v15;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v17);
  v19 = &v27 - v18;
  v20 = OBJC_IVAR____TtC7MusicUI20AnyPlayableItemState__isPlaying;
  LOBYTE(v31[0]) = 0;
  sub_217007DA4();
  (*(v16 + 32))(v0 + v20, v19, v14);
  v21 = v28;
  v22 = (v0 + OBJC_IVAR____TtC7MusicUI20AnyPlayableItemState_itemState);
  *v22 = 0u;
  v22[1] = 0u;
  *(v0 + OBJC_IVAR____TtC7MusicUI20AnyPlayableItemState_playbackPresenter) = v21;
  sub_21696CBD8(v2, v7);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {

    sub_2166997CC(v7, &qword_27CAB7088, &qword_217020CA0);
    v23 = v29;
    sub_216969428(v29, v31);

    sub_2166997CC(v2, &qword_27CAB7088, &qword_217020CA0);
    (*(v10 + 8))(v23, v8);
  }

  else
  {
    (*(v10 + 32))(v13, v7, v8);

    v25 = v29;
    sub_216968450(v29, v13, v31);

    sub_2166997CC(v2, &qword_27CAB7088, &qword_217020CA0);
    v26 = *(v10 + 8);
    v26(v25, v8);
    v26(v13, v8);
  }

  v24 = OBJC_IVAR____TtC7MusicUI20AnyPlayableItemState_itemState;
  OUTLINED_FUNCTION_120_0(v0 + OBJC_IVAR____TtC7MusicUI20AnyPlayableItemState_itemState, &v30);
  sub_216697EC4(v31, v0 + v24);
  swift_endAccess();
  OUTLINED_FUNCTION_26();
}

uint64_t sub_216968450@<X0>(unsigned int (*a1)(char *, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v144 = a1;
  v145 = a3;
  v120 = sub_2170070F4();
  v119 = *(v120 - 8);
  MEMORY[0x28223BE20](v120);
  v116 = &v116 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_217007064();
  v123 = *(v124 - 8);
  MEMORY[0x28223BE20](v124);
  v118 = &v116 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = sub_2170073D4();
  v126 = *(v128 - 8);
  MEMORY[0x28223BE20](v128);
  v122 = &v116 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21700BA44();
  v137 = *(v7 - 8);
  v138 = v7;
  MEMORY[0x28223BE20](v7);
  v134 = &v116 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_217006B84();
  v142 = *(v9 - 8);
  v143 = v9;
  MEMORY[0x28223BE20](v9);
  v136 = &v116 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21700C1E4();
  v132 = *(v11 - 8);
  v133 = v11;
  MEMORY[0x28223BE20](v11);
  v131 = &v116 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_21700C924();
  v140 = *(v13 - 8);
  v141 = v13;
  MEMORY[0x28223BE20](v13);
  v139 = &v116 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_21700C084();
  v129 = *(v15 - 8);
  v130 = v15;
  MEMORY[0x28223BE20](v15);
  v127 = &v116 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2170067A4();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v117 = &v116 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v121 = &v116 - v21;
  MEMORY[0x28223BE20](v22);
  v125 = &v116 - v23;
  MEMORY[0x28223BE20](v24);
  v135 = &v116 - v25;
  MEMORY[0x28223BE20](v26);
  v28 = &v116 - v27;
  MEMORY[0x28223BE20](v29);
  v31 = &v116 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDFF8, &unk_21702D450);
  v33 = MEMORY[0x28223BE20](v32 - 8);
  v35 = &v116 - v34;
  v37 = *(v36 + 56);
  v38 = v18[2];
  v38(&v116 - v34, v144, v17, v33);
  (v38)(&v35[v37], a2, v17);
  v39 = v18[11];
  v40 = v39(v35, v17);
  if (v40 != *MEMORY[0x277D2A3B0])
  {
    v144 = v39;
    v53 = v35;
    if (v40 == *MEMORY[0x277D2A3B8])
    {
      v28 = v135;
      (v38)(v135, v35, v17);
      v54 = v18[12];
      v54(v28, v17);
      v55 = v144(&v35[v37], v17);
      if (v55 == *MEMORY[0x277D2A400])
      {
        v54(&v35[v37], v17);
        v57 = v137;
        v56 = v138;
        v58 = v134;
        (*(v137 + 32))(v134, v28, v138);
        v60 = v131;
        v59 = v132;
        v61 = &v35[v37];
        v62 = v133;
        (*(v132 + 32))(v131, v61, v133);
        sub_21696A54C(v60, v145);
        (*(v59 + 8))(v60, v62);
        (*(v57 + 8))(v58, v56);
      }

      else
      {
        if (v55 != *MEMORY[0x277D2A440])
        {
          v64 = v137;
          v63 = v138;
          goto LABEL_9;
        }

        v54(&v35[v37], v17);
        v78 = v137;
        v79 = v134;
        v80 = v28;
        v81 = v138;
        (*(v137 + 32))(v134, v80, v138);
        v83 = v140;
        v82 = v141;
        v84 = &v35[v37];
        v85 = v139;
        (*(v140 + 32))(v139, v84, v141);
        sub_21696A858(v85, v145);
        (*(v83 + 8))(v85, v82);
        (*(v78 + 8))(v79, v81);
      }

LABEL_32:
      v51 = v18[1];
      v52 = v35;
      return v51(v52, v17);
    }

    if (v40 == *MEMORY[0x277D2A3F8])
    {
      v69 = v17;
      (v38)(v31, v35, v17);
      v143 = v18;
      v70 = v18[12];
      v70(v31, v17);
      v71 = v144(&v35[v37], v17);
      if (v71 == *MEMORY[0x277D2A400])
      {
        v70(&v35[v37], v17);
        v73 = v129;
        v72 = v130;
        v74 = v127;
        (*(v129 + 32))(v127, v31, v130);
        v76 = v131;
        v75 = v132;
        v77 = v133;
        (*(v132 + 32))(v131, &v35[v37], v133);
        sub_216969FB4();
        (*(v75 + 8))(v76, v77);
        (*(v73 + 8))(v74, v72);
        return (v143[1])(v35, v69);
      }

      v93 = v143;
      if (v71 == *MEMORY[0x277D2A440])
      {
        v94 = v17;
        v70(&v35[v37], v17);
        v96 = v129;
        v95 = v130;
        v97 = v127;
        (*(v129 + 32))(v127, v31, v130);
        v99 = v140;
        v98 = v141;
        v100 = &v35[v37];
        v101 = v139;
        (*(v140 + 32))(v139, v100, v141);
        sub_216969FB4();
        (*(v99 + 8))(v101, v98);
        (*(v96 + 8))(v97, v95);
        return (v93[1])(v35, v94);
      }

      (*(v129 + 8))(v31, v130);
      goto LABEL_11;
    }

    if (v40 == *MEMORY[0x277D2A458])
    {
      v86 = v125;
      v48 = v53;
      (v38)(v125, v53, v17);
      v87 = v18[12];
      v87(v86, v17);
      if (v144(&v53[v37], v17) == *MEMORY[0x277D2A440])
      {
        v87(&v53[v37], v17);
        v88 = v126;
        v89 = v122;
        (*(v126 + 32))(v122, v86, v128);
        v91 = v139;
        v90 = v140;
        v92 = v141;
        (*(v140 + 32))(v139, &v48[v37], v141);
        sub_21696AB64(v91, v145);
        (*(v90 + 8))(v91, v92);
        (*(v88 + 8))(v89, v128);
        goto LABEL_4;
      }

      (*(v126 + 8))(v86, v128);
      v35 = v53;
LABEL_11:
      v67 = v145;
      *v145 = 0u;
      *(v67 + 1) = 0u;
      return sub_2166997CC(v35, &qword_27CABDFF8, &unk_21702D450);
    }

    if (v40 == *MEMORY[0x277D2A3D8])
    {
      v102 = v121;
      (v38)(v121, v35, v17);
      v103 = v18[12];
      v103(v102, v17);
      if (v144(&v35[v37], v17) == *MEMORY[0x277D2A440])
      {
        v103(&v35[v37], v17);
        v104 = v123;
        v105 = v118;
        v106 = v124;
        (*(v123 + 32))(v118, v102, v124);
        v108 = v140;
        v107 = v141;
        v109 = &v35[v37];
        v110 = v139;
        (*(v140 + 32))(v139, v109, v141);
        sub_21696AE70(v110, v145);
LABEL_31:
        (*(v108 + 8))(v110, v107);
        (*(v104 + 8))(v105, v106);
        goto LABEL_32;
      }

      v65 = *(v123 + 8);
      v66 = v102;
      v115 = &v147;
    }

    else
    {
      v111 = v144;
      if (v40 != *MEMORY[0x277D2A3E0])
      {
        goto LABEL_11;
      }

      v112 = v117;
      (v38)(v117, v35, v17);
      v113 = v18[12];
      v113(v112, v17);
      if (v111(&v35[v37], v17) == *MEMORY[0x277D2A440])
      {
        v113(&v35[v37], v17);
        v104 = v119;
        v105 = v116;
        v106 = v120;
        (*(v119 + 32))(v116, v112, v120);
        v108 = v140;
        v107 = v141;
        v114 = &v35[v37];
        v110 = v139;
        (*(v140 + 32))(v139, v114, v141);
        sub_21696B17C(v110, v145);
        goto LABEL_31;
      }

      v65 = *(v119 + 8);
      v66 = v112;
      v115 = &v146;
    }

    v63 = *(v115 - 32);
    goto LABEL_10;
  }

  (v38)(v28, v35, v17);
  v41 = v18[12];
  v41(v28, v17);
  if (v39(&v35[v37], v17) != *MEMORY[0x277D2A440])
  {
    v64 = v142;
    v63 = v143;
LABEL_9:
    v65 = *(v64 + 8);
    v66 = v28;
LABEL_10:
    v65(v66, v63);
    goto LABEL_11;
  }

  v41(&v35[v37], v17);
  v43 = v142;
  v42 = v143;
  v44 = v35;
  v45 = v136;
  (*(v142 + 32))(v136, v28, v143);
  v46 = v140;
  v47 = &v44[v37];
  v48 = v44;
  v49 = v139;
  v50 = v141;
  (*(v140 + 32))(v139, v47, v141);
  sub_21696A240(v49, v145);
  (*(v46 + 8))(v49, v50);
  (*(v43 + 8))(v45, v42);
LABEL_4:
  v51 = v18[1];
  v52 = v48;
  return v51(v52, v17);
}

uint64_t sub_216969428@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v59 = a1;
  v40 = sub_2170070F4();
  v39 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v38 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_217007064();
  v42 = *(v4 - 8);
  v43 = v4;
  MEMORY[0x28223BE20](v4);
  v41 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2170073D4();
  v45 = *(v6 - 8);
  v46 = v6;
  MEMORY[0x28223BE20](v6);
  v44 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21700C644();
  v48 = *(v8 - 8);
  v49 = v8;
  MEMORY[0x28223BE20](v8);
  v47 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21700C084();
  v51 = *(v10 - 8);
  v52 = v10;
  MEMORY[0x28223BE20](v10);
  v50 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_21700C924();
  v54 = *(v12 - 8);
  v55 = v12;
  MEMORY[0x28223BE20](v12);
  v53 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_21700BA44();
  v56 = *(v14 - 8);
  v57 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_217006B84();
  v58 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_21700C1E4();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_2170067A4();
  v25 = *(v24 - 8);
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v38 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v25 + 16))(v28, v59, v24, v26);
  v29 = (*(v25 + 88))(v28, v24);
  if (v29 == *MEMORY[0x277D2A400])
  {
    (*(v25 + 96))(v28, v24);
    (*(v21 + 32))(v23, v28, v20);
    sub_21696BD30();
    return (*(v21 + 8))(v23, v20);
  }

  if (v29 == *MEMORY[0x277D2A3B0])
  {
    (*(v25 + 96))(v28, v24);
    v31 = v58;
    (*(v58 + 32))(v19, v28, v17);
    sub_21696B750(a2);
    return (*(v31 + 8))(v19, v17);
  }

  if (v29 != *MEMORY[0x277D2A3B8])
  {
    if (v29 == *MEMORY[0x277D2A440])
    {
      (*(v25 + 96))(v28, v24);
      v37 = v53;
      v36 = v54;
      v32 = v55;
      (*(v54 + 32))(v53, v28, v55);
    }

    else if (v29 == *MEMORY[0x277D2A3F8])
    {
      (*(v25 + 96))(v28, v24);
      v37 = v50;
      v36 = v51;
      v32 = v52;
      (*(v51 + 32))(v50, v28, v52);
    }

    else
    {
      if (v29 != *MEMORY[0x277D2A430])
      {
        if (v29 == *MEMORY[0x277D2A458])
        {
          (*(v25 + 96))(v28, v24);
          v37 = v44;
          v36 = v45;
          v32 = v46;
          (*(v45 + 32))(v44, v28, v46);
          sub_21696BF94(a2);
        }

        else if (v29 == *MEMORY[0x277D2A3D8])
        {
          (*(v25 + 96))(v28, v24);
          v37 = v41;
          v36 = v42;
          v32 = v43;
          (*(v42 + 32))(v41, v28, v43);
          sub_21696C284(a2);
        }

        else
        {
          if (v29 != *MEMORY[0x277D2A3E0])
          {
            *a2 = 0u;
            *(a2 + 1) = 0u;
            return (*(v25 + 8))(v28, v24);
          }

          (*(v25 + 96))(v28, v24);
          v36 = v39;
          v37 = v38;
          v32 = v40;
          (*(v39 + 32))(v38, v28, v40);
          sub_21696C574(a2);
        }

        goto LABEL_14;
      }

      (*(v25 + 96))(v28, v24);
      v37 = v47;
      v36 = v48;
      v32 = v49;
      (*(v48 + 32))(v47, v28, v49);
    }

    sub_21696BD30();
LABEL_14:
    v34 = *(v36 + 8);
    v35 = v37;
    return v34(v35, v32);
  }

  (*(v25 + 96))(v28, v24);
  v33 = v56;
  v32 = v57;
  (*(v56 + 32))(v16, v28, v57);
  sub_21696BA40(a2);
  v34 = *(v33 + 8);
  v35 = v16;
  return v34(v35, v32);
}

void sub_216969DE8()
{
  OUTLINED_FUNCTION_49();
  v23 = v1;
  v24 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3BD0, &unk_21702D440);
  OUTLINED_FUNCTION_1();
  v15 = v14;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v16);
  v18 = &v22 - v17;
  v19 = OBJC_IVAR____TtC7MusicUI20AnyPlayableItemState__isPlaying;
  LOBYTE(v26[0]) = 0;
  sub_217007DA4();
  (*(v15 + 32))(v0 + v19, v18, v13);
  v20 = (v0 + OBJC_IVAR____TtC7MusicUI20AnyPlayableItemState_itemState);
  *v20 = 0u;
  v20[1] = 0u;
  *(v0 + OBJC_IVAR____TtC7MusicUI20AnyPlayableItemState_playbackPresenter) = v12;

  sub_21696B488(v8, v6, v4, v23, v24, v26);

  (*(*(v4 - 8) + 8))(v8, v4);
  (*(*(v6 - 8) + 8))(v10, v6);
  v21 = OBJC_IVAR____TtC7MusicUI20AnyPlayableItemState_itemState;
  OUTLINED_FUNCTION_120_0(v0 + OBJC_IVAR____TtC7MusicUI20AnyPlayableItemState_itemState, &v25);
  sub_216697EC4(v26, v0 + v21);
  swift_endAccess();
  OUTLINED_FUNCTION_26();
}

void sub_216969FB4()
{
  OUTLINED_FUNCTION_49();
  v28 = v1;
  v29 = v2;
  v26 = v4;
  v27 = v3;
  v30 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9E80, &unk_21703A3E0);
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v25 - v13;
  OUTLINED_FUNCTION_3_66();
  v15 = v0[5];
  v16 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v15);
  v17 = *(v15 - 8);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v18);
  v20 = OUTLINED_FUNCTION_1_75(v19, v25);
  v21(v20);
  (*(v16 + 112))(v15, v16);
  (*(v17 + 8))(v0, v15);
  sub_21700C084();
  v26(0);
  v22 = sub_217006D84();

  sub_21700BAC4();
  OUTLINED_FUNCTION_120_0(v0 + OBJC_IVAR____TtC7MusicUI20AnyPlayableItemState__isPlaying, &v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3BD0, &unk_21702D440);
  sub_217007DB4();
  swift_endAccess();
  sub_21696CC48();
  sub_217007EA4();
  (*(v8 + 8))(v14, v6);
  sub_21696C8D4(v11);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE000, &qword_21702D460);
  v24 = v30;
  v30[3] = v23;
  *v24 = v22;
  OUTLINED_FUNCTION_26();
}

uint64_t sub_21696A240@<X0>(uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v22 = a2;
  v23 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9E80, &unk_21703A3E0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v22 - v9;
  v11 = *(v3 + OBJC_IVAR____TtC7MusicUI20AnyPlayableItemState_playbackPresenter);
  swift_beginAccess();
  v12 = v11[5];
  v13 = v11[6];
  v14 = __swift_project_boxed_opaque_existential_1(v11 + 2, v12);
  v15 = *(v12 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v22 - v17;
  (*(v15 + 16))(&v22 - v17, v16);
  (*(v13 + 112))(v12, v13);
  (*(v15 + 8))(v18, v12);
  sub_217006B84();
  sub_21700C924();
  sub_21681D34C(&qword_27CAB6ED0, MEMORY[0x277D2A7C8], MEMORY[0x277D2A778]);
  v19 = sub_217006D84();

  sub_21700BAC4();
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3BD0, &unk_21702D440);
  sub_217007DB4();
  swift_endAccess();
  sub_21696CC48();
  sub_217007EA4();
  (*(v5 + 8))(v10, v4);
  sub_21696C8D4(v7);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE008, &qword_21702D468);
  v21 = v23;
  v23[3] = result;
  *v21 = v19;
  return result;
}

uint64_t sub_21696A54C@<X0>(uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v22 = a2;
  v23 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9E80, &unk_21703A3E0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v22 - v9;
  v11 = *(v3 + OBJC_IVAR____TtC7MusicUI20AnyPlayableItemState_playbackPresenter);
  swift_beginAccess();
  v12 = v11[5];
  v13 = v11[6];
  v14 = __swift_project_boxed_opaque_existential_1(v11 + 2, v12);
  v15 = *(v12 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v22 - v17;
  (*(v15 + 16))(&v22 - v17, v16);
  (*(v13 + 112))(v12, v13);
  (*(v15 + 8))(v18, v12);
  sub_21700BA44();
  sub_21700C1E4();
  sub_21681D34C(&qword_280E2A420, MEMORY[0x277CD7E58], MEMORY[0x277D2AE80]);
  v19 = sub_217006D84();

  sub_21700BAC4();
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3BD0, &unk_21702D440);
  sub_217007DB4();
  swift_endAccess();
  sub_21696CC48();
  sub_217007EA4();
  (*(v5 + 8))(v10, v4);
  sub_21696C8D4(v7);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE010, &qword_21702D470);
  v21 = v23;
  v23[3] = result;
  *v21 = v19;
  return result;
}

uint64_t sub_21696A858@<X0>(uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v22 = a2;
  v23 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9E80, &unk_21703A3E0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v22 - v9;
  v11 = *(v3 + OBJC_IVAR____TtC7MusicUI20AnyPlayableItemState_playbackPresenter);
  swift_beginAccess();
  v12 = v11[5];
  v13 = v11[6];
  v14 = __swift_project_boxed_opaque_existential_1(v11 + 2, v12);
  v15 = *(v12 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v22 - v17;
  (*(v15 + 16))(&v22 - v17, v16);
  (*(v13 + 112))(v12, v13);
  (*(v15 + 8))(v18, v12);
  sub_21700BA44();
  sub_21700C924();
  sub_21681D34C(&qword_280E2A420, MEMORY[0x277CD7E58], MEMORY[0x277D2AE80]);
  v19 = sub_217006D84();

  sub_21700BAC4();
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3BD0, &unk_21702D440);
  sub_217007DB4();
  swift_endAccess();
  sub_21696CC48();
  sub_217007EA4();
  (*(v5 + 8))(v10, v4);
  sub_21696C8D4(v7);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE010, &qword_21702D470);
  v21 = v23;
  v23[3] = result;
  *v21 = v19;
  return result;
}

uint64_t sub_21696AB64@<X0>(uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v22 = a2;
  v23 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9E80, &unk_21703A3E0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v22 - v9;
  v11 = *(v3 + OBJC_IVAR____TtC7MusicUI20AnyPlayableItemState_playbackPresenter);
  swift_beginAccess();
  v12 = v11[5];
  v13 = v11[6];
  v14 = __swift_project_boxed_opaque_existential_1(v11 + 2, v12);
  v15 = *(v12 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v22 - v17;
  (*(v15 + 16))(&v22 - v17, v16);
  (*(v13 + 112))(v12, v13);
  (*(v15 + 8))(v18, v12);
  sub_2170073D4();
  sub_21700C924();
  sub_21681D34C(&qword_27CAB8E28, MEMORY[0x277D2ADE8], MEMORY[0x277D2ADA8]);
  v19 = sub_217006D84();

  sub_21700BAC4();
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3BD0, &unk_21702D440);
  sub_217007DB4();
  swift_endAccess();
  sub_21696CC48();
  sub_217007EA4();
  (*(v5 + 8))(v10, v4);
  sub_21696C8D4(v7);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE018, &qword_21702D478);
  v21 = v23;
  v23[3] = result;
  *v21 = v19;
  return result;
}

uint64_t sub_21696AE70@<X0>(uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v22 = a2;
  v23 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9E80, &unk_21703A3E0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v22 - v9;
  v11 = *(v3 + OBJC_IVAR____TtC7MusicUI20AnyPlayableItemState_playbackPresenter);
  swift_beginAccess();
  v12 = v11[5];
  v13 = v11[6];
  v14 = __swift_project_boxed_opaque_existential_1(v11 + 2, v12);
  v15 = *(v12 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v22 - v17;
  (*(v15 + 16))(&v22 - v17, v16);
  (*(v13 + 112))(v12, v13);
  (*(v15 + 8))(v18, v12);
  sub_217007064();
  sub_21700C924();
  sub_21681D34C(&qword_27CAB8E20, MEMORY[0x277D2AB98], MEMORY[0x277D2AB70]);
  v19 = sub_217006D84();

  sub_21700BAC4();
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3BD0, &unk_21702D440);
  sub_217007DB4();
  swift_endAccess();
  sub_21696CC48();
  sub_217007EA4();
  (*(v5 + 8))(v10, v4);
  sub_21696C8D4(v7);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE020, &qword_21702D480);
  v21 = v23;
  v23[3] = result;
  *v21 = v19;
  return result;
}

uint64_t sub_21696B17C@<X0>(uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v22 = a2;
  v23 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9E80, &unk_21703A3E0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v22 - v9;
  v11 = *(v3 + OBJC_IVAR____TtC7MusicUI20AnyPlayableItemState_playbackPresenter);
  swift_beginAccess();
  v12 = v11[5];
  v13 = v11[6];
  v14 = __swift_project_boxed_opaque_existential_1(v11 + 2, v12);
  v15 = *(v12 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v22 - v17;
  (*(v15 + 16))(&v22 - v17, v16);
  (*(v13 + 112))(v12, v13);
  (*(v15 + 8))(v18, v12);
  sub_2170070F4();
  sub_21700C924();
  sub_21681D34C(&qword_27CAB6E10, MEMORY[0x277D2ABF0], MEMORY[0x277D2ABC0]);
  v19 = sub_217006D84();

  sub_21700BAC4();
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3BD0, &unk_21702D440);
  sub_217007DB4();
  swift_endAccess();
  sub_21696CC48();
  sub_217007EA4();
  (*(v5 + 8))(v10, v4);
  sub_21696C8D4(v7);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE028, &qword_21702D488);
  v21 = v23;
  v23[3] = result;
  *v21 = v19;
  return result;
}

uint64_t sub_21696B488@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v26[1] = a6;
  v26[2] = a3;
  v26[3] = a4;
  v26[4] = a5;
  v26[0] = a2;
  v27 = a7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9E80, &unk_21703A3E0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = v26 - v13;
  v15 = *(v7 + OBJC_IVAR____TtC7MusicUI20AnyPlayableItemState_playbackPresenter);
  swift_beginAccess();
  v16 = v15[5];
  v17 = v15[6];
  v18 = __swift_project_boxed_opaque_existential_1(v15 + 2, v16);
  v19 = *(v16 - 8);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = v26 - v21;
  (*(v19 + 16))(v26 - v21, v20);
  (*(v17 + 112))(v16, v17);
  (*(v19 + 8))(v22, v16);
  v23 = sub_217006D84();

  sub_21700BAC4();
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3BD0, &unk_21702D440);
  sub_217007DB4();
  swift_endAccess();
  sub_21696CC48();
  sub_217007EA4();
  (*(v9 + 8))(v14, v8);
  sub_21696C8D4(v11);
  result = sub_21700BAF4();
  v25 = v27;
  v27[3] = result;
  *v25 = v23;
  return result;
}

uint64_t sub_21696B750@<X0>(uint64_t *a2@<X8>)
{
  v22 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9E80, &unk_21703A3E0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v21 - v8;
  v10 = *(v2 + OBJC_IVAR____TtC7MusicUI20AnyPlayableItemState_playbackPresenter);
  swift_beginAccess();
  v11 = v10[5];
  v12 = v10[6];
  v13 = __swift_project_boxed_opaque_existential_1(v10 + 2, v11);
  v14 = *(v11 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v21 - v16;
  (*(v14 + 16))(&v21 - v16, v15);
  (*(v12 + 112))(v11, v12);
  (*(v14 + 8))(v17, v11);
  sub_217006B84();
  sub_21681D34C(&qword_27CAB6ED0, MEMORY[0x277D2A7C8], MEMORY[0x277D2A778]);
  v18 = sub_217006D74();

  sub_21700BAC4();
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3BD0, &unk_21702D440);
  sub_217007DB4();
  swift_endAccess();
  sub_21696CC48();
  sub_217007EA4();
  (*(v4 + 8))(v9, v3);
  sub_21696C8D4(v6);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE008, &qword_21702D468);
  v20 = v22;
  v22[3] = result;
  *v20 = v18;
  return result;
}

uint64_t sub_21696BA40@<X0>(uint64_t *a2@<X8>)
{
  v22 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9E80, &unk_21703A3E0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v21 - v8;
  v10 = *(v2 + OBJC_IVAR____TtC7MusicUI20AnyPlayableItemState_playbackPresenter);
  swift_beginAccess();
  v11 = v10[5];
  v12 = v10[6];
  v13 = __swift_project_boxed_opaque_existential_1(v10 + 2, v11);
  v14 = *(v11 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v21 - v16;
  (*(v14 + 16))(&v21 - v16, v15);
  (*(v12 + 112))(v11, v12);
  (*(v14 + 8))(v17, v11);
  sub_21700BA44();
  sub_21681D34C(&qword_280E2A420, MEMORY[0x277CD7E58], MEMORY[0x277D2AE80]);
  v18 = sub_217006D74();

  sub_21700BAC4();
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3BD0, &unk_21702D440);
  sub_217007DB4();
  swift_endAccess();
  sub_21696CC48();
  sub_217007EA4();
  (*(v4 + 8))(v9, v3);
  sub_21696C8D4(v6);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE010, &qword_21702D470);
  v20 = v22;
  v22[3] = result;
  *v20 = v18;
  return result;
}

void sub_21696BD30()
{
  OUTLINED_FUNCTION_49();
  v29 = v1;
  v30 = v2;
  v27[1] = v3;
  v27[2] = v4;
  v6 = v5;
  v28 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9E80, &unk_21703A3E0);
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  v13 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = v27 - v15;
  OUTLINED_FUNCTION_3_66();
  v18 = v0[5];
  v17 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v18);
  v19 = *(v18 - 8);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v20);
  v22 = OUTLINED_FUNCTION_1_75(v21, v27[0]);
  v23(v22);
  (*(v17 + 112))(v18, v17);
  (*(v19 + 8))(v0, v18);
  v6(0);
  v24 = sub_217006D74();

  sub_21700BAC4();
  OUTLINED_FUNCTION_120_0(v0 + OBJC_IVAR____TtC7MusicUI20AnyPlayableItemState__isPlaying, &v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3BD0, &unk_21702D440);
  sub_217007DB4();
  swift_endAccess();
  sub_21696CC48();
  sub_217007EA4();
  (*(v10 + 8))(v16, v8);
  sub_21696C8D4(v13);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(v29, v30);
  v26 = v28;
  v28[3] = v25;
  *v26 = v24;
  OUTLINED_FUNCTION_26();
}

uint64_t sub_21696BF94@<X0>(uint64_t *a2@<X8>)
{
  v22 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9E80, &unk_21703A3E0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v21 - v8;
  v10 = *(v2 + OBJC_IVAR____TtC7MusicUI20AnyPlayableItemState_playbackPresenter);
  swift_beginAccess();
  v11 = v10[5];
  v12 = v10[6];
  v13 = __swift_project_boxed_opaque_existential_1(v10 + 2, v11);
  v14 = *(v11 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v21 - v16;
  (*(v14 + 16))(&v21 - v16, v15);
  (*(v12 + 112))(v11, v12);
  (*(v14 + 8))(v17, v11);
  sub_2170073D4();
  sub_21681D34C(&qword_27CAB8E28, MEMORY[0x277D2ADE8], MEMORY[0x277D2ADA8]);
  v18 = sub_217006D74();

  sub_21700BAC4();
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3BD0, &unk_21702D440);
  sub_217007DB4();
  swift_endAccess();
  sub_21696CC48();
  sub_217007EA4();
  (*(v4 + 8))(v9, v3);
  sub_21696C8D4(v6);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE018, &qword_21702D478);
  v20 = v22;
  v22[3] = result;
  *v20 = v18;
  return result;
}

uint64_t sub_21696C284@<X0>(uint64_t *a2@<X8>)
{
  v22 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9E80, &unk_21703A3E0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v21 - v8;
  v10 = *(v2 + OBJC_IVAR____TtC7MusicUI20AnyPlayableItemState_playbackPresenter);
  swift_beginAccess();
  v11 = v10[5];
  v12 = v10[6];
  v13 = __swift_project_boxed_opaque_existential_1(v10 + 2, v11);
  v14 = *(v11 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v21 - v16;
  (*(v14 + 16))(&v21 - v16, v15);
  (*(v12 + 112))(v11, v12);
  (*(v14 + 8))(v17, v11);
  sub_217007064();
  sub_21681D34C(&qword_27CAB8E20, MEMORY[0x277D2AB98], MEMORY[0x277D2AB70]);
  v18 = sub_217006D74();

  sub_21700BAC4();
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3BD0, &unk_21702D440);
  sub_217007DB4();
  swift_endAccess();
  sub_21696CC48();
  sub_217007EA4();
  (*(v4 + 8))(v9, v3);
  sub_21696C8D4(v6);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE020, &qword_21702D480);
  v20 = v22;
  v22[3] = result;
  *v20 = v18;
  return result;
}

uint64_t sub_21696C574@<X0>(uint64_t *a2@<X8>)
{
  v22 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9E80, &unk_21703A3E0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v21 - v8;
  v10 = *(v2 + OBJC_IVAR____TtC7MusicUI20AnyPlayableItemState_playbackPresenter);
  swift_beginAccess();
  v11 = v10[5];
  v12 = v10[6];
  v13 = __swift_project_boxed_opaque_existential_1(v10 + 2, v11);
  v14 = *(v11 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v21 - v16;
  (*(v14 + 16))(&v21 - v16, v15);
  (*(v12 + 112))(v11, v12);
  (*(v14 + 8))(v17, v11);
  sub_2170070F4();
  sub_21681D34C(&qword_27CAB6E10, MEMORY[0x277D2ABF0], MEMORY[0x277D2ABC0]);
  v18 = sub_217006D74();

  sub_21700BAC4();
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3BD0, &unk_21702D440);
  sub_217007DB4();
  swift_endAccess();
  sub_21696CC48();
  sub_217007EA4();
  (*(v4 + 8))(v9, v3);
  sub_21696C8D4(v6);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE028, &qword_21702D488);
  v20 = v22;
  v22[3] = result;
  *v20 = v18;
  return result;
}

uint64_t sub_21696C864(char a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_217007DF4();
}

uint64_t sub_21696C8D4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9E80, &unk_21703A3E0);
  OUTLINED_FUNCTION_1();
  v5 = v4;
  OUTLINED_FUNCTION_29();
  v7 = MEMORY[0x28223BE20](v6);
  (*(v5 + 16))(&v11[-v8 - 8], a1, v3, v7);
  OUTLINED_FUNCTION_120_0(v1 + OBJC_IVAR____TtC7MusicUI20AnyPlayableItemState__isPlaying, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3BD0, &unk_21702D440);
  sub_217007DC4();
  swift_endAccess();
  return (*(v5 + 8))(a1, v3);
}

uint64_t sub_21696C9F4()
{
  v1 = OBJC_IVAR____TtC7MusicUI20AnyPlayableItemState__isPlaying;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3BD0, &unk_21702D440);
  OUTLINED_FUNCTION_9_0();
  (*(v2 + 8))(v0 + v1);

  sub_2166997CC(v0 + OBJC_IVAR____TtC7MusicUI20AnyPlayableItemState_itemState, &unk_27CABF7A0, &unk_217014D20);
  return v0;
}

uint64_t sub_21696CA84()
{
  sub_21696C9F4();

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t type metadata accessor for AnyPlayableItemState(uint64_t a1)
{
  result = qword_280E3CBF0;
  if (!qword_280E3CBF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21696CB30(uint64_t a1)
{
  sub_2166BF8FC();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_21696CBD8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7088, &qword_217020CA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_21696CC48()
{
  result = qword_280E484A0;
  if (!qword_280E484A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9E80, &unk_21703A3E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E484A0);
  }

  return result;
}

uint64_t sub_21696CCD4@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v42 = a2;
  v45 = a3;
  v41 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v36 - v16;
  sub_21700D7A4();
  sub_21700CE04();
  v39 = v5;
  (*(v5 + 16))(v8, v42, v41);
  v18 = type metadata accessor for SocialOnboardingUserNameHandlePageLockup(0);
  v37 = *(v18 + 24);
  sub_21700D734();
  v40 = a1;
  sub_21700CE04();
  v19 = sub_21700CDB4();
  v21 = v20;
  v22 = *(v11 + 8);
  v38 = v11 + 8;
  v22(v14, v9);
  if (v21)
  {
    v43 = v19;
    v44 = v21;
    v23 = v18;
    v24 = v45;
    sub_21700F364();
    v25 = v40;
    sub_21700CE04();
    v26 = sub_21700CDB4();
    v28 = v27;
    v22(v17, v9);
    *v24 = v26;
    v24[1] = v28;
    sub_21700CE04();
    v29 = sub_21700CDB4();
    v31 = v30;
    (*(v39 + 8))(v42, v41);
    v22(v25, v9);
    result = (v22)(v17, v9);
    v33 = (v24 + *(v23 + 28));
    *v33 = v29;
    v33[1] = v31;
  }

  else
  {
    v34 = sub_21700E2E4();
    sub_21696D168(&qword_280E2A0F8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    *v35 = 25705;
    v35[1] = 0xE200000000000000;
    v35[2] = v18;
    (*(*(v34 - 8) + 104))(v35, *MEMORY[0x277D22530], v34);
    swift_willThrow();
    (*(v39 + 8))(v42, v41);
    v22(v40, v9);
    return sub_2167B0250(v45 + v37);
  }

  return result;
}

uint64_t sub_21696D168(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_21696D208(void *a1)
{
  result = [objc_opt_self() valueWithNewObjectInContext_];
  if (result)
  {
    v3 = result;
    sub_2166F1DCC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE058, qword_21702D6D8);
    v4 = sub_21700E594();
    v8[3] = MEMORY[0x277D837D0];
    v8[0] = v4;
    v8[1] = v5;
    v6 = a1;
    v7 = sub_2166F1E10(v8, a1);
    sub_2166F1F64(v7, 0x646E696B24, 0xE500000000000000);
    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_21696D2E4()
{
  result = qword_27CABE040;
  if (!qword_27CABE040)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB89C0, &qword_21701AB00);
    sub_21696D398(&qword_27CAB9548, MEMORY[0x277D21D20], &unk_21701D8F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABE040);
  }

  return result;
}

uint64_t sub_21696D398(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_21696D3E0(uint64_t a1)
{
  *(a1 + 8) = sub_21696D410();
  result = sub_21696D464();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_21696D410()
{
  result = qword_27CABE048;
  if (!qword_27CABE048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABE048);
  }

  return result;
}

unint64_t sub_21696D464()
{
  result = qword_27CABE050;
  if (!qword_27CABE050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABE050);
  }

  return result;
}

unint64_t sub_21696D4CC()
{
  result = qword_280E3FE68[0];
  if (!qword_280E3FE68[0])
  {
    type metadata accessor for NewPlaylistAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E3FE68);
  }

  return result;
}

uint64_t sub_21696D524()
{
  v0 = sub_21700D2A4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FF0, &unk_217015640);
  (*(v1 + 104))(v3, *MEMORY[0x277D21CA8], v0);
  return sub_21700E1F4();
}

uint64_t sub_21696D638@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v74 = a2;
  v77 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7D20, &qword_217018700);
  MEMORY[0x28223BE20](v4 - 8);
  v69 = &v66 - v5;
  v6 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v73 = v7;
  MEMORY[0x28223BE20](v8);
  v10 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  v68 = &v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v70 = &v66 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v66 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v66 - v22;
  sub_21700D7A4();
  sub_21700CE04();
  v24 = *(v73 + 16);
  v71 = v6;
  v25 = v6;
  v26 = v11;
  v24(v10, v74, v25);
  sub_21700D734();
  v72 = a1;
  sub_21700CE04();
  v27 = sub_21700CDB4();
  v29 = v28;
  v30 = *(v13 + 8);
  v31 = v13 + 8;
  v30(v20, v26);
  if (!v29)
  {
    v51 = v26;
    v52 = v72;
    v32 = 25705;
    v53 = 0xE200000000000000;
LABEL_7:
    v54 = sub_21700E2E4();
    sub_21696DDA0(&qword_280E2A0F8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    v56 = v55;
    ContextLockup = type metadata accessor for SearchQueryContextLockup(0);
    *v56 = v32;
    v56[1] = v53;
    v56[2] = ContextLockup;
    (*(*(v54 - 8) + 104))(v56, *MEMORY[0x277D22530], v54);
    swift_willThrow();
    v58 = OUTLINED_FUNCTION_1_76();
    v59(v58);
    v30(v52, v51);
    return sub_21669987C(v77, &qword_27CAB6D58, &unk_217014E30);
  }

  v67 = v27;
  v32 = 1954047348;
  v33 = v70;
  sub_21700CE04();
  v34 = sub_21700CDB4();
  v36 = v35;
  v30(v33, v26);
  if (!v36)
  {
    v51 = v26;
    v52 = v72;

    v53 = 0xE400000000000000;
    goto LABEL_7;
  }

  v37 = type metadata accessor for SearchQueryContextLockup(0);
  v75 = v67;
  v76 = v29;
  v38 = v77;
  sub_21700F364();
  v39 = (v38 + v37[6]);
  *v39 = v34;
  v39[1] = v36;
  v40 = v72;
  sub_21700CE04();
  v41 = sub_21700CD44();
  v30(v23, v26);
  *(v38 + v37[7]) = v41;
  sub_21700CE04();
  sub_21700CDB4();
  v42 = OUTLINED_FUNCTION_0_91();
  (v30)(v42);
  v43 = (v38 + v37[8]);
  *v43 = v31;
  v43[1] = v23;
  sub_21700CE04();
  sub_21700CDB4();
  v44 = OUTLINED_FUNCTION_0_91();
  (v30)(v44);
  v45 = (v38 + v37[9]);
  *v45 = v31;
  v45[1] = v23;
  sub_21700CE04();
  sub_21700CDB4();
  v46 = OUTLINED_FUNCTION_0_91();
  (v30)(v46);
  v47 = (v38 + v37[10]);
  *v47 = v31;
  v47[1] = v23;
  v48 = v68;
  sub_21700CE04();
  v49 = v69;
  sub_21700CCB4();
  v70 = v26;
  v30(v48, v26);
  v50 = sub_21700D3E4();
  if (__swift_getEnumTagSinglePayload(v49, 1, v50) == 1)
  {
    sub_21669987C(v49, &qword_27CAB7D20, &qword_217018700);
LABEL_10:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFBE0, &qword_21702D780);
    v61 = sub_21700E384();
    v64 = OUTLINED_FUNCTION_1_76();
    v65(v64);
    v30(v40, v70);

    goto LABEL_11;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFBE0, &qword_21702D780);
  v61 = sub_21700D3D4();
  (*(*(v50 - 8) + 8))(v49, v50);
  if (!v61)
  {
    goto LABEL_10;
  }

  v62 = OUTLINED_FUNCTION_1_76();
  v63(v62);
  result = (v30)(v40, v70);
LABEL_11:
  *(v38 + v37[11]) = v61;
  return result;
}

uint64_t sub_21696DDA0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21696DDF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[10] = a2;
  v3[11] = a3;
  v3[9] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABD770, &unk_217015610);
  v3[12] = v4;
  OUTLINED_FUNCTION_2(v4);
  v3[13] = v5;
  v3[14] = swift_task_alloc();
  v3[15] = type metadata accessor for PresentSheetAction(0);
  v3[16] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0, &unk_217015630);
  v3[17] = v6;
  OUTLINED_FUNCTION_2(v6);
  v3[18] = v7;
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v8 = sub_21700DFD4();
  v3[21] = v8;
  OUTLINED_FUNCTION_2(v8);
  v3[22] = v9;
  v3[23] = swift_task_alloc();
  sub_21700EA34();
  v3[24] = sub_21700EA24();
  v11 = sub_21700E9B4();
  v3[25] = v11;
  v3[26] = v10;

  return MEMORY[0x2822009F8](sub_21696DFE4, v11, v10);
}

uint64_t sub_21696DFE4()
{
  if (qword_27CAB5AD0 != -1)
  {
    swift_once();
  }

  v1 = sub_217007CA4();
  __swift_project_value_buffer(v1, qword_27CABE060);
  v2 = sub_217007C84();
  v3 = sub_21700ED64();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_216679000, v2, v3, "Performing a subscription purchase action", v4, 2u);
    MEMORY[0x21CEA1440](v4, -1, -1);
  }

  v5 = v0[10];

  sub_216685F4C(0, &qword_27CABE078, 0x277CEE438);
  v6 = type metadata accessor for SubscriptionPurchaseAction(0);
  v0[27] = v6;
  v7 = (v5 + *(v6 + 20));
  v8 = *v7;
  v9 = v7[1];
  sub_21700DF14();
  v0[28] = sub_2169130B0(v8, v9);
  type metadata accessor for ObjectGraph(0);
  sub_21700E094();
  sub_216685F4C(0, &qword_280E29D68, 0x277CB8F48);
  sub_21700D4B4();
  v10 = v0[7];
  v0[29] = [v10 ams_activeiTunesAccount];

  sub_21700E094();
  type metadata accessor for UnifiedMessages.Coordinator(0);
  sub_21700E094();
  v11 = v0[8];
  v0[30] = v11;

  return MEMORY[0x2822009F8](sub_21696E214, v11, 0);
}

uint64_t sub_21696E238()
{
  v25 = *(v0 + 232);
  v1 = *(v0 + 216);
  v2 = *(v0 + 152);
  v3 = *(v0 + 160);
  v5 = *(v0 + 136);
  v4 = *(v0 + 144);
  v6 = *(v0 + 128);
  v26 = *(v0 + 120);
  v27 = *(v0 + 104);
  v7 = *(v0 + 88);
  v28 = *(v0 + 96);
  v29 = *(v0 + 112);
  v8 = *(v0 + 80);
  v24 = *(v0 + 224);
  v23 = sub_21700DF34();
  (*(v4 + 16))(v2, v3, v5);
  v9 = *(v8 + *(v1 + 24));
  v10 = *(v8 + *(v1 + 28));
  v11 = objc_allocWithZone(type metadata accessor for SubscriptionPurchaseViewModel(0));
  sub_21700DF14();

  v12 = v25;
  sub_21700DF14();
  v13 = sub_216BA24CC(v24, v23, v2, v7, v25, v9, v10);
  *(v0 + 248) = v13;
  *(v6 + *(v26 + 20)) = v13;
  type metadata accessor for ModalActionModelDestinations.Destination(0);
  swift_storeEnumTagMultiPayload();
  v14 = sub_21700D284();
  (*(*(v14 - 8) + 16))(v6, v8, v14);
  *(v0 + 40) = v26;
  *(v0 + 48) = sub_21696EA08(qword_280E3EA78, type metadata accessor for PresentSheetAction, &unk_217045370);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
  sub_21696EA50(v6, boxed_opaque_existential_1);
  (*(v27 + 104))(v29, *MEMORY[0x277D21E18], v28);
  v16 = v13;
  v17 = swift_task_alloc();
  *(v0 + 256) = v17;
  *v17 = v0;
  v17[1] = sub_21696E49C;
  v18 = *(v0 + 136);
  v19 = *(v0 + 112);
  v20 = *(v0 + 88);
  v21 = *(v0 + 72);

  return MEMORY[0x28217F468](v21, v0 + 16, v19, v20, v18);
}

uint64_t sub_21696E49C()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *(*v1 + 104);
  v5 = *(*v1 + 96);
  *(*v1 + 264) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = v2[25];
    v7 = v2[26];
    v8 = sub_21696E73C;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2 + 2);
    v6 = v2[25];
    v7 = v2[26];
    v8 = sub_21696E61C;
  }

  return MEMORY[0x2822009F8](v8, v6, v7);
}

uint64_t sub_21696E61C()
{
  v1 = v0[31];
  v2 = v0[28];
  v3 = v0[29];
  v4 = v0[23];
  v5 = v0[22];
  v6 = v0[20];
  v12 = v0[21];
  v7 = v0[18];
  v11 = v0[17];
  v8 = v0[16];

  sub_21696EAB4(v8);
  (*(v7 + 8))(v6, v11);
  (*(v5 + 8))(v4, v12);

  v9 = v0[1];

  return v9();
}

uint64_t sub_21696E73C()
{
  v1 = v0[31];
  v3 = v0[28];
  v2 = v0[29];
  v4 = v0[23];
  v5 = v0[22];
  v6 = v0[20];
  v12 = v0[21];
  v7 = v0[18];
  v11 = v0[17];
  v8 = v0[16];

  sub_21696EAB4(v8);
  (*(v7 + 8))(v6, v11);
  (*(v5 + 8))(v4, v12);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_21696E864()
{
  v0 = sub_217007CA4();
  __swift_allocate_value_buffer(v0, qword_27CABE060);
  __swift_project_value_buffer(v0, qword_27CABE060);
  return sub_217007C94();
}

uint64_t sub_21696E8E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2166DFAC0;

  return sub_21696DDF8(a1, a2, a3);
}

unint64_t sub_21696E994(uint64_t a1)
{
  result = sub_2166DA450();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21696EA08(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21696EA50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PresentSheetAction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21696EAB4(uint64_t a1)
{
  v2 = type metadata accessor for PresentSheetAction(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t get_enum_tag_for_layout_string_7MusicUI22ReplayYearListResponseV4ItemVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_21696EB28(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 280))
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

uint64_t sub_21696EB68(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
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
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 280) = 1;
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

    *(result + 280) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21696EC78@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  v9 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v11);
  v13 = &v17 - v12;
  sub_216681B04(v9, &v17 - v12, a1, a2);
  if (swift_getEnumCaseMultiPayload())
  {
    v14 = a4(0);
    __swift_storeEnumTagSinglePayload(a5, 1, 1, v14);
    return sub_216697664(v13, a1, a2);
  }

  else
  {
    sub_2169705F0(v13, a5);
    v16 = a4(0);
    return __swift_storeEnumTagSinglePayload(a5, 0, 1, v16);
  }
}

uint64_t sub_21696ED8C(uint64_t a1, uint64_t a2)
{
  v3[117] = v2;
  v3[116] = a2;
  v3[115] = a1;
  v4 = type metadata accessor for MappedReplayYearModel(0);
  OUTLINED_FUNCTION_36(v4);
  v3[118] = swift_task_alloc();
  v5 = type metadata accessor for ReplayYearModel(0);
  OUTLINED_FUNCTION_36(v5);
  v3[119] = swift_task_alloc();
  v6 = type metadata accessor for OpaqueReplayYearIntent(0);
  v3[120] = v6;
  OUTLINED_FUNCTION_36(v6);
  v3[121] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE088, &qword_21702DA60);
  OUTLINED_FUNCTION_36(v7);
  v3[122] = swift_task_alloc();
  v3[123] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE090, &unk_217072520);
  OUTLINED_FUNCTION_36(v8);
  v3[124] = swift_task_alloc();
  v3[125] = swift_task_alloc();
  sub_21700EA34();
  v3[126] = sub_21700EA24();
  v10 = sub_21700E9B4();
  v3[127] = v10;
  v3[128] = v9;

  return MEMORY[0x2822009F8](sub_21696EF2C, v10, v9);
}

uint64_t sub_21696EF2C()
{
  Strong = swift_weakLoadStrong();
  *(v0 + 1032) = Strong;
  if (Strong)
  {
    v2 = *(v0 + 928);
    if (*(v2 + *(type metadata accessor for SelectReplayYearAction(0) + 20) + 8))
    {
      v3 = *(v0 + 984);
      v4 = *(v0 + 936);
      *(v0 + 1040) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA6D8, &qword_217020F20);
      MEMORY[0x21CE9BEE0]();
      sub_216681B04(v4, v0 + 16, &qword_27CABA6D8, &qword_217020F20);
      swift_task_alloc();
      v5 = OUTLINED_FUNCTION_110();
      v6 = type metadata accessor for ReplayModel(v5);
      *(v0 + 1048) = v6;
      *v4 = v6;
      v7 = sub_2169705A8(&qword_27CAB6FA0, type metadata accessor for ReplayModel, &unk_217015560);
      *(v0 + 1056) = v7;
      v4[1] = v7;
      swift_getKeyPath();

      v8 = swift_task_alloc();
      *v8 = v6;
      v8[1] = v7;
      swift_getKeyPath();

      sub_217007DE4();

      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE0A0, &qword_21702DAC0);
      *(v0 + 1064) = v9;
      if (__swift_getEnumTagSinglePayload(v3, 1, v9) == 1)
      {
        v10 = *(v0 + 984);
        v11 = &qword_27CABE088;
        v12 = &qword_21702DA60;
      }

      else
      {
        v17 = *(v0 + 1000);
        v18 = *(v0 + 984);
        OUTLINED_FUNCTION_2_61();
        sub_21696EC78(&qword_27CABE0A0, &qword_21702DAC0, type metadata accessor for MappedReplayModel, v17);
        sub_216697664(v18, &qword_27CABE0A0, &qword_21702DAC0);
        v19 = type metadata accessor for MappedReplayModel(0);
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v17, 1, v19);
        v21 = *(v0 + 1000);
        if (EnumTagSinglePayload != 1)
        {
          v22 = *(v0 + 928);
          sub_21700DF14();
          OUTLINED_FUNCTION_4_47();
          sub_21697013C(v21, v23);
          *(swift_task_alloc() + 16) = v22;
          sub_216C2E88C();

          goto LABEL_14;
        }

        v11 = &qword_27CABE090;
        v12 = &unk_217072520;
        v10 = *(v0 + 1000);
      }

      sub_216697664(v10, v11, v12);
      *(v0 + 384) = 0u;
      *(v0 + 400) = 0u;
      *(v0 + 352) = 0u;
      *(v0 + 368) = 0u;
      *(v0 + 320) = 0u;
      *(v0 + 336) = 0u;
      *(v0 + 288) = 0u;
      *(v0 + 304) = 0u;
LABEL_14:
      v24 = *(v0 + 968);
      v25 = *(v0 + 960);
      sub_21700B0D4();
      sub_216697664(v0 + 16, &qword_27CABA6D8, &qword_217020F20);
      sub_216FFA31C();
      v26 = type metadata accessor for AnyReplayYearRequest(0);
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v26);
      *(v0 + 904) = v25;
      *(v0 + 912) = sub_2169705A8(&qword_27CABE0A8, type metadata accessor for OpaqueReplayYearIntent, &unk_217056254);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 880));
      sub_216970194(v24, boxed_opaque_existential_1);
      v28 = swift_task_alloc();
      *(v0 + 1072) = v28;
      *v28 = v0;
      v28[1] = sub_21696F450;

      return sub_216D0C120();
    }

    sub_21696FD2C();
    swift_allocError();
    *v14 = 1;
    swift_willThrow();
  }

  else
  {

    sub_21696FD2C();
    swift_allocError();
    *v13 = 0;
    swift_willThrow();
  }

  OUTLINED_FUNCTION_3_67();

  OUTLINED_FUNCTION_3();

  return v15();
}

uint64_t sub_21696F450()
{
  v2 = *v1;
  (*v1)[135] = v0;

  if (v0)
  {
    sub_216697664((v2 + 110), &qword_27CABE0B0, &qword_21702DAC8);
    v3 = v2[128];
    v4 = v2[127];
    v5 = sub_21696F9E4;
  }

  else
  {
    sub_21697013C(v2[119], type metadata accessor for ReplayYearModel);
    sub_216697664((v2 + 110), &qword_27CABE0B0, &qword_21702DAC8);
    v3 = v2[128];
    v4 = v2[127];
    v5 = sub_21696F5B8;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_21696F5B8()
{
  v1 = *(v0 + 1064);
  v2 = *(v0 + 1056);
  v3 = *(v0 + 1048);
  v4 = *(v0 + 976);

  v5 = swift_task_alloc();
  *v5 = v3;
  v5[1] = v2;
  swift_getKeyPath();

  v6 = swift_task_alloc();
  *v6 = v3;
  v6[1] = v2;
  swift_getKeyPath();

  sub_217007DE4();

  if (__swift_getEnumTagSinglePayload(v4, 1, v1) == 1)
  {
    v7 = *(v0 + 976);
    v8 = *(v0 + 968);

    OUTLINED_FUNCTION_0_92();
    sub_21697013C(v8, v9);
    sub_216697664(v0 + 160, &qword_27CABA690, &qword_217020E30);
    v10 = &qword_27CABE088;
    v11 = &qword_21702DA60;
LABEL_5:
    v17 = v7;
    goto LABEL_6;
  }

  v12 = *(v0 + 992);
  v13 = *(v0 + 976);
  OUTLINED_FUNCTION_2_61();
  sub_21696EC78(&qword_27CABE0A0, &qword_21702DAC0, type metadata accessor for MappedReplayModel, v12);
  sub_216697664(v13, &qword_27CABE0A0, &qword_21702DAC0);
  v14 = type metadata accessor for MappedReplayModel(0);
  if (__swift_getEnumTagSinglePayload(v12, 1, v14) == 1)
  {
    v7 = *(v0 + 992);
    v15 = *(v0 + 968);

    OUTLINED_FUNCTION_0_92();
    sub_21697013C(v15, v16);
    sub_216697664(v0 + 160, &qword_27CABA690, &qword_217020E30);
    v10 = &qword_27CABE090;
    v11 = &unk_217072520;
    goto LABEL_5;
  }

  v23 = *(v0 + 992);
  v24 = *(v0 + 944);
  sub_216970194(v23 + *(v14 + 20), v24);
  OUTLINED_FUNCTION_4_47();
  sub_21697013C(v23, v25);
  v27 = *v24;
  v26 = v24[1];
  v28 = v24[2];
  v29 = v24[3];
  sub_21700DF14();
  sub_21700DF14();
  sub_21700DF14();
  sub_21697013C(v24, type metadata accessor for MappedReplayYearModel);
  sub_216BF47DC(v27, v26, v28, v29, 0, 0, (v0 + 656));

  v30 = *(v0 + 968);
  if (*(v0 + 664))
  {
    memcpy((v0 + 544), (v0 + 656), 0x70uLL);
    sub_216970008(v0 + 544, v0 + 768);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8C98, &unk_21702DAD0);
    sub_21700B0D4();

    sub_216970064(v0 + 544);
    OUTLINED_FUNCTION_0_92();
    sub_21697013C(v30, v31);
    v10 = &qword_27CABA690;
    v11 = &qword_217020E30;
    v17 = v0 + 160;
  }

  else
  {

    OUTLINED_FUNCTION_0_92();
    sub_21697013C(v30, v32);
    sub_216697664(v0 + 160, &qword_27CABA690, &qword_217020E30);
    v10 = &unk_27CABA698;
    v11 = &unk_217020E70;
    v17 = v0 + 656;
  }

LABEL_6:
  sub_216697664(v17, v10, v11);
  OUTLINED_FUNCTION_3_67();
  v18 = *(v0 + 920);
  v19 = *MEMORY[0x277D21CA8];
  sub_21700D2A4();
  OUTLINED_FUNCTION_34();
  (*(v20 + 104))(v18, v19);

  OUTLINED_FUNCTION_3();

  return v21();
}

uint64_t sub_21696F9E4()
{
  v1 = *(v0 + 968);

  sub_216681B04(v0 + 160, v0 + 416, &qword_27CABA690, &qword_217020E30);
  sub_21700B0D4();
  swift_willThrow();

  OUTLINED_FUNCTION_0_92();
  sub_21697013C(v1, v2);
  sub_216697664(v0 + 160, &qword_27CABA690, &qword_217020E30);
  OUTLINED_FUNCTION_3_67();

  OUTLINED_FUNCTION_3();

  return v3();
}

uint64_t sub_21696FB04(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 96);
  v3 = *(a1 + 104);
  v4 = (a2 + *(type metadata accessor for SelectReplayYearAction(0) + 20));
  if (v4[1])
  {
    v5 = *v4;
    v6 = v4[1];
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  if (v2 == v5 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_21700F7D4();
  }

  sub_21700DF14();

  return v8 & 1;
}

uint64_t sub_21696FBAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_216970194(a1, a3);
  *(a3 + *(type metadata accessor for ReplaceReplayYearUpdate(0) + 20)) = a2;
}

uint64_t sub_21696FC10(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2167AF644;

  return sub_21696ED8C(a1, a2);
}

unint64_t sub_21696FCB8(uint64_t a1)
{
  result = sub_216881080();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_21696FD2C()
{
  result = qword_27CABE098;
  if (!qword_27CABE098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABE098);
  }

  return result;
}

uint64_t sub_21696FD80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE0B8, &unk_21705F810);
  v6 = OUTLINED_FUNCTION_36(v5);
  MEMORY[0x28223BE20](v6);
  v8 = &v18 - v7;
  v9 = type metadata accessor for ReplayModel(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v10);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v18 - v14;
  sub_216681B04(a1, v8, &qword_27CABE0B8, &unk_21705F810);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_216697664(v8, &qword_27CABE0B8, &unk_21705F810);
    sub_2167EB34C();
    swift_allocError();
    return swift_willThrow();
  }

  else
  {
    sub_2169705F0(v8, v15);
    sub_2169705F0(v15, v12);
    sub_2169700D8(v2, &v12[*(v9 + 20)]);
    sub_216970194(v12, a2);
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE0C0, &unk_21702DAE0);
    *(a2 + v17[9]) = 0;
    *(a2 + v17[10]) = 0;
    *(a2 + v17[11]) = 0;
    *(a2 + v17[12]) = 0;
    return sub_21697013C(v12, type metadata accessor for ReplayModel);
  }
}

uint64_t sub_2169700D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReplayYearModel(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_21697013C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_216970194(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_110();
  v5(v4);
  OUTLINED_FUNCTION_34();
  (*(v6 + 16))(a2, v2);
  return a2;
}

uint64_t type metadata accessor for ReplaceReplayYearUpdate(uint64_t a1)
{
  result = qword_27CABE0C8;
  if (!qword_27CABE0C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_216970264(uint64_t a1)
{
  type metadata accessor for ReplayYearModel(319);
  if (v1 <= 0x3F)
  {
    sub_2169702E8(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2169702E8(uint64_t a1)
{
  if (!qword_27CABE0D8)
  {
    v2 = type metadata accessor for ReplayModel(255);
    v3 = sub_2169705A8(&qword_27CAB6FA0, type metadata accessor for ReplayModel, &unk_217015560);
    updated = type metadata accessor for PageUpdateMappingCoordinator(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(updated, &qword_27CABE0D8);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for SelectReplayYearImplementation.Error(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_21697045C()
{
  result = qword_27CABE0E0;
  if (!qword_27CABE0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABE0E0);
  }

  return result;
}

uint64_t sub_2169704F8(uint64_t a1)
{
  result = sub_2169705A8(&qword_27CABE0E8, type metadata accessor for ReplaceReplayYearUpdate, &unk_21702DB78);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216970550(uint64_t a1)
{
  result = sub_2169705A8(&qword_27CABE0F0, type metadata accessor for ReplaceReplayYearUpdate, &unk_21702DBA0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2169705A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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