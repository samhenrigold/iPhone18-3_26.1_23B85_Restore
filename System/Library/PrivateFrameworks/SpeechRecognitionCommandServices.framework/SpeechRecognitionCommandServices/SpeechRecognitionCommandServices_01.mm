SpeechRecognitionCommandServices::VCCommandCollection *sub_26B49E2DC()
{
  if (qword_280400400 != -1)
  {
    swift_once();
  }

  return &stru_280406DC8;
}

uint64_t sub_26B49E32C(unsigned int *a1)
{
  v2 = sub_26B5427B4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4, v5, v6);
  v8 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  sub_26B542794();
  v10 = sub_26B5427A4();
  v11 = *(v3 + 8);
  v11(v8, v2);
  if (v10)
  {
    goto LABEL_3;
  }

  sub_26B542784();
  v12 = sub_26B5427A4();
  v11(v8, v2);
  if (v12)
  {
    goto LABEL_3;
  }

  sub_26B542774();
  v14 = sub_26B5427A4();
  v11(v8, v2);
  if (v14)
  {
    if (v9 > 0x7F)
    {
      v22 = (v9 & 0x3F) << 8;
      if (v9 >= 0x800)
      {
        v25 = (v22 | (v9 >> 6) & 0x3F) << 8;
        v26 = (((v25 | (v9 >> 12) & 0x3F) << 8) | (v9 >> 18)) - 2122219023;
        v15 = (v9 >> 12) + v25 + 8487393;
        if (HIWORD(v9))
        {
          v15 = v26;
        }
      }

      else
      {
        v15 = (v9 >> 6) + v22 + 33217;
      }
    }

    else
    {
      v15 = v9 + 1;
    }

    v28 = (v15 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v15) >> 3))));
    if (sub_26B542AD4() == 32 && v16 == 0xE100000000000000)
    {
    }

    else
    {
      v17 = sub_26B542FB4();

      if ((v17 & 1) == 0)
      {
LABEL_3:
        v28 = 8998;
        v29 = 0xE200000000000000;
        v27[3] = v9;
        v13 = sub_26B542F94();
        MEMORY[0x26D677BF0](v13);

        MEMORY[0x26D677BF0](59, 0xE100000000000000);
        MEMORY[0x26D677BF0](v28, v29);
      }
    }
  }

  if (v9 > 0x7F)
  {
    v21 = (v9 & 0x3F) << 8;
    if (v9 >= 0x800)
    {
      v23 = (v21 | (v9 >> 6) & 0x3F) << 8;
      v24 = (((v23 | (v9 >> 12) & 0x3F) << 8) | (v9 >> 18)) - 2122219023;
      v18 = (v9 >> 12) + v23 + 8487393;
      if (HIWORD(v9))
      {
        v18 = v24;
      }
    }

    else
    {
      v18 = (v9 >> 6) + v21 + 33217;
    }
  }

  else
  {
    v18 = v9 + 1;
  }

  v28 = (v18 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v18) >> 3))));
  v19 = sub_26B542AD4();
  MEMORY[0x26D677BE0](v19);
}

uint64_t sub_26B49E688(uint64_t result, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v3 = result & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {
    v5 = result;
    v6 = 0;
    v7 = a2 & 0xFFFFFFFFFFFFFFLL;
    v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    while (1)
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
        v11 = sub_26B542D64();
        v13 = v12;
      }

      else
      {
        if ((a2 & 0x2000000000000000) != 0)
        {
          v15[0] = v5;
          v15[1] = v7;
          v10 = v15 + v6;
        }

        else
        {
          v9 = v8;
          if ((v5 & 0x1000000000000000) == 0)
          {
            v9 = sub_26B542DC4();
          }

          v10 = (v9 + v6);
        }

        v11 = *v10;
        if ((*v10 & 0x80000000) == 0)
        {
          goto LABEL_14;
        }

        v14 = (__clz(v11 ^ 0xFF) - 24);
        if (v14 > 2)
        {
          if (v14 == 3)
          {
            v11 = ((v11 & 0xF) << 12) | ((v10[1] & 0x3F) << 6) | v10[2] & 0x3F;
            v13 = 3;
          }

          else
          {
            v11 = ((v11 & 0xF) << 18) | ((v10[1] & 0x3F) << 12) | ((v10[2] & 0x3F) << 6) | v10[3] & 0x3F;
            v13 = 4;
          }

          goto LABEL_15;
        }

        if (v14 == 1)
        {
LABEL_14:
          v13 = 1;
        }

        else
        {
          v11 = v10[1] & 0x3F | ((v11 & 0x1F) << 6);
          v13 = 2;
        }
      }

LABEL_15:
      LODWORD(v15[0]) = v11;
      result = sub_26B49E32C(v15);
      if (!v2)
      {
        v6 += v13;
        if (v6 < v3)
        {
          continue;
        }
      }

      return result;
    }
  }

  return result;
}

uint64_t sub_26B49E80C(uint64_t result, uint64_t *a2)
{
  v3 = *(result + 16);
  if (v3)
  {
    for (i = (result + 73); ; i += 48)
    {
      v6 = *i;
      v7 = *(i - 1);
      v8 = *(i - 9);
      v9 = *(i - 17);
      v10 = *(i - 25);
      v11 = *(i - 33);
      v12[0] = *(i - 41);
      v12[1] = v11;
      v12[2] = v10;
      v12[3] = v9;
      v12[4] = v8;
      v13 = v7;
      v14 = v6;

      sub_26B49FB08(v12, a2);
      if (v2)
      {
        break;
      }

      if (!--v3)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_26B49E8FC(uint64_t result, char **a2)
{
  v3 = v2;
  v4 = *(result + 16);
  if (v4)
  {
    v5 = v4 - 1;
    v6 = (result + 40);
    do
    {
      v7 = v5;
      v8 = *(v6 - 1);
      v9 = *v6;

      sub_26B49E688(v8, v9);
      MEMORY[0x26D677BF0](0, 0xE000000000000000);

      MEMORY[0x26D677BF0](10322146, 0xA300000000000000);
      sub_26B542D74();

      sub_26B49E688(10256610, 0xA300000000000000);

      MEMORY[0x26D677BF0](0, 0xE000000000000000);

      MEMORY[0x26D677BF0](1047080764, 0xE400000000000000);
      v10 = *a2;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a2 = v10;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v10 = sub_26B4A2660(0, *(v10 + 2) + 1, 1, v10);
        *a2 = v10;
      }

      v13 = *(v10 + 2);
      v12 = *(v10 + 3);
      if (v13 >= v12 >> 1)
      {
        v10 = sub_26B4A2660((v12 > 1), v13 + 1, 1, v10);
        *a2 = v10;
      }

      *(v10 + 2) = v13 + 1;
      v14 = &v10[16 * v13];
      *(v14 + 4) = 0xD000000000000013;
      *(v14 + 5) = 0x800000026B560C50;

      if (v3)
      {
        break;
      }

      v5 = v7 - 1;
      v6 += 2;
    }

    while (v7);
  }

  return result;
}

uint64_t *static VCCommandDocumentation.commandReferenceDocument(idioms:localeID:template:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v148 = a3;
  v147 = a2;
  v142 = a1;
  v7 = sub_26B542934();
  MEMORY[0x28223BE20](v7 - 8, v8, v9, v10);
  v144 = (&v134 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_26B542A64();
  MEMORY[0x28223BE20](v12 - 8, v13, v14, v15);
  v143 = &v134 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_26B542AA4();
  MEMORY[0x28223BE20](v17 - 8, v18, v19, v20);
  v21 = sub_26B542874();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21, v23, v24, v25);
  v27 = (&v134 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFCC8, &unk_26B5452B0);
  v32 = MEMORY[0x28223BE20](v28 - 8, v29, v30, v31);
  v34 = &v134 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x28223BE20](v32, v35, v36, v37);
  v40 = &v134 - v39;
  MEMORY[0x28223BE20](v38, v41, v42, v43);
  v45 = &v134 - v44;
  if (a5)
  {
    sub_26B542854();
    (*(v22 + 56))(v45, 0, 1, v21);
  }

  else
  {
    v145 = v27;
    v146 = &v134 - v44;
    v46 = v21;
    sub_26B49F934();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v48 = [objc_opt_self() bundleForClass_];
    v49 = sub_26B542A74();
    v50 = sub_26B542A74();
    a4 = [v48 URLForResource:v49 withExtension:v50];

    if (a4)
    {
      sub_26B542864();

      v51 = *(v22 + 56);
      v52 = v40;
      v53 = 0;
    }

    else
    {

      v51 = *(v22 + 56);
      v52 = v40;
      v53 = 1;
    }

    v21 = v46;
    v51(v52, v53, 1, v46);
    v45 = v146;
    sub_26B49F980(v40, v146);
    v27 = v145;
  }

  sub_26B49F9F0(v45, v34);
  if ((*(v22 + 48))(v34, 1, v21) == 1)
  {
    v27 = &qword_2803FFCC8;
    sub_26B4A4CBC(v34, &qword_2803FFCC8, &unk_26B5452B0);
    sub_26B49FA60();
    swift_allocError();
    *v54 = 0xD000000000000023;
    v54[1] = 0x800000026B560AA0;
    swift_willThrow();
    v55 = v45;
LABEL_11:
    sub_26B4A4CBC(v55, &qword_2803FFCC8, &unk_26B5452B0);
    return v27;
  }

  (*(v22 + 32))(v27, v34, v21);
  sub_26B542A94();
  v56 = v149;
  v57 = sub_26B542A44();
  v59 = v56;
  if (v56)
  {
    (*(v22 + 8))(v27, v21);
    v55 = v45;
    goto LABEL_11;
  }

  v61 = v58;
  v145 = v27;
  v146 = v45;
  v139 = v22;
  v140 = v21;
  v62 = 0x3E79646F623CLL;
  v63 = v57;
  v150 = v57;
  v151 = v58;
  v158 = 0x3E79646F623CLL;
  v159 = 0xE600000000000000;
  v64 = sub_26B49FAB4();
  v65 = &v150;
  v66 = sub_26B542CD4();
  v67 = v66[2];
  if (v67)
  {
    a4 = 0x3E79646F622F3CLL;
    v68 = v66[4];
    v21 = v66[5];

    v150 = v68;
    v151 = v21;

    MEMORY[0x26D677BF0](0x3E79646F623CLL, 0xE600000000000000);

    v22 = v150;
    v62 = v151;
    v150 = v63;
    v151 = v61;
    v63 = 0xE700000000000000;
    v158 = 0x3E79646F622F3CLL;
    v159 = 0xE700000000000000;
    v69 = sub_26B542CD4();
    v67 = v69[2];
    if (v67 >= 2)
    {
      v70 = v69[6];
      v71 = v69[7];

      v150 = 0x3E79646F622F3CLL;
      v151 = 0xE700000000000000;
      MEMORY[0x26D677BF0](v70, v71);

      v63 = v150;
      a4 = v151;

      v64 = sub_26B4A2660(0, 1, 1, MEMORY[0x277D84F90]);
      v21 = *(v64 + 16);
      v67 = *(v64 + 24);
      v65 = (v21 + 1);
      if (v21 < v67 >> 1)
      {
        goto LABEL_16;
      }

      goto LABEL_54;
    }
  }

  else
  {
LABEL_52:
    __break(1u);
  }

  __break(1u);
LABEL_54:
  v64 = sub_26B4A2660((v67 > 1), v65, 1, v64);
LABEL_16:
  *(v64 + 16) = v65;
  v72 = v64 + 16 * v21;
  *(v72 + 32) = v22;
  *(v72 + 40) = v62;
  v73 = [objc_opt_self() supportedTargetTypes];
  v138 = v63;
  if (v73)
  {
    v74 = v73;
    v141 = sub_26B542C24();
  }

  else
  {
    v141 = 0;
  }

  v75 = [objc_opt_self() sharedSpokenCommandUtilities];
  if (!v75)
  {
    __break(1u);
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v76 = v75;

  v77 = sub_26B542A74();
  v27 = [v76 commandStringsTableForLocaleIdentifier_];

  if (!v27)
  {

    sub_26B49FA60();
    swift_allocError();
    *v109 = 0xD000000000000021;
    v109[1] = 0x800000026B560AD0;
    swift_willThrow();
    (*(v139 + 8))(v145, v140);
    sub_26B4A4CBC(v146, &qword_2803FFCC8, &unk_26B5452B0);

    return v27;
  }

  v157 = sub_26B4A4978(MEMORY[0x277D84F90]);
  valid = AllValidCommandParameterIdentifiers(v157, v78);
  if (!valid)
  {
    goto LABEL_56;
  }

  v137 = a4;
  v80 = valid;
  objc_opt_self();
  swift_dynamicCastObjCClassUnconditional();
  v150 = 0;
  sub_26B542C54();
  v81 = v150;
  if (!v150)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v82 = v141;

  v83 = v27;
  sub_26B4A4624(v81, v83, v82, &v157);
  v84 = v59;

  v136 = v83;

  sub_26B542A54();
  sub_26B5428F4();
  v85 = sub_26B542AB4();
  v87 = v86;
  sub_26B542A54();
  sub_26B5428F4();
  v59 = sub_26B542AB4();
  v89 = v88;
  v150 = 1043425340;
  v151 = 0xE400000000000000;
  v158 = 0;
  v159 = 0xE000000000000000;
  sub_26B49E688(v85, v87);
  v62 = v84;

  MEMORY[0x26D677BF0](v158, v159);

  MEMORY[0x26D677BF0](0x3E31682F3CLL, 0xE500000000000000);
  v90 = v150;
  v91 = v151;
  v63 = *(v64 + 16);
  v92 = *(v64 + 24);
  if (v63 >= v92 >> 1)
  {
    v64 = sub_26B4A2660((v92 > 1), v63 + 1, 1, v64);
  }

  *(v64 + 16) = v63 + 1;
  v93 = v64 + 16 * v63;
  *(v93 + 32) = v90;
  *(v93 + 40) = v91;
  v150 = 4091964;
  v151 = 0xE300000000000000;
  v158 = 0;
  v159 = 0xE000000000000000;
  sub_26B49E688(v59, v89);
  v143 = v62;

  MEMORY[0x26D677BF0](v158, v159);

  MEMORY[0x26D677BF0](1047539516, 0xE400000000000000);
  v22 = v150;
  v94 = v151;
  v96 = *(v64 + 16);
  v95 = *(v64 + 24);
  v65 = (v96 + 1);
  if (v96 >= v95 >> 1)
  {
    v64 = sub_26B4A2660((v95 > 1), v96 + 1, 1, v64);
  }

  *(v64 + 16) = v65;
  v97 = v64 + 16 * v96;
  *(v97 + 32) = v22;
  *(v97 + 40) = v94;
  v160 = v64;
  v98 = static VCCommandCollection.allCommandCollections.getter();
  v99 = *(v98 + 16);
  if (v99)
  {
    v21 = 0;
    v100 = v98 + 73;
    v144 = MEMORY[0x277D84F90];
    v149 = v98;
    v135 = v99;
    v134 = v98 + 73;
    do
    {
      a4 = v100 + 48 * v21;
      v64 = v99 - v21;
      while (1)
      {
        v67 = *(v98 + 16);
        if (v21 >= v67)
        {
          __break(1u);
          goto LABEL_52;
        }

        v101 = *(a4 - 41);
        v62 = *(a4 - 33);
        v63 = *(a4 - 17);
        v59 = *(a4 - 9);
        v102 = *(a4 - 1);
        v22 = *a4;
        v147 = *(a4 - 25);
        v148 = v101;
        v150 = v101;
        v151 = v62;
        v152 = v147;
        v153 = v63;
        v154 = v59;
        v155 = v102;
        v156 = v22;

        v65 = &v150;
        if ((VCCommandCollection.isCustom.getter() & 1) == 0)
        {
          if (v102)
          {
            break;
          }
        }

        a4 += 48;
        ++v21;
        --v64;
        v98 = v149;
        if (!v64)
        {
          goto LABEL_42;
        }
      }

      v65 = v144;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v158 = v65;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_26B4A2100(0, v65[2] + 1, 1);
        v65 = v158;
      }

      v105 = v65[2];
      v104 = v65[3];
      v106 = v105 + 1;
      if (v105 >= v104 >> 1)
      {
        v144 = (v105 + 1);
        sub_26B4A2100((v104 > 1), v105 + 1, 1);
        v106 = v144;
        v65 = v158;
      }

      ++v21;
      v65[2] = v106;
      v144 = v65;
      v107 = &v65[6 * v105];
      v108 = v147;
      v107[4] = v148;
      v107[5] = v62;
      v107[6] = v108;
      v107[7] = v63;
      v107[8] = v59;
      *(v107 + 72) = v102;
      *(v107 + 73) = v22;
      v98 = v149;
      v99 = v135;
      v100 = v134;
    }

    while (v64 != 1);
  }

  else
  {
    v144 = MEMORY[0x277D84F90];
  }

LABEL_42:

  v111 = v143;
  v110 = v144;
  sub_26B49E80C(v144, &v160);
  v112 = v111;
  v113 = *(v110 + 16);
  v114 = v136;
  v115 = v141;

  v116 = v142;

  if (!v113)
  {
LABEL_46:

    swift_bridgeObjectRelease_n();
    v124 = v160;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v124 = sub_26B4A2660(0, *(v124 + 2) + 1, 1, v124);
    }

    v125 = v146;
    v126 = v138;
    v128 = *(v124 + 2);
    v127 = *(v124 + 3);
    if (v128 >= v127 >> 1)
    {
      v124 = sub_26B4A2660((v127 > 1), v128 + 1, 1, v124);
    }

    *(v124 + 2) = v128 + 1;
    v129 = &v124[16 * v128];
    v130 = v137;
    *(v129 + 4) = v126;
    *(v129 + 5) = v130;
    v150 = v124;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFCE8, &unk_26B5454F0);
    sub_26B4A4A8C();
    v131 = sub_26B5429D4();
    v133 = v132;

    v27 = sub_26B4A14D4(v131, v133);

    (*(v139 + 8))(v145, v140);
    sub_26B4A4CBC(v125, &qword_2803FFCC8, &unk_26B5452B0);

    return v27;
  }

  v117 = (v110 + 73);
  while (1)
  {
    v118 = *v117;
    v119 = *(v117 - 1);
    v120 = *(v117 - 9);
    v121 = *(v117 - 17);
    v122 = *(v117 - 25);
    v123 = *(v117 - 33);
    v150 = *(v117 - 41);
    v151 = v123;
    v152 = v122;
    v153 = v121;
    v154 = v120;
    v155 = v119;
    v156 = v118;

    sub_26B49FD88(&v150, &v160, v116, v114, v115, &v157);
    if (v112)
    {
      break;
    }

    v112 = 0;

    v117 += 48;
    if (!--v113)
    {
      goto LABEL_46;
    }
  }

LABEL_58:

  __break(1u);
  return result;
}

unint64_t sub_26B49F934()
{
  result = qword_2803FFCD0;
  if (!qword_2803FFCD0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2803FFCD0);
  }

  return result;
}

uint64_t sub_26B49F980(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFCC8, &unk_26B5452B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26B49F9F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFCC8, &unk_26B5452B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_26B49FA60()
{
  result = qword_2803FFCD8;
  if (!qword_2803FFCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803FFCD8);
  }

  return result;
}

unint64_t sub_26B49FAB4()
{
  result = qword_2803FFCE0;
  if (!qword_2803FFCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803FFCE0);
  }

  return result;
}

uint64_t sub_26B49FB08(uint64_t a1, uint64_t *a2)
{
  v4 = sub_26B5427B4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6, v7, v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 24);
  v26 = *(a1 + 16);
  v11 = v26;
  v27 = v12;

  sub_26B542774();
  sub_26B49FAB4();
  v13 = sub_26B542CC4();
  (*(v5 + 8))(v10, v4);

  v26 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFCE8, &unk_26B5454F0);
  sub_26B4A4A8C();
  v14 = sub_26B5429D4();
  v16 = v15;

  v26 = 0;
  v27 = 0xE000000000000000;
  sub_26B542D74();

  v26 = 0x3D6665726820613CLL;
  v27 = 0xEA00000000002327;
  MEMORY[0x26D677BF0](v14, v16);

  MEMORY[0x26D677BF0](15911, 0xE200000000000000);
  v24 = 0;
  v25 = 0xE000000000000000;
  sub_26B49E688(v11, v12);
  MEMORY[0x26D677BF0](v24, v25);

  MEMORY[0x26D677BF0](0x3E702F3C3E612F3CLL, 0xE800000000000000);
  v17 = v26;
  v18 = v27;
  v19 = *a2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *a2 = v19;
  if ((result & 1) == 0)
  {
    result = sub_26B4A2660(0, *(v19 + 16) + 1, 1, v19);
    v19 = result;
    *a2 = result;
  }

  v22 = *(v19 + 16);
  v21 = *(v19 + 24);
  if (v22 >= v21 >> 1)
  {
    result = sub_26B4A2660((v21 > 1), v22 + 1, 1, v19);
    v19 = result;
    *a2 = result;
  }

  *(v19 + 16) = v22 + 1;
  v23 = v19 + 16 * v22;
  *(v23 + 32) = v17;
  *(v23 + 40) = v18;
  return result;
}

uint64_t sub_26B49FD88(void *a1, char **a2, uint64_t a3, void *a4, uint64_t a5, unint64_t *a6)
{
  v195 = a6;
  v196 = a4;
  v200 = a5;
  v201 = a3;
  v8 = sub_26B5427B4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10, v11, v12);
  v14 = &v180 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[2];
  v16 = a1[3];
  v203 = a1[4];
  v205 = v15;
  *&v229 = v15;
  *(&v229 + 1) = v16;

  sub_26B542774();
  v192 = sub_26B49FAB4();
  v17 = sub_26B542CC4();
  (*(v9 + 8))(v14, v8);

  *&v229 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFCE8, &unk_26B5454F0);
  v182 = sub_26B4A4A8C();
  v18 = sub_26B5429D4();
  v20 = v19;

  v21 = *a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a2 = v21;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_117:
    v21 = sub_26B4A2660(0, v21[2] + 1, 1, v21);
    *a2 = v21;
  }

  v24 = v21[2];
  v23 = v21[3];
  if (v24 >= v23 >> 1)
  {
    v21 = sub_26B4A2660((v23 > 1), v24 + 1, 1, v21);
    *a2 = v21;
  }

  v21[2] = v24 + 1;
  v25 = &v21[2 * v24];
  v25[4] = 0x3E2F72683CLL;
  v25[5] = 0xE500000000000000;
  *&v229 = 0;
  *(&v229 + 1) = 0xE000000000000000;
  sub_26B542D74();

  *&v229 = 0x273D64692032683CLL;
  *(&v229 + 1) = 0xE800000000000000;
  MEMORY[0x26D677BF0](v18, v20);

  MEMORY[0x26D677BF0](15911, 0xE200000000000000);
  v216 = 0;
  v217 = 0xE000000000000000;
  v26 = v236;
  sub_26B49E688(v205, v16);
  v202 = v26;
  MEMORY[0x26D677BF0](v216, v217);

  MEMORY[0x26D677BF0](0x3E32682F3CLL, 0xE500000000000000);
  v27 = v229;
  v28 = *a2;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  *a2 = v28;
  if ((v29 & 1) == 0)
  {
    v28 = sub_26B4A2660(0, *(v28 + 2) + 1, 1, v28);
    *a2 = v28;
  }

  v16 = v203;
  v18 = *(v28 + 2);
  v30 = *(v28 + 3);
  if (v18 >= v30 >> 1)
  {
    v28 = sub_26B4A2660((v30 > 1), v18 + 1, 1, v28);
    *a2 = v28;
  }

  *(v28 + 2) = v18 + 1;
  *&v28[16 * v18 + 32] = v27;
  v31 = v16[2];
  v21 = MEMORY[0x277D84F90];
  v197 = a2;
  if (v31)
  {
    v18 = 0;
    a2 = (v16 + 4);
    v32 = v202;
    v205 = v201 + 32;
    v198 = v16 + 4;
    v199 = v31;
    do
    {
      v187 = v21;
      while (1)
      {
        if (v18 >= v16[2])
        {
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
          goto LABEL_117;
        }

        v33 = &a2[23 * v18];
        v34 = *v33;
        v35 = *(v33 + 1);
        v36 = *(v33 + 3);
        v231 = *(v33 + 2);
        v232 = v36;
        v229 = v34;
        v230 = v35;
        v37 = *(v33 + 4);
        v38 = *(v33 + 5);
        v39 = *(v33 + 7);
        v233[2] = *(v33 + 6);
        v233[3] = v39;
        v233[0] = v37;
        v233[1] = v38;
        v40 = *(v33 + 8);
        v41 = *(v33 + 9);
        v42 = *(v33 + 10);
        *&v233[7] = v33[22];
        v233[5] = v41;
        v233[6] = v42;
        v233[4] = v40;
        ++v18;
        v20 = *&v233[0];
        if (*(*&v233[0] + 16))
        {
          v236 = *(v201 + 16);
          if (v236)
          {
            break;
          }
        }

LABEL_12:
        if (v18 == v31)
        {
          goto LABEL_31;
        }
      }

      v204 = v18;
      sub_26B4A5160(&v229, &v216);
      v43 = 0;
      v44 = v20 + 56;
      while (1)
      {
        LOBYTE(v216) = *(v205 + v43);
        if (*(v20 + 2))
        {
          sub_26B471350();
          v45 = sub_26B5429B4();
          v46 = -1 << v20[32];
          v47 = v45 & ~v46;
          if ((*&v44[(v47 >> 3) & 0xFFFFFFFFFFFFFF8] >> v47))
          {
            break;
          }
        }

LABEL_17:
        if (++v43 == v236)
        {
          sub_26B4A51BC(&v229);
          v21 = v187;
          v32 = v202;
          v16 = v203;
          a2 = v198;
          v31 = v199;
          v18 = v204;
          goto LABEL_12;
        }
      }

      v48 = ~v46;
      sub_26B4713A4();
      while (1)
      {
        LOBYTE(v213) = *(*(v20 + 6) + v47);
        if (sub_26B542A34())
        {
          break;
        }

        v47 = (v47 + 1) & v48;
        if (((*&v44[(v47 >> 3) & 0xFFFFFFFFFFFFFF8] >> v47) & 1) == 0)
        {
          goto LABEL_17;
        }
      }

      v21 = v187;
      v49 = swift_isUniquelyReferenced_nonNull_native();
      *&v206 = v21;
      if ((v49 & 1) == 0)
      {
        sub_26B4A2120(0, v21[2] + 1, 1);
        v21 = v206;
      }

      v16 = v203;
      v18 = v204;
      a2 = v198;
      v51 = v21[2];
      v50 = v21[3];
      if (v51 >= v50 >> 1)
      {
        sub_26B4A2120((v50 > 1), v51 + 1, 1);
        v21 = v206;
      }

      v21[2] = v51 + 1;
      v52 = &v21[23 * v51];
      v53 = v229;
      v54 = v230;
      v55 = v232;
      *(v52 + 4) = v231;
      *(v52 + 5) = v55;
      *(v52 + 2) = v53;
      *(v52 + 3) = v54;
      v56 = v233[0];
      v57 = v233[1];
      v58 = v233[3];
      *(v52 + 8) = v233[2];
      *(v52 + 9) = v58;
      *(v52 + 6) = v56;
      *(v52 + 7) = v57;
      v59 = v233[4];
      v60 = v233[5];
      v61 = v233[6];
      v52[26] = *&v233[7];
      *(v52 + 11) = v60;
      *(v52 + 12) = v61;
      *(v52 + 10) = v59;
      v31 = v199;
      v32 = v202;
    }

    while (v18 != v199);
  }

  else
  {
    v32 = v202;
  }

LABEL_31:
  v62 = v21[2];

  v63 = v196;

  v191 = v62;
  v187 = v21;
  if (v62)
  {
    v64 = 0;
    v190 = v21 + 4;
    v181 = 0x800000026B560C30;
    v184 = 0x800000026B560BF0;
    v185 = 0x800000026B560BD0;
    v183 = 0x800000026B560C10;
    v16 = MEMORY[0x277D837D0];
    v186 = 0x273D64692033683CLL;
    v236 = v63;
    while (1)
    {
      v199 = v64;
      v65 = &v190[23 * v64];
      v66 = *v65;
      v67 = *(v65 + 1);
      v68 = *(v65 + 3);
      v231 = *(v65 + 2);
      v232 = v68;
      v229 = v66;
      v230 = v67;
      v69 = *(v65 + 4);
      v70 = *(v65 + 5);
      v71 = *(v65 + 7);
      v233[2] = *(v65 + 6);
      v233[3] = v71;
      v233[0] = v69;
      v233[1] = v70;
      v72 = *(v65 + 8);
      v73 = *(v65 + 9);
      v74 = *(v65 + 10);
      *&v233[7] = v65[22];
      v233[5] = v73;
      v233[6] = v74;
      v233[4] = v72;
      v75 = *(&v229 + 1);
      v204 = v229;
      v213 = v230;
      v214 = v231;
      v215 = v232;
      v76 = *&v233[0];
      v210 = *(&v233[4] + 8);
      v211 = *(&v233[5] + 8);
      v212 = *(&v233[6] + 8);
      v206 = *(v233 + 8);
      v207 = *(&v233[1] + 8);
      v208 = *(&v233[2] + 8);
      v209 = *(&v233[3] + 8);
      sub_26B4A5160(&v229, &v216);
      v205 = v75;

      v198 = v76;
      v79 = sub_26B4A2E58(v201, v76, v77, v78);
      v80 = sub_26B4A2FF8(&unk_287BFF1A8, v79);
      v21 = v80;
      v81 = *(v80 + 16);
      if (v81)
      {
        v82 = sub_26B4A208C(*(v80 + 16), 0);
        v203 = sub_26B4A4514(&v216, v82 + 32, v81, v21);
        v83 = v216;
        v18 = v217;
        a2 = *(&v218 + 1);
        v20 = v218;
        v16 = v219;

        sub_26B4A5210(v83);
        if (v203 != v81)
        {
          goto LABEL_115;
        }

        v16 = MEMORY[0x277D837D0];
      }

      else
      {

        v82 = MEMORY[0x277D84F90];
      }

      v216 = v82;
      sub_26B4A33F8(&v216);
      v202 = v32;
      if (v32)
      {
        break;
      }

      v84 = v216;
      v85 = *(v216 + 16);
      v86 = MEMORY[0x277D84F90];
      if (v85)
      {
        v216 = MEMORY[0x277D84F90];
        sub_26B4A2140(0, v85, 0);
        v86 = v216;
        v18 = 32;
        do
        {
          LOBYTE(v234) = *(v84 + v18);
          v89 = VCCommand.Idiom.displayName()();
          object = v89._object;
          countAndFlagsBits = v89._countAndFlagsBits;
          v216 = v86;
          v91 = *(v86 + 2);
          v90 = *(v86 + 3);
          v20 = (v91 + 1);
          if (v91 >= v90 >> 1)
          {
            a2 = v89._object;
            sub_26B4A2140((v90 > 1), v91 + 1, 1);
            object = v89._object;
            countAndFlagsBits = v89._countAndFlagsBits;
            v86 = v216;
          }

          *(v86 + 2) = v20;
          v92 = &v86[16 * v91];
          *(v92 + 4) = countAndFlagsBits;
          *(v92 + 5) = object;
          ++v18;
          --v85;
        }

        while (v85);

        v16 = MEMORY[0x277D837D0];
      }

      else
      {
      }

      v216 = v204;
      v217 = v205;
      v234 = 95;
      v235 = 0xE100000000000000;
      v21 = sub_26B542CD4();

      if (!v21[2])
      {
        goto LABEL_114;
      }

      v93 = v21[4];
      a2 = v21[5];

      v203 = v93;
      v94 = sub_26B542A74();
      if (v200)
      {
        v95 = sub_26B542C14();
      }

      else
      {
        v95 = 0;
      }

      v18 = *v195;

      v96 = v16;
      v97 = sub_26B5429A4();

      v20 = [v236 phrasesForCommandIdentifier:v94 targetTypes:v95 parameterStrings:v97];

      if (v20)
      {
        v196 = sub_26B542C24();

        v98 = sub_26B542A74();
        v99 = sub_26B542A74();
        if (v200)
        {
          v100 = sub_26B542C14();
        }

        else
        {
          v100 = 0;
        }

        v101 = [v236 descriptionStringForCommandIdentifier:v98 descriptionType:v99 targetTypes:v100];

        if (v101)
        {
          v188 = sub_26B542A84();
          v193 = v102;
        }

        else
        {
          v188 = 0;
          v193 = 0;
        }

        v103 = sub_26B542A74();
        v20 = sub_26B542A74();
        if (v200)
        {
          v104 = sub_26B542C14();
        }

        else
        {
          v104 = 0;
        }

        v105 = v236;
        v106 = [v236 descriptionStringForCommandIdentifier:v103 descriptionType:v20 targetTypes:v104];

        if (v106)
        {
          sub_26B542A84();

          v107 = objc_allocWithZone(MEMORY[0x277CCAB48]);
          v108 = sub_26B542A74();

          v109 = [v107 initWithString_];

          v110 = v109;

          sub_26B4A120C(v111);

          v112 = sub_26B5429A4();

          [v105 resolveReferencesInMutableAttributedString:v110 stringsTable:v112];

          v113 = [v110 string];
          v189 = sub_26B542A84();
          v194 = v114;
        }

        else
        {
          v189 = 0;
          v194 = 0;
        }

        v16 = v196;
        v115 = v197;
        v116 = *v197;
        v117 = swift_isUniquelyReferenced_nonNull_native();
        *v115 = v116;
        if ((v117 & 1) == 0)
        {
          v116 = sub_26B4A2660(0, *(v116 + 2) + 1, 1, v116);
          *v197 = v116;
        }

        v18 = *(v116 + 2);
        v118 = *(v116 + 3);
        if (v18 >= v118 >> 1)
        {
          v116 = sub_26B4A2660((v118 > 1), v18 + 1, 1, v116);
          *v197 = v116;
        }

        *(v116 + 2) = v18 + 1;
        v119 = &v116[16 * v18];
        *(v119 + 4) = 0x3E7669643CLL;
        *(v119 + 5) = 0xE500000000000000;
        v120 = *v197;
        v122 = *(*v197 + 16);
        v121 = *(*v197 + 24);
        if (v122 >= v121 >> 1)
        {
          v120 = sub_26B4A2660((v121 > 1), v122 + 1, 1, v120);
          *v197 = v120;
        }

        *(v120 + 2) = v122 + 1;
        v123 = &v120[16 * v122];
        *(v123 + 4) = 0x3E2F72683CLL;
        *(v123 + 5) = 0xE500000000000000;
        v216 = 0;
        v217 = 0xE000000000000000;
        sub_26B542D74();

        v216 = v186;
        v217 = 0xE800000000000000;
        MEMORY[0x26D677BF0](v203, a2);

        v21 = &v216;
        MEMORY[0x26D677BF0](15911, 0xE200000000000000);
        if (!v16[2])
        {
          goto LABEL_116;
        }

        v125 = v16[4];
        v124 = v16[5];
        v234 = 0;
        v235 = 0xE000000000000000;

        v126 = v125;
        v127 = v202;
        sub_26B49E688(v126, v124);
        v32 = v127;

        MEMORY[0x26D677BF0](v234, v235);

        MEMORY[0x26D677BF0](0x3E33682F3CLL, 0xE500000000000000);
        v18 = v216;
        v128 = v217;
        a2 = v197;
        v129 = *v197;
        v130 = swift_isUniquelyReferenced_nonNull_native();
        *a2 = v129;
        if ((v130 & 1) == 0)
        {
          v129 = sub_26B4A2660(0, *(v129 + 16) + 1, 1, v129);
          *a2 = v129;
        }

        v132 = *(v129 + 16);
        v131 = *(v129 + 24);
        if (v132 >= v131 >> 1)
        {
          v129 = sub_26B4A2660((v131 > 1), v132 + 1, 1, v129);
          *a2 = v129;
        }

        *(v129 + 16) = v132 + 1;
        v133 = v129 + 16 * v132;
        *(v133 + 32) = v18;
        *(v133 + 40) = v128;
        if (v193)
        {
          v216 = 4091964;
          v217 = 0xE300000000000000;
          v234 = 0;
          v235 = 0xE000000000000000;
          sub_26B49E688(v188, v193);

          MEMORY[0x26D677BF0](v234, v235);

          MEMORY[0x26D677BF0](1047539516, 0xE400000000000000);
          v18 = v216;
          v134 = v217;
          v135 = *a2;
          v136 = swift_isUniquelyReferenced_nonNull_native();
          *a2 = v135;
          if ((v136 & 1) == 0)
          {
            v135 = sub_26B4A2660(0, *(v135 + 2) + 1, 1, v135);
            *a2 = v135;
          }

          v138 = *(v135 + 2);
          v137 = *(v135 + 3);
          if (v138 >= v137 >> 1)
          {
            v135 = sub_26B4A2660((v137 > 1), v138 + 1, 1, v135);
            *a2 = v135;
          }

          *(v135 + 2) = v138 + 1;
          v139 = &v135[16 * v138];
          *(v139 + 4) = v18;
          *(v139 + 5) = v134;
        }

        v20 = v196;
        v16 = MEMORY[0x277D837D0];
        if (*(v201 + 16) >= 2uLL && *(v86 + 2))
        {
          v216 = 0;
          v217 = 0xE000000000000000;
          sub_26B542D74();

          v216 = 0xD000000000000012;
          v217 = v181;
          v234 = v86;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFCE8, &unk_26B5454F0);
          v140 = sub_26B5429D4();
          v142 = v141;

          MEMORY[0x26D677BF0](v140, v142);

          MEMORY[0x26D677BF0](1047539516, 0xE400000000000000);
          v143 = v216;
          v18 = v217;
          v144 = *a2;
          v145 = swift_isUniquelyReferenced_nonNull_native();
          *a2 = v144;
          if ((v145 & 1) == 0)
          {
            v144 = sub_26B4A2660(0, *(v144 + 2) + 1, 1, v144);
            *a2 = v144;
          }

          v147 = *(v144 + 2);
          v146 = *(v144 + 3);
          if (v147 >= v146 >> 1)
          {
            v144 = sub_26B4A2660((v146 > 1), v147 + 1, 1, v144);
            *a2 = v144;
          }

          *(v144 + 2) = v147 + 1;
          v148 = &v144[16 * v147];
          *(v148 + 4) = v143;
          *(v148 + 5) = v18;
          v16 = MEMORY[0x277D837D0];
        }

        else
        {
        }

        v149 = *a2;
        v150 = swift_isUniquelyReferenced_nonNull_native();
        *a2 = v149;
        if ((v150 & 1) == 0)
        {
          v149 = sub_26B4A2660(0, *(v149 + 2) + 1, 1, v149);
          *a2 = v149;
        }

        v152 = *(v149 + 2);
        v151 = *(v149 + 3);
        if (v152 >= v151 >> 1)
        {
          v149 = sub_26B4A2660((v151 > 1), v152 + 1, 1, v149);
          *a2 = v149;
        }

        *(v149 + 2) = v152 + 1;
        v153 = &v149[16 * v152];
        *(v153 + 4) = 0xD000000000000010;
        *(v153 + 5) = v185;
        v154 = *a2;
        v156 = *(*a2 + 2);
        v155 = *(*a2 + 3);
        if (v156 >= v155 >> 1)
        {
          v154 = sub_26B4A2660((v155 > 1), v156 + 1, 1, v154);
          *a2 = v154;
        }

        *(v154 + 2) = v156 + 1;
        v157 = &v154[16 * v156];
        v158 = v184;
        *(v157 + 4) = 0xD000000000000014;
        *(v157 + 5) = v158;
        sub_26B49E8FC(v20, a2);

        v159 = *a2;
        v160 = swift_isUniquelyReferenced_nonNull_native();
        *a2 = v159;
        if ((v160 & 1) == 0)
        {
          v159 = sub_26B4A2660(0, *(v159 + 2) + 1, 1, v159);
          *a2 = v159;
        }

        v162 = *(v159 + 2);
        v161 = *(v159 + 3);
        if (v162 >= v161 >> 1)
        {
          v159 = sub_26B4A2660((v161 > 1), v162 + 1, 1, v159);
          *a2 = v159;
        }

        *(v159 + 2) = v162 + 1;
        v163 = &v159[16 * v162];
        *(v163 + 4) = 0x3E6C752F3CLL;
        *(v163 + 5) = 0xE500000000000000;
        v164 = *a2;
        v165 = v194;
        if (v194)
        {
          v167 = *(v164 + 2);
          v166 = *(v164 + 3);
          if (v167 >= v166 >> 1)
          {
            v164 = sub_26B4A2660((v166 > 1), v167 + 1, 1, v164);
            *a2 = v164;
          }

          *(v164 + 2) = v167 + 1;
          v168 = &v164[16 * v167];
          v169 = v183;
          *(v168 + 4) = 0xD000000000000013;
          *(v168 + 5) = v169;
          v216 = 4091964;
          v217 = 0xE300000000000000;
          v234 = 0;
          v235 = 0xE000000000000000;
          sub_26B49E688(v189, v165);
          v20 = v127;

          MEMORY[0x26D677BF0](v234, v235);

          MEMORY[0x26D677BF0](1047539516, 0xE400000000000000);
          v170 = v216;
          v171 = v217;
          v172 = *a2;
          v173 = swift_isUniquelyReferenced_nonNull_native();
          *a2 = v172;
          if ((v173 & 1) == 0)
          {
            v172 = sub_26B4A2660(0, *(v172 + 2) + 1, 1, v172);
            *a2 = v172;
          }

          v18 = *(v172 + 2);
          v174 = *(v172 + 3);
          if (v18 >= v174 >> 1)
          {
            v172 = sub_26B4A2660((v174 > 1), v18 + 1, 1, v172);
            *a2 = v172;
          }

          *(v172 + 2) = v18 + 1;
          v175 = &v172[16 * v18];
          *(v175 + 4) = v170;
          *(v175 + 5) = v171;
          v164 = *a2;
          v63 = v236;
          v32 = v127;
        }

        else
        {
          v63 = v236;
        }

        *a2 = v164;
        v177 = *(v164 + 2);
        v176 = *(v164 + 3);
        if (v177 >= v176 >> 1)
        {
          v164 = sub_26B4A2660((v176 > 1), v177 + 1, 1, v164);
          *a2 = v164;
        }

        *(v164 + 2) = v177 + 1;
        v178 = &v164[16 * v177];
        *(v178 + 4) = 0x3E7669642F3CLL;
        *(v178 + 5) = 0xE600000000000000;
      }

      else
      {

        v63 = v236;
        v16 = v96;
        v32 = v202;
      }

      if (v32)
      {
        v218 = v213;
        v219 = v214;
        v220 = v215;
        v225 = v209;
        v226 = v210;
        v227 = v211;
        v228 = v212;
        v222 = v206;
        v223 = v207;
        v216 = v204;
        v217 = v205;
        v221 = v198;
        v224 = v208;
        sub_26B4A51BC(&v216);
        __break(1u);
        break;
      }

      v218 = v213;
      v219 = v214;
      v220 = v215;
      v225 = v209;
      v226 = v210;
      v227 = v211;
      v228 = v212;
      v222 = v206;
      v223 = v207;
      v64 = v199 + 1;
      v216 = v204;
      v217 = v205;
      v221 = v198;
      v224 = v208;
      sub_26B4A51BC(&v216);
      if (v64 == v191)
      {
        goto LABEL_112;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_112:
  }

  return result;
}

uint64_t sub_26B4A120C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFD08, &qword_26B545398);
    v2 = sub_26B542E64();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = (*(a1 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v5)))));
    v14 = v13[1];
    *&v30[0] = *v13;
    *(&v30[0] + 1) = v14;

    swift_dynamicCast();
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_26B4A5218(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_26B4A5218(v29, v30);
    result = sub_26B542D14();
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v7 + 8 * (v16 >> 6))) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = *(v7 + 8 * v17);
        if (v21 != -1)
        {
          v10 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v16) & ~*(v7 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v22;
    *(v11 + 16) = v23;
    *(v11 + 32) = v24;
    result = sub_26B4A5218(v30, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_26B4A14D4(uint64_t a1, unint64_t a2)
{
  v47 = *MEMORY[0x277D85DE8];
  v41[0] = a1;
  v41[1] = a2;
  *&v44 = a1;
  *(&v44 + 1) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFCF8, &qword_26B545388);
  if (swift_dynamicCast())
  {
    sub_26B4A4F98(__src, &v45);
    __swift_project_boxed_opaque_existential_1(&v45, v46);
    sub_26B542834();
    __src[0] = v44;
    __swift_destroy_boxed_opaque_existential_1(&v45);
    goto LABEL_63;
  }

  v43 = 0;
  memset(__src, 0, sizeof(__src));
  sub_26B4A4CBC(__src, &qword_2803FFD00, &qword_26B545390);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = sub_26B542DC4();
  }

  sub_26B4A1A6C(&v45, v4, v5);
  v6 = *(&v45 + 1);
  v7 = v45;
  if (*(&v45 + 1) >> 60 != 15)
  {
    __src[0] = v45;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = sub_26B4A4DD4(v8);
  *(&__src[0] + 1) = v9;
  MEMORY[0x28223BE20](*&__src[0], v9, v10, v11);
  v36[2] = v41;
  v12 = sub_26B4A1B34(sub_26B4A4E74, v36);
  v16 = v12;
  v17 = v13;
  v18 = v14;
  v19 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v19 == 2)
    {
      v21 = *(*&__src[0] + 16);
      v20 = *(*&__src[0] + 24);
      v22 = __OFSUB__(v20, v21);
      v23 = v20 - v21;
      if (v22)
      {
        goto LABEL_70;
      }

      if (v15 != v23)
      {
        goto LABEL_23;
      }
    }

    else if (v15)
    {
      v24 = 0;
      goto LABEL_60;
    }
  }

  else if (v19)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v15 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v19 == 2)
      {
        v24 = *(*&__src[0] + 24);
      }

      else if (v19 == 1)
      {
        v24 = *&__src[0] >> 32;
      }

      else
      {
        v24 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v24 >= v15)
      {
        sub_26B5428A4();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v15 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v38 = v7;
  if ((v13 & 0x2000000000000000) != 0)
  {
    v25 = HIBYTE(v13) & 0xF;
  }

  else
  {
    v25 = v12 & 0xFFFFFFFFFFFFLL;
  }

  *(&v44 + 7) = 0;
  *&v44 = 0;
  if (4 * v25 == v14 >> 14)
  {
    goto LABEL_57;
  }

  v37 = v6;
  LOBYTE(v26) = 0;
  v27 = (v12 >> 59) & 1;
  if ((v13 & 0x1000000000000000) == 0)
  {
    LOBYTE(v27) = 1;
  }

  v28 = 4 << v27;
  v39 = (v13 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v40 = v13 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v29 = v18 & 0xC;
    v30 = v18;
    if (v29 == v28)
    {
      v30 = sub_26B4A4448(v18, v16, v17);
    }

    v31 = v30 >> 16;
    if (v30 >> 16 >= v25)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = sub_26B542B44();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v17 & 0x1000000000000000) != 0)
    {
      v33 = sub_26B542B74();
      if (v29 != v28)
      {
        goto LABEL_46;
      }
    }

    else if ((v17 & 0x2000000000000000) != 0)
    {
      *&v45 = v16;
      *(&v45 + 1) = v40;
      v33 = *(&v45 + v31);
      if (v29 != v28)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v32 = v39;
      if ((v16 & 0x1000000000000000) == 0)
      {
        v32 = sub_26B542DC4();
      }

      v33 = *(v32 + v31);
      if (v29 != v28)
      {
LABEL_46:
        if ((v17 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v18 = sub_26B4A4448(v18, v16, v17);
    if ((v17 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v18 = (v18 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v25 <= v18 >> 16)
    {
      goto LABEL_66;
    }

    v18 = sub_26B542B54();
LABEL_52:
    *(&v44 + v26) = v33;
    v26 = v26 + 1;
    if ((v26 >> 8))
    {
      goto LABEL_65;
    }

    if (v26 == 14)
    {
      *&v45 = v44;
      *(&v45 + 6) = *(&v44 + 6);
      sub_26B5428B4();
      LOBYTE(v26) = 0;
    }
  }

  while (4 * v25 != v18 >> 14);
  v6 = v37;
  if (v26)
  {
    *&v45 = v44;
    *(&v45 + 6) = *(&v44 + 6);
    sub_26B5428B4();
    sub_26B4A4F84(v38, v6);
    goto LABEL_62;
  }

LABEL_57:

  sub_26B4A4F84(v38, v6);
LABEL_63:
  v34 = __src[0];
  sub_26B4A4EDC(*&__src[0], *(&__src[0] + 1));

  sub_26B4A4F30(v34, *(&v34 + 1));
  return v34;
}

unint64_t sub_26B4A19F4(uint64_t a1, uint64_t a2)
{
  sub_26B543034();
  sub_26B542AE4();
  v4 = sub_26B543054();

  return sub_26B4A25A8(a1, a2, v4);
}

uint64_t *sub_26B4A1A6C@<X0>(uint64_t *__return_ptr a1@<X8>, _BYTE *__src@<X0>, unint64_t a3@<X1>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a3)
  {
    if (a3 <= 14)
    {
      result = sub_26B4A4D1C(__src, &__src[a3]);
      v6 = v9 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      sub_26B542824();
      swift_allocObject();
      v8 = sub_26B5427D4();
      if (a3 >= 0x7FFFFFFF)
      {
        sub_26B542894();
        result = swift_allocObject();
        result[2] = 0;
        result[3] = a3;
        v6 = v8 | 0x8000000000000000;
      }

      else
      {
        result = (a3 << 32);
        v6 = v8 | 0x4000000000000000;
      }
    }
  }

  *a1 = result;
  a1[1] = v6;
  return result;
}

char *sub_26B4A1B34(void *(*a1)(uint64_t *__return_ptr, char *, char *), uint64_t a2)
{
  v4 = v2;
  v19[2] = *MEMORY[0x277D85DE8];
  v7 = *v2;
  v6 = v2[1];
  v8 = v6 >> 62;
  if ((v6 >> 62) <= 1)
  {
    if (!v8)
    {
      sub_26B4A4F30(v7, v6);
      v19[0] = v7;
      LOWORD(v19[1]) = v6;
      BYTE2(v19[1]) = BYTE2(v6);
      BYTE3(v19[1]) = BYTE3(v6);
      BYTE4(v19[1]) = BYTE4(v6);
      BYTE5(v19[1]) = BYTE5(v6);
      BYTE6(v19[1]) = BYTE6(v6);
      result = a1(&v17, v19, v19 + BYTE6(v6));
      if (!v3)
      {
        result = v17;
      }

      v10 = LODWORD(v19[1]) | ((WORD2(v19[1]) | (BYTE6(v19[1]) << 16)) << 32);
      *v4 = v19[0];
      v4[1] = v10;
      return result;
    }

    v12 = v6 & 0x3FFFFFFFFFFFFFFFLL;

    sub_26B4A4F30(v7, v6);
    *v4 = xmmword_26B5452A0;
    sub_26B4A4F30(0, 0xC000000000000000);
    v13 = v7 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v13 < v7)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (sub_26B5427E4() && __OFSUB__(v7, sub_26B542814()))
      {
LABEL_26:
        __break(1u);
      }

      sub_26B542824();
      swift_allocObject();
      v14 = sub_26B5427C4();

      v12 = v14;
    }

    if (v13 >= v7)
    {

      v15 = sub_26B4A1FD8(v7, v7 >> 32, a1);

      v11 = v12 | 0x4000000000000000;
      if (!v3)
      {
        *v4 = v7;
        v4[1] = v11;
        return v15;
      }

      *v4 = v7;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v8 == 2)
  {

    sub_26B4A4F30(v7, v6);
    v17 = v7;
    v18 = v6 & 0x3FFFFFFFFFFFFFFFLL;
    *v4 = xmmword_26B5452A0;
    sub_26B4A4F30(0, 0xC000000000000000);
    sub_26B542884();
    result = sub_26B4A1FD8(*(v17 + 2), *(v17 + 3), a1);
    v11 = v18 | 0x8000000000000000;
    if (!v3)
    {
      *v4 = v17;
      v4[1] = v11;
      return result;
    }

    *v4 = v17;
LABEL_21:
    v4[1] = v11;
    return result;
  }

  memset(v19, 0, 15);
  result = a1(&v17, v19, v19);
  if (!v3)
  {
    return v17;
  }

  return result;
}

_BYTE *sub_26B4A1ED8@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_26B4A4D1C(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_26B4A5040(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_26B4A50BC(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

void *sub_26B4A1F6C(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = (a1)(&v6, 0, 0, 0, a4);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

char *sub_26B4A1FD8(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_26B5427E4();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_26B542814();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_26B542804();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

void *sub_26B4A208C(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFCA8, &unk_26B5453B0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_26B4A2100(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26B4A2160(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_26B4A2120(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26B4A227C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_26B4A2140(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26B4A23A8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_26B4A2160(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFD18, &unk_26B548300);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_26B4A227C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFC40, &unk_26B5453C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 184);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[184 * v8])
    {
      memmove(v12, v13, 184 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_26B4A23A8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFCA0, &qword_26B5453A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_26B4A24B4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFCA8, &unk_26B5453B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
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

unint64_t sub_26B4A25A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_26B542FB4())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

char *sub_26B4A2660(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFCA0, &qword_26B5453A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_26B4A276C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFD10, &qword_26B5453A8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t sub_26B4A2870(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFD20, &unk_26B5453D0);
  v37 = v4;
  result = sub_26B542E54();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
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
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      sub_26B543034();
      sub_26B542AE4();
      result = sub_26B543054();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_26B4A2B30(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_26B542D04() + 1) & ~v5;
    do
    {
      sub_26B543034();

      sub_26B542AE4();
      v9 = sub_26B543054();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

void *sub_26B4A2CE0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFD20, &unk_26B5453D0);
  v2 = *v0;
  v3 = sub_26B542E44();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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

uint64_t sub_26B4A2E58(uint64_t isStackAllocationSafe, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = isStackAllocationSafe;
  v20[6] = *MEMORY[0x277D85DE8];
  v19 = isStackAllocationSafe;
  v6 = *(a2 + 32);
  v7 = v6 & 0x3F;
  v20[3] = &v19;
  v20[4] = a2;
  v8 = (1 << v6) + 63;
  v9 = v8 >> 6;
  v10 = 8 * (v8 >> 6);
  if (v7 <= 0xD || (v15 = 8 * (v8 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), v10 = v15, (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe, v10, a3, a4);
    v12 = &v18 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v12, v11);
    v13 = sub_26B4A4294(v12, v9, v5, a2);
  }

  else
  {
    v16 = v15;
    v17 = swift_slowAlloc();
    bzero(v17, v16);
    sub_26B4A522C(v17, v9, v20);
    v13 = v20[0];

    MEMORY[0x26D678F80](v17, -1, -1);
  }

  return v13;
}

uint64_t sub_26B4A2FF8(unint64_t a1, uint64_t a2)
{
  v2 = a2;
  v45[2] = *MEMORY[0x277D85DE8];
  if (*(a2 + 16))
  {
    v45[0] = a1;
    v3 = *(a1 + 16);
    v38 = a1;

    v42 = v3;
    if (v3)
    {
      v41 = v38 + 32;
      v4 = v2 + 56;
      v40 = sub_26B471350();
      v5 = 0;
      while (1)
      {
        v6 = *(v41 + v5++);
        v44 = v6;
        v7 = sub_26B5429B4();
        v8 = -1 << *(v2 + 32);
        v9 = v7 & ~v8;
        v10 = v9 >> 6;
        v11 = 1 << v9;
        if (((1 << v9) & *(v4 + 8 * (v9 >> 6))) != 0)
        {
          break;
        }

LABEL_4:
        if (v5 == v42)
        {
          goto LABEL_14;
        }
      }

      v12 = ~v8;
      sub_26B4713A4();
      while (1)
      {
        v43 = *(*(v2 + 48) + v9);
        v13 = sub_26B542A34();
        if (v13)
        {
          break;
        }

        v9 = (v9 + 1) & v12;
        v10 = v9 >> 6;
        v11 = 1 << v9;
        if (((1 << v9) & *(v4 + 8 * (v9 >> 6))) == 0)
        {
          goto LABEL_4;
        }
      }

      v45[1] = v5;
      v16 = *(v2 + 32);
      v17 = ((1 << v16) + 63) >> 6;
      v18 = 8 * v17;
      if ((v16 & 0x3Fu) > 0xD)
      {
        goto LABEL_31;
      }

      while (1)
      {
        v35 = v17;
        v36 = &v34;
        MEMORY[0x28223BE20](v13, v14, v18, v15);
        v20 = &v34 - ((v19 + 15) & 0x3FFFFFFFFFFFFFF0);
        memcpy(v20, (v2 + 56), v19);
        v21 = *(v2 + 16);
        v22 = *&v20[8 * v10] & ~v11;
        v37 = v20;
        *&v20[8 * v10] = v22;
        v18 = v21 - 1;
        v10 = v38;
        v39 = *(v38 + 16);
        if (v5 == v39)
        {
LABEL_13:
          v2 = sub_26B4A4078(v37, v35, v18, v2);
          goto LABEL_14;
        }

        v17 = &type metadata for VCCommand.Idiom;
        while (v5 < *(v10 + 16))
        {
          v42 = v18;
          v44 = *(v41 + v5);
          v24 = sub_26B5429B4();
          v25 = -1 << *(v2 + 32);
          v11 = v24 & ~v25;
          v26 = v11 >> 6;
          v9 = 1 << v11;
          if (((1 << v11) & *(v4 + 8 * (v11 >> 6))) != 0)
          {
            v27 = ~v25;
            while (1)
            {
              v43 = *(*(v2 + 48) + v11);
              if (sub_26B542A34())
              {
                break;
              }

              v11 = (v11 + 1) & v27;
              v26 = v11 >> 6;
              v9 = 1 << v11;
              if (((1 << v11) & *(v4 + 8 * (v11 >> 6))) == 0)
              {
                v10 = v38;
                goto LABEL_17;
              }
            }

            v18 = v42;
            v10 = v38;
            v28 = v37[v26];
            v37[v26] = v28 & ~v9;
            if ((v28 & v9) != 0)
            {
              if (__OFSUB__(v18--, 1))
              {
                goto LABEL_30;
              }

              if (!v18)
              {

                v2 = MEMORY[0x277D84FA0];
                goto LABEL_14;
              }
            }
          }

          else
          {
LABEL_17:
            v18 = v42;
          }

          if (++v5 == v39)
          {
            goto LABEL_13;
          }
        }

        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        v30 = v18;

        v31 = v30;
        if (!swift_stdlib_isStackAllocationSafe())
        {
          break;
        }

        v18 = v30;
      }

      v32 = swift_slowAlloc();
      memcpy(v32, (v2 + 56), v31);
      v33 = sub_26B4A3E8C(v32, v17, v2, v9, v45);

      MEMORY[0x26D678F80](v32, -1, -1);
      v2 = v33;
    }

LABEL_14:
  }

  else
  {

    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_26B4A33F8(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_26B4A4610(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = v2 + 32;
  v5[1] = v3;
  result = sub_26B4A3464(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_26B4A3464(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = sub_26B542F84();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_26B542C34();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_26B4A3628(v7, v8, a1, v4);
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
    return sub_26B4A355C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_26B4A355C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = (*a4 + a3);
    v8 = result - a3;
LABEL_5:
    v9 = *(v6 + v4);
    v10 = v8;
    v11 = v7;
    while (1)
    {
      v12 = *(v11 - 1);
      v15 = v9;
      v14 = v12;
      result = static VCCommand.Idiom.areInIncreasingOrder(_:_:)(&v15, &v14);
      if ((result & 1) == 0)
      {
LABEL_4:
        ++v4;
        ++v7;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      v9 = *v11;
      *v11 = *(v11 - 1);
      *--v11 = v9;
      if (__CFADD__(v10++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_26B4A3628(uint64_t result, uint64_t a2, void **a3, uint64_t a4)
{
  v6 = a3;
  v81 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_91:
    v5 = *v81;
    if (!*v81)
    {
      goto LABEL_129;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_123:
      result = sub_26B4A3E78(v9);
      v9 = result;
    }

    v89 = v9;
    v75 = *(v9 + 2);
    if (v75 >= 2)
    {
      while (*v6)
      {
        v76 = *&v9[16 * v75];
        v77 = *&v9[16 * v75 + 24];
        sub_26B4A3BC8(*v6 + v76, *v6 + *&v9[16 * v75 + 16], *v6 + v77, v5);
        if (v4)
        {
        }

        if (v77 < v76)
        {
          goto LABEL_116;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_26B4A3E78(v9);
        }

        if (v75 - 2 >= *(v9 + 2))
        {
          goto LABEL_117;
        }

        v78 = &v9[16 * v75];
        *v78 = v76;
        *(v78 + 1) = v77;
        v89 = v9;
        result = sub_26B4A3DEC(v75 - 1);
        v9 = v89;
        v75 = *(v89 + 2);
        if (v75 <= 1)
        {
        }
      }

      goto LABEL_127;
    }
  }

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  while (1)
  {
    v10 = v8++;
    if (v8 < v7)
    {
      v5 = *v6;
      v11 = *(*v6 + v10);
      v86 = *(*v6 + v8);
      v85 = v11;
      result = static VCCommand.Idiom.areInIncreasingOrder(_:_:)(&v86, &v85);
      v12 = result;
      v13 = v10;
      while (v7 - 2 != v13)
      {
        v14 = *(v5 + v13 + 1);
        v84 = *(v5 + v13 + 2);
        v83 = v14;
        result = static VCCommand.Idiom.areInIncreasingOrder(_:_:)(&v84, &v83);
        ++v13;
        if ((v12 & 1) != (result & 1))
        {
          v7 = v13 + 1;
          break;
        }
      }

      v6 = a3;
      if (v12)
      {
        if (v7 < v10)
        {
          goto LABEL_120;
        }

        if (v10 < v7)
        {
          v15 = v7 - 1;
          v16 = v10;
          do
          {
            if (v16 != v15)
            {
              v19 = *a3;
              if (!*a3)
              {
                goto LABEL_126;
              }

              v17 = v19[v16];
              v19[v16] = v19[v15];
              v19[v15] = v17;
            }
          }

          while (++v16 < v15--);
        }
      }

      v8 = v7;
    }

    v20 = v6[1];
    if (v8 < v20)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_119;
      }

      if (v8 - v10 < a4)
      {
        if (__OFADD__(v10, a4))
        {
          goto LABEL_121;
        }

        if (v10 + a4 >= v20)
        {
          v21 = v6[1];
        }

        else
        {
          v21 = (v10 + a4);
        }

        if (v21 < v10)
        {
LABEL_122:
          __break(1u);
          goto LABEL_123;
        }

        if (v8 != v21)
        {
          break;
        }
      }
    }

LABEL_39:
    if (v8 < v10)
    {
      goto LABEL_118;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_26B4A276C(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v30 = *(v9 + 2);
    v29 = *(v9 + 3);
    v31 = v30 + 1;
    if (v30 >= v29 >> 1)
    {
      result = sub_26B4A276C((v29 > 1), v30 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 2) = v31;
    v32 = &v9[16 * v30];
    *(v32 + 4) = v10;
    *(v32 + 5) = v8;
    v33 = *v81;
    if (!*v81)
    {
      goto LABEL_128;
    }

    if (v30)
    {
      v6 = a3;
      while (1)
      {
        v34 = v31 - 1;
        if (v31 >= 4)
        {
          break;
        }

        if (v31 == 3)
        {
          v35 = *(v9 + 4);
          v36 = *(v9 + 5);
          v45 = __OFSUB__(v36, v35);
          v37 = v36 - v35;
          v38 = v45;
LABEL_60:
          if (v38)
          {
            goto LABEL_107;
          }

          v51 = &v9[16 * v31];
          v53 = *v51;
          v52 = *(v51 + 1);
          v54 = __OFSUB__(v52, v53);
          v55 = v52 - v53;
          v56 = v54;
          if (v54)
          {
            goto LABEL_110;
          }

          v57 = &v9[16 * v34 + 32];
          v59 = *v57;
          v58 = *(v57 + 1);
          v45 = __OFSUB__(v58, v59);
          v60 = v58 - v59;
          if (v45)
          {
            goto LABEL_113;
          }

          if (__OFADD__(v55, v60))
          {
            goto LABEL_114;
          }

          if (v55 + v60 >= v37)
          {
            if (v37 < v60)
            {
              v34 = v31 - 2;
            }

            goto LABEL_81;
          }

          goto LABEL_74;
        }

        v61 = &v9[16 * v31];
        v63 = *v61;
        v62 = *(v61 + 1);
        v45 = __OFSUB__(v62, v63);
        v55 = v62 - v63;
        v56 = v45;
LABEL_74:
        if (v56)
        {
          goto LABEL_109;
        }

        v64 = &v9[16 * v34];
        v66 = *(v64 + 4);
        v65 = *(v64 + 5);
        v45 = __OFSUB__(v65, v66);
        v67 = v65 - v66;
        if (v45)
        {
          goto LABEL_112;
        }

        if (v67 < v55)
        {
          goto LABEL_4;
        }

LABEL_81:
        v5 = v34 - 1;
        if (v34 - 1 >= v31)
        {
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
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (!*a3)
        {
          goto LABEL_125;
        }

        v72 = *&v9[16 * v5 + 32];
        v73 = *&v9[16 * v34 + 40];
        sub_26B4A3BC8(*a3 + v72, *a3 + *&v9[16 * v34 + 32], *a3 + v73, v33);
        if (v4)
        {
        }

        if (v73 < v72)
        {
          goto LABEL_103;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_26B4A3E78(v9);
        }

        if (v5 >= *(v9 + 2))
        {
          goto LABEL_104;
        }

        v74 = &v9[16 * v5];
        *(v74 + 4) = v72;
        *(v74 + 5) = v73;
        v89 = v9;
        result = sub_26B4A3DEC(v34);
        v9 = v89;
        v31 = *(v89 + 2);
        if (v31 <= 1)
        {
          goto LABEL_4;
        }
      }

      v39 = &v9[16 * v31 + 32];
      v40 = *(v39 - 64);
      v41 = *(v39 - 56);
      v45 = __OFSUB__(v41, v40);
      v42 = v41 - v40;
      if (v45)
      {
        goto LABEL_105;
      }

      v44 = *(v39 - 48);
      v43 = *(v39 - 40);
      v45 = __OFSUB__(v43, v44);
      v37 = v43 - v44;
      v38 = v45;
      if (v45)
      {
        goto LABEL_106;
      }

      v46 = &v9[16 * v31];
      v48 = *v46;
      v47 = *(v46 + 1);
      v45 = __OFSUB__(v47, v48);
      v49 = v47 - v48;
      if (v45)
      {
        goto LABEL_108;
      }

      v45 = __OFADD__(v37, v49);
      v50 = v37 + v49;
      if (v45)
      {
        goto LABEL_111;
      }

      if (v50 >= v42)
      {
        v68 = &v9[16 * v34 + 32];
        v70 = *v68;
        v69 = *(v68 + 1);
        v45 = __OFSUB__(v69, v70);
        v71 = v69 - v70;
        if (v45)
        {
          goto LABEL_115;
        }

        if (v37 < v71)
        {
          v34 = v31 - 2;
        }

        goto LABEL_81;
      }

      goto LABEL_60;
    }

    v6 = a3;
LABEL_4:
    v7 = v6[1];
    if (v8 >= v7)
    {
      goto LABEL_91;
    }
  }

  v22 = *v6;
  v23 = v10;
  v24 = *v6 + v8;
  v79 = v23;
  v6 = (v23 - v8);
LABEL_32:
  v25 = v22[v8];
  v5 = v6;
  v26 = v24;
  while (1)
  {
    v27 = *(v26 - 1);
    v88 = v25;
    v87 = v27;
    result = static VCCommand.Idiom.areInIncreasingOrder(_:_:)(&v88, &v87);
    if ((result & 1) == 0)
    {
LABEL_31:
      ++v8;
      ++v24;
      v6 = (v6 - 1);
      if (v8 != v21)
      {
        goto LABEL_32;
      }

      v8 = v21;
      v10 = v79;
      goto LABEL_39;
    }

    if (!v22)
    {
      break;
    }

    v25 = *v26;
    *v26 = *(v26 - 1);
    *--v26 = v25;
    if (__CFADD__(v5++, 1))
    {
      goto LABEL_31;
    }
  }

  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
  return result;
}

uint64_t sub_26B4A3BC8(char *__dst, char *__src, unsigned __int8 *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = a3 - __src;
  if (__src - __dst >= a3 - __src)
  {
    if (a4 != __src || a4 >= a3)
    {
      memmove(a4, __src, a3 - __src);
    }

    v10 = &v4[v9];
    if (v9 >= 1 && v6 > v7)
    {
      do
      {
        v15 = v6 - 1;
        --v5;
        v16 = v10;
        while (1)
        {
          v17 = v5 + 1;
          v18 = *--v16;
          v19 = *v15;
          v24 = v18;
          v23 = v19;
          if (static VCCommand.Idiom.areInIncreasingOrder(_:_:)(&v24, &v23))
          {
            break;
          }

          if (v17 < v10 || v5 >= v10)
          {
            *v5 = *v16;
          }

          --v5;
          v10 = v16;
          if (v16 <= v4)
          {
            v10 = v16;
            goto LABEL_40;
          }
        }

        if (v17 < v6 || v5 >= v6)
        {
          *v5 = *v15;
        }

        if (v10 <= v4)
        {
          break;
        }

        --v6;
      }

      while (v15 > v7);
      v6 = v15;
      if (v15 == v4)
      {
        goto LABEL_41;
      }

      goto LABEL_42;
    }

LABEL_40:
    if (v6 != v4)
    {
LABEL_42:
      memmove(v6, v4, v10 - v4);
      return 1;
    }
  }

  else
  {
    if (a4 != __dst || a4 >= __src)
    {
      memmove(a4, __dst, v8);
    }

    v10 = &v4[v8];
    if (v8 >= 1 && v6 < v5)
    {
      while (1)
      {
        v11 = *v4;
        v22 = *v6;
        v21 = v11;
        if (static VCCommand.Idiom.areInIncreasingOrder(_:_:)(&v22, &v21))
        {
          v12 = v6 + 1;
          v13 = v6;
          if (v7 >= v6 && v7 < v12)
          {
            goto LABEL_16;
          }
        }

        else
        {
          v14 = v4 + 1;
          v13 = v4;
          v12 = v6;
          if (v7 < v4)
          {
            ++v4;
          }

          else
          {
            ++v4;
            if (v7 < v14)
            {
              goto LABEL_16;
            }
          }
        }

        *v7 = *v13;
LABEL_16:
        ++v7;
        if (v4 < v10)
        {
          v6 = v12;
          if (v12 < v5)
          {
            continue;
          }
        }

        break;
      }
    }

    v6 = v7;
    if (v7 != v4)
    {
      goto LABEL_42;
    }
  }

LABEL_41:
  if (v6 >= v10)
  {
    goto LABEL_42;
  }

  return 1;
}

uint64_t sub_26B4A3DEC(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_26B4A3E78(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_26B4A3E8C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v6 = *(a3 + 16);
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v18 = result;
  v19 = v6 - 1;
  v7 = a5[1];
  v8 = *(*a5 + 16);
  if (v7 == v8)
  {
LABEL_2:

    return sub_26B4A4078(v18, a2, v19, a3);
  }

  v9 = a3 + 56;
  v20 = a5;
  while (v7 < v8)
  {
    a5[1] = v7 + 1;
    sub_26B471350();
    result = sub_26B5429B4();
    v10 = -1 << *(a3 + 32);
    v11 = result & ~v10;
    v12 = v11 >> 6;
    v13 = 1 << v11;
    if (((1 << v11) & *(v9 + 8 * (v11 >> 6))) == 0)
    {
      goto LABEL_4;
    }

    sub_26B4713A4();
    result = sub_26B542A34();
    if ((result & 1) == 0)
    {
      v14 = ~v10;
      while (1)
      {
        v11 = (v11 + 1) & v14;
        v12 = v11 >> 6;
        v13 = 1 << v11;
        if (((1 << v11) & *(v9 + 8 * (v11 >> 6))) == 0)
        {
          break;
        }

        result = sub_26B542A34();
        if (result)
        {
          goto LABEL_12;
        }
      }

LABEL_4:
      a5 = v20;
      goto LABEL_5;
    }

LABEL_12:
    v15 = v18[v12];
    v18[v12] = v15 & ~v13;
    a5 = v20;
    if ((v15 & v13) != 0)
    {
      v16 = v19 - 1;
      if (__OFSUB__(v19, 1))
      {
        goto LABEL_17;
      }

      --v19;
      if (!v16)
      {
        return MEMORY[0x277D84FA0];
      }
    }

LABEL_5:
    v7 = a5[1];
    v8 = *(*a5 + 16);
    if (v7 == v8)
    {
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_26B4A4078(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFC80, &qword_26B5450E8);
  result = sub_26B542D44();
  v6 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v25 = *(*(a4 + 48) + (v13 | (v11 << 6)));
    sub_26B471350();
    result = sub_26B5429B4();
    v16 = -1 << *(v6 + 32);
    v17 = result & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v12 + 8 * (v17 >> 6))) == 0)
    {
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
        v23 = *(v12 + 8 * v18);
        if (v23 != -1)
        {
          v19 = __clz(__rbit64(~v23)) + (v18 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v19 = __clz(__rbit64((-1 << v17) & ~*(v12 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    *(*(v6 + 48) + v19) = v25;
    ++*(v6 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
LABEL_28:

      return v6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_28;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_26B4A4294(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = *(a3 + 16);
  if (v17)
  {
    v18 = a4 + 56;
    sub_26B471350();
    v15 = 0;
    v5 = 0;
    while (1)
    {
      v7 = sub_26B5429B4();
      v8 = -1 << *(a4 + 32);
      v9 = v7 & ~v8;
      v10 = v9 >> 6;
      v11 = 1 << v9;
      if (((1 << v9) & *(v18 + 8 * (v9 >> 6))) != 0)
      {
        sub_26B4713A4();
        result = sub_26B542A34();
        if (result)
        {
LABEL_3:
          v6 = a1[v10];
          a1[v10] = v6 | v11;
          if ((v6 & v11) == 0)
          {
            if (__OFADD__(v15, 1))
            {
              __break(1u);
              return result;
            }

            ++v15;
          }
        }

        else
        {
          v13 = ~v8;
          while (1)
          {
            v9 = (v9 + 1) & v13;
            v10 = v9 >> 6;
            v11 = 1 << v9;
            if (((1 << v9) & *(v18 + 8 * (v9 >> 6))) == 0)
            {
              break;
            }

            result = sub_26B542A34();
            if (result)
            {
              goto LABEL_3;
            }
          }
        }
      }

      if (++v5 == v17)
      {
        goto LABEL_14;
      }
    }
  }

  v15 = 0;
LABEL_14:

  return sub_26B4A4078(a1, a2, v15, a4);
}

unint64_t sub_26B4A4448(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_26B542B84();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x26D677C20](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_26B4A44C4@<X0>(uint64_t result@<X0>, void *a4@<X8>)
{
  if (result)
  {
    result = sub_26B542D84();
    if ((v5 & 1) == 0)
    {
      *a4 = 0;
      a4[1] = 0xE000000000000000;
      a4[2] = 15;
      a4[3] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_26B4A4514(void *result, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + (v14 | (v9 << 6)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_26B4A4624(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4)
{
  v5 = a1;
  v6 = a1 + 56;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 56);
  v44 = (v7 + 63) >> 6;
  v10 = 0;

  v49 = a4;
  while (v9)
  {
LABEL_11:
    v13 = (*(v5 + 48) + ((v10 << 10) | (16 * __clz(__rbit64(v9)))));
    v14 = *v13;
    v15 = v13[1];

    v16 = sub_26B542A74();
    v17 = sub_26B542A74();
    if (a3)
    {
      v18 = sub_26B542C14();
    }

    else
    {
      v18 = 0;
    }

    v9 &= v9 - 1;
    v19 = [a2 descriptionStringForCommandIdentifier:v16 descriptionType:v17 targetTypes:v18];

    if (v19)
    {
      v20 = sub_26B542A84();
      v48 = v21;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v23 = *v49;
      v25 = sub_26B4A19F4(v14, v15);
      v26 = v23[2];
      v27 = (v24 & 1) == 0;
      v28 = v26 + v27;
      if (__OFADD__(v26, v27))
      {
        goto LABEL_32;
      }

      v29 = v24;
      if (v23[3] >= v28)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v32 = v23;
          if (v24)
          {
            goto LABEL_4;
          }
        }

        else
        {
          sub_26B4A2CE0();
          v32 = v23;
          if (v29)
          {
            goto LABEL_4;
          }
        }
      }

      else
      {
        sub_26B4A2870(v28, isUniquelyReferenced_nonNull_native);
        v30 = sub_26B4A19F4(v14, v15);
        if ((v29 & 1) != (v31 & 1))
        {
          goto LABEL_34;
        }

        v25 = v30;
        v32 = v23;
        if (v29)
        {
LABEL_4:
          v11 = (v32[7] + 16 * v25);
          *v11 = v20;
          v11[1] = v48;

          goto LABEL_5;
        }
      }

      v32[(v25 >> 6) + 8] |= 1 << v25;
      v38 = (v32[6] + 16 * v25);
      *v38 = v14;
      v38[1] = v15;
      v39 = (v32[7] + 16 * v25);
      *v39 = v20;
      v39[1] = v48;
      v40 = v32[2];
      v41 = __OFADD__(v40, 1);
      v42 = v40 + 1;
      if (v41)
      {
        goto LABEL_33;
      }

      v32[2] = v42;
LABEL_5:
      *v49 = v32;
      v5 = v45;
    }

    else
    {
      v33 = sub_26B4A19F4(v14, v15);
      v35 = v34;

      if (v35)
      {
        v36 = swift_isUniquelyReferenced_nonNull_native();
        v37 = *v49;
        v50 = *v49;
        if (!v36)
        {
          sub_26B4A2CE0();
          v37 = v50;
        }

        sub_26B4A2B30(v33, v37);
        *v49 = v37;
      }
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= v44)
    {
    }

    v9 = *(v6 + 8 * v12);
    ++v10;
    if (v9)
    {
      v10 = v12;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  result = sub_26B542FE4();
  __break(1u);
  return result;
}

unint64_t sub_26B4A4978(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFD20, &unk_26B5453D0);
    v3 = sub_26B542E64();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_26B4A19F4(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_26B4A4A8C()
{
  result = qword_2803FFCF0;
  if (!qword_2803FFCF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803FFCE8, &unk_26B5454F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803FFCF0);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VCCommandDocumentation(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for VCCommandDocumentation(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_26B4A4C28(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26B4A4C70(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26B4A4CBC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_26B4A4D1C(_BYTE *__src, _BYTE *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_26B4A4DD4(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      sub_26B542824();
      swift_allocObject();
      sub_26B5427F4();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_26B542894();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

void *sub_26B4A4E74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_26B4A1F6C(sub_26B4A5140, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

uint64_t sub_26B4A4EDC(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_26B4A4F30(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_26B4A4F84(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_26B4A4F30(result, a2);
  }

  return result;
}

uint64_t sub_26B4A4F98(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_26B4A5040(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_26B542824();
  swift_allocObject();
  result = sub_26B5427D4();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_26B542894();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_26B4A50BC(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_26B542824();
  swift_allocObject();
  result = sub_26B5427D4();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

_OWORD *sub_26B4A5218(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_26B4A522C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_26B4A4294(a1, a2, **(v3 + 16), *(v3 + 24));
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

void sub_26B4A5260()
{
  v0 = sub_26B542934();
  MEMORY[0x28223BE20](v0 - 8, v1, v2, v3);
  v4 = sub_26B542A64();
  MEMORY[0x28223BE20](v4 - 8, v5, v6, v7);
  sub_26B542A54();
  sub_26B5428F4();
  v8 = sub_26B542AB4();
  v387 = v9;
  v388 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFC40, &unk_26B5453C0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_26B5453E0;
  v402[0] = 0;
  v11 = sub_26B470D98(&unk_287BFF390);
  v12 = sub_26B470D98(&unk_287BFF3B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFC48, &unk_26B5482F0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_26B5450C0;
  v14 = sub_26B4C6A78();
  v15 = *v14;
  v395 = v14;
  *(v13 + 32) = *v14;
  *(v13 + 40) = 1;
  *(v13 + 48) = v15;
  *(v13 + 56) = 3;
  *(v13 + 64) = v15;
  *(v13 + 72) = 8;
  *(v13 + 80) = 0x403A000000000000;
  *(v13 + 88) = 10;
  v401 = 4;
  v400 = 4;
  v16.value._object = 0x800000026B564A80;
  v16.value._countAndFlagsBits = 0xD000000000000018;
  Action.init(_:mac:)(v16, 0);
  v396 = v398;
  v397 = v399;
  v17 = sub_26B4CE5C8();
  v18 = sub_26B4D4400();
  v19 = sub_26B4D4408();
  v20 = sub_26B4D4414();
  v21 = sub_26B4D4414();
  *&v341 = v19;
  *(&v341 + 1) = v20;
  *&v304 = v12;
  *(&v304 + 1) = v13;
  *&v267 = v11;
  *(&v267 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000025, 0x800000026B564A50, &unk_287C019B0, &unk_287BFF308, &unk_287BFF340, 0, 0, v402, v10 + 32, v17 & 1, v18 & 1, v267, v304, v341, v21, &v401, &v400, 0, 0, &v396);
  v402[0] = 1;
  v389 = sub_26B470D98(&unk_287BFF498);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_26B5450C0;
  v23 = *v14;
  *(v22 + 32) = *v14;
  *(v22 + 40) = 1;
  *(v22 + 48) = v23;
  *(v22 + 56) = 3;
  *(v22 + 64) = v23;
  *(v22 + 72) = 8;
  *(v22 + 80) = 0x403A000000000000;
  *(v22 + 88) = 10;
  v401 = 4;
  v400 = 4;
  v24.value._object = 0x800000026B564AC0;
  v24.value._countAndFlagsBits = 0xD000000000000014;
  Action.init(_:mac:)(v24, 0);
  v396 = v398;
  v397 = v399;
  v25 = sub_26B4CE5C8();
  LOBYTE(v12) = sub_26B4D4400();
  v26 = sub_26B4D4408();
  v27 = sub_26B4D4414();
  v28 = sub_26B4D4414();
  *&v342 = v26;
  *(&v342 + 1) = v27;
  *(&v305 + 1) = v22;
  *&v305 = MEMORY[0x277D84FA0];
  *(&v268 + 1) = MEMORY[0x277D84FA0];
  *&v268 = v389;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000011, 0x800000026B564AA0, &unk_287C019E0, &unk_287BFF410, &unk_287BFF448, 0, 0, v402, v10 + 216, v25 & 1, v12 & 1, v268, v305, v342, v28, &v401, &v400, 0, 0, &v396);
  v402[0] = 0;
  v390 = sub_26B470D98(&unk_287BFF528);
  v29 = sub_26B470D98(&unk_287BFF550);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_26B5450C0;
  v31 = *v14;
  *(v30 + 32) = *v14;
  *(v30 + 40) = 1;
  *(v30 + 48) = v31;
  *(v30 + 56) = 3;
  *(v30 + 64) = v31;
  *(v30 + 72) = 8;
  *(v30 + 80) = 0x403A000000000000;
  *(v30 + 88) = 10;
  v32 = sub_26B470F10(&unk_287BFF578);
  v401 = 4;
  v400 = 4;
  v33.value._object = 0x800000026B564B00;
  v33.value._countAndFlagsBits = 0xD000000000000014;
  Action.init(_:mac:)(v33, 0);
  v396 = v398;
  v397 = v399;
  v34 = sub_26B4D43F4();
  LOBYTE(v27) = sub_26B4CE5C8();
  LOBYTE(v19) = sub_26B4D4400();
  *&v343 = sub_26B4D4408();
  *(&v343 + 1) = sub_26B4D4414();
  *&v306 = v29;
  *(&v306 + 1) = v30;
  *(&v269 + 1) = MEMORY[0x277D84FA0];
  *&v269 = v390;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000011, 0x800000026B564AE0, &unk_287C01A10, &unk_287BFF4F0, v34, 0, 0, v402, v10 + 400, v27 & 1, v19 & 1, v269, v306, v343, v32, &v401, &v400, 0, 0, &v396);
  v402[0] = 0;
  v35 = sub_26B470D98(&unk_287BFF650);
  v36 = sub_26B470D98(&unk_287BFF678);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_26B5450C0;
  v38 = *v14;
  *(v37 + 32) = *v14;
  *(v37 + 40) = 1;
  *(v37 + 48) = v38;
  *(v37 + 56) = 3;
  *(v37 + 64) = v38;
  *(v37 + 72) = 8;
  *(v37 + 80) = 0x403A000000000000;
  *(v37 + 88) = 10;
  v401 = 4;
  v400 = 4;
  v39.value._countAndFlagsBits = 0xD000000000000016;
  v39.value._object = 0x800000026B564B50;
  Action.init(_:mac:)(v39, 0);
  v396 = v398;
  v397 = v399;
  v40 = sub_26B4CE5C8();
  LOBYTE(v34) = sub_26B4D4400();
  v41 = sub_26B4D4408();
  v42 = sub_26B4D4414();
  v43 = sub_26B4D4414();
  *&v344 = v41;
  *(&v344 + 1) = v42;
  *&v307 = v36;
  *(&v307 + 1) = v37;
  *&v270 = v35;
  *(&v270 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000023, 0x800000026B564B20, &unk_287C01A40, &unk_287BFF5E0, &unk_287BFF618, 0, 0, v402, v10 + 584, v40 & 1, v34 & 1, v270, v307, v344, v43, &v401, &v400, 0, 0, &v396);
  v402[0] = 1;
  v379 = sub_26B470D98(&unk_287BFF758);
  v44 = sub_26B470D98(&unk_287BFF780);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_26B5450C0;
  v46 = *v14;
  *(v45 + 32) = *v14;
  *(v45 + 40) = 1;
  *(v45 + 48) = v46;
  *(v45 + 56) = 3;
  *(v45 + 64) = v46;
  *(v45 + 72) = 8;
  *(v45 + 80) = 0x403A000000000000;
  *(v45 + 88) = 10;
  v401 = 4;
  v400 = 4;
  v47.value._countAndFlagsBits = 0xD000000000000010;
  v47.value._object = 0x800000026B564B90;
  Action.init(_:mac:)(v47, 0);
  v396 = v398;
  v397 = v399;
  v48 = sub_26B4CE5C8();
  LOBYTE(v41) = sub_26B4D4400();
  v49 = sub_26B4D4408();
  v50 = sub_26B4D4414();
  v51 = sub_26B4D4414();
  *&v345 = v49;
  *(&v345 + 1) = v50;
  *&v308 = v44;
  *(&v308 + 1) = v45;
  *(&v271 + 1) = MEMORY[0x277D84FA0];
  *&v271 = v379;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000017, 0x800000026B564B70, &unk_287C01A70, &unk_287BFF6D0, &unk_287BFF708, 0, 0, v402, v10 + 768, v48 & 1, v41 & 1, v271, v308, v345, v51, &v401, &v400, 0, 0, &v396);
  v402[0] = 0;
  v52 = sub_26B470D98(&unk_287BFF810);
  v53 = sub_26B470D98(&unk_287BFF838);
  v54 = swift_allocObject();
  *(v54 + 16) = xmmword_26B5450C0;
  v55 = *v14;
  *(v54 + 32) = *v14;
  *(v54 + 40) = 1;
  *(v54 + 48) = v55;
  *(v54 + 56) = 3;
  *(v54 + 64) = v55;
  *(v54 + 72) = 8;
  *(v54 + 80) = 0x403A000000000000;
  *(v54 + 88) = 10;
  v56 = sub_26B470F10(&unk_287BFF860);
  v401 = 4;
  v400 = 4;
  v57.value._object = 0x800000026B564BD0;
  v57.value._countAndFlagsBits = 0xD000000000000010;
  Action.init(_:mac:)(v57, 0);
  v396 = v398;
  v397 = v399;
  v58 = sub_26B4D43F4();
  LOBYTE(v49) = sub_26B4CE5C8();
  LOBYTE(v50) = sub_26B4D4400();
  *&v346 = sub_26B4D4408();
  *(&v346 + 1) = sub_26B4D4414();
  *&v309 = v53;
  *(&v309 + 1) = v54;
  *&v272 = v52;
  *(&v272 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000017, 0x800000026B564BB0, &unk_287C01AA0, &unk_287BFF7D8, v58, 0, 0, v402, v10 + 952, v49 & 1, v50 & 1, v272, v309, v346, v56, &v401, &v400, 0, 0, &v396);
  v402[0] = 0;
  v394 = sub_26B470D98(&unk_287BFF940);
  v59 = sub_26B470D98(&unk_287BFF968);
  v60 = swift_allocObject();
  *(v60 + 16) = xmmword_26B5450C0;
  v61 = *v14;
  *(v60 + 32) = *v14;
  *(v60 + 40) = 1;
  *(v60 + 48) = v61;
  *(v60 + 56) = 3;
  *(v60 + 64) = v61;
  *(v60 + 72) = 8;
  *(v60 + 80) = 0x403A000000000000;
  *(v60 + 88) = 10;
  v62 = sub_26B470F10(&unk_287BFF990);
  v401 = 4;
  v400 = 4;
  v63.value._countAndFlagsBits = 0x64697247776F6873;
  v64.value._object = 0x800000026B564BF0;
  v64.value._countAndFlagsBits = 0xD000000000000010;
  v63.value._object = 0xE800000000000000;
  Action.init(_:mac:)(v64, v63);
  v396 = v398;
  v397 = v399;
  LOBYTE(v14) = sub_26B4CE5C8();
  LOBYTE(v54) = sub_26B4D4400();
  *&v347 = sub_26B4D4408();
  *(&v347 + 1) = sub_26B4D4414();
  *&v310 = v59;
  *(&v310 + 1) = v60;
  *(&v273 + 1) = MEMORY[0x277D84FA0];
  *&v273 = v394;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0x532E6D6574737953, 0xEF64697247776F68, &unk_287C01AD0, &unk_287BFF8B8, &unk_287BFF8F0, 0, 0, v402, v10 + 1136, v14 & 1, v54 & 1, v273, v310, v347, v62, &v401, &v400, 0, 0, &v396);
  v402[0] = 1;
  v65 = sub_26B470D98(&unk_287BFFA58);
  v66 = sub_26B470D98(&unk_287BFFA80);
  v67 = swift_allocObject();
  *(v67 + 16) = xmmword_26B545120;
  v68 = *v395;
  *(v67 + 32) = *v395;
  *(v67 + 40) = 3;
  *(v67 + 48) = v68;
  *(v67 + 56) = 8;
  v401 = 4;
  v400 = 4;
  v69.value._countAndFlagsBits = 0xD00000000000001BLL;
  v69.value._object = 0x800000026B564C40;
  Action.init(_:mac:)(v69, 0);
  v396 = v398;
  v397 = v399;
  LOBYTE(v62) = sub_26B4CE5C8();
  LOBYTE(v14) = sub_26B4D4400();
  v70 = sub_26B4D4408();
  v71 = sub_26B4D4414();
  v72 = sub_26B4D4414();
  *&v348 = v70;
  *(&v348 + 1) = v71;
  *&v311 = v66;
  *(&v311 + 1) = v67;
  *&v274 = v65;
  *(&v274 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000022, 0x800000026B564C10, &unk_287C01B00, &unk_287BFF9E8, &unk_287BFFA20, 0, 0, v402, v10 + 1320, v62 & 1, v14 & 1, v274, v311, v348, v72, &v401, &v400, 0, 0, &v396);
  v402[0] = 1;
  v73 = sub_26B470D98(&unk_287BFFB58);
  v74 = sub_26B470D98(&unk_287BFFB80);
  v75 = swift_allocObject();
  *(v75 + 16) = xmmword_26B545120;
  v76 = *v395;
  *(v75 + 32) = *v395;
  *(v75 + 40) = 3;
  *(v75 + 48) = v76;
  *(v75 + 56) = 8;
  v401 = 4;
  v400 = 4;
  v77.value._countAndFlagsBits = 0xD00000000000001BLL;
  v77.value._object = 0x800000026B564C40;
  Action.init(_:mac:)(v77, 0);
  v396 = v398;
  v397 = v399;
  LOBYTE(v62) = sub_26B4CE5C8();
  LOBYTE(v14) = sub_26B4D4400();
  v78 = sub_26B4D4408();
  v79 = sub_26B4D4414();
  v80 = sub_26B4D4414();
  *&v349 = v78;
  *(&v349 + 1) = v79;
  *&v312 = v74;
  *(&v312 + 1) = v75;
  *&v275 = v73;
  *(&v275 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000029, 0x800000026B564C60, &unk_287C01B30, &unk_287BFFAE8, &unk_287BFFB20, 0, 0, v402, v10 + 1504, v62 & 1, v14 & 1, v275, v312, v349, v80, &v401, &v400, 0, 0, &v396);
  v402[0] = 1;
  v81 = sub_26B470D98(&unk_287BFFC48);
  v82 = sub_26B470D98(&unk_287BFFC70);
  v83 = swift_allocObject();
  *(v83 + 16) = xmmword_26B545120;
  v84 = *v395;
  *(v83 + 32) = *v395;
  *(v83 + 40) = 3;
  *(v83 + 48) = v84;
  *(v83 + 56) = 8;
  v401 = 4;
  v400 = 4;
  v85.value._object = 0x800000026B564CB0;
  v85.value._countAndFlagsBits = 0xD000000000000018;
  Action.init(_:mac:)(v85, 0);
  v396 = v398;
  v397 = v399;
  LOBYTE(v62) = sub_26B4CE5C8();
  LOBYTE(v14) = sub_26B4D4400();
  v86 = sub_26B4D4408();
  v87 = sub_26B4D4414();
  v88 = sub_26B4D4414();
  *&v350 = v86;
  *(&v350 + 1) = v87;
  *&v313 = v82;
  *(&v313 + 1) = v83;
  *&v276 = v81;
  *(&v276 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000001FLL, 0x800000026B564C90, &unk_287C01B60, &unk_287BFFBD8, &unk_287BFFC10, 0, 0, v402, v10 + 1688, v62 & 1, v14 & 1, v276, v313, v350, v88, &v401, &v400, 0, 0, &v396);
  v402[0] = 0;
  v89 = sub_26B470D98(&unk_287BFFD50);
  v90 = sub_26B470D98(&unk_287BFFD78);
  v91 = swift_allocObject();
  *(v91 + 16) = xmmword_26B5450C0;
  v92 = *v395;
  *(v91 + 32) = *v395;
  *(v91 + 40) = 1;
  *(v91 + 48) = v92;
  *(v91 + 56) = 3;
  *(v91 + 64) = v92;
  *(v91 + 72) = 8;
  *(v91 + 80) = 0x403A000000000000;
  *(v91 + 88) = 10;
  v93 = sub_26B470F10(&unk_287BFFDA0);
  v401 = 4;
  v400 = 4;
  v94.value._countAndFlagsBits = 0xD000000000000015;
  v94.value._object = 0x800000026B564D00;
  Action.init(_:mac:)(v94, 0);
  v396 = v398;
  v397 = v399;
  LOBYTE(v14) = sub_26B4CE5C8();
  LOBYTE(v87) = sub_26B4D4400();
  *&v351 = sub_26B4D4408();
  *(&v351 + 1) = sub_26B4D4414();
  *&v314 = v90;
  *(&v314 + 1) = v91;
  *&v277 = v89;
  *(&v277 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000022, 0x800000026B564CD0, &unk_287C01B90, &unk_287BFFCC8, &unk_287BFFD00, 0, 0, v402, v10 + 1872, v14 & 1, v87 & 1, v277, v314, v351, v93, &v401, &v400, 0, 0, &v396);
  v402[0] = 1;
  v95 = sub_26B470D98(&unk_287BFFE78);
  v96 = sub_26B470D98(&unk_287BFFEA0);
  v97 = swift_allocObject();
  *(v97 + 16) = xmmword_26B545120;
  v98 = *v395;
  *(v97 + 32) = *v395;
  *(v97 + 40) = 3;
  *(v97 + 48) = v98;
  *(v97 + 56) = 8;
  v401 = 4;
  v400 = 4;
  v99.value._countAndFlagsBits = 0xD000000000000028;
  v99.value._object = 0x800000026B564D60;
  Action.init(_:mac:)(v99, 0);
  v396 = v398;
  v397 = v399;
  LOBYTE(v93) = sub_26B4CE5C8();
  LOBYTE(v14) = sub_26B4D4400();
  v100 = sub_26B4D4408();
  v101 = sub_26B4D4414();
  v102 = sub_26B4D4414();
  *&v352 = v100;
  *(&v352 + 1) = v101;
  *&v315 = v96;
  *(&v315 + 1) = v97;
  *&v278 = v95;
  *(&v278 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000035, 0x800000026B564D20, &unk_287C01BC0, &unk_287BFFE08, &unk_287BFFE40, 0, 0, v402, v10 + 2056, v93 & 1, v14 & 1, v278, v315, v352, v102, &v401, &v400, 0, 0, &v396);
  v402[0] = 1;
  v103 = sub_26B470D98(&unk_287BFFF98);
  v104 = sub_26B470D98(&unk_287BFFFC0);
  v105 = swift_allocObject();
  *(v105 + 16) = xmmword_26B545120;
  v106 = *v395;
  *(v105 + 32) = *v395;
  *(v105 + 40) = 3;
  *(v105 + 48) = v106;
  *(v105 + 56) = 8;
  v401 = 4;
  v400 = 4;
  v107.value._countAndFlagsBits = 0xD000000000000028;
  v107.value._object = 0x800000026B564D60;
  Action.init(_:mac:)(v107, 0);
  v396 = v398;
  v397 = v399;
  LOBYTE(v93) = sub_26B4CE5C8();
  LOBYTE(v14) = sub_26B4D4400();
  v108 = sub_26B4D4408();
  v109 = sub_26B4D4414();
  v110 = sub_26B4D4414();
  *&v353 = v108;
  *(&v353 + 1) = v109;
  *&v316 = v104;
  *(&v316 + 1) = v105;
  *&v279 = v103;
  *(&v279 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000003CLL, 0x800000026B564D90, &unk_287C01BF0, &unk_287BFFF28, &unk_287BFFF60, 0, 0, v402, v10 + 2240, v93 & 1, v14 & 1, v279, v316, v353, v110, &v401, &v400, 0, 0, &v396);
  v402[0] = 1;
  v111 = sub_26B470D98(&unk_287C00098);
  v112 = sub_26B470D98(&unk_287C000C0);
  v113 = swift_allocObject();
  *(v113 + 16) = xmmword_26B545120;
  v114 = *v395;
  *(v113 + 32) = *v395;
  *(v113 + 40) = 3;
  *(v113 + 48) = v114;
  *(v113 + 56) = 8;
  v401 = 4;
  v400 = 4;
  v115.value._countAndFlagsBits = 0xD000000000000025;
  v115.value._object = 0x800000026B564E10;
  Action.init(_:mac:)(v115, 0);
  v396 = v398;
  v397 = v399;
  LOBYTE(v93) = sub_26B4CE5C8();
  LOBYTE(v14) = sub_26B4D4400();
  v116 = sub_26B4D4408();
  v117 = sub_26B4D4414();
  v118 = sub_26B4D4414();
  *&v354 = v116;
  *(&v354 + 1) = v117;
  *&v317 = v112;
  *(&v317 + 1) = v113;
  *&v280 = v111;
  *(&v280 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000032, 0x800000026B564DD0, &unk_287C01C20, &unk_287C00028, &unk_287C00060, 0, 0, v402, v10 + 2424, v93 & 1, v14 & 1, v280, v317, v354, v118, &v401, &v400, 0, 0, &v396);
  v402[0] = 1;
  v119 = sub_26B470D98(&unk_287C00150);
  v120 = sub_26B470D98(&unk_287C00178);
  v121 = swift_allocObject();
  *(v121 + 16) = xmmword_26B5450C0;
  v122 = *v395;
  *(v121 + 32) = *v395;
  *(v121 + 40) = 1;
  *(v121 + 48) = v122;
  *(v121 + 56) = 3;
  *(v121 + 64) = v122;
  *(v121 + 72) = 8;
  *(v121 + 80) = 0x403A000000000000;
  *(v121 + 88) = 10;
  v123 = sub_26B470F10(&unk_287C001A0);
  v401 = 4;
  v400 = 4;
  v124.value._countAndFlagsBits = 0x6469724765646968;
  v125.value._object = 0x800000026B564E40;
  v125.value._countAndFlagsBits = 0xD000000000000010;
  v124.value._object = 0xE800000000000000;
  Action.init(_:mac:)(v125, v124);
  v396 = v398;
  v397 = v399;
  v126 = sub_26B4D43F4();
  LOBYTE(v14) = sub_26B4CE5C8();
  LOBYTE(v117) = sub_26B4D4400();
  *&v355 = sub_26B4D4408();
  *(&v355 + 1) = sub_26B4D4414();
  *&v318 = v120;
  *(&v318 + 1) = v121;
  *&v281 = v119;
  *(&v281 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0x482E6D6574737953, 0xEF64697247656469, &unk_287C01C50, &unk_287C00118, v126, 0, 0, v402, v10 + 2608, v14 & 1, v117 & 1, v281, v318, v355, v123, &v401, &v400, 0, 0, &v396);
  v402[0] = 0;
  v378 = sub_26B470D98(&unk_287C00288);
  v127 = sub_26B470D98(&unk_287C002B0);
  v128 = swift_allocObject();
  *(v128 + 16) = xmmword_26B5450D0;
  v129 = *v395;
  *(v128 + 32) = *v395;
  *(v128 + 40) = 3;
  *(v128 + 48) = v129;
  *(v128 + 56) = 8;
  *(v128 + 64) = 0x403A000000000000;
  *(v128 + 72) = 10;
  v130 = sub_26B470F10(&unk_287C002D8);
  v401 = 4;
  v400 = 4;
  v131.value._object = 0x800000026B564E80;
  v131.value._countAndFlagsBits = 0xD000000000000010;
  Action.init(_:mac:)(v131, 0);
  v396 = v398;
  v397 = v399;
  LOBYTE(v14) = sub_26B4CE5C8();
  LOBYTE(v126) = sub_26B4D4400();
  v132 = sub_26B4D4408();
  *(&v356 + 1) = sub_26B4D4414();
  *(&v319 + 1) = v128;
  *&v356 = v132;
  *&v319 = v127;
  *(&v282 + 1) = MEMORY[0x277D84FA0];
  *&v282 = v378;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000018, 0x800000026B564E60, &unk_287C01C80, &unk_287C00218, &unk_287C00250, 0, 0, v402, v10 + 2792, v14 & 1, v126 & 1, v282, v319, v356, v130, &v401, &v400, 0, 0, &v396);
  v402[0] = 0;
  v380 = sub_26B470D98(&unk_287C003B8);
  v133 = sub_26B470D98(&unk_287C003E0);
  v134 = swift_allocObject();
  *(v134 + 16) = xmmword_26B5450C0;
  v135 = *v395;
  *(v134 + 32) = *v395;
  *(v134 + 40) = 1;
  *(v134 + 48) = v135;
  *(v134 + 56) = 3;
  *(v134 + 64) = v135;
  *(v134 + 72) = 8;
  *(v134 + 80) = 0x403A000000000000;
  *(v134 + 88) = 10;
  v136 = sub_26B470F10(&unk_287C00408);
  v401 = 4;
  v400 = 4;
  v137.value._object = 0x800000026B564EC0;
  v137.value._countAndFlagsBits = 0xD000000000000011;
  Action.init(_:mac:)(v137, 0);
  v396 = v398;
  v397 = v399;
  LOBYTE(v14) = sub_26B4CE5C8();
  LOBYTE(v126) = sub_26B4D4400();
  *&v357 = sub_26B4D4408();
  *(&v357 + 1) = sub_26B4D4414();
  *&v320 = v133;
  *(&v320 + 1) = v134;
  *(&v283 + 1) = MEMORY[0x277D84FA0];
  *&v283 = v380;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000019, 0x800000026B564EA0, &unk_287C01CB0, &unk_287C00330, &unk_287C00368, 0, 0, v402, v10 + 2976, v14 & 1, v126 & 1, v283, v320, v357, v136, &v401, &v400, 0, 0, &v396);
  v402[0] = 0;
  v381 = sub_26B470D98(&unk_287C004E8);
  v138 = sub_26B470D98(&unk_287C00510);
  v139 = swift_allocObject();
  *(v139 + 16) = xmmword_26B5450C0;
  v140 = *v395;
  *(v139 + 32) = *v395;
  *(v139 + 40) = 1;
  *(v139 + 48) = v140;
  *(v139 + 56) = 3;
  *(v139 + 64) = v140;
  *(v139 + 72) = 8;
  *(v139 + 80) = 0x403A000000000000;
  *(v139 + 88) = 10;
  v141 = sub_26B470F10(&unk_287C00538);
  v401 = 4;
  v400 = 4;
  v142.value._object = 0x800000026B564EC0;
  v142.value._countAndFlagsBits = 0xD000000000000011;
  Action.init(_:mac:)(v142, 0);
  v396 = v398;
  v397 = v399;
  LOBYTE(v14) = sub_26B4CE5C8();
  LOBYTE(v126) = sub_26B4D4400();
  *&v358 = sub_26B4D4408();
  *(&v358 + 1) = sub_26B4D4414();
  *&v321 = v138;
  *(&v321 + 1) = v139;
  *(&v284 + 1) = MEMORY[0x277D84FA0];
  *&v284 = v381;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000026, 0x800000026B564EE0, &unk_287C01CE0, &unk_287C00460, &unk_287C00498, 0, 0, v402, v10 + 3160, v14 & 1, v126 & 1, v284, v321, v358, v141, &v401, &v400, 0, 0, &v396);
  v402[0] = 1;
  v391 = sub_26B470D98(&unk_287C00600);
  v143 = sub_26B470D98(&unk_287C00628);
  v144 = swift_allocObject();
  *(v144 + 16) = xmmword_26B5450D0;
  v145 = *v395;
  *(v144 + 32) = *v395;
  *(v144 + 40) = 3;
  *(v144 + 48) = v145;
  *(v144 + 56) = 8;
  *(v144 + 64) = 0x403A000000000000;
  *(v144 + 72) = 10;
  v146 = sub_26B470F10(&unk_287C00650);
  v401 = 4;
  v400 = 4;
  v147.value._object = 0x800000026B564F30;
  v147.value._countAndFlagsBits = 0xD000000000000015;
  Action.init(_:mac:)(v147, 0);
  v396 = v398;
  v397 = v399;
  LOBYTE(v81) = sub_26B4CE5C8();
  LOBYTE(v14) = sub_26B4D4400();
  *&v359 = sub_26B4D4408();
  *(&v359 + 1) = sub_26B4D4414();
  *&v322 = v143;
  *(&v322 + 1) = v144;
  *(&v285 + 1) = MEMORY[0x277D84FA0];
  *&v285 = v391;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000001DLL, 0x800000026B564F10, &unk_287C01D10, &unk_287C00590, &unk_287C005C8, 0, 0, v402, v10 + 3344, v81 & 1, v14 & 1, v285, v322, v359, v146, &v401, &v400, 0, 0, &v396);
  v402[0] = 0;
  v392 = sub_26B470D98(&unk_287C006F0);
  v385 = sub_26B470D98(&unk_287C00718);
  v148 = sub_26B470D98(&unk_287C00740);
  v149 = swift_allocObject();
  *(v149 + 16) = xmmword_26B5450D0;
  v150 = *v395;
  *(v149 + 32) = *v395;
  *(v149 + 40) = 1;
  *(v149 + 48) = v150;
  *(v149 + 56) = 3;
  *(v149 + 64) = v150;
  *(v149 + 72) = 8;
  v401 = 4;
  v400 = 4;
  v151.value._object = 0x800000026B564F70;
  v151.value._countAndFlagsBits = 0xD000000000000018;
  Action.init(_:mac:)(v151, 0);
  v396 = v398;
  v397 = v399;
  v152 = sub_26B4D43F4();
  LOBYTE(v146) = sub_26B4CE5C8();
  LOBYTE(v14) = sub_26B4D4400();
  v153 = sub_26B4D4408();
  v154 = sub_26B4D4414();
  v155 = sub_26B4D4414();
  *&v360 = v153;
  *(&v360 + 1) = v154;
  *&v323 = v148;
  *(&v323 + 1) = v149;
  *(&v286 + 1) = v385;
  *&v286 = v392;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000019, 0x800000026B564F50, &unk_287C01D40, &unk_287C006B8, v152, 0, 0, v402, v10 + 3528, v146 & 1, v14 & 1, v286, v323, v360, v155, &v401, &v400, 0, 0, &v396);
  v402[0] = 0;
  v393 = sub_26B470D98(&unk_287C00818);
  v386 = sub_26B470D98(&unk_287C00840);
  v156 = sub_26B470D98(&unk_287C00868);
  v157 = swift_allocObject();
  *(v157 + 16) = xmmword_26B5450D0;
  v158 = *v395;
  *(v157 + 32) = *v395;
  *(v157 + 40) = 1;
  *(v157 + 48) = v158;
  *(v157 + 56) = 3;
  *(v157 + 64) = v158;
  *(v157 + 72) = 8;
  v159 = sub_26B470F10(&unk_287C00890);
  v401 = 4;
  v400 = 4;
  v160.value._object = 0x800000026B564F70;
  v160.value._countAndFlagsBits = 0xD000000000000018;
  Action.init(_:mac:)(v160, 0);
  v396 = v398;
  v397 = v399;
  LOBYTE(v14) = sub_26B4CE5C8();
  LOBYTE(v152) = sub_26B4D4400();
  *&v361 = sub_26B4D4408();
  *(&v361 + 1) = sub_26B4D4414();
  *&v324 = v156;
  *(&v324 + 1) = v157;
  *(&v287 + 1) = v386;
  *&v287 = v393;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000021, 0x800000026B564F90, &unk_287C01D70, &unk_287C007A8, &unk_287C007E0, 0, 0, v402, v10 + 3712, v14 & 1, v152 & 1, v287, v324, v361, v159, &v401, &v400, 0, 0, &v396);
  v402[0] = 1;
  v161 = sub_26B470D98(&unk_287C00930);
  v162 = sub_26B470D98(&unk_287C00958);
  v163 = sub_26B470F10(&unk_287C009D0);
  v401 = 4;
  v400 = 4;
  v164.value._object = 0x800000026B564FE0;
  v164.value._countAndFlagsBits = 0xD000000000000016;
  Action.init(_:mac:)(v164, 0);
  v396 = v398;
  v397 = v399;
  v165 = sub_26B4D43F4();
  LOBYTE(v14) = sub_26B4CE5C8();
  LOBYTE(v157) = sub_26B4D4400();
  *&v362 = sub_26B4D4408();
  *(&v362 + 1) = sub_26B4D4414();
  *&v325 = v162;
  *(&v325 + 1) = &unk_287C00980;
  *&v288 = v161;
  *(&v288 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000001DLL, 0x800000026B564FC0, &unk_287C01DA0, &unk_287C008F8, v165, 0, 0, v402, v10 + 3896, v14 & 1, v157 & 1, v288, v325, v362, v163, &v401, &v400, 0, 0, &v396);
  v402[0] = 1;
  v166 = sub_26B470D98(&unk_287C00A70);
  v167 = sub_26B470D98(&unk_287C00A98);
  v168 = sub_26B470F10(&unk_287C00B10);
  v401 = 4;
  v400 = 4;
  v169.value._object = 0x800000026B565020;
  v169.value._countAndFlagsBits = 0xD000000000000016;
  Action.init(_:mac:)(v169, 0);
  v396 = v398;
  v397 = v399;
  v170 = sub_26B4D43F4();
  LOBYTE(v14) = sub_26B4CE5C8();
  LOBYTE(v157) = sub_26B4D4400();
  *&v363 = sub_26B4D4408();
  *(&v363 + 1) = sub_26B4D4414();
  *&v326 = v167;
  *(&v326 + 1) = &unk_287C00AC0;
  *&v289 = v166;
  *(&v289 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000001DLL, 0x800000026B565000, &unk_287C01DD0, &unk_287C00A38, v170, 0, 0, v402, v10 + 4080, v14 & 1, v157 & 1, v289, v326, v363, v168, &v401, &v400, 0, 0, &v396);
  v402[0] = 1;
  v171 = sub_26B470D98(&unk_287C00BD8);
  v172 = sub_26B470D98(&unk_287C00C00);
  v173 = swift_allocObject();
  *(v173 + 16) = xmmword_26B545100;
  *(v173 + 32) = *v395;
  *(v173 + 40) = 1;
  v174 = sub_26B470F10(&unk_287C00C28);
  v401 = 4;
  v400 = 4;
  v175.value._object = 0x800000026B565060;
  v175.value._countAndFlagsBits = 0xD000000000000014;
  Action.init(_:mac:)(v175, 0);
  v396 = v398;
  v397 = v399;
  LOBYTE(v14) = sub_26B4CE5C8();
  LOBYTE(v157) = sub_26B4D4400();
  *&v364 = sub_26B4D4408();
  *(&v364 + 1) = sub_26B4D4414();
  *&v327 = v172;
  *(&v327 + 1) = v173;
  *&v290 = v171;
  *(&v290 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000001BLL, 0x800000026B565040, &unk_287C01E00, &unk_287C00B68, &unk_287C00BA0, 0, 0, v402, v10 + 4264, v14 & 1, v157 & 1, v290, v327, v364, v174, &v401, &v400, 0, 0, &v396);
  v402[0] = 0;
  v176 = sub_26B470D98(&unk_287C00D20);
  v177 = sub_26B470D98(&unk_287C00D48);
  v178 = swift_allocObject();
  *(v178 + 16) = xmmword_26B545100;
  *(v178 + 32) = *v395;
  *(v178 + 40) = 1;
  v179 = sub_26B470F10(&unk_287C00D70);
  v401 = 4;
  v400 = 4;
  v180.value._countAndFlagsBits = 0xD00000000000002FLL;
  v180.value._object = 0x800000026B5650A0;
  Action.init(_:mac:)(v180, 0);
  v396 = v398;
  v397 = v399;
  LOBYTE(v14) = sub_26B4CE5C8();
  LOBYTE(v157) = sub_26B4D4400();
  *&v365 = sub_26B4D4408();
  *(&v365 + 1) = sub_26B4D4414();
  *&v328 = v177;
  *(&v328 + 1) = v178;
  *&v291 = v176;
  *(&v291 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000019, 0x800000026B565080, &unk_287C01E30, &unk_287C00CB0, &unk_287C00CE8, 0, 0, v402, v10 + 4448, v14 & 1, v157 & 1, v291, v328, v365, v179, &v401, &v400, 0, 0, &v396);
  v402[0] = 0;
  v181 = sub_26B470D98(&unk_287C00E48);
  v182 = sub_26B470D98(&unk_287C00E70);
  v183 = swift_allocObject();
  *(v183 + 16) = xmmword_26B545100;
  *(v183 + 32) = *v395;
  *(v183 + 40) = 1;
  v184 = sub_26B470F10(&unk_287C00E98);
  v401 = 4;
  v400 = 4;
  v185.value._countAndFlagsBits = 0xD00000000000002FLL;
  v185.value._object = 0x800000026B5650F0;
  Action.init(_:mac:)(v185, 0);
  v396 = v398;
  v397 = v399;
  LOBYTE(v14) = sub_26B4CE5C8();
  LOBYTE(v157) = sub_26B4D4400();
  *&v366 = sub_26B4D4408();
  *(&v366 + 1) = sub_26B4D4414();
  *&v329 = v182;
  *(&v329 + 1) = v183;
  *&v292 = v181;
  *(&v292 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000019, 0x800000026B5650D0, &unk_287C01E60, &unk_287C00DD8, &unk_287C00E10, 0, 0, v402, v10 + 4632, v14 & 1, v157 & 1, v292, v329, v366, v184, &v401, &v400, 0, 0, &v396);
  v402[0] = 0;
  v186 = sub_26B470D98(&unk_287C00F70);
  v187 = sub_26B470D98(&unk_287C00F98);
  v188 = swift_allocObject();
  *(v188 + 16) = xmmword_26B545100;
  *(v188 + 32) = *v395;
  *(v188 + 40) = 1;
  v189 = sub_26B470F10(&unk_287C00FC0);
  v401 = 4;
  v400 = 4;
  v190.value._countAndFlagsBits = 0xD00000000000002FLL;
  v190.value._object = 0x800000026B565140;
  Action.init(_:mac:)(v190, 0);
  v396 = v398;
  v397 = v399;
  LOBYTE(v14) = sub_26B4CE5C8();
  LOBYTE(v157) = sub_26B4D4400();
  *&v367 = sub_26B4D4408();
  *(&v367 + 1) = sub_26B4D4414();
  *&v330 = v187;
  *(&v330 + 1) = v188;
  *&v293 = v186;
  *(&v293 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000019, 0x800000026B565120, &unk_287C01E90, &unk_287C00F00, &unk_287C00F38, 0, 0, v402, v10 + 4816, v14 & 1, v157 & 1, v293, v330, v367, v189, &v401, &v400, 0, 0, &v396);
  v402[0] = 1;
  v191 = sub_26B470D98(&unk_287C01098);
  v192 = sub_26B470D98(&unk_287C010C0);
  v193 = swift_allocObject();
  *(v193 + 16) = xmmword_26B545100;
  *(v193 + 32) = *v395;
  *(v193 + 40) = 1;
  v194 = sub_26B470F10(&unk_287C010E8);
  v401 = 4;
  v400 = 4;
  v195.value._object = 0x800000026B565190;
  v195.value._countAndFlagsBits = 0xD000000000000018;
  Action.init(_:mac:)(v195, 0);
  v396 = v398;
  v397 = v399;
  LOBYTE(v14) = sub_26B4CE5C8();
  LOBYTE(v157) = sub_26B4D4400();
  *&v368 = sub_26B4D4408();
  *(&v368 + 1) = sub_26B4D4414();
  *&v331 = v192;
  *(&v331 + 1) = v193;
  *&v294 = v191;
  *(&v294 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000018, 0x800000026B565170, &unk_287C01EC0, &unk_287C01028, &unk_287C01060, 0, 0, v402, v10 + 5000, v14 & 1, v157 & 1, v294, v331, v368, v194, &v401, &v400, 0, 0, &v396);
  v402[0] = 1;
  v196 = sub_26B470D98(&unk_287C011C8);
  v197 = sub_26B470D98(&unk_287C011F0);
  v198 = swift_allocObject();
  *(v198 + 16) = xmmword_26B545100;
  *(v198 + 32) = *v395;
  *(v198 + 40) = 1;
  v401 = 4;
  v400 = 4;
  v199.value._countAndFlagsBits = 0xD00000000000002ELL;
  v199.value._object = 0x800000026B5651E0;
  Action.init(_:mac:)(v199, 0);
  v396 = v398;
  v397 = v399;
  v200 = sub_26B4D43F4();
  LOBYTE(v194) = sub_26B4CE5C8();
  LOBYTE(v14) = sub_26B4D4400();
  v201 = sub_26B4D4408();
  v202 = sub_26B4D4414();
  v203 = sub_26B4D4414();
  *&v369 = v201;
  *(&v369 + 1) = v202;
  *&v332 = v197;
  *(&v332 + 1) = v198;
  *&v295 = v196;
  *(&v295 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000002DLL, 0x800000026B5651B0, &unk_287C01EF0, &unk_287C01190, v200, 0, 0, v402, v10 + 5184, v194 & 1, v14 & 1, v295, v332, v369, v203, &v401, &v400, 0, 0, &v396);
  v402[0] = 1;
  v204 = sub_26B470D98(&unk_287C012D0);
  v205 = sub_26B470D98(&unk_287C012F8);
  v206 = swift_allocObject();
  *(v206 + 16) = xmmword_26B545100;
  *(v206 + 32) = *v395;
  *(v206 + 40) = 1;
  v401 = 4;
  v400 = 4;
  v207.value._countAndFlagsBits = 0xD00000000000002FLL;
  v207.value._object = 0x800000026B565240;
  Action.init(_:mac:)(v207, 0);
  v396 = v398;
  v397 = v399;
  v208 = sub_26B4D43F4();
  LOBYTE(v194) = sub_26B4CE5C8();
  LOBYTE(v14) = sub_26B4D4400();
  v209 = sub_26B4D4408();
  v210 = sub_26B4D4414();
  v211 = sub_26B4D4414();
  *&v370 = v209;
  *(&v370 + 1) = v210;
  *&v333 = v205;
  *(&v333 + 1) = v206;
  *&v296 = v204;
  *(&v296 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000002ELL, 0x800000026B565210, &unk_287C01F20, &unk_287C01298, v208, 0, 0, v402, v10 + 5368, v194 & 1, v14 & 1, v296, v333, v370, v211, &v401, &v400, 0, 0, &v396);
  v402[0] = 1;
  v382 = sub_26B470D98(&unk_287C013D8);
  v212 = sub_26B470D98(&unk_287C01400);
  v213 = swift_allocObject();
  *(v213 + 16) = xmmword_26B545100;
  *(v213 + 32) = *v395;
  *(v213 + 40) = 1;
  v401 = 4;
  v400 = 4;
  v214.value._countAndFlagsBits = 0xD00000000000002CLL;
  v214.value._object = 0x800000026B5652A0;
  Action.init(_:mac:)(v214, 0);
  v396 = v398;
  v397 = v399;
  v215 = sub_26B4D43F4();
  LOBYTE(v194) = sub_26B4CE5C8();
  LOBYTE(v14) = sub_26B4D4400();
  v216 = sub_26B4D4408();
  v217 = sub_26B4D4414();
  v218 = sub_26B4D4414();
  *&v371 = v216;
  *(&v371 + 1) = v217;
  *&v334 = v212;
  *(&v334 + 1) = v213;
  *(&v297 + 1) = MEMORY[0x277D84FA0];
  *&v297 = v382;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000002BLL, 0x800000026B565270, &unk_287C01F50, &unk_287C013A0, v215, 0, 0, v402, v10 + 5552, v194 & 1, v14 & 1, v297, v334, v371, v218, &v401, &v400, 0, 0, &v396);
  v402[0] = 1;
  v383 = sub_26B470D98(&unk_287C014E0);
  v219 = sub_26B470D98(&unk_287C01508);
  v220 = swift_allocObject();
  *(v220 + 16) = xmmword_26B545100;
  *(v220 + 32) = *v395;
  *(v220 + 40) = 1;
  v401 = 4;
  v400 = 4;
  v221.value._countAndFlagsBits = 0xD00000000000002ELL;
  v221.value._object = 0x800000026B565300;
  Action.init(_:mac:)(v221, 0);
  v396 = v398;
  v397 = v399;
  v222 = sub_26B4D43F4();
  LOBYTE(v194) = sub_26B4CE5C8();
  LOBYTE(v14) = sub_26B4D4400();
  v223 = sub_26B4D4408();
  v224 = sub_26B4D4414();
  v225 = sub_26B4D4414();
  *&v372 = v223;
  *(&v372 + 1) = v224;
  *&v335 = v219;
  *(&v335 + 1) = v220;
  *(&v298 + 1) = MEMORY[0x277D84FA0];
  *&v298 = v383;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000002DLL, 0x800000026B5652D0, &unk_287C01F80, &unk_287C014A8, v222, 0, 0, v402, v10 + 5736, v194 & 1, v14 & 1, v298, v335, v372, v225, &v401, &v400, 0, 0, &v396);
  v402[0] = 0;
  v384 = sub_26B470D98(&unk_287C015D8);
  v226 = sub_26B470D98(&unk_287C01600);
  v227 = swift_allocObject();
  *(v227 + 16) = xmmword_26B545100;
  *(v227 + 32) = *v395;
  *(v227 + 40) = 1;
  v401 = 4;
  v400 = 4;
  v228.value._countAndFlagsBits = 0xD00000000000002FLL;
  v228.value._object = 0x800000026B5650A0;
  Action.init(_:mac:)(v228, 0);
  v396 = v398;
  v397 = v399;
  v229 = sub_26B4D43F4();
  LOBYTE(v194) = sub_26B4CE5C8();
  LOBYTE(v14) = sub_26B4D4400();
  v230 = sub_26B4D4408();
  v231 = sub_26B4D4414();
  v232 = sub_26B4D4414();
  *&v373 = v230;
  *(&v373 + 1) = v231;
  *&v336 = v226;
  *(&v336 + 1) = v227;
  *(&v299 + 1) = MEMORY[0x277D84FA0];
  *&v299 = v384;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000018, 0x800000026B565330, &unk_287C01FB0, &unk_287C015A0, v229, 0, 0, v402, v10 + 5920, v194 & 1, v14 & 1, v299, v336, v373, v232, &v401, &v400, 0, 0, &v396);
  v402[0] = 0;
  v233 = sub_26B470D98(&unk_287C016B0);
  v234 = sub_26B470D98(&unk_287C016D8);
  v235 = swift_allocObject();
  *(v235 + 16) = xmmword_26B545100;
  *(v235 + 32) = *v395;
  *(v235 + 40) = 1;
  v401 = 4;
  v400 = 4;
  v236.value._countAndFlagsBits = 0xD00000000000002FLL;
  v236.value._object = 0x800000026B5650F0;
  Action.init(_:mac:)(v236, 0);
  v396 = v398;
  v397 = v399;
  v237 = sub_26B4D43F4();
  LOBYTE(v194) = sub_26B4CE5C8();
  LOBYTE(v14) = sub_26B4D4400();
  v238 = sub_26B4D4408();
  v239 = sub_26B4D4414();
  v240 = sub_26B4D4414();
  *&v374 = v238;
  *(&v374 + 1) = v239;
  *&v337 = v234;
  *(&v337 + 1) = v235;
  *&v300 = v233;
  *(&v300 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000018, 0x800000026B565350, &unk_287C01FE0, &unk_287C01678, v237, 0, 0, v402, v10 + 6104, v194 & 1, v14 & 1, v300, v337, v374, v240, &v401, &v400, 0, 0, &v396);
  v402[0] = 0;
  v241 = sub_26B470D98(&unk_287C01788);
  v242 = sub_26B470D98(&unk_287C017B0);
  v243 = swift_allocObject();
  *(v243 + 16) = xmmword_26B545100;
  *(v243 + 32) = *v395;
  *(v243 + 40) = 1;
  v401 = 4;
  v400 = 4;
  v244.value._countAndFlagsBits = 0xD00000000000002FLL;
  v244.value._object = 0x800000026B565140;
  Action.init(_:mac:)(v244, 0);
  v396 = v398;
  v397 = v399;
  v245 = sub_26B4D43F4();
  LOBYTE(v194) = sub_26B4CE5C8();
  LOBYTE(v14) = sub_26B4D4400();
  v246 = sub_26B4D4408();
  v247 = sub_26B4D4414();
  v248 = sub_26B4D4414();
  *&v375 = v246;
  *(&v375 + 1) = v247;
  *&v338 = v242;
  *(&v338 + 1) = v243;
  *&v301 = v241;
  *(&v301 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000018, 0x800000026B565370, &unk_287C02010, &unk_287C01750, v245, 0, 0, v402, v10 + 6288, v194 & 1, v14 & 1, v301, v338, v375, v248, &v401, &v400, 0, 0, &v396);
  v402[0] = 0;
  v249 = sub_26B470D98(&unk_287C01898);
  v250 = sub_26B470D98(&unk_287C018C0);
  v251 = swift_allocObject();
  *(v251 + 16) = xmmword_26B545100;
  *(v251 + 32) = *v395;
  *(v251 + 40) = 1;
  v401 = 4;
  v400 = 4;
  v252.value._countAndFlagsBits = 0xD000000000000030;
  v252.value._object = 0x800000026B559670;
  Action.init(_:mac:)(v252, 0);
  v396 = v398;
  v397 = v399;
  LOBYTE(v194) = sub_26B4CE5C8();
  LOBYTE(v14) = sub_26B4D4400();
  v253 = sub_26B4D4408();
  v254 = sub_26B4D4414();
  v255 = sub_26B4D4414();
  *&v376 = v253;
  *(&v376 + 1) = v254;
  *&v339 = v250;
  *(&v339 + 1) = v251;
  *&v302 = v249;
  *(&v302 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000019, 0x800000026B565390, &unk_287C02040, &unk_287C01828, &unk_287C01860, 0, 0, v402, v10 + 6472, v194 & 1, v14 & 1, v302, v339, v376, v255, &v401, &v400, 0, 0, &v396);
  v402[0] = 0;
  v256 = sub_26B470D98(&unk_287C01960);
  v257 = sub_26B470D98(&unk_287C01988);
  v258 = swift_allocObject();
  *(v258 + 16) = xmmword_26B545100;
  *(v258 + 32) = *v395;
  *(v258 + 40) = 1;
  v401 = 4;
  v400 = 4;
  v259.value._countAndFlagsBits = 0x48657361656C6572;
  v259.value._object = 0xEB00000000646C6FLL;
  Action.init(_:mac:)(v259, 0);
  v396 = v398;
  v397 = v399;
  v260 = sub_26B4D43F4();
  LOBYTE(v14) = sub_26B4CE5C8();
  LOBYTE(v253) = sub_26B4D4400();
  v261 = sub_26B4D4408();
  v262 = sub_26B4D4414();
  v263 = sub_26B4D4414();
  *&v377 = v261;
  *(&v377 + 1) = v262;
  *&v340 = v257;
  *(&v340 + 1) = v258;
  *&v303 = v256;
  *(&v303 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000014, 0x800000026B5653B0, &unk_287C02070, &unk_287C01928, v260, 0, 0, v402, v10 + 6656, v14 & 1, v253 & 1, v303, v340, v377, v263, &v401, &v400, 0, 0, &v396);
  LOBYTE(v256) = sub_26B4CE5C8();
  v264 = sub_26B4D4400() & 1;
  v265._countAndFlagsBits = 0x7379616C7265764FLL;
  v265._object = 0xE800000000000000;
  v266._object = v387;
  v266._countAndFlagsBits = v388;
  VCCommandCollection.init(identifier:displayName:showInSettings:showCodingGuideInSettings:commands:)(&stru_280406DF8, v265, v266, v256 & 1, v264, v10);
}

SpeechRecognitionCommandServices::VCCommandCollection *sub_26B4A886C()
{
  if (qword_280400490 != -1)
  {
    swift_once();
  }

  return &stru_280406DF8;
}

void *sub_26B4BA66C()
{
  if (qword_280400498 != -1)
  {
    swift_once();
  }

  return &unk_280406E28;
}

void sub_26B4BA6BC()
{
  v0 = sub_26B542934();
  MEMORY[0x28223BE20](v0 - 8, v1, v2, v3);
  v4 = sub_26B542A64();
  MEMORY[0x28223BE20](v4 - 8, v5, v6, v7);
  sub_26B542A54();
  sub_26B5428F4();
  v8 = sub_26B542AB4();
  v328 = v9;
  v329 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFC40, &unk_26B5453C0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_26B545400;
  v338[0] = 0;
  v11 = sub_26B470D98(&unk_287C02160);
  v12 = sub_26B470D98(&unk_287C02188);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFC48, &unk_26B5482F0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_26B5450D0;
  v330 = sub_26B4C6A78();
  v14 = *v330;
  *(v13 + 32) = *v330;
  *(v13 + 40) = 3;
  *(v13 + 48) = v14;
  *(v13 + 56) = 8;
  *(v13 + 64) = 0x403A000000000000;
  *(v13 + 72) = 10;
  v15 = sub_26B470F10(&unk_287C021B0);
  v337 = 4;
  v336 = 4;
  v16.value._countAndFlagsBits = 0x3A6574656C6564;
  v16.value._object = 0xE700000000000000;
  Action.init(_:mac:)(v16, 0);
  v332 = v334;
  v333 = v335;
  v17 = sub_26B4CE5C8();
  v18 = sub_26B4D4400();
  *&v291 = sub_26B4D4408();
  *(&v291 + 1) = sub_26B4D4414();
  *&v262 = v12;
  *(&v262 + 1) = v13;
  v331._rawValue = v10;
  *&v233 = v11;
  *(&v233 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000014, 0x800000026B56A550, &unk_287C03B60, &unk_287C020F0, &unk_287C02128, 0, 0, v338, v10 + 32, v17 & 1, v18 & 1, v233, v262, v291, v15, &v337, &v336, 0, 0, &v332);
  v338[0] = 0;
  v19 = sub_26B470D98(&unk_287C02298);
  v20 = sub_26B470D98(&unk_287C022C0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_26B545100;
  *(v21 + 32) = *v330;
  *(v21 + 40) = 1;
  v337 = 4;
  v336 = 4;
  v22.value._countAndFlagsBits = 0x65446D6574737973;
  v22.value._object = 0xEC0000006574656CLL;
  Action.init(_:mac:)(v22, 0);
  v332 = v334;
  v333 = v335;
  v23 = sub_26B4CE5C8();
  LOBYTE(v13) = sub_26B4D4400();
  v24 = sub_26B4D4408();
  v25 = sub_26B4D4414();
  v26 = sub_26B4D4414();
  *&v292 = v24;
  *(&v292 + 1) = v25;
  *&v263 = v20;
  *(&v263 + 1) = v21;
  v27 = v10 + 216;
  v28 = MEMORY[0x277D84FA0];
  *&v234 = v19;
  *(&v234 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000013, 0x800000026B56A570, &unk_287C03B90, &unk_287C02228, &unk_287C02260, 0, 0, v338, v27, v23 & 1, v13 & 1, v234, v263, v292, v26, &v337, &v336, 0, 0, &v332);
  v338[0] = 1;
  v29 = sub_26B470D98(&unk_287C02388);
  v30 = sub_26B470D98(&unk_287C023B0);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_26B5450C0;
  v32 = *v330;
  *(v31 + 32) = *v330;
  *(v31 + 40) = 1;
  *(v31 + 48) = v32;
  *(v31 + 56) = 3;
  *(v31 + 64) = v32;
  *(v31 + 72) = 8;
  *(v31 + 80) = 0x403A000000000000;
  *(v31 + 88) = 10;
  v33 = sub_26B470F10(&unk_287C023D8);
  v337 = 4;
  v336 = 4;
  v34.value._countAndFlagsBits = 0x6C416574656C6564;
  v34.value._object = 0xEA00000000003A6CLL;
  v35.value._countAndFlagsBits = 0x6C416574656C6564;
  v35.value._object = 0xE90000000000006CLL;
  Action.init(_:mac:)(v34, v35);
  v332 = v334;
  v333 = v335;
  LOBYTE(v13) = sub_26B4CE5C8();
  LOBYTE(v24) = sub_26B4D4400();
  *&v293 = sub_26B4D4408();
  *(&v293 + 1) = sub_26B4D4414();
  *&v264 = v30;
  *(&v264 + 1) = v31;
  *&v235 = v29;
  *(&v235 + 1) = v28;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0x6C65442E74786554, 0xEE006C6C41657465, &unk_287C03BC0, &unk_287C02318, &unk_287C02350, 0, 0, v338, v331._rawValue + 400, v13 & 1, v24 & 1, v235, v264, v293, v33, &v337, &v336, 0, 0, &v332);
  v338[0] = 0;
  v36 = sub_26B470D98(&unk_287C024A0);
  v37 = sub_26B470D98(&unk_287C024C8);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_26B5450C0;
  v39 = *v330;
  *(v38 + 32) = *v330;
  *(v38 + 40) = 1;
  *(v38 + 48) = v39;
  *(v38 + 56) = 3;
  *(v38 + 64) = v39;
  *(v38 + 72) = 8;
  *(v38 + 80) = 0x403A000000000000;
  *(v38 + 88) = 10;
  v40 = sub_26B470F10(&unk_287C024F0);
  v337 = 4;
  v336 = 4;
  v41.value._countAndFlagsBits = 0x68507463656C6573;
  v41.value._object = 0xED00003A65736172;
  Action.init(_:mac:)(v41, 0);
  v332 = v334;
  v333 = v335;
  LOBYTE(v13) = sub_26B4CE5C8();
  LOBYTE(v24) = sub_26B4D4400();
  *&v294 = sub_26B4D4408();
  *(&v294 + 1) = sub_26B4D4414();
  *&v265 = v37;
  *(&v265 + 1) = v38;
  *&v236 = v36;
  *(&v236 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000011, 0x800000026B56A590, &unk_287C03BF0, &unk_287C02430, &unk_287C02468, 0, 0, v338, v331._rawValue + 584, v13 & 1, v24 & 1, v236, v265, v294, v40, &v337, &v336, 0, 0, &v332);
  v338[0] = 1;
  v42 = sub_26B470D98(&unk_287C025B8);
  v43 = sub_26B470D98(&unk_287C025E0);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_26B5450C0;
  v45 = *v330;
  *(v44 + 32) = *v330;
  *(v44 + 40) = 1;
  *(v44 + 48) = v45;
  *(v44 + 56) = 3;
  *(v44 + 64) = v45;
  *(v44 + 72) = 8;
  *(v44 + 80) = 0x403A000000000000;
  *(v44 + 88) = 10;
  v46 = sub_26B470F10(&unk_287C02608);
  v337 = 4;
  v336 = 4;
  v47.value._countAndFlagsBits = 0xD000000000000017;
  v47.value._object = 0x800000026B56A5D0;
  Action.init(_:mac:)(v47, 0);
  v332 = v334;
  v333 = v335;
  LOBYTE(v13) = sub_26B4CE5C8();
  LOBYTE(v24) = sub_26B4D4400();
  *&v295 = sub_26B4D4408();
  *(&v295 + 1) = sub_26B4D4414();
  *&v266 = v43;
  *(&v266 + 1) = v44;
  *&v237 = v42;
  *(&v237 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000001BLL, 0x800000026B56A5B0, &unk_287C03C20, &unk_287C02548, &unk_287C02580, 0, 0, v338, v331._rawValue + 768, v13 & 1, v24 & 1, v237, v266, v295, v46, &v337, &v336, 0, 0, &v332);
  v338[0] = 0;
  v327 = sub_26B470D98(&unk_287C026A8);
  v48 = sub_26B470D98(&unk_287C026D0);
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_26B5450C0;
  v50 = *v330;
  *(v49 + 32) = *v330;
  *(v49 + 40) = 1;
  *(v49 + 48) = v50;
  *(v49 + 56) = 3;
  *(v49 + 64) = v50;
  *(v49 + 72) = 8;
  *(v49 + 80) = 0x403A000000000000;
  *(v49 + 88) = 10;
  v51 = sub_26B470F10(&unk_287C026F8);
  v337 = 4;
  v336 = 4;
  v52.value._countAndFlagsBits = 0xD000000000000018;
  v52.value._object = 0x800000026B56A610;
  v53.value._countAndFlagsBits = 0xD00000000000002BLL;
  v53.value._object = 0x800000026B56A630;
  Action.init(_:mac:)(v52, v53);
  v332 = v334;
  v333 = v335;
  v54 = sub_26B4D43F4();
  LOBYTE(v24) = sub_26B4CE5C8();
  LOBYTE(v25) = sub_26B4D4400();
  *&v296 = sub_26B4D4408();
  *(&v296 + 1) = sub_26B4D4414();
  *&v267 = v48;
  *(&v267 + 1) = v49;
  *(&v238 + 1) = MEMORY[0x277D84FA0];
  *&v238 = v327;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000001CLL, 0x800000026B56A5F0, &unk_287C03C50, &unk_287C02670, v54, 0, 0, v338, v331._rawValue + 952, v24 & 1, v25 & 1, v238, v267, v296, v51, &v337, &v336, 0, 0, &v332);
  v338[0] = 0;
  v325 = sub_26B470D98(&unk_287C02798);
  v55 = sub_26B470D98(&unk_287C027C0);
  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_26B5450C0;
  v57 = *v330;
  *(v56 + 32) = *v330;
  *(v56 + 40) = 1;
  *(v56 + 48) = v57;
  *(v56 + 56) = 3;
  *(v56 + 64) = v57;
  *(v56 + 72) = 8;
  *(v56 + 80) = 0x403A000000000000;
  *(v56 + 88) = 10;
  v58 = sub_26B470F10(&unk_287C027E8);
  v337 = 4;
  v336 = 4;
  v59.value._countAndFlagsBits = 0xD000000000000014;
  v59.value._object = 0x800000026B56A680;
  v60.value._countAndFlagsBits = 0xD000000000000027;
  v60.value._object = 0x800000026B56A6A0;
  Action.init(_:mac:)(v59, v60);
  v332 = v334;
  v333 = v335;
  v61 = sub_26B4D43F4();
  LOBYTE(v54) = sub_26B4CE5C8();
  LOBYTE(v24) = sub_26B4D4400();
  *&v297 = sub_26B4D4408();
  *(&v297 + 1) = sub_26B4D4414();
  *&v268 = v55;
  *(&v268 + 1) = v56;
  *(&v239 + 1) = MEMORY[0x277D84FA0];
  *&v239 = v325;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000018, 0x800000026B56A660, &unk_287C03C80, &unk_287C02760, v61, 0, 0, v338, v331._rawValue + 1136, v54 & 1, v24 & 1, v239, v268, v297, v58, &v337, &v336, 0, 0, &v332);
  v338[0] = 1;
  v326 = sub_26B470D98(&unk_287C02878);
  v62 = sub_26B470D98(&unk_287C028A0);
  v63 = swift_allocObject();
  *(v63 + 16) = xmmword_26B5450C0;
  v64 = *v330;
  *(v63 + 32) = *v330;
  *(v63 + 40) = 1;
  *(v63 + 48) = v64;
  *(v63 + 56) = 3;
  *(v63 + 64) = v64;
  *(v63 + 72) = 8;
  *(v63 + 80) = 0x403A000000000000;
  *(v63 + 88) = 10;
  v65 = sub_26B470F10(&unk_287C028C8);
  v337 = 4;
  v336 = 4;
  v66.value._countAndFlagsBits = 0xD000000000000012;
  v66.value._object = 0x800000026B56A6F0;
  Action.init(_:mac:)(v66, 0);
  v332 = v334;
  v333 = v335;
  v67 = sub_26B4D43F4();
  LOBYTE(v24) = sub_26B4CE5C8();
  LOBYTE(v25) = sub_26B4D4400();
  *&v298 = sub_26B4D4408();
  *(&v298 + 1) = sub_26B4D4414();
  *&v269 = v62;
  *(&v269 + 1) = v63;
  *(&v240 + 1) = MEMORY[0x277D84FA0];
  *&v240 = v326;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000016, 0x800000026B56A6D0, &unk_287C03CB0, &unk_287C02840, v67, 0, 0, v338, v331._rawValue + 1320, v24 & 1, v25 & 1, v240, v269, v298, v65, &v337, &v336, 0, 0, &v332);
  v338[0] = 0;
  v68 = sub_26B470D98(&unk_287C02958);
  v69 = sub_26B470D98(&unk_287C02980);
  v70 = swift_allocObject();
  *(v70 + 16) = xmmword_26B5450C0;
  v71 = *v330;
  *(v70 + 32) = *v330;
  *(v70 + 40) = 1;
  *(v70 + 48) = v71;
  *(v70 + 56) = 3;
  *(v70 + 64) = v71;
  *(v70 + 72) = 8;
  *(v70 + 80) = 0x403A000000000000;
  *(v70 + 88) = 10;
  v72 = sub_26B470F10(&unk_287C029A8);
  v337 = 4;
  v336 = 4;
  v73.value._object = 0x800000026B56A730;
  v74.value._countAndFlagsBits = 0xD000000000000026;
  v74.value._object = 0x800000026B56A750;
  v73.value._countAndFlagsBits = 0xD000000000000013;
  Action.init(_:mac:)(v73, v74);
  v332 = v334;
  v333 = v335;
  v75 = sub_26B4D43F4();
  LOBYTE(v54) = sub_26B4CE5C8();
  LOBYTE(v24) = sub_26B4D4400();
  *&v299 = sub_26B4D4408();
  *(&v299 + 1) = sub_26B4D4414();
  *&v270 = v69;
  *(&v270 + 1) = v70;
  *&v241 = v68;
  *(&v241 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000017, 0x800000026B56A710, &unk_287C03CE0, &unk_287C02920, v75, 0, 0, v338, v331._rawValue + 1504, v54 & 1, v24 & 1, v241, v270, v299, v72, &v337, &v336, 0, 0, &v332);
  v338[0] = 0;
  v323 = sub_26B470D98(&unk_287C02A38);
  v76 = sub_26B470D98(&unk_287C02A60);
  v77 = swift_allocObject();
  *(v77 + 16) = xmmword_26B5450C0;
  v78 = *v330;
  *(v77 + 32) = *v330;
  *(v77 + 40) = 1;
  *(v77 + 48) = v78;
  *(v77 + 56) = 3;
  *(v77 + 64) = v78;
  *(v77 + 72) = 8;
  *(v77 + 80) = 0x403A000000000000;
  *(v77 + 88) = 10;
  v79 = sub_26B470F10(&unk_287C02A88);
  v337 = 4;
  v336 = 4;
  v80.value._countAndFlagsBits = 0x654E6574656C6564;
  v80.value._object = 0xEF3A64726F577478;
  v81.value._countAndFlagsBits = 0xD000000000000022;
  v81.value._object = 0x800000026B56A7A0;
  Action.init(_:mac:)(v80, v81);
  v332 = v334;
  v333 = v335;
  v82 = sub_26B4D43F4();
  LOBYTE(v54) = sub_26B4CE5C8();
  LOBYTE(v69) = sub_26B4D4400();
  *&v300 = sub_26B4D4408();
  *(&v300 + 1) = sub_26B4D4414();
  *&v271 = v76;
  *(&v271 + 1) = v77;
  *(&v242 + 1) = MEMORY[0x277D84FA0];
  *&v242 = v323;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000013, 0x800000026B56A780, &unk_287C03D10, &unk_287C02A00, v82, 0, 0, v338, v331._rawValue + 1688, v54 & 1, v69 & 1, v242, v271, v300, v79, &v337, &v336, 0, 0, &v332);
  v338[0] = 1;
  v324 = sub_26B470D98(&unk_287C02B18);
  v83 = sub_26B470D98(&unk_287C02B40);
  v84 = swift_allocObject();
  *(v84 + 16) = xmmword_26B5450C0;
  v85 = *v330;
  *(v84 + 32) = *v330;
  *(v84 + 40) = 1;
  *(v84 + 48) = v85;
  *(v84 + 56) = 3;
  *(v84 + 64) = v85;
  *(v84 + 72) = 8;
  *(v84 + 80) = 0x403A000000000000;
  *(v84 + 88) = 10;
  v86 = sub_26B470F10(&unk_287C02B68);
  v337 = 4;
  v336 = 4;
  v87.value._countAndFlagsBits = 0xD000000000000016;
  v87.value._object = 0x800000026B56A7F0;
  Action.init(_:mac:)(v87, 0);
  v332 = v334;
  v333 = v335;
  v88 = sub_26B4D43F4();
  LOBYTE(v68) = sub_26B4CE5C8();
  LOBYTE(v69) = sub_26B4D4400();
  *&v301 = sub_26B4D4408();
  *(&v301 + 1) = sub_26B4D4414();
  *&v272 = v83;
  *(&v272 + 1) = v84;
  *(&v243 + 1) = MEMORY[0x277D84FA0];
  *&v243 = v324;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000001ALL, 0x800000026B56A7D0, &unk_287C03D40, &unk_287C02AE0, v88, 0, 0, v338, v331._rawValue + 1872, v68 & 1, v69 & 1, v243, v272, v301, v86, &v337, &v336, 0, 0, &v332);
  v338[0] = 1;
  v89 = sub_26B470D98(&unk_287C02BF8);
  v90 = sub_26B470D98(&unk_287C02C20);
  v91 = swift_allocObject();
  *(v91 + 16) = xmmword_26B5450C0;
  v92 = *v330;
  *(v91 + 32) = *v330;
  *(v91 + 40) = 1;
  *(v91 + 48) = v92;
  *(v91 + 56) = 3;
  *(v91 + 64) = v92;
  *(v91 + 72) = 8;
  *(v91 + 80) = 0x403A000000000000;
  *(v91 + 88) = 10;
  v93 = sub_26B470F10(&unk_287C02C48);
  v337 = 4;
  v336 = 4;
  v94.value._countAndFlagsBits = 0xD000000000000017;
  v94.value._object = 0x800000026B56A830;
  v95.value._countAndFlagsBits = 0xD00000000000002ALL;
  v95.value._object = 0x800000026B56A850;
  Action.init(_:mac:)(v94, v95);
  v332 = v334;
  v333 = v335;
  v96 = sub_26B4D43F4();
  LOBYTE(v68) = sub_26B4CE5C8();
  LOBYTE(v69) = sub_26B4D4400();
  *&v302 = sub_26B4D4408();
  *(&v302 + 1) = sub_26B4D4414();
  *&v273 = v90;
  *(&v273 + 1) = v91;
  *&v244 = v89;
  *(&v244 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000001BLL, 0x800000026B56A810, &unk_287C03D70, &unk_287C02BC0, v96, 0, 0, v338, v331._rawValue + 2056, v68 & 1, v69 & 1, v244, v273, v302, v93, &v337, &v336, 0, 0, &v332);
  v338[0] = 1;
  v97 = sub_26B470D98(&unk_287C02CD8);
  v98 = sub_26B470D98(&unk_287C02D00);
  v99 = swift_allocObject();
  *(v99 + 16) = xmmword_26B5450C0;
  v100 = *v330;
  *(v99 + 32) = *v330;
  *(v99 + 40) = 1;
  *(v99 + 48) = v100;
  *(v99 + 56) = 3;
  *(v99 + 64) = v100;
  *(v99 + 72) = 8;
  *(v99 + 80) = 0x403A000000000000;
  *(v99 + 88) = 10;
  v101 = sub_26B470F10(&unk_287C02D28);
  v337 = 4;
  v336 = 4;
  v102.value._object = 0x800000026B56A8A0;
  v103.value._countAndFlagsBits = 0xD000000000000026;
  v103.value._object = 0x800000026B56A8C0;
  v102.value._countAndFlagsBits = 0xD000000000000013;
  Action.init(_:mac:)(v102, v103);
  v332 = v334;
  v333 = v335;
  v104 = sub_26B4D43F4();
  LOBYTE(v68) = sub_26B4CE5C8();
  LOBYTE(v69) = sub_26B4D4400();
  *&v303 = sub_26B4D4408();
  *(&v303 + 1) = sub_26B4D4414();
  *&v274 = v98;
  *(&v274 + 1) = v99;
  *&v245 = v97;
  *(&v245 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000017, 0x800000026B56A880, &unk_287C03DA0, &unk_287C02CA0, v104, 0, 0, v338, v331._rawValue + 2240, v68 & 1, v69 & 1, v245, v274, v303, v101, &v337, &v336, 0, 0, &v332);
  v338[0] = 1;
  v105 = sub_26B470D98(&unk_287C02DB8);
  v106 = sub_26B470D98(&unk_287C02DE0);
  v107 = swift_allocObject();
  *(v107 + 16) = xmmword_26B5450C0;
  v108 = *v330;
  *(v107 + 32) = *v330;
  *(v107 + 40) = 1;
  *(v107 + 48) = v108;
  *(v107 + 56) = 3;
  *(v107 + 64) = v108;
  *(v107 + 72) = 8;
  *(v107 + 80) = 0x403A000000000000;
  *(v107 + 88) = 10;
  v109 = sub_26B470F10(&unk_287C02E08);
  v337 = 4;
  v336 = 4;
  v110.value._countAndFlagsBits = 0xD000000000000017;
  v110.value._object = 0x800000026B56A910;
  Action.init(_:mac:)(v110, 0);
  v332 = v334;
  v333 = v335;
  v111 = sub_26B4D43F4();
  LOBYTE(v68) = sub_26B4CE5C8();
  LOBYTE(v69) = sub_26B4D4400();
  *&v304 = sub_26B4D4408();
  *(&v304 + 1) = sub_26B4D4414();
  *&v275 = v106;
  *(&v275 + 1) = v107;
  *&v246 = v105;
  *(&v246 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000001BLL, 0x800000026B56A8F0, &unk_287C03DD0, &unk_287C02D80, v111, 0, 0, v338, v331._rawValue + 2424, v68 & 1, v69 & 1, v246, v275, v304, v109, &v337, &v336, 0, 0, &v332);
  v338[0] = 1;
  v322 = sub_26B470D98(&unk_287C02E98);
  v112 = sub_26B470D98(&unk_287C02EC0);
  v113 = swift_allocObject();
  *(v113 + 16) = xmmword_26B5450C0;
  v114 = *v330;
  *(v113 + 32) = *v330;
  *(v113 + 40) = 1;
  *(v113 + 48) = v114;
  *(v113 + 56) = 3;
  *(v113 + 64) = v114;
  *(v113 + 72) = 8;
  *(v113 + 80) = 0x403A000000000000;
  *(v113 + 88) = 10;
  v115 = sub_26B470F10(&unk_287C02EE8);
  v337 = 4;
  v336 = 4;
  v116.value._countAndFlagsBits = 0xD000000000000018;
  v116.value._object = 0x800000026B56A950;
  v117.value._countAndFlagsBits = 0xD00000000000002BLL;
  v117.value._object = 0x800000026B56A970;
  Action.init(_:mac:)(v116, v117);
  v332 = v334;
  v333 = v335;
  v118 = sub_26B4D43F4();
  LOBYTE(v68) = sub_26B4CE5C8();
  LOBYTE(v69) = sub_26B4D4400();
  *&v305 = sub_26B4D4408();
  *(&v305 + 1) = sub_26B4D4414();
  *&v276 = v112;
  *(&v276 + 1) = v113;
  *(&v247 + 1) = MEMORY[0x277D84FA0];
  *&v247 = v322;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000001CLL, 0x800000026B56A930, &unk_287C03E00, &unk_287C02E60, v118, 0, 0, v338, v331._rawValue + 2608, v68 & 1, v69 & 1, v247, v276, v305, v115, &v337, &v336, 0, 0, &v332);
  v338[0] = 1;
  v119 = sub_26B470D98(&unk_287C02F78);
  v120 = sub_26B470D98(&unk_287C02FA0);
  v121 = swift_allocObject();
  *(v121 + 16) = xmmword_26B5450C0;
  v122 = *v330;
  *(v121 + 32) = *v330;
  *(v121 + 40) = 1;
  *(v121 + 48) = v122;
  *(v121 + 56) = 3;
  *(v121 + 64) = v122;
  *(v121 + 72) = 8;
  *(v121 + 80) = 0x403A000000000000;
  *(v121 + 88) = 10;
  v123 = sub_26B470F10(&unk_287C02FC8);
  v337 = 4;
  v336 = 4;
  v124.value._countAndFlagsBits = 0xD000000000000014;
  v124.value._object = 0x800000026B56A9C0;
  v125.value._countAndFlagsBits = 0xD000000000000027;
  v125.value._object = 0x800000026B56A9E0;
  Action.init(_:mac:)(v124, v125);
  v332 = v334;
  v333 = v335;
  v126 = sub_26B4D43F4();
  LOBYTE(v68) = sub_26B4CE5C8();
  LOBYTE(v69) = sub_26B4D4400();
  *&v306 = sub_26B4D4408();
  *(&v306 + 1) = sub_26B4D4414();
  *&v277 = v120;
  *(&v277 + 1) = v121;
  *&v248 = v119;
  *(&v248 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000018, 0x800000026B56A9A0, &unk_287C03E30, &unk_287C02F40, v126, 0, 0, v338, v331._rawValue + 2792, v68 & 1, v69 & 1, v248, v277, v306, v123, &v337, &v336, 0, 0, &v332);
  v338[0] = 1;
  v127 = sub_26B470D98(&unk_287C03058);
  v128 = sub_26B470D98(&unk_287C03080);
  v129 = swift_allocObject();
  *(v129 + 16) = xmmword_26B5450C0;
  v130 = *v330;
  *(v129 + 32) = *v330;
  *(v129 + 40) = 1;
  *(v129 + 48) = v130;
  *(v129 + 56) = 3;
  *(v129 + 64) = v130;
  *(v129 + 72) = 8;
  *(v129 + 80) = 0x403A000000000000;
  *(v129 + 88) = 10;
  v131 = sub_26B470F10(&unk_287C030A8);
  v337 = 4;
  v336 = 4;
  v132.value._object = 0x800000026B56AA30;
  v132.value._countAndFlagsBits = 0xD000000000000012;
  Action.init(_:mac:)(v132, 0);
  v332 = v334;
  v333 = v335;
  v133 = sub_26B4D43F4();
  LOBYTE(v68) = sub_26B4CE5C8();
  LOBYTE(v69) = sub_26B4D4400();
  *&v307 = sub_26B4D4408();
  *(&v307 + 1) = sub_26B4D4414();
  *&v278 = v128;
  *(&v278 + 1) = v129;
  *&v249 = v127;
  *(&v249 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000016, 0x800000026B56AA10, &unk_287C03E60, &unk_287C03020, v133, 0, 0, v338, v331._rawValue + 2976, v68 & 1, v69 & 1, v249, v278, v307, v131, &v337, &v336, 0, 0, &v332);
  v338[0] = 1;
  v321 = sub_26B470D98(&unk_287C03138);
  v134 = sub_26B470D98(&unk_287C03160);
  v135 = swift_allocObject();
  *(v135 + 16) = xmmword_26B5450C0;
  v136 = *v330;
  *(v135 + 32) = *v330;
  *(v135 + 40) = 1;
  *(v135 + 48) = v136;
  *(v135 + 56) = 3;
  *(v135 + 64) = v136;
  *(v135 + 72) = 8;
  *(v135 + 80) = 0x403A000000000000;
  *(v135 + 88) = 10;
  v137 = sub_26B470F10(&unk_287C03188);
  v337 = 4;
  v336 = 4;
  v138.value._object = 0x800000026B56AA70;
  v139.value._countAndFlagsBits = 0xD000000000000026;
  v139.value._object = 0x800000026B56AA90;
  v138.value._countAndFlagsBits = 0xD000000000000013;
  Action.init(_:mac:)(v138, v139);
  v332 = v334;
  v333 = v335;
  v140 = sub_26B4D43F4();
  LOBYTE(v68) = sub_26B4CE5C8();
  LOBYTE(v69) = sub_26B4D4400();
  *&v308 = sub_26B4D4408();
  *(&v308 + 1) = sub_26B4D4414();
  *&v279 = v134;
  *(&v279 + 1) = v135;
  *(&v250 + 1) = MEMORY[0x277D84FA0];
  *&v250 = v321;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000017, 0x800000026B56AA50, &unk_287C03E90, &unk_287C03100, v140, 0, 0, v338, v331._rawValue + 3160, v68 & 1, v69 & 1, v250, v279, v308, v137, &v337, &v336, 0, 0, &v332);
  v338[0] = 1;
  v320 = sub_26B470D98(&unk_287C03218);
  v141 = sub_26B470D98(&unk_287C03240);
  v142 = swift_allocObject();
  *(v142 + 16) = xmmword_26B5450C0;
  v143 = *v330;
  *(v142 + 32) = *v330;
  *(v142 + 40) = 1;
  *(v142 + 48) = v143;
  *(v142 + 56) = 3;
  *(v142 + 64) = v143;
  *(v142 + 72) = 8;
  *(v142 + 80) = 0x403A000000000000;
  *(v142 + 88) = 10;
  v144 = sub_26B470F10(&unk_287C03268);
  v337 = 4;
  v336 = 4;
  v145.value._object = 0xEF3A656E694C7478;
  v146.value._countAndFlagsBits = 0xD000000000000022;
  v146.value._object = 0x800000026B56AAE0;
  v145.value._countAndFlagsBits = 0x654E6574656C6564;
  Action.init(_:mac:)(v145, v146);
  v332 = v334;
  v333 = v335;
  v147 = sub_26B4D43F4();
  LOBYTE(v68) = sub_26B4CE5C8();
  LOBYTE(v69) = sub_26B4D4400();
  *&v309 = sub_26B4D4408();
  *(&v309 + 1) = sub_26B4D4414();
  *&v280 = v141;
  *(&v280 + 1) = v142;
  *(&v251 + 1) = MEMORY[0x277D84FA0];
  *&v251 = v320;
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000013, 0x800000026B56AAC0, &unk_287C03EC0, &unk_287C031E0, v147, 0, 0, v338, v331._rawValue + 3344, v68 & 1, v69 & 1, v251, v280, v309, v144, &v337, &v336, 0, 0, &v332);
  v338[0] = 1;
  v148 = sub_26B470D98(&unk_287C03308);
  v149 = sub_26B470D98(&unk_287C03330);
  v150 = swift_allocObject();
  *(v150 + 16) = xmmword_26B5450C0;
  v151 = *v330;
  *(v150 + 32) = *v330;
  *(v150 + 40) = 1;
  *(v150 + 48) = v151;
  *(v150 + 56) = 3;
  *(v150 + 64) = v151;
  *(v150 + 72) = 8;
  *(v150 + 80) = 0x403A000000000000;
  *(v150 + 88) = 10;
  v152 = sub_26B470F10(&unk_287C03358);
  v337 = 4;
  v336 = 4;
  v153.value._countAndFlagsBits = 0xD000000000000018;
  v153.value._object = 0x800000026B56A610;
  v154.value._countAndFlagsBits = 0xD00000000000002BLL;
  v154.value._object = 0x800000026B56A630;
  Action.init(_:mac:)(v153, v154);
  v332 = v334;
  v333 = v335;
  v155 = sub_26B4D43F4();
  LOBYTE(v68) = sub_26B4CE5C8();
  LOBYTE(v69) = sub_26B4D4400();
  *&v310 = sub_26B4D4408();
  *(&v310 + 1) = sub_26B4D4414();
  *&v281 = v149;
  *(&v281 + 1) = v150;
  *&v252 = v148;
  *(&v252 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000030, 0x800000026B56AB10, &unk_287C03EF0, &unk_287C032D0, v155, 0, 0, v338, v331._rawValue + 3528, v68 & 1, v69 & 1, v252, v281, v310, v152, &v337, &v336, 0, 0, &v332);
  v338[0] = 0;
  v156 = sub_26B470D98(&unk_287C033E8);
  v157 = sub_26B470D98(&unk_287C03410);
  v158 = swift_allocObject();
  *(v158 + 16) = xmmword_26B5450C0;
  v159 = *v330;
  *(v158 + 32) = *v330;
  *(v158 + 40) = 1;
  *(v158 + 48) = v159;
  *(v158 + 56) = 3;
  *(v158 + 64) = v159;
  *(v158 + 72) = 8;
  *(v158 + 80) = 0x403A000000000000;
  *(v158 + 88) = 10;
  v160 = sub_26B470F10(&unk_287C03438);
  v337 = 4;
  v336 = 4;
  v161.value._countAndFlagsBits = 0xD000000000000014;
  v161.value._object = 0x800000026B56A680;
  v162.value._countAndFlagsBits = 0xD000000000000027;
  v162.value._object = 0x800000026B56A6A0;
  Action.init(_:mac:)(v161, v162);
  v332 = v334;
  v333 = v335;
  v163 = sub_26B4D43F4();
  LOBYTE(v68) = sub_26B4CE5C8();
  LOBYTE(v69) = sub_26B4D4400();
  *&v311 = sub_26B4D4408();
  *(&v311 + 1) = sub_26B4D4414();
  *&v282 = v157;
  *(&v282 + 1) = v158;
  *&v253 = v156;
  *(&v253 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000002CLL, 0x800000026B56AB50, &unk_287C03F20, &unk_287C033B0, v163, 0, 0, v338, v331._rawValue + 3712, v68 & 1, v69 & 1, v253, v282, v311, v160, &v337, &v336, 0, 0, &v332);
  v338[0] = 0;
  v164 = sub_26B470D98(&unk_287C034C8);
  v165 = sub_26B470D98(&unk_287C034F0);
  v166 = swift_allocObject();
  *(v166 + 16) = xmmword_26B5450C0;
  v167 = *v330;
  *(v166 + 32) = *v330;
  *(v166 + 40) = 1;
  *(v166 + 48) = v167;
  *(v166 + 56) = 3;
  *(v166 + 64) = v167;
  *(v166 + 72) = 8;
  *(v166 + 80) = 0x403A000000000000;
  *(v166 + 88) = 10;
  v168 = sub_26B470F10(&unk_287C03518);
  v337 = 4;
  v336 = 4;
  v169.value._object = 0x800000026B56A730;
  v170.value._countAndFlagsBits = 0xD000000000000026;
  v170.value._object = 0x800000026B56A750;
  v169.value._countAndFlagsBits = 0xD000000000000013;
  Action.init(_:mac:)(v169, v170);
  v332 = v334;
  v333 = v335;
  v171 = sub_26B4D43F4();
  LOBYTE(v68) = sub_26B4CE5C8();
  LOBYTE(v69) = sub_26B4D4400();
  *&v312 = sub_26B4D4408();
  *(&v312 + 1) = sub_26B4D4414();
  *&v283 = v165;
  *(&v283 + 1) = v166;
  *&v254 = v164;
  *(&v254 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000002BLL, 0x800000026B56AB80, &unk_287C03F50, &unk_287C03490, v171, 0, 0, v338, v331._rawValue + 3896, v68 & 1, v69 & 1, v254, v283, v312, v168, &v337, &v336, 0, 0, &v332);
  v338[0] = 0;
  v172 = sub_26B470D98(&unk_287C035A8);
  v173 = sub_26B470D98(&unk_287C035D0);
  v174 = swift_allocObject();
  *(v174 + 16) = xmmword_26B5450C0;
  v175 = *v330;
  *(v174 + 32) = *v330;
  *(v174 + 40) = 1;
  *(v174 + 48) = v175;
  *(v174 + 56) = 3;
  *(v174 + 64) = v175;
  *(v174 + 72) = 8;
  *(v174 + 80) = 0x403A000000000000;
  *(v174 + 88) = 10;
  v176 = sub_26B470F10(&unk_287C035F8);
  v337 = 4;
  v336 = 4;
  v177.value._countAndFlagsBits = 0xD000000000000022;
  v177.value._object = 0x800000026B56A7A0;
  v178.value._countAndFlagsBits = 0x654E6574656C6564;
  v178.value._object = 0xEF3A64726F577478;
  Action.init(_:mac:)(v178, v177);
  v332 = v334;
  v333 = v335;
  v179 = sub_26B4D43F4();
  LOBYTE(v68) = sub_26B4CE5C8();
  LOBYTE(v69) = sub_26B4D4400();
  *&v313 = sub_26B4D4408();
  *(&v313 + 1) = sub_26B4D4414();
  *&v284 = v173;
  *(&v284 + 1) = v174;
  *&v255 = v172;
  *(&v255 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000027, 0x800000026B56ABB0, &unk_287C03F80, &unk_287C03570, v179, 0, 0, v338, v331._rawValue + 4080, v68 & 1, v69 & 1, v255, v284, v313, v176, &v337, &v336, 0, 0, &v332);
  v338[0] = 1;
  v180 = sub_26B470D98(&unk_287C03688);
  v181 = sub_26B470D98(&unk_287C036B0);
  v182 = swift_allocObject();
  *(v182 + 16) = xmmword_26B5450C0;
  v183 = *v330;
  *(v182 + 32) = *v330;
  *(v182 + 40) = 1;
  *(v182 + 48) = v183;
  *(v182 + 56) = 3;
  *(v182 + 64) = v183;
  *(v182 + 72) = 8;
  *(v182 + 80) = 0x403A000000000000;
  *(v182 + 88) = 10;
  v184 = sub_26B470F10(&unk_287C036D8);
  v337 = 4;
  v336 = 4;
  v185.value._countAndFlagsBits = 0xD000000000000017;
  v185.value._object = 0x800000026B56A830;
  v186.value._countAndFlagsBits = 0xD00000000000002ALL;
  v186.value._object = 0x800000026B56A850;
  Action.init(_:mac:)(v185, v186);
  v332 = v334;
  v333 = v335;
  v187 = sub_26B4D43F4();
  LOBYTE(v68) = sub_26B4CE5C8();
  LOBYTE(v54) = sub_26B4D4400();
  *&v314 = sub_26B4D4408();
  *(&v314 + 1) = sub_26B4D4414();
  *&v285 = v181;
  *(&v285 + 1) = v182;
  *&v256 = v180;
  *(&v256 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000002FLL, 0x800000026B56ABE0, &unk_287C03FB0, &unk_287C03650, v187, 0, 0, v338, v331._rawValue + 4264, v68 & 1, v54 & 1, v256, v285, v314, v184, &v337, &v336, 0, 0, &v332);
  v338[0] = 1;
  v188 = sub_26B470D98(&unk_287C03768);
  v189 = sub_26B470D98(&unk_287C03790);
  v190 = swift_allocObject();
  *(v190 + 16) = xmmword_26B5450C0;
  v191 = *v330;
  *(v190 + 32) = *v330;
  *(v190 + 40) = 1;
  *(v190 + 48) = v191;
  *(v190 + 56) = 3;
  *(v190 + 64) = v191;
  *(v190 + 72) = 8;
  *(v190 + 80) = 0x403A000000000000;
  *(v190 + 88) = 10;
  v192 = sub_26B470F10(&unk_287C037B8);
  v337 = 4;
  v336 = 4;
  v193.value._object = 0x800000026B56A8A0;
  v194.value._countAndFlagsBits = 0xD000000000000026;
  v194.value._object = 0x800000026B56A8C0;
  v193.value._countAndFlagsBits = 0xD000000000000013;
  Action.init(_:mac:)(v193, v194);
  v332 = v334;
  v333 = v335;
  v195 = sub_26B4D43F4();
  LOBYTE(v68) = sub_26B4CE5C8();
  LOBYTE(v54) = sub_26B4D4400();
  *&v315 = sub_26B4D4408();
  *(&v315 + 1) = sub_26B4D4414();
  *&v286 = v189;
  *(&v286 + 1) = v190;
  *&v257 = v188;
  *(&v257 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000002BLL, 0x800000026B56AC10, &unk_287C03FE0, &unk_287C03730, v195, 0, 0, v338, v331._rawValue + 4448, v68 & 1, v54 & 1, v257, v286, v315, v192, &v337, &v336, 0, 0, &v332);
  v338[0] = 1;
  v196 = sub_26B470D98(&unk_287C03848);
  v197 = sub_26B470D98(&unk_287C03870);
  v198 = swift_allocObject();
  *(v198 + 16) = xmmword_26B5450C0;
  v199 = *v330;
  *(v198 + 32) = *v330;
  *(v198 + 40) = 1;
  *(v198 + 48) = v199;
  *(v198 + 56) = 3;
  *(v198 + 64) = v199;
  *(v198 + 72) = 8;
  *(v198 + 80) = 0x403A000000000000;
  *(v198 + 88) = 10;
  v200 = sub_26B470F10(&unk_287C03898);
  v337 = 4;
  v336 = 4;
  v201.value._countAndFlagsBits = 0xD000000000000018;
  v201.value._object = 0x800000026B56A950;
  v202.value._countAndFlagsBits = 0xD00000000000002BLL;
  v202.value._object = 0x800000026B56A970;
  Action.init(_:mac:)(v201, v202);
  v332 = v334;
  v333 = v335;
  v203 = sub_26B4D43F4();
  LOBYTE(v68) = sub_26B4CE5C8();
  LOBYTE(v54) = sub_26B4D4400();
  *&v316 = sub_26B4D4408();
  *(&v316 + 1) = sub_26B4D4414();
  *&v287 = v197;
  *(&v287 + 1) = v198;
  *&v258 = v196;
  *(&v258 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000030, 0x800000026B56AC40, &unk_287C04010, &unk_287C03810, v203, 0, 0, v338, v331._rawValue + 4632, v68 & 1, v54 & 1, v258, v287, v316, v200, &v337, &v336, 0, 0, &v332);
  v338[0] = 1;
  v204 = sub_26B470D98(&unk_287C03928);
  v205 = sub_26B470D98(&unk_287C03950);
  v206 = swift_allocObject();
  *(v206 + 16) = xmmword_26B5450C0;
  v207 = *v330;
  *(v206 + 32) = *v330;
  *(v206 + 40) = 1;
  *(v206 + 48) = v207;
  *(v206 + 56) = 3;
  *(v206 + 64) = v207;
  *(v206 + 72) = 8;
  *(v206 + 80) = 0x403A000000000000;
  *(v206 + 88) = 10;
  v208 = sub_26B470F10(&unk_287C03978);
  v337 = 4;
  v336 = 4;
  v209.value._countAndFlagsBits = 0xD000000000000014;
  v209.value._object = 0x800000026B56A9C0;
  v210.value._countAndFlagsBits = 0xD000000000000027;
  v210.value._object = 0x800000026B56A9E0;
  Action.init(_:mac:)(v209, v210);
  v332 = v334;
  v333 = v335;
  v211 = sub_26B4D43F4();
  LOBYTE(v68) = sub_26B4CE5C8();
  LOBYTE(v54) = sub_26B4D4400();
  *&v317 = sub_26B4D4408();
  *(&v317 + 1) = sub_26B4D4414();
  *&v288 = v205;
  *(&v288 + 1) = v206;
  *&v259 = v204;
  *(&v259 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000002CLL, 0x800000026B56AC80, &unk_287C04040, &unk_287C038F0, v211, 0, 0, v338, v331._rawValue + 4816, v68 & 1, v54 & 1, v259, v288, v317, v208, &v337, &v336, 0, 0, &v332);
  v338[0] = 1;
  v212 = sub_26B470D98(&unk_287C03A08);
  v213 = sub_26B470D98(&unk_287C03A30);
  v214 = swift_allocObject();
  *(v214 + 16) = xmmword_26B5450C0;
  v215 = *v330;
  *(v214 + 32) = *v330;
  *(v214 + 40) = 1;
  *(v214 + 48) = v215;
  *(v214 + 56) = 3;
  *(v214 + 64) = v215;
  *(v214 + 72) = 8;
  *(v214 + 80) = 0x403A000000000000;
  *(v214 + 88) = 10;
  v216 = sub_26B470F10(&unk_287C03A58);
  v337 = 4;
  v336 = 4;
  v217.value._object = 0x800000026B56AA70;
  v218.value._countAndFlagsBits = 0xD000000000000026;
  v218.value._object = 0x800000026B56AA90;
  v217.value._countAndFlagsBits = 0xD000000000000013;
  Action.init(_:mac:)(v217, v218);
  v332 = v334;
  v333 = v335;
  v219 = sub_26B4D43F4();
  LOBYTE(v68) = sub_26B4CE5C8();
  LOBYTE(v54) = sub_26B4D4400();
  *&v318 = sub_26B4D4408();
  *(&v318 + 1) = sub_26B4D4414();
  *&v289 = v213;
  *(&v289 + 1) = v214;
  *&v260 = v212;
  *(&v260 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD00000000000002BLL, 0x800000026B56ACB0, &unk_287C04070, &unk_287C039D0, v219, 0, 0, v338, v331._rawValue + 5000, v68 & 1, v54 & 1, v260, v289, v318, v216, &v337, &v336, 0, 0, &v332);
  v338[0] = 1;
  v220 = sub_26B470D98(&unk_287C03AE8);
  v221 = sub_26B470D98(&unk_287C03B10);
  v222 = swift_allocObject();
  *(v222 + 16) = xmmword_26B5450C0;
  v223 = *v330;
  *(v222 + 32) = *v330;
  *(v222 + 40) = 1;
  *(v222 + 48) = v223;
  *(v222 + 56) = 3;
  *(v222 + 64) = v223;
  *(v222 + 72) = 8;
  *(v222 + 80) = 0x403A000000000000;
  *(v222 + 88) = 10;
  v224 = sub_26B470F10(&unk_287C03B38);
  v337 = 4;
  v336 = 4;
  v225.value._countAndFlagsBits = 0xD000000000000022;
  v225.value._object = 0x800000026B56AAE0;
  v226.value._countAndFlagsBits = 0x654E6574656C6564;
  v226.value._object = 0xEF3A656E694C7478;
  Action.init(_:mac:)(v226, v225);
  v332 = v334;
  v333 = v335;
  v227 = sub_26B4D43F4();
  v228 = sub_26B4CE5C8();
  LOBYTE(v68) = sub_26B4D4400();
  *&v319 = sub_26B4D4408();
  *(&v319 + 1) = sub_26B4D4414();
  *&v290 = v221;
  *(&v290 + 1) = v222;
  *&v261 = v220;
  *(&v261 + 1) = MEMORY[0x277D84FA0];
  VCCommand.init(commandID:commandStrings:abstract:discussion:localizationComment:userImpact:enabled:requiresConfirmation:supportedIdioms:plannedIdioms:unsupportedIdioms:introduced:supportedEngines:visibilityEvaluations:contextEvaluations:contextSupportsInteractionLevel:contextRequiresInteractionLevel:contextRequiresOneOfAppIdentifiers:contextSpecialCaseGoBackWithAppIdentifiers:recognizerClassName:action:)(0xD000000000000027, 0x800000026B56ACE0, &unk_287C040A0, &unk_287C03AB0, v227, 0, 0, v338, v331._rawValue + 5184, v228 & 1, v68 & 1, v261, v290, v319, v224, &v337, &v336, 0, 0, &v332);
  LOBYTE(v222) = sub_26B4CE5C8();
  v229 = sub_26B4D4400();
  v230._countAndFlagsBits = v329;
  v231._object = 0x800000026B56A510;
  v232 = v229 & 1;
  v231._countAndFlagsBits = 0xD000000000000010;
  v230._object = v328;
  VCCommandCollection.init(identifier:displayName:showInSettings:showCodingGuideInSettings:commands:)(&unk_280406E58, v231, v230, v222 & 1, v232, v331);
}

void *sub_26B4BD61C()
{
  if (qword_2804004A0 != -1)
  {
    swift_once();
  }

  return &unk_280406E58;
}

void sub_26B4BD66C()
{
  v0 = sub_26B542A74();
  v1 = MGGetSInt32Answer();

  dword_280406E84 = v1;
}

uint64_t sub_26B4BD6C0()
{
  v0 = static VCCommand.allCommands.getter();
  v1 = *(v0 + 16);
  if (v1)
  {
    v64 = MEMORY[0x277D84F90];
    sub_26B542DF4();
    v2 = v1 - 1;
    for (i = 32; ; i += 184)
    {
      v4 = *(v0 + i);
      v5 = *(v0 + i + 16);
      v6 = *(v0 + i + 48);
      v40 = *(v0 + i + 32);
      v41 = v6;
      v38 = v4;
      v39 = v5;
      v7 = *(v0 + i + 64);
      v8 = *(v0 + i + 80);
      v9 = *(v0 + i + 112);
      v44 = *(v0 + i + 96);
      v45 = v9;
      v42 = v7;
      v43 = v8;
      v10 = *(v0 + i + 128);
      v11 = *(v0 + i + 144);
      v12 = *(v0 + i + 160);
      v49 = *(v0 + i + 176);
      v47 = v11;
      v48 = v12;
      v46 = v10;
      v13 = objc_allocWithZone(VCCommandObjC);
      sub_26B4A5160(&v38, v37);
      sub_26B4A5160(&v38, v37);
      v14 = [v13 init];
      sub_26B4A51BC(&v38);
      v58 = v46;
      v59 = v47;
      v60 = v48;
      v61 = v49;
      v54 = v42;
      v55 = v43;
      v56 = v44;
      v57 = v45;
      v50 = v38;
      v51 = v39;
      v52 = v40;
      v53 = v41;
      nullsub_1();
      v15 = &v14[OBJC_IVAR___VCCommandObjC_representedCommand];
      v16 = *&v14[OBJC_IVAR___VCCommandObjC_representedCommand + 48];
      v18 = *&v14[OBJC_IVAR___VCCommandObjC_representedCommand];
      v17 = *&v14[OBJC_IVAR___VCCommandObjC_representedCommand + 16];
      v62[2] = *&v14[OBJC_IVAR___VCCommandObjC_representedCommand + 32];
      v62[3] = v16;
      v62[0] = v18;
      v62[1] = v17;
      v19 = *&v14[OBJC_IVAR___VCCommandObjC_representedCommand + 112];
      v21 = *&v14[OBJC_IVAR___VCCommandObjC_representedCommand + 64];
      v20 = *&v14[OBJC_IVAR___VCCommandObjC_representedCommand + 80];
      v62[6] = *&v14[OBJC_IVAR___VCCommandObjC_representedCommand + 96];
      v62[7] = v19;
      v62[4] = v21;
      v62[5] = v20;
      v23 = *&v14[OBJC_IVAR___VCCommandObjC_representedCommand + 144];
      v22 = *&v14[OBJC_IVAR___VCCommandObjC_representedCommand + 160];
      v24 = *&v14[OBJC_IVAR___VCCommandObjC_representedCommand + 128];
      v63 = *&v14[OBJC_IVAR___VCCommandObjC_representedCommand + 176];
      v62[9] = v23;
      v62[10] = v22;
      v62[8] = v24;
      v25 = v50;
      v26 = v51;
      v27 = v53;
      *(v15 + 2) = v52;
      *(v15 + 3) = v27;
      *v15 = v25;
      *(v15 + 1) = v26;
      v28 = v54;
      v29 = v55;
      v30 = v57;
      *(v15 + 6) = v56;
      *(v15 + 7) = v30;
      *(v15 + 4) = v28;
      *(v15 + 5) = v29;
      v31 = v58;
      v32 = v59;
      v33 = v60;
      *(v15 + 22) = v61;
      *(v15 + 9) = v32;
      *(v15 + 10) = v33;
      *(v15 + 8) = v31;
      v34 = v14;
      sub_26B4A4CBC(v62, &qword_2803FFD30, &qword_26B545410);

      sub_26B542DD4();
      sub_26B542E04();
      sub_26B542E14();
      sub_26B542DE4();
      if (!v2)
      {
        break;
      }

      --v2;
    }

    v36 = v64;
  }

  else
  {

    v36 = MEMORY[0x277D84F90];
  }

  qword_2804004C0 = v36;
  return result;
}

uint64_t sub_26B4BD900()
{
  result = static VCCommand.allCommands.getter();
  v1 = MEMORY[0x277D84F90];
  v75 = *(result + 16);
  if (v75)
  {
    v2 = 0;
    v73 = result + 32;
    v76 = MEMORY[0x277D84F90];
    v74 = result;
    while (v2 < *(result + 16))
    {
      v3 = (v73 + 184 * v2);
      v4 = *v3;
      v5 = v3[1];
      v6 = v3[3];
      v107 = v3[2];
      v108 = v6;
      v105 = v4;
      v106 = v5;
      v7 = v3[4];
      v8 = v3[5];
      v9 = v3[7];
      v111 = v3[6];
      v112 = v9;
      v109 = v7;
      v110 = v8;
      v10 = v3[8];
      v11 = v3[9];
      v12 = v3[10];
      v116 = *(v3 + 22);
      v114 = v11;
      v115 = v12;
      v113 = v10;
      sub_26B4A5160(&v105, &v93);
      if (qword_2804004B0 != -1)
      {
        swift_once();
      }

      v77 = v2 + 1;
      v13 = &unk_287C04148;
      if (dword_280406E84 != 1)
      {
        v13 = v1;
      }

      if (dword_280406E84 == 3)
      {
        v14 = &unk_287C04120;
      }

      else
      {
        v14 = v13;
      }

      v15 = v109;
      if (*(v109 + 16) && (v78 = *(v14 + 2)) != 0)
      {
        v16 = 0;
        v17 = v109 + 56;
        while (1)
        {
          LOBYTE(v93) = v14[v16 + 32];
          if (*(v15 + 16))
          {
            sub_26B471350();
            v18 = sub_26B5429B4();
            v19 = -1 << *(v15 + 32);
            v20 = v18 & ~v19;
            if ((*(v17 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20))
            {
              break;
            }
          }

LABEL_15:
          if (++v16 == v78)
          {
            goto LABEL_3;
          }
        }

        v21 = ~v19;
        sub_26B4713A4();
        while (1)
        {
          v79[0] = *(*(v15 + 48) + v20);
          if (sub_26B542A34())
          {
            break;
          }

          v20 = (v20 + 1) & v21;
          if (((*(v17 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
          {
            goto LABEL_15;
          }
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v23 = v76;
        *&v80 = v76;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_26B4A2120(0, *(v76 + 16) + 1, 1);
          v23 = v80;
        }

        v1 = MEMORY[0x277D84F90];
        result = v74;
        ++v2;
        v25 = *(v23 + 16);
        v24 = *(v23 + 24);
        if (v25 >= v24 >> 1)
        {
          sub_26B4A2120((v24 > 1), v25 + 1, 1);
          result = v74;
          v23 = v80;
        }

        *(v23 + 16) = v25 + 1;
        v76 = v23;
        v26 = v23 + 184 * v25;
        v27 = v105;
        v28 = v106;
        v29 = v108;
        *(v26 + 64) = v107;
        *(v26 + 80) = v29;
        *(v26 + 32) = v27;
        *(v26 + 48) = v28;
        v30 = v109;
        v31 = v110;
        v32 = v112;
        *(v26 + 128) = v111;
        *(v26 + 144) = v32;
        *(v26 + 96) = v30;
        *(v26 + 112) = v31;
        v33 = v113;
        v34 = v114;
        v35 = v115;
        *(v26 + 208) = v116;
        *(v26 + 176) = v34;
        *(v26 + 192) = v35;
        *(v26 + 160) = v33;
        if (v77 == v75)
        {
          goto LABEL_29;
        }
      }

      else
      {
LABEL_3:

        sub_26B4A51BC(&v105);
        result = v74;
        ++v2;
        v1 = MEMORY[0x277D84F90];
        if (v77 == v75)
        {
          goto LABEL_29;
        }
      }
    }

    __break(1u);
  }

  else
  {
    v76 = MEMORY[0x277D84F90];
LABEL_29:

    v36 = *(v76 + 16);
    if (v36)
    {
      v92 = v1;
      sub_26B542DF4();
      v37 = v76;
      v38 = v36 - 1;
      for (i = 32; ; i += 184)
      {
        v40 = (v37 + i);
        v41 = *v40;
        v42 = v40[1];
        v43 = v40[3];
        v82 = v40[2];
        v83 = v43;
        v80 = v41;
        v81 = v42;
        v44 = v40[4];
        v45 = v40[5];
        v46 = v40[7];
        v86 = v40[6];
        v87 = v46;
        v84 = v44;
        v85 = v45;
        v47 = v40[8];
        v48 = v40[9];
        v49 = v40[10];
        v91 = *(v40 + 22);
        v89 = v48;
        v90 = v49;
        v88 = v47;
        v50 = objc_allocWithZone(VCCommandObjC);
        sub_26B4A5160(&v80, v79);
        sub_26B4A5160(&v80, v79);
        v51 = [v50 init];
        sub_26B4A51BC(&v80);
        v101 = v88;
        v102 = v89;
        v103 = v90;
        v104 = v91;
        v97 = v84;
        v98 = v85;
        v99 = v86;
        v100 = v87;
        v93 = v80;
        v94 = v81;
        v95 = v82;
        v96 = v83;
        nullsub_1();
        v52 = &v51[OBJC_IVAR___VCCommandObjC_representedCommand];
        v53 = *&v51[OBJC_IVAR___VCCommandObjC_representedCommand + 48];
        v55 = *&v51[OBJC_IVAR___VCCommandObjC_representedCommand];
        v54 = *&v51[OBJC_IVAR___VCCommandObjC_representedCommand + 16];
        v107 = *&v51[OBJC_IVAR___VCCommandObjC_representedCommand + 32];
        v108 = v53;
        v105 = v55;
        v106 = v54;
        v56 = *&v51[OBJC_IVAR___VCCommandObjC_representedCommand + 112];
        v58 = *&v51[OBJC_IVAR___VCCommandObjC_representedCommand + 64];
        v57 = *&v51[OBJC_IVAR___VCCommandObjC_representedCommand + 80];
        v111 = *&v51[OBJC_IVAR___VCCommandObjC_representedCommand + 96];
        v112 = v56;
        v109 = v58;
        v110 = v57;
        v60 = *&v51[OBJC_IVAR___VCCommandObjC_representedCommand + 144];
        v59 = *&v51[OBJC_IVAR___VCCommandObjC_representedCommand + 160];
        v61 = *&v51[OBJC_IVAR___VCCommandObjC_representedCommand + 128];
        v116 = *&v51[OBJC_IVAR___VCCommandObjC_representedCommand + 176];
        v114 = v60;
        v115 = v59;
        v113 = v61;
        v62 = v93;
        v63 = v94;
        v64 = v96;
        *(v52 + 2) = v95;
        *(v52 + 3) = v64;
        *v52 = v62;
        *(v52 + 1) = v63;
        v65 = v97;
        v66 = v98;
        v67 = v100;
        *(v52 + 6) = v99;
        *(v52 + 7) = v67;
        *(v52 + 4) = v65;
        *(v52 + 5) = v66;
        v68 = v101;
        v69 = v102;
        v70 = v103;
        *(v52 + 22) = v104;
        *(v52 + 9) = v69;
        *(v52 + 10) = v70;
        *(v52 + 8) = v68;
        v71 = v51;
        sub_26B4A4CBC(&v105, &qword_2803FFD30, &qword_26B545410);

        sub_26B542DD4();
        sub_26B542E04();
        sub_26B542E14();
        sub_26B542DE4();
        if (!v38)
        {
          break;
        }

        --v38;
        v37 = v76;
      }

      v72 = v92;
    }

    else
    {

      v72 = MEMORY[0x277D84F90];
    }

    qword_2804004D0 = v72;
  }

  return result;
}

void *VCCommand.rootCommandID.getter()
{
  sub_26B49FAB4();
  result = sub_26B542CD4();
  if (result[2])
  {
    v1 = result[4];

    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t VCCommandObjC.commandIdentifier.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR___VCCommandObjC_representedCommand + 144);
  v10[8] = *(v2 + OBJC_IVAR___VCCommandObjC_representedCommand + 128);
  v10[9] = v3;
  v10[10] = *(v2 + OBJC_IVAR___VCCommandObjC_representedCommand + 160);
  v11 = *(v2 + OBJC_IVAR___VCCommandObjC_representedCommand + 176);
  v4 = *(v2 + OBJC_IVAR___VCCommandObjC_representedCommand + 80);
  v10[4] = *(v2 + OBJC_IVAR___VCCommandObjC_representedCommand + 64);
  v10[5] = v4;
  v5 = *(v2 + OBJC_IVAR___VCCommandObjC_representedCommand + 112);
  v10[6] = *(v2 + OBJC_IVAR___VCCommandObjC_representedCommand + 96);
  v10[7] = v5;
  v6 = *(v2 + OBJC_IVAR___VCCommandObjC_representedCommand + 16);
  v10[0] = *(v2 + OBJC_IVAR___VCCommandObjC_representedCommand);
  v10[1] = v6;
  v7 = *(v2 + OBJC_IVAR___VCCommandObjC_representedCommand + 48);
  v10[2] = *(v2 + OBJC_IVAR___VCCommandObjC_representedCommand + 32);
  v10[3] = v7;
  result = sub_26B4C4C80(v10);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v9 = *&v10[0];

    return v9;
  }

  return result;
}

unint64_t VCCommandObjC.commandProperties.getter()
{
  if (qword_2804004B0 != -1)
  {
    swift_once();
  }

  v1 = MEMORY[0x277D84F90];
  if (dword_280406E84 == 1)
  {
    v1 = &unk_287C040F8;
  }

  if (dword_280406E84 == 3)
  {
    v2 = &unk_287C040D0;
  }

  else
  {
    v2 = v1;
  }

  v3 = sub_26B4BE320(0, v2, sub_26B4713A4, &type metadata for VCCommand.Idiom);

  if (v3)
  {
    v4 = *(v0 + OBJC_IVAR___VCCommandObjC_representedCommand + 144);
    v24 = *(v0 + OBJC_IVAR___VCCommandObjC_representedCommand + 128);
    v25 = v4;
    v26 = *(v0 + OBJC_IVAR___VCCommandObjC_representedCommand + 160);
    v27 = *(v0 + OBJC_IVAR___VCCommandObjC_representedCommand + 176);
    v5 = *(v0 + OBJC_IVAR___VCCommandObjC_representedCommand + 80);
    v20 = *(v0 + OBJC_IVAR___VCCommandObjC_representedCommand + 64);
    v21 = v5;
    v6 = *(v0 + OBJC_IVAR___VCCommandObjC_representedCommand + 112);
    v22 = *(v0 + OBJC_IVAR___VCCommandObjC_representedCommand + 96);
    v23 = v6;
    v7 = *(v0 + OBJC_IVAR___VCCommandObjC_representedCommand + 16);
    v16 = *(v0 + OBJC_IVAR___VCCommandObjC_representedCommand);
    v17 = v7;
    v8 = *(v0 + OBJC_IVAR___VCCommandObjC_representedCommand + 48);
    v18 = *(v0 + OBJC_IVAR___VCCommandObjC_representedCommand + 32);
    v19 = v8;
    if (sub_26B4C4C80(&v16) == 1 || (result = sub_26B4BFBA4(1)) == 0)
    {
LABEL_14:
      v15 = sub_26B4C4C98(MEMORY[0x277D84F90]);

      return v15;
    }
  }

  else
  {
    v10 = *(v0 + OBJC_IVAR___VCCommandObjC_representedCommand + 144);
    v24 = *(v0 + OBJC_IVAR___VCCommandObjC_representedCommand + 128);
    v25 = v10;
    v26 = *(v0 + OBJC_IVAR___VCCommandObjC_representedCommand + 160);
    v27 = *(v0 + OBJC_IVAR___VCCommandObjC_representedCommand + 176);
    v11 = *(v0 + OBJC_IVAR___VCCommandObjC_representedCommand + 80);
    v20 = *(v0 + OBJC_IVAR___VCCommandObjC_representedCommand + 64);
    v21 = v11;
    v12 = *(v0 + OBJC_IVAR___VCCommandObjC_representedCommand + 112);
    v22 = *(v0 + OBJC_IVAR___VCCommandObjC_representedCommand + 96);
    v23 = v12;
    v13 = *(v0 + OBJC_IVAR___VCCommandObjC_representedCommand + 16);
    v16 = *(v0 + OBJC_IVAR___VCCommandObjC_representedCommand);
    v17 = v13;
    v14 = *(v0 + OBJC_IVAR___VCCommandObjC_representedCommand + 48);
    v18 = *(v0 + OBJC_IVAR___VCCommandObjC_representedCommand + 32);
    v19 = v14;
    if (sub_26B4C4C80(&v16) == 1)
    {
      goto LABEL_14;
    }

    result = sub_26B4BFBA4(0);
    if (!result)
    {
      goto LABEL_14;
    }
  }

  return result;
}

BOOL sub_26B4BE320(char a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  v5 = *(a2 + 16);
  v6 = a2 + 32;
  do
  {
    v7 = v5;
    if (v5-- == 0)
    {
      break;
    }

    ++v6;
    a3();
  }

  while ((sub_26B542A34() & 1) == 0);
  return v7 != 0;
}

uint64_t VCCommandObjC.isNewForCurrentDevice.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR___VCCommandObjC_representedCommand + 144);
  v4 = *(v2 + OBJC_IVAR___VCCommandObjC_representedCommand + 112);
  v39 = *(v2 + OBJC_IVAR___VCCommandObjC_representedCommand + 128);
  v40 = v3;
  v5 = *(v2 + OBJC_IVAR___VCCommandObjC_representedCommand + 144);
  v41 = *(v2 + OBJC_IVAR___VCCommandObjC_representedCommand + 160);
  v6 = *(v2 + OBJC_IVAR___VCCommandObjC_representedCommand + 80);
  v7 = *(v2 + OBJC_IVAR___VCCommandObjC_representedCommand + 48);
  v35 = *(v2 + OBJC_IVAR___VCCommandObjC_representedCommand + 64);
  v36 = v6;
  v8 = *(v2 + OBJC_IVAR___VCCommandObjC_representedCommand + 80);
  v9 = *(v2 + OBJC_IVAR___VCCommandObjC_representedCommand + 112);
  v37 = *(v2 + OBJC_IVAR___VCCommandObjC_representedCommand + 96);
  v38 = v9;
  v10 = *(v2 + OBJC_IVAR___VCCommandObjC_representedCommand + 16);
  v32[0] = *(v2 + OBJC_IVAR___VCCommandObjC_representedCommand);
  v32[1] = v10;
  v11 = *(v2 + OBJC_IVAR___VCCommandObjC_representedCommand + 48);
  v13 = *(v2 + OBJC_IVAR___VCCommandObjC_representedCommand);
  v12 = *(v2 + OBJC_IVAR___VCCommandObjC_representedCommand + 16);
  v33 = *(v2 + OBJC_IVAR___VCCommandObjC_representedCommand + 32);
  v34 = v11;
  v51 = v39;
  v52 = v5;
  v53 = *(v2 + OBJC_IVAR___VCCommandObjC_representedCommand + 160);
  v47 = v35;
  v48 = v8;
  v49 = v37;
  v50 = v4;
  v43 = v13;
  v44 = v12;
  v42 = *(v2 + OBJC_IVAR___VCCommandObjC_representedCommand + 176);
  v54 = *(v2 + OBJC_IVAR___VCCommandObjC_representedCommand + 176);
  v45 = v33;
  v46 = v7;
  if (sub_26B4C4C80(&v43) == 1)
  {
    return 0;
  }

  v28 = v51;
  v29 = v52;
  v30 = v53;
  v31 = v54;
  v24 = v47;
  v25 = v48;
  v26 = v49;
  v27 = v50;
  v20 = v43;
  v21 = v44;
  v22 = v45;
  v23 = v46;
  sub_26B4C68C8(v32, v19, &qword_2803FFD30, &qword_26B545410);
  if (qword_2804004B0 != -1)
  {
    swift_once();
  }

  v15 = MEMORY[0x277D84F90];
  if (dword_280406E84 == 1)
  {
    v15 = &unk_287C040F8;
  }

  if (dword_280406E84 == 3)
  {
    v16 = &unk_287C040D0;
  }

  else
  {
    v16 = v15;
  }

  if (*(v16 + 2))
  {
    v17 = v16[32];

    v19[0] = v17;
    v14 = VCCommand.isNew(for:)(v19);
    sub_26B4A4CBC(v32, &qword_2803FFD30, &qword_26B545410);
    return v14;
  }

  __break(1u);
  return result;
}

uint64_t VCCommandObjC.showCodingGuideInSettings.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR___VCCommandObjC_representedCommand + 144);
  v36 = *(v2 + OBJC_IVAR___VCCommandObjC_representedCommand + 128);
  v37 = v3;
  v38 = *(v2 + OBJC_IVAR___VCCommandObjC_representedCommand + 160);
  v39 = *(v2 + OBJC_IVAR___VCCommandObjC_representedCommand + 176);
  v4 = *(v2 + OBJC_IVAR___VCCommandObjC_representedCommand + 80);
  v32 = *(v2 + OBJC_IVAR___VCCommandObjC_representedCommand + 64);
  v33 = v4;
  v5 = *(v2 + OBJC_IVAR___VCCommandObjC_representedCommand + 112);
  v34 = *(v2 + OBJC_IVAR___VCCommandObjC_representedCommand + 96);
  v35 = v5;
  v6 = *(v2 + OBJC_IVAR___VCCommandObjC_representedCommand + 16);
  v28 = *(v2 + OBJC_IVAR___VCCommandObjC_representedCommand);
  v29 = v6;
  v7 = *(v2 + OBJC_IVAR___VCCommandObjC_representedCommand + 48);
  v30 = *(v2 + OBJC_IVAR___VCCommandObjC_representedCommand + 32);
  v31 = v7;
  if (sub_26B4C4C80(&v28) == 1)
  {
    return 0;
  }

  v24 = v36;
  v25 = v37;
  v26 = v38;
  v27 = v39;
  v20 = v32;
  v21 = v33;
  v22 = v34;
  v23 = v35;
  v16 = v28;
  v17 = v29;
  v18 = v30;
  v19 = v31;
  VCCommand.collection.getter(&v10);
  if (!v11)
  {
    return 0;
  }

  v8 = HIBYTE(v15) & 1;
  sub_26B4C4DC8(v10, v11, v12, v13, v14);
  return v8;
}

uint64_t sub_26B4BE6E0(char a1, uint64_t a2)
{
  if (*(a2 + 16) && (sub_26B471350(), v3 = sub_26B5429B4(), v4 = -1 << *(a2 + 32), v5 = v3 & ~v4, ((*(a2 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0))
  {
    v6 = ~v4;
    sub_26B4713A4();
    do
    {
      v7 = sub_26B542A34();
      if (v7)
      {
        break;
      }

      v5 = (v5 + 1) & v6;
    }

    while (((*(a2 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_26B4BE7DC(uint64_t a1, char a2, void *a3)
{
  result = static VCCommand.allCommands.getter();
  v4 = MEMORY[0x277D84F90];
  v78 = *(result + 16);
  if (v78)
  {
    v5 = 0;
    v77 = result + 32;
    v76 = result;
    do
    {
      while (1)
      {
        if (v5 >= *(result + 16))
        {
          __break(1u);
          return result;
        }

        v6 = v4;
        v7 = (v77 + 184 * v5);
        v8 = *v7;
        v9 = v7[1];
        v10 = v7[3];
        v107 = v7[2];
        v108 = v10;
        v105 = v8;
        v106 = v9;
        v11 = v7[4];
        v12 = v7[5];
        v13 = v7[7];
        v111 = v7[6];
        v112 = v13;
        v109 = v11;
        v110 = v12;
        v14 = v7[8];
        v15 = v7[9];
        v16 = v7[10];
        v116 = *(v7 + 22);
        v114 = v15;
        v115 = v16;
        v113 = v14;
        ++v5;
        v17 = v109;
        if (*(v109 + 16))
        {
          break;
        }

LABEL_4:
        v4 = v6;
        if (v5 == v78)
        {
          goto LABEL_24;
        }
      }

      sub_26B4A5160(&v105, &v93);
      LOBYTE(v93) = 0;
      if (!*(v17 + 16))
      {
        goto LABEL_3;
      }

      sub_26B471350();
      v18 = sub_26B5429B4();
      v19 = -1 << *(v17 + 32);
      v20 = v18 & ~v19;
      if (((*(v17 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
      {
        goto LABEL_3;
      }

      v21 = ~v19;
      sub_26B4713A4();
      while (1)
      {
        v79[0] = *(*(v17 + 48) + v20);
        if (sub_26B542A34())
        {
          break;
        }

        v20 = (v20 + 1) & v21;
        if (((*(v17 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
        {
          goto LABEL_3;
        }
      }

      v22 = v111;
      LOBYTE(v93) = a2;
      if (!*(v111 + 16) || (sub_26B471200(), v23 = sub_26B5429B4(), v24 = -1 << *(v22 + 32), v25 = v23 & ~v24, ((*(v22 + 56 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0))
      {
LABEL_3:
        sub_26B4A51BC(&v105);
        result = v76;
        goto LABEL_4;
      }

      v26 = ~v24;
      sub_26B471254();
      while (1)
      {
        v79[0] = *(*(v22 + 48) + v25);
        if (sub_26B542A34())
        {
          break;
        }

        v25 = (v25 + 1) & v26;
        if (((*(v22 + 56 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
        {
          goto LABEL_3;
        }
      }

      *&v80 = v6;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_26B4A2120(0, *(v6 + 16) + 1, 1);
        v6 = v80;
      }

      v28 = *(v6 + 16);
      v27 = *(v6 + 24);
      if (v28 >= v27 >> 1)
      {
        sub_26B4A2120((v27 > 1), v28 + 1, 1);
        v6 = v80;
      }

      *(v6 + 16) = v28 + 1;
      v29 = v6 + 184 * v28;
      v30 = v105;
      v31 = v106;
      v32 = v108;
      *(v29 + 64) = v107;
      *(v29 + 80) = v32;
      *(v29 + 32) = v30;
      *(v29 + 48) = v31;
      v33 = v109;
      v34 = v110;
      v35 = v112;
      *(v29 + 128) = v111;
      *(v29 + 144) = v35;
      *(v29 + 96) = v33;
      *(v29 + 112) = v34;
      v36 = v113;
      v37 = v114;
      v38 = v115;
      *(v29 + 208) = v116;
      *(v29 + 176) = v37;
      *(v29 + 192) = v38;
      *(v29 + 160) = v36;
      v4 = v6;
      result = v76;
    }

    while (v5 != v78);
  }

LABEL_24:

  v39 = *(v4 + 16);
  if (v39)
  {
    v92 = MEMORY[0x277D84F90];
    sub_26B542DF4();
    v40 = v39 - 1;
    for (i = 32; ; i += 184)
    {
      v42 = *(v4 + i);
      v43 = *(v4 + i + 16);
      v44 = *(v4 + i + 48);
      v82 = *(v4 + i + 32);
      v83 = v44;
      v80 = v42;
      v81 = v43;
      v45 = *(v4 + i + 64);
      v46 = *(v4 + i + 80);
      v47 = *(v4 + i + 112);
      v86 = *(v4 + i + 96);
      v87 = v47;
      v84 = v45;
      v85 = v46;
      v48 = *(v4 + i + 128);
      v49 = *(v4 + i + 144);
      v50 = *(v4 + i + 160);
      v91 = *(v4 + i + 176);
      v89 = v49;
      v90 = v50;
      v88 = v48;
      v51 = objc_allocWithZone(VCCommandObjC);
      sub_26B4A5160(&v80, v79);
      sub_26B4A5160(&v80, v79);
      v52 = [v51 init];
      sub_26B4A51BC(&v80);
      v101 = v88;
      v102 = v89;
      v103 = v90;
      v104 = v91;
      v97 = v84;
      v98 = v85;
      v99 = v86;
      v100 = v87;
      v93 = v80;
      v94 = v81;
      v95 = v82;
      v96 = v83;
      nullsub_1();
      v53 = &v52[OBJC_IVAR___VCCommandObjC_representedCommand];
      v54 = *&v52[OBJC_IVAR___VCCommandObjC_representedCommand + 48];
      v56 = *&v52[OBJC_IVAR___VCCommandObjC_representedCommand];
      v55 = *&v52[OBJC_IVAR___VCCommandObjC_representedCommand + 16];
      v107 = *&v52[OBJC_IVAR___VCCommandObjC_representedCommand + 32];
      v108 = v54;
      v105 = v56;
      v106 = v55;
      v57 = *&v52[OBJC_IVAR___VCCommandObjC_representedCommand + 112];
      v59 = *&v52[OBJC_IVAR___VCCommandObjC_representedCommand + 64];
      v58 = *&v52[OBJC_IVAR___VCCommandObjC_representedCommand + 80];
      v111 = *&v52[OBJC_IVAR___VCCommandObjC_representedCommand + 96];
      v112 = v57;
      v109 = v59;
      v110 = v58;
      v61 = *&v52[OBJC_IVAR___VCCommandObjC_representedCommand + 144];
      v60 = *&v52[OBJC_IVAR___VCCommandObjC_representedCommand + 160];
      v62 = *&v52[OBJC_IVAR___VCCommandObjC_representedCommand + 128];
      v116 = *&v52[OBJC_IVAR___VCCommandObjC_representedCommand + 176];
      v114 = v61;
      v115 = v60;
      v113 = v62;
      v63 = v93;
      v64 = v94;
      v65 = v96;
      *(v53 + 2) = v95;
      *(v53 + 3) = v65;
      *v53 = v63;
      *(v53 + 1) = v64;
      v66 = v97;
      v67 = v98;
      v68 = v100;
      *(v53 + 6) = v99;
      *(v53 + 7) = v68;
      *(v53 + 4) = v66;
      *(v53 + 5) = v67;
      v69 = v101;
      v70 = v102;
      v71 = v103;
      *(v53 + 22) = v104;
      *(v53 + 9) = v70;
      *(v53 + 10) = v71;
      *(v53 + 8) = v69;
      v72 = v52;
      sub_26B4A4CBC(&v105, &qword_2803FFD30, &qword_26B545410);

      sub_26B542DD4();
      sub_26B542E04();
      sub_26B542E14();
      sub_26B542DE4();
      if (!v40)
      {
        break;
      }

      --v40;
    }

    v73 = v92;
  }

  else
  {

    v73 = MEMORY[0x277D84F90];
  }

  *a3 = v73;
  return result;
}

uint64_t sub_26B4BEE34(uint64_t a1, char a2, void *a3)
{
  result = static VCCommand.allCommands.getter();
  v73 = *(result + 16);
  if (v73)
  {
    v4 = 0;
    v72 = result + 32;
    v70 = MEMORY[0x277D84F90];
    while (1)
    {
      while (1)
      {
        if (v4 >= *(result + 16))
        {
          __break(1u);
          return result;
        }

        v5 = (v72 + 184 * v4);
        v6 = *v5;
        v7 = v5[1];
        v8 = v5[3];
        v102 = v5[2];
        v103 = v8;
        v100 = v6;
        v101 = v7;
        v9 = v5[4];
        v10 = v5[5];
        v11 = v5[7];
        v106 = v5[6];
        v107 = v11;
        v104 = v9;
        v105 = v10;
        v12 = v5[8];
        v13 = v5[9];
        v14 = v5[10];
        v111 = *(v5 + 22);
        v109 = v13;
        v110 = v14;
        v108 = v12;
        ++v4;
        v15 = v104;
        if (*(v104 + 16))
        {
          break;
        }

LABEL_4:
        if (v4 == v73)
        {
          goto LABEL_20;
        }
      }

      v16 = result;
      sub_26B4A5160(&v100, &v88);
      LOBYTE(v88) = a2;
      if (!*(v15 + 16) || (sub_26B471350(), v17 = sub_26B5429B4(), v18 = -1 << *(v15 + 32), v19 = v17 & ~v18, ((*(v15 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0))
      {
LABEL_3:
        sub_26B4A51BC(&v100);
        result = v16;
        goto LABEL_4;
      }

      v20 = ~v18;
      sub_26B4713A4();
      while (1)
      {
        v74[0] = *(*(v15 + 48) + v19);
        if (sub_26B542A34())
        {
          break;
        }

        v19 = (v19 + 1) & v20;
        if (((*(v15 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
        {
          goto LABEL_3;
        }
      }

      v21 = v70;
      *&v75 = v70;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_26B4A2120(0, *(v70 + 16) + 1, 1);
        v21 = v75;
      }

      v23 = *(v21 + 16);
      v22 = *(v21 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_26B4A2120((v22 > 1), v23 + 1, 1);
        v21 = v75;
      }

      *(v21 + 16) = v23 + 1;
      v70 = v21;
      v24 = v21 + 184 * v23;
      v25 = v100;
      v26 = v101;
      v27 = v103;
      *(v24 + 64) = v102;
      *(v24 + 80) = v27;
      *(v24 + 32) = v25;
      *(v24 + 48) = v26;
      v28 = v104;
      v29 = v105;
      v30 = v107;
      *(v24 + 128) = v106;
      *(v24 + 144) = v30;
      *(v24 + 96) = v28;
      *(v24 + 112) = v29;
      v31 = v108;
      v32 = v109;
      v33 = v110;
      *(v24 + 208) = v111;
      *(v24 + 176) = v32;
      *(v24 + 192) = v33;
      *(v24 + 160) = v31;
      result = v16;
      if (v4 == v73)
      {
        goto LABEL_20;
      }
    }
  }

  v70 = MEMORY[0x277D84F90];
LABEL_20:

  v34 = *(v70 + 16);
  if (v34)
  {
    v87 = MEMORY[0x277D84F90];
    sub_26B542DF4();
    v35 = v34 - 1;
    for (i = 32; ; i += 184)
    {
      v37 = *(v70 + i);
      v38 = *(v70 + i + 16);
      v39 = *(v70 + i + 48);
      v77 = *(v70 + i + 32);
      v78 = v39;
      v75 = v37;
      v76 = v38;
      v40 = *(v70 + i + 64);
      v41 = *(v70 + i + 80);
      v42 = *(v70 + i + 112);
      v81 = *(v70 + i + 96);
      v82 = v42;
      v79 = v40;
      v80 = v41;
      v43 = *(v70 + i + 128);
      v44 = *(v70 + i + 144);
      v45 = *(v70 + i + 160);
      v86 = *(v70 + i + 176);
      v84 = v44;
      v85 = v45;
      v83 = v43;
      v46 = objc_allocWithZone(VCCommandObjC);
      sub_26B4A5160(&v75, v74);
      sub_26B4A5160(&v75, v74);
      v47 = [v46 init];
      sub_26B4A51BC(&v75);
      v96 = v83;
      v97 = v84;
      v98 = v85;
      v99 = v86;
      v92 = v79;
      v93 = v80;
      v94 = v81;
      v95 = v82;
      v88 = v75;
      v89 = v76;
      v90 = v77;
      v91 = v78;
      nullsub_1();
      v48 = &v47[OBJC_IVAR___VCCommandObjC_representedCommand];
      v49 = *&v47[OBJC_IVAR___VCCommandObjC_representedCommand + 48];
      v51 = *&v47[OBJC_IVAR___VCCommandObjC_representedCommand];
      v50 = *&v47[OBJC_IVAR___VCCommandObjC_representedCommand + 16];
      v102 = *&v47[OBJC_IVAR___VCCommandObjC_representedCommand + 32];
      v103 = v49;
      v100 = v51;
      v101 = v50;
      v52 = *&v47[OBJC_IVAR___VCCommandObjC_representedCommand + 112];
      v54 = *&v47[OBJC_IVAR___VCCommandObjC_representedCommand + 64];
      v53 = *&v47[OBJC_IVAR___VCCommandObjC_representedCommand + 80];
      v106 = *&v47[OBJC_IVAR___VCCommandObjC_representedCommand + 96];
      v107 = v52;
      v104 = v54;
      v105 = v53;
      v56 = *&v47[OBJC_IVAR___VCCommandObjC_representedCommand + 144];
      v55 = *&v47[OBJC_IVAR___VCCommandObjC_representedCommand + 160];
      v57 = *&v47[OBJC_IVAR___VCCommandObjC_representedCommand + 128];
      v111 = *&v47[OBJC_IVAR___VCCommandObjC_representedCommand + 176];
      v109 = v56;
      v110 = v55;
      v108 = v57;
      v58 = v88;
      v59 = v89;
      v60 = v91;
      *(v48 + 2) = v90;
      *(v48 + 3) = v60;
      *v48 = v58;
      *(v48 + 1) = v59;
      v61 = v92;
      v62 = v93;
      v63 = v95;
      *(v48 + 6) = v94;
      *(v48 + 7) = v63;
      *(v48 + 4) = v61;
      *(v48 + 5) = v62;
      v64 = v96;
      v65 = v97;
      v66 = v98;
      *(v48 + 22) = v99;
      *(v48 + 9) = v65;
      *(v48 + 10) = v66;
      *(v48 + 8) = v64;
      v67 = v47;
      sub_26B4A4CBC(&v100, &qword_2803FFD30, &qword_26B545410);

      sub_26B542DD4();
      sub_26B542E04();
      sub_26B542E14();
      sub_26B542DE4();
      if (!v35)
      {
        break;
      }

      --v35;
    }

    v68 = v87;
  }

  else
  {

    v68 = MEMORY[0x277D84F90];
  }

  *a3 = v68;
  return result;
}

id sub_26B4BF458(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5)
{
  sub_26B4C50DC(a3, a4, a5);
  v5 = sub_26B542C14();

  return v5;
}

id VCCommandObjC.init()()
{
  v1 = &v0[OBJC_IVAR___VCCommandObjC_representedCommand];
  sub_26B4C4C5C(v9);
  v2 = v9[9];
  *(v1 + 8) = v9[8];
  *(v1 + 9) = v2;
  *(v1 + 10) = v9[10];
  *(v1 + 22) = v10;
  v3 = v9[5];
  *(v1 + 4) = v9[4];
  *(v1 + 5) = v3;
  v4 = v9[7];
  *(v1 + 6) = v9[6];
  *(v1 + 7) = v4;
  v5 = v9[1];
  *v1 = v9[0];
  *(v1 + 1) = v5;
  v6 = v9[3];
  *(v1 + 2) = v9[2];
  *(v1 + 3) = v6;
  v8.receiver = v0;
  v8.super_class = VCCommandObjC;
  return objc_msgSendSuper2(&v8, sel_init);
}

uint64_t sub_26B4BF6C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_26B4A5218(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v3;
    sub_26B4C1FE4(v9, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v8;
  }

  else
  {
    sub_26B4A4CBC(a1, &qword_2803FFDA0, &qword_26B5454E8);
    sub_26B4C1AD8(a2, a3, v9);

    return sub_26B4A4CBC(v9, &qword_2803FFDA0, &qword_26B5454E8);
  }

  return result;
}

uint64_t sub_26B4BF794(uint64_t a1, char a2)
{
  v3 = a1;
  v4 = a1 + 56;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 56);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  v28 = result;
  v27 = a2;
  while (v7)
  {
LABEL_9:
    v12 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v13 = *(*(v3 + 48) + (v12 | (v10 << 6)));
    if (a2)
    {
      v14 = &unk_287C04170;
    }

    else
    {
      v14 = &unk_287C04198;
    }

    result = sub_26B4BE320(*(*(v3 + 48) + (v12 | (v10 << 6))), v14, sub_26B4712FC, &type metadata for VCCommand.Evaluation);
    if ((result & 1) == 0)
    {
      LOBYTE(v30[0]) = v13;
      v15 = VCCommand.Evaluation.rawValue.getter();
      v34 = sub_26B4C4E18(1, v15, v16);

      v34 = sub_26B542CB4();
      v29 = v17;

      LOBYTE(v30[0]) = v13;
      v18 = VCCommand.Evaluation.rawValue.getter();
      v20 = sub_26B4C4EB4(1uLL, v18, v19);
      v22 = v21;
      v24 = v23;
      v26 = v25;

      v32 = v34;
      v33 = v29;
      v30[0] = v20;
      v30[1] = v22;
      v30[2] = v24;
      v31 = v26;
      sub_26B4C6A20();
      sub_26B542B14();
      a2 = v27;

      v31 = MEMORY[0x277D839B0];
      LOBYTE(v30[0]) = 1;
      result = sub_26B4BF6C4(v30, v32, v33);
      v3 = v28;
    }
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v8)
    {
    }

    v7 = *(v4 + 8 * v11);
    ++v10;
    if (v7)
    {
      v10 = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26B4BF9E0(uint64_t result, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(void))
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v6 = 0;
  v7 = result + 56;
  v8 = 1 << *(result + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(result + 56);
  v11 = (v8 + 63) >> 6;
  v12 = a2 + 56;
  v19 = a3;
  v20 = result;
  if (v10)
  {
    do
    {
      v21 = (v10 - 1) & v10;
LABEL_13:
      a3();
      v15 = sub_26B5429B4();
      v16 = -1 << *(a2 + 32);
      v17 = v15 & ~v16;
      if (((*(v12 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
        return 0;
      }

      v18 = ~v16;
      a5();
      while ((sub_26B542A34() & 1) == 0)
      {
        v17 = (v17 + 1) & v18;
        if (((*(v12 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
        {
          return 0;
        }
      }

      a3 = v19;
      result = v20;
      v10 = v21;
    }

    while (v21);
  }

  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      return 1;
    }

    v14 = *(v7 + 8 * v6);
    ++v13;
    if (v14)
    {
      v21 = (v14 - 1) & v14;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_26B4BFBA4(char a1)
{
  v2 = *(v1 + 104);
  v98 = *(v1 + 112);
  v99 = *(v1 + 64);
  v100 = *(v1 + 120);
  v101 = *(v1 + 96);
  v102 = *(v1 + 121);
  v4 = *(v1 + 128);
  v3 = *(v1 + 136);
  v5 = *(v1 + 144);
  v94 = *(v1 + 160);
  v95 = *(v1 + 152);
  v103 = *(v1 + 168);
  v6 = *(v1 + 176);
  v7 = sub_26B4C4C98(MEMORY[0x277D84F90]);
  v8 = v7;
  v93 = v2;
  v97 = v4;
  if (v5)
  {
    v92 = v3;
    v96 = v7;
    *&v108 = v5;

    sub_26B4C24FC(&v108);
    v91 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = v108;
    v13 = *(v108 + 16);
LABEL_3:
    v14 = a1;
    v15 = v12 + 32 + 24 * v9;
    while (v13 != v9)
    {
      if (v9 >= v13)
      {
        __break(1u);
LABEL_119:
        __break(1u);
        goto LABEL_120;
      }

      v16 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_119;
      }

      v17 = v15;
      v18 = *(v15 + 16);
      if (v18 != 1)
      {
        if (!*(v15 + 16))
        {
LABEL_11:
          v10 = *v17;
          v19 = v17[1];

          v9 = v16;
          v11 = v19;
          goto LABEL_3;
        }

        v23 = *v15;
        v24 = *(v15 + 8);
        *&v108 = 0;
        *(&v108 + 1) = 0xE000000000000000;
        sub_26B4C6930(v23, v24, v18);
        sub_26B542D74();
        v107[0] = v108;
        MEMORY[0x26D677BF0](0xD00000000000001ALL, 0x800000026B56AFD0);
        *&v108 = v23;
        *(&v108 + 1) = v24;
        LOBYTE(v109) = v18;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFD90, &unk_26B5454D0);
        sub_26B542E24();
        sub_26B4C6948(v23, v24, v18);

        return 0;
      }

      ++v9;
      v15 += 24;
      if (a1)
      {
        goto LABEL_11;
      }
    }

    if (v11)
    {
      v110 = MEMORY[0x277D837D0];
      *&v108 = v10;
      *(&v108 + 1) = v11;
      sub_26B4A5218(&v108, v107);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_26B4C1FE4(v107, 0xD000000000000013, 0x800000026B56AFF0, isUniquelyReferenced_nonNull_native);
      v14 = a1;
    }

    v8 = v96;
    v3 = v92;
    v4 = v97;
    v20 = v98;
    v21 = v99;
    if ((v14 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v14 = a1;
    v20 = v98;
    v21 = v99;
    if ((a1 & 1) == 0)
    {
LABEL_19:
      v6 = v94;
      v103 = v95;
      if (!v94)
      {
        goto LABEL_21;
      }

      goto LABEL_20;
    }
  }

  if (!v6)
  {
    goto LABEL_19;
  }

LABEL_20:

  v110 = MEMORY[0x277D837D0];
  *&v108 = v103;
  *(&v108 + 1) = v6;
  sub_26B4A5218(&v108, v107);
  v25 = swift_isUniquelyReferenced_nonNull_native();
  sub_26B4C1FE4(v107, 0x654D6E6F69746341, 0xEC000000646F6874, v25);
  v14 = a1;
LABEL_21:
  v26 = v101;
  *&v108 = sub_26B4C4C98(MEMORY[0x277D84F90]);
  sub_26B4BF794(v20, v14 & 1);
  v27 = v108;
  if (*(v108 + 16))
  {
    if (v14)
    {
      goto LABEL_23;
    }

LABEL_27:

    v30 = sub_26B4A2FF8(&unk_287C041C0, v21);
    v31 = sub_26B4C4F64(&unk_287C041E8);
    v32 = sub_26B4BF9E0(v30, v31, sub_26B471350, &type metadata for VCCommand.Idiom, sub_26B4713A4);

    if (v32)
    {
      v110 = MEMORY[0x277D839B0];
      LOBYTE(v108) = 1;
      sub_26B4A5218(&v108, v107);
      v33 = swift_isUniquelyReferenced_nonNull_native();
      sub_26B4C1FE4(v107, 0x7365726975716552, 0xEC00000064615049, v33);
      v26 = v101;
    }

    else
    {

      v34 = sub_26B4A2FF8(&unk_287C04210, v21);
      v35 = sub_26B4C4F64(&unk_287C04238);
      v36 = sub_26B4BF9E0(v34, v35, sub_26B471350, &type metadata for VCCommand.Idiom, sub_26B4713A4);

      if ((v36 & 1) == 0)
      {
        if (sub_26B4BE6E0(3, v21))
        {
          v110 = MEMORY[0x277D839B0];
          LOBYTE(v108) = 1;
          sub_26B4A5218(&v108, v107);
          v38 = swift_isUniquelyReferenced_nonNull_native();
          sub_26B4C1FE4(v107, 0x7374726F70707553, 0xEF79616C50726143, v38);
        }

        v26 = v101;
        v29 = v102;
        if (sub_26B4BE6E0(5, v21))
        {
          v4 = v97;
        }

        else
        {
          v4 = v97;
          if ((sub_26B542B94() & 1) == 0 && (sub_26B542B94() & 1) == 0 && (sub_26B542B94() & 1) == 0)
          {
            v110 = MEMORY[0x277D839B0];
            LOBYTE(v108) = 1;
            sub_26B4A5218(&v108, v107);
            v90 = swift_isUniquelyReferenced_nonNull_native();
            sub_26B4C1FE4(v107, 0xD000000000000016, 0x800000026B56B030, v90);
            v29 = v102;
          }
        }

        goto LABEL_36;
      }

      v110 = MEMORY[0x277D839B0];
      LOBYTE(v108) = 1;
      sub_26B4A5218(&v108, v107);
      v37 = swift_isUniquelyReferenced_nonNull_native();
      sub_26B4C1FE4(v107, 0xD000000000000013, 0x800000026B56B0E0, v37);
      v26 = v101;
    }

    v4 = v97;
    v29 = v102;
LABEL_36:
    v28 = v100;
    if (v100 == 4)
    {
      if (v29 == 4)
      {
LABEL_75:
        v104 = v27;
        goto LABEL_76;
      }

      goto LABEL_57;
    }

    if (v100 > 1)
    {
      if (v100 == 2)
      {
        v28 = 1;
      }

      else
      {
        v28 = 2;
      }
    }

    else if (v100)
    {
      goto LABEL_62;
    }

LABEL_51:
    v110 = MEMORY[0x277D83B88];
    *&v108 = v28;
    sub_26B4A5218(&v108, v107);
    v39 = swift_isUniquelyReferenced_nonNull_native();
    sub_26B4C1FE4(v107, 0xD000000000000018, 0x800000026B56B0C0, v39);
    v29 = v102;
    if (v102 == 4)
    {
LABEL_68:
      v14 = a1;
      goto LABEL_69;
    }

    if (a1)
    {
LABEL_53:
      if (v29 <= 1)
      {
        if (v29)
        {
          v29 = 1;
        }

        goto LABEL_67;
      }

      if (v29 == 2)
      {
        v29 = 2;
        goto LABEL_67;
      }

      goto LABEL_62;
    }

LABEL_57:
    if (v29 > 1)
    {
      if (v29 == 2)
      {
        v29 = 1;
      }

      else
      {
        v29 = 2;
      }

      goto LABEL_67;
    }

    if (!v29)
    {
LABEL_67:
      v110 = MEMORY[0x277D83B88];
      *&v108 = v29;
      sub_26B4A5218(&v108, v107);
      v45 = swift_isUniquelyReferenced_nonNull_native();
      sub_26B4C1FE4(v107, 0xD000000000000018, 0x800000026B56B0A0, v45);
      goto LABEL_68;
    }

LABEL_62:
    *&v107[0] = 0;
    *(&v107[0] + 1) = 0xE000000000000000;
    sub_26B542D74();
    MEMORY[0x26D677BF0](0xD00000000000001DLL, 0x800000026B56AD10);
    sub_26B542E24();
    v41 = *(&v107[0] + 1);
    v40 = *&v107[0];
    sub_26B4C62C8();
    v42 = swift_allocError();
    *v43 = __PAIR128__(v41, v40);
    swift_willThrow();

    v44 = a1;
    if (v42)
    {

      return 0;
    }

    goto LABEL_90;
  }

  v27 = sub_26B4C4C98(MEMORY[0x277D84F90]);
  if ((v14 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_23:
  v28 = v100;
  if (v100 != 4)
  {
    if (v100 > 1)
    {
      if (v100 != 2)
      {
        goto LABEL_62;
      }

      v28 = 2;
    }

    else if (v100)
    {
      v28 = 1;
    }

    goto LABEL_51;
  }

  if (v102 != 4)
  {
    v29 = v102;
    goto LABEL_53;
  }

LABEL_69:
  if (v4 && (v14 & 1) != 0)
  {
    v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFCE8, &unk_26B5454F0);
    *&v108 = v4;
    sub_26B4A5218(&v108, v107);

    v46 = swift_isUniquelyReferenced_nonNull_native();
    sub_26B4C1FE4(v107, 0xD00000000000001BLL, 0x800000026B56B080, v46);
    v14 = a1;
  }

  if (!v3 || (v14 & 1) == 0)
  {
    goto LABEL_75;
  }

  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFCE8, &unk_26B5454F0);
  *&v108 = v3;
  sub_26B4A5218(&v108, v107);

  v47 = swift_isUniquelyReferenced_nonNull_native();
  sub_26B4C1FE4(v107, 0xD000000000000023, 0x800000026B56B050, v47);
  v104 = v27;
LABEL_76:
  v48 = static VCCommand.Engine.voiceControlEngines.getter();
  v49 = sub_26B4C5020(v48);

  v50 = sub_26B4BF9E0(v26, v49, sub_26B471200, &type metadata for VCCommand.Engine, sub_26B471254);

  if (v50)
  {
    v42 = v104;
  }

  else
  {
    v51 = *(v26 + 16);
    v52 = MEMORY[0x277D84F90];
    if (v51)
    {
      v53 = sub_26B4C1A64(*(v26 + 16), 0);
      v54 = sub_26B4A4514(&v108, v53 + 32, v51, v26);
      v55 = v108;

      sub_26B4A5210(v55);
      if (v54 != v51)
      {
LABEL_120:
        __break(1u);
        goto LABEL_121;
      }

      v26 = v101;
      v52 = MEMORY[0x277D84F90];
    }

    else
    {
      v53 = MEMORY[0x277D84F90];
    }

    *&v108 = v53;
    sub_26B4C2490(&v108);
    v56 = v108;
    v57 = *(v108 + 16);
    if (v57)
    {
      *&v108 = v52;
      sub_26B4A2140(0, v57, 0);
      v58 = 32;
      v52 = v108;
      do
      {
        LOBYTE(v107[0]) = *(v56 + v58);
        v59 = VCCommand.Engine.rawValue.getter();
        *&v108 = v52;
        v62 = *(v52 + 16);
        v61 = *(v52 + 24);
        if (v62 >= v61 >> 1)
        {
          v64 = v59;
          v65 = v60;
          sub_26B4A2140((v61 > 1), v62 + 1, 1);
          v60 = v65;
          v26 = v101;
          v59 = v64;
          v52 = v108;
        }

        *(v52 + 16) = v62 + 1;
        v63 = v52 + 16 * v62;
        *(v63 + 32) = v59;
        *(v63 + 40) = v60;
        ++v58;
        --v57;
      }

      while (v57);
    }

    v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFCE8, &unk_26B5454F0);
    *&v108 = v52;
    sub_26B4A5218(&v108, v107);
    v66 = swift_isUniquelyReferenced_nonNull_native();
    sub_26B4C1FE4(v107, 0xD000000000000010, 0x800000026B56B010, v66);
    v42 = v104;
  }

  v44 = a1;
  if (!v42[2])
  {

    v42 = 0;
  }

LABEL_90:
  if (v42)
  {
    if (v42[2])
    {
      v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFD88, &qword_26B5454C8);
      *&v108 = v42;
      sub_26B4A5218(&v108, v107);
      v67 = swift_isUniquelyReferenced_nonNull_native();
      sub_26B4C1FE4(v107, 0xD000000000000011, 0x800000026B56AFB0, v67);
      v44 = a1;
    }

    else
    {
    }
  }

  *&v108 = sub_26B4C4C98(MEMORY[0x277D84F90]);
  sub_26B4BF794(v93, v44 & 1);
  v68 = v108;
  if (!*(v108 + 16))
  {

    v68 = sub_26B4C4C98(MEMORY[0x277D84F90]);
  }

  v69 = static VCCommand.Engine.voiceControlEngines.getter();
  v70 = sub_26B4C5020(v69);

  v71 = sub_26B4BF9E0(v26, v70, sub_26B471200, &type metadata for VCCommand.Engine, sub_26B471254);

  if (v71)
  {
    goto LABEL_107;
  }

  v72 = *(v26 + 16);
  v73 = MEMORY[0x277D84F90];
  if (!v72)
  {
    v74 = MEMORY[0x277D84F90];
    goto LABEL_101;
  }

  v74 = sub_26B4C1A64(v72, 0);
  v75 = sub_26B4A4514(&v108, v74 + 32, v72, v26);
  v76 = v108;

  sub_26B4A5210(v76);
  if (v75 == v72)
  {
    v73 = MEMORY[0x277D84F90];
LABEL_101:
    *&v108 = v74;
    sub_26B4C2490(&v108);
    v77 = v108;
    v78 = *(v108 + 16);
    if (v78)
    {
      *&v108 = v73;
      sub_26B4A2140(0, v78, 0);
      v79 = 32;
      v73 = v108;
      do
      {
        LOBYTE(v107[0]) = *(v77 + v79);
        v80 = VCCommand.Engine.rawValue.getter();
        *&v108 = v73;
        v83 = *(v73 + 16);
        v82 = *(v73 + 24);
        if (v83 >= v82 >> 1)
        {
          v106 = v80;
          v85 = v8;
          v86 = v81;
          sub_26B4A2140((v82 > 1), v83 + 1, 1);
          v81 = v86;
          v8 = v85;
          v80 = v106;
          v73 = v108;
        }

        *(v73 + 16) = v83 + 1;
        v84 = v73 + 16 * v83;
        *(v84 + 32) = v80;
        *(v84 + 40) = v81;
        ++v79;
        --v78;
      }

      while (v78);
    }

    v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFCE8, &unk_26B5454F0);
    *&v108 = v73;
    sub_26B4A5218(&v108, v107);
    v87 = swift_isUniquelyReferenced_nonNull_native();
    sub_26B4C1FE4(v107, 0xD000000000000010, 0x800000026B56B010, v87);
LABEL_107:
    if (*(v68 + 16))
    {
      v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFD88, &qword_26B5454C8);
      *&v108 = v68;
      sub_26B4A5218(&v108, v107);
      v88 = swift_isUniquelyReferenced_nonNull_native();
      sub_26B4C1FE4(v107, 0xD000000000000014, 0x800000026B56AF90, v88);
    }

    else
    {
    }

    return v8;
  }

LABEL_121:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_26B4C0BF0()
{
  v0 = static VCCommandCollection.allCommandCollections.getter();
  v1 = *(v0 + 16);
  if (v1)
  {
    v24 = MEMORY[0x277D84F90];
    sub_26B542DF4();
    v2 = (v0 + 73);
    do
    {
      v22 = *(v2 - 41);
      v23 = v1;
      v3 = *(v2 - 33);
      v21 = *(v2 - 25);
      v4 = *(v2 - 17);
      v5 = *(v2 - 9);
      v6 = *(v2 - 1);
      v7 = *v2;
      v2 += 48;
      v8 = objc_allocWithZone(VCCommandCollectionObjC);
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      v9 = [v8 init];

      if (v7)
      {
        v10 = 256;
      }

      else
      {
        v10 = 0;
      }

      v11 = v10 | v6;
      v12 = &v9[OBJC_IVAR___VCCommandCollectionObjC_representedCollection];
      v13 = *&v9[OBJC_IVAR___VCCommandCollectionObjC_representedCollection];
      v14 = *&v9[OBJC_IVAR___VCCommandCollectionObjC_representedCollection + 8];
      v15 = *&v9[OBJC_IVAR___VCCommandCollectionObjC_representedCollection + 16];
      v16 = *&v9[OBJC_IVAR___VCCommandCollectionObjC_representedCollection + 24];
      v17 = *&v9[OBJC_IVAR___VCCommandCollectionObjC_representedCollection + 32];
      *v12 = v22;
      *(v12 + 1) = v3;
      *(v12 + 2) = v21;
      *(v12 + 3) = v4;
      *(v12 + 4) = v5;
      *(v12 + 20) = v11;
      v18 = v9;
      sub_26B4C4DC8(v13, v14, v15, v16, v17);

      sub_26B542DD4();
      sub_26B542E04();
      sub_26B542E14();
      sub_26B542DE4();
      v1 = v23 - 1;
    }

    while (v23 != 1);

    v20 = v24;
  }

  else
  {

    v20 = MEMORY[0x277D84F90];
  }

  qword_280400550 = v20;
  return result;
}

uint64_t static VCCommandCollectionObjC.allCollections()()
{
  if (qword_280400548 != -1)
  {
    swift_once();
  }
}

id sub_26B4C0EA4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  a3(a1, a2);
  v3 = sub_26B542C14();

  return v3;
}

id sub_26B4C0F14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v5 = sub_26B542A84();
  v6 = a4(v5);

  return v6;
}

uint64_t VCCommandCollectionObjC.identifier.getter()
{
  if (*(v0 + OBJC_IVAR___VCCommandCollectionObjC_representedCollection + 8))
  {
    v1 = *(v0 + OBJC_IVAR___VCCommandCollectionObjC_representedCollection);

    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}